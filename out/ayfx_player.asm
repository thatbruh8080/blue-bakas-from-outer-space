;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module ayfx_player
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ayFX_Finish
	.globl _ayFX_Channel
	.globl _ayFX_Priority
	.globl _ayFX_Mode
	.globl _ayFX_Volume
	.globl _ayFX_Noise
	.globl _ayFX_Tone
	.globl _ayFX_Pointer
	.globl _ayFX_Bank
	.globl _ayFX_InitBank
	.globl _ayFX_PlayBank
	.globl _ayFX_Play
	.globl _ayFX_Update
	.globl _ayFX_Mute
	.globl _ayFX_Stop
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
_ayFX_Bank::
	.ds 2
_ayFX_Pointer::
	.ds 2
_ayFX_Tone::
	.ds 2
_ayFX_Noise::
	.ds 1
_ayFX_Volume::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_ayFX_Mode::
	.ds 1
_ayFX_Priority::
	.ds 1
_ayFX_Channel::
	.ds 1
_ayFX_Finish::
	.ds 2
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
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:77: void ayFX_InitBank(void* bank) __NAKED
;	---------------------------------
; Function ayFX_InitBank
; ---------------------------------
_ayFX_InitBank::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:92: __endasm;
	ld (_ayFX_Bank), hl
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:93: }	
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:100: u8 ayFX_PlayBank(u8 id, u8 prio) __NAKED
;	---------------------------------
; Function ayFX_PlayBank
; ---------------------------------
_ayFX_PlayBank::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:181: __endasm;
	ld c, l
	ld b, a
	ld hl, (_ayFX_Bank)
	ld a, (hl)
	or a
	jr z, CHECK_PRIO
CHECK_INDEX:
	ld a, b
	cp (hl)
	ld a, #2
	jr nc, INIT_END
CHECK_PRIO:
	ld a, b
	ld a, (_ayFX_Priority)
	cp c
	ld a, #1
	jr c, INIT_END
	ld a, c
	and #0x0F
	ld (_ayFX_Priority), a
	ld de, (_ayFX_Bank)
	inc de
	ld l, b
	ld h, #0
	add hl, hl
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	add hl, de
	ld (_ayFX_Pointer), hl
	xor a
INIT_END:
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:182: }
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:187: void ayFX_Play(void* data) __NAKED
;	---------------------------------
; Function ayFX_Play
; ---------------------------------
_ayFX_Play::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:196: __endasm;
	ld (_ayFX_Pointer), hl
	xor a
	ld (_ayFX_Priority), a
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:197: }
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:201: void ayFX_Update() __NAKED
;	---------------------------------
; Function ayFX_Update
; ---------------------------------
_ayFX_Update::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:333: __endasm;
	ld a, (_ayFX_Priority)
	or a
	ret m
	ld a, (_ayFX_Mode)
	and #1
	jr z, TAKECB
CHANNEL_SWITCH:
	ld hl, #_ayFX_Channel
	dec (hl)
	jr nz, TAKECB
	ld (hl), #3
TAKECB:
	ld hl, (_ayFX_Pointer)
	ld c, (hl)
	inc hl
	bit 5, c
	jr z, CHECK_NN
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (_ayFX_Tone), de
CHECK_NN:
	bit 6, c
	jr z, SETPOINTER
	ld a, (hl)
	inc hl
	cp #0x20
	jr nz, CONTINUE
	ld hl, (_ayFX_Finish)
	jp (hl)
CONTINUE:
	ld (_ayFX_Noise), a
SETPOINTER:
	ld (_ayFX_Pointer), hl
	ld a, c
	and #0x0F
	ld (_ayFX_Volume), a
	ret z
	bit 7, c
	jr nz, SETMASKS
	ld a, (_ayFX_Noise)
	ld (_g_PSG_Regs+6), a
SETMASKS:
	ld a, c
	and #0x90
	cp #0x90
	ret z
	rrca
	rrca
	ld d, #0xDB
	ld hl, #_ayFX_Channel
	ld b, (hl)
CHK1:
	djnz CHK2
PLAY_C:
	call SETMIXER
	ld (_g_PSG_Regs+10), a
	bit 2, c
	ret nz
	ld (_g_PSG_Regs+4), hl
	ret
CHK2:
	rrc d
	rrca
	djnz CHK3
PLAY_B:
	call SETMIXER
	ld (_g_PSG_Regs+9), a
	bit 1, c
	ret nz
	ld (_g_PSG_Regs+2), hl
	ret
CHK3:
	rrc d
	rrca
PLAY_A:
	call SETMIXER
	ld (_g_PSG_Regs+8), a
	bit 0, c
	ret nz
	ld (_g_PSG_Regs+0), hl
	ret
SETMIXER:
	ld c, a
	ld a, (_g_PSG_Regs+7)
	and d
	or c
	ld (_g_PSG_Regs+7), a
	ld a, (_ayFX_Volume)
	ld hl, (_ayFX_Tone)
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:334: }
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:338: void ayFX_Mute() __NAKED
;	---------------------------------
; Function ayFX_Mute
; ---------------------------------
_ayFX_Mute::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:363: __endasm;
	ld a, #255
	ld (_ayFX_Priority), a
	ld hl, #_ayFX_Channel
	ld b, (hl)
	xor a
StopCheck1:
	djnz StopCheck2
	ld (_g_PSG_Regs+10), a
	ret
StopCheck2:
	djnz StopCheck3
	ld (_g_PSG_Regs+9), a
	ret
StopCheck3:
	ld (_g_PSG_Regs+8), a
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:364: }
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:368: void ayFX_Stop() __NAKED
;	---------------------------------
; Function ayFX_Stop
; ---------------------------------
_ayFX_Stop::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:375: __endasm;
	ld a, #255
	ld (_ayFX_Priority), a
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/ayfx/ayfx_player.c:376: }
	.area _CODE
	.area _INITIALIZER
__xinit__ayFX_Mode:
	.db #0x00	; 0
__xinit__ayFX_Priority:
	.db #0xff	; 255
__xinit__ayFX_Channel:
	.db #0x01	; 1
__xinit__ayFX_Finish:
	.dw _ayFX_Mute
	.area _CABS (ABS)
