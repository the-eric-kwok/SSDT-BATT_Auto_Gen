#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import os
import re
from multilanguage import *
import time


class AutoGen:
    OR_info = []
    verbose = False
    debug = False
    head = """DefinitionBlock ("", "SSDT", 2, "ERIC", "BATT", 0x00000000)
{
"""

    def __init__(self) -> None:
        self.parse_args()
        self.clean_out()
        self.EC_content = self.get_content("\"PNP0C09\"")
        self.find_OperationRegion()
        self.find_field()
        self.patch_method()
        self.insert_osi()

    def show_help(self):
        print(HELP_MESSAGE)

    def parse_args(self):
        arg_lens = len(sys.argv)
        if arg_lens == 1:
            self.show_help()
            exit()
        for arg in sys.argv:
            if '-h' in arg or 'help' in arg:
                self.show_help()
                exit()
            if '-v' in arg:
                self.verbose = True
            if '-debug' in arg:
                self.verbose = True
                self.debug = True
            if '.dsl' in arg:
                self.filename = arg
                self.filepath = os.path.abspath(arg)
                try:
                    with open(self.filename, 'r') as f:
                        self.file_content = f.read()
                except FileNotFoundError:
                    print(FILE_NOT_FOUND_MSG)
                    exit(1)
                except PermissionError:
                    print(PERMISSION_MSG)
                    exit(1)

    def clean_out(self):
        '''
        Removes comments, external, Firmware error generated by iasl, etc
        '''
        # \w\W 跨行匹配，去除段注释
        self.file_content = re.sub(
            r'/\*[\w\W\n]*?\*/', "", self.file_content)
        # 去除行注释
        self.file_content = re.sub(r'//.*\n', '', self.file_content)
        # 去除 External 声明
        self.file_content = re.sub(r'External.*\n', "", self.file_content)
        # 去除 Firmware Error 说明
        self.file_content = re.sub(
            r'Firmware Error.*\n', "", self.file_content)
        # 去除空行
        self.file_content = re.sub(r'^\n', "", self.file_content)

    def get_content(self, target: str):
        '''
        Getting file content about given target.

        If target is a path, return its content in string. 

        If target is a word, return the method which includes it in a dict. 

        @param: target(str) - device/field/method absolute path or query word (determine by ' \ ')

        @return: content(str) - file content about that device/field/method

        @return: content(dict) - {"path": "content"}
        '''
        if self.debug:
            print('\n\n')
            print("---------------------get content-----------------------")
        dsdt_splited = self.file_content.split(' ')
        stack = []
        trigger = False
        content = ''
        path_list = []  # Find path by word

        for i in range(0, len(dsdt_splited)):
            word = dsdt_splited[i]
            if '\\' not in target:
                if target in dsdt_splited[i]:
                    word = dsdt_splited[i]
                    if target != dsdt_splited[i] and not re.match('\\(*"?%s,?"?\\)*$' % target, dsdt_splited[i]) and not re.match('.*\\.%s' % target, dsdt_splited[i]):
                        # 跳过非该变量名结尾的情况
                        continue
                    path = ''
                    for item in stack:
                        if item:
                            if item[0] == 'Scope':
                                if item[1].startswith('\\'):
                                    path = item[1]
                                else:
                                    path = '\\' + item[1]
                            elif item[0] == 'Device':
                                if stack.index(item) != 1:
                                    path += '.'
                                else:
                                    path = '\\'
                                path += item[1]
                            elif item[0] == 'Method':
                                if stack.index(item) != 1:
                                    path += '.'
                                else:
                                    path = '\\'
                                path += item[1]
                            elif item[0] == "Field":
                                # avoid searching Field
                                path = None
                    if path:
                        path_list.append(path)
            if dsdt_splited[i] == "DefinitionBlock":
                stack.append("DefinitionBlock")
            elif dsdt_splited[i] == "Field":
                try:
                    name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                    trigger = True  # 触发检查当前路径
                except IndexError:
                    continue
                stack.append(("Field", name))
            elif dsdt_splited[i] == "IndexField":
                try:
                    name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                    trigger = True  # 触发检查当前路径
                except IndexError:
                    continue
                stack.append(("IndexField", name))
            elif dsdt_splited[i] == "Scope":
                try:
                    path = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                    trigger = True  # 触发检查当前路径
                except IndexError:
                    continue
                stack.append(("Scope", path))
                if self.debug:
                    print("Scope", path)
            elif dsdt_splited[i] == "Method":
                try:
                    name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                    trigger = True  # 触发检查当前路径
                except IndexError:
                    continue
                stack.append(("Method", name))
                if self.debug:
                    print("Method", name)
                    if name == "NPTS":
                        print()
            elif dsdt_splited[i] == "Device":
                try:
                    name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                    trigger = True  # 触发检查当前路径
                except IndexError:
                    continue
                stack.append(("Device", name))
                if self.debug:
                    print("Device", name)
                    if name == "PEG0":
                        print()
            elif dsdt_splited[i] == "ThermalZone":
                try:
                    name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                    trigger = True  # 触发检查当前路径
                except IndexError:
                    continue
                stack.append(("ThermalZone", name))

            elif dsdt_splited[i] in ("If", "(If"):
                stack.append(None)
            elif dsdt_splited[i] == "Else\n":
                stack.append(None)
            elif dsdt_splited[i] == "ElseIf":
                stack.append(None)
            elif dsdt_splited[i] == "Switch":
                stack.append(None)
            elif dsdt_splited[i] == "Case":
                stack.append(None)
            elif dsdt_splited[i] == "Default\n":
                stack.append(None)
            elif dsdt_splited[i] == "While":
                stack.append(None)
            elif dsdt_splited[i] in ("Buffer", "(Buffer"):
                stack.append(None)
            elif dsdt_splited[i] in ("Package", "(Package"):
                stack.append(None)
            elif dsdt_splited[i] == "IRQ":
                stack.append(None)
            elif dsdt_splited[i] == "IRQNoFlags":
                stack.append(None)
            elif dsdt_splited[i] in ("ResourceTemplate", "(ResourceTemplate"):
                stack.append(None)
            elif dsdt_splited[i] == "Interrupt":
                stack.append(None)
            elif dsdt_splited[i] == "GpioInt":
                stack.append(None)
            elif dsdt_splited[i] == "GpioIo":
                stack.append(None)
            elif dsdt_splited[i] == "StartDependentFn":
                stack.append(None)
            elif dsdt_splited[i] == "StartDependentFnNoPri":
                stack.append(None)
            elif dsdt_splited[i] == "Processor":
                stack.append(None)
            elif dsdt_splited[i] == "PowerResource":
                stack.append(None)
            elif dsdt_splited[i] in ("DMA", "(DMA"):
                stack.append(None)

            elif "}" in dsdt_splited[i]:
                stack.pop()

            if trigger:
                # 触发检查当前路径
                path = ''
                for item in stack:
                    if item:
                        if item[0] == 'Scope':
                            if item[1].startswith('\\'):
                                path = item[1]
                            else:
                                path = '\\' + item[1]
                        elif item[0] == 'Device':
                            if stack.index(item) != 1:
                                path += '.'
                            else:
                                path = '\\'
                            path += item[1]
                        elif item[0] == 'Method':
                            if stack.index(item) != 1:
                                path += '.'
                            else:
                                path = '\\'
                            path += item[1]
                        elif item[0] == 'Field':
                            if stack.index(item) != 1:
                                path += '.'
                            else:
                                path = '\\'
                            path += item[1]
                        elif item[0] == 'IndexField':
                            if stack.index(item) != 1:
                                path += '.'
                            else:
                                path = '\\'
                            path += item[1]
                        elif item[0] == 'ThermalZone':
                            if stack.index(item) != 1:
                                path += '.'
                            else:
                                path = '\\'
                            path += item[1]
                if path == target:
                    # 匹配查找目标时
                    bracket_stack = []
                    for word in dsdt_splited[i:]:
                        if "{" in word:
                            bracket_stack.append('{')
                        if "}" in word:
                            bracket_stack.pop()
                            if len(bracket_stack) == 0:
                                content += word
                                break
                        content += (word+' ')
                trigger = False
        if len(path_list) > 0:
            # 关键词搜索模式时
            content = {}
            for path in path_list:
                content[path] = self.get_content(path)
        return content

    def find_OperationRegion(self):
        '''
        Find OperationRegion in EC device
        '''
        EC_content = self.EC_content
        for dev in EC_content:
            OR_list = re.findall(
                "OperationRegion \\(([A-Z]{4}),", EC_content[dev])
            for OR in OR_list:
                OR_info = re.search(  # 使用分组来获得 OperationRegion 的信息
                    "OperationRegion \\(%s, ([a-zA-Z].*), ([a-zA-Z0-9].*), ([a-zA-Z0-9].*)\\)" % OR, EC_content[dev])
                try:
                    self.OR_info.append({
                        "Path": dev,
                        "Name": OR,
                        "Storage": OR_info.group(1),
                        "Offset": OR_info.group(2),
                        "Length": OR_info.group(3)
                    })
                except AttributeError:
                    continue
        if self.verbose:
            for item in self.OR_info:
                print(item)
            print()

    def rename(self, orig_name: str):
        '''
        Method to rename anything without conflicting.

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
            if self.file_content.find(new_name) == -1:
                return new_name

    def find_field(self):
        self.modified_fieldunit = []
        self.file_generated = 'DefinitionBlock("", "SSDT", 2, "ERIC", "BATT", 0x00000000)\n{\n'
        for OR_info in self.OR_info:
            OR_path = OR_info["Path"]+'.'+OR_info["Name"]
            content = self.get_content(OR_path)
            splited = content.split("}")
            for field in splited[:-1]:
                flag = False  # 该Field中是否有需要特殊读写的变量？
                tmp = field.split('{')
                field_content = tmp[1].split('\n')
                offset_bit = 0  # Offset in bits
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
                                print(FIELD_UNIT_OFFSET_ERROR_MSG)
                                exit(2)
                            self.modified_fieldunit.append(
                                {"name": name, "offset": int(offset_bit/8), "size": size, "OR path": OR_path})
                            flag = True
                        offset_bit += size
                    else:
                        item = item.strip()
                        offset = re.search(r'Offset \((.*)\)', item).group(1)
                        offset_bit = int(offset, 16) * 8

                if flag:
                    if OR_info["Storage"] not in self.file_generated and OR_info["Path"] not in self.file_generated:
                        RE1B = self.rename('R1B')
                        RECB = self.rename('RDB')
                        ERM2 = self.rename('MEM')
                        WE1B = self.rename('W1B')
                        WECB = self.rename('WRB')
                        for item in self.modified_fieldunit:
                            if item["OR path"] == OR_path:
                                item["read method"] = RECB
                                item["write method"] = WECB
                        self.file_generated += '''
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
            Name (TEMP, Buffer (Arg1){})
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
            Name (TEMP, Buffer (Arg1){})
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
''' % (OR_info["Path"], RE1B, ERM2, OR_info["Storage"], ERM2, RECB, RE1B, WE1B, ERM2, OR_info["Storage"], ERM2, WECB, WE1B)
        if "RECB" not in self.file_generated:
            print(NOT_NEED_TO_PATCH)
            exit(0)
        print(self.file_generated)

    def patch_method(self):
        self.method_to_patch = {}
        for unit in self.modified_fieldunit:
            if self.verbose:
                print("Unit:", unit)
            result = self.get_content(unit["name"])
            for name in result:
                if name in self.method_to_patch or ("EC" not in name and "EC" not in result[name]):
                    # 去重, 去除非 EC 域同名变量的影响
                    continue
                result[name] = "    Scope (%s)\n    {\n        " % '.'.join(
                    name.split('.')[:-1]) + result[name] + "\n    }"
                #print(result[name])
                self.method_to_patch[name] = (result[name])
        for method in self.method_to_patch:
            for unit in self.modified_fieldunit:
                # 替换写入 UNIT = xxxx
                reserve = re.findall("%s = (\\w+)" % unit['name'], self.method_to_patch[method])
                for item in reserve:
                    self.method_to_patch[method] = re.sub("%s = %s" % (unit['name'], item), 
                        "%s (0x%X, %s, %s)" % (
                            unit["write method"], int(unit["offset"]), unit["size"], item
                        ), self.method_to_patch[method])

                # 替换写入 Store (xxxx, UNIT)
                reserve = re.findall("Store \\((\\w+), %s\\)" % unit['name'], 
                    self.method_to_patch[method])
                for item in reserve:
                    self.method_to_patch[method] = re.sub(
                        "Store \\(%s, %s\\)" % (item, unit['name']), 
                        "%s (0x%X, %s, %s)" % (unit["write method"], 
                        int(unit["offset"]), unit["size"], item), 
                        self.method_to_patch[method])

                # 替换读取
                reserve = re.findall("([^/])%s(\\W|\n)" % unit['name'], 
                    self.method_to_patch[method])
                for i in range(0, len(reserve)):
                    item = list(reserve[i])
                    for j in range(0, len(item)):
                        if '(' in item[j]:
                            item[j] = item[j].replace('(', r'\(')
                        elif ')' in item[j]:
                            item[j] = item[j].replace(')', r'\)')
                    self.method_to_patch[method] = re.sub("%s%s%s" % (
                        item[0], unit['name'], item[1]), 
                        '%s%s (0x%X, %s)%s' % (reserve[i][0], unit['read method'], 
                        int(unit['offset']), unit['size'], reserve[i][1]), 
                        self.method_to_patch[method])
        

            if self.verbose:
                print(self.method_to_patch[method])

    def insert_osi(self):
        for method in self.method_to_patch:
            stack = []
            splited = self.method_to_patch[method].split(' ')
            for word in splited:
                if "{" in word:
                    stack.append('{')
                elif "}" in word:
                    stack.pop()
                pass

if __name__ == '__main__':
    start_time = time.time()
    app = AutoGen()
    print("程序执行用时", time.time() - start_time, "秒")
