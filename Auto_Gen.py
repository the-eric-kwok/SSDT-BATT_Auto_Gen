#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from os import devnull
import sys
import os
import re
from multilanguage import *
from tree import parse_dsdt


class AutoGen:
    OR_info = []
    EC_path = []
    verbose = False

    def __init__(self) -> None:
        self.parse_args()
        self.clean_out()
        self.parse_dsdt()
        self.find_OperationRegion()

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
        self.file_content = re.sub(r'/\*[\w\W\n]*?\*/', "", self.file_content)
        # 去除行注释
        self.file_content = re.sub(r'//.*', '', self.file_content)
        # 去除 External 声明
        self.file_content = re.sub(r'External.*\n', "", self.file_content)
        # 去除 Firmware Error 说明
        self.file_content = re.sub(
            r'Firmware Error.*\n', "", self.file_content)

    def parse_dsdt(self):
        stack = []
        dsdt_splited = self.file_content.split()
        for i in range(0, len(dsdt_splited)):
            word = dsdt_splited[i]
            if "PNP0C09" in dsdt_splited[i]:
                path = ""
                for item in stack:
                    if item:
                        if item[0] == 'Scope':
                            path = item[1]
                        elif item[0] == 'Device':
                            path += '.'
                            path += item[1]
                if self.verbose:
                    print("EC Path:", path)
                self.EC_path.append(path)
            elif dsdt_splited[i] == "DefinitionBlock":
                stack.append("DefinitionBlock")
            elif dsdt_splited[i] == "Field":
                try:
                    name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                except IndexError:
                    continue
                stack.append(("Field", name))
            elif dsdt_splited[i] == "IndexField":
                try:
                    name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                except IndexError:
                    continue
                stack.append(("IndexField", name))
            elif dsdt_splited[i] == "Scope":
                try:
                    path = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                except IndexError:
                    continue
                stack.append(("Scope", path))
                #print("Scope", path)
            elif dsdt_splited[i] == "Method":
                try:
                    name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                except IndexError:
                    continue
                stack.append(("Method", name))
                #print("Method", name)
                # if name == "_CRS":
                #    print()
            elif dsdt_splited[i] == "Device":
                try:
                    name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                except IndexError:
                    continue
                stack.append(("Device", name))
                #print("Device", name)
                # if name == "SRRE":
                #    print()
            elif dsdt_splited[i] == "ThermalZone":
                try:
                    name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                except IndexError:
                    continue
                stack.append(("ThermalZone", name))

            elif dsdt_splited[i] in ("If", "(If"):
                stack.append(None)
            elif dsdt_splited[i] == "Else":
                stack.append(None)
            elif dsdt_splited[i] == "ElseIf":
                stack.append(None)
            elif dsdt_splited[i] == "Switch":
                stack.append(None)
            elif dsdt_splited[i] == "Case":
                stack.append(None)
            elif dsdt_splited[i] == "Default":
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
                pass

    @property
    def EC_content(self):
        '''
        Find EmbeddedController part in dsl and return it
        '''
        try:
            EC_index = self.file_content.index("PNP0C09")
        except AttributeError:
            print(EC_NOT_FOUND_MSG)
            exit(1)
        content = {}
        for item in self.EC_path:
            dev_name = item.split('.')[-1]
            EC = re.search(
                "[\\t ]*Device \\(%s\\)[\\s\\S]*?PNP0C09[\\s\\S]*}" % dev_name, self.file_content)
            bracket_stack = []
            tmp = ''
            for char in EC.group():
                if char == '{':
                    bracket_stack.append(char)
                elif char == '}':
                    bracket_stack.pop()
                    if len(bracket_stack) == 0:
                        tmp += char
                        break
                tmp += char
            content[item] = tmp

        for item in self.EC_path:
            EC_scope = re.findall(
                '([\t ]*Scope \\(%s\\)[\\s\\S]*})' % item, self.file_content)
            bracket_stack = []
            tmp = ''
            for match in EC_scope:
                for char in match:
                    if char == '{':
                        bracket_stack.append(char)
                    elif char == '}':
                        bracket_stack.pop()
                        if len(bracket_stack) == 0:
                            tmp += char
                            break
                    tmp += char
            content[item] += ('\n'+tmp)
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


if __name__ == '__main__':
    app = AutoGen()
