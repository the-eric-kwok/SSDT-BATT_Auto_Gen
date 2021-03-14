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
	Method (B1B2, 2, NotSerialized)
    {
        Return ((Arg0 | (Arg1 << 0x08)))
    }
	
	Method (W16B, 3, NotSerialized)
    {
        Arg0 = Arg2
        Arg1 = (Arg2 >> 0x08)
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
		OperationRegion (ERM2, SystemMemory, 0xFE708500, 0x0100)
		Field (ERM2, ByteAcc, NoLock, Preserve)
		{
			Offset (0x3E),
			ATD0,   8, //BATD
			ATD1,   8,
			Offset (0x78), 
			CYC0,   8, //MCYC
			CYC1,   8,
			TMP0,   8, //MTMP
			TMP1,   8,
			DAT0,   8, //MDAT
			DAT1,   8,
			CUR0,   8, //MCUR
			CUR1,   8,
			BRM0,   8, //MBRM
			BRM1,   8,
			BVG0,   8, //MBVG
			BVG1,   8,
			HVC0,   8, //BHVC
			HVC1,   8,
			LVC0,   8, //BLVC
			LVC1,   8,
			FCC0,   8, //LFCC
			FCC1,   8,
			TSN0,   8, //BTSN
			TSN1,   8,
			TDC0,   8, //BTDC
			TDC1,   8,
			TDV0,   8, //BTDV
			TDV1,   8
		}
		
        Method (_Q20, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                
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
                        BATO = B1B2(ATD0, ATD1)  //BATD
                        SMST &= 0xBF
                    }
                }
                
                
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
                BATN = B1B2(ATD0, ATD1)  //BATD
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
                    
                    Local1 = B1B2(\_SB.PCI0.LPCB.EC0.BRM0, \_SB.PCI0.LPCB.EC0.BRM1)  //\_SB.PCI0.LPCB.EC0.MBRM
                    PBST [0x02] = Local1
                    RCAP = Local1
                    Local3 = B1B2(\_SB.PCI0.LPCB.EC0.CUR0, \_SB.PCI0.LPCB.EC0.CUR1)  //\_SB.PCI0.LPCB.EC0.MCUR
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
                    
                    PBST [0x03] = B1B2(\_SB.PCI0.LPCB.EC0.BVG0, \_SB.PCI0.LPCB.EC0.BVG1)  //\_SB.PCI0.LPCB.EC0.MBVG
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
                    Local0 = B1B2(\_SB.PCI0.LPCB.EC0.TDC0, \_SB.PCI0.LPCB.EC0.TDC1)  //\_SB.PCI0.LPCB.EC0.BTDC
                    Local1 = B1B2(\_SB.PCI0.LPCB.EC0.FCC0, \_SB.PCI0.LPCB.EC0.FCC1) //LFCC
                    Local2 = B1B2(\_SB.PCI0.LPCB.EC0.TDV0, \_SB.PCI0.LPCB.EC0.TDV1)  //\_SB.PCI0.LPCB.EC0.BTDV
                    Local3 = ^^PCI0.LPCB.EC0.BTMD
                    Local4 = ^^PCI0.LPCB.EC0.BTMN
                    Local5 = B1B2(\_SB.PCI0.LPCB.EC0.TSN0, \_SB.PCI0.LPCB.EC0.TSN1)  //\_SB.PCI0.LPCB.EC0.BTSN
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    PBIF [One] = Local0
                    PBIF [0x02] = Local1
                    PBIF [0x04] = Local2
                    W16B(\_SB.PCI0.LPCB.EC0.FCC0, \_SB.PCI0.LPCB.EC0.FCC1, Local1) //LFCC
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
                    Local0 = B1B2(\_SB.PCI0.LPCB.EC0.TDC0, \_SB.PCI0.LPCB.EC0.TDC1) //\_SB.PCI0.LPCB.EC0.BTDC
                    Local1 = B1B2(\_SB.PCI0.LPCB.EC0.FCC0, \_SB.PCI0.LPCB.EC0.FCC1) //LFCC
                    Local2 = B1B2(\_SB.PCI0.LPCB.EC0.TDV0, \_SB.PCI0.LPCB.EC0.TDV1)  //\_SB.PCI0.LPCB.EC0.BTDV
                    Local3 = ^^PCI0.LPCB.EC0.BTMD
                    Local4 = ^^PCI0.LPCB.EC0.BTMN
                    Local5 = B1B2(\_SB.PCI0.LPCB.EC0.TSN0, \_SB.PCI0.LPCB.EC0.TSN1)  //\_SB.PCI0.LPCB.EC0.BTSN
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    PBIX [0x02] = Local0
                    PBIX [0x03] = Local1
                    PBIX [0x05] = Local2
                    W16B(\_SB.PCI0.LPCB.EC0.FCC0, \_SB.PCI0.LPCB.EC0.FCC1, Local1) //LFCC
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
