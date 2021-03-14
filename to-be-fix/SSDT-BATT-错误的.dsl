/*
* This battery hot patch is generate by SSDT-BATT_Auto_Gen,
* which is a python program written by Eric Kwok.
*
* Note: Should be compile with -f option.
* For any support, plese visit https://github.com/the-eric-kwok/SSDT-BATT_Auto_Gen/issues
*
* [BATT] Rename _Q20 to XQ20
* Find:    5F51323000
* Replace: 5851323000
*
* [BATT] Rename SELE to XELE
* Find:    53454C4500
* Replace: 58454C4500
*
* [BATT] Rename _BST to XBST
* Find:    5F42535400
* Replace: 5842535400
*
* [BATT] Rename UBIF to XBIF
* Find:    5542494608
* Replace: 5842494608
*
* [BATT] Rename UBIX to XBIX
* Find:    5542495808
* Replace: 5842495808
*
*/
DefinitionBlock ("", "SSDT", 2, "ERIC", "BATT", 0x00000000)
{
    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (R1B1, 1, NotSerialized)
        {
            OperationRegion (MEM1, SystemMemory, Arg0, One)
            Field (MEM1, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }
            
            Return (BYTE) /* \RE1B.BYTE */
        }
        
        Method (REB1, 2, Serialized)
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
                TEMP [Local0] = R1B1 (Arg0)
                Arg0++
                Local0++
            }
            
            Return (TEMP) /* \RECB.TEMP */
        }
        
        Method (W1B1, 2, NotSerialized)
        {
            OperationRegion (MEM1, SystemMemory, Arg0, One)
            Field (MEM1, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }
            
            BYTE = Arg1
        }
        
        Method (WRB1, 3, Serialized)
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
                W1B1 (Arg0, DerefOf (TEMP [Local0]))
                Arg0++
                Local0++
            }
        }
    }
    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q20, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                \RMDT.P1 ("[RMDT]EC _Q20 enter")
                If ((SMST & 0x40))
                {
                    Local0 = SMAA
                    If ((Local0 == 0x14))
                    {
                        SELE ()
                        If ((0x40 & ECEV))
                        {
                            Notify (BAT1, 0x81)
                            BINH ()
                        }
                        
                        If ((0x02 & ECEV))
                        {
                            Notify (ACAD, Zero)
                            AINH ()
                        }
                        
                        ^^^^BAT1.RCAP = Zero
                        Notify (BAT1, 0x80)
                        BATO = REB1 (0xFE70853E, 16)  //BATD
                        SMST &= 0xBF
                    }
                }
                
                \RMDT.P1 ("[RMDT]EC _Q20 exit")
            }
            Else
            {
                Return(XQ20())
            }
        }
        
        
        Method (SELE, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                BATN = REB1 (0xFE70853E, 16)  //BATD
                ECEV = Zero
                If ((0xC0 & BATN))
                {
                    ECEV |= One
                    If ((0x0300 & BATN))
                    {
                        ECEV |= 0x04
                    }
                }
                
                Local0 = (BATN & One)
                Local1 = (BATO & One)
                If (Local0)
                {
                    ECEV |= 0x0100
                }
                Else
                {
                    ECEV &= 0xFEFF
                }
                
                If (~(Local0 == Local1))
                {
                    ECEV |= 0x40
                }
                
                Local0 = (BATN & 0x02)
                Local1 = (BATO & 0x02)
                If (Local0)
                {
                    ECEV |= 0x0200
                }
                Else
                {
                    ECEV &= 0xFDFF
                }
                
                If (~(Local0 == Local1))
                {
                    ECEV |= 0x80
                }
                
                Local0 = (BATN & 0xC0)
                Local1 = (BATO & 0xC0)
                If (~(Local0 == Local1))
                {
                    ECEV |= 0x02
                }
                
                If ((One & ECEV))
                {
                    If ((0x04 & ECEV))
                    {
                        If ((BATN & 0x20))
                        {
                            ECEV |= 0x10
                        }
                        Else
                        {
                            ECEV |= 0x20
                        }
                    }
                }
            }
            Else
            {
                Return(XELE())
            }
        }
        
        
    }
    Scope (\_SB.BAT1)
    {
        Method (_BST, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If (ECOK)
                {
                    Local0 = ^^PCI0.LPCB.EC0.MBTS
                    If ((Local0 == Zero))
                    {
                        PBST [Zero] = Zero
                        PBST [One] = 0xFFFFFFFF
                        PBST [0x02] = 0xFFFFFFFF
                        PBST [0x03] = 0xFFFFFFFF
                        RCAP = Zero
                        Return (PBST)
                    }
                    
                    Local1 = ^^PCI0.LPCB.EC0.REB1 (0xFE708580, 16)  //\_SB.PCI0.LPCB.EC0.MBRM
                    PBST [0x02] = Local1
                    RCAP = Local1
                    Local3 = ^^PCI0.LPCB.EC0.REB1 (0xFE70857E, 16)  //\_SB.PCI0.LPCB.EC0.MCUR
                    PBST [One] = POSW (Local3)
                    If (^^PCI0.LPCB.EC0.MFCF)
                    {
                        PBST [Zero] = Zero
                    }
                    ElseIf (^^PCI0.LPCB.EC0.MBPC)
                    {
                        PBST [Zero] = 0x02
                    }
                    ElseIf (^^PCI0.LPCB.EC0.MBDX)
                    {
                        PBST [Zero] = One
                    }
                    Else
                    {
                        PBST [Zero] = Zero
                    }
                    
                    PBST [0x03] = ^^PCI0.LPCB.EC0.REB1 (0xFE708582, 16)  //\_SB.PCI0.LPCB.EC0.MBVG
                }
                Else
                {
                    PBST [Zero] = Zero
                    PBST [One] = 0xFFFFFFFF
                    PBST [0x02] = 0xFFFFFFFF
                    PBST [0x03] = 0xFFFFFFFF
                    RCAP = Zero
                }
                
                Return (PBST)
            }
            Else
            {
                Return(XBST())
            }
        }
        
        Method (UBIF, 0, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                If (ECOK)
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Local0 = ^^PCI0.LPCB.EC0.REB1 (0xFE70858C, 16)  //\_SB.PCI0.LPCB.EC0.BTDC
                    Local1 = ^^PCI0.LPCB.EC0.LFCC // TODO: 此处遗漏patch
                    Local2 = ^^PCI0.LPCB.EC0.REB1 (0xFE70858E, 16)  //\_SB.PCI0.LPCB.EC0.BTDV
                    Local3 = ^^PCI0.LPCB.EC0.BTMD
                    Local4 = ^^PCI0.LPCB.EC0.BTMN
                    Local5 = ^^PCI0.LPCB.EC0.REB1 (0xFE70858A, 16)  //\_SB.PCI0.LPCB.EC0.BTSN
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    PBIF [One] = Local0
                    PBIF [0x02] = Local1
                    PBIF [0x04] = Local2
                    WRB1 (0xFE708588, 16, Local1) //LFCC
                    Local7 = (Local1 * 0x04)
                    Local7 /= 0x64
                    PBIF [0x06] = Local7
                    PBIF [0x0B] = "LION"
                    Switch (Local3)
                    {
                        Case (One)
                        {
                            PBIF [0x09] = "AS16B8J"
                        }
                        Case (0x02)
                        {
                            PBIF [0x09] = "AS16A8K"
                        }
                        Case (0x03)
                        {
                            PBIF [0x09] = "AS16B5J"
                        }
                        Case (0x04)
                        {
                            PBIF [0x09] = "AS16A5K"
                        }
                        Case (0x05)
                        {
                            PBIF [0x09] = "AS16A7K"
                        }
                        Case (0x06)
                        {
                            PBIF [0x09] = "AL15A32"
                        }
                        Case (0x07)
                        {
                            PBIF [0x09] = "AL12A32"
                        }
                        Case (0x08)
                        {
                            PBIF [0x09] = "AP13B3K"
                        }
                        Case (0x09)
                        {
                            PBIF [0x09] = "AC14B8K"
                        }
                        Case (0x0A)
                        {
                            PBIF [0x09] = "AL15B32"
                        }
                        Default
                        {
                            PBIF [0x09] = "xxxxx"
                        }
                        
                    }
                    
                    Switch (Local4)
                    {
                        Case (0x03)
                        {
                            PBIF [0x0C] = "SANYO"
                        }
                        Case (0x04)
                        {
                            PBIF [0x0C] = "SONY"
                        }
                        Case (0x05)
                        {
                            PBIF [0x0C] = "PANASONIC"
                        }
                        Case (0x06)
                        {
                            PBIF [0x0C] = "SAMSUNG"
                        }
                        Case (0x07)
                        {
                            PBIF [0x0C] = "SIMPLO"
                        }
                        Case (0x08)
                        {
                            PBIF [0x0C] = "MOTOROLA"
                        }
                        Case (0x09)
                        {
                            PBIF [0x0C] = "CELXPERT"
                        }
                        Case (0x0A)
                        {
                            PBIF [0x0C] = "LGC"
                        }
                        Default
                        {
                            PBIF [0x0C] = "UNKNOWN"
                        }
                        
                    }
                    
                    PBIF [0x0A] = ITOS (ToBCD (Local5))
                }
            }
            Else
            {
                Return(XBIF())
            }
        }
        
        
        Method (UBIX, 0, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                If (ECOK)
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Local0 = ^^PCI0.LPCB.EC0.REB1 (0xFE70858C, 16)  //\_SB.PCI0.LPCB.EC0.BTDC
                    Local1 = ^^PCI0.LPCB.EC0.LFCC // TODO: 此处遗漏patch
                    Local2 = ^^PCI0.LPCB.EC0.REB1 (0xFE70858E, 16)  //\_SB.PCI0.LPCB.EC0.BTDV
                    Local3 = ^^PCI0.LPCB.EC0.BTMD
                    Local4 = ^^PCI0.LPCB.EC0.BTMN
                    Local5 = ^^PCI0.LPCB.EC0.REB1 (0xFE70858A, 16)  //\_SB.PCI0.LPCB.EC0.BTSN
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    PBIX [0x02] = Local0
                    PBIX [0x03] = Local1
                    PBIX [0x05] = Local2
                    WRB1 (0xFE708588, 16, Local1) //LFCC
                    Local7 = (Local1 * 0x04)
                    Local7 /= 0x64
                    PBIX [0x07] = Local7
                    PBIX [0x12] = "LION"
                    Switch (Local3)
                    {
                        Case (One)
                        {
                            PBIX [0x10] = "AS16B8J"
                        }
                        Case (0x02)
                        {
                            PBIX [0x10] = "AS16A8K"
                        }
                        Case (0x03)
                        {
                            PBIX [0x10] = "AS16B5J"
                        }
                        Case (0x04)
                        {
                            PBIX [0x10] = "AS16A5K"
                        }
                        Case (0x05)
                        {
                            PBIX [0x10] = "AS16A7K"
                        }
                        Case (0x06)
                        {
                            PBIX [0x10] = "AL15A32"
                        }
                        Case (0x07)
                        {
                            PBIX [0x10] = "AL12A32"
                        }
                        Case (0x08)
                        {
                            PBIX [0x10] = "AP13B3K"
                        }
                        Case (0x09)
                        {
                            PBIX [0x10] = "AC14B8K"
                        }
                        Case (0x0A)
                        {
                            PBIX [0x10] = "AL15B32"
                        }
                        Default
                        {
                            PBIX [0x10] = "UNKNOWN"
                        }
                        
                    }
                    
                    Switch (Local4)
                    {
                        Case (0x03)
                        {
                            PBIX [0x13] = "SANYO"
                        }
                        Case (0x04)
                        {
                            PBIX [0x13] = "SONY"
                        }
                        Case (0x05)
                        {
                            PBIX [0x13] = "PANASONIC"
                        }
                        Case (0x06)
                        {
                            PBIX [0x13] = "SAMSUNG"
                        }
                        Case (0x07)
                        {
                            PBIX [0x13] = "SIMPLO"
                        }
                        Case (0x08)
                        {
                            PBIX [0x13] = "MOTOROLA"
                        }
                        Case (0x09)
                        {
                            PBIX [0x13] = "CELXPERT"
                        }
                        Case (0x0A)
                        {
                            PBIX [0x13] = "LGC"
                        }
                        Default
                        {
                            PBIX [0x13] = "UNKNOWN"
                        }
                        
                    }
                    
                    PBIX [0x11] = ITOS (ToBCD (Local5))
                }
            }
            Else
            {
                Return(XBIX())
            }
        }
        
        
    }
}
