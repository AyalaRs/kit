.code

loc_4B0A70:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, offset pd
		mov	edx, [ebp+14h]
		mov	ecx, [ebp+10h]
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4B0A8B
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B0A90

loc_4B0A8B:				; CODE XREF: .text:004B0A83j
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0A90:				; CODE XREF: .text:004B0A89j
		test	byte ptr [eax+0Eh], 4
		jnz	short loc_4B0A9B
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0A9B:				; CODE XREF: .text:004B0A94j
		test	edx, edx
		jnz	short loc_4B0ABE
		test	byte ptr [eax+0Bh], 10h
		jz	short loc_4B0AB1
		xor	eax, eax
		test	ecx, ecx
		jz	short loc_4B0AFB
		add	eax, 2
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0AB1:				; CODE XREF: .text:004B0AA3j
		mov	eax, 1
		test	ecx, ecx
		jz	short loc_4B0AFB
		dec	eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0ABE:				; CODE XREF: .text:004B0A9Dj
		dec	edx
		jnz	short loc_4B0AF9
		test	ecx, ecx
		jnz	short loc_4B0ADC
		mov	eax, [esi]
		mov	edx, [eax+8]
		or	edx, 10000000h
		push	edx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8
		jmp	short loc_4B0AF1
; ---------------------------------------------------------------------------

loc_4B0ADC:				; CODE XREF: .text:004B0AC3j
		mov	eax, [esi]
		mov	edx, [eax+8]
		and	edx, 0EFFFFFFFh
		push	edx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8

loc_4B0AF1:				; CODE XREF: .text:004B0ADAj
		mov	eax, 1
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0AF9:				; CODE XREF: .text:004B0ABFj
		xor	eax, eax

loc_4B0AFB:				; CODE XREF: .text:004B0AA9j
					; .text:004B0AB8j
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_4B0B00@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B0B00:				; DATA XREF: .data:stru_5521A0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset pd
		push	edi		; arglist
		mov	edx, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, [esi]	; int
		test	eax, eax
		jz	short loc_4B0B27
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B0B27
		mov	ecx, [eax]
		cmp	ecx, userspacelimit
		jb	short loc_4B0B2E

loc_4B0B27:				; CODE XREF: .text:004B0B15j
					; .text:004B0B1Bj
		xor	eax, eax
		jmp	loc_4B0C74
; ---------------------------------------------------------------------------

loc_4B0B2E:				; CODE XREF: .text:004B0B25j
		test	edx, edx
		jnz	short loc_4B0B65
		test	ebx, ebx
		jnz	short loc_4B0B46
		cmp	dword_5FA96C, 0
		jz	short loc_4B0B46
		xor	eax, eax
		jmp	loc_4B0C74
; ---------------------------------------------------------------------------

loc_4B0B46:				; CODE XREF: .text:004B0B34j
					; .text:004B0B3Dj
		cmp	ebx, 1
		jnz	short loc_4B0B5B
		cmp	dword_5FA96C, 0
		jnz	short loc_4B0B5B
		xor	eax, eax
		jmp	loc_4B0C74
; ---------------------------------------------------------------------------

loc_4B0B5B:				; CODE XREF: .text:004B0B49j
					; .text:004B0B52j
		mov	eax, 1
		jmp	loc_4B0C74
; ---------------------------------------------------------------------------

loc_4B0B65:				; CODE XREF: .text:004B0B30j
		dec	edx
		jnz	loc_4B0C72
		cmp	dword_5FA968, 0
		jnz	short loc_4B0B97
		cmp	dword_5FA964, 0
		jnz	short loc_4B0B97
		push	offset aMemoryListHasC ; "Memory list has changed, dump	no longer"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B0C74
; ---------------------------------------------------------------------------

loc_4B0B97:				; CODE XREF: .text:004B0B73j
					; .text:004B0B7Cj
		cmp	dword_5FA96C, 0
		jnz	short loc_4B0BC3
		push	0		; flags
		mov	edx, [esi]	; int
		mov	ecx, [edx+4]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5FA96C, edi
		test	edi, edi
		jnz	short loc_4B0BC3
		xor	eax, eax
		jmp	loc_4B0C74
; ---------------------------------------------------------------------------

loc_4B0BC3:				; CODE XREF: .text:004B0B9Ej
					; .text:004B0BBAj
		mov	edx, [esi]
		mov	eax, [edx+298h]
		test	eax, eax
		jz	short loc_4B0BE5
		mov	edx, [edx+4]
		mov	ecx, dword_5FA96C
		push	edx		; n
		push	eax		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4B0C1D
; ---------------------------------------------------------------------------

loc_4B0BE5:				; CODE XREF: .text:004B0BCDj
		push	0		; mode
		mov	eax, [esi]
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [eax]
		push	ecx		; _addr
		mov	eax, dword_5FA96C
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	edx, [esi]
		cmp	eax, [edx+4]
		jz	short loc_4B0C1D
		test	ebx, ebx
		jnz	short loc_4B0C1D
		mov	ecx, dword_5FA96C
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		mov	dword_5FA96C, eax

loc_4B0C1D:				; CODE XREF: .text:004B0BE3j
					; .text:004B0C03j ...
		cmp	dword_5FA968, 0
		jnz	short loc_4B0C4C
		mov	eax, dword_5FA964
		mov	edx, dword_5FA96C
		mov	[eax+60h], edx
		test	ebx, ebx
		jnz	short loc_4B0C6B
		push	0		; lp
		mov	ecx, [eax]
		push	ecx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4B0C6B
; ---------------------------------------------------------------------------

loc_4B0C4C:				; CODE XREF: .text:004B0C24j
		mov	eax, [esi]
		mov	edx, dword_5FA96C
		mov	[eax+4A4h], edx
		test	ebx, ebx
		jnz	short loc_4B0C6B
		mov	ecx, [eax+8]
		push	ecx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8

loc_4B0C6B:				; CODE XREF: .text:004B0C36j
					; .text:004B0C4Aj ...
		mov	eax, 1
		jmp	short loc_4B0C74
; ---------------------------------------------------------------------------

loc_4B0C72:				; CODE XREF: .text:004B0B66j
		xor	eax, eax

loc_4B0C74:				; CODE XREF: .text:004B0B29j
					; .text:004B0B41j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B0C7C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B0C7C:				; DATA XREF: .data:stru_5521A0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi		; arglist
		mov	eax, [ebp+14h]
		mov	esi, offset pd
		mov	edx, [esi]
		test	edx, edx
		jz	short loc_4B0CB7
		cmp	dword_5FA964, 0
		jz	short loc_4B0CB7
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B0CB7
		cmp	dword_5FA988, 0
		jz	short loc_4B0CB7
		mov	ecx, dword_5FA988
		cmp	word ptr [ecx+4Ch], 0
		jnz	short loc_4B0CBE

loc_4B0CB7:				; CODE XREF: .text:004B0C8Dj
					; .text:004B0C96j ...
		xor	eax, eax
		jmp	loc_4B0D65
; ---------------------------------------------------------------------------

loc_4B0CBE:				; CODE XREF: .text:004B0CB5j
		test	eax, eax
		jnz	short loc_4B0CCC
		mov	eax, 1
		jmp	loc_4B0D65
; ---------------------------------------------------------------------------

loc_4B0CCC:				; CODE XREF: .text:004B0CC0j
		dec	eax
		jnz	loc_4B0D63
		mov	edx, dword_5FA964
		push	edx
		call	loc_4BD4CC
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B0CFC
		push	offset aUnableToCrea_1 ; "Unable to create backup"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4B0D65
; ---------------------------------------------------------------------------

loc_4B0CFC:				; CODE XREF: .text:004B0CE4j
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 3
		jz	short loc_4B0D34
		mov	ecx, dword_5FA964
		mov	eax, [ecx+60h]
		test	eax, eax
		jz	short loc_4B0D18
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4B0D18:				; CODE XREF: .text:004B0D0Fj
		mov	eax, dword_5FA964
		mov	[eax+60h], ebx
		push	0		; lp
		mov	edx, [eax]
		push	edx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4B0D5C
; ---------------------------------------------------------------------------

loc_4B0D34:				; CODE XREF: .text:004B0D02j
		mov	ecx, [esi]
		mov	eax, [ecx+4A4h]
		test	eax, eax
		jz	short loc_4B0D47
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4B0D47:				; CODE XREF: .text:004B0D3Ej
		mov	eax, [esi]
		mov	[eax+4A4h], ebx
		mov	edx, [eax+8]
		push	edx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8

loc_4B0D5C:				; CODE XREF: .text:004B0D32j
		mov	eax, 1
		jmp	short loc_4B0D65
; ---------------------------------------------------------------------------

loc_4B0D63:				; CODE XREF: .text:004B0CCDj
		xor	eax, eax

loc_4B0D65:				; CODE XREF: .text:004B0CB9j
					; .text:004B0CC7j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B0D6C:				; DATA XREF: .data:stru_5521A0o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, pd
		test	eax, eax
		mov	edx, [ebp+14h]
		mov	ecx, [ebp+10h]
		jz	short loc_4B0D8F
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B0D8F
		mov	ebx, [eax]
		cmp	ebx, userspacelimit
		jb	short loc_4B0D94

loc_4B0D8F:				; CODE XREF: .text:004B0D7Dj
					; .text:004B0D83j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0D94:				; CODE XREF: .text:004B0D8Dj
		test	edx, edx
		jnz	short loc_4B0DC1
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4B0DB0
		test	ecx, ecx
		jz	short loc_4B0DAB
		cmp	dword_5FA96C, 0
		jnz	short loc_4B0DB9

loc_4B0DAB:				; CODE XREF: .text:004B0DA0j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0DB0:				; CODE XREF: .text:004B0D9Cj
		test	ecx, ecx
		jz	short loc_4B0DB9
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0DB9:				; CODE XREF: .text:004B0DA9j
					; .text:004B0DB2j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0DC1:				; CODE XREF: .text:004B0D96j
		dec	edx
		jnz	short loc_4B0DE4
		mov	eax, pd
		mov	edx, [eax+8]
		xor	edx, 8000000h
		push	edx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0DE4:				; CODE XREF: .text:004B0DC2j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B0DEC:				; DATA XREF: .data:stru_5521A0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	pd, 0
		jnz	short loc_4B0DFF
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0DFF:				; CODE XREF: .text:004B0DF9j
		test	eax, eax
		jnz	short loc_4B0E11
		xor	eax, eax
		cmp	dword_5FA96C, 0
		jz	short loc_4B0E77
		inc	eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0E11:				; CODE XREF: .text:004B0E01j
		dec	eax
		jnz	short loc_4B0E75
		mov	edx, dword_5FA96C
		push	edx		; data
		call	Memfree
		pop	ecx
		cmp	dword_5FA968, 0
		jnz	short loc_4B0E48
		mov	eax, dword_5FA964
		xor	edx, edx
		mov	[eax+60h], edx
		push	0		; lp
		mov	ecx, [eax]
		push	ecx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4B0E62
; ---------------------------------------------------------------------------

loc_4B0E48:				; CODE XREF: .text:004B0E28j
		mov	eax, pd
		xor	edx, edx
		mov	[eax+4A4h], edx
		mov	ecx, [eax+8]
		push	ecx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8

loc_4B0E62:				; CODE XREF: .text:004B0E46j
		mov	eax, pd
		and	dword ptr [eax+8], 0F7FFFFFFh
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0E75:				; CODE XREF: .text:004B0E12j
		xor	eax, eax

loc_4B0E77:				; CODE XREF: .text:004B0E0Cj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B0E7C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B0E7C:				; DATA XREF: .data:stru_5521A0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF4h
		push	ebx
		push	esi
		mov	esi, offset pd
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	edx, [ebp+14h]
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4B0EA9
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B0EA9
		mov	ecx, [eax]
		cmp	ecx, userspacelimit
		jb	short loc_4B0EB0

loc_4B0EA9:				; CODE XREF: .text:004B0E97j
					; .text:004B0E9Dj
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B0EB0:				; CODE XREF: .text:004B0EA7j
		test	edx, edx
		jnz	short loc_4B0ED3
		cmp	edi, 1
		jnz	short loc_4B0EC9
		cmp	dword_5FA96C, 0
		jnz	short loc_4B0EC9
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B0EC9:				; CODE XREF: .text:004B0EB7j
					; .text:004B0EC0j
		mov	eax, 1
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B0ED3:				; CODE XREF: .text:004B0EB2j
		dec	edx
		jnz	loc_4B1448
		cmp	dword_5FA968, 0
		jnz	short loc_4B0F0A
		cmp	dword_5FA964, 0
		jnz	short loc_4B0F0A
		cmp	edi, 2
		jz	short loc_4B0F0A
		push	offset aMemoryListHasC ; "Memory list has changed, dump	no longer"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B0F0A:				; CODE XREF: .text:004B0EE1j
					; .text:004B0EEAj ...
		mov	eax, [esi]
		cmp	word ptr [eax+4ECh], 0
		jz	short loc_4B0F35
		add	eax, 4ECh
		lea	edx, [ebp-40Ch]
		push	eax		; src
		push	104h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4B104A
; ---------------------------------------------------------------------------

loc_4B0F35:				; CODE XREF: .text:004B0F14j
		push	offset word_57EBF0 ; src
		push	104h		; n
		lea	ecx, [ebp-40Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 104h
		sub	eax, ebx
		lea	ecx, [ebp-40Ch]
		add	edx, edx
		push	offset asc_5550D8 ; "\\"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, [esi]
		add	esp, 0Ch
		cmp	word ptr [eax+29Ch], 0
		jz	short loc_4B0F9D
		push	0		; ext
		lea	edx, [ebp-204h]
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		add	eax, 29Ch
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		jmp	short loc_4B1004
; ---------------------------------------------------------------------------

loc_4B0F9D:				; CODE XREF: .text:004B0F7Ej
		mov	ecx, [esi]
		cmp	dword ptr [ecx+298h], 0
		jz	short loc_4B0FC3
		push	offset aUnknown_file ; "unknown_file"
		push	100h		; n
		lea	eax, [ebp-204h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B1004
; ---------------------------------------------------------------------------

loc_4B0FC3:				; CODE XREF: .text:004B0FA6j
		mov	eax, dword_5FA988
		test	eax, eax
		jz	short loc_4B0FEB
		mov	edx, [esi]
		add	eax, 0Ch
		mov	ecx, [edx]
		push	ecx
		push	eax
		lea	eax, [ebp-204h]
		push	offset aS_08x_0	; "%s_%08X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_4B1004
; ---------------------------------------------------------------------------

loc_4B0FEB:				; CODE XREF: .text:004B0FCAj
		mov	edx, [esi]
		lea	eax, [ebp-204h]
		mov	ecx, [edx]
		push	ecx
		push	offset aBackup_08x_bin ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4B1004:				; CODE XREF: .text:004B0F9Bj
					; .text:004B0FC1j ...
		lea	edx, [ebp-204h]
		mov	eax, ebx
		push	edx		; src
		mov	ecx, 104h
		sub	ecx, ebx
		lea	edx, [ebp-40Ch]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, 104h
		lea	eax, [ebp-40Ch]
		sub	ecx, ebx
		add	ebx, ebx
		push	(offset	aBackup_08x_bin+16h) ; src
		push	ecx		; n
		add	ebx, eax
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B104A:				; CODE XREF: .text:004B0F30j
		test	edi, edi
		jnz	short loc_4B105B
		push	offset aLoadBackupFr_0 ; "Load backup from file"
		call	_T
		pop	ecx
		jmp	short loc_4B1078
; ---------------------------------------------------------------------------

loc_4B105B:				; CODE XREF: .text:004B104Cj
		cmp	edi, 1
		jnz	short loc_4B106D
		push	offset aSaveBackupToFi ; src
		call	_T
		pop	ecx
		jmp	short loc_4B1078
; ---------------------------------------------------------------------------

loc_4B106D:				; CODE XREF: .text:004B105Ej
		push	offset aSaveCurrentDat ; src
		call	_T
		pop	ecx

loc_4B1078:				; CODE XREF: .text:004B1059j
					; .text:004B106Bj
		mov	edx, hwollymain
		push	8000000h	; mode
		push	edx		; hwnd
		push	offset a_bin	; defext
		push	0		; currdir
		lea	ecx, [ebp-40Ch]
		push	0		; args
		push	ecx		; _name
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		cmp	eax, 800000h
		jz	short loc_4B10AB
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B10AB:				; CODE XREF: .text:004B10A2j
		test	edi, edi
		jnz	loc_4B1248
		lea	edx, [ebp-4]
		push	edx		; int
		push	0		; psize
		mov	ecx, [esi]
		mov	eax, [ecx+4]
		push	eax		; fixsize
		lea	edx, [ebp-40Ch]
		push	edx		; path
		call	Readfile
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B10F6
		lea	eax, [ebp-40Ch]
		push	eax		; arglist
		push	offset aUnableToOpenOr ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B10F6:				; CODE XREF: .text:004B10D2j
		mov	edx, [esi]
		mov	ecx, [edx+4]
		cmp	ecx, [ebp-4]
		jz	loc_4B11C1
		cmp	dword_57E690, 7
		jnz	short loc_4B1114
		xor	eax, eax
		mov	dword_57E690, eax

loc_4B1114:				; CODE XREF: .text:004B110Bj
		mov	edx, [esi]
		mov	edi, [edx+4]
		cmp	edi, [ebp-4]
		jbe	short loc_4B112B
		push	offset aFillTheRestOfB ; "fill the rest	of backup with current da"...
		call	_T
		pop	ecx
		jmp	short loc_4B1136
; ---------------------------------------------------------------------------

loc_4B112B:				; CODE XREF: .text:004B111Cj
		push	offset aTruncateTheFil ; "truncate the file"
		call	_T
		pop	ecx

loc_4B1136:				; CODE XREF: .text:004B1129j
		push	eax
		push	edi
		mov	eax, [ebp-4]
		lea	edx, [ebp-40Ch]
		push	eax
		push	edx		; arglist
		push	offset aSizeOfBackupFi ; "Size of backup file '%s' (%i. bytes) di"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aFileSizeDoesNo ; src
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E690 ; cond
		call	Condyesno
		add	esp, 1Ch
		cmp	eax, 7
		jnz	short loc_4B1183
		xor	ecx, ecx
		push	ebx		; data
		mov	dword_57E690, ecx
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B1183:				; CODE XREF: .text:004B116Bj
		mov	eax, [esi]
		mov	edx, [eax+4]
		cmp	edx, [ebp-4]
		jbe	short loc_4B11C1
		push	0		; mode
		sub	edx, [ebp-4]
		push	edx		; size
		mov	ecx, [eax]
		add	ecx, [ebp-4]
		push	ecx		; _addr
		mov	eax, [ebp-4]
		add	eax, ebx
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	edx, [esi]
		mov	ecx, [edx+4]
		sub	ecx, [ebp-4]
		cmp	eax, ecx
		jz	short loc_4B11C1
		push	ebx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B11C1:				; CODE XREF: .text:004B10FEj
					; .text:004B118Bj ...
		cmp	dword_5FA968, 0
		jz	short loc_4B11F4
		mov	edx, [esi]
		mov	eax, [edx+4A4h]
		test	eax, eax
		jz	short loc_4B11DD
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4B11DD:				; CODE XREF: .text:004B11D4j
		mov	eax, [esi]
		mov	[eax+4A4h], ebx
		mov	edx, [eax+8]
		push	edx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8
		jmp	short loc_4B1222
; ---------------------------------------------------------------------------

loc_4B11F4:				; CODE XREF: .text:004B11C8j
		mov	ecx, dword_5FA964
		mov	eax, [ecx+60h]
		test	eax, eax
		jz	short loc_4B1208
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4B1208:				; CODE XREF: .text:004B11FFj
		mov	eax, dword_5FA964
		mov	[eax+60h], ebx
		push	0		; lp
		mov	edx, [eax]
		push	edx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4B1222:				; CODE XREF: .text:004B11F2j
		lea	ecx, [ebp-40Ch]
		push	ecx		; src
		push	104h		; n
		mov	eax, [esi]
		add	eax, 4ECh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B1248:				; CODE XREF: .text:004B10ADj
		cmp	edi, 1
		jnz	loc_4B130F
		cmp	dword_5FA968, 0
		jz	short loc_4B1264
		mov	edx, [esi]
		mov	ebx, [edx+4A4h]
		jmp	short loc_4B126C
; ---------------------------------------------------------------------------

loc_4B1264:				; CODE XREF: .text:004B1258j
		mov	eax, dword_5FA964
		mov	ebx, [eax+60h]

loc_4B126C:				; CODE XREF: .text:004B1262j
		push	offset aWb_0	; "wb"
		lea	eax, [ebp-40Ch]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4B12A8
		lea	eax, [ebp-40Ch]
		push	eax		; arglist
		push	offset aUnableToCrea_2 ; "Unable to create file	'%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B12A8:				; CODE XREF: .text:004B1284j
		push	edi		; stream
		mov	edx, [esi]
		mov	ecx, [edx+4]
		push	ecx		; n
		push	1		; size
		push	ebx		; ptr
		call	_fwrite
		add	esp, 10h
		mov	[ebp-4], eax
		push	edi		; stream
		call	_fclose
		pop	ecx
		mov	eax, [esi]
		mov	edx, [eax+4]
		cmp	edx, [ebp-4]
		jz	short loc_4B12EB
		lea	ecx, [ebp-40Ch]
		push	ecx		; arglist
		push	offset aE_19	; "E"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	short loc_4B1308
; ---------------------------------------------------------------------------

loc_4B12EB:				; CODE XREF: .text:004B12CCj
		lea	eax, [ebp-40Ch]
		push	eax		; src
		push	104h		; n
		mov	edx, [esi]
		add	edx, 4ECh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B1308:				; CODE XREF: .text:004B12E9j
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B130F:				; CODE XREF: .text:004B124Bj
		cmp	edi, 2
		jnz	loc_4B1448
		mov	eax, [esi]	; int
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B136D
		push	0		; flags
		mov	edx, [eax+4]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B133E
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B133E:				; CODE XREF: .text:004B1335j
		push	0		; mode
		mov	edi, [esi]
		mov	eax, [edi+4]
		push	eax		; size
		mov	edx, [edi]
		push	edx		; _addr
		push	ebx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-4], eax
		mov	ecx, [esi]
		mov	eax, [ecx+4]
		cmp	eax, [ebp-4]
		jz	short loc_4B136F
		push	ebx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B136D:				; CODE XREF: .text:004B1321j
		xor	ebx, ebx

loc_4B136F:				; CODE XREF: .text:004B135Dj
		push	offset aWb_0	; "wb"
		lea	eax, [ebp-40Ch]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4B13B6
		lea	eax, [ebp-40Ch]
		push	eax		; arglist
		push	offset aUnableToCrea_2 ; "Unable to create file	'%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		test	ebx, ebx
		jz	short loc_4B13AF
		push	ebx		; data
		call	Memfree
		pop	ecx

loc_4B13AF:				; CODE XREF: .text:004B13A6j
		xor	eax, eax
		jmp	loc_4B144A
; ---------------------------------------------------------------------------

loc_4B13B6:				; CODE XREF: .text:004B1387j
		mov	edx, [esi]
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B13DF
		push	edi		; stream
		mov	ecx, [esi]
		mov	eax, [ecx+4]
		push	eax		; n
		push	1		; size
		push	ebx		; ptr
		call	_fwrite
		add	esp, 10h
		mov	[ebp-4], eax
		push	ebx		; data
		call	Memfree
		pop	ecx
		jmp	short loc_4B13FA
; ---------------------------------------------------------------------------

loc_4B13DF:				; CODE XREF: .text:004B13BFj
		push	edi		; stream
		mov	ebx, [esi]
		mov	eax, [ebx+4]
		push	eax		; n
		push	1		; size
		mov	edx, [ebx+298h]
		push	edx		; ptr
		call	_fwrite
		add	esp, 10h
		mov	[ebp-4], eax

loc_4B13FA:				; CODE XREF: .text:004B13DDj
		push	edi		; stream
		call	_fclose
		pop	ecx
		mov	ecx, [esi]
		mov	eax, [ecx+4]
		cmp	eax, [ebp-4]
		jz	short loc_4B1428
		lea	edx, [ebp-40Ch]
		push	edx		; arglist
		push	offset aErrorWritingDa ; "Error	writing	data to	file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	short loc_4B1444
; ---------------------------------------------------------------------------

loc_4B1428:				; CODE XREF: .text:004B1409j
		lea	ecx, [ebp-40Ch]
		push	ecx		; src
		push	104h		; n
		mov	eax, [esi]
		add	eax, 4ECh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B1444:				; CODE XREF: .text:004B1426j
		xor	eax, eax
		jmp	short loc_4B144A
; ---------------------------------------------------------------------------

loc_4B1448:				; CODE XREF: .text:004B0ED4j
					; .text:004B1312j
		xor	eax, eax

loc_4B144A:				; CODE XREF: .text:004B0EABj
					; .text:004B0EC4j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B1454:				; DATA XREF: .data:stru_552290o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+14h]	; int
		mov	edi, offset pd
		cmp	dword_5FA98C, 0
		jz	short loc_4B1474
		cmp	dword_5FA96C, 0
		jnz	short loc_4B147B

loc_4B1474:				; CODE XREF: .text:004B1469j
		xor	eax, eax
		jmp	loc_4B15B9
; ---------------------------------------------------------------------------

loc_4B147B:				; CODE XREF: .text:004B1472j
		mov	eax, [edi]	; int
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B148A
		xor	eax, eax
		jmp	loc_4B15B9
; ---------------------------------------------------------------------------

loc_4B148A:				; CODE XREF: .text:004B1481j
		test	edx, edx
		jnz	loc_4B1536
		mov	ebx, [eax+28Ch]
		sub	ebx, [eax+288h]
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B14BB
		mov	eax, [edi]
		mov	edx, [edi]
		xor	esi, esi
		mov	eax, [eax+298h]
		add	eax, [edx+288h]
		jmp	short loc_4B14FC
; ---------------------------------------------------------------------------

loc_4B14BB:				; CODE XREF: .text:004B14A5j
		push	0		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4B14D3
		xor	eax, eax
		jmp	loc_4B15B9
; ---------------------------------------------------------------------------

loc_4B14D3:				; CODE XREF: .text:004B14CAj
		push	0		; mode
		push	ebx		; size
		mov	edx, [edi]
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	ebx, eax
		jz	short loc_4B14FA
		push	esi		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4B15B9
; ---------------------------------------------------------------------------

loc_4B14FA:				; CODE XREF: .text:004B14EAj
		mov	eax, esi

loc_4B14FC:				; CODE XREF: .text:004B14B9j
		push	ebx		; n
		push	eax		; s2
		mov	edx, [edi]
		mov	eax, [edi]
		mov	ecx, [edx+288h]
		add	ecx, dword_5FA96C
		sub	ecx, [eax]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		mov	ebx, eax
		test	esi, esi
		jz	short loc_4B1526
		push	esi		; data
		call	Memfree
		pop	ecx

loc_4B1526:				; CODE XREF: .text:004B151Dj
		xor	eax, eax
		test	ebx, ebx
		jz	loc_4B15B9
		inc	eax
		jmp	loc_4B15B9
; ---------------------------------------------------------------------------

loc_4B1536:				; CODE XREF: .text:004B148Cj
		dec	edx
		jnz	short loc_4B15B7
		mov	eax, [edi]
		mov	ebx, [eax+28Ch]
		mov	edx, [eax+288h]
		sub	ebx, edx
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B1571
		push	ebx		; n
		mov	eax, edx
		add	eax, dword_5FA96C
		push	eax		; src
		mov	ecx, [edi]
		mov	eax, [ecx+298h]
		add	eax, edx
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4B15B0
; ---------------------------------------------------------------------------

loc_4B1571:				; CODE XREF: .text:004B1550j
		call	Suspendallthreads
		push	20h		; mode
		push	ebx		; size
		mov	edx, [edi]
		mov	edx, [edx+288h]
		push	edx		; _addr
		mov	eax, [edi]
		add	edx, dword_5FA96C
		sub	edx, [eax]
		push	edx		; buf
		call	Writememory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		push	0		; keephittrace
		push	ebx		; size
		mov	ecx, [edi]
		mov	eax, [ecx+288h]
		push	eax		; base
		call	Removeanalysis
		add	esp, 0Ch

loc_4B15B0:				; CODE XREF: .text:004B156Fj
		mov	eax, 1
		jmp	short loc_4B15B9
; ---------------------------------------------------------------------------

loc_4B15B7:				; CODE XREF: .text:004B1537j
		xor	eax, eax

loc_4B15B9:				; CODE XREF: .text:004B1476j
					; .text:004B1485j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_4B15C0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B15C0:				; DATA XREF: .data:stru_552290o
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		cmp	dword_5FA98C, 0
		jnz	short loc_4B15D8
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B15D8:				; CODE XREF: .text:004B15D1j
		test	edx, edx
		jnz	short loc_4B160D
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jnz	short loc_4B15F7
		cmp	eax, 1
		jz	short loc_4B15F2
		cmp	eax, 3
		jnz	short loc_4B1605

loc_4B15F2:				; CODE XREF: .text:004B15EBj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B15F7:				; CODE XREF: .text:004B15E6j
		test	eax, eax
		jz	short loc_4B1600
		cmp	eax, 2
		jnz	short loc_4B1605

loc_4B1600:				; CODE XREF: .text:004B15F9j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B1605:				; CODE XREF: .text:004B15F0j
					; .text:004B15FEj
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B160D:				; CODE XREF: .text:004B15DAj
		dec	edx
		jnz	loc_4B16B4
		test	eax, eax
		jz	short loc_4B161D
		cmp	eax, 1
		jnz	short loc_4B1632

loc_4B161D:				; CODE XREF: .text:004B1616j
		push	1		; mode
		mov	edx, pd
		push	edx		; pd
		call	Copydumpselection
		add	esp, 8
		mov	ebx, eax
		jmp	short loc_4B1640
; ---------------------------------------------------------------------------

loc_4B1632:				; CODE XREF: .text:004B161Bj
		mov	eax, pd
		push	eax
		call	loc_4AFDD8
		pop	ecx
		mov	ebx, eax

loc_4B1640:				; CODE XREF: .text:004B1630j
		test	ebx, ebx
		jnz	short loc_4B1658
		push	offset aUnableToCopy_1 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4B16AF
; ---------------------------------------------------------------------------

loc_4B1658:				; CODE XREF: .text:004B1642j
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_4B1681
		push	ebx		; hMem
		call	GlobalFree
		push	offset aUnableToCopy_1 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4B16AF
; ---------------------------------------------------------------------------

loc_4B1681:				; CODE XREF: .text:004B1665j
		call	EmptyClipboard
		push	ebx		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_4B16AA
		push	ebx		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		test	eax, eax
		jz	short loc_4B16AA
		push	eax		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_4B16AA:				; CODE XREF: .text:004B1695j
					; .text:004B16A0j
		call	CloseClipboard

loc_4B16AF:				; CODE XREF: .text:004B1656j
					; .text:004B167Fj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B16B4:				; CODE XREF: .text:004B160Ej
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B16BC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B16BC:				; DATA XREF: .data:stru_552290o
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		cmp	dword_5FA98C, 0
		mov	eax, [ebp+14h]
		jnz	short loc_4B16D1
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B16D1:				; CODE XREF: .text:004B16CAj
		test	eax, eax
		jnz	short loc_4B16DD
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B16DD:				; CODE XREF: .text:004B16D3j
		dec	eax
		jnz	loc_4B17B1
		push	12h		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B170D
		push	offset aUnableToCopy_1 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B170D:				; CODE XREF: .text:004B16F4j
		push	ebx		; hMem
		call	GlobalLock
		test	eax, eax
		jnz	short loc_4B1734
		push	ebx		; hMem
		call	GlobalFree
		push	offset aUnableToCopy_1 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B1734:				; CODE XREF: .text:004B1715j
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx
		push	(offset	aS_08x_0+6) ; "%08X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	ebx		; hMem
		call	GlobalUnlock
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_4B177E
		push	ebx		; hMem
		call	GlobalFree
		push	offset aUnableToCopy_1 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4B17AC
; ---------------------------------------------------------------------------

loc_4B177E:				; CODE XREF: .text:004B1762j
		call	EmptyClipboard
		push	ebx		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_4B17A7
		push	ebx		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		test	eax, eax
		jz	short loc_4B17A7
		push	eax		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_4B17A7:				; CODE XREF: .text:004B1792j
					; .text:004B179Dj
		call	CloseClipboard

loc_4B17AC:				; CODE XREF: .text:004B177Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B17B1:				; CODE XREF: .text:004B16DEj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B17B8:				; DATA XREF: .data:stru_552290o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		jz	short loc_4B17D9
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B17E0

loc_4B17D9:				; CODE XREF: .text:004B17CBj
		xor	eax, eax
		jmp	loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B17E0:				; CODE XREF: .text:004B17D7j
		mov	ecx, pd
		mov	edx, [ecx]
		cmp	edx, userspacelimit
		jb	short loc_4B17F7
		xor	eax, eax
		jmp	loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B17F7:				; CODE XREF: .text:004B17EEj
		test	eax, eax
		jnz	short loc_4B184C
		mov	ecx, hwollymain
		push	ecx		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_4B1812
		xor	eax, eax
		jmp	loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B1812:				; CODE XREF: .text:004B1809j
		push	1		; uFormat
		call	GetClipboardData
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4B1829
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_4B1835
; ---------------------------------------------------------------------------

loc_4B1829:				; CODE XREF: .text:004B1820j
		mov	ecx, [ebp-14h]
		push	ecx		; hMem
		call	GlobalSize
		mov	[ebp-8], eax

loc_4B1835:				; CODE XREF: .text:004B1827j
		call	CloseClipboard
		xor	eax, eax
		cmp	dword ptr [ebp-8], 0
		jz	loc_4B1A6C
		inc	eax
		jmp	loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B184C:				; CODE XREF: .text:004B17F9j
		dec	eax
		jnz	loc_4B1A6A
		mov	edx, hwollymain
		push	edx		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_4B186A
		xor	eax, eax
		jmp	loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B186A:				; CODE XREF: .text:004B1861j
		push	1		; uFormat
		call	GetClipboardData
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_4B1A5E
		mov	edx, [ebp-14h]
		push	edx		; hMem
		call	GlobalLock
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4B1A5E
		push	0
		mov	eax, pd
		push	eax
		call	loc_4BD294
		add	esp, 8
		mov	eax, pd
		mov	edx, [eax+28Ch]
		mov	ecx, [eax+288h]	; int
		sub	edx, ecx
		mov	[ebp-0Ch], edx
		mov	edx, [eax+298h]	; int
		test	edx, edx
		jz	short loc_4B18CC
		xor	eax, eax
		mov	[ebp-10h], eax
		mov	edi, edx
		add	edi, ecx
		jmp	short loc_4B193E
; ---------------------------------------------------------------------------

loc_4B18CC:				; CODE XREF: .text:004B18BFj
		push	0		; flags
		mov	eax, [ebp-0Ch]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4B18F8
		mov	edx, [ebp-14h]
		push	edx		; hMem
		call	GlobalUnlock
		call	CloseClipboard
		xor	eax, eax
		jmp	loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B18F8:				; CODE XREF: .text:004B18E1j
		push	0		; mode
		mov	ecx, pd
		mov	edx, [ebp-0Ch]
		push	edx		; size
		mov	eax, [ecx+288h]
		push	eax		; _addr
		mov	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-0Ch]
		jz	short loc_4B193B
		mov	ecx, [ebp-10h]
		push	ecx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-14h]
		push	eax		; hMem
		call	GlobalUnlock
		call	CloseClipboard
		xor	eax, eax
		jmp	loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B193B:				; CODE XREF: .text:004B191Aj
		mov	edi, [ebp-10h]

loc_4B193E:				; CODE XREF: .text:004B18CAj
		mov	eax, [ebp-14h]
		push	eax		; hMem
		call	GlobalSize
		mov	[ebp-8], eax
		xor	edx, edx
		mov	[ebp-4], edx
		xor	esi, esi
		mov	eax, ebx
		mov	[ebp-18h], eax
		jmp	short loc_4B19C5
; ---------------------------------------------------------------------------

loc_4B1958:				; CODE XREF: .text:004B19D4j
		mov	edx, [ebp-18h]
		xor	ebx, ebx
		mov	bl, [edx]
		cmp	ebx, 3Fh
		jnz	short loc_4B1967
		inc	esi
		jmp	short loc_4B19BF
; ---------------------------------------------------------------------------

loc_4B1967:				; CODE XREF: .text:004B1962j
		push	ebx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jz	short loc_4B1977
		sub	ebx, 30h
		jmp	short loc_4B1993
; ---------------------------------------------------------------------------

loc_4B1977:				; CODE XREF: .text:004B1970j
		cmp	ebx, 41h
		jl	short loc_4B1986
		cmp	ebx, 46h
		jg	short loc_4B1986
		add	ebx, 0FFFFFFC9h
		jmp	short loc_4B1993
; ---------------------------------------------------------------------------

loc_4B1986:				; CODE XREF: .text:004B197Aj
					; .text:004B197Fj
		cmp	ebx, 61h
		jl	short loc_4B19BF
		cmp	ebx, 66h
		jg	short loc_4B19BF
		add	ebx, 0FFFFFFA9h

loc_4B1993:				; CODE XREF: .text:004B1975j
					; .text:004B1984j
		test	esi, 1
		jnz	short loc_4B19AF
		mov	eax, esi
		shr	eax, 1
		shl	ebx, 4
		mov	dl, [edi+eax]
		and	dl, 0Fh
		or	dl, bl
		mov	[edi+eax], dl
		jmp	short loc_4B19BE
; ---------------------------------------------------------------------------

loc_4B19AF:				; CODE XREF: .text:004B1999j
		mov	eax, esi
		shr	eax, 1
		mov	dl, [edi+eax]
		and	dl, 0F0h
		or	dl, bl
		mov	[edi+eax], dl

loc_4B19BE:				; CODE XREF: .text:004B19ADj
		inc	esi

loc_4B19BF:				; CODE XREF: .text:004B1965j
					; .text:004B1989j ...
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-18h]

loc_4B19C5:				; CODE XREF: .text:004B1956j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jge	short loc_4B19D6
		mov	eax, [ebp-0Ch]
		add	eax, eax
		cmp	esi, eax
		jb	short loc_4B1958

loc_4B19D6:				; CODE XREF: .text:004B19CBj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4B1A55
		call	Suspendallthreads
		push	20h		; mode
		mov	ecx, pd
		mov	edx, [ebp-0Ch]
		push	edx		; size
		mov	eax, [ecx+288h]
		push	eax		; _addr
		mov	edx, [ebp-10h]
		push	edx		; buf
		call	Writememory
		add	esp, 10h
		mov	eax, pd
		push	0		; keephittrace
		mov	ecx, [ebp-0Ch]
		push	ecx		; size
		mov	edx, [eax+288h]
		push	edx		; base
		call	Removeanalysis
		add	esp, 0Ch
		mov	ecx, [ebp-0Ch]
		mov	eax, pd
		push	ecx
		mov	ecx, pd
		mov	edx, [eax+288h]
		push	edx
		mov	eax, [ecx+288h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads
		mov	edx, [ebp-10h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4B1A55:				; CODE XREF: .text:004B19DAj
		mov	ecx, [ebp-14h]
		push	ecx		; hMem
		call	GlobalUnlock

loc_4B1A5E:				; CODE XREF: .text:004B1878j
					; .text:004B188Bj
		call	CloseClipboard
		mov	eax, 1
		jmp	short loc_4B1A6C
; ---------------------------------------------------------------------------

loc_4B1A6A:				; CODE XREF: .text:004B184Dj
		xor	eax, eax

loc_4B1A6C:				; CODE XREF: .text:004B17DBj
					; .text:004B17F2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4B1A74
loc_4B1A74:				; DATA XREF: .text:004BECA7o
					; .text:loc_4C003Fo ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF1F0h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, offset pd
		mov	edi, [ebp+10h]
		mov	edx, [ebp+14h]
		jz	short loc_4B1A9C
		mov	eax, [esi]
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B1AA3

loc_4B1A9C:				; CODE XREF: .text:004B1A92j
		xor	eax, eax
		jmp	loc_4B1E40
; ---------------------------------------------------------------------------

loc_4B1AA3:				; CODE XREF: .text:004B1A9Aj
		mov	eax, [esi]
		mov	ecx, [eax]
		cmp	ecx, userspacelimit
		jb	short loc_4B1AB6
		xor	eax, eax
		jmp	loc_4B1E40
; ---------------------------------------------------------------------------

loc_4B1AB6:				; CODE XREF: .text:004B1AADj
		test	edx, edx
		jnz	short loc_4B1AC4
		mov	eax, 1
		jmp	loc_4B1E40
; ---------------------------------------------------------------------------

loc_4B1AC4:				; CODE XREF: .text:004B1AB8j
		dec	edx
		jnz	loc_4B1E3E
		mov	ebx, [eax+28Ch]
		sub	ebx, [eax+288h]
		cmp	ebx, 400h
		jbe	short loc_4B1AE4
		mov	ebx, 400h

loc_4B1AE4:				; CODE XREF: .text:004B1ADDj
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B1B37
		push	ebx		; n
		mov	eax, [esi]
		mov	ecx, [esi]
		mov	edx, [eax+298h]
		lea	eax, [ebp-608h]
		add	edx, [ecx+288h]
		push	edx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [esi]
		mov	ecx, [edx+288h]
		push	ecx
		push	offset aEditFileAtOffs ; "Edit file at offset %08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-208h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4B1BDF
; ---------------------------------------------------------------------------

loc_4B1B37:				; CODE XREF: .text:004B1AEBj
		push	0		; mode
		push	ebx		; size
		mov	edx, [esi]
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		lea	eax, [ebp-608h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	ebx, eax
		jz	short loc_4B1B5D
		xor	eax, eax
		jmp	loc_4B1E40
; ---------------------------------------------------------------------------

loc_4B1B5D:				; CODE XREF: .text:004B1B54j
		mov	edx, [esi]
		mov	ecx, [edx+8]
		and	ecx, 3FFFFFh
		cmp	ecx, 0C0000h
		jnz	short loc_4B1B92
		push	offset aEditCodeAtAddr ; "Edit code at address "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-208h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B1BB2
; ---------------------------------------------------------------------------

loc_4B1B92:				; CODE XREF: .text:004B1B6Ej
		push	offset aEditDataAtAd_0 ; "Edit data at address "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-208h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B1BB2:				; CODE XREF: .text:004B1B90j
		mov	ecx, 100h
		lea	edx, [ebp-208h]
		sub	ecx, eax
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [esi]
		mov	ecx, [eax+288h]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_4B1BDF:				; CODE XREF: .text:004B1B32j
		mov	[ebp-0E10h], ebx
		mov	eax, [esi]
		mov	edx, [eax]
		add	edx, [eax+4]
		sub	edx, [eax+288h]
		mov	[ebp-0E0Ch], edx
		cmp	dword ptr [ebp-0E0Ch], 400h
		jbe	short loc_4B1C0E
		mov	dword ptr [ebp-0E0Ch], 400h

loc_4B1C0E:				; CODE XREF: .text:004B1C02j
		push	ebx		; n
		lea	ecx, [ebp-608h]
		push	ecx		; src
		lea	eax, [ebp-0E08h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	edx, [ebp-0A08h]
		push	ebx		; n
		push	0FFh		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, dword_5FA960
		cmp	eax, 0A0000h
		jz	short loc_4B1C5B
		cmp	eax, 0B0000h
		jz	short loc_4B1C5B
		cmp	eax, 0C0000h
		jz	short loc_4B1C5B
		cmp	eax, 0D0000h
		jnz	short loc_4B1C62

loc_4B1C5B:				; CODE XREF: .text:004B1C44j
					; .text:004B1C4Bj ...
		mov	edx, 2
		jmp	short loc_4B1C67
; ---------------------------------------------------------------------------

loc_4B1C62:				; CODE XREF: .text:004B1C59j
		mov	edx, 1

loc_4B1C67:				; CODE XREF: .text:004B1C60j
		mov	eax, edi
		and	eax, 0F00h
		cmp	eax, 400h
		jnz	short loc_4B1C7C
		mov	ebx, 400h
		jmp	short loc_4B1CCC
; ---------------------------------------------------------------------------

loc_4B1C7C:				; CODE XREF: .text:004B1C73j
		cmp	eax, 500h
		jnz	short loc_4B1C8A
		mov	ebx, 500h
		jmp	short loc_4B1CCC
; ---------------------------------------------------------------------------

loc_4B1C8A:				; CODE XREF: .text:004B1C81j
		cmp	eax, 100h
		jnz	short loc_4B1C98
		mov	ebx, 100h
		jmp	short loc_4B1CCC
; ---------------------------------------------------------------------------

loc_4B1C98:				; CODE XREF: .text:004B1C8Fj
		cmp	eax, 800h
		jnz	short loc_4B1CA6
		mov	ebx, 800h
		jmp	short loc_4B1CCC
; ---------------------------------------------------------------------------

loc_4B1CA6:				; CODE XREF: .text:004B1C9Dj
		mov	eax, dword_5FA960
		cmp	eax, 30000h
		jnz	short loc_4B1CB9
		mov	ebx, 400h
		jmp	short loc_4B1CCC
; ---------------------------------------------------------------------------

loc_4B1CB9:				; CODE XREF: .text:004B1CB0j
		cmp	eax, 40000h
		jnz	short loc_4B1CC7
		mov	ebx, 500h
		jmp	short loc_4B1CCC
; ---------------------------------------------------------------------------

loc_4B1CC7:				; CODE XREF: .text:004B1CBEj
		mov	ebx, 100h

loc_4B1CCC:				; CODE XREF: .text:004B1C7Aj
					; .text:004B1C88j ...
		lea	eax, [ebp-8]
		push	eax		; coord
		push	edx		; column
		mov	edx, [esi]
		add	edx, 18h
		push	edx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B1CEC
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_4B1CEC:				; CODE XREF: .text:004B1CE1j
		push	ebx		; mode
		mov	ecx, letter
		mov	eax, [esi]
		mov	edx, [eax+24Ch]
		push	edx		; fi
		mov	eax, [ebp-4]
		push	eax		; y
		lea	eax, [ebp-0E10h]
		mov	edx, [ebp-8]
		push	edx		; x
		push	ecx		; letter
		push	eax		; hstr
		lea	edx, [ebp-208h]
		push	edx		; _title
		mov	ecx, [ebp+8]
		mov	eax, [ecx+22Ch]
		push	eax		; hparent
		call	Binaryedit
		add	esp, 20h
		test	eax, eax
		jle	short loc_4B1D32
		cmp	dword ptr [ebp-0E10h], 0
		jnz	short loc_4B1D39

loc_4B1D32:				; CODE XREF: .text:004B1D27j
		xor	eax, eax
		jmp	loc_4B1E40
; ---------------------------------------------------------------------------

loc_4B1D39:				; CODE XREF: .text:004B1D30j
		mov	eax, [esi]
		mov	edx, [eax]
		add	edx, [eax+4]
		sub	edx, [eax+288h]
		cmp	edx, [ebp-0E10h]
		jnb	short loc_4B1D65
		mov	ecx, [esi]
		mov	edx, [esi]
		mov	eax, [ecx]
		mov	ecx, [esi]
		add	eax, [edx+4]
		sub	eax, [ecx+288h]
		mov	[ebp-0E10h], eax

loc_4B1D65:				; CODE XREF: .text:004B1D4Cj
		xor	edi, edi
		lea	eax, [ebp-0A08h]
		lea	edx, [ebp-608h]
		jmp	short loc_4B1D8A
; ---------------------------------------------------------------------------

loc_4B1D75:				; CODE XREF: .text:004B1D90j
		mov	cl, [eax]
		mov	bl, [eax-400h]
		not	cl
		and	bl, [eax]
		and	cl, [edx]
		or	cl, bl
		inc	eax
		mov	[edx], cl
		inc	edi
		inc	edx

loc_4B1D8A:				; CODE XREF: .text:004B1D73j
		cmp	edi, [ebp-0E10h]
		jb	short loc_4B1D75
		push	0
		mov	eax, [esi]
		push	eax
		call	loc_4BD294
		add	esp, 8
		mov	eax, [esi]
		mov	edx, [eax+298h]
		test	edx, edx
		jz	short loc_4B1DCA
		mov	ecx, [ebp-0E10h]
		push	ecx		; n
		lea	ecx, [ebp-608h]
		push	ecx		; src
		add	edx, [eax+288h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4B1E37
; ---------------------------------------------------------------------------

loc_4B1DCA:				; CODE XREF: .text:004B1DA9j
		call	Suspendallthreads
		push	20h		; mode
		mov	eax, [ebp-0E10h]
		push	eax		; size
		mov	edx, [esi]
		mov	eax, [edx+288h]
		push	eax		; _addr
		lea	edx, [ebp-608h]
		push	edx		; buf
		call	Writememory
		add	esp, 10h
		push	0		; keephittrace
		mov	ecx, [ebp-0E10h]
		push	ecx		; size
		mov	eax, [esi]
		mov	edx, [eax+288h]
		push	edx		; base
		call	Removeanalysis
		add	esp, 0Ch
		mov	ecx, [ebp-0E10h]
		push	ecx
		mov	eax, [esi]
		mov	edx, [eax+288h]
		push	edx
		mov	ecx, [esi]
		mov	eax, [ecx+288h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads

loc_4B1E37:				; CODE XREF: .text:004B1DC8j
		mov	eax, 1
		jmp	short loc_4B1E40
; ---------------------------------------------------------------------------

loc_4B1E3E:				; CODE XREF: .text:004B1AC5j
		xor	eax, eax

loc_4B1E40:				; CODE XREF: .text:004B1A9Ej
					; .text:004B1AB1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4B1E48
loc_4B1E48:				; DATA XREF: .text:004BED1Do
					; .text:004BED7Do ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDD8h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+10h]
		jz	short loc_4B1E6C
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B1E73

loc_4B1E6C:				; CODE XREF: .text:004B1E5Ej
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1E73:				; CODE XREF: .text:004B1E6Aj
		mov	ecx, pd
		mov	edx, [ecx]
		cmp	edx, userspacelimit
		jb	short loc_4B1E8A
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1E8A:				; CODE XREF: .text:004B1E81j
		mov	ecx, eax
		and	ecx, 0FFh
		mov	[ebp-4], ecx
		and	eax, 3F0000h
		mov	[ebp-8], eax
		mov	eax, dword_5FA960
		cmp	eax, 0C0000h
		jz	short loc_4B1EB4
		cmp	eax, 0D0000h
		jnz	loc_4B1F92

loc_4B1EB4:				; CODE XREF: .text:004B1EA7j
		cmp	decode,	0
		jnz	short loc_4B1EC4
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1EC4:				; CODE XREF: .text:004B1EBBj
		mov	eax, pd
		mov	ecx, decode
		mov	edx, [eax+288h]
		sub	edx, [eax]
		mov	eax, 1
		inc	edx
		add	ecx, edx
		jmp	short loc_4B1EF5
; ---------------------------------------------------------------------------

loc_4B1EE1:				; CODE XREF: .text:004B1EFEj
		xor	ebx, ebx
		mov	bl, [ecx]
		and	ebx, 1Fh
		cmp	ebx, 1
		jz	short loc_4B1EF2
		cmp	ebx, 2
		jnz	short loc_4B1F00

loc_4B1EF2:				; CODE XREF: .text:004B1EEBj
		inc	ecx
		inc	edx
		inc	eax

loc_4B1EF5:				; CODE XREF: .text:004B1EDFj
		mov	ebx, pd
		cmp	edx, [ebx+4]
		jb	short loc_4B1EE1

loc_4B1F00:				; CODE XREF: .text:004B1EF0j
		mov	edx, pd
		mov	ecx, [edx+288h]
		sub	ecx, [edx]
		mov	edx, decode
		xor	ebx, ebx
		mov	bl, [edx+ecx]
		and	ebx, 1Fh
		cmp	ebx, 4
		jz	short loc_4B1F2B
		cmp	ebx, 5
		jz	short loc_4B1F2B
		cmp	ebx, 6
		jnz	short loc_4B1F54

loc_4B1F2B:				; CODE XREF: .text:004B1F1Fj
					; .text:004B1F24j
		mov	dword ptr [ebp-0Ch], 70000h
		cmp	eax, 2
		jnz	short loc_4B1F41
		mov	esi, 2
		jmp	loc_4B1FC2
; ---------------------------------------------------------------------------

loc_4B1F41:				; CODE XREF: .text:004B1F35j
		cmp	eax, 4
		jnz	short loc_4B1F4D
		mov	esi, 4
		jmp	short loc_4B1FC2
; ---------------------------------------------------------------------------

loc_4B1F4D:				; CODE XREF: .text:004B1F44j
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1F54:				; CODE XREF: .text:004B1F29j
		cmp	ebx, 0Dh
		jnz	short loc_4B1F8B
		mov	dword ptr [ebp-0Ch], 80000h
		cmp	eax, 4
		jnz	short loc_4B1F6C
		mov	esi, 4
		jmp	short loc_4B1FC2
; ---------------------------------------------------------------------------

loc_4B1F6C:				; CODE XREF: .text:004B1F63j
		cmp	eax, 8
		jnz	short loc_4B1F78
		mov	esi, 8
		jmp	short loc_4B1FC2
; ---------------------------------------------------------------------------

loc_4B1F78:				; CODE XREF: .text:004B1F6Fj
		cmp	eax, 0Ah
		jnz	short loc_4B1F84
		mov	esi, 0Ah
		jmp	short loc_4B1FC2
; ---------------------------------------------------------------------------

loc_4B1F84:				; CODE XREF: .text:004B1F7Bj
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1F8B:				; CODE XREF: .text:004B1F57j
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1F92:				; CODE XREF: .text:004B1EAEj
		mov	eax, pd
		mov	edx, [eax]
		mov	ecx, [eax+288h]
		add	ecx, [ebp-4]
		add	edx, [eax+4]
		cmp	edx, ecx
		jnb	short loc_4B1FB0
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1FB0:				; CODE XREF: .text:004B1FA7j
		mov	edx, dword_5FA960
		mov	[ebp-0Ch], edx
		mov	esi, [eax+8]
		and	esi, 0FFh

loc_4B1FC2:				; CODE XREF: .text:004B1F3Cj
					; .text:004B1F4Bj ...
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4B2009
		cmp	esi, [ebp-4]
		jz	short loc_4B1FD4
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1FD4:				; CODE XREF: .text:004B1FCBj
		cmp	dword ptr [ebp-0Ch], 80000h
		jnz	short loc_4B1FE6
		cmp	dword ptr [ebp-8], 80000h
		jnz	short loc_4B1FF8

loc_4B1FE6:				; CODE XREF: .text:004B1FDBj
		cmp	dword ptr [ebp-0Ch], 80000h
		jz	short loc_4B1FFF
		cmp	dword ptr [ebp-8], 80000h
		jnz	short loc_4B1FFF

loc_4B1FF8:				; CODE XREF: .text:004B1FE4j
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B1FFF:				; CODE XREF: .text:004B1FEDj
					; .text:004B1FF6j
		mov	eax, 1
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B2009:				; CODE XREF: .text:004B1FC6j
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4B241A
		mov	eax, pd
		mov	edx, [eax+298h]
		test	edx, edx
		jz	short loc_4B2038
		push	esi		; n
		add	edx, [eax+288h]
		push	edx		; src
		lea	ecx, [ebp-28h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4B205E
; ---------------------------------------------------------------------------

loc_4B2038:				; CODE XREF: .text:004B2020j
		mov	eax, pd
		push	0		; mode
		push	esi		; size
		lea	ecx, [ebp-28h]
		mov	edx, [eax+288h]
		push	edx		; _addr
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, eax
		jz	short loc_4B205E
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B205E:				; CODE XREF: .text:004B2036j
					; .text:004B2055j
		cmp	dword ptr [ebp-0Ch], 50000h
		jnz	short loc_4B2070
		mov	dword ptr [ebp-10h], 200h
		jmp	short loc_4B20AD
; ---------------------------------------------------------------------------

loc_4B2070:				; CODE XREF: .text:004B2065j
		cmp	dword ptr [ebp-0Ch], 60000h
		jnz	short loc_4B2082
		mov	dword ptr [ebp-10h], 300h
		jmp	short loc_4B20AD
; ---------------------------------------------------------------------------

loc_4B2082:				; CODE XREF: .text:004B2077j
		cmp	dword ptr [ebp-0Ch], 70000h
		jnz	short loc_4B2094
		mov	dword ptr [ebp-10h], 100h
		jmp	short loc_4B20AD
; ---------------------------------------------------------------------------

loc_4B2094:				; CODE XREF: .text:004B2089j
		cmp	dword ptr [ebp-0Ch], 80000h
		jnz	short loc_4B20A6
		mov	dword ptr [ebp-10h], 700h
		jmp	short loc_4B20AD
; ---------------------------------------------------------------------------

loc_4B20A6:				; CODE XREF: .text:004B209Bj
		mov	dword ptr [ebp-10h], 100h

loc_4B20AD:				; CODE XREF: .text:004B206Ej
					; .text:004B2080j ...
		cmp	esi, 2
		jnz	short loc_4B20B8
		or	dword ptr [ebp-10h], 2
		jmp	short loc_4B20D7
; ---------------------------------------------------------------------------

loc_4B20B8:				; CODE XREF: .text:004B20B0j
		cmp	esi, 4
		jnz	short loc_4B20C3
		or	dword ptr [ebp-10h], 4
		jmp	short loc_4B20D7
; ---------------------------------------------------------------------------

loc_4B20C3:				; CODE XREF: .text:004B20BBj
		cmp	esi, 8
		jnz	short loc_4B20CE
		or	dword ptr [ebp-10h], 8
		jmp	short loc_4B20D7
; ---------------------------------------------------------------------------

loc_4B20CE:				; CODE XREF: .text:004B20C6j
		cmp	esi, 0Ah
		jnz	short loc_4B20D7
		or	dword ptr [ebp-10h], 0Ah

loc_4B20D7:				; CODE XREF: .text:004B20B6j
					; .text:004B20C1j ...
		push	offset aEdit_2	; "Edit	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-228h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		cmp	dword ptr [ebp-0Ch], 80000h
		jnz	loc_4B219D
		cmp	esi, 8
		jnz	short loc_4B213B
		push	offset a64BitFloat_0 ; "64-bit float "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-228h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_4B21FA
; ---------------------------------------------------------------------------

loc_4B213B:				; CODE XREF: .text:004B2109j
		cmp	esi, 0Ah
		jnz	short loc_4B2170
		push	offset a80BitFloat_0 ; "80-bit float "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-228h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_4B21FA
; ---------------------------------------------------------------------------

loc_4B2170:				; CODE XREF: .text:004B213Ej
		push	offset a32BitFloat ; "32-bit float "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-228h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_4B21FA
; ---------------------------------------------------------------------------

loc_4B219D:				; CODE XREF: .text:004B2100j
		cmp	esi, 2
		jnz	short loc_4B21CF
		push	offset aWord_2	; "word	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-228h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_4B21FA
; ---------------------------------------------------------------------------

loc_4B21CF:				; CODE XREF: .text:004B21A0j
		push	offset aDoubleword_1 ; "doubleword "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-228h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_4B21FA:				; CODE XREF: .text:004B2136j
					; .text:004B216Bj ...
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B2236
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx
		push	(offset	aEditFileAtOffs+14h) ; src
		call	_T
		pop	ecx
		push	eax		; format
		add	edi, edi
		lea	eax, [ebp-228h]
		add	edi, eax
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4B2291
; ---------------------------------------------------------------------------

loc_4B2236:				; CODE XREF: .text:004B2206j
		push	(offset	a64BitFloat_0+14h) ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, edi
		mov	edx, 100h
		sub	edx, edi
		lea	eax, [ebp-228h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	edx, 100h
		lea	ecx, [ebp-228h]
		sub	edx, edi
		add	edi, edi
		push	0		; comment
		push	edx		; nsymb
		add	edi, ecx
		mov	eax, pd
		push	edi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, [eax+288h]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_4B2291:				; CODE XREF: .text:004B2234j
		lea	ecx, [ebp-18h]
		mov	eax, pd
		push	ecx		; coord
		add	eax, 18h
		push	1		; column
		push	eax		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B22B5
		or	edx, 0FFFFFFFFh
		mov	[ebp-14h], edx
		mov	[ebp-18h], edx

loc_4B22B5:				; CODE XREF: .text:004B22AAj
		cmp	esi, 4
		jnz	short loc_4B2300
		cmp	ebx, 5
		jz	short loc_4B2300
		mov	ecx, pd
		mov	eax, [ebp-10h]
		push	eax		; mode
		mov	eax, [ecx+24Ch]
		push	eax		; fi
		mov	eax, letter
		mov	edx, [ebp-14h]
		push	edx		; y
		lea	edx, [ebp-28h]
		mov	ecx, [ebp-18h]
		push	ecx		; x
		push	eax		; letter
		push	edx		; data
		lea	ecx, [ebp-228h]
		push	ecx		; _title
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hparent
		call	Getdword
		add	esp, 20h
		jmp	loc_4B2384
; ---------------------------------------------------------------------------

loc_4B2300:				; CODE XREF: .text:004B22B8j
					; .text:004B22BDj
		cmp	dword ptr [ebp-0Ch], 80000h
		jnz	short loc_4B2347
		mov	eax, pd
		mov	ecx, [ebp-10h]
		push	ecx		; mode
		mov	edx, [eax+24Ch]
		push	edx		; fi
		mov	edx, letter
		mov	ecx, [ebp-14h]
		push	ecx		; y
		lea	ecx, [ebp-28h]
		mov	eax, [ebp-18h]
		push	eax		; x
		push	edx		; letter
		push	ecx		; data
		lea	eax, [ebp-228h]
		push	eax		; _title
		mov	edx, [ebp+8]
		mov	ecx, [edx+22Ch]
		push	ecx		; hparent
		call	Getfloat
		add	esp, 20h
		jmp	short loc_4B2384
; ---------------------------------------------------------------------------

loc_4B2347:				; CODE XREF: .text:004B2307j
		mov	edx, pd
		mov	eax, [ebp-10h]
		push	eax		; mode
		mov	ecx, [edx+24Ch]
		push	ecx		; fi
		mov	ecx, letter
		mov	eax, [ebp-14h]
		push	eax		; y
		lea	eax, [ebp-28h]
		mov	edx, [ebp-18h]
		push	edx		; x
		push	ecx		; letter
		push	eax		; data
		lea	edx, [ebp-228h]
		push	edx		; _title
		mov	ecx, [ebp+8]
		mov	eax, [ecx+22Ch]
		push	eax		; hparent
		call	Getinteger
		add	esp, 20h

loc_4B2384:				; CODE XREF: .text:004B22FBj
					; .text:004B2345j
		test	eax, eax
		jg	short loc_4B238F
		xor	eax, eax
		jmp	loc_4B241C
; ---------------------------------------------------------------------------

loc_4B238F:				; CODE XREF: .text:004B2386j
		push	0
		mov	edx, pd
		push	edx
		call	loc_4BD294
		add	esp, 8
		mov	eax, pd
		mov	edx, [eax+298h]
		test	edx, edx
		jz	short loc_4B23C5
		push	esi		; n
		lea	ecx, [ebp-28h]
		push	ecx		; src
		add	edx, [eax+288h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4B2413
; ---------------------------------------------------------------------------

loc_4B23C5:				; CODE XREF: .text:004B23ADj
		call	Suspendallthreads
		mov	eax, pd
		push	20h		; mode
		push	esi		; size
		lea	ecx, [ebp-28h]
		mov	edx, [eax+288h]
		push	edx		; _addr
		push	ecx		; buf
		call	Writememory
		add	esp, 10h
		mov	eax, pd
		mov	ecx, pd
		push	esi
		mov	edx, [eax+288h]
		push	edx
		mov	eax, [ecx+288h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads

loc_4B2413:				; CODE XREF: .text:004B23C3j
		mov	eax, 1
		jmp	short loc_4B241C
; ---------------------------------------------------------------------------

loc_4B241A:				; CODE XREF: .text:004B200Dj
		xor	eax, eax

loc_4B241C:				; CODE XREF: .text:004B1E6Ej
					; .text:004B1E85j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B2424:				; DATA XREF: .data:stru_552290o
					; .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, pd
		test	eax, eax
		jz	short loc_4B2446
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B2446
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B244D

loc_4B2446:				; CODE XREF: .text:004B2438j
					; .text:004B243Ej
		xor	eax, eax
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B244D:				; CODE XREF: .text:004B2444j
		test	ebx, 80000000h
		jnz	short loc_4B2465
		cmp	dword_5FA98C, 0
		jnz	short loc_4B2465
		xor	eax, eax
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B2465:				; CODE XREF: .text:004B2453j
					; .text:004B245Cj
		test	ebx, 80000000h
		jz	short loc_4B2480
		mov	ecx, pd
		test	byte ptr [ecx+0Bh], 20h
		jnz	short loc_4B2480
		xor	eax, eax
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B2480:				; CODE XREF: .text:004B246Bj
					; .text:004B2477j
		mov	ecx, pd
		mov	eax, [ecx]
		cmp	eax, userspacelimit
		jb	short loc_4B2497
		xor	eax, eax
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B2497:				; CODE XREF: .text:004B248Ej
		test	edx, edx
		jnz	short loc_4B24D5
		cmp	dword_5FA960, 0C0000h
		jnz	short loc_4B24B3
		cmp	bl, 0FFh
		jnz	short loc_4B24B3
		xor	eax, eax
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B24B3:				; CODE XREF: .text:004B24A5j
					; .text:004B24AAj
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B24CB
		cmp	bl, 90h
		jnz	short loc_4B24CB
		xor	eax, eax
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B24CB:				; CODE XREF: .text:004B24BDj
					; .text:004B24C2j
		mov	eax, 1
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B24D5:				; CODE XREF: .text:004B2499j
		dec	edx
		jnz	loc_4B25F5
		push	0
		mov	edx, pd
		push	edx
		call	loc_4BD294
		add	esp, 8
		test	ebx, 80000000h
		jz	short loc_4B2501
		mov	eax, pd
		mov	edi, [eax]
		mov	esi, [eax+4]
		jmp	short loc_4B2516
; ---------------------------------------------------------------------------

loc_4B2501:				; CODE XREF: .text:004B24F3j
		mov	eax, pd
		mov	edx, [eax+288h]	; int
		mov	esi, [eax+28Ch]
		sub	esi, edx
		mov	edi, edx

loc_4B2516:				; CODE XREF: .text:004B24FFj
		mov	eax, pd
		mov	eax, [eax+298h]	; int
		test	eax, eax
		jz	short loc_4B253B
		push	esi		; n
		xor	edx, edx
		mov	dl, bl
		push	edx		; c
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		jmp	loc_4B25EE
; ---------------------------------------------------------------------------

loc_4B253B:				; CODE XREF: .text:004B2523j
		push	0		; flags
		push	esi		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4B2556
		xor	eax, eax
		jmp	loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B2556:				; CODE XREF: .text:004B254Dj
		push	esi		; n
		xor	edx, edx
		mov	dl, bl
		push	edx		; c
		mov	ecx, [ebp-4]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		call	Suspendallthreads
		mov	edx, 20h
		mov	eax, ebx
		cmp	al, 90h
		jz	short loc_4B257F
		cmp	al, 0CCh
		jz	short loc_4B257F
		add	edx, 0FFFFFFF0h

loc_4B257F:				; CODE XREF: .text:004B2576j
					; .text:004B257Aj
		or	edx, 0
		push	edx		; mode
		push	esi		; size
		push	edi		; _addr
		mov	ecx, [ebp-4]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h
		push	0		; keephittrace
		push	esi		; size
		push	edi		; base
		call	Removeanalysis
		add	esp, 0Ch
		push	esi
		push	edi
		push	edi		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads
		test	ebx, 80000000h
		jz	short loc_4B25E4
		mov	eax, pd
		cmp	dword ptr [eax+4A4h], 0
		jz	short loc_4B25E4
		push	esi		; n
		mov	ecx, pd
		mov	edx, [ebp-4]
		push	edx		; src
		mov	eax, [ecx+4A4h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4B25E4:				; CODE XREF: .text:004B25BAj
					; .text:004B25C8j
		mov	edx, [ebp-4]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4B25EE:				; CODE XREF: .text:004B2536j
		mov	eax, 1
		jmp	short loc_4B25F7
; ---------------------------------------------------------------------------

loc_4B25F5:				; CODE XREF: .text:004B24D6j
		xor	eax, eax

loc_4B25F7:				; CODE XREF: .text:004B2448j
					; .text:004B2460j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B2600:				; DATA XREF: .data:stru_552290o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, offset pd
		push	esi
		push	edi
		mov	eax, [ebx]
		mov	edx, [ebp+14h]
		test	eax, eax
		jz	short loc_4B2627
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B2627
		mov	ecx, [eax]
		cmp	ecx, userspacelimit
		jb	short loc_4B262E

loc_4B2627:				; CODE XREF: .text:004B2615j
					; .text:004B261Bj
		xor	eax, eax
		jmp	loc_4B2787
; ---------------------------------------------------------------------------

loc_4B262E:				; CODE XREF: .text:004B2625j
		test	edx, edx
		jnz	short loc_4B263C
		mov	eax, 1
		jmp	loc_4B2787
; ---------------------------------------------------------------------------

loc_4B263C:				; CODE XREF: .text:004B2630j
		dec	edx
		jnz	loc_4B2785
		mov	edi, [eax+288h]
		mov	edx, [eax+28Ch]
		mov	[ebp-8], edx
		mov	ecx, [eax]
		mov	[eax+290h], ecx
		mov	[eax+288h], ecx
		mov	edx, [eax]
		add	edx, [eax+4]
		mov	[eax+28Ch], edx
		mov	eax, dword_5FA960
		cmp	eax, 0C0000h
		jz	short loc_4B2682
		cmp	eax, 0D0000h
		jnz	loc_4B2710

loc_4B2682:				; CODE XREF: .text:004B2675j
		mov	eax, [ebx]
		mov	edx, [eax+4]
		cmp	edx, 10h
		jnb	short loc_4B2690
		mov	esi, [eax]
		jmp	short loc_4B2697
; ---------------------------------------------------------------------------

loc_4B2690:				; CODE XREF: .text:004B268Aj
		mov	esi, [eax]
		add	esi, edx
		sub	esi, 10h

loc_4B2697:				; CODE XREF: .text:004B268Ej
		mov	eax, [ebx]
		mov	eax, [eax+4E8h]
		test	eax, eax
		jz	short loc_4B26BB
		add	eax, esi
		mov	edx, [ebx]
		sub	eax, [edx]
		mov	ecx, [ebx]
		mov	edx, esi
		sub	edx, [ecx]
		mov	ecx, [ebx]
		mov	ecx, [ecx+4]
		sub	ecx, edx
		mov	[ebp-4], ecx
		jmp	short loc_4B26C8
; ---------------------------------------------------------------------------

loc_4B26BB:				; CODE XREF: .text:004B26A1j
		lea	eax, [ebp-4]
		push	eax		; psize
		push	esi		; _addr
		call	Finddecode
		add	esp, 8

loc_4B26C8:				; CODE XREF: .text:004B26B9j
		test	eax, eax
		jz	short loc_4B26FF
		mov	edx, [ebp-4]
		add	eax, edx
		cmp	dword ptr [ebp-4], 0
		jbe	short loc_4B26F2

loc_4B26D7:				; CODE XREF: .text:004B26F0j
		dec	dword ptr [ebp-4]
		dec	eax
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1
		jz	short loc_4B26EC
		cmp	edx, 2
		jnz	short loc_4B26F2

loc_4B26EC:				; CODE XREF: .text:004B26E5j
		cmp	dword ptr [ebp-4], 0
		ja	short loc_4B26D7

loc_4B26F2:				; CODE XREF: .text:004B26D5j
					; .text:004B26EAj
		add	esi, [ebp-4]
		mov	ecx, [ebx]
		mov	[ecx+294h], esi
		jmp	short loc_4B2729
; ---------------------------------------------------------------------------

loc_4B26FF:				; CODE XREF: .text:004B26CAj
		mov	eax, [ebx]
		mov	edx, [eax+28Ch]
		dec	edx
		mov	[eax+294h], edx
		jmp	short loc_4B2729
; ---------------------------------------------------------------------------

loc_4B2710:				; CODE XREF: .text:004B267Cj
		mov	eax, [ebx]
		mov	edx, [eax+28Ch]
		mov	ecx, [eax+8]
		and	ecx, 0FFh
		sub	edx, ecx
		mov	[eax+294h], edx

loc_4B2729:				; CODE XREF: .text:004B26FDj
					; .text:004B270Ej
		mov	eax, [ebx]
		mov	edx, [eax]
		cmp	edx, [eax+294h]
		jbe	short loc_4B273B
		mov	[eax+294h], edx

loc_4B273B:				; CODE XREF: .text:004B2733j
		xor	esi, esi
		mov	eax, [ebx]
		cmp	edi, [eax+288h]
		jz	short loc_4B2748
		inc	esi

loc_4B2748:				; CODE XREF: .text:004B2745j
		xor	edx, edx
		mov	ecx, [ebx]
		mov	eax, [ecx+28Ch]
		cmp	eax, [ebp-8]
		jz	short loc_4B275A
		add	edx, 2

loc_4B275A:				; CODE XREF: .text:004B2755j
		or	esi, edx
		mov	eax, [ebx]
		cmp	dword ptr [eax+708h], 0
		jz	short loc_4B2772
		push	esi
		push	eax
		call	dword ptr [eax+708h]
		add	esp, 8

loc_4B2772:				; CODE XREF: .text:004B2765j
		push	esi
		mov	edx, [ebx]
		push	edx
		call	loc_4B8860
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4B2787
; ---------------------------------------------------------------------------

loc_4B2785:				; CODE XREF: .text:004B263Dj
		xor	eax, eax

loc_4B2787:				; CODE XREF: .text:004B2629j
					; .text:004B2637j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B2790:				; DATA XREF: .data:stru_552290o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	ebx, offset pd
		push	esi
		mov	edx, [ebp+14h]
		mov	ecx, [ebp+10h]
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4B27D8
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4B27D8
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B27D8
		mov	eax, dword_5FA960
		cmp	eax, 0C0000h
		jz	short loc_4B27C6
		cmp	eax, 0D0000h
		jnz	short loc_4B27D8

loc_4B27C6:				; CODE XREF: .text:004B27BDj
		cmp	decode,	0
		jz	short loc_4B27D8
		cmp	dword_5FA978, 0
		jnz	short loc_4B27DF

loc_4B27D8:				; CODE XREF: .text:004B27A5j
					; .text:004B27ABj ...
		xor	eax, eax
		jmp	loc_4B28D6
; ---------------------------------------------------------------------------

loc_4B27DF:				; CODE XREF: .text:004B27D6j
		test	edx, edx
		jnz	short loc_4B281C
		test	ecx, ecx
		jnz	short loc_4B27FA
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B27FA
		xor	eax, eax
		jmp	loc_4B28D6
; ---------------------------------------------------------------------------

loc_4B27FA:				; CODE XREF: .text:004B27E5j
					; .text:004B27F1j
		cmp	ecx, 1
		jnz	short loc_4B2812
		cmp	dword_5FA960, 0D0000h
		jz	short loc_4B2812
		xor	eax, eax
		jmp	loc_4B28D6
; ---------------------------------------------------------------------------

loc_4B2812:				; CODE XREF: .text:004B27FDj
					; .text:004B2809j
		mov	eax, 1
		jmp	loc_4B28D6
; ---------------------------------------------------------------------------

loc_4B281C:				; CODE XREF: .text:004B27E1j
		dec	edx
		jnz	loc_4B28D4
		mov	eax, [ebx]
		mov	ecx, [eax+288h]
		mov	edx, [eax+28Ch]
		mov	[ebp-4], edx
		mov	edx, amin
		mov	[eax+290h], edx
		mov	[eax+288h], edx
		mov	edx, dword_5FA978
		mov	[eax+294h], edx
		mov	edx, dword_5FA978
		sub	edx, [eax]
		inc	edx
		mov	eax, edx
		mov	edx, decode
		add	edx, eax
		jmp	short loc_4B2872
; ---------------------------------------------------------------------------

loc_4B2867:				; CODE XREF: .text:004B2877j
		movzx	esi, byte ptr [edx]
		and	esi, 1Fh
		dec	esi
		jnz	short loc_4B2879
		inc	eax
		inc	edx

loc_4B2872:				; CODE XREF: .text:004B2865j
		mov	esi, [ebx]
		cmp	eax, [esi+4]
		jb	short loc_4B2867

loc_4B2879:				; CODE XREF: .text:004B286Ej
		mov	edx, [ebx]
		mov	esi, [edx+4]
		cmp	eax, esi
		jbe	short loc_4B2884
		mov	eax, esi

loc_4B2884:				; CODE XREF: .text:004B2880j
		add	eax, [edx]
		mov	[edx+28Ch], eax
		xor	esi, esi
		cmp	ecx, [edx+288h]
		jz	short loc_4B2897
		inc	esi

loc_4B2897:				; CODE XREF: .text:004B2894j
		xor	eax, eax
		mov	edx, [ebx]
		mov	ecx, [edx+28Ch]
		cmp	ecx, [ebp-4]
		jz	short loc_4B28A9
		add	eax, 2

loc_4B28A9:				; CODE XREF: .text:004B28A4j
		or	esi, eax
		mov	eax, [ebx]
		cmp	dword ptr [eax+708h], 0
		jz	short loc_4B28C1
		push	esi
		push	eax
		call	dword ptr [eax+708h]
		add	esp, 8

loc_4B28C1:				; CODE XREF: .text:004B28B4j
		push	esi
		mov	edx, [ebx]
		push	edx
		call	loc_4B8860
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4B28D6
; ---------------------------------------------------------------------------

loc_4B28D4:				; CODE XREF: .text:004B281Dj
		xor	eax, eax

loc_4B28D6:				; CODE XREF: .text:004B27DAj
					; .text:004B27F5j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B28DC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B28DC:				; DATA XREF: .data:stru_552290o
					; .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		mov	edx, dword_5FA988
		test	edx, edx
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+14h]
		jz	short loc_4B2903
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B290A

loc_4B2903:				; CODE XREF: .text:004B28F3j
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B290A:				; CODE XREF: .text:004B2901j
		mov	eax, pd
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B291C
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B291C:				; CODE XREF: .text:004B2913j
		cmp	dword_5FA98C, 0
		jnz	short loc_4B292C
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B292C:				; CODE XREF: .text:004B2923j
		lea	ecx, [ebp-8]
		push	ecx		; int
		lea	ecx, [ebp-4]
		push	ecx		; int
		mov	ecx, [eax+28Ch]
		push	ecx		; int
		mov	eax, [eax+288h]
		push	eax		; arglist
		push	0		; int
		push	edx		; int
		call	loc_4B024C
		add	esp, 18h
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4B295A
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B295A:				; CODE XREF: .text:004B2951j
		test	esi, esi
		jnz	short loc_4B2968
		mov	eax, 1
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B2968:				; CODE XREF: .text:004B295Cj
		dec	esi
		jnz	loc_4B2BE5
		push	0		; strname
		mov	eax, pd
		mov	edx, [ebp-8]
		push	edx		; sel1
		mov	ecx, [ebp-4]
		push	ecx		; sel0
		mov	ecx, dword_5FA988
		mov	edx, [eax+8]
		add	ecx, 4Ch
		push	edx		; dumptype
		push	ecx		; path
		push	0		; size
		push	0		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4B29B9
		push	offset aUnableToLoca_2 ; "Unable to locate executable file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B29B9:				; CODE XREF: .text:004B299Ej
		mov	edx, dword_5FA988
		add	edx, 4Ch
		push	edx		; path
		call	Findfiledump
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4B29E8
		push	offset aUnableToLoca_2 ; "Unable to locate executable file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B29E8:				; CODE XREF: .text:004B29CDj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4B29F5
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B29F5:				; CODE XREF: .text:004B29ECj
		mov	eax, dword_5FA988
		mov	edx, pd
		mov	ecx, [eax+47Ch]
		add	ecx, [eax+480h]
		cmp	ecx, [edx+288h]
		jbe	short loc_4B2A5A
		mov	eax, dword_5FA988
		mov	ecx, [eax+47Ch]
		cmp	ecx, [edx+28Ch]
		jnb	short loc_4B2A5A
		push	offset aYouAreGoingT_8 ; "You are going	to copy	modifications bac"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aCopyToImportAd ; "Copy to Import Address Table"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6B8 ; cond
		call	Condyesno
		add	esp, 0Ch
		mov	ebx, eax
		cmp	ebx, 6
		jz	short loc_4B2A5A
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B2A5A:				; CODE XREF: .text:004B2A12j
					; .text:004B2A25j ...
		mov	eax, pd
		push	0		; int
		push	0		; int
		mov	edx, [eax+28Ch]
		push	edx		; int
		mov	ecx, [eax+288h]
		mov	eax, dword_5FA988
		push	ecx		; arglist
		push	esi		; int
		push	eax		; int
		call	loc_4B024C
		add	esp, 18h
		mov	ebx, eax
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		cmp	ebx, 0FFFFFFFEh
		jz	short loc_4B2A9B
		cmp	ebx, 0FFFFFFFDh
		jz	short loc_4B2A9B
		cmp	ebx, 0FFFFFFFCh
		jnz	short loc_4B2AB4

loc_4B2A9B:				; CODE XREF: .text:004B2A8Fj
					; .text:004B2A94j
		push	offset aUnableToCopySe ; "Unable to copy selection"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B2AB4:				; CODE XREF: .text:004B2A99j
		cmp	ebx, 0FFFFFFFBh
		jnz	short loc_4B2AF0
		cmp	dword_5BE6A4, 0
		jnz	short loc_4B2ACF
		push	offset aToVisualizeFix ; src
		call	_T
		pop	ecx
		jmp	short loc_4B2AD4
; ---------------------------------------------------------------------------

loc_4B2ACF:				; CODE XREF: .text:004B2AC0j
		mov	eax, $CTW0("") ; ""

loc_4B2AD4:				; CODE XREF: .text:004B2ACDj
		push	eax		; arglist
		push	offset aSomeFixupsAreO ; "Some fixups are only partially selected"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		xor	eax, eax
		jmp	loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B2AF0:				; CODE XREF: .text:004B2AB7j
		cmp	ebx, 2
		jnz	loc_4B2BA8
		push	offset aSelectionConta ; "Selection contains modified fixups. "
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-408h]
		push	edx		; buffer
		call	_swprintf
		mov	esi, eax
		mov	eax, dword_5FA988
		add	esp, 8
		test	byte ptr [eax+0Ah], 1
		jz	short loc_4B2B46
		push	offset aItIsHardlyPoss ; "It is	hardly possible	that main program"...
		call	_T
		pop	ecx
		mov	edx, esi
		lea	ecx, [ebp-408h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax
		jmp	short loc_4B2B69
; ---------------------------------------------------------------------------

loc_4B2B46:				; CODE XREF: .text:004B2B1Fj
		push	offset aPleaseKeepInMi ; "Please keep in mind that in the case th"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-408h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax

loc_4B2B69:				; CODE XREF: .text:004B2B44j
		push	offset aOsWillAdjustFi ; src
		call	_T
		pop	ecx
		push	eax		; format
		add	esi, esi
		lea	ecx, [ebp-408h]
		add	esi, ecx
		push	esi		; buffer
		call	_swprintf
		add	esp, 8
		lea	eax, [ebp-408h]
		push	eax		; format
		push	offset aModifiedFixups ; "Modified fixups"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6B4 ; cond
		call	Conderror
		add	esp, 0Ch

loc_4B2BA8:				; CODE XREF: .text:004B2AF3j
		cmp	ebx, 1
		jz	short loc_4B2BB2
		cmp	ebx, 2
		jnz	short loc_4B2BE1

loc_4B2BB2:				; CODE XREF: .text:004B2BABj
		mov	edx, dword_5FA988
		add	edx, 4Ch
		push	edx		; arglist
		push	offset aInternalCopy_1 ; "Internal copy	of file	'%s' was modified"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aModifiedFile ; "Modified file"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6C0 ; cond
		call	Conderror
		add	esp, 10h

loc_4B2BE1:				; CODE XREF: .text:004B2BB0j
		xor	eax, eax
		jmp	short loc_4B2BE7
; ---------------------------------------------------------------------------

loc_4B2BE5:				; CODE XREF: .text:004B2969j
		xor	eax, eax

loc_4B2BE7:				; CODE XREF: .text:004B2905j
					; .text:004B2917j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_4B2BF0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B2BF0:				; DATA XREF: .data:stru_552290o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBD0h
		cmp	dword_5FA988, 0
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, [ebp+14h]
		jz	short loc_4B2C41
		cmp	dword_5FA964, 0
		jz	short loc_4B2C41
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B2C41
		cmp	dword_5FA96C, 0
		jz	short loc_4B2C41
		mov	ecx, dword_5FA964 ; int
		test	byte ptr [ecx+9], 20h
		jnz	short loc_4B2C41
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B2C48

loc_4B2C41:				; CODE XREF: .text:004B2C06j
					; .text:004B2C0Fj ...
		xor	eax, eax
		jmp	loc_4B313B
; ---------------------------------------------------------------------------

loc_4B2C48:				; CODE XREF: .text:004B2C3Fj
		test	eax, eax
		jnz	short loc_4B2C56
		mov	eax, 1
		jmp	loc_4B313B
; ---------------------------------------------------------------------------

loc_4B2C56:				; CODE XREF: .text:004B2C4Aj
		dec	eax
		jnz	loc_4B3139
		mov	eax, pd
		mov	ebx, [eax]
		mov	eax, [eax+4]	; int
		mov	[ebp-0Ch], eax
		push	0		; flags
		mov	edx, [ebp-0Ch]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4B2C88
		xor	eax, eax
		jmp	loc_4B313B
; ---------------------------------------------------------------------------

loc_4B2C88:				; CODE XREF: .text:004B2C7Fj
		push	1		; mode
		mov	edx, [ebp-0Ch]
		push	edx		; size
		push	ebx		; _addr
		mov	ecx, [ebp-28h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-0Ch]
		jz	short loc_4B2CC3
		mov	eax, [ebp-28h]
		push	eax		; data
		call	Memfree
		pop	ecx
		push	offset aUnableToRead_0 ; "Unable to read memory	of debugged proce"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B313B
; ---------------------------------------------------------------------------

loc_4B2CC3:				; CODE XREF: .text:004B2C9Ej
		mov	eax, dword_5FA988
		mov	edx, [eax+47Ch]
		mov	[ebp-10h], edx
		mov	ecx, [eax+480h]
		add	ecx, [ebp-10h]
		mov	[ebp-14h], ecx
		cmp	ebx, [ebp-10h]
		jbe	short loc_4B2CE5
		mov	[ebp-10h], ebx

loc_4B2CE5:				; CODE XREF: .text:004B2CE0j
		mov	eax, [ebp-0Ch]
		add	eax, ebx
		cmp	eax, [ebp-14h]
		jnb	short loc_4B2CF2
		mov	[ebp-14h], eax

loc_4B2CF2:				; CODE XREF: .text:004B2CEDj
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-14h]
		jb	short loc_4B2D07
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		mov	[ebp-10h], ecx
		jmp	loc_4B2D99
; ---------------------------------------------------------------------------

loc_4B2D07:				; CODE XREF: .text:004B2CF8j
		sub	[ebp-10h], ebx
		sub	[ebp-14h], ebx
		mov	esi, [ebp-14h]
		sub	esi, [ebp-10h]
		push	esi		; n
		mov	edx, dword_5FA96C
		mov	eax, [ebp-10h]
		add	edx, eax
		push	edx		; s2
		mov	ecx, [ebp-28h]
		add	ecx, eax
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B2D99
		cmp	dword_57E6BC, 0
		jnz	short loc_4B2D74
		push	esi		; size
		mov	eax, [ebp-10h]
		add	eax, ebx
		push	eax		; _addr
		mov	edx, pd
		push	edx		; pd
		call	Newdumpselection
		add	esp, 0Ch
		mov	ecx, pd
		add	ecx, 18h
		push	ecx		; pt
		call	Activatetablewindow
		pop	ecx
		mov	eax, pd
		add	eax, 18h
		push	0		; force
		push	eax		; pt
		call	Updatetable
		add	esp, 8

loc_4B2D74:				; CODE XREF: .text:004B2D39j
		push	offset aYouAreGoingT_1 ; "You are going	to copy	modifications bac"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aCopyToImportAd ; "Copy to Import Address Table"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6BC ; cond
		call	Conderror
		add	esp, 0Ch

loc_4B2D99:				; CODE XREF: .text:004B2D02j
					; .text:004B2D30j
		xor	edx, edx
		mov	[ebp-30h], edx
		xor	ecx, ecx
		mov	[ebp-2Ch], ecx
		xor	eax, eax
		mov	[ebp-8], eax
		xor	esi, esi
		cmp	esi, [ebp-0Ch]
		jnb	loc_4B3015

loc_4B2DB3:				; CODE XREF: .text:004B300Fj
		mov	eax, [ebp-28h]
		mov	ecx, dword_5FA96C
		mov	dl, [eax+esi]
		cmp	dl, [ecx+esi]
		jz	loc_4B300B
		cmp	esi, [ebp-10h]
		jb	short loc_4B2DD6
		cmp	esi, [ebp-14h]
		jb	loc_4B300B

loc_4B2DD6:				; CODE XREF: .text:004B2DCBj
		cmp	esi, 40h
		jbe	short loc_4B2DE3
		lea	edi, [esi+ebx]
		sub	edi, 40h
		jmp	short loc_4B2DE5
; ---------------------------------------------------------------------------

loc_4B2DE3:				; CODE XREF: .text:004B2DD9j
		mov	edi, ebx

loc_4B2DE5:				; CODE XREF: .text:004B2DE1j
					; .text:004B2E17j
		mov	eax, decode
		push	eax		; decode
		push	1		; n
		push	edi		; ip
		mov	edx, [ebp-0Ch]
		push	edx		; size
		push	ebx		; base
		mov	ecx, [ebp-28h]
		push	ecx		; copy
		call	Disassembleforward
		add	esp, 18h
		lea	edx, [esi+ebx]
		cmp	eax, edx
		jnz	short loc_4B2E0A
		mov	edi, eax
		jmp	short loc_4B2E19
; ---------------------------------------------------------------------------

loc_4B2E0A:				; CODE XREF: .text:004B2E04j
		lea	edx, [esi+ebx]
		cmp	eax, edx
		ja	short loc_4B2E19
		cmp	edi, eax
		jz	short loc_4B2E19
		mov	edi, eax
		jmp	short loc_4B2DE5
; ---------------------------------------------------------------------------

loc_4B2E19:				; CODE XREF: .text:004B2E08j
					; .text:004B2E0Fj ...
		mov	[ebp-1Ch], edi
		mov	[ebp-18h], edi
		xor	eax, eax
		mov	[ebp-4], eax

loc_4B2E24:				; CODE XREF: .text:004B2EA0j
		mov	edx, decode
		push	edx		; decode
		push	1		; n
		push	edi		; ip
		mov	ecx, [ebp-0Ch]
		push	ecx		; size
		push	ebx		; base
		mov	eax, [ebp-28h]
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h
		cmp	edi, eax
		jnz	short loc_4B2E48
		mov	[ebp-1Ch], eax
		jmp	short loc_4B2EA2
; ---------------------------------------------------------------------------

loc_4B2E48:				; CODE XREF: .text:004B2E41j
		cmp	eax, [ebp-10h]
		jb	short loc_4B2E57
		cmp	eax, [ebp-14h]
		jnb	short loc_4B2E57
		mov	[ebp-1Ch], edi
		jmp	short loc_4B2EA2
; ---------------------------------------------------------------------------

loc_4B2E57:				; CODE XREF: .text:004B2E4Bj
					; .text:004B2E50j
		mov	edx, eax
		sub	edx, [ebp-18h]
		cmp	edx, 200h
		jbe	short loc_4B2E69
		mov	[ebp-1Ch], edi
		jmp	short loc_4B2EA2
; ---------------------------------------------------------------------------

loc_4B2E69:				; CODE XREF: .text:004B2E62j
		inc	dword ptr [ebp-4]
		mov	edx, edi
		cmp	eax, edx
		jbe	short loc_4B2E9A

loc_4B2E72:				; CODE XREF: .text:004B2E98j
		mov	ecx, edx
		sub	ecx, ebx
		mov	esi, [ebp-28h]
		mov	cl, [esi+ecx]
		mov	esi, edx
		sub	esi, ebx
		mov	edi, dword_5FA96C
		cmp	cl, [edi+esi]
		jz	short loc_4B2E95
		xor	edx, edx
		mov	[ebp-4], edx
		mov	[ebp-1Ch], eax
		jmp	short loc_4B2E9A
; ---------------------------------------------------------------------------

loc_4B2E95:				; CODE XREF: .text:004B2E89j
		inc	edx
		cmp	eax, edx
		ja	short loc_4B2E72

loc_4B2E9A:				; CODE XREF: .text:004B2E70j
					; .text:004B2E93j
		cmp	dword ptr [ebp-4], 2
		mov	edi, eax
		jl	short loc_4B2E24

loc_4B2EA2:				; CODE XREF: .text:004B2E46j
					; .text:004B2E55j ...
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_4B2ED2
		mov	eax, pd
		push	0		; strname
		push	0		; sel1
		push	0		; sel0
		mov	edx, [eax+8]
		mov	ecx, dword_5FA988
		add	ecx, 4Ch
		push	edx		; dumptype
		push	ecx		; path
		push	0		; size
		push	0		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		mov	[ebp-30h], eax

loc_4B2ED2:				; CODE XREF: .text:004B2EA6j
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_4B2EEF
		push	offset aUnableToLoca_2 ; "Unable to locate executable file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4B3015
; ---------------------------------------------------------------------------

loc_4B2EEF:				; CODE XREF: .text:004B2ED6j
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_4B2F07
		mov	eax, dword_5FA988
		add	eax, 4Ch
		push	eax		; path
		call	Findfiledump
		pop	ecx
		mov	[ebp-2Ch], eax

loc_4B2F07:				; CODE XREF: .text:004B2EF3j
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_4B2F24
		push	offset aUnableToLoca_2 ; "Unable to locate executable file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4B3015
; ---------------------------------------------------------------------------

loc_4B2F24:				; CODE XREF: .text:004B2F0Bj
		lea	edx, [ebp-24h]
		lea	ecx, [ebp-20h]
		push	edx		; int
		push	ecx		; int
		mov	eax, [ebp-1Ch]
		push	eax		; int
		mov	eax, dword_5FA988
		mov	edx, [ebp-18h]
		push	edx		; arglist
		mov	ecx, [ebp-2Ch]
		push	ecx		; int
		push	eax		; int
		call	loc_4B024C
		add	esp, 18h
		mov	esi, eax
		cmp	esi, 2
		jnz	short loc_4B2F59
		mov	dword ptr [ebp-8], 2
		jmp	loc_4B3006
; ---------------------------------------------------------------------------

loc_4B2F59:				; CODE XREF: .text:004B2F4Bj
		cmp	esi, 1
		jnz	short loc_4B2F70
		cmp	dword ptr [ebp-8], 2
		jz	short loc_4B2F70
		mov	dword ptr [ebp-8], 1
		jmp	loc_4B3006
; ---------------------------------------------------------------------------

loc_4B2F70:				; CODE XREF: .text:004B2F5Cj
					; .text:004B2F62j
		test	esi, esi
		jge	loc_4B3006
		mov	[ebp-8], esi
		mov	eax, [ebp-24h]
		sub	eax, [ebp-20h]
		push	eax		; size
		mov	edx, [ebp-20h]
		push	edx		; _addr
		mov	ecx, [ebp-2Ch]
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch
		mov	eax, [ebp-1Ch]
		sub	eax, [ebp-18h]
		push	eax		; size
		mov	edx, [ebp-18h]
		push	edx		; _addr
		mov	ecx, pd
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch
		mov	eax, pd
		add	eax, 18h
		push	eax		; pt
		call	Activatetablewindow
		pop	ecx
		cmp	esi, 0FFFFFFFBh
		jnz	short loc_4B2FF2
		cmp	dword_5BE6A4, 0
		jnz	short loc_4B2FD6
		push	offset aToVisualizeFix ; src
		call	_T
		pop	ecx
		jmp	short loc_4B2FDB
; ---------------------------------------------------------------------------

loc_4B2FD6:				; CODE XREF: .text:004B2FC7j
		mov	eax, $CTW0("") ; ""

loc_4B2FDB:				; CODE XREF: .text:004B2FD4j
		push	eax		; arglist
		push	offset aSomeFixupsAr_0 ; "Some fixups are only partially availabl"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	short loc_4B3015
; ---------------------------------------------------------------------------

loc_4B2FF2:				; CODE XREF: .text:004B2FBEj
		push	offset aUnableToCopy_2 ; "Unable to copy selection to the executa"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		jmp	short loc_4B3015
; ---------------------------------------------------------------------------

loc_4B3006:				; CODE XREF: .text:004B2F54j
					; .text:004B2F6Bj ...
		mov	esi, [ebp-1Ch]
		sub	esi, ebx

loc_4B300B:				; CODE XREF: .text:004B2DC2j
					; .text:004B2DD0j
		inc	esi
		cmp	esi, [ebp-0Ch]
		jb	loc_4B2DB3

loc_4B3015:				; CODE XREF: .text:004B2DADj
					; .text:004B2EEAj ...
		mov	eax, [ebp-28h]
		push	eax		; data
		call	Memfree
		cmp	dword ptr [ebp-8], 0
		pop	ecx
		jnz	short loc_4B303E
		push	offset aMemoryBlockAnd ; "Memory block and its backup copy are id"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B313B
; ---------------------------------------------------------------------------

loc_4B303E:				; CODE XREF: .text:004B3023j
		cmp	dword ptr [ebp-8], 2
		jnz	loc_4B30F7
		push	offset aMemoryBlockCon ; "Memory block contains	modified fixups. "
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-430h]
		push	edx		; buffer
		call	_swprintf
		mov	ebx, eax
		mov	eax, dword_5FA988
		add	esp, 8
		test	byte ptr [eax+0Ah], 1
		jz	short loc_4B3095
		push	offset aItIsHardlyPoss ; "It is	hardly possible	that main program"...
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-430h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_4B30B8
; ---------------------------------------------------------------------------

loc_4B3095:				; CODE XREF: .text:004B306Ej
		push	offset aPleaseKeepInMi ; "Please keep in mind that in the case th"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-430h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_4B30B8:				; CODE XREF: .text:004B3093j
		push	offset aOsWillAdjustFi ; src
		call	_T
		pop	ecx
		push	eax		; format
		add	ebx, ebx
		lea	ecx, [ebp-430h]
		add	ebx, ecx
		push	ebx		; buffer
		call	_swprintf
		add	esp, 8
		lea	eax, [ebp-430h]
		push	eax		; format
		push	offset aModifiedFixups ; "Modified fixups"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6B4 ; cond
		call	Conderror
		add	esp, 0Ch

loc_4B30F7:				; CODE XREF: .text:004B3042j
		cmp	dword ptr [ebp-8], 1
		jz	short loc_4B3103
		cmp	dword ptr [ebp-8], 2
		jnz	short loc_4B3132

loc_4B3103:				; CODE XREF: .text:004B30FBj
		mov	edx, dword_5FA988
		add	edx, 4Ch
		push	edx		; arglist
		push	offset aInternalCopy_1 ; "Internal copy	of file	'%s' was modified"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aModifiedFile ; "Modified file"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6C0 ; cond
		call	Conderror
		add	esp, 10h

loc_4B3132:				; CODE XREF: .text:004B3101j
		mov	eax, 1
		jmp	short loc_4B313B
; ---------------------------------------------------------------------------

loc_4B3139:				; CODE XREF: .text:004B2C57j
		xor	eax, eax

loc_4B313B:				; CODE XREF: .text:004B2C43j
					; .text:004B2C51j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B3144@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B3144:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	esi		; arglist
		mov	esi, offset pd
		mov	ecx, [ebp+14h]
		mov	edx, [ebp+10h]
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4B3162
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B3169

loc_4B3162:				; CODE XREF: .text:004B315Aj
		xor	eax, eax
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B3169:				; CODE XREF: .text:004B3160j
		test	byte ptr [eax+0Eh], 4
		jnz	short loc_4B3176
		xor	eax, eax
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B3176:				; CODE XREF: .text:004B316Dj
		cmp	dword_5FC27C, 0
		jnz	short loc_4B3186
		xor	eax, eax
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B3186:				; CODE XREF: .text:004B317Dj
		test	ecx, ecx
		jnz	short loc_4B31D4
		test	edx, edx
		jnz	short loc_4B31A9
		mov	ecx, dword_5FC27C
		mov	eax, [ecx+1Ch]
		mov	ecx, [esi]
		mov	ecx, [ecx]
		add	ecx, 4
		cmp	eax, ecx
		jnb	short loc_4B31A9
		xor	eax, eax
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B31A9:				; CODE XREF: .text:004B318Cj
					; .text:004B31A0j
		cmp	edx, 1
		jnz	short loc_4B31CA
		mov	eax, [esi]
		mov	ecx, dword_5FC27C
		mov	edx, [eax]
		add	edx, [eax+4]
		sub	edx, 4
		cmp	edx, [ecx+1Ch]
		jnb	short loc_4B31CA
		xor	eax, eax
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B31CA:				; CODE XREF: .text:004B31ACj
					; .text:004B31C1j
		mov	eax, 1
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B31D4:				; CODE XREF: .text:004B3188j
		dec	ecx
		jnz	loc_4B3312
		test	edx, edx
		jnz	loc_4B32D3
		lea	edx, [ebp-0Ch]
		push	edx		; coord
		push	1		; column
		mov	ecx, [esi]
		add	ecx, 18h
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B3204
		or	eax, 0FFFFFFFFh
		mov	[ebp-8], eax
		mov	[ebp-0Ch], eax

loc_4B3204:				; CODE XREF: .text:004B31F9j
		mov	edx, dword_5FC27C
		push	1		; mode
		push	4		; size
		lea	eax, [ebp-4]
		mov	ecx, [edx+1Ch]
		sub	ecx, 4
		push	ecx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4B323E
		push	offset aUnableToAccess ; "Unable to access stack memory"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B323E:				; CODE XREF: .text:004B3223j
		push	104h		; mode
		mov	edx, [esi]
		mov	ecx, [edx+24Ch]
		push	ecx		; fi
		lea	ecx, [ebp-4]
		mov	eax, [ebp-8]
		push	eax		; y
		mov	edx, [ebp-0Ch]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	offset aEnterValueToPu ; "Enter	value to push"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hparent
		call	Getdword
		add	esp, 20h
		test	eax, eax
		jge	short loc_4B3283
		xor	eax, eax
		jmp	loc_4B3314
; ---------------------------------------------------------------------------

loc_4B3283:				; CODE XREF: .text:004B327Aj
		mov	edx, dword_5FC27C
		push	1		; mode
		push	4		; size
		lea	eax, [ebp-4]
		mov	ecx, [edx+1Ch]
		sub	ecx, 4
		push	ecx		; _addr
		push	eax		; buf
		call	Writememory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4B32BA
		push	offset aUnableToAccess ; "Unable to access stack memory"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4B3314
; ---------------------------------------------------------------------------

loc_4B32BA:				; CODE XREF: .text:004B32A2j
		mov	edx, dword_5FC278
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, dword_5FC27C
		sub	dword ptr [ecx+1Ch], 4
		jmp	short loc_4B32E9
; ---------------------------------------------------------------------------

loc_4B32D3:				; CODE XREF: .text:004B31DDj
		mov	eax, dword_5FC278
		push	eax		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	edx, dword_5FC27C
		add	dword ptr [edx+1Ch], 4

loc_4B32E9:				; CODE XREF: .text:004B32D1j
		mov	ecx, dword_5FC27C
		mov	edx, [esi]
		mov	eax, [ecx+1Ch]
		mov	[edx+704h], eax
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4B3314
; ---------------------------------------------------------------------------

loc_4B3312:				; CODE XREF: .text:004B31D5j
		xor	eax, eax

loc_4B3314:				; CODE XREF: .text:004B3164j
					; .text:004B3171j ...
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
