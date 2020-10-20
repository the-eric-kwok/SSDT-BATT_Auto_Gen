import re
from Auto_Gen import DEBUG, VERBOSE

def split_dsdt(dsdt_content:str):
    dsdt_splited = dsdt_content.split(' ')
    if DEBUG:
        length = len(dsdt_splited)
        for i in range(0, length):
            # remove spaces
            i = length - i - 1
            if dsdt_splited[i] == '':
                del dsdt_splited[i]
    return dsdt_splited

def get_content(dsdt_content:str, target: str):
    '''
    Getting file content about given target.

    If target is a path, return its content. 

    @param: dsdt_content(str) - DSDT content

    @param: target(str) - device/field/method absolute path

    @return: content(str) - file content about that device/field/method
    '''
    dsdt_splited = split_dsdt(dsdt_content)
    stack = []
    trigger = False
    is_string = False
    content = ''
    for i in range(0, len(dsdt_splited)):
        word = dsdt_splited[i]
        if '"' in dsdt_splited[i]:
            count = dsdt_splited[i].count('"')
            for tmp in range(0, count):
                is_string = not is_string
            continue

        if dsdt_splited[i] == "DefinitionBlock":
            stack.append("DefinitionBlock")

        elif dsdt_splited[i] == "Field":
            try:
                name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                trigger = True  # 触发检查当前路径
            except IndexError:
                continue
            stack.append(("Field", name))

        elif dsdt_splited[i] == "IndexField":
            try:
                name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                trigger = True  # 触发检查当前路径
            except IndexError:
                continue
            stack.append(("IndexField", name))

        elif dsdt_splited[i] == "Scope":
            try:
                path = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                trigger = True  # 触发检查当前路径
            except IndexError:
                continue
            stack.append(("Scope", path))

        elif dsdt_splited[i] == "Method":
            try:
                name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
                trigger = True  # 触发检查当前路径
            except IndexError:
                continue
            stack.append(("Method", name))

        elif dsdt_splited[i] == "Device":
            try:
                name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                trigger = True  # 触发检查当前路径
            except IndexError:
                continue
            stack.append(("Device", name))

        elif dsdt_splited[i] == "ThermalZone":
            try:
                name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
                trigger = True  # 触发检查当前路径
            except IndexError:
                continue
            stack.append(("ThermalZone", name))

        elif dsdt_splited[i] in ("If", "(If"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Else\n":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "ElseIf":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Switch":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Case":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Default\n":
            # don't remove that \n
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "While":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("Buffer", "(Buffer"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("Package", "(Package"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "IRQ":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "IRQNoFlags":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("ResourceTemplate", "(ResourceTemplate"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Interrupt":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "GpioInt":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "GpioIo":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "StartDependentFn":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "StartDependentFnNoPri":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Processor":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "PowerResource":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("DMA", "(DMA"):
            if not is_string:
                stack.append(None)

        elif "}" in dsdt_splited[i]:
            if not is_string:
                stack.pop()

        if trigger:
            # Compare current path to target path
            path = ''
            for item in stack:
                if item:
                    if item[0] == 'Scope':
                        if item[1].startswith('\\'):
                            path = item[1]
                        else:
                            path = '\\' + item[1]
                    elif item[0] == 'Device':
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        path += item[1]
                    elif item[0] == 'Method':
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        path += item[1]
                    elif item[0] == 'Field':
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        path += item[1]
                    elif item[0] == 'IndexField':
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        path += item[1]
                    elif item[0] == 'ThermalZone':
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        path += item[1]
            if path == target:
                # If match target
                bracket_stack = []
                for word in dsdt_splited[i:]:
                    if "{" in word:
                        bracket_stack.append('{')
                    if "}" in word:
                        bracket_stack.pop()
                        if len(bracket_stack) == 0:
                            content += word
                            break
                    content += (word+' ')
            trigger = False
    return content


def search(dsdt_content:str, target:str):
    '''
    Find path by given word, and return content of that path

    @param: dsdt_content(str) - DSDT content

    @param: target(str) - searching word

    @return: content(dict) - {"path": "content"}
    '''
    dsdt_splited = split_dsdt(dsdt_content)
    stack = []
    path_list = []  # Find path by word
    is_string = False
    for i in range(0, len(dsdt_splited)):
        word = dsdt_splited[i]
        if target in dsdt_splited[i]:
            if target != dsdt_splited[i] and not re.match('\\(*"?%s,?"?\\)*$' % target, 
                dsdt_splited[i]) and not re.match('.*\\.%s' % target, dsdt_splited[i]):
                # 跳过非该变量名结尾的情况
                continue
            path = ''
            for item in stack:
                if item:
                    if item[0] == 'Scope':
                        if item[1].startswith('\\'):
                            path = item[1]
                        else:
                            path = '\\' + item[1]
                    elif item[0] == 'Device':
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        path += item[1]
                    elif item[0] == 'Method':
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        path += item[1]
                    elif item[0] == "Field":
                        # avoid searching Field
                        path = None
            if path:
                path_list.append(path)

        if '"' in dsdt_splited[i]:
            count = dsdt_splited[i].count('"')
            for tmp in range(0, count):
                is_string = not is_string
            continue

        if dsdt_splited[i] == "DefinitionBlock":
            stack.append("DefinitionBlock")

        elif dsdt_splited[i] == "Field":
            try:
                name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
            except IndexError:
                continue
            stack.append(("Field", name))

        elif dsdt_splited[i] == "IndexField":
            try:
                name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
            except IndexError:
                continue
            stack.append(("IndexField", name))

        elif dsdt_splited[i] == "Scope":
            try:
                path = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
            except IndexError:
                continue
            stack.append(("Scope", path))

        elif dsdt_splited[i] == "Method":
            try:
                name = re.findall(r'\((.*),', dsdt_splited[i+1])[0]
            except IndexError:
                continue
            stack.append(("Method", name))

        elif dsdt_splited[i] == "Device":
            try:
                name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
            except IndexError:
                continue
            stack.append(("Device", name))

        elif dsdt_splited[i] == "ThermalZone":
            try:
                name = re.findall(r'\((.*)\)', dsdt_splited[i+1])[0]
            except IndexError:
                continue
            stack.append(("ThermalZone", name))

        elif dsdt_splited[i] in ("If", "(If"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Else\n":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "ElseIf":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Switch":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Case":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Default\n":
            # don't remove that \n
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "While":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("Buffer", "(Buffer"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("Package", "(Package"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "IRQ":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "IRQNoFlags":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("ResourceTemplate", "(ResourceTemplate"):
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Interrupt":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "GpioInt":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "GpioIo":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "StartDependentFn":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "StartDependentFnNoPri":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "Processor":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] == "PowerResource":
            if not is_string:
                stack.append(None)
        elif dsdt_splited[i] in ("DMA", "(DMA"):
            if not is_string:
                stack.append(None)

        elif "}" in dsdt_splited[i]:
            if not is_string:
                stack.pop()
        
    content = {}
    for path in path_list:
        content[path] = get_content(dsdt_content, path)
    return content