#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import os
import re


class AutoGen:
    def __init__(self) -> None:
        self.parse_args()
        self.remove_comment()
        self.find_EC()
        self.find_OperationRegion()

    def show_help(self):
        print('''
A python script to generate SSDT-BATT from original DSDT.dsl
Copyright (c) 2020 郭耀铭 All Rights Reserved.

Credit Rehabman for iasl compiler. DalianSky, XStar-Dev, 神楽小白
for SSDT-BATT hotpatch guide.

    Usage: Auto_Gen.py <DSDT.dsl>

        ''')

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
                with open(self.filename, 'r') as f:
                    self.file_content = f.read()

    def remove_comment(self):
        '''
        Removes block comment
        '''
        # \w\W 跨行匹配
        self.file_content = re.sub(r'/\*[\w\W\n]*?\*/', "", self.file_content)

    def find_EC(self):
        '''
        Find EmbeddedController part and store code to self.EC_content
        '''
        self.EC_content = re.search(  # 匹配 H_EC、EC、EC* 等，[\s\S]是跨行匹配，所以是一直贪婪匹配到最后一个 }
            r'Device \((H_)?EC[\s\S]*?PNP0C09[\s\S]*}', self.file_content)  # 然后再通过栈的方式截取到配对的大括号结束位置
        bracket_stack = []
        content = ''
        for char in self.EC_content.group():
            if char == '{':
                bracket_stack.append(char)
            elif char == '}':
                bracket_stack.pop()
                if len(bracket_stack) == 0:
                    content += char
                    break
            content += char
        self.EC_content = content
        # print(self.EC_content)

    def find_OperationRegion(self):
        '''
        Find OperationRegion in EC device
        '''
        OR_info = re.search(  # 使用分组来获得 OperationRegion 的信息
            r"OperationRegion \(([A-Z]{4}), ([a-zA-Z].*), ([a-zA-Z0-9].*), ([a-zA-Z0-9].*)\)", self.EC_content)
        self.OR_info = {
            "Name": OR_info.group(1),
            "Storage": OR_info.group(2),
            "Offset": OR_info.group(3),
            "Length": OR_info.group(4)
        }
        print("Name:", self.OR_info["Name"])
        print("Storage:", self.OR_info["Storage"])
        print("Offset:", self.OR_info["Offset"])
        print("Length:", self.OR_info["Length"])


if __name__ == '__main__':
    app = AutoGen()
