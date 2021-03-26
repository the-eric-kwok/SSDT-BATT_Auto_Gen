class FieldUnit:
    def __init__(self, name: str, offset: int, size: int, OR_path: str):
        self._name = str(name)
        self._offset = int(offset)
        self._size = int(size)
        self._OR_path = str(OR_path)

    @property
    def name(self):
        return self._name

    @property
    def offset(self):
        return self._offset

    @property
    def size(self):
        return self._size

    @property
    def OR_path(self):
        return self._OR_path

    def __repr__(self):
        return "FieldUnit (%s)" % self._name
