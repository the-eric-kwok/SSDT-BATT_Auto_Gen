#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import os


class AutoGen:
    def __init__(self) -> None:
        self.parse_args()

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
                print(self.filename, self.filepath)
                print(self.file_content)

    def remove_comment(self):
        pass


if __name__ == '__main__':
    app = AutoGen()
