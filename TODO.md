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
- [ ] 改造 get_content() 方法，使之能针对某一关键字搜索对应的 Method
- [ ] 搜索全文，记录需要修改的方法的路径及其内容
- [ ] 将原变量名使用 `self.modified_unit["read method"]` 指定的方法进行读取或写入
- [x] 删除写入Field相关的内容（因为不需要进行变量拆分）
- [ ] Mutex 置零补丁生成
- [ ] 重命名补丁生成