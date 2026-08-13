;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module pawn
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Pawn_UpdatePhysics
	.globl _Pawn_UpdateAnimation
	.globl _Pawn_ParseSprite
	.globl _PawnSprite_Initialize
	.globl _PawnSprite_Disable
	.globl _PawnSprite_Enable
	.globl _VDP_SetSpriteColorSM1
	.globl _VDP_SetSpritePositionY
	.globl _VDP_Peek_16K
	.globl _VDP_WriteVRAM_16K
	.globl _g_Pawn_FrameOffset
	.globl _g_Pawn_CellY
	.globl _g_Pawn_CellX
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _Pawn_Initialize
	.globl _Pawn_SetPosition
	.globl _Pawn_ForceSetAction
	.globl _Pawn_SetAction
	.globl _Pawn_SetEnable
	.globl _Pawn_Update
	.globl _Pawn_Draw
	.globl _Pawn_SetMovement
	.globl _Pawn_InitializePhysics
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_V9_VRAMPort	=	0x0060
_g_V9_PalettePort	=	0x0061
_g_V9_CmdDataPort	=	0x0062
_g_V9_RegDataPort	=	0x0063
_g_V9_RegSelectPort	=	0x0064
_g_V9_SatusPort	=	0x0065
_g_V9_IntFlagPort	=	0x0066
_g_V9_SysCtrlPort	=	0x0067
_g_V9_KanjiAddrLPort	=	0x0068
_g_V9_KanjiAddrHPort	=	0x0069
_g_V9_KanjiDataPort	=	0x0069
_g_V9_Kanji2AddrLPort	=	0x006a
_g_V9_Kanji2AddrHPort	=	0x006b
_g_V9_Kanji2DataPort	=	0x006b
_g_V9_OutputCtrPort	=	0x006f
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_Printer_ControlPort	=	0x0090
_g_Printer_DataPort	=	0x0091
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_Kanji_Level1LowPort	=	0x00d8
_g_Kanji_Level1HighPort	=	0x00d9
_g_Kanji_Level2LowPort	=	0x00da
_g_Kanji_Level2HighPort	=	0x00db
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
_g_Pawn_Buffer:
	.ds 4
_g_Pawn:
	.ds 2
_g_Pawn_Sprite:
	.ds 2
_g_Pawn_CellX::
	.ds 1
_g_Pawn_CellY::
	.ds 1
_g_Pawn_FrameOffset::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area _DABS (ABS)
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:120: void PawnSprite_Enable(u8 sprtIdx)
;	---------------------------------
; Function PawnSprite_Enable
; ---------------------------------
_PawnSprite_Enable::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:127: sprtIdx;
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:129: }
	ret
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:133: void PawnSprite_Disable(u8 sprtIdx)
;	---------------------------------
; Function PawnSprite_Disable
; ---------------------------------
_PawnSprite_Disable::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:1261: inline void VDP_HideSprite(u8 index) { VDP_SetSpritePositionY(index, VDP_SPRITE_HIDE); }
	ld	l, #0xd5
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:140: VDP_HideSprite(sprtIdx);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:142: }
	jp	_VDP_SetSpritePositionY
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:146: void PawnSprite_Initialize(u8 sprtIdx)
;	---------------------------------
; Function PawnSprite_Initialize
; ---------------------------------
_PawnSprite_Initialize::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:153: u8 color = g_Pawn_Sprite->Color;
	ld	de, (_g_Pawn_Sprite)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	c, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:154: if ((g_Pawn_Sprite->Flag & PAWN_SPRITE_OR) != 0)
	ld	hl, #4
	add	hl, de
	bit	2, (hl)
	jr	z, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:155: color |= VDP_SPRITE_CC;
	set	6, c
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:163: VDP_SetSpriteColorSM1(sprtIdx, color);
	ld	l, c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:172: }
	jp	_VDP_SetSpriteColorSM1
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:176: void Pawn_ParseSprite(Pawn* pawn, SpriteCallback cb)
;	---------------------------------
; Function Pawn_ParseSprite
; ---------------------------------
_Pawn_ParseSprite::
	ld	(_g_Pawn), hl
	ld	c, e
	ld	b, d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:179: g_Pawn_Sprite = g_Pawn->SpriteList;
	ld	hl, (_g_Pawn)
	ld	a, (hl)
	inc	hl
	ld	(_g_Pawn_Sprite+0), a
	ld	a, (hl)
	ld	(_g_Pawn_Sprite+1), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:180: PAWN_SPRT_INIT()
	ld	hl, (_g_Pawn)
	inc	hl
	inc	hl
	inc	hl
	ld	e, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:181: loop (i, g_Pawn->SpriteNum)
	ld	d, #0x00
00103$:
	ld	hl, (_g_Pawn)
	inc	hl
	inc	hl
	ld	a, d
	sub	a, (hl)
	ret	nc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:184: cb(sprtIdx);
	push	bc
	push	de
	ld	a, e
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:185: PAWN_SPRT_NEXT();
	inc	e
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:186: g_Pawn_Sprite++;
	ld	hl, #_g_Pawn_Sprite
	ld	a, (hl)
	add	a, #0x05
	ld	(hl), a
	jr	nc, 00124$
	inc	hl
	inc	(hl)
00124$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:181: loop (i, g_Pawn->SpriteNum)
	inc	d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:188: }
	jp	00103$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:192: void Pawn_Initialize(Pawn* pawn, const Pawn_Sprite* sprtList, u8 sprtNum, u8 sprtID, const Pawn_Action* actList)
;	---------------------------------
; Function Pawn_Initialize
; ---------------------------------
_Pawn_Initialize::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:197: Mem_Set(0x00, g_Pawn, sizeof(Pawn));
	ld	(_g_Pawn), hl
	ld	b, #0x0c
	jr	00104$
00103$:
	ld	(hl), #0x00
	inc	hl
00104$:
	ld	(hl), #0x00
	inc	hl
	djnz	00103$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:198: g_Pawn->SpriteList = sprtList;
	ld	hl, (_g_Pawn)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:199: g_Pawn->SpriteNum = sprtNum;
	ld	hl, (_g_Pawn)
	inc	hl
	inc	hl
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:201: g_Pawn->SpriteID = sprtID;
	ld	hl, (_g_Pawn)
	inc	hl
	inc	hl
	inc	hl
	ld	a, 1 (iy)
	inc	iy
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:203: g_Pawn->ActionList = actList;
	ld	hl, (_g_Pawn)
	ld	bc, #0x0004
	add	hl, bc
	ld	a, 1 (iy)
	inc	iy
	ld	(hl), a
	inc	hl
	ld	a, 1 (iy)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:206: Pawn_ForceSetAction(g_Pawn, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, (_g_Pawn)
	call	_Pawn_ForceSetAction
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:209: Pawn_ParseSprite(g_Pawn, PawnSprite_Initialize);
	ld	de, #_PawnSprite_Initialize
	ld	hl, (_g_Pawn)
	call	_Pawn_ParseSprite
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:210: }
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:214: void Pawn_SetPosition(Pawn* pawn, PAWN_POS x, PAWN_POS y)
;	---------------------------------
; Function Pawn_SetPosition
; ---------------------------------
_Pawn_SetPosition::
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:216: pawn->PositionX = x;
	ld	hl, #0x0006
	add	hl, de
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:217: pawn->PositionY = y;
	ld	hl, #0x0007
	add	hl, de
	ld	a, 1 (iy)
	inc	iy
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:219: pawn->MoveX = 0;
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:220: pawn->MoveY = 0;
	ld	hl, #0x000f
	add	hl, de
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:222: pawn->Update |= PAWN_UPDATE_POSITION;
	ld	hl, #0x000c
	add	hl, de
	set	0, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:223: }
	pop	hl
	pop	af
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:227: void Pawn_ForceSetAction(Pawn* pawn, u8 id)
;	---------------------------------
; Function Pawn_ForceSetAction
; ---------------------------------
_Pawn_ForceSetAction::
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:229: pawn->ActionId = id;
	ld	hl, #0x0008
	add	hl, de
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:395: inline void Pawn_RestartAction(Game_Pawn* pawn) { pawn->AnimTimer = 0; pawn->AnimStep = 0; pawn->Update |= PAWN_UPDATE_PATTERN; }
	ld	hl, #0x000b
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x000a
	add	hl, de
	ld	(hl), #0x00
	ld	hl, #0x000c
	add	hl, de
	set	1, (hl)
	ld	a, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:230: Pawn_RestartAction(pawn);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:231: }
	pop	hl
	inc	sp
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:235: void Pawn_SetAction(Pawn* pawn, u8 id)
;	---------------------------------
; Function Pawn_SetAction
; ---------------------------------
_Pawn_SetAction::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:237: if ((pawn->ActionList[pawn->ActionId].Interrupt == 1) && (pawn->ActionId != id))
	ld	c, e
	ld	b, d
	ld	hl, #4
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	de
	pop	iy
	ld	a, 8 (iy)
	ld	-1 (ix), a
	push	de
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	pop	de
	add	hl, bc
	ld	bc, #0x0004
	add	hl, bc
	ld	c, (hl)
	dec	c
	jr	nz, 00104$
	ld	a, 4 (ix)
	sub	a, -1 (ix)
	jr	z, 00104$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:238: Pawn_ForceSetAction(pawn, id);
	ld	a, 4 (ix)
	push	af
	inc	sp
	ex	de, hl
	call	_Pawn_ForceSetAction
00104$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:239: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:243: void Pawn_SetEnable(Pawn* pawn, bool enable)
;	---------------------------------
; Function Pawn_SetEnable
; ---------------------------------
_Pawn_SetEnable::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:248: g_Pawn->Update &= ~PAWN_UPDATE_DISABLE;
	ld	(_g_Pawn), hl
	ld	bc, #0x000c
	add	hl, bc
	ld	c, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:246: if (enable)
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	or	a, a
	jr	z, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:248: g_Pawn->Update &= ~PAWN_UPDATE_DISABLE;
	res	7, c
	ld	(hl), c
	ld	hl, (_g_Pawn)
	ld	bc, #0x000c
	add	hl, bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:249: g_Pawn->Update |= (PAWN_UPDATE_PATTERN | PAWN_UPDATE_POSITION);
	ld	a, (hl)
	or	a, #0x03
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:251: Pawn_ParseSprite(g_Pawn, PawnSprite_Enable);
	ld	de, #_PawnSprite_Enable
	ld	hl, (_g_Pawn)
	call	_Pawn_ParseSprite
	jp	00104$
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:255: g_Pawn->Update |= PAWN_UPDATE_DISABLE;
	set	7, c
	ld	(hl), c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:257: Pawn_ParseSprite(g_Pawn, PawnSprite_Disable);
	ld	de, #_PawnSprite_Disable
	ld	hl, (_g_Pawn)
	call	_Pawn_ParseSprite
00104$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:259: }
	pop	hl
	inc	sp
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:263: void Pawn_UpdateAnimation()
;	---------------------------------
; Function Pawn_UpdateAnimation
; ---------------------------------
_Pawn_UpdateAnimation::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:266: const Pawn_Action* act = &g_Pawn->ActionList[g_Pawn->ActionId];
	ld	hl, (_g_Pawn)
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x0008
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ex	de, hl
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	add	hl, de
	ex	(sp), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:269: if (g_Pawn->AnimTimer >= act->FrameList[g_Pawn->AnimStep].Duration)
	ld	de, #0x000b
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, (hl)
	ld	-7 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	a, (hl)
	ld	-1 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	b, #0x02
00144$:
	sla	-4 (ix)
	rl	-3 (ix)
	djnz	00144$
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	inc	hl
	ld	a,-7 (ix)
	sub	a,(hl)
	jr	c, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:271: g_Pawn->AnimTimer = 0;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:272: g_Pawn->AnimStep++;
	ld	hl, (_g_Pawn)
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	de, #0x000a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, (hl)
	inc	a
	ld	-1 (ix), a
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:266: const Pawn_Action* act = &g_Pawn->ActionList[g_Pawn->ActionId];
	ld	hl, (_g_Pawn)
	ld	-4 (ix), l
	ld	-3 (ix), h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:273: g_Pawn->Update |= PAWN_UPDATE_PATTERN;
	ld	de, #0x000c
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, (hl)
	set	1, a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), a
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:266: const Pawn_Action* act = &g_Pawn->ActionList[g_Pawn->ActionId];
	ld	hl, (_g_Pawn)
	ld	-5 (ix), l
	ld	-4 (ix), h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:277: if (g_Pawn->AnimStep >= act->FrameNum)
	ld	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, -4 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x000a
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -11 (ix)
	ld	-2 (ix), a
	ld	a, -10 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	inc	hl
	inc	hl
	ld	a,-3 (ix)
	sub	a,(hl)
	jr	c, 00107$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:279: if (act->Loop) // restart action
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	or	a, a
	jr	z, 00104$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:281: g_Pawn->AnimTimer = 0;
	ld	de, #0x000b
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:282: g_Pawn->AnimStep = 0;
	ld	hl, (_g_Pawn)
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	de, #0x000a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:266: const Pawn_Action* act = &g_Pawn->ActionList[g_Pawn->ActionId];
	ld	hl, (_g_Pawn)
	ld	-4 (ix), l
	ld	-3 (ix), h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:273: g_Pawn->Update |= PAWN_UPDATE_PATTERN;
	ld	de, #0x000c
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:283: g_Pawn->Update |= PAWN_UPDATE_PATTERN;
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, (hl)
	set	1, a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), a
	jp	00107$
00104$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:287: Pawn_ForceSetAction(g_Pawn, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, (_g_Pawn)
	call	_Pawn_ForceSetAction
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:288: act = &g_Pawn->ActionList[0];
	ld	iy, (_g_Pawn)
	ld	a, 4 (iy)
	ld	-11 (ix), a
	ld	a, 5 (iy)
	ld	-10 (ix), a
00107$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:293: const Pawn_Frame* frame = &act->FrameList[g_Pawn->AnimStep];
	pop	hl
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	iy, (_g_Pawn)
	ld	l, 10 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:294: if (frame->Event != NULL)
	ld	e, l
	ld	d, h
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	or	a, h
	jr	z, 00109$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:295: frame->Event();
	push	de
	call	___sdcc_call_hl
	pop	de
00109$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:298: g_Pawn->AnimFrame = frame->Id;
	ld	hl, (_g_Pawn)
	ld	bc, #0x0009
	add	hl, bc
	ld	a, (de)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:299: g_Pawn->AnimTimer++;
	ld	hl, (_g_Pawn)
	ld	bc, #0x000b
	add	hl, bc
	inc	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:300: g_Pawn->Counter++;
	ld	hl, (_g_Pawn)
	ld	bc, #0x000d
	add	hl, bc
	inc	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:301: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:306: void Pawn_UpdatePhysics()
;	---------------------------------
; Function Pawn_UpdatePhysics
; ---------------------------------
_Pawn_UpdatePhysics::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:309: PAWN_POS targetX = g_Pawn->PositionX + g_Pawn->MoveX;
	ld	hl, (_g_Pawn)
	ex	(sp), hl
	pop	bc
	push	bc
	ld	hl, #6
	add	hl, bc
	ld	c, (hl)
	pop	de
	push	de
	ld	hl, #14
	add	hl, de
	ld	a, (hl)
	add	a, c
	ld	-4 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:310: PAWN_POS targetY = g_Pawn->PositionY + g_Pawn->MoveY;
	pop	bc
	push	bc
	ld	hl, #7
	add	hl, bc
	ld	a, (hl)
	ld	-2 (ix), a
	pop	bc
	push	bc
	ld	hl, #15
	add	hl, bc
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, -1 (ix)
	ld	-3 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:318: if (g_Pawn->MoveY > 0)
	xor	a, a
	sub	a, -1 (ix)
	jp	po, 00371$
	xor	a, #0x80
00371$:
	jp	p, 00129$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:321: if (targetY + GET_BOUND_Y() >= PAWN_BORDER_MAX_Y)
	ld	c, -3 (ix)
	ld	b, #0x00
	pop	de
	push	de
	ld	hl, #17
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	a, l
	sub	a, #0xbf
	ld	a, h
	sbc	a, #0x00
	jr	c, 00110$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:324: g_Pawn->PhysicsCB(PAWN_PHYSICS_BORDER_DOWN, 0);
	pop	bc
	push	bc
	ld	hl, #19
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, #0x00
	ld	a, #0x05
	push	bc
	pop	iy
	call	___sdcc_call_iy
	jp	00131$
00110$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:333: g_Pawn_CellY = (targetY + GET_BOUND_Y()) / 8;
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
	ld	(_g_Pawn_CellY), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:335: u8 lastCell = 0xFF;
	ld	-1 (ix), #0xff
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:351: g_Pawn_CellX = (targetX + (GET_BOUND_X() / 4)) / 8;
	ld	c, -4 (ix)
	ld	b, #0x00
	pop	de
	push	de
	ld	hl, #16
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	sra	h
	rr	l
	sra	h
	rr	l
	add	hl, bc
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:352: if (g_Pawn_CellX != lastCell)
	ld	(_g_Pawn_CellX), a
	inc	a
	jr	z, 00104$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:354: lastCell = g_Pawn_CellX;
	ld	a, (_g_Pawn_CellX)
	ld	l, a
	ld	-1 (ix), l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:355: u8 tile = PAWN_GET_TILE(g_Pawn_CellX, g_Pawn_CellY);
	ld	a, (_g_Pawn_CellY+0)
	ld	e, a
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	iy, (_g_ScreenLayoutLow)
	add	iy, de
	ld	h, #0x00
	push	iy
	pop	de
	add	hl, de
	call	_VDP_Peek_16K
	ld	e, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:356: if (g_Pawn->CollisionCB(tile))
	ld	iy, (_g_Pawn)
	ld	l, 21 (iy)
	ld	h, 22 (iy)
	push	bc
	push	de
	ld	a, e
	call	___sdcc_call_hl
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:309: PAWN_POS targetX = g_Pawn->PositionX + g_Pawn->MoveX;
	ld	hl, (_g_Pawn)
	ex	(sp), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:356: if (g_Pawn->CollisionCB(tile))
	or	a, a
	jr	z, 00104$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:358: g_Pawn->PhysicsCB(PAWN_PHYSICS_COL_DOWN, tile);
	pop	bc
	push	bc
	ld	hl, #19
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, e
	xor	a, a
	push	bc
	pop	iy
	call	___sdcc_call_iy
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:359: targetY = (g_Pawn_CellY * 8) - GET_BOUND_Y();
	ld	a, (_g_Pawn_CellY)
	add	a, a
	add	a, a
	add	a, a
	ld	hl, (_g_Pawn)
	ld	de, #0x0011
	add	hl, de
	sub	a, (hl)
	ld	-3 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:360: goto skipVertival;
	jp	00131$
00104$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:351: g_Pawn_CellX = (targetX + (GET_BOUND_X() / 4)) / 8;
	pop	de
	push	de
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:379: g_Pawn_CellX = (targetX + GET_BOUND_X() - (GET_BOUND_X() / 4)) / 8;
	ld	hl, #16
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	ld	l, c
	ld	h, b
	add	hl, de
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a, l
	sub	a, e
	ld	-6 (ix), a
	ld	a, h
	sbc	a, d
	ld	-5 (ix), a
	pop	hl
	push	hl
	bit	7, -5 (ix)
	jr	z, 00153$
	pop	hl
	push	hl
	ld	de, #0x0007
	add	hl, de
00153$:
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:380: if (g_Pawn_CellX != lastCell)
	ld	(_g_Pawn_CellX), a
	sub	a, -1 (ix)
	jp	z, 00131$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:383: u8 tile = PAWN_GET_TILE(g_Pawn_CellX, g_Pawn_CellY);
	ld	a, (_g_Pawn_CellY)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	a, (_g_Pawn_CellX+0)
	ld	c, a
	ld	b, #0x00
	add	hl, bc
	call	_VDP_Peek_16K
	ld	e, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:384: if (g_Pawn->CollisionCB(tile))
	ld	iy, (_g_Pawn)
	ld	l, 21 (iy)
	ld	h, 22 (iy)
	push	de
	ld	a, e
	call	___sdcc_call_hl
	pop	de
	or	a, a
	jp	z, 00131$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:386: g_Pawn->PhysicsCB(PAWN_PHYSICS_COL_DOWN, tile);
	ld	hl, (_g_Pawn)
	ld	bc, #0x0013
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, e
	xor	a, a
	push	bc
	pop	iy
	call	___sdcc_call_iy
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:387: targetY = (g_Pawn_CellY * 8) - GET_BOUND_Y();
	ld	a, (_g_Pawn_CellY)
	add	a, a
	add	a, a
	add	a, a
	ld	hl, (_g_Pawn)
	ld	de, #0x0011
	add	hl, de
	sub	a, (hl)
	ld	-3 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:388: goto skipVertival;
	jp	00131$
00129$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:410: else if (g_Pawn->MoveY < 0)
	bit	7, -1 (ix)
	jp	z, 00126$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:417: if (targetY > g_Pawn->PositionY)
	ld	a, -2 (ix)
	sub	a, -3 (ix)
	jr	nc, 00115$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:424: targetY = PAWN_BORDER_MIN_Y;
	ld	-3 (ix), #0x00
	jp	00131$
00115$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:430: g_Pawn_CellX = (targetX + (GET_BOUND_X() / 2)) / 8;
	ld	c, -4 (ix)
	ld	b, #0x00
	pop	de
	push	de
	ld	hl, #16
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	sra	h
	rr	l
	add	hl, bc
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
	ld	(_g_Pawn_CellX), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:431: g_Pawn_CellY = (targetY) / 8;
	ld	a, -3 (ix)
	ld	l, #0x00
	sra	l
	rr	a
	sra	l
	rr	a
	sra	l
	rr	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:432: u8 tile = PAWN_GET_TILE(g_Pawn_CellX, g_Pawn_CellY);
	ld	(_g_Pawn_CellY), a
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	a, (_g_Pawn_CellX+0)
	ld	c, a
	ld	b, #0x00
	add	hl, bc
	call	_VDP_Peek_16K
	ld	e, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:433: if (g_Pawn->CollisionCB(tile))
	ld	iy, (_g_Pawn)
	ld	l, 21 (iy)
	ld	h, 22 (iy)
	push	de
	ld	a, e
	call	___sdcc_call_hl
	pop	de
	or	a, a
	jp	z, 00131$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:435: g_Pawn->PhysicsCB(PAWN_PHYSICS_COL_UP, tile);
	ld	hl, (_g_Pawn)
	ld	bc, #0x0013
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, e
	ld	a, #0x01
	push	bc
	pop	iy
	call	___sdcc_call_iy
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:436: targetY = (g_Pawn_CellY * 8) + 8;
	ld	a, (_g_Pawn_CellY)
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x08
	ld	-3 (ix), a
	jp	00131$
00126$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:449: u8 tile = 0;
	ld	-2 (ix), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:450: g_Pawn_CellY = (targetY + GET_BOUND_Y()) / 8;
	ld	c, -3 (ix)
	ld	b, #0x00
	pop	de
	push	de
	ld	hl, #17
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
	ld	(_g_Pawn_CellY), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:452: u8 lastCell = 0xFF;
	ld	-1 (ix), #0xff
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:464: g_Pawn_CellX = (targetX + (GET_BOUND_X() / 4)) / 8;
	ld	c, -4 (ix)
	ld	b, #0x00
	pop	de
	push	de
	ld	hl, #16
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
	sra	h
	rr	l
	sra	h
	rr	l
	add	hl, bc
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:465: if (g_Pawn_CellX != lastCell)
	ld	(_g_Pawn_CellX), a
	inc	a
	jr	z, 00120$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:354: lastCell = g_Pawn_CellX;
	ld	a, (_g_Pawn_CellX)
	ld	l, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:467: lastCell = g_Pawn_CellX;
	ld	-1 (ix), l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:468: tile = PAWN_GET_TILE(g_Pawn_CellX, g_Pawn_CellY);
	ld	a, (_g_Pawn_CellY+0)
	ld	e, a
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	iy, (_g_ScreenLayoutLow)
	add	iy, de
	ld	h, #0x00
	push	iy
	pop	de
	add	hl, de
	call	_VDP_Peek_16K
	ld	-2 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:469: if (g_Pawn->CollisionCB(tile))
	ld	iy, (_g_Pawn)
	ld	l, 21 (iy)
	ld	h, 22 (iy)
	push	bc
	ld	a, -2 (ix)
	call	___sdcc_call_hl
	pop	bc
	or	a, a
	jr	nz, 00131$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:470: goto skipVertival;
00120$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:309: PAWN_POS targetX = g_Pawn->PositionX + g_Pawn->MoveX;
	ld	iy, (_g_Pawn)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:379: g_Pawn_CellX = (targetX + GET_BOUND_X() - (GET_BOUND_X() / 4)) / 8;
	ld	e, 16 (iy)
	ld	d, #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:484: g_Pawn_CellX = (targetX + GET_BOUND_X() - (GET_BOUND_X() / 4)) / 8;
	ld	l, e
	ld	h, d
	add	hl, bc
	sra	d
	rr	e
	sra	d
	rr	e
	cp	a, a
	sbc	hl, de
	ld	e, l
	ld	d, h
	bit	7, d
	jr	z, 00161$
	ld	hl, #0x0007
	add	hl, de
00161$:
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:485: if (g_Pawn_CellX != lastCell)
	ld	(_g_Pawn_CellX), a
	sub	a, -1 (ix)
	jr	z, 00124$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:488: tile = PAWN_GET_TILE(g_Pawn_CellX, g_Pawn_CellY);
	ld	a, (_g_Pawn_CellY)
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	a, (_g_Pawn_CellX+0)
	ld	d, #0x00
	ld	e, a
	add	hl, de
	call	_VDP_Peek_16K
	ld	-2 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:489: if (g_Pawn->CollisionCB(tile))
	ld	hl, (_g_Pawn)
	ld	de, #0x0015
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, -2 (ix)
	call	___sdcc_call_hl
	or	a, a
	jr	nz, 00131$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:490: goto skipVertival;
00124$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:503: g_Pawn->PhysicsCB(PAWN_PHYSICS_FALL, tile);
	ld	hl, (_g_Pawn)
	ld	de, #0x0013
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -2 (ix)
	ld	a, #0x04
	push	bc
	pop	iy
	call	___sdcc_call_iy
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:506: skipVertival:
00131$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:309: PAWN_POS targetX = g_Pawn->PositionX + g_Pawn->MoveX;
	ld	bc, (_g_Pawn)
	ld	e, c
	ld	d, b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:509: if (g_Pawn->MoveX > 0)
	ld	hl, #14
	add	hl, de
	ld	e, (hl)
	xor	a, a
	sub	a, e
	jp	po, 00376$
	xor	a, #0x80
00376$:
	jp	p, 00145$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:351: g_Pawn_CellX = (targetX + (GET_BOUND_X() / 4)) / 8;
	ld	e, c
	ld	d, b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:379: g_Pawn_CellX = (targetX + GET_BOUND_X() - (GET_BOUND_X() / 4)) / 8;
	ld	hl, #16
	add	hl, de
	ld	e, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:512: if ((u8)(targetX + GET_BOUND_X()) < g_Pawn->PositionX)
	ld	a, e
	add	a, -4 (ix)
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	sub	a, (hl)
	jr	nc, 00135$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:515: g_Pawn->PhysicsCB(PAWN_PHYSICS_BORDER_RIGHT, 0);
	ld	hl, #19
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, #0x00
	ld	a, #0x07
	push	bc
	pop	iy
	call	___sdcc_call_iy
	jp	00146$
00135$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:524: g_Pawn_CellX = (targetX + GET_BOUND_X()) / 8;
	ld	l, -4 (ix)
	ld	h, #0x00
	ld	d, h
	add	hl, de
	ld	a, l
	sra	h
	rr	a
	sra	h
	rr	a
	sra	h
	rr	a
	ld	(_g_Pawn_CellX), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:525: g_Pawn_CellY = (targetY + (GET_BOUND_Y() / 2)) / 8;
	ld	e, -3 (ix)
	ld	d, #0x00
	ld	hl, #17
	add	hl, bc
	ld	l, (hl)
	ld	h, #0x00
	sra	h
	rr	l
	add	hl, de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a, l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:526: u8 tile = PAWN_GET_TILE(g_Pawn_CellX, g_Pawn_CellY);
	ld	(_g_Pawn_CellY), a
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	a, (_g_Pawn_CellX+0)
	ld	d, #0x00
	ld	e, a
	add	hl, de
	call	_VDP_Peek_16K
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:527: if (g_Pawn->CollisionCB(tile))
	ld	hl, (_g_Pawn)
	ld	de, #0x0015
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	ld	a, c
	call	___sdcc_call_hl
	pop	bc
	or	a, a
	jp	z, 00146$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:529: g_Pawn->PhysicsCB(PAWN_PHYSICS_COL_RIGHT, tile);
	ld	hl, (_g_Pawn)
	ld	de, #0x0013
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	a, #0x02
	push	de
	pop	iy
	call	___sdcc_call_iy
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:530: targetX = (g_Pawn_CellX * 8) - GET_BOUND_X();
	ld	a, (_g_Pawn_CellX)
	add	a, a
	add	a, a
	add	a, a
	ld	hl, (_g_Pawn)
	ld	de, #0x0010
	add	hl, de
	sub	a, (hl)
	ld	-4 (ix), a
	jp	00146$
00145$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:536: else if (g_Pawn->MoveX < 0)
	bit	7, e
	jp	z, 00146$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:539: if (targetX > g_Pawn->PositionX)
	ld	e, c
	ld	d, b
	ld	hl, #6
	add	hl, de
	ld	a, (hl)
	sub	a, -4 (ix)
	jr	nc, 00140$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:545: targetX = 0;
	ld	-4 (ix), #0x00
	jp	00146$
00140$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:551: g_Pawn_CellX = (targetX) / 8;
	ld	a, -4 (ix)
	ld	l, #0x00
	sra	l
	rr	a
	sra	l
	rr	a
	sra	l
	rr	a
	ld	(_g_Pawn_CellX), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:552: g_Pawn_CellY = (targetY + (GET_BOUND_Y() / 2)) / 8;
	ld	e, -3 (ix)
	ld	d, #0x00
	ld	hl, #17
	add	hl, bc
	ld	l, (hl)
	ld	h, #0x00
	sra	h
	rr	l
	add	hl, de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a, l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:553: u8 tile = PAWN_GET_TILE(g_Pawn_CellX, g_Pawn_CellY);
	ld	(_g_Pawn_CellY), a
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	a, (_g_Pawn_CellX+0)
	ld	d, #0x00
	ld	e, a
	add	hl, de
	call	_VDP_Peek_16K
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:554: if (g_Pawn->CollisionCB(tile))
	ld	hl, (_g_Pawn)
	ld	de, #0x0015
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	ld	a, c
	call	___sdcc_call_hl
	pop	bc
	or	a, a
	jr	z, 00146$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:556: g_Pawn->PhysicsCB(PAWN_PHYSICS_COL_LEFT, tile);
	ld	hl, (_g_Pawn)
	ld	de, #0x0013
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	a, #0x03
	push	de
	pop	iy
	call	___sdcc_call_iy
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:557: targetX = (g_Pawn_CellX * 8) + 8;
	ld	a, (_g_Pawn_CellX)
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x08
	ld	-4 (ix), a
00146$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:563: g_Pawn->PositionX = targetX;
	ld	hl, (_g_Pawn)
	ld	bc, #0x0006
	add	hl, bc
	ld	a, -4 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:564: g_Pawn->PositionY = targetY;
	ld	hl, (_g_Pawn)
	ld	bc, #0x0007
	add	hl, bc
	ld	a, -3 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:309: PAWN_POS targetX = g_Pawn->PositionX + g_Pawn->MoveX;
	ld	hl, (_g_Pawn)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:570: g_Pawn->Update |= PAWN_UPDATE_POSITION;
	ld	bc, #0x000c
	add	hl, bc
	set	0, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:309: PAWN_POS targetX = g_Pawn->PositionX + g_Pawn->MoveX;
	ld	hl, (_g_Pawn)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:570: g_Pawn->Update |= PAWN_UPDATE_POSITION;
	ld	bc, #0x000c
	add	hl, bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:571: g_Pawn->Update &= ~PAWN_UPDATE_COLLISION;
	res	4, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:572: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:577: void Pawn_Update(Pawn* pawn)
;	---------------------------------
; Function Pawn_Update
; ---------------------------------
_Pawn_Update::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:581: if (g_Pawn->Update & PAWN_UPDATE_DISABLE)
	ld	(_g_Pawn), hl
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	rlca
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:582: return;
	ret	c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:585: Pawn_UpdateAnimation();
	call	_Pawn_UpdateAnimation
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:589: if (g_Pawn->Update & PAWN_UPDATE_COLLISION)
	ld	hl, (_g_Pawn)
	ld	de, #0x000c
	add	hl, de
	bit	4, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:590: Pawn_UpdatePhysics();
	jp	nz, _Pawn_UpdatePhysics
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:592: }
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:766: void Pawn_Draw(Pawn* pawn)
;	---------------------------------
; Function Pawn_Draw
; ---------------------------------
_Pawn_Draw::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	dec	sp
	ld	(_g_Pawn), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:770: if ((g_Pawn->Update & (PAWN_UPDATE_PATTERN | PAWN_UPDATE_POSITION)) == 0)
	ld	bc, (_g_Pawn)
	ld	e, c
	ld	d, b
	ld	hl, #12
	add	hl, de
	ld	e, (hl)
	ld	a, e
	and	a, #0x03
	jp	z, 00117$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:771: return;
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:773: if (g_Pawn->Update & PAWN_UPDATE_DISABLE)
	bit	7, e
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:774: return;
	jp	nz, 00117$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:695: g_Pawn_Sprite = g_Pawn->SpriteList;
	ld	hl, (_g_Pawn)
	ld	a, (hl)
	inc	hl
	ld	(_g_Pawn_Sprite+0), a
	ld	a, (hl)
	ld	(_g_Pawn_Sprite+1), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:698: u16 dest = g_SpriteAttributeLow + (g_Pawn->SpriteID * 4);
	ld	hl, #3
	add	hl, bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	bc, (_g_SpriteAttributeLow)
	add	hl, bc
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:699: loop (i, g_Pawn->SpriteNum)
	ld	-1 (ix), #0x00
00115$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:770: if ((g_Pawn->Update & (PAWN_UPDATE_PATTERN | PAWN_UPDATE_POSITION)) == 0)
	ld	hl, (_g_Pawn)
	ex	(sp), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:699: loop (i, g_Pawn->SpriteNum)
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	l, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:770: if ((g_Pawn->Update & (PAWN_UPDATE_PATTERN | PAWN_UPDATE_POSITION)) == 0)
	ld	a, -3 (ix)
	add	a, #0x0c
	ld	c, a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	b, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:699: loop (i, g_Pawn->SpriteNum)
	ld	a, -1 (ix)
	sub	a, l
	jp	nc, 00113$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:701: g_Pawn_FrameOffset = 0;
	xor	a, a
	ld	(#_g_Pawn_FrameOffset), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:702: if ((g_Pawn->Update & PAWN_UPDATE_BLEND) && (g_Pawn_Sprite->Flag & PAWN_SPRITE_BLEND)) // Skip odd frames
	ld	a, (bc)
	bit	6, a
	jr	z, 00109$
	ld	hl, (_g_Pawn_Sprite)
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	rrca
	jr	nc, 00109$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:704: if ((g_Pawn->Counter & 1) != 0)
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000d
	add	hl, bc
	pop	bc
	ld	a, (hl)
	rrca
	jr	nc, 00107$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:705: g_Pawn_FrameOffset = PAWN_BLEND_OFFSET;
	ld	hl, #_g_Pawn_FrameOffset
	ld	(hl), #0x0c
00107$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:706: g_Pawn->Update |= PAWN_UPDATE_PATTERN;
	ld	a, (bc)
	set	1, a
	ld	(bc), a
00109$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:709: g_Pawn_Buffer[PAWN_SPRT_POS_Y] = g_Pawn->PositionY + g_Pawn_Sprite->OffsetY - 1; // Decrement Y to fit screen coordinate
	ld	hl, (_g_Pawn)
	ld	bc, #0x0007
	add	hl, bc
	ld	a, (hl)
	ld	hl, (_g_Pawn_Sprite)
	inc	hl
	add	a, (hl)
	dec	a
	ld	(#_g_Pawn_Buffer), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:710: g_Pawn_Buffer[PAWN_SPRT_POS_X] = g_Pawn->PositionX + g_Pawn_Sprite->OffsetX;
	ld	hl, (_g_Pawn)
	ld	bc, #0x0006
	add	hl, bc
	ld	a, (hl)
	ld	hl, (_g_Pawn_Sprite)
	add	a, (hl)
	ld	(#(_g_Pawn_Buffer + 1)), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:712: u8 size = 2;
	ld	c, #0x02
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:770: if ((g_Pawn->Update & (PAWN_UPDATE_PATTERN | PAWN_UPDATE_POSITION)) == 0)
	ld	hl, (_g_Pawn)
	ex	(sp), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:713: if (g_Pawn->Update & PAWN_UPDATE_PATTERN)
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x000c
	add	hl, bc
	pop	bc
	bit	1, (hl)
	jr	z, 00111$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:715: u8 frame = g_Pawn->AnimFrame + g_Pawn_Sprite->DataOffset + g_Pawn_FrameOffset;
	pop	bc
	push	bc
	ld	hl, #9
	add	hl, bc
	ld	a, (hl)
	ld	hl, (_g_Pawn_Sprite)
	inc	hl
	inc	hl
	add	a, (hl)
	ld	hl, #_g_Pawn_FrameOffset
	add	a, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:748: g_Pawn_Buffer[PAWN_SPRT_PATTERN] = frame;
	ld	bc, #_g_Pawn_Buffer + 2
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:749: size++;
	ld	c, #0x03
00111$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:753: VDP_WriteVRAM(g_Pawn_Buffer, dest, g_SpriteAttributeHigh, size);
	ld	b, #0x00
	push	de
	push	bc
	ld	hl, #_g_Pawn_Buffer
	call	_VDP_WriteVRAM_16K
	pop	de
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:756: dest += 4;
	inc	de
	inc	de
	inc	de
	inc	de
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:758: g_Pawn_Sprite++;
	ld	hl, #_g_Pawn_Sprite
	ld	a, (hl)
	add	a, #0x05
	ld	(hl), a
	jr	nc, 00191$
	inc	hl
	inc	(hl)
00191$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:699: loop (i, g_Pawn->SpriteNum)
	inc	-1 (ix)
	jp	00115$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:779: Pawn_Draw_Sprite();
00113$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:782: g_Pawn->Update &= ~(PAWN_UPDATE_PATTERN | PAWN_UPDATE_POSITION);
	ld	a, (bc)
	and	a, #0xfc
	ld	(bc), a
00117$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:783: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:788: void Pawn_SetMovement(Pawn* pawn, i8 dx, i8 dy) 
;	---------------------------------
; Function Pawn_SetMovement
; ---------------------------------
_Pawn_SetMovement::
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:790: pawn->MoveX = dx;
	ld	hl, #0x000e
	add	hl, de
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:791: pawn->MoveY = dy;
	ld	hl, #0x000f
	add	hl, de
	ld	a, 1 (iy)
	inc	iy
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:792: pawn->Update |= PAWN_UPDATE_COLLISION;
	ld	hl, #0x000c
	add	hl, de
	set	4, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:793: }
	pop	hl
	pop	af
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:797: void Pawn_InitializePhysics(Pawn* pawn, Pawn_PhysicsCB pcb, Pawn_CollisionCB ccb, u8 boundX, u8 boundY)
;	---------------------------------
; Function Pawn_InitializePhysics
; ---------------------------------
_Pawn_InitializePhysics::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	c, l
	ld	b, h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:802: pawn->BoundX = boundX;
	ld	hl, #0x0010
	add	hl, bc
	ld	a, 6 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:805: pawn->BoundY = boundY;
	ld	hl, #0x0011
	add	hl, bc
	ld	a, 7 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:807: pawn->PhysicsCB = pcb; 
	ld	hl, #0x0013
	add	hl, bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:808: pawn->CollisionCB = ccb;
	ld	hl, #0x0015
	add	hl, bc
	ld	a, 4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, 5 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.c:809: }
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
