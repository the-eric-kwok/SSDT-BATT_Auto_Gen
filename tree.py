# Deprecated!
import re
from re import search


class Node:
    def __init__(self, name="", *child) -> None:
        self.name = name
        self.child = list(child)


class Tree:
    def __init__(self, root=None) -> None:
        self.root = Node("\\")

    def search(self, root, key) -> bool:
        for item in self.root.child:
            if item.name == key:
                return True
            if item.child:
                self.search(item, key)
            else:
                return False
        pass

    def add(self, root, item):
        if self.search(self.root, item.name):
            # 若已存在此键，则跳过创建
            return item
        root.child.append(item)
        return item


def parse_dsdt(dsdt_content: str):
    #root = Node("\\")
    #tree = Tree(root)
    stack = []
    dsdt_splited = dsdt_content.split()
    for i in range(0, len(dsdt_splited)):
        word = dsdt_splited[i]
        if dsdt_splited[i] == "DefinitionBlock":
            stack.append("DefinitionBlock")
        elif dsdt_splited[i] == "Field":
            name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
            stack.append(("Field", name))
            print("Field:", name)
        elif dsdt_splited[i] == "IndexField":
            name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
            stack.append(("IndexField", name))
            print("IndexField", name)
        elif dsdt_splited[i] == "Scope":
            path = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
            stack.append(("Scope", path))
            print("Scope", path)
            if path == "_SB.PCI0.UA00":
                print("<----")
        elif dsdt_splited[i] == "Method":
            name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
            stack.append(("Method", name))
            print("Method", name)
            if name == "_Q40":
                print("-----------")
                pass
        elif dsdt_splited[i] == "Device":
            name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
            stack.append(("Device", name))
            print("Device", name)
            if name == "WMI2":
                print("-----------")
                pass
        elif dsdt_splited[i] == "ThermalZone":
            name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
            stack.append(("ThermalZone", name))
            print("TZ", name)
        elif dsdt_splited[i] == "If":
            stack.append(None)
        elif dsdt_splited[i] == "Else":
            stack.append(None)
        elif dsdt_splited[i] == "ElseIf":
            stack.append(None)
        elif dsdt_splited[i] == "Switch":
            stack.append(None)
        elif dsdt_splited[i] == "Case":
            stack.append(None)
        elif dsdt_splited[i] == "Default":
            stack.append(None)
        elif dsdt_splited[i] == "While":
            stack.append(None)
        elif dsdt_splited[i] == "Buffer" or dsdt_splited[i] == "(Buffer":
            stack.append(None)
        elif dsdt_splited[i] == "Package" or dsdt_splited[i] == "(Package":
            stack.append(None)
        elif dsdt_splited[i] == "IRQ":
            stack.append(None)
        elif dsdt_splited[i] == "IRQNoFlags":
            stack.append(None)
        elif dsdt_splited[i] == "ResourceTemplate":
            stack.append(None)
        elif dsdt_splited[i] == "Interrupt":
            stack.append(None)
        elif dsdt_splited[i] == "GpioInt":
            stack.append(None)
        elif dsdt_splited[i] == "GpioIo":
            stack.append(None)
        elif dsdt_splited[i] == "StartDependentFn":
            stack.append(None)
        elif dsdt_splited[i] == "StartDependentFnNoPri":
            stack.append(None)
        elif dsdt_splited[i] == "Processor":
            stack.append(None)
        elif dsdt_splited[i] == "PowerResource":
            stack.append(None)
        elif dsdt_splited[i] == "DMA":
            stack.append(None)

        elif "}" in dsdt_splited[i]:
            stack.pop()
            pass
