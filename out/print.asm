;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module print
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CopyNo8HeightFontData
	.globl _Print_ValidatePattern
	.globl _Print_ValidateChar
	.globl _VDP_Poke_16K
	.globl _VDP_FillVRAM_16K
	.globl _VDP_WriteVRAM_16K
	.globl _VDP_RegWrite
	.globl _g_PrintInvalid
	.globl _g_PrintData
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
	.globl _g_HexChar
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
	.globl _Print_Initialize
	.globl _Print_SetMode
	.globl _Print_SetFont
	.globl _Print_SetColor
	.globl _Print_SetColorShade
	.globl _Print_SetTextFont
	.globl _DrawChar_Layout
	.globl _Print_Clear
	.globl _Print_Backspace
	.globl _Print_DrawChar
	.globl _Print_DrawCharX
	.globl _Print_DrawText
	.globl _Print_DrawBin8
	.globl _Print_DrawHex8
	.globl _Print_DrawHex16
	.globl _Print_DrawHex32
	.globl _Print_DrawInt
	.globl _Print_DrawFormat
	.globl _Print_DrawLineH
	.globl _Print_DrawLineV
	.globl _Print_DrawBox
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
_g_PrintData::
	.ds 46
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_PrintInvalid::
	.ds 8
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
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:158: bool Print_Initialize()
;	---------------------------------
; Function Print_Initialize
; ---------------------------------
_Print_Initialize::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:160: Print_SetColor(0xF, 0x0);
	ld	l, #0x00
	ld	a, #0x0f
	call	_Print_SetColor
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:169: switch (VDP_GetMode()) // Screen mode specific initialization
	or	a, a
	jr	z, 00101$
	cp	a, #0x01
	jr	z, 00106$
	cp	a, #0x02
	jr	z, 00103$
	cp	a, #0x03
	jr	z, 00104$
	jp	00105$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:172: case VDP_MODE_TEXT1:		// 40 characters per line of text, one colour for each character
00101$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #_g_PrintData + 4
	ld	(hl), #0x03
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:174: PRINT_DATA.ScreenWidth = 40;
	ld	hl, #0x0028
	ld	((_g_PrintData + 22)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:175: break;
	jp	00106$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:182: case VDP_MODE_GRAPHIC1:		// 32 characters per one line of text, the COLOURed character available
00103$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x03
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:184: PRINT_DATA.ScreenWidth = 32;
	ld	hl, #0x0020
	ld	((_g_PrintData + 22)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:185: break;
	jp	00106$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:188: case VDP_MODE_GRAPHIC2:		// 256 x 192, the colour is specififed for each 8 dots
00104$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #_g_PrintData + 4
	ld	(hl), #0x03
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:190: PRINT_DATA.ScreenWidth = 32;
	ld	hl, #0x0020
	ld	((_g_PrintData + 22)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:191: break;
	jp	00106$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:236: default:
00105$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:238: return FALSE;
	xor	a, a
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:239: }
00106$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:243: return TRUE;
	ld	a, #0x01
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:244: }
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
_g_HexChar:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:248: void Print_SetMode(u8 mode)
;	---------------------------------
; Function Print_SetMode
; ---------------------------------
_Print_SetMode::
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:250: PRINT_DATA.SourceMode = mode;
	ld	hl, #_g_PrintData + 21
	rrd
	ld	a, c
	rld
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:252: switch (PRINT_DATA.SourceMode)
	ld	a, (hl)
	and	a, #0x0f
	cp	a, #0x05
	ret	nz
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:318: PRINT_DATA.DrawChar = DrawChar_Layout;
	ld	hl, #_DrawChar_Layout
	ld	((_g_PrintData + 19)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:322: };
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:323: }
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:328: void Print_SetFont(const u8* font)
;	---------------------------------
; Function Print_SetFont
; ---------------------------------
_Print_SetFont::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:330: if (font == NULL) // Use Bios font (if any)
	ld	a, d
	or	a, e
	jr	nz, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:331: Print_SetFontEx(8, 8, 6, 8, 1, 255, (const u8*)g_CGTABL + 8);
	ld	bc, (_g_CGTABL)
	ld	hl, #0x0008
	add	hl, bc
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), #0x08
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	ld	bc, #_g_PrintData + 1
	ld	a, #0x08
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	hl, #_g_PrintData + 2
	ld	(hl), #0x06
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	hl, #_g_PrintData + 3
	ld	(hl), #0x08
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	hl, #_g_PrintData + 16
	ld	(hl), #0x01
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	ld	hl, #_g_PrintData + 17
	ld	(hl), #0xff
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	ld	hl, #_g_PrintData + 18
	ld	(hl), #0xff
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	((_g_PrintData + 24)), de
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	ld	a, (bc)
	ld	c, a
	ld	a, e
	sub	a, c
	ld	l, a
	ld	a, d
	sbc	a, #0x00
	ld	h, a
	ld	((_g_PrintData + 26)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:331: Print_SetFontEx(8, 8, 6, 8, 1, 255, (const u8*)g_CGTABL + 8);
	jp	00106$
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:333: Print_SetFontEx(font[0] >> 4, font[0] & 0x0F, font[1] >> 4, font[1] & 0x0F, font[2], font[3], font+4);
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, e
	ld	h, d
	inc	hl
	ld	l, (hl)
	ld	a, l
	and	a, #0x0f
	ld	-2 (ix), a
	ld	a, l
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	-1 (ix), a
	ld	a, (de)
	push	af
	and	a, #0x0f
	ld	e, a
	pop	af
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	d, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	ld	hl, #_g_PrintData + 1
	ld	(hl), e
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	de, #_g_PrintData + 2
	ld	a, -1 (ix)
	ld	(de), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	de, #_g_PrintData + 3
	ld	a, -2 (ix)
	ld	(de), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	de, #_g_PrintData + 16
	ld	a, -3 (ix)
	ld	(de), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	ld	de, #_g_PrintData + 17
	ld	a, -4 (ix)
	ld	(de), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	ld	de, #_g_PrintData + 18
	ld	a, -4 (ix)
	sub	a, -3 (ix)
	inc	a
	ld	(de), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	((_g_PrintData + 24)), bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	ld	e, (hl)
	push	bc
	ld	h, -3 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00116$:
	add	hl, hl
	jr	nc, 00117$
	add	hl, de
00117$:
	djnz	00116$
	pop	bc
	ld	a, c
	sub	a, l
	ld	l, a
	ld	a, b
	sbc	a, h
	ld	h, a
	ld	((_g_PrintData + 26)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:333: Print_SetFontEx(font[0] >> 4, font[0] & 0x0F, font[1] >> 4, font[1] & 0x0F, font[2], font[3], font+4);
00106$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:334: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:397: void Print_SetColor(u8 text, u8 bg)
;	---------------------------------
; Function Print_SetColor
; ---------------------------------
_Print_SetColor::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:427: u8 col = text << 4 | bg;
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	or	a, l
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:428: switch (VDP_GetMode())
	or	a, a
	jr	z, 00101$
	cp	a, #0x02
	jr	z, 00102$
	cp	a, #0x03
	jr	z, 00103$
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:431: case VDP_MODE_TEXT1:		// 40 characters per line of text, one colour for each character
00101$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:724: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:438: break;
	ld	a, #0x07
	jp	_VDP_RegWrite
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:441: case VDP_MODE_GRAPHIC1:		// 32 characters per one line of text, the COLOURed character available
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:442: VDP_FillVRAM(col, g_ScreenColorLow, 0, 32);
	ld	hl, #0x0020
	push	hl
	ld	de, (_g_ScreenColorLow)
	ld	a, c
	call	_VDP_FillVRAM_16K
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:443: break;
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:446: case VDP_MODE_GRAPHIC2:		// 256 x 192, the colour is specififed for each 8 dots
00103$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:453: u16 dst = (u16)g_ScreenColorLow + PRINT_DATA.PatternOffset * 8;
	ld	hl, #_g_PrintData + 28
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, (_g_ScreenColorLow)
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:454: VDP_FillVRAM(col, dst, 0, PRINT_DATA.CharCount * 8);
	ld	hl, #(_g_PrintData + 18)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	de
	push	hl
	ld	a, c
	call	_VDP_FillVRAM_16K
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:455: dst += 256 * 8;
	ld	hl, #0x0800
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:456: VDP_FillVRAM(col, dst, 0, PRINT_DATA.CharCount * 8);
	ld	hl, #(_g_PrintData + 18)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	de
	push	hl
	ld	a, c
	call	_VDP_FillVRAM_16K
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:457: dst += 256 * 8;
	ld	hl, #0x0800
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:458: VDP_FillVRAM(col, dst, 0, PRINT_DATA.CharCount * 8);
	ld	hl, #(_g_PrintData + 18)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, c
	call	_VDP_FillVRAM_16K
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:462: };
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:465: }
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:470: void Print_SetColorShade(const u8* shade)
;	---------------------------------
; Function Print_SetColorShade
; ---------------------------------
_Print_SetColorShade::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ld	c, l
	ld	b, h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:488: switch (VDP_GetMode())
	cp	a, #0x03
	jr	nz, 00113$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:498: u16 dst = (u16)g_ScreenColorLow + PRINT_DATA.PatternOffset * 8;
	ld	hl, #_g_PrintData + 28
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, (_g_ScreenColorLow)
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:499: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	ld	-1 (ix), #0x00
00111$:
	ld	hl, #_g_PrintData + 18
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	nc, 00113$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:501: VDP_WriteVRAM(shade, dst,           0, 8);
	push	bc
	push	de
	ld	hl, #0x0008
	push	hl
	ld	l, c
	ld	h, b
	call	_VDP_WriteVRAM_16K
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:502: VDP_WriteVRAM(shade, dst + 256 * 8, 0, 8);
	ex	de, hl
	ld	e, l
	ld	a, h
	add	a, #0x08
	push	hl
	push	bc
	ld	hl, #0x0008
	push	hl
	ld	d, a
	ld	l, c
	ld	h, b
	call	_VDP_WriteVRAM_16K
	pop	bc
	pop	hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:503: VDP_WriteVRAM(shade, dst + 512 * 8, 0, 8);
	ld	e, l
	ld	a, h
	add	a, #0x10
	push	hl
	push	bc
	ld	hl, #0x0008
	push	hl
	ld	d, a
	ld	l, c
	ld	h, b
	call	_VDP_WriteVRAM_16K
	pop	bc
	pop	hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:504: dst += 8;
	ld	de, #0x0008
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:499: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	inc	-1 (ix)
	jp	00111$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:509: };
00113$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:512: }
	inc	sp
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:526: u8 Print_ValidateChar(u8 chr)
;	---------------------------------
; Function Print_ValidateChar
; ---------------------------------
_Print_ValidateChar::
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:528: if ((chr < PRINT_DATA.CharFirst) || (chr > PRINT_DATA.CharLast))
	ld	hl, #_g_PrintData + 16
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	c, 00113$
	ld	a, (#_g_PrintData + 17)
	sub	a, c
	jr	nc, 00114$
00113$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:530: if ((chr >= 'a') && (chr <= 'z') && (PRINT_DATA.CharFirst <= 'A') && (PRINT_DATA.CharLast >= 'Z')) // try to remap to upper case letter
	ld	a, c
	sub	a, #0x61
	jr	c, 00108$
	ld	a, #0x7a
	sub	a, c
	jr	c, 00108$
	ld	a, #0x41
	sub	a, b
	jr	c, 00108$
	ld	a, (#_g_PrintData + 17)
	sub	a, #0x5a
	jr	c, 00108$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:532: chr = chr - 'a' + 'A';
	ld	a, c
	add	a, #0xe0
	ld	c, a
	jp	00114$
00108$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:534: else if ((chr >= 'A') && (chr <= 'Z') && (PRINT_DATA.CharFirst <= 'a') && (PRINT_DATA.CharLast >= 'z')) // try to remap to lower case letter
	ld	a, c
	sub	a, #0x41
	jr	c, 00102$
	ld	a, #0x5a
	sub	a, c
	jr	c, 00102$
	ld	a, #0x61
	sub	a, b
	jr	c, 00102$
	ld	a, (#_g_PrintData + 17)
	sub	a, #0x7a
	jr	c, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:536: chr = chr - 'A' + 'a';
	ld	a, c
	add	a, #0x20
	ld	c, a
	jp	00114$
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:539: chr = PRINT_DATA.CharFirst;
	ld	c, b
00114$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:541: return chr;
	ld	a, c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:542: }
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:547: u8 Print_ValidatePattern(u8 chr, const c8** patterns)
;	---------------------------------
; Function Print_ValidatePattern
; ---------------------------------
_Print_ValidatePattern::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	ld	b, a
	pop	hl
	push	de
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:549: if ((chr < PRINT_DATA.CharFirst) || (chr > PRINT_DATA.CharLast))
	ld	hl, #_g_PrintData + 16
	ld	c, (hl)
	ld	a, b
	sub	a, c
	jr	c, 00113$
	ld	a, (#_g_PrintData + 17)
	sub	a, b
	jp	nc, 00114$
00113$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:551: if ((chr >= 'a') && (chr <= 'z') && (PRINT_DATA.CharFirst <= 'A') && (PRINT_DATA.CharLast >= 'Z')) // try to remap to upper case letter
	ld	a, b
	sub	a, #0x61
	jr	c, 00108$
	ld	a, #0x7a
	sub	a, b
	jr	c, 00108$
	ld	a, #0x41
	sub	a, c
	jr	c, 00108$
	ld	a, (#_g_PrintData + 17)
	sub	a, #0x5a
	jr	c, 00108$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:553: chr = chr - 'a' + 'A';
	ld	a, b
	add	a, #0xe0
	ld	b, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:554: *patterns = PRINT_DATA.FontPatterns + PRINT_DATA.PatternY * (chr - PRINT_DATA.CharFirst);
	ld	de, (#_g_PrintData + 24)
	ld	hl, #_g_PrintData + 1
	ld	l, (hl)
	ld	a, b
	sub	a, c
	push	de
	push	bc
	ld	e, a
	ld	h, l
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00190$:
	add	hl, hl
	jr	nc, 00191$
	add	hl, de
00191$:
	djnz	00190$
	pop	bc
	pop	de
	add	hl, de
	ex	de, hl
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00114$
00108$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:556: else if ((chr >= 'A') && (chr <= 'Z') && (PRINT_DATA.CharFirst <= 'a') && (PRINT_DATA.CharLast >= 'z')) // try to remap to lower case letter
	ld	a, b
	sub	a, #0x41
	jr	c, 00102$
	ld	a, #0x5a
	sub	a, b
	jr	c, 00102$
	ld	a, #0x61
	sub	a, c
	jr	c, 00102$
	ld	a, (#_g_PrintData + 17)
	sub	a, #0x7a
	jr	c, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:558: chr = chr - 'A' + 'a';
	ld	a, b
	add	a, #0x20
	ld	b, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:559: *patterns = PRINT_DATA.FontPatterns + PRINT_DATA.PatternY * (chr - PRINT_DATA.CharFirst);
	ld	de, (#_g_PrintData + 24)
	ld	hl, #_g_PrintData + 1
	ld	l, (hl)
	ld	a, b
	sub	a, c
	push	de
	push	bc
	ld	e, a
	ld	h, l
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00192$:
	add	hl, hl
	jr	nc, 00193$
	add	hl, de
00193$:
	djnz	00192$
	pop	bc
	pop	de
	add	hl, de
	ex	de, hl
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jp	00114$
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:562: *patterns = g_PrintInvalid;
	pop	hl
	ld	(hl), #<(_g_PrintInvalid)
	push	hl
	inc	hl
	ld	(hl), #>(_g_PrintInvalid)
00114$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:564: return chr;
	ld	a, b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:565: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:856: void CopyNo8HeightFontData(const u8* src, u16 dst, u8 height)
;	---------------------------------
; Function CopyNo8HeightFontData
; ---------------------------------
_CopyNo8HeightFontData::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ld	c, l
	ld	b, h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:858: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	ld	-1 (ix), #0x00
00103$:
	ld	hl, #(_g_PrintData + 18)
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	nc, 00105$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:860: VDP_FillVRAM(0, dst, 0, 8);
	push	bc
	push	de
	ld	hl, #0x0008
	push	hl
	xor	a, a
	call	_VDP_FillVRAM_16K
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:861: VDP_WriteVRAM(src, dst, 0, height);
	ld	l, 4 (ix)
	ld	h, #0x00
	push	bc
	push	de
	push	hl
	ld	l, c
	ld	h, b
	call	_VDP_WriteVRAM_16K
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:862: src += height;
	ld	a, c
	add	a, 4 (ix)
	ld	c, a
	jr	nc, 00124$
	inc	b
00124$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:863: dst += 8;
	ld	hl, #0x0008
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:858: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	inc	-1 (ix)
	jp	00103$
00105$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:865: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:870: void Print_SetTextFont(const u8* fontData, u8 offset)
;	---------------------------------
; Function Print_SetTextFont
; ---------------------------------
_Print_SetTextFont::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	push	af
	ld	c, l
	ld	b, h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:872: PRINT_DATA.PatternOffset = offset;
	ld	hl, #(_g_PrintData + 28)
	ld	a, 4 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:875: if (fontData == NULL) // Use Bios font (if any)
	ld	a, b
	or	a, c
	jr	nz, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:876: Print_SetFontEx(8, 8, 1, 1, 1, 255, (const u8*)g_CGTABL + 8); // @todo Should be [1, 255] to include all characters
	ld	de, (_g_CGTABL)
	ld	hl, #0x0008
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), #0x08
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	inc	hl
	ld	(hl), #0x08
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	hl, #_g_PrintData + 2
	ld	(hl), #0x01
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	hl, #_g_PrintData + 3
	ld	(hl), #0x01
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	hl, #_g_PrintData + 16
	ld	(hl), #0x01
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	ld	hl, #_g_PrintData + 17
	ld	(hl), #0xff
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	ld	hl, #_g_PrintData + 18
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	(hl), #0xff
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	hl, #_g_PrintData + 24
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	(hl), e
	inc	hl
	ld	(hl), d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	ld	hl, #(_g_PrintData + 1)
	ld	a, e
	sub	a, (hl)
	ld	l, a
	ld	a, d
	sbc	a, #0x00
	ld	h, a
	ld	((_g_PrintData + 26)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:876: Print_SetFontEx(8, 8, 1, 1, 1, 255, (const u8*)g_CGTABL + 8); // @todo Should be [1, 255] to include all characters
	jp	00103$
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:878: Print_SetFontEx(8, 8, 1, 1, fontData[2], fontData[3], fontData+4);
	ld	hl, #0x0004
	add	hl, bc
	ex	(sp), hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	d, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), #0x08
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	inc	hl
	ld	(hl), #0x08
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	hl, #_g_PrintData + 2
	ld	(hl), #0x01
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	hl, #_g_PrintData + 3
	ld	(hl), #0x01
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	hl, #(_g_PrintData + 16)
	ld	(hl), d
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	inc	hl
	ld	(hl), e
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	inc	hl
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, e
	sub	a, d
	inc	a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	hl, #_g_PrintData + 24
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	ld	hl, #(_g_PrintData + 1)
	ld	e, (hl)
	push	bc
	ld	h, d
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00160$:
	add	hl, hl
	jr	nc, 00161$
	add	hl, de
00161$:
	djnz	00160$
	pop	bc
	ld	a, -6 (ix)
	sub	a, l
	ld	l, a
	ld	a, -5 (ix)
	sbc	a, h
	ld	h, a
	ld	((_g_PrintData + 26)), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:878: Print_SetFontEx(8, 8, 1, 1, fontData[2], fontData[3], fontData+4);
00103$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:879: Print_Initialize();
	push	bc
	call	_Print_Initialize
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:880: Print_SetMode(PRINT_MODE_TEXT);
	ld	a, #0x05
	call	_Print_SetMode
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:883: const u8* src = PRINT_DATA.FontPatterns;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:884: u16 dst = (u16)g_ScreenPatternLow + (offset * 8);
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, (_g_ScreenPatternLow)
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:886: if (fontData != NULL)
	ld	a, b
	or	a, c
	jr	z, 00105$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:887: CopyNo8HeightFontData(src, dst, fontData[0] & 0x0F);
	ld	a, (bc)
	and	a, #0x0f
	push	bc
	push	de
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_CopyNo8HeightFontData
	pop	de
	pop	bc
	jp	00106$
00105$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:890: VDP_WriteVRAM(src, dst, 0, PRINT_DATA.CharCount * 8);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	de
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_VDP_WriteVRAM_16K
	pop	de
	pop	bc
00106$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:892: switch (VDP_GetMode())
	cp	a, #0x03
	jr	nz, 00118$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:901: dst += 256 * 8;
	ld	hl, #0x0800
	add	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:903: if (fontData != NULL)
	ld	a, b
	or	a, c
	jr	z, 00109$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:904: CopyNo8HeightFontData(src, dst, fontData[0] & 0x0F);
	ld	a, (bc)
	and	a, #0x0f
	push	bc
	push	de
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_CopyNo8HeightFontData
	pop	de
	pop	bc
	jp	00110$
00109$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:907: VDP_WriteVRAM(src, dst, 0, PRINT_DATA.CharCount * 8);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	de
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_VDP_WriteVRAM_16K
	pop	de
	pop	bc
00110$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:908: dst += 256 * 8;
	ld	a, d
	add	a, #0x08
	ld	d, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:910: if (fontData != NULL)
	ld	a, b
	or	a, c
	jr	z, 00112$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:911: CopyNo8HeightFontData(src, dst, fontData[0] & 0x0F);
	ld	a, (bc)
	and	a, #0x0f
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_CopyNo8HeightFontData
	jp	00118$
00112$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:914: VDP_WriteVRAM(src, dst, 0, PRINT_DATA.CharCount * 8);
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_VDP_WriteVRAM_16K
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:917: };
00118$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:918: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:923: void DrawChar_Layout(u8 chr)
;	---------------------------------
; Function DrawChar_Layout
; ---------------------------------
_DrawChar_Layout::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:926: chr = Print_ValidateChar(chr);
	call	_Print_ValidateChar
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:928: u8 shape = chr - PRINT_DATA.CharFirst + PRINT_DATA.PatternOffset;
	ld	hl, #_g_PrintData + 16
	ld	a, c
	sub	a, (hl)
	ld	hl, #_g_PrintData + 28
	add	a, (hl)
	ld	-1 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:929: u16 dst = (u16)g_ScreenLayoutLow + (PRINT_DATA.CursorY * PRINT_DATA.ScreenWidth) + PRINT_DATA.CursorX;
	ld	a, (#_g_PrintData + 6)
	ld	de, (#_g_PrintData + 22)
	ld	h, #0x00
	ld	l, a
	call	__mulint
	ld	a, e
	ld	hl, #_g_ScreenLayoutLow
	add	a, (hl)
	inc	hl
	ld	c, a
	ld	a, d
	adc	a, (hl)
	ld	b, a
	ld	hl, #_g_PrintData + 5
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:930: VDP_Poke(shape, dst, g_ScreenLayoutHigh);
	ld	a, -1 (ix)
	call	_VDP_Poke_16K
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:931: }
	inc	sp
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1096: void Print_Clear()
;	---------------------------------
; Function Print_Clear
; ---------------------------------
_Print_Clear::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1109: VDP_FillVRAM(0, g_ScreenLayoutLow, g_ScreenLayoutHigh, 24 * PRINT_DATA.ScreenWidth);
	ld	hl, (#(_g_PrintData + 22) + 0)
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	de, (_g_ScreenLayoutLow)
	xor	a, a
	call	_VDP_FillVRAM_16K
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1112: }
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1117: void Print_Backspace(u8 num)
;	---------------------------------
; Function Print_Backspace
; ---------------------------------
_Print_Backspace::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ld	-1 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1138: u16 dst = g_ScreenLayoutLow + (PRINT_DATA.CursorY * PRINT_DATA.ScreenWidth) + PRINT_DATA.CursorX - num;
	ld	a, (#_g_PrintData + 6)
	ld	de, (#_g_PrintData + 22)
	ld	h, #0x00
	ld	l, a
	call	__mulint
	ld	hl, (_g_ScreenLayoutLow)
	add	hl, de
	ld	bc, #_g_PrintData + 5
	ld	a, (bc)
	ld	d, #0x00
	ld	e, a
	add	hl, de
	ld	e, -1 (ix)
	ld	d, #0x00
	cp	a, a
	sbc	hl, de
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1139: VDP_FillVRAM(0, dst, g_ScreenLayoutHigh, num);
	ld	l, -1 (ix)
	ld	h, #0x00
	push	bc
	push	hl
	xor	a, a
	call	_VDP_FillVRAM_16K
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1140: PRINT_DATA.CursorX -= num;
	ld	a, (bc)
	sub	a, -1 (ix)
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1143: }
	inc	sp
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1148: void Print_DrawChar(u8 chr)
;	---------------------------------
; Function Print_DrawChar
; ---------------------------------
_Print_DrawChar::
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1151: if (PRINT_DATA.CursorX + PRINT_W(PRINT_DATA.UnitX) > PRINT_DATA.ScreenWidth) // Handle automatic new-line when 
	ld	hl, #(_g_PrintData + 5)
	ld	e, (hl)
	ld	d, #0x00
	inc	de
	ld	hl, (#_g_PrintData + 22)
	xor	a, a
	sbc	hl, de
	jr	nc, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:500: PRINT_DATA.CursorX = 0;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:501: PRINT_DATA.CursorY += PRINT_H(PRINT_DATA.UnitY);
	ld	hl, #_g_PrintData + 6
	inc	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1152: Print_Return();
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1157: PRINT_DATA.DrawChar(chr);
	ld	hl, (#_g_PrintData + 19)
	ld	a, c
	call	___sdcc_call_hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1160: PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX);
	ld	a, (#(_g_PrintData + 5) + 0)
	inc	a
	ld	(#(_g_PrintData + 5)), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1161: }
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1167: void Print_DrawCharX(c8 chr, u8 num)
;	---------------------------------
; Function Print_DrawCharX
; ---------------------------------
_Print_DrawCharX::
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1169: for (u8 i = 0; i < num; ++i)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, l
	ret	nc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1170: Print_DrawChar(chr);
	push	hl
	push	bc
	ld	a, c
	call	_Print_DrawChar
	pop	bc
	pop	hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1169: for (u8 i = 0; i < num; ++i)
	inc	b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1171: }
	jp	00103$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1176: void Print_DrawText(const c8* str)
;	---------------------------------
; Function Print_DrawText
; ---------------------------------
_Print_DrawText::
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1178: while (*str != 0)
00107$:
	ld	a, (de)
	or	a, a
	ret	z
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1180: if (*str == '\t')
	cp	a, #0x09
	jr	nz, 00105$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:492: PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX) + PRINT_DATA.TabSize - 1;
	ld	a, (#(_g_PrintData + 5) + 0)
	ld	hl, #(_g_PrintData + 4)
	add	a, (hl)
	ld	c, a
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:493: PRINT_DATA.CursorX &= ~(PRINT_DATA.TabSize - 1);
	ld	a, (#(_g_PrintData + 4) + 0)
	dec	a
	cpl
	and	a, c
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1181: Print_Tab();
	jp	00106$
00105$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1182: else if (*str == '\n')
	cp	a, #0x0a
	jr	nz, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:500: PRINT_DATA.CursorX = 0;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:501: PRINT_DATA.CursorY += PRINT_H(PRINT_DATA.UnitY);
	ld	hl, #_g_PrintData + 6
	inc	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1183: Print_Return();
	jp	00106$
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1189: Print_DrawChar(*str);
	push	de
	call	_Print_DrawChar
	pop	de
00106$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1190: str++;
	inc	de
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1192: }
	jp	00107$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1197: void Print_DrawBin8(u8 value)
;	---------------------------------
; Function Print_DrawBin8
; ---------------------------------
_Print_DrawBin8::
	ld	e, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1199: u8 flag = (u8)(1 << 7);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1200: for (u8 i = 0; i < 8; ++i)
	ld	bc, #0x80
00103$:
	ld	a, b
	sub	a, #0x08
	ret	nc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1202: Print_DrawChar((value & flag) ? '1' : '0');
	ld	a, e
	and	a, c
	ld	a, #0x31
	jr	nz, 00108$
	ld	a, #0x30
00108$:
	push	bc
	push	de
	call	_Print_DrawChar
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1203: flag >>= 1;
	srl	c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1200: for (u8 i = 0; i < 8; ++i)
	inc	b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1208: }
	jp	00103$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1213: void Print_DrawHex8(u8 value)
;	---------------------------------
; Function Print_DrawHex8
; ---------------------------------
_Print_DrawHex8::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1215: Print_DrawChar(g_HexChar[(value >> 4) & 0x000F]);
	ld	c, a
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf
	ld	l, a
	ld	h, #0x00
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
	push	bc
	call	_Print_DrawChar
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1216: Print_DrawChar(g_HexChar[value & 0x000F]);
	ld	a, c
	and	a, #0x0f
	ld	l, a
	ld	h, #0x00
	ld	de, #_g_HexChar
	add	hl, de
	ld	a, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1220: }
	jp	_Print_DrawChar
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1225: void Print_DrawHex16(u16 value)
;	---------------------------------
; Function Print_DrawHex16
; ---------------------------------
_Print_DrawHex16::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1227: Print_DrawHex8(value >> 8);
	ld	a, h
	push	hl
	call	_Print_DrawHex8
	pop	hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1228: Print_DrawHex8((u8)value);
	ld	a, l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1229: }
	jp	_Print_DrawHex8
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1235: void Print_DrawHex32(u32 value)
;	---------------------------------
; Function Print_DrawHex32
; ---------------------------------
_Print_DrawHex32::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1237: Print_DrawHex16(value >> 16);
	push	hl
	push	de
	call	_Print_DrawHex16
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1238: Print_DrawHex16((u16)value);
	ex	de, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1239: }
	jp	_Print_DrawHex16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1246: void Print_DrawInt(i32 value)
;	---------------------------------
; Function Print_DrawInt
; ---------------------------------
_Print_DrawInt::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1253: if (value < 0)
	bit	7, -1 (ix)
	jr	z, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1255: Print_DrawChar('-');
	ld	a, #0x2d
	call	_Print_DrawChar
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1256: value = -value;
	xor	a, a
	sub	a, -4 (ix)
	ld	-4 (ix), a
	ld	a, #0x00
	sbc	a, -3 (ix)
	ld	-3 (ix), a
	ld	a, #0x00
	sbc	a, -2 (ix)
	ld	-2 (ix), a
	sbc	a, a
	sub	a, -1 (ix)
	ld	-1 (ix), a
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1260: c8* ptr = str;
	ld	hl, #0
	add	hl, sp
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1261: *ptr = 0;
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1262: while (value >= 10)
00103$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1264: *++ptr = '0' + (value % 10);
	inc	hl
	ld	c, l
	ld	b, h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1262: while (value >= 10)
	ld	a, -4 (ix)
	sub	a, #0x0a
	ld	a, -3 (ix)
	sbc	a, #0x00
	ld	a, -2 (ix)
	sbc	a, #0x00
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00105$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1264: *++ptr = '0' + (value % 10);
	push	bc
	push	bc
	ld	de, #0x0000
	push	de
	ld	e, #0x0a
	push	de
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	__modslong
	pop	af
	ex	(sp),hl
	pop	iy
	pop	bc
	pop	hl
	ld	a, e
	add	a, #0x30
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1265: value /= 10;
	push	hl
	ld	de, #0x0000
	push	de
	ld	e, #0x0a
	push	de
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	__divslong
	pop	af
	pop	af
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	hl
	jp	00103$
00105$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1267: *++ptr = '0' + value;
	ld	a, -4 (ix)
	add	a, #0x30
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1268: while (*ptr != 0)
00106$:
	ld	a, (bc)
	or	a, a
	jr	z, 00109$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1269: Print_DrawChar(*ptr--);	
	dec	bc
	push	bc
	call	_Print_DrawChar
	pop	bc
	jp	00106$
00109$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1270: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1279: void Print_DrawFormat(const c8* format, ...)
;	---------------------------------
; Function Print_DrawFormat
; ---------------------------------
_Print_DrawFormat::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	hl, #-19
	add	hl, sp
	ld	sp, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1284: va_start(args, format);
	ld	hl, #25
	add	hl, sp
	ld	-11 (ix), l
	ld	-10 (ix), h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1286: const c8* ptr = format;
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1287: while (*ptr != 0)
00191$:
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	or	a, a
	jp	z, 00196$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1289: if (*ptr == '%')
	ld	a, -3 (ix)
	sub	a, #0x25
	jp	nz, 00189$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1291: ptr++;
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	inc	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1294: u8 len = 0;
	ld	-9 (ix), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1295: if ((*ptr >= '0') && (*ptr <= '9'))
	ld	a, (bc)
	cp	a, #0x30
	jr	c, 00245$
	cp	a, #0x3a
	jr	nc, 00245$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1297: len = *ptr - '0';
	add	a, #0xd0
	ld	-9 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1298: ptr++;
	inc	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1300: while ((*ptr >= '0') && (*ptr <= '9'))
00245$:
	ld	-2 (ix), c
	ld	-1 (ix), b
00105$:
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-3 (ix), a
	sub	a, #0x30
	jr	c, 00280$
	ld	a, #0x39
	sub	a, -3 (ix)
	jr	c, 00280$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1302: len *= 10;
	ld	a, -9 (ix)
	ld	c, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	c, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1303: len += *ptr - '0';
	ld	a, -3 (ix)
	add	a, #0xd0
	add	a, c
	ld	-9 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1304: ptr++;
	inc	-2 (ix)
	jr	nz, 00105$
	inc	-1 (ix)
	jp	00105$
00280$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1308: if ((*ptr == 'i') || (*ptr == 'd'))
	ld	a, -3 (ix)
	sub	a, #0x69
	jr	z, 00178$
	ld	a, -3 (ix)
	sub	a, #0x64
	jr	nz, 00179$
00178$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1310: i16 val = (i16)va_arg(args, i16);
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	inc	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	dec	bc
	dec	bc
	ld	-4 (ix), c
	ld	-3 (ix), b
	ld	l, c
	ld	h, b
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1311: Print_DrawInt(val);
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	rlca
	sbc	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Print_DrawInt
	jp	00190$
00179$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1313: else if (*ptr == 'u')
	ld	a, -3 (ix)
	sub	a, #0x75
	jr	nz, 00176$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1315: u16 val = (u16)va_arg(args, u16);
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	inc	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	dec	bc
	dec	bc
	ld	-4 (ix), c
	ld	-3 (ix), b
	ld	l, c
	ld	h, b
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1316: Print_DrawInt(val);
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	xor	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	hl, #0x0
	call	_Print_DrawInt
	jp	00190$
00176$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1318: else if (*ptr == 'x')
	ld	a, -3 (ix)
	sub	a, #0x78
	jp	nz, 00173$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1320: if (len == 0)
	ld	a, -9 (ix)
	or	a, a
	jr	nz, 00109$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1321: len = 4;
	ld	-9 (ix), #0x04
00109$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1322: u16 val = (u16)va_arg(args, u16);
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	inc	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	dec	bc
	dec	bc
	ld	-4 (ix), c
	ld	-3 (ix), b
	ld	l, c
	ld	h, b
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1323: if (len > 3)
	ld	a, #0x03
	sub	a, -9 (ix)
	jr	nc, 00111$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1324: Print_DrawChar(g_HexChar[(val >> 12) & 0x000F]);
	ld	a, -5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	ld	-3 (ix), a
	and	a, #0x0f
	ld	-3 (ix), a
	ld	de, #_g_HexChar
	ld	l, -3 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00111$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1325: if (len > 2)
	ld	a, #0x02
	sub	a, -9 (ix)
	jr	nc, 00113$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1326: Print_DrawChar(g_HexChar[(val >> 8) & 0x000F]);
	ld	a, -5 (ix)
	ld	-3 (ix), a
	and	a, #0x0f
	ld	-3 (ix), a
	ld	de, #_g_HexChar
	ld	l, -3 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00113$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1327: if (len > 1)
	ld	a, #0x01
	sub	a, -9 (ix)
	jr	nc, 00115$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1328: Print_DrawChar(g_HexChar[(val >> 4) & 0x000F]);
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	srl	-3 (ix)
	rr	-4 (ix)
	srl	-3 (ix)
	rr	-4 (ix)
	srl	-3 (ix)
	rr	-4 (ix)
	srl	-3 (ix)
	rr	-4 (ix)
	ld	a, -4 (ix)
	and	a, #0x0f
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	a, #<(_g_HexChar)
	add	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_HexChar)
	adc	a, -7 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	call	_Print_DrawChar
00115$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1329: Print_DrawChar(g_HexChar[val & 0x000F]);
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	and	a, #0x0f
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, #<(_g_HexChar)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, #>(_g_HexChar)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	call	_Print_DrawChar
	jp	00190$
00173$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1331: else if (*ptr == 'b')
	ld	a, -3 (ix)
	sub	a, #0x62
	jp	nz, 00170$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1333: if (len == 0)
	ld	a, -9 (ix)
	or	a, a
	jr	nz, 00117$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1334: len = 16;
	ld	-9 (ix), #0x10
00117$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1335: u16 val = (u16)va_arg(args, u16);
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	inc	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	c, -6 (ix)
	ld	b, -5 (ix)
	dec	bc
	dec	bc
	ld	-4 (ix), c
	ld	-3 (ix), b
	ld	l, c
	ld	h, b
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1336: u16 bit = 1 << (len - 1);
	ld	a, -9 (ix)
	dec	a
	ld	-3 (ix), a
	ld	b, a
	ld	-4 (ix), #0x01
	ld	-3 (ix), #0
	inc	b
	jp	00540$
00539$:
	sla	-4 (ix)
	rl	-3 (ix)
00540$:
	djnz	00539$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1337: while (bit)
00121$:
	ld	a, -3 (ix)
	or	a, -4 (ix)
	jp	z, 00190$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1339: if (val & bit)
	ld	a, -6 (ix)
	and	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	and	a, -3 (ix)
	ld	-7 (ix), a
	or	a, -8 (ix)
	jr	z, 00119$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1340: Print_DrawChar('1');
	ld	a, #0x31
	call	_Print_DrawChar
	jp	00120$
00119$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1342: Print_DrawChar('0');
	ld	a, #0x30
	call	_Print_DrawChar
00120$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1343: bit >>= 1;
	srl	-3 (ix)
	rr	-4 (ix)
	jp	00121$
00170$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1347: else if ((*ptr == 'I') || (*ptr == 'D'))
	ld	a, -3 (ix)
	sub	a, #0x49
	jr	z, 00165$
	ld	a, -3 (ix)
	sub	a, #0x44
	jr	nz, 00166$
00165$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1349: i32 val = (i32)va_arg(args, i32);
	ld	de, #0x0004
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	add	a, #0xfc
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #13
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1350: Print_DrawInt(val);
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Print_DrawInt
	jp	00190$
00166$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1352: else if (*ptr == 'U')
	ld	a, -3 (ix)
	sub	a, #0x55
	jr	nz, 00163$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1354: u32 val = (u32)va_arg(args, u32);
	ld	de, #0x0004
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	add	a, #0xfc
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #13
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1355: Print_DrawInt(val);
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	call	_Print_DrawInt
	jp	00190$
00163$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1357: else if (*ptr == 'X')
	ld	a, -3 (ix)
	sub	a, #0x58
	jp	nz, 00160$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1359: if (len == 0)
	ld	a, -9 (ix)
	or	a, a
	jr	nz, 00125$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1360: len = 8;
	ld	-9 (ix), #0x08
00125$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1361: u32 val = (u32)va_arg(args, u32);
	ld	de, #0x0004
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-11 (ix), a
	ld	a, -5 (ix)
	ld	-10 (ix), a
	ld	a, -6 (ix)
	add	a, #0xfc
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	hl, #11
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1363: if (len > 7)
	ld	a, #0x07
	sub	a, -9 (ix)
	jr	nc, 00127$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1364: Print_DrawChar(g_HexChar[(val >> 28) & 0xF]);
	ld	a, -5 (ix)
	ld	-15 (ix), a
	xor	a, a
	ld	-14 (ix), a
	ld	-13 (ix), a
	ld	-12 (ix), a
	ld	b, #0x04
00548$:
	srl	-15 (ix)
	djnz	00548$
	ld	a, -15 (ix)
	ld	-3 (ix), a
	and	a, #0x0f
	ld	-3 (ix), a
	ld	de, #_g_HexChar
	ld	l, -3 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00127$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1365: if (len > 6)
	ld	a, #0x06
	sub	a, -9 (ix)
	jr	nc, 00129$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1366: Print_DrawChar(g_HexChar[(val >> 24) & 0xF]);
	ld	a, -5 (ix)
	ld	-3 (ix), a
	and	a, #0x0f
	ld	-3 (ix), a
	ld	de, #_g_HexChar
	ld	l, -3 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00129$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1367: if (len > 5)
	ld	a, #0x05
	sub	a, -9 (ix)
	jr	nc, 00131$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1368: Print_DrawChar(g_HexChar[(val >> 20) & 0xF]);
	ld	a, -6 (ix)
	ld	-15 (ix), a
	ld	a, -5 (ix)
	ld	-14 (ix), a
	xor	a, a
	ld	-13 (ix), a
	ld	-12 (ix), a
	ld	b, #0x04
00550$:
	srl	-14 (ix)
	rr	-15 (ix)
	djnz	00550$
	ld	a, -15 (ix)
	ld	-4 (ix), a
	ld	a, -14 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	and	a, #0x0f
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	de, #_g_HexChar
	ld	l, -13 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00131$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1369: if (len > 4)
	ld	a, #0x04
	sub	a, -9 (ix)
	jr	nc, 00133$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1370: Print_DrawChar(g_HexChar[(val >> 16) & 0xF]);
	ld	a, -6 (ix)
	ld	-3 (ix), a
	and	a, #0x0f
	ld	-3 (ix), a
	ld	de, #_g_HexChar
	ld	l, -3 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00133$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1371: if (len > 3)
	ld	a, #0x03
	sub	a, -9 (ix)
	jr	nc, 00135$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1372: Print_DrawChar(g_HexChar[(val >> 12) & 0xF]);
	ld	e, -7 (ix)
	ld	d, -6 (ix)
	ld	c, -5 (ix)
	ld	b, #0x04
00552$:
	srl	c
	rr	d
	rr	e
	djnz	00552$
	ld	a, e
	and	a, #0x0f
	ld	c, a
	ld	b, #0x00
	ld	hl, #_g_HexChar
	add	hl, bc
	ld	a, (hl)
	call	_Print_DrawChar
00135$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1373: if (len > 2)
	ld	a, #0x02
	sub	a, -9 (ix)
	jr	nc, 00137$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1374: Print_DrawChar(g_HexChar[(val >> 8) & 0xF]);
	ld	a, -7 (ix)
	ld	-3 (ix), a
	and	a, #0x0f
	ld	-3 (ix), a
	ld	de, #_g_HexChar
	ld	l, -3 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00137$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1375: if (len > 1)
	ld	a, #0x01
	sub	a, -9 (ix)
	jr	nc, 00139$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1376: Print_DrawChar(g_HexChar[(val >> 4) & 0xF]);
	ld	a, -8 (ix)
	ld	-15 (ix), a
	ld	a, -7 (ix)
	ld	-14 (ix), a
	ld	a, -6 (ix)
	ld	-13 (ix), a
	ld	a, -5 (ix)
	ld	-12 (ix), a
	ld	b, #0x04
00554$:
	srl	-12 (ix)
	rr	-13 (ix)
	rr	-14 (ix)
	rr	-15 (ix)
	djnz	00554$
	ld	a, -15 (ix)
	ld	-4 (ix), a
	ld	a, -14 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	and	a, #0x0f
	ld	-13 (ix), a
	ld	-12 (ix), #0x00
	ld	de, #_g_HexChar
	ld	l, -13 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	call	_Print_DrawChar
00139$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1377: Print_DrawChar(g_HexChar[val & 0xF]);
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	and	a, #0x0f
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	add	a, #<(_g_HexChar)
	ld	c, a
	ld	a, #0x00
	adc	a, #>(_g_HexChar)
	ld	b, a
	ld	a, (bc)
	call	_Print_DrawChar
	jp	00190$
00160$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1379: else if (*ptr == 'B')
	ld	a, -3 (ix)
	sub	a, #0x42
	jp	nz, 00157$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1381: if (len == 0)
	ld	a, -9 (ix)
	or	a, a
	jr	nz, 00141$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1382: len = 16;
	ld	-9 (ix), #0x10
00141$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1383: u32 val = (u32)va_arg(args, u32);
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	de, #0xfffc
	add	hl, de
	ex	de, hl
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1384: u32 bit = 1 << (len - 1);
	ld	b, -9 (ix)
	dec	b
	ld	hl, #0x0001
	inc	b
	jp	00559$
00558$:
	add	hl, hl
00559$:
	djnz	00558$
	ld	-6 (ix), l
	ld	a, h
	ld	-5 (ix), a
	rlca
	sbc	a, a
	ld	-4 (ix), a
	ld	-3 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1385: while (bit)
00145$:
	ld	a, -3 (ix)
	or	a, -4 (ix)
	or	a, -5 (ix)
	or	a, -6 (ix)
	jp	z, 00190$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1387: if (val & bit)
	ld	a, -15 (ix)
	and	a, -6 (ix)
	ld	-19 (ix), a
	ld	a, -14 (ix)
	and	a, -5 (ix)
	ld	-18 (ix), a
	ld	a, -13 (ix)
	and	a, -4 (ix)
	ld	-17 (ix), a
	ld	a, -12 (ix)
	and	a, -3 (ix)
	ld	-16 (ix), a
	or	a, -17 (ix)
	or	a, -18 (ix)
	or	a, -19 (ix)
	jr	z, 00143$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1388: Print_DrawChar('1');
	ld	a, #0x31
	call	_Print_DrawChar
	jp	00144$
00143$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1390: Print_DrawChar('0');
	ld	a, #0x30
	call	_Print_DrawChar
00144$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1391: bit >>= 1;
	srl	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	jp	00145$
00157$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1395: else if (*ptr == 'c')
	ld	a, -3 (ix)
	sub	a, #0x63
	jr	nz, 00154$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1397: c8 val = (c8)va_arg(args, u16);
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	inc	bc
	inc	bc
	ld	-11 (ix), c
	ld	-10 (ix), b
	dec	bc
	dec	bc
	ld	a, (bc)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1398: Print_DrawChar(val);
	call	_Print_DrawChar
	jp	00190$
00154$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1400: else if (*ptr == 's')
	ld	a, -3 (ix)
	sub	a, #0x73
	jr	nz, 00151$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1402: const c8* val = (const c8*)va_arg(args, const c8*);
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	inc	hl
	inc	hl
	ld	-11 (ix), l
	ld	-10 (ix), h
	dec	hl
	dec	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1403: Print_DrawText(val);
	ld	l, a
	call	_Print_DrawText
	jp	00190$
00151$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1405: else if (*ptr == '%')
	ld	a, -3 (ix)
	sub	a, #0x25
	jr	nz, 00190$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1407: Print_DrawChar('%');
	ld	a, #0x25
	call	_Print_DrawChar
	jp	00190$
00189$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1411: else if (*ptr == '\t')
	ld	a, -3 (ix)
	sub	a, #0x09
	jr	nz, 00186$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:492: PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX) + PRINT_DATA.TabSize - 1;
	ld	bc, #_g_PrintData + 5
	ld	a, (bc)
	ld	hl, #(_g_PrintData + 4)
	add	a, (hl)
	ld	e, a
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:493: PRINT_DATA.CursorX &= ~(PRINT_DATA.TabSize - 1);
	ld	a, (#(_g_PrintData + 4) + 0)
	dec	a
	cpl
	and	a, e
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1412: Print_Tab();
	jp	00190$
00186$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1413: else if (*ptr == '\n')
	ld	a, -3 (ix)
	sub	a, #0x0a
	jr	nz, 00183$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:500: PRINT_DATA.CursorX = 0;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:501: PRINT_DATA.CursorY += PRINT_H(PRINT_DATA.UnitY);
	ld	hl, #_g_PrintData + 6
	inc	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1414: Print_Return();
	jp	00190$
00183$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1420: Print_DrawChar(*ptr);
	ld	a, -3 (ix)
	call	_Print_DrawChar
00190$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1422: ptr++;
	inc	-2 (ix)
	jp	nz, 00191$
	inc	-1 (ix)
	jp	00191$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1425: va_end(args);
00196$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1426: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1436: void Print_DrawLineH(UX x, UY y, u8 len)
;	---------------------------------
; Function Print_DrawLineH
; ---------------------------------
_Print_DrawLineH::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	b, a
	ld	c, l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1439: Print_DrawCharX(0x17, len);
	ld	l, 4 (ix)
	ld	a, #0x17
	call	_Print_DrawCharX
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1440: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1444: void Print_DrawLineV(UX x, UY y, u8 len)
;	---------------------------------
; Function Print_DrawLineV
; ---------------------------------
_Print_DrawLineV::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ld	c, a
	ld	-1 (ix), l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1446: for (u8 i = 0; i < len; i++)
	ld	b, #0x00
00104$:
	ld	a, b
	sub	a, 4 (ix)
	jr	nc, 00106$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1448: Print_SetPosition(x, y + i);
	ld	a, -1 (ix)
	add	a, b
	ld	e, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), e
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1449: Print_DrawChar(0x16);
	push	bc
	ld	a, #0x16
	call	_Print_DrawChar
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1446: for (u8 i = 0; i < len; i++)
	inc	b
	jp	00104$
00106$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1451: }
	inc	sp
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1455: void Print_DrawBox(UX x, UY y, u8 width, u8 height)
;	---------------------------------
; Function Print_DrawBox
; ---------------------------------
_Print_DrawBox::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ld	c, a
	ld	b, l
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1459: Print_DrawChar(0x18);
	push	bc
	ld	a, #0x18
	call	_Print_DrawChar
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1460: Print_SetPosition(x + width - 1, y);
	ld	a, c
	add	a, 4 (ix)
	dec	a
	ld	-1 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1461: Print_DrawChar(0x19);
	push	bc
	ld	a, #0x19
	call	_Print_DrawChar
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1462: Print_SetPosition(x, y + height - 1);
	ld	a, b
	add	a, 5 (ix)
	dec	a
	ld	e, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), c
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1463: Print_DrawChar(0x1A);
	push	bc
	push	de
	ld	a, #0x1a
	call	_Print_DrawChar
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), e
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1465: Print_DrawChar(0x1B);
	push	bc
	push	de
	ld	a, #0x1b
	call	_Print_DrawChar
	pop	de
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1468: Print_DrawLineH(x + 1, y,              width - 2);
	ld	a, 4 (ix)
	add	a, #0xfe
	ld	h, a
	ld	d, c
	inc	d
	push	hl
	push	bc
	push	de
	push	hl
	inc	sp
	ld	l, b
	ld	a, d
	call	_Print_DrawLineH
	pop	de
	pop	bc
	pop	hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1469: Print_DrawLineH(x + 1, y + height - 1, width - 2);
	push	bc
	push	hl
	inc	sp
	ld	l, e
	ld	a, d
	call	_Print_DrawLineH
	pop	bc
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1472: Print_DrawLineV(x,             y + 1, height - 2);
	ld	h, 5 (ix)
	dec	h
	dec	h
	ld	l, b
	inc	l
	push	hl
	push	hl
	inc	sp
	ld	a, c
	call	_Print_DrawLineV
	pop	hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1473: Print_DrawLineV(x + width - 1, y + 1, height - 2);
	push	hl
	inc	sp
	ld	a, -1 (ix)
	call	_Print_DrawLineV
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.c:1474: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
__xinit__g_PrintInvalid:
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.area _CABS (ABS)
