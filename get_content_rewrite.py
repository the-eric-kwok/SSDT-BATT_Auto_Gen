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
    blocks = []
    for i in rang:
        if dsdt_content[i] == '{':
            j = i - 1
            rewind = ''
            while True:
                rewind = dsdt_content[j] + rewind
                for keyword in keyword_list:
                    if keyword in rewind:
                        # append(offset, code_block_type)
                        inside_bracket = re.match(
                            "%s\s?\((.*)\)" % keyword, rewind)[1]
                        stack.append((j, keyword, inside_bracket))
                        break
                else:
                    j -= 1
                    if j < 0:
                        raise RuntimeError(
                            "Offset less than zero. Please re-check keyword_list!")
                    continue
                break

        elif dsdt_content[i] == '}':
            def parsing_DefinitionBlock(inside_bracket):
                spl = inside_bracket.split(',')
                name = spl[1].replace('"', '').strip() + \
                    '-' + spl[4].replace('"', '').strip()
                return name

            def parsing_OperationRegion(inside_bracket):
                pass

            block_info = stack.pop()
            content = dsdt_content[block_info[0]:i+1]
            block_type = block_info[1]
            if block_type in abandon_list:
                continue
            inside_bracket = block_info[2]
            get_name = {
                "DefinitionBlock": parsing_DefinitionBlock,
                "Method": lambda arg: arg,
                "Scope": lambda arg: arg,
                "Device": lambda arg: arg,
                "OperationRegion": parsing_OperationRegion,
            }
            name = get_name[block_type](inside_bracket)
            # TODO: 加上路径解析
            block_info = {
                'name': name,
                'type': block_type,
                'content': content,
            }
            blocks.append(block_info)
    return blocks


def load_file():
    with open('SSDT-BATC.dsl', 'r') as f:
        content = f.read()
        return content


if __name__ == '__main__':
    print(to_code_blocks(load_file()))
