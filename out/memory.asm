;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (MINGW64)
;--------------------------------------------------------
	.module memory
	
	.optsdcc -mz80 sdcccall(1)
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Mem_DynamicMerge
	.globl _g_MemChunkRoot
	.globl _g_StackAddress
	.globl _Mem_GetStackAddress
	.globl _Mem_Set_16b
	.globl _Mem_DynamicInitialize
	.globl _Mem_DynamicAlloc
	.globl _Mem_DynamicFree
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_StackAddress::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_MemChunkRoot::
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
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:29: u16 Mem_GetStackAddress() __NAKED
;	---------------------------------
; Function Mem_GetStackAddress
; ---------------------------------
_Mem_GetStackAddress::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:35: __endasm;
	ld (_g_StackAddress), sp
	ld de, (_g_StackAddress)
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:36: }
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:150: void Mem_Set_16b(u16 val, void* dest, u16 size)
;	---------------------------------
; Function Mem_Set_16b
; ---------------------------------
_Mem_Set_16b::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:185: __endasm;
	push de
	ex de, hl
	ld (hl), d
	inc hl
	ld (hl), e
	inc hl
	ex de, hl
	pop hl
	pop iy
	pop bc
	dec bc
	dec bc
	ldir
mem_fill16_end:
	jp (iy)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:186: }
	pop	hl
	pop	af
	jp	(hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:258: void Mem_DynamicInitialize(void* base, u16 size)
;	---------------------------------
; Function Mem_DynamicInitialize
; ---------------------------------
_Mem_DynamicInitialize::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:260: g_MemChunkRoot = (MemChunkHeader*)base;
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:261: g_MemChunkRoot->Size = (size - sizeof(MemChunkHeader)) | MEM_CHUNK_FREE;
	ld	(_g_MemChunkRoot), hl
	ld	a, e
	add	a, #0xfc
	ld	c, a
	ld	a, d
	adc	a, #0xff
	or	a, #0x80
	ld	b, a
	ld	(hl), c
	inc	hl
	ld	(hl), b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:262: g_MemChunkRoot->Next = NULL;
	ld	hl, (_g_MemChunkRoot)
	inc	hl
	inc	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:263: }
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:267: void* Mem_DynamicAlloc(u16 size)
;	---------------------------------
; Function Mem_DynamicAlloc
; ---------------------------------
_Mem_DynamicAlloc::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	iy, #-18
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:274: MemChunkHeader* chunk = g_MemChunkRoot;
	ld	hl, (_g_MemChunkRoot)
	ex	(sp), hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:275: while (chunk)
00107$:
	ld	a, -17 (ix)
	or	a, -18 (ix)
	jp	z, 00109$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:277: u16 chunkSize = chunk->Size;
	ld	a, -18 (ix)
	ld	-16 (ix), a
	ld	a, -17 (ix)
	ld	-15 (ix), a
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:278: if (chunkSize & MEM_CHUNK_FREE) // Free chunk
	bit	7, -3 (ix)
	jp	z, 00106$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:280: chunkSize &= ~MEM_CHUNK_FREE;
	ld	a, -4 (ix)
	ld	-8 (ix), a
	ld	a, -3 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	and	a, #0x7f
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-14 (ix), a
	ld	a, -3 (ix)
	ld	-13 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:281: if (chunkSize == size) // Re-use chunk
	ld	a, -14 (ix)
	sub	a, -2 (ix)
	jr	nz, 00102$
	ld	a, -13 (ix)
	sub	a, -1 (ix)
	jr	nz, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:283: chunk->Size &= ~MEM_CHUNK_FREE;
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	and	a, #0x7f
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:284: return (void*)((u16)chunk + sizeof(MemChunkHeader));
	ld	a, -18 (ix)
	ld	-4 (ix), a
	ld	a, -17 (ix)
	ld	-3 (ix), a
	ld	de, #0x0004
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	jp	00110$
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:286: u16 needSize = size + sizeof(MemChunkHeader);
	ld	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -1 (ix)
	ld	-5 (ix), a
	ld	de, #0x0004
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	ld	-12 (ix), a
	ld	a, -3 (ix)
	ld	-11 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:287: if (chunkSize > needSize) // Create new sub-chunk
	ld	a, -12 (ix)
	sub	a, -14 (ix)
	ld	a, -11 (ix)
	sbc	a, -13 (ix)
	jp	nc, 00106$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:289: MemChunkHeader* newChunk = (MemChunkHeader*)((u16)chunk + needSize); // New free sub-chunk
	ld	a, -18 (ix)
	ld	-10 (ix), a
	ld	a, -17 (ix)
	ld	-9 (ix), a
	ld	a, -12 (ix)
	add	a, -10 (ix)
	ld	c, a
	ld	a, -11 (ix)
	adc	a, -9 (ix)
	ld	-8 (ix), c
	ld	-7 (ix), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:290: newChunk->Size = (chunkSize - needSize) | MEM_CHUNK_FREE;
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -14 (ix)
	sub	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -13 (ix)
	sbc	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-12 (ix), a
	ld	a, -3 (ix)
	or	a, #0x80
	ld	-11 (ix), a
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:291: newChunk->Next = chunk->Next;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	inc	hl
	inc	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -12 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -11 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:293: chunk->Size = size; // Allocated sub-chunk
	ld	l, -16 (ix)
	ld	h, -15 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:294: chunk->Next = newChunk;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:296: return (void*)((u16)chunk + sizeof(MemChunkHeader));
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
	ld	de, #0x0004
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	jp	00110$
00106$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:299: chunk = chunk->Next;
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-18 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-17 (ix), a
	jp	00107$
00109$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:301: return NULL;
	ld	de, #0x0000
00110$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:302: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:306: void Mem_DynamicMerge()
;	---------------------------------
; Function Mem_DynamicMerge
; ---------------------------------
_Mem_DynamicMerge::
	push	ix
	ld	ix,	#0
	add	ix, sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:308: MemChunkHeader* chunk = g_MemChunkRoot;
	ld	hl, (_g_MemChunkRoot)
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:309: while (chunk)
00105$:
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jp	z, 00108$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:311: MemChunkHeader* nextChunk = chunk->Next;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	inc	hl
	inc	hl
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:312: if ((nextChunk != NULL) && (chunk->Size & MEM_CHUNK_FREE) && (nextChunk->Size & MEM_CHUNK_FREE))
	ld	-9 (ix), a
	or	a, -10 (ix)
	jp	z, 00102$
	ld	a, -2 (ix)
	ld	-8 (ix), a
	ld	a, -1 (ix)
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	bit	7, -1 (ix)
	jr	z, 00102$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	bit	7, -3 (ix)
	jr	z, 00102$
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:314: chunk->Size += nextChunk->Size + sizeof(MemChunkHeader);
	ld	de, #0x0004
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:315: chunk->Next = nextChunk->Next;
	ld	a, -10 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
00102$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:317: chunk = chunk->Next;
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	jp	00105$
00108$:
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:319: }
	ld	sp, ix
	pop	ix
	ret
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:323: void Mem_DynamicFree(void* ptr)
;	---------------------------------
; Function Mem_DynamicFree
; ---------------------------------
_Mem_DynamicFree::
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:325: MemChunkHeader* chunk = (MemChunkHeader*)((u16)ptr - sizeof(MemChunkHeader));
	ld	a, l
	add	a, #0xfc
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:326: chunk->Size |= MEM_CHUNK_FREE;
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	set	7, b
	ld	(hl), c
	inc	hl
	ld	(hl), b
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:327: Mem_DynamicMerge();
;C:\Users\Jummy\Downloads\MSXgl-1.5.0b\engine/src/memory.c:328: }
	jp	_Mem_DynamicMerge
	.area _CODE
	.area _INITIALIZER
__xinit__g_MemChunkRoot:
	.dw #0x0000
	.area _CABS (ABS)
