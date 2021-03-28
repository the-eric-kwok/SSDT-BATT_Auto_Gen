class CodeBlock:
    def __init__(self, start_index=-1, end_index=-1, name="", type="", content="", scope="", inside_bracket=""):
        if start_index >= -1:
            self._start_index = start_index
        else:
            raise RuntimeWarning("Start index should not be less than zero.")
        if end_index >= -1:
            self._end_index = end_index
        else:
            raise RuntimeWarning("Start index should not be less than zero.")
        self._name = name
        self._type = type
        self._content = content
        if scope.startswith("\\") or (scope == "" and self._type == "DefinitionBlock"):
            self._scope = scope
        else:
            raise RuntimeWarning("Scope should starts with '\\' (now %s)." % scope)
        self._inside_bracket = inside_bracket

    @property
    def start_index(self):
        if self._start_index > -1:
            return self._start_index
        raise RuntimeError("Start index is not set!")

    @property
    def end_index(self):
        if self._end_index > -1:
            return self._end_index
        raise RuntimeError("End index is not set!")

    @property
    def name(self):
        return self._name

    @property
    def type(self):
        if len(self._type) > 0:
            return self._type
        raise RuntimeError("Type of block is not set!")

    @property
    def content(self):
        return self._content

    @property
    def scope(self):
        if len(self._scope) > 0:
            return self._scope
        if self._scope == "" and self._type == "DefinitionBlock":
            return self._scope
        raise RuntimeError("Scope of %s is empty!" % self.__repr__())

    @property
    def path(self):
        if self._scope.endswith('\\') or self._name == '':
            return self._scope + self._name
        return self._scope + '.' + self._name

    @property
    def inside_bracket(self):
        return self._inside_bracket

    @start_index.setter
    def start_index(self, start_index):
        if start_index >= 0:
            self._start_index = start_index
        else:
            raise RuntimeWarning("Start index should not be less than zero.")

    @end_index.setter
    def end_index(self, end_index):
        if end_index >= 0 and end_index >= self._start_index:
            self._end_index = end_index
        else:
            raise RuntimeWarning("End index should not be less than start index.")

    @name.setter
    def name(self, name):
        self._name = name

    @scope.setter
    def scope(self, scope):
        if scope.startswith('\\') or (scope == "" and self._type == "DefinitionBlock"):
            self._scope = scope
        else:
            raise RuntimeWarning("Scope should starts with '\\'.")

    @content.setter
    def content(self, content):
        self._content = content

    @inside_bracket.setter
    def inside_bracket(self, inside_bracket):
        self._inside_bracket = inside_bracket

    def __str__(self):
        return self._content

    def __repr__(self):
        if len(self._scope) > 0:
            if self._scope == "\\":
                return "CodeBlock: %s%s (%s)" % (
                    self._scope, self._name, self._inside_bracket)
            return "CodeBlock: %s.%s (%s)" % (
                self._scope, self._name, self._inside_bracket)
        raise RuntimeError("Scope is not defined of CodeBlock %s (%s)" % (self._name, self._inside_bracket))
