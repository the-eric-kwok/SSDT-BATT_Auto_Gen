import os

LANG = ""
HELP_MESSAGE = ""
FILE_NOT_FOUND_MSG = ""
PERMISSION_MSG = ""
EC_NOT_FOUND_MSG = ""
OR_NOT_FOUND_MSG = ""


def language_choose():
    '''
    Multilanguage support
    '''
    global LANG
    LANG = os.environ.get('LANG').split('.')[0]


language_choose()
if LANG == "zh_CN":
    HELP_MESSAGE = '''
一个自动从 DSDT 中生成 SSDT-BATT 的 python 脚本
Copyright (c) 2020 郭耀铭 All Rights Reserved.

鸣谢 Rehabman 为 macOS 编译了 iasl 编译器。
鸣谢 DalianSky、XStar-Dev、神楽小白提供了简单易懂的黑苹果电池热补丁教程。

用法: 
    python3 Auto_Gen.py <DSDT.dsl>

'''
    FILE_NOT_FOUND_MSG = '未找到该文件，请检查文件名拼写'
    PERMISSION_MSG = '文件无读写权限，请检查权限设置'
    EC_NOT_FOUND_MSG = '该 DSDT 中找不到 EC 设备，是否为台式机？'
    OR_NOT_FOUND_MSG = '该 DSDT 的 EC 设备中没有任何的 OperationRegion，是否为台式机？'

elif "zh" in LANG:
    HELP_MESSAGE = '''
一個自動從 DSDT 中解析出 SSDT-BATT 電池熱補丁的 python 腳本
Copyright (c) 2020 郭耀铭 All Rights Reserved.

鳴謝 Rehabman 為 macOS 編譯了 iasl 編譯器。
鳴謝 DalianSky、XStar-Dev、神楽小白提供了簡單易懂的黑蘋果電池熱補丁教程。

用法：
    python3 Auto_Gen.py <DSDT.dsl>

'''
    FILE_NOT_FOUND_MSG = '未找到該文件，請檢查文件名拼寫'
    PERMISSION_MSG = '文件無讀寫權限，請檢查權限設置'
    EC_NOT_FOUND_MSG = '該 DSDT 中找不到 EC 設備，是否為台式機？'
    OR_NOT_FOUND_MSG = '該 DSDT 的 EC 設備中沒有任何的 OperationRegion，是否為台式機？'

else:
    # Fall back to English
    HELP_MESSAGE = '''
A python script to extract SSDT-BATT battery hotpatch from DSDT.
Copyright (c) 2020 郭耀铭 All Rights Reserved.

Credit: Rehabman for iasl compiler, DalianSky, XStar-Dev, 神楽小白
for simple-to-follow battery hotpatching guide.

Usage:
    python3 Auto_Gen.py <DSDT.dsl>

'''
    FILE_NOT_FOUND_MSG = 'File not found, please re-check file name.'
    PERMISSION_MSG = 'File no R/W permission'
    EC_NOT_FOUND_MSG = 'Cannot found EC device in this DSDT, is it from a desktop computer?'
    OR_NOT_FOUND_MSG = 'Cannot found any OperationRegion from EC device, is it from a desktop computer?'
