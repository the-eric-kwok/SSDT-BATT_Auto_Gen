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


class getContent:
    def __init__(self, dsdt_content):
        self.blocks = self.to_code_blocks(dsdt_content)
        self.index()

    def to_code_blocks(self, dsdt_content):
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
                            try:
                                inside_bracket = re.match(
                                    "%s\s?\((.*)\)" % keyword, rewind)[1]
                            except TypeError:
                                inside_bracket = ''
                            start_offset = j
                            block_type = keyword

                            def appendPath(item, current_path):
                                inside_bracket = item[2]
                                if item[1] in abandon_list:
                                    return current_path
                                if item[1] == 'Method':
                                    name = inside_bracket.split(',')[0]
                                else:
                                    name = inside_bracket
                                if name.startswith('\\'):
                                    return name
                                if current_path == '\\':
                                    return current_path + name
                                return current_path + '.' + name

                            # get path of code block
                            path = ''
                            for item in stack:
                                if item[1] == 'DefinitionBlock':
                                    path = '\\'
                                else:
                                    path = appendPath(item, path)
                            if inside_bracket.startswith('^'):
                                def parseParentPrefix(inside_bracket, block_type, current_path):
                                    '''
                                    Deal with contents like `Method (^BN00)`
                                    '''
                                    if block_type == 'Method':
                                        name = inside_bracket.split(',')[0]
                                    else:
                                        name = inside_bracket
                                    _stack_ = current_path.split('.')
                                    for i in range(0, name.count('^')):
                                        _stack_.pop()
                                    path = '.'.join(_stack_)
                                    if path == '':
                                        path = '\\'
                                    # Not sure whether should I remove the ^ in inside_bracket
                                    #inside_bracket = inside_bracket.replace('^', '')
                                    return path
                                if block_type in approve_list:
                                    path = parseParentPrefix(inside_bracket, block_type, path)
                            stack.append(
                                (start_offset, block_type, inside_bracket, path))
                            break
                    else:
                        # Only executed when "for" is not broke down
                        j -= 1
                        if j < 0:
                            raise RuntimeError(
                                "Offset less than zero. Please re-check keyword_list!")
                        continue
                    break

            elif dsdt_content[i] == '}':
                def getDefinitionBlockName(inside_bracket):
                    spl = inside_bracket.split(',')
                    name = spl[1].replace('"', '').strip() + \
                        '-' + spl[4].replace('"', '').strip()
                    return name

                block_info = stack.pop()
                content = dsdt_content[block_info[0]:i+1]
                block_type = block_info[1]
                if block_type in abandon_list:
                    # Code blocks such as "if" "else" are abandoned
                    continue
                inside_bracket = block_info[2]
                get_name = {
                    "DefinitionBlock": getDefinitionBlockName,
                    "Method": lambda arg: arg.split(',')[0],
                    "Scope": lambda arg: arg,
                    "Device": lambda arg: arg,
                    "OperationRegion": lambda arg: arg.split(',')[0],
                }
                name = get_name[block_type](inside_bracket).replace('^', '').replace('\\', '')
                if block_info[3] == '':
                    path = '\\'
                elif block_info[3] == '\\':
                    path = '\\' + name
                else:
                    path = block_info[3] + '.' + name
                block_info = {
                    'name': name,
                    'type': block_type,
                    'content': content,
                    'path': path
                }
                blocks.append(block_info)
        return blocks

    def index(self):
        self.index_block = {}
        for block in self.blocks:
            blk_type = block['type']
            try:
                self.index_block[blk_type].append(block)
            except KeyError:
                self.index_block[blk_type] = []
                self.index_block[blk_type].append(block)

    def getContent(self, path_or_name: str, blk_type=""):
        '''
        Return content of given path or name, code block type is optional
        @param: path_or_name
        @param: blk_type (optional)
        '''
        result = []
        if blk_type == "":
            if path_or_name.startswith('\\'):
                for item in self.blocks:
                    if item['path'] == path_or_name:
                        result.append(item)
            else:
                for item in self.blocks:
                    if item['name'] == path_or_name:
                        result.append(item)
        else:
            if path_or_name.startswith('\\'):
                for item in self.index_block[blk_type]:
                    if item['path'] == path_or_name:
                        result.append(item)
            else:
                for item in self.index_block[blk_type]:
                    if item['name'] == path_or_name:
                        result.append(item)
        return result


def load_file():
    with open('Sample/DSDT_y700-isk.dsl', 'r') as f:
        content = f.read()

    def clean_out(content):
        '''
        Removes comments, external, Firmware error generated by iasl, etc.
        '''
        # Remove block comments
        content = re.sub(
            r'/\*[\w\W\n]*?\*/', "", content)
        # Remove line comments
        content = re.sub(r'//.*', '', content)
        # Remove "External" declaration
        content = re.sub(
            r'External.*\n', "", content)
        # Remove "Firmware Error" that generated within disassambling
        content = re.sub(
            r'Firmware Error.*\n', "", content)
        # Remove empty lines
        content = re.sub(r'^\n', "", content)
        return content
    return clean_out(content)


if __name__ == '__main__':
    gc = getContent(load_file())
    gc.getContent("GPRW", "Method")
