[![time tracker](https://wakatime.com/badge/github/the-eric-kwok/SSDT-BATT_Auto_Gen.svg)](https://wakatime.com/badge/github/the-eric-kwok/SSDT-BATT_Auto_Gen)
# SSDT-BATT_Auto_Gen
一个自动从 DSDT 中生成 SSDT-BATT 的 python 脚本

**此工程为正在开发状态，尚不能正常工作，敬请关注**
**This project is now WIP, please stay tuned**

Copyright (c) 2020 郭耀铭 All Rights Reserved.

鸣谢 Rehabman 为 macOS 编译了 iasl 编译器。

鸣谢 DalianSky、XStar-Dev、神楽小白提供了简单易懂的黑苹果电池热补丁教程。

<u>推荐使用 pypy3 以获得更好的性能</u>

安装：

    brew install pypy3

用法: 

    python3 Auto_Gen.py <DSDT.dsl>

或

    pypy3 Auto_Gen.py <DSDT.dsl>
