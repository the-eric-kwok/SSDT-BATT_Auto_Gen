#  Copyright (c) 2020 郭耀铭 All Rights Reserved.

from FieldUnit import FieldUnit


class OperationRegion:
    RE1B = ""
    RECB = ""
    ERM2 = ""
    WE1B = ""
    WECB = ""

    def __init__(self, scope: str, name: str, storage: str, offset: str, length: str):
        self._scope = scope
        self._name = name
        self._storage = storage
        self._offset = offset
        self._length = length
        self._field_units = []

    @property
    def scope(self):
        return self._scope

    @property
    def name(self):
        return self._name

    @property
    def storage(self):
        return self._storage

    @property
    def offset(self):
        return self._offset

    @property
    def length(self):
        return self._length

    @property
    def field_units(self):
        return self._field_units

    @property
    def path(self):
        if self.scope == '\\':
            return self._scope + self._name
        return self._scope + '.' + self._name

    def append_unit(self, unit: FieldUnit):
        self._field_units.append(unit)

    def __repr__(self):
        if self.scope == '\\':
            return "OperationRegion (%s%s)" % (self.scope, self.name)
        return "OperationRegion (%s.%s)" % (self.scope, self.name)
