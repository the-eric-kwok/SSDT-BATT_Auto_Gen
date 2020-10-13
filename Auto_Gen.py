#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import os
import re
from multilanguage import *
from tree import parse_dsdt


class AutoGen:
    def __init__(self) -> None:
        self.parse_args()
        self.remove_comment()
        self.remove_external()
        self.parse_dsdt(self.file_content)
        # self.find_EC()
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

    def remove_comment(self):
        '''
        Removes comments
        '''
        # \w\W 跨行匹配，去除段注释
        self.file_content = re.sub(r'/\*[\w\W\n]*?\*/', "", self.file_content)
        # 去除行注释
        self.file_content = re.sub(r'//.*', '', self.file_content)

    def remove_external(self):
        self.file_content = re.sub(r'External.*\n', "", self.file_content)

    def parse_dsdt(self, dsdt_content: str):
        #root = Node("\\")
        #tree = Tree(root)
        stack = []
        dsdt_splited = dsdt_content.split()
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
                print("Path:", path)
                pass
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
                #if name == "_CRS":
                #    print()
            elif dsdt_splited[i] == "Device":
                try:
                    name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                except IndexError:
                    continue
                stack.append(("Device", name))
                #print("Device", name)
                #if name == "SRRE":
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
            elif dsdt_splited[i] in ("Buffer" ,"(Buffer"):
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

        EC = re.search(  # 匹配 H_EC、EC、EC* 等，[\s\S]是跨行匹配，所以是一直贪婪匹配到最后一个 }
            r'Device \((H_)?EC[\s\S]*?PNP0C09[\s\S]*}', self.file_content)  # 然后再通过栈的方式截取到配对的大括号结束位置
        bracket_stack = []
        content = ''
        try:
            for char in EC.group():
                if char == '{':
                    bracket_stack.append(char)
                elif char == '}':
                    bracket_stack.pop()
                    if len(bracket_stack) == 0:
                        content += char
                        break
                content += char
        except AttributeError:
            print(EC_NOT_FOUND_MSG)
            exit(1)
        return content

    def find_OperationRegion(self):
        '''
        Find OperationRegion in EC device
        '''
        OR_info = re.search(  # 使用分组来获得 OperationRegion 的信息
            r"OperationRegion \(([A-Z]{4}), ([a-zA-Z].*), ([a-zA-Z0-9].*), ([a-zA-Z0-9].*)\)", self.EC_content)
        try:
            self.OR_info = {
                "Name": OR_info.group(1),
                "Storage": OR_info.group(2),
                "Offset": OR_info.group(3),
                "Length": OR_info.group(4)
            }
        except AttributeError:
            print(OR_NOT_FOUND_MSG)
            exit(1)
        print("Name:", self.OR_info["Name"])
        print("Storage:", self.OR_info["Storage"])
        print("Offset:", self.OR_info["Offset"])
        print("Length:", self.OR_info["Length"])


if __name__ == '__main__':
    app = AutoGen()
