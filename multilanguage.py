import os

HELP_MESSAGE = '''
A python script to extract SSDT-BATT battery hotpatch from DSDT.
Copyright (c) 2020 郭耀铭 All Rights Reserved.

Credit: Rehabman for iasl compiler, DalianSky, XStar-Dev, 神楽小白
for simple-to-follow battery hotpatching guide.

Usage:
    python3 Auto_Gen.py [options] <DSDT.dsl>

Or:
    pypy3 Auto_Gen.py [options] <DSDT.dsl>

Options:
    -v        Verbose mode
    -debug    Debug mode, this will generate tons of data on you screen
    -h        Show this help message

'''
FILE_NOT_FOUND_ERR = '\033[1;31mFile not found, please re-check file name.\033[0m'
PERMISSION_ERR = '\033[1;31mFile no R/W permission\033[0m'
EC_NOT_FOUND_ERR = '\033[1;31mCannot found EC device in this DSDT.\033[0m'
OR_NOT_FOUND_ERR = '\033[1;31mCannot found any OperationRegion from EC device. Is this desktop computer?\033[0m'
FIELD_UNIT_OFFSET_ERR = "\033[1;31mSome Field Units that needed to be patch cannot be devided by 8 excaly. It seems like your DSDT is being modified uncorrectlly, please re-dump DSDT.\033[0m"
TOO_MANY_BATT_ERR = "\033[1;31mToo many battery devices! Dual battery patch is not implemented!\033[0m"
TOO_FEW_BATT_ERR = "\033[1;31mToo few battery devices! Is this desktop computer?\033[0m"
GENERATE_SUCCESSFUL_MSG = "\033[1;36mSuccessfully generated battery hot-patch.033[0m"
NOT_NEED_TO_PATCH_MSG = '\033[1;36mThis DSDT does not need to be patched! Drop SMCBatteryManager.kext and enjoy!\033[0m'
IS_THIS_HP_LAPTOP = '\033[1;36mI see ACEL device in this DSDT, is this HP laptop? (yes/no)\033[0m'
COMPILE_SUCCESS_MSG = '\033[1;36mSuccessfully compiled!\033[0m'
COMPILE_FAILED_ERR = '\033[1;31mCompile failed! Please check and correct dsl file and compile it yourself.\033[0m'
DECOMPILE_SUCCESS_MSG = '\033[1;36mSuccessfully decompiled!\033[0m'
TRY_TO_COMPILE_ANYWAY = '\033[1;36miasl compiler not found in working directory, trying to compile anyway.\nIf you didn\'t found .aml file under ./Product folder, you should compile the .dsl file using -f (force) option\033[0m'
DANGEROUS_PATCH_MSG = ['\033[1;31mThis patch includes dangerous binary patch: ', '->', ' You should review it before apply!!\n(Use Hex Fiend to extend the heximal code, make sure it\'s unique in whole DSDT.aml)\033[0m']
NO_IASL_COMPILER = '\033[1;36miasl compiler not found in working directory, aborting.\033[0m'

LANG = os.environ.get('LANG').split('.')[0]
if LANG == "zh_CN":
    HELP_MESSAGE = '''
一个自动从 DSDT 中生成 SSDT-BATT 的 python 脚本
Copyright (c) 2020 郭耀铭 All Rights Reserved.

鸣谢 Rehabman 为 macOS 编译了 iasl 编译器。
鸣谢 DalianSky、XStar-Dev、神楽小白提供了简单易懂的黑苹果电池热补丁教程。

\033[4m推荐使用 pypy3 以获得更好的性能\033[0m

用法: 
    python3 Auto_Gen.py [options] <DSDT.dsl>

或

    pypy3 Auto_Gen.py [options] <DSDT.dsl>

Options:
    -v        啰嗦模式
    -debug    调试模式，此选项会在您的屏幕上输出大量信息
    -h        显示此帮助信息

'''
    FILE_NOT_FOUND_ERR = '\033[1;31m未找到该文件，请检查文件名拼写\033[0m'
    PERMISSION_ERR = '\033[1;31m文件无读写权限，请检查权限设置\033[0m'
    EC_NOT_FOUND_ERR = '\033[1;31m该 DSDT 中找不到 EC 设备\033[0m'
    OR_NOT_FOUND_ERR = '\033[1;31m该 DSDT 的 EC 设备中没有任何的 OperationRegion，是否为台式机？\033[0m'
    FIELD_UNIT_OFFSET_ERR = '\033[1;31m此DSDT中某些要处理的FieldUnit偏移量不能被8整除，看起来你的DSDT被不正确地修改过，请重新导出DSDT\033[0m'
    TOO_MANY_BATT_ERR = "\033[1;31m此文件中有多个电池设备！双电池补丁目前还不被支持\033[0m"
    TOO_FEW_BATT_ERR = "\033[1;31m此文件中似乎没有电池设备！这是台式机吗？\033[0m"
    GENERATE_SUCCESSFUL_MSG = '\033[1;36m成功生成了电池补丁文件\033[0m'
    NOT_NEED_TO_PATCH_MSG = '\033[1;36m该 DSDT 不需要热补丁即可正常显示电量，放入 SMCBatteryManager.kext 即可！\033[0m'
    IS_THIS_HP_LAPTOP = '\033[1;36m我在此文件中看到了 ACEL 设备，这是一台惠普笔记本吗？ (yes/no)\033[0m'
    COMPILE_SUCCESS_MSG = '\033[1;36m成功编译！\033[0m'
    COMPILE_FAILED_ERR = '\033[1;31m编译出错，请检查dsl文件并尝试手动编译！\033[0m'
    DECOMPILE_SUCCESS_MSG = '\033[1;36m成功反编译！\033[0m'
    TRY_TO_COMPILE_ANYWAY = '\033[1;36m我在当前目录下没找到 iasl 编译器，不过无论如何我还是尝试为您编译\n如果您没有看到 .aml 文件，您应该使用 -f (强制) 选项手动编译 dsl 文件\033[0m'
    DANGEROUS_PATCH_MSG = ['\033[1;31m这个补丁包含了危险的二进制更名：', '->', ' 您应该自行制作此更名补丁\n（使用 Hex Fiend 工具延长十六进制片段，以确保其唯一性）\033[0m']
    NO_IASL_COMPILER = '\033[1;36m当前目录下找不到 iasl 编译器，中止。\033[0m'

