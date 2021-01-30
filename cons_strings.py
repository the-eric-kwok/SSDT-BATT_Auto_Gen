'''
Some constant strings that is used in the main program.
'''

HEAD = """DefinitionBlock ("", "SSDT", 2, "ERIC", "BATT", 0x00000000)
{
"""

RW_METHOD = [
    'Scope (', ''')
    {
        Method (''', ''', 1, NotSerialized)
        {
            OperationRegion (''', ', ', ''', Arg0, One)
            Field (''', ''', ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE) /* \RE1B.BYTE */
        }

        Method (''', ''', 2, Serialized)
        {
            // RECB or RSMB
            // Arg0 - offset in bytes from zero-based EC
            // Arg1 - size of buffer in bits
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            name (TEMP, Buffer (Arg1){})
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                TEMP [Local0] = ''', ''' (Arg0)
                Arg0++
                Local0++
            }

            Return (TEMP) /* \RECB.TEMP */
        }

        Method (''', ''', 2, NotSerialized)
        {
            OperationRegion (''', ', ', ''', Arg0, One)
            Field (''', ''', ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            BYTE = Arg1
        }

        Method (''', ''', 3, Serialized)
        {
            // WECB or WSMB
            // Arg0 - offset in bytes from zero-based EC
            // Arg1 - size of buffer in bits
            // Arg2 - data to be written
            Arg1 = ((Arg1 + 0x07) >> 0x03)
            name (TEMP, Buffer (Arg1){})
            TEMP = Arg2
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                ''', ''' (Arg0, DerefOf (TEMP [Local0]))
                Arg0++
                Local0++
            }
        }
    }
''']

PCI9 = '''
Device (PCI9)
{
    Name (_ADR, Zero)
    Name (FNOK, Zero)
    Name (MODE, Zero)
    //
    Name (TPTS, Zero)
    Name (TWAK, Zero)
    Method (_STA, 0, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            Return (0x0F)
        }
        Else
        {
            Return (Zero)
        }
    }
}
'''

PTS = ['''
Method (_PTS, 1, ''', ''') //Method (_PTS, 1, Serialized)
{
    If (_OSI ("Darwin"))
    {
        \_SB.PCI9.TPTS = Arg0

        if(\_SB.PCI9.FNOK ==1)
        {
            Arg0 = 3
        }

        If (CondRefOf (\DGPU._ON))
        {
            \DGPU._ON ()
        }

        If (CondRefOf(EXT1))
        {
            EXT1(Arg0)
        }
        If (CondRefOf(EXT2))
        {
            EXT2(Arg0)
        }
    }
    If (CondRefOf (\YPTS) && _OSI ("Darwin"))
    {
        \YPTS(Arg0)
    }
    Else
    {
        \XPTS(Arg0)
    }
}
''']

WAK = ['''
Method (_WAK, 1, ''', ''') //Method (_WAK, 1, Serialized)
{
    If (_OSI ("Darwin"))
    {
        \_SB.PCI9.TWAK = Arg0

        if(\_SB.PCI9.FNOK ==1)
        {
            \_SB.PCI9.FNOK =0
            Arg0 = 3
        }

        If (CondRefOf (\DGPU._OFF))
        {
            \DGPU._OFF ()
        }

        If (CondRefOf(EXT3))
        {
            EXT3(Arg0)
        }
        If (CondRefOf(EXT4))
        {
            EXT4(Arg0)
        }
    }
    If (CondRefOf (\YWAK) && _OSI ("Darwin"))
    {
        Return (\YWAK(Arg0))
    }
    Else
    {
        Return (\XWAK(Arg0))
    }
}
''']

TTS = ['''
Method (_TTS, 1, ''', ''') //Method (_TTS, 1, Serialized)
{
    If (_OSI ("Darwin"))
    {
        If (CondRefOf(EXT5))
        {
            EXT5(Arg0)
        }
        If (CondRefOf(EXT6))
        {
            EXT6(Arg0)
        }
    }

    If (CondRefOf(\XTTS))
    {
        \XTTS(Arg0)
    }
}
''']

ACEL_STA = '''
Method (_STA, 0, NotSerialized)
{
    If (_OSI("Darwin"))
    {
        Return (0)
    }
    Else
    {
        Return(XSTA())
    }
}
'''
