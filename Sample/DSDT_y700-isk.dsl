/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/Data/eric/Downloads/EFI归档/EFI_y700-isk电池/CLOVER/ACPI/origin/DSDT.aml, Tue Oct 13 12:12:57 2020
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0001E97D (125309)
 *     Revision         0x02
 *     Checksum         0x6D
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "DSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    /*
     * iASL Warning: There were 15 external control methods found during
     * disassembly, but only 0 were resolved (15 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.BGIA, IntObj)    // Warning: Unknown object
    External (_PR_.BGMA, IntObj)    // Warning: Unknown object
    External (_PR_.BGMS, IntObj)    // Warning: Unknown object
    External (_PR_.CPPC, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU0.LPSS, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU0.TPSS, UnknownObj)    // Warning: Unknown object
    External (_PR_.DSAE, UnknownObj)    // Warning: Unknown object
    External (_PR_.DTSE, UnknownObj)    // Warning: Unknown object
    External (_PR_.DTSF, IntObj)    // Warning: Unknown object
    External (_PR_.ELNG, IntObj)    // Warning: Unknown object
    External (_PR_.EMNA, IntObj)    // Warning: Unknown object
    External (_PR_.EPCS, UnknownObj)    // Warning: Unknown object
    External (_PR_.TRPD, UnknownObj)    // Warning: Unknown object
    External (_PR_.TRPF, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.CADL, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.CAL2, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.CBLV, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.DD1F, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.GLID, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.GSCI, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.GSSE, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.PAUD.PUAM, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.XHC_.DUAM, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.XHC_.RHUB.INIR, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.TPM_.PTS_, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_TZ_.TZ00, UnknownObj)    // Warning: Unknown object
    External (_TZ_.TZ01, UnknownObj)    // Warning: Unknown object
    External (AL6F, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DIDX, UnknownObj)    // Warning: Unknown object
    External (GSMI, UnknownObj)    // Warning: Unknown object
    External (HLVT, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (IGDS, IntObj)    // Warning: Unknown object
    External (LIDS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (M32B, IntObj)    // Warning: Unknown object
    External (M32L, IntObj)    // Warning: Unknown object
    External (M64B, IntObj)    // Warning: Unknown object
    External (M64L, IntObj)    // Warning: Unknown object
    External (P0L6, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (P0WK, UnknownObj)    // Warning: Unknown object
    External (P1GP, UnknownObj)    // Warning: Unknown object
    External (P1L6, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (P1WK, UnknownObj)    // Warning: Unknown object
    External (P2GP, UnknownObj)    // Warning: Unknown object
    External (P2L6, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (P2WK, UnknownObj)    // Warning: Unknown object
    External (PDC0, UnknownObj)    // Warning: Unknown object
    External (PDC1, UnknownObj)    // Warning: Unknown object
    External (PDC2, UnknownObj)    // Warning: Unknown object
    External (PDC3, UnknownObj)    // Warning: Unknown object
    External (PDC4, UnknownObj)    // Warning: Unknown object
    External (PDC5, UnknownObj)    // Warning: Unknown object
    External (PDC6, UnknownObj)    // Warning: Unknown object
    External (PDC7, UnknownObj)    // Warning: Unknown object
    External (PS0X, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (PS2X, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (PS3X, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (SDSM, IntObj)    // Warning: Unknown object
    External (SGGP, UnknownObj)    // Warning: Unknown object
    External (SGMD, UnknownObj)    // Warning: Unknown object

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    OperationRegion (GNVS, SystemMemory, 0x77F63698, 0x0635)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x1E), 
        Offset (0x1F), 
        Offset (0x20), 
        Offset (0x21), 
        Offset (0x22), 
        Offset (0x23), 
        Offset (0x24), 
        Offset (0x25), 
        REVN,   8, 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        MEFE,   8, 
        DSTS,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        IDEM,   8, 
        BID,    16, 
        PLID,   8, 
        BTYP,   8, 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0x53), 
        DSEN,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        ATMC,   8, 
        PTMC,   8, 
        PNHM,   32, 
        TBAL,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        PFLV,   8, 
        BREV,   8, 
        BBID,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        LTR1,   8, 
        LTR2,   8, 
        LTR3,   8, 
        LTR4,   8, 
        LTR5,   8, 
        LTR6,   8, 
        LTR7,   8, 
        LTR8,   8, 
        LTR9,   8, 
        LTRA,   8, 
        LTRB,   8, 
        LTRC,   8, 
        LTRD,   8, 
        LTRE,   8, 
        LTRF,   8, 
        LTRG,   8, 
        LTRH,   8, 
        LTRI,   8, 
        LTRJ,   8, 
        LTRK,   8, 
        OBF1,   8, 
        OBF2,   8, 
        OBF3,   8, 
        OBF4,   8, 
        OBF5,   8, 
        OBF6,   8, 
        OBF7,   8, 
        OBF8,   8, 
        OBF9,   8, 
        OBFA,   8, 
        OBFB,   8, 
        OBFC,   8, 
        OBFD,   8, 
        OBFE,   8, 
        OBFF,   8, 
        OBFG,   8, 
        OBFH,   8, 
        OBFI,   8, 
        OBFJ,   8, 
        OBFK,   8, 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        DDRF,   8, 
        RTD3,   8, 
        PEP0,   8, 
        PEP3,   8, 
        DPTF,   8, 
        SADE,   8, 
        SACR,   8, 
        SAHT,   8, 
        CTDP,   8, 
        LPMP,   8, 
        LPMV,   8, 
        ECEU,   8, 
        TGFG,   16, 
        MEMD,   8, 
        ATRA,   8, 
        PTRA,   8, 
        MEMC,   8, 
        MEMH,   8, 
        FND1,   8, 
        FND2,   8, 
        AMBD,   8, 
        AMAT,   8, 
        AMPT,   8, 
        AMCT,   8, 
        AMHT,   8, 
        SKDE,   8, 
        SKAT,   8, 
        SKPT,   8, 
        SKCT,   8, 
        SKHT,   8, 
        EFDE,   8, 
        EFAT,   8, 
        EFPT,   8, 
        EFCT,   8, 
        EFHT,   8, 
        VRDE,   8, 
        VRAT,   8, 
        VRPT,   8, 
        VRCT,   8, 
        VRHT,   8, 
        DPAP,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DCMP,   8, 
        TRTV,   8, 
        LPOE,   8, 
        LPOP,   8, 
        LPOS,   8, 
        LPOW,   8, 
        LPER,   8, 
        PPSZ,   32, 
        DISE,   8, 
        BGMA,   64, 
        BGMS,   8, 
        BGIA,   16, 
        IRMC,   8, 
        NFCE,   8, 
        CHEN,   8, 
        S0ID,   8, 
        CTDB,   8, 
        DKSM,   8, 
        SIO1,   16, 
        SIO2,   16, 
        SPBA,   16, 
        SEC0,   32, 
        SEC1,   32, 
        SEC2,   32, 
        SEC3,   32, 
        SEC4,   32, 
        SEC5,   32, 
        SEC6,   32, 
        SEC7,   32, 
        SEC8,   32, 
        Offset (0x1F4), 
        WIFD,   8, 
        WFAT,   8, 
        WFPT,   8, 
        WFCT,   8, 
        WFHT,   8, 
        PWRE,   8, 
        PWRP,   8, 
        Offset (0x203), 
        XHPR,   8, 
        RIC0,   8, 
        DVS0,   8, 
        DVS1,   8, 
        DVS2,   8, 
        DVS3,   8, 
        GBSX,   8, 
        IUBE,   8, 
        IUCE,   8, 
        IUDE,   8, 
        ECNO,   8, 
        AUDD,   16, 
        IC0D,   16, 
        IC1D,   16, 
        IC1S,   16, 
        VRRD,   16, 
        PSCP,   8, 
        I20D,   16, 
        I21D,   16, 
        RCG0,   16, 
        ECDB,   8, 
        P2ME,   8, 
        SSH0,   16, 
        SSL0,   16, 
        SSD0,   16, 
        FMH0,   16, 
        FML0,   16, 
        FMD0,   16, 
        FPH0,   16, 
        FPL0,   16, 
        FPD0,   16, 
        SSH1,   16, 
        SSL1,   16, 
        SSD1,   16, 
        FMH1,   16, 
        FML1,   16, 
        FMD1,   16, 
        FPH1,   16, 
        FPL1,   16, 
        FPD1,   16, 
        M0C0,   16, 
        M1C0,   16, 
        M2C0,   16, 
        M0C1,   16, 
        M1C1,   16, 
        M2C1,   16, 
        M0C2,   16, 
        M1C2,   16, 
        M0C3,   16, 
        M1C3,   16, 
        M0C4,   16, 
        M1C4,   16, 
        M0C5,   16, 
        M1C5,   16, 
        TBSF,   8, 
        GIRQ,   32, 
        DMTP,   8, 
        DMTD,   8, 
        DMSH,   8, 
        LANP,   8, 
        SHSB,   8, 
        PLCS,   8, 
        PLVL,   16, 
        GN1E,   8, 
        G1AT,   8, 
        G1PT,   8, 
        G1CT,   8, 
        G1HT,   8, 
        GN2E,   8, 
        G2AT,   8, 
        G2PT,   8, 
        G2CT,   8, 
        G2HT,   8, 
        WWSD,   8, 
        CVSD,   8, 
        SSDD,   8, 
        INLD,   8, 
        IFAT,   8, 
        IFPT,   8, 
        IFCT,   8, 
        IFHT,   8, 
        SDWE,   8, 
        USBH,   8, 
        BCV4,   8, 
        WTV0,   8, 
        WTV1,   8, 
        APFU,   8, 
        SOHP,   8, 
        GP5F,   8, 
        NOHP,   8, 
        TBSE,   8, 
        WKFN,   8, 
        PEPC,   32, 
        VRSD,   16, 
        PB1E,   8, 
        GNID,   8, 
        WAND,   8, 
        WWAT,   8, 
        WWPT,   8, 
        WWCT,   8, 
        WWHT,   8, 
        Offset (0x2A3), 
        MPL0,   16, 
        CHGE,   8, 
        SAC3,   8, 
        MEM3,   8, 
        AMC3,   8, 
        SKC3,   8, 
        EFC3,   8, 
        VRC3,   8, 
        WFC3,   8, 
        G1C3,   8, 
        G2C3,   8, 
        IFC3,   8, 
        WWC3,   8, 
        WGC3,   8, 
        SPST,   8, 
        PERE,   8, 
        Offset (0x2B7), 
        GN3E,   8, 
        G3AT,   8, 
        G3PT,   8, 
        G3CT,   8, 
        G3HT,   8, 
        GN4E,   8, 
        G4AT,   8, 
        G4PT,   8, 
        G4CT,   8, 
        G4HT,   8, 
        GN5E,   8, 
        G5AT,   8, 
        G5PT,   8, 
        G5CT,   8, 
        G5HT,   8, 
        GN6E,   8, 
        G6AT,   8, 
        G6PT,   8, 
        G6CT,   8, 
        G6HT,   8, 
        ECLP,   8, 
        G3C3,   8, 
        G4C3,   8, 
        G5C3,   8, 
        G6C3,   8, 
        TSP1,   8, 
        TSP2,   8, 
        TSP3,   8, 
        TSP4,   8, 
        TSP5,   8, 
        TSP6,   8, 
        TSP7,   8, 
        TSP8,   8, 
        SSP1,   8, 
        SSP2,   8, 
        SSP3,   8, 
        SSP4,   8, 
        SSP5,   8, 
        SSP6,   8, 
        SSP7,   8, 
        SSP8,   8, 
        MEMS,   8, 
        Offset (0x2F8), 
        S1DE,   8, 
        S1AT,   8, 
        S1PT,   8, 
        S1CT,   8, 
        S1HT,   8, 
        S2DE,   8, 
        S2AT,   8, 
        S2PT,   8, 
        S2CT,   8, 
        S2HT,   8, 
        S3DE,   8, 
        S3AT,   8, 
        S3PT,   8, 
        S3CT,   8, 
        S3HT,   8, 
        S4DE,   8, 
        S4AT,   8, 
        S4PT,   8, 
        S4CT,   8, 
        S4HT,   8, 
        S5DE,   8, 
        S5AT,   8, 
        S5PT,   8, 
        S5CT,   8, 
        S5HT,   8, 
        S6DE,   8, 
        S6AT,   8, 
        S6PT,   8, 
        S6CT,   8, 
        S6HT,   8, 
        S7DE,   8, 
        S7AT,   8, 
        S7PT,   8, 
        S7CT,   8, 
        S7HT,   8, 
        S1S3,   8, 
        S2S3,   8, 
        S3S3,   8, 
        S4S3,   8, 
        S5S3,   8, 
        S6S3,   8, 
        S7S3,   8, 
        PSME,   8, 
        PDT1,   8, 
        PLM1,   16, 
        PTW1,   16, 
        PDT2,   8, 
        PLM2,   16, 
        PTW2,   16, 
        DDT1,   8, 
        DDP1,   8, 
        DLI1,   16, 
        DPL1,   16, 
        DTW1,   16, 
        DMI1,   16, 
        DMA1,   16, 
        DMT1,   16, 
        DDT2,   8, 
        DDP2,   8, 
        DLI2,   16, 
        DPL2,   16, 
        DTW2,   16, 
        DMI2,   16, 
        DMA2,   16, 
        DMT2,   16, 
        WIFE,   8, 
        DOM1,   8, 
        LIM1,   16, 
        TIM1,   16, 
        DOM2,   8, 
        LIM2,   16, 
        TIM2,   16, 
        DOM3,   8, 
        LIM3,   16, 
        TIM3,   16, 
        TRD0,   8, 
        TRL0,   8, 
        TRD1,   8, 
        TRL1,   8, 
        WDM1,   8, 
        CID1,   16, 
        WDM2,   8, 
        CID2,   16, 
        Offset (0x364), 
        APPE,   8, 
        MPL1,   16, 
        MPL2,   16, 
        SDS0,   8, 
        SDS1,   8, 
        SDS2,   8, 
        SDS3,   8, 
        SDS4,   8, 
        SDS5,   8, 
        SDS6,   8, 
        SDS7,   8, 
        SDS8,   8, 
        SDS9,   8, 
        SDSA,   8, 
        TPLB,   8, 
        TPLH,   16, 
        WTVX,   8, 
        WITX,   8, 
        GPTD,   8, 
        GDBT,   16, 
        UTKX,   8, 
        SPTD,   8, 
        GEXN,   8, 
        TBTS,   8, 
        AICS,   8, 
        TARS,   8, 
        FPAT,   8, 
        FPEN,   8, 
        FPGN,   32, 
        FPLV,   8, 
        CPAD,   16, 
        CPAB,   8, 
        TNAT,   8, 
        CPGN,   32, 
        CF2T,   8, 
        ATLB,   32, 
        SDM0,   8, 
        SDM1,   8, 
        SDM2,   8, 
        SDM3,   8, 
        SDM4,   8, 
        SDM5,   8, 
        SDM6,   8, 
        SDM7,   8, 
        SDM8,   8, 
        SDM9,   8, 
        SDMA,   8, 
        USTP,   8, 
        SSHI,   16, 
        SSLI,   16, 
        SSDI,   16, 
        FMHI,   16, 
        FMLI,   16, 
        FMDI,   16, 
        FPHI,   16, 
        FPLI,   16, 
        FPDI,   16, 
        M0CI,   16, 
        M1CI,   16, 
        M0CS,   16, 
        M1CS,   16, 
        M0CU,   16, 
        M1CU,   16, 
        CAMT,   8, 
        DS4D,   16, 
        IVDF,   8, 
        EIDF,   8, 
        GFPS,   32, 
        GFPI,   32, 
        GNSM,   8, 
        GNSC,   8, 
        GGNR,   32, 
        GBTW,   32, 
        GBTK,   32, 
        GBTI,   32, 
        GPDI,   32, 
        GPLI,   32, 
        CL00,   8, 
        CL01,   8, 
        CL02,   8, 
        CL03,   8, 
        L0EN,   8, 
        L1EN,   8, 
        L2EN,   8, 
        L3EN,   8, 
        CDIV,   8, 
        C0TP,   8, 
        C0CV,   8, 
        C0GP,   8, 
        C0IB,   8, 
        C0IA,   16, 
        C0P0,   8, 
        C0P1,   8, 
        C0P2,   8, 
        C0P3,   8, 
        C0G0,   8, 
        C0G1,   8, 
        C0G2,   8, 
        C0G3,   8, 
        C0F0,   8, 
        C0F1,   8, 
        C0F2,   8, 
        C0F3,   8, 
        C0A0,   8, 
        C0A1,   8, 
        C0A2,   8, 
        C0A3,   8, 
        C0I0,   8, 
        C0I1,   8, 
        C0I2,   8, 
        C0I3,   8, 
        C0PL,   8, 
        C1TP,   8, 
        C1CV,   8, 
        C1GP,   8, 
        C1IB,   8, 
        C1IA,   16, 
        C1P0,   8, 
        C1P1,   8, 
        C1P2,   8, 
        C1P3,   8, 
        C1G0,   8, 
        C1G1,   8, 
        C1G2,   8, 
        C1G3,   8, 
        C1F0,   8, 
        C1F1,   8, 
        C1F2,   8, 
        C1F3,   8, 
        C1A0,   8, 
        C1A1,   8, 
        C1A2,   8, 
        C1A3,   8, 
        C1I0,   8, 
        C1I1,   8, 
        C1I2,   8, 
        C1I3,   8, 
        C1PL,   8, 
        C2TP,   8, 
        C2CV,   8, 
        C2GP,   8, 
        C2IB,   8, 
        C2IA,   16, 
        C2P0,   8, 
        C2P1,   8, 
        C2P2,   8, 
        C2P3,   8, 
        C2G0,   8, 
        C2G1,   8, 
        C2G2,   8, 
        C2G3,   8, 
        C2F0,   8, 
        C2F1,   8, 
        C2F2,   8, 
        C2F3,   8, 
        C2A0,   8, 
        C2A1,   8, 
        C2A2,   8, 
        C2A3,   8, 
        C2I0,   8, 
        C2I1,   8, 
        C2I2,   8, 
        C2I3,   8, 
        C2PL,   8, 
        C3TP,   8, 
        C3CV,   8, 
        C3GP,   8, 
        C3IB,   8, 
        C3IA,   16, 
        C3P0,   8, 
        C3P1,   8, 
        C3P2,   8, 
        C3P3,   8, 
        C3G0,   8, 
        C3G1,   8, 
        C3G2,   8, 
        C3G3,   8, 
        C3F0,   8, 
        C3F1,   8, 
        C3F2,   8, 
        C3F3,   8, 
        C3A0,   8, 
        C3A1,   8, 
        C3A2,   8, 
        C3A3,   8, 
        C3I0,   8, 
        C3I1,   8, 
        C3I2,   8, 
        C3I3,   8, 
        C3PL,   8, 
        L0SM,   8, 
        L0H0,   8, 
        L0H1,   8, 
        L0H2,   8, 
        L0H3,   8, 
        L0H4,   8, 
        L0H5,   8, 
        L0H6,   8, 
        L0H7,   8, 
        L0H8,   8, 
        L0PL,   8, 
        L0M0,   8, 
        L0M1,   8, 
        L0M2,   8, 
        L0M3,   8, 
        L0M4,   8, 
        L0M5,   8, 
        L0M6,   8, 
        L0M7,   8, 
        L0M8,   8, 
        L0M9,   8, 
        L0MA,   8, 
        L0MB,   8, 
        L0MC,   8, 
        L0MD,   8, 
        L0ME,   8, 
        L0MF,   8, 
        L0DI,   8, 
        L0BS,   8, 
        L0A0,   16, 
        L0A1,   16, 
        L0A2,   16, 
        L0A3,   16, 
        L0A4,   16, 
        L0A5,   16, 
        L0A6,   16, 
        L0A7,   16, 
        L0A8,   16, 
        L0A9,   16, 
        L0AA,   16, 
        L0AB,   16, 
        L0D0,   8, 
        L0D1,   8, 
        L0D2,   8, 
        L0D3,   8, 
        L0D4,   8, 
        L0D5,   8, 
        L0D6,   8, 
        L0D7,   8, 
        L0D8,   8, 
        L0D9,   8, 
        L0DA,   8, 
        L0DB,   8, 
        L0DV,   8, 
        L0CV,   8, 
        L0LU,   8, 
        L0NL,   8, 
        L0EE,   8, 
        L0VC,   8, 
        L0FS,   8, 
        L0DG,   8, 
        L0C0,   8, 
        L0C1,   8, 
        L0C2,   8, 
        L0C3,   8, 
        L0CK,   32, 
        L0CL,   8, 
        L1SM,   8, 
        L1H0,   8, 
        L1H1,   8, 
        L1H2,   8, 
        L1H3,   8, 
        L1H4,   8, 
        L1H5,   8, 
        L1H6,   8, 
        L1H7,   8, 
        L1H8,   8, 
        L1PL,   8, 
        L1M0,   8, 
        L1M1,   8, 
        L1M2,   8, 
        L1M3,   8, 
        L1M4,   8, 
        L1M5,   8, 
        L1M6,   8, 
        L1M7,   8, 
        L1M8,   8, 
        L1M9,   8, 
        L1MA,   8, 
        L1MB,   8, 
        L1MC,   8, 
        L1MD,   8, 
        L1ME,   8, 
        L1MF,   8, 
        L1DI,   8, 
        L1BS,   8, 
        L1A0,   16, 
        L1A1,   16, 
        L1A2,   16, 
        L1A3,   16, 
        L1A4,   16, 
        L1A5,   16, 
        L1A6,   16, 
        L1A7,   16, 
        L1A8,   16, 
        L1A9,   16, 
        L1AA,   16, 
        L1AB,   16, 
        L1D0,   8, 
        L1D1,   8, 
        L1D2,   8, 
        L1D3,   8, 
        L1D4,   8, 
        L1D5,   8, 
        L1D6,   8, 
        L1D7,   8, 
        L1D8,   8, 
        L1D9,   8, 
        L1DA,   8, 
        L1DB,   8, 
        L1DV,   8, 
        L1CV,   8, 
        L1LU,   8, 
        L1NL,   8, 
        L1EE,   8, 
        L1VC,   8, 
        L1FS,   8, 
        L1DG,   8, 
        L1C0,   8, 
        L1C1,   8, 
        L1C2,   8, 
        L1C3,   8, 
        L1CK,   32, 
        L1CL,   8, 
        L2SM,   8, 
        L2H0,   8, 
        L2H1,   8, 
        L2H2,   8, 
        L2H3,   8, 
        L2H4,   8, 
        L2H5,   8, 
        L2H6,   8, 
        L2H7,   8, 
        L2H8,   8, 
        L2PL,   8, 
        L2M0,   8, 
        L2M1,   8, 
        L2M2,   8, 
        L2M3,   8, 
        L2M4,   8, 
        L2M5,   8, 
        L2M6,   8, 
        L2M7,   8, 
        L2M8,   8, 
        L2M9,   8, 
        L2MA,   8, 
        L2MB,   8, 
        L2MC,   8, 
        L2MD,   8, 
        L2ME,   8, 
        L2MF,   8, 
        L2DI,   8, 
        L2BS,   8, 
        L2A0,   16, 
        L2A1,   16, 
        L2A2,   16, 
        L2A3,   16, 
        L2A4,   16, 
        L2A5,   16, 
        L2A6,   16, 
        L2A7,   16, 
        L2A8,   16, 
        L2A9,   16, 
        L2AA,   16, 
        L2AB,   16, 
        L2D0,   8, 
        L2D1,   8, 
        L2D2,   8, 
        L2D3,   8, 
        L2D4,   8, 
        L2D5,   8, 
        L2D6,   8, 
        L2D7,   8, 
        L2D8,   8, 
        L2D9,   8, 
        L2DA,   8, 
        L2DB,   8, 
        L2DV,   8, 
        L2CV,   8, 
        L2LU,   8, 
        L2NL,   8, 
        L2EE,   8, 
        L2VC,   8, 
        L2FS,   8, 
        L2DG,   8, 
        L2C0,   8, 
        L2C1,   8, 
        L2C2,   8, 
        L2C3,   8, 
        L2CK,   32, 
        L2CL,   8, 
        L3SM,   8, 
        L3H0,   8, 
        L3H1,   8, 
        L3H2,   8, 
        L3H3,   8, 
        L3H4,   8, 
        L3H5,   8, 
        L3H6,   8, 
        L3H7,   8, 
        L3H8,   8, 
        L3PL,   8, 
        L3M0,   8, 
        L3M1,   8, 
        L3M2,   8, 
        L3M3,   8, 
        L3M4,   8, 
        L3M5,   8, 
        L3M6,   8, 
        L3M7,   8, 
        L3M8,   8, 
        L3M9,   8, 
        L3MA,   8, 
        L3MB,   8, 
        L3MC,   8, 
        L3MD,   8, 
        L3ME,   8, 
        L3MF,   8, 
        L3DI,   8, 
        L3BS,   8, 
        L3A0,   16, 
        L3A1,   16, 
        L3A2,   16, 
        L3A3,   16, 
        L3A4,   16, 
        L3A5,   16, 
        L3A6,   16, 
        L3A7,   16, 
        L3A8,   16, 
        L3A9,   16, 
        L3AA,   16, 
        L3AB,   16, 
        L3D0,   8, 
        L3D1,   8, 
        L3D2,   8, 
        L3D3,   8, 
        L3D4,   8, 
        L3D5,   8, 
        L3D6,   8, 
        L3D7,   8, 
        L3D8,   8, 
        L3D9,   8, 
        L3DA,   8, 
        L3DB,   8, 
        L3DV,   8, 
        L3CV,   8, 
        L3LU,   8, 
        L3NL,   8, 
        L3EE,   8, 
        L3VC,   8, 
        L3FS,   8, 
        L3DG,   8, 
        L3C0,   8, 
        L3C1,   8, 
        L3C2,   8, 
        L3C3,   8, 
        L3CK,   32, 
        L3CL,   8, 
        ECR1,   8, 
        Offset (0x5AA), 
        I2SC,   8, 
        ODV0,   8, 
        ODV1,   8, 
        ODV2,   8, 
        ODV3,   8, 
        ODV4,   8, 
        ODV5,   8, 
        UBCB,   32, 
        EMOD,   8, 
        WIFC,   8, 
        Offset (0x5BE), 
        TPLS,   8, 
        TPDB,   8, 
        TPDH,   16, 
        TPDS,   8, 
        AG1L,   64, 
        AG1H,   64, 
        AG2L,   64, 
        AG2H,   64, 
        AG3L,   64, 
        AG3H,   64, 
        HEFE,   8, 
        XDCE,   8, 
        Offset (0x60E), 
        CCMD,   8, 
        COMD,   8, 
        LPT1,   8, 
        PSTP,   8, 
        WKMD,   8, 
        IDER,   8, 
        PIE0,   8, 
        PIE1,   8, 
        CSTS,   8, 
        PMEE,   8, 
        WOLE,   8, 
        NVAD,   32, 
        NVSZ,   32, 
        Offset (0x622), 
        S1C0,   16, 
        S1C1,   16, 
        S2C0,   16, 
        S2C1,   16, 
        P2KB,   8, 
        HRAM,   8, 
        MDEN,   8, 
        TBEP,   8, 
        FGNE,   8, 
        TBTC,   8, 
        TRPN,   8, 
        TBTM,   32
    }

    OperationRegion (OGNS, SystemMemory, 0x77F64F18, 0x0000000C)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        OG00,   8, 
        OG01,   8, 
        OG02,   8, 
        OG03,   8, 
        OG04,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        ECON,   8
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x21)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x2D)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03"))  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                D1F2,   1, 
                D1F1,   1, 
                D1F0,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                PMLK,   1, 
                    ,   3, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xE0000000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000010000, // Range Minimum
                    0x000000000001FFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000010000, // Length
                    ,, _Y0F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFD000000,         // Range Minimum
                    0xFE7FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x01800000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Name (EP_B, Zero)
            Name (MH_B, Zero)
            Name (PC_B, Zero)
            Name (PC_L, Zero)
            Name (DM_B, Zero)
            Method (GEPB, 0, Serialized)
            {
                If ((EP_B == Zero))
                {
                    EP_B = (EPBR << 0x0C)
                }

                Return (EP_B)
            }

            Method (GMHB, 0, Serialized)
            {
                If ((MH_B == Zero))
                {
                    MH_B = (MHBR << 0x0F)
                }

                Return (MH_B)
            }

            Method (GPCB, 0, Serialized)
            {
                If ((PC_B == Zero))
                {
                    PC_B = (PXBR << 0x1A)
                }

                Return (PC_B)
            }

            Method (GPCL, 0, Serialized)
            {
                If ((PC_L == Zero))
                {
                    PC_L = (0x10000000 >> PXSZ)
                }

                Return (PC_L)
            }

            Method (GDMB, 0, Serialized)
            {
                If ((DM_B == Zero))
                {
                    DM_B = (DIBR << 0x0C)
                }

                Return (DM_B)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Local0 = GPCL ()
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                PBMX = ((Local0 >> 0x14) - 0x02)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                PBLN = ((Local0 >> 0x14) - One)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                M1LN = M32L
                M1MN = M32B
                M1MX = ((M1MN + M1LN) - One)
                If ((M64L == Zero))
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0F._LEN, MSLN)  // _LEN: Length
                    MSLN = Zero
                }
                Else
                {
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._LEN, M2LN)  // _LEN: Length
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MIN, M2MN)  // _MIN: Minimum Base Address
                    CreateQWordField (BUF0, \_SB.PCI0._Y0F._MAX, M2MX)  // _MAX: Maximum Base Address
                    M2LN = M64L
                    M2MN = M64B
                    M2MX = ((M2MN + M2LN) - One)
                }

                Return (BUF0)
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2
                    CTRL = CDW3
                    If (((TBTS == One) && (TNAT == One)))
                    {
                        CTRL &= 0xFFFFFFF7
                    }

                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL
                    OSCC = CTRL
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (^^AR00)
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (^^PR00)
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (^^AR02)
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (^^PR02)
                }

                Method (AR04, 0, NotSerialized)
                {
                    Return (^^AR04)
                }

                Method (PR04, 0, NotSerialized)
                {
                    Return (^^PR04)
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (^^AR05)
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (^^PR05)
                }

                Method (AR06, 0, NotSerialized)
                {
                    Return (^^AR06)
                }

                Method (PR06, 0, NotSerialized)
                {
                    Return (^^PR06)
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (^^AR07)
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (^^PR07)
                }

                Method (AR08, 0, NotSerialized)
                {
                    Return (^^AR08)
                }

                Method (PR08, 0, NotSerialized)
                {
                    Return (^^PR08)
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (^^AR09)
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (^^PR09)
                }

                Method (AR0A, 0, NotSerialized)
                {
                    Return (^^AR0A)
                }

                Method (PR0A, 0, NotSerialized)
                {
                    Return (^^PR0A)
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (^^AR0B)
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (^^PR0B)
                }

                Device (PEG0)
                {
                    Name (_ADR, 0x00010000)  // _ADR: Address
                    Device (PEGP)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }

                Device (PEG1)
                {
                    Name (_ADR, 0x00010001)  // _ADR: Address
                    Device (PEGP)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }

                Device (PEG2)
                {
                    Name (_ADR, 0x00010002)  // _ADR: Address
                    Device (PEGP)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                    }
                }

                Device (GFX0)
                {
                    Name (_ADR, 0x00020000)  // _ADR: Address
                }

                Device (B0D4)
                {
                    Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                    {
                        If (PCIC (Arg0))
                        {
                            Return (PCID (Arg0, Arg1, Arg2, Arg3))
                        }
                    }

                    Name (_ADR, 0x00040000)  // _ADR: Address
                }
            }
        }
    }

    If ((ECR1 == One))
    {
        Scope (_SB.PCI0)
        {
            Name (PCIG, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */)
            Method (PCID, 4, Serialized)
            {
                If ((Arg0 == PCIG))
                {
                    If ((Arg1 >= 0x03))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x03                                     
                            })
                        }

                        If ((Arg2 == 0x08))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350, 
                                Ones, 
                                Ones, 
                                0xC350, 
                                Ones
                            })
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (PCIC, 1, Serialized)
        {
            If ((ECR1 == One))
            {
                If ((Arg0 == PCIG))
                {
                    Return (One)
                }
            }

            Return (Zero)
        }
    }

    Name (PNVB, 0x77F68C98)
    Name (PNVL, 0x0204)
    OperationRegion (PNVA, SystemMemory, PNVB, PNVL)
    Field (PNVA, AnyAcc, Lock, Preserve)
    {
        RCRV,   32, 
        PCHS,   16, 
        PCHG,   16, 
        RPA1,   32, 
        RPA2,   32, 
        RPA3,   32, 
        RPA4,   32, 
        RPA5,   32, 
        RPA6,   32, 
        RPA7,   32, 
        RPA8,   32, 
        RPA9,   32, 
        RPAA,   32, 
        RPAB,   32, 
        RPAC,   32, 
        RPAD,   32, 
        RPAE,   32, 
        RPAF,   32, 
        RPAG,   32, 
        RPAH,   32, 
        RPAI,   32, 
        RPAJ,   32, 
        RPAK,   32, 
        NHLA,   64, 
        NHLL,   32, 
        ADFM,   32, 
        SBRG,   32, 
        GPEM,   32, 
        G2L0,   32, 
        G2L1,   32, 
        G2L2,   32, 
        G2L3,   32, 
        G2L4,   32, 
        G2L5,   32, 
        G2L6,   32, 
        G2L7,   32, 
        G2L8,   32, 
        G2L9,   32, 
        PML1,   16, 
        PML2,   16, 
        PML3,   16, 
        PML4,   16, 
        PML5,   16, 
        PML6,   16, 
        PML7,   16, 
        PML8,   16, 
        PML9,   16, 
        PMLA,   16, 
        PMLB,   16, 
        PMLC,   16, 
        PMLD,   16, 
        PMLE,   16, 
        PMLF,   16, 
        PMLG,   16, 
        PMLH,   16, 
        PMLI,   16, 
        PMLJ,   16, 
        PMLK,   16, 
        PNL1,   16, 
        PNL2,   16, 
        PNL3,   16, 
        PNL4,   16, 
        PNL5,   16, 
        PNL6,   16, 
        PNL7,   16, 
        PNL8,   16, 
        PNL9,   16, 
        PNLA,   16, 
        PNLB,   16, 
        PNLC,   16, 
        PNLD,   16, 
        PNLE,   16, 
        PNLF,   16, 
        PNLG,   16, 
        PNLH,   16, 
        PNLI,   16, 
        PNLJ,   16, 
        PNLK,   16, 
        U0C0,   32, 
        U1C0,   32, 
        ADPM,   32, 
        XHPC,   8, 
        XRPC,   8, 
        XSPC,   8, 
        XSPA,   8, 
        HPTB,   32, 
        HPTE,   8, 
        SMD0,   8, 
        SMD1,   8, 
        SMD2,   8, 
        SMD3,   8, 
        SMD4,   8, 
        SMD5,   8, 
        SMD6,   8, 
        SMD7,   8, 
        SMD8,   8, 
        SMD9,   8, 
        SMDA,   8, 
        SIR0,   8, 
        SIR1,   8, 
        SIR2,   8, 
        SIR3,   8, 
        SIR4,   8, 
        SIR5,   8, 
        SIR6,   8, 
        SIR7,   8, 
        SIR8,   8, 
        SIR9,   8, 
        SIRA,   8, 
        SB00,   32, 
        SB01,   32, 
        SB02,   32, 
        SB03,   32, 
        SB04,   32, 
        SB05,   32, 
        SB06,   32, 
        SB07,   32, 
        SB08,   32, 
        SB09,   32, 
        SB0A,   32, 
        SB10,   32, 
        SB11,   32, 
        SB12,   32, 
        SB13,   32, 
        SB14,   32, 
        SB15,   32, 
        SB16,   32, 
        SB17,   32, 
        SB18,   32, 
        SB19,   32, 
        SB1A,   32, 
        GPEN,   8, 
        SGIR,   8, 
        NIT1,   8, 
        NIT2,   8, 
        NIT3,   8, 
        NPM1,   8, 
        NPM2,   8, 
        NPM3,   8, 
        NPC1,   8, 
        NPC2,   8, 
        NPC3,   8, 
        NL11,   16, 
        NL12,   16, 
        NL13,   16, 
        ND21,   8, 
        ND22,   8, 
        ND23,   8, 
        ND11,   32, 
        ND12,   32, 
        ND13,   32, 
        NLR1,   16, 
        NLR2,   16, 
        NLR3,   16, 
        NLD1,   32, 
        NLD2,   32, 
        NLD3,   32, 
        NEA1,   16, 
        NEA2,   16, 
        NEA3,   16, 
        NEB1,   16, 
        NEB2,   16, 
        NEB3,   16, 
        NEC1,   16, 
        NEC2,   16, 
        NEC3,   16, 
        NRA1,   16, 
        NRA2,   16, 
        NRA3,   16, 
        NMB1,   32, 
        NMB2,   32, 
        NMB3,   32, 
        NMV1,   32, 
        NMV2,   32, 
        NMV3,   32, 
        NPB1,   32, 
        NPB2,   32, 
        NPB3,   32, 
        NPV1,   32, 
        NPV2,   32, 
        NPV3,   32, 
        Offset (0x1E6), 
        SXRB,   32, 
        SXRS,   32, 
        CIOE,   8, 
        CIOI,   8, 
        TAEN,   8, 
        TIRQ,   8, 
        XWMB,   32, 
        EMH4,   8, 
        CSKU,   8, 
        ITA0,   16, 
        ITA1,   16, 
        ITA2,   16, 
        ITA3,   16, 
        ITS0,   8, 
        ITS1,   8, 
        ITS2,   8, 
        ITS3,   8
    }

    Scope (_SB)
    {
        Name (GCOM, Package (0x02)
        {
            Package (0x08)
            {
                0x00AF0000, 
                0x00AF0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AC0000, 
                0x00AC0000, 
                0x00AD0000
            }, 

            Package (0x0A)
            {
                0x00AF0000, 
                0x00AF0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AC0000, 
                0x00AD0000
            }
        })
        Name (GPPG, Package (0x02)
        {
            Package (0x08)
            {
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x08, 
                0x0C
            }, 

            Package (0x0A)
            {
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x0D, 
                0x18, 
                0x18, 
                0x18, 
                0x0B, 
                0x0C
            }
        })
        Name (PCFG, Package (0x02)
        {
            Package (0x08)
            {
                0x0400, 
                0x04C0, 
                0x0400, 
                0x04C0, 
                0x0580, 
                0x0400, 
                0x04C0, 
                0x0400
            }, 

            Package (0x0A)
            {
                0x0400, 
                0x04C0, 
                0x0400, 
                0x04C0, 
                0x0580, 
                0x05E8, 
                0x06A8, 
                0x0768, 
                0x0400, 
                0x0400
            }
        })
        Name (HOWN, Package (0x02)
        {
            Package (0x08)
            {
                0xD0, 
                0xD4, 
                0xD0, 
                0xD4, 
                0xD8, 
                0xD0, 
                0xD4, 
                0xD0
            }, 

            Package (0x0A)
            {
                0xD0, 
                0xD4, 
                0xD0, 
                0xD4, 
                0xD8, 
                0xDC, 
                0xE0, 
                0xE4, 
                0xD0, 
                0xD0
            }
        })
        Name (POWN, Package (0x02)
        {
            Package (0x08)
            {
                0x20, 
                0x30, 
                0x20, 
                0x30, 
                0x40, 
                0x20, 
                0x30, 
                0x20
            }, 

            Package (0x0A)
            {
                0x20, 
                0x2C, 
                0x20, 
                0x2C, 
                0x38, 
                0x40, 
                0x4C, 
                0x58, 
                0x20, 
                0x20
            }
        })
        Name (GPEO, Package (0x02)
        {
            Package (0x08)
            {
                0x0140, 
                0x0144, 
                0x0140, 
                0x0144, 
                0x0148, 
                0x0140, 
                0x0144, 
                0x0140
            }, 

            Package (0x0A)
            {
                0x0140, 
                0x0144, 
                0x0140, 
                0x0144, 
                0x0148, 
                0x014C, 
                0x0150, 
                0x0154, 
                0x0140, 
                0x0140
            }
        })
        Name (GPES, Package (0x0A)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (RXEV, Package (0x0A)
        {
            Ones, 
            Ones, 
            Ones, 
            Ones, 
            Ones, 
            Ones, 
            Ones, 
            Ones, 
            Ones, 
            Ones
        })
        Method (GNUM, 1, NotSerialized)
        {
            Local1 = GNMB (Arg0)
            Local2 = GGRP (Arg0)
            Return ((Local1 + (Local2 * 0x18)))
        }

        Method (INUM, 1, NotSerialized)
        {
            If ((PCHS == 0x02))
            {
                Local0 = Zero
            }
            Else
            {
                Local0 = One
            }

            Local1 = GNMB (Arg0)
            Local2 = GGRP (Arg0)
            Local3 = Zero
            While ((Local3 < Local2))
            {
                Local1 += DerefOf (DerefOf (GPPG [Local0]) [Local3])
                Local3++
            }

            Return ((0x18 + (Local1 % 0x60)))
        }

        Method (GGRP, 1, Serialized)
        {
            Local0 = ((Arg0 & 0x00FF0000) >> 0x10)
            Return (Local0)
        }

        Method (GNMB, 1, Serialized)
        {
            Return ((Arg0 & 0xFFFF))
        }

        Method (GGPE, 1, NotSerialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GPEM >> (Local0 * 0x02)) & 0x03)
            If ((Local2 == Zero))
            {
                Return (0x6F)
            }
            Else
            {
                Return ((((Local2 - One) * 0x20) + Local1))
            }
        }

        Method (GADR, 2, NotSerialized)
        {
            If ((PCHS == 0x02))
            {
                Local0 = Zero
            }
            Else
            {
                Local0 = One
            }

            Local1 = (DerefOf (DerefOf (GCOM [Local0]) [Arg0]) + SBRG)
            Local2 = DerefOf (DerefOf (Arg1 [Local0]) [Arg0])
            Return ((Local1 + Local2))
        }

        Method (GPC0, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP)
        }

        Method (SPC0, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = Arg1
        }

        Method (GPC1, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GADR (Local0, PCFG) + (Local1 * 0x08)) + 0x04)
            OperationRegion (PDW1, SystemMemory, Local2, 0x04)
            Field (PDW1, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP)
        }

        Method (SPC1, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GADR (Local0, PCFG) + (Local1 * 0x08)) + 0x04)
            OperationRegion (PDW1, SystemMemory, Local2, 0x04)
            Field (PDW1, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = Arg1
        }

        Method (SRXO, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   28, 
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GGIV, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   1, 
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP)
        }

        Method (GGOV, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP)
        }

        Method (SGOV, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GGII, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   23, 
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP)
        }

        Method (SGII, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   23, 
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GPMV, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   10, 
                TEMP,   3, 
                Offset (0x04)
            }

            Return (TEMP)
        }

        Method (SPMV, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   10, 
                TEMP,   3, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GHPO, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            OperationRegion (PREG, SystemMemory, GADR (Local0, HOWN), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (((TEMP >> Local1) & One))
        }

        Method (SHPO, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            OperationRegion (PREG, SystemMemory, GADR (Local0, HOWN), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = ((TEMP & ~(One << Local1)) | (Arg1 << Local1))
        }

        Method (GGPO, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, POWN) + ((Local1 >> 0x03) * 0x04))
            OperationRegion (PREG, SystemMemory, Local2, 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (((TEMP >> ((Local1 & 0x07) * 0x04)) & 0x03))
        }

        Method (SGRA, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   20, 
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (SGWP, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GADR (Local0, PCFG) + (Local1 * 0x08)) + 0x04)
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   10, 
                TEMP,   4, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (UGP1, 1, Serialized)
        {
            OperationRegion (GPPX, SystemMemory, GADR (Arg0, GPEO), 0x24)
            Field (GPPX, AnyAcc, NoLock, Preserve)
            {
                STSX,   32, 
                Offset (0x20), 
                GENX,   32
            }

            If ((((GPEM >> (Arg0 * 0x02)) & 0x03) == Zero))
            {
                GPES [Arg0] = (STSX & GENX)
            }
            Else
            {
                GPES [Arg0] = Zero
            }
        }

        Method (UGPS, 0, Serialized)
        {
            If ((PCHS == One))
            {
                Local0 = 0x0A
            }
            Else
            {
                Local0 = 0x08
            }

            While (Local0)
            {
                Local0--
                UGP1 (Local0)
            }
        }

        Method (CGP1, 2, Serialized)
        {
            If ((((GPEM >> (Arg0 * 0x02)) & 0x03) == Zero))
            {
                OperationRegion (GPPX, SystemMemory, GADR (Arg0, GPEO), 0x04)
                Field (GPPX, AnyAcc, NoLock, Preserve)
                {
                    STSX,   32
                }

                STSX = Arg1
            }
        }

        Method (CGPS, 0, Serialized)
        {
            If ((PCHS == One))
            {
                Local0 = 0x0A
            }
            Else
            {
                Local0 = 0x08
            }

            While (Local0)
            {
                Local0--
                CGP1 (Local0, 0xFFFFFFFF)
            }
        }

        Method (CGLS, 0, Serialized)
        {
            If ((PCHS == One))
            {
                Local0 = 0x0A
            }
            Else
            {
                Local0 = 0x08
            }

            While (Local0)
            {
                Local0--
                If ((Local0 == 0x09))
                {
                    Local1 = G2L9
                }
                ElseIf ((Local0 == 0x08))
                {
                    Local1 = G2L8
                }
                ElseIf ((Local0 == 0x07))
                {
                    Local1 = G2L7
                }
                ElseIf ((Local0 == 0x06))
                {
                    Local1 = G2L6
                }
                ElseIf ((Local0 == 0x05))
                {
                    Local1 = G2L5
                }
                ElseIf ((Local0 == 0x04))
                {
                    Local1 = G2L4
                }
                ElseIf ((Local0 == 0x03))
                {
                    Local1 = G2L3
                }
                ElseIf ((Local0 == 0x02))
                {
                    Local1 = G2L2
                }
                ElseIf ((Local0 == One))
                {
                    Local1 = G2L1
                }
                ElseIf ((Local0 == Zero))
                {
                    Local1 = G2L0
                }
                Else
                {
                    Continue
                }

                CGP1 (Local0, Local1)
            }
        }

        Method (CAGS, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            If ((((GPEM >> (Local0 * 0x02)) & 0x03) == Zero))
            {
                OperationRegion (GPPX, SystemMemory, GADR (Local0, GPEO), 0x04)
                Field (GPPX, AnyAcc, NoLock, Preserve)
                {
                    STSX,   32
                }

                Local3 = STSX
                Local2 = (One << Local1)
                STSX |= Local2
            }
        }

        Method (ISME, 1, NotSerialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Return (((DerefOf (GPES [Local0]) >> Local1) & One))
        }

        Method (DIPI, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   9, 
                RDIS,   1, 
                    ,   15, 
                RCFG,   2, 
                Offset (0x04)
            }

            If ((RCFG != 0x02))
            {
                Local3 = DerefOf (RXEV [Local0])
                Local3 &= ~(0x03 << (Local1 * 0x02))
                RXEV [Local0] = (Local3 | (RCFG << (Local1 * 0x02)))
                RCFG = 0x02
                RDIS = One
            }
        }

        Method (UIPI, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   9, 
                RDIS,   1, 
                    ,   15, 
                RCFG,   2, 
                Offset (0x04)
            }

            Local3 = ((DerefOf (RXEV [Local0]) >> (Local1 * 0x02)) & 0x03)
            If ((Local3 != 0x02))
            {
                RDIS = Zero
                RCFG = Local3
            }
        }
    }

    Scope (\)
    {
        Method (THEN, 0, Serialized)
        {
            OperationRegion (THBA, SystemMemory, 0xFE200000, 0x10)
            Field (THBA, DWordAcc, NoLock, Preserve)
            {
                DO00,   32
            }

            Return ((DO00 != 0xFFFFFFFF))
        }

        Method (THDA, 2, Serialized)
        {
            Local0 = 0xFE200000
            Local0 += (0x40 * (0x80 * (Arg0 - 0x20)))
            Local0 += (0x40 * Arg1)
            Return (Local0)
        }

        Method (STRD, 3, Serialized)
        {
            If (((Arg1 + Arg2) > SizeOf (Arg0)))
            {
                Return (Zero)
            }

            ToBuffer (Arg0, Local3)
            Local0 = Zero
            Local1 = Zero
            While ((Local1 < Arg2))
            {
                Local2 = DerefOf (Local3 [(Arg1 + Local1)])
                Local0 += (Local2 << (0x08 * Local1))
                Local1++
            }

            Return (Local0)
        }

        Method (THDS, 1, Serialized)
        {
            If (!THEN ())
            {
                Return (Zero)
            }

            Local0 = SizeOf (Arg0)
            Local1 = THDA (0x20, 0x16)
            OperationRegion (THBA, SystemMemory, Local1, 0x40)
            Field (THBA, QWordAcc, NoLock, Preserve)
            {
                QO00,   64
            }

            Field (THBA, DWordAcc, NoLock, Preserve)
            {
                DO00,   32, 
                Offset (0x10), 
                DO10,   32, 
                Offset (0x30), 
                DO30,   32
            }

            Field (THBA, WordAcc, NoLock, Preserve)
            {
                WO00,   16
            }

            Field (THBA, ByteAcc, NoLock, Preserve)
            {
                BO00,   8
            }

            DO10 = 0x01000242
            WO00 = Local0
            Local6 = Zero
            Local7 = Local0
            While ((Local7 >= 0x08))
            {
                QO00 = STRD (Arg0, Local6, 0x08)
                Local6 += 0x08
                Local7 -= 0x08
            }

            If ((Local7 >= 0x04))
            {
                DO00 = STRD (Arg0, Local6, 0x04)
                Local6 += 0x04
                Local7 -= 0x04
            }

            If ((Local7 >= 0x02))
            {
                WO00 = STRD (Arg0, Local6, 0x02)
                Local6 += 0x02
                Local7 -= 0x02
            }

            If ((Local7 >= One))
            {
                BO00 = STRD (Arg0, Local6, One)
                Local6 += One
                Local7 -= One
            }

            DO30 = Zero
        }

        Method (THDH, 1, Serialized)
        {
            THDS (ToHexString (Arg0))
        }

        Method (THDD, 1, Serialized)
        {
            THDS (ToDecimalString (Arg0))
        }
    }

    Name (SPTH, One)
    Name (SPTL, 0x02)
    Method (PCHV, 0, NotSerialized)
    {
        If ((PCHS == One))
        {
            Return (SPTH)
        }

        If ((PCHS == 0x02))
        {
            Return (SPTL)
        }

        Return (Zero)
    }

    Scope (_GPE)
    {
        Method (_L6D, 0, Serialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.XHC.GPEH ()
            \_SB.PCI0.HDAS.GPEH ()
            \_SB.PCI0.GLAN.GPEH ()
            \_SB.PCI0.XDCI.GPEH ()
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PRRE)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, "PCHRESV")  // _UID: Unique ID
            Name (_STA, 0x03)  // _STA: Status
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFD000000,         // Address Base
                        0x00AC0000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFDAD0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFDB00000,         // Address Base
                        0x00500000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE000000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE036000,         // Address Base
                        0x00006000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE03D000,         // Address Base
                        0x003C3000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE410000,         // Address Base
                        0x003F0000,         // Address Length
                        )
                })
                Return (BUF0)
            }
        }

        Device (IOTR)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, "IoTraps")  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y10)
                })
                Name (BUF1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y11)
                })
                Name (BUF2, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y12)
                })
                Name (BUF3, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y13)
                })
                CreateWordField (BUF0, \_SB.PCI0.IOTR._CRS._Y10._MIN, AMI0)  // _MIN: Minimum Base Address
                CreateWordField (BUF0, \_SB.PCI0.IOTR._CRS._Y10._MAX, AMA0)  // _MAX: Maximum Base Address
                CreateWordField (BUF1, \_SB.PCI0.IOTR._CRS._Y11._MIN, AMI1)  // _MIN: Minimum Base Address
                CreateWordField (BUF1, \_SB.PCI0.IOTR._CRS._Y11._MAX, AMA1)  // _MAX: Maximum Base Address
                CreateWordField (BUF2, \_SB.PCI0.IOTR._CRS._Y12._MIN, AMI2)  // _MIN: Minimum Base Address
                CreateWordField (BUF2, \_SB.PCI0.IOTR._CRS._Y12._MAX, AMA2)  // _MAX: Maximum Base Address
                CreateWordField (BUF3, \_SB.PCI0.IOTR._CRS._Y13._MIN, AMI3)  // _MIN: Minimum Base Address
                CreateWordField (BUF3, \_SB.PCI0.IOTR._CRS._Y13._MAX, AMA3)  // _MAX: Maximum Base Address
                AMI0 = ITA0
                AMA0 = ITA0
                AMI1 = ITA1
                AMA1 = ITA1
                AMI2 = ITA2
                AMA2 = ITA2
                AMI3 = ITA3
                AMA3 = ITA3
                If ((ITS0 == One))
                {
                    ConcatenateResTemplate (Local0, BUF0, Local0)
                }

                If ((ITS1 == One))
                {
                    ConcatenateResTemplate (Local0, BUF1, Local0)
                }

                If ((ITS2 == One))
                {
                    ConcatenateResTemplate (Local0, BUF2, Local0)
                }

                If ((ITS3 == One))
                {
                    ConcatenateResTemplate (Local0, BUF3, Local0)
                }

                Return (Local0)
            }
        }

        Device (LPCB)
        {
            Name (_ADR, 0x001F0000)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }

            OperationRegion (LPC, PCI_Config, Zero, 0x0100)
            Field (LPC, AnyAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                CDID,   16, 
                Offset (0x08), 
                CRID,   8, 
                Offset (0x80), 
                IOD0,   8, 
                IOD1,   8, 
                Offset (0xA0), 
                    ,   9, 
                PRBL,   1, 
                Offset (0xAC), 
                Offset (0xAD), 
                Offset (0xAE), 
                XUSB,   1, 
                Offset (0xB8), 
                    ,   22, 
                GR0B,   2, 
                Offset (0xBC), 
                    ,   2, 
                GR19,   2, 
                Offset (0xC0), 
                Offset (0xDC), 
                    ,   2, 
                ESPI,   1
            }
        }

        Device (PPMC)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }

            OperationRegion (PMCB, PCI_Config, Zero, 0x0100)
            Field (PMCB, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x40), 
                Offset (0x41), 
                ACBA,   8, 
                Offset (0x48), 
                    ,   12, 
                PWBA,   20
            }
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0004)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }

            OperationRegion (SMBP, PCI_Config, Zero, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x20), 
                    ,   5, 
                SBAR,   11, 
                Offset (0x40), 
                    ,   2, 
                I2CE,   1, 
                Offset (0x50), 
                    ,   5, 
                TCOB,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Arg2 [Zero])
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Arg2 [Local1])
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100){})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                TBUF [Zero] = DAT0
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (TBUF [Zero])))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    TBUF [Local1] = HBDR
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
        }
    }

    Scope (_SB)
    {
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PARC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLA, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLA, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PARC & 0x0F))
                Return (RTLA)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PARC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PARC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PBRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLB, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLB, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PBRC & 0x0F))
                Return (RTLB)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PBRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PBRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PCRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLC, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLC, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PCRC & 0x0F))
                Return (RTLC)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PCRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PCRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PDRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLD, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLD, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PDRC & 0x0F))
                Return (RTLD)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PDRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PDRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PERC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLE, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLE, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PERC & 0x0F))
                Return (RTLE)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PERC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PERC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PFRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLF, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLF, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PFRC & 0x0F))
                Return (RTLF)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PFRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PFRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PGRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLG, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLG, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PGRC & 0x0F))
                Return (RTLG)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PGRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PGRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_DIS, 0, Serialized)  // _DIS: Disable Device
            {
                PHRC |= 0x80
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RTLH, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {}
                })
                CreateWordField (RTLH, One, IRQ0)
                IRQ0 = Zero
                IRQ0 = (One << (PHRC & 0x0F))
                Return (RTLH)
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRQ0)
                FindSetRightBit (IRQ0, Local0)
                Local0--
                PHRC = Local0
            }

            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If ((PHRC & 0x80))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }
        }
    }

    Scope (\)
    {
        Name (PMBV, Zero)
        Method (PMBS, 0, NotSerialized)
        {
            If ((PMBV == Zero))
            {
                PMBV = (\_SB.PCI0.PPMC.ACBA << 0x08)
            }

            Return (PMBV)
        }

        Name (PWRV, Zero)
        Method (PWRM, 0, NotSerialized)
        {
            If ((PWRV == Zero))
            {
                PWRV = (\_SB.PCI0.PPMC.PWBA << 0x0C)
            }

            Return (PWRV)
        }

        Name (TCBV, Zero)
        Method (TCBS, 0, NotSerialized)
        {
            If ((TCBV == Zero))
            {
                TCBV = (\_SB.PCI0.SBUS.TCOB << 0x05)
            }

            Return (TCBV)
        }

        OperationRegion (PMIO, SystemIO, PMBS (), 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PBSS,   1, 
            Offset (0x40), 
                ,   17, 
            GPEC,   1
        }

        OperationRegion (PMLP, SystemIO, (PMBS () + 0x80), 0x20)
        Field (PMLP, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            Offset (0x11), 
            GE08,   1, 
                ,   8, 
            GE17,   1, 
                ,   17, 
            GE35,   1, 
                ,   9, 
            GE45,   1, 
            Offset (0x16), 
            GE48,   1, 
                ,   2, 
            GE51,   1, 
            Offset (0x20)
        }

        Field (PMLP, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x01), 
            GS08,   1, 
                ,   8, 
            GS17,   1, 
                ,   17, 
            GS35,   1, 
                ,   9, 
            GS45,   1, 
            Offset (0x06), 
            GS48,   1, 
                ,   2, 
            GS51,   1, 
                ,   2, 
            GS54,   1, 
            GS55,   1, 
            Offset (0x10)
        }

        OperationRegion (TCBA, SystemIO, TCBS (), 0x10)
        Field (TCBA, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
                ,   9, 
            CPSC,   1
        }

        OperationRegion (PWMR, SystemMemory, PWRM (), 0x0800)
        Field (PWMR, AnyAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            Offset (0xE2), 
            DWLE,   1, 
            HWLE,   1
        }

        OperationRegion (PMST, SystemMemory, PWRV, 0x80)
        Field (PMST, DWordAcc, NoLock, Preserve)
        {
            Offset (0x18), 
                ,   25, 
            USBP,   1, 
            Offset (0x1C), 
            Offset (0x1F), 
            PMFS,   1, 
            Offset (0x20), 
            MPMC,   32, 
                ,   20, 
            UWAB,   1
        }

        Method (PCRR, 2, Serialized)
        {
            Local0 = ((Arg0 << 0x10) + Arg1)
            Local0 += SBRG
            OperationRegion (PCR0, SystemMemory, Local0, 0x04)
            Field (PCR0, DWordAcc, Lock, Preserve)
            {
                DAT0,   32
            }

            Return (DAT0)
        }

        Method (PCRW, 3, Serialized)
        {
            Local0 = ((Arg0 << 0x10) + Arg1)
            Local0 += SBRG
            OperationRegion (PCR0, SystemMemory, Local0, 0x04)
            Field (PCR0, DWordAcc, Lock, Preserve)
            {
                DAT0,   32
            }

            DAT0 = Arg2
            OperationRegion (PCR1, SystemMemory, (SBRG + 0x00C73418), 0x04)
            Field (PCR1, DWordAcc, Lock, Preserve)
            {
                DAT1,   32
            }

            Local1 = DAT1
        }

        Method (PCRO, 3, Serialized)
        {
            Local0 = PCRR (Arg0, Arg1)
            Local1 = (Local0 | Arg2)
            PCRW (Arg0, Arg1, Local1)
        }

        Method (PCRA, 3, Serialized)
        {
            Local0 = PCRR (Arg0, Arg1)
            Local1 = (Local0 & Arg2)
            PCRW (Arg0, Arg1, Local1)
        }

        Method (PCAO, 4, Serialized)
        {
            Local0 = PCRR (Arg0, Arg1)
            Local1 = ((Local0 & Arg2) | Arg3)
            PCRW (Arg0, Arg1, Local1)
        }
    }

    Scope (_SB.PCI0)
    {
        Name (LTRN, Zero)
        Name (OBFN, Zero)
        Name (LMSL, Zero)
        Name (LNSL, Zero)
        Device (GLAN)
        {
            Name (_ADR, 0x001F0006)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }

            OperationRegion (GLBA, PCI_Config, Zero, 0x0100)
            Field (GLBA, AnyAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0xCC), 
                Offset (0xCD), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x6D, 0x04))
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                If ((PMEE && PMES))
                {
                    PMES = One
                    Notify (GLAN, 0x02)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XHC)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            OperationRegion (XPRT, PCI_Config, Zero, 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0x74), 
                D0D3,   2, 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xA8), 
                    ,   13, 
                MW13,   1, 
                MW14,   1, 
                Offset (0xAC), 
                Offset (0xB0), 
                    ,   13, 
                MB13,   1, 
                MB14,   1, 
                Offset (0xB4), 
                Offset (0xD0), 
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            Name (XFLT, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("ac340cb7-e901-45bf-b7e6-2b34ec931e23")))
                {
                    If ((Arg1 == 0x03))
                    {
                        XFLT = Arg1
                    }
                }

                Return (Zero)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x03)
            }

            Method (_S3W, 0, NotSerialized)  // _S3W: S3 Device Wake State
            {
                Return (0x03)
            }

            Method (_S4W, 0, NotSerialized)  // _S4W: S4 Device Wake State
            {
                Return (0x03)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((XFLT == Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x6D, 0x04))
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (CondRefOf (\_SB.PCI0.XHC.RHUB.INIR))
                {
                    ^RHUB.INIR ()
                }
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                Local0 = PMES
                PMES = One
                If ((PMEE && Local0))
                {
                    Notify (XHC, 0x02)
                }
            }

            OperationRegion (XHCP, SystemMemory, (GPCB () + 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04), 
                PDBM,   16, 
                Offset (0x10), 
                MEMB,   64
            }

            Method (USRA, 0, Serialized)
            {
                If ((PCHV () == SPTH))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Method (SSPA, 0, Serialized)
            {
                If ((PCHV () == SPTH))
                {
                    Return (0x11)
                }
                Else
                {
                    Return (0x0D)
                }
            }

            Name (XRST, Zero)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                Local2 = MEMB
                Local1 = PDBM
                PDBM &= 0xFFFFFFFFFFFFFFF9
                Local3 = D0D3
                D0D3 = Zero
                MEMB = XWMB
                PDBM = (Local1 | 0x02)
                OperationRegion (MC11, SystemMemory, XWMB, 0x9000)
                Field (MC11, DWordAcc, Lock, Preserve)
                {
                    Offset (0x81C4), 
                        ,   2, 
                    UPSW,   2
                }

                UPSW = Zero
                PDBM &= 0xFFFFFFFFFFFFFFFD
                MEMB = Local2
                PDBM = Local1
                If (CondRefOf (\_SB.PCI0.XHC.PS0X))
                {
                    PS0X ()
                }

                If ((UWAB && ((D0D3 == Zero) || (^^XDCI.D0I3 == Zero))))
                {
                    MPMC = One
                    While (PMFS)
                    {
                        Sleep (0x0A)
                    }
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                Local2 = MEMB
                Local1 = PDBM
                PDBM &= 0xFFFFFFFFFFFFFFF9
                D0D3 = Zero
                MEMB = XWMB
                PDBM = (Local1 | 0x02)
                OperationRegion (MC11, SystemMemory, XWMB, 0x9000)
                Field (MC11, DWordAcc, Lock, Preserve)
                {
                    Offset (0x81C4), 
                        ,   2, 
                    UPSW,   2
                }

                UPSW = 0x03
                PDBM &= 0xFFFFFFFFFFFFFFFD
                D0D3 = 0x03
                MEMB = Local2
                PDBM = Local1
                If (CondRefOf (\_SB.PCI0.XHC.PS3X))
                {
                    PS3X ()
                }

                If ((UWAB && ((D0D3 == 0x03) && ((^^XDCI.D0I3 == 0x03) || (^^XDCI.DVID == 0xFFFF)))))
                {
                    MPMC = 0x03
                    While (PMFS)
                    {
                        Sleep (0x0A)
                    }
                }
            }

            Method (CUID, 1, Serialized)
            {
                If ((Arg0 == ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((DVID == 0xFFFF))
                    {
                        Return (Zero)
                    }

                    If (CondRefOf (\_SB.PCI0.XHC.RHUB.PS0X))
                    {
                        PS0X ()
                    }
                }

                Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                {
                    If ((DVID == 0xFFFF))
                    {
                        Return (Zero)
                    }

                    If (CondRefOf (\_SB.PCI0.XHC.RHUB.PS2X))
                    {
                        PS2X ()
                    }
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((DVID == 0xFFFF))
                    {
                        Return (Zero)
                    }

                    If (CondRefOf (\_SB.PCI0.XHC.RHUB.PS3X))
                    {
                        PS3X ()
                    }
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                }

                Device (HS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                }

                Device (HS08)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                }

                Device (HS09)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                }

                Device (HS10)
                {
                    Name (_ADR, 0x0A)  // _ADR: Address
                }

                Device (USR1)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((USRA () + Zero))
                    }
                }

                Device (USR2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((USRA () + One))
                    }
                }

                Device (SS01)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((SSPA () + Zero))
                    }
                }

                Device (SS02)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((SSPA () + One))
                    }
                }

                Device (SS03)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((SSPA () + 0x02))
                    }
                }

                Device (SS04)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((SSPA () + 0x03))
                    }
                }

                Device (SS05)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((SSPA () + 0x04))
                    }
                }

                Device (SS06)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((SSPA () + 0x05))
                    }
                }
            }
        }
    }

    If ((PCHV () == SPTH))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Device (HS11)
            {
                Name (_ADR, 0x0B)  // _ADR: Address
            }

            Device (HS12)
            {
                Name (_ADR, 0x0C)  // _ADR: Address
            }

            Device (HS13)
            {
                Name (_ADR, 0x0D)  // _ADR: Address
            }

            Device (HS14)
            {
                Name (_ADR, 0x0E)  // _ADR: Address
            }

            Device (SS07)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((SSPA () + 0x06))
                }
            }

            Device (SS08)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((SSPA () + 0x07))
                }
            }

            Device (SS09)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((SSPA () + 0x08))
                }
            }

            Device (SS10)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return ((SSPA () + 0x09))
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (XDCI)
        {
            Name (_ADR, 0x00140001)  // _ADR: Address
            OperationRegion (OTGD, PCI_Config, Zero, 0x0100)
            Field (OTGD, DWordAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0x10), 
                XDCB,   64, 
                Offset (0x74), 
                D0I3,   2, 
                Offset (0x84), 
                Offset (0x85), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Method (XDBA, 0, NotSerialized)
            {
                Return ((XDCB & 0xFFFFFFFFFFFFFF00))
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("732b85d5-b7a7-4a1b-9ba0-4bbd00ffd511")))
                {
                    If ((Arg1 == One))
                    {
                        Switch (Arg2)
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x73                                           
                                })
                            }
                            Case (One)
                            {
                                Return (One)
                            }
                            Case (0x04)
                            {
                                OperationRegion (XDBW, SystemMemory, XDBA (), 0x00110000)
                                Field (XDBW, WordAcc, NoLock, Preserve)
                                {
                                    Offset (0x10F810), 
                                    Offset (0x10F811), 
                                    U2CP,   2, 
                                    U3CP,   2, 
                                    Offset (0x10F818), 
                                    PUPS,   2, 
                                        ,   1, 
                                    PURC,   1, 
                                    Offset (0x10F81A), 
                                    Offset (0x10F81C), 
                                        ,   3, 
                                    UXPE,   2, 
                                    Offset (0x10F81E)
                                }

                                Local1 = DerefOf (Arg3 [Zero])
                                If ((Local1 == Zero))
                                {
                                    UXPE = Zero
                                    PURC = Zero
                                    Local0 = Zero
                                    While ((Local0 < 0x0A))
                                    {
                                        Stall (0x64)
                                        Local0++
                                    }

                                    PUPS = Zero
                                    Local0 = Zero
                                    While ((Local0 < 0x07D0))
                                    {
                                        Stall (0x64)
                                        If (((U2CP == Zero) && (U3CP == Zero)))
                                        {
                                            Break
                                        }

                                        Local0++
                                    }

                                    If ((U2CP != Zero)){}
                                    If ((U3CP != Zero)){}
                                    Return (Zero)
                                }

                                If ((Local1 == 0x03))
                                {
                                    If ((U2CP != Zero)){}
                                    If ((U3CP != Zero)){}
                                    PUPS = 0x03
                                    Local0 = Zero
                                    While ((Local0 < 0x07D0))
                                    {
                                        Stall (0x64)
                                        If (((U2CP == 0x03) && (U3CP == 0x03)))
                                        {
                                            Break
                                        }

                                        Local0++
                                    }

                                    If ((U2CP != 0x03)){}
                                    If ((U3CP != 0x03)){}
                                    PURC = One
                                    UXPE = 0x03
                                    Return (Zero)
                                }
                            }
                            Case (0x05)
                            {
                                Return (Zero)
                            }
                            Case (0x06)
                            {
                                OperationRegion (XDBD, SystemMemory, XDBA (), 0x00110000)
                                Field (XDBD, DWordAcc, NoLock, Preserve)
                                {
                                    Offset (0xC704), 
                                        ,   30, 
                                    CSFR,   1, 
                                    Offset (0xC708)
                                }

                                OperationRegion (XDW2, SystemMemory, XDBA (), 0x00110000)
                                Field (XDW2, WordAcc, NoLock, Preserve)
                                {
                                    Offset (0x10F820), 
                                        ,   13, 
                                    OTHC,   1
                                }

                                If ((OTHC == Zero))
                                {
                                    CSFR = One
                                    Local0 = Zero
                                    While ((Local0 < 0x64))
                                    {
                                        If ((CSFR == Zero))
                                        {
                                            Break
                                        }

                                        Sleep (One)
                                    }
                                }

                                Return (Zero)
                            }

                        }
                    }
                }

                Return (Zero)
            }

            Name (_DDN, "SPT XHCI controller")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("SPT XHCI controller"))  // _STR: Description String
            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                Return (0x03)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DVID != 0xFFFFFFFF))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x6D, 0x04))
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                Local0 = PMES
                PMES = One
                If ((PMEE && Local0))
                {
                    Notify (XDCI, 0x02)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (HDAS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, Zero, 0x0100)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x48), 
                    ,   6, 
                MBCG,   1, 
                Offset (0x54), 
                Offset (0x55), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                PMEE = Arg0
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x6D, 0x04))
            }

            Method (GPEH, 0, NotSerialized)
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                If ((PMEE && PMES))
                {
                    ADBG ("HDAS GPEH")
                    PMES = One
                    Notify (HDAS, 0x02)
                }
            }

            Name (NBUF, ResourceTemplate ()
            {
                QWordMemory (ResourceConsumer, PosDecode, MinNotFixed, MaxNotFixed, NonCacheable, ReadOnly,
                    0x0000000000000001, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y14, AddressRangeACPI, TypeStatic)
            })
            Method (AUWA, 0, Serialized)
            {
                If ((PCHS == One))
                {
                    If ((^^LPCB.CRID == Zero))
                    {
                        Return (One)
                    }
                }
                Else
                {
                    If ((^^LPCB.CRID == Zero))
                    {
                        Return (One)
                    }

                    If ((^^LPCB.CRID == One))
                    {
                        Return (One)
                    }

                    If ((^^LPCB.CRID == 0x09))
                    {
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                ADBG ("HDAS _INI")
                CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y14._MIN, NBAS)  // _MIN: Minimum Base Address
                CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y14._MAX, NMAS)  // _MAX: Maximum Base Address
                CreateQWordField (NBUF, \_SB.PCI0.HDAS._Y14._LEN, NLEN)  // _LEN: Length
                NBAS = NHLA
                NMAS = (NHLA + (NHLL - One))
                NLEN = NHLL
                If ((AUWA () == One))
                {
                    MBCG = Zero
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                ADBG ("HDAS _DSM")
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("a69f886e-6ceb-4594-a41f-7b5dce24c553")))
                {
                    Switch (Arg2)
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                           
                            })
                        }
                        Case (One)
                        {
                            ADBG ("_DSM Fun 1 NHLT")
                            Return (NBUF)
                        }
                        Case (0x02)
                        {
                            ADBG ("_DSM Fun 2 FMSK")
                            Return (ADFM)
                        }
                        Case (0x03)
                        {
                            ADBG ("_DSM Fun 3 PPMS")
                            Return (Zero)
                        }
                        Default
                        {
                            ADBG ("_DSM Fun NOK")
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }

                    }
                }

                ADBG ("_DSM UUID NOK")
            }
        }

        Device (RP01)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA1 != Zero))
                {
                    Return (RPA1)
                }
                Else
                {
                    Return (0x001C0000)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR1
                LMSL = PML1
                LNSL = PNL1
                OBFN = OBF1
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04 ())
                }

                Return (PR04 ())
            }
        }

        Device (RP02)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA2 != Zero))
                {
                    Return (RPA2)
                }
                Else
                {
                    Return (0x001C0001)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR2
                LMSL = PML2
                LNSL = PNL2
                OBFN = OBF2
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05 ())
                }

                Return (PR05 ())
            }
        }

        Device (RP03)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA3 != Zero))
                {
                    Return (RPA3)
                }
                Else
                {
                    Return (0x001C0002)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR3
                LMSL = PML3
                LNSL = PNL3
                OBFN = OBF3
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06 ())
                }

                Return (PR06 ())
            }
        }

        Device (RP04)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA4 != Zero))
                {
                    Return (RPA4)
                }
                Else
                {
                    Return (0x001C0003)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR4
                LMSL = PML4
                LNSL = PNL4
                OBFN = OBF4
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07 ())
                }

                Return (PR07 ())
            }
        }

        Device (RP05)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA5 != Zero))
                {
                    Return (RPA5)
                }
                Else
                {
                    Return (0x001C0004)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR5
                LMSL = PML5
                LNSL = PNL5
                OBFN = OBF5
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04 ())
                }

                Return (PR04 ())
            }
        }

        Device (RP06)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA6 != Zero))
                {
                    Return (RPA6)
                }
                Else
                {
                    Return (0x001C0005)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR6
                LMSL = PML6
                LNSL = PNL6
                OBFN = OBF6
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05 ())
                }

                Return (PR05 ())
            }
        }

        Device (RP07)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA7 != Zero))
                {
                    Return (RPA7)
                }
                Else
                {
                    Return (0x001C0006)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR7
                LMSL = PML7
                LNSL = PNL7
                OBFN = OBF7
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06 ())
                }

                Return (PR06 ())
            }
        }

        Device (RP08)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA8 != Zero))
                {
                    Return (RPA8)
                }
                Else
                {
                    Return (0x001C0007)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR8
                LMSL = PML8
                LNSL = PNL8
                OBFN = OBF8
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07 ())
                }

                Return (PR07 ())
            }
        }

        Device (RP09)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPA9 != Zero))
                {
                    Return (RPA9)
                }
                Else
                {
                    Return (0x001D0000)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTR9
                LMSL = PML9
                LNSL = PNL9
                OBFN = OBF9
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04 ())
                }

                Return (PR04 ())
            }
        }

        Device (RP10)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAA != Zero))
                {
                    Return (RPAA)
                }
                Else
                {
                    Return (0x001D0001)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRA
                LMSL = PMLA
                LNSL = PNLA
                OBFN = OBFA
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05 ())
                }

                Return (PR05 ())
            }
        }

        Device (RP11)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAB != Zero))
                {
                    Return (RPAB)
                }
                Else
                {
                    Return (0x001D0002)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRB
                LMSL = PMLB
                LNSL = PNLB
                OBFN = OBFB
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06 ())
                }

                Return (PR06 ())
            }
        }

        Device (RP12)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAC != Zero))
                {
                    Return (RPAC)
                }
                Else
                {
                    Return (0x001D0003)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRC
                LMSL = PMLC
                LNSL = PNLC
                OBFN = OBFC
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07 ())
                }

                Return (PR07 ())
            }
        }

        Device (RP13)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAD != Zero))
                {
                    Return (RPAD)
                }
                Else
                {
                    Return (0x001D0004)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRD
                LMSL = PMLD
                LNSL = PNLD
                OBFN = OBFD
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04 ())
                }

                Return (PR04 ())
            }
        }

        Device (RP14)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAE != Zero))
                {
                    Return (RPAE)
                }
                Else
                {
                    Return (0x001D0005)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRE
                LMSL = PMLE
                LNSL = PNLE
                OBFN = OBFE
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05 ())
                }

                Return (PR05 ())
            }
        }

        Device (RP15)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAF != Zero))
                {
                    Return (RPAF)
                }
                Else
                {
                    Return (0x001D0006)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRF
                LMSL = PMLF
                LNSL = PNLF
                OBFN = OBFF
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06 ())
                }

                Return (PR06 ())
            }
        }

        Device (RP16)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAG != Zero))
                {
                    Return (RPAG)
                }
                Else
                {
                    Return (0x001D0007)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRG
                LMSL = PMLG
                LNSL = PNLG
                OBFN = OBFG
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07 ())
                }

                Return (PR07 ())
            }
        }

        Device (RP17)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAH != Zero))
                {
                    Return (RPAH)
                }
                Else
                {
                    Return (0x001B0000)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRH
                LMSL = PMLH
                LNSL = PNLH
                OBFN = OBFH
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR04 ())
                }

                Return (PR04 ())
            }
        }

        Device (RP18)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAI != Zero))
                {
                    Return (RPAI)
                }
                Else
                {
                    Return (0x001B0001)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRI
                LMSL = PMLI
                LNSL = PNLI
                OBFN = OBFI
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05 ())
                }

                Return (PR05 ())
            }
        }

        Device (RP19)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAJ != Zero))
                {
                    Return (RPAJ)
                }
                Else
                {
                    Return (0x001B0002)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRJ
                LMSL = PMLJ
                LNSL = PNLJ
                OBFN = OBFJ
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06 ())
                }

                Return (PR06 ())
            }
        }

        Device (RP20)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                If ((RPAK != Zero))
                {
                    Return (RPAK)
                }
                Else
                {
                    Return (0x001B0003)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRN = LTRK
                LMSL = PMLK
                LNSL = PNLK
                OBFN = OBFK
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            If ((Arg1 >= 0x02))
                            {
                                FUN0 = One
                                If (LTRE)
                                {
                                    FUN6 = One
                                }

                                If (OBFF)
                                {
                                    FUN4 = One
                                }

                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        FUN8 = One
                                        FUN9 = One
                                    }
                                }
                            }

                            Return (OPTS)
                        }
                        Case (0x04)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFN)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                    })
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTRN)
                                {
                                    If (((LMSL == Zero) || (LNSL == Zero)))
                                    {
                                        If ((PCHS == SPTH))
                                        {
                                            LMSL = 0x0846
                                            LNSL = 0x0846
                                        }
                                        ElseIf ((PCHS == SPTL))
                                        {
                                            LMSL = 0x1003
                                            LNSL = 0x1003
                                        }
                                    }

                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV)
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x69, 0x04))
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Notify (PXSX, 0x02)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07 ())
                }

                Return (PR07 ())
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x00170000)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                If (CondRefOf (\_SB.PCI0.SAT0.SDSM))
                {
                    Return (SDSM)
                    Arg0
                    Arg1
                    Arg2
                    Arg3
                }

                Return (Zero)
            }

            Device (PRT0)
            {
                Name (_ADR, 0xFFFF)  // _ADR: Address
            }

            Device (PRT1)
            {
                Name (_ADR, 0x0001FFFF)  // _ADR: Address
            }

            Device (PRT2)
            {
                Name (_ADR, 0x0002FFFF)  // _ADR: Address
            }

            Device (PRT3)
            {
                Name (_ADR, 0x0003FFFF)  // _ADR: Address
            }

            Device (PRT4)
            {
                Name (_ADR, 0x0004FFFF)  // _ADR: Address
            }

            Device (PRT5)
            {
                Name (_ADR, 0x0005FFFF)  // _ADR: Address
            }

            Method (RDCA, 5, Serialized)
            {
                OperationRegion (RPAL, SystemMemory, (GPCB () + (0x000B8100 + Arg1)), 0x04)
                Field (RPAL, DWordAcc, Lock, Preserve)
                {
                    RPCD,   32
                }

                OperationRegion (EPAC, SystemMemory, (GPCB () + 0x000B8308), 0x08)
                Field (EPAC, DWordAcc, Lock, Preserve)
                {
                    CAIR,   32, 
                    CADR,   32
                }

                OperationRegion (NCRG, SystemMemory, (GPCB () + 0x000B8FC0), 0x04)
                Field (NCRG, DWordAcc, Lock, Preserve)
                {
                    CRGC,   32
                }

                If ((Arg0 > 0x02))
                {
                    Return (Zero)
                }
                Else
                {
                    CRGC = Arg0
                }

                Switch (ToInteger (Arg4))
                {
                    Case (Zero)
                    {
                        Return (RPCD)
                    }
                    Case (0x02)
                    {
                        CAIR = Arg1
                        Return (CADR)
                    }
                    Case (One)
                    {
                        Local0 = (Arg2 & RPCD)
                        Local0 |= Arg3
                        RPCD = Local0
                    }
                    Case (0x03)
                    {
                        CAIR = Arg1
                        Local0 = (Arg2 & CADR)
                        Local0 |= Arg3
                        CADR = Local0
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }

            Method (RPD0, 1, Serialized)
            {
                RDCA (Arg0, 0xA4, 0xFFFFFFFC, Zero, One)
            }

            Method (RPD3, 1, Serialized)
            {
                RDCA (Arg0, 0xA4, 0xFFFFFFFC, 0x03, One)
            }

            Device (NVM1)
            {
                Name (_ADR, 0x00C1FFFF)  // _ADR: Address
                Name (PRBI, Zero)
                Name (PRBD, Zero)
                Name (PCMD, Zero)
                Name (NCRN, Zero)
                Name (NITV, Zero)
                Name (NPMV, Zero)
                Name (NPCV, Zero)
                Name (NL1V, Zero)
                Name (ND2V, Zero)
                Name (ND1V, Zero)
                Name (NLRV, Zero)
                Name (NLDV, Zero)
                Name (NEAV, Zero)
                Name (NEBV, Zero)
                Name (NECV, Zero)
                Name (NRAV, Zero)
                Name (NMBV, Zero)
                Name (NMVV, Zero)
                Name (NPBV, Zero)
                Name (NPVV, Zero)
                Method (EPD0, 0, Serialized)
                {
                    RDCA (NCRN, (NPMV + 0x04), 0xFFFFFFFC, Zero, 0x03)
                }

                Method (EPD3, 0, Serialized)
                {
                    RDCA (NCRN, (NPMV + 0x04), 0xFFFFFFFC, 0x03, 0x03)
                }

                Method (CNRS, 0, Serialized)
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    RDCA (NCRN, 0x10, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x14, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x18, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x1C, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x20, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x24, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x04, 0xFFFFFFF8, PCMD, 0x03)
                    RDCA (NCRN, PRBI, Zero, PRBD, 0x03)
                    If ((NL1V != Zero))
                    {
                        RDCA (NCRN, (NL1V + 0x0C), 0xFFFFFF00, ND2V, 0x03)
                        RDCA (NCRN, (NL1V + 0x08), 0x0F, (ND1V & 0xFFFFFFF0), 0x03)
                        RDCA (NCRN, (NL1V + 0x08), 0xFFFFFFFF, ND1V, 0x03)
                    }

                    If ((NLRV != Zero))
                    {
                        RDCA (NCRN, (NLRV + 0x04), 0xFFFFFFFF, NLDV, 0x03)
                    }

                    RDCA (NCRN, (NPCV + 0x10), 0xFFFFFEBF, (NEAV & 0xFFFC), 0x03)
                    RDCA (NCRN, (NPCV + 0x28), 0xFFFFFBFF, NECV, 0x03)
                    RDCA (NCRN, (NPCV + 0x08), 0xFFFFFF1F, NEBV, 0x03)
                    RDCA (NCRN, 0x68, 0xFFFFFBFF, NRAV, One)
                    If (((NEAV & 0x40) == 0x40))
                    {
                        RDCA (NCRN, 0x50, 0xFFFFFFDF, 0x20, One)
                        While (((RDCA (NCRN, 0x52, Zero, Zero, Zero) & 0x2000) == Zero))
                        {
                            Stall (0x0A)
                        }
                    }

                    RDCA (NCRN, (NPCV + 0x10), 0xFFFFFFFC, (NEAV & 0x03), 0x03)
                    If ((NMVV != Zero))
                    {
                        RDCA (NCRN, NMBV, Zero, NMVV, 0x03)
                    }

                    If ((NPVV != Zero))
                    {
                        RDCA (NCRN, NPBV, Zero, NPVV, 0x03)
                    }
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    PCMD = RDCA (NCRN, 0x04, Zero, Zero, 0x02)
                    If ((NITV == One))
                    {
                        PRBI = 0x24
                        PRBD = RDCA (NCRN, 0x24, Zero, Zero, 0x02)
                    }
                    ElseIf ((NITV == 0x02))
                    {
                        PRBI = 0x10
                        PRBD = RDCA (NCRN, 0x10, Zero, Zero, 0x02)
                    }

                    EPD3 ()
                    RPD3 (NCRN)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    RPD0 (NCRN)
                    EPD0 ()
                    Local0 = RDCA (NCRN, (NPMV + 0x04), Zero, Zero, 0x02)
                    If (((Local0 & 0x08) == Zero))
                    {
                        CNRS ()
                    }
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    NITV = NIT1
                    NPMV = NPM1
                    NPCV = NPC1
                    NL1V = NL11
                    ND2V = ND21
                    ND1V = ND11
                    NLRV = NLR1
                    NLDV = NLD1
                    NEAV = NEA1
                    NEBV = NEB1
                    NECV = NEC1
                    NRAV = NRA1
                    NMBV = NMB1
                    NMVV = NMV1
                    NPBV = NPB1
                    NPVV = NPV1
                    NCRN = Zero
                }
            }

            Device (NVM2)
            {
                Name (_ADR, 0x00C2FFFF)  // _ADR: Address
                Name (PRBI, Zero)
                Name (PRBD, Zero)
                Name (PCMD, Zero)
                Name (NCRN, Zero)
                Name (NITV, Zero)
                Name (NPMV, Zero)
                Name (NPCV, Zero)
                Name (NL1V, Zero)
                Name (ND2V, Zero)
                Name (ND1V, Zero)
                Name (NLRV, Zero)
                Name (NLDV, Zero)
                Name (NEAV, Zero)
                Name (NEBV, Zero)
                Name (NECV, Zero)
                Name (NRAV, Zero)
                Name (NMBV, Zero)
                Name (NMVV, Zero)
                Name (NPBV, Zero)
                Name (NPVV, Zero)
                Method (EPD0, 0, Serialized)
                {
                    RDCA (NCRN, (NPMV + 0x04), 0xFFFFFFFC, Zero, 0x03)
                }

                Method (EPD3, 0, Serialized)
                {
                    RDCA (NCRN, (NPMV + 0x04), 0xFFFFFFFC, 0x03, 0x03)
                }

                Method (CNRS, 0, Serialized)
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    RDCA (NCRN, 0x10, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x14, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x18, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x1C, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x20, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x24, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x04, 0xFFFFFFF8, PCMD, 0x03)
                    RDCA (NCRN, PRBI, Zero, PRBD, 0x03)
                    If ((NL1V != Zero))
                    {
                        RDCA (NCRN, (NL1V + 0x0C), 0xFFFFFF00, ND2V, 0x03)
                        RDCA (NCRN, (NL1V + 0x08), 0x0F, (ND1V & 0xFFFFFFF0), 0x03)
                        RDCA (NCRN, (NL1V + 0x08), 0xFFFFFFFF, ND1V, 0x03)
                    }

                    If ((NLRV != Zero))
                    {
                        RDCA (NCRN, (NLRV + 0x04), 0xFFFFFFFF, NLDV, 0x03)
                    }

                    RDCA (NCRN, (NPCV + 0x10), 0xFFFFFEBF, (NEAV & 0xFFFC), 0x03)
                    RDCA (NCRN, (NPCV + 0x28), 0xFFFFFBFF, NECV, 0x03)
                    RDCA (NCRN, (NPCV + 0x08), 0xFFFFFF1F, NEBV, 0x03)
                    RDCA (NCRN, 0x68, 0xFFFFFBFF, NRAV, One)
                    If (((NEAV & 0x40) == 0x40))
                    {
                        RDCA (NCRN, 0x50, 0xFFFFFFDF, 0x20, One)
                        While (((RDCA (NCRN, 0x52, Zero, Zero, Zero) & 0x2000) == Zero))
                        {
                            Stall (0x0A)
                        }
                    }

                    RDCA (NCRN, (NPCV + 0x10), 0xFFFFFFFC, (NEAV & 0x03), 0x03)
                    If ((NMVV != Zero))
                    {
                        RDCA (NCRN, NMBV, Zero, NMVV, 0x03)
                    }

                    If ((NPVV != Zero))
                    {
                        RDCA (NCRN, NPBV, Zero, NPVV, 0x03)
                    }
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    PCMD = RDCA (NCRN, 0x04, Zero, Zero, 0x02)
                    If ((NITV == One))
                    {
                        PRBI = 0x24
                        PRBD = RDCA (NCRN, 0x24, Zero, Zero, 0x02)
                    }
                    ElseIf ((NITV == 0x02))
                    {
                        PRBI = 0x10
                        PRBD = RDCA (NCRN, 0x10, Zero, Zero, 0x02)
                    }

                    EPD3 ()
                    RPD3 (NCRN)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    RPD0 (NCRN)
                    EPD0 ()
                    Local0 = RDCA (NCRN, (NPMV + 0x04), Zero, Zero, 0x02)
                    If (((Local0 & 0x08) == Zero))
                    {
                        CNRS ()
                    }
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    NITV = NIT2
                    NPMV = NPM2
                    NPCV = NPC2
                    NL1V = NL12
                    ND2V = ND22
                    ND1V = ND12
                    NLRV = NLR2
                    NLDV = NLD2
                    NEAV = NEA2
                    NEBV = NEB2
                    NECV = NEC2
                    NRAV = NRA2
                    NMBV = NMB2
                    NMVV = NMV2
                    NPBV = NPB2
                    NPVV = NPV2
                    NCRN = One
                }
            }

            Device (NVM3)
            {
                Name (_ADR, 0x00C3FFFF)  // _ADR: Address
                Name (PRBI, Zero)
                Name (PRBD, Zero)
                Name (PCMD, Zero)
                Name (NCRN, Zero)
                Name (NITV, Zero)
                Name (NPMV, Zero)
                Name (NPCV, Zero)
                Name (NL1V, Zero)
                Name (ND2V, Zero)
                Name (ND1V, Zero)
                Name (NLRV, Zero)
                Name (NLDV, Zero)
                Name (NEAV, Zero)
                Name (NEBV, Zero)
                Name (NECV, Zero)
                Name (NRAV, Zero)
                Name (NMBV, Zero)
                Name (NMVV, Zero)
                Name (NPBV, Zero)
                Name (NPVV, Zero)
                Method (EPD0, 0, Serialized)
                {
                    RDCA (NCRN, (NPMV + 0x04), 0xFFFFFFFC, Zero, 0x03)
                }

                Method (EPD3, 0, Serialized)
                {
                    RDCA (NCRN, (NPMV + 0x04), 0xFFFFFFFC, 0x03, 0x03)
                }

                Method (CNRS, 0, Serialized)
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    RDCA (NCRN, 0x10, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x14, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x18, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x1C, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x20, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x24, Zero, Zero, 0x03)
                    RDCA (NCRN, 0x04, 0xFFFFFFF8, PCMD, 0x03)
                    RDCA (NCRN, PRBI, Zero, PRBD, 0x03)
                    If ((NL1V != Zero))
                    {
                        RDCA (NCRN, (NL1V + 0x0C), 0xFFFFFF00, ND2V, 0x03)
                        RDCA (NCRN, (NL1V + 0x08), 0x0F, (ND1V & 0xFFFFFFF0), 0x03)
                        RDCA (NCRN, (NL1V + 0x08), 0xFFFFFFFF, ND1V, 0x03)
                    }

                    If ((NLRV != Zero))
                    {
                        RDCA (NCRN, (NLRV + 0x04), 0xFFFFFFFF, NLDV, 0x03)
                    }

                    RDCA (NCRN, (NPCV + 0x10), 0xFFFFFEBF, (NEAV & 0xFFFC), 0x03)
                    RDCA (NCRN, (NPCV + 0x28), 0xFFFFFBFF, NECV, 0x03)
                    RDCA (NCRN, (NPCV + 0x08), 0xFFFFFF1F, NEBV, 0x03)
                    RDCA (NCRN, 0x68, 0xFFFFFBFF, NRAV, One)
                    If (((NEAV & 0x40) == 0x40))
                    {
                        RDCA (NCRN, 0x50, 0xFFFFFFDF, 0x20, One)
                        While (((RDCA (NCRN, 0x52, Zero, Zero, Zero) & 0x2000) == Zero))
                        {
                            Stall (0x0A)
                        }
                    }

                    RDCA (NCRN, (NPCV + 0x10), 0xFFFFFFFC, (NEAV & 0x03), 0x03)
                    If ((NMVV != Zero))
                    {
                        RDCA (NCRN, NMBV, Zero, NMVV, 0x03)
                    }

                    If ((NPVV != Zero))
                    {
                        RDCA (NCRN, NPBV, Zero, NPVV, 0x03)
                    }
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    PCMD = RDCA (NCRN, 0x04, Zero, Zero, 0x02)
                    If ((NITV == One))
                    {
                        PRBI = 0x24
                        PRBD = RDCA (NCRN, 0x24, Zero, Zero, 0x02)
                    }
                    ElseIf ((NITV == 0x02))
                    {
                        PRBI = 0x10
                        PRBD = RDCA (NCRN, 0x10, Zero, Zero, 0x02)
                    }

                    EPD3 ()
                    RPD3 (NCRN)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((NITV == Zero))
                    {
                        Return (Zero)
                    }

                    RPD0 (NCRN)
                    EPD0 ()
                    Local0 = RDCA (NCRN, (NPMV + 0x04), Zero, Zero, 0x02)
                    If (((Local0 & 0x08) == Zero))
                    {
                        CNRS ()
                    }
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    NITV = NIT3
                    NPMV = NPM3
                    NPCV = NPC3
                    NL1V = NL13
                    ND2V = ND23
                    ND1V = ND13
                    NLRV = NLR3
                    NLDV = NLD3
                    NEAV = NEA3
                    NEBV = NEB3
                    NECV = NEC3
                    NRAV = NRA3
                    NMBV = NMB3
                    NMVV = NMV3
                    NPBV = NPB3
                    NPVV = NPV3
                    NCRN = 0x02
                }
            }
        }

        Device (CIO2)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CIOE == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_HID, "INT343E")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (CBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, _Y15)
                    {
                        0x00000010,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFE400000,         // Address Base
                        0x00010000,         // Address Length
                        )
                })
                CreateDWordField (CBUF, \_SB.PCI0.CIO2._CRS._Y15._INT, CIOV)  // _INT: Interrupts
                CIOV = CIOI
                Return (CBUF)
            }
        }

        Device (TERM)
        {
            Name (_HID, "INT343D")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFE03C000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, _Y16)
                    {
                        0x00000012,
                    }
                })
                CreateDWordField (RBUF, \_SB.PCI0.TERM._CRS._Y16._INT, IRQN)  // _INT: Interrupts
                IRQN = TIRQ
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TAEN == Zero))
                {
                    Return (Zero)
                }

                If ((TIRQ == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (LPD3, 1, Serialized)
        {
            OperationRegion (ICB1, SystemMemory, (Arg0 + 0x84), 0x04)
            Field (ICB1, DWordAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP |= 0x03
            Local0 = TEMP
        }

        Method (LHRV, 1, Serialized)
        {
            OperationRegion (ICB1, SystemMemory, (Arg0 + 0x08), 0x04)
            Field (ICB1, DWordAcc, NoLock, Preserve)
            {
                HRV,    8
            }

            Return (HRV)
        }

        Method (LPD0, 1, Serialized)
        {
            OperationRegion (ICB1, SystemMemory, (Arg0 + 0x84), 0x04)
            Field (ICB1, DWordAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP &= 0xFFFFFFFC
            Local0 = TEMP
        }

        Method (GETD, 1, Serialized)
        {
            OperationRegion (ICB1, SystemMemory, (Arg0 + 0x84), 0x04)
            Field (ICB1, DWordAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return ((TEMP & 0x03))
        }

        Method (LCRS, 3, Serialized)
        {
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, _Y18)
                {
                    0x00000014,
                }
            })
            CreateDWordField (RBUF, \_SB.PCI0.LCRS._Y17._BAS, BVAL)  // _BAS: Base Address
            CreateDWordField (RBUF, \_SB.PCI0.LCRS._Y17._LEN, BLEN)  // _LEN: Length
            CreateDWordField (RBUF, \_SB.PCI0.LCRS._Y18._INT, IRQN)  // _INT: Interrupts
            BVAL = Arg1
            IRQN = Arg2
            If ((Arg0 == 0x04))
            {
                BLEN = 0x08
            }

            Return (RBUF)
        }

        Method (LSTA, 1, Serialized)
        {
            If (((Arg0 == Zero) || (Arg0 == 0x03)))
            {
                Return (Zero)
            }

            If ((OSYS < 0x07DC))
            {
                Return (Zero)
            }

            Return (0x0F)
        }

        Method (GIRQ, 1, Serialized)
        {
            Return ((0x18 + (Arg0 % 0x60)))
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SIRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_STA, 0x03)  // _STA: Status
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (ADDB, 3, Serialized)
            {
                Name (BUFF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00001000,         // Address Length
                        _Y19)
                })
                CreateDWordField (BUFF, \_SB.PCI0.SIRC.ADDB._Y19._BAS, ADDR)  // _BAS: Base Address
                CreateDWordField (BUFF, \_SB.PCI0.SIRC.ADDB._Y19._LEN, LENG)  // _LEN: Length
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((((Arg0 == One) || (Arg0 == 0x03)) || (Arg0 == 0x04)))
                {
                    ADDR = Arg2
                    ConcatenateResTemplate (Local0, BUFF, Local0)
                }

                If ((Arg0 == 0x03))
                {
                    ADDR = Arg1
                    ConcatenateResTemplate (Local0, BUFF, Local0)
                }

                If ((Arg0 == 0x04))
                {
                    ADDR = (0x08 + Arg1)
                    LENG = 0x0FF8
                    ConcatenateResTemplate (Local0, BUFF, Local0)
                }

                Return (Local0)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                ConcatenateResTemplate (Local0, ADDB (SMD0, SB00, SB10), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD1, SB01, SB11), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD2, SB02, SB12), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD3, SB03, SB13), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD4, SB04, SB14), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD5, SB05, SB15), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD6, SB06, SB16), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD7, SB07, SB17), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD8, SB08, SB18), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMD9, SB09, SB19), Local0)
                ConcatenateResTemplate (Local0, ADDB (SMDA, SB0A, SB1A), Local0)
                If ((^^GPI0._STA () == Zero))
                {
                    ConcatenateResTemplate (Local0, ^^GPI0._CRS (), Local0)
                }

                Return (Local0)
            }
        }

        Device (GPI0)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If ((PCHV () == SPTH))
                {
                    Return ("INT345D")
                }

                Return ("INT344B")
            }

            Name (LINK, "\\_SB.PCI0.GPI0")
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00010000,         // Address Length
                        _Y1A)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00010000,         // Address Length
                        _Y1B)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00010000,         // Address Length
                        _Y1C)
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, _Y1D)
                    {
                        0x0000000E,
                    }
                })
                CreateDWordField (RBUF, \_SB.PCI0.GPI0._CRS._Y1A._BAS, COM0)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GPI0._CRS._Y1B._BAS, COM1)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GPI0._CRS._Y1C._BAS, COM3)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PCI0.GPI0._CRS._Y1D._INT, IRQN)  // _INT: Interrupts
                COM0 = (SBRG + 0x00AF0000)
                COM1 = (SBRG + 0x00AE0000)
                COM3 = (SBRG + 0x00AC0000)
                IRQN = SGIR
                Return (RBUF)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SBRG == Zero))
                {
                    Return (Zero)
                }

                If ((GPEN == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (I2C0)
        {
            Name (LINK, "\\_SB.PCI0.I2C0")
        }
    }

    If ((SMD0 != 0x02))
    {
        Scope (_SB.PCI0.I2C0)
        {
            Name (_HID, "INT3442")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB10))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD0, SB00, SIR0))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB10)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB10)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB10)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD0))
            }
        }
    }

    If ((SMD0 == 0x02))
    {
        Scope (_SB.PCI0.I2C0)
        {
            Name (_ADR, 0x00150000)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (I2C1)
        {
            Name (LINK, "\\_SB.PCI0.I2C1")
        }
    }

    If ((SMD1 != 0x02))
    {
        Scope (_SB.PCI0.I2C1)
        {
            Name (_HID, "INT3443")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB11))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD1, SB01, SIR1))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB11)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB11)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB11)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD1))
            }
        }
    }

    If ((SMD1 == 0x02))
    {
        Scope (_SB.PCI0.I2C1)
        {
            Name (_ADR, 0x00150001)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (I2C2)
        {
            Name (LINK, "\\_SB.PCI0.I2C2")
        }
    }

    If ((SMD2 != 0x02))
    {
        Scope (_SB.PCI0.I2C2)
        {
            Name (_HID, "INT3444")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB12))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD2, SB02, SIR2))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB12)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB12)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB12)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD2))
            }
        }
    }

    If ((SMD2 == 0x02))
    {
        Scope (_SB.PCI0.I2C2)
        {
            Name (_ADR, 0x00150002)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (I2C3)
        {
            Name (LINK, "\\_SB.PCI0.I2C3")
        }
    }

    If ((SMD3 != 0x02))
    {
        Scope (_SB.PCI0.I2C3)
        {
            Name (_HID, "INT3445")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB13))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD3, SB03, SIR3))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB13)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB13)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB13)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD3))
            }
        }
    }

    If ((SMD3 == 0x02))
    {
        Scope (_SB.PCI0.I2C3)
        {
            Name (_ADR, 0x00150003)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (I2C4)
        {
            Name (LINK, "\\_SB.PCI0.I2C4")
        }
    }

    If ((SMD4 != 0x02))
    {
        Scope (_SB.PCI0.I2C4)
        {
            Name (_HID, "INT3446")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB14))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD4, SB04, SIR4))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB14)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB14)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB14)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD4))
            }
        }
    }

    If ((SMD4 == 0x02))
    {
        Scope (_SB.PCI0.I2C4)
        {
            Name (_ADR, 0x00190002)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (I2C5)
        {
            Name (LINK, "\\_SB.PCI0.I2C5")
        }
    }

    If ((SMD5 != 0x02))
    {
        Scope (_SB.PCI0.I2C5)
        {
            Name (_HID, "INT3447")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB15))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD5, SB05, SIR5))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB15)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB15)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB15)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD5))
            }
        }
    }

    If ((SMD5 == 0x02))
    {
        Scope (_SB.PCI0.I2C5)
        {
            Name (_ADR, 0x00190001)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SPI0)
        {
        }
    }

    If ((SMD6 != 0x02))
    {
        Scope (_SB.PCI0.SPI0)
        {
            Name (_HID, "INT3440")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB16))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD6, SB06, SIR6))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB16)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB16)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB16)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD6))
            }
        }
    }

    If ((SMD6 == 0x02))
    {
        Scope (_SB.PCI0.SPI0)
        {
            Name (_ADR, 0x001E0002)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SPI1)
        {
        }
    }

    If ((SMD7 != 0x02))
    {
        Scope (_SB.PCI0.SPI1)
        {
            Name (_HID, "INT3441")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB17))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD7, SB07, SIR7))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB17)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB17)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB17)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD7))
            }
        }
    }

    If ((SMD7 == 0x02))
    {
        Scope (_SB.PCI0.SPI1)
        {
            Name (_ADR, 0x001E0003)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (UA00)
        {
        }
    }

    If ((SMD8 != 0x02))
    {
        Scope (_SB.PCI0.UA00)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If ((SMD9 != 0x04))
                {
                    Return ("INT3448")
                }
                Else
                {
                    Return (0x020CD041)
                }
            }

            Name (_UID, "SerialIoUart0")  // _UID: Unique ID
            Name (_DDN, "SerialIoUart0")  // _DDN: DOS Device Name
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB18))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD8, SB08, SIR8))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB18)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((SMD8 != 0x04))
                {
                    LPD0 (SB18)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((SMD8 != 0x04))
                {
                    LPD3 (SB18)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD8))
            }
        }
    }

    If ((SMD8 == 0x02))
    {
        Scope (_SB.PCI0.UA00)
        {
            Name (_ADR, 0x001E0000)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (UA01)
        {
        }
    }

    If ((SMD9 != 0x02))
    {
        Scope (_SB.PCI0.UA01)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If ((SMD9 != 0x04))
                {
                    Return ("INT3449")
                }
                Else
                {
                    Return (0x020CD041)
                }
            }

            Name (_UID, "SerialIoUart1")  // _UID: Unique ID
            Name (_DDN, "SerialIoUart1")  // _DDN: DOS Device Name
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB19))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD9, SB09, SIR9))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB19)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((SMD9 != 0x04))
                {
                    LPD0 (SB19)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((SMD9 != 0x04))
                {
                    LPD3 (SB19)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD9))
            }
        }
    }

    If ((SMD9 == 0x02))
    {
        Scope (_SB.PCI0.UA01)
        {
            Name (_ADR, 0x001E0001)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (UA02)
        {
        }
    }

    If ((SMDA != 0x02))
    {
        Scope (_SB.PCI0.UA02)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If ((SMDA != 0x04))
                {
                    Return ("INT344A")
                }
                Else
                {
                    Return (0x020CD041)
                }
            }

            Name (_UID, "SerialIoUart2")  // _UID: Unique ID
            Name (_DDN, "SerialIoUart2")  // _DDN: DOS Device Name
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB1A))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMDA, SB0A, SIRA))
            }

            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB1A)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((SMDA != 0x04))
                {
                    LPD0 (SB1A)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((SMDA != 0x04))
                {
                    LPD3 (SB1A)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMDA))
            }
        }
    }

    If ((SMDA == 0x02))
    {
        Scope (_SB.PCI0.UA02)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (HIDG, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */)
        Name (TP7G, ToUUID ("ef87eb82-f951-46da-84ec-14871ac6f84b"))
        Method (HIDD, 5, Serialized)
        {
            If ((Arg0 == HIDG))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == One))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Return (Arg4)
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        Method (TP7D, 6, Serialized)
        {
            If ((Arg0 == TP7G))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == One))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Return (ConcatenateResTemplate (Arg4, Arg5))
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    Scope (_SB.PCI0.I2C0)
    {
        Device (TPD0)
        {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, _Y1E, Exclusive,
                    )
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y1F)
                {
                    0x00000000,
                }
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y1E._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y1E._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
            CreateDWordField (SBFI, \_SB.PCI0.I2C0.TPD0._Y1F._INT, INT2)  // _INT: Interrupts
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((OSYS < 0x07DC))
                {
                    SRXO (GPDI, One)
                }

                INT1 = GNUM (GPDI)
                INT2 = INUM (GPDI)
                If ((SDM0 == Zero))
                {
                    SHPO (GPDI, One)
                }

                If ((SDS0 == One))
                {
                    _HID = "SYNA2393"
                    HID2 = 0x20
                    Return (Zero)
                }

                If ((SDS0 == 0x02))
                {
                    _HID = "06CB2846"
                    HID2 = 0x20
                    Return (Zero)
                }

                If ((SDS0 == 0x05))
                {
                    _HID = "CUST0001"
                    HID2 = TPDH
                    BADR = TPDB
                    If ((TPDS == Zero))
                    {
                        SPED = 0x000186A0
                    }

                    If ((TPDS == One))
                    {
                        SPED = 0x00061A80
                    }

                    If ((TPDS == 0x02))
                    {
                        SPED = 0x000F4240
                    }

                    Return (Zero)
                }
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                If ((Arg0 == TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SDS0 == 0x05) || ((SDS0 == One) || (SDS0 == 0x02))))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((OSYS < 0x07DC))
                {
                    Return (SBFI)
                }

                If ((SDM0 == Zero))
                {
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }

                Return (ConcatenateResTemplate (SBFB, SBFI))
            }
        }

        Device (HDAC)
        {
            Name (_HID, "INT0000")  // _HID: Hardware ID
            Name (_CID, "INT0000")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Smart Sound Technology Audio Codec")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (CADR, Zero)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((I2SC == One))
                {
                    _HID = "INT3439"
                    _CID = "INT3439"
                    CADR = 0x1A
                    Return (Zero)
                }

                If ((I2SC == 0x02))
                {
                    _HID = "INT343A"
                    _CID = "INT343A"
                    CADR = 0x1C
                    Return (Zero)
                }

                If ((I2SC == 0x03))
                {
                    _HID = "INT343B"
                    _CID = "INT343B"
                    CADR = 0x34
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBFB, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                        0x00, ResourceConsumer, _Y20, Exclusive,
                        )
                })
                Name (SBFI, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y21)
                    {
                        0x00000000,
                    }
                })
                CreateWordField (SBFB, \_SB.PCI0.I2C0.HDAC._CRS._Y20._ADR, ADR)  // _ADR: Address
                ADR = CADR
                CreateDWordField (SBFI, \_SB.PCI0.I2C0.HDAC._CRS._Y21._INT, AINT)  // _INT: Interrupts
                AINT = INUM (0x02040016)
                If ((BID == 0x20))
                {
                    Return (SBFB)
                }

                Return (ConcatenateResTemplate (SBFB, SBFI))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((I2SC != Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.I2C1)
    {
        Device (TPL1)
        {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x004C, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                    0x00, ResourceConsumer, _Y22, Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, Exclusive, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, _Y23)
                {
                    0x00000000,
                }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C1.TPL1._Y22._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C1.TPL1._Y22._SPE, SPED)  // _SPE: Speed
            CreateDWordField (SBFI, \_SB.PCI0.I2C1.TPL1._Y23._INT, INT2)  // _INT: Interrupts
            CreateWordField (SBFG, 0x17, INT1)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((OSYS < 0x07DC))
                {
                    SRXO (GPLI, One)
                }

                INT1 = GNUM (GPLI)
                INT2 = INUM (GPLI)
                If ((SDM1 == Zero))
                {
                    SHPO (GPLI, One)
                }

                If ((SDS1 == One))
                {
                    _HID = "ATML3432"
                    HID2 = Zero
                    BADR = 0x4C
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((SDS1 == 0x02))
                {
                    _HID = "ATML2952"
                    HID2 = Zero
                    BADR = 0x4A
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((SDS1 == 0x03))
                {
                    _HID = "ELAN2097"
                    HID2 = One
                    BADR = 0x10
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((SDS1 == 0x04))
                {
                    _HID = "NTRG0001"
                    HID2 = One
                    BADR = 0x07
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((SDS1 == 0x05))
                {
                    _HID = "NTRG0002"
                    HID2 = One
                    BADR = 0x64
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((SDS1 == 0x06))
                {
                    _HID = "CUST0000"
                    HID2 = TPLH
                    BADR = TPLB
                    If ((TPLS == Zero))
                    {
                        SPED = 0x000186A0
                    }

                    If ((TPLS == One))
                    {
                        SPED = 0x00061A80
                    }

                    If ((TPLS == 0x02))
                    {
                        SPED = 0x000F4240
                    }

                    Return (Zero)
                }
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                If ((Arg0 == TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SDS1 != Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((OSYS < 0x07DC))
                {
                    Return (SBFI)
                }

                If ((SDM1 == Zero))
                {
                    Return (ConcatenateResTemplate (SBFB, SBFG))
                }

                Return (ConcatenateResTemplate (SBFB, SBFI))
            }
        }

        Device (IMP3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "IMPJ0003")  // _HID: Hardware ID
            Name (_CID, "IMPJ0003")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BID == 0x20))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x006E, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (SBUF)
            }
        }
    }

    Scope (_SB.PCI0.SPI1)
    {
        Device (FPNT)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If ((SDS7 == One))
                {
                    Return ("FPC1011")
                }

                If ((SDS7 == 0x02))
                {
                    Return ("FPC1020")
                }

                If ((SDS7 == 0x03))
                {
                    Return ("VFSI6101")
                }

                If ((SDS7 == 0x04))
                {
                    Return ("VFSI7500")
                }

                If ((SDS7 == 0x05))
                {
                    Return ("EGIS0300")
                }

                If ((SDS7 == 0x06))
                {
                    Return ("FPC1021")
                }

                Return ("FPNT_DIS")
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                SHPO (GFPI, One)
                SHPO (GFPS, One)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SDS7 != Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BBUF, ResourceTemplate ()
                {
                    SpiSerialBusV2 (0x0000, PolarityLow, FourWireMode, 0x08,
                        ControllerInitiated, 0x00989680, ClockPolarityLow,
                        ClockPhaseFirst, "\\_SB.PCI0.SPI1",
                        0x00, ResourceConsumer, _Y24, Exclusive,
                        )
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0008
                        }
                })
                Name (IBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y25)
                    {
                        0x00000000,
                    }
                })
                Name (GBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, _Y26,
                        )
                        {   // Pin list
                            0x0000
                        }
                })
                Name (UBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                })
                CreateDWordField (BBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y24._SPE, SPEX)  // _SPE: Speed
                CreateByteField (BBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y24._PHA, PHAX)  // _PHA: Clock Phase
                CreateWordField (BBUF, 0x3B, SPIN)
                CreateWordField (GBUF, 0x17, GPIN)
                CreateDWordField (IBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y25._INT, IPIN)  // _INT: Interrupts
                CreateBitField (IBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y25._LL, ILVL)  // _LL_: Low Level
                CreateBitField (IBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y25._HE, ITRG)  // _HE_: High-Edge
                CreateField (GBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y26._POL, 0x02, GLVL)  // _POL: Polarity
                CreateBitField (GBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y26._MOD, GTRG)  // _MOD: Mode
                CreateBitField (BBUF, \_SB.PCI0.SPI1.FPNT._CRS._Y24._DPL, SCSP)  // _DPL: Device Selection Polarity
                CreateWordField (UBUF, 0x17, UPIN)
                SPIN = GNUM (GFPS)
                GPIN = GNUM (GFPI)
                IPIN = INUM (GFPI)
                UPIN = GNUM (GFPI)
                If (((SDS7 == 0x02) || (SDS7 == 0x06)))
                {
                    ILVL = Zero
                    ITRG = One
                    GLVL = Zero
                    GTRG = One
                }

                If ((SDS7 == 0x04))
                {
                    ILVL = Zero
                    ITRG = One
                }

                Switch (SDS7)
                {
                    Case (One)
                    {
                        SPEX = 0x00989680
                        PHAX = Zero
                    }
                    Case (0x02)
                    {
                        SPEX = 0x002DC6C0
                        PHAX = Zero
                    }
                    Case (0x03)
                    {
                        SPEX = 0x007A1200
                        PHAX = One
                    }
                    Case (0x04)
                    {
                        SPEX = 0x007A1200
                        PHAX = Zero
                    }
                    Case (0x05)
                    {
                        SPEX = 0x00F42400
                        PHAX = Zero
                    }
                    Case (0x06)
                    {
                        SPEX = 0x002DC6C0
                        PHAX = Zero
                    }
                    Default
                    {
                    }

                }

                If ((SDS7 == One))
                {
                    Return (BBUF)
                }

                If (((SDS7 == 0x04) && (SDM7 == Zero)))
                {
                    Return (ConcatenateResTemplate (BBUF, ConcatenateResTemplate (UBUF, GBUF)))
                }

                If (((SDS7 == 0x04) && (SDM7 != Zero)))
                {
                    Return (ConcatenateResTemplate (BBUF, ConcatenateResTemplate (UBUF, IBUF)))
                }

                If ((SDM7 == Zero))
                {
                    Return (ConcatenateResTemplate (BBUF, GBUF))
                }

                Return (ConcatenateResTemplate (BBUF, IBUF))
            }
        }
    }

    Scope (_SB.PCI0.UA00)
    {
        Device (BTH0)
        {
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If ((SDS8 == One))
                {
                    Return ("INT33E1")
                }

                If ((SDS8 == 0x02))
                {
                    Return ("BCM2E40")
                }

                Return ("INT33E1")
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                SHPO (GBTI, One)
                SHPO (GBTW, One)
                SHPO (GBTK, One)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBFG, ResourceTemplate ()
                {
                    UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                        0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                        0x0020, 0x0020, "\\_SB.PCI0.UA00",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveLow, Exclusive, PullDefault, 0x0000,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                })
                CreateWordField (SBFG, 0x8C, INT3)
                CreateWordField (SBFG, 0x3C, WAK3)
                CreateWordField (SBFG, 0x64, KIL3)
                INT3 = GNUM (GBTI)
                WAK3 = GNUM (GBTW)
                KIL3 = GNUM (GBTK)
                Name (SBFI, ResourceTemplate ()
                {
                    UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                        0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                        0x0020, 0x0020, "\\_SB.PCI0.UA00",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    Interrupt (ResourceConsumer, Edge, ActiveLow, Exclusive, ,, _Y27)
                    {
                        0x00000000,
                    }
                })
                CreateDWordField (SBFI, \_SB.PCI0.UA00.BTH0._CRS._Y27._INT, INT4)  // _INT: Interrupts
                CreateWordField (SBFI, 0x3C, WAK4)
                CreateWordField (SBFI, 0x64, KIL4)
                INT4 = INUM (GBTI)
                WAK4 = GNUM (GBTW)
                KIL4 = GNUM (GBTK)
                If ((SDM8 == Zero))
                {
                    Return (SBFG)
                }
                Else
                {
                    Return (SBFI)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((SDS8 != Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GNSS)
        {
            Name (_HID, "INT33A2")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF1, ResourceTemplate ()
                {
                    UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                        0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                        0x0040, 0x0040, "\\_SB.PCI0.UA01",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Name (BUF2, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                })
                CreateWordField (BUF2, 0x17, RPIN)
                RPIN = GNUM (GGNR)
                If ((GNSC == One))
                {
                    Return (ConcatenateResTemplate (BUF1, BUF2))
                }
                Else
                {
                    Return (BUF2)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((GNSC == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GEXP)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_STA, 0x0B)  // _STA: Status
            Method (SGEP, 3, Serialized)
            {
                CSER (GEXN, Arg0, Arg1, Arg2, Zero)
            }

            Method (SGED, 3, Serialized)
            {
                CSER (GEXN, Arg0, Arg1, Arg2, One)
            }

            Method (GEPS, 2, Serialized)
            {
                Return (CSER (GEXN, Arg0, Arg1, Zero, 0x02))
            }

            Method (SGEI, 3, Serialized)
            {
                CSER (GEXN, Arg0, Arg1, Arg2, 0x03)
            }

            Method (INVC, 0, NotSerialized)
            {
                Local0 = Zero
                While ((Local0 < 0x10))
                {
                    If ((R3DC (Zero, Local0, Zero) == 0x02))
                    {
                        W3DC (Zero, Local0, Zero, One)
                    }

                    If ((R3DC (One, Local0, Zero) == 0x02))
                    {
                        W3DC (One, Local0, Zero, One)
                    }

                    Local0 += One
                }
            }

            Name (PPR, 0x08)
            Name (INR, Package (0x03)
            {
                Zero, 
                One, 
                0x02
            })
            Name (OUTR, Package (0x03)
            {
                0x04, 
                0x05, 
                0x06
            })
            Name (CFGR, Package (0x03)
            {
                0x0C, 
                0x0D, 
                0x0E
            })
            Name (POLR, Package (0x03)
            {
                0x08, 
                0x09, 
                0x0A
            })
            Name (EXPA, 0x22)
            Name (UCCH, One)
            Name (END, 0x0200)
            Name (READ, 0x0100)
            Name (CACH, Package (0x02)
            {
                Package (0x10)
                {
                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }
                }, 

                Package (0x10)
                {
                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        One, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }
                }
            })
            Method (W3DC, 4, NotSerialized)
            {
                DerefOf (DerefOf (CACH [Arg0]) [Arg1]) [Arg2] = Arg3
            }

            Method (R3DC, 3, NotSerialized)
            {
                Return (DerefOf (DerefOf (DerefOf (CACH [Arg0]) [Arg1]) [Arg2]))
            }

            Method (WREG, 4, Serialized)
            {
                OperationRegion (BAR0, SystemMemory, Arg0, 0x0208)
                Field (BAR0, DWordAcc, NoLock, Preserve)
                {
                    ICON,   32, 
                    TAR,    32, 
                    Offset (0x10), 
                    DATA,   32, 
                    HCNT,   32, 
                    LCNT,   32, 
                    Offset (0x2C), 
                        ,   5, 
                    ABRT,   1, 
                    Offset (0x40), 
                    RBCK,   32, 
                    Offset (0x54), 
                    CLR,    32, 
                    Offset (0x6C), 
                    ENB,    1, 
                    Offset (0x70), 
                    ACTV,   1, 
                    TFNF,   1, 
                        ,   1, 
                    RFNE,   1, 
                    Offset (0x7C), 
                    HOLD,   32, 
                    Offset (0x9C), 
                    ENSB,   1, 
                    Offset (0x204), 
                    RST,    32
                }

                Local1 = (Timer + 0xC350)
                RST = 0x07
                ENB = Zero
                Local0 = RBCK
                Local0 = CLR
                HOLD = 0x001C001C
                HCNT = 0x0210
                LCNT = 0x0280
                TAR = (EXPA + Arg1)
                ICON = 0x65
                ENB = One
                While ((ENSB != One))
                {
                    If ((Timer > Local1))
                    {
                        Return (Zero)
                    }
                }

                DATA = Arg2
                DATA = (END + Arg3)
                While ((ACTV != Zero))
                {
                    If ((Timer > Local1))
                    {
                        Return (Zero)
                    }
                }

                ENB = Zero
                While ((ENSB != Zero))
                {
                    If ((Timer > Local1))
                    {
                        Return (Zero)
                    }
                }

                W3DC (Arg1, Arg2, One, Arg3)
                If ((R3DC (Arg1, Arg2, Zero) == One))
                {
                    W3DC (Arg1, Arg2, Zero, 0x02)
                }

                Return (Zero)
            }

            Method (RREG, 3, Serialized)
            {
                If ((UCCH == One))
                {
                    If ((R3DC (Arg1, Arg2, Zero) == 0x02))
                    {
                        Return (R3DC (Arg1, Arg2, One))
                    }
                }

                OperationRegion (BAR0, SystemMemory, Arg0, 0x0208)
                Field (BAR0, DWordAcc, NoLock, Preserve)
                {
                    ICON,   32, 
                    TAR,    32, 
                    Offset (0x10), 
                    DATA,   32, 
                    HCNT,   32, 
                    LCNT,   32, 
                    Offset (0x2C), 
                        ,   5, 
                    ABRT,   1, 
                    Offset (0x40), 
                    RBCK,   32, 
                    Offset (0x54), 
                    CLR,    32, 
                    Offset (0x6C), 
                    ENB,    1, 
                    Offset (0x70), 
                    ACTV,   1, 
                    TFNF,   1, 
                        ,   1, 
                    RFNE,   1, 
                    Offset (0x7C), 
                    HOLD,   32, 
                    Offset (0x9C), 
                    ENSB,   1, 
                    Offset (0x204), 
                    RST,    32
                }

                Local1 = (Timer + 0xC350)
                RST = 0x07
                ENB = Zero
                Local0 = RBCK
                Local0 = CLR
                HOLD = 0x001C001C
                HCNT = 0x0210
                LCNT = 0x0280
                TAR = (EXPA + Arg1)
                ICON = 0x65
                ENB = One
                While ((ENSB != One))
                {
                    If ((Timer > Local1))
                    {
                        Return (Zero)
                    }
                }

                DATA = Arg2
                DATA = (END + READ)
                While ((ACTV != Zero))
                {
                    If ((Timer > Local1))
                    {
                        Return (Zero)
                    }
                }

                Local0 = DATA
                ENB = Zero
                While ((ENSB != Zero))
                {
                    If ((Timer > Local1))
                    {
                        Return (Zero)
                    }
                }

                Return (Local0)
            }

            Method (PS0, 1, Serialized)
            {
                OperationRegion (BAR1, SystemMemory, Arg0, 0x88)
                Field (BAR1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x84), 
                    D0D3,   2
                }

                D0D3 = Zero
                Local0 = D0D3
            }

            Method (PS3, 1, Serialized)
            {
                OperationRegion (BAR1, SystemMemory, Arg0, 0x88)
                Field (BAR1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x84), 
                    D0D3,   2
                }

                D0D3 = 0x03
                Local0 = D0D3
            }

            Method (CSER, 5, Serialized)
            {
                Name (SB1X, Zero)
                Name (SB0X, Zero)
                Name (SMDX, Zero)
                Name (PINN, Zero)
                Name (REGN, Zero)
                Name (REGA, Zero)
                Name (OLDV, Zero)
                Name (NEWV, Zero)
                Name (RETV, Zero)
                If ((Arg0 > 0x05))
                {
                    Return (Zero)
                }

                If ((Arg0 == Zero))
                {
                    SB1X = SB10
                    SB0X = SB00
                    SMDX = SMD0
                }

                If ((Arg0 == One))
                {
                    SB1X = SB11
                    SB0X = SB01
                    SMDX = SMD1
                }

                If ((Arg0 == 0x02))
                {
                    SB1X = SB12
                    SB0X = SB02
                    SMDX = SMD2
                }

                If ((Arg0 == 0x03))
                {
                    SB1X = SB13
                    SB0X = SB03
                    SMDX = SMD3
                }

                If ((Arg0 == 0x04))
                {
                    SB1X = SB14
                    SB0X = SB04
                    SMDX = SMD4
                }

                If ((Arg0 == 0x05))
                {
                    SB1X = SB15
                    SB0X = SB05
                    SMDX = SMD5
                }

                If ((Arg0 > 0x05))
                {
                    Return (Zero)
                }

                If ((Arg1 > One))
                {
                    Return (Zero)
                }

                If ((Arg2 > 0x17))
                {
                    Return (Zero)
                }

                If ((Arg3 > One))
                {
                    Return (Zero)
                }

                If ((Arg4 > 0x02))
                {
                    Return (Zero)
                }

                If ((SMDX != 0x03))
                {
                    Return (Zero)
                }

                If ((Arg4 == Zero))
                {
                    Local0 = OUTR
                }

                If ((Arg4 == One))
                {
                    Local0 = CFGR
                }

                If ((Arg4 == 0x02))
                {
                    Local0 = INR
                }

                If ((Arg4 == 0x03))
                {
                    Local0 = POLR
                }

                PS0 (SB1X)
                Divide (Arg2, PPR, PINN, REGN)
                REGA = DerefOf (Local0 [REGN])
                OLDV = RREG (SB0X, Arg1, REGA)
                If ((Arg4 == 0x02))
                {
                    RETV = (One & (OLDV >> PINN))
                }
                Else
                {
                    NEWV = (OLDV & ~(One << PINN))
                    NEWV |= (Arg3 << PINN)
                    If ((NEWV != OLDV))
                    {
                        WREG (SB0X, Arg1, REGA, NEWV)
                    }
                }

                PS3 (SB1X)
                Return (RETV)
            }
        }
    }

    Method (PKG1, 1, Serialized)
    {
        Name (PKG, Package (0x01)
        {
            Zero
        })
        PKG [Zero] = Arg0
        Return (PKG)
    }

    Method (PKG3, 3, Serialized)
    {
        Name (PKG, Package (0x03)
        {
            Zero, 
            Zero, 
            Zero
        })
        PKG [Zero] = Arg0
        PKG [One] = Arg1
        PKG [0x02] = Arg2
        Return (PKG)
    }

    If (USTP)
    {
        Scope (_SB.PCI0.I2C1)
        {
            Method (SSCN, 0, NotSerialized)
            {
                Return (PKG3 (SSHI, SSLI, SSDI))
            }

            Method (FMCN, 0, NotSerialized)
            {
                Return (PKG3 (FMHI, FMLI, FMDI))
            }

            Method (FPCN, 0, NotSerialized)
            {
                Return (PKG3 (FPHI, FPLI, FPDI))
            }

            Method (M0D3, 0, NotSerialized)
            {
                Return (PKG1 (M0CI))
            }

            Method (M1D3, 0, NotSerialized)
            {
                Return (PKG1 (M1CI))
            }
        }

        Scope (_SB.PCI0.SPI1)
        {
            Method (M0D3, 0, NotSerialized)
            {
                Return (PKG1 (M0CS))
            }

            Method (M1D3, 0, NotSerialized)
            {
                Return (PKG1 (M1CS))
            }
        }

        Scope (_SB.PCI0.UA01)
        {
            Method (M0D3, 0, NotSerialized)
            {
                Return (PKG1 (M0CU))
            }

            Method (M1D3, 0, NotSerialized)
            {
                Return (PKG1 (M1CU))
            }
        }
    }

    If ((PCHV () == SPTL))
    {
        Scope (_SB.PCI0)
        {
            Device (PEMC)
            {
                Name (_ADR, 0x001E0004)  // _ADR: Address
                OperationRegion (SCSR, PCI_Config, Zero, 0x0100)
                Field (SCSR, WordAcc, NoLock, Preserve)
                {
                    Offset (0x84), 
                    PSTA,   32, 
                    Offset (0xA2), 
                        ,   2, 
                    PGEN,   1
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    PGEN = Zero
                    PCRA (0xC0, 0x0600, 0x7FFFFFBA)
                    Sleep (0x02)
                    PCRO (0xC0, 0x0600, 0x80000045)
                    PSTA &= 0xFFFFFFFC
                    Local0 = PSTA
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    PGEN = One
                    PSTA |= 0x03
                    Local0 = PSTA
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    ADBG (Concatenate ("EMH4=", ToDecimalString (EMH4)))
                    If ((Arg0 == ToUUID ("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61")))
                    {
                        If ((Arg1 == Zero))
                        {
                            Switch (Arg2)
                            {
                                Case (Zero)
                                {
                                    If ((EMH4 == One))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x61                                           
                                        })
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x21                                           
                                    })
                                }
                                Case (0x05)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                           
                                    })
                                }
                                Case (0x06)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x05                                           
                                    })
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Device (CARD)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }

            Device (PSDC)
            {
                Name (_ADR, 0x001E0006)  // _ADR: Address
                OperationRegion (SCSR, PCI_Config, Zero, 0x0100)
                Field (SCSR, WordAcc, NoLock, Preserve)
                {
                    Offset (0x84), 
                    PSTA,   32, 
                    Offset (0xA2), 
                        ,   2, 
                    PGEN,   1
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    PGEN = Zero
                    PCRA (0xC0, 0x0600, 0xFFFFFE7A)
                    Sleep (0x02)
                    PCRO (0xC0, 0x0600, 0x0185)
                    PSTA &= 0xFFFFFFFC
                    Local0 = PSTA
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    PGEN = One
                    PSTA |= 0x03
                    Local0 = PSTA
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    If ((Arg0 == ToUUID ("f6c13ea5-65cd-461f-ab7a-29f7e8d5bd61")))
                    {
                        If ((Arg1 == Zero))
                        {
                            Switch (Arg2)
                            {
                                Case (Zero)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x19                                           
                                    })
                                }
                                Case (0x03)
                                {
                                    Sleep (0x64)
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }
                                Case (0x04)
                                {
                                    Sleep (0x64)
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                           
                            })
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                Device (CARD)
                {
                    Name (_ADR, 0x08)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (ISHD)
        {
            Name (_ADR, 0x00130000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (HECI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (ECAV, Zero)
            Mutex (LFCM, 0x00)
            Method (_GPE, 0, NotSerialized)  // _GPE: General Purpose Events
            {
                Local0 = GGPE (0x01060002)
                Return (Local0)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BFFR, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0062,             // Range Minimum
                        0x0062,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0066,             // Range Minimum
                        0x0066,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                })
                Return (BFFR)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
            Field (ERAM, ByteAcc, Lock, Preserve)
            {
                VCMD,   8
            }

            OperationRegion (EMMP, SystemMemory, 0xFF00D400, 0xFF)
            Field (ERAM, ByteAcc, Lock, Preserve)
            {
                Offset (0x01), 
                VDAT,   8, 
                VSTA,   8, 
                Offset (0x06), 
                FANS,   8, 
                BUSG,   1, 
                BLEG,   1, 
                BATF,   1, 
                BNSM,   1, 
                BTST,   1, 
                BBAD,   1, 
                AUTO,   1, 
                FCHG,   1, 
                ABTL,   8, 
                DBTL,   8, 
                EDCC,   1, 
                ALSC,   1, 
                CDMB,   1, 
                CCSB,   1, 
                BTSM,   1, 
                BTCM,   1, 
                LBTM,   1, 
                CSBM,   1, 
                SGST,   1, 
                HDMI,   1, 
                HYBD,   1, 
                SWST,   1, 
                EVNT,   1, 
                DCRF,   1, 
                COLR,   1, 
                SGCN,   1, 
                ODPO,   1, 
                EODD,   1, 
                ODPK,   1, 
                CMEX,   1, 
                CMON,   1, 
                SODD,   1, 
                ODFB,   1, 
                EODS,   1, 
                RTMP,   8, 
                VTMP,   8, 
                AFCC,   8, 
                PINF,   3, 
                SUPR,   1, 
                GTMP,   1, 
                QUIT,   1, 
                LS35,   1, 
                Offset (0x11), 
                RMBT,   1, 
                RSBT,   1, 
                VTYP,   2, 
                Offset (0x12), 
                FUSL,   8, 
                FUSH,   8, 
                FWBT,   64, 
                Offset (0x31), 
                GIRT,   8, 
                PIRT,   8, 
                KIRT,   8, 
                IRTI,   8, 
                Offset (0x36), 
                DGPU,   8, 
                GUST,   8, 
                GDST,   8, 
                Offset (0x43), 
                ECTP,   8, 
                Offset (0x4A), 
                ESMC,   1, 
                Offset (0x4B), 
                EMOD,   8, 
                BFUD,   16, 
                Offset (0x5D), 
                EXSI,   8, 
                EXSB,   8, 
                EXND,   8, 
                SMPR,   8, 
                SMST,   8, 
                SMAD,   8, 
                SMCM,   8, 
                SMDA,   256, 
                BCNT,   8, 
                SMAA,   8, 
                SAD0,   8, 
                SAD1,   8, 
                Offset (0x8A), 
                KBLO,   1, 
                UCHE,   1, 
                KLCH,   1, 
                    ,   1, 
                KLFS,   1, 
                KLOR,   1, 
                UCHR,   1, 
                UCER,   1, 
                TPDV,   3, 
                Offset (0x8C), 
                ECHG,   1, 
                Offset (0x8F), 
                BMN0,   72, 
                BDN0,   64, 
                IBTL,   1, 
                IBCL,   1, 
                ISS0,   1, 
                IRTC,   1, 
                ISUP,   1, 
                ISC2,   1, 
                IWAK,   1, 
                Offset (0xA1), 
                    ,   1, 
                VOUT,   1, 
                TPAD,   1, 
                HKDB,   1, 
                Offset (0xA2), 
                Offset (0xA3), 
                OSTY,   3, 
                    ,   1, 
                ADPI,   2, 
                    ,   1, 
                ADPT,   1, 
                PMEW,   1, 
                MODW,   1, 
                LANW,   1, 
                RTCW,   1, 
                WLAW,   1, 
                USBW,   1, 
                KEYW,   1, 
                TPWK,   1, 
                CHCR,   1, 
                ADPP,   1, 
                LERN,   1, 
                ACMD,   1, 
                BOVP,   1, 
                LEAK,   1, 
                AIRP,   1, 
                ACOF,   1, 
                S3EN,   1, 
                S3RS,   1, 
                S4EN,   1, 
                S4RS,   1, 
                S5EN,   1, 
                S5RS,   1, 
                Offset (0xA7), 
                OSTT,   8, 
                OSST,   8, 
                THRT,   8, 
                TCOT,   8, 
                MODE,   1, 
                    ,   2, 
                INIT,   1, 
                FAN1,   1, 
                FAN2,   1, 
                FAOK,   1, 
                SKIN,   1, 
                SDTE,   8, 
                SPDN,   4, 
                FNUM,   4, 
                TLVL,   4, 
                    ,   2, 
                THSW,   1, 
                TPIN,   1, 
                TSTH,   1, 
                TSCP,   1, 
                    ,   2, 
                PLVL,   4, 
                CPUT,   8, 
                CPTL,   8, 
                Offset (0xB7), 
                    ,   1, 
                PWDB,   1, 
                DIGT,   1, 
                CDLK,   1, 
                Offset (0xB8), 
                    ,   1, 
                LSTE,   1, 
                PMEE,   1, 
                PWBE,   1, 
                RNGE,   1, 
                BTWE,   1, 
                Offset (0xB9), 
                LCBV,   8, 
                AOAC,   1, 
                S35F,   1, 
                IFFS,   1, 
                INS0,   1, 
                ISBL,   1, 
                ISOV,   1, 
                    ,   1, 
                ISRT,   1, 
                WLAN,   1, 
                BLUE,   1, 
                WEXT,   1, 
                BEXT,   1, 
                KILL,   1, 
                WLOK,   1, 
                EN3G,   1, 
                EX3G,   1, 
                KPID,   8, 
                CTYP,   3, 
                CORE,   3, 
                GATY,   2, 
                BA1P,   1, 
                BA2P,   1, 
                    ,   2, 
                B1CH,   1, 
                B2CH,   1, 
                Offset (0xBF), 
                PBY1,   1, 
                PBY2,   1, 
                    ,   2, 
                SMB1,   1, 
                SMB2,   1, 
                Offset (0xC0), 
                B1TY,   1, 
                B1MD,   1, 
                B1LW,   1, 
                    ,   1, 
                B1MF,   3, 
                Offset (0xC1), 
                B1ST,   8, 
                B1RC,   16, 
                B1SN,   16, 
                B1FV,   16, 
                B1DV,   16, 
                B1DC,   16, 
                B1FC,   16, 
                B1GS,   8, 
                B1CT,   8, 
                B1CR,   16, 
                B1AC,   16, 
                B1PC,   8, 
                B1VL,   8, 
                B1TM,   8, 
                B1AT,   8, 
                B1CC,   16, 
                B1TC,   8, 
                B1CI,   8, 
                B1CU,   8, 
                B1CA,   8, 
                B1SM,   16, 
                B1VC,   8, 
                B1FA,   8, 
                B1VA,   8, 
                B1C1,   16, 
                B1C2,   16, 
                B1C3,   16, 
                B1C4,   16, 
                Offset (0xF0), 
                B1EX,   1, 
                B1FL,   1, 
                B1EP,   1, 
                B1FI,   1, 
                    ,   2, 
                B1RE,   1, 
                Offset (0xF1), 
                B1LL,   1, 
                B1CE,   1, 
                B1SE,   1, 
                B1S5,   1, 
                B1SR,   1, 
                B1SC,   1, 
                Offset (0xF2), 
                B1TO,   1, 
                B1BC,   1, 
                B1CF,   1, 
                B1CS,   1, 
                B1SG,   1, 
                B1SU,   1, 
                B1OV,   1, 
                B1OT,   1, 
                B1TT,   1, 
                B1SA,   1, 
                B1SS,   1, 
                    ,   1, 
                B1SF,   1, 
                B1WN,   1, 
                Offset (0xF4), 
                B1DA,   16, 
                Offset (0xF8), 
                B1CN,   8, 
                Offset (0xFB), 
                Offset (0xFE), 
                FA2S,   8
            }

            OperationRegion (ECMS, SystemIO, 0x72, 0x02)
            Field (ECMS, ByteAcc, Lock, Preserve)
            {
                INDX,   8, 
                DATA,   8
            }

            Method (RECM, 1, Serialized)
            {
                INDX = Arg0
                Return (DATA)
            }

            Method (WECM, 2, Serialized)
            {
                INDX = Arg0
                DATA = Arg1
            }

            OperationRegion (CMDE, SystemIO, 0x68, 0x05)
            Field (CMDE, ByteAcc, Lock, Preserve)
            {
                EC68,   8, 
                Offset (0x02), 
                Offset (0x03), 
                Offset (0x04), 
                EC6C,   8
            }

            Method (WIBE, 0, Serialized)
            {
                Local0 = 0x00010000
                While (Local0)
                {
                    Local1 = EC6C
                    If (((Local1 & 0x02) == Zero))
                    {
                        Return (Zero)
                    }

                    Stall (0x0A)
                    Local0--
                }

                Return (One)
            }

            Method (WOBF, 0, Serialized)
            {
                Local0 = 0x00010000
                While (Local0)
                {
                    Local1 = EC6C
                    If (((Local1 & One) == One))
                    {
                        Return (Zero)
                    }

                    Stall (0x0A)
                    Local0--
                }

                Return (One)
            }

            Method (WOBE, 0, Serialized)
            {
                Local0 = 0x00010000
                While (Local0)
                {
                    Local1 = EC6C
                    If (((Local1 & One) == One))
                    {
                        Local2 = EC68
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Stall (0x0A)
                    Local0--
                }

                Return (One)
            }

            Method (LCMD, 2, Serialized)
            {
                Name (LBUF, Buffer (0x1E)
                {
                     0x00                                           
                })
                If ((WIBE () == One))
                {
                    Return (One)
                }

                If ((WOBE () == One))
                {
                    Return (One)
                }

                EC6C = Arg0
                If ((WIBE () == One))
                {
                    Return (One)
                }

                If (((Arg1 != Zero) && (Arg1 != 0xFF)))
                {
                    EC68 = Arg1
                    If ((WIBE () == One))
                    {
                        Return (One)
                    }
                }

                If ((WOBF () == One))
                {
                    Return (One)
                }

                Local0 = EC68
                Local1 = Zero
                While (Local0)
                {
                    If ((WOBF () == One))
                    {
                        Return (One)
                    }

                    LBUF [Local1] = EC68
                    Local1++
                    Local0--
                }

                Return (LBUF)
            }

            Method (LRAM, 2, Serialized)
            {
                If ((WIBE () == One))
                {
                    Return (One)
                }

                If ((WOBE () == One))
                {
                    Return (One)
                }

                EC6C = 0x7E
                If ((WIBE () == One))
                {
                    Return (One)
                }

                EC68 = Arg0
                If ((WIBE () == One))
                {
                    Return (One)
                }

                EC68 = Arg1
                If ((WIBE () == One))
                {
                    Return (One)
                }

                If ((WOBF () == One))
                {
                    Return (One)
                }

                Return (EC68)
            }

            Device (BAT0)
            {
                Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                {
                    _SB
                })
                Name (PBIF, Package (0x0D)
                {
                    Zero, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    One, 
                    0xFFFFFFFF, 
                    Zero, 
                    Zero, 
                    0x64, 
                    Zero, 
                    "LCFC", 
                    "BAT20101001", 
                    "LiP", 
                    "LENOVO"
                })
                Name (PBST, Package (0x04)
                {
                    One, 
                    0x0A90, 
                    0x1000, 
                    0x2A30
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((ECON == One))
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            Local0 = BA1P
                            Release (LFCM)
                        }

                        If ((Local0 & One))
                        {
                            Return (0x1F)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                    Else
                    {
                        Return (0x1F)
                    }

                    Return (Zero)
                }

                Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                {
                    If ((ECON == One))
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            Local0 = B1DC
                            Local0 *= 0x0A
                            PBIF [One] = Local0
                            Local0 = B1FC
                            Local0 *= 0x0A
                            PBIF [0x02] = Local0
                            PBIF [0x04] = B1DV
                            If (B1FC)
                            {
                                PBIF [0x05] = ((B1FC * 0x0A) / 0x0A)
                                PBIF [0x06] = ((B1FC * 0x0A) / 0x19)
                                PBIF [0x07] = ((B1DC * 0x0A) / 0x64)
                            }

                            PBIF [0x09] = ""
                            PBIF [0x0A] = ""
                            PBIF [0x0B] = ""
                            PBIF [0x0C] = ""
                            Name (BDNT, Buffer (0x09)
                            {
                                 0x00                                           
                            })
                            BDNT = BDN0
                            PBIF [0x09] = ToString (BDNT, Ones)
                            Local0 = B1SN
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Local2 = 0x04
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                SERN [Local2] = (Local1 + 0x30)
                                Local2--
                            }

                            PBIF [0x0A] = SERN
                            Name (DCH0, Buffer (0x0A)
                            {
                                 0x00                                           
                            })
                            Name (DCH1, "LION")
                            Name (DCH2, "LiP")
                            If ((B1TY == One))
                            {
                                DCH0 = DCH1
                                PBIF [0x0B] = ToString (DCH0, Ones)
                            }
                            Else
                            {
                                DCH0 = DCH2
                                PBIF [0x0B] = ToString (DCH0, Ones)
                            }

                            Name (BMNT, Buffer (0x0A)
                            {
                                 0x00                                           
                            })
                            BMNT = BMN0
                            PBIF [0x0C] = ToString (BMNT, Ones)
                            Release (LFCM)
                        }
                    }

                    Return (PBIF)
                }

                Name (OBST, Zero)
                Name (OBAC, Zero)
                Name (OBPR, Zero)
                Name (OBRC, Zero)
                Name (OBPV, Zero)
                Method (_BST, 0, Serialized)  // _BST: Battery Status
                {
                    If ((ECON == One))
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            Local0 = B1ST
                            While ((B1ST != Local0))
                            {
                                Local0 = B1ST
                            }

                            Local1 = DerefOf (PBST [Zero])
                            Switch ((Local0 & 0x07))
                            {
                                Case (Zero)
                                {
                                    OBST = (Local1 & 0xF8)
                                }
                                Case (One)
                                {
                                    OBST = (One | (Local1 & 0xF8))
                                }
                                Case (0x02)
                                {
                                    OBST = (0x02 | (Local1 & 0xF8))
                                }
                                Case (0x04)
                                {
                                    OBST = (0x04 | (Local1 & 0xF8))
                                }

                            }

                            OBAC = B1AC
                            While ((B1AC != OBAC))
                            {
                                OBAC = B1AC
                            }

                            If ((OBST & One))
                            {
                                If ((OBAC != Zero))
                                {
                                    OBAC = (~OBAC & 0x7FFF)
                                }
                            }

                            OBRC = B1RC
                            OBPV = B1FV
                            While (((B1RC != OBRC) || (B1FV != OBPV)))
                            {
                                OBRC = B1RC
                                OBPV = B1FV
                            }

                            OBRC *= 0x0A
                            OBPR = ((OBAC * OBPV) / 0x03E8)
                            PBST [Zero] = OBST
                            PBST [One] = OBPR
                            PBST [0x02] = OBRC
                            PBST [0x03] = OBPV
                            Release (LFCM)
                        }
                    }

                    Return (PBST)
                }
            }

            Scope (\_SB.PCI0.LPCB.EC0)
            {
                Device (VPC0)
                {
                    Name (_HID, "VPC2004")  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (_VPC, 0x5C0DE516)
                    Name (VPCD, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CFG, 0, NotSerialized)
                    {
                        Local0 = _VPC
                        Local0 &= 0xFFFAFFFF
                        If ((BEXT == One))
                        {
                            Local0 |= 0x00010000
                        }

                        If ((WEXT == One))
                        {
                            Local0 |= 0x00040000
                        }

                        _VPC = Local0
                        Return (_VPC)
                    }

                    Method (VPCR, 1, Serialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            If ((Arg0 == One))
                            {
                                VPCD = VCMD
                            }
                            Else
                            {
                                VPCD = VDAT
                            }

                            Release (LFCM)
                        }

                        Return (VPCD)
                    }

                    Method (VPCW, 2, Serialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            If ((Arg0 == One))
                            {
                                VCMD = Arg1
                            }
                            Else
                            {
                                VDAT = Arg1
                            }

                            Release (LFCM)
                        }

                        Return (Zero)
                    }

                    Method (SVCR, 1, Serialized)
                    {
                    }

                    Method (HALS, 0, NotSerialized)
                    {
                        Local0 = Zero
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            Local0 |= 0x10
                            If ((One == KBLO))
                            {
                                Local0 |= 0x20
                            }

                            Local0 |= 0x40
                            If ((One == UCHE))
                            {
                                Local0 |= 0x80
                            }

                            Local0 |= 0x0200
                            If (!HKDB)
                            {
                                Local0 |= 0x0400
                            }

                            Local0 |= 0x0800
                            Release (LFCM)
                        }

                        Return (Local0)
                    }

                    Method (SALS, 1, Serialized)
                    {
                        Local0 = ToInteger (Arg0)
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            If ((Local0 == 0x08))
                            {
                                KBLO = One
                                KLCH = One
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Local0 == 0x09))
                            {
                                KBLO = Zero
                                KLCH = One
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Local0 == 0x0A))
                            {
                                UCHE = One
                                SMID = 0x32
                                SMIC = 0xCA
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Local0 == 0x0B))
                            {
                                UCHE = Zero
                                SMID = 0x33
                                SMIC = 0xCA
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Local0 == 0x0E))
                            {
                                HKDB = Zero
                                SMID = 0x30
                                SMIC = 0xCA
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Local0 == 0x0F))
                            {
                                HKDB = One
                                SMID = 0x31
                                SMIC = 0xCA
                                Release (LFCM)
                                Return (Zero)
                            }

                            Release (LFCM)
                        }

                        Return (Zero)
                    }

                    Method (GBMD, 0, NotSerialized)
                    {
                        Local0 = 0x10000000
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            If ((One == CDMB))
                            {
                                Local0 |= One
                            }

                            If ((One == ECHG))
                            {
                                Local0 |= 0x04
                            }

                            If ((One == BBAD))
                            {
                                Local0 |= 0x08
                            }

                            If ((One == BTSM))
                            {
                                Local0 |= 0x20
                            }

                            If ((One == BLEG))
                            {
                                Local0 |= 0x80
                            }

                            If ((One == BATF))
                            {
                                Local0 |= 0x0100
                            }

                            If ((Zero == BTSM))
                            {
                                Local0 |= 0x0200
                            }

                            If ((One == BUSG))
                            {
                                Local0 |= 0x0800
                            }

                            If ((Zero == ADPI))
                            {
                                Local0 &= 0xFFFE7FFF
                            }

                            If ((One == ADPI))
                            {
                                Local0 |= 0x8000
                            }

                            If ((0x02 == ADPI))
                            {
                                Local0 |= 0x00010000
                            }

                            Local0 |= 0x00020000
                            Local0 |= 0x00040000
                            Local0 |= 0x00080000
                            If ((One == ESMC))
                            {
                                Local0 |= 0x00400000
                            }

                            Release (LFCM)
                        }

                        Return (Local0)
                    }

                    Name (VBST, Zero)
                    Name (VBAC, Zero)
                    Name (VBPR, Zero)
                    Name (VBRC, Zero)
                    Name (VBPV, Zero)
                    Name (VBFC, Zero)
                    Name (VBCT, Zero)
                    Method (SMTF, 1, NotSerialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            If ((Arg0 == Zero))
                            {
                                If ((B1FV == Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                If ((B1AC == Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                Local0 = B1FC
                                Local0 *= 0x0A
                                VBFC = Local0
                                Local1 = B1RC
                                Local1 *= 0x0A
                                VBRC = Local1
                                If ((VBFC > VBRC))
                                {
                                    VBPV = B1FV
                                    VBAC = B1AC
                                    Local0 -= Local1
                                    Local1 = (VBAC * VBPV)
                                    Local3 = (Local0 * 0x03E8)
                                    Local3 = (Local3 * 0x3C)
                                    VBCT = (Local3 / Local1)
                                    Release (LFCM)
                                    Return (VBCT)
                                }
                                Else
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }
                            }

                            If ((Arg0 == One))
                            {
                                Release (LFCM)
                                Return (0xFFFF)
                            }

                            Release (LFCM)
                        }

                        Return (0xFFFF)
                    }

                    Name (QBST, Zero)
                    Name (QBAC, Zero)
                    Name (QBPR, Zero)
                    Name (QBRC, Zero)
                    Name (QBPV, Zero)
                    Name (QBFC, Zero)
                    Name (QBCT, Zero)
                    Method (SMTE, 1, NotSerialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            If ((Arg0 == Zero))
                            {
                                If ((B1FV == Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                If ((B1AC == Zero))
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }

                                Local0 = B1RC
                                Local0 *= 0x0A
                                QBRC = Local0
                                Local1 = B1FC
                                Local1 *= 0x0A
                                QBFC = Local1
                                If ((QBFC > QBRC))
                                {
                                    QBPV = B1FV
                                    If (((B1AC & 0x8000) == Zero))
                                    {
                                        QBAC = B1AC
                                    }
                                    Else
                                    {
                                        QBAC = (0xFFFF - B1AC)
                                    }

                                    Local1 = (QBAC * QBPV)
                                    Local3 = (Local0 * 0x03E8)
                                    Local3 = (Local3 * 0x3C)
                                    QBCT = (Local3 / Local1)
                                    Release (LFCM)
                                    Return (QBCT)
                                }
                                Else
                                {
                                    Release (LFCM)
                                    Return (0xFFFF)
                                }
                            }

                            If ((Arg0 == One))
                            {
                                Release (LFCM)
                                Return (0xFFFF)
                            }

                            Release (LFCM)
                        }

                        Return (0xFFFF)
                    }

                    Method (SBMC, 1, NotSerialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            If ((Arg0 == Zero))
                            {
                                CDMB = Zero
                                EDCC = One
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Arg0 == One))
                            {
                                CDMB = One
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Arg0 == 0x03))
                            {
                                BTSM = One
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Arg0 == 0x05))
                            {
                                BTSM = Zero
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Arg0 == 0x07))
                            {
                                ECHG = One
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Arg0 == 0x08))
                            {
                                ECHG = Zero
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Arg0 == 0x09))
                            {
                                ESMC = One
                                Release (LFCM)
                                Return (Zero)
                            }

                            If ((Arg0 == 0x10))
                            {
                                ESMC = Zero
                                Release (LFCM)
                                Return (Zero)
                            }

                            Release (LFCM)
                        }

                        Return (Zero)
                    }

                    Method (MHCF, 1, NotSerialized)
                    {
                        P80H = 0x78
                        Local0 = Arg0
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            Local0 &= 0x20
                            Local0 >>= 0x05
                            RMBT = Local0
                            Sleep (0x14)
                            Release (LFCM)
                        }

                        Return (Local0)
                    }

                    Method (MHPF, 1, NotSerialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            Name (BFWB, Buffer (0x25){})
                            CreateByteField (BFWB, Zero, FB0)
                            CreateByteField (BFWB, One, FB1)
                            CreateByteField (BFWB, 0x02, FB2)
                            CreateByteField (BFWB, 0x03, FB3)
                            CreateField (BFWB, 0x20, 0x0100, FB4)
                            CreateByteField (BFWB, 0x24, FB5)
                            If ((SizeOf (Arg0) <= 0x25))
                            {
                                If ((SMPR != Zero))
                                {
                                    FB1 = SMST
                                }
                                Else
                                {
                                    BFWB = Arg0
                                    SMAD = FB2
                                    SMCM = FB3
                                    BCNT = FB5
                                    Local0 = FB0
                                    If (((Local0 & One) == Zero))
                                    {
                                        SMDA = FB4
                                    }

                                    SMST = Zero
                                    SMPR = FB0
                                    Local1 = 0x03E8
                                    While (Local1)
                                    {
                                        Sleep (One)
                                        Local1--
                                        If (((SMST && 0x80) || (SMPR == Zero)))
                                        {
                                            Break
                                        }
                                    }

                                    Local0 = FB0
                                    If (((Local0 & One) != Zero))
                                    {
                                        FB4 = SMDA
                                    }

                                    FB1 = SMST
                                    If (((Local1 == Zero) || !(SMST && 0x80)))
                                    {
                                        SMPR = Zero
                                        FB1 = 0x92
                                    }
                                }

                                Release (LFCM)
                                Return (BFWB)
                            }

                            Release (LFCM)
                        }
                    }

                    Method (MHIF, 1, NotSerialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            P80H = 0x50
                            If ((Arg0 == Zero))
                            {
                                Name (RETB, Buffer (0x0A){})
                                Name (BUF1, Buffer (0x08){})
                                BUF1 = FWBT
                                CreateByteField (BUF1, Zero, FW0)
                                CreateByteField (BUF1, One, FW1)
                                CreateByteField (BUF1, 0x02, FW2)
                                CreateByteField (BUF1, 0x03, FW3)
                                CreateByteField (BUF1, 0x04, FW4)
                                CreateByteField (BUF1, 0x05, FW5)
                                CreateByteField (BUF1, 0x06, FW6)
                                CreateByteField (BUF1, 0x07, FW7)
                                RETB [Zero] = FUSL
                                RETB [One] = FUSH
                                RETB [0x02] = FW0
                                RETB [0x03] = FW1
                                RETB [0x04] = FW2
                                RETB [0x05] = FW3
                                RETB [0x06] = FW4
                                RETB [0x07] = FW5
                                RETB [0x08] = FW6
                                RETB [0x09] = FW7
                                Release (LFCM)
                                Return (RETB)
                            }

                            Release (LFCM)
                        }
                    }

                    Method (GSBI, 1, NotSerialized)
                    {
                        Name (BIFB, Buffer (0x53)
                        {
                            /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0018 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0028 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0030 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0038 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0040 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0048 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                            /* 0050 */  0xFF, 0xFF, 0xFF                               
                        })
                        CreateWordField (BIFB, Zero, DCAP)
                        CreateWordField (BIFB, 0x02, FCAP)
                        CreateWordField (BIFB, 0x04, RCAP)
                        CreateWordField (BIFB, 0x06, ATTE)
                        CreateWordField (BIFB, 0x08, ATTF)
                        CreateWordField (BIFB, 0x0A, BTVT)
                        CreateWordField (BIFB, 0x0C, BTCT)
                        CreateWordField (BIFB, 0x0E, BTMP)
                        CreateWordField (BIFB, 0x10, MDAT)
                        CreateWordField (BIFB, 0x12, FUDT)
                        CreateWordField (BIFB, 0x14, DVLT)
                        CreateField (BIFB, 0xB0, 0x50, DCHE)
                        CreateField (BIFB, 0x0100, 0x40, DNAM)
                        CreateField (BIFB, 0x0140, 0x60, MNAM)
                        CreateField (BIFB, 0x01A0, 0xB8, BRNB)
                        CreateQWordField (BIFB, 0x4B, BFW0)
                        If (((Arg0 == Zero) || (Arg0 == One)))
                        {
                            If ((ECON == One))
                            {
                                If ((Acquire (LFCM, 0xA000) == Zero))
                                {
                                    Local0 = B1DC
                                    Local0 *= 0x0A
                                    DCAP = Local0
                                    Local0 = B1FC
                                    Local0 *= 0x0A
                                    FCAP = Local0
                                    Local0 = B1RC
                                    Local0 *= 0x0A
                                    RCAP = Local0
                                    ATTE = SMTE (Zero)
                                    ATTF = SMTF (Zero)
                                    BTVT = B1FV
                                    BTCT = B1AC
                                    Local0 = B1AT
                                    Local0 += 0x0111
                                    Local0 *= 0x0A
                                    BTMP = Local0
                                    MDAT = B1DA
                                    If ((BFUD != Zero))
                                    {
                                        FUDT = BFUD
                                    }

                                    DVLT = B1DV
                                    Name (DCH0, Buffer (0x0A)
                                    {
                                         0x00                                           
                                    })
                                    Name (DCH1, "LION")
                                    Name (DCH2, "LiP")
                                    If ((B1TY == One))
                                    {
                                        DCH0 = DCH1
                                        DCHE = DCH0
                                    }
                                    Else
                                    {
                                        DCH0 = DCH2
                                        DCHE = DCH0
                                    }

                                    Name (BDNT, Buffer (0x08)
                                    {
                                         0x00                                           
                                    })
                                    BDNT = BDN0
                                    DNAM = BDNT
                                    Name (BMNT, Buffer (0x0C)
                                    {
                                         0x00                                           
                                    })
                                    BMNT = BMN0
                                    MNAM = BMNT
                                    Name (BRN0, Buffer (0x17)
                                    {
                                         0x00                                           
                                    })
                                    Local1 = 0x17
                                    Local2 = 0x29
                                    While (Local1)
                                    {
                                        BRN0 [(0x17 - Local1)] = LRAM (0x03, Local2)
                                        Local2++
                                        Local1--
                                    }

                                    BRNB = BRN0
                                    BFW0 = FWBT
                                    Release (LFCM)
                                }
                            }

                            Return (BIFB)
                        }

                        If ((Arg0 == 0x02))
                        {
                            Return (BIFB)
                        }

                        Return (Zero)
                    }

                    Method (HODD, 0, NotSerialized)
                    {
                    }

                    Method (SODD, 1, Serialized)
                    {
                    }

                    Method (GBID, 0, Serialized)
                    {
                        Name (GBUF, Package (0x04)
                        {
                            Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            }, 

                            Buffer (0x02)
                            {
                                 0x00, 0x00                                     
                            }, 

                            Buffer (0x08)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            }, 

                            Buffer (0x08)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                            }
                        })
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            DerefOf (GBUF [Zero]) [Zero] = B1CT
                            DerefOf (GBUF [One]) [Zero] = Zero
                            Name (BUF1, Buffer (0x08){})
                            BUF1 = FWBT
                            CreateByteField (BUF1, Zero, FW0)
                            CreateByteField (BUF1, One, FW1)
                            CreateByteField (BUF1, 0x02, FW2)
                            CreateByteField (BUF1, 0x03, FW3)
                            CreateByteField (BUF1, 0x04, FW4)
                            CreateByteField (BUF1, 0x05, FW5)
                            CreateByteField (BUF1, 0x06, FW6)
                            CreateByteField (BUF1, 0x07, FW7)
                            DerefOf (GBUF [0x02]) [Zero] = FW0
                            DerefOf (GBUF [0x02]) [One] = FW1
                            DerefOf (GBUF [0x02]) [0x02] = FW2
                            DerefOf (GBUF [0x02]) [0x03] = FW3
                            DerefOf (GBUF [0x02]) [0x04] = FW4
                            DerefOf (GBUF [0x02]) [0x05] = FW5
                            DerefOf (GBUF [0x02]) [0x06] = FW6
                            DerefOf (GBUF [0x02]) [0x07] = FW7
                            DerefOf (GBUF [0x03]) [Zero] = Zero
                            Release (LFCM)
                        }

                        Return (GBUF)
                    }

                    Name (APDT, Zero)
                    Method (APPC, 1, Serialized)
                    {
                        APDT = Arg0
                        Return (Zero)
                    }

                    Method (DBSL, 0, NotSerialized)
                    {
                        Return (Package (0x10)
                        {
                            0xC9, 
                            0xAE, 
                            0x95, 
                            0x7E, 
                            0x69, 
                            0x56, 
                            0x45, 
                            0x36, 
                            0x29, 
                            0x1E, 
                            0x15, 
                            0x0E, 
                            0x09, 
                            0x06, 
                            0x05, 
                            Zero
                        })
                    }

                    Method (SBSL, 1, Serialized)
                    {
                        If ((Acquire (LFCM, 0xA000) == Zero))
                        {
                            Local0 = Arg0
                            If ((Local0 == One))
                            {
                                LCBV = 0x0E
                            }

                            If ((Local0 == 0x02))
                            {
                                LCBV = 0x07
                            }

                            Release (LFCM)
                        }

                        Return (Zero)
                    }

                    Method (STHT, 1, Serialized)
                    {
                        Return (Zero)
                    }
                }
            }

            Scope (\)
            {
                OperationRegion (LFCN, SystemMemory, 0x75F30D98, 0x00E7)
                Field (LFCN, AnyAcc, Lock, Preserve)
                {
                    PS2V,   8, 
                    KBID,   8, 
                    MCSZ,   8, 
                    EDID,   1024, 
                    LFCO,   800
                }

                OperationRegion (SMIO, SystemIO, 0xB2, 0x02)
                Field (SMIO, ByteAcc, NoLock, Preserve)
                {
                    SMIC,   8, 
                    SMID,   8
                }

                Name (BCL7, Package (0x0D)
                {
                    0x50, 
                    0x32, 
                    Zero, 
                    0x0A, 
                    0x14, 
                    0x1E, 
                    0x28, 
                    0x32, 
                    0x3C, 
                    0x46, 
                    0x50, 
                    0x5A, 
                    0x64
                })
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (((Arg0 == 0x03) && (Arg1 == One)))
                {
                    ECAV = One
                    Local0 = Zero
                    If ((OSYS == 0x03E8))
                    {
                        Local0 = One
                    }

                    If ((OSYS == 0x07D6))
                    {
                        Local0 = 0x02
                    }

                    If ((OSYS == 0x07D9))
                    {
                        Local0 = 0x03
                    }

                    If ((OSYS == 0x07DC))
                    {
                        Local0 = 0x04
                    }

                    If ((OSYS == 0x07DD))
                    {
                        Local0 = 0x05
                    }

                    If ((OSYS >= 0x07DF))
                    {
                        Local0 = 0x06
                    }

                    If ((Acquire (LFCM, 0xA000) == Zero))
                    {
                        OSTY = Local0
                        ECON = One
                        If ((LSTE == Zero))
                        {
                            ^^^GFX0.CLID = Zero
                        }

                        If ((LSTE == One))
                        {
                            ^^^GFX0.CLID = 0x03
                        }

                        LIDS () = LSTE
                        PLVL = 0x0F
                        Release (LFCM)
                    }
                }
            }

            Method (CMFC, 0, Serialized)
            {
                Return (EDID)
            }

            Name (BLTB, Package (0x0B)
            {
                One, 
                0x03, 
                0x05, 
                0x07, 
                0x0C, 
                0x10, 
                0x19, 
                0x22, 
                0x32, 
                0x46, 
                0x64
            })
            Method (BSYC, 0, NotSerialized)
            {
                If ((OSYS == 0x07D9))
                {
                    Local0 = Zero
                    Local1 = (^^^GFX0.CBLV & 0xFF)
                    While ((Local0 <= 0x0A))
                    {
                        If ((Local1 == DerefOf (BLTB [Local0])))
                        {
                            Break
                        }

                        Local0++
                    }

                    LCBV = Local0
                }
            }

            Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x11
                If ((OSYS == 0x07D9))
                {
                    If ((LCBV > 0x0A))
                    {
                        LCBV = 0x0A
                    }

                    Local0 = (^^^GFX0.CBLV & 0xFF)
                    If ((Local0 != DerefOf (BLTB [LCBV])))
                    {
                        BSYC ()
                    }
                }

                Notify (^^^GFX0.DD1F, 0x87)
                If ((OSYS == 0x07D9))
                {
                    If (((^^^GFX0.CADL != 0x0300) || (^^^GFX0.CAL2 != Zero)))
                    {
                        If ((LCBV > Zero))
                        {
                            LCBV--
                        }
                    }
                }

                Notify (VPC0, 0x80)
            }

            Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x12
                If ((OSYS == 0x07D9))
                {
                    If ((LCBV > 0x0A))
                    {
                        LCBV = Zero
                    }

                    Local0 = (^^^GFX0.CBLV & 0xFF)
                    If ((Local0 != DerefOf (BLTB [LCBV])))
                    {
                        BSYC ()
                    }
                }

                Notify (^^^GFX0.DD1F, 0x86)
                If ((OSYS == 0x07D9))
                {
                    If (((^^^GFX0.CADL != 0x0300) || (^^^GFX0.CAL2 != Zero)))
                    {
                        If ((LCBV < 0x0A))
                        {
                            LCBV++
                        }
                    }
                }

                Notify (VPC0, 0x80)
            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x15
                Notify (PS2M, 0x0E)
                LIDS () = One
                ^^^GFX0.GLID (LIDS ())
                Notify (LID0, 0x80)
            }

            Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x16
                Notify (PS2M, 0x0D)
                LIDS () = Zero
                ^^^GFX0.GLID (LIDS ())
                Notify (LID0, 0x80)
            }

            Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x1C
            }

            Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x1D
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    Local0 = TLVL
                    Release (LFCM)
                }

                \_PR.CPPC = Local0
                PNOT ()
            }

            Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x25
                Notify (ADP0, 0x80)
                Notify (BAT0, 0x80)
                Notify (BAT0, 0x81)
            }

            Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query
            {
                Sleep (0x012C)
                P80H = 0x37
                PWRS = One
                Notify (ADP0, 0x80)
                Notify (BAT0, 0x80)
                PNOT ()
            }

            Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
            {
                Sleep (0x012C)
                P80H = 0x38
                PWRS = Zero
                Notify (ADP0, 0x80)
                Notify (BAT0, 0x80)
                PNOT ()
            }

            Method (_Q32, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x32
                Notify (PWRB, 0x80)
            }

            Method (_Q3E, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x3E
                Notify (PS2M, 0x3E)
            }

            Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x3F
                Notify (PS2M, 0x3F)
            }

            Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x44
                Notify (VPC0, 0x80)
            }

            Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x66
                GUST = 0x02
                Notify (GZFD, 0xD0)
            }

            Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x67
                GUST = Zero
                Notify (GZFD, 0xD0)
            }

            Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x68
                Notify (GZFD, 0xD1)
            }

            Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x69
                Notify (GZFD, 0xE0)
            }

            Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x6A
                Notify (GZFD, 0xE1)
            }

            Method (_Q6B, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0x6B
                Notify (GZFD, 0xE2)
            }

            Method (_QD1, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0xD1
                GUST = Zero
                Notify (^^^PEG0.PEGP, 0xD1)
                Sleep (0x0A)
            }

            Method (_QD2, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0xD2
                GUST = Zero
                Notify (^^^PEG0.PEGP, 0xD2)
                Sleep (0x0A)
            }

            Method (_QD3, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0xD3
                GUST = Zero
                Notify (^^^PEG0.PEGP, 0xD3)
                Sleep (0x0A)
            }

            Method (_QD4, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0xD4
                GUST = Zero
                Notify (^^^PEG0.PEGP, 0xD4)
                Sleep (0x0A)
            }

            Method (_QD5, 0, NotSerialized)  // _Qxx: EC Query
            {
                P80H = 0xD5
                GUST = Zero
                Notify (^^^PEG0.PEGP, 0xD5)
                Sleep (0x0A)
            }

            Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((OSYS == 0x07D9))
                {
                    If ((WLAN == Zero))
                    {
                        SGOV (0x01010015, Zero)
                    }
                    Else
                    {
                        SGOV (0x01010015, One)
                    }

                    If ((BLUE == Zero))
                    {
                        SGOV (0x01020008, Zero)
                    }
                    Else
                    {
                        SGOV (0x01020008, One)
                    }
                }
            }

            Scope (\)
            {
                Name (GPSF, Zero)
                Name (DCPS, Zero)
            }

            Name (DGST, 0xD1)
            Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    If ((GATY == 0x02))
                    {
                        DCPS = One
                        If ((DGST != 0xD2))
                        {
                            P80H = 0x62
                            DGST = 0xD2
                            Notify (^^^PEG0.PEGP, 0xD2)
                        }

                        Sleep (0x0A)
                        If ((GPSF == One))
                        {
                            GPSF = Zero
                            Notify (^^^PEG0.PEGP, 0xC0)
                        }
                    }

                    Release (LFCM)
                }
            }

            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    If ((GATY == 0x02))
                    {
                        DCPS = Zero
                        If ((DGST != 0xD1))
                        {
                            P80H = 0x63
                            DGST = 0xD1
                            Notify (^^^PEG0.PEGP, 0xD1)
                        }

                        Sleep (0x0A)
                        If ((GPSF == Zero))
                        {
                            GPSF = One
                            Notify (^^^PEG0.PEGP, 0xC0)
                        }
                    }

                    Release (LFCM)
                }
            }

            Method (_Q85, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    If ((GATY == 0x02))
                    {
                        DCPS = One
                        If ((DGST != 0xD5))
                        {
                            P80H = 0x85
                            DGST = 0xD5
                            Notify (^^^PEG0.PEGP, 0xD5)
                        }

                        Sleep (0x0A)
                        If ((GPSF == One))
                        {
                            GPSF = Zero
                            Notify (^^^PEG0.PEGP, 0xC0)
                        }

                        \_PR.CPPC = 0x0F
                        PNOT ()
                    }

                    Release (LFCM)
                }
            }

            Method (_Q84, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    If ((GATY == 0x02))
                    {
                        DCPS = One
                        If ((DGST != 0xD4))
                        {
                            P80H = 0x84
                            DGST = 0xD4
                            Notify (^^^PEG0.PEGP, 0xD4)
                        }

                        Sleep (0x0A)
                        If ((GPSF == One))
                        {
                            GPSF = Zero
                            Notify (^^^PEG0.PEGP, 0xC0)
                        }

                        \_PR.CPPC = 0x0A
                        PNOT ()
                    }

                    Release (LFCM)
                }
            }

            Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    If ((GATY == 0x02))
                    {
                        DCPS = One
                        If ((DGST != 0xD3))
                        {
                            P80H = 0x83
                            DGST = 0xD3
                            Notify (^^^PEG0.PEGP, 0xD3)
                        }

                        Sleep (0x0A)
                        If ((GPSF == One))
                        {
                            GPSF = Zero
                            Notify (^^^PEG0.PEGP, 0xC0)
                        }

                        \_PR.CPPC = One
                        PNOT ()
                    }

                    Release (LFCM)
                }
            }

            Method (_Q82, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    If ((GATY == 0x02))
                    {
                        DCPS = One
                        If ((DGST != 0xD2))
                        {
                            P80H = 0x82
                            DGST = 0xD2
                            Notify (^^^PEG0.PEGP, 0xD2)
                        }

                        Sleep (0x0A)
                        If ((GPSF == One))
                        {
                            GPSF = Zero
                            Notify (^^^PEG0.PEGP, 0xC0)
                        }

                        \_PR.CPPC = One
                        PNOT ()
                    }

                    Release (LFCM)
                }
            }

            Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query
            {
                If ((Acquire (LFCM, 0xA000) == Zero))
                {
                    If ((GATY == 0x02))
                    {
                        DCPS = Zero
                        If ((DGST != 0xD1))
                        {
                            P80H = 0x81
                            DGST = 0xD1
                            Notify (^^^PEG0.PEGP, 0xD1)
                        }

                        Sleep (0x0A)
                        If ((GPSF == Zero))
                        {
                            GPSF = One
                            Notify (^^^PEG0.PEGP, 0xC0)
                        }

                        \_PR.CPPC = Zero
                        PNOT ()
                    }

                    Release (LFCM)
                }
            }
        }

        Scope (\_SB)
        {
            Device (ADP0)
            {
                Name (_HID, "ACPI0003")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((ECON == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                {
                    If ((Acquire (^^PCI0.LPCB.EC0.LFCM, 0xA000) == Zero))
                    {
                        Return (^^PCI0.LPCB.EC0.ADPT)
                        Release (^^PCI0.LPCB.EC0.LFCM)
                    }
                }

                Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
                {
                    Return (Package (0x01)
                    {
                        _SB
                    })
                }
            }

            Device (LID0)
            {
                Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((ECON == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                {
                    Return (LIDS ())
                }
            }

            Device (PWRB)
            {
                Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((ECON == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (WMI4)
            {
                Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
                Mutex (MWMI, 0x00)
                Name (_WDG, Buffer (0x28)
                {
                    /* 0000 */  0x76, 0x37, 0xA0, 0xC3, 0xAC, 0x51, 0xAA, 0x49,
                    /* 0008 */  0xAD, 0x0F, 0xF2, 0xF7, 0xD6, 0x2C, 0x3F, 0x3C,
                    /* 0010 */  0x41, 0x44, 0x03, 0x05, 0x21, 0x12, 0x90, 0x05,
                    /* 0018 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,
                    /* 0020 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x44, 0x01, 0x00 
                })
                Name (ITEM, Package (0x03)
                {
                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        "BAT0 BatMaker"
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        One, 
                        "BAT0 HwId "
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        0x02, 
                        "BAT0 MfgDate "
                    }
                })
                Method (WQAD, 1, NotSerialized)
                {
                    If ((Acquire (^^PCI0.LPCB.EC0.LFCM, 0xA000) == Zero))
                    {
                        Local0 = PSAG (Arg0)
                        Local1 = DerefOf (ITEM [Local0])
                        Local2 = DerefOf (Local1 [Zero])
                        Local3 = DerefOf (Local1 [One])
                        Local4 = DerefOf (Local1 [0x02])
                        Local5 = BATD (Local2, Local3)
                        Concatenate (Local4, ",", Local6)
                        Concatenate (Local6, Local5, Local7)
                        Release (^^PCI0.LPCB.EC0.LFCM)
                    }

                    Return (Local7)
                }

                Method (PSAG, 1, NotSerialized)
                {
                    Return (Arg0)
                }

                Method (BATD, 2, NotSerialized)
                {
                    Name (STRB, Buffer (0x0A)
                    {
                         0x00                                           
                    })
                    Name (BUFR, Buffer (0x08){})
                    BUFR = ^^PCI0.LPCB.EC0.FWBT
                    CreateWordField (BUFR, Zero, MID0)
                    CreateWordField (BUFR, 0x02, HID0)
                    CreateWordField (BUFR, 0x04, FIR0)
                    CreateWordField (BUFR, 0x06, DAT0)
                    If ((Arg0 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            STRB = ToHexString (MID0)
                        }

                        If ((Arg1 == One))
                        {
                            STRB = ToHexString (HID0)
                        }

                        If ((Arg1 == 0x02))
                        {
                            Local0 = ^^PCI0.LPCB.EC0.B1DA
                            Name (DATB, Buffer (0x09)
                            {
                                "00000000"
                            })
                            Local3 = 0x07
                            Local1 = (Local0 & 0x1F)
                            While (Local1)
                            {
                                Divide (Local1, 0x0A, Local2, Local1)
                                DATB [Local3] = (Local2 + 0x30)
                                Local3--
                            }

                            Local3 = 0x05
                            Local1 = ((Local0 & 0x01E0) >> 0x05)
                            While (Local1)
                            {
                                Divide (Local1, 0x0A, Local2, Local1)
                                DATB [Local3] = (Local2 + 0x30)
                                Local3--
                            }

                            Local3 = 0x03
                            Local1 = (((Local0 & 0xFE00) >> 0x09) + 0x07BC)
                            While (Local1)
                            {
                                Divide (Local1, 0x0A, Local2, Local1)
                                DATB [Local3] = (Local2 + 0x30)
                                Local3--
                            }

                            STRB = DATB
                        }
                    }

                    Return (ToString (STRB, Ones))
                }

                Name (WQBD, Buffer (0x0275)
                {
                    /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                    /* 0008 */  0x65, 0x02, 0x00, 0x00, 0xF8, 0x05, 0x00, 0x00,
                    /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                    /* 0018 */  0x18, 0xD1, 0x82, 0x00, 0x01, 0x06, 0x18, 0x42,
                    /* 0020 */  0x10, 0x05, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,
                    /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,
                    /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,
                    /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,
                    /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,
                    /* 0048 */  0x31, 0xD0, 0x18, 0xA8, 0x50, 0x08, 0x89, 0x00,
                    /* 0050 */  0xA6, 0x42, 0xE0, 0x08, 0x41, 0xBF, 0x02, 0x10,
                    /* 0058 */  0x3A, 0x14, 0x20, 0x53, 0x80, 0x41, 0x01, 0x4E,
                    /* 0060 */  0x11, 0x44, 0x10, 0xA5, 0x65, 0x01, 0xBA, 0x05,
                    /* 0068 */  0xF8, 0x16, 0xA0, 0x1D, 0x42, 0x68, 0x91, 0x9A,
                    /* 0070 */  0x9F, 0x04, 0x81, 0x6A, 0x5B, 0x80, 0x45, 0x01,
                    /* 0078 */  0xB2, 0x41, 0x08, 0xA0, 0xC7, 0xC1, 0x44, 0x0E,
                    /* 0080 */  0x02, 0x25, 0x66, 0x10, 0x28, 0x9D, 0x73, 0x90,
                    /* 0088 */  0x4D, 0x60, 0xE1, 0x9F, 0x4C, 0x94, 0xF3, 0x88,
                    /* 0090 */  0x92, 0xE0, 0xA8, 0x0E, 0x22, 0x42, 0xF0, 0x72,
                    /* 0098 */  0x05, 0x48, 0x9E, 0x80, 0x34, 0x4F, 0x4C, 0xD6,
                    /* 00A0 */  0x07, 0xA1, 0x21, 0xB0, 0x11, 0xF0, 0x88, 0x12,
                    /* 00A8 */  0x40, 0x58, 0xA0, 0x75, 0x2A, 0x14, 0x0C, 0xCA,
                    /* 00B0 */  0x03, 0x88, 0xE4, 0x8C, 0x15, 0x05, 0x6C, 0xAF,
                    /* 00B8 */  0x13, 0x91, 0xC9, 0x81, 0x52, 0x49, 0x70, 0xA8,
                    /* 00C0 */  0x61, 0x5A, 0xE2, 0xEC, 0x34, 0xB2, 0x13, 0x39,
                    /* 00C8 */  0xB6, 0xA6, 0x87, 0x2C, 0x48, 0x26, 0x6D, 0x28,
                    /* 00D0 */  0xA8, 0xB1, 0x7B, 0x5A, 0x27, 0xE5, 0x99, 0x46,
                    /* 00D8 */  0x3C, 0x28, 0xC3, 0x24, 0xF0, 0x28, 0x18, 0x1A,
                    /* 00E0 */  0x27, 0x28, 0x0B, 0x42, 0x0E, 0x06, 0x8A, 0x02,
                    /* 00E8 */  0x3C, 0x09, 0xCF, 0xB1, 0x78, 0x01, 0xC2, 0x67,
                    /* 00F0 */  0x4C, 0xA6, 0x1D, 0x23, 0x81, 0xCF, 0x04, 0x1E,
                    /* 00F8 */  0xE6, 0x31, 0x63, 0x47, 0x14, 0x2E, 0xE0, 0xF9,
                    /* 0100 */  0x1C, 0x43, 0xE4, 0xB8, 0x87, 0x1A, 0xE3, 0x28,
                    /* 0108 */  0x22, 0x3F, 0x08, 0x60, 0x05, 0x1D, 0x04, 0x90,
                    /* 0110 */  0x38, 0xFF, 0xFF, 0xE3, 0x89, 0x76, 0xDA, 0xC1,
                    /* 0118 */  0x42, 0xC7, 0x39, 0xBF, 0xD0, 0x18, 0xD1, 0xE3,
                    /* 0120 */  0x40, 0xC9, 0x80, 0x90, 0x47, 0x01, 0x56, 0x61,
                    /* 0128 */  0x35, 0x91, 0x04, 0xBE, 0x07, 0x74, 0x76, 0x12,
                    /* 0130 */  0xD0, 0xA5, 0x21, 0x46, 0x6F, 0x08, 0xD2, 0x26,
                    /* 0138 */  0xC0, 0x96, 0x00, 0x6B, 0x02, 0x8C, 0xDD, 0x06,
                    /* 0140 */  0x08, 0xCA, 0xD1, 0x36, 0x87, 0x22, 0x84, 0x28,
                    /* 0148 */  0x21, 0xE2, 0x86, 0xAC, 0x11, 0x45, 0x10, 0x95,
                    /* 0150 */  0x41, 0x08, 0x35, 0x50, 0xD8, 0x28, 0xF1, 0x8D,
                    /* 0158 */  0x13, 0x22, 0x48, 0x02, 0x8F, 0x1C, 0x77, 0x04,
                    /* 0160 */  0xF0, 0xD8, 0x0E, 0xE8, 0x04, 0x4F, 0xE9, 0x71,
                    /* 0168 */  0xC1, 0x04, 0x9E, 0xF7, 0xC1, 0x1D, 0xEA, 0x21,
                    /* 0170 */  0x1C, 0x70, 0xD4, 0x18, 0xC7, 0xF1, 0x4C, 0x40,
                    /* 0178 */  0x16, 0x2E, 0x0D, 0x20, 0x8A, 0x04, 0x8F, 0x3A,
                    /* 0180 */  0x32, 0xF8, 0x70, 0xE0, 0x41, 0x7A, 0x9E, 0x9E,
                    /* 0188 */  0x40, 0x90, 0x43, 0x38, 0x82, 0xC7, 0x86, 0xA7,
                    /* 0190 */  0x02, 0x8F, 0x81, 0x5D, 0x17, 0x7C, 0x0E, 0xF0,
                    /* 0198 */  0x31, 0x01, 0xEF, 0x1A, 0x50, 0xA3, 0x7E, 0x3A,
                    /* 01A0 */  0x60, 0x93, 0x0E, 0x87, 0x19, 0xAE, 0x87, 0x1D,
                    /* 01A8 */  0xEE, 0x04, 0x1E, 0x0E, 0x1E, 0x33, 0xF8, 0x91,
                    /* 01B0 */  0xC3, 0x83, 0xC3, 0xCD, 0xF0, 0x64, 0x8E, 0xAC,
                    /* 01B8 */  0x54, 0x01, 0x66, 0x4F, 0x08, 0x3A, 0x4D, 0xF8,
                    /* 01C0 */  0xCC, 0xC1, 0x6E, 0x00, 0xE7, 0xD3, 0x33, 0x24,
                    /* 01C8 */  0x91, 0x3F, 0x08, 0xD4, 0xC8, 0x0C, 0xED, 0x69,
                    /* 01D0 */  0xBF, 0x7A, 0x18, 0xF2, 0xA1, 0xE0, 0xB0, 0x98,
                    /* 01D8 */  0xD8, 0xB3, 0x07, 0x1D, 0x0F, 0xF8, 0xAF, 0x24,
                    /* 01E0 */  0x0F, 0x1B, 0x9E, 0xBE, 0xE7, 0x6B, 0x82, 0x91,
                    /* 01E8 */  0x07, 0x8E, 0x1E, 0x88, 0xA1, 0x9F, 0x38, 0x0E,
                    /* 01F0 */  0xE3, 0x34, 0x7C, 0x09, 0xF1, 0x39, 0xE0, 0xFF,
                    /* 01F8 */  0x1F, 0x24, 0xC6, 0x31, 0x79, 0x70, 0x3C, 0xD8,
                    /* 0200 */  0xC8, 0xE9, 0x51, 0xC5, 0x47, 0x0A, 0x7E, 0xBE,
                    /* 0208 */  0xF0, 0x91, 0x82, 0x5D, 0x10, 0x9E, 0x1C, 0x0C,
                    /* 0210 */  0x71, 0x38, 0x67, 0xE5, 0x13, 0x85, 0x0F, 0x2A,
                    /* 0218 */  0xB8, 0x13, 0x05, 0x5C, 0x85, 0xE8, 0xE4, 0x36,
                    /* 0220 */  0x61, 0xB4, 0x67, 0x81, 0xC7, 0x09, 0x98, 0x07,
                    /* 0228 */  0x01, 0xF0, 0x8D, 0xDF, 0x07, 0x19, 0xB0, 0x4D,
                    /* 0230 */  0x09, 0x3B, 0x24, 0x78, 0x47, 0x19, 0xE0, 0x71,
                    /* 0238 */  0x32, 0xC1, 0x1D, 0x27, 0x3C, 0x04, 0x3E, 0x80,
                    /* 0240 */  0x87, 0x90, 0x93, 0xB4, 0xD2, 0xA9, 0x21, 0xCF,
                    /* 0248 */  0x3C, 0x60, 0x1B, 0x06, 0x57, 0x68, 0xD3, 0xA7,
                    /* 0250 */  0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28, 0xD3,
                    /* 0258 */  0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0xFB, 0xE1,
                    /* 0260 */  0x58, 0xDC, 0xBB, 0x40, 0x07, 0x03, 0x0B, 0x7B,
                    /* 0268 */  0x21, 0xE8, 0x88, 0xE0, 0x58, 0x20, 0x34, 0x08,
                    /* 0270 */  0x9D, 0x40, 0xFC, 0xFF, 0x07                   
                })
            }

            Scope (\_SB)
            {
                Device (GZFD)
                {
                    Name (_HID, "PNP0C14")  // _HID: Hardware ID
                    Name (_UID, "GMZN")  // _UID: Unique ID
                    Name (_WDG, Buffer (0x8C)
                    {
                        /* 0000 */  0xE3, 0x54, 0x7B, 0x88, 0xDC, 0xDD, 0x2C, 0x4B,
                        /* 0008 */  0x8B, 0x88, 0x68, 0xA2, 0x6A, 0x88, 0x35, 0xD0,
                        /* 0010 */  0x41, 0x41, 0x01, 0x02, 0x81, 0x24, 0xD4, 0xBF,
                        /* 0018 */  0xE3, 0xAE, 0x01, 0x45, 0xA1, 0x07, 0xAF, 0xB6,
                        /* 0020 */  0x84, 0x25, 0xC5, 0xF8, 0xD0, 0x00, 0x01, 0x08,
                        /* 0028 */  0x6B, 0x90, 0x62, 0xD0, 0xD4, 0x12, 0x10, 0x45,
                        /* 0030 */  0x99, 0x9D, 0x48, 0x31, 0xEE, 0x80, 0xE9, 0x85,
                        /* 0038 */  0xD1, 0x00, 0x01, 0x08, 0x81, 0x24, 0xD4, 0xBF,
                        /* 0040 */  0xE3, 0xAE, 0x02, 0x45, 0xA1, 0x07, 0xAF, 0xB6,
                        /* 0048 */  0x84, 0x25, 0xC5, 0xF8, 0xE0, 0x00, 0x01, 0x08,
                        /* 0050 */  0x35, 0xA4, 0x72, 0xBC, 0xC1, 0xE8, 0x75, 0x42,
                        /* 0058 */  0xB3, 0xE2, 0xD8, 0xB8, 0x07, 0x4A, 0xBA, 0x59,
                        /* 0060 */  0xE1, 0x00, 0x01, 0x08, 0xD9, 0xC6, 0xAF, 0x10,
                        /* 0068 */  0x8B, 0xEA, 0x90, 0x45, 0xA2, 0xE7, 0x1C, 0xD3,
                        /* 0070 */  0xC8, 0x4B, 0xB4, 0xB1, 0xE2, 0x00, 0x01, 0x08,
                        /* 0078 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                        /* 0080 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                        /* 0088 */  0x44, 0x44, 0x01, 0x00                         
                    })
                    Name (ECD0, Zero)
                    Name (ECD1, Zero)
                    Method (WMAA, 3, NotSerialized)
                    {
                        If ((Arg1 == One))
                        {
                            Return (^^PCI0.LPCB.EC0.CPUT)
                        }

                        If ((Arg1 == 0x02))
                        {
                            Return (^^PCI0.LPCB.EC0.IRTI)
                        }

                        If ((Arg1 == 0x03))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                ^^PCI0.LPCB.EC0.IRTI = One
                            }
                            ElseIf ((ToInteger (Arg2) == Zero))
                            {
                                ^^PCI0.LPCB.EC0.IRTI = Zero
                            }

                            Return (^^PCI0.LPCB.EC0.IRTI)
                        }

                        If ((Arg1 == 0x04))
                        {
                            Return (Zero)
                        }

                        If ((Arg1 == 0x05))
                        {
                            If (^^PCI0.LPCB.EC0.ADPT)
                            {
                                If ((ToInteger (^^PCI0.LPCB.EC0.GUST) == 0x02))
                                {
                                    Return (One)
                                }
                            }

                            Return (Zero)
                        }

                        If ((Arg1 == 0x06))
                        {
                            If ((ToInteger (Arg2) == One))
                            {
                                If (^^PCI0.LPCB.EC0.ADPT)
                                {
                                    ^^PCI0.LPCB.EC0.DGPU = 0x42
                                }
                                Else
                                {
                                    ^^PCI0.LPCB.EC0.DGPU = 0x02
                                }

                                Sleep (0x0A)
                            }
                            ElseIf ((ToInteger (Arg2) == Zero))
                            {
                                If (^^PCI0.LPCB.EC0.ADPT)
                                {
                                    ^^PCI0.LPCB.EC0.DGPU = 0x44
                                }
                                Else
                                {
                                    ^^PCI0.LPCB.EC0.DGPU = 0x04
                                }

                                Sleep (0x0A)
                            }
                        }

                        If ((Arg1 == 0x07))
                        {
                            Return (0x02)
                        }

                        If ((Arg1 == 0x08))
                        {
                            Local0 = ^^PCI0.LPCB.EC0.FANS
                            Local0 *= 0x64
                            Return (Local0)
                        }

                        If ((Arg1 == 0x09))
                        {
                            Local0 = ^^PCI0.LPCB.EC0.FA2S
                            Local0 *= 0x64
                            Return (Local0)
                        }

                        If ((Arg1 == 0x0A))
                        {
                            Return (0x0D48)
                        }

                        If ((Arg1 == 0x0B))
                        {
                            Return (0x02)
                        }

                        If ((Arg1 == 0x0C))
                        {
                            Return (One)
                        }

                        If ((Arg1 == 0x0D))
                        {
                            P80H = 0x13
                            If ((ToInteger (Arg2) == One))
                            {
                                ^^PCI0.LPCB.EC0.LCMD (0x59, 0x77)
                                Return (One)
                            }
                            Else
                            {
                                ^^PCI0.LPCB.EC0.LCMD (0x59, 0x76)
                            }

                            Return (Zero)
                        }

                        If ((Arg1 == 0x0E))
                        {
                            Return (Zero)
                        }

                        If ((Arg1 == 0x0F))
                        {
                            Return (Zero)
                        }

                        If ((Arg1 == 0x10))
                        {
                            Return (Zero)
                        }

                        If ((Arg1 == 0x11))
                        {
                            Return (0x4B553A46)
                        }

                        If ((Arg1 == 0x12))
                        {
                            Return (Zero)
                        }

                        If ((Arg1 == 0x13))
                        {
                            Return (Zero)
                        }

                        If ((Arg1 == 0x14))
                        {
                            Local0 = (^^PCI0.LPCB.EC0.GDST & One)
                            If ((Local0 == One))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        If ((Arg1 == 0x15))
                        {
                            Return (One)
                        }

                        If ((Arg1 == 0x16))
                        {
                            P80H = 0x22
                            If ((ToInteger (Arg2) == One))
                            {
                                ^^PCI0.LPCB.EC0.LCMD (0x59, 0x78)
                                Return (One)
                            }
                            Else
                            {
                                ^^PCI0.LPCB.EC0.LCMD (0x59, 0x79)
                            }

                            Return (Zero)
                        }

                        If ((Arg1 == 0x17))
                        {
                            P80H = 0x23
                            Local0 = (^^PCI0.LPCB.EC0.GDST & 0x02)
                            If ((Local0 == 0x02))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        If ((Arg1 == 0x18))
                        {
                            Return (One)
                        }

                        If ((Arg1 == 0x19))
                        {
                            P80H = 0x25
                            If ((ToInteger (Arg2) == One))
                            {
                                ^^PCI0.LPCB.EC0.LCMD (0x59, 0x7B)
                                Return (One)
                            }
                            Else
                            {
                                ^^PCI0.LPCB.EC0.LCMD (0x59, 0x7A)
                            }

                            Return (Zero)
                        }

                        If ((Arg1 == 0x1A))
                        {
                            P80H = 0x26
                            Local0 = (^^PCI0.LPCB.EC0.GDST & 0x04)
                            If ((Local0 == 0x04))
                            {
                                Return (One)
                            }

                            Return (Zero)
                        }

                        If ((Arg1 == 0x1B))
                        {
                            Return (Zero)
                        }

                        If ((Arg1 == 0x1C))
                        {
                            Return (Zero)
                        }
                    }

                    Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
                    {
                        If ((Arg0 == 0xD0))
                        {
                            Local1 = ^^PCI0.LPCB.EC0.GUST
                            ^^PCI0.LPCB.EC0.GUST = Zero
                            Return (Local1)
                        }

                        If ((Arg0 == 0xD1))
                        {
                            Return (0xFF)
                        }

                        If ((Arg0 == 0xE0))
                        {
                            Return (0xFF)
                        }

                        If ((Arg0 == 0xE1))
                        {
                            If ((^^PCI0.LPCB.EC0.GDST && 0x10))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        If ((Arg0 == 0xE2))
                        {
                            P80H = 0xE2
                            Local0 = Zero
                            Local1 = (^^PCI0.LPCB.EC0.GDST & 0x02)
                            If ((Local1 == 0x02))
                            {
                                Local0 |= One
                            }

                            Local1 = (^^PCI0.LPCB.EC0.GDST & 0x04)
                            If ((Local1 == 0x04))
                            {
                                Local0 |= 0x02
                            }

                            Return (Local0)
                        }

                        Return (Zero)
                    }

                    Name (WQDD, Buffer (0x0EC2)
                    {
                        /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
                        /* 0008 */  0xB2, 0x0E, 0x00, 0x00, 0xB4, 0x5D, 0x00, 0x00,
                        /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
                        /* 0018 */  0x28, 0xD6, 0xAD, 0x00, 0x01, 0x06, 0x18, 0x42,
                        /* 0020 */  0x10, 0x0D, 0x10, 0x0A, 0xE2, 0x90, 0x42, 0x04,
                        /* 0028 */  0x92, 0x4F, 0x24, 0x79, 0x0E, 0x60, 0x30, 0x70,
                        /* 0030 */  0x96, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x80, 0x08,
                        /* 0038 */  0x08, 0x79, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,
                        /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,
                        /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,
                        /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,
                        /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,
                        /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,
                        /* 0068 */  0x44, 0x49, 0x16, 0x60, 0x19, 0x46, 0x04, 0x1E,
                        /* 0070 */  0x45, 0x64, 0xA3, 0x71, 0x68, 0xEC, 0x30, 0x2C,
                        /* 0078 */  0x13, 0x4C, 0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45,
                        /* 0080 */  0xE0, 0x09, 0x75, 0x2A, 0x40, 0xAE, 0x00, 0x61,
                        /* 0088 */  0x02, 0xC4, 0xA3, 0x0A, 0xA3, 0x39, 0x28, 0x22,
                        /* 0090 */  0x18, 0x1A, 0x25, 0x66, 0x4C, 0x04, 0xB6, 0x73,
                        /* 0098 */  0x6C, 0x8D, 0xE2, 0x34, 0x0A, 0x17, 0x20, 0x1D,
                        /* 00A0 */  0x43, 0x23, 0x38, 0xAE, 0x63, 0xB0, 0x45, 0x01,
                        /* 00A8 */  0x3A, 0x05, 0xF8, 0x14, 0xA0, 0x15, 0x42, 0x7E,
                        /* 00B0 */  0x05, 0x78, 0x14, 0x60, 0x70, 0x0E, 0x42, 0xAA,
                        /* 00B8 */  0x16, 0x47, 0x58, 0x41, 0x22, 0x05, 0x8F, 0x54,
                        /* 00C0 */  0x2A, 0x84, 0x04, 0xC1, 0x6B, 0x30, 0x47, 0x73,
                        /* 00C8 */  0x04, 0x11, 0x12, 0x18, 0xE6, 0x40, 0x30, 0x32,
                        /* 00D0 */  0x20, 0xE4, 0x59, 0x80, 0xF5, 0x11, 0x12, 0x02,
                        /* 00D8 */  0xBB, 0x17, 0x20, 0x0E, 0x41, 0xDE, 0x04, 0x28,
                        /* 00E0 */  0x14, 0x60, 0x6D, 0x52, 0x9A, 0x41, 0x67, 0x02,
                        /* 00E8 */  0x6C, 0x0D, 0x41, 0x08, 0x7E, 0x06, 0x44, 0x89,
                        /* 00F0 */  0x14, 0xAC, 0x32, 0x14, 0x02, 0x19, 0x25, 0xAA,
                        /* 00F8 */  0x51, 0x6A, 0xC3, 0xD0, 0x48, 0x62, 0x05, 0x89,
                        /* 0100 */  0x11, 0xC9, 0xC8, 0xD1, 0xE3, 0x1E, 0x63, 0xFB,
                        /* 0108 */  0x83, 0x20, 0x01, 0xCF, 0x03, 0x92, 0x00, 0xA2,
                        /* 0110 */  0x48, 0xA3, 0x41, 0x9D, 0x01, 0x12, 0x3C, 0x13,
                        /* 0118 */  0xF8, 0x3C, 0x70, 0x86, 0x27, 0x75, 0x90, 0xA7,
                        /* 0120 */  0x15, 0xE4, 0xC4, 0x8E, 0xF4, 0xEC, 0x1E, 0x06,
                        /* 0128 */  0x3C, 0x6C, 0x86, 0x95, 0xE0, 0xFF, 0xC0, 0xA7,
                        /* 0130 */  0x03, 0xBC, 0x6B, 0x40, 0x5D, 0x0B, 0x1E, 0x0A,
                        /* 0138 */  0xD8, 0xFF, 0x7F, 0x98, 0xE1, 0x30, 0x43, 0xF4,
                        /* 0140 */  0xC0, 0xC3, 0x9D, 0xC0, 0x21, 0x32, 0x40, 0x8F,
                        /* 0148 */  0xE8, 0x79, 0x00, 0x3B, 0xBC, 0x93, 0x39, 0xF1,
                        /* 0150 */  0x93, 0x6E, 0xF6, 0x60, 0xA0, 0x69, 0x26, 0x38,
                        /* 0158 */  0x1E, 0x9F, 0x02, 0x3C, 0x9F, 0x13, 0x7E, 0x74,
                        /* 0160 */  0x20, 0x83, 0x40, 0x8D, 0xCC, 0xD0, 0x1E, 0xE5,
                        /* 0168 */  0x69, 0xBD, 0x0C, 0xF8, 0x8C, 0x70, 0x58, 0x4C,
                        /* 0170 */  0x2C, 0x84, 0x14, 0x40, 0x68, 0x3C, 0xE0, 0x57,
                        /* 0178 */  0x7C, 0x42, 0x10, 0xC2, 0x1B, 0x83, 0xE7, 0xEB,
                        /* 0180 */  0x33, 0x84, 0x81, 0xB1, 0x03, 0xF2, 0x05, 0x21,
                        /* 0188 */  0x42, 0xF0, 0x37, 0x85, 0x23, 0x7A, 0x72, 0x88,
                        /* 0190 */  0xF0, 0xB0, 0x00, 0x26, 0x02, 0x8B, 0x3C, 0x41,
                        /* 0198 */  0xA0, 0x07, 0xC1, 0x51, 0x63, 0xB3, 0x41, 0x9C,
                        /* 01A0 */  0x4C, 0x94, 0xF3, 0x38, 0x26, 0x9F, 0x2D, 0x8C,
                        /* 01A8 */  0x70, 0xA6, 0x8F, 0x14, 0x8F, 0x18, 0xD6, 0x3C,
                        /* 01B0 */  0x29, 0x1D, 0x1A, 0x4E, 0xEB, 0x85, 0xC0, 0x04,
                        /* 01B8 */  0x05, 0x0A, 0x3C, 0x11, 0x30, 0x29, 0xAB, 0x95,
                        /* 01C0 */  0x8D, 0xD5, 0xFA, 0xBC, 0x41, 0x05, 0x1F, 0x13,
                        /* 01C8 */  0x34, 0xA1, 0xB8, 0x31, 0x0F, 0xB3, 0xD2, 0xD9,
                        /* 01D0 */  0x08, 0xE5, 0xF5, 0xE0, 0xB9, 0xE2, 0xC8, 0x04,
                        /* 01D8 */  0xA6, 0x43, 0x09, 0x17, 0x78, 0x22, 0x31, 0x84,
                        /* 01E0 */  0xC6, 0x63, 0x70, 0x0B, 0x82, 0xA3, 0x20, 0x3E,
                        /* 01E8 */  0x01, 0x38, 0x2C, 0x84, 0x9C, 0x1C, 0x06, 0x50,
                        /* 01F0 */  0x47, 0x00, 0x8F, 0xF0, 0x7C, 0x5E, 0x1A, 0x4C,
                        /* 01F8 */  0xE0, 0x70, 0x10, 0x3A, 0x3F, 0xF8, 0xC4, 0x80,
                        /* 0200 */  0x1F, 0xDB, 0x81, 0x9D, 0x97, 0xFF, 0xFF, 0xB3,
                        /* 0208 */  0xF0, 0x50, 0xF1, 0x67, 0x0F, 0x78, 0x33, 0xF3,
                        /* 0210 */  0xFE, 0x02, 0x1D, 0x1A, 0xBB, 0x9B, 0x78, 0x28,
                        /* 0218 */  0x1E, 0xC2, 0xE3, 0x81, 0x09, 0x3C, 0x12, 0xFF,
                        /* 0220 */  0x5D, 0xE8, 0x20, 0x08, 0xF0, 0x29, 0x24, 0xE0,
                        /* 0228 */  0x67, 0x04, 0xF8, 0xF7, 0x0F, 0x8F, 0xE4, 0x1C,
                        /* 0230 */  0x5E, 0x37, 0xDE, 0x38, 0x8E, 0x9E, 0x9C, 0x11,
                        /* 0238 */  0x40, 0x01, 0xE4, 0x0B, 0x81, 0x67, 0xF5, 0x50,
                        /* 0240 */  0xC0, 0xE6, 0x10, 0x22, 0x4C, 0x34, 0xC3, 0x63,
                        /* 0248 */  0x02, 0x8D, 0x8A, 0xCA, 0x1A, 0x17, 0x6A, 0xA4,
                        /* 0250 */  0x3E, 0xC9, 0x30, 0xEC, 0xF7, 0x01, 0x8B, 0x1E,
                        /* 0258 */  0xA8, 0x6E, 0x07, 0x07, 0xF5, 0x3A, 0xE1, 0x73,
                        /* 0260 */  0x80, 0x61, 0x3D, 0x76, 0x0E, 0x6B, 0xB4, 0x83,
                        /* 0268 */  0xF5, 0x51, 0xC2, 0xD7, 0x10, 0xCF, 0xCC, 0x18,
                        /* 0270 */  0x61, 0x3D, 0x7E, 0x0F, 0x0D, 0x37, 0x7E, 0xB8,
                        /* 0278 */  0x47, 0x05, 0x36, 0xFF, 0x27, 0x00, 0xEC, 0x39,
                        /* 0280 */  0x41, 0xA7, 0x06, 0xD4, 0x01, 0xC8, 0xE2, 0x4F,
                        /* 0288 */  0x0D, 0x88, 0x39, 0x1E, 0xD6, 0x93, 0x80, 0x41,
                        /* 0290 */  0x5F, 0x75, 0x8C, 0x13, 0xE3, 0x61, 0xE3, 0x88,
                        /* 0298 */  0x7C, 0x0B, 0x60, 0x52, 0x4F, 0x0E, 0x28, 0x91,
                        /* 02A0 */  0x14, 0x92, 0x78, 0x72, 0x40, 0x89, 0x82, 0xA3,
                        /* 02A8 */  0x20, 0x3E, 0x39, 0x38, 0xF0, 0xC9, 0x01, 0xEA,
                        /* 02B0 */  0xFF, 0xFF, 0x20, 0x43, 0x4E, 0x0E, 0xA0, 0x38,
                        /* 02B8 */  0x87, 0xE0, 0x86, 0x0A, 0x8E, 0xF9, 0xC1, 0x9B,
                        /* 02C0 */  0xB0, 0x07, 0xE8, 0xB3, 0x03, 0xE0, 0x24, 0xD8,
                        /* 02C8 */  0xD9, 0x01, 0x74, 0xE7, 0x00, 0x9F, 0x1D, 0xC0,
                        /* 02D0 */  0x75, 0x02, 0x00, 0x3E, 0xE7, 0x07, 0x38, 0x93,
                        /* 02D8 */  0x7C, 0x7E, 0x00, 0xDB, 0xFF, 0xFF, 0xFC, 0x00,
                        /* 02E0 */  0xBC, 0x2E, 0x06, 0x3E, 0x22, 0xF1, 0xE1, 0x82,
                        /* 02E8 */  0x67, 0x7C, 0xEC, 0xFC, 0x00, 0x58, 0x86, 0xE5,
                        /* 02F0 */  0xE7, 0x07, 0xE0, 0x73, 0x02, 0x00, 0x8F, 0xC8,
                        /* 02F8 */  0xF3, 0x03, 0xFD, 0xFF, 0x9F, 0xA2, 0xC8, 0x41,
                        /* 0300 */  0x91, 0xA2, 0x9D, 0xC4, 0x01, 0x9C, 0xF8, 0x41,
                        /* 0308 */  0x44, 0x38, 0x87, 0xF0, 0x87, 0xF0, 0x4A, 0x11,
                        /* 0310 */  0x25, 0xD0, 0x73, 0xD7, 0x47, 0x23, 0x93, 0x7B,
                        /* 0318 */  0x7C, 0x40, 0x09, 0xA5, 0xD0, 0xD1, 0xCA, 0xC7,
                        /* 0320 */  0x07, 0x2E, 0x0C, 0x8E, 0x82, 0xF8, 0xF8, 0xE0,
                        /* 0328 */  0xD0, 0xC7, 0x07, 0xE8, 0x21, 0x4F, 0x33, 0xA0,
                        /* 0330 */  0x38, 0xBA, 0xF9, 0x58, 0x05, 0x16, 0xAC, 0x23,
                        /* 0338 */  0x3C, 0x3D, 0x38, 0x58, 0xC7, 0xF7, 0x36, 0x67,
                        /* 0340 */  0xA4, 0x13, 0x3C, 0xDF, 0xB7, 0x47, 0x9F, 0xF7,
                        /* 0348 */  0x1E, 0x20, 0x00, 0x2B, 0x47, 0x33, 0x1F, 0x20,
                        /* 0350 */  0xC0, 0x35, 0x7E, 0x1F, 0x20, 0xC0, 0x75, 0x06,
                        /* 0358 */  0x80, 0xF7, 0xFF, 0x3F, 0x03, 0x80, 0x5F, 0xD4,
                        /* 0360 */  0x11, 0x02, 0x2D, 0xFB, 0x80, 0x85, 0xC0, 0x66,
                        /* 0368 */  0x18, 0xBE, 0x45, 0xF8, 0xB8, 0xE0, 0x41, 0x99,
                        /* 0370 */  0xC0, 0x07, 0x3D, 0xC0, 0xCB, 0x71, 0x88, 0x4F,
                        /* 0378 */  0x0F, 0xDE, 0xF1, 0x01, 0x70, 0x12, 0xEA, 0xF8,
                        /* 0380 */  0x00, 0x3A, 0x0B, 0xC7, 0x07, 0xF4, 0xFF, 0xFF,
                        /* 0388 */  0xF8, 0x00, 0x7F, 0xFC, 0xC0, 0xE3, 0xE8, 0x00,
                        /* 0390 */  0xE7, 0x6C, 0xC3, 0x8E, 0x0E, 0xC0, 0xFE, 0x68,
                        /* 0398 */  0x85, 0x1B, 0x2B, 0x78, 0x4E, 0x42, 0xFC, 0xE8,
                        /* 03A0 */  0x00, 0x9C, 0xAC, 0x02, 0xE9, 0x20, 0x1B, 0xE8,
                        /* 03A8 */  0xD1, 0x01, 0x78, 0xFE, 0xFF, 0x8F, 0x0E, 0xF0,
                        /* 03B0 */  0xCE, 0xEA, 0x3E, 0x3A, 0x00, 0xA7, 0xF1, 0xC3,
                        /* 03B8 */  0x17, 0x72, 0x74, 0x40, 0x0D, 0xC1, 0x62, 0x0F,
                        /* 03C0 */  0x31, 0x08, 0x8D, 0x37, 0x65, 0x32, 0xDC, 0xD7,
                        /* 03C8 */  0x14, 0x8F, 0xC7, 0xA7, 0x06, 0x76, 0x70, 0xE0,
                        /* 03D0 */  0xD2, 0x28, 0x74, 0x9E, 0xF2, 0xC1, 0x81, 0x4B,
                        /* 03D8 */  0x81, 0xA3, 0x20, 0x3E, 0x38, 0x38, 0xE6, 0xC1,
                        /* 03E0 */  0x01, 0x7A, 0xAC, 0x23, 0x0C, 0x28, 0xE4, 0x8D,
                        /* 03E8 */  0x14, 0x34, 0x53, 0x63, 0x2B, 0x3C, 0x36, 0xDC,
                        /* 03F0 */  0xA9, 0x01, 0x70, 0x72, 0x88, 0xF7, 0xFF, 0xFF,
                        /* 03F8 */  0xD4, 0x00, 0x2E, 0x0F, 0xA7, 0x06, 0xD0, 0x4D,
                        /* 0400 */  0xD4, 0xE7, 0x17, 0x70, 0x0D, 0x1F, 0xD2, 0xA1,
                        /* 0408 */  0x01, 0x75, 0x02, 0xF0, 0xE9, 0x1B, 0x83, 0xCB,
                        /* 0410 */  0x8C, 0x8D, 0x52, 0x67, 0x6A, 0xCF, 0x86, 0x9D,
                        /* 0418 */  0x31, 0xD9, 0xA9, 0x81, 0x8B, 0xA3, 0xD0, 0xB1,
                        /* 0420 */  0xC1, 0xA7, 0x06, 0x2E, 0x06, 0x8E, 0x82, 0xF8,
                        /* 0428 */  0xD4, 0xE0, 0xA0, 0xA7, 0x06, 0xE8, 0xA7, 0x44,
                        /* 0430 */  0x9F, 0x1A, 0xE0, 0x1F, 0x98, 0xC1, 0x33, 0x37,
                        /* 0438 */  0x7E, 0x0E, 0xF3, 0xE0, 0x70, 0xC7, 0x06, 0xE0,
                        /* 0440 */  0xFF, 0xFF, 0x3F, 0xBB, 0x00, 0x07, 0x70, 0x9F,
                        /* 0448 */  0xA2, 0x80, 0xDB, 0xF8, 0x21, 0x9E, 0x1B, 0xA0,
                        /* 0450 */  0xCF, 0xFA, 0xB9, 0x01, 0x70, 0x35, 0xB7, 0xE7,
                        /* 0458 */  0x06, 0xE0, 0xFC, 0xFF, 0x3F, 0x37, 0x00, 0x3F,
                        /* 0460 */  0x13, 0xE7, 0x06, 0x20, 0x39, 0x7E, 0x18, 0x87,
                        /* 0468 */  0x39, 0xBC, 0xE8, 0x73, 0x03, 0x7A, 0x6A, 0x31,
                        /* 0470 */  0x8A, 0x87, 0x46, 0x9F, 0xB9, 0x7D, 0x70, 0xE0,
                        /* 0478 */  0x67, 0x39, 0x9F, 0x1C, 0x7C, 0x70, 0xE0, 0x72,
                        /* 0480 */  0xE0, 0x28, 0x88, 0x0F, 0x0E, 0x8E, 0x7A, 0x70,
                        /* 0488 */  0x80, 0x1E, 0xED, 0xE0, 0x00, 0x8A, 0x83, 0x0F,
                        /* 0490 */  0x78, 0x8E, 0x3D, 0x7C, 0x74, 0x6C, 0xAA, 0xD8,
                        /* 0498 */  0x93, 0x03, 0xF8, 0xFF, 0xFF, 0x27, 0x07, 0xE0,
                        /* 04A0 */  0x74, 0x06, 0xF3, 0xC9, 0x01, 0x5C, 0x2A, 0x4E,
                        /* 04A8 */  0x0E, 0xA0, 0x9B, 0xD3, 0x63, 0x14, 0x58, 0x0F,
                        /* 04B0 */  0x00, 0x70, 0x8E, 0x0E, 0xB8, 0x31, 0x58, 0xF2,
                        /* 04B8 */  0xD1, 0x01, 0xA1, 0xF5, 0xAC, 0x4B, 0x86, 0x71,
                        /* 04C0 */  0x0E, 0xFC, 0x78, 0x0B, 0x98, 0xB9, 0x12, 0xC4,
                        /* 04C8 */  0x3A, 0xF5, 0xB7, 0x2F, 0x4F, 0xF2, 0x45, 0xDD,
                        /* 04D0 */  0x37, 0x63, 0x36, 0x3D, 0xCC, 0xC9, 0x01, 0xEE,
                        /* 04D8 */  0xFF, 0xFF, 0xE4, 0x00, 0xBC, 0x0F, 0xFF, 0xE0,
                        /* 04E0 */  0x1B, 0xB9, 0x0F, 0xFF, 0xC0, 0xE9, 0xE4, 0xC0,
                        /* 04E8 */  0x4F, 0x00, 0xF8, 0xFB, 0x02, 0xFE, 0xF0, 0x8F,
                        /* 04F0 */  0x13, 0x05, 0xA1, 0x00, 0x87, 0x7F, 0x48, 0x27,
                        /* 04F8 */  0x4B, 0x0C, 0xC2, 0x39, 0x3C, 0xC7, 0xDA, 0xF3,
                        /* 0500 */  0x09, 0x93, 0x1E, 0x1F, 0xF8, 0x09, 0xC2, 0x47,
                        /* 0508 */  0x19, 0x1F, 0x1F, 0xB8, 0x2C, 0x38, 0x0A, 0xE2,
                        /* 0510 */  0xE3, 0x83, 0x23, 0x1F, 0x1F, 0xA0, 0x47, 0x3C,
                        /* 0518 */  0x3E, 0x80, 0xE2, 0x30, 0xF0, 0x18, 0x03, 0xA6,
                        /* 0520 */  0xFF, 0xFF, 0xB1, 0xC3, 0x68, 0x07, 0x87, 0x03,
                        /* 0528 */  0x32, 0x58, 0xD0, 0x10, 0x15, 0x43, 0x11, 0xE0,
                        /* 0530 */  0xE6, 0x4F, 0x10, 0x80, 0x96, 0x93, 0x90, 0x4F,
                        /* 0538 */  0x10, 0xE0, 0x3A, 0x03, 0xF8, 0x04, 0x01, 0xAE,
                        /* 0540 */  0x23, 0x00, 0x30, 0x41, 0x8A, 0xF5, 0x08, 0xC0,
                        /* 0548 */  0x24, 0x9E, 0xEE, 0xD0, 0xE2, 0x8F, 0xDC, 0x88,
                        /* 0550 */  0xF3, 0x03, 0x2C, 0xB9, 0xE7, 0x07, 0x94, 0x50,
                        /* 0558 */  0x0A, 0x1D, 0x20, 0x7C, 0x7E, 0xE0, 0x87, 0x5D,
                        /* 0560 */  0x83, 0x19, 0xC4, 0xE7, 0x07, 0x87, 0x3E, 0x3F,
                        /* 0568 */  0x40, 0x0F, 0x79, 0x7E, 0x80, 0xF2, 0xFF, 0x3F,
                        /* 0570 */  0x71, 0xE3, 0xC5, 0x1E, 0x91, 0x41, 0x37, 0x5E,
                        /* 0578 */  0x78, 0x98, 0xF6, 0x85, 0x21, 0xCD, 0x08, 0x3A,
                        /* 0580 */  0xE3, 0x01, 0x5E, 0x4E, 0x44, 0x3E, 0x40, 0x80,
                        /* 0588 */  0xCB, 0xC6, 0x01, 0x02, 0x74, 0x67, 0x00, 0xE0,
                        /* 0590 */  0x25, 0xEC, 0x9C, 0x87, 0x16, 0x7E, 0xA6, 0x81,
                        /* 0598 */  0x34, 0xE7, 0x17, 0x71, 0xFB, 0x04, 0x11, 0x81,
                        /* 05A0 */  0xCF, 0x0F, 0x3E, 0x42, 0xF0, 0x23, 0xA7, 0x0F,
                        /* 05A8 */  0x58, 0x1E, 0xBE, 0xFF, 0xFF, 0x70, 0x96, 0x04,
                        /* 05B0 */  0x47, 0x41, 0x7C, 0x84, 0x70, 0xDC, 0x23, 0x04,
                        /* 05B8 */  0xF4, 0x78, 0x27, 0x1A, 0x50, 0x9C, 0xCC, 0xC0,
                        /* 05C0 */  0x83, 0x74, 0x66, 0x1E, 0xA9, 0x51, 0x5E, 0x3E,
                        /* 05C8 */  0xF0, 0xE7, 0x19, 0xC0, 0xCD, 0x49, 0x0F, 0x7C,
                        /* 05D0 */  0x3A, 0x4E, 0x7A, 0x40, 0xEB, 0x00, 0x00, 0x0E,
                        /* 05D8 */  0xC1, 0x87, 0x07, 0x74, 0x88, 0xC3, 0x03, 0x55,
                        /* 05E0 */  0x88, 0xA1, 0xFF, 0xFF, 0xC1, 0xE1, 0x68, 0x7D,
                        /* 05E8 */  0x7C, 0xC0, 0x5D, 0x1E, 0xD8, 0xE1, 0xD3, 0x87,
                        /* 05F0 */  0x07, 0x7E, 0xA2, 0xF1, 0x09, 0xCB, 0x87, 0x07,
                        /* 05F8 */  0x7E, 0xDC, 0xF3, 0xC9, 0x93, 0x1F, 0x1E, 0x1C,
                        /* 0600 */  0xFD, 0xF0, 0x00, 0xFD, 0xEC, 0xE9, 0xC3, 0x03,
                        /* 0608 */  0xFC, 0x23, 0x34, 0x1F, 0x2C, 0xFC, 0x69, 0x1A,
                        /* 0610 */  0x25, 0xDA, 0x21, 0xBE, 0x07, 0x9C, 0x47, 0x10,
                        /* 0618 */  0xE3, 0x3C, 0xEC, 0x31, 0xD8, 0x93, 0x3D, 0x63,
                        /* 0620 */  0xBB, 0x3E, 0x42, 0x00, 0xB2, 0x0E, 0x69, 0x3E,
                        /* 0628 */  0x42, 0x80, 0xCB, 0xC7, 0x11, 0x02, 0x74, 0xC7,
                        /* 0630 */  0x00, 0xF8, 0xFF, 0xFF, 0x63, 0x00, 0x70, 0x90,
                        /* 0638 */  0x7D, 0x90, 0x40, 0x49, 0x39, 0x48, 0xD0, 0x53,
                        /* 0640 */  0x0E, 0xBB, 0x48, 0xF0, 0x53, 0x04, 0x93, 0x7E,
                        /* 0648 */  0x8A, 0x40, 0x1D, 0x24, 0x7C, 0x16, 0xF5, 0x29,
                        /* 0650 */  0x82, 0x9F, 0x87, 0x39, 0x88, 0x4F, 0x11, 0xA6,
                        /* 0658 */  0xF1, 0x29, 0x02, 0x6E, 0xE0, 0x33, 0x16, 0x28,
                        /* 0660 */  0xA6, 0x76, 0xBC, 0x60, 0x19, 0xBD, 0xCF, 0x7A,
                        /* 0668 */  0x3E, 0x2E, 0xFA, 0xC4, 0x61, 0x8C, 0xB3, 0x0F,
                        /* 0670 */  0x17, 0xF5, 0x85, 0x8F, 0x61, 0xB1, 0x31, 0xC3,
                        /* 0678 */  0x98, 0x8A, 0x31, 0x0E, 0x9F, 0x9F, 0xB4, 0x00,
                        /* 0680 */  0x2F, 0x47, 0x7C, 0x1F, 0x24, 0xE0, 0xFE, 0xFF,
                        /* 0688 */  0x0F, 0x12, 0xF8, 0xB1, 0xF8, 0x20, 0x01, 0xAE,
                        /* 0690 */  0x93, 0x00, 0xF0, 0x0D, 0x75, 0x96, 0x40, 0x89,
                        /* 0698 */  0x3B, 0xA1, 0xF9, 0x70, 0x8C, 0x98, 0xEF, 0xD1,
                        /* 06A0 */  0xF8, 0xF0, 0x15, 0xE1, 0x0C, 0x8C, 0x73, 0x6E,
                        /* 06A8 */  0x3E, 0x2A, 0x1B, 0xE6, 0xED, 0xC1, 0x57, 0x99,
                        /* 06B0 */  0x20, 0x61, 0xDE, 0x52, 0xC3, 0x9C, 0x47, 0x98,
                        /* 06B8 */  0x28, 0x09, 0x7C, 0x42, 0xF5, 0xA1, 0x82, 0x9F,
                        /* 06C0 */  0x2B, 0x7C, 0x04, 0xF3, 0xA1, 0x82, 0x4B, 0x85,
                        /* 06C8 */  0xA3, 0x20, 0x3E, 0x54, 0x58, 0xC6, 0xA1, 0x02,
                        /* 06D0 */  0x7A, 0xEC, 0x93, 0x0E, 0x28, 0xE4, 0x9F, 0x6A,
                        /* 06D8 */  0x41, 0x77, 0x14, 0xF0, 0x08, 0x61, 0xDC, 0x48,
                        /* 06E0 */  0x7C, 0x32, 0xF1, 0xB9, 0xCD, 0x38, 0x06, 0x3B,
                        /* 06E8 */  0x5C, 0x1C, 0x36, 0xE6, 0xC8, 0xEC, 0xB9, 0x62,
                        /* 06F0 */  0xCE, 0x15, 0xF0, 0xFE, 0xFF, 0xE7, 0x0A, 0xE0,
                        /* 06F8 */  0x7E, 0x94, 0xF3, 0xB9, 0x02, 0x5C, 0x46, 0xCE,
                        /* 0700 */  0x15, 0xA0, 0x3B, 0x0C, 0x00, 0xF7, 0x93, 0x21,
                        /* 0708 */  0x6E, 0x3C, 0x96, 0x7D, 0xB4, 0x40, 0xCC, 0xFC,
                        /* 0710 */  0xB0, 0x5F, 0x02, 0x1E, 0x2C, 0xF8, 0x59, 0x02,
                        /* 0718 */  0x77, 0xE0, 0xE1, 0x07, 0x43, 0x1F, 0x29, 0xB8,
                        /* 0720 */  0x28, 0x38, 0x0A, 0xE2, 0x23, 0x85, 0x8F, 0x3B,
                        /* 0728 */  0x3E, 0x52, 0xC0, 0x0D, 0x78, 0xA4, 0x00, 0xC5,
                        /* 0730 */  0xB9, 0x1B, 0xF7, 0xFF, 0x1F, 0x36, 0x38, 0x26,
                        /* 0738 */  0xC7, 0x06, 0x0E, 0xEF, 0x20, 0x0F, 0x58, 0x54,
                        /* 0740 */  0x72, 0x90, 0x07, 0x7A, 0x27, 0x00, 0xF8, 0x87,
                        /* 0748 */  0x07, 0x98, 0x18, 0x0F, 0x0F, 0xC0, 0xED, 0xFF,
                        /* 0750 */  0x7F, 0x78, 0x00, 0x4E, 0x93, 0x63, 0x87, 0x07,
                        /* 0758 */  0xC0, 0xEE, 0x29, 0xC0, 0x87, 0x07, 0xE0, 0x76,
                        /* 0760 */  0x02, 0x80, 0x2F, 0xFA, 0xF0, 0x80, 0x12, 0x05,
                        /* 0768 */  0xA1, 0x20, 0x87, 0x07, 0xC4, 0x11, 0x1E, 0xCE,
                        /* 0770 */  0x58, 0x1F, 0x16, 0x8C, 0xEF, 0x1B, 0x98, 0xCF,
                        /* 0778 */  0xA9, 0xB8, 0xFF, 0xFF, 0x39, 0x15, 0x70, 0x31,
                        /* 0780 */  0x5E, 0x7E, 0xE4, 0x06, 0x07, 0xCE, 0x09, 0x1C,
                        /* 0788 */  0x25, 0xEE, 0x9C, 0x0A, 0x38, 0x3C, 0x7F, 0xFA,
                        /* 0790 */  0x9C, 0x0A, 0x9C, 0x8E, 0x01, 0x70, 0xFF, 0xFF,
                        /* 0798 */  0xC7, 0x00, 0xF8, 0x81, 0x8E, 0x12, 0xA8, 0x23,
                        /* 07A0 */  0x80, 0x83, 0x9D, 0xE5, 0x21, 0x4D, 0xE7, 0x19,
                        /* 07A8 */  0x11, 0x37, 0xD0, 0xD3, 0xB0, 0x4B, 0x14, 0xDD,
                        /* 07B0 */  0x5B, 0x7D, 0x14, 0x04, 0xCC, 0x5C, 0x0E, 0x5E,
                        /* 07B8 */  0x12, 0x0E, 0xD6, 0x53, 0xC4, 0x1D, 0x2B, 0x61,
                        /* 07C0 */  0x78, 0x9F, 0x23, 0xC1, 0x0A, 0x18, 0xE5, 0xB1,
                        /* 07C8 */  0xD7, 0xC7, 0xCA, 0xC3, 0xF4, 0x49, 0x1A, 0x70,
                        /* 07D0 */  0x75, 0x14, 0x84, 0xFB, 0xFF, 0x3F, 0x52, 0xC0,
                        /* 07D8 */  0xB1, 0x72, 0x14, 0x04, 0x5A, 0x87, 0x01, 0xE0,
                        /* 07E0 */  0x74, 0xE4, 0xC1, 0x71, 0x38, 0xC6, 0x79, 0x1A,
                        /* 07E8 */  0x71, 0xA3, 0xC0, 0x1D, 0x78, 0xB0, 0xE7, 0x30,
                        /* 07F0 */  0x1F, 0x2A, 0xB8, 0x60, 0x0A, 0x9D, 0x78, 0x7C,
                        /* 07F8 */  0xA8, 0xE0, 0x02, 0xE1, 0x28, 0x88, 0x0F, 0x15,
                        /* 0800 */  0x0E, 0x7F, 0xE0, 0x81, 0x1E, 0xF6, 0x48, 0x0D,
                        /* 0808 */  0x8A, 0x73, 0xC0, 0x81, 0x83, 0x65, 0x78, 0x6C,
                        /* 0810 */  0xC2, 0x30, 0xA7, 0x8E, 0xBD, 0x9C, 0x3C, 0x12,
                        /* 0818 */  0x18, 0x87, 0x1F, 0xA8, 0xC1, 0xFB, 0xFF, 0x3F,
                        /* 0820 */  0x4F, 0x00, 0xBF, 0x90, 0xE7, 0x09, 0xD0, 0x69,
                        /* 0828 */  0x39, 0x4F, 0x80, 0xEE, 0x1C, 0x00, 0x3C, 0x03,
                        /* 0830 */  0x1C, 0x25, 0xD0, 0x61, 0x0E, 0x63, 0x88, 0xA3,
                        /* 0838 */  0x04, 0x4C, 0xF1, 0x47, 0x09, 0xD4, 0x69, 0xC2,
                        /* 0840 */  0xC7, 0x31, 0x1F, 0x25, 0xB8, 0x4C, 0x38, 0x0A,
                        /* 0848 */  0xE2, 0xA3, 0x84, 0x25, 0x1C, 0x77, 0xA0, 0x47,
                        /* 0850 */  0x3E, 0xEE, 0x80, 0x02, 0xC4, 0x87, 0x26, 0x70,
                        /* 0858 */  0x8D, 0xD9, 0xFF, 0xFF, 0x31, 0x83, 0xEF, 0x38,
                        /* 0860 */  0x06, 0x38, 0x3A, 0xD5, 0xF9, 0x34, 0x01, 0x2E,
                        /* 0868 */  0x2F, 0xA7, 0x09, 0xD0, 0x1D, 0x05, 0x80, 0x73,
                        /* 0870 */  0x90, 0xC3, 0x22, 0x3A, 0xD2, 0x91, 0x0C, 0x14,
                        /* 0878 */  0xE3, 0x7E, 0x9B, 0xF4, 0xC1, 0x48, 0x47, 0x0A,
                        /* 0880 */  0xD4, 0x79, 0xCC, 0x67, 0x0A, 0x1F, 0x29, 0xF8,
                        /* 0888 */  0xFF, 0x5F, 0x28, 0x1C, 0x05, 0xF1, 0x91, 0xC2,
                        /* 0890 */  0x22, 0x8E, 0x14, 0xD0, 0x43, 0x1F, 0x29, 0x40,
                        /* 0898 */  0x21, 0xFE, 0xD0, 0x04, 0x64, 0xA0, 0x8E, 0xC3,
                        /* 08A0 */  0x27, 0x72, 0xDF, 0x97, 0x8C, 0xF7, 0xCA, 0x04,
                        /* 08A8 */  0xEF, 0x4C, 0x01, 0x58, 0x39, 0x38, 0xF9, 0x4C,
                        /* 08B0 */  0x01, 0x2E, 0x38, 0x9F, 0x29, 0xC0, 0x75, 0x16,
                        /* 08B8 */  0x00, 0xFF, 0xFF, 0xFF, 0x2C, 0x00, 0x5E, 0xA1,
                        /* 08C0 */  0x87, 0x6B, 0xF4, 0x49, 0xC2, 0x27, 0x21, 0x76,
                        /* 08C8 */  0x9B, 0xF0, 0x91, 0x07, 0x2B, 0xF9, 0x40, 0x81,
                        /* 08D0 */  0x3A, 0xCB, 0xFA, 0xAC, 0xE8, 0x03, 0x05, 0x17,
                        /* 08D8 */  0x07, 0x47, 0x41, 0x7C, 0xA0, 0x70, 0xF0, 0xC3,
                        /* 08E0 */  0x18, 0xF4, 0xA0, 0x87, 0x31, 0x50, 0x08, 0x3E,
                        /* 08E8 */  0x35, 0x81, 0x6E, 0xB6, 0x30, 0xEE, 0x4C, 0xB0,
                        /* 08F0 */  0x8F, 0x12, 0x80, 0x93, 0x23, 0xBA, 0x8F, 0x12,
                        /* 08F8 */  0xE0, 0x32, 0x03, 0x4B, 0xFF, 0xFF, 0x47, 0x09,
                        /* 0900 */  0xF0, 0x9C, 0x02, 0x80, 0x9F, 0xF0, 0x43, 0x04,
                        /* 0908 */  0xFA, 0x88, 0xE8, 0x03, 0x10, 0x3B, 0x44, 0xC0,
                        /* 0910 */  0x38, 0xC1, 0xFA, 0x10, 0xC1, 0x4F, 0x61, 0x3E,
                        /* 0918 */  0x48, 0xF8, 0x10, 0xC1, 0x0F, 0xFD, 0x3E, 0xF6,
                        /* 0920 */  0xF3, 0x43, 0x84, 0x69, 0x7C, 0x88, 0x80, 0x7B,
                        /* 0928 */  0xF0, 0xF7, 0x21, 0x07, 0xFE, 0x04, 0x1F, 0x96,
                        /* 0930 */  0xC0, 0x36, 0x5E, 0xB0, 0x5D, 0x95, 0xF0, 0x07,
                        /* 0938 */  0x09, 0x60, 0xFB, 0xFF, 0x3F, 0x48, 0x80, 0xE7,
                        /* 0940 */  0x38, 0xE2, 0x83, 0x04, 0xB8, 0xD4, 0x1C, 0x24,
                        /* 0948 */  0x40, 0x77, 0x12, 0x00, 0xBE, 0x72, 0x0F, 0x13,
                        /* 0950 */  0xA8, 0xE3, 0xB8, 0x4F, 0xD6, 0x1E, 0x07, 0xC3,
                        /* 0958 */  0x38, 0xE6, 0x37, 0x80, 0x10, 0xEF, 0x66, 0x3E,
                        /* 0960 */  0xBB, 0x02, 0xCB, 0xB3, 0x04, 0xEE, 0x90, 0x09,
                        /* 0968 */  0x9E, 0x21, 0xF3, 0xB9, 0x31, 0x90, 0x50, 0x4F,
                        /* 0970 */  0x49, 0x3E, 0x06, 0x9C, 0xCA, 0xC1, 0xC6, 0x09,
                        /* 0978 */  0xF2, 0x4A, 0xE0, 0xE1, 0x1A, 0xC9, 0x27, 0xA7,
                        /* 0980 */  0x20, 0x4F, 0x09, 0xA7, 0x10, 0xF5, 0xF5, 0xED,
                        /* 0988 */  0xE1, 0xA0, 0xA9, 0x93, 0x04, 0xF2, 0xFF, 0x7F,
                        /* 0990 */  0x76, 0x05, 0xDC, 0xB9, 0x39, 0xBB, 0x02, 0xAD,
                        /* 0998 */  0x73, 0x00, 0xF8, 0xCF, 0x5D, 0x70, 0xCE, 0x11,
                        /* 09A0 */  0x38, 0x9F, 0xD3, 0xD6, 0x41, 0x82, 0x9F, 0xBB,
                        /* 09A8 */  0x80, 0xE3, 0x41, 0x02, 0x77, 0x44, 0xC2, 0xFF,
                        /* 09B0 */  0xFF, 0x47, 0x0C, 0x9E, 0xD1, 0xF9, 0x18, 0x01,
                        /* 09B8 */  0x78, 0x3B, 0x77, 0x81, 0x6F, 0x84, 0x3E, 0x77,
                        /* 09C0 */  0x01, 0xA7, 0x53, 0x00, 0x78, 0xE3, 0xBD, 0x12,
                        /* 09C8 */  0x7C, 0x88, 0xA6, 0x81, 0x60, 0x50, 0x1A, 0xCE,
                        /* 09D0 */  0x0A, 0x50, 0xA0, 0x0F, 0xF2, 0xD8, 0x0E, 0x8B,
                        /* 09D8 */  0x49, 0x82, 0x43, 0x1D, 0x00, 0x3C, 0x8B, 0xE7,
                        /* 09E0 */  0xC3, 0xA7, 0x1E, 0xCF, 0xD6, 0xF3, 0x0A, 0xC9,
                        /* 09E8 */  0xFE, 0xFF, 0xD2, 0xC6, 0x87, 0x3A, 0xF2, 0x78,
                        /* 09F0 */  0x38, 0x67, 0x77, 0x50, 0xB5, 0x23, 0x6A, 0x54,
                        /* 09F8 */  0x86, 0x49, 0xE0, 0xA1, 0x33, 0x34, 0x0E, 0x8D,
                        /* 0A00 */  0x1D, 0x86, 0xEF, 0x04, 0xC1, 0x1E, 0x1D, 0x7D,
                        /* 0A08 */  0xF6, 0xE6, 0x13, 0x7A, 0x20, 0x28, 0xF7, 0xAE,
                        /* 0A10 */  0xA0, 0x31, 0x46, 0x8D, 0xD1, 0xDC, 0x61, 0x88,
                        /* 0A18 */  0x8D, 0x1C, 0x34, 0xE3, 0x7D, 0x11, 0x30, 0xD2,
                        /* 0A20 */  0xF1, 0xF8, 0x70, 0xC4, 0x40, 0x8E, 0xDB, 0x57,
                        /* 0A28 */  0x25, 0x03, 0x45, 0xEC, 0x19, 0x87, 0x40, 0x1C,
                        /* 0A30 */  0xD2, 0x1B, 0x01, 0xFB, 0x89, 0x78, 0x38, 0xC7,
                        /* 0A38 */  0x81, 0x39, 0x75, 0x18, 0x32, 0xF6, 0x01, 0x9A,
                        /* 0A40 */  0xC0, 0xEE, 0x05, 0x28, 0x14, 0xA0, 0x71, 0x2E,
                        /* 0A48 */  0x9A, 0xD2, 0x53, 0x44, 0x88, 0xE2, 0x04, 0x18,
                        /* 0A50 */  0x13, 0x60, 0xEB, 0xEA, 0xA0, 0x93, 0x43, 0x84,
                        /* 0A58 */  0x37, 0x89, 0x28, 0x91, 0x5A, 0x9B, 0x98, 0xA0,
                        /* 0A60 */  0x18, 0x46, 0x94, 0xDE, 0x50, 0x08, 0x70, 0xE8,
                        /* 0A68 */  0xDA, 0x60, 0x05, 0x6D, 0xC0, 0x27, 0x83, 0x10,
                        /* 0A70 */  0x91, 0xE2, 0xB4, 0x7F, 0x1E, 0x66, 0x0F, 0x08,
                        /* 0A78 */  0x1D, 0x07, 0x1C, 0x69, 0x34, 0xA8, 0x63, 0x85,
                        /* 0A80 */  0x8F, 0x04, 0x3E, 0x0E, 0x9C, 0xD4, 0xA3, 0x14,
                        /* 0A88 */  0x03, 0x39, 0xB8, 0x03, 0x7B, 0xC6, 0x78, 0x16,
                        /* 0A90 */  0xF0, 0xA8, 0xD9, 0x81, 0xC4, 0xE7, 0x09, 0x1F,
                        /* 0A98 */  0x0E, 0xF0, 0x67, 0x66, 0x76, 0x26, 0x60, 0x63,
                        /* 0AA0 */  0x34, 0x1C, 0x1F, 0xA2, 0xA7, 0xEB, 0x73, 0x96,
                        /* 0AA8 */  0x8F, 0x99, 0xFC, 0x00, 0x02, 0x7F, 0x3C, 0x3E,
                        /* 0AB0 */  0x04, 0x78, 0xE6, 0x3E, 0x2E, 0x93, 0x41, 0xA0,
                        /* 0AB8 */  0x46, 0x66, 0x68, 0xCF, 0xF3, 0xB4, 0xDE, 0x05,
                        /* 0AC0 */  0x7C, 0x00, 0x30, 0x81, 0xFF, 0xFF, 0x62, 0x21,
                        /* 0AC8 */  0x74, 0x8E, 0xF1, 0x78, 0xC0, 0x7F, 0x14, 0x7B,
                        /* 0AD0 */  0x40, 0x88, 0xF0, 0xC2, 0xE0, 0xF9, 0xFA, 0xA4,
                        /* 0AD8 */  0xA0, 0xE3, 0x20, 0xFA, 0x4C, 0xE1, 0x73, 0x02,
                        /* 0AE0 */  0x87, 0x7F, 0x46, 0xC0, 0xC0, 0xBF, 0x22, 0xF0,
                        /* 0AE8 */  0xF3, 0x08, 0x3B, 0x14, 0xF2, 0x93, 0xB6, 0xCF,
                        /* 0AF0 */  0x26, 0xFC, 0x58, 0xE1, 0x13, 0x05, 0xBB, 0xEB,
                        /* 0AF8 */  0x70, 0x58, 0x76, 0xEE, 0xF1, 0xF0, 0xE0, 0x9F,
                        /* 0B00 */  0x4B, 0xC0, 0x73, 0x9C, 0x00, 0xDF, 0x41, 0x82,
                        /* 0B08 */  0x0F, 0x1B, 0xFE, 0x95, 0xC2, 0xC0, 0x3E, 0xE5,
                        /* 0B10 */  0xF0, 0x23, 0x07, 0xEE, 0x94, 0x03, 0x0F, 0x25,
                        /* 0B18 */  0xFA, 0xF3, 0xC3, 0x7B, 0x4B, 0xAD, 0x10, 0x42,
                        /* 0B20 */  0x7B, 0x77, 0x79, 0xCD, 0x61, 0x6A, 0x71, 0x84,
                        /* 0B28 */  0x15, 0x24, 0xD2, 0x93, 0x8E, 0x91, 0x0E, 0x24,
                        /* 0B30 */  0x4A, 0x90, 0x90, 0x61, 0x8D, 0xF4, 0xBC, 0x49,
                        /* 0B38 */  0xC6, 0x8A, 0x1E, 0x07, 0x07, 0x3C, 0x01, 0x36,
                        /* 0B40 */  0x8E, 0x57, 0x1F, 0x4F, 0xE5, 0xB0, 0x7C, 0x46,
                        /* 0B48 */  0x31, 0xC2, 0x61, 0xFD, 0xFF, 0x0F, 0xEA, 0x51,
                        /* 0B50 */  0xC5, 0x9A, 0x47, 0xAA, 0xA9, 0xBD, 0x1F, 0xBC,
                        /* 0B58 */  0x59, 0x78, 0xE4, 0x1E, 0x02, 0xE6, 0x70, 0xE1,
                        /* 0B60 */  0x21, 0xF0, 0x01, 0x3C, 0xF6, 0xF9, 0x20, 0xE4,
                        /* 0B68 */  0xB9, 0xE1, 0x4E, 0x33, 0xFC, 0x8A, 0x80, 0x39,
                        /* 0B70 */  0x0F, 0xE1, 0xE2, 0x1E, 0x6E, 0xE8, 0x41, 0xD0,
                        /* 0B78 */  0x01, 0x61, 0x50, 0xE7, 0x1B, 0xC0, 0xD5, 0x55,
                        /* 0B80 */  0xC1, 0x07, 0x25, 0xB0, 0xE0, 0xBC, 0x01, 0x3C,
                        /* 0B88 */  0x20, 0xF9, 0x84, 0x03, 0x8C, 0xD1, 0x9E, 0x70,
                        /* 0B90 */  0xC0, 0x24, 0xF0, 0x84, 0x83, 0xFA, 0xFF, 0x9F,
                        /* 0B98 */  0x70, 0x00, 0x6E, 0x88, 0x3A, 0xE1, 0xA0, 0x4F,
                        /* 0BA0 */  0x6D, 0x3E, 0x29, 0xB0, 0x2B, 0x0E, 0x38, 0x08,
                        /* 0BA8 */  0x86, 0x3E, 0xE3, 0x00, 0x9D, 0x03, 0x26, 0x98,
                        /* 0BB0 */  0x8E, 0x14, 0x60, 0xFA, 0xFF, 0x9F, 0x72, 0x80,
                        /* 0BB8 */  0xC3, 0xC1, 0x03, 0x77, 0xCA, 0x01, 0xEF, 0xA9,
                        /* 0BC0 */  0x8F, 0x9D, 0x73, 0x00, 0x5B, 0x51, 0x0E, 0x39,
                        /* 0BC8 */  0xF4, 0x50, 0x6F, 0xF1, 0x30, 0xA8, 0x73, 0x0E,
                        /* 0BD0 */  0xE0, 0xEA, 0xFF, 0x7F, 0xFE, 0xF0, 0x29, 0x02,
                        /* 0BD8 */  0x1C, 0x67, 0x4B, 0x76, 0xF1, 0x78, 0x85, 0xF5,
                        /* 0BE0 */  0x79, 0xDC, 0x50, 0x71, 0x02, 0x3E, 0x44, 0x18,
                        /* 0BE8 */  0x37, 0xC2, 0x33, 0xA7, 0xAF, 0x10, 0xB8, 0x43,
                        /* 0BF0 */  0x0E, 0xFC, 0x99, 0x1C, 0xD0, 0x7B, 0xCD, 0xFB,
                        /* 0BF8 */  0xC3, 0x11, 0x05, 0xF1, 0xD5, 0xE6, 0xE5, 0xE6,
                        /* 0C00 */  0xF5, 0x26, 0xCE, 0x8B, 0x8E, 0x0F, 0x39, 0xEC,
                        /* 0C08 */  0x88, 0x63, 0x94, 0x78, 0x11, 0x8C, 0x15, 0xCA,
                        /* 0C10 */  0xE7, 0x9B, 0x77, 0x89, 0x58, 0x4F, 0x3B, 0x46,
                        /* 0C18 */  0x09, 0x17, 0x23, 0x58, 0x90, 0xA0, 0x0F, 0x39,
                        /* 0C20 */  0x4C, 0xC2, 0x21, 0x07, 0xA0, 0xC9, 0xC1, 0x1E,
                        /* 0C28 */  0x3F, 0x5C, 0xFF, 0xFF, 0x8F, 0x09, 0x3E, 0x10,
                        /* 0C30 */  0xBC, 0x25, 0x60, 0x4E, 0x23, 0x0F, 0x0F, 0x06,
                        /* 0C38 */  0x3A, 0x25, 0x1F, 0xCA, 0x7D, 0xC0, 0x01, 0x2E,
                        /* 0C40 */  0x27, 0x14, 0xFC, 0x59, 0x02, 0x5C, 0xE7, 0x08,
                        /* 0C48 */  0xDC, 0xC1, 0x06, 0x7C, 0x27, 0x0D, 0xDC, 0xC1,
                        /* 0C50 */  0x06, 0xBC, 0xA3, 0xF2, 0xA9, 0x06, 0x70, 0x14,
                        /* 0C58 */  0xED, 0x48, 0x83, 0x0A, 0x73, 0xAA, 0x01, 0xC5,
                        /* 0C60 */  0xFF, 0xFF, 0x54, 0x03, 0xB8, 0xBB, 0xE4, 0xBD,
                        /* 0C68 */  0xA5, 0xB0, 0x9B, 0x06, 0x3B, 0x89, 0xB0, 0xAB,
                        /* 0C70 */  0xC3, 0x73, 0x40, 0x14, 0x43, 0x44, 0x7E, 0xD3,
                        /* 0C78 */  0x7A, 0xAA, 0x01, 0xD7, 0x8D, 0xE3, 0x4D, 0xE0,
                        /* 0C80 */  0xF9, 0xEF, 0xE5, 0xE1, 0x51, 0xE0, 0x94, 0x5E,
                        /* 0C88 */  0x1F, 0x9E, 0x63, 0xDE, 0x66, 0x9E, 0x65, 0x0C,
                        /* 0C90 */  0xF5, 0x2E, 0xE8, 0x1B, 0xA0, 0xE1, 0x42, 0x19,
                        /* 0C98 */  0x33, 0x5C, 0xB0, 0x77, 0x41, 0xCF, 0x2A, 0x5E,
                        /* 0CA0 */  0x9C, 0x77, 0x1A, 0xA3, 0x05, 0x8C, 0x1D, 0x26,
                        /* 0CA8 */  0x44, 0xC4, 0x13, 0x7C, 0xAA, 0x61, 0x92, 0x4E,
                        /* 0CB0 */  0x35, 0x80, 0xA6, 0xFF, 0xFF, 0xA9, 0x06, 0xF8,
                        /* 0CB8 */  0x8B, 0x38, 0x09, 0xA2, 0xA1, 0x7D, 0x05, 0xC4,
                        /* 0CC0 */  0x47, 0x3E, 0xD2, 0x00, 0x9D, 0x43, 0x2A, 0x78,
                        /* 0CC8 */  0x0E, 0x12, 0xB0, 0x80, 0xCE, 0x8F, 0x9F, 0x25,
                        /* 0CD0 */  0xE0, 0x9E, 0x6C, 0xC0, 0x77, 0x4E, 0xC4, 0x9D,
                        /* 0CD8 */  0x6C, 0xC0, 0x3B, 0xB8, 0x48, 0x51, 0x42, 0x1B,
                        /* 0CE0 */  0x29, 0x42, 0xDC, 0x93, 0x89, 0x13, 0xF3, 0xED,
                        /* 0CE8 */  0x06, 0x7B, 0xBA, 0xC1, 0xFF, 0xFF, 0x4F, 0x37,
                        /* 0CF0 */  0x80, 0x83, 0xA8, 0xC7, 0x66, 0x54, 0xB8, 0x93,
                        /* 0CF8 */  0x33, 0xA0, 0xD7, 0xE5, 0x11, 0x85, 0x9C, 0x1D,
                        /* 0D00 */  0x8E, 0xE1, 0x28, 0x7C, 0x4B, 0x89, 0xF2, 0xCA,
                        /* 0D08 */  0xC2, 0xEE, 0xA5, 0x46, 0x79, 0x2E, 0x85, 0x49,
                        /* 0D10 */  0xE0, 0x03, 0x0E, 0xEC, 0xD3, 0x9F, 0x8F, 0xCB,
                        /* 0D18 */  0x3E, 0x0E, 0xBC, 0x04, 0x9E, 0xCF, 0x59, 0x3D,
                        /* 0D20 */  0xE0, 0x18, 0xE8, 0xC9, 0xC6, 0xA7, 0x40, 0x76,
                        /* 0D28 */  0x16, 0xF4, 0xB5, 0xD9, 0x87, 0x89, 0x60, 0x4F,
                        /* 0D30 */  0xCE, 0x06, 0x8E, 0x1A, 0xF4, 0xFF, 0xFF, 0x40,
                        /* 0D38 */  0x11, 0xE3, 0xCD, 0xD9, 0x98, 0x11, 0x62, 0x18,
                        /* 0D40 */  0xEB, 0x01, 0x87, 0x89, 0x3B, 0xE0, 0x00, 0x34,
                        /* 0D48 */  0x91, 0x72, 0xC0, 0x41, 0x0F, 0xD7, 0x27, 0x05,
                        /* 0D50 */  0x76, 0x7B, 0x60, 0xC3, 0x7D, 0x76, 0x78, 0x50,
                        /* 0D58 */  0x60, 0x43, 0x62, 0x67, 0x1C, 0xE0, 0x7D, 0x9C,
                        /* 0D60 */  0x80, 0xF7, 0xFF, 0x3F, 0x4E, 0x80, 0xE3, 0x8C,
                        /* 0D68 */  0x03, 0xBE, 0xE1, 0x3C, 0xE3, 0x00, 0x83, 0xC1,
                        /* 0D70 */  0xC5, 0x38, 0x90, 0x98, 0x8F, 0x83, 0x86, 0x79,
                        /* 0D78 */  0x8C, 0xF1, 0x60, 0x42, 0x86, 0x78, 0x8F, 0x89,
                        /* 0D80 */  0xF2, 0x48, 0x08, 0x38, 0x52, 0x68, 0xD3, 0xA7,
                        /* 0D88 */  0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28, 0xD3,
                        /* 0D90 */  0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0x3B, 0xDD,
                        /* 0D98 */  0x58, 0xD0, 0x83, 0x42, 0xA7, 0x05, 0xC7, 0x01,
                        /* 0DA0 */  0xA1, 0x32, 0x9F, 0x0C, 0x32, 0x72, 0x5E, 0x32,
                        /* 0DA8 */  0x88, 0x80, 0x2C, 0xFE, 0x31, 0x22, 0x20, 0x47,
                        /* 0DB0 */  0x01, 0x11, 0x90, 0xA3, 0xAD, 0x41, 0x40, 0x0E,
                        /* 0DB8 */  0x0A, 0x22, 0x20, 0x47, 0x57, 0x01, 0xC4, 0x84,
                        /* 0DC0 */  0x3C, 0x1A, 0x04, 0x64, 0x59, 0x36, 0x80, 0x98,
                        /* 0DC8 */  0x48, 0x10, 0x01, 0x59, 0xAA, 0x0F, 0x20, 0x26,
                        /* 0DD0 */  0x1C, 0x44, 0x40, 0x16, 0x4D, 0x23, 0x20, 0x47,
                        /* 0DD8 */  0xA0, 0x10, 0x90, 0x03, 0x3C, 0x2D, 0x04, 0xE4,
                        /* 0DE0 */  0x38, 0x20, 0x1A, 0x12, 0xB1, 0x02, 0xF1, 0xFF,
                        /* 0DE8 */  0x0F, 0xE4, 0x70, 0x20, 0x02, 0x72, 0x40, 0x2F,
                        /* 0DF0 */  0x40, 0x2C, 0x2E, 0x88, 0x80, 0x1C, 0xD9, 0x0C,
                        /* 0DF8 */  0x10, 0x13, 0xA0, 0x06, 0x88, 0x89, 0x5A, 0xB5,
                        /* 0E00 */  0x80, 0x2C, 0x11, 0x44, 0x03, 0x21, 0x7A, 0x06,
                        /* 0E08 */  0x42, 0x41, 0x04, 0xE4, 0x48, 0x6F, 0x0B, 0x01,
                        /* 0E10 */  0x39, 0x20, 0x88, 0x80, 0x1C, 0x5B, 0x11, 0x10,
                        /* 0E18 */  0x13, 0xE1, 0x68, 0xB0, 0xD4, 0xD2, 0x60, 0x29,
                        /* 0E20 */  0x88, 0x80, 0x1C, 0xDA, 0x13, 0x10, 0x93, 0xF0,
                        /* 0E28 */  0xE6, 0x10, 0x90, 0x25, 0xAA, 0x02, 0x62, 0x82,
                        /* 0E30 */  0x41, 0x04, 0x64, 0xE9, 0xB2, 0x80, 0x58, 0x10,
                        /* 0E38 */  0x10, 0x01, 0x39, 0xA4, 0x2E, 0x20, 0x16, 0x19,
                        /* 0E40 */  0x44, 0x40, 0x16, 0xFA, 0xB6, 0x09, 0x44, 0x64,
                        /* 0E48 */  0x83, 0x08, 0xC8, 0x31, 0x1F, 0x14, 0x81, 0x48,
                        /* 0E50 */  0x68, 0x10, 0x01, 0x59, 0xE0, 0x93, 0x27, 0x10,
                        /* 0E58 */  0x91, 0x0B, 0x22, 0x40, 0xF2, 0xD4, 0x09, 0xC8,
                        /* 0E60 */  0x40, 0x04, 0x64, 0x69, 0xEE, 0x80, 0x98, 0x50,
                        /* 0E68 */  0x10, 0x01, 0x39, 0x8A, 0x3D, 0x20, 0x16, 0x0C,
                        /* 0E70 */  0x44, 0x40, 0x0E, 0xEF, 0x0F, 0x88, 0x49, 0x11,
                        /* 0E78 */  0x38, 0x18, 0xFA, 0xEF, 0x39, 0x18, 0x06, 0x22,
                        /* 0E80 */  0x20, 0xC7, 0x7A, 0x44, 0x68, 0xD8, 0xE4, 0x35,
                        /* 0E88 */  0x74, 0x30, 0xEC, 0x87, 0x11, 0x84, 0x08, 0x57,
                        /* 0E90 */  0x39, 0x60, 0x0A, 0x42, 0xA5, 0xBC, 0x1E, 0x02,
                        /* 0E98 */  0xB2, 0x37, 0x46, 0x10, 0x12, 0x0F, 0x84, 0x46,
                        /* 0EA0 */  0x7B, 0x45, 0x04, 0x21, 0x51, 0xFF, 0x10, 0x1A,
                        /* 0EA8 */  0x08, 0xF9, 0x63, 0x08, 0xC4, 0x62, 0xFF, 0x12,
                        /* 0EB0 */  0x07, 0xC5, 0x5E, 0x37, 0x02, 0xB1, 0x90, 0x27,
                        /* 0EB8 */  0x47, 0x10, 0x22, 0xE9, 0xDF, 0x11, 0x84, 0xFC,
                        /* 0EC0 */  0xFF, 0x01                                     
                    })
                }
            }
        }

        Device (FWHD)
        {
            Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
            })
        }

        Device (HPET)
        {
            Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    _Y28)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (HPTE)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (HPTE)
                {
                    CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y28._BAS, HPT0)  // _BAS: Base Address
                    HPT0 = HPTB
                }

                Return (BUF0)
            }
        }

        Device (IPIC)
        {
            Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0020,             // Range Minimum
                    0x0020,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0024,             // Range Minimum
                    0x0024,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0028,             // Range Minimum
                    0x0028,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x002C,             // Range Minimum
                    0x002C,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0030,             // Range Minimum
                    0x0030,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0034,             // Range Minimum
                    0x0034,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0038,             // Range Minimum
                    0x0038,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x003C,             // Range Minimum
                    0x003C,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00A0,             // Range Minimum
                    0x00A0,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00A4,             // Range Minimum
                    0x00A4,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00A8,             // Range Minimum
                    0x00A8,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00AC,             // Range Minimum
                    0x00AC,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00B0,             // Range Minimum
                    0x00B0,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00B4,             // Range Minimum
                    0x00B4,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00B8,             // Range Minimum
                    0x00B8,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x00BC,             // Range Minimum
                    0x00BC,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x04D0,             // Range Minimum
                    0x04D0,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IRQNoFlags ()
                    {2}
            })
        }

        Device (MATH)
        {
            Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x00F0,             // Range Minimum
                    0x00F0,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IRQNoFlags ()
                    {13}
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PCHV () == SPTH))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (LDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x002E,             // Range Minimum
                    0x002E,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x004E,             // Range Minimum
                    0x004E,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0061,             // Range Minimum
                    0x0061,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0063,             // Range Minimum
                    0x0063,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0065,             // Range Minimum
                    0x0065,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0067,             // Range Minimum
                    0x0067,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0080,             // Range Minimum
                    0x0080,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0092,             // Range Minimum
                    0x0092,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x00B2,             // Range Minimum
                    0x00B2,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
                IO (Decode16,
                    0x0680,             // Range Minimum
                    0x0680,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                IO (Decode16,
                    0xFFFF,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0xFFFF,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0xFFFF,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x1800,             // Range Minimum
                    0x1800,             // Range Maximum
                    0x01,               // Alignment
                    0xFF,               // Length
                    )
                IO (Decode16,
                    0x164E,             // Range Minimum
                    0x164E,             // Range Maximum
                    0x01,               // Alignment
                    0x02,               // Length
                    )
            })
        }

        Device (LDR2)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0800,             // Range Minimum
                    0x0800,             // Range Maximum
                    0x01,               // Alignment
                    0x80,               // Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PCHV () == SPTH))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (RTC)
        {
            Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IRQNoFlags ()
                    {8}
            })
        }

        Device (TIMR)
        {
            Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0040,             // Range Minimum
                    0x0040,             // Range Maximum
                    0x01,               // Alignment
                    0x04,               // Length
                    )
                IO (Decode16,
                    0x0050,             // Range Minimum
                    0x0050,             // Range Maximum
                    0x10,               // Alignment
                    0x04,               // Length
                    )
                IRQNoFlags ()
                    {0}
            })
        }

        Device (CWDT)
        {
            Name (_HID, EisaId ("INT3F0D"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Name (BUF0, ResourceTemplate ()
            {
                IO (Decode16,
                    0x1854,             // Range Minimum
                    0x1854,             // Range Maximum
                    0x04,               // Alignment
                    0x04,               // Length
                    )
            })
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Return (BUF0)
            }
        }

        OperationRegion (PKBS, SystemIO, 0x60, 0x05)
        Field (PKBS, ByteAcc, Lock, Preserve)
        {
            PKBD,   8, 
            Offset (0x02), 
            Offset (0x03), 
            Offset (0x04), 
            PKBC,   8
        }

        Device (PS2K)
        {
            Name (_HID, "MSFT0001")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0060,             // Range Minimum
                    0x0060,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0064,             // Range Minimum
                    0x0064,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {1}
            })
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                StartDependentFn (0x00, 0x00)
                {
                    FixedIO (
                        0x0060,             // Address
                        0x01,               // Length
                        )
                    FixedIO (
                        0x0064,             // Address
                        0x01,               // Length
                        )
                    IRQNoFlags ()
                        {1}
                }
                EndDependentFn ()
            })
        }

        Device (PS2M)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((GGIV (0x01030009) == One))
                {
                    Switch (ToInteger (PS2V))
                    {
                        Case (One)
                        {
                            Return ("ETD063D")
                        }
                        Case (0x02)
                        {
                            Return ("SYN2B5B")
                        }
                        Case (0x03)
                        {
                            Return ("AUI1635")
                        }
                        Default
                        {
                            Return ("FFFFFFF")
                        }

                    }
                }
                Else
                {
                    Switch (ToInteger (PS2V))
                    {
                        Case (One)
                        {
                            Return ("ETD0645")
                        }
                        Case (0x02)
                        {
                            Return ("SYN2B5D")
                        }
                        Case (0x03)
                        {
                            Return ("AUI1637")
                        }
                        Default
                        {
                            Return ("FFFFFFF")
                        }

                    }
                }
            }

            Method (_CID, 0, Serialized)  // _CID: Compatible ID
            {
                If ((GGIV (0x01030009) == One))
                {
                    Switch (ToInteger (PS2V))
                    {
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                0x130FD041, 
                                0x8416
                            })
                        }
                        Case (0x02)
                        {
                            Return (0x030FD041)
                        }
                        Case (0x03)
                        {
                            Return (0x030FD041)
                        }
                        Default
                        {
                            Return (0xFFFFC618)
                        }

                    }
                }
                Else
                {
                    Switch (ToInteger (PS2V))
                    {
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                0x130FD041, 
                                0x8416
                            })
                        }
                        Case (0x02)
                        {
                            Return (0x030FD041)
                        }
                        Case (0x03)
                        {
                            Return (0x030FD041)
                        }
                        Default
                        {
                            Return (0xFFFFC618)
                        }

                    }
                }
            }

            Method (TPRD, 0, Serialized)
            {
                P80H = 0x2E
                Return (^^EC0.ECTP)
            }

            Method (TPWR, 1, Serialized)
            {
                P80H = 0x2F
                ^^EC0.ECTP = Arg0
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {12}
            })
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                StartDependentFn (0x00, 0x00)
                {
                    IRQNoFlags ()
                        {12}
                }
                EndDependentFn ()
            })
        }
    }

    Name (ECUP, One)
    Mutex (EHLD, 0x00)
    Scope (\)
    {
        Device (CHUB)
        {
            Name (_HID, EisaId ("INT339B"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CHEN == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37")))
                {
                    If ((Zero == ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                           
                                })
                            }
                            Case (One)
                            {
                                Switch (DerefOf (Arg3 [Zero]))
                                {
                                    Case (Zero)
                                    {
                                    }

                                }
                            }

                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB)
    {
        OperationRegion (ITSS, SystemMemory, 0xFDC43100, 0x0208)
        Field (ITSS, ByteAcc, NoLock, Preserve)
        {
            PARC,   8, 
            PBRC,   8, 
            PCRC,   8, 
            PDRC,   8, 
            PERC,   8, 
            PFRC,   8, 
            PGRC,   8, 
            PHRC,   8, 
            Offset (0x200), 
                ,   1, 
                ,   1, 
            SCGE,   1
        }
    }

    Mutex (MUTX, 0x00)
    Mutex (OSUM, 0x00)
    Event (WFEV)
    Name (H2OE, One)
    Name (P8XE, Zero)
    Name (PFDP, 0x80)
    OperationRegion (PRTD, SystemIO, PFDP, 0x04)
    Field (PRTD, DWordAcc, Lock, Preserve)
    {
        H2OD,   32
    }

    Method (H2OP, 1, Serialized)
    {
        If ((H2OE != Zero))
        {
            H2OD = Arg0
        }
    }

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        If ((P8XE != Zero))
        {
            P80H = P80D
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Name (LIDX, Zero)
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        If ((Arg0 == One))
        {
            H2OP (0x51)
        }

        If ((Arg0 == 0x03))
        {
            H2OP (0x53)
        }

        If ((Arg0 == 0x04))
        {
            H2OP (0x54)
        }

        If ((Arg0 == 0x05))
        {
            H2OP (0x55)
        }

        ADBG (Concatenate ("_PTS=", ToHexString (Arg0)))
        If ((TBTS == One))
        {
            Reset (WFEV)
        }

        If ((Arg0 == 0x03))
        {
            If (CondRefOf (\_PR.DTSE))
            {
                If ((\_PR.DTSE && (TCNT > One)))
                {
                    TRAP (0x02, 0x1E)
                }
            }
        }

        If ((DBGS == Zero)){}
        If (CondRefOf (\_SB.TPM.PTS))
        {
            \_SB.TPM.PTS (Arg0)
        }

        If ((((Arg0 == 0x03) || (Arg0 == 0x04)) || (Arg0 == 0x05)))
        {
            If ((PFLV == 0x02))
            {
                \_SB.SGOV (0x02010003, One)
            }
        }

        If ((Arg0 == 0x03))
        {
            LIDX = \_SB.PCI0.LPCB.EC0.LSTE
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        P8XH (One, 0xAB)
        If ((Arg0 == One))
        {
            H2OP (0xE1)
        }

        If ((Arg0 == 0x03))
        {
            H2OP (0xE3)
        }

        If ((Arg0 == 0x04))
        {
            H2OP (0xE4)
        }

        If ((Arg0 == 0x05))
        {
            H2OP (0xE5)
        }

        ADBG ("_WAK")
        \_SB.PCI0.GEXP.INVC ()
        If ((S0ID == One))
        {
            \_SB.SCGE = One
        }

        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If ((Arg0 == 0x04))
        {
            \_SB.PCI0.LPCB.EC0._REG (0x03, One)
        }

        If ((Arg0 == 0x03))
        {
            If ((Zero == ACTT))
            {
                If ((ECON == One)){}
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((ECON == One))
            {
                If ((Arg0 == 0x03))
                {
                    LIDS () = \_SB.PCI0.LPCB.EC0.LSTE
                    If ((LIDX != LIDS ()))
                    {
                        If (IGDS)
                        {
                            If ((LIDS () == Zero))
                            {
                                \_SB.PCI0.GFX0.CLID = 0x80000000
                            }

                            If ((LIDS () == One))
                            {
                                \_SB.PCI0.GFX0.CLID = 0x80000003
                            }
                        }

                        Notify (\_SB.LID0, 0x80)
                        LIDX = LIDS ()
                    }
                }

                If ((Arg0 == 0x04))
                {
                    LIDS () = \_SB.PCI0.LPCB.EC0.LSTE
                    If (IGDS)
                    {
                        If ((LIDS () == Zero))
                        {
                            \_SB.PCI0.GFX0.CLID = 0x80000000
                        }

                        If ((LIDS () == One))
                        {
                            \_SB.PCI0.GFX0.CLID = 0x80000003
                        }
                    }

                    Notify (\_SB.LID0, 0x80)
                }
            }

            If ((\_SB.PCI0.RP01.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP01, Zero)
            }

            If ((\_SB.PCI0.RP02.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP02, Zero)
            }

            If ((\_SB.PCI0.RP03.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP03, Zero)
            }

            If ((\_SB.PCI0.RP04.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP04, Zero)
            }

            If ((\_SB.PCI0.RP05.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP05, Zero)
            }

            If ((\_SB.PCI0.RP06.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP06, Zero)
            }

            If ((\_SB.PCI0.RP07.VDID != 0xFFFFFFFF))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP07, Zero)
                }
            }

            If ((\_SB.PCI0.RP08.VDID != 0xFFFFFFFF))
            {
                If ((DSTS == Zero))
                {
                    Notify (\_SB.PCI0.RP08, Zero)
                }
            }

            If ((\_SB.PCI0.RP09.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP09, Zero)
            }

            If ((\_SB.PCI0.RP10.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP10, Zero)
            }

            If ((\_SB.PCI0.RP11.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP11, Zero)
            }

            If ((\_SB.PCI0.RP12.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP12, Zero)
            }

            If ((\_SB.PCI0.RP13.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP13, Zero)
            }

            If ((\_SB.PCI0.RP14.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP14, Zero)
            }

            If ((\_SB.PCI0.RP15.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP15, Zero)
            }

            If ((\_SB.PCI0.RP16.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP16, Zero)
            }

            If ((\_SB.PCI0.RP17.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP17, Zero)
            }

            If ((\_SB.PCI0.RP18.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP18, Zero)
            }

            If ((\_SB.PCI0.RP19.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP19, Zero)
            }

            If ((\_SB.PCI0.RP20.VDID != 0xFFFFFFFF))
            {
                Notify (\_SB.PCI0.RP20, Zero)
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04))){}
        If ((\_SB.PCI0.LPCB.EC0.GDST && 0x04))
        {
            Notify (\_SB.PCI0.LPCB.PS2M, 0x3F)
        }
        Else
        {
            Notify (\_SB.PCI0.LPCB.PS2M, 0x3E)
        }

        If ((TBTS == One))
        {
            Signal (WFEV)
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If ((TCNT > One))
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
        }

        If ((TCNT > One))
        {
            If (((PDC0 & 0x08) && (PDC0 & 0x10)))
            {
                Notify (\_PR.CPU0, 0x81)
            }

            If (((PDC1 & 0x08) && (PDC1 & 0x10)))
            {
                Notify (\_PR.CPU1, 0x81)
            }

            If (((PDC2 & 0x08) && (PDC2 & 0x10)))
            {
                Notify (\_PR.CPU2, 0x81)
            }

            If (((PDC3 & 0x08) && (PDC3 & 0x10)))
            {
                Notify (\_PR.CPU3, 0x81)
            }

            If (((PDC4 & 0x08) && (PDC4 & 0x10)))
            {
                Notify (\_PR.CPU4, 0x81)
            }

            If (((PDC5 & 0x08) && (PDC5 & 0x10)))
            {
                Notify (\_PR.CPU5, 0x81)
            }

            If (((PDC6 & 0x08) && (PDC6 & 0x10)))
            {
                Notify (\_PR.CPU6, 0x81)
            }

            If (((PDC7 & 0x08) && (PDC7 & 0x10)))
            {
                Notify (\_PR.CPU7, 0x81)
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x81)
        }
    }

    OperationRegion (MBAR, SystemMemory, (\_SB.PCI0.GMHB () + 0x5000), 0x1000)
    Field (MBAR, ByteAcc, NoLock, Preserve)
    {
        Offset (0x938), 
        PWRU,   4, 
        Offset (0x9A0), 
        PPL1,   15, 
        PL1E,   1, 
        CLP1,   1
    }

    Name (CLMP, Zero)
    Name (PLEN, Zero)
    Name (PLSV, 0x8000)
    Name (CSEM, Zero)
    Method (SPL1, 0, Serialized)
    {
        Name (PPUU, Zero)
        If ((CSEM == One))
        {
            Return (Zero)
        }

        CSEM = One
        PLSV = PPL1
        PLEN = PL1E
        CLMP = CLP1
        If ((PWRU == Zero))
        {
            PPUU = One
        }
        Else
        {
            PPUU = (PWRU-- << 0x02)
        }

        Local0 = (PLVL * PPUU)
        Local1 = (Local0 / 0x03E8)
        PPL1 = Local1
        PL1E = One
        CLP1 = One
    }

    Method (RPL1, 0, Serialized)
    {
        PPL1 = PLSV
        PL1E = PLEN
        CLP1 = CLMP
        CSEM = Zero
    }

    Name (UAMS, Zero)
    Name (GLCK, Zero)
    Method (GUAM, 1, Serialized)
    {
        If ((OSYS > 0x07D0))
        {
            Local0 = (PWRV + 0xFC)
            ADBG ("Loc 0")
            ADBG (Local0)
            OperationRegion (ACTC, SystemMemory, Local0, 0x04)
            Field (ACTC, DWordAcc, NoLock, Preserve)
            {
                    ,   1, 
                ACTD,   1
            }
        }

        Switch (ToInteger (Arg0))
        {
            Case (Zero)
            {
                If ((GLCK == One))
                {
                    GLCK = Zero
                    P8XH (Zero, 0xC5)
                    P8XH (One, 0xAB)
                    ADBG ("Exit CS")
                    If ((ECNO == One))
                    {
                        ADBG ("EC Notify")
                        Local0 = Acquire (EHLD, 0xFFFF)
                        If ((Local0 == Zero))
                        {
                            If ((ECLP == One))
                            {
                                ECUP = One
                            }

                            Release (EHLD)
                        }

                        If ((ECDB == One))
                        {
                            ADBG ("EC Debug")
                        }
                    }

                    If ((OSYS >= 0x07DF))
                    {
                        ACTD = Zero
                    }

                    If (PSCP)
                    {
                        If (CondRefOf (\_PR.CPU0._PPC))
                        {
                            \_PR.CPPC = Zero
                            PNOT ()
                        }
                    }

                    If (PLCS)
                    {
                        RPL1 ()
                    }
                }
            }
            Case (One)
            {
                If ((GLCK == Zero))
                {
                    GLCK = One
                    P8XH (Zero, 0xC5)
                    P8XH (One, Zero)
                    ADBG ("Enter CS")
                    If ((ECNO == One))
                    {
                        ADBG ("EC Notify")
                        If ((ECDB == One))
                        {
                            ADBG ("EC Debug")
                        }

                        If ((ECLP == One))
                        {
                            ECUP = Zero
                        }
                    }

                    If ((OSYS >= 0x07DF))
                    {
                        ACTD = One
                    }

                    If (PSCP)
                    {
                        If ((CondRefOf (\_PR.CPU0._PSS) && CondRefOf (\_PR.CPU0._PPC)))
                        {
                            If ((PDC0 & 0x0400))
                            {
                                \_PR.CPPC = (SizeOf (\_PR.CPU0.TPSS) - One)
                            }
                            Else
                            {
                                \_PR.CPPC = (SizeOf (\_PR.CPU0.LPSS) - One)
                            }

                            PNOT ()
                        }
                    }

                    If (PLCS)
                    {
                        SPL1 ()
                    }
                }
            }
            Default
            {
                Return (Zero)
            }

        }

        UAMS = (Arg0 && !PWRS)
        P_CS ()
    }

    Method (P_CS, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCI0.PAUD.PUAM))
        {
            \_SB.PCI0.PAUD.PUAM ()
        }

        If ((OSYS == 0x07DC))
        {
            If (CondRefOf (\_SB.PCI0.XHC.DUAM))
            {
                \_SB.PCI0.XHC.DUAM ()
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If ((Arg0 == 0x02))
        {
            \_PR.DTSF = Arg1
            \_PR.TRPD = Zero
            Return (\_PR.DTSF)
        }

        If ((Arg0 == 0x03))
        {
            TRPH = Zero
        }

        If ((Arg0 == 0x04))
        {
            \_PR.TRPF = Zero
        }

        Return (SMIF)
    }

    Scope (_SB.PCI0)
    {
        Method (PTMA, 0, NotSerialized)
        {
            Return (\_PR.BGMA)
        }

        Method (PTMS, 0, NotSerialized)
        {
            Return (\_PR.BGMS)
        }

        Method (PTIA, 0, NotSerialized)
        {
            Return (\_PR.BGIA)
        }

        Method (_INI, 0, Serialized)  // _INI: Initialize
        {
            OSYS = 0x07D0
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                }

                If (_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSYS = 0x07D3
                }

                If (_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }

                If (_OSI ("Windows 2012"))
                {
                    OSYS = 0x07DC
                }

                If (_OSI ("Windows 2013"))
                {
                    OSYS = 0x07DD
                }

                If (_OSI ("Windows 2015"))
                {
                    OSYS = 0x07DF
                }
            }

            If ((OSYS >= 0x07DD))
            {
                SGOV (0x01010015, One)
                SGOV (0x01020008, One)
            }

            If (CondRefOf (\_PR.DTSE))
            {
                If ((\_PR.DTSE >= One))
                {
                    \_PR.DSAE = One
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP04.HPEX = Zero
            ^RP05.HPEX = Zero
            ^RP06.HPEX = Zero
            ^RP07.HPEX = Zero
            ^RP08.HPEX = Zero
            ^RP09.HPEX = Zero
            ^RP10.HPEX = Zero
            ^RP11.HPEX = Zero
            ^RP12.HPEX = Zero
            ^RP13.HPEX = Zero
            ^RP14.HPEX = Zero
            ^RP15.HPEX = Zero
            ^RP16.HPEX = Zero
            ^RP17.HPEX = Zero
            ^RP18.HPEX = Zero
            ^RP19.HPEX = Zero
            ^RP20.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
            ^RP04.HPSX = One
            ^RP05.HPSX = One
            ^RP06.HPSX = One
            ^RP07.HPSX = One
            ^RP08.HPSX = One
            ^RP09.HPSX = One
            ^RP10.HPSX = One
            ^RP11.HPSX = One
            ^RP12.HPSX = One
            ^RP13.HPSX = One
            ^RP14.HPSX = One
            ^RP15.HPSX = One
            ^RP16.HPSX = One
            ^RP17.HPSX = One
            ^RP18.HPSX = One
            ^RP19.HPSX = One
            ^RP20.HPSX = One
        }

        Method (NPME, 0, Serialized)
        {
            ^RP01.PMEX = Zero
            ^RP02.PMEX = Zero
            ^RP03.PMEX = Zero
            ^RP04.PMEX = Zero
            ^RP05.PMEX = Zero
            ^RP06.PMEX = Zero
            ^RP07.PMEX = Zero
            ^RP08.PMEX = Zero
            ^RP09.PMEX = Zero
            ^RP10.PMEX = Zero
            ^RP11.PMEX = Zero
            ^RP12.PMEX = Zero
            ^RP13.PMEX = Zero
            ^RP14.PMEX = Zero
            ^RP15.PMEX = Zero
            ^RP16.PMEX = Zero
            ^RP17.PMEX = Zero
            ^RP18.PMEX = Zero
            ^RP19.PMEX = Zero
            ^RP20.PMEX = Zero
            ^RP01.PMSX = One
            ^RP02.PMSX = One
            ^RP03.PMSX = One
            ^RP04.PMSX = One
            ^RP05.PMSX = One
            ^RP06.PMSX = One
            ^RP07.PMSX = One
            ^RP08.PMSX = One
            ^RP09.PMSX = One
            ^RP10.PMSX = One
            ^RP11.PMSX = One
            ^RP12.PMSX = One
            ^RP13.PMSX = One
            ^RP14.PMSX = One
            ^RP15.PMSX = One
            ^RP16.PMSX = One
            ^RP17.PMSX = One
            ^RP18.PMSX = One
            ^RP19.PMSX = One
            ^RP20.PMSX = One
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Name (PRWP, Package (0x02)
        {
            Zero, 
            Zero
        })
        Method (GPRW, 2, NotSerialized)
        {
            PRWP [Zero] = Arg0
            Local0 = (SS1 << One)
            Local0 |= (SS2 << 0x02)
            Local0 |= (SS3 << 0x03)
            Local0 |= (SS4 << 0x04)
            If (((One << Arg1) & Local0))
            {
                PRWP [One] = Arg1
            }
            Else
            {
                Local0 >>= One
                FindSetLeftBit (Local0, PRWP [One])
            }

            Return (PRWP)
        }
    }

    Scope (_SB)
    {
        Name (OSCI, Zero)
        Name (OSCO, Zero)
        Name (OSCP, Zero)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((S0ID == One))
            {
                SCGE = One
            }

            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 == One))
                {
                    OSCP = CAP0
                    If ((CAP0 & 0x04))
                    {
                        OSCO = 0x04
                        If (((SGMD & 0x0F) != 0x02))
                        {
                            If ((RTD3 == Zero))
                            {
                                CAP0 &= 0x3B
                                STS0 |= 0x10
                            }
                        }
                    }
                }
                Else
                {
                    STS0 &= 0xFFFFFF00
                    STS0 |= 0x0A
                }
            }
            Else
            {
                STS0 &= 0xFFFFFF00
                STS0 |= 0x06
            }

            Return (Arg3)
        }

        Device (EPC)
        {
            Name (_HID, EisaId ("INT0E0C"))  // _HID: Hardware ID
            Name (_STR, Unicode ("Enclave Page Cache 1.0"))  // _STR: Description String
            Name (_MLS, Package (0x01)  // _MLS: Multiple Language String
            {
                Package (0x02)
                {
                    "en", 
                    Unicode ("Enclave Page Cache 1.0")
                }
            })
            Name (RBUF, ResourceTemplate ()
            {
                QWordMemory (ResourceConsumer, PosDecode, MinNotFixed, MaxNotFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000001, // Length
                    ,, _Y29, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateQWordField (RBUF, \_SB.EPC._Y29._MIN, EMIN)  // _MIN: Minimum Base Address
                CreateQWordField (RBUF, \_SB.EPC._Y29._MAX, EMAX)  // _MAX: Maximum Base Address
                CreateQWordField (RBUF, \_SB.EPC._Y29._LEN, ELEN)  // _LEN: Length
                EMIN = \_PR.EMNA
                ELEN = \_PR.ELNG
                EMAX = ((\_PR.EMNA + \_PR.ELNG) - One)
                Return (RBUF)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (BUFX, Package (0x09)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                If ((Arg0 == ToUUID ("c60fac0c-fd9e-4273-9a3f-938f2327035e")))
                {
                    If ((Zero == ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x02                                           
                                })
                            }
                            Case (One)
                            {
                                BUFX [Zero] = SEC0
                                BUFX [One] = SEC1
                                BUFX [0x02] = SEC2
                                BUFX [0x03] = SEC3
                                BUFX [0x04] = SEC4
                                BUFX [0x05] = SEC5
                                BUFX [0x06] = SEC6
                                BUFX [0x07] = SEC7
                                BUFX [0x08] = SEC8
                                Return (BUFX)
                            }

                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_PR.EPCS != Zero))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB)
    {
        Device (BTKL)
        {
            Name (_HID, "INT3420")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
            }

            Method (PSTS, 0, NotSerialized)
            {
            }
        }
    }

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06){}
        Processor (CPU1, 0x02, 0x00001810, 0x06){}
        Processor (CPU2, 0x03, 0x00001810, 0x06){}
        Processor (CPU3, 0x04, 0x00001810, 0x06){}
        Processor (CPU4, 0x05, 0x00001810, 0x06){}
        Processor (CPU5, 0x06, 0x00001810, 0x06){}
        Processor (CPU6, 0x07, 0x00001810, 0x06){}
        Processor (CPU7, 0x08, 0x00001810, 0x06){}
    }

    Scope (_PR.CPU0)
    {
        Name (CPC1, Package (0x11)
        {
            0x11, 
            One, 
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            0x10, 
            Zero, 
            Zero, 
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001234, // Address
                    0x02,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x10,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x01,               // Bit Offset
                    0x0000000000000777, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000770, // Address
                    0x04,               // Access Size
                    )
            }
        })
        Name (CPC2, Package (0x15)
        {
            0x15, 
            0x02, 
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x00000000000000CE, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x10,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x18,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x10,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x02,               // Bit Width
                    0x01,               // Bit Offset
                    0x0000000000000777, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000770, // Address
                    0x04,               // Access Size
                    )
            }, 

            One, 
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x0A,               // Bit Width
                    0x20,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x18,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            Zero
        })
    }

    Scope (_SB)
    {
        Device (PAGD)
        {
            Name (_HID, "ACPI000C")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Processor Aggregator Device"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_PUR, Package (0x02)  // _PUR: Processor Utilization Request
            {
                One, 
                Zero
            })
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y2A)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2B)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y2C)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2D)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2E)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y2F)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2A._BAS, MBR0)  // _BAS: Base Address
                MBR0 = GMHB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2B._BAS, DBR0)  // _BAS: Base Address
                DBR0 = GDMB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2C._BAS, EBR0)  // _BAS: Base Address
                EBR0 = GEPB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2D._BAS, XBR0)  // _BAS: Base Address
                XBR0 = GPCB ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2D._LEN, XSZ0)  // _LEN: Length
                XSZ0 = GPCL ()
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2E._BAS, SXRA)  // _BAS: Base Address
                SXRA = SXRB
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2E._LEN, SXRL)  // _LEN: Length
                SXRL = SXRS
                If (!HPTE)
                {
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2F._BAS, HBAS)  // _BAS: Base Address
                    CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y2F._LEN, HLEN)  // _LEN: Length
                    HBAS = HPTB
                    HLEN = 0x0400
                }

                Return (BUF0)
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (((DIDX & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD1F, Arg0)
        }
    }

    Scope (_GPE)
    {
        Method (_L69, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((\_SB.PCI0.RP01.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02)
            }

            If ((\_SB.PCI0.RP02.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02)
            }

            If ((\_SB.PCI0.RP03.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02)
            }

            If ((\_SB.PCI0.RP04.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP04.HPME ()
                Notify (\_SB.PCI0.RP04, 0x02)
            }

            If ((\_SB.PCI0.RP05.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP05.HPME ()
                Notify (\_SB.PCI0.RP05, 0x02)
            }

            If ((\_SB.PCI0.RP06.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP06.HPME ()
                Notify (\_SB.PCI0.RP06, 0x02)
            }

            If ((\_SB.PCI0.RP07.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP07.HPME ()
                Notify (\_SB.PCI0.RP07, 0x02)
            }

            If ((\_SB.PCI0.RP08.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP08.HPME ()
                Notify (\_SB.PCI0.RP08, 0x02)
            }

            If ((\_SB.PCI0.RP09.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP09.HPME ()
                Notify (\_SB.PCI0.RP09, 0x02)
            }

            If ((\_SB.PCI0.RP10.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP10.HPME ()
                Notify (\_SB.PCI0.RP10, 0x02)
            }

            If ((\_SB.PCI0.RP11.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP11.HPME ()
                Notify (\_SB.PCI0.RP11, 0x02)
            }

            If ((\_SB.PCI0.RP12.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP12.HPME ()
                Notify (\_SB.PCI0.RP12, 0x02)
            }

            If ((\_SB.PCI0.RP13.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP13.HPME ()
                Notify (\_SB.PCI0.RP13, 0x02)
            }

            If ((\_SB.PCI0.RP14.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP14.HPME ()
                Notify (\_SB.PCI0.RP14, 0x02)
            }

            If ((\_SB.PCI0.RP15.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP15.HPME ()
                Notify (\_SB.PCI0.RP15, 0x02)
            }

            If ((\_SB.PCI0.RP16.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP16.HPME ()
                Notify (\_SB.PCI0.RP16, 0x02)
            }

            If ((\_SB.PCI0.RP17.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP17.HPME ()
                Notify (\_SB.PCI0.RP17, 0x02)
            }

            If ((\_SB.PCI0.RP18.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP18.HPME ()
                Notify (\_SB.PCI0.RP18, 0x02)
            }

            If ((\_SB.PCI0.RP19.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP19.HPME ()
                Notify (\_SB.PCI0.RP19, 0x02)
            }

            If ((\_SB.PCI0.RP20.VDID != 0xFFFFFFFF))
            {
                \_SB.PCI0.RP20.HPME ()
                Notify (\_SB.PCI0.RP20, 0x02)
            }

            Notify (\_SB.PCI0.PEG0, 0x02)
            Notify (\_SB.PCI0.PEG0.PEGP, 0x02)
        }

        Method (_L61, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L62, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            GPEC = Zero
            If (CondRefOf (\_PR.DTSE))
            {
                If ((\_PR.DTSE >= One))
                {
                    Notify (\_TZ.TZ00, 0x80)
                    Notify (\_TZ.TZ01, 0x80)
                }
            }

            If (CondRefOf (\_GPE.HLVT))
            {
                HLVT ()
            }
        }

        Method (_L66, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((\_SB.PCI0.GFX0.GSSE && !GSMI))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L67, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (_L68, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L50, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If ((ECON == Zero))
            {
                Return (Zero)
            }

            Return (Zero)
        }

        Name (PRES, One)
        Method (_L6F, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.UGPS ()
            If ((RTD3 == One))
            {
                If (CondRefOf (\_GPE.AL6F))
                {
                    AL6F ()
                }
            }

            If ((SGGP == One))
            {
                If (CondRefOf (\_GPE.P0L6))
                {
                    P0L6 (\_SB.CAGS (P0WK))
                }
            }

            If ((P1GP == One))
            {
                If (CondRefOf (\_GPE.P1L6))
                {
                    P1L6 (\_SB.CAGS (P1WK))
                }
            }

            If ((P2GP == One))
            {
                If (CondRefOf (\_GPE.P2L6))
                {
                    P2L6 (\_SB.CAGS (P2WK))
                }
            }

            \_SB.CGLS ()
        }
    }

    Scope (_SB.PCI0.RP01.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP02.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP03.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP04.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP05.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP06.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP07.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP08.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP09.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP10.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP11.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP12.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP13.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP14.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP15.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP16.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP17.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP18.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP19.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0.RP20.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, Zero, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = DOM1
            DerefOf (SPLX [One]) [One] = LIM1
            DerefOf (SPLX [One]) [0x02] = TIM1
            DerefOf (SPLX [0x02]) [Zero] = DOM2
            DerefOf (SPLX [0x02]) [One] = LIM2
            DerefOf (SPLX [0x02]) [0x02] = TIM2
            DerefOf (SPLX [0x03]) [Zero] = DOM3
            DerefOf (SPLX [0x03]) [One] = LIM3
            DerefOf (SPLX [0x03]) [0x02] = TIM3
            Return (SPLX)
        }

        Name (WANX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [One]) [Zero] = Zero
            DerefOf (WANX [One]) [One] = TRD0
            DerefOf (WANX [One]) [0x02] = TRL0
            DerefOf (WANX [0x02]) [Zero] = One
            DerefOf (WANX [0x02]) [One] = TRD1
            DerefOf (WANX [0x02]) [0x02] = TRL1
            Return (WANX)
        }

        Name (WRDX, Package (0x03)
        {
            Zero, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [One]) [Zero] = WDM1
            DerefOf (WRDX [One]) [One] = CID1
            DerefOf (WRDX [0x02]) [Zero] = WDM2
            DerefOf (WRDX [0x02]) [One] = CID2
            Return (WRDX)
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (One)
                    }
                    Case (0x095B8086)
                    {
                        Return (One)
                    }
                    Case (0x31658086)
                    {
                        Return (One)
                    }
                    Case (0x31668086)
                    {
                        Return (One)
                    }
                    Case (0x08B18086)
                    {
                        Return (One)
                    }
                    Case (0x08B28086)
                    {
                        Return (One)
                    }
                    Case (0x08B38086)
                    {
                        Return (One)
                    }
                    Case (0x08B48086)
                    {
                        Return (One)
                    }
                    Case (0x24F38086)
                    {
                        Return (One)
                    }
                    Case (0x24F48086)
                    {
                        Return (One)
                    }
                    Case (0x24F58086)
                    {
                        Return (One)
                    }
                    Case (0x24F68086)
                    {
                        Return (One)
                    }
                    Default
                    {
                        Return (Zero)
                    }

                }
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (WHIT, 0, NotSerialized)
        {
            Return (Package (0x01)
            {
                Package (0x05)
                {
                    "DockOemId", 
                    "DockSkuId", 
                    Zero, 
                    0x02, 
                    0x02
                }
            })
        }

        Method (SELF, 0, NotSerialized)
        {
            Return (Package (0x02)
            {
                "PcOemId", 
                "PcSkuId"
            })
        }
    }

    Scope (_SB.PCI0.GFX0)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((S0ID == One))
            {
                Return (Package (0x01)
                {
                    PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (_SB.PCI0.SAT0)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (((S0ID == One) && ((PEPC & 0x03) != Zero)))
            {
                Return (Package (0x01)
                {
                    PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    If ((S0ID == One))
    {
        Scope (_SB.PCI0.I2C0)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.I2C1)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.I2C2)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.I2C3)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.I2C4)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.I2C5)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.SPI0)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.SPI1)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.UA00)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.UA01)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }

        Scope (_SB.PCI0.UA02)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
        }
    }

    Scope (_SB.PCI0.XHC)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((S0ID == One))
            {
                Return (Package (0x01)
                {
                    PEPD
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (_SB.PCI0.RP01.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP02.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP03.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP04.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP05.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP06.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP07.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP08.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP09.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP10.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP11.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP12.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP13.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP14.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP15.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP16.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP17.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP18.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP19.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_SB.PCI0.RP20.PXSX)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If ((PAHC () || PNVM ()))
            {
                If ((((S0ID == One) || (OSYS >= 0x07DF)) && (((PEPC & One) == One) || ((PEPC & 0x02) == 0x02))))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
            }

            Return (Package (0x00){})
        }

        OperationRegion (PCCX, PCI_Config, 0x09, 0x04)
        Field (PCCX, ByteAcc, NoLock, Preserve)
        {
            PIXX,   8, 
            SCCX,   8, 
            BCCX,   8
        }

        Method (PAHC, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x06))
                {
                    If ((PIXX == One))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }

        Method (PNVM, 0, Serialized)
        {
            If ((BCCX == One))
            {
                If ((SCCX == 0x08))
                {
                    If ((PIXX == 0x02))
                    {
                        Return (One)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (_PR.CPU0)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU0 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU0 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU0 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_PR.CPU1)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU1 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU1 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU1 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_PR.CPU2)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU2 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU2 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU2 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_PR.CPU3)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU3 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU3 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU3 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_PR.CPU4)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU4 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU4 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU4 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_PR.CPU5)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU5 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU5 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU5 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_PR.CPU6)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU6 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU6 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU6 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_PR.CPU7)
    {
        Method (XDEP, 0, NotSerialized)
        {
            ADBG ("CPU7 DEP Call")
            If ((S0ID == One))
            {
                ADBG ("CPU7 DEP")
                Return (Package (0x01)
                {
                    \_SB.PEPD
                })
            }
            Else
            {
                ADBG ("CPU7 DEP NULL")
                Return (Package (0x00){})
            }
        }
    }

    Scope (_SB)
    {
        Device (PEPD)
        {
            Name (_HID, "INT33A1")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80"))  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (DEVY, Package (0x29)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA00", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA01", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "INTELAUDIO\\FUNC_01&VEN_10EC*", 
                    One, 
                    Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.PEMC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.PSDC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C4", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C5", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA02", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SPI1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP01.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP02.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP03.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP04.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP05.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP06.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP07.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP08.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP09.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP10.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP11.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP12.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP13.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP14.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP15.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP16.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP17.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP18.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP19.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.RP20.PXSX", 
                    Zero, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }
            })
            Name (BCCD, Package (0x19)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT2", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT3", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP01.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP02.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP03.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP04.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP05.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP06.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP07.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP08.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP09.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP10.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP11.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP12.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP13.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP14.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP15.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP16.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP17.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP18.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP19.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.RP20.PXSX", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x000186A0
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((OSYS >= 0x07DC) && (S0ID == One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                ADBG (Concatenate ("PEPC = ", ToHexString (PEPC)))
                If ((Arg0 == ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x7F                                           
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If ((S0ID == Zero))
                        {
                            Return (Package (0x00){})
                        }

                        If (((PEPC & 0x03) == One))
                        {
                            If ((SPST & 0x0F))
                            {
                                DerefOf (DEVY [0x05]) [One] = One
                            }

                            If ((^^PCI0.RP01.PXSX.PAHC () || ^^PCI0.RP01.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x15]) [One] = One
                            }

                            If ((^^PCI0.RP02.PXSX.PAHC () || ^^PCI0.RP02.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x16]) [One] = One
                            }

                            If ((^^PCI0.RP03.PXSX.PAHC () || ^^PCI0.RP03.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x17]) [One] = One
                            }

                            If ((^^PCI0.RP04.PXSX.PAHC () || ^^PCI0.RP04.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x18]) [One] = One
                            }

                            If ((^^PCI0.RP05.PXSX.PAHC () || ^^PCI0.RP05.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x19]) [One] = One
                            }

                            If ((^^PCI0.RP06.PXSX.PAHC () || ^^PCI0.RP06.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x1A]) [One] = One
                            }

                            If ((^^PCI0.RP07.PXSX.PAHC () || ^^PCI0.RP07.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x1B]) [One] = One
                            }

                            If ((^^PCI0.RP08.PXSX.PAHC () || ^^PCI0.RP08.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x1C]) [One] = One
                            }

                            If ((^^PCI0.RP09.PXSX.PAHC () || ^^PCI0.RP09.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x1D]) [One] = One
                            }

                            If ((^^PCI0.RP10.PXSX.PAHC () || ^^PCI0.RP10.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x1E]) [One] = One
                            }

                            If ((^^PCI0.RP11.PXSX.PAHC () || ^^PCI0.RP11.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x1F]) [One] = One
                            }

                            If ((^^PCI0.RP12.PXSX.PAHC () || ^^PCI0.RP12.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x20]) [One] = One
                            }

                            If ((^^PCI0.RP13.PXSX.PAHC () || ^^PCI0.RP13.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x21]) [One] = One
                            }

                            If ((^^PCI0.RP14.PXSX.PAHC () || ^^PCI0.RP14.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x22]) [One] = One
                            }

                            If ((^^PCI0.RP15.PXSX.PAHC () || ^^PCI0.RP15.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x23]) [One] = One
                            }

                            If ((^^PCI0.RP16.PXSX.PAHC () || ^^PCI0.RP16.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x24]) [One] = One
                            }

                            If ((^^PCI0.RP17.PXSX.PAHC () || ^^PCI0.RP17.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x25]) [One] = One
                            }

                            If ((^^PCI0.RP18.PXSX.PAHC () || ^^PCI0.RP18.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x26]) [One] = One
                            }

                            If ((^^PCI0.RP19.PXSX.PAHC () || ^^PCI0.RP19.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x27]) [One] = One
                            }

                            If ((^^PCI0.RP20.PXSX.PAHC () || ^^PCI0.RP20.PXSX.PNVM ()))
                            {
                                DerefOf (DEVY [0x28]) [One] = One
                            }
                        }

                        If (((PEPC & 0x04) == Zero))
                        {
                            DerefOf (DEVY [0x06]) [One] = Zero
                        }

                        If (((PEPC & 0x08) == Zero))
                        {
                            DerefOf (DEVY [0x07]) [One] = Zero
                        }

                        If (((PEPC & 0x10) == Zero)){}
                        If (((PEPC & 0x20) == Zero))
                        {
                            DerefOf (DEVY [0x08]) [One] = Zero
                        }

                        If (((PEPC & 0x40) == Zero))
                        {
                            DerefOf (DEVY [0x09]) [One] = Zero
                        }

                        If (((PEPC & 0x80) == Zero))
                        {
                            DerefOf (DEVY [0x0A]) [One] = Zero
                        }

                        If (((PEPC & 0x0100) == Zero))
                        {
                            DerefOf (DEVY [0x0B]) [One] = Zero
                        }

                        If (((PEPC & 0x0200) == Zero))
                        {
                            DerefOf (DEVY [0x04]) [One] = Zero
                        }

                        If (((PEPC & 0x0400) == Zero))
                        {
                            DerefOf (DEVY [Zero]) [One] = Zero
                            DerefOf (DEVY [One]) [One] = Zero
                            DerefOf (DEVY [0x02]) [One] = Zero
                            DerefOf (DEVY [0x03]) [One] = Zero
                        }

                        If (((PEPC & 0x0800) == Zero))
                        {
                            DerefOf (DEVY [0x0C]) [One] = Zero
                        }

                        If (((PEPC & 0x1000) == Zero))
                        {
                            DerefOf (DEVY [0x0D]) [One] = Zero
                        }

                        If (((PEPC & 0x2000) == Zero))
                        {
                            DerefOf (DEVY [0x0E]) [One] = Zero
                        }

                        If (((PEPC & 0x4000) == Zero))
                        {
                            DerefOf (DEVY [0x0F]) [One] = Zero
                        }

                        If (((PEPC & 0x8000) == Zero))
                        {
                            DerefOf (DEVY [0x10]) [One] = Zero
                        }

                        If (((PEPC & 0x00010000) == Zero))
                        {
                            DerefOf (DEVY [0x11]) [One] = Zero
                        }

                        If (((PEPC & 0x00020000) == Zero))
                        {
                            DerefOf (DEVY [0x12]) [One] = Zero
                        }

                        If (((PEPC & 0x00040000) == Zero))
                        {
                            DerefOf (DEVY [0x13]) [One] = Zero
                        }

                        If (((PEPC & 0x00080000) == Zero))
                        {
                            DerefOf (DEVY [0x14]) [One] = Zero
                        }

                        If ((OSYS >= 0x07DF))
                        {
                            If (^^PCI0.RP02.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x16]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x16]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x16]) [One] = One
                            }

                            If (^^PCI0.RP03.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x17]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x17]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x17]) [One] = One
                            }

                            If (^^PCI0.RP04.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x18]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x18]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x18]) [One] = One
                            }

                            If (^^PCI0.RP05.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x19]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x19]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x19]) [One] = One
                            }

                            If (^^PCI0.RP06.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x1A]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x1A]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x1A]) [One] = One
                            }

                            If (^^PCI0.RP07.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x1B]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x1B]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x1B]) [One] = One
                            }

                            If (^^PCI0.RP08.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x1C]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x1C]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x1C]) [One] = One
                            }

                            If (^^PCI0.RP09.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x1D]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x1D]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x1D]) [One] = One
                            }

                            If (^^PCI0.RP10.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x1E]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x1E]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x1E]) [One] = One
                            }

                            If (^^PCI0.RP11.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x1F]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x1F]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x1F]) [One] = One
                            }

                            If (^^PCI0.RP12.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x20]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x20]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x20]) [One] = One
                            }

                            If (^^PCI0.RP13.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x21]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x21]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x21]) [One] = One
                            }

                            If (^^PCI0.RP14.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x22]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x22]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x22]) [One] = One
                            }

                            If (^^PCI0.RP15.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x23]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x23]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x23]) [One] = One
                            }

                            If (^^PCI0.RP16.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x24]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x24]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x24]) [One] = One
                            }

                            If (^^PCI0.RP17.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x25]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x25]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x25]) [One] = One
                            }

                            If (^^PCI0.RP18.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x26]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x26]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x26]) [One] = One
                            }

                            If (^^PCI0.RP19.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x27]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x27]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x27]) [One] = One
                            }

                            If (^^PCI0.RP20.PXSX.WIST ())
                            {
                                DerefOf (DerefOf (DerefOf (DEVY [0x28]) [0x02]) [One]) [One] = 0x03
                                DerefOf (DerefOf (DerefOf (DEVY [0x28]) [0x02]) [One]) [0x02] = Zero
                                DerefOf (DEVY [0x28]) [One] = One
                            }
                        }

                        Return (DEVY)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (BCCD)
                    }

                    If ((Arg2 == 0x03)){}
                    If ((Arg2 == 0x04)){}
                    If ((Arg2 == 0x05))
                    {
                        If ((S0ID == One))
                        {
                            GUAM (One)
                        }
                    }

                    If ((Arg2 == 0x06))
                    {
                        If ((S0ID == One))
                        {
                            GUAM (Zero)
                        }
                    }
                }

                Return (One)
            }
        }
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000){})
    OperationRegion (MDBG, SystemMemory, 0x77F4C018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        If (MDEN)
        {
            SHOW (Arg0)
            MDGC (0x20)
            MDG0 = MBUF
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (DW2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x08)
        Local0 &= 0xFF
        Local1 &= 0xFF
        DB2H (Local1)
        BUFN--
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x10)
        Local0 &= 0xFFFF
        Local1 &= 0xFFFF
        DW2H (Local1)
        BUFN--
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        If (MDEN)
        {
            Local0 = SizeOf (Arg0)
            Name (BUFS, Buffer (Local0){})
            BUFS = Arg0
            MDGC (0x20)
            While (Local0)
            {
                MDGC (DerefOf (BUFS [(SizeOf (Arg0) - Local0)]))
                Local0--
            }

            MDG0 = MBUF
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (ADBG, 1, Serialized)
    {
        If (MDEN)
        {
            Local0 = SizeOf (Arg0)
            Name (BUFS, Buffer (Local0){})
            BUFS = Arg0
            MDGC (0x20)
            While (Local0)
            {
                MDGC (DerefOf (BUFS [(SizeOf (Arg0) - Local0)]))
                Local0--
            }

            MDG0 = MBUF
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC ((Arg0 >> 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Local0 = BUFN
        Local0 &= 0x0F
        While (Local0)
        {
            MDGC (Zero)
            Local0++
            Local0 &= 0x0F
        }
    }

    Method (MDGC, 1, Serialized)
    {
        MBUF [BUFN] = Arg0
        BUFN += One
        If ((BUFN > 0x0FFF))
        {
            BUFN &= 0x0FFF
            UP_L (0x0F)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Local2 = Arg0
        Local2 <<= 0x04
        MOVE (Local2)
        Local3 = (0x1000 - Local2)
        While (Local2)
        {
            MBUF [Local3] = Zero
            Local3++
            Local2--
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Local4 = Arg0
        BUFN = Zero
        Local5 = (0x1000 - Local4)
        While (Local5)
        {
            Local5--
            MBUF [BUFN] = DerefOf (MBUF [Local4])
            BUFN++
            Local4++
        }
    }

    Method (NTOC, 1, Serialized)
    {
        Local0 = (Arg0 & 0x0F)
        If ((Local0 < 0x0A))
        {
            Local0 += 0x30
        }
        Else
        {
            Local0 += 0x37
        }

        Return (Local0)
    }

    Device (PSM)
    {
        Name (_HID, EisaId ("INT3420"))  // _HID: Hardware ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STR, Unicode ("Power Sharing Manager"))  // _STR: Description String
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((PSME == One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (SPLX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [One]) [Zero] = PDT1
            DerefOf (SPLX [One]) [One] = PLM1
            DerefOf (SPLX [One]) [0x02] = PTW1
            DerefOf (SPLX [0x02]) [Zero] = PDT2
            DerefOf (SPLX [0x02]) [One] = PLM2
            DerefOf (SPLX [0x02]) [0x02] = PTW2
            Return (SPLX)
        }

        Name (DPLX, Package (0x03)
        {
            Zero, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                Package (0x06)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                Package (0x06)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            }
        })
        Method (DPLC, 0, Serialized)
        {
            DerefOf (DPLX [One]) [Zero] = DDT1
            DerefOf (DPLX [One]) [One] = DDP1
            DerefOf (DerefOf (DPLX [One]) [0x02]) [Zero] = DLI1
            DerefOf (DerefOf (DPLX [One]) [0x02]) [One] = DPL1
            DerefOf (DerefOf (DPLX [One]) [0x02]) [0x02] = DTW1
            DerefOf (DerefOf (DPLX [One]) [0x02]) [0x03] = DMI1
            DerefOf (DerefOf (DPLX [One]) [0x02]) [0x04] = DMA1
            DerefOf (DerefOf (DPLX [One]) [0x02]) [0x05] = DMT1
            DerefOf (DPLX [0x02]) [Zero] = DDT2
            DerefOf (DPLX [0x02]) [One] = DDP2
            DerefOf (DerefOf (DPLX [0x02]) [0x02]) [Zero] = DLI2
            DerefOf (DerefOf (DPLX [0x02]) [0x02]) [One] = DPL2
            DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x02] = DTW2
            DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x03] = DMI2
            DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x04] = DMA2
            DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x05] = DMT2
            Return (DPLX)
        }
    }

    If ((CAMT == Zero))
    {
        Scope (_SB)
        {
            Device (ICAM)
            {
                Name (_HID, "INT33A3")  // _HID: Hardware ID
                Name (IDFU, Zero)
                Name (IPWR, Zero)
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If ((IVDF == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("f5cf0ff7-5d60-4842-82c0-fa1a61d873f2")))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                If ((ToInteger (Arg1) == Zero))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x07                                           
                                    })
                                }

                                Return (Buffer (One)
                                {
                                     0x00                                           
                                })
                            }
                            Case (One)
                            {
                                If ((DerefOf (Arg3 [Zero]) == Zero))
                                {
                                    SGOV (0x0102000B, Zero)
                                    IDFU = Zero
                                }
                                Else
                                {
                                    SGOV (0x0102000B, One)
                                    IDFU = One
                                }

                                Return (Zero)
                            }
                            Case (0x02)
                            {
                                If ((DerefOf (Arg3 [Zero]) == Zero))
                                {
                                    SGOV (0x0102000A, Zero)
                                    IPWR = One
                                }
                                Else
                                {
                                    SGOV (0x0102000A, One)
                                    IPWR = Zero
                                }

                                Return (Zero)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Method (IICB, 2, Serialized)
        {
            Switch (Arg1)
            {
                Case (Zero)
                {
                    Name (IIC0, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                            0x00, ResourceConsumer, _Y30, Exclusive,
                            )
                    })
                    CreateWordField (IIC0, \_SB.PCI0.IICB._Y30._ADR, DAD0)  // _ADR: Address
                    DAD0 = Arg0
                    Return (IIC0)
                }
                Case (One)
                {
                    Name (IIC1, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                            0x00, ResourceConsumer, _Y31, Exclusive,
                            )
                    })
                    CreateWordField (IIC1, \_SB.PCI0.IICB._Y31._ADR, DAD1)  // _ADR: Address
                    DAD1 = Arg0
                    Return (IIC1)
                }
                Case (0x02)
                {
                    Name (IIC2, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C2",
                            0x00, ResourceConsumer, _Y32, Exclusive,
                            )
                    })
                    CreateWordField (IIC2, \_SB.PCI0.IICB._Y32._ADR, DAD2)  // _ADR: Address
                    DAD2 = Arg0
                    Return (IIC2)
                }
                Case (0x03)
                {
                    Name (IIC3, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C3",
                            0x00, ResourceConsumer, _Y33, Exclusive,
                            )
                    })
                    CreateWordField (IIC3, \_SB.PCI0.IICB._Y33._ADR, DAD3)  // _ADR: Address
                    DAD3 = Arg0
                    Return (IIC3)
                }
                Case (0x04)
                {
                    Name (IIC4, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C4",
                            0x00, ResourceConsumer, _Y34, Exclusive,
                            )
                    })
                    CreateWordField (IIC4, \_SB.PCI0.IICB._Y34._ADR, DAD4)  // _ADR: Address
                    DAD4 = Arg0
                    Return (IIC4)
                }
                Default
                {
                    Name (IIC5, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.PCI0.I2C5",
                            0x00, ResourceConsumer, _Y35, Exclusive,
                            )
                    })
                    CreateWordField (IIC5, \_SB.PCI0.IICB._Y35._ADR, DAD5)  // _ADR: Address
                    DAD5 = Arg0
                    Return (IIC5)
                }

            }
        }

        Method (PINR, 2, Serialized)
        {
            Name (GPIR, ResourceTemplate ()
            {
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0xFFFF
                    }
            })
            CreateWordField (GPIR, 0x17, PINF)
            PINF = ((0x18 * Arg1) + Arg0)
            Return (GPIR)
        }

        Method (DSMI, 4, Serialized)
        {
            Local3 = (Arg3 << 0x18)
            Local2 = (Arg2 << 0x10)
            Local1 = (Arg1 << 0x08)
            Local0 = (Local1 | Arg0)
            Local0 |= Local2
            Local0 |= Local3
            Return (Local0)
        }

        Method (GPPI, 4, Serialized)
        {
            Local3 = (Arg3 << 0x18)
            Local2 = (Arg2 << 0x10)
            Local1 = (Arg1 << 0x08)
            Local0 = (Local1 | Arg0)
            Local0 |= Local2
            Local0 |= Local3
            Return (Local0)
        }

        Method (GRID, 1, Serialized)
        {
            Name (BUF, Buffer (0x09){})
            Switch (Arg0)
            {
                Case (Zero)
                {
                    BUF [Zero] = L0H0
                    BUF [One] = L0H1
                    BUF [0x02] = L0H2
                    BUF [0x03] = L0H3
                    BUF [0x04] = L0H4
                    BUF [0x05] = L0H5
                    BUF [0x06] = L0H6
                    BUF [0x07] = L0H7
                    BUF [0x08] = L0H8
                }
                Case (One)
                {
                    BUF [Zero] = L1H0
                    BUF [One] = L1H1
                    BUF [0x02] = L1H2
                    BUF [0x03] = L1H3
                    BUF [0x04] = L1H4
                    BUF [0x05] = L1H5
                    BUF [0x06] = L1H6
                    BUF [0x07] = L1H7
                    BUF [0x08] = L1H8
                }
                Case (0x02)
                {
                    BUF [Zero] = L2H0
                    BUF [One] = L2H1
                    BUF [0x02] = L2H2
                    BUF [0x03] = L2H3
                    BUF [0x04] = L2H4
                    BUF [0x05] = L2H5
                    BUF [0x06] = L2H6
                    BUF [0x07] = L2H7
                    BUF [0x08] = L2H8
                }
                Default
                {
                    BUF [Zero] = L3H0
                    BUF [One] = L3H1
                    BUF [0x02] = L3H2
                    BUF [0x03] = L3H3
                    BUF [0x04] = L3H4
                    BUF [0x05] = L3H5
                    BUF [0x06] = L3H6
                    BUF [0x07] = L3H7
                    BUF [0x08] = L3H8
                }

            }

            Return (ToString (BUF, Ones))
        }

        Method (HCID, 1, Serialized)
        {
            Switch (Arg0)
            {
                Case (Zero)
                {
                    Local0 = L0SM
                }
                Case (One)
                {
                    Local0 = L1SM
                }
                Case (0x02)
                {
                    Local0 = L2SM
                }
                Default
                {
                    Local0 = L3SM
                }

            }

            Switch (Local0)
            {
                Case (Zero)
                {
                    Return ("INT3471")
                }
                Case (One)
                {
                    Return ("INT33BE")
                }
                Case (0x02)
                {
                    Return ("INT3476")
                }
                Case (0x03)
                {
                    Return ("INT3477")
                }
                Case (0x04)
                {
                    Return ("INT3474")
                }
                Case (0x05)
                {
                    Return ("INT3473")
                }
                Case (0x06)
                {
                    Return ("INT3475")
                }
                Case (0x07)
                {
                    Return ("INT3478")
                }
                Case (0x08)
                {
                    Return ("INT3479")
                }
                Case (0x09)
                {
                    Return ("INT347A")
                }
                Case (0x0A)
                {
                    Return ("INT347B")
                }
                Default
                {
                    Return (GRID (Arg0))
                }

            }
        }

        Method (CDEP, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                If ((C0TP == One))
                {
                    Switch (L0BS)
                    {
                        Case (Zero)
                        {
                            Return (Package (0x02)
                            {
                                DSC0, 
                                I2C0
                            })
                        }
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                DSC0, 
                                I2C1
                            })
                        }
                        Case (0x02)
                        {
                            Return (Package (0x02)
                            {
                                DSC0, 
                                I2C2
                            })
                        }
                        Case (0x03)
                        {
                            Return (Package (0x02)
                            {
                                DSC0, 
                                I2C3
                            })
                        }
                        Case (0x04)
                        {
                            Return (Package (0x02)
                            {
                                DSC0, 
                                I2C4
                            })
                        }
                        Case (0x05)
                        {
                            Return (Package (0x02)
                            {
                                DSC0, 
                                I2C5
                            })
                        }
                        Default
                        {
                            Return (Package (0x01)
                            {
                                DSC0
                            })
                        }

                    }
                }

                If ((C0TP > One))
                {
                    Return (Package (0x01)
                    {
                        CLP0
                    })
                }
            }

            If ((Arg0 == One))
            {
                If ((C1TP == One))
                {
                    Switch (L1BS)
                    {
                        Case (Zero)
                        {
                            Return (Package (0x02)
                            {
                                DSC1, 
                                I2C0
                            })
                        }
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                DSC1, 
                                I2C1
                            })
                        }
                        Case (0x02)
                        {
                            Return (Package (0x02)
                            {
                                DSC1, 
                                I2C2
                            })
                        }
                        Case (0x03)
                        {
                            Return (Package (0x02)
                            {
                                DSC1, 
                                I2C3
                            })
                        }
                        Case (0x04)
                        {
                            Return (Package (0x02)
                            {
                                DSC1, 
                                I2C4
                            })
                        }
                        Case (0x05)
                        {
                            Return (Package (0x02)
                            {
                                DSC1, 
                                I2C5
                            })
                        }
                        Default
                        {
                            Return (Package (0x01)
                            {
                                DSC1
                            })
                        }

                    }
                }

                If ((C1TP > One))
                {
                    Return (Package (0x01)
                    {
                        CLP1
                    })
                }
            }

            If ((Arg0 == 0x02))
            {
                If ((C2TP == One))
                {
                    Switch (L2BS)
                    {
                        Case (Zero)
                        {
                            Return (Package (0x02)
                            {
                                DSC2, 
                                I2C0
                            })
                        }
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                DSC2, 
                                I2C1
                            })
                        }
                        Case (0x02)
                        {
                            Return (Package (0x02)
                            {
                                DSC2, 
                                I2C2
                            })
                        }
                        Case (0x03)
                        {
                            Return (Package (0x02)
                            {
                                DSC2, 
                                I2C3
                            })
                        }
                        Case (0x04)
                        {
                            Return (Package (0x02)
                            {
                                DSC2, 
                                I2C4
                            })
                        }
                        Case (0x05)
                        {
                            Return (Package (0x02)
                            {
                                DSC2, 
                                I2C5
                            })
                        }
                        Default
                        {
                            Return (Package (0x01)
                            {
                                DSC2
                            })
                        }

                    }
                }

                If ((C2TP > One))
                {
                    Return (Package (0x01)
                    {
                        CLP2
                    })
                }
            }

            If ((Arg0 == 0x03))
            {
                If ((C3TP == One))
                {
                    Switch (L3BS)
                    {
                        Case (Zero)
                        {
                            Return (Package (0x02)
                            {
                                DSC3, 
                                I2C0
                            })
                        }
                        Case (One)
                        {
                            Return (Package (0x02)
                            {
                                DSC3, 
                                I2C1
                            })
                        }
                        Case (0x02)
                        {
                            Return (Package (0x02)
                            {
                                DSC3, 
                                I2C2
                            })
                        }
                        Case (0x03)
                        {
                            Return (Package (0x02)
                            {
                                DSC3, 
                                I2C3
                            })
                        }
                        Case (0x04)
                        {
                            Return (Package (0x02)
                            {
                                DSC3, 
                                I2C4
                            })
                        }
                        Case (0x05)
                        {
                            Return (Package (0x02)
                            {
                                DSC3, 
                                I2C5
                            })
                        }
                        Default
                        {
                            Return (Package (0x01)
                            {
                                DSC3
                            })
                        }

                    }
                }

                If ((C3TP > One))
                {
                    Return (Package (0x01)
                    {
                        CLP3
                    })
                }
            }

            Return (Package (0x01)
            {
                PCI0
            })
        }

        Device (DSC0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((C0GP > Zero))
                {
                    Local1 = PINR (C0P0, C0G0)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C0GP > One))
                {
                    Local1 = PINR (C0P1, C0G1)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C0GP > 0x02))
                {
                    Local1 = PINR (C0P2, C0G2)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C0GP > 0x03))
                {
                    Local1 = PINR (C0P3, C0G3)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL00)
                {
                    If ((C0TP == One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C0TP
                PAR [0x03] = C0CV
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x3F                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (C0GP)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (GPPI (C0F0, ((0x18 * C0G0) + C0P0), C0I0, C0A0))
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (GPPI (C0F1, ((0x18 * C0G1) + C0P1), C0I1, C0A1))
                    }

                    If ((Arg2 == 0x04))
                    {
                        Return (GPPI (C0F2, ((0x18 * C0G2) + C0P2), C0I2, C0A2))
                    }

                    If ((Arg2 == 0x05))
                    {
                        Return (GPPI (C0F3, ((0x18 * C0G3) + C0P3), C0I3, C0A3))
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }
            }
        }

        Device (DSC1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((C1GP > Zero))
                {
                    Local1 = PINR (C1P0, C1G0)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C1GP > One))
                {
                    Local1 = PINR (C1P1, C1G1)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C1GP > 0x02))
                {
                    Local1 = PINR (C1P2, C1G2)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C1GP > 0x03))
                {
                    Local1 = PINR (C1P3, C1G3)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL01)
                {
                    If ((C1TP == One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C1TP
                PAR [0x03] = C1CV
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x3F                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (C1GP)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (GPPI (C1F0, ((0x18 * C1G0) + C1P0), C1I0, C1A0))
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (GPPI (C1F1, ((0x18 * C1G1) + C1P1), C1I1, C1A1))
                    }

                    If ((Arg2 == 0x04))
                    {
                        Return (GPPI (C1F2, ((0x18 * C1G2) + C1P2), C1I2, C1A2))
                    }

                    If ((Arg2 == 0x05))
                    {
                        Return (GPPI (C1F3, ((0x18 * C1G3) + C1P3), C1I3, C1A3))
                    }
                }
            }
        }

        Device (DSC2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((C2GP > Zero))
                {
                    Local1 = PINR (C2P0, C2G0)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C2GP > One))
                {
                    Local1 = PINR (C2P1, C2G1)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C2GP > 0x02))
                {
                    Local1 = PINR (C2P2, C2G2)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C2GP > 0x03))
                {
                    Local1 = PINR (C2P3, C2G3)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL02)
                {
                    If ((C2TP == One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C2TP
                PAR [0x03] = C2CV
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x3F                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (C2GP)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (GPPI (C2F0, ((0x18 * C2G0) + C2P0), C2I0, C2A0))
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (GPPI (C2F1, ((0x18 * C2G1) + C2P1), C2I1, C2A1))
                    }

                    If ((Arg2 == 0x04))
                    {
                        Return (GPPI (C2F2, ((0x18 * C2G2) + C2P2), C2I2, C2A2))
                    }

                    If ((Arg2 == 0x05))
                    {
                        Return (GPPI (C2F3, ((0x18 * C2G3) + C2P3), C2I3, C2A3))
                    }
                }
            }
        }

        Device (DSC3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((C3GP > Zero))
                {
                    Local1 = PINR (C3P0, C3G0)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C3GP > One))
                {
                    Local1 = PINR (C3P1, C3G1)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C3GP > 0x02))
                {
                    Local1 = PINR (C3P2, C3G2)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((C3GP > 0x03))
                {
                    Local1 = PINR (C3P3, C3G3)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL03)
                {
                    If ((C3TP == One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C3TP
                PAR [0x03] = C3CV
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x3F                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (C3GP)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (GPPI (C3F0, ((0x18 * C3G0) + C3P0), C3I0, C3A0))
                    }

                    If ((Arg2 == 0x03))
                    {
                        Return (GPPI (C3F1, ((0x18 * C3G1) + C3P1), C3I1, C3A1))
                    }

                    If ((Arg2 == 0x04))
                    {
                        Return (GPPI (C3F2, ((0x18 * C3G2) + C3P2), C3I2, C3A2))
                    }

                    If ((Arg2 == 0x05))
                    {
                        Return (GPPI (C3F3, ((0x18 * C3G3) + C3P3), C3I3, C3A3))
                    }
                }
            }
        }

        Device (CLP0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (CL00)
                {
                    If ((C0IB == 0x02))
                    {
                        Return (Package (0x01)
                        {
                            I2C2
                        })
                    }

                    If ((C0IB == 0x03))
                    {
                        Return (Package (0x01)
                        {
                            I2C3
                        })
                    }
                }

                Return (Package (0x01)
                {
                    PCI0
                })
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                ConcatenateResTemplate (Local0, IICB (C0IA, C0IB), Local0)
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL00)
                {
                    If ((C0TP > One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C0TP
                PAR [0x03] = C0CV
                Return (PAR)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x29, 0x0D, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = C0PL
                Return (PLDB)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (One)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (DSMI (0x0B, C0IA, Zero, C0IB))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        I2CC = One
                        DEV0 = DSMI (0x0B, C0IA, Zero, C0IB)
                        Return (DSMB)
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }

        Device (CLP1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (CL01)
                {
                    If ((C1IB == 0x02))
                    {
                        Return (Package (0x01)
                        {
                            I2C2
                        })
                    }

                    If ((C1IB == 0x03))
                    {
                        Return (Package (0x01)
                        {
                            I2C3
                        })
                    }
                }

                Return (Package (0x01)
                {
                    PCI0
                })
            }

            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                ConcatenateResTemplate (Local0, IICB (C1IA, C1IB), Local0)
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL01)
                {
                    If ((C1TP > One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C1TP
                PAR [0x03] = C1CV
                Return (PAR)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x29, 0x0D, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = C1PL
                Return (PLDB)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (One)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (DSMI (0x0B, C1IA, Zero, C1IB))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        I2CC = One
                        DEV0 = DSMI (0x0B, C1IA, Zero, C1IB)
                        Return (DSMB)
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }

        Device (CLP2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (CL02)
                {
                    If ((C2IB == 0x02))
                    {
                        Return (Package (0x01)
                        {
                            I2C2
                        })
                    }

                    If ((C2IB == 0x03))
                    {
                        Return (Package (0x01)
                        {
                            I2C3
                        })
                    }
                }

                Return (Package (0x01)
                {
                    PCI0
                })
            }

            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                ConcatenateResTemplate (Local0, IICB (C2IA, C2IB), Local0)
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL02)
                {
                    If ((C2TP > One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C2TP
                PAR [0x03] = C2CV
                Return (PAR)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x29, 0x0D, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = C2PL
                Return (PLDB)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (One)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (DSMI (0x0B, C2IA, Zero, C2IB))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        I2CC = One
                        DEV0 = DSMI (0x0B, C2IA, Zero, C2IB)
                        Return (DSMB)
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }

        Device (CLP3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (CL03)
                {
                    If ((C3IB == 0x02))
                    {
                        Return (Package (0x01)
                        {
                            I2C2
                        })
                    }

                    If ((C3IB == 0x03))
                    {
                        Return (Package (0x01)
                        {
                            I2C3
                        })
                    }
                }

                Return (Package (0x01)
                {
                    PCI0
                })
            }

            Name (_HID, "INT3472")  // _HID: Hardware ID
            Name (_CID, "INT3472")  // _CID: Compatible ID
            Name (_DDN, "PMIC-CRDG")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                ConcatenateResTemplate (Local0, IICB (C3IA, C3IB), Local0)
                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (CL03)
                {
                    If ((C3TP > One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (CLDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x20)
                {
                    /* 0000 */  0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                })
                PAR [One] = C3TP
                PAR [0x03] = C3CV
                Return (PAR)
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x29, 0x0D, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = C3PL
                Return (PLDB)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x07                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (One)
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (DSMI (0x0B, C3IA, Zero, C3IB))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        I2CC = One
                        DEV0 = DSMI (0x0B, C3IA, Zero, C3IB)
                        Return (DSMB)
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }

        Device (LNK0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (L0EN)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (L0EN)
                {
                    Return (CDEP (L0CL))
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        PCI0
                    })
                }
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (HCID (Zero))
            }

            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                Return (HCID (Zero))
            }

            Method (_DDN, 0, NotSerialized)  // _DDN: DOS Device Name
            {
                Name (BUF, Buffer (0x10){})
                BUF [Zero] = L0M0
                BUF [One] = L0M1
                BUF [0x02] = L0M2
                BUF [0x03] = L0M3
                BUF [0x04] = L0M4
                BUF [0x05] = L0M5
                BUF [0x06] = L0M6
                BUF [0x07] = L0M7
                BUF [0x08] = L0M8
                BUF [0x09] = L0M9
                BUF [0x0A] = L0MA
                BUF [0x0B] = L0MB
                BUF [0x0C] = L0MC
                BUF [0x0D] = L0MD
                BUF [0x0E] = L0ME
                BUF [0x0F] = L0MF
                Return (ToString (BUF, Ones))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = L0PL
                Return (PLDB)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((L0DI > Zero))
                {
                    Local1 = IICB (L0A0, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > One))
                {
                    Local1 = IICB (L0A1, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x02))
                {
                    Local1 = IICB (L0A2, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x03))
                {
                    Local1 = IICB (L0A3, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x04))
                {
                    Local1 = IICB (L0A4, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x05))
                {
                    Local1 = IICB (L0A5, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x06))
                {
                    Local1 = IICB (L0A6, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x07))
                {
                    Local1 = IICB (L0A7, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x08))
                {
                    Local1 = IICB (L0A8, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x09))
                {
                    Local1 = IICB (L0A9, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x0A))
                {
                    Local1 = IICB (L0AA, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L0DI > 0x0B))
                {
                    Local1 = IICB (L0AB, L0BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (SSDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x6C)
                {
                    /* 0000 */  0x00, 0x00, 0x69, 0x56, 0x39, 0x8A, 0xF7, 0x11,
                    /* 0008 */  0xA9, 0x4E, 0x9C, 0x7D, 0x20, 0xEE, 0x0A, 0xB5,
                    /* 0010 */  0xCA, 0x40, 0xA3, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0050 */  0x09, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
                    /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0068 */  0x00, 0x00, 0x00, 0x00                         
                })
                PAR [Zero] = L0DV
                PAR [One] = L0CV
                PAR [0x18] = CDIV
                PAR [0x1C] = L0LU
                PAR [0x1D] = L0NL
                PAR [0x4E] = L0EE
                PAR [0x4F] = L0VC
                PAR [0x52] = L0FS
                PAR [0x54] = L0DG
                CreateDWordField (PAR, 0x56, DAT)
                DAT = L0CK
                PAR [0x5A] = L0CL
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (BUF, Buffer (0x10){})
                        BUF [Zero] = L0M0
                        BUF [One] = L0M1
                        BUF [0x02] = L0M2
                        BUF [0x03] = L0M3
                        BUF [0x04] = L0M4
                        BUF [0x05] = L0M5
                        BUF [0x06] = L0M6
                        BUF [0x07] = L0M7
                        BUF [0x08] = L0M8
                        BUF [0x09] = L0M9
                        BUF [0x0A] = L0MA
                        BUF [0x0B] = L0MB
                        BUF [0x0C] = L0MC
                        BUF [0x0D] = L0MD
                        BUF [0x0E] = L0ME
                        BUF [0x0F] = L0MF
                        Return (ToString (BUF, Ones))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        CreateDWordField (DSMB, 0x08, DEV1)
                        CreateDWordField (DSMB, 0x0C, DEV2)
                        CreateDWordField (DSMB, 0x10, DEV3)
                        CreateDWordField (DSMB, 0x14, DEV4)
                        CreateDWordField (DSMB, 0x18, DEV5)
                        CreateDWordField (DSMB, 0x1C, DEV6)
                        CreateDWordField (DSMB, 0x20, DEV7)
                        CreateDWordField (DSMB, 0x24, DEV8)
                        CreateDWordField (DSMB, 0x28, DEV9)
                        CreateDWordField (DSMB, 0x2C, DEVA)
                        CreateDWordField (DSMB, 0x30, DEVB)
                        I2CC = L0DI
                        DEV0 = DSMI (L0D0, L0A0, Zero, L0BS)
                        DEV1 = DSMI (L0D1, L0A1, Zero, L0BS)
                        DEV2 = DSMI (L0D2, L0A2, Zero, L0BS)
                        DEV3 = DSMI (L0D3, L0A3, Zero, L0BS)
                        DEV4 = DSMI (L0D4, L0A4, Zero, L0BS)
                        DEV5 = DSMI (L0D5, L0A5, Zero, L0BS)
                        DEV6 = DSMI (L0D6, L0A6, Zero, L0BS)
                        DEV7 = DSMI (L0D7, L0A7, Zero, L0BS)
                        DEV8 = DSMI (L0D8, L0A8, Zero, L0BS)
                        DEV9 = DSMI (L0D9, L0A9, Zero, L0BS)
                        DEVA = DSMI (L0DA, L0AA, Zero, L0BS)
                        DEVB = DSMI (L0DB, L0AB, Zero, L0BS)
                        Return (DSMB)
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }

                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0xFF, 0x1F                                     
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (L0DI)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((L0DI > Zero))
                        {
                            Return (DSMI (L0D0, L0A0, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        If ((L0DI > One))
                        {
                            Return (DSMI (L0D1, L0A1, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x04))
                    {
                        If ((L0DI > 0x02))
                        {
                            Return (DSMI (L0D2, L0A2, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x05))
                    {
                        If ((L0DI > 0x03))
                        {
                            Return (DSMI (L0D3, L0A3, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x06))
                    {
                        If ((L0DI > 0x04))
                        {
                            Return (DSMI (L0D4, L0A4, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x07))
                    {
                        If ((L0DI > 0x05))
                        {
                            Return (DSMI (L0D5, L0A5, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L0DI > 0x06))
                        {
                            Return (DSMI (L0D6, L0A6, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L0DI > 0x07))
                        {
                            Return (DSMI (L0D7, L0A7, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x09))
                    {
                        If ((L0DI > 0x08))
                        {
                            Return (DSMI (L0D8, L0A8, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0A))
                    {
                        If ((L0DI > 0x09))
                        {
                            Return (DSMI (L0D9, L0A9, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0B))
                    {
                        If ((L0DI > 0x0A))
                        {
                            Return (DSMI (L0DA, L0AA, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0C))
                    {
                        If ((L0DI > 0x0B))
                        {
                            Return (DSMI (L0DB, L0AB, Zero, L0BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }
        }

        Device (LNK1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (L1EN)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (L1EN)
                {
                    Return (CDEP (L1CL))
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        PCI0
                    })
                }
            }

            Name (_UID, One)  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (HCID (One))
            }

            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                Return (HCID (One))
            }

            Method (_DDN, 0, NotSerialized)  // _DDN: DOS Device Name
            {
                Name (BUF, Buffer (0x10){})
                BUF [Zero] = L1M0
                BUF [One] = L1M1
                BUF [0x02] = L1M2
                BUF [0x03] = L1M3
                BUF [0x04] = L1M4
                BUF [0x05] = L1M5
                BUF [0x06] = L1M6
                BUF [0x07] = L1M7
                BUF [0x08] = L1M8
                BUF [0x09] = L1M9
                BUF [0x0A] = L1MA
                BUF [0x0B] = L1MB
                BUF [0x0C] = L1MC
                BUF [0x0D] = L1MD
                BUF [0x0E] = L1ME
                BUF [0x0F] = L1MF
                Return (ToString (BUF, Ones))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = L1PL
                Return (PLDB)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((L1DI > Zero))
                {
                    Local1 = IICB (L1A0, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > One))
                {
                    Local1 = IICB (L1A1, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x02))
                {
                    Local1 = IICB (L1A2, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x03))
                {
                    Local1 = IICB (L1A3, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x04))
                {
                    Local1 = IICB (L1A4, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x05))
                {
                    Local1 = IICB (L1A5, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x06))
                {
                    Local1 = IICB (L1A6, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x07))
                {
                    Local1 = IICB (L1A7, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x08))
                {
                    Local1 = IICB (L1A8, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x09))
                {
                    Local1 = IICB (L1A9, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x0A))
                {
                    Local1 = IICB (L1AA, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L1DI > 0x0B))
                {
                    Local1 = IICB (L1AB, L1BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (SSDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x6C)
                {
                    /* 0000 */  0x00, 0x00, 0x69, 0x56, 0x39, 0x8A, 0xF7, 0x11,
                    /* 0008 */  0xA9, 0x4E, 0x9C, 0x7D, 0x20, 0xEE, 0x0A, 0xB5,
                    /* 0010 */  0xCA, 0x40, 0xA3, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0050 */  0x09, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
                    /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0068 */  0x00, 0x00, 0x00, 0x00                         
                })
                PAR [Zero] = L1DV
                PAR [One] = L1CV
                PAR [0x18] = CDIV
                PAR [0x1C] = L1LU
                PAR [0x1D] = L1NL
                PAR [0x4E] = L1EE
                PAR [0x4F] = L1VC
                PAR [0x52] = L1FS
                PAR [0x54] = L1DG
                CreateDWordField (PAR, 0x56, DAT)
                DAT = L1CK
                PAR [0x5A] = L1CL
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (BUF, Buffer (0x10){})
                        BUF [Zero] = L1M0
                        BUF [One] = L1M1
                        BUF [0x02] = L1M2
                        BUF [0x03] = L1M3
                        BUF [0x04] = L1M4
                        BUF [0x05] = L1M5
                        BUF [0x06] = L1M6
                        BUF [0x07] = L1M7
                        BUF [0x08] = L1M8
                        BUF [0x09] = L1M9
                        BUF [0x0A] = L1MA
                        BUF [0x0B] = L1MB
                        BUF [0x0C] = L1MC
                        BUF [0x0D] = L1MD
                        BUF [0x0E] = L1ME
                        BUF [0x0F] = L1MF
                        Return (ToString (BUF, Ones))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        CreateDWordField (DSMB, 0x08, DEV1)
                        CreateDWordField (DSMB, 0x0C, DEV2)
                        CreateDWordField (DSMB, 0x10, DEV3)
                        CreateDWordField (DSMB, 0x14, DEV4)
                        CreateDWordField (DSMB, 0x18, DEV5)
                        CreateDWordField (DSMB, 0x1C, DEV6)
                        CreateDWordField (DSMB, 0x20, DEV7)
                        CreateDWordField (DSMB, 0x24, DEV8)
                        CreateDWordField (DSMB, 0x28, DEV9)
                        CreateDWordField (DSMB, 0x2C, DEVA)
                        CreateDWordField (DSMB, 0x30, DEVB)
                        I2CC = L1DI
                        DEV0 = DSMI (L1D0, L1A0, Zero, L1BS)
                        DEV1 = DSMI (L1D1, L1A1, Zero, L1BS)
                        DEV2 = DSMI (L1D2, L1A2, Zero, L1BS)
                        DEV3 = DSMI (L1D3, L1A3, Zero, L1BS)
                        DEV4 = DSMI (L1D4, L1A4, Zero, L1BS)
                        DEV5 = DSMI (L1D5, L1A5, Zero, L1BS)
                        DEV6 = DSMI (L1D6, L1A6, Zero, L1BS)
                        DEV7 = DSMI (L1D7, L1A7, Zero, L1BS)
                        DEV8 = DSMI (L1D8, L1A8, Zero, L1BS)
                        DEV9 = DSMI (L1D9, L1A9, Zero, L1BS)
                        DEVA = DSMI (L1DA, L1AA, Zero, L1BS)
                        DEVB = DSMI (L1DB, L1AB, Zero, L1BS)
                        Return (DSMB)
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }

                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0xFF, 0x1F                                     
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (L1DI)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((L1DI > Zero))
                        {
                            Return (DSMI (L1D0, L1A0, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        If ((L1DI > One))
                        {
                            Return (DSMI (L1D1, L1A1, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x04))
                    {
                        If ((L1DI > 0x02))
                        {
                            Return (DSMI (L1D2, L1A2, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x05))
                    {
                        If ((L1DI > 0x03))
                        {
                            Return (DSMI (L1D3, L1A3, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x06))
                    {
                        If ((L1DI > 0x04))
                        {
                            Return (DSMI (L1D4, L1A4, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x07))
                    {
                        If ((L1DI > 0x05))
                        {
                            Return (DSMI (L1D5, L1A5, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L1DI > 0x06))
                        {
                            Return (DSMI (L1D6, L1A6, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L1DI > 0x07))
                        {
                            Return (DSMI (L1D7, L1A7, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x09))
                    {
                        If ((L1DI > 0x08))
                        {
                            Return (DSMI (L1D8, L1A8, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0A))
                    {
                        If ((L1DI > 0x09))
                        {
                            Return (DSMI (L1D9, L1A9, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0B))
                    {
                        If ((L1DI > 0x0A))
                        {
                            Return (DSMI (L1DA, L1AA, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0C))
                    {
                        If ((L1DI > 0x0B))
                        {
                            Return (DSMI (L1DB, L1AB, Zero, L1BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }
        }

        Device (LNK2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (L2EN)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (L2EN)
                {
                    Return (CDEP (L2CL))
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        PCI0
                    })
                }
            }

            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (HCID (0x02))
            }

            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                Return (HCID (0x02))
            }

            Method (_DDN, 0, NotSerialized)  // _DDN: DOS Device Name
            {
                Name (BUF, Buffer (0x10){})
                BUF [Zero] = L2M0
                BUF [One] = L2M1
                BUF [0x02] = L2M2
                BUF [0x03] = L2M3
                BUF [0x04] = L2M4
                BUF [0x05] = L2M5
                BUF [0x06] = L2M6
                BUF [0x07] = L2M7
                BUF [0x08] = L2M8
                BUF [0x09] = L2M9
                BUF [0x0A] = L2MA
                BUF [0x0B] = L2MB
                BUF [0x0C] = L2MC
                BUF [0x0D] = L2MD
                BUF [0x0E] = L2ME
                BUF [0x0F] = L2MF
                Return (ToString (BUF, Ones))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = L2PL
                Return (PLDB)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((L2DI > Zero))
                {
                    Local1 = IICB (L2A0, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > One))
                {
                    Local1 = IICB (L2A1, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x02))
                {
                    Local1 = IICB (L2A2, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x03))
                {
                    Local1 = IICB (L2A3, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x04))
                {
                    Local1 = IICB (L2A4, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x05))
                {
                    Local1 = IICB (L2A5, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x06))
                {
                    Local1 = IICB (L2A6, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x07))
                {
                    Local1 = IICB (L2A7, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x08))
                {
                    Local1 = IICB (L2A8, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x09))
                {
                    Local1 = IICB (L2A9, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x0A))
                {
                    Local1 = IICB (L2AA, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L2DI > 0x0B))
                {
                    Local1 = IICB (L2AB, L2BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (SSDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x6C)
                {
                    /* 0000 */  0x00, 0x00, 0x69, 0x56, 0x39, 0x8A, 0xF7, 0x11,
                    /* 0008 */  0xA9, 0x4E, 0x9C, 0x7D, 0x20, 0xEE, 0x0A, 0xB5,
                    /* 0010 */  0xCA, 0x40, 0xA3, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0050 */  0x09, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
                    /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0068 */  0x00, 0x00, 0x00, 0x00                         
                })
                PAR [Zero] = L2DV
                PAR [One] = L2CV
                PAR [0x18] = CDIV
                PAR [0x1C] = L2LU
                PAR [0x1D] = L2NL
                PAR [0x4E] = L2EE
                PAR [0x4F] = L2VC
                PAR [0x52] = L2FS
                PAR [0x54] = L2DG
                CreateDWordField (PAR, 0x56, DAT)
                DAT = L2CK
                PAR [0x5A] = L2CL
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (BUF, Buffer (0x10){})
                        BUF [Zero] = L2M0
                        BUF [One] = L2M1
                        BUF [0x02] = L2M2
                        BUF [0x03] = L2M3
                        BUF [0x04] = L2M4
                        BUF [0x05] = L2M5
                        BUF [0x06] = L2M6
                        BUF [0x07] = L2M7
                        BUF [0x08] = L2M8
                        BUF [0x09] = L2M9
                        BUF [0x0A] = L2MA
                        BUF [0x0B] = L2MB
                        BUF [0x0C] = L2MC
                        BUF [0x0D] = L2MD
                        BUF [0x0E] = L2ME
                        BUF [0x0F] = L2MF
                        Return (ToString (BUF, Ones))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        CreateDWordField (DSMB, 0x08, DEV1)
                        CreateDWordField (DSMB, 0x0C, DEV2)
                        CreateDWordField (DSMB, 0x10, DEV3)
                        CreateDWordField (DSMB, 0x14, DEV4)
                        CreateDWordField (DSMB, 0x18, DEV5)
                        CreateDWordField (DSMB, 0x1C, DEV6)
                        CreateDWordField (DSMB, 0x20, DEV7)
                        CreateDWordField (DSMB, 0x24, DEV8)
                        CreateDWordField (DSMB, 0x28, DEV9)
                        CreateDWordField (DSMB, 0x2C, DEVA)
                        CreateDWordField (DSMB, 0x30, DEVB)
                        I2CC = L2DI
                        DEV0 = DSMI (L2D0, L2A0, Zero, L2BS)
                        DEV1 = DSMI (L2D1, L2A1, Zero, L2BS)
                        DEV2 = DSMI (L2D2, L2A2, Zero, L2BS)
                        DEV3 = DSMI (L2D3, L2A3, Zero, L2BS)
                        DEV4 = DSMI (L2D4, L2A4, Zero, L2BS)
                        DEV5 = DSMI (L2D5, L2A5, Zero, L2BS)
                        DEV6 = DSMI (L2D6, L2A6, Zero, L2BS)
                        DEV7 = DSMI (L2D7, L2A7, Zero, L2BS)
                        DEV8 = DSMI (L2D8, L2A8, Zero, L2BS)
                        DEV9 = DSMI (L2D9, L2A9, Zero, L2BS)
                        DEVA = DSMI (L2DA, L2AA, Zero, L2BS)
                        DEVB = DSMI (L2DB, L2AB, Zero, L2BS)
                        Return (DSMB)
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }

                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0xFF, 0x1F                                     
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (L2DI)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((L2DI > Zero))
                        {
                            Return (DSMI (L2D0, L2A0, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        If ((L2DI > One))
                        {
                            Return (DSMI (L2D1, L2A1, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x04))
                    {
                        If ((L2DI > 0x02))
                        {
                            Return (DSMI (L2D2, L2A2, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x05))
                    {
                        If ((L2DI > 0x03))
                        {
                            Return (DSMI (L2D3, L2A3, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x06))
                    {
                        If ((L2DI > 0x04))
                        {
                            Return (DSMI (L2D4, L2A4, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x07))
                    {
                        If ((L2DI > 0x05))
                        {
                            Return (DSMI (L2D5, L2A5, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L2DI > 0x06))
                        {
                            Return (DSMI (L2D6, L2A6, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L2DI > 0x07))
                        {
                            Return (DSMI (L2D7, L2A7, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x09))
                    {
                        If ((L2DI > 0x08))
                        {
                            Return (DSMI (L2D8, L2A8, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0A))
                    {
                        If ((L2DI > 0x09))
                        {
                            Return (DSMI (L2D9, L2A9, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0B))
                    {
                        If ((L2DI > 0x0A))
                        {
                            Return (DSMI (L2DA, L2AA, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0C))
                    {
                        If ((L2DI > 0x0B))
                        {
                            Return (DSMI (L2DB, L2AB, Zero, L2BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }
        }

        Device (LNK3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (L3EN)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If (L3EN)
                {
                    Return (CDEP (L3CL))
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        PCI0
                    })
                }
            }

            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (HCID (0x03))
            }

            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                Return (HCID (0x03))
            }

            Method (_DDN, 0, NotSerialized)  // _DDN: DOS Device Name
            {
                Name (BUF, Buffer (0x10){})
                BUF [Zero] = L3M0
                BUF [One] = L3M1
                BUF [0x02] = L3M2
                BUF [0x03] = L3M3
                BUF [0x04] = L3M4
                BUF [0x05] = L3M5
                BUF [0x06] = L3M6
                BUF [0x07] = L3M7
                BUF [0x08] = L3M8
                BUF [0x09] = L3M9
                BUF [0x0A] = L3MA
                BUF [0x0B] = L3MB
                BUF [0x0C] = L3MC
                BUF [0x0D] = L3MD
                BUF [0x0E] = L3ME
                BUF [0x0F] = L3MF
                Return (ToString (BUF, Ones))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x69, 0x0E, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                         
                    }
                })
                CreateByteField (DerefOf (PLDB [Zero]), 0x08, BPOS)
                BPOS = L3PL
                Return (PLDB)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                     
                    }
                If ((L3DI > Zero))
                {
                    Local1 = IICB (L3A0, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > One))
                {
                    Local1 = IICB (L3A1, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x02))
                {
                    Local1 = IICB (L3A2, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x03))
                {
                    Local1 = IICB (L3A3, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x04))
                {
                    Local1 = IICB (L3A4, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x05))
                {
                    Local1 = IICB (L3A5, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x06))
                {
                    Local1 = IICB (L3A6, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x07))
                {
                    Local1 = IICB (L3A7, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x08))
                {
                    Local1 = IICB (L3A8, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x09))
                {
                    Local1 = IICB (L3A9, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x0A))
                {
                    Local1 = IICB (L3AA, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                If ((L3DI > 0x0B))
                {
                    Local1 = IICB (L3AB, L3BS)
                    ConcatenateResTemplate (Local0, Local1, Local0)
                }

                Return (Local0)
            }

            Method (SSDB, 0, NotSerialized)
            {
                Name (PAR, Buffer (0x6C)
                {
                    /* 0000 */  0x00, 0x00, 0x69, 0x56, 0x39, 0x8A, 0xF7, 0x11,
                    /* 0008 */  0xA9, 0x4E, 0x9C, 0x7D, 0x20, 0xEE, 0x0A, 0xB5,
                    /* 0010 */  0xCA, 0x40, 0xA3, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0050 */  0x09, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
                    /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                    /* 0068 */  0x00, 0x00, 0x00, 0x00                         
                })
                PAR [Zero] = L3DV
                PAR [One] = L3CV
                PAR [0x18] = CDIV
                PAR [0x1C] = L3LU
                PAR [0x1D] = L3NL
                PAR [0x4E] = L3EE
                PAR [0x4F] = L3VC
                PAR [0x52] = L3FS
                PAR [0x54] = L3DG
                CreateDWordField (PAR, 0x56, DAT)
                DAT = L3CK
                PAR [0x5A] = L3CL
                Return (PAR)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (BUF, Buffer (0x10){})
                        BUF [Zero] = L3M0
                        BUF [One] = L3M1
                        BUF [0x02] = L3M2
                        BUF [0x03] = L3M3
                        BUF [0x04] = L3M4
                        BUF [0x05] = L3M5
                        BUF [0x06] = L3M6
                        BUF [0x07] = L3M7
                        BUF [0x08] = L3M8
                        BUF [0x09] = L3M9
                        BUF [0x0A] = L3MA
                        BUF [0x0B] = L3MB
                        BUF [0x0C] = L3MC
                        BUF [0x0D] = L3MD
                        BUF [0x0E] = L3ME
                        BUF [0x0F] = L3MF
                        Return (ToString (BUF, Ones))
                    }
                }

                If ((Arg0 == ToUUID ("5815c5c8-c47d-477b-9a8d-76173176414b")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Name (DSMB, Buffer (0x34){})
                        CreateDWordField (DSMB, Zero, I2CC)
                        CreateDWordField (DSMB, 0x04, DEV0)
                        CreateDWordField (DSMB, 0x08, DEV1)
                        CreateDWordField (DSMB, 0x0C, DEV2)
                        CreateDWordField (DSMB, 0x10, DEV3)
                        CreateDWordField (DSMB, 0x14, DEV4)
                        CreateDWordField (DSMB, 0x18, DEV5)
                        CreateDWordField (DSMB, 0x1C, DEV6)
                        CreateDWordField (DSMB, 0x20, DEV7)
                        CreateDWordField (DSMB, 0x24, DEV8)
                        CreateDWordField (DSMB, 0x28, DEV9)
                        CreateDWordField (DSMB, 0x2C, DEVA)
                        CreateDWordField (DSMB, 0x30, DEVB)
                        I2CC = L3DI
                        DEV0 = DSMI (L3D0, L3A0, Zero, L3BS)
                        DEV1 = DSMI (L3D1, L3A1, Zero, L3BS)
                        DEV2 = DSMI (L3D2, L3A2, Zero, L3BS)
                        DEV3 = DSMI (L3D3, L3A3, Zero, L3BS)
                        DEV4 = DSMI (L3D4, L3A4, Zero, L3BS)
                        DEV5 = DSMI (L3D5, L3A5, Zero, L3BS)
                        DEV6 = DSMI (L3D6, L3A6, Zero, L3BS)
                        DEV7 = DSMI (L3D7, L3A7, Zero, L3BS)
                        DEV8 = DSMI (L3D8, L3A8, Zero, L3BS)
                        DEV9 = DSMI (L3D9, L3A9, Zero, L3BS)
                        DEVA = DSMI (L3DA, L3AA, Zero, L3BS)
                        DEVB = DSMI (L3DB, L3AB, Zero, L3BS)
                        Return (DSMB)
                    }

                    Return (Buffer (One)
                    {
                         0x00                                           
                    })
                }

                If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0xFF, 0x1F                                     
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x01                                           
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return (L3DI)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((L3DI > Zero))
                        {
                            Return (DSMI (L3D0, L3A0, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        If ((L3DI > One))
                        {
                            Return (DSMI (L3D1, L3A1, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x04))
                    {
                        If ((L3DI > 0x02))
                        {
                            Return (DSMI (L3D2, L3A2, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x05))
                    {
                        If ((L3DI > 0x03))
                        {
                            Return (DSMI (L3D3, L3A3, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x06))
                    {
                        If ((L3DI > 0x04))
                        {
                            Return (DSMI (L3D4, L3A4, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x07))
                    {
                        If ((L3DI > 0x05))
                        {
                            Return (DSMI (L3D5, L3A5, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L3DI > 0x06))
                        {
                            Return (DSMI (L3D6, L3A6, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x08))
                    {
                        If ((L3DI > 0x07))
                        {
                            Return (DSMI (L3D7, L3A7, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x09))
                    {
                        If ((L3DI > 0x08))
                        {
                            Return (DSMI (L3D8, L3A8, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0A))
                    {
                        If ((L3DI > 0x09))
                        {
                            Return (DSMI (L3D9, L3A9, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0B))
                    {
                        If ((L3DI > 0x0A))
                        {
                            Return (DSMI (L3DA, L3AA, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    If ((Arg2 == 0x0C))
                    {
                        If ((L3DI > 0x0B))
                        {
                            Return (DSMI (L3DB, L3AB, Zero, L3BS))
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Return (Zero)
            }
        }
    }

    If ((PCHV () == SPTL))
    {
        If ((SDWE != Zero))
        {
            Scope (_SB.PCI0.PSDC)
            {
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    If ((OSYS < 0x07DC))
                    {
                        Return (Buffer (0x02)
                        {
                             0x79, 0x00                                     
                        })
                    }

                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                            "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0000
                            }
                        GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0000
                            }
                    })
                    CreateWordField (RBUF, 0x17, SDIP)
                    CreateWordField (RBUF, 0x3F, SDGP)
                    If ((SDWE == One))
                    {
                        SDIP = GNUM (0x02010011)
                        SDGP = GNUM (0x02010011)
                    }

                    If ((SDWE == 0x02))
                    {
                        SDIP = GNUM (0x02060005)
                        SDGP = GNUM (0x02060005)
                    }

                    Return (RBUF)
                }
            }
        }
    }

    OperationRegion (LGNS, SystemMemory, 0x77F4B000, 0x00000005)
    Field (LGNS, AnyAcc, NoLock, Preserve)
    {
        RES0,   8, 
        WMIF,   32
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)  // _S1_: S1 System State
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0){}
    }

    Method (WAK, 1, NotSerialized)
    {
    }
}

