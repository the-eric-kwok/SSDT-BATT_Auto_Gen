class FieldUnit:
    def __init__(self, name, offset, size, OR_path):
        self.name = str(name)
        self.offset = "0x%X" % offset
        self.size = "0x%X" % size
        self.OR_path = str(OR_path)
