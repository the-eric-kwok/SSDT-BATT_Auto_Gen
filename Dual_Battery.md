1. 判断 PNP0C09 设备的 _STA 方法返回值，确定是否确实为多电池
2. 正常地 patch dsdt
3. 加上 SSDT-BATC 的内容
4. 对包含 Notify (BATx, xxxx) 的 EC Query 进行 rename 和 patch