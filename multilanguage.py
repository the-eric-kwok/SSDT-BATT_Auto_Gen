import os

HELP_MESSAGE = '''
A python script to extract SSDT-BATT battery hotpatch from DSDT.
Copyright (c) 2020 郭耀铭 All Rights Reserved.

Credit: Rehabman for iasl compiler, DalianSky, XStar-Dev, 神楽小白
for simple-to-follow battery hotpatching guide.

Usage:
    python3 Auto_Gen.py <DSDT.dsl>

'''
NOT_NEED_TO_PATCH = '\033[1;36mThis DSDT does not need to be patched! Drop SMCBatteryManager.kext and enjoy!\033[0m\n'
FILE_NOT_FOUND_MSG = '\033[1;31mFile not found, please re-check file name.\033[0m\n'
PERMISSION_MSG = '\033[1;31mFile no R/W permission\033[0m\n'
EC_NOT_FOUND_MSG = '\033[1;31mCannot found EC device in this DSDT.\033[0m\n'
OR_NOT_FOUND_MSG = '\033[1;31mCannot found any OperationRegion from EC device, is it from a desktop computer?\033[0m\n'
FIELD_UNIT_OFFSET_ERROR_MSG = "\033[1;31mSome Field Units that needed to be patch cannot be devided by 8 excaly. It seems like your DSDT is being modified uncorrectlly, please re-dump DSDT.\033[0m\n"
GENERATE_SUCCESSFUL_MSG = "\033[1;36mSuccessfully generate SSDT-BATT.dsl patch under ./Product folder\033[0m\n"

LANG = os.environ.get('LANG').split('.')[0]
if LANG == "zh_CN":
    HELP_MESSAGE = '''
一个自动从 DSDT 中生成 SSDT-BATT 的 python 脚本
Copyright (c) 2020 郭耀铭 All Rights Reserved.

鸣谢 Rehabman 为 macOS 编译了 iasl 编译器。
鸣谢 DalianSky、XStar-Dev、神楽小白提供了简单易懂的黑苹果电池热补丁教程。

\033[4m推荐使用 pypy3 以获得更好的性能\033[0m

用法: 
    python3 Auto_Gen.py <DSDT.dsl>

或

    pypy3 Auto_Gen.py <DSDT.dsl>


'''
    NOT_NEED_TO_PATCH = '\033[1;36m该 DSDT 不需要热补丁即可正常显示电量，放入 SMCBatteryManager.kext 即可！\033[0m\n'
    FILE_NOT_FOUND_MSG = '\033[1;31m未找到该文件，请检查文件名拼写\033[0m\n'
    PERMISSION_MSG = '\033[1;31m文件无读写权限，请检查权限设置\033[0m\n'
    EC_NOT_FOUND_MSG = '\033[1;31m该 DSDT 中找不到 EC 设备\033[0m\n'
    OR_NOT_FOUND_MSG = '\033[1;31m该 DSDT 的 EC 设备中没有任何的 OperationRegion，是否为台式机？\033[0m\n'
    FIELD_UNIT_OFFSET_ERROR_MSG = '\033[1;31m此DSDT中某些要处理的FieldUnit偏移量不能被8整除，看起来你的DSDT被不正确地修改过，请重新导出DSDT\033[0m\n'
    GENERATE_SUCCESSFUL_MSG = '\033[1;36m成功生成了 SSDT-BATT.dsl补丁文件，该文件位于 ./Product 文件夹中\033[0m\n'

elif "zh" in LANG:
    HELP_MESSAGE = '''
一個自動從 DSDT 中解析出 SSDT-BATT 電池熱補丁的 python 腳本
Copyright (c) 2020 郭耀铭 All Rights Reserved.

鳴謝 Rehabman 為 macOS 編譯了 iasl 編譯器。
鳴謝 DalianSky、XStar-Dev、神楽小白提供了簡單易懂的黑蘋果電池熱補丁教程。

用法：
    python3 Auto_Gen.py <DSDT.dsl>

'''
    NOT_NEED_TO_PATCH = '\033[1;36m該 DSDT 不需要打補丁即可正常顯示電量，放入 SMCBatteryManager.kext 即可！\033[0m\n'
    FILE_NOT_FOUND_MSG = '\033[1;31m未找到該文件，請檢查文件名拼寫\033[0m\n'
    PERMISSION_MSG = '\033[1;31m文件無讀寫權限，請檢查權限設置\033[0m\n'
    EC_NOT_FOUND_MSG = '\033[1;31m該 DSDT 中找不到 EC 設備\033[0m\n'
    OR_NOT_FOUND_MSG = '\033[1;31m該 DSDT 的 EC 設備中沒有任何的 OperationRegion，是否為台式機？\033[0m\n'
    FIELD_UNIT_OFFSET_ERROR_MSG = '\033[1;31m此DSDT中某些要處理的FieldUnit的偏移量不能被8整除，看起來你的DSDT被不正確地修改過，請重新導出DSDT\033[0m\n'
    GENERATE_SUCCESSFUL_MSG = '\033[1;36m成功生成了 SSDT-BATT.dsl 補丁文件，該文件位於 ./Product 文件夾中\033[0m\n'
