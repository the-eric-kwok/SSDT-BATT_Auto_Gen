- [x] 使用栈（列表）成功解析了出 EC 的正确路径
- [x] 层级的 Scope 处理
- [x] 由 OperationRegion Name 搜索整个 DSDT，用 re.findall() 获得所有匹配的 Field
- [x] 获得大于8位的变量，添加到列表 self.modified_fieldunit 中，格式为
    ```
    [{
        "offset": 0
        "name": "",
        "size": 0,
        "read method": "",
        "write method": "",
        "OR path": ""
    }]
    ```
    size 单位保持 bit 不变
- [x] 改造 get_content() 方法，使之能针对某一关键字搜索对应的 Method
- [x] 搜索全文，记录需要修改的方法的路径及其内容
- [x] 将原变量名使用 `self.modified_unit["read method"]` 指定的方法进行读取或写入
- [x] 删除写入Field相关的内容（因为不需要进行变量拆分）
- [x] FIXME 修复 FieldUnit 变量与 Method 重名时错误替换的问题
- [x] 双电池设备警告并退出执行
- [x] 惠普 ACEL 设备禁用
- [x] 同一个 Scope 的方法合并
- [x] Mutex 置零补丁生成
- [x] 重命名补丁生成
- [x] 生成产品在桌面
- [x] Field 名字只有三个字母的时候报“无需patch”
- [ ] 处理 OperationRegion 中偏移量为变量名的情况，如 DSDT_ASUS_FX503VD.dsl
- [ ] 修复 patch_method 中对一个 unit 进行了多次替换的问题
- [x] 修复导致 Sample/DSDT-ZHAOYANG K4-iwl.dsl 无法正确 patch 的 bug（猜测是在 patch_method() 内）(检查/SM2S方法的路径)
- [x] 处理 DSDT 使用 ECRD、ECWT 来读写变量的情况(绕开ECRD使用RECB来读取)
- [ ] 智能识别 clover 和 OC，并注入 plist 文件
- [ ] 16 位变量拆分
- [ ] 16 位使用 B1B2 读取
- [ ] 多个PNP0C09设备, 但只有一个启用（如 DSDT-Acel_A715-73G.aml ）
- [ ] 双电池补丁
- [ ] External 声明添加

- [x] ACEL.ADJT 中
    ```assembly
    ElseIf (LNotEqual (CNST, Zero))
    {
        Store (Zero, CNST)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x22, 0x40)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x36, One)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x37, 0x50)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x34, 0x7F)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x24, 0x02)
        Store (One, ^^LPCB.EC0.PLGS)
    }
    ```
    改为
    ```assembly
    ElseIf (LNotEqual (CNST, Zero))
    {
        Store (Zero, CNST)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x36, One)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x37, 0x50)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x34, 0x7F)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x24, 0x02)
        Store (One, ^^LPCB.EC0.PLGS)
        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x22, 0x40)
}
    ```

- [ ] BAT0._BST 中删除
    ```
    If (LEqual (BRTE, Zero))
    {
        Store (0xFFFFFFFF, Index (PBST, One))
    }
    ```

- [ ] FBST 设备
    ```
    into method label FBST code_regex If\s\(CHGS\s\(Zero\)\)[\s]+\{[\s]+Store\s\(0x02,\sLocal0\)[\s]+\}[\s]+Else[\s]+\{[\s]+Store\s\(One,\sLocal0\)[\s]+\} replaceall_matched begin
    If (CHGS (Zero))\n
    {\n
    Store (0x02, Local0)\n
    }\n
    Else\n
    {\n
    Store (Zero, Local0)\n
    }
    end;
```
