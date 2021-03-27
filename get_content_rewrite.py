# 使用范围缩小定位法重写搜索功能
import re
import CodeBlock as cb

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
        self._blocks = self._to_code_blocks(dsdt_content)
        self._index()

    @staticmethod
    def _to_code_blocks(dsdt_content):
        '''
        @param: dsdt_content
        @return: code_blocks_tree
        '''

        def appendPath(item, current_path):
            inside_bracket = item.inside_bracket
            if item.type not in approve_list:
                return current_path
            if item.type == 'Method':
                _ = inside_bracket.split(',')[0]
            else:
                _ = inside_bracket
            if _.startswith('\\'):
                return _
            if current_path == '\\':
                return current_path + _
            return current_path + '.' + _

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
            'Method', 'Device', 'Scope', 'Field', 'If', 'Else',
            'Package', 'Interrupt', 'Resource', 'IRQ',
            'Buffer', 'Switch', 'Case', 'Default', 'While',
            'Gpio', 'StartDependentFn', 'Processor', 'DMA',
            'ThermalZone', 'DefinitionBlock'
        )
        approve_list = ('Method', 'Device', 'Scope', 'Field', 'DefinitionBlock')
        stack = []
        blocks = []
        for i in rang:
            _ = dsdt_content[i]
            if dsdt_content[i] == '{':
                j = i - 1
                rewind = ''
                is_in_string = False
                while True:
                    rewind = dsdt_content[j] + rewind
                    if DEBUG:
                        print('rewind: ' + rewind)
                    if 'VPCG' in rewind:
                        print()
                    if dsdt_content[j] == '"':
                        # Skip keywords that is in string
                        is_in_string = not is_in_string
                        rewind = ''
                    if is_in_string:
                        j -= 1
                        if j < 0:
                            raise RuntimeError(
                                'Offset less than zero. Please re-check keyword_list!')
                        continue
                    for keyword in keyword_list:
                        if keyword in rewind:
                            if DEBUG:
                                print('\033[1;36minto: ' + rewind + '\033[0m')
                            try:
                                inside_bracket = re.match(
                                    '%s\s?\((.*)\)' % keyword, rewind)[1]
                            except TypeError:
                                inside_bracket = ''
                            block_type = keyword
                            if block_type == 'Field':
                                k = j - 1
                                while (True):
                                    additional = dsdt_content[k:j]
                                    if 'OperationRegion' in additional:
                                        j = k
                                        break
                                    if j - k > 100:
                                        break
                                    k -= 1
                                    # get path of code block
                            scope = ''
                            for item in stack:
                                if item.type == 'DefinitionBlock':
                                    scope = '\\'
                                elif item.type == 'Scope':
                                    scope = item.inside_bracket
                                else:
                                    scope = appendPath(item, scope)
                            if inside_bracket.startswith('^'):
                                if block_type in approve_list:
                                    scope = parseParentPrefix(inside_bracket, block_type, scope)
                            stack.append(
                                cb.CodeBlock(
                                    start_index=j,
                                    type=block_type,
                                    inside_bracket=inside_bracket,
                                    scope=scope))
                            break
                    else:
                        # Only executed when the 'for' statement is not broken
                        j -= 1
                        if j < 0:
                            raise RuntimeError(
                                'Offset less than zero. Please re-check keyword_list!')
                        continue
                    break

            elif dsdt_content[i] == '}':
                def getScopeName(arg):
                    # if '.' in arg:
                    return arg.split('.')[-1]
                    # return arg.split('\\')[-1]

                block = stack.pop()
                if DEBUG:
                    print('\033[1;36mout of: ' + block.inside_bracket + '\033[0m')
                block.end_index = i + 1
                block.content = dsdt_content[block.start_index: block.end_index]
                if block.type not in approve_list:
                    # Code blocks such as 'if' 'else' are abandoned
                    continue
                inside_bracket = block.inside_bracket
                get_name = {
                    'DefinitionBlock': lambda arg: '\\',
                    'Method': lambda arg: arg.split(',')[0],
                    'Scope': getScopeName,
                    'Device': lambda arg: arg,
                    'Field': lambda arg: arg.split(',')[0],
                }
                block.name = get_name[block.type](inside_bracket).replace('^', '')
                if not block.name.endswith("\\"):
                    block.name = block.name.replace("\\", "")
                blocks.append(block)
        return blocks

    def _index(self):
        self._indexed_blocks = {}
        for block in self._blocks:
            try:
                self._indexed_blocks[block.type].append(block)
            except KeyError:
                self._indexed_blocks[block.type] = []
                self._indexed_blocks[block.type].append(block)
        self._indexed_blocks[''] = self._blocks
        del self._blocks

    def get_content(self, target: str, blk_type='') -> list:
        '''
        Return content of given target (path or name, determined by . or back-slash), code block type is optional.
        This method will not judge the granularity since there won't be two method with the same name in one scope.

        @param: target - Such as '_SB.PCI0' (as a path) or 'AECL' (as a name)
        @param: blk_type - Could be 'Method', 'Device', 'Scope', 'Field', 'DefinitionBlock'
        @return: result (list)
        '''
        result = []
        if target.startswith('\\') or '.' in target:
            if not target.startswith('\\'):
                target = '\\' + target
            for item in self._indexed_blocks[blk_type]:
                if item.scope + '.' + item.name == target:
                    result.append(item)
                if item.scope + item.name == target:
                    result.append(item)
        else:
            for item in self._indexed_blocks[blk_type]:
                if item.name == target:
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
        @param: blk_type - Could be 'Method', 'Device', 'Scope', 'Field', 'DefinitionBlock'
        @return: result (list)
        '''

        result = []
        for item in self._indexed_blocks[blk_type]:
            if regex:
                if ignorecase:
                    re_result = re.search(target, item.content, re.IGNORECASE)
                    if re_result:
                        result.append(item)
                else:
                    re_result = re.search(target, item.content)
                    if re_result:
                        result.append(item)
            else:
                if ignorecase:
                    if target.lower() in item.content.lower():
                        result.append(item)
                else:
                    if target in item.content:
                        result.append(item)
        min_granularity = []  # path
        for item in result:
            if len(min_granularity) == 0:
                min_granularity.append(item.scope + '.' + item.name)
                continue
            for gran in min_granularity:
                if gran in item.scope:
                    # if granularity of item is smaller
                    min_granularity[min_granularity.index(gran)] = item.scope + '.' + item.name
                    break
                if gran in item.scope + '.' + item.name or item.scope + '.' + item.name in gran:
                    break
                if gran in item.scope + item.name or item.scope + item.name in gran:
                    break
                min_granularity.append(item.scope + '.' + item.name)
        for item in result.copy():
            if item.scope + '.' + item.name not in min_granularity:
                result.remove(item)
        if len(result) == 0:
            raise RuntimeError("Terget '%s' in given block type '%s' not found!" % (target, blk_type))
        return result

def load_file():
    with open('Sample/DSDT_ThinkPad_Helix_2nd_Hand_Held.dsl', 'r') as f:
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
    gc.get_content('\\_SB.PCI0.LPC.EC.ECOR')
