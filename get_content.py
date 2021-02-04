import re
from typing import Tuple

VERBOSE = False
DEBUG = False


def set_verbose(flag):
    global VERBOSE
    VERBOSE = flag


def set_debug(flag):
    global VERBOSE, DEBUG
    DEBUG = flag
    VERBOSE = flag


def get_content(dsdt_splited: list, target: str):
    '''
    Getting file content about given target.

    If target is a path, return its content. 

    @param: dsdt_content(str) - DSDT content

    @param: target(str) - device/field/method absolute path

    @return: content(str) - file content about that device/field/method
    '''
    if VERBOSE:
        print("Into: get_content(), getting %s" % target)
    #dsdt_splited = split_dsdt(dsdt_content)
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

        if "DefinitionBlock" in dsdt_splited[i]:
            if not is_string:
                stack.append("DefinitionBlock")

        elif dsdt_splited[i] in ("Field", "Scope", "Method", "Device"):
            try:
                name = re.findall(r'\((.*)[,\)]', dsdt_splited[i+1])[0]
                trigger = True  # 触发检查当前路径
            except IndexError:
                continue
            stack.append((dsdt_splited[i], name))

        elif dsdt_splited[i] in (  # ignore list
            "If", "(If", "Else\n", "ElseIf", "Switch", "Case", "Default\n", "While", "Buffer", "(Buffer",
            "Package", "(Package", "IRQ", "IRQNoFlags", "ResourceTemplate", "(ResourceTemplate", "Interrupt",
            "GpioInt", "GpioIo", "StartDependentFn", "StartDependentFnNoPri", "Processor", "PowerResource",
            "DMA", "(DMA", "IndexField", "ThermalZone"
        ):
            if not is_string:
                stack.append(None)

        elif "}" in dsdt_splited[i]:
            if not is_string:
                stack.pop()

        if trigger:
            # Compare current path to target path
            path = ''
            for item in stack:
                if item is not None:
                    _item_ = list(item)
                    if _item_[0] == 'Scope':
                        if _item_[1].startswith('\\'):
                            path = _item_[1]
                        elif path == '':
                            path = '\\' + _item_[1]
                        else:
                            path = path + '.' + _item_[1]
                    elif _item_[0] in ('Device', 'Method', 'Field'):
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        if _item_[1].startswith('\\'):
                            path = ''
                        elif _item_[1].startswith('^'):
                            path = '.'.join(path.split('.')[:-2]) + '.'
                            _item_[1] = _item_[
                                1].replace('^', '')
                        path += _item_[1]
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


def search(dsdt_splited: list, target: str):
    '''
    Find path by given word, and return content of that path

    @param: dsdt_content(str) - DSDT content

    @param: target(str) - searching word

    @return: content(dict) - {"path": "content"}
    '''
    if VERBOSE:
        print("Into: search(), getting %s" % target)
    #dsdt_splited = split_dsdt(dsdt_content)
    stack = []
    path_list = []  # Find path by word
    is_string = False  # If key word in string?
    for i in range(0, len(dsdt_splited)):
        word = dsdt_splited[i]
        if target in dsdt_splited[i]:
            if target != dsdt_splited[i] and not re.match('\\(*"?%s,?"?\\)*$' % target,
                                                          dsdt_splited[i]) and not re.match('.*\\.%s' % target, dsdt_splited[i]):
                # 跳过非该变量名结尾的情况
                continue
            path = ''
            for item in stack:
                if item is not None:
                    if type(item) is tuple:
                        _item_ = list(item)
                    else:
                        _item_ = item
                    if _item_[0] == 'Scope':
                        if _item_[1].startswith('\\'):
                            path = _item_[1]
                        elif path == '':
                            path = '\\' + _item_[1]
                        else:
                            path = path + '.' + _item_[1]
                    elif _item_[0] in ('Device', 'Method'):
                        if stack.index(item) != 1:
                            path += '.'
                        else:
                            path = '\\'
                        if _item_[1].startswith('\\'):
                            path = ''
                        elif _item_[1].startswith('^'):
                            path = '.'.join(path.split('.')[:-2]) + '.'
                            _item_[1] = _item_[
                                1].replace('^', '')
                        path += _item_[1]
                    elif item[0] == "Field":
                        # avoid searching Field
                        path = ''

            if path != '':
                path_list.append(path)

        if '"' in dsdt_splited[i]:
            count = dsdt_splited[i].count('"')
            for tmp in range(0, count):
                is_string = not is_string
            continue

        if "DefinitionBlock" in dsdt_splited[i]:
            if not is_string:
                stack.append("DefinitionBlock")

        elif dsdt_splited[i] in ("Field", "Scope", "Method", "Device"):
            try:
                name = re.findall(r'\((.*)[,\)]', dsdt_splited[i+1])[0]
            except IndexError:
                continue
            stack.append((dsdt_splited[i], name))

        elif dsdt_splited[i] in (  # Ignore list
            "If", "(If", "Else\n", "ElseIf", "Switch", "Case", "Default\n", "While", "Buffer", "(Buffer",
            "Package", "(Package", "IRQ", "IRQNoFlags", "ResourceTemplate", "(ResourceTemplate", "Interrupt",
            "GpioInt", "GpioIo", "StartDependentFn", "StartDependentFnNoPri", "Processor", "PowerResource",
            "DMA", "(DMA", "ThermalZone", "IndexField"
        ):
            if not is_string:
                stack.append(None)
        elif "}" in dsdt_splited[i]:
            if not is_string:
                stack.pop()

    content = {}
    for path in path_list:
        content[path] = get_content(dsdt_splited, path)
    return content
