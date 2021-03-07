# TODO: 使用范围缩小定位法重写搜索功能
import re

VERBOSE = False
DEBUG = False


def set_verbose(flag):
    global VERBOSE
    VERBOSE = flag


def set_debug(flag):
    global VERBOSE, DEBUG
    DEBUG = flag
    VERBOSE = flag


def to_code_blocks(dsdt_content):
    '''
    @param: dsdt_content
    @return: code_tree
    '''
    rang = range(0, len(dsdt_content))
    keyword_list = {
        'Method', "Device", "Scope", "OperationRegion", "If", "Else",
        "Package", "Interrupt", "Resource", "IRQ",
        "Buffer", "Switch", "Case", "Default", "While",
        "Gpio", "StartDependentFn", "Processor", "DMA",
        "ThermalZone", "DefinitionBlock"
    }
    approve_list = {
        "Method", "Device", "Scope", "OperationRegion", "DefinitionBlock"
    }
    abandon_list = keyword_list - approve_list
    stack = []
    for i in rang:
        if dsdt_content[i] == '{':
            j = i - 1
            rewind = ''
            while True:
                rewind = dsdt_content[j] + rewind
                for keyword in keyword_list:
                    if keyword in rewind:
                        # append(offset, code_block_type)
                        name = re.match("%s\s\((.*[,\)])" % keyword)
                        stack.append((j, keyword, name))
                        break
                    j -= 1
                    if j < 0:
                        raise RuntimeError(
                            "Offset less than zero. Please re-check keyword_list!")

        elif dsdt_content[i] == '}':
            block_info = stack.pop()
            content = dsdt_content[block_info[0], i+1]
            block_type = block_info[1]
            name = block_info[2]
            block_info = {
                'name': name,
                'type': block_type,
                'content': content,
            }
