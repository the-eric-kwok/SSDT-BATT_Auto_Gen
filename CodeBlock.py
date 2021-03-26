class CodeBlock:
    def __init__(self, start_index=-1, end_index=-1, name="", type="", content="", scope="", inside_bracket=""):
        if start_index >= -1:
            self.__start_index__ = start_index
        else:
            raise RuntimeWarning("Start index should not be less than zero.")
        if end_index >= -1:
            self.__end_index__ = end_index
        else:
            raise RuntimeWarning("Start index should not be less than zero.")
        self.__name___ = name
        self.__type__ = type
        self.__content__ = content
        if scope.startswith("\\") or (scope == "" and self.__type__ == "DefinitionBlock"):
            self.__scope__ = scope
        else:
            raise RuntimeWarning("Scope should starts with '\\' (now %s)." % scope)
        self.__inside_bracket__ = inside_bracket

    @property
    def start_index(self):
        if self.__start_index__ > -1:
            return self.__start_index__
        raise RuntimeError("Start index is not set!")

    @property
    def end_index(self):
        if self.__end_index__ > -1:
            return self.__end_index__
        raise RuntimeError("End index is not set!")

    @property
    def name(self):
        if len(self.__name___) > 0:
            return self.__name___
        raise RuntimeError("Name of %s is not set!" % self.__scope__)

    @property
    def type(self):
        if len(self.__type__) > 0:
            return self.__type__
        raise RuntimeError("Type of block is not set!")

    @property
    def content(self):
        return self.__content__

    @property
    def scope(self):
        if len(self.__scope__) > 0:
            return self.__scope__
        if self.__scope__ == "" and self.__type__ == "DefinitionBlock":
            return self.__scope__
        raise RuntimeError("Scope of %s is empty!" % self.__repr__())

    @property
    def inside_bracket(self):
        return self.__inside_bracket__

    @start_index.setter
    def start_index(self, start_index):
        if start_index >= 0:
            self.__start_index__ = start_index
        else:
            raise RuntimeWarning("Start index should not be less than zero.")

    @end_index.setter
    def end_index(self, end_index):
        if end_index >= 0 and end_index >= self.__start_index__:
            self.__end_index__ = end_index
        else:
            raise RuntimeWarning("End index should not be less than start index.")

    @name.setter
    def name(self, name):
        self.__name___ = name

    @scope.setter
    def scope(self, scope):
        if scope.startswith('\\') or (scope == "" and self.__type__ == "DefinitionBlock"):
            self.__scope__ = scope
        else:
            raise RuntimeWarning("Scope should starts with '\\'.")

    @content.setter
    def content(self, content):
        self.__content__ = content

    @inside_bracket.setter
    def inside_bracket(self, inside_bracket):
        self.__inside_bracket__ = inside_bracket

    def __str__(self):
        return self.__content__

    def __repr__(self):
        if len(self.__scope__) > 0:
            if self.__scope__ == "\\":
                return "CodeBlock: %s%s (%s)" % (
                    self.__scope__, self.__name___, self.__inside_bracket__)
            return "CodeBlock: %s.%s (%s)" % (
                self.__scope__, self.__name___, self.__inside_bracket__)
        raise RuntimeError("Scope is not defined of CodeBlock %s (%s)" % (self.__name___, self.__inside_bracket__))
