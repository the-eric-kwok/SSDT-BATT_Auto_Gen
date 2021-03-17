# 使用范围缩小定位法重写搜索功能
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


class GetContent:
    def __init__(self, dsdt_content):
        self.blocks = self.__to_code_blocks__(dsdt_content)
        self.__index__()

    def __to_code_blocks__(self, dsdt_content):
        '''
        @param: dsdt_content
        @return: code_blocks_tree
        '''
        def appendPath(item, current_path):
            inside_bracket = item[2]
            if item[1] not in approve_list:
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

        rang = range(0, len(dsdt_content))
        keyword_list = (
            'Method', 'Device', 'Scope', 'OperationRegion', 'If', 'Else',
            'Package', 'Interrupt', 'Resource', 'IRQ',
            'Buffer', 'Switch', 'Case', 'Default', 'While',
            'Gpio', 'StartDependentFn', 'Processor', 'DMA',
            'ThermalZone', 'DefinitionBlock'
        )
        approve_list = ('Method', 'Device', 'Scope', 'OperationRegion', 'DefinitionBlock')
        stack = []
        blocks = []
        for i in rang:
            if dsdt_content[i] == '{':
                j = i - 1
                rewind = ''
                while True:
                    rewind = dsdt_content[j] + rewind
                    if DEBUG:
                        print('rewind: ' + rewind)
                    for keyword in keyword_list:
                        if keyword in rewind:
                            if DEBUG:
                                print('\033[1;36minto: ' + rewind + '\033[0m')
                            try:
                                inside_bracket = re.match(
                                    '%s\s?\((.*)\)' % keyword, rewind)[1]
                            except TypeError:
                                inside_bracket = ''
                            start_offset = j
                            block_type = keyword
                            # get path of code block
                            path = ''
                            for item in stack:
                                if item[1] == 'DefinitionBlock':
                                    path = '\\'
                                else:
                                    path = appendPath(item, path)
                            if inside_bracket.startswith('^'):
                                if block_type in approve_list:
                                    path = parseParentPrefix(inside_bracket, block_type, path)
                            stack.append(
                                (start_offset, block_type, inside_bracket, path))
                            break
                    else:
                        # Only executed when 'for' is not broke down
                        j -= 1
                        if j < 0:
                            raise RuntimeError(
                                'Offset less than zero. Please re-check keyword_list!')
                        continue
                    break

            elif dsdt_content[i] == '}':
                def getDefinitionBlockName(inside_bracket):
                    spl = inside_bracket.split(',')
                    name = spl[1].replace(''', '').strip() + \
                        '-' + spl[4].replace(''', '').strip()
                    return name
                block_info = stack.pop()
                if DEBUG:
                    print('\033[1;36mout of: ' + block_info[2] + '\033[0m')
                content = dsdt_content[block_info[0]:i+1]
                block_type = block_info[1]
                if block_type not in approve_list:
                    # Code blocks such as 'if' 'else' are abandoned
                    continue
                inside_bracket = block_info[2]
                get_name = {
                    'DefinitionBlock': getDefinitionBlockName,
                    'Method': lambda arg: arg.split(',')[0],
                    'Scope': lambda arg: arg,
                    'Device': lambda arg: arg,
                    'OperationRegion': lambda arg: arg.split(',')[0],
                }
                name = get_name[block_type](inside_bracket).replace('^', '').replace('\\', '')
                '''
                if block_info[3] == '':
                    path = '\\'
                elif block_info[3] == '\\':
                    path = '\\' + name
                else:
                    path = block_info[3] + '.' + name
                '''
                block_info = {
                    'name': name,
                    'type': block_type,
                    'content': content,
                    'scope': block_info[3]
                }
                blocks.append(block_info)
        return blocks

    def __index__(self):
        self.index_blocks = {}
        for block in self.blocks:
            blk_type = block['type']
            try:
                self.index_blocks[blk_type].append(block)
            except KeyError:
                self.index_blocks[blk_type] = []
                self.index_blocks[blk_type].append(block)
        self.index_blocks[''] = self.blocks
        del self.blocks

    def getContent(self, target: str, blk_type='') -> list:
        '''
        Return content of given target (path or name, determined by . or back-slash), code block type is optional.
        This method will not judge the granularity since there won't be two method with the same name in one scope.

        @param: target - Such as '_SB.PCI0' (as a path) or 'AECL' (as a name)
        @param: blk_type - Could be 'Method', 'Device', 'Scope', 'OperationRegion', 'DefinitionBlock'
        @return: result (list)
        '''
        result = []
        if target.startswith('\\') or '.' in target:
            if not target.startswith('\\'):
                target = '\\' + target
            for item in self.index_blocks[blk_type]:
                if item['scope'] + '.' + item['name'] == target:
                    result.append(item)
        else:
            for item in self.index_blocks[blk_type]:
                if item['name'] == target:
                    result.append(item)
        if len(result) == 0:
            raise RuntimeError("Terget '%s' in given block type '%s' not found!" % (target, blk_type))
        return result

    def search(self, target: str, blk_type='', regex=False, ignorecase=False) -> list:
        '''
        Search target in all blocks, and return matched result in minimal granularity, 
        which is determined by block type. If `blk_type` is empty, method will return the
        minimal granularity in `approve_list` it could find.

        @param: target - The keyword to be searched
        @param: blk_type - Could be 'Method', 'Device', 'Scope', 'OperationRegion', 'DefinitionBlock'
        @return: result (list)
        '''

        result = []
        for item in self.index_blocks[blk_type]:
            if regex:
                if ignorecase:
                    re_sult = re.search(target, item['content'], re.IGNORECASE)
                    if re_sult:
                        result.append(item)
                else:
                    re_sult = re.search(target, item['content'])
                    if re_sult:
                        result.append(item)
            else:
                if ignorecase:
                    if target.lower() in item['content'].lower():
                        result.append(item)
                else:
                    if target in item['content']:
                        result.append(item)
        min_granularity = []  # path
        for item in result:
            if len(min_granularity) == 0:
                min_granularity.append(item['scope'])
                continue
            for gran in min_granularity:
                if gran in item['scope']:
                    # if granularity of item is smaller
                    min_granularity[min_granularity.index(gran)] = item['scope']
                    break
                if gran in item['scope'] or item['scope'] in gran:
                    break
                min_granularity.append(item['scope'])
        for item in result.copy():
            if item['scope'] not in min_granularity:
                result.remove(item)
        if len(result) == 0:
            raise RuntimeError("Terget '%s' in given block type '%s' not found!" % (target, blk_type))
        return result

def load_file():
    with open('Sample/DSDT_ASUS_FX503VD.dsl', 'r') as f:
        content = f.read()

    def clean_out(content):
        '''
        Removes comments, external, Firmware error generated by iasl, etc.
        '''
        # Remove block comments
        content = re.sub(
            r'/\*[\w\W\n]*?\*/', '', content)
        # Remove line comments
        content = re.sub(r'//.*', '', content)
        # Remove 'External' declaration
        content = re.sub(
            r'External.*\n', '', content)
        # Remove 'Firmware Error' that generated within disassambling
        content = re.sub(
            r'Firmware Error.*\n', '', content)
        # Remove empty lines
        content = re.sub(r'^\n', '', content)
        return content
    return clean_out(content)


if __name__ == '__main__':
    gc = GetContent(load_file())
    gc.getContent('_SB.PCI0.LPCB.EC0')
