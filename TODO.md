- [ ] 由 OperationRegion Name 搜索整个 DSDT，用 re.findall() 获得所有匹配的 Field
- [ ] 在上一步中得到的 Field 中按行匹配，获得16位的变量，添加到字典 self.16bit 中，格式为 `{"offset": 0, "name": ""}`
- [ ] 获得32位的变量，添加到字典 self.32bit 中，格式同上
- [ ] 获得大于32位的变量，添加到字典 self.others 中，格式为
    ```
    {
        "offset": 0
        "name": "",
        "length": ""
    }
    ```
    length 单位保持 bit 不变