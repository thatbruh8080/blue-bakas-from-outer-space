;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module bluebakas
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _DrawInt4At
	.globl _ShowTitleScreen
	.globl _UpdateMeanie
	.globl _UpdateOneMeanie
	.globl _CheckMeanieCrashAt
	.globl _CheckMeaniePoint
	.globl _TrySpawnMeanie
	.globl _SpawnMeanie
	.globl _PickMeanieSideMove
	.globl _UpdateActiveLaser
	.globl _StartLaser
	.globl _CanFireLaser
	.globl _HasLaserOnScreen
	.globl _UpdateRepairRobot
	.globl _RepairRobotTile
	.globl _MoveRepairRobot
	.globl _InitRepairRobot
	.globl _IsDestroyableTile
	.globl _SetMapTile
	.globl _GetMapIndex
	.globl _InitMeanie
	.globl _PlaySFX
	.globl _InitSound
	.globl _VBlankHook
	.globl _InitGraphics
	.globl _ayFX_Update
	.globl _ayFX_Mute
	.globl _ayFX_PlayBank
	.globl _ayFX_InitBank
	.globl _Pawn_Draw
	.globl _Pawn_Update
	.globl _Pawn_SetEnable
	.globl _Pawn_SetPosition
	.globl _Pawn_Initialize
	.globl _PSG_Apply
	.globl _PSG_Mute
	.globl _Print_DrawInt
	.globl _Print_DrawText
	.globl _Print_SetTextFont
	.globl _VDP_Poke_16K
	.globl _VDP_FillVRAM_16K
	.globl _VDP_WriteVRAM_16K
	.globl _VDP_RegWriteBakMask
	.globl _VDP_RegWrite
	.globl _VDP_SetMode
	.globl _VDP_ClearVRAM
	.globl _BIOS_SetHookCallback
	.globl _Keyboard_Read
	.globl _g_KeyRow5Prev
	.globl _g_KeyRow4Prev
	.globl _g_KeyRow2Prev
	.globl _g_LaserStepDelay
	.globl _g_LaserDir
	.globl _g_LaserTile
	.globl _g_LaserTileY
	.globl _g_LaserTileX
	.globl _g_hasHUDChanged
	.globl _g_ShowGoodHit
	.globl _g_LaserErasing
	.globl _g_LaserActive
	.globl _g_RobotMoveDelay
	.globl _g_KeyRow8Prev
	.globl _g_RobotUnderTile
	.globl _g_RobotTileY
	.globl _g_RobotTileX
	.globl _g_GameOverSoundDone
	.globl _g_GameOverToTitle
	.globl _g_FuelSoundRestart
	.globl _g_FuelSoundWanted
	.globl _g_Rand
	.globl _g_FuelSpawnDelay
	.globl _g_FuelYFix
	.globl _g_FuelXFix
	.globl _g_ExplosionActive
	.globl _g_FuelActive
	.globl _Energy
	.globl _Score
	.globl _g_RamMap
	.globl _g_Explosion
	.globl _g_Fuel
	.globl _g_Meanies
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
	.globl _g_ExplosionActions
	.globl _g_ExplosionFrames
	.globl _g_ExplosionSprite
	.globl _g_FuelActions
	.globl _g_FuelFrames
	.globl _g_FuelSprite
	.globl _g_MeanieActions
	.globl _g_MeanieFrames
	.globl _g_MeanieSprite
	.globl _g_sfx
	.globl _g_Fuel8x8
	.globl _g_Explosion8x8
	.globl _g_Meanie8x8
	.globl _g_Tiles_Patterns
	.globl _g_Map
	.globl _g_Font_PETSCII
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
	.globl _OnSFXFinished
	.globl _ResetGameplayFlags
	.globl _AnyKeyDown
	.globl _WaitForCleanKeyPress
	.globl _InitFuel
	.globl _SpawnFuel
	.globl _DespawnFuel
	.globl _TrySpawnFuel
	.globl _FuelHitsSolidTile
	.globl _UpdateFuel
	.globl _UpdateFuelSound
	.globl _PickFuelRespawnDelay
	.globl _InitExplosion
	.globl _StartExplosion
	.globl _UpdateExplosion
	.globl _GetMapTile
	.globl _GetOriginalMapTile
	.globl _IsExplosionDestroyableTile
	.globl _ExplosionDestroyTilesAt
	.globl _LaserHitsFuelAtTile
	.globl _LaserHitsMeanieAtTile
	.globl _UpdateLaser
	.globl _Rand16
	.globl _Rand8
	.globl _RandRange
	.globl _DestroyMapTile
	.globl _ShowMeanerScreen
	.globl _LoadMap
	.globl _LoadLevel
	.globl _DrawHUD
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
_g_Meanies::
	.ds 70
_g_Fuel::
	.ds 23
_g_Explosion::
	.ds 23
_g_RamMap::
	.ds 704
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_Score::
	.ds 1
_Energy::
	.ds 2
_g_FuelActive::
	.ds 1
_g_ExplosionActive::
	.ds 1
_g_FuelXFix::
	.ds 2
_g_FuelYFix::
	.ds 2
_g_FuelSpawnDelay::
	.ds 2
_g_Rand::
	.ds 2
_g_FuelSoundWanted::
	.ds 1
_g_FuelSoundRestart::
	.ds 1
_g_GameOverToTitle::
	.ds 1
_g_GameOverSoundDone::
	.ds 1
_g_RobotTileX::
	.ds 1
_g_RobotTileY::
	.ds 1
_g_RobotUnderTile::
	.ds 1
_g_KeyRow8Prev::
	.ds 1
_g_RobotMoveDelay::
	.ds 1
_g_LaserActive::
	.ds 1
_g_LaserErasing::
	.ds 1
_g_ShowGoodHit::
	.ds 1
_g_hasHUDChanged::
	.ds 1
_g_LaserTileX::
	.ds 1
_g_LaserTileY::
	.ds 1
_g_LaserTile::
	.ds 1
_g_LaserDir::
	.ds 1
_g_LaserStepDelay::
	.ds 1
_g_KeyRow2Prev::
	.ds 1
_g_KeyRow4Prev::
	.ds 1
_g_KeyRow5Prev::
	.ds 1
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
;./bluebakas.c:227: void InitGraphics() {
;	---------------------------------
; Function InitGraphics
; ---------------------------------
_InitGraphics::
;./bluebakas.c:228: VDP_SetMode(VDP_MODE_SCREEN1);
	ld	a, #0x02
	call	_VDP_SetMode
;./bluebakas.c:229: VDP_ClearVRAM();
	call	_VDP_ClearVRAM
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:724: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, #0x01
	ld	a, #0x07
	call	_VDP_RegWrite
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:1099: inline void VDP_SetSpriteFlag(u8 flag) { VDP_RegWriteBakMask(1, (u8)~(R01_ST|R01_MAG), flag); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xfc
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:1057: inline VADDR VDP_GetSpritePatternTable() { return VADDR_GET(g_SpritePatternLow, g_SpritePatternHigh); }
	ld	de, (_g_SpritePatternLow)
;./bluebakas.c:236: g_Meanie8x8,
	ld	hl, #0x0008
	push	hl
	ld	hl, #_g_Meanie8x8
	call	_VDP_WriteVRAM_16K
;./bluebakas.c:243: VDP_GetSpritePatternTable() + (SPR_PAT_FUEL * 8),
	ld	hl, (_g_SpritePatternLow)
	ld	bc, #0x0008
	add	hl, bc
	ex	de, hl
;./bluebakas.c:242: g_Fuel8x8,
	ld	hl, #0x0008
	push	hl
	ld	hl, #_g_Fuel8x8
	call	_VDP_WriteVRAM_16K
;./bluebakas.c:249: VDP_GetSpritePatternTable() + (SPR_PAT_EXPLOSION * 8),
	ld	hl, (_g_SpritePatternLow)
	ld	bc, #0x0010
	add	hl, bc
	ex	de, hl
;./bluebakas.c:248: g_Explosion8x8,
	ld	hl, #0x0020
	push	hl
	ld	hl, #_g_Explosion8x8
	call	_VDP_WriteVRAM_16K
;./bluebakas.c:255: g_Tiles_Patterns,
	ld	hl, #0x0100
	push	hl
	ld	de, (_g_ScreenPatternLow)
	ld	hl, #_g_Tiles_Patterns
	call	_VDP_WriteVRAM_16K
;./bluebakas.c:263: Print_SetTextFont(g_Font_PETSCII, 32);
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #_g_Font_PETSCII
	call	_Print_SetTextFont
;./bluebakas.c:268: VDP_FillVRAM_16K(0xF0, g_ScreenColorLow, 32);
	ld	hl, #0x0020
	push	hl
	ld	de, (_g_ScreenColorLow)
	ld	a, #0xf0
	call	_VDP_FillVRAM_16K
;./bluebakas.c:269: VDP_Poke_16K(0x20, g_ScreenColorLow + 0); // patterns  0-7:  green / backdrop
	ld	de, (_g_ScreenColorLow)
	ld	a, #0x20
	call	_VDP_Poke_16K
;./bluebakas.c:270: VDP_Poke_16K(0xF0, g_ScreenColorLow + 1); // patterns  8-15: white / backdrop
	ld	de, (_g_ScreenColorLow)
	inc	de
	ld	a, #0xf0
	call	_VDP_Poke_16K
;./bluebakas.c:271: VDP_Poke_16K(0xA0, g_ScreenColorLow + 2); // patterns 16-23: yellow / backdrop
	ld	de, (_g_ScreenColorLow)
	inc	de
	inc	de
	ld	a, #0xa0
	call	_VDP_Poke_16K
;./bluebakas.c:272: VDP_Poke_16K(0x70, g_ScreenColorLow + 3); // patterns 24-31: cyan / backdrop
	ld	de, (_g_ScreenColorLow)
	inc	de
	inc	de
	inc	de
	ld	a, #0x70
;./bluebakas.c:273: }
	jp	_VDP_Poke_16K
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
_g_Font_PETSCII:
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x20	; 32
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x7e	; 126
	.db #0x24	; 36
	.db #0x7e	; 126
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x1e	; 30
	.db #0x28	; 40
	.db #0x1c	; 28
	.db #0x0a	; 10
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x64	; 100	'd'
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x26	; 38
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x4a	; 74	'J'
	.db #0x44	; 68	'D'
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x2a	; 42
	.db #0x1c	; 28
	.db #0x3e	; 62
	.db #0x1c	; 28
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x46	; 70	'F'
	.db #0x5a	; 90	'Z'
	.db #0x62	; 98	'b'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x02	; 2
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x7e	; 126
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x0e	; 14
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x4a	; 74	'J'
	.db #0x56	; 86	'V'
	.db #0x4c	; 76	'L'
	.db #0x20	; 32
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x24	; 36
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x40	; 64
	.db #0x4e	; 78	'N'
	.db #0x42	; 66	'B'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x70	; 112	'p'
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x62	; 98	'b'
	.db #0x52	; 82	'R'
	.db #0x4a	; 74	'J'
	.db #0x46	; 70	'F'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7c	; 124
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x4a	; 74	'J'
	.db #0x24	; 36
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x7c	; 124
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x02	; 2
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x66	; 102	'f'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x5c	; 92
	.db #0x62	; 98	'b'
	.db #0x42	; 66	'B'
	.db #0x62	; 98	'b'
	.db #0x5c	; 92
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x3a	; 58
	.db #0x46	; 70	'F'
	.db #0x42	; 66	'B'
	.db #0x46	; 70	'F'
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x7e	; 126
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x12	; 18
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3a	; 58
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x3a	; 58
	.db #0x02	; 2
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x5c	; 92
	.db #0x62	; 98	'b'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x50	; 80	'P'
	.db #0x68	; 104	'h'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x76	; 118	'v'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5c	; 92
	.db #0x62	; 98	'b'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5c	; 92
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x5c	; 92
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3a	; 58
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x3a	; 58
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x5c	; 92
	.db #0x62	; 98	'b'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x02	; 2
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x46	; 70	'F'
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x46	; 70	'F'
	.db #0x3a	; 58
	.db #0x02	; 2
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_Map:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
_g_Tiles_Patterns:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x73	; 115	's'
	.db #0x73	; 115	's'
	.db #0x7f	; 127
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xce	; 206
	.db #0xce	; 206
	.db #0xfe	; 254
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x6b	; 107	'k'
	.db #0x6b	; 107	'k'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x70	; 112	'p'
	.db #0x1c	; 28
	.db #0xfd	; 253
	.db #0xf9	; 249
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8d	; 141
	.db #0xdd	; 221
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xdd	; 221
	.db #0x8d	; 141
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0x96	; 150
	.db #0x76	; 118	'v'
	.db #0x56	; 86	'V'
	.db #0x92	; 146
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x5a	; 90	'Z'
	.db #0x24	; 36
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x24	; 36
	.db #0x5a	; 90	'Z'
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x49	; 73	'I'
	.db #0x8a	; 138
	.db #0x8a	; 138
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0xe4	; 228
	.db #0x12	; 18
	.db #0x92	; 146
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x8a	; 138
	.db #0x52	; 82	'R'
	.db #0x59	; 89	'Y'
	.db #0x48	; 72	'H'
	.db #0x47	; 71	'G'
	.db #0x20	; 32
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x92	; 146
	.db #0x24	; 36
	.db #0xc4	; 196
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_Meanie8x8:
	.db #0xff	; 255
	.db #0xbd	; 189
	.db #0xdb	; 219
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xbd	; 189
	.db #0xff	; 255
_g_Explosion8x8:
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x49	; 73	'I'
	.db #0x8a	; 138
	.db #0x8a	; 138
	.db #0xf0	; 240
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0xe4	; 228
	.db #0x12	; 18
	.db #0x92	; 146
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x8a	; 138
	.db #0x52	; 82	'R'
	.db #0x59	; 89	'Y'
	.db #0x48	; 72	'H'
	.db #0x47	; 71	'G'
	.db #0x20	; 32
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x92	; 146
	.db #0x24	; 36
	.db #0xc4	; 196
	.db #0x0c	; 12
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
_g_Fuel8x8:
	.db #0x18	; 24
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
_g_sfx:
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x00	; 0
	.db #0x2b	; 43
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x89	; 137
	.db #0x00	; 0
	.db #0x9d	; 157
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x47	; 71	'G'
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x59	; 89	'Y'
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0xef	; 239
	.db #0xb2	; 178
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x8d	; 141
	.db #0x8b	; 139
	.db #0x88	; 136
	.db #0x84	; 132
	.db #0x82	; 130
	.db #0x81	; 129
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x5f	; 95
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x5f	; 95
	.db #0x0d	; 13
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x5f	; 95
	.db #0x0e	; 14
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x5f	; 95
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x5f	; 95
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1d	; 29
	.db #0x1d	; 29
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1a	; 26
	.db #0x19	; 25
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x16	; 22
	.db #0x16	; 22
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x14	; 20
	.db #0x13	; 19
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x6e	; 110	'n'
	.db #0x61	; 97	'a'
	.db #0x6d	; 109	'm'
	.db #0x65	; 101	'e'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
;./bluebakas.c:279: void VBlankHook()
;	---------------------------------
; Function VBlankHook
; ---------------------------------
_VBlankHook::
;./bluebakas.c:281: ayFX_Update();
	call	_ayFX_Update
;./bluebakas.c:282: PSG_Apply();
;./bluebakas.c:283: }
	jp	_PSG_Apply
;./bluebakas.c:285: void InitSound()
;	---------------------------------
; Function InitSound
; ---------------------------------
_InitSound::
;./bluebakas.c:287: PSG_Mute();
	call	_PSG_Mute
;./bluebakas.c:289: ayFX_InitBank(g_sfx);
	ld	hl, #_g_sfx
	call	_ayFX_InitBank
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.h:131: inline void ayFX_SetChannel(u8 chan) { ayFX_Channel = 3 - chan; }
	ld	hl, #_ayFX_Channel
	ld	(hl), #0x03
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.h:124: inline void ayFX_SetMode(u8 mode) { ayFX_Mode = mode; }
	xor	a, a
	ld	(#_ayFX_Mode), a
;./bluebakas.c:292: ayFX_SetFinishCB(OnSFXFinished);
	ld	hl, #_OnSFXFinished
	ld	(_ayFX_Finish), hl
;./bluebakas.c:294: BIOS_SetHookCallback(H_TIMI, VBlankHook);
	ld	de, #_VBlankHook
	ld	hl, #0xfd9f
;./bluebakas.c:295: }
	jp	_BIOS_SetHookCallback
;./bluebakas.c:297: void PlaySFX(u8 id, u8 prio)
;	---------------------------------
; Function PlaySFX
; ---------------------------------
_PlaySFX::
;./bluebakas.c:299: ayFX_PlayBank(id, prio);
;./bluebakas.c:300: }
	jp	_ayFX_PlayBank
;./bluebakas.c:302: void OnSFXFinished()
;	---------------------------------
; Function OnSFXFinished
; ---------------------------------
_OnSFXFinished::
;./bluebakas.c:304: ayFX_Mute();
	call	_ayFX_Mute
;./bluebakas.c:306: if(g_GameOverToTitle)
	ld	a, (_g_GameOverToTitle+0)
	or	a, a
	jr	z, 00102$
;./bluebakas.c:308: g_GameOverSoundDone = TRUE;
	ld	hl, #_g_GameOverSoundDone
	ld	(hl), #0x01
;./bluebakas.c:309: return;
	ret
00102$:
;./bluebakas.c:312: if(g_FuelSoundWanted)
	ld	a, (_g_FuelSoundWanted+0)
	or	a, a
	ret	z
;./bluebakas.c:314: g_FuelSoundRestart = TRUE;
	ld	hl, #_g_FuelSoundRestart
	ld	(hl), #0x01
;./bluebakas.c:316: }
	ret
;./bluebakas.c:322: void ResetGameplayFlags()
;	---------------------------------
; Function ResetGameplayFlags
; ---------------------------------
_ResetGameplayFlags::
;./bluebakas.c:324: g_LaserActive = FALSE;
;./bluebakas.c:325: g_LaserErasing = FALSE;
	xor	a, a
	ld	(#_g_LaserActive), a
	ld	(#_g_LaserErasing), a
;./bluebakas.c:326: g_ShowGoodHit = FALSE;
	xor	a, a
	ld	(#_g_ShowGoodHit), a
;./bluebakas.c:327: g_hasHUDChanged = TRUE;
	ld	hl, #_g_hasHUDChanged
	ld	(hl), #0x01
;./bluebakas.c:328: }
	ret
;./bluebakas.c:330: bool AnyKeyDown()
;	---------------------------------
; Function AnyKeyDown
; ---------------------------------
_AnyKeyDown::
	dec	sp
;./bluebakas.c:335: anyKey = FALSE;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x00
;./bluebakas.c:337: for(row = 0; row <= 8; row++)
	ld	c, #0x00
00104$:
;./bluebakas.c:339: if(Keyboard_Read(row) != 0xFF)
	ld	l, c
	call	_Keyboard_Read
	inc	l
	jr	z, 00105$
;./bluebakas.c:340: anyKey = TRUE;
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), #0x01
00105$:
;./bluebakas.c:337: for(row = 0; row <= 8; row++)
	inc	c
	ld	a, #0x08
	sub	a, c
	jr	nc, 00104$
;./bluebakas.c:343: return anyKey;
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
;./bluebakas.c:344: }
	inc	sp
	ret
;./bluebakas.c:346: void WaitForCleanKeyPress()
;	---------------------------------
; Function WaitForCleanKeyPress
; ---------------------------------
_WaitForCleanKeyPress::
;./bluebakas.c:351: do
00101$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./bluebakas.c:355: while(AnyKeyDown());
	call	_AnyKeyDown
	or	a, a
	jr	nz, 00101$
;./bluebakas.c:358: do
00104$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./bluebakas.c:362: while(!AnyKeyDown());
	call	_AnyKeyDown
	or	a, a
	jr	z, 00104$
;./bluebakas.c:365: do
00107$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./bluebakas.c:369: while(AnyKeyDown());
	call	_AnyKeyDown
	or	a, a
	jr	nz, 00107$
;./bluebakas.c:370: }
	ret
;./bluebakas.c:391: void InitMeanie()
;	---------------------------------
; Function InitMeanie
; ---------------------------------
_InitMeanie::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
;./bluebakas.c:395: for(i = 0; i < MEANIE_COUNT; i++)
	ld	-1 (ix), #0x00
00103$:
;./bluebakas.c:404: g_MeanieActions
;./bluebakas.c:401: g_MeanieSprite,
;./bluebakas.c:400: &g_Meanies[i].PawnObj,
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	a, #<(_g_Meanies)
	add	a, l
	ld	c, a
	ld	a, #>(_g_Meanies)
	adc	a, h
	ld	b, a
	ld	l, c
	ld	h, b
	push	hl
	push	bc
	ld	de, #_g_MeanieActions
	push	de
	ld	d, -1 (ix)
	ld	e, #0x01
	push	de
	ld	de, #_g_MeanieSprite
	call	_Pawn_Initialize
	pop	bc
	pop	hl
;./bluebakas.c:407: Pawn_SetPosition(&g_Meanies[i].PawnObj, 122, 0);
	push	hl
	push	bc
	ld	de, #0x7a
	push	de
	call	_Pawn_SetPosition
	pop	bc
	pop	hl
;./bluebakas.c:408: Pawn_Disable(&g_Meanies[i].PawnObj);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_Pawn_SetEnable
	pop	bc
;./bluebakas.c:410: g_Meanies[i].Active = FALSE;
	ld	hl, #0x0017
	add	hl, bc
	ld	(hl), #0x00
;./bluebakas.c:411: g_Meanies[i].Tick = 0;
	ld	hl, #0x0018
	add	hl, bc
	ld	(hl), #0x00
;./bluebakas.c:413: g_Meanies[i].XFix = 0;
	ld	hl, #0x0019
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;./bluebakas.c:414: g_Meanies[i].YFix = 0;
	ld	hl, #0x001b
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;./bluebakas.c:416: g_Meanies[i].VXFix = 0;
	ld	hl, #0x001d
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;./bluebakas.c:417: g_Meanies[i].VYFix = 0;
	ld	hl, #0x001f
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;./bluebakas.c:421: g_Meanies[i].MoveLeftFix = 0;
	ld	hl, #0x0021
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;./bluebakas.c:395: for(i = 0; i < MEANIE_COUNT; i++)
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x02
	jr	c, 00103$
;./bluebakas.c:423: }
	inc	sp
	pop	ix
	ret
_g_MeanieSprite:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
_g_MeanieFrames:
	.db #0x00	; 0
	.db #0x0a	; 10
	.dw #0x0000
_g_MeanieActions:
	.dw _g_MeanieFrames
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
;./bluebakas.c:444: void InitFuel()
;	---------------------------------
; Function InitFuel
; ---------------------------------
_InitFuel::
;./bluebakas.c:451: g_FuelActions
;./bluebakas.c:448: g_FuelSprite,
;./bluebakas.c:447: &g_Fuel,
	ld	hl, #_g_FuelActions
	push	hl
	ld	hl, #0x201
	push	hl
	ld	de, #_g_FuelSprite
	ld	hl, #_g_Fuel
	call	_Pawn_Initialize
;./bluebakas.c:454: Pawn_SetPosition(&g_Fuel, 0, 216);
	ld	hl, #0xd800
	push	hl
	ld	hl, #_g_Fuel
	call	_Pawn_SetPosition
;./bluebakas.c:455: Pawn_Disable(&g_Fuel);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_g_Fuel
	call	_Pawn_SetEnable
;./bluebakas.c:457: g_FuelActive = FALSE;
	xor	a, a
	ld	(#_g_FuelActive), a
;./bluebakas.c:458: g_FuelXFix = 0;
	ld	hl, #0x0000
	ld	(_g_FuelXFix), hl
;./bluebakas.c:459: g_FuelYFix = 0;
	ld	(_g_FuelYFix), hl
;./bluebakas.c:461: g_FuelSpawnDelay = PickFuelRespawnDelay();
	call	_PickFuelRespawnDelay
	ld	(_g_FuelSpawnDelay), de
;./bluebakas.c:462: }
	ret
_g_FuelSprite:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
_g_FuelFrames:
	.db #0x01	; 1
	.db #0x0a	; 10
	.dw #0x0000
_g_FuelActions:
	.dw _g_FuelFrames
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
;./bluebakas.c:464: void SpawnFuel()
;	---------------------------------
; Function SpawnFuel
; ---------------------------------
_SpawnFuel::
;./bluebakas.c:470: tileX = RandRange(4, 27);
	ld	l, #0x1b
	ld	a, #0x04
	call	_RandRange
;./bluebakas.c:471: x = tileX << 3;
	add	a, a
	add	a, a
	add	a, a
	ld	b, a
;./bluebakas.c:473: g_FuelXFix = ((i16)x) << FIX_SHIFT;
	ld	l, b
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(_g_FuelXFix), hl
;./bluebakas.c:474: g_FuelYFix = 0;
	ld	hl, #0x0000
	ld	(_g_FuelYFix), hl
;./bluebakas.c:476: Pawn_SetPosition(&g_Fuel, x, 0);
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #_g_Fuel
	call	_Pawn_SetPosition
;./bluebakas.c:477: Pawn_Enable(&g_Fuel);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:437: inline void Pawn_Enable(Pawn* pawn) { Pawn_SetEnable(pawn, TRUE); }
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_g_Fuel
	call	_Pawn_SetEnable
;./bluebakas.c:479: g_FuelActive = TRUE;
	ld	hl, #_g_FuelActive
	ld	(hl), #0x01
;./bluebakas.c:480: }
	ret
;./bluebakas.c:482: void DespawnFuel()
;	---------------------------------
; Function DespawnFuel
; ---------------------------------
_DespawnFuel::
;./bluebakas.c:484: Pawn_Disable(&g_Fuel);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_g_Fuel
	call	_Pawn_SetEnable
;./bluebakas.c:485: g_FuelActive = FALSE;
	xor	a, a
	ld	(#_g_FuelActive), a
;./bluebakas.c:486: g_FuelSpawnDelay = PickFuelRespawnDelay();
	call	_PickFuelRespawnDelay
	ld	(_g_FuelSpawnDelay), de
;./bluebakas.c:488: UpdateFuelSound();
;./bluebakas.c:489: }
	jp	_UpdateFuelSound
;./bluebakas.c:491: void TrySpawnFuel()
;	---------------------------------
; Function TrySpawnFuel
; ---------------------------------
_TrySpawnFuel::
;./bluebakas.c:493: if(g_FuelActive)
	ld	a, (_g_FuelActive+0)
	or	a, a
;./bluebakas.c:494: return;
	ret	nz
;./bluebakas.c:496: if(g_FuelSpawnDelay > 0)
	ld	a, (_g_FuelSpawnDelay+1)
	ld	hl, #_g_FuelSpawnDelay
	or	a, (hl)
	jp	z, _SpawnFuel
;./bluebakas.c:498: g_FuelSpawnDelay--;
	ld	hl, (_g_FuelSpawnDelay)
	dec	hl
	ld	(_g_FuelSpawnDelay), hl
;./bluebakas.c:499: return;
;./bluebakas.c:502: SpawnFuel();
;./bluebakas.c:503: }
	ret
;./bluebakas.c:505: bool FuelHitsSolidTile()
;	---------------------------------
; Function FuelHitsSolidTile
; ---------------------------------
_FuelHitsSolidTile::
;./bluebakas.c:514: x = g_FuelXFix >> FIX_SHIFT;
	ld	de, (_g_FuelXFix)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;./bluebakas.c:515: y = g_FuelYFix >> FIX_SHIFT;
	ld	hl, (_g_FuelYFix)
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;./bluebakas.c:518: tx1 = (u8)((x + 1) >> 3);
	ld	a, e
	ld	c, a
	ld	b, d
	inc	bc
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;./bluebakas.c:519: tx2 = (u8)((x + 7) >> 3);
	add	a, #0x07
	ld	e, a
	ld	a, d
	adc	a, #0x00
	sra	a
	rr	e
	sra	a
	rr	e
	sra	a
	rr	e
;./bluebakas.c:520: ty  = (u8)((y + 7) >> 3);
	ld	a, l
	add	a, #0x07
	ld	d, a
	ld	a, h
	adc	a, #0x00
	sra	a
	rr	d
	sra	a
	rr	d
	sra	a
	rr	d
;./bluebakas.c:522: if(ty >= PLAYFIELD_H)
	ld	a, d
	sub	a, #0x16
	jr	c, 00102$
;./bluebakas.c:523: return FALSE;
	xor	a, a
	ret
00102$:
;./bluebakas.c:525: return (GetMapTile(tx1, ty) == TILE_SOLID) || (GetMapTile(tx2, ty) == TILE_SOLID);
	push	de
	ld	l, d
	ld	a, c
	call	_GetMapTile
	pop	de
	cp	a, #0x01
	jr	z, 00106$
	ld	l, d
	ld	a, e
	call	_GetMapTile
	cp	a, #0x01
	jr	z, 00106$
	xor	a, a
	ret
00106$:
	ld	a, #0x01
;./bluebakas.c:526: }
	ret
;./bluebakas.c:528: void UpdateFuel()
;	---------------------------------
; Function UpdateFuel
; ---------------------------------
_UpdateFuel::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
;./bluebakas.c:533: bool freeze = g_LaserActive || g_LaserErasing;
	ld	a, (_g_LaserActive+0)
	or	a, a
	jr	nz, 00119$
	ld	a, (_g_LaserErasing+0)
	or	a, a
	jr	nz, 00119$
	ld	c, a
	jp	00120$
00119$:
	ld	c, #0x01
00120$:
;./bluebakas.c:537: if(freeze)
	ld	a, c
	or	a, a
	jr	z, 00104$
;./bluebakas.c:539: if(g_FuelActive)
	ld	a, (_g_FuelActive+0)
	or	a, a
	jp	z, 00116$
;./bluebakas.c:541: Pawn_Draw(&g_Fuel);
	ld	hl, #_g_Fuel
	call	_Pawn_Draw
;./bluebakas.c:544: return;
	jp	00116$
00104$:
;./bluebakas.c:547: TrySpawnFuel();
	call	_TrySpawnFuel
;./bluebakas.c:549: UpdateFuelSound();
	call	_UpdateFuelSound
;./bluebakas.c:551: if(!g_FuelActive)
	ld	a, (_g_FuelActive+0)
	or	a, a
;./bluebakas.c:552: return;
	jp	z, 00116$
;./bluebakas.c:554: g_FuelYFix += 16;
	ld	hl, (_g_FuelYFix)
	ld	bc, #0x0010
	add	hl, bc
	ld	(_g_FuelYFix), hl
;./bluebakas.c:556: x = g_FuelXFix >> FIX_SHIFT;
	ld	a, (_g_FuelXFix+0)
	ld	-4 (ix), a
	ld	a, (_g_FuelXFix+1)
	ld	-3 (ix), a
	sra	-3 (ix)
	rr	-4 (ix)
	sra	-3 (ix)
	rr	-4 (ix)
	sra	-3 (ix)
	rr	-4 (ix)
	sra	-3 (ix)
	rr	-4 (ix)
;./bluebakas.c:557: y = g_FuelYFix >> FIX_SHIFT;
	ld	a, (_g_FuelYFix+0)
	ld	-2 (ix), a
	ld	a, (_g_FuelYFix+1)
	ld	-1 (ix), a
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
;./bluebakas.c:559: if(FuelHitsSolidTile())
	call	_FuelHitsSolidTile
	or	a, a
	jr	z, 00111$
;./bluebakas.c:561: if(Energy <= 9499)
	ld	hl, (_Energy)
	ld	a, #0x1b
	cp	a, l
	ld	a, #0x25
	sbc	a, h
	jr	c, 00108$
;./bluebakas.c:562: Energy += 500;
	ld	bc, #0x01f4
	add	hl, bc
	ld	(_Energy), hl
	jp	00109$
00108$:
;./bluebakas.c:564: Energy = 9999;
	ld	hl, #0x270f
	ld	(_Energy), hl
00109$:
;./bluebakas.c:566: g_ShowGoodHit = FALSE;
	xor	a, a
	ld	(#_g_ShowGoodHit), a
;./bluebakas.c:567: Print_DrawTextAt(23, 22, " REFUELED");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x17
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_0
	call	_Print_DrawText
;./bluebakas.c:568: g_hasHUDChanged = TRUE;
	ld	hl, #_g_hasHUDChanged
	ld	(hl), #0x01
;./bluebakas.c:570: DespawnFuel();
	call	_DespawnFuel
;./bluebakas.c:572: return;
	jp	00116$
00111$:
;./bluebakas.c:575: if(y >= MEANIE_BOTTOM_Y)
	ld	a, -2 (ix)
	ld	b, -1 (ix)
	sub	a, #0xc8
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00113$
;./bluebakas.c:577: DespawnFuel();
	call	_DespawnFuel
;./bluebakas.c:579: return;
	jp	00116$
00113$:
;./bluebakas.c:582: Pawn_SetPosition(&g_Fuel, (u8)x, (u8)y);
	ld	c, -2 (ix)
	ld	b, -4 (ix)
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #_g_Fuel
	call	_Pawn_SetPosition
;./bluebakas.c:584: Pawn_Update(&g_Fuel);
	ld	hl, #_g_Fuel
	call	_Pawn_Update
;./bluebakas.c:585: Pawn_Draw(&g_Fuel);
	ld	hl, #_g_Fuel
	call	_Pawn_Draw
00116$:
;./bluebakas.c:586: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii " REFUELED"
	.db 0x00
;./bluebakas.c:588: void UpdateFuelSound()
;	---------------------------------
; Function UpdateFuelSound
; ---------------------------------
_UpdateFuelSound::
;./bluebakas.c:590: if(!g_FuelActive)
	ld	a, (_g_FuelActive+0)
;./bluebakas.c:592: g_FuelSoundWanted = FALSE;
;./bluebakas.c:593: g_FuelSoundRestart = FALSE;
	or	a,a
	jr	nz, 00102$
	ld	(#_g_FuelSoundWanted), a
	ld	(#_g_FuelSoundRestart), a
;./bluebakas.c:594: return;
	ret
00102$:
;./bluebakas.c:597: if(!g_FuelSoundWanted)
	ld	a, (_g_FuelSoundWanted+0)
	or	a, a
	jr	nz, 00104$
;./bluebakas.c:599: g_FuelSoundWanted = TRUE;
	ld	hl, #_g_FuelSoundWanted
	ld	(hl), #0x01
;./bluebakas.c:600: g_FuelSoundRestart = TRUE;
	ld	hl, #_g_FuelSoundRestart
	ld	(hl), #0x01
00104$:
;./bluebakas.c:603: if(g_FuelSoundRestart)
	ld	a, (_g_FuelSoundRestart+0)
	or	a, a
	ret	z
;./bluebakas.c:607: if(ayFX_PlayBank(6, 12) == AYFX_ERROR_NONE)
	ld	l, #0x0c
	ld	a, #0x06
	call	_ayFX_PlayBank
;./bluebakas.c:609: g_FuelSoundRestart = FALSE;
	or	a,a
	ret	nz
	ld	(#_g_FuelSoundRestart), a
;./bluebakas.c:612: }
	ret
;./bluebakas.c:614: u16 PickFuelRespawnDelay()
;	---------------------------------
; Function PickFuelRespawnDelay
; ---------------------------------
_PickFuelRespawnDelay::
;./bluebakas.c:618: choice = RandRange(0, 2);
	ld	l, #0x02
	xor	a, a
	call	_RandRange
	ld	c, a
;./bluebakas.c:620: if(choice == 0)
	or	a, a
	jr	nz, 00102$
;./bluebakas.c:621: return FUEL_RESPAWN_DELAY_SHORT;
	ld	de, #0x01c2
	ret
00102$:
;./bluebakas.c:623: if(choice == 1)
	dec	c
	jr	nz, 00104$
;./bluebakas.c:624: return FUEL_RESPAWN_DELAY_MEDIUM;
	ld	de, #0x0384
	ret
00104$:
;./bluebakas.c:626: return FUEL_RESPAWN_DELAY_LONG;
	ld	de, #0x0708
;./bluebakas.c:627: }
	ret
;./bluebakas.c:653: void InitExplosion()
;	---------------------------------
; Function InitExplosion
; ---------------------------------
_InitExplosion::
;./bluebakas.c:660: g_ExplosionActions
;./bluebakas.c:657: g_ExplosionSprite,
;./bluebakas.c:656: &g_Explosion,
	ld	hl, #_g_ExplosionActions
	push	hl
	ld	hl, #0x304
	push	hl
	ld	de, #_g_ExplosionSprite
	ld	hl, #_g_Explosion
	call	_Pawn_Initialize
;./bluebakas.c:663: Pawn_SetPosition(&g_Explosion, 0, 216);
	ld	hl, #0xd800
	push	hl
	ld	hl, #_g_Explosion
	call	_Pawn_SetPosition
;./bluebakas.c:664: Pawn_Disable(&g_Explosion);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_g_Explosion
	call	_Pawn_SetEnable
;./bluebakas.c:666: g_ExplosionActive = FALSE;
	xor	a, a
	ld	(#_g_ExplosionActive), a
;./bluebakas.c:667: }
	ret
_g_ExplosionSprite:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0x00	;  0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x00	; 0
_g_ExplosionFrames:
	.db #0x02	; 2
	.db #0x0a	; 10
	.dw #0x0000
_g_ExplosionActions:
	.dw _g_ExplosionFrames
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
;./bluebakas.c:669: void StartExplosion(i16 x, i16 y)
;	---------------------------------
; Function StartExplosion
; ---------------------------------
_StartExplosion::
;./bluebakas.c:672: x -= 4;
	ld	bc, #0xfffc
	add	hl,bc
	ld	c, l
	ld	b, h
;./bluebakas.c:673: y -= 4;
	ld	a, e
	add	a, #0xfc
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
;./bluebakas.c:675: if(x < 0)
	ld	l, c
	ld	h, b
	bit	7, h
	jr	z, 00104$
;./bluebakas.c:676: x = 0;
	ld	bc, #0x0000
	jp	00105$
00104$:
;./bluebakas.c:677: else if(x > 240)
	ld	a, #0xf0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00105$
;./bluebakas.c:678: x = 240;
	ld	bc, #0x00f0
00105$:
;./bluebakas.c:680: if(y < 0)
	ld	l, e
	ld	h, d
	bit	7, h
	jr	z, 00109$
;./bluebakas.c:681: y = 0;
	ld	de, #0x0000
	jp	00110$
00109$:
;./bluebakas.c:682: else if(y > 176)
	ld	a, #0xb0
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jr	nc, 00110$
;./bluebakas.c:683: y = 176;
	ld	de, #0x00b0
00110$:
;./bluebakas.c:687: ExplosionDestroyTilesAt(x, y);
	push	bc
	push	de
	ld	l, c
	ld	h, b
	call	_ExplosionDestroyTilesAt
	pop	de
	pop	bc
;./bluebakas.c:689: Pawn_SetPosition(&g_Explosion, (u8)x, (u8)y);
	ld	b, e
	push	bc
	ld	hl, #_g_Explosion
	call	_Pawn_SetPosition
;./bluebakas.c:690: Pawn_Enable(&g_Explosion);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:437: inline void Pawn_Enable(Pawn* pawn) { Pawn_SetEnable(pawn, TRUE); }
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_g_Explosion
	call	_Pawn_SetEnable
;./bluebakas.c:692: g_ExplosionActive = TRUE;
	ld	hl, #_g_ExplosionActive
	ld	(hl), #0x01
;./bluebakas.c:693: }
	ret
;./bluebakas.c:695: void UpdateExplosion()
;	---------------------------------
; Function UpdateExplosion
; ---------------------------------
_UpdateExplosion::
;./bluebakas.c:697: if(!g_ExplosionActive)
	ld	a, (_g_ExplosionActive+0)
	or	a, a
;./bluebakas.c:698: return;
	ret	z
;./bluebakas.c:700: Pawn_Update(&g_Explosion);
	ld	hl, #_g_Explosion
	call	_Pawn_Update
;./bluebakas.c:701: Pawn_Draw(&g_Explosion);
	ld	hl, #_g_Explosion
	call	_Pawn_Draw
;./bluebakas.c:705: if(!g_LaserActive && !g_LaserErasing)
	ld	a, (_g_LaserActive+0)
	or	a, a
	ret	nz
	ld	a, (_g_LaserErasing+0)
	or	a, a
	ret	nz
;./bluebakas.c:707: Pawn_Disable(&g_Explosion);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_g_Explosion
	call	_Pawn_SetEnable
;./bluebakas.c:708: g_ExplosionActive = FALSE;
	xor	a, a
	ld	(#_g_ExplosionActive), a
;./bluebakas.c:710: }
	ret
;./bluebakas.c:716: u16 GetMapIndex(u8 tx, u8 ty)
;	---------------------------------
; Function GetMapIndex
; ---------------------------------
_GetMapIndex::
;./bluebakas.c:718: return (ty * PLAYFIELD_W) + tx;
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, a
	ld	b, #0x00
	add	hl, bc
	ex	de, hl
;./bluebakas.c:719: }
	ret
;./bluebakas.c:721: u8 GetMapTile(u8 tx, u8 ty)
;	---------------------------------
; Function GetMapTile
; ---------------------------------
_GetMapTile::
;./bluebakas.c:723: if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
	ld	c, a
	sub	a, #0x20
	jr	nc, 00101$
	ld	a, l
	sub	a, #0x16
	jr	c, 00102$
00101$:
;./bluebakas.c:724: return TILE_SOLID;
	ld	a, #0x01
	ret
00102$:
;./bluebakas.c:726: return g_RamMap[GetMapIndex(tx, ty)];
	ld	a, c
	call	_GetMapIndex
	ld	hl, #_g_RamMap
	add	hl, de
	ld	a, (hl)
;./bluebakas.c:727: }
	ret
;./bluebakas.c:729: u8 GetOriginalMapTile(u8 tx, u8 ty)
;	---------------------------------
; Function GetOriginalMapTile
; ---------------------------------
_GetOriginalMapTile::
;./bluebakas.c:734: if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
	ld	c, a
	sub	a, #0x20
	jr	nc, 00101$
	ld	a, l
	sub	a, #0x16
	jr	c, 00102$
00101$:
;./bluebakas.c:735: return TILE_SOLID;
	ld	a, #0x01
	ret
00102$:
;./bluebakas.c:737: index = GetMapIndex(tx, ty);
	ld	a, c
	call	_GetMapIndex
;./bluebakas.c:738: tile = g_Map[index];
	ld	hl, #_g_Map+0
	add	hl, de
	ld	a, (hl)
;./bluebakas.c:742: if(tile == TILE_REPAIR_ROBOT)
	cp	a, #0x02
	ret	nz
;./bluebakas.c:743: return TILE_EMPTY;
	xor	a, a
;./bluebakas.c:745: return tile;
;./bluebakas.c:746: }
	ret
;./bluebakas.c:748: void SetMapTile(u8 tx, u8 ty, u8 tile)
;	---------------------------------
; Function SetMapTile
; ---------------------------------
_SetMapTile::
	push	ix
	ld	ix,	#0
	add	ix, sp
;./bluebakas.c:752: if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
	ld	c, a
	sub	a, #0x20
	jr	nc, 00105$
	ld	a, l
	sub	a, #0x16
;./bluebakas.c:753: return;
	jr	nc, 00105$
;./bluebakas.c:755: index = GetMapIndex(tx, ty);
	ld	a, c
	call	_GetMapIndex
;./bluebakas.c:757: g_RamMap[index] = tile;
	ld	hl, #_g_RamMap+0
	add	hl, de
	ld	c, l
	ld	b, h
	ld	a, 4 (ix)
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:1027: inline VADDR VDP_GetLayoutTable() { return VADDR_GET(g_ScreenLayoutLow, g_ScreenLayoutHigh); }
	ld	hl, (_g_ScreenLayoutLow)
;./bluebakas.c:761: VDP_GetLayoutTable() + index,
	add	hl, de
	ex	de, hl
;./bluebakas.c:760: &g_RamMap[index],
	ld	hl, #0x0001
	push	hl
	ld	l, c
	ld	h, b
	call	_VDP_WriteVRAM_16K
00105$:
;./bluebakas.c:764: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;./bluebakas.c:766: bool IsDestroyableTile(u8 tile)
;	---------------------------------
; Function IsDestroyableTile
; ---------------------------------
_IsDestroyableTile::
;./bluebakas.c:774: return tile != TILE_EMPTY && tile != TILE_REPAIR_ROBOT;
	or	a, a
	jr	z, 00103$
	cp	a, #0x02
	jr	nz, 00104$
00103$:
	xor	a, a
	ret
00104$:
	ld	a, #0x01
;./bluebakas.c:775: }
	ret
;./bluebakas.c:777: bool IsExplosionDestroyableTile(u8 tile)
;	---------------------------------
; Function IsExplosionDestroyableTile
; ---------------------------------
_IsExplosionDestroyableTile::
;./bluebakas.c:782: return tile != TILE_EMPTY && tile != TILE_REPAIR_ROBOT;
	or	a, a
	jr	z, 00103$
	cp	a, #0x02
	jr	nz, 00104$
00103$:
	xor	a, a
	ret
00104$:
	ld	a, #0x01
;./bluebakas.c:783: }
	ret
;./bluebakas.c:785: void ExplosionDestroyTilesAt(i16 x, i16 y)
;	---------------------------------
; Function ExplosionDestroyTilesAt
; ---------------------------------
_ExplosionDestroyTilesAt::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
;./bluebakas.c:797: if(x < 0)
	ld	b, h
	bit	7, b
	jr	z, 00102$
;./bluebakas.c:798: x = 0;
	ld	hl, #0x0000
00102$:
;./bluebakas.c:800: if(y < 0)
	ld	b, d
	bit	7, b
	jr	z, 00104$
;./bluebakas.c:801: y = 0;
	ld	de, #0x0000
00104$:
;./bluebakas.c:803: tx0 = (u8)(x >> 3);
	ld	a, l
	ld	c, h
	sra	c
	rr	a
	sra	c
	rr	a
	sra	c
	rr	a
	ld	-1 (ix), a
;./bluebakas.c:804: ty0 = (u8)(y >> 3);
	ld	c, e
	ld	a, d
	sra	a
	rr	c
	sra	a
	rr	c
	sra	a
	rr	c
;./bluebakas.c:806: tx1 = (u8)((x + 15) >> 3);
	push	de
	ld	de, #0x000f
	add	hl, de
	pop	de
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b, l
;./bluebakas.c:807: ty1 = (u8)((y + 15) >> 3);
	ld	hl, #0x000f
	add	hl, de
	ex	de, hl
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;./bluebakas.c:809: if(tx1 >= PLAYFIELD_W)
	ld	a, b
	sub	a, #0x20
	jr	c, 00106$
;./bluebakas.c:810: tx1 = PLAYFIELD_W - 1;
	ld	b, #0x1f
00106$:
;./bluebakas.c:812: if(ty1 >= PLAYFIELD_H)
	ld	a, e
	sub	a, #0x16
	jr	c, 00138$
;./bluebakas.c:813: ty1 = PLAYFIELD_H - 1;
	ld	e, #0x15
;./bluebakas.c:815: for(ty = ty0; ty <= ty1; ty++)
00138$:
00117$:
	ld	a, e
	sub	a, c
	jr	c, 00119$
;./bluebakas.c:817: for(tx = tx0; tx <= tx1; tx++)
	ld	d, -1 (ix)
00114$:
	ld	a, b
	sub	a, d
	jr	c, 00118$
;./bluebakas.c:819: tile = GetMapTile(tx, ty);
	push	bc
	push	de
	ld	l, c
	ld	a, d
	call	_GetMapTile
;./bluebakas.c:821: if(IsExplosionDestroyableTile(tile))
	call	_IsExplosionDestroyableTile
	pop	de
	pop	bc
	or	a, a
	jr	z, 00115$
;./bluebakas.c:823: SetMapTile(tx, ty, TILE_EMPTY);
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	l, c
	ld	a, d
	call	_SetMapTile
	pop	de
	pop	bc
00115$:
;./bluebakas.c:817: for(tx = tx0; tx <= tx1; tx++)
	inc	d
	jp	00114$
00118$:
;./bluebakas.c:815: for(ty = ty0; ty <= ty1; ty++)
	inc	c
	jp	00117$
00119$:
;./bluebakas.c:827: }
	inc	sp
	pop	ix
	ret
;./bluebakas.c:833: void InitRepairRobot()
;	---------------------------------
; Function InitRepairRobot
; ---------------------------------
_InitRepairRobot::
;./bluebakas.c:841: for(index = 0; index < PLAYFIELD_SIZE; index++)
	ld	bc, #0x0000
	ld	d, b
	ld	e, c
00104$:
;./bluebakas.c:843: if(g_RamMap[index] == TILE_REPAIR_ROBOT)
	ld	hl, #_g_RamMap
	add	hl, de
	ld	a, (hl)
	cp	a, #0x02
	jr	nz, 00105$
;./bluebakas.c:845: g_RobotTileX = index & 31;
	ld	a, c
	and	a, #0x1f
	ld	(#_g_RobotTileX), a
;./bluebakas.c:846: g_RobotTileY = index >> 5;
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_g_RobotTileY
	ld	(hl), c
;./bluebakas.c:850: g_RobotUnderTile = TILE_EMPTY;
	xor	a, a
	ld	(#_g_RobotUnderTile), a
;./bluebakas.c:852: SetMapTile(g_RobotTileX, g_RobotTileY, TILE_REPAIR_ROBOT);
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, (_g_RobotTileY)
	ld	l, a
	ld	a, (_g_RobotTileX)
	call	_SetMapTile
;./bluebakas.c:853: return;
	ret
00105$:
;./bluebakas.c:841: for(index = 0; index < PLAYFIELD_SIZE; index++)
	inc	de
	ld	c, e
	ld	b, d
	ld	l, e
	ld	h, d
	ld	a, l
	sub	a, #0xc0
	ld	a, h
	sbc	a, #0x02
	jr	c, 00104$
;./bluebakas.c:861: g_RobotTileX = tx;
	ld	hl, #_g_RobotTileX
	ld	(hl), #0x0a
;./bluebakas.c:862: g_RobotTileY = ty;
	ld	hl, #_g_RobotTileY
	ld	(hl), #0x15
;./bluebakas.c:863: g_RobotUnderTile = GetMapTile(tx, ty);
	ld	l, #0x15
	ld	a, #0x0a
	call	_GetMapTile
	ld	(#_g_RobotUnderTile), a
;./bluebakas.c:865: SetMapTile(g_RobotTileX, g_RobotTileY, TILE_REPAIR_ROBOT);
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, (_g_RobotTileY)
	ld	l, a
	ld	a, (_g_RobotTileX)
	call	_SetMapTile
;./bluebakas.c:866: }
	ret
;./bluebakas.c:868: void MoveRepairRobot(i8 dx, i8 dy)
;	---------------------------------
; Function MoveRepairRobot
; ---------------------------------
_MoveRepairRobot::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	ld	e, a
	ld	c, l
;./bluebakas.c:873: newX = (i16)g_RobotTileX + dx;
	ld	a, (_g_RobotTileX)
	ld	l, a
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	ld	h, #0x00
	add	hl, de
	ex	de, hl
;./bluebakas.c:874: newY = (i16)g_RobotTileY + dy;
	ld	a, (_g_RobotTileY)
	ld	l, a
	ld	a, c
	rlca
	sbc	a, a
	ld	b, a
	ld	h, #0x00
	add	hl, bc
	ex	(sp), hl
;./bluebakas.c:876: if(newX < 0 || newY < 0 || newX >= PLAYFIELD_W || newY >= PLAYFIELD_H)
	ld	c, e
	ld	b, d
	bit	7, b
	jr	nz, 00106$
	pop	hl
	push	hl
	bit	7, h
	jr	nz, 00106$
	ld	a, c
	sub	a, #0x20
	ld	a, b
	sbc	a, #0x00
	jr	nc, 00106$
	ld	a, l
	sub	a, #0x16
	ld	a, h
	sbc	a, #0x00
;./bluebakas.c:877: return;
	jr	nc, 00106$
;./bluebakas.c:880: SetMapTile(g_RobotTileX, g_RobotTileY, g_RobotUnderTile);
	push	de
	ld	a, (_g_RobotUnderTile)
	push	af
	inc	sp
	ld	a, (_g_RobotTileY)
	ld	l, a
	ld	a, (_g_RobotTileX)
	call	_SetMapTile
	pop	de
;./bluebakas.c:883: g_RobotTileX = (u8)newX;
	ld	hl, #_g_RobotTileX
	ld	(hl), e
;./bluebakas.c:884: g_RobotTileY = (u8)newY;
	ld	a, -2 (ix)
	ld	(#_g_RobotTileY), a
;./bluebakas.c:887: g_RobotUnderTile = GetMapTile(g_RobotTileX, g_RobotTileY);
	ld	a, (_g_RobotTileY)
	ld	l, a
	ld	a, (_g_RobotTileX)
	call	_GetMapTile
	ld	(#_g_RobotUnderTile), a
;./bluebakas.c:890: SetMapTile(g_RobotTileX, g_RobotTileY, TILE_REPAIR_ROBOT);
	ld	a, #0x02
	push	af
	inc	sp
	ld	a, (_g_RobotTileY)
	ld	l, a
	ld	a, (_g_RobotTileX)
	call	_SetMapTile
00106$:
;./bluebakas.c:891: }
	ld	sp, ix
	pop	ix
	ret
;./bluebakas.c:893: void RepairRobotTile()
;	---------------------------------
; Function RepairRobotTile
; ---------------------------------
_RepairRobotTile::
;./bluebakas.c:898: if(Energy < REPAIR_COST)
	ld	hl, (_Energy)
	ld	de, #0x0014
	cp	a, a
	sbc	hl, de
;./bluebakas.c:899: return;
	ret	c
;./bluebakas.c:901: originalTile = GetOriginalMapTile(g_RobotTileX, g_RobotTileY);
	ld	a, (_g_RobotTileY)
	ld	l, a
	ld	a, (_g_RobotTileX)
	call	_GetOriginalMapTile
	ld	c, a
;./bluebakas.c:909: if(originalTile != TILE_EMPTY)
	or	a, a
;./bluebakas.c:910: buildTile = originalTile;
	jr	nz, 00105$
;./bluebakas.c:912: buildTile = TILE_SOLID; // Build anywhere, even where original map was empty.
	ld	c, #0x01
00105$:
;./bluebakas.c:915: if(g_RobotUnderTile == buildTile)
	ld	a, (_g_RobotUnderTile)
	sub	a, c
	ret	z
;./bluebakas.c:916: return;
;./bluebakas.c:920: g_RobotUnderTile = buildTile;
	ld	hl, #_g_RobotUnderTile
	ld	(hl), c
;./bluebakas.c:921: Energy -= REPAIR_COST;
	ld	hl, (_Energy)
	ld	a, l
	add	a, #0xec
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	(_Energy), hl
;./bluebakas.c:922: g_hasHUDChanged = TRUE;
	ld	hl, #_g_hasHUDChanged
	ld	(hl), #0x01
;./bluebakas.c:924: g_ShowGoodHit = FALSE;
	xor	a, a
	ld	(#_g_ShowGoodHit), a
;./bluebakas.c:925: DrawHUD();
	call	_DrawHUD
;./bluebakas.c:926: Print_DrawTextAt(23, 22, " BUILDING");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x17
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_1
;./bluebakas.c:926: Print_DrawTextAt(23, 22, " BUILDING");
;./bluebakas.c:927: }
	jp	_Print_DrawText
___str_1:
	.ascii " BUILDING"
	.db 0x00
;./bluebakas.c:929: void UpdateRepairRobot()
;	---------------------------------
; Function UpdateRepairRobot
; ---------------------------------
_UpdateRepairRobot::
;./bluebakas.c:934: row8 = Keyboard_Read(8);
	ld	l, #0x08
	call	_Keyboard_Read
	ld	c, l
;./bluebakas.c:936: spacePushed = IS_KEY_PUSHED(row8, g_KeyRow8Prev, KEY_SPACE);
	bit	0, c
	jr	nz, 00118$
	ld	hl, #_g_KeyRow8Prev
	bit	0, (hl)
	jr	nz, 00119$
00118$:
	xor	a, a
	jp	00120$
00119$:
	ld	a, #0x01
00120$:
;./bluebakas.c:938: if(spacePushed)
	or	a, a
	jr	z, 00102$
;./bluebakas.c:940: RepairRobotTile();
	push	bc
	call	_RepairRobotTile
	pop	bc
00102$:
;./bluebakas.c:944: if(g_RobotMoveDelay > 0)
	ld	a, (_g_RobotMoveDelay+0)
	or	a, a
	jr	z, 00104$
;./bluebakas.c:946: g_RobotMoveDelay--;
	ld	hl, #_g_RobotMoveDelay
	dec	(hl)
;./bluebakas.c:947: g_KeyRow8Prev = row8;
	ld	hl, #_g_KeyRow8Prev
	ld	(hl), c
;./bluebakas.c:948: return;
	ret
00104$:
;./bluebakas.c:951: if(IS_KEY_PRESSED(row8, KEY_LEFT))
	bit	4, c
	jr	nz, 00114$
;./bluebakas.c:953: MoveRepairRobot(-1, 0);
	push	bc
	ld	l, #0x00
	ld	a, #0xff
	call	_MoveRepairRobot
	pop	bc
;./bluebakas.c:954: g_RobotMoveDelay = 5;
	ld	hl, #_g_RobotMoveDelay
	ld	(hl), #0x05
	jp	00115$
00114$:
;./bluebakas.c:956: else if(IS_KEY_PRESSED(row8, KEY_RIGHT))
	bit	7, c
	jr	nz, 00111$
;./bluebakas.c:958: MoveRepairRobot(1, 0);
	push	bc
	ld	l, #0x00
	ld	a, #0x01
	call	_MoveRepairRobot
	pop	bc
;./bluebakas.c:959: g_RobotMoveDelay = 5;
	ld	hl, #_g_RobotMoveDelay
	ld	(hl), #0x05
	jp	00115$
00111$:
;./bluebakas.c:961: else if(IS_KEY_PRESSED(row8, KEY_UP))
	bit	5, c
	jr	nz, 00108$
;./bluebakas.c:963: MoveRepairRobot(0, -1);
	push	bc
	ld	l, #0xff
	xor	a, a
	call	_MoveRepairRobot
	pop	bc
;./bluebakas.c:964: g_RobotMoveDelay = 5;
	ld	hl, #_g_RobotMoveDelay
	ld	(hl), #0x05
	jp	00115$
00108$:
;./bluebakas.c:966: else if(IS_KEY_PRESSED(row8, KEY_DOWN))
	bit	6, c
	jr	nz, 00115$
;./bluebakas.c:968: MoveRepairRobot(0, 1);
	push	bc
	ld	l, #0x01
	xor	a, a
	call	_MoveRepairRobot
	pop	bc
;./bluebakas.c:969: g_RobotMoveDelay = 5;
	ld	hl, #_g_RobotMoveDelay
	ld	(hl), #0x05
00115$:
;./bluebakas.c:972: g_KeyRow8Prev = row8;
	ld	hl, #_g_KeyRow8Prev
	ld	(hl), c
;./bluebakas.c:973: }
	ret
;./bluebakas.c:979: bool HasLaserOnScreen()
;	---------------------------------
; Function HasLaserOnScreen
; ---------------------------------
_HasLaserOnScreen::
;./bluebakas.c:983: for(index = 0; index < PLAYFIELD_SIZE; index++)
	ld	bc, #0x0000
00106$:
;./bluebakas.c:985: if(g_RamMap[index] == TILE_LASER1)
	ld	hl, #_g_RamMap
	add	hl, bc
	ld	a, (hl)
	cp	a, #0x18
	jr	nz, 00102$
;./bluebakas.c:986: return TRUE;
	ld	a, #0x01
	ret
00102$:
;./bluebakas.c:988: if(g_RamMap[index] == TILE_LASER2)
	cp	a, #0x11
	jr	nz, 00107$
;./bluebakas.c:989: return TRUE;
	ld	a, #0x01
	ret
00107$:
;./bluebakas.c:983: for(index = 0; index < PLAYFIELD_SIZE; index++)
	inc	bc
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0xc0
	ld	a, d
	sbc	a, #0x02
	jr	c, 00106$
;./bluebakas.c:992: return FALSE;
	xor	a, a
;./bluebakas.c:993: }
	ret
;./bluebakas.c:995: bool CanFireLaser(u8 cannonX, u8 cannonY)
;	---------------------------------
; Function CanFireLaser
; ---------------------------------
_CanFireLaser::
;./bluebakas.c:998: if(GetMapTile(cannonX, cannonY) != TILE_CANNON)
	call	_GetMapTile
	cp	a, #0x08
	jr	z, 00102$
;./bluebakas.c:999: return FALSE;
	xor	a, a
	ret
00102$:
;./bluebakas.c:1002: if(Energy < 50)
	ld	hl, (_Energy)
	ld	de, #0x0032
	cp	a, a
	sbc	hl, de
	jr	nc, 00104$
;./bluebakas.c:1003: return FALSE;
	xor	a, a
	ret
00104$:
;./bluebakas.c:1006: if(g_LaserActive)
	ld	a, (_g_LaserActive+0)
	or	a, a
	jr	z, 00106$
;./bluebakas.c:1007: return FALSE;
	xor	a, a
	ret
00106$:
;./bluebakas.c:1009: return TRUE;
	ld	a, #0x01
;./bluebakas.c:1010: }
	ret
;./bluebakas.c:1012: bool LaserHitsFuelAtTile(u8 tx, u8 ty)
;	---------------------------------
; Function LaserHitsFuelAtTile
; ---------------------------------
_LaserHitsFuelAtTile::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
	ld	c, a
	ld	e, l
;./bluebakas.c:1024: if(!g_FuelActive)
	ld	a, (_g_FuelActive+0)
;./bluebakas.c:1025: return FALSE;
	or	a,a
	jp	z, 00111$
;./bluebakas.c:1027: laserLeft = ((i16)tx) << 3;
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	(sp), hl
;./bluebakas.c:1028: laserTop = ((i16)ty) << 3;
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
;./bluebakas.c:1029: laserRight = laserLeft + 7;
	pop	bc
	push	bc
	ld	hl, #0x0007
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;./bluebakas.c:1030: laserBottom = laserTop + 7;
	ld	c, e
	ld	b, d
	ld	hl, #0x0007
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
;./bluebakas.c:1032: fuelLeft = g_FuelXFix >> FIX_SHIFT;
	ld	hl, (_g_FuelXFix)
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
;./bluebakas.c:1033: fuelTop = g_FuelYFix >> FIX_SHIFT;
	ld	a, (_g_FuelYFix+0)
	ld	-6 (ix), a
	ld	a, (_g_FuelYFix+1)
	ld	-5 (ix), a
	sra	-5 (ix)
	rr	-6 (ix)
	sra	-5 (ix)
	rr	-6 (ix)
	sra	-5 (ix)
	rr	-6 (ix)
	sra	-5 (ix)
	rr	-6 (ix)
;./bluebakas.c:1034: fuelRight = fuelLeft + 7;
	ld	a, l
	ld	c, h
	add	a, #0x07
	ld	b, a
	ld	a, c
	adc	a, #0x00
	ld	-4 (ix), b
	ld	-3 (ix), a
;./bluebakas.c:1035: fuelBottom = fuelTop + 7;
	ld	a, -6 (ix)
	ld	c, -5 (ix)
	add	a, #0x07
	ld	b, a
	ld	a, c
	adc	a, #0x00
	ld	-2 (ix), b
	ld	-1 (ix), a
;./bluebakas.c:1037: if(fuelRight < laserLeft)
	ld	a, -4 (ix)
	sub	a, -12 (ix)
	ld	a, -3 (ix)
	sbc	a, -11 (ix)
	jp	po, 00153$
	xor	a, #0x80
00153$:
	jp	p, 00104$
;./bluebakas.c:1038: return FALSE;
	xor	a, a
	jp	00111$
00104$:
;./bluebakas.c:1040: if(fuelLeft > laserRight)
	ld	a, -10 (ix)
	sub	a, l
	ld	a, -9 (ix)
	sbc	a, h
	jp	po, 00154$
	xor	a, #0x80
00154$:
	jp	p, 00106$
;./bluebakas.c:1041: return FALSE;
	xor	a, a
	jp	00111$
00106$:
;./bluebakas.c:1043: if(fuelBottom < laserTop)
	ld	a, -2 (ix)
	sub	a, e
	ld	a, -1 (ix)
	sbc	a, d
	jp	po, 00155$
	xor	a, #0x80
00155$:
	jp	p, 00108$
;./bluebakas.c:1044: return FALSE;
	xor	a, a
	jp	00111$
00108$:
;./bluebakas.c:1046: if(fuelTop > laserBottom)
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	a, -7 (ix)
	sbc	a, -5 (ix)
	jp	po, 00156$
	xor	a, #0x80
00156$:
	jp	p, 00110$
;./bluebakas.c:1047: return FALSE;
	xor	a, a
	jp	00111$
00110$:
;./bluebakas.c:1049: StartExplosion(fuelLeft, fuelTop);
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	call	_StartExplosion
;./bluebakas.c:1051: DespawnFuel();
	call	_DespawnFuel
;./bluebakas.c:1053: return TRUE;
	ld	a, #0x01
00111$:
;./bluebakas.c:1054: }
	ld	sp, ix
	pop	ix
	ret
;./bluebakas.c:1056: bool LaserHitsMeanieAtTile(u8 tx, u8 ty)
;	---------------------------------
; Function LaserHitsMeanieAtTile
; ---------------------------------
_LaserHitsMeanieAtTile::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-18
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), a
	ld	-3 (ix), l
;./bluebakas.c:1072: hit = FALSE;
	ld	-18 (ix), #0x00
;./bluebakas.c:1074: laserLeft = ((i16)tx) << 3;
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	ld	-17 (ix), a
	ld	-16 (ix), #0x00
	ld	b, #0x03
00174$:
	sla	-17 (ix)
	rl	-16 (ix)
	djnz	00174$
;./bluebakas.c:1075: laserTop = ((i16)ty) << 3;
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	a, -5 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	b, #0x03
00175$:
	sla	-15 (ix)
	rl	-14 (ix)
	djnz	00175$
;./bluebakas.c:1076: laserRight = laserLeft + 7;
	ld	a, -17 (ix)
	ld	-7 (ix), a
	ld	a, -16 (ix)
	ld	-6 (ix), a
	ld	de, #0x0007
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, -5 (ix)
	ld	-13 (ix), a
	ld	a, -4 (ix)
	ld	-12 (ix), a
;./bluebakas.c:1077: laserBottom = laserTop + 7;
	ld	a, -15 (ix)
	ld	-7 (ix), a
	ld	a, -14 (ix)
	ld	-6 (ix), a
	ld	de, #0x0007
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	add	hl, de
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	a, -5 (ix)
	ld	-11 (ix), a
	ld	a, -4 (ix)
	ld	-10 (ix), a
;./bluebakas.c:1079: for(i = 0; i < MEANIE_COUNT; i++)
	ld	-1 (ix), #0x00
00114$:
;./bluebakas.c:1081: if(!g_Meanies[i].Active)
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	-5 (ix), l
	ld	-4 (ix), h
	ld	de, #_g_Meanies
	ld	l, -5 (ix)
	ld	h, #0x00
	add	hl, de
	ld	-9 (ix), l
	ld	-8 (ix), h
	ld	a, -9 (ix)
	add	a, #0x17
	ld	c, a
	ld	a, -8 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	or	a, a
	jp	z, 00111$
;./bluebakas.c:1084: meanieLeft = g_Meanies[i].XFix >> FIX_SHIFT;
	ld	l, -9 (ix)
	ld	h, -8 (ix)
	ld	de, #0x001a
	add	hl, de
	ld	a, (hl)
	dec	hl
	ld	l, (hl)
	ld	-7 (ix), l
	ld	-6 (ix), a
	sra	-6 (ix)
	rr	-7 (ix)
	sra	-6 (ix)
	rr	-7 (ix)
	sra	-6 (ix)
	rr	-7 (ix)
	sra	-6 (ix)
	rr	-7 (ix)
;./bluebakas.c:1085: meanieTop = g_Meanies[i].YFix >> FIX_SHIFT;
	ld	e, -9 (ix)
	ld	d, -8 (ix)
	ld	hl, #27
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
;./bluebakas.c:1086: meanieRight = meanieLeft + 7;
	ld	a, -7 (ix)
	ld	h, -6 (ix)
	add	a, #0x07
	ld	l, a
	jr	nc, 00176$
	inc	h
00176$:
	ld	-5 (ix), l
	ld	-4 (ix), h
;./bluebakas.c:1087: meanieBottom = meanieTop + 7;
	ld	a, e
	ld	h, d
	add	a, #0x07
	ld	l, a
	jr	nc, 00177$
	inc	h
00177$:
;./bluebakas.c:1089: if(meanieRight < laserLeft)
	ld	a, -5 (ix)
	sub	a, -17 (ix)
	ld	a, -4 (ix)
	sbc	a, -16 (ix)
	jp	po, 00178$
	xor	a, #0x80
00178$:
	jp	m, 00111$
;./bluebakas.c:1092: if(meanieLeft > laserRight)
	ld	a, -13 (ix)
	sub	a, -7 (ix)
	ld	a, -12 (ix)
	sbc	a, -6 (ix)
	jp	po, 00179$
	xor	a, #0x80
00179$:
	jp	m, 00111$
;./bluebakas.c:1095: if(meanieBottom < laserTop)
	ld	a, l
	sub	a, -15 (ix)
	ld	a, h
	sbc	a, -14 (ix)
	jp	po, 00180$
	xor	a, #0x80
00180$:
	jp	m, 00111$
;./bluebakas.c:1098: if(meanieTop > laserBottom)
	ld	a, -11 (ix)
	sub	a, e
	ld	a, -10 (ix)
	sbc	a, d
	jp	po, 00181$
	xor	a, #0x80
00181$:
	jp	m, 00111$
;./bluebakas.c:1101: StartExplosion(meanieLeft, meanieTop);
	push	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	call	_StartExplosion
	pop	bc
;./bluebakas.c:1103: Pawn_Disable(&g_Meanies[i].PawnObj);
	ld	l, -9 (ix)
	ld	h, -8 (ix)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_Pawn_SetEnable
	pop	bc
;./bluebakas.c:1104: g_Meanies[i].Active = FALSE;
	xor	a, a
	ld	(bc), a
;./bluebakas.c:1106: hit = TRUE;
	ld	-18 (ix), #0x01
00111$:
;./bluebakas.c:1079: for(i = 0; i < MEANIE_COUNT; i++)
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x02
	jp	c, 00114$
;./bluebakas.c:1109: return hit;
	ld	a, -18 (ix)
;./bluebakas.c:1110: }
	ld	sp, ix
	pop	ix
	ret
;./bluebakas.c:1112: void StartLaser(u8 row, bool fromLeft)
;	---------------------------------
; Function StartLaser
; ---------------------------------
_StartLaser::
	ld	c, a
	ld	a, l
;./bluebakas.c:1114: if(fromLeft)
	or	a, a
	jr	z, 00106$
;./bluebakas.c:1116: if(!CanFireLaser(LASER_LEFT_CANNON_X, row))
	push	bc
	ld	l, c
	ld	a, #0x03
	call	_CanFireLaser
	pop	bc
	or	a, a
;./bluebakas.c:1117: return;
	ret	z
;./bluebakas.c:1119: g_LaserTileX = LASER_COL_MIN;
	ld	hl, #_g_LaserTileX
	ld	(hl), #0x04
;./bluebakas.c:1120: g_LaserTileY = row;
	ld	hl, #_g_LaserTileY
	ld	(hl), c
;./bluebakas.c:1121: g_LaserTile = TILE_LASER1;
	ld	hl, #_g_LaserTile
	ld	(hl), #0x18
;./bluebakas.c:1122: g_LaserDir = 1;
	ld	hl, #_g_LaserDir
	ld	(hl), #0x01
	jp	00107$
00106$:
;./bluebakas.c:1126: if(!CanFireLaser(LASER_RIGHT_CANNON_X, row))
	push	bc
	ld	l, c
	ld	a, #0x1c
	call	_CanFireLaser
	pop	bc
	or	a, a
;./bluebakas.c:1127: return;
	ret	z
;./bluebakas.c:1129: g_LaserTileX = LASER_COL_MAX;
	ld	hl, #_g_LaserTileX
	ld	(hl), #0x1b
;./bluebakas.c:1130: g_LaserTileY = row;
	ld	hl, #_g_LaserTileY
	ld	(hl), c
;./bluebakas.c:1131: g_LaserTile = TILE_LASER2;
	ld	hl, #_g_LaserTile
	ld	(hl), #0x11
;./bluebakas.c:1132: g_LaserDir = -1;
	ld	hl, #_g_LaserDir
	ld	(hl), #0xff
00107$:
;./bluebakas.c:1135: Energy -= 50;
	ld	hl, (_Energy)
	ld	a, l
	add	a, #0xce
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	(_Energy), hl
;./bluebakas.c:1136: g_hasHUDChanged = TRUE;
	ld	hl, #_g_hasHUDChanged
	ld	(hl), #0x01
;./bluebakas.c:1137: DrawHUD();
	call	_DrawHUD
;./bluebakas.c:1139: g_LaserStepDelay = LASER_STEP_DELAY;
	ld	hl, #_g_LaserStepDelay
	ld	(hl), #0x01
;./bluebakas.c:1140: g_LaserErasing = FALSE;
	xor	a, a
	ld	(#_g_LaserErasing), a
;./bluebakas.c:1141: g_LaserActive = TRUE;
	ld	hl, #_g_LaserActive
	ld	(hl), #0x01
;./bluebakas.c:1143: SetMapTile(g_LaserTileX, g_LaserTileY, g_LaserTile);
	ld	a, (_g_LaserTile)
	push	af
	inc	sp
	ld	a, (_g_LaserTileY)
	ld	l, a
	ld	a, (_g_LaserTileX)
	call	_SetMapTile
;./bluebakas.c:1144: PlaySFX(4, 1);
	ld	l, #0x01
	ld	a, #0x04
;./bluebakas.c:1145: }
	jp	_PlaySFX
;./bluebakas.c:1147: void UpdateActiveLaser()
;	---------------------------------
; Function UpdateActiveLaser
; ---------------------------------
_UpdateActiveLaser::
;./bluebakas.c:1149: if(!g_LaserActive)
	ld	a, (_g_LaserActive+0)
	or	a, a
;./bluebakas.c:1150: return;
	ret	z
;./bluebakas.c:1152: if(g_LaserStepDelay > 0)
	ld	a, (_g_LaserStepDelay+0)
	or	a, a
	jr	z, 00104$
;./bluebakas.c:1154: g_LaserStepDelay--;
	ld	hl, #_g_LaserStepDelay
	dec	(hl)
;./bluebakas.c:1155: return;
	ret
00104$:
;./bluebakas.c:1158: if(!g_LaserErasing)
	ld	a, (_g_LaserErasing+0)
	or	a, a
	jp	nz, 00141$
;./bluebakas.c:1164: hitMeanie = LaserHitsMeanieAtTile(g_LaserTileX, g_LaserTileY);
	ld	a, (_g_LaserTileY)
	ld	l, a
	ld	a, (_g_LaserTileX)
	call	_LaserHitsMeanieAtTile
	ld	c, a
;./bluebakas.c:1165: hitFuel = LaserHitsFuelAtTile(g_LaserTileX, g_LaserTileY);
	push	bc
	ld	a, (_g_LaserTileY)
	ld	l, a
	ld	a, (_g_LaserTileX)
	call	_LaserHitsFuelAtTile
	pop	bc
;./bluebakas.c:1167: if(hitMeanie || hitFuel)
	inc	c
	dec	c
	jr	nz, 00119$
	or	a, a
	jp	z, 00120$
00119$:
;./bluebakas.c:1169: if(hitMeanie)
	ld	a, c
	or	a, a
	jr	z, 00112$
;./bluebakas.c:1171: g_ShowGoodHit = TRUE;
	ld	hl, #_g_ShowGoodHit
	ld	(hl), #0x01
;./bluebakas.c:1173: if(Score <= 190)
	ld	a, #0xbe
	ld	hl, #_Score
	sub	a, (hl)
	jr	c, 00106$
;./bluebakas.c:1174: Score += 10;
	ld	a, (_Score+0)
	add	a, #0x0a
	ld	(#_Score), a
	jp	00113$
00106$:
;./bluebakas.c:1176: Score = 200;
	ld	hl, #_Score
	ld	(hl), #0xc8
	jp	00113$
00112$:
;./bluebakas.c:1180: g_ShowGoodHit = FALSE;
	xor	a, a
	ld	(#_g_ShowGoodHit), a
;./bluebakas.c:1182: if(Score >= 80)
	ld	a, (_Score+0)
	sub	a, #0x50
	jr	c, 00109$
;./bluebakas.c:1183: Score -= 80;
	ld	a, (_Score)
	add	a, #0xb0
	ld	(#_Score), a
	jp	00113$
00109$:
;./bluebakas.c:1185: Score = 0;
	xor	a, a
	ld	(#_Score), a
00113$:
;./bluebakas.c:1188: g_hasHUDChanged = TRUE;
	ld	hl, #_g_hasHUDChanged
	ld	(hl), #0x01
;./bluebakas.c:1190: PlaySFX(5, 0);
	ld	l, #0x00
	ld	a, #0x05
	call	_PlaySFX
;./bluebakas.c:1192: if(Score >= 200)
	ld	a, (_Score+0)
	sub	a, #0xc8
;./bluebakas.c:1194: ShowMeanerScreen();
;./bluebakas.c:1195: return;
	jp	nc, _ShowMeanerScreen
;./bluebakas.c:1198: SetMapTile(g_LaserTileX, g_LaserTileY, TILE_EMPTY);
	xor	a, a
	push	af
	inc	sp
	ld	a, (_g_LaserTileY)
	ld	l, a
	ld	a, (_g_LaserTileX)
	call	_SetMapTile
;./bluebakas.c:1200: g_LaserErasing = TRUE;
	ld	hl, #_g_LaserErasing
	ld	(hl), #0x01
;./bluebakas.c:1202: if(g_LaserDir > 0)
	xor	a, a
	ld	hl, #_g_LaserDir
	sub	a, (hl)
	jp	po, 00265$
	xor	a, #0x80
00265$:
	jp	p, 00117$
;./bluebakas.c:1203: g_LaserTileX = LASER_COL_MIN;
	ld	hl, #_g_LaserTileX
	ld	(hl), #0x04
	ret
00117$:
;./bluebakas.c:1205: g_LaserTileX = LASER_COL_MAX;
	ld	hl, #_g_LaserTileX
	ld	(hl), #0x1b
;./bluebakas.c:1207: return;
	ret
00120$:
;./bluebakas.c:1212: SetMapTile(g_LaserTileX, g_LaserTileY, g_LaserTile);
	ld	a, (_g_LaserTile)
	push	af
	inc	sp
	ld	a, (_g_LaserTileY)
	ld	l, a
	ld	a, (_g_LaserTileX)
	call	_SetMapTile
;./bluebakas.c:1215: if(g_LaserDir > 0)
	xor	a, a
	ld	hl, #_g_LaserDir
	sub	a, (hl)
	jp	po, 00266$
	xor	a, #0x80
00266$:
	jp	p, 00129$
;./bluebakas.c:1217: if(g_LaserTileX >= LASER_COL_MAX)
	ld	a, (_g_LaserTileX+0)
	sub	a, #0x1b
	jr	c, 00123$
;./bluebakas.c:1219: g_LaserErasing = TRUE;
	ld	hl, #_g_LaserErasing
	ld	(hl), #0x01
;./bluebakas.c:1220: g_LaserTileX = LASER_COL_MIN;
	ld	hl, #_g_LaserTileX
	ld	(hl), #0x04
	jp	00142$
00123$:
;./bluebakas.c:1224: g_LaserTileX++;
	ld	hl, #_g_LaserTileX
	inc	(hl)
	jp	00142$
00129$:
;./bluebakas.c:1229: if(g_LaserTileX <= LASER_COL_MIN)
	ld	a, #0x04
	ld	hl, #_g_LaserTileX
	sub	a, (hl)
	jr	c, 00126$
;./bluebakas.c:1231: g_LaserErasing = TRUE;
	ld	hl, #_g_LaserErasing
	ld	(hl), #0x01
;./bluebakas.c:1232: g_LaserTileX = LASER_COL_MAX;
	ld	hl, #_g_LaserTileX
	ld	(hl), #0x1b
	jp	00142$
00126$:
;./bluebakas.c:1236: g_LaserTileX--;
	ld	hl, #_g_LaserTileX
	dec	(hl)
	jp	00142$
00141$:
;./bluebakas.c:1243: SetMapTile(g_LaserTileX, g_LaserTileY, TILE_EMPTY);
	xor	a, a
	push	af
	inc	sp
	ld	a, (_g_LaserTileY)
	ld	l, a
	ld	a, (_g_LaserTileX)
	call	_SetMapTile
;./bluebakas.c:1245: if(g_LaserDir > 0)
	xor	a, a
	ld	hl, #_g_LaserDir
	sub	a, (hl)
	jp	po, 00267$
	xor	a, #0x80
00267$:
	jp	p, 00138$
;./bluebakas.c:1247: if(g_LaserTileX >= LASER_COL_MAX)
	ld	a, (_g_LaserTileX+0)
	sub	a, #0x1b
	jr	c, 00132$
;./bluebakas.c:1249: g_LaserActive = FALSE;
;./bluebakas.c:1250: g_LaserErasing = FALSE;
	xor	a, a
	ld	(#_g_LaserActive), a
	ld	(#_g_LaserErasing), a
;./bluebakas.c:1251: return;
	ret
00132$:
;./bluebakas.c:1255: g_LaserTileX++;
	ld	hl, #_g_LaserTileX
	inc	(hl)
	jp	00142$
00138$:
;./bluebakas.c:1260: if(g_LaserTileX <= LASER_COL_MIN)
	ld	a, #0x04
	ld	hl, #_g_LaserTileX
	sub	a, (hl)
	jr	c, 00135$
;./bluebakas.c:1262: g_LaserActive = FALSE;
;./bluebakas.c:1263: g_LaserErasing = FALSE;
	xor	a, a
	ld	(#_g_LaserActive), a
	ld	(#_g_LaserErasing), a
;./bluebakas.c:1264: return;
	ret
00135$:
;./bluebakas.c:1268: g_LaserTileX--;
	ld	hl, #_g_LaserTileX
	dec	(hl)
00142$:
;./bluebakas.c:1273: g_LaserStepDelay = LASER_STEP_DELAY;
	ld	hl, #_g_LaserStepDelay
	ld	(hl), #0x01
;./bluebakas.c:1274: }
	ret
;./bluebakas.c:1276: void UpdateLaser()
;	---------------------------------
; Function UpdateLaser
; ---------------------------------
_UpdateLaser::
;./bluebakas.c:1282: row2 = Keyboard_Read(2);
	ld	l, #0x02
	call	_Keyboard_Read
	ld	e, l
;./bluebakas.c:1283: row4 = Keyboard_Read(4);
	ld	l, #0x04
	call	_Keyboard_Read
	ld	b, l
;./bluebakas.c:1284: row5 = Keyboard_Read(5);
	ld	l, #0x05
	call	_Keyboard_Read
	ld	c, l
;./bluebakas.c:1286: UpdateActiveLaser();
	push	bc
	push	de
	call	_UpdateActiveLaser
	pop	de
	pop	bc
;./bluebakas.c:1288: if(!g_LaserActive)
	ld	a, (_g_LaserActive+0)
	or	a, a
	jp	nz, 00125$
;./bluebakas.c:1291: if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_Q))
	bit	6, b
	jr	nz, 00121$
	ld	hl, #_g_KeyRow4Prev
	bit	6, (hl)
	jr	z, 00121$
;./bluebakas.c:1293: StartLaser(LASER_ROW_TOP, TRUE);
	push	bc
	push	de
	ld	l, #0x01
	ld	a, #0x03
	call	_StartLaser
	pop	de
	pop	bc
	jp	00125$
00121$:
;./bluebakas.c:1295: else if(IS_KEY_PUSHED(row2, g_KeyRow2Prev, KEY_A))
	bit	6, e
	jr	nz, 00117$
	ld	hl, #_g_KeyRow2Prev
	bit	6, (hl)
	jr	z, 00117$
;./bluebakas.c:1297: StartLaser(LASER_ROW_MIDDLE, TRUE);
	push	bc
	push	de
	ld	l, #0x01
	ld	a, #0x07
	call	_StartLaser
	pop	de
	pop	bc
	jp	00125$
00117$:
;./bluebakas.c:1299: else if(IS_KEY_PUSHED(row5, g_KeyRow5Prev, KEY_Z))
	bit	7, c
	jr	nz, 00113$
	ld	hl, #_g_KeyRow5Prev
	bit	7, (hl)
	jr	z, 00113$
;./bluebakas.c:1301: StartLaser(LASER_ROW_BOTTOM, TRUE);
	push	bc
	push	de
	ld	l, #0x01
	ld	a, #0x0b
	call	_StartLaser
	pop	de
	pop	bc
	jp	00125$
00113$:
;./bluebakas.c:1305: else if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_O))
	bit	4, b
	jr	nz, 00109$
	ld	hl, #_g_KeyRow4Prev
	bit	4, (hl)
	jr	z, 00109$
;./bluebakas.c:1307: StartLaser(LASER_ROW_TOP, FALSE);
	push	bc
	push	de
	ld	l, #0x00
	ld	a, #0x03
	call	_StartLaser
	pop	de
	pop	bc
	jp	00125$
00109$:
;./bluebakas.c:1309: else if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_K))
	bit	0, b
	jr	nz, 00105$
	ld	hl, #_g_KeyRow4Prev
	bit	0, (hl)
	jr	z, 00105$
;./bluebakas.c:1311: StartLaser(LASER_ROW_MIDDLE, FALSE);
	push	bc
	push	de
	ld	l, #0x00
	ld	a, #0x07
	call	_StartLaser
	pop	de
	pop	bc
	jp	00125$
00105$:
;./bluebakas.c:1313: else if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_M))
	bit	2, b
	jr	nz, 00125$
	ld	hl, #_g_KeyRow4Prev
	bit	2, (hl)
	jr	z, 00125$
;./bluebakas.c:1315: StartLaser(LASER_ROW_BOTTOM, FALSE);
	push	bc
	push	de
	ld	l, #0x00
	ld	a, #0x0b
	call	_StartLaser
	pop	de
	pop	bc
00125$:
;./bluebakas.c:1319: g_KeyRow2Prev = row2;
	ld	hl, #_g_KeyRow2Prev
	ld	(hl), e
;./bluebakas.c:1320: g_KeyRow4Prev = row4;
	ld	hl, #_g_KeyRow4Prev
	ld	(hl), b
;./bluebakas.c:1321: g_KeyRow5Prev = row5;
	ld	hl, #_g_KeyRow5Prev
	ld	(hl), c
;./bluebakas.c:1322: }
	ret
;./bluebakas.c:1328: u16 Rand16()
;	---------------------------------
; Function Rand16
; ---------------------------------
_Rand16::
;./bluebakas.c:1334: bit = ((g_Rand >> 0) ^ (g_Rand >> 2) ^ (g_Rand >> 3) ^ (g_Rand >> 5)) & 1;
	ld	bc, (_g_Rand)
	ld	hl, (_g_Rand)
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, c
	xor	a, l
	ld	c, a
	ld	hl, (_g_Rand)
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, c
	xor	a, l
	ld	c, a
	ld	hl, (_g_Rand)
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	a, c
	xor	a, l
	and	a, #0x01
;./bluebakas.c:1335: g_Rand = (g_Rand >> 1) | (bit << 15);
	ld	hl, (_g_Rand)
	srl	h
	rr	l
	rrca
	and	a, #0x80
	ld	c, a
	ld	a, l
	ld	(#_g_Rand), a
	ld	a, c
	or	a, h
	ld	(_g_Rand+1), a
;./bluebakas.c:1337: return g_Rand;
	ld	de, (_g_Rand)
;./bluebakas.c:1338: }
	ret
;./bluebakas.c:1340: u8 Rand8()
;	---------------------------------
; Function Rand8
; ---------------------------------
_Rand8::
;./bluebakas.c:1342: return (u8)(Rand16() >> 8);
	call	_Rand16
	ld	a, d
;./bluebakas.c:1343: }
	ret
;./bluebakas.c:1345: u8 RandRange(u8 min, u8 max)
;	---------------------------------
; Function RandRange
; ---------------------------------
_RandRange::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
	ld	-1 (ix), a
	ld	c, l
;./bluebakas.c:1350: r = Rand16();
	push	bc
	call	_Rand16
	ex	de, hl
	pop	bc
;./bluebakas.c:1351: range = (u16)max - (u16)min + 1;
	ld	e, -1 (ix)
	ld	a, c
	sub	a, e
	ld	e, a
	sbc	a, a
	ld	d, a
	inc	de
;./bluebakas.c:1353: return min + (u8)(r % range);
	call	__moduint
	ld	a, e
	add	a, -1 (ix)
;./bluebakas.c:1354: }
	inc	sp
	pop	ix
	ret
;./bluebakas.c:1356: void PickMeanieSideMove(Meanie* meanie)
;	---------------------------------
; Function PickMeanieSideMove
; ---------------------------------
_PickMeanieSideMove::
;./bluebakas.c:1360: choice = RandRange(0, 2);
	push	hl
	ld	l, #0x02
	xor	a, a
	call	_RandRange
	pop	bc
	ld	e, a
;./bluebakas.c:1362: if(choice == 0)
	or	a, a
	jr	nz, 00105$
;./bluebakas.c:1363: distance = 8;
	ld	e, #0x08
	jp	00106$
00105$:
;./bluebakas.c:1364: else if(choice == 1)
	dec	e
;./bluebakas.c:1365: distance = 16;
;./bluebakas.c:1367: distance = 32;
	ld	e, #0x10
	jr	z, 00106$
	ld	e, #0x20
00106$:
;./bluebakas.c:1369: meanie->MoveLeftFix = ((u16)distance) << FIX_SHIFT;
	ld	hl, #0x0021
	add	hl, bc
	ld	d, #0x00
	ex	de, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de, hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;./bluebakas.c:1373: if(Rand8() & 0x80)
	push	bc
	call	_Rand8
	ld	e, a
	pop	bc
;./bluebakas.c:1374: meanie->VXFix = MEANIE_HSPEED_FIX;
	ld	hl, #0x001d
	add	hl, bc
;./bluebakas.c:1373: if(Rand8() & 0x80)
	bit	7, e
	jr	z, 00108$
;./bluebakas.c:1374: meanie->VXFix = MEANIE_HSPEED_FIX;
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
	ret
00108$:
;./bluebakas.c:1376: meanie->VXFix = -MEANIE_HSPEED_FIX;
	ld	(hl), #0xf0
	inc	hl
	ld	(hl), #0xff
;./bluebakas.c:1377: }
	ret
;./bluebakas.c:1379: void SpawnMeanie(Meanie* meanie)
;	---------------------------------
; Function SpawnMeanie
; ---------------------------------
_SpawnMeanie::
;./bluebakas.c:1385: x = RandRange(MEANIE_SPAWN_MIN_X, MEANIE_SPAWN_MAX_X);
	push	hl
	ld	l, #0xc8
	ld	a, #0x28
	call	_RandRange
	ld	b, a
	pop	de
;./bluebakas.c:1388: meanie->XFix = ((i16)x) << FIX_SHIFT;
	ld	hl, #0x0019
	add	hl, de
	ld	c, b
	xor	a, a
	sla	c
	adc	a, a
	sla	c
	adc	a, a
	sla	c
	adc	a, a
	sla	c
	adc	a, a
	ld	(hl), c
	inc	hl
	ld	(hl), a
;./bluebakas.c:1389: meanie->YFix = ((i16)MEANIE_SPAWN_Y) << FIX_SHIFT;
	ld	hl, #0x001b
	add	hl, de
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;./bluebakas.c:1392: meanie->VYFix = MEANIE_VSPEED_FIX;
	ld	hl, #0x001f
	add	hl, de
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;./bluebakas.c:1395: PickMeanieSideMove(meanie);
	push	bc
	ex	de, hl
	push	hl
	call	_PickMeanieSideMove
	pop	de
	pop	bc
;./bluebakas.c:1397: Pawn_SetPosition(&meanie->PawnObj, x, MEANIE_SPAWN_Y);
	ld	l, e
	ld	h, d
	push	hl
	push	de
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_Pawn_SetPosition
	pop	de
	pop	hl
;./bluebakas.c:1398: Pawn_Enable(&meanie->PawnObj);
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:437: inline void Pawn_Enable(Pawn* pawn) { Pawn_SetEnable(pawn, TRUE); }
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	call	_Pawn_SetEnable
	pop	de
;./bluebakas.c:1400: meanie->Tick = Rand8();
	ld	hl, #0x0018
	add	hl, de
	push	hl
	push	de
	call	_Rand8
	pop	de
	pop	hl
	ld	(hl), a
;./bluebakas.c:1401: meanie->Active = TRUE;
	ld	hl, #0x0017
	add	hl, de
	ld	(hl), #0x01
;./bluebakas.c:1402: }
	ret
;./bluebakas.c:1404: void TrySpawnMeanie()
;	---------------------------------
; Function TrySpawnMeanie
; ---------------------------------
_TrySpawnMeanie::
;./bluebakas.c:1410: if((Rand8() & 0xF8) != 0)
	call	_Rand8
;./bluebakas.c:1411: return;
;./bluebakas.c:1414: for(i = 0; i < MEANIE_COUNT; i++)
	and	a, #0xf8
	ret	nz
	ld	c, a
00106$:
;./bluebakas.c:1416: if(!g_Meanies[i].Active)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Meanies
	add	hl, de
	ex	de, hl
	push	de
	pop	iy
	ld	a, 23 (iy)
	or	a, a
	jr	nz, 00107$
;./bluebakas.c:1418: SpawnMeanie(&g_Meanies[i]);
	ex	de, hl
;./bluebakas.c:1419: return;
	jp	_SpawnMeanie
00107$:
;./bluebakas.c:1414: for(i = 0; i < MEANIE_COUNT; i++)
	inc	c
	ld	a, c
	sub	a, #0x02
	jr	c, 00106$
;./bluebakas.c:1422: }
	ret
;./bluebakas.c:1424: bool CheckMeaniePoint(i16 px, i16 py, u8* hitTx, u8* hitTy)
;	---------------------------------
; Function CheckMeaniePoint
; ---------------------------------
_CheckMeaniePoint::
	push	ix
	ld	ix,	#0
	add	ix, sp
;./bluebakas.c:1430: if(px < 0 || py < 0)
	ld	b, h
	bit	7, b
	jr	nz, 00101$
	ld	b, d
	bit	7, b
	jr	z, 00102$
00101$:
;./bluebakas.c:1431: return FALSE;
	xor	a, a
	jp	00109$
00102$:
;./bluebakas.c:1433: tx = (u8)(px >> 3);
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	b, l
;./bluebakas.c:1434: ty = (u8)(py >> 3);
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	c, e
;./bluebakas.c:1436: if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
	ld	a, b
	sub	a, #0x20
	jr	nc, 00104$
	ld	a, c
	sub	a, #0x16
	jr	c, 00105$
00104$:
;./bluebakas.c:1437: return FALSE;
	xor	a, a
	jp	00109$
00105$:
;./bluebakas.c:1439: tile = GetMapTile(tx, ty);
	push	bc
	ld	l, c
	ld	a, b
	call	_GetMapTile
;./bluebakas.c:1441: if(IsDestroyableTile(tile))
	call	_IsDestroyableTile
	pop	bc
	or	a, a
	jr	z, 00108$
;./bluebakas.c:1443: *hitTx = tx;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	(hl), b
;./bluebakas.c:1444: *hitTy = ty;
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	ld	(hl), c
;./bluebakas.c:1445: return TRUE;
	ld	a, #0x01
	jp	00109$
00108$:
;./bluebakas.c:1448: return FALSE;
	xor	a, a
00109$:
;./bluebakas.c:1449: }
	pop	ix
	pop	hl
	pop	bc
	pop	bc
	jp	(hl)
;./bluebakas.c:1451: bool CheckMeanieCrashAt(Meanie* meanie, i16 x, i16 y)
;	---------------------------------
; Function CheckMeanieCrashAt
; ---------------------------------
_CheckMeanieCrashAt::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	c, e
	ld	b, d
;./bluebakas.c:1459: CheckMeaniePoint(x + 1, y + 1, &tx, &ty) ||
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	e, l
	ld	d, h
	inc	de
	push	bc
	pop	iy
	inc	iy
	push	hl
	push	bc
	push	de
	push	iy
	push	hl
	ld	hl, #11
	add	hl, sp
	ex	(sp), hl
	push	hl
	ld	hl, #12
	add	hl, sp
	ex	(sp), hl
	push	iy
	pop	hl
	call	_CheckMeaniePoint
	pop	iy
	pop	de
	pop	bc
	pop	hl
	or	a, a
	jr	nz, 00101$
;./bluebakas.c:1460: CheckMeaniePoint(x + 7, y + 1, &tx, &ty) ||
	ld	a, c
	add	a, #0x07
	ld	c, a
	jr	nc, 00133$
	inc	b
00133$:
	push	hl
	push	bc
	push	iy
	push	hl
	ld	hl, #9
	add	hl, sp
	ex	(sp), hl
	push	hl
	ld	hl, #10
	add	hl, sp
	ex	(sp), hl
	ld	l, c
	ld	h, b
	call	_CheckMeaniePoint
	pop	iy
	pop	bc
	pop	hl
	or	a, a
	jr	nz, 00101$
;./bluebakas.c:1461: CheckMeaniePoint(x + 1, y + 7, &tx, &ty) ||
	ld	de, #0x0007
	add	hl, de
	push	bc
	ex	de, hl
	push	de
	push	af
	ld	hl, #7
	add	hl, sp
	pop	af
	push	hl
	dec	hl
	push	hl
	push	iy
	pop	hl
	call	_CheckMeaniePoint
	pop	de
	pop	bc
	or	a, a
	jr	nz, 00101$
;./bluebakas.c:1462: CheckMeaniePoint(x + 7, y + 7, &tx, &ty)
	ld	hl, #1
	add	hl, sp
	push	hl
	dec	hl
	push	hl
	ld	l, c
	ld	h, b
	call	_CheckMeaniePoint
	or	a, a
	jr	z, 00102$
00101$:
;./bluebakas.c:1465: DestroyMapTile(tx, ty);
	ld	l, -3 (ix)
	ld	a, -4 (ix)
	call	_DestroyMapTile
;./bluebakas.c:1467: Pawn_Disable(&meanie->PawnObj);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	xor	a, a
	push	af
	inc	sp
	call	_Pawn_SetEnable
;./bluebakas.c:1468: meanie->Active = FALSE;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x0017
	add	hl, de
	ld	(hl), #0x00
;./bluebakas.c:1470: return TRUE;
	ld	a, #0x01
	jp	00107$
00102$:
;./bluebakas.c:1473: return FALSE;
	xor	a, a
00107$:
;./bluebakas.c:1474: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	bc
	jp	(hl)
;./bluebakas.c:1476: void DestroyMapTile(u8 tx, u8 ty)
;	---------------------------------
; Function DestroyMapTile
; ---------------------------------
_DestroyMapTile::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	dec	sp
	ld	-1 (ix), a
;./bluebakas.c:1480: tile = GetMapTile(tx, ty);
	ld	-2 (ix), l
	ld	a, -1 (ix)
	call	_GetMapTile
;./bluebakas.c:1483: if(tile == TILE_REPAIR_ROBOT)
	ld	-3 (ix), a
	sub	a, #0x02
	jr	z, 00111$
;./bluebakas.c:1484: return;
;./bluebakas.c:1486: if(tile == TILE_CORE)
	ld	a, -3 (ix)
	sub	a, #0x10
	jr	nz, 00106$
;./bluebakas.c:1488: g_hasHUDChanged = TRUE;
	ld	hl, #_g_hasHUDChanged
	ld	(hl), #0x01
;./bluebakas.c:1489: g_ShowGoodHit = FALSE;
	xor	a, a
	ld	(#_g_ShowGoodHit), a
;./bluebakas.c:1491: DrawHUD();
	call	_DrawHUD
;./bluebakas.c:1492: Print_DrawTextAt(23, 22, "  OVERRUN");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x17
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_2
	call	_Print_DrawText
;./bluebakas.c:1494: g_GameOverToTitle = TRUE;
	ld	hl, #_g_GameOverToTitle
	ld	(hl), #0x01
;./bluebakas.c:1495: g_GameOverSoundDone = FALSE;
;./bluebakas.c:1498: g_FuelSoundWanted = FALSE;
	xor	a, a
	ld	(#_g_GameOverSoundDone), a
	ld	(#_g_FuelSoundWanted), a
;./bluebakas.c:1499: g_FuelSoundRestart = FALSE;
	xor	a, a
	ld	(#_g_FuelSoundRestart), a
;./bluebakas.c:1501: ayFX_Mute();
	call	_ayFX_Mute
;./bluebakas.c:1505: if(ayFX_PlayBank(7, 0) != AYFX_ERROR_NONE)
	ld	l, #0x00
	ld	a, #0x07
	call	_ayFX_PlayBank
	or	a, a
	jr	z, 00111$
;./bluebakas.c:1508: g_GameOverSoundDone = TRUE;
	ld	hl, #_g_GameOverSoundDone
	ld	(hl), #0x01
;./bluebakas.c:1511: return;
	jp	00111$
00106$:
;./bluebakas.c:1514: Energy -= 50;
	ld	hl, (_Energy)
	ld	a, l
	add	a, #0xce
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	(_Energy), hl
;./bluebakas.c:1515: Print_DrawTextAt(23, 22, " SHIP HIT");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x17
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_3
	call	_Print_DrawText
;./bluebakas.c:1516: g_ShowGoodHit = FALSE;
	xor	a, a
	ld	(#_g_ShowGoodHit), a
;./bluebakas.c:1517: DrawHUD();
	call	_DrawHUD
;./bluebakas.c:1519: SetMapTile(tx, ty, TILE_EMPTY);
	xor	a, a
	push	af
	inc	sp
	ld	l, -2 (ix)
	ld	a, -1 (ix)
	call	_SetMapTile
00111$:
;./bluebakas.c:1520: }
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii "  OVERRUN"
	.db 0x00
___str_3:
	.ascii " SHIP HIT"
	.db 0x00
;./bluebakas.c:1522: void UpdateOneMeanie(Meanie* meanie)
;	---------------------------------
; Function UpdateOneMeanie
; ---------------------------------
_UpdateOneMeanie::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-14
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), l
	ld	-1 (ix), h
;./bluebakas.c:1528: if(!meanie->Active)
	ld	de, #0x0017
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, de
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-3 (ix), a
	or	a, a
;./bluebakas.c:1529: return;
	jp	z, 00118$
;./bluebakas.c:1532: if(meanie->MoveLeftFix == 0)
	ld	de, #0x0021
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jr	nz, 00104$
;./bluebakas.c:1534: PickMeanieSideMove(meanie);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_PickMeanieSideMove
00104$:
;./bluebakas.c:1538: if(meanie->MoveLeftFix < MEANIE_HSPEED_FIX)
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
;./bluebakas.c:1540: if(meanie->VXFix < 0)
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x001d
	add	hl, de
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
;./bluebakas.c:1538: if(meanie->MoveLeftFix < MEANIE_HSPEED_FIX)
	ld	a, -10 (ix)
	sub	a, #0x10
	ld	a, -9 (ix)
	sbc	a, #0x00
	jr	nc, 00109$
;./bluebakas.c:1540: if(meanie->VXFix < 0)
;./bluebakas.c:1541: step = -(i16)meanie->MoveLeftFix;
;./bluebakas.c:1540: if(meanie->VXFix < 0)
	bit	7, -3 (ix)
	jr	z, 00106$
;./bluebakas.c:1541: step = -(i16)meanie->MoveLeftFix;
	xor	a, a
	sub	a, -6 (ix)
	ld	-4 (ix), a
	sbc	a, a
	sub	a, -5 (ix)
	ld	-3 (ix), a
	jp	00107$
00106$:
;./bluebakas.c:1543: step = (i16)meanie->MoveLeftFix;
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
00107$:
;./bluebakas.c:1545: meanie->MoveLeftFix = 0;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jp	00110$
00109$:
;./bluebakas.c:1549: step = meanie->VXFix;
;./bluebakas.c:1550: meanie->MoveLeftFix -= MEANIE_HSPEED_FIX;
	ld	a, -10 (ix)
	add	a, #0xf0
	ld	c, a
	ld	a, -9 (ix)
	adc	a, #0xff
	ld	b, a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00110$:
;./bluebakas.c:1554: meanie->XFix += step;
	ld	de, #0x0019
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, de
	ld	-12 (ix), l
	ld	-11 (ix), h
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	l, -12 (ix)
	ld	h, -11 (ix)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;./bluebakas.c:1555: meanie->YFix += meanie->VYFix;
	ld	de, #0x001b
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	de, #0x001f
	add	hl, de
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;./bluebakas.c:1557: x = meanie->XFix >> FIX_SHIFT;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	sra	-5 (ix)
	rr	-6 (ix)
	sra	-5 (ix)
	rr	-6 (ix)
	sra	-5 (ix)
	rr	-6 (ix)
	sra	-5 (ix)
	rr	-6 (ix)
;./bluebakas.c:1558: y = meanie->YFix >> FIX_SHIFT;
	sra	-3 (ix)
	rr	-4 (ix)
	sra	-3 (ix)
	rr	-4 (ix)
	sra	-3 (ix)
	rr	-4 (ix)
	sra	-3 (ix)
	rr	-4 (ix)
;./bluebakas.c:1562: if(CheckMeanieCrashAt(meanie, x, y))
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	call	_CheckMeanieCrashAt
	or	a, a
;./bluebakas.c:1563: return;
	jr	nz, 00118$
;./bluebakas.c:1566: if(x <= MEANIE_MIN_X || x >= MEANIE_MAX_X || y >= MEANIE_BOTTOM_Y)
	ld	c, -6 (ix)
	ld	b, -5 (ix)
;./bluebakas.c:1568: Pawn_Disable(&meanie->PawnObj);
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
;./bluebakas.c:1566: if(x <= MEANIE_MIN_X || x >= MEANIE_MAX_X || y >= MEANIE_BOTTOM_Y)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	po, 00176$
	xor	a, #0x80
00176$:
	jp	p, 00113$
	ld	a, c
	sub	a, #0xff
	ld	a, b
	sbc	a, #0x00
	jr	nc, 00113$
	ld	a, -4 (ix)
	ld	b, -3 (ix)
	sub	a, #0xc8
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	c, 00114$
00113$:
;./bluebakas.c:1568: Pawn_Disable(&meanie->PawnObj);
	ld	l, -8 (ix)
	ld	h, -7 (ix)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/game/pawn.h:430: inline void Pawn_Disable(Pawn* pawn) { Pawn_SetEnable(pawn, FALSE); }
	xor	a, a
	push	af
	inc	sp
	call	_Pawn_SetEnable
;./bluebakas.c:1569: meanie->Active = FALSE;
	pop	hl
	ld	(hl), #0x00
	push	hl
;./bluebakas.c:1570: return;
	jp	00118$
00114$:
;./bluebakas.c:1573: Pawn_SetPosition(&meanie->PawnObj, (u8)x, (u8)y);
	ld	a, -4 (ix)
	ld	-3 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	h, -3 (ix)
	ld	l, -4 (ix)
	push	hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	call	_Pawn_SetPosition
;./bluebakas.c:1575: Pawn_Update(&meanie->PawnObj);
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	call	_Pawn_Update
;./bluebakas.c:1576: Pawn_Draw(&meanie->PawnObj);
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	call	_Pawn_Draw
00118$:
;./bluebakas.c:1577: }
	ld	sp, ix
	pop	ix
	ret
;./bluebakas.c:1579: void UpdateMeanie()
;	---------------------------------
; Function UpdateMeanie
; ---------------------------------
_UpdateMeanie::
	push	ix
	ld	ix,	#0
	add	ix, sp
	dec	sp
;./bluebakas.c:1583: bool freeze = g_LaserActive || g_LaserErasing || g_GameOverToTitle;
	ld	a, (_g_LaserActive+0)
	or	a, a
	jr	nz, 00115$
	ld	a, (_g_LaserErasing+0)
	or	a, a
	jr	nz, 00115$
	ld	a, (_g_GameOverToTitle+0)
	or	a,a
	jr	z, 00116$
00115$:
	ld	a, #0x01
00116$:
	ld	-1 (ix), a
;./bluebakas.c:1585: if(!freeze)
	or	a, a
	jr	nz, 00135$
;./bluebakas.c:1586: TrySpawnMeanie();
	call	_TrySpawnMeanie
;./bluebakas.c:1588: for(i = 0; i < MEANIE_COUNT; i++)
00135$:
	ld	c, #0x00
00111$:
;./bluebakas.c:1590: if(!g_Meanies[i].Active)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_g_Meanies
	add	hl, de
	ex	de, hl
	push	de
	pop	iy
	ld	a, 23 (iy)
	or	a, a
	jr	z, 00109$
;./bluebakas.c:1593: if(freeze)
	ld	a, -1 (ix)
	or	a, a
	jr	z, 00106$
;./bluebakas.c:1595: Pawn_Draw(&g_Meanies[i].PawnObj);
	push	bc
	ex	de, hl
	call	_Pawn_Draw
	pop	bc
;./bluebakas.c:1596: continue;
	jp	00109$
00106$:
;./bluebakas.c:1599: UpdateOneMeanie(&g_Meanies[i]);
	push	bc
	ex	de, hl
	call	_UpdateOneMeanie
	pop	bc
;./bluebakas.c:1601: if(g_GameOverToTitle)
	ld	a, (_g_GameOverToTitle+0)
	or	a, a
;./bluebakas.c:1602: return;
	jr	nz, 00112$
00109$:
;./bluebakas.c:1588: for(i = 0; i < MEANIE_COUNT; i++)
	inc	c
	ld	a, c
	sub	a, #0x02
	jr	c, 00111$
00112$:
;./bluebakas.c:1604: }
	inc	sp
	pop	ix
	ret
;./bluebakas.c:1610: void ShowTitleScreen()
;	---------------------------------
; Function ShowTitleScreen
; ---------------------------------
_ShowTitleScreen::
	push	ix
	ld	ix,	#0
	add	ix, sp
	push	af
	push	af
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:1027: inline VADDR VDP_GetLayoutTable() { return VADDR_GET(g_ScreenLayoutLow, g_ScreenLayoutHigh); }
	ld	de, (_g_ScreenLayoutLow)
;./bluebakas.c:1612: VDP_FillVRAM_16K(TILE_EMPTY, VDP_GetLayoutTable(), 768);
	ld	hl, #0x0300
	push	hl
	xor	a, a
	call	_VDP_FillVRAM_16K
;./bluebakas.c:1614: Print_DrawTextAt(11, 3,  "BLUE BAKAS");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x0b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x03
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_4
	call	_Print_DrawText
;./bluebakas.c:1615: Print_DrawTextAt(8, 4,  "FROM OUTER SPACE");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x08
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x04
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_5
	call	_Print_DrawText
;./bluebakas.c:1617: Print_DrawTextAt(11, 14, "Hit a key");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x0b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x0e
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_6
	call	_Print_DrawText
;./bluebakas.c:1619: Print_DrawTextAt(5, 18, "(C) Duane Later, 1981");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x05
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x12
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_7
	call	_Print_DrawText
;./bluebakas.c:1620: Print_DrawTextAt(0, 19, "(C) Commodore Business Machines");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x13
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_8
	call	_Print_DrawText
;./bluebakas.c:1622: Print_DrawTextAt(5, 21, "MSX1 port by @thatbruh");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x05
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x15
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_9
	call	_Print_DrawText
;./bluebakas.c:1623: Print_DrawTextAt(6, 22, "Developed with");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x06
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_10
	call	_Print_DrawText
;./bluebakas.c:1627: const u8 msxglLogoTiles[] = { 9, 10, 11, 12 };
	ld	-4 (ix), #0x09
	ld	-3 (ix), #0x0a
	ld	-2 (ix), #0x0b
	ld	-1 (ix), #0x0c
;./bluebakas.c:1631: VDP_GetLayoutTable() + (22 * 32) + 21,
	ld	hl, (_g_ScreenLayoutLow)
	ld	bc, #0x02d5
	add	hl, bc
	ex	de, hl
;./bluebakas.c:1630: msxglLogoTiles,
	ld	hl, #0x0004
	push	hl
	ld	hl, #2
	add	hl, sp
	call	_VDP_WriteVRAM_16K
;./bluebakas.c:1636: WaitForCleanKeyPress();
	call	_WaitForCleanKeyPress
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:1027: inline VADDR VDP_GetLayoutTable() { return VADDR_GET(g_ScreenLayoutLow, g_ScreenLayoutHigh); }
	ld	de, (_g_ScreenLayoutLow)
;./bluebakas.c:1639: VDP_FillVRAM_16K(TILE_EMPTY, VDP_GetLayoutTable(), 768);
	ld	hl, #0x0300
	push	hl
	xor	a, a
	call	_VDP_FillVRAM_16K
;./bluebakas.c:1640: }
	ld	sp, ix
	pop	ix
	ret
___str_4:
	.ascii "BLUE BAKAS"
	.db 0x00
___str_5:
	.ascii "FROM OUTER SPACE"
	.db 0x00
___str_6:
	.ascii "Hit a key"
	.db 0x00
___str_7:
	.ascii "(C) Duane Later, 1981"
	.db 0x00
___str_8:
	.ascii "(C) Commodore Business Machines"
	.db 0x00
___str_9:
	.ascii "MSX1 port by @thatbruh"
	.db 0x00
___str_10:
	.ascii "Developed with"
	.db 0x00
;./bluebakas.c:1642: void ShowMeanerScreen()
;	---------------------------------
; Function ShowMeanerScreen
; ---------------------------------
_ShowMeanerScreen::
;./bluebakas.c:1644: PSG_Mute();
	call	_PSG_Mute
;./bluebakas.c:1645: ayFX_Mute();
	call	_ayFX_Mute
;./bluebakas.c:1649: InitGraphics();
	call	_InitGraphics
;./bluebakas.c:1651: Print_DrawTextAt(3, 10, "WE'RE GONNA BE MEANER NOW");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #_g_PrintData + 5
	ld	(hl), #0x03
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	(hl), #0x0a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_11
	call	_Print_DrawText
;./bluebakas.c:1652: Energy = 1000;
	ld	hl, #0x03e8
	ld	(_Energy), hl
;./bluebakas.c:1653: Score = 0;
	xor	a, a
	ld	(#_Score), a
;./bluebakas.c:1655: WaitForCleanKeyPress();
	call	_WaitForCleanKeyPress
;./bluebakas.c:1657: InitGraphics();
	call	_InitGraphics
;./bluebakas.c:1658: LoadLevel();
	call	_LoadLevel
;./bluebakas.c:1659: ResetGameplayFlags();
;./bluebakas.c:1660: }
	jp	_ResetGameplayFlags
___str_11:
	.ascii "WE'RE GONNA BE MEANER NOW"
	.db 0x00
;./bluebakas.c:1666: void LoadMap() {
;	---------------------------------
; Function LoadMap
; ---------------------------------
_LoadMap::
;./bluebakas.c:1668: Mem_Copy(g_Map, g_RamMap, PLAYFIELD_SIZE);
	ld	hl, #_g_RamMap+0
	ld	e, l
	ld	d, h
	push	hl
	ld	hl, #_g_Map
	ld	bc, #0x02c0
	ldir
	pop	hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/vdp.h:1027: inline VADDR VDP_GetLayoutTable() { return VADDR_GET(g_ScreenLayoutLow, g_ScreenLayoutHigh); }
	ld	de, (_g_ScreenLayoutLow)
;./bluebakas.c:1671: VDP_WriteVRAM_16K(g_RamMap, VDP_GetLayoutTable(), PLAYFIELD_SIZE);
	ld	bc, #0x02c0
	push	bc
	call	_VDP_WriteVRAM_16K
;./bluebakas.c:1672: }
	ret
;./bluebakas.c:1674: void LoadLevel()
;	---------------------------------
; Function LoadLevel
; ---------------------------------
_LoadLevel::
;./bluebakas.c:1676: LoadMap();
	call	_LoadMap
;./bluebakas.c:1678: InitMeanie();
	call	_InitMeanie
;./bluebakas.c:1679: InitFuel();
	call	_InitFuel
;./bluebakas.c:1680: InitExplosion();
	call	_InitExplosion
;./bluebakas.c:1681: InitRepairRobot();
;./bluebakas.c:1682: }
	jp	_InitRepairRobot
;./bluebakas.c:1684: void DrawInt4At(u8 x, u8 y, u16 value)
;	---------------------------------
; Function DrawInt4At
; ---------------------------------
_DrawInt4At::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
	ld	-1 (ix), a
	ld	-2 (ix), l
;./bluebakas.c:1686: if(value >= 1000)
	ld	a, 4 (ix)
	ld	-7 (ix), a
	ld	a, 5 (ix)
	ld	-6 (ix), a
;./bluebakas.c:1687: Print_DrawIntAt(x, y, (i16)value);
	ld	a, 4 (ix)
	ld	-5 (ix), a
	ld	a, 5 (ix)
	ld	-4 (ix), a
;./bluebakas.c:1686: if(value >= 1000)
	ld	a, -7 (ix)
	sub	a, #0xe8
	ld	a, -6 (ix)
	sbc	a, #0x03
	jr	c, 00108$
;./bluebakas.c:1687: Print_DrawIntAt(x, y, (i16)value);
	ld	a, -5 (ix)
	ld	-8 (ix), a
	ld	a, -4 (ix)
	ld	-7 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:637: inline void Print_DrawIntAt(UX x, UY y, i16 val) { Print_SetPosition(x, y); Print_DrawInt(val); }
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
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
;./bluebakas.c:1687: Print_DrawIntAt(x, y, (i16)value);
	jp	00124$
00108$:
;./bluebakas.c:1691: Print_DrawIntAt(x + 1, y, (i16)value);
	ld	a, -1 (ix)
	ld	-3 (ix), a
;./bluebakas.c:1688: else if(value >= 100)
	ld	a, -7 (ix)
	sub	a, #0x64
	ld	a, -6 (ix)
	sbc	a, #0x00
	jr	c, 00105$
;./bluebakas.c:1690: Print_DrawTextAt(x, y, " ");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	bc, #_g_PrintData + 5
	ld	a, -1 (ix)
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	a, -2 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	push	hl
	push	bc
	ld	hl, #___str_12
	call	_Print_DrawText
	pop	bc
	pop	hl
;./bluebakas.c:1691: Print_DrawIntAt(x + 1, y, (i16)value);
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	a, -3 (ix)
	inc	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	a, -2 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:637: inline void Print_DrawIntAt(UX x, UY y, i16 val) { Print_SetPosition(x, y); Print_DrawInt(val); }
	ld	a, d
	rlca
	sbc	hl, hl
	call	_Print_DrawInt
;./bluebakas.c:1691: Print_DrawIntAt(x + 1, y, (i16)value);
	jp	00124$
00105$:
;./bluebakas.c:1693: else if(value >= 10)
	ld	a, -7 (ix)
	sub	a, #0x0a
	jr	c, 00102$
;./bluebakas.c:1695: Print_DrawTextAt(x, y, "  ");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	bc, #_g_PrintData + 5
	ld	a, -1 (ix)
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	a, -2 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	push	hl
	push	bc
	ld	hl, #___str_13
	call	_Print_DrawText
	pop	bc
	pop	hl
;./bluebakas.c:1696: Print_DrawIntAt(x + 2, y, (i16)value);
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	a, -3 (ix)
	inc	a
	inc	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	a, -2 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:637: inline void Print_DrawIntAt(UX x, UY y, i16 val) { Print_SetPosition(x, y); Print_DrawInt(val); }
	ld	a, d
	rlca
	sbc	hl, hl
	call	_Print_DrawInt
;./bluebakas.c:1696: Print_DrawIntAt(x + 2, y, (i16)value);
	jp	00124$
00102$:
;./bluebakas.c:1700: Print_DrawTextAt(x, y, "   ");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	bc, #_g_PrintData + 5
	ld	a, -1 (ix)
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #_g_PrintData + 6
	ld	a, -2 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	push	hl
	push	bc
	ld	hl, #___str_14
	call	_Print_DrawText
	pop	bc
	pop	hl
;./bluebakas.c:1701: Print_DrawIntAt(x + 3, y, (i16)value);
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	ld	a, -3 (ix)
	inc	a
	inc	a
	inc	a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	(bc), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	a, -2 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:637: inline void Print_DrawIntAt(UX x, UY y, i16 val) { Print_SetPosition(x, y); Print_DrawInt(val); }
	ld	a, d
	rlca
	sbc	hl, hl
	call	_Print_DrawInt
;./bluebakas.c:1701: Print_DrawIntAt(x + 3, y, (i16)value);
00124$:
;./bluebakas.c:1703: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
___str_12:
	.ascii " "
	.db 0x00
___str_13:
	.ascii "  "
	.db 0x00
___str_14:
	.ascii "   "
	.db 0x00
;./bluebakas.c:1705: void DrawHUD()
;	---------------------------------
; Function DrawHUD
; ---------------------------------
_DrawHUD::
;./bluebakas.c:1707: Print_DrawTextAt(0, 22, "ENERGY=");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_15
	call	_Print_DrawText
;./bluebakas.c:1708: DrawInt4At(8, 22, Energy);
	ld	hl, (_Energy)
	push	hl
	ld	l, #0x16
	ld	a, #0x08
	call	_DrawInt4At
;./bluebakas.c:1710: Print_DrawTextAt(0, 23, "SCORE=");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x00
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x17
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_16
	call	_Print_DrawText
;./bluebakas.c:1711: DrawInt4At(7, 23, Score);
	ld	a, (_Score)
	ld	b, #0x00
	ld	c, a
	push	bc
	ld	l, #0x17
	ld	a, #0x07
	call	_DrawInt4At
;./bluebakas.c:1713: if(Energy == 0)
	ld	a, (_Energy+1)
	ld	hl, #_Energy
	or	a, (hl)
	jr	nz, 00104$
;./bluebakas.c:1715: Print_DrawTextAt(23, 22, "NO ENERGY");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x17
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
;./bluebakas.c:1715: Print_DrawTextAt(23, 22, "NO ENERGY");
	ld	hl, #___str_17
	jp	_Print_DrawText
00104$:
;./bluebakas.c:1717: else if(g_ShowGoodHit)
	ld	a, (_g_ShowGoodHit+0)
	or	a, a
	ret	z
;./bluebakas.c:1719: Print_DrawTextAt(23, 22, " GOOD HIT");
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	(hl), #0x17
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	inc	hl
	ld	(hl), #0x16
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/print.h:552: inline void Print_DrawTextAt(UX x, UY y, const c8* str) { Print_SetPosition(x, y); Print_DrawText(str); }
	ld	hl, #___str_18
;./bluebakas.c:1719: Print_DrawTextAt(23, 22, " GOOD HIT");
;./bluebakas.c:1721: }
	jp	_Print_DrawText
___str_15:
	.ascii "ENERGY="
	.db 0x00
___str_16:
	.ascii "SCORE="
	.db 0x00
___str_17:
	.ascii "NO ENERGY"
	.db 0x00
___str_18:
	.ascii " GOOD HIT"
	.db 0x00
;./bluebakas.c:1727: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;./bluebakas.c:1729: InitGraphics();
	call	_InitGraphics
;./bluebakas.c:1730: ShowTitleScreen();
	call	_ShowTitleScreen
;./bluebakas.c:1731: LoadLevel();
	call	_LoadLevel
;./bluebakas.c:1732: InitSound();
	call	_InitSound
;./bluebakas.c:1734: while(1)
00110$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./bluebakas.c:1738: if(g_GameOverToTitle)
	ld	a, (_g_GameOverToTitle+0)
	or	a, a
	jr	z, 00104$
;./bluebakas.c:1740: if(g_GameOverSoundDone)
	ld	a, (_g_GameOverSoundDone+0)
	or	a, a
	jr	z, 00110$
;./bluebakas.c:1742: ayFX_Mute();
	call	_ayFX_Mute
;./bluebakas.c:1743: PSG_Mute();
	call	_PSG_Mute
;./bluebakas.c:1745: g_GameOverToTitle = FALSE;
;./bluebakas.c:1746: g_GameOverSoundDone = FALSE;
	xor	a, a
	ld	(#_g_GameOverToTitle), a
	ld	(#_g_GameOverSoundDone), a
;./bluebakas.c:1748: Score = 0;
	xor	a, a
	ld	(#_Score), a
;./bluebakas.c:1749: Energy = 1000;
	ld	hl, #0x03e8
	ld	(_Energy), hl
;./bluebakas.c:1751: g_FuelSoundWanted = FALSE;
;./bluebakas.c:1752: g_FuelSoundRestart = FALSE;
	xor	a, a
	ld	(#_g_FuelSoundWanted), a
	ld	(#_g_FuelSoundRestart), a
;./bluebakas.c:1754: ResetGameplayFlags();
	call	_ResetGameplayFlags
;./bluebakas.c:1756: InitGraphics();
	call	_InitGraphics
;./bluebakas.c:1757: ShowTitleScreen();
	call	_ShowTitleScreen
;./bluebakas.c:1758: LoadLevel();
	call	_LoadLevel
;./bluebakas.c:1761: continue;
	jp	00110$
00104$:
;./bluebakas.c:1764: UpdateRepairRobot();
	call	_UpdateRepairRobot
;./bluebakas.c:1765: UpdateLaser();
	call	_UpdateLaser
;./bluebakas.c:1766: UpdateExplosion();
	call	_UpdateExplosion
;./bluebakas.c:1767: UpdateMeanie();
	call	_UpdateMeanie
;./bluebakas.c:1769: if(g_GameOverToTitle)
	ld	a, (_g_GameOverToTitle+0)
	or	a, a
	jr	nz, 00110$
;./bluebakas.c:1772: UpdateFuel();
	call	_UpdateFuel
;./bluebakas.c:1774: if(g_hasHUDChanged)
	ld	a, (_g_hasHUDChanged+0)
	or	a, a
	jr	z, 00110$
;./bluebakas.c:1776: DrawHUD();
	call	_DrawHUD
;./bluebakas.c:1777: g_hasHUDChanged = FALSE;
	xor	a, a
	ld	hl, #_g_hasHUDChanged
	ld	(hl), a
;./bluebakas.c:1780: }
	jp	00110$
	.area _CODE
	.area _INITIALIZER
__xinit__Score:
	.db #0x00	; 0
__xinit__Energy:
	.dw #0x03e8
__xinit__g_FuelActive:
	.db #0x00	; 0
__xinit__g_ExplosionActive:
	.db #0x00	; 0
__xinit__g_FuelXFix:
	.dw #0x0000
__xinit__g_FuelYFix:
	.dw #0x0000
__xinit__g_FuelSpawnDelay:
	.dw #0x0708
__xinit__g_Rand:
	.dw #0x00a7
__xinit__g_FuelSoundWanted:
	.db #0x00	; 0
__xinit__g_FuelSoundRestart:
	.db #0x00	; 0
__xinit__g_GameOverToTitle:
	.db #0x00	; 0
__xinit__g_GameOverSoundDone:
	.db #0x00	; 0
__xinit__g_RobotTileX:
	.db #0x00	; 0
__xinit__g_RobotTileY:
	.db #0x00	; 0
__xinit__g_RobotUnderTile:
	.db #0x00	; 0
__xinit__g_KeyRow8Prev:
	.db #0xff	; 255
__xinit__g_RobotMoveDelay:
	.db #0x00	; 0
__xinit__g_LaserActive:
	.db #0x00	; 0
__xinit__g_LaserErasing:
	.db #0x00	; 0
__xinit__g_ShowGoodHit:
	.db #0x00	; 0
__xinit__g_hasHUDChanged:
	.db #0x01	; 1
__xinit__g_LaserTileX:
	.db #0x00	; 0
__xinit__g_LaserTileY:
	.db #0x00	; 0
__xinit__g_LaserTile:
	.db #0x00	; 0
__xinit__g_LaserDir:
	.db #0x00	;  0
__xinit__g_LaserStepDelay:
	.db #0x00	; 0
__xinit__g_KeyRow2Prev:
	.db #0xff	; 255
__xinit__g_KeyRow4Prev:
	.db #0xff	; 255
__xinit__g_KeyRow5Prev:
	.db #0xff	; 255
	.area _CABS (ABS)
