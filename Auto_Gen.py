#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from os import replace
import sys
import os
import re
from multilanguage import *
import time
import get_content
import copy

dangerous_patch_list = ['_STA', '_CRS', '_REG', '_ADR', '_PRW', '_DCS', '_DGS', '_DSS', '_INI', '_PS0', '_PS1',
                        '_PS2', '_PS3', '_PS4', '_PS5', '_S0D', '_S1D', '_S2D', '_S3D', '_S4D', '_S5D']
VERBOSE = False
DEBUG = False
FORCE = False


class AutoGen:
    OR_info = []
    verbose = False
    debug = False
    head = """DefinitionBlock ("", "SSDT", 2, "ERIC", "BATT", 0x00000000)
{"""
    RW_method = ""
    comment = ""

    def __init__(self, dsdt_content: str, filepath: str) -> None:
        self.dsdt_content = dsdt_content
        self.filepath = filepath
        self.clean_out()
        self.split_dsdt()
        self.EC_content = get_content.search(self.dsdt_content, '"PNP0C09"')
        self.find_OperationRegion()
        self.find_field()
        self.patch_method()
        self.patch_PTSWAK()
        self.insert_osi()
        self.special_devices()
        self.generate_comment()
        self.assemble()
        self.re_indent()
        self.write_file()

    def clean_out(self):
        '''
        Removes comments, external, Firmware error generated by iasl, etc.
        '''
        # Remove block comments
        self.dsdt_content = re.sub(
            r'/\*[\w\W\n]*?\*/', "", self.dsdt_content)
        # Remove line comments
        self.dsdt_content = re.sub(r'//.*', '', self.dsdt_content)
        # Remove "External" declaration
        self.dsdt_content = re.sub(
            r'External \(.*Obj\)\n', "", self.dsdt_content)
        # Remove "Firmware Error" that generated within disassambling
        self.dsdt_content = re.sub(
            r'Firmware Error.*\n', "", self.dsdt_content)
        # Remove empty lines
        self.dsdt_content = re.sub(r'^\n', "", self.dsdt_content)

    def split_dsdt(self):
        '''
        Spliting dsdt content by space. Will not remove spaces if not in debug mode.
        '''
        self.dsdt_splited = self.dsdt_content.split(' ')
        if DEBUG:
            length = len(self.dsdt_splited)
            for i in range(0, length):
                # remove spaces
                i = length - i - 1
                if self.dsdt_splited[i] == '':
                    del self.dsdt_splited[i]

    def find_OperationRegion(self):
        '''
        Finding OperationRegion(s) inside EC scope.
        '''
        EC_content = self.EC_content
        for dev in EC_content:
            OR_list = re.findall(
                "OperationRegion \\(([A-Z0-9]{2,4}),", EC_content[dev])
            for OR in OR_list:
                OR_info = re.search(  # 使用分组来获得 OperationRegion 的信息
                    "OperationRegion \\(%s, ([a-zA-Z].*), ([a-zA-Z0-9].*), ([a-zA-Z0-9].*)\\)" % OR, EC_content[dev])
                try:
                    if OR_info.group(2) == 'Zero':
                        offset = 0
                    elif OR_info.group(2) == 'One':
                        offset = 1
                    else:
                        offset = int(OR_info.group(2), 16)
                    self.OR_info.append({
                        "path": dev,
                        "name": OR,
                        "storage": OR_info.group(1),
                        "offset": offset,
                        "length": OR_info.group(3)
                    })
                except AttributeError:
                    continue
        if VERBOSE:
            for item in self.OR_info:
                print(item)
            print()

    def rename(self, orig_name: str):
        '''
        Method to rename field unit / method / device / anything without conflicting with one already there.

        @param: orig_name(str) - original name

        @return: new_name(str) - renamed name
        '''
        alphabet = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                    'A', 'B', 'C', 'D', 'E', 'F', 'G',
                    'H', 'I', 'J', 'K', 'L', 'M', 'N',
                    'O', 'P', 'Q', 'R', 'S', 'T',
                    'U', 'V', 'W', 'X', 'Y', 'Z')
        for char in alphabet:
            new_name = orig_name[:3]+char
            if self.dsdt_content.find(new_name) == -1:
                return new_name

    def find_field(self):
        '''
        Finding out which unit field is going to be patched inside EC scope.
        '''
        for OR_info in self.OR_info:
            OR_info["field_unit"] = []
            OR_path = OR_info["path"]+'.'+OR_info["name"]
            content = get_content.get_content(self.dsdt_content, OR_path)
            splited = content.split("}")
            for field in splited[:-1]:
                flag = False  # Is there any field that needs special R/W in this method?
                tmp = field.split('{')
                field_content = tmp[1].split('\n')
                offset_bit = 0  # offset in bits
                name = ''
                size = 0
                for item in field_content:
                    if ',' not in item:
                        # Skip empty line
                        continue
                    elif "Offset" not in item:
                        a = item.split(',')
                        name = a[0].strip()
                        size = int(a[1].strip())
                        if size > 8 and name != '':
                            if offset_bit/8 - int(offset_bit/8) != 0:
                                print(FIELD_UNIT_OFFSET_ERR)
                                exit(2)
                            OR_info["field_unit"].append(
                                {"name": name, "offset": int(offset_bit/8), "size": size, "OR path": OR_path})
                            flag = True
                        offset_bit += size
                    else:
                        item = item.strip()
                        offset = re.search(r'Offset \((.*)\)', item).group(1)
                        offset_bit = int(offset, 16) * 8

                if flag:
                    if OR_info["storage"] not in self.RW_method and OR_info["path"] not in self.RW_method:
                        self.RE1B = self.rename('R1B')
                        self.RECB = self.rename('RDB')
                        self.ERM2 = self.rename('MEM')
                        self.WE1B = self.rename('W1B')
                        self.WECB = self.rename('WRB')
                    for item in OR_info["field_unit"]:
                        if item["OR path"] == OR_path:
                            item["read method"] = self.RECB
                            item["write method"] = self.WECB
                        self.RW_method = '''
    Scope (%s)
    {
        Method (%s, 1, NotSerialized)
        {
            OperationRegion (%s, %s, Arg0, One)
            Field (%s, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE) /* \RE1B.BYTE */
        }

        Method (%s, 2, Serialized)
        {
            // RECB or RSMB
            // Arg0 - offset in bytes from zero-based EC
            // Arg1 - size of buffer in bits
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            name (TEMP, Buffer (Arg1){})
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                TEMP [Local0] = %s (Arg0)
                Arg0++
                Local0++
            }

            Return (TEMP) /* \RECB.TEMP */
        }

        Method (%s, 2, NotSerialized)
        {
            OperationRegion (%s, %s, Arg0, One)
            Field (%s, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            BYTE = Arg1
        }

        Method (%s, 3, Serialized)
        {
            // WECB or WSMB
            // Arg0 - offset in bytes from zero-based EC
            // Arg1 - size of buffer in bits
            // Arg2 - data to be written
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            name (TEMP, Buffer (Arg1){})
            TEMP = Arg2
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                %s (Arg0, DerefOf (TEMP [Local0]))
                Arg0++
                Local0++
            }
        }
    }
''' % (OR_info["path"], self.RE1B, self.ERM2, OR_info["storage"],
                            self.ERM2, self.RECB, self.RE1B, self.WE1B, self.ERM2,
                            OR_info["storage"], self.ERM2, self.WECB, self.WE1B)
        if "RECB" not in self.RW_method:
            print(NOT_NEED_TO_PATCH_MSG)
            exit(0)

    def patch_method(self):
        '''
        Getting method content by unit fields which is going to be patched. And patch each method returned.
        '''
        self.method = {}
        for OR_info in self.OR_info:
            # Getting method content
            for unit in OR_info["field_unit"]:
                if VERBOSE:
                    print("Unit:", unit)
                result = get_content.search(self.dsdt_content, unit["name"])
                for name in result:
                    if result[name].split()[0] != "Method":
                        # Ignore content which is not Method
                        continue
                    scope = '.'.join(name.split('.')[:-1])
                    if scope == "":
                        # Handle method like "Method (\WAK)"
                        scope = "\\"
                    try:
                        if name in self.method[scope] or ("EC" not in name and "EC" not in result[name]):
                            # remove duplicates, and remove fieldunit that not in EC scope
                            continue
                    except KeyError:
                        if "EC" not in name and "EC" not in result[name]:
                            # Remove fieldunit that not in EC scope
                            continue
                    if scope not in self.method:
                        self.method[scope] = {}
                    self.method[scope][name] = {
                        "content": result[name], "modified": False}

            # Patching method
            for scope in self.method:
                for method in self.method[scope]:
                    lines = self.method[scope][method]["content"].splitlines()
                    if VERBOSE:
                        print("\n%s\n| Patching: %s |\n%s" % (
                            '='*(14+len(method)), method, '='*(14+len(method))))
                    for unit in OR_info["field_unit"]:
                        if VERBOSE:
                            print("Parsing", unit)
                        unit_path = '.'.join(unit['OR path'].split('.')[:-1])
                        if scope == unit_path:
                            # Patch field writing, e.g. UNIT = xxxx
                            reserve = re.findall(
                                "([^\.])%s = (\\w+)" % unit['name'], self.method[scope][method]["content"])
                            for item in reserve:
                                for line in lines:
                                    target = "%s%s = %s" % (
                                        item[0], unit['name'], item[1])
                                    if target in line:
                                        replace = "%s%s (0x%X, %s, %s)" % (item[0], unit["write method"],
                                                                           unit["offset"] + OR_info["offset"], unit["size"], item[1])
                                        replace = line.replace(
                                            target, replace) + ' // %s.%s' % (unit_path, unit['name'])
                                        self.method[scope][method]["content"] = self.method[scope][method]["content"].replace(
                                            line, replace)
                                self.method[scope][method]['modified'] = True

                            # Patch field writing, e.g. Store (xxxx, UNIT)
                            reserve = re.findall("Store \\((\\w+), %s\\)" % unit['name'],
                                                 self.method[scope][method]["content"])
                            for item in reserve:
                                for line in lines:
                                    target = "Store (%s, %s)" % (
                                        item, unit['name'])
                                    if target in line:
                                        replace = "%s (0x%X, %s, %s)" % (unit["write method"],
                                                                         unit["offset"] + OR_info["offset"], unit["size"], item)
                                        replace = line.replace(
                                            target, replace) + ' // %s.%s' % (unit_path, unit['name'])
                                        self.method[scope][method]["content"] = self.method[scope][method]["content"].replace(
                                            line, replace)
                                self.method[scope][method]['modified'] = True

                            # Patch field reading, e.g. xxxx = UNIT
                            reserve = re.findall("(.*[^\.])%s(.*)" % unit['name'],
                                                 self.method[scope][method]['content'])
                            for item in reserve:
                                if "Method (" in item[0] or "Device (" in item[0] or "Scope (" in item[0]:
                                    continue  # stop patching method that have the same name as fieldunit
                                for line in lines:
                                    target = item[0] + unit['name'] + item[1]
                                    if target in line:
                                        replace = '%s%s (0x%X, %s)%s' % (item[0], unit['read method'],
                                                                         unit['offset'] + OR_info["offset"], unit['size'], item[1])
                                        replace = line.replace(
                                            target, replace) + ' // %s.%s' % (unit_path, unit['name'])
                                        self.method[scope][method]["content"] = self.method[scope][method]["content"].replace(
                                            line, replace)
                                self.method[scope][method]['modified'] = True

                        else:
                            # Patch field writing, e.g. EC0.UNIT = xxxx
                            reserve = re.findall("(.*%s\.)%s = (\\w+)" % (unit['OR path'].split('.')[-2], unit['name']),
                                                 self.method[scope][method]["content"])
                            for item in reserve:
                                for line in lines:
                                    target = "%s%s = %s" % (
                                        item[0], unit['name'], item[1])
                                    if target in line:
                                        replace = "%s%s (0x%X, %s, %s)" % (item[0], unit["write method"],
                                                                           unit["offset"] + OR_info["offset"], unit["size"], item[1])
                                        replace = line.replace(
                                            target, replace) + ' // %s.%s' % (unit_path, unit['name'])
                                        self.method[scope][method]["content"] = self.method[scope][method]["content"].replace(
                                            line, replace)
                                self.method[scope][method]['modified'] = True

                            # Patch field writing, e.g. Store (xxxx, UNIT)
                            reserve = re.findall("Store \\((\\w+), (.*%s.)%s\\)" % (unit['OR path'].split('.')[-2], unit['name']),
                                                 self.method[scope][method]["content"])
                            for item in reserve:
                                for line in lines:
                                    target = "Store (%s, %s%s)" % (
                                        item[0], item[1], unit['name'])
                                    if target in line:
                                        replace = "%s%s (0x%X, %s, %s)" % (item[1], unit["write method"],
                                                                           unit["offset"] + OR_info["offset"], unit["size"], item[0])
                                        replace = line.replace(
                                            target, replace) + ' // %s.%s' % (unit_path, unit['name'])
                                        self.method[scope][method]["content"] = self.method[scope][method]["content"].replace(
                                            line, replace)
                                self.method[scope][method]['modified'] = True

                            # Patch field reading, e.g. xxxx = EC0.UNIT
                            reserve = re.findall("(.*%s\.)%s(.*)" % (unit['OR path'].split('.')[-2], unit['name']),
                                                 self.method[scope][method]['content'])
                            for item in reserve:
                                for line in lines:
                                    if "Method (" in item[0] or "Device (" in item[0] or "Scope (" in item[0]:
                                        continue  # stop patching method that have the same name as fieldunit
                                    target = item[0] + unit['name'] + item[1]
                                    if target in line:
                                        replace = '%s%s (0x%X, %s)%s' % (item[0], unit['read method'],
                                                                         unit['offset'] + OR_info["offset"], unit['size'], item[1])
                                        replace = line.replace(
                                            target, replace) + ' // %s.%s' % (unit_path, unit['name'])
                                        self.method[scope][method]["content"] = self.method[scope][method]["content"].replace(
                                            line, replace)
                                self.method[scope][method]['modified'] = True

    def patch_PTSWAK(self):
        '''
        Patch _PTS and _WAK if they are modified.
        '''
        PTS_Serialized = 'NotSerialized'
        WAK_Serialized = 'NotSerialized'
        TTS_Serialized = 'NotSerialized'
        method_new = copy.deepcopy(self.method)
        for scope in self.method:
            for method in self.method[scope]:
                if not self.method[scope][method]['modified']:
                    # skip unmodified method
                    continue
                if '_PTS' in method:
                    method_new[scope]['\\_PTS'] = {'content': self.method[scope][method]['content'].replace(
                        '_PTS', 'YPTS'), 'modified': True}

                if '_WAK' in method:
                    method_new[scope]['\\_WAK'] = {'content': self.method[scope][method]['content'].replace(
                        '_WAK', 'YWAK'), 'modified': True}

                if '_TTS' in method:
                    method_new[scope]['\\_WAK'] = {'content': self.method[scope][method]['content'].replace(
                        '_WAK', 'YWAK'), 'modified': True}

                if '_PTS' in method or '_WAK' in method or '_TTS' in method:
                    try:
                        PTS_Serialized = re.search(
                            '_PTS, 1, (NotSerialized|Serialized)', self.dsdt_content).groups()[0]
                    except AttributeError:
                        pass
                    try:
                        WAK_Serialized = re.search(
                            '_WAK, 1, (NotSerialized|Serialized)', self.dsdt_content).groups()[0]
                    except AttributeError:
                        pass
                    try:
                        TTS_Serialized = re.search(
                            '_TTS, 1, (NotSerialized|Serialized)', self.dsdt_content).groups()[0]
                    except AttributeError:
                        pass
                    PCI9 = '''
        Device (PCI9)
        {
            Name (_ADR, Zero)
            Name (FNOK, Zero)
            Name (MODE, Zero)
            //
            Name (TPTS, Zero)
            Name (TWAK, Zero)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }'''
                    method_new['\\_SB'] = {'\\_SB.PCI9': {
                        'content': PCI9, 'modified': True}}

                    PTS = '''
        Method (_PTS, 1, %s) //Method (_PTS, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                \_SB.PCI9.TPTS = Arg0

                if(\_SB.PCI9.FNOK ==1)
                {
                    Arg0 = 3
                }

                If (CondRefOf (\DGPU._ON))
                {
                    \DGPU._ON ()
                }

                If (CondRefOf(EXT1))
                {
                    EXT1(Arg0)
                }
                If (CondRefOf(EXT2))
                {
                    EXT2(Arg0)
                }
            }
            If (CondRefOf (\YPTS) && _OSI ("Darwin"))
            {
                \YPTS(Arg0)
            }
            Else
            {
                \XPTS(Arg0)
            }
        }''' % PTS_Serialized
                    if '\\_PTS' in method_new['\\']:
                        method_new['\\']['\\_PTS']['content'] += PTS
                        method_new['\\']['\\_PTS']['modified'] = True
                    else:
                        method_new['\\']['\\_PTS'] = {
                            'content': PTS, 'modified': True}

                    WAK = '''
        Method (_WAK, 1, %s) //Method (_WAK, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                \_SB.PCI9.TWAK = Arg0

                if(\_SB.PCI9.FNOK ==1)
                {
                    \_SB.PCI9.FNOK =0
                    Arg0 = 3
                }

                If (CondRefOf (\DGPU._OFF))
                {
                    \DGPU._OFF ()
                }

                If (CondRefOf(EXT3))
                {
                    EXT3(Arg0)
                }
                If (CondRefOf(EXT4))
                {
                    EXT4(Arg0)
                }
            }
            If (CondRefOf (\YWAK) && _OSI ("Darwin"))
            {
                Return (\YWAK(Arg0))
            }
            Else
            {
                Return (\XWAK(Arg0))
            }
        }''' % WAK_Serialized
                    if '\\_WAK' in method_new['\\']:
                        method_new['\\']['\\_WAK']['content'] += WAK
                        method_new['\\']['\\_WAK']['modified'] = True
                    else:
                        method_new['\\']['\\_WAK'] = {
                            'content': WAK, 'modified': True}

                    TTS = '''
        Method (_TTS, 1, %s) //Method (_TTS, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                If (CondRefOf(EXT5))
                {
                    EXT5(Arg0)
                }
                If (CondRefOf(EXT6))
                {
                    EXT6(Arg0)
                }
            }

            If (CondRefOf(\XTTS))
            {
                \XTTS(Arg0)
            }
        }''' % TTS_Serialized
                    if '\\_TTS' in method_new['\\']:
                        method_new['\\']['\\_TTS']['content'] += TTS
                        method_new['\\']['\\_TTS']['modified'] = True
                    else:
                        method_new['\\']['\\_TTS'] = {
                            'content': TTS, 'modified': True}

        self.method = method_new
        del method_new

    def insert_osi(self):
        '''
        Insert 'If (_OSI ("Darwin"))' into each method to avoid affacting Windows which is booted with OpenCore.
        '''
        for scope in self.method:
            for method in self.method[scope]:
                if not self.method[scope][method]['modified']:
                    # skip unmodified method
                    continue
                if 'Darwin' in self.method[scope][method]["content"]:
                    continue
                stack = []
                method_info = re.search(
                    'Method \((\\\?[\w\.]+), (\d+), (NotSerialized|Serialized)\)',
                    self.method[scope][method]['content']).groups()

                # Insert if _OSI at the beginning
                self.method[scope][method]["content"] = re.sub(
                    'Method \((\\\?[\w\.]+), (\d+), (NotSerialized|Serialized)\)',
                    "Method (%s, %s, %s) \n{ \nIf (_OSI (\"Darwin\"))" % (
                        method_info[0], method_info[1], method_info[2]),
                    self.method[scope][method]["content"])

                for index in range(0, len(self.method[scope][method]["content"])):
                    if "{" in self.method[scope][method]['content'][index]:
                        stack.append('{')
                    if "}" in self.method[scope][method]['content'][index]:
                        stack.pop()
                        if len(stack) == 1:
                            arg = ''
                            for i in range(0, int(method_info[1])):
                                if i > 0:
                                    arg += ', '
                                arg += 'Arg%d' % i
                            # Insert return original method at the bottom
                            self.method[scope][method]["content"] = self.method[scope][method]['content'][:index] + \
                                "}\n        Else\n        {\n            Return(X%s(%s))\n        }\n" % (
                                method_info[0][-3:], arg) + self.method[scope][method]["content"][index:]
                            break

    def special_devices(self):
        '''
        This method automatically patch some special laptops. For example, some HP laptop have ACEL device,
        which will cause battery info not able to be updated.
        '''

        def patch_ACEL(self):
            '''
            Disable HP laptops' ACEL device
            '''
            print("Patching ACEL...")
            content = get_content.search(self.dsdt_content, "(ACEL)")
            for dev in content:
                if dev not in self.method:
                    self.method[dev] = {}
                self.method[dev]["%s._STA" % dev] = {
                    'content': '''        Method (_STA, 0, NotSerialized)
            {
                If (_OSI("Darwin"))
                {
                    Return (0)
                }
                Else
                {
                    Return(XSTA())
                }
            }
    ''',
                    'modified': True
                }

        if "Device (ACEL)" in self.dsdt_content:
            if "HPQOEM" not in self.dsdt_content:
                print(IS_THIS_HP_LAPTOP)
                inp = input()
                if inp == 'yes' or inp == 'y':
                    patch_ACEL(self)
            patch_ACEL(self)

    def generate_comment(self):
        # Find mutex and set them to zero
        self.patch_list = []
        mutex = re.findall("Mutex \((.*?), (.*?)\)", self.dsdt_content)
        for item in mutex:
            patch = {}
            name = item[0]
            value = int(item[1], 16)
            find = replace = '01'
            if value != 0:
                for c in name:
                    asc = ord(c)
                    find += "%02X" % asc
                    replace += "%02X" % asc
                find += "%02X" % value
                replace += "00"
                patch['comment'] = '[BATT] Set mutex %s to zero' % name
                patch['find'] = find
                patch['replace'] = replace
                self.patch_list.append(patch)

        # generate ACPI patch
        for scope in self.method:
            for method in self.method[scope]:
                if not self.method[scope][method]['modified']:
                    # Skip unmodified method
                    continue
                patch = {}
                method_name = re.split(r'[\.\\]', method)[-1]
                try:
                    method_info = list(re.search("Method \((%s), (\d+?), (Serialized|NotSerialized)\)" % method_name,
                                                 self.method[scope][method]["content"]).groups())
                except AttributeError:
                    continue
                method_info[0] = method_info[0].replace("\\", "")
                if method_info[0] in dangerous_patch_list:
                    # Warning user if this tool patched some dangerous methods
                    print(DANGEROUS_PATCH_MSG[0], method_info[0], DANGEROUS_PATCH_MSG[1],
                          'X%s' % method_info[0][1:], DANGEROUS_PATCH_MSG[2])
                method_info[1] = int(method_info[1])
                if method_info[2] == 'Serialized':
                    method_info[1] += 8
                find = replace = ''
                for c in method_info[0]:
                    asc = ord(c)
                    find += "%02X" % asc
                    replace += "%02X" % asc
                replace = "58" + replace[2:]  # Set the 1st character to 'X'
                find += "%02X" % method_info[1]
                replace += "%02X" % method_info[1]
                patch['comment'] = '[BATT] Rename %s to X%s' % (
                    method_info[0], method_info[0][1:])
                patch['find'] = find
                patch['replace'] = replace
                self.patch_list.append(patch)

        # Add comment before dsl file
        self.comment += '/*\n'
        self.comment += '* This battery hot patch is generate by SSDT-BATT_Auto_Gen, \n'
        self.comment += '* which is a python program written by Eric Kwok.\n'
        self.comment += '*\n'
        self.comment += '* Note: Should be compile with -f option.\n'
        self.comment += '* For any support, plese visit https://github.com/the-eric-kwok/SSDT-BATT_Auto_Gen/issues\n'
        self.comment += '*\n'
        for patch in self.patch_list:
            self.comment += '* %s\n' % patch['comment']
            self.comment += '* Find:    %s\n' % patch['find']
            self.comment += '* Replace: %s\n' % patch['replace']
            self.comment += '*\n'
        self.comment += '*/\n'

    def assemble(self):
        '''
        Grab comments, head, body, tail, and assemble them together.
        '''
        self.file_generated = self.comment
        self.file_generated += (self.head + self.RW_method)
        for scope in self.method:
            have_method = False
            for method in self.method[scope]:
                if self.method[scope][method]:
                    have_method = True
            if not have_method:
                # Skip empty scope
                continue
            self.file_generated += "    Scope (%s)\n    {\n" % scope
            for method in self.method[scope]:
                if not self.method[scope][method]['modified']:
                    # Skip unmodified method
                    continue
                self.file_generated += self.method[scope][method]["content"] + '\n'
            self.file_generated += "    }\n"
        self.file_generated += '}\n'

    def re_indent(self):
        stack = []
        splited = self.file_generated.split('\n')
        # Parse line by line
        for index in range(0, len(splited)):
            # Delete space at front of each line
            splited[index] = splited[index].strip()
            count = splited[index].count('{')
            count -= splited[index].count('}')
            if count < 0:
                for i in range(0, -count):
                    stack.pop()
            # Indent by brackets
            splited[index] = "    " * len(stack) + splited[index]
            if count > 0:
                for i in range(0, count):
                    stack.append('{')

        self.file_generated = '\n'.join(splited)

    def write_file(self):
        '''
        Write to dsl file, and also try to compile it automatically.
        '''
        out_path = []
        out_path.append(os.path.expanduser('~') + os.sep +
                        'Desktop' + os.sep + 'Battery_hotpatch')
        # Replace DSDT with SSDT-BATT and fill it in filename
        out_path.append(os.path.split(
            self.filepath.replace("DSDT", "SSDT-BATT"))[1])
        # Replace dsdt with SSDT-BATT in filename
        out_path[1] = out_path[1].replace("dsdt", "SSDT-BATT")

        if not os.path.exists(out_path[0]):
            # If directory not exists
            os.makedirs(out_path[0])

        out_file = os.sep.join(out_path)
        out_path = out_path[0]
        try:
            with open(out_file, 'x') as f:
                f.write(self.file_generated)
                print(GENERATE_SUCCESSFUL_MSG)
        except FileExistsError:
            for i in range(1, 100):
                test = '.'.join(out_file.split('.')[:-1]) + '_%d.dsl' % i
                try:
                    with open(test, 'x') as f:
                        f.write(self.file_generated)
                        out_file = test
                        print(GENERATE_SUCCESSFUL_MSG)
                    break
                except FileExistsError:
                    pass

        if os.path.exists('./iasl') and os.sys.platform == "darwin":
            with os.popen("./iasl -va -f %s 2>&1" % out_file) as p:
                ret = p.read()
                if "AML Output" in ret:
                    ret_spl = ret.splitlines()
                    for line in ret_spl:
                        if line.startswith("AML Output"):
                            if ' 0 bytes' not in line:
                                print(COMPILE_SUCCESS_MSG)
                                break
                            else:
                                print(COMPILE_FAILED_ERR)
                                print(ret)
                else:
                    print(COMPILE_FAILED_ERR)
        elif os.path.exists('.\\iasl.exe') and os.sys.platform == 'win32':
            with os.popen(".\\iasl.exe -va -f %s" % out_file) as p:
                ret = p.read()
                if "AML Output" in ret:
                    ret_spl = ret.splitlines()
                    for line in ret_spl:
                        if line.startswith("AML Output"):
                            if '0 bytes' not in line:
                                print(COMPILE_SUCCESS_MSG)
                                break
                            else:
                                print(COMPILE_FAILED_ERR)
                                print(ret)
                else:
                    print(COMPILE_FAILED_ERR)
        else:
            print(TRY_TO_COMPILE_ANYWAY)
            os.system('iasl -va -f %s' % out_file)

        if os.sys.platform == "darwin":
            os.system("open " + out_path)
        elif os.sys.platform == "win32":
            os.system("start " + out_path)


def opener(filepath: str):
    try:
        with open(filepath, 'r') as f:
            content = f.read()
    except FileNotFoundError:
        print(FILE_NOT_FOUND_ERR)
        exit(1)
    except PermissionError:
        print(PERMISSION_ERR)
        exit(1)
    return content


def show_help():
    print(HELP_MESSAGE)
    exit()


def parse_args():
    '''
    Parsing arguments and load file contents

    @return: (filename, filepath, dsdt_content) - tuple(str)
    '''
    global VERBOSE, DEBUG, FORCE
    filename = filepath = dsdt_content = None
    arg_lens = len(sys.argv)
    if arg_lens == 1:
        show_help()
    for arg in sys.argv:
        if '-h' in arg or 'help' in arg:
            show_help()
        if '-v' in arg:
            VERBOSE = True
        if '-F' in arg or '--force' in arg:
            FORCE = True
        if '-debug' in arg:
            VERBOSE = True
            DEBUG = True
        if '.dsl' in arg:
            filename = arg
            filepath = os.path.abspath(filename)
            dsdt_content = opener(filepath=filepath)
        if '.aml' in arg or '.dat' in arg:
            if os.path.exists('./iasl') and os.sys.platform == "darwin":
                #print("file: "+arg)
                with os.popen('./iasl -d "%s" 2>&1' % arg) as p:
                    ret = p.read()
                    if "ASL Output" in ret:
                        print(DECOMPILE_SUCCESS_MSG)
                    else:
                        print(ret)
                        exit(1)
            elif os.path.exists('.\\iasl.exe') and os.sys.platform == 'win32':
                #print("file: "+arg)
                with os.popen('.\\iasl.exe -d "%s" 2>&1' % arg) as p:
                    ret = p.read()
                    if "ASL Output" in ret:
                        print(DECOMPILE_SUCCESS_MSG)
                    else:
                        print(ret)
                        exit(1)
            else:
                print(NO_IASL_COMPILER)
                exit(1)
            filename = arg.replace('.aml', '.dsl')
            filepath = os.path.abspath(filename)
            dsdt_content = opener(filepath=filepath)
    if filepath and dsdt_content:
        return (filepath, dsdt_content)
    else:
        show_help()


if __name__ == '__main__':
    start_time = time.time()
    filepath, dsdt_content = parse_args()

    result = re.findall("PNP0C0A", dsdt_content)
    if not FORCE:
        if len(result) > 1:
            print(TOO_MANY_BATT_ERR)
            exit(1)
        elif len(result) < 1:
            print(TOO_FEW_BATT_ERR)
            exit(1)

    # Single battery device
    app = AutoGen(filepath=filepath, dsdt_content=dsdt_content)
    if VERBOSE:
        print("程序执行用时", time.time() - start_time, "秒")
