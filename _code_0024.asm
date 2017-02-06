.code

loc_418B20:				; CODE XREF: .text:00418C15p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ecx, [ebp+8]
		mov	edx, offset dword_5D8F58
		cmp	ecx, dword_5D8F54
		jnz	short loc_418B3E
		mov	eax, [edx]
		jmp	loc_418BC4
; ---------------------------------------------------------------------------

loc_418B3E:				; CODE XREF: .text:00418B35j
		mov	ebx, list.sorted.itemsize
		mov	eax, list.sorted.data
		imul	ebx, list.sorted.nmax
		mov	[ebp-4], eax
		mov	eax, dword_5D8F54
		test	eax, eax
		jl	short loc_418B81
		inc	eax
		cmp	ecx, eax
		jnz	short loc_418B81
		dec	dword ptr [edx]
		cmp	dword ptr [edx], 0
		jge	short loc_418B6A
		add	[edx], ebx

loc_418B6A:				; CODE XREF: .text:00418B66j
		mov	eax, [ebp-4]
		mov	esi, [edx]
		movzx	eax, byte ptr [eax+esi]
		add	eax, 7
		sub	[edx], eax
		cmp	dword ptr [edx], 0
		jge	short loc_418BBC
		add	[edx], ebx
		jmp	short loc_418BBC
; ---------------------------------------------------------------------------

loc_418B81:				; CODE XREF: .text:00418B5Aj
					; .text:00418B5Fj
		mov	eax, dword_5D8F50
		test	eax, eax
		jnz	short loc_418B91
		lea	eax, [ebx-1]
		mov	[edx], eax
		jmp	short loc_418B94
; ---------------------------------------------------------------------------

loc_418B91:				; CODE XREF: .text:00418B88j
		dec	eax
		mov	[edx], eax

loc_418B94:				; CODE XREF: .text:00418B8Fj
		xor	eax, eax
		cmp	ecx, eax
		jl	short loc_418BB4

loc_418B9A:				; CODE XREF: .text:00418BB2j
		mov	esi, [ebp-4]
		mov	edi, [edx]
		movzx	esi, byte ptr [esi+edi]
		add	esi, 8
		sub	[edx], esi
		cmp	dword ptr [edx], 0
		jge	short loc_418BAF
		add	[edx], ebx

loc_418BAF:				; CODE XREF: .text:00418BABj
		inc	eax
		cmp	ecx, eax
		jge	short loc_418B9A

loc_418BB4:				; CODE XREF: .text:00418B98j
		inc	dword ptr [edx]
		cmp	ebx, [edx]
		jg	short loc_418BBC
		sub	[edx], ebx

loc_418BBC:				; CODE XREF: .text:00418B7Bj
					; .text:00418B7Fj ...
		mov	dword_5D8F54, ecx
		mov	eax, [edx]

loc_418BC4:				; CODE XREF: .text:00418B39j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_418BCC:				; CODE XREF: .text:00418D36p
					; .text:004190DFp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEF4h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		test	eax, eax
		jl	short loc_418BED
		cmp	eax, list.sorted.n
		jge	short loc_418BED
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_418BF5

loc_418BED:				; CODE XREF: .text:00418BDDj
					; .text:00418BE5j
		or	eax, 0FFFFFFFFh
		jmp	loc_418D1F
; ---------------------------------------------------------------------------

loc_418BF5:				; CODE XREF: .text:00418BEBj
		mov	esi, list.sorted.data
		test	esi, esi
		jnz	short loc_418C07
		or	eax, 0FFFFFFFFh
		jmp	loc_418D1F
; ---------------------------------------------------------------------------

loc_418C07:				; CODE XREF: .text:00418BFDj
		mov	ebx, list.sorted.itemsize
		imul	ebx, list.sorted.nmax
		push	eax
		call	loc_418B20
		pop	ecx
		xor	edx, edx
		mov	dl, [esi+eax]
		mov	[ebp-4], edx
		inc	eax
		mov	ecx, [ebp-4]
		add	ecx, eax
		add	ecx, 7
		cmp	ebx, ecx
		jle	short loc_418C74
		mov	ecx, [ebp+0Ch]
		xor	edx, edx
		mov	dl, [esi+eax]
		inc	eax
		mov	[ecx+208h], edx
		xor	edx, edx
		mov	ecx, [ebp+0Ch]
		mov	dl, [esi+eax]
		inc	eax
		mov	[ecx+20Ch], edx
		mov	ecx, [ebp+0Ch]
		mov	edx, [esi+eax]
		add	eax, 4
		add	eax, esi
		mov	[ecx], edx
		mov	edx, [ebp-4]
		lea	ecx, [ebp-10Ch]
		push	edx		; n
		push	eax		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_418CF5
; ---------------------------------------------------------------------------

loc_418C74:				; CODE XREF: .text:00418C2Ej
		cmp	ebx, eax
		jg	short loc_418C7A
		sub	eax, ebx

loc_418C7A:				; CODE XREF: .text:00418C76j
		xor	edx, edx
		mov	ecx, [ebp+0Ch]
		mov	dl, [esi+eax]
		inc	eax
		cmp	ebx, eax
		mov	[ecx+208h], edx
		jg	short loc_418C8F
		sub	eax, ebx

loc_418C8F:				; CODE XREF: .text:00418C8Bj
		xor	edx, edx
		mov	ecx, [ebp+0Ch]
		mov	dl, [esi+eax]
		inc	eax
		cmp	ebx, eax
		mov	[ecx+20Ch], edx
		jg	short loc_418CA4
		sub	eax, ebx

loc_418CA4:				; CODE XREF: .text:00418CA0j
		xor	edx, edx
		mov	[ebp-8], edx
		xor	edx, edx

loc_418CAB:				; CODE XREF: .text:00418CC3j
		mov	ecx, edx
		movzx	edi, byte ptr [esi+eax]
		shl	edi, cl
		or	[ebp-8], edi
		inc	eax
		cmp	ebx, eax
		jg	short loc_418CBD
		sub	eax, ebx

loc_418CBD:				; CODE XREF: .text:00418CB9j
		add	edx, 8
		cmp	edx, 20h
		jl	short loc_418CAB
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp-8]
		mov	[edx], ecx
		lea	ecx, [ebp-10Ch]
		mov	[ebp-0Ch], ecx
		xor	edx, edx
		cmp	edx, [ebp-4]
		jge	short loc_418CF5

loc_418CDD:				; CODE XREF: .text:00418CF3j
		mov	cl, [esi+eax]
		mov	edi, [ebp-0Ch]
		mov	[edi], cl
		inc	eax
		cmp	ebx, eax
		jg	short loc_418CEC
		sub	eax, ebx

loc_418CEC:				; CODE XREF: .text:00418CE8j
		inc	edx
		inc	dword ptr [ebp-0Ch]
		cmp	edx, [ebp-4]
		jl	short loc_418CDD

loc_418CF5:				; CODE XREF: .text:00418C6Fj
					; .text:00418CDBj
		push	100h		; nw
		mov	eax, [ebp+0Ch]
		add	eax, 4
		push	eax		; w
		mov	edx, [ebp-4]
		push	edx		; nt
		lea	ecx, [ebp-10Ch]
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		mov	edx, [ebp+0Ch]
		mov	[edx+204h], eax
		xor	eax, eax

loc_418D1F:				; CODE XREF: .text:00418BF0j
					; .text:00418C02j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_418D28:				; DATA XREF: .data:stru_518054o
		push	ebp
		mov	ebp, esp
		push	offset word_5D8F60
		mov	eax, list.sorted.selected
		push	eax
		call	loc_418BCC
		add	esp, 8
		test	eax, eax
		jge	short loc_418D5A
		push	210h		; n
		push	0		; c
		push	offset word_5D8F60 ; s
		call	_memset
		add	esp, 0Ch
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418D5A:				; CODE XREF: .text:00418D40j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_418D64
loc_418D64:				; DATA XREF: .text:004194D2o
					; .data:stru_518054o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, dword ptr word_5D8F60
		test	edx, edx
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+14h]
		jz	short loc_418D86
		mov	ecx, dword_5D916C
		cmp	ecx, dword_5D8F5C
		jz	short loc_418D8B

loc_418D86:				; CODE XREF: .text:00418D76j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418D8B:				; CODE XREF: .text:00418D84j
		test	eax, eax
		jnz	short loc_418DC4
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_418D9F
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418D9F:				; CODE XREF: .text:00418D98j
		test	ebx, ebx
		jnz	short loc_418DAC
		test	dword ptr [eax+8], 2001000h
		jnz	short loc_418DBC

loc_418DAC:				; CODE XREF: .text:00418DA1j
		cmp	ebx, 1
		jz	short loc_418DBC
		cmp	ebx, 2
		jnz	short loc_418E2A
		test	byte ptr [eax+0Ah], 8
		jz	short loc_418E2A

loc_418DBC:				; CODE XREF: .text:00418DAAj
					; .text:00418DAFj
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418DC4:				; CODE XREF: .text:00418D8Dj
		dec	eax
		jnz	short loc_418E2A
		cmp	ebx, 1
		jnz	short loc_418DEA
		push	90h		; mode
		push	0		; stackaddr
		push	1		; selsize
		mov	edx, dword ptr word_5D8F60
		push	edx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_418E25
; ---------------------------------------------------------------------------

loc_418DEA:				; CODE XREF: .text:00418DCAj
		cmp	ebx, 2
		jnz	short loc_418E0D
		push	100h		; mode
		mov	ecx, dword ptr word_5D8F60
		push	ecx		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_418E25
; ---------------------------------------------------------------------------

loc_418E0D:				; CODE XREF: .text:00418DEDj
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	eax, dword ptr word_5D8F60
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_418E25:				; CODE XREF: .text:00418DE8j
					; .text:00418E0Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418E2A:				; CODE XREF: .text:00418DB4j
					; .text:00418DBAj ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_418E30:				; DATA XREF: .data:stru_518054o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	list.sorted.n, 0
		jg	short loc_418E43
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418E43:				; CODE XREF: .text:00418E3Dj
		test	eax, eax
		jnz	short loc_418E4E
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418E4E:				; CODE XREF: .text:00418E45j
		dec	eax
		jnz	short loc_418E5D
		call	loc_419178
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418E5D:				; CODE XREF: .text:00418E4Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_418E64:				; DATA XREF: .data:stru_518054o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		cmp	stream,	0
		push	ebx
		mov	eax, [ebp+14h]
		jz	short loc_418E81
		xor	eax, eax
		jmp	loc_418F54
; ---------------------------------------------------------------------------

loc_418E81:				; CODE XREF: .text:00418E78j
		test	eax, eax
		jnz	short loc_418E8F
		mov	eax, 1
		jmp	loc_418F54
; ---------------------------------------------------------------------------

loc_418E8F:				; CODE XREF: .text:00418E83j
		dec	eax
		jnz	loc_418F52
		push	offset word_5BE47C ; src
		push	104h		; n
		lea	edx, [ebp-208h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, hwollymain
		lea	eax, [ebp-208h]
		push	8000000h	; mode
		push	ecx		; hwnd
		push	offset a_txt	; "*.txt"
		push	0		; currdir
		push	0		; args
		push	eax		; _name
		push	offset aSelectLogFile ;	"Select	log file"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		test	eax, eax
		jnz	short loc_418EE7
		xor	eax, eax
		jmp	short loc_418F54
; ---------------------------------------------------------------------------

loc_418EE7:				; CODE XREF: .text:00418EE1j
		cmp	dword_5BE68C, 0
		jz	short loc_418EF7
		mov	edx, offset aAT	; "a+t"
		jmp	short loc_418EFC
; ---------------------------------------------------------------------------

loc_418EF7:				; CODE XREF: .text:00418EEEj
		mov	edx, offset aWt	; "wt"

loc_418EFC:				; CODE XREF: .text:00418EF5j
		push	edx		; mode
		lea	eax, [ebp-208h]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	ebx, eax
		mov	stream,	ebx
		test	ebx, ebx
		jnz	short loc_418F35
		lea	eax, [ebp-208h]
		push	eax		; arglist
		push	offset aUnableToOpenLo ; "Unable to open log file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	short loc_418F4E
; ---------------------------------------------------------------------------

loc_418F35:				; CODE XREF: .text:00418F16j
		lea	edx, [ebp-208h]
		push	edx		; src
		push	104h		; n
		push	offset word_5BE47C ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_418F4E:				; CODE XREF: .text:00418F33j
		xor	eax, eax
		jmp	short loc_418F54
; ---------------------------------------------------------------------------

loc_418F52:				; CODE XREF: .text:00418E90j
		xor	eax, eax

loc_418F54:				; CODE XREF: .text:00418E7Cj
					; .text:00418E8Aj ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_418F5C:				; DATA XREF: .data:stru_518054o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, stream
		test	edx, edx
		jnz	short loc_418F70
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418F70:				; CODE XREF: .text:00418F6Aj
		test	eax, eax
		jnz	short loc_418F7B
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418F7B:				; CODE XREF: .text:00418F72j
		dec	eax
		jnz	short loc_418FA5
		push	offset aLoggingStopped ; "--------  Logging stopped\n\n"
		push	edx		; stream
		call	_fprintf
		add	esp, 8
		mov	edx, stream
		push	edx		; stream
		call	_fclose
		pop	ecx
		xor	ecx, ecx
		xor	eax, eax
		mov	stream,	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418FA5:				; CODE XREF: .text:00418F7Cj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_418FAC:				; DATA XREF: .data:004F6008o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset a08lx ; "%08lX"
;__DebugBreak
		push	esi
		mov	esi, offset stru_518054
		lea	eax, aFollowInDisass;[ebx+0C4h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[esi+18h], eax
		lea	edx, aShowAddressI_2;[ebx+0F2h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	[esi+1Ch], eax
		lea	ecx, aFollowInCpuD_0;[ebx+13Eh]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	[esi+30h], eax
		lea	eax, aShowAddressInC;[ebx+164h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[esi+34h], eax
		lea	edx, aFollowInCpuSta;[ebx+1A0h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	[esi+48h], eax
		lea	ecx, aShowAddressI_0;[ebx+1C8h]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	[esi+4Ch], eax
		lea	eax, aClearLog;[ebx+206h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[esi+60h], eax
		lea	edx, aEmptyLogWindow;[ebx+21Ch]
		push	edx		; src
		call	_T
		pop	ecx
		mov	[esi+64h], eax
		lea	ecx, aLogToFile___;[ebx+278h]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	[esi+78h], eax
		lea	eax, aStartWritingNe;[ebx+296h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[esi+7Ch], eax
		lea	edx, aStopLogging;[ebx+2E4h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	[esi+90h], eax
		lea	ecx, aCloseLogFile;[ebx+2FEh]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	[esi+94h], eax
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_419088(void *dest, int, int, int, int, int, void *s)
loc_419088:				; DATA XREF: .text:004195F2o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+20h]
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 6 cases
		cmp	eax, 5
		ja	loc_419172	; jumptable 0041909E default case
		jmp	ds:off_4190A5[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4190A5	dd offset loc_4190BD	; DATA XREF: .text:0041909Er
		dd offset loc_4190C5	; jump table for switch	statement
		dd offset loc_4190CA
		dd offset loc_4190CF
		dd offset loc_419100
		dd offset loc_419128
; ---------------------------------------------------------------------------

loc_4190BD:				; CODE XREF: .text:0041909Ej
					; DATA XREF: .text:off_4190A5o
		mov	eax, 210h	; jumptable 0041909E case -4
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4190C5:				; CODE XREF: .text:0041909Ej
					; DATA XREF: .text:off_4190A5o
		xor	eax, eax	; jumptable 0041909E case -3
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4190CA:				; CODE XREF: .text:0041909Ej
					; DATA XREF: .text:off_4190A5o
		xor	eax, eax	; jumptable 0041909E case -2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4190CF:				; CODE XREF: .text:0041909Ej
					; DATA XREF: .text:off_4190A5o
		push	ebx		; jumptable 0041909E case -1
		mov	edx, [ebp+18h]
		mov	eax, [ebp+14h]
		mov	ecx, [edx]
		add	ecx, [eax+248h]
		push	ecx
		call	loc_418BCC
		add	esp, 8
		test	eax, eax
		jge	short loc_4190FB
		push	210h		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch

loc_4190FB:				; CODE XREF: .text:004190E9j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419100:				; CODE XREF: .text:0041909Ej
					; DATA XREF: .text:off_4190A5o
		mov	eax, [ebx]	; jumptable 0041909E case 0
		test	eax, eax
		jnz	short loc_41910A
		xor	eax, eax
		jmp	short loc_41911C
; ---------------------------------------------------------------------------

loc_41910A:				; CODE XREF: .text:00419104j
		push	eax
		push	offset a08lx	; "%08lX"
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_41911C:				; CODE XREF: .text:00419108j
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419128:				; CODE XREF: .text:0041909Ej
					; DATA XREF: .text:off_4190A5o
		mov	eax, [ebx+204h]	; jumptable 0041909E case 1
		lea	edx, [ebx+4]
		add	eax, eax
		push	eax		; n
		push	edx		; src
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx+20Ch]
		test	eax, eax
		jz	short loc_41915E
		cmp	eax, dword_5D8F5C
		jz	short loc_41915E
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 2
		jmp	short loc_419169
; ---------------------------------------------------------------------------

loc_41915E:				; CODE XREF: .text:00419149j
					; .text:00419151j
		mov	ecx, [ebp+10h]
		mov	eax, [ebx+208h]
		mov	[ecx], eax

loc_419169:				; CODE XREF: .text:0041915Cj
		mov	eax, [ebx+204h]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419172:				; CODE XREF: .text:00419098j
		xor	eax, eax	; jumptable 0041909E default case
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_419178:				; CODE XREF: .text:00418E51p
		xor	eax, eax
		xor	edx, edx
		mov	list._offset, eax
		xor	ecx, ecx
		mov	list.xshift, edx
		xor	eax, eax
		mov	list.sorted.n, ecx
		mov	dword_5D8F50, eax
		mov	dword_5D8F4C, eax
		mov	dword_5D8F54, 0FFFFFFFFh
		mov	eax, list.hw
		push	ebp
		mov	ebp, esp
		test	eax, eax
		jz	short loc_4191BB
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4191BB:				; CODE XREF: .text:004191AFj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4191C0:				; CODE XREF: .text:loc_40FA90p
					; .text:0044AD47p ...
		push	ebp
		mov	ebp, esp
		inc	dword_5D8F5C
		cmp	dword_5D8F5C, 100h
		jl	short loc_4191DF
		mov	dword_5D8F5C, 1

loc_4191DF:				; CODE XREF: .text:004191D3j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  88. _Redrawlist
; Exported entry 688. Redrawlist

; HWND __cdecl Redrawlist()
		public Redrawlist
Redrawlist:				; CODE XREF: .text:0046EBE8p
		push	ebp		; _Redrawlist
		mov	ebp, esp
		mov	eax, list.hw
		test	eax, eax
		jz	short loc_419206
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect
		mov	edx, list.hw
		push	edx		; hWnd
		call	UpdateWindow

loc_419206:				; CODE XREF: .text:004191EEj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  89. _Addtolist
; Exported entry 387. Addtolist

; void Addtolist(ulong _addr, int color,	wchar_t	*format, ...)
		public Addtolist
Addtolist:				; CODE XREF: .text:00401763p
					; .text:0040179Ap ...
		push	ebp		; _Addtolist
		mov	ebp, esp
		add	esp, 0FFFFF4F4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+10h], 0
		jz	loc_4194B2
		push	offset list.sorted ; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jz	loc_4194B2
		lea	eax, [ebp+14h]
		push	eax		; arglist
		mov	edx, [ebp+10h]
		push	edx		; format
		lea	ecx, [ebp-0B0Ch]
		push	ecx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jnz	short loc_419251
		xor	edi, edi

loc_419251:				; CODE XREF: .text:0041924Dj
		push	100h		; nt
		lea	eax, [ebp-10Ch]
		push	eax		; t
		push	edi		; nw
		lea	edx, [ebp-0B0Ch]
		push	edx		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	edi, eax
		mov	eax, stream
		test	eax, eax
		jz	loc_41930C
		mov	byte ptr [ebp+edi-10Ch], 0
		cmp	dword_5BE688, 0
		jz	short loc_4192CB
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4192AE
		lea	edx, [ebp-10Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		push	offset a08lxS	; "%08lX\t%s\n"
		push	eax		; stream
		call	_fprintf
		add	esp, 10h
		jmp	short loc_41930C
; ---------------------------------------------------------------------------

loc_4192AE:				; CODE XREF: .text:00419291j
		lea	eax, [ebp-10Ch]
		mov	edx, stream
		push	eax
		push	(offset	a08lxS+5) ; format
		push	edx		; stream
		call	_fprintf
		add	esp, 0Ch
		jmp	short loc_41930C
; ---------------------------------------------------------------------------

loc_4192CB:				; CODE XREF: .text:0041928Bj
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4192F2
		lea	ecx, [ebp-10Ch]
		mov	edx, stream
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		push	offset a08lxS_0	; "%08lX  %s\n"
		push	edx		; stream
		call	_fprintf
		add	esp, 10h
		jmp	short loc_41930C
; ---------------------------------------------------------------------------

loc_4192F2:				; CODE XREF: .text:004192CFj
		lea	ecx, [ebp-10Ch]
		mov	eax, stream
		push	ecx
		push	offset aS_0	; "	     %s\n"
		push	eax		; stream
		call	_fprintf
		add	esp, 0Ch

loc_41930C:				; CODE XREF: .text:00419276j
					; .text:004192ACj ...
		mov	eax, list.sorted.itemsize
		imul	list.sorted.nmax
		mov	edx, eax
		sub	edx, dword_5D8F50
		add	edx, dword_5D8F4C
		mov	[ebp-8], edx
		cmp	eax, [ebp-8]
		jge	short loc_419332
		sub	[ebp-8], eax
		jmp	short loc_419345
; ---------------------------------------------------------------------------

loc_419332:				; CODE XREF: .text:0041932Bj
		cmp	eax, [ebp-8]
		jnz	short loc_419345
		cmp	list.sorted.n, 0
		jz	short loc_419345
		xor	ecx, ecx
		mov	[ebp-8], ecx

loc_419345:				; CODE XREF: .text:00419330j
					; .text:00419335j ...
		mov	esi, list.sorted.data
		jmp	short loc_419378
; ---------------------------------------------------------------------------

loc_41934D:				; CODE XREF: .text:0041937Ej
		mov	edx, dword_5D8F4C
		xor	ebx, ebx
		mov	bl, [esi+edx]
		add	ebx, 8
		add	dword_5D8F4C, ebx
		cmp	eax, dword_5D8F4C
		jg	short loc_41936F
		sub	dword_5D8F4C, eax

loc_41936F:				; CODE XREF: .text:00419367j
		dec	list.sorted.n
		add	[ebp-8], ebx

loc_419378:				; CODE XREF: .text:0041934Bj
		lea	edx, [edi+8]
		cmp	edx, [ebp-8]
		jge	short loc_41934D
		mov	ebx, dword_5D8F50
		lea	edx, [edi+ebx+8]
		cmp	eax, edx
		jle	short loc_4193CE
		mov	eax, edi
		mov	[esi+ebx], al
		inc	ebx
		mov	cl, [ebp+0Ch]
		mov	[esi+ebx], cl
		inc	ebx
		mov	al, byte ptr dword_5D8F5C
		mov	[esi+ebx], al
		inc	ebx
		mov	edx, [ebp+8]
		mov	[esi+ebx], edx
		add	ebx, 4
		push	edi		; n
		lea	ecx, [ebp-10Ch]
		push	ecx		; src
		lea	eax, [ebx+esi]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		add	ebx, edi
		mov	edx, edi
		mov	[esi+ebx], dl
		inc	ebx
		jmp	loc_41944F
; ---------------------------------------------------------------------------

loc_4193CE:				; CODE XREF: .text:0041938Cj
		mov	ecx, edi
		mov	[esi+ebx], cl
		inc	ebx
		cmp	eax, ebx
		jg	short loc_4193DA
		sub	ebx, eax

loc_4193DA:				; CODE XREF: .text:004193D6j
		mov	dl, [ebp+0Ch]
		mov	[esi+ebx], dl
		inc	ebx
		cmp	eax, ebx
		jg	short loc_4193E7
		sub	ebx, eax

loc_4193E7:				; CODE XREF: .text:004193E3j
		mov	cl, byte ptr dword_5D8F5C
		mov	[esi+ebx], cl
		inc	ebx
		cmp	eax, ebx
		jg	short loc_4193F7
		sub	ebx, eax

loc_4193F7:				; CODE XREF: .text:004193F3j
		xor	edx, edx
		mov	[ebp-4], edx

loc_4193FC:				; CODE XREF: .text:00419414j
		mov	cl, [ebp+8]
		mov	[esi+ebx], cl
		inc	ebx
		cmp	eax, ebx
		jg	short loc_419409
		sub	ebx, eax

loc_419409:				; CODE XREF: .text:00419405j
		shr	dword ptr [ebp+8], 8
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4193FC
		xor	edx, edx
		lea	ecx, [ebp-10Ch]
		mov	[ebp-4], edx
		mov	[ebp-0Ch], ecx
		cmp	edi, [ebp-4]
		jle	short loc_419443

loc_419429:				; CODE XREF: .text:00419441j
		mov	edx, [ebp-0Ch]
		mov	cl, [edx]
		mov	[esi+ebx], cl
		inc	ebx
		cmp	eax, ebx
		jg	short loc_419438
		sub	ebx, eax

loc_419438:				; CODE XREF: .text:00419434j
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-0Ch]
		cmp	edi, [ebp-4]
		jg	short loc_419429

loc_419443:				; CODE XREF: .text:00419427j
		mov	edx, edi
		mov	[esi+ebx], dl
		inc	ebx
		cmp	eax, ebx
		jg	short loc_41944F
		sub	ebx, eax

loc_41944F:				; CODE XREF: .text:004193C9j
					; .text:0041944Bj
		mov	dword_5D8F50, ebx
		inc	list.sorted.n
		mov	dword_5D8F54, 0FFFFFFFFh
		mov	eax, list.sorted.n
		cmp	eax, list._offset
		jg	short loc_419478
		dec	eax
		mov	list._offset, eax

loc_419478:				; CODE XREF: .text:00419470j
		cmp	list.sorted.selected, 0
		jl	short loc_41949F
		inc	list.sorted.selected
		mov	ecx, list.sorted.selected
		cmp	ecx, list.sorted.n
		jl	short loc_41949F
		mov	list.sorted.selected, 0FFFFFFFFh

loc_41949F:				; CODE XREF: .text:0041947Fj
					; .text:00419493j
		mov	eax, list.hw
		test	eax, eax
		jz	short loc_4194B2
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4194B2:				; CODE XREF: .text:00419218j
					; .text:0041922Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4194BC:				; DATA XREF: .text:004195CEo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4194D0
		sub	eax, 1Bh
		jz	short loc_4194F4
		jmp	short loc_4194FF
; ---------------------------------------------------------------------------

loc_4194D0:				; CODE XREF: .text:004194C7j
		push	0		; index
		push	offset loc_418D64 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4194F4:				; CODE XREF: .text:004194CCj
		or	dword_57FE7C, 2
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4194FF:				; CODE XREF: .text:004194CEj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_419504:				; CODE XREF: .text:00410816p
					; .text:00419533p
		push	ebp
		mov	ebp, esp
		push	offset list.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		xor	eax, eax
		mov	dword_5D8F50, eax
		mov	dword_5D8F4C, eax
		mov	dword_5D8F54, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_41952C:				; CODE XREF: .text:0040FA50p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		call	loc_419504
		cmp	ebx, 10000h
		jge	short loc_419547
		mov	ebx, 10000h
		jmp	short loc_419554
; ---------------------------------------------------------------------------

loc_419547:				; CODE XREF: .text:0041953Ej
		cmp	ebx, 1000000h
		jle	short loc_419554
		mov	ebx, 1000000h

loc_419554:				; CODE XREF: .text:00419545j
					; .text:0041954Dj
		push	offset aLogData	; "Log data"
		push	offset list	; dst
		call	_wcscpy
		mov	list.mode, 0F000Ch
		mov	list.bar.visible, 1
		mov	list.bar._name, offset aAddress_6 ; "Address"
		xor	eax, eax
		mov	list.bar.expl, offset aMemoryAddressA ;	"Memory	address	associated with	message"
		mov	list.bar.mode, eax
		mov	list.bar.defdx,	9
		mov	list.bar._name+4, offset	aMessage ; "Message"
		xor	edx, edx
		mov	list.bar.expl+4, offset	aMessage ; "Message"
		mov	list.bar.mode+4, edx
		mov	list.bar.defdx+4, 100h
		mov	list.bar.nbar, 2
		xor	ecx, ecx
		mov	list.tabfunc, offset loc_4194BC
		mov	list.custommode, ecx
		xor	eax, eax
		add	esp, 8
		xor	edx, edx
		mov	list.customdata, eax
		mov	list.updatefunc, edx
		xor	ecx, ecx
		mov	list.drawfunc, offset loc_419088
		push	0		; mode
		mov	list.tableselfunc, ecx
		push	0		; destfunc
		xor	eax, eax
		push	0		; sortfunc
		mov	list.menu, offset stru_518054
		mov	dword_5D8F50, eax
		push	ebx		; nexp
		mov	dword_5D8F4C, eax
		push	1		; itemsize
		push	offset list.sorted ; sd
		mov	dword_5D8F54, 0FFFFFFFFh
		call	Createsorteddata
		add	esp, 18h
		mov	ebx, eax
		mov	eax, list.hw
		test	eax, eax
		jz	short loc_41964D
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_41964D:				; CODE XREF: .text:00419641j
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_419654:				; CODE XREF: .text:0040AFF0p
					; .text:loc_40FFFEp ...
		push	ebp
		mov	ebp, esp
		cmp	list.hw, 0
		jnz	short loc_41968F
		push	offset aLogData	; "Log data"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset icon	; "ICO_L"
		mov	eax, g_hInstance
		push	eax		; hi
		mov	edx, list.bar.nbar
		push	edx		; ncolumn
		push	0		; nrow
		push	offset list	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_41969F
; ---------------------------------------------------------------------------

loc_41968F:				; CODE XREF: .text:0041965Ej
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, list.hw
		push	ecx		; hWnd
		call	InvalidateRect

loc_41969F:				; CODE XREF: .text:0041968Dj
		cmp	list.hparent, 0
		jz	short loc_4196F4
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4196F4
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4196CB
		push	0		; lParam
		mov	edx, list.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4196CB:				; CODE XREF: .text:004196B5j
		mov	ecx, list.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4196E8
		push	9		; nCmdShow
		mov	eax, list.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4196E8:				; CODE XREF: .text:004196D9j
		mov	edx, list.hw
		push	edx		; hWnd
		call	SetFocus

loc_4196F4:				; CODE XREF: .text:004196A6j
					; .text:004196ACj
		mov	eax, list.hw
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4196FC(HDC hDC, int, int)
loc_4196FC:				; CODE XREF: .text:0042055Bp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBC0h
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-440h]
		mov	ebx, [ebp+8]
		mov	edi, [ebp+10h]
		test	ebx, ebx
		jz	short loc_419722
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_419722
		test	edi, edi
		jnz	short loc_41972A

loc_419722:				; CODE XREF: .text:00419716j
					; .text:0041971Cj
		or	eax, 0FFFFFFFFh
		jmp	loc_419BE4
; ---------------------------------------------------------------------------

loc_41972A:				; CODE XREF: .text:00419720j
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		mov	ecx, [edx]
		cmp	ecx, [eax+8]
		jge	short loc_41974E
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		mov	ecx, [edx+4]
		cmp	ecx, [eax+0Ch]
		jge	short loc_41974E
		cmp	dword ptr [edi+8Ch], 0
		jg	short loc_419756

loc_41974E:				; CODE XREF: .text:00419735j
					; .text:00419743j
		or	eax, 0FFFFFFFFh
		jmp	loc_419BE4
; ---------------------------------------------------------------------------

loc_419756:				; CODE XREF: .text:0041974Cj
		cmp	dword ptr [edi+90h], 0
		jz	short loc_419765
		test	byte ptr [edi+41h], 8
		jz	short loc_41976C

loc_419765:				; CODE XREF: .text:0041975Dj
		xor	eax, eax
		jmp	loc_419BE4
; ---------------------------------------------------------------------------

loc_41976C:				; CODE XREF: .text:00419763j
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+0Ch]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+8]
		push	edx		; int
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+4]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		push	ecx		; int
		call	CreateRectRgn
		mov	[ebp-1Ch], eax
		mov	eax, [ebp-1Ch]
		push	eax		; HRGN
		push	ebx		; HDC
		call	SelectClipRgn
		mov	edx, [ebp-1Ch]
		push	edx		; HGDIOBJ
		call	DeleteObject
		lea	ecx, [edi+8Ch]
		mov	[ebp-18h], ecx
		push	8		; UINT
		push	ebx		; HDC
		call	SetTextAlign
		mov	eax, [edi+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.hfont[eax*4]
		push	ecx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		mov	eax, [ebp+0Ch]
		push	esi
		push	edi
		lea	edi, [ebp-430h]
		mov	esi, eax
		mov	ecx, 4
		rep movsd
		pop	edi
		pop	esi
		mov	eax, [edi+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		mov	eax, [ebp+0Ch]
		add	ecx, 4
		add	[eax+4], ecx
		mov	edx, [edi+244h]
		sub	[ebp-430h], edx
		mov	edx, g_Pen
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+4]
		dec	eax
		mov	[ebp-424h], eax
		push	edx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [ebp-424h]
		push	ecx		; int
		mov	eax, [ebp-430h]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [ebp-424h]
		push	edx		; int
		mov	ecx, [ebp-428h]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-18h]
		lea	ecx, [edx+118h]
		mov	[ebp-20h], ecx
		jmp	loc_419B68
; ---------------------------------------------------------------------------

loc_41986D:				; CODE XREF: .text:00419B76j
		mov	eax, [ebp-20h]
		cmp	dword ptr [eax], 0
		jle	loc_419B61
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+8]
		cmp	ecx, [ebp-430h]
		jle	loc_419B7C
		push	esi
		push	edi
		mov	edi, esi
		lea	esi, [ebp-430h]
		mov	ecx, 4
		rep movsd
		pop	edi
		pop	esi
		mov	eax, [ebp-20h]
		mov	eax, [eax]
		add	eax, [esi]
		mov	[esi+8], eax
		mov	[ebp-430h], eax
		mov	edx, [ebp+0Ch]
		cmp	eax, [edx]
		jle	loc_419B61
		mov	ecx, [ebp-20h]
		mov	eax, [ecx-88h]
		mov	[ebp-0Ch], eax
		dec	dword ptr [esi+8]
		mov	edx, g_Pen
		push	edx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [esi+4]
		push	ecx		; int
		mov	eax, [esi+8]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [esi+0Ch]
		push	edx		; int
		mov	ecx, [esi+8]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		mov	eax, [edi+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font._width[eax*4]
		sar	ecx, 1
		jns	short loc_419911
		adc	ecx, 0

loc_419911:				; CODE XREF: .text:0041990Cj
		add	ecx, [esi]
		mov	[ebp-10h], ecx
		mov	edx, [esi+0Ch]
		dec	edx
		sub	edx, font.hadjbot[eax*4]
		mov	[ebp-14h], edx
		test	byte ptr [ebp-0Ch], 3
		jnz	short loc_41995B
		mov	eax, g_Pen+14h
		push	eax		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [esi+4]
		push	ecx		; int
		mov	eax, [esi]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [esi+4]
		push	edx		; int
		mov	ecx, [esi+8]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		inc	dword ptr [esi+4]
		jmp	loc_419A28
; ---------------------------------------------------------------------------

loc_41995B:				; CODE XREF: .text:00419928j
		mov	eax, [ebp-0Ch]
		and	eax, 104h
		cmp	eax, 100h
		jnz	short loc_4199AF
		mov	edx, g_Pen+8
		push	edx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [esi+0Ch]
		dec	ecx
		push	ecx		; int
		mov	eax, [esi]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [esi+4]
		push	edx		; int
		mov	ecx, [esi]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		mov	eax, [esi+4]
		push	eax		; int
		mov	edx, [esi+8]
		push	edx		; int
		push	ebx		; HDC
		call	LineTo
		inc	dword ptr [esi]
		inc	dword ptr [esi+4]
		inc	dword ptr [ebp-10h]
		inc	dword ptr [ebp-14h]
		jmp	short loc_419A28
; ---------------------------------------------------------------------------

loc_4199AF:				; CODE XREF: .text:00419968j
		dec	dword ptr [esi+0Ch]
		mov	ecx, g_Pen+14h
		push	ecx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	eax, [esi+0Ch]
		push	eax		; int
		mov	edx, [esi]
		push	edx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	ecx, [esi+4]
		push	ecx		; int
		mov	eax, [esi]
		push	eax		; int
		push	ebx		; HDC
		call	LineTo
		mov	edx, [esi+4]
		push	edx		; int
		mov	ecx, [esi+8]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		inc	dword ptr [esi]
		dec	dword ptr [esi+8]
		mov	eax, g_Pen+8
		push	eax		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	edx, [esi+0Ch]
		push	edx		; int
		mov	ecx, [esi]
		push	ecx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	eax, [esi+0Ch]
		push	eax		; int
		mov	edx, [esi+8]
		push	edx		; int
		push	ebx		; HDC
		call	LineTo
		mov	ecx, [esi+4]
		push	ecx		; int
		mov	eax, [esi+8]
		push	eax		; int
		push	ebx		; HDC
		call	LineTo
		inc	dword ptr [esi+4]

loc_419A28:				; CODE XREF: .text:00419956j
					; .text:004199ADj
		lea	edx, [ebp-420h]
		push	edx
		push	0
		mov	ecx, [ebp-4]
		push	ecx
		push	edi
		call	loc_41A3C8
		add	esp, 10h
		mov	[ebp-8], eax
		test	byte ptr [ebp-0Ch], 4
		jz	short loc_419A62
		mov	eax, g_Color+8
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		jmp	short loc_419AAD
; ---------------------------------------------------------------------------

loc_419A62:				; CODE XREF: .text:00419A45j
		cmp	dword_57FEA8, 0
		jz	short loc_419A94
		test	byte ptr [ebp-0Ch], 2
		jz	short loc_419A94
		mov	ecx, [edi+7Ch]
		cmp	ecx, [ebp-4]
		jnz	short loc_419A94
		mov	eax, g_Color
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+18h
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		jmp	short loc_419AAD
; ---------------------------------------------------------------------------

loc_419A94:				; CODE XREF: .text:00419A69j
					; .text:00419A6Fj ...
		mov	ecx, g_Color
		push	ecx		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	eax, g_Color+0Ch
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor

loc_419AAD:				; CODE XREF: .text:00419A60j
					; .text:00419A92j
		mov	edx, [ebp+0Ch]
		mov	eax, [edx+8]
		cmp	eax, [esi+8]
		jge	short loc_419ABB
		mov	[esi+8], eax

loc_419ABB:				; CODE XREF: .text:00419AB6j
		test	byte ptr [ebp-0Ch], 80h
		jz	short loc_419AC6
		cmp	dword ptr [esi], 0
		jl	short loc_419AE6

loc_419AC6:				; CODE XREF: .text:00419ABFj
		push	0		; INT *
		lea	ecx, [ebp-420h]
		mov	edx, [ebp-8]
		push	edx		; UINT
		push	ecx		; LPCWSTR
		push	esi		; RECT *
		push	6		; UINT
		mov	eax, [ebp-14h]
		push	eax		; int
		mov	edx, [ebp-10h]
		push	edx		; int
		push	ebx		; HDC
		call	ExtTextOutW
		jmp	short loc_419B61
; ---------------------------------------------------------------------------

loc_419AE6:				; CODE XREF: .text:00419AC4j
		mov	ecx, [edi+234h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	edx, font._width[ecx*4]
		add	edx, edx
		sub	[esi+8], edx
		mov	ecx, [esi+8]
		cmp	ecx, [esi]
		jle	short loc_419B27
		push	0		; INT *
		lea	edx, [ebp-420h]
		mov	eax, [ebp-8]
		push	eax		; UINT
		push	edx		; LPCWSTR
		push	esi		; RECT *
		push	6		; UINT
		mov	ecx, [ebp-14h]
		push	ecx		; int
		mov	eax, [ebp-10h]
		push	eax		; int
		push	ebx		; HDC
		call	ExtTextOutW

loc_419B27:				; CODE XREF: .text:00419B07j
		mov	edx, [esi+8]
		mov	[esi], edx
		mov	ecx, [edi+234h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	edx, font._width[ecx*4]
		add	edx, edx
		add	[esi+8], edx
		push	0		; INT *
		push	2		; UINT
		push	offset asc_518C7E ; LPCWSTR
		push	esi		; RECT *
		push	6		; UINT
		mov	ecx, [ebp-14h]
		push	ecx		; int
		mov	eax, [esi]
		push	eax		; int
		push	ebx		; HDC
		call	ExtTextOutW

loc_419B61:				; CODE XREF: .text:00419873j
					; .text:004198B3j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-20h], 4

loc_419B68:				; CODE XREF: .text:00419868j
		mov	edx, [ebp-18h]
		mov	ecx, [edx]
		cmp	ecx, [ebp-4]
		jle	short loc_419B7C
		cmp	dword ptr [ebp-4], 11h
		jl	loc_41986D

loc_419B7C:				; CODE XREF: .text:00419885j
					; .text:00419B70j
		mov	eax, [ebp-430h]
		cmp	eax, [ebp-428h]
		jge	short loc_419BDA
		mov	edx, g_Pen+14h
		push	edx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [ebp-42Ch]
		push	ecx		; int
		mov	eax, [ebp-430h]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [ebp-42Ch]
		push	edx		; int
		mov	ecx, [ebp-428h]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		inc	dword ptr [ebp-42Ch]
		mov	eax, g_Brush
		push	eax		; hbr
		lea	edx, [ebp-430h]
		push	edx		; lprc
		push	ebx		; hDC
		call	FillRect

loc_419BDA:				; CODE XREF: .text:00419B88j
		push	0		; HRGN
		push	ebx		; HDC
		call	SelectClipRgn
		xor	eax, eax

loc_419BE4:				; CODE XREF: .text:00419725j
					; .text:00419751j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_419BEC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_419BEC:				; DATA XREF: .data:stru_518504o
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_419C0E
		test	byte ptr [eax+40h], 1
		jnz	short loc_419C0E
		cmp	dword ptr [eax+68h], 0
		jl	short loc_419C0E
		mov	ecx, [eax+68h]
		cmp	ecx, [eax+44h]
		jl	short loc_419C13

loc_419C0E:				; CODE XREF: .text:00419BF8j
					; .text:00419BFEj ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419C13:				; CODE XREF: .text:00419C0Cj
		test	edx, edx
		jnz	short loc_419C1F
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419C1F:				; CODE XREF: .text:00419C15j
		dec	edx
		jnz	loc_419CA7
		push	0FFFFFFFFh	; column
		push	eax		; pt
		call	Copytableselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_419C4B
		push	offset aUnableToCopy ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_419CA2
; ---------------------------------------------------------------------------

loc_419C4B:				; CODE XREF: .text:00419C35j
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_419C74
		push	ebx		; hMem
		call	GlobalFree
		push	offset aUnableToCopy ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_419CA2
; ---------------------------------------------------------------------------

loc_419C74:				; CODE XREF: .text:00419C58j
		call	EmptyClipboard
		push	ebx		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_419C9D
		push	ebx		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		test	eax, eax
		jz	short loc_419C9D
		push	eax		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_419C9D:				; CODE XREF: .text:00419C88j
					; .text:00419C93j
		call	CloseClipboard

loc_419CA2:				; CODE XREF: .text:00419C49j
					; .text:00419C72j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419CA7:				; CODE XREF: .text:00419C20j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_419CAC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_419CAC:				; DATA XREF: .data:stru_518504o
					; .data:stru_518BF4o
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		mov	ecx, [ebp+14h]
		mov	edx, [ebp+10h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_419CCE
		cmp	dword ptr [eax+44h], 0
		jz	short loc_419CCE
		test	byte ptr [eax+40h], 1
		jz	short loc_419CD3
		cmp	edx, 1
		jz	short loc_419CD3

loc_419CCE:				; CODE XREF: .text:00419CBBj
					; .text:00419CC1j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419CD3:				; CODE XREF: .text:00419CC7j
					; .text:00419CCCj
		test	ecx, ecx
		jnz	short loc_419CDF
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419CDF:				; CODE XREF: .text:00419CD5j
		dec	ecx
		jnz	loc_419D66
		push	edx		; compatible
		push	eax		; pt
		call	Copywholetable
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_419D0A
		push	offset aUnableToCopy ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_419D61
; ---------------------------------------------------------------------------

loc_419D0A:				; CODE XREF: .text:00419CF4j
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_419D33
		push	ebx		; hMem
		call	GlobalFree
		push	offset aUnableToCopy ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_419D61
; ---------------------------------------------------------------------------

loc_419D33:				; CODE XREF: .text:00419D17j
		call	EmptyClipboard
		push	ebx		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_419D5C
		push	ebx		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		test	eax, eax
		jz	short loc_419D5C
		push	eax		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_419D5C:				; CODE XREF: .text:00419D47j
					; .text:00419D52j
		call	CloseClipboard

loc_419D61:				; CODE XREF: .text:00419D08j
					; .text:00419D31j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_419D66:				; CODE XREF: .text:00419CE0j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_419D6C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	wchar_t	*dst, int, int)
loc_419D6C:				; DATA XREF: .data:stru_518504o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_419DA2
		test	byte ptr [esi+40h], 1
		jnz	short loc_419DA2
		test	edi, edi
		jb	short loc_419DA2
		cmp	edi, [esi+8Ch]
		jnb	short loc_419DA2
		cmp	dword ptr [esi+68h], 0
		jl	short loc_419DA2
		mov	edx, [esi+68h]
		cmp	edx, [esi+44h]
		jl	short loc_419DA9

loc_419DA2:				; CODE XREF: .text:00419D80j
					; .text:00419D86j ...
		xor	eax, eax
		jmp	loc_419E6D
; ---------------------------------------------------------------------------

loc_419DA9:				; CODE XREF: .text:00419DA0j
		test	eax, eax
		jnz	short loc_419DE9
		mov	ecx, [esi+edi*4+94h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	ebx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_419DD7
; ---------------------------------------------------------------------------

loc_419DC7:				; CODE XREF: .text:00419DDDj
		cmp	ax, 24h
		jnz	short loc_419DD4
		mov	word ptr [ebx],	0
		jmp	short loc_419DDF
; ---------------------------------------------------------------------------

loc_419DD4:				; CODE XREF: .text:00419DCBj
		add	ebx, 2

loc_419DD7:				; CODE XREF: .text:00419DC5j
		mov	ax, [ebx]
		test	ax, ax
		jnz	short loc_419DC7

loc_419DDF:				; CODE XREF: .text:00419DD2j
		mov	eax, 1
		jmp	loc_419E6D
; ---------------------------------------------------------------------------

loc_419DE9:				; CODE XREF: .text:00419DABj
		dec	eax
		jnz	short loc_419E6B
		push	edi		; column
		push	esi		; pt
		call	Copytableselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_419E10
		push	offset aUnableToCopy ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_419E67
; ---------------------------------------------------------------------------

loc_419E10:				; CODE XREF: .text:00419DFAj
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_419E39
		push	ebx		; hMem
		call	GlobalFree
		push	offset aUnableToCopy ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_419E67
; ---------------------------------------------------------------------------

loc_419E39:				; CODE XREF: .text:00419E1Dj
		call	EmptyClipboard
		push	ebx		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_419E62
		push	ebx		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		test	eax, eax
		jz	short loc_419E62
		push	eax		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_419E62:				; CODE XREF: .text:00419E4Dj
					; .text:00419E58j
		call	CloseClipboard

loc_419E67:				; CODE XREF: .text:00419E0Ej
					; .text:00419E37j
		xor	eax, eax
		jmp	short loc_419E6D
; ---------------------------------------------------------------------------

loc_419E6B:				; CODE XREF: .text:00419DEAj
		xor	eax, eax

loc_419E6D:				; CODE XREF: .text:00419DA4j
					; .text:00419DE4j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_419E74(int, wchar_t *dst, int, int)
loc_419E74:				; DATA XREF: .data:stru_5186E4o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_419E9C
		cmp	dword ptr [edi+74h], 0
		jz	short loc_419E9C
		test	byte ptr [edi+40h], 5
		jnz	short loc_419E9C
		test	edx, edx
		jb	short loc_419E9C
		cmp	edx, 11h
		jb	short loc_419EA3

loc_419E9C:				; CODE XREF: .text:00419E85j
					; .text:00419E8Bj ...
		xor	eax, eax
		jmp	loc_419F40
; ---------------------------------------------------------------------------

loc_419EA3:				; CODE XREF: .text:00419E9Aj
		xor	ebx, ebx
		lea	eax, [edi+11Ch]
		jmp	short loc_419EBB
; ---------------------------------------------------------------------------

loc_419EAD:				; CODE XREF: .text:00419EC6j
		test	byte ptr [eax],	2
		jz	short loc_419EB7
		test	edx, edx
		jz	short loc_419EC8
		dec	edx

loc_419EB7:				; CODE XREF: .text:00419EB0j
		inc	ebx
		add	eax, 4

loc_419EBB:				; CODE XREF: .text:00419EABj
		cmp	ebx, [edi+8Ch]
		jge	short loc_419EC8
		cmp	ebx, 11h
		jl	short loc_419EAD

loc_419EC8:				; CODE XREF: .text:00419EB4j
					; .text:00419EC1j
		cmp	ebx, [edi+8Ch]
		jge	short loc_419ED5
		cmp	ebx, 11h
		jl	short loc_419ED9

loc_419ED5:				; CODE XREF: .text:00419ECEj
		xor	eax, eax
		jmp	short loc_419F40
; ---------------------------------------------------------------------------

loc_419ED9:				; CODE XREF: .text:00419ED3j
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_419F24
		mov	edx, [edi+ebx*4+94h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	esi		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_419F09
; ---------------------------------------------------------------------------

loc_419EF9:				; CODE XREF: .text:00419F0Fj
		cmp	ax, 24h
		jnz	short loc_419F06
		mov	word ptr [esi],	0
		jmp	short loc_419F11
; ---------------------------------------------------------------------------

loc_419F06:				; CODE XREF: .text:00419EFDj
		add	esi, 2

loc_419F09:				; CODE XREF: .text:00419EF7j
		mov	ax, [esi]
		test	ax, ax
		jnz	short loc_419EF9

loc_419F11:				; CODE XREF: .text:00419F04j
		cmp	ebx, [edi+7Ch]
		jnz	short loc_419F1D
		mov	eax, 2
		jmp	short loc_419F40
; ---------------------------------------------------------------------------

loc_419F1D:				; CODE XREF: .text:00419F14j
		mov	eax, 1
		jmp	short loc_419F40
; ---------------------------------------------------------------------------

loc_419F24:				; CODE XREF: .text:00419EDDj
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_419F3E
		push	ebx		; sort
		add	edi, 44h
		push	edi		; sd
		call	Sortsorteddata
		add	esp, 8
		mov	eax, 1
		jmp	short loc_419F40
; ---------------------------------------------------------------------------

loc_419F3E:				; CODE XREF: .text:00419F28j
		xor	eax, eax

loc_419F40:				; CODE XREF: .text:00419E9Ej
					; .text:00419ED7j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_419F48(int, wchar_t *dst, int, int)
loc_419F48:				; DATA XREF: .data:stru_5187ECo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_419F64
		test	ebx, ebx
		jb	short loc_419F64
		cmp	ebx, 8
		jb	short loc_419F68

loc_419F64:				; CODE XREF: .text:00419F59j
					; .text:00419F5Dj
		xor	eax, eax
		jmp	short loc_419FBB
; ---------------------------------------------------------------------------

loc_419F68:				; CODE XREF: .text:00419F62j
		test	eax, eax
		jnz	short loc_419FA2
		mov	edi, ebx
		lea	eax, [edi+edi*4]
		shl	eax, 5
		sub	eax, edi
		shl	eax, 2
		add	eax, offset font._name
		push	eax		; src
		mov	edx, [ebp+0Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		cmp	edi, [esi+234h]
		jnz	short loc_419F9B
		mov	eax, 2
		jmp	short loc_419FBB
; ---------------------------------------------------------------------------

loc_419F9B:				; CODE XREF: .text:00419F92j
		mov	eax, 1
		jmp	short loc_419FBB
; ---------------------------------------------------------------------------

loc_419FA2:				; CODE XREF: .text:00419F6Aj
		dec	eax
		jnz	short loc_419FB9
		mov	[esi+234h], ebx
		push	esi		; pt
		call	Defaultbar
		pop	ecx
		mov	eax, 1
		jmp	short loc_419FBB
; ---------------------------------------------------------------------------

loc_419FB9:				; CODE XREF: .text:00419FA3j
		xor	eax, eax

loc_419FBB:				; CODE XREF: .text:00419F66j
					; .text:00419F99j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_419FC0(int, wchar_t *dst, int, int)
loc_419FC0:				; DATA XREF: .data:stru_5188C4o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_419FDC
		test	ebx, ebx
		jb	short loc_419FDC
		cmp	ebx, 8
		jb	short loc_419FE0

loc_419FDC:				; CODE XREF: .text:00419FD1j
					; .text:00419FD5j
		xor	eax, eax
		jmp	short loc_41A02D
; ---------------------------------------------------------------------------

loc_419FE0:				; CODE XREF: .text:00419FDAj
		test	eax, eax
		jnz	short loc_41A01B
		mov	edi, ebx
		lea	eax, [edi+edi*2]
		lea	eax, [edi+eax*8]
		lea	eax, [edi+eax*4]
		shl	eax, 3
		add	eax, offset scheme
		push	eax		; src
		mov	edx, [ebp+0Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		cmp	edi, [esi+238h]
		jnz	short loc_41A014
		mov	eax, 2
		jmp	short loc_41A02D
; ---------------------------------------------------------------------------

loc_41A014:				; CODE XREF: .text:0041A00Bj
		mov	eax, 1
		jmp	short loc_41A02D
; ---------------------------------------------------------------------------

loc_41A01B:				; CODE XREF: .text:00419FE2j
		dec	eax
		jnz	short loc_41A02B
		mov	[esi+238h], ebx
		mov	eax, 1
		jmp	short loc_41A02D
; ---------------------------------------------------------------------------

loc_41A02B:				; CODE XREF: .text:0041A01Cj
		xor	eax, eax

loc_41A02D:				; CODE XREF: .text:00419FDEj
					; .text:0041A012j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_41A034(int, wchar_t *dst, int, int)
loc_41A034:				; DATA XREF: .data:stru_51899Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_41A056
		test	byte ptr [esi+43h], 2
		jz	short loc_41A056
		test	ebx, ebx
		jb	short loc_41A056
		cmp	ebx, 8
		jb	short loc_41A05A

loc_41A056:				; CODE XREF: .text:0041A045j
					; .text:0041A04Bj ...
		xor	eax, eax
		jmp	short loc_41A0A7
; ---------------------------------------------------------------------------

loc_41A05A:				; CODE XREF: .text:0041A054j
		test	eax, eax
		jnz	short loc_41A095
		mov	edi, ebx
		lea	eax, [edi+edi*2]
		lea	eax, [edi+eax*8]
		lea	eax, [edi+eax*4]
		shl	eax, 3
		add	eax, offset hilite
		push	eax		; src
		mov	edx, [ebp+0Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		cmp	edi, [esi+23Ch]
		jnz	short loc_41A08E
		mov	eax, 2
		jmp	short loc_41A0A7
; ---------------------------------------------------------------------------

loc_41A08E:				; CODE XREF: .text:0041A085j
		mov	eax, 1
		jmp	short loc_41A0A7
; ---------------------------------------------------------------------------

loc_41A095:				; CODE XREF: .text:0041A05Cj
		dec	eax
		jnz	short loc_41A0A5
		mov	[esi+23Ch], ebx
		mov	eax, 1
		jmp	short loc_41A0A7
; ---------------------------------------------------------------------------

loc_41A0A5:				; CODE XREF: .text:0041A096j
		xor	eax, eax

loc_41A0A7:				; CODE XREF: .text:0041A058j
					; .text:0041A08Cj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A0AC:				; DATA XREF: .data:stru_518A74o
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+14h]
		mov	edx, [ebp+10h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41A0C5
		cmp	dword ptr [eax+224h], 0
		jnz	short loc_41A0C9

loc_41A0C5:				; CODE XREF: .text:0041A0BAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A0C9:				; CODE XREF: .text:0041A0C3j
		test	edx, edx
		jnz	short loc_41A0DA
		cmp	hwclient, 0
		jnz	short loc_41A0DA
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A0DA:				; CODE XREF: .text:0041A0CBj
					; .text:0041A0D4j
		cmp	edx, 1
		jnz	short loc_41A0EC
		cmp	hwclient, 0
		jz	short loc_41A0EC
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A0EC:				; CODE XREF: .text:0041A0DDj
					; .text:0041A0E6j
		test	ecx, ecx
		jnz	short loc_41A10C
		mov	edx, [eax+224h]
		cmp	edx, dword_57FE6C
		jnz	short loc_41A105
		mov	eax, 2
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A105:				; CODE XREF: .text:0041A0FCj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A10C:				; CODE XREF: .text:0041A0EEj
		dec	ecx
		jnz	short loc_41A14C
		mov	edx, [eax+224h]
		cmp	edx, dword_57FE6C
		jnz	short loc_41A127
		xor	ecx, ecx
		mov	dword_57FE6C, ecx
		jmp	short loc_41A12D
; ---------------------------------------------------------------------------

loc_41A127:				; CODE XREF: .text:0041A11Bj
		mov	dword_57FE6C, edx

loc_41A12D:				; CODE XREF: .text:0041A125j
		push	3		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		mov	eax, [eax+224h]
		push	eax		; hWnd
		call	SetWindowPos
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A14C:				; CODE XREF: .text:0041A10Dj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A150:				; DATA XREF: .data:stru_518A74o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41A164
		test	byte ptr [ebx+43h], 1
		jnz	short loc_41A169

loc_41A164:				; CODE XREF: .text:0041A15Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A169:				; CODE XREF: .text:0041A162j
		test	eax, eax
		jnz	short loc_41A194
		call	Getcpudisasmtable
		cmp	ebx, eax
		jnz	short loc_41A17B
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A17B:				; CODE XREF: .text:0041A174j
		cmp	dword ptr [ebx+254h], 0
		jz	short loc_41A18C
		mov	eax, 2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A18C:				; CODE XREF: .text:0041A182j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A194:				; CODE XREF: .text:0041A16Bj
		dec	eax
		jnz	short loc_41A1B6
		cmp	dword ptr [ebx+254h], 0
		setz	dl
		and	edx, 1
		push	edx		; autoupdate
		push	ebx		; pt
		call	Setautoupdate
		add	esp, 8
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A1B6:				; CODE XREF: .text:0041A195j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_41A1BC:				; DATA XREF: .data:stru_518A74o
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+14h]
		mov	edx, [ebp+10h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41A1D2
		test	byte ptr [eax+41h], 8
		jz	short loc_41A1D6

loc_41A1D2:				; CODE XREF: .text:0041A1CAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A1D6:				; CODE XREF: .text:0041A1D0j
		test	ecx, ecx
		jnz	short loc_41A203
		cmp	dword ptr [eax+90h], 0
		jnz	short loc_41A1EB
		test	edx, edx
		jnz	short loc_41A1EB
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A1EB:				; CODE XREF: .text:0041A1E1j
					; .text:0041A1E5j
		cmp	dword ptr [eax+90h], 0
		jz	short loc_41A1FC
		test	edx, edx
		jz	short loc_41A1FC
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A1FC:				; CODE XREF: .text:0041A1F2j
					; .text:0041A1F6j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A203:				; CODE XREF: .text:0041A1D8j
		dec	ecx
		jnz	short loc_41A227
		cmp	dword ptr [eax+90h], 0
		setz	dl
		and	edx, 1
		mov	[eax+90h], edx
		push	eax
		call	loc_41A554
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A227:				; CODE XREF: .text:0041A204j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_41A22C:				; DATA XREF: .data:stru_518A74o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	ecx, [ebp+10h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41A242
		test	byte ptr [eax+41h], 2
		jz	short loc_41A246

loc_41A242:				; CODE XREF: .text:0041A23Aj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A246:				; CODE XREF: .text:0041A240j
		test	edx, edx
		jnz	short loc_41A279
		test	byte ptr [eax+43h], 4
		jz	short loc_41A254
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A254:				; CODE XREF: .text:0041A24Ej
		cmp	dword ptr [eax+240h], 0
		jnz	short loc_41A261
		test	ecx, ecx
		jz	short loc_41A26E

loc_41A261:				; CODE XREF: .text:0041A25Bj
		cmp	dword ptr [eax+240h], 0
		jz	short loc_41A272
		test	ecx, ecx
		jz	short loc_41A272

loc_41A26E:				; CODE XREF: .text:0041A25Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A272:				; CODE XREF: .text:0041A268j
					; .text:0041A26Cj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A279:				; CODE XREF: .text:0041A248j
		dec	edx
		jnz	short loc_41A289
		mov	[eax+240h], ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A289:				; CODE XREF: .text:0041A27Aj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_41A290:				; DATA XREF: .data:stru_518A74o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	ecx, [ebp+8]
		test	ecx, ecx
		jnz	short loc_41A2A1
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A2A1:				; CODE XREF: .text:0041A29Bj
		test	eax, eax
		jnz	short loc_41A2D3
		xor	eax, eax
		lea	edx, [ecx+11Ch]
		jmp	short loc_41A2B8
; ---------------------------------------------------------------------------

loc_41A2AF:				; CODE XREF: .text:0041A2BEj
		test	byte ptr [edx],	8
		jz	short loc_41A2C0
		inc	eax
		add	edx, 4

loc_41A2B8:				; CODE XREF: .text:0041A2ADj
		cmp	eax, [ecx+8Ch]
		jl	short loc_41A2AF

loc_41A2C0:				; CODE XREF: .text:0041A2B2j
		cmp	eax, [ecx+8Ch]
		jl	short loc_41A2CC
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A2CC:				; CODE XREF: .text:0041A2C6j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A2D3:				; CODE XREF: .text:0041A2A3j
		dec	eax
		jnz	short loc_41A2E4
		push	ecx		; pt
		call	Defaultbar
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A2E4:				; CODE XREF: .text:0041A2D4j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; BOOL __stdcall loc_41A2E8(HWND, LPARAM)
loc_41A2E8:				; DATA XREF: .text:00422C94o
					; .text:00422CA3o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	100h		; nMaxCount
		lea	eax, [ebp-200h]
		push	eax		; lpClassName
		push	ebx		; hWnd
		call	GetClassNameW
		test	eax, eax
		jz	short loc_41A325
		push	offset ottable	; s2
		lea	edx, [ebp-200h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_41A32F

loc_41A325:				; CODE XREF: .text:0041A30Bj
		mov	eax, 1
		jmp	loc_41A3BE
; ---------------------------------------------------------------------------

loc_41A32F:				; CODE XREF: .text:0041A323j
		push	0		; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_41A344
		mov	eax, 1
		jmp	short loc_41A3BE
; ---------------------------------------------------------------------------

loc_41A344:				; CODE XREF: .text:0041A33Bj
		mov	edi, dword_5D9198
		test	edi, edi
		jz	short loc_41A35B
		push	edi		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		test	eax, eax
		jnz	short loc_41A362

loc_41A35B:				; CODE XREF: .text:0041A34Cj
		mov	eax, 1
		jmp	short loc_41A3BE
; ---------------------------------------------------------------------------

loc_41A362:				; CODE XREF: .text:0041A359j
		push	esi		; maxlen
		mov	edx, dword_5D9198
		push	edx		; s2
		push	ebx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_41A3B9
		cmp	word ptr [ebx+esi*2], 0
		jnz	short loc_41A386
		inc	dword_5D9170
		jmp	short loc_41A3B9
; ---------------------------------------------------------------------------

loc_41A386:				; CODE XREF: .text:0041A37Cj
		cmp	word ptr [ebx+esi*2], 5Bh
		jnz	short loc_41A3B9
		cmp	word ptr [ebx+esi*2+2],	31h
		jb	short loc_41A3B9
		cmp	word ptr [ebx+esi*2+2],	39h
		ja	short loc_41A3B9
		cmp	word ptr [ebx+esi*2+4],	5Dh
		jnz	short loc_41A3B9
		cmp	word ptr [ebx+esi*2+6],	0
		jnz	short loc_41A3B9
		movzx	ecx, word ptr [ebx+esi*2+2]
		inc	dword ptr (word_5D8F60+150h)[ecx*4]

loc_41A3B9:				; CODE XREF: .text:0041A375j
					; .text:0041A384j ...
		mov	eax, 1

loc_41A3BE:				; CODE XREF: .text:0041A32Aj
					; .text:0041A342j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

loc_41A3C8:				; CODE XREF: .text:00419A36p
					; .text:0041DDAFp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDD8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41A3F3
		cmp	dword ptr [ebp+0Ch], 0
		jl	short loc_41A3F3
		mov	edx, [eax+8Ch]
		cmp	edx, [ebp+0Ch]
		jle	short loc_41A3F3
		test	esi, esi
		jnz	short loc_41A403

loc_41A3F3:				; CODE XREF: .text:0041A3DCj
					; .text:0041A3E2j ...
		test	esi, esi
		jz	short loc_41A3FC
		mov	word ptr [esi],	0

loc_41A3FC:				; CODE XREF: .text:0041A3F5j
		xor	eax, eax
		jmp	loc_41A54C
; ---------------------------------------------------------------------------

loc_41A403:				; CODE XREF: .text:0041A3F1j
		add	eax, 8Ch
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		mov	ecx, [ebp+0Ch]
		mov	eax, [edx+ecx*4+8]
		push	eax		; src
		call	_T
		pop	ecx
		xor	ebx, ebx
		mov	edx, esi
		mov	ecx, eax

loc_41A422:				; CODE XREF: .text:0041A44Dj
		mov	ax, [ecx]
		test	ax, ax
		jz	short loc_41A44F
		cmp	ax, 24h
		jnz	short loc_41A43D
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_41A44F
		mov	word ptr [edx],	20h
		jmp	short loc_41A440
; ---------------------------------------------------------------------------

loc_41A43D:				; CODE XREF: .text:0041A42Ej
		mov	[edx], ax

loc_41A440:				; CODE XREF: .text:0041A43Bj
		inc	ebx
		add	edx, 2
		add	ecx, 2
		cmp	ebx, 0FFh
		jl	short loc_41A422

loc_41A44F:				; CODE XREF: .text:0041A428j
					; .text:0041A434j
		mov	word ptr [esi+ebx*2], 0
		mov	eax, [ebp-8]
		mov	edx, [ebp+0Ch]
		mov	eax, [eax+edx*4+90h]
		mov	edx, eax
		and	edx, 0F000000h
		sub	edx, 1000000h
		jz	short loc_41A47F
		sub	edx, 1000000h
		jz	short loc_41A47F
		jmp	loc_41A54A
; ---------------------------------------------------------------------------

loc_41A47F:				; CODE XREF: .text:0041A470j
					; .text:0041A478j
		and	eax, 0F000000h
		cmp	eax, 1000000h
		jnz	short loc_41A4A0
		mov	eax, asciicodepage
		cmp	eax, 4E4h
		jz	loc_41A54A
		mov	[ebp-4], eax
		jmp	short loc_41A4A9
; ---------------------------------------------------------------------------

loc_41A4A0:				; CODE XREF: .text:0041A489j
		mov	edx, mbcscodepage
		mov	[ebp-4], edx

loc_41A4A9:				; CODE XREF: .text:0041A49Ej
		cmp	_imp__GetCPInfoExW, 0
		jz	short loc_41A4EA
		lea	ecx, [ebp-228h]
		push	ecx		; _DWORD
		push	0		; _DWORD
		mov	eax, [ebp-4]
		push	eax		; _DWORD
		call	_imp__GetCPInfoExW
		test	eax, eax
		jz	short loc_41A4EA
		lea	edi, [ebp-210h]
		jmp	short loc_41A4D4
; ---------------------------------------------------------------------------

loc_41A4D1:				; CODE XREF: .text:0041A4E0j
					; .text:0041A4E6j
		add	edi, 2

loc_41A4D4:				; CODE XREF: .text:0041A4CFj
		mov	ax, [edi]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_41A4D1
		cmp	word ptr [edi],	20h
		jz	short loc_41A4D1
		jmp	short loc_41A4EF
; ---------------------------------------------------------------------------

loc_41A4EA:				; CODE XREF: .text:0041A4B0j
					; .text:0041A4C7j
		mov	edi, offset word_518C6C

loc_41A4EF:				; CODE XREF: .text:0041A4E8j
		cmp	word ptr [edi],	0
		jnz	short loc_41A518
		lea	eax, [ebx+0Dh]
		cmp	eax, 0FFh
		jge	short loc_41A518
		mov	edx, [ebp-4]
		lea	esi, [esi+ebx*2]
		push	edx
		push	offset aU_7	; format
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_41A54A
; ---------------------------------------------------------------------------

loc_41A518:				; CODE XREF: .text:0041A4F3j
					; .text:0041A4FDj
		push	offset asc_518C7A ; " "
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [esi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, 100h
		sub	ecx, ebx
		push	edi		; src
		push	ecx		; n
		lea	esi, [esi+ebx*2]
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_41A54A:				; CODE XREF: .text:0041A47Aj
					; .text:0041A495j ...
		mov	eax, ebx

loc_41A54C:				; CODE XREF: .text:0041A3FEj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_41A554:				; CODE XREF: .text:0041A21Ap
					; .text:0041A82Fp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFC4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_41A6E0
		cmp	dword ptr [esi+22Ch], 0
		jz	loc_41A6E0
		cmp	dword ptr [esi+230h], 0
		jz	loc_41A6E0
		cmp	dword ptr [esi+90h], 0
		jz	loc_41A6CB
		test	byte ptr [esi+41h], 8
		jnz	loc_41A6CB
		mov	dword ptr [ebp-3Ch], 2Ch
		mov	eax, [esi+22Ch]
		mov	edx, g_hInstance
		mov	[ebp-34h], eax
		xor	ecx, ecx
		mov	[ebp-1Ch], edx
		mov	[ebp-14h], ecx
		xor	ebx, ebx

loc_41A5B9:				; CODE XREF: .text:0041A5D7j
		mov	[ebp-30h], ebx
		lea	eax, [ebp-3Ch]
		push	eax		; lParam
		push	0		; wParam
		push	433h		; Msg
		mov	edx, [esi+230h]
		push	edx		; hWnd
		call	SendMessageW
		inc	ebx
		cmp	ebx, 11h
		jl	short loc_41A5B9
		lea	ecx, [ebp-10h]
		push	ecx		; lpRect
		mov	eax, [esi+22Ch]
		push	eax		; hWnd
		call	GetClientRect
		mov	edx, [esi+244h]
		xor	ecx, ecx
		neg	edx
		inc	edx
		lea	edi, [esi+1A4h]
		mov	[ebp-2Ch], edx
		mov	[ebp-28h], ecx
		mov	eax, [esi+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		add	ecx, 4
		xor	ebx, ebx
		mov	[ebp-20h], ecx
		jmp	short loc_41A67E
; ---------------------------------------------------------------------------

loc_41A621:				; CODE XREF: .text:0041A689j
		mov	edx, [ebp-8]
		cmp	edx, [ebp-2Ch]
		jl	short loc_41A68B
		mov	dword ptr [ebp-38h], 10h
		mov	[ebp-30h], ebx
		mov	eax, [edi]
		add	eax, [ebp-2Ch]
		add	eax, 0FFFFFFFDh
		mov	[ebp-24h], eax
		cmp	eax, [ebp-10h]
		jle	short loc_41A671
		cmp	edx, eax
		jge	short loc_41A64A
		mov	[ebp-24h], edx

loc_41A64A:				; CODE XREF: .text:0041A645j
		mov	ecx, [edi-0CCh]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	[ebp-18h], eax
		lea	eax, [ebp-3Ch]
		push	eax		; lParam
		push	0		; wParam
		push	432h		; Msg
		mov	edx, [esi+230h]
		push	edx		; hWnd
		call	SendMessageW

loc_41A671:				; CODE XREF: .text:0041A641j
		mov	ecx, [ebp-24h]
		inc	ebx
		add	ecx, 3
		add	edi, 4
		mov	[ebp-2Ch], ecx

loc_41A67E:				; CODE XREF: .text:0041A61Fj
		cmp	ebx, [esi+8Ch]
		jge	short loc_41A68B
		cmp	ebx, 11h
		jl	short loc_41A621

loc_41A68B:				; CODE XREF: .text:0041A627j
					; .text:0041A684j
		push	0		; lParam
		push	3		; wParam
		push	415h		; Msg
		mov	eax, [esi+230h]
		push	eax		; hWnd
		call	SendMessageW
		push	eax		; lParam
		push	1		; wParam
		push	403h		; Msg
		mov	edx, [esi+230h]
		push	edx		; hWnd
		call	SendMessageW
		push	0		; lParam
		push	1		; wParam
		push	401h		; Msg
		mov	ecx, [esi+230h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	short loc_41A6E0
; ---------------------------------------------------------------------------

loc_41A6CB:				; CODE XREF: .text:0041A589j
					; .text:0041A593j
		push	0		; lParam
		push	0		; wParam
		push	401h		; Msg
		mov	eax, [esi+230h]
		push	eax		; hWnd
		call	SendMessageW

loc_41A6E0:				; CODE XREF: .text:0041A562j
					; .text:0041A56Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  90. _Getcharacterwidth
; Exported entry 552. Getcharacterwidth

; signed int __cdecl Getcharacterwidth(t_table *pt, int	column)
		public Getcharacterwidth
Getcharacterwidth:			; CODE XREF: .text:0041A80Dp
					; .text:0041AE33p ...
		push	ebp		; _Getcharacterwidth
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41A702
		test	edx, edx
		jl	short loc_41A702
		cmp	edx, [eax+8Ch]
		jl	short loc_41A70A

loc_41A702:				; CODE XREF: .text:0041A6F4j
					; .text:0041A6F8j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41A70A:				; CODE XREF: .text:0041A700j
		mov	ecx, [eax+234h]
		mov	ebx, ecx
		lea	ecx, [ebx+ecx*4]
		shl	ecx, 5
		sub	ecx, ebx
		cmp	dword_5BE6BC, 0
		mov	ecx, font._width[ecx*4]
		jz	short loc_41A73A
		test	byte ptr [eax+edx*4+11Ch], 20h
		jz	short loc_41A73A
		mov	eax, ecx
		add	eax, eax
		mov	ecx, eax

loc_41A73A:				; CODE XREF: .text:0041A728j
					; .text:0041A732j
		mov	eax, ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  91. _Defaultbar
; Exported entry 462. Defaultbar

; void __cdecl Defaultbar(t_table *pt)
		public Defaultbar
Defaultbar:				; CODE XREF: .text:00419FACp
					; .text:0041A2D7p ...
		push	ebp		; _Defaultbar
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_41A835
		xor	eax, eax
		mov	[esi+244h], eax
		mov	eax, [esi+234h]
		test	eax, eax
		jl	short loc_41A76B
		cmp	eax, 8
		jl	short loc_41A773

loc_41A76B:				; CODE XREF: .text:0041A764j
		xor	edx, edx
		mov	[esi+234h], edx

loc_41A773:				; CODE XREF: .text:0041A769j
		test	byte ptr [esi+43h], 4
		jz	loc_41A801
		xor	ebx, ebx
		xor	edi, edi
		lea	eax, [esi+160h]
		jmp	short loc_41A78F
; ---------------------------------------------------------------------------

loc_41A789:				; CODE XREF: .text:0041A79Aj
		add	edi, [eax]
		inc	ebx
		add	eax, 4

loc_41A78F:				; CODE XREF: .text:0041A787j
		cmp	ebx, [esi+8Ch]
		jge	short loc_41A79C
		cmp	ebx, 11h
		jl	short loc_41A789

loc_41A79C:				; CODE XREF: .text:0041A795j
		mov	eax, [esi+22Ch]
		test	eax, eax
		jnz	short loc_41A7AB
		mov	[ebp-0Ch], edi
		jmp	short loc_41A7BD
; ---------------------------------------------------------------------------

loc_41A7AB:				; CODE XREF: .text:0041A7A4j
		lea	edx, [ebp-14h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetClientRect
		cmp	edi, [ebp-0Ch]
		jle	short loc_41A7BD
		mov	[ebp-0Ch], edi

loc_41A7BD:				; CODE XREF: .text:0041A7A9j
					; .text:0041A7B8j
		mov	eax, [ebp-0Ch]
		xor	ebx, ebx
		inc	eax
		cdq
		idiv	edi
		mov	[ebp-4], eax
		lea	eax, [esi+160h]
		xor	edi, edi
		jmp	short loc_41A7E3
; ---------------------------------------------------------------------------

loc_41A7D3:				; CODE XREF: .text:0041A7F1j
		mov	edx, [eax]
		inc	ebx
		imul	edx, [ebp-4]
		mov	[eax+44h], edx
		add	edi, [eax+44h]
		add	eax, 4

loc_41A7E3:				; CODE XREF: .text:0041A7D1j
		mov	ecx, [esi+8Ch]
		dec	ecx
		cmp	ebx, ecx
		jge	short loc_41A7F3
		cmp	ebx, 10h
		jl	short loc_41A7D3

loc_41A7F3:				; CODE XREF: .text:0041A7ECj
		mov	eax, [ebp-0Ch]
		sub	eax, edi
		mov	[esi+ebx*4+1A4h], eax
		jmp	short loc_41A82E
; ---------------------------------------------------------------------------

loc_41A801:				; CODE XREF: .text:0041A777j
		xor	ebx, ebx
		lea	edi, [esi+160h]
		jmp	short loc_41A821
; ---------------------------------------------------------------------------

loc_41A80B:				; CODE XREF: .text:0041A82Cj
		push	ebx		; column
		push	esi		; pt
		call	Getcharacterwidth
		add	esp, 8
		mov	edx, [edi]
		imul	edx, eax
		mov	[edi+44h], edx
		inc	ebx
		add	edi, 4

loc_41A821:				; CODE XREF: .text:0041A809j
		cmp	ebx, [esi+8Ch]
		jge	short loc_41A82E
		cmp	ebx, 11h
		jl	short loc_41A80B

loc_41A82E:				; CODE XREF: .text:0041A7FFj
					; .text:0041A827j
		push	esi
		call	loc_41A554
		pop	ecx

loc_41A835:				; CODE XREF: .text:0041A74Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  92. _Linecount
; Exported entry 643. Linecount

; LONG __cdecl Linecount(t_table *pt)
		public Linecount
Linecount:				; CODE XREF: .text:0041E05Ap
					; .text:00478726p ...
		push	ebp		; _Linecount
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41A854
		cmp	dword ptr [ebx+22Ch], 0
		jnz	short loc_41A858

loc_41A854:				; CODE XREF: .text:0041A849j
		xor	eax, eax
		jmp	short loc_41A8C6
; ---------------------------------------------------------------------------

loc_41A858:				; CODE XREF: .text:0041A852j
		mov	eax, [ebx+234h]
		test	eax, eax
		jl	short loc_41A867
		cmp	eax, 8
		jl	short loc_41A86F

loc_41A867:				; CODE XREF: .text:0041A860j
		xor	edx, edx
		mov	[ebx+234h], edx

loc_41A86F:				; CODE XREF: .text:0041A865j
		mov	ecx, [ebx+234h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	esi, font.height[ecx*4]
		test	esi, esi
		jg	short loc_41A88F
		mov	esi, 1

loc_41A88F:				; CODE XREF: .text:0041A888j
		lea	eax, [ebp-10h]
		push	eax		; lpRect
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	GetClientRect
		cmp	dword ptr [ebx+90h], 0
		jz	short loc_41A8B4
		test	byte ptr [ebx+41h], 8
		jnz	short loc_41A8B4
		lea	ecx, [esi+4]
		add	[ebp-0Ch], ecx

loc_41A8B4:				; CODE XREF: .text:0041A8A6j
					; .text:0041A8ACj
		mov	eax, [ebp-4]
		sub	eax, [ebp-0Ch]
		cdq
		idiv	esi
		test	eax, eax
		jg	short loc_41A8C6
		mov	eax, 1

loc_41A8C6:				; CODE XREF: .text:0041A856j
					; .text:0041A8BFj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		