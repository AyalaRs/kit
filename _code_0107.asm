.code

; MENUFUNC loc_4D7758
loc_4D7758:				; DATA XREF: .text:004D7B91o
					; .data:stru_577600o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, dword_618498
		test	edx, edx
		jnz	short loc_4D776C
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D776C:				; CODE XREF: .text:004D7766j
		test	eax, eax
		jnz	short loc_4D7777
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7777:				; CODE XREF: .text:004D776Ej
		dec	eax
		jnz	short loc_4D7796
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	edx		; asmaddr
		mov	edx, dword_61849C
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7796:				; CODE XREF: .text:004D7778j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4D779C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4D779C:				; DATA XREF: .data:stru_577600o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		cmp	dword_618494, 0
		jz	short loc_4D77BD
		cmp	dword_618498, 0
		jnz	short loc_4D77C4

loc_4D77BD:				; CODE XREF: .text:004D77B2j
		xor	eax, eax
		jmp	loc_4D7975
; ---------------------------------------------------------------------------

loc_4D77C4:				; CODE XREF: .text:004D77BBj
		push	0		; subaddr
		mov	edx, dword_618498
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4D7817
		test	edi, edi
		jnz	short loc_4D77F7
		test	ebx, ebx
		jz	short loc_4D77F7
		test	byte ptr [ebx+9], 10h
		jz	short loc_4D77F7
		xor	eax, eax
		jmp	loc_4D7975
; ---------------------------------------------------------------------------

loc_4D77F7:				; CODE XREF: .text:004D77E4j
					; .text:004D77E8j ...
		cmp	edi, 3
		jnz	short loc_4D780D
		test	ebx, ebx
		jz	short loc_4D7806
		test	byte ptr [ebx+9], 10h
		jnz	short loc_4D780D

loc_4D7806:				; CODE XREF: .text:004D77FEj
		xor	eax, eax
		jmp	loc_4D7975
; ---------------------------------------------------------------------------

loc_4D780D:				; CODE XREF: .text:004D77FAj
					; .text:004D7804j
		mov	eax, 1
		jmp	loc_4D7975
; ---------------------------------------------------------------------------

loc_4D7817:				; CODE XREF: .text:004D77E0j
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4D7973
		test	ebx, ebx
		jnz	short loc_4D783D
		mov	edx, dword_618498
		push	edx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4D783D
		xor	eax, eax
		jmp	loc_4D7975
; ---------------------------------------------------------------------------

loc_4D783D:				; CODE XREF: .text:004D7823j
					; .text:004D7834j
		test	edi, edi
		jz	short loc_4D7846
		cmp	edi, 3
		jnz	short loc_4D78B5

loc_4D7846:				; CODE XREF: .text:004D783Fj
		test	ebx, ebx
		jz	short loc_4D7869
		test	byte ptr [ebx+9], 10h
		jz	short loc_4D7869
		push	1000h		; type
		mov	edx, dword_618498
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	loc_4D796C
; ---------------------------------------------------------------------------

loc_4D7869:				; CODE XREF: .text:004D7848j
					; .text:004D784Ej
		push	offset word_577720 ; exprtype
		push	offset word_577720 ; expression
		push	offset word_577720 ; condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	ecx, dword_618498
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4D796C
		push	offset aUnableToSet_12 ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4D796C
; ---------------------------------------------------------------------------

loc_4D78B5:				; CODE XREF: .text:004D7844j
		lea	eax, [ebp-8]
		push	eax		; coord
		push	3		; column
		push	esi		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4D78D1
		or	edx, 0FFFFFFFFh
		mov	[ebp-4], edx
		mov	[ebp-8], edx

loc_4D78D1:				; CODE XREF: .text:004D78C6j
		cmp	edi, 1
		jnz	short loc_4D7901
		mov	eax, [esi+234h]
		push	eax		; fi
		mov	ecx, [ebp-4]	; int
		push	ecx		; y
		mov	eax, [ebp-8]	; int
		push	eax		; x
		push	0		; _title
		push	1		; naddr
		push	offset dword_618498 ; _addr
		mov	edx, [esi+22Ch]	; int
		push	edx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	ebx, eax
		jmp	short loc_4D794E
; ---------------------------------------------------------------------------

loc_4D7901:				; CODE XREF: .text:004D78D4j
		mov	eax, dword_618494
		test	byte ptr [eax+0Ah], 1
		jz	short loc_4D7919
		push	offset a_intern__veh ; "_INTERN_.VEH"
		call	Getindexbypredefinedtype
		pop	ecx
		jmp	short loc_4D7924
; ---------------------------------------------------------------------------

loc_4D7919:				; CODE XREF: .text:004D790Aj
		push	offset a_intern__seh_0 ; "_INTERN_.SEH"
		call	Getindexbypredefinedtype
		pop	ecx

loc_4D7924:				; CODE XREF: .text:004D7917j
		mov	edx, [esi+234h]
		push	edx		; fi
		mov	ecx, [ebp-4]	; int
		push	ecx		; y
		mov	edx, [ebp-8]	; int
		push	edx		; x
		push	0		; _title
		push	eax		; fnindex
		push	1		; naddr
		push	offset dword_618498 ; _addr
		mov	eax, [esi+22Ch]	; int
		push	eax		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	ebx, eax

loc_4D794E:				; CODE XREF: .text:004D78FFj
		test	ebx, ebx
		jge	short loc_4D7964
		push	offset aUnableToSet_12 ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4D7964:				; CODE XREF: .text:004D7950j
		test	ebx, ebx
		jg	short loc_4D796C
		xor	eax, eax
		jmp	short loc_4D7975
; ---------------------------------------------------------------------------

loc_4D796C:				; CODE XREF: .text:004D7864j
					; .text:004D7898j ...
		mov	eax, 1
		jmp	short loc_4D7975
; ---------------------------------------------------------------------------

loc_4D7973:				; CODE XREF: .text:004D781Bj
		xor	eax, eax

loc_4D7975:				; CODE XREF: .text:004D77BFj
					; .text:004D77F2j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4D797C(wchar_t *buffer, void *s, int,	int, int, int)
loc_4D797C:				; DATA XREF: .text:004D7FCCo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+1Ch]
		xor	eax, eax
		add	edx, 4
		mov	ebx, [ebp+18h]
		cmp	edx, 7		; switch 8 cases
		ja	loc_4D7B0F	; jumptable 004D7995 default case
		jmp	ds:off_4D799C[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4D799C	dd offset loc_4D79BC	; DATA XREF: .text:004D7995r
		dd offset loc_4D79C3	; jump table for switch	statement
		dd offset loc_4D79CA
		dd offset loc_4D79D1
		dd offset loc_4D79D8
		dd offset loc_4D79F2
		dd offset loc_4D7A3C
		dd offset loc_4D7A51
; ---------------------------------------------------------------------------

loc_4D79BC:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		xor	eax, eax	; jumptable 004D7995 case 0
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D79C3:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		xor	eax, eax	; jumptable 004D7995 case 1
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D79CA:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		xor	eax, eax	; jumptable 004D7995 case 2
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D79D1:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		xor	eax, eax	; jumptable 004D7995 case 3
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D79D8:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		mov	edx, [ebx]	; jumptable 004D7995 case 4
		inc	edx
		push	edx
		push	offset aI_10	; format
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D79F2:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		test	byte ptr [ebx+0Ah], 1 ;	jumptable 004D7995 case	5
		jz	short loc_4D7A1A
		push	offset aVectored ; "Vectored"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D7A1A:				; CODE XREF: .text:004D79F6j
		push	(offset	a_intern__seh_0+12h) ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D7A3C:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		mov	ecx, [ebx+0Ch]	; jumptable 004D7995 case 6
		push	ecx		; u
		mov	eax, [ebp+8]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D7A51:				; CODE XREF: .text:004D7995j
					; DATA XREF: .text:off_4D799Co
		test	byte ptr [ebx+0Ah], 2 ;	jumptable 004D7995 case	7
		jnz	short loc_4D7A7F
		push	offset aInvalid_1 ; "Invalid"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 2
		jmp	loc_4D7B0F	; jumptable 004D7995 default case
; ---------------------------------------------------------------------------

loc_4D7A7F:				; CODE XREF: .text:004D7A55j
		mov	eax, dword_57DE54
		cmp	eax, 1
		jnz	short loc_4D7A90
		mov	esi, 1
		jmp	short loc_4D7A9E
; ---------------------------------------------------------------------------

loc_4D7A90:				; CODE XREF: .text:004D7A87j
		cmp	eax, 2
		jnz	short loc_4D7A9C
		mov	esi, 2
		jmp	short loc_4D7A9E
; ---------------------------------------------------------------------------

loc_4D7A9C:				; CODE XREF: .text:004D7A93j
		xor	esi, esi

loc_4D7A9E:				; CODE XREF: .text:004D7A8Ej
					; .text:004D7A9Aj
		cmp	dword_57DE58, 0
		jz	short loc_4D7AAA
		or	esi, 20h

loc_4D7AAA:				; CODE XREF: .text:004D7AA5j
		push	0		; subaddr
		mov	eax, [ebx+10h]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D7AF0
		test	byte ptr [eax+9], 10h
		jz	short loc_4D7AF0
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_4D7ADA
		or	esi, 800h
		jmp	short loc_4D7AF0
; ---------------------------------------------------------------------------

loc_4D7ADA:				; CODE XREF: .text:004D7AD0j
		test	edx, 40000h
		jz	short loc_4D7AEA
		or	esi, 400h
		jmp	short loc_4D7AF0
; ---------------------------------------------------------------------------

loc_4D7AEA:				; CODE XREF: .text:004D7AE0j
		or	esi, 200h

loc_4D7AF0:				; CODE XREF: .text:004D7ABFj
					; .text:004D7AC5j ...
		push	esi		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [ebx+10h]
		push	edx		; _addr
		mov	ecx, [ebp+8]
		push	ecx		; text
		call	Labeladdress
		add	esp, 20h

loc_4D7B0F:				; CODE XREF: .text:004D798Fj
					; .text:004D79BEj ...
		pop	esi		; jumptable 004D7995 default case
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D7B14:				; DATA XREF: .text:004D7FAFo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4D7B41
		sub	eax, 3
		jz	loc_4D7BC1
		sub	eax, 11h
		jz	loc_4D7BB3
		sub	eax, 7
		jz	loc_4D7BDE
		jmp	loc_4D7BEC
; ---------------------------------------------------------------------------

loc_4D7B41:				; CODE XREF: .text:004D7B1Fj
		mov	eax, [ebp+14h]
		shr	eax, 10h
		cmp	ax, 2
		jnz	short loc_4D7B89
		push	0		; index
		push	offset loc_4D76A0 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		push	1		; index
		push	offset loc_4D76A0 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4D7BAC
; ---------------------------------------------------------------------------

loc_4D7B89:				; CODE XREF: .text:004D7B4Bj
		cmp	ax, 3
		jnz	short loc_4D7BAC
		push	0		; index
		push	offset loc_4D7758 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4D7BAC:				; CODE XREF: .text:004D7B87j
					; .text:004D7B8Dj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7BB3:				; CODE XREF: .text:004D7B2Dj
		call	Getcputhreadid
		push	eax
		call	loc_4D7BF0
		pop	ecx
		jmp	short loc_4D7BEC
; ---------------------------------------------------------------------------

loc_4D7BC1:				; CODE XREF: .text:004D7B24j
		mov	eax, run.status
		test	eax, eax
		jz	short loc_4D7BEC
		cmp	eax, 12h
		jz	short loc_4D7BEC
		cmp	eax, 13h
		jz	short loc_4D7BEC
		push	0
		call	loc_4D7BF0
		pop	ecx
		jmp	short loc_4D7BEC
; ---------------------------------------------------------------------------

loc_4D7BDE:				; CODE XREF: .text:004D7B36j
		or	dword_57FE7C, 20000h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7BEC:				; CODE XREF: .text:004D7B3Cj
					; .text:004D7BBFj ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7BF0:				; CODE XREF: .text:00409FC6p
					; .text:004D75ABp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBDCh
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-424h]
		cmp	sehchain.hw, 0
		jz	loc_4D7ED0
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4D7C1D
		mov	eax, sehchain.custommode
		mov	[ebp+8], eax

loc_4D7C1D:				; CODE XREF: .text:004D7C13j
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4D7C2B
		call	Getcputhreadid
		mov	[ebp+8], eax

loc_4D7C2B:				; CODE XREF: .text:004D7C21j
		mov	edx, [ebp+8]
		mov	sehchain.custommode, edx
		mov	ecx, sehchain.sorted.selected
		push	ecx		; index
		push	offset sehchain.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D7C50
		xor	edi, edi
		jmp	short loc_4D7C53
; ---------------------------------------------------------------------------

loc_4D7C50:				; CODE XREF: .text:004D7C4Aj
		mov	edi, [eax+0Ch]

loc_4D7C53:				; CODE XREF: .text:004D7C4Ej
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		push	offset sehchain.sorted ; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		mov	sehchain.sorted.selected, 0FFFFFFFFh
		cmp	dword ptr [ebp+8], 0
		jz	loc_4D7DF4
		cmp	run.status, 0
		jz	loc_4D7DF4
		call	Suspendallthreads
		xor	ebx, ebx
		cmp	dword_5D5534, 0
		jz	loc_4D7D54
		push	1		; mode
		push	4		; size
		mov	eax, dword_5D5534
		push	eax		; _addr
		lea	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_4D7D54
		cmp	ebx, 400h
		jge	loc_4D7D54

loc_4D7CC4:				; CODE XREF: .text:004D7D4Ej
		mov	eax, [ebp-10h]
		cmp	eax, dword_5D5534
		jz	loc_4D7D54
		mov	edx, eax
		mov	[esi+0Ch], edx
		cmp	edi, edx
		jnz	short loc_4D7CE8
		mov	sehchain.sorted.selected, ebx
		mov	sehchain.sorted.seladdr, ebx

loc_4D7CE8:				; CODE XREF: .text:004D7CDAj
		push	1		; mode
		push	0Ch		; size
		push	eax		; _addr
		lea	ecx, [ebp-10h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 0Ch
		jnz	short loc_4D7D54
		mov	[esi], ebx
		mov	dword ptr [esi+4], 1
		mov	dword ptr [esi+8], 10000h
		push	0		; subaddr
		mov	eax, [ebp-8]
		push	eax		; _addr
		push	offset encaddr	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D7D2C
		xor	edx, edx
		mov	[esi+10h], edx
		jmp	short loc_4D7D39
; ---------------------------------------------------------------------------

loc_4D7D2C:				; CODE XREF: .text:004D7D23j
		or	dword ptr [esi+8], 20000h
		mov	ecx, [eax+4]
		mov	[esi+10h], ecx

loc_4D7D39:				; CODE XREF: .text:004D7D2Aj
		push	esi		; item
		push	offset sehchain.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		inc	ebx
		cmp	ebx, 400h
		jl	loc_4D7CC4

loc_4D7D54:				; CODE XREF: .text:004D7C93j
					; .text:004D7CB2j ...
		mov	eax, [ebp+8]
		push	eax		; threadid
		call	Findthread
		pop	ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_4D7DEF
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-4]
		mov	ecx, [edx+54h]
		push	ecx		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_4D7DEF
		cmp	ebx, 400h
		jge	short loc_4D7DEF

loc_4D7D8F:				; CODE XREF: .text:004D7DEDj
		mov	eax, [ebp-10h]
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4D7DEF
		mov	edx, eax
		mov	[esi+0Ch], edx
		cmp	edi, edx
		jnz	short loc_4D7DAC
		mov	sehchain.sorted.selected, ebx
		mov	sehchain.sorted.seladdr, ebx

loc_4D7DAC:				; CODE XREF: .text:004D7D9Ej
		push	1		; mode
		push	8		; size
		push	eax		; _addr
		lea	ecx, [ebp-10h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 8
		jnz	short loc_4D7DEF
		mov	[esi], ebx
		mov	dword ptr [esi+4], 1
		mov	dword ptr [esi+8], 20000h
		mov	eax, [ebp-0Ch]
		mov	[esi+10h], eax
		push	esi		; item
		push	offset sehchain.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		inc	ebx
		cmp	ebx, 400h
		jl	short loc_4D7D8F

loc_4D7DEF:				; CODE XREF: .text:004D7D65j
					; .text:004D7D85j ...
		call	Resumeallthreads

loc_4D7DF4:				; CODE XREF: .text:004D7C72j
					; .text:004D7C7Fj
		cmp	dword_5D5534, 0
		jnz	short loc_4D7E21
		push	offset aSehChain ; "SEH	chain"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-410h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4D7E43
; ---------------------------------------------------------------------------

loc_4D7E21:				; CODE XREF: .text:004D7DFBj
		push	offset aVehSehChain_0 ;	"VEH/SEH chain"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-410h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4D7E43:				; CODE XREF: .text:004D7E1Fj
		push	8401h		; mode
		mov	eax, sehchain.custommode
		push	eax		; threadid
		lea	edx, [ebp-210h]
		push	edx		; s
		call	Decodethreadname
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D7EAE
		push	offset aOf_1	; " of "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, ebx
		mov	ecx, 100h
		sub	ecx, ebx
		lea	edx, [ebp-410h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, 100h
		lea	ecx, [ebp-210h]
		sub	eax, ebx
		push	ecx		; src
		lea	edx, [ebp-410h]
		add	ebx, ebx
		add	ebx, edx
		push	eax		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D7EAE:				; CODE XREF: .text:004D7E5Fj
		lea	ecx, [ebp-410h]
		push	ecx		; lpString
		mov	eax, sehchain.hparent
		push	eax		; hWnd
		call	SetWindowTextW
		push	0		; bErase
		push	0		; lpRect
		mov	edx, sehchain.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_4D7ED0:				; CODE XREF: .text:004D7C09j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D7ED8:				; CODE XREF: .text:0040B072p
					; .text:00410101p
		push	ebp
		mov	ebp, esp
		cmp	sehchain.bar.nbar, 0
		jnz	loc_4D7FE5
		push	offset aSehChain ; "SEH	chain"
		push	20h		; n
		push	offset sehchain	; dest
		call	StrcopyW
		mov	sehchain.mode, 10F0000h
		mov	sehchain.bar.visible, 1
		mov	sehchain.bar._name, offset aIndex ; "Index"
		xor	eax, eax
		mov	sehchain.bar.expl, offset aIndexOfTheHand ; "Index of the handler, in the order	of e"...
		mov	sehchain.bar.mode, eax
		mov	sehchain.bar.defdx, 6
		mov	sehchain.bar._name+4, offset aType ; "Type"
		xor	edx, edx
		mov	sehchain.bar.expl+4, offset aTypeOfTheHandl ; "Type of the handler"
		mov	sehchain.bar.mode+4, edx
		mov	sehchain.bar.defdx+4, 9
		mov	sehchain.bar._name+8, offset aLink ; "Link"
		xor	ecx, ecx
		mov	sehchain.bar.expl+8, offset aAddressOfTheLi ; "Address of the link"
		mov	sehchain.bar.mode+8, ecx
		mov	sehchain.bar.defdx+8, 9
		mov	sehchain.bar._name+0Ch, offset aHandler ; "Handler"
		xor	eax, eax
		mov	sehchain.bar.expl+0Ch, offset aAddressOfExcep ;	"Address of exception handler"
		mov	sehchain.bar.mode+0Ch, eax
		mov	sehchain.bar.defdx+0Ch,	14h
		mov	sehchain.bar.nbar, 4
		xor	edx, edx
		mov	sehchain.tabfunc, offset loc_4D7B14
		xor	ecx, ecx
		mov	sehchain.customdata, edx
		mov	sehchain.updatefunc, ecx
		add	esp, 0Ch
		xor	eax, eax
		mov	sehchain.drawfunc, offset loc_4D797C
		mov	sehchain.tableselfunc, eax
		mov	sehchain.menu, offset stru_577600

loc_4D7FE5:				; CODE XREF: .text:004D7EE2j
		cmp	sehchain.hw, 0
		jnz	short loc_4D8015
		push	offset word_577720 ; _title
		push	offset aIco_seh	; "ICO_SEH"
		mov	edx, g_hInstance
		push	edx		; hi
		mov	ecx, sehchain.bar.nbar
		push	ecx		; ncolumn
		push	0		; nrow
		push	offset sehchain	; pt
		call	Createtablewindow
		add	esp, 18h

loc_4D8015:				; CODE XREF: .text:004D7FECj
		call	Getcputhreadid
		push	eax
		call	loc_4D7BF0
		pop	ecx
		cmp	sehchain.hparent, 0
		jz	short loc_4D8076
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D8076
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4D804D
		push	0		; lParam
		mov	edx, sehchain.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4D804D:				; CODE XREF: .text:004D8037j
		mov	ecx, sehchain.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4D806A
		push	9		; nCmdShow
		mov	eax, sehchain.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4D806A:				; CODE XREF: .text:004D805Bj
		mov	edx, sehchain.hw
		push	edx		; hWnd
		call	SetFocus

loc_4D8076:				; CODE XREF: .text:004D8028j
					; .text:004D802Ej
		mov	eax, sehchain.hw
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4D8080(HMODULE hModule, LPCSTR lpProcName)
loc_4D8080:				; CODE XREF: .text:004D860Cp
					; .text:004D862Bp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4D8098
		test	ebx, ebx
		jz	short loc_4D8098
		cmp	byte ptr [ebx],	0
		jnz	short loc_4D809C

loc_4D8098:				; CODE XREF: .text:004D808Dj
					; .text:004D8091j
		xor	eax, eax
		jmp	short loc_4D80BC
; ---------------------------------------------------------------------------

loc_4D809C:				; CODE XREF: .text:004D8096j
		push	ebx		; lpProcName
		push	esi		; hModule
		call	GetProcAddress
		test	eax, eax
		jnz	short loc_4D80BC
		xor	edx, edx
		mov	dl, [ebx]
		cmp	edx, 5Fh
		jnz	short loc_4D80BA
		inc	ebx
		push	ebx		; lpProcName
		push	esi		; hModule
		call	GetProcAddress
		jmp	short loc_4D80BC
; ---------------------------------------------------------------------------

loc_4D80BA:				; CODE XREF: .text:004D80AEj
		xor	eax, eax

loc_4D80BC:				; CODE XREF: .text:004D809Aj
					; .text:004D80A5j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D80C0:				; CODE XREF: .text:004234A2p
					; .text:00423D49p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D80D8
		mov	eax, [ebp+8]
		cmp	word ptr [eax],	0
		jnz	short loc_4D80DF

loc_4D80D8:				; CODE XREF: .text:004D80CDj
		xor	eax, eax
		jmp	loc_4D81D6
; ---------------------------------------------------------------------------

loc_4D80DF:				; CODE XREF: .text:004D80D6j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-8], edx
		mov	[ebp-4], ecx
		mov	ebx, offset g_Plugin_menu
		jmp	loc_4D8193
; ---------------------------------------------------------------------------

loc_4D80F3:				; CODE XREF: .text:004D81A5j
		mov	eax, [ebp-4]
		push	eax		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4D8190
		cmp	dword ptr [esi+29Ch], 0
		jz	short loc_4D8190
		mov	eax, [ebp+8]
		push	eax
		call	dword ptr [esi+29Ch]
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4D8190
		xor	edx, edx
		mov	ecx, [ebp-0Ch]
		mov	eax, ecx

loc_4D8132:				; CODE XREF: .text:004D814Aj
		cmp	dword ptr [eax], 0
		jz	short loc_4D814C
		cmp	dword ptr [eax+0Ch], 0
		jnz	short loc_4D8143
		cmp	dword ptr [eax+10h], 0
		jz	short loc_4D814C

loc_4D8143:				; CODE XREF: .text:004D813Bj
		inc	edx
		add	eax, 18h
		cmp	edx, 2
		jl	short loc_4D8132

loc_4D814C:				; CODE XREF: .text:004D8135j
					; .text:004D8141j
		test	edx, edx
		jz	short loc_4D8190
		dec	edx
		jnz	short loc_4D8169
		mov	edx, [ebp-0Ch]
		mov	edi, ebx
		mov	esi, edx
		mov	ecx, 6
		rep movsd
		inc	dword ptr [ebp-8]
		add	ebx, 18h
		jmp	short loc_4D8190
; ---------------------------------------------------------------------------

loc_4D8169:				; CODE XREF: .text:004D8151j
		add	esi, 0Ch
		xor	eax, eax
		mov	[ebx], esi
		xor	edx, edx
		mov	dword ptr [ebx+4], offset aPluginSpecific ; "Plugin-specific functions"
		mov	[ebx+8], eax
		mov	[ebx+0Ch], edx
		mov	ecx, [ebp-0Ch]
		xor	eax, eax
		mov	[ebx+10h], ecx
		mov	[ebx+14h], eax
		inc	dword ptr [ebp-8]
		add	ebx, 18h

loc_4D8190:				; CODE XREF: .text:004D8108j
					; .text:004D8115j ...
		inc	dword ptr [ebp-4]

loc_4D8193:				; CODE XREF: .text:004D80EEj
		mov	edx, [ebp-4]
		cmp	edx, pluginlist.sorted.n
		jge	short loc_4D81AB
		cmp	dword ptr [ebp-8], 0FFh
		jl	loc_4D80F3

loc_4D81AB:				; CODE XREF: .text:004D819Cj
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4D81B5
		xor	eax, eax
		jmp	short loc_4D81D6
; ---------------------------------------------------------------------------

loc_4D81B5:				; CODE XREF: .text:004D81AFj
		push	18h		; n
		push	0		; c
		mov	edx, [ebp-8]
		shl	edx, 3
		lea	edx, [edx+edx*2]
		add	edx, offset g_Plugin_menu
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, offset g_Plugin_menu

loc_4D81D6:				; CODE XREF: .text:004D80DAj
					; .text:004D81B3j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4D81E0:				; CODE XREF: .text:00410130p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, pluginlist.sorted.n
		test	eax, eax
		jg	loc_4D8BC3
		mov	dword_619CA0, 80h
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	20h		; nexp
		push	2D4h		; itemsize
		push	offset pluginlist.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		lea	edx, [ebp-864h]
		push	offset plugindir ; src
		push	104h		; n
		push	edx		; dest
		call	StrcopyW
		mov	edi, eax
		add	esp, 0Ch
		mov	eax, 104h
		lea	edx, [ebp-864h]
		sub	eax, edi
		add	edi, edi
		push	offset a_dll_0	; "\\*.dll"
		push	eax		; n
		add	edi, edx
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-0FA0h]
		push	ecx		; lpFindFileData
		lea	eax, [ebp-864h]
		push	eax		; lpFileName
		call	FindFirstFileW
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jnz	short loc_4D827F
		xor	eax, eax
		jmp	loc_4D8BC3
; ---------------------------------------------------------------------------

loc_4D827F:				; CODE XREF: .text:004D8276j
		xor	edx, edx
		xor	ecx, ecx
		mov	g_nPluginmainloop, edx
		xor	eax, eax
		mov	g_nPluginexception, ecx
		xor	edx, edx
		mov	g_nPlugintempbreakpoint, eax
		xor	ecx, ecx
		mov	g_nPluginnotify, edx
		mov	[ebp-8], ecx
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_4D8509
		cmp	_imp__NtQueryInformationProcess, 0
		jz	loc_4D8509
		lea	eax, [ebp-65Ch]
		lea	edx, [ebp-45Ch]
		push	eax		; ext
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		push	offset ollyfile	; path
		call	__wfnsplit
		add	esp, 14h
		lea	ecx, [ebp-65Ch]
		lea	eax, [ebp-45Ch]
		lea	edx, [ebp-864h]
		push	ecx		; ext
		push	eax		; _name
		push	0		; dir
		push	0		; drive
		push	edx		; path
		call	__wfnmerge
		add	esp, 14h
		push	offset aOllydbg_exe ; "ollydbg.exe"
		lea	ecx, [ebp-864h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	loc_4D8509
		push	0		; _DWORD
		lea	eax, [ebp-0FB8h]
		push	18h		; _DWORD
		push	eax		; _DWORD
		push	0		; _DWORD
		call	GetCurrentProcess
		push	eax		; _DWORD
		call	_imp__NtQueryInformationProcess
		test	eax, eax
		jnz	loc_4D8509
		push	4		; ucb
		mov	edx, [ebp-0FB4h]
		add	edx, 0Ch
		push	edx		; lp
		lea	ecx, [ebp-0Ch]
		push	ecx		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4D8509
		push	24h		; ucb
		mov	eax, [ebp-0Ch]
		push	eax		; lp
		lea	edx, [ebp-0FDCh]
		push	edx		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4D8509
		cmp	dword ptr [ebp-0FDCh], 24h
		jb	loc_4D8509
		cmp	dword ptr [ebp-0FD8h], 0
		jz	loc_4D8509
		mov	ebx, [ebp-0FD0h]
		xor	esi, esi

loc_4D8399:				; CODE XREF: .text:004D841Aj
		push	48h		; ucb
		push	ebx		; lp
		lea	eax, [ebp-1024h]
		push	eax		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4D8509
		cmp	dword ptr [ebp-0FFCh], 0
		jz	loc_4D8509
		mov	ax, [ebp-0FFEh]
		test	ax, ax
		jbe	short loc_4D840D
		cmp	ax, 208h
		ja	short loc_4D840D
		movzx	edx, ax
		push	edx		; ucb
		mov	ecx, [ebp-0FFCh]
		push	ecx		; lp
		lea	eax, [ebp-0A6Ch]
		push	eax		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D840D
		push	104h		; maxlen
		push	offset ollyfile	; s2
		lea	edx, [ebp-0A6Ch]
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D8420

loc_4D840D:				; CODE XREF: .text:004D83CAj
					; .text:004D83D0j ...
		mov	ebx, [ebp-1024h]
		inc	esi
		cmp	esi, 100h
		jl	loc_4D8399

loc_4D8420:				; CODE XREF: .text:004D840Bj
		push	0		; ext
		push	0		; _name
		lea	eax, [ebp-25Ch]
		push	eax		; dir
		lea	edx, [ebp-14h]
		push	edx		; drive
		lea	ecx, [ebp-0A6Ch]
		push	ecx		; path
		call	__wfnsplit
		add	esp, 14h
		lea	eax, [ebp-14h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	edi, eax
		lea	eax, [ebp-25Ch]
		push	eax		; s
		call	_wcslen
		pop	ecx
		add	edi, eax
		push	(offset	aOllydbg_exe+0Eh) ; ext
		push	offset aOllydbg_2 ; "ollydbg"
		lea	edx, [ebp-25Ch]
		push	edx		; dir
		lea	ecx, [ebp-14h]
		push	ecx		; drive
		lea	eax, [ebp-0A6Ch]
		push	eax		; path
		call	__wfnmerge
		add	esp, 14h
		lea	edx, [ebp-0A6Ch]
		push	edx		; s
		call	_wcslen
		mov	esi, eax
		pop	ecx
		add	esi, esi
		lea	eax, [ebp-0A6Ch]
		mov	[ebp-0D50h], si
		lea	edx, [ebp-0A6Ch]
		add	si, 2
		mov	[ebp-0D4Eh], si
		mov	[ebp-0D4Ch], eax
		push	edx		; s
		call	_wcslen
		mov	esi, eax
		pop	ecx
		sub	si, di
		lea	eax, [ebp-0A6Ch]
		add	esi, esi
		add	edi, edi
		mov	[ebp-0D48h], si
		lea	edx, [ebx+24h]
		add	si, 2
		add	edi, eax
		mov	[ebp-0D46h], si
		mov	[ebp-0D44h], edi
		push	10h		; ucb
		push	edx		; lp
		lea	ecx, [ebp-0D50h]
		push	ecx		; src
		call	loc_404240
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D8509
		mov	dword ptr [ebp-8], 1
		xor	eax, eax
		mov	g_nPluginoptions, eax

loc_4D8509:				; CODE XREF: .text:004D82AAj
					; .text:004D82B7j ...
		test	byte ptr [ebp-0FA0h], 10h
		jnz	loc_4D8959
		push	0		; ext
		lea	edx, [ebp-45Ch]
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		lea	ecx, [ebp-0F74h]
		push	ecx		; path
		call	__wfnsplit
		add	esp, 14h
		push	offset aPsapi	; s2
		lea	eax, [ebp-45Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	loc_4D8959
		push	offset aDbghelp	; s2
		lea	edx, [ebp-45Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	loc_4D8959
		push	2D4h		; n
		push	0		; c
		lea	ecx, [ebp-0D40h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		lea	eax, [ebp-864h]
		push	offset plugindir ; src
		push	104h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		mov	edx, edi
		mov	eax, 104h
		sub	eax, edi
		lea	ecx, [ebp-864h]
		add	edx, edx
		push	offset asc_577E7A ; "\\"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	edx, 104h
		lea	eax, [ebp-0F74h]
		sub	edx, edi
		push	eax		; src
		lea	ecx, [ebp-864h]
		add	edi, edi
		add	edi, ecx
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	1		; uMode
		call	SetErrorMode
		mov	edi, eax
		lea	eax, [ebp-864h]
		push	eax		; lpLibFileName
		call	LoadLibraryW
		mov	esi, eax
		push	edi		; uMode
		call	SetErrorMode
		test	esi, esi
		jz	loc_4D8959
		push	offset _ODBG2_Pluginquery ; "_ODBG2_Pluginquery"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4D8625
		push	esi		; hLibModule
		call	FreeLibrary
		jmp	loc_4D8959
; ---------------------------------------------------------------------------

loc_4D8625:				; CODE XREF: .text:004D8618j
		push	offset _ODBG2_Plugininit ; "_ODBG2_Plugininit"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-18h], eax
		push	offset _ODBG2_Pluginanalyse ; "_ODBG2_Pluginanalyse"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A9Ch], eax
		push	offset _ODBG2_Pluginmainloop ; "_ODBG2_Pluginmainloop"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A98h], eax
		push	offset _ODBG2_Pluginexception ;	"_ODBG2_Pluginexception"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A94h], eax
		push	offset _ODBG2_Plugintempbreakpoint ; "_ODBG2_Plugintempbreakpoint"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A90h], eax
		push	offset _ODBG2_Pluginnotify ; "_ODBG2_Pluginnotify"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A8Ch], eax
		push	offset _ODBG2_Pluginmenu ; "_ODBG2_Pluginmenu"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0AA4h], eax
		push	offset _ODBG2_Pluginoptions ; "_ODBG2_Pluginoptions"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0AA0h], eax
		push	offset _ODBG2_Plugindump ; "_ODBG2_Plugindump"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A88h], eax
		push	offset _ODBG2_Pluginsaveudd ; "_ODBG2_Pluginsaveudd"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A84h], eax
		push	offset _ODBG2_Pluginuddrecord ;	"_ODBG2_Pluginuddrecord"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A80h], eax
		push	offset _ODBG2_Pluginreset ; "_ODBG2_Pluginreset"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A7Ch], eax
		push	offset _ODBG2_Plugindetach ; "_ODBG2_Plugindetach"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A78h], eax
		push	offset _ODBG2_Pluginclose ; "_ODBG2_Pluginclose"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A74h], eax
		push	offset _ODBG2_Plugindestroy ; "_ODBG2_Plugindestroy"
		push	esi		; hModule
		call	loc_4D8080
		add	esp, 8
		mov	[ebp-0A70h], eax
		push	40h		; n
		push	0		; c
		lea	eax, [ebp-5Ch]
		push	eax		; s
		call	_memset
		mov	word ptr [ebp-0D34h], 0
		mov	word ptr [ebp-0CF4h], 0
		add	esp, 0Ch
		lea	edx, [ebp-0CF4h]
		lea	ecx, [ebp-0D34h]
		lea	eax, [ebp-5Ch]
		push	edx
		push	ecx
		push	eax
		push	0C9h
		call	edi
		add	esp, 10h
		mov	edi, eax
		cmp	edi, 2010001h
		jge	short loc_4D87DF
		mov	ecx, edi
		mov	edx, edi
		sar	ecx, 10h
		and	edx, 0FFFFh
		sar	edi, 18h
		and	ecx, 0FFh
		push	edx
		push	ecx
		and	edi, 0FFh
		lea	eax, [ebp-0F74h]
		push	edi
		push	eax		; arglist
		push	offset aPluginSHasInco ; "Plugin '%s' has incompatible version (%"...
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 1Ch
		push	esi		; hLibModule
		call	FreeLibrary
		jmp	loc_4D8959
; ---------------------------------------------------------------------------

loc_4D87DF:				; CODE XREF: .text:004D8794j
		cmp	word ptr [ebp-0D34h], 0
		jnz	short loc_4D8801
		lea	edx, [ebp-45Ch]
		lea	ecx, [ebp-0D34h]
		push	edx		; src
		push	20h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D8801:				; CODE XREF: .text:004D87E7j
		push	0		; ext
		lea	eax, [ebp-45Ch]
		push	eax		; _name
		lea	edx, [ebp-25Ch]
		push	edx		; dir
		lea	ecx, [ebp-14h]
		push	ecx		; drive
		lea	eax, [ebp-864h]
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		lea	edx, [ebp-45Ch]
		lea	ecx, [ebp-25Ch]
		lea	eax, [ebp-14h]
		push	offset ext	; ext
		push	edx		; _name
		push	ecx		; dir
		push	eax		; drive
		lea	edx, [ebp-0A6Ch]
		push	edx		; path
		call	__wfnmerge
		add	esp, 14h
		mov	ecx, g_GuiLuguage
		push	ecx		; int
		lea	eax, [ebp-0A6Ch]
		push	eax		; path
		call	loc_4DEC58
		add	esp, 8
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4D88A3
		call	dword ptr [ebp-18h]
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4D88A3
		lea	edx, [ebp-0F74h]
		lea	ecx, [ebp-0D34h]
		push	edx
		push	ecx		; arglist
		push	offset aPluginSFileSFa ; "Plugin '%s' (file '%s') failed to initi"...
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		push	esi		; hLibModule
		call	FreeLibrary
		jmp	loc_4D8959
; ---------------------------------------------------------------------------

loc_4D88A3:				; CODE XREF: .text:004D8864j
					; .text:004D8870j
		cmp	dword ptr [ebp-0AA0h], 0
		jz	short loc_4D88B2
		inc	g_nPluginoptions

loc_4D88B2:				; CODE XREF: .text:004D88AAj
		cmp	dword ptr [ebp-0A98h], 0
		jz	short loc_4D88C1
		inc	g_nPluginmainloop

loc_4D88C1:				; CODE XREF: .text:004D88B9j
		cmp	dword ptr [ebp-0A94h], 0
		jz	short loc_4D88D0
		inc	g_nPluginexception

loc_4D88D0:				; CODE XREF: .text:004D88C8j
		cmp	dword ptr [ebp-0A90h], 0
		jz	short loc_4D88DF
		inc	g_nPlugintempbreakpoint

loc_4D88DF:				; CODE XREF: .text:004D88D7j
		cmp	dword ptr [ebp-0A8Ch], 0
		jz	short loc_4D88EE
		inc	g_nPluginnotify

loc_4D88EE:				; CODE XREF: .text:004D88E6j
		cmp	dword ptr [ebp-0A7Ch], 0
		jz	short loc_4D88FD
		call	dword ptr [ebp-0A7Ch]

loc_4D88FD:				; CODE XREF: .text:004D88F5j
		mov	[ebp-0D40h], esi
		lea	eax, [ebp-864h]
		mov	dword ptr [ebp-0D3Ch], 1
		push	eax		; src
		lea	edx, [ebp-0CB4h]
		push	104h		; n
		push	edx		; dest
		call	StrcopyW
		mov	ecx, pluginlist.sorted.n
		add	esp, 0Ch
		shl	ecx, 10h
		lea	edx, [ebp-0D40h]
		add	ecx, 0F0000000h
		xor	eax, eax
		mov	[ebp-0AACh], ecx
		mov	[ebp-0AA8h], eax
		push	edx		; item
		push	offset pluginlist.sorted ; sd
		call	Addsorteddata
		add	esp, 8

loc_4D8959:				; CODE XREF: .text:004D8510j
					; .text:004D8548j ...
		lea	ecx, [ebp-0FA0h]
		push	ecx		; lpFindFileData
		mov	eax, [ebp-1Ch]
		push	eax		; hFindFile
		call	FindNextFileW
		test	eax, eax
		jnz	loc_4D8509
		mov	edx, [ebp-1Ch]
		push	edx		; hFindFile
		call	FindClose
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4D8995
		push	10h		; ucb
		add	ebx, 24h
		push	ebx		; lp
		lea	eax, [ebp-1000h]
		push	eax		; src
		call	loc_404240
		add	esp, 0Ch

loc_4D8995:				; CODE XREF: .text:004D897Ej
		mov	ebx, g_nPluginmainloop
		test	ebx, ebx
		jle	short loc_4D8A05
		shl	ebx, 2
		push	2		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5D4544, esi
		test	esi, esi
		jnz	short loc_4D89C2
		xor	eax, eax
		mov	g_nPluginmainloop, eax
		jmp	short loc_4D8A05
; ---------------------------------------------------------------------------

loc_4D89C2:				; CODE XREF: .text:004D89B7j
		xor	esi, esi
		xor	edi, edi
		jmp	short loc_4D89F5
; ---------------------------------------------------------------------------

loc_4D89C8:				; CODE XREF: .text:004D8A03j
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D89F4
		cmp	dword ptr [ebx+2A8h], 0
		jz	short loc_4D89F4
		mov	eax, dword_5D4544 ; int
		mov	edx, [ebx+2A8h]	; int
		mov	[eax+edi*4], edx
		inc	edi

loc_4D89F4:				; CODE XREF: .text:004D89DAj
					; .text:004D89E3j
		inc	esi

loc_4D89F5:				; CODE XREF: .text:004D89C6j
		cmp	edi, g_nPluginmainloop
		setl	cl
		and	ecx, 1		; int
		test	cl, cl
		jnz	short loc_4D89C8

loc_4D8A05:				; CODE XREF: .text:004D899Dj
					; .text:004D89C0j
		mov	ebx, g_nPluginexception
		test	ebx, ebx
		jle	short loc_4D8A75
		shl	ebx, 2
		push	2		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5D454C, esi
		test	esi, esi
		jnz	short loc_4D8A32
		xor	eax, eax
		mov	g_nPluginexception, eax
		jmp	short loc_4D8A75
; ---------------------------------------------------------------------------

loc_4D8A32:				; CODE XREF: .text:004D8A27j
		xor	esi, esi
		xor	edi, edi
		jmp	short loc_4D8A65
; ---------------------------------------------------------------------------

loc_4D8A38:				; CODE XREF: .text:004D8A73j
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D8A64
		cmp	dword ptr [ebx+2ACh], 0
		jz	short loc_4D8A64
		mov	eax, dword_5D454C ; int
		mov	edx, [ebx+2ACh]	; int
		mov	[eax+edi*4], edx
		inc	edi

loc_4D8A64:				; CODE XREF: .text:004D8A4Aj
					; .text:004D8A53j
		inc	esi

loc_4D8A65:				; CODE XREF: .text:004D8A36j
		cmp	edi, g_nPluginexception
		setl	cl
		and	ecx, 1		; int
		test	cl, cl
		jnz	short loc_4D8A38

loc_4D8A75:				; CODE XREF: .text:004D8A0Dj
					; .text:004D8A30j
		mov	ebx, g_nPlugintempbreakpoint
		test	ebx, ebx
		jle	short loc_4D8AE5
		shl	ebx, 2
		push	2		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5D4554, esi
		test	esi, esi
		jnz	short loc_4D8AA2
		xor	eax, eax
		mov	g_nPlugintempbreakpoint, eax
		jmp	short loc_4D8AE5
; ---------------------------------------------------------------------------

loc_4D8AA2:				; CODE XREF: .text:004D8A97j
		xor	esi, esi
		xor	edi, edi
		jmp	short loc_4D8AD5
; ---------------------------------------------------------------------------

loc_4D8AA8:				; CODE XREF: .text:004D8AE3j
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D8AD4
		cmp	dword ptr [ebx+2B0h], 0
		jz	short loc_4D8AD4
		mov	eax, dword_5D4554 ; int
		mov	edx, [ebx+2B0h]	; int
		mov	[eax+edi*4], edx
		inc	edi

loc_4D8AD4:				; CODE XREF: .text:004D8ABAj
					; .text:004D8AC3j
		inc	esi

loc_4D8AD5:				; CODE XREF: .text:004D8AA6j
		cmp	edi, g_nPlugintempbreakpoint
		setl	cl
		and	ecx, 1		; int
		test	cl, cl
		jnz	short loc_4D8AA8

loc_4D8AE5:				; CODE XREF: .text:004D8A7Dj
					; .text:004D8AA0j
		mov	ebx, g_nPluginnotify
		test	ebx, ebx
		jle	short loc_4D8B55
		shl	ebx, 2
		push	2		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	g_pPluginnotify, esi
		test	esi, esi
		jnz	short loc_4D8B12
		xor	eax, eax
		mov	g_nPluginnotify, eax
		jmp	short loc_4D8B55
; ---------------------------------------------------------------------------

loc_4D8B12:				; CODE XREF: .text:004D8B07j
		xor	esi, esi
		xor	edi, edi
		jmp	short loc_4D8B45
; ---------------------------------------------------------------------------

loc_4D8B18:				; CODE XREF: .text:004D8B53j
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D8B44
		cmp	dword ptr [ebx+2B4h], 0
		jz	short loc_4D8B44
		mov	eax, g_pPluginnotify
		mov	edx, [ebx+2B4h]
		mov	[eax+edi*4], edx
		inc	edi

loc_4D8B44:				; CODE XREF: .text:004D8B2Aj
					; .text:004D8B33j
		inc	esi

loc_4D8B45:				; CODE XREF: .text:004D8B16j
		cmp	edi, g_nPluginnotify
		setl	cl
		and	ecx, 1
		test	cl, cl
		jnz	short loc_4D8B18

loc_4D8B55:				; CODE XREF: .text:004D8AEDj
					; .text:004D8B10j
		cmp	pluginlist.sorted.n, 0
		jle	short loc_4D8BBE
		push	offset aInstalledPlugi ; "Installed plugins:"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		xor	esi, esi
		jmp	short loc_4D8BB6
; ---------------------------------------------------------------------------

loc_4D8B7A:				; CODE XREF: .text:004D8BBCj
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D8BB5
		lea	eax, [ebx+8Ch]
		push	eax
		lea	edx, [ebx+4Ch]
		push	edx
		add	ebx, 0Ch
		push	ebx		; arglist
		push	offset aSVersionSFileS ; "  %s (version	%s, file '%s')"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 18h

loc_4D8BB5:				; CODE XREF: .text:004D8B8Cj
		inc	esi

loc_4D8BB6:				; CODE XREF: .text:004D8B78j
		cmp	esi, pluginlist.sorted.n
		jl	short loc_4D8B7A

loc_4D8BBE:				; CODE XREF: .text:004D8B5Cj
		mov	eax, pluginlist.sorted.n

loc_4D8BC3:				; CODE XREF: .text:004D81F7j
					; .text:004D827Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

olly_destroy:				; CODE XREF: .text:loc_41063Cp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset pluginlist
		mov	eax, dword_5D4544
		test	eax, eax
		jz	short loc_4D8BEF
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5D4544, edx

loc_4D8BEF:				; CODE XREF: .text:004D8BDEj
		xor	ecx, ecx
		mov	g_nPluginmainloop, ecx
		mov	eax, dword_5D454C
		test	eax, eax
		jz	short loc_4D8C0F
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5D454C, edx

loc_4D8C0F:				; CODE XREF: .text:004D8BFEj
		xor	ecx, ecx
		mov	g_nPluginexception, ecx
		mov	eax, dword_5D4554
		test	eax, eax
		jz	short loc_4D8C2F
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5D4554, edx

loc_4D8C2F:				; CODE XREF: .text:004D8C1Ej
		xor	ecx, ecx
		mov	g_nPlugintempbreakpoint, ecx
		mov	eax, g_pPluginnotify
		test	eax, eax
		jz	short loc_4D8C4F
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	g_pPluginnotify, edx

loc_4D8C4F:				; CODE XREF: .text:004D8C3Ej
		xor	ecx, ecx
		xor	esi, esi
		mov	g_nPluginnotify, ecx
		jmp	short loc_4D8C86
; ---------------------------------------------------------------------------

loc_4D8C5B:				; CODE XREF: .text:004D8C89j
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D8C85
		cmp	dword ptr [ebx+2D0h], 0
		jz	short loc_4D8C85
		call	dword ptr [ebx+2D0h]
		mov	eax, [ebx]
		push	eax		; hLibModule
		call	FreeLibrary

loc_4D8C85:				; CODE XREF: .text:004D8C6Cj
					; .text:004D8C75j
		inc	esi

loc_4D8C86:				; CODE XREF: .text:004D8C59j
		cmp	esi, [edi+44h]
		jl	short loc_4D8C5B
		lea	edx, [edi+44h]
		push	edx		; sd
		call	Destroysorteddata
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 369. _Pluginsaverecord
; Exported entry 669. Pluginsaverecord

; int __cdecl Pluginsaverecord(t_uddsave *psave, ulong tag, ulong size,	void *data)
		public Pluginsaverecord
Pluginsaverecord:			; _Pluginsaverecord
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4D8CB1
		test	edx, 0FFFF0000h
		jz	short loc_4D8CB6

loc_4D8CB1:				; CODE XREF: .text:004D8CA7j
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D8CB6:				; CODE XREF: .text:004D8CAFj
		mov	ecx, [ebp+14h]
		push	ecx		; data
		mov	ecx, [ebp+10h]
		push	ecx		; size
		or	edx, [eax+4]
		push	edx		; tag
		mov	eax, [eax]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 370. _Pluginpackedrecord
; Exported entry 668. Pluginpackedrecord

; int __cdecl Pluginpackedrecord(t_uddsave *psave, ulong tag, ulong size, void *data)
		public Pluginpackedrecord
Pluginpackedrecord:			; _Pluginpackedrecord
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4D8CE5
		test	edx, 0FFFF0000h
		jz	short loc_4D8CEA

loc_4D8CE5:				; CODE XREF: .text:004D8CDBj
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D8CEA:				; CODE XREF: .text:004D8CE3j
		mov	ecx, [ebp+14h]
		push	ecx		; data
		mov	ecx, [ebp+10h]
		push	ecx		; size
		or	edx, [eax+4]
		or	edx, 8000000h
		push	edx		; tag
		mov	eax, [eax]
		push	eax		; f
		call	Savepackedrecord
		add	esp, 10h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 371. _Pluginmodulechanged
; Exported entry 667. Pluginmodulechanged

; t_module *__cdecl Pluginmodulechanged(ulong _addr)
		public Pluginmodulechanged
Pluginmodulechanged:			; _Pluginmodulechanged
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_4D8D22
		mov	dword_5D5614, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D8D22:				; CODE XREF: .text:004D8D14j
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4D8D37
		mov	dword ptr [eax+9A8h], 1

loc_4D8D37:				; CODE XREF: .text:004D8D2Bj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 372. _Plugingetuniquedatatype
; Exported entry 666. Plugingetuniquedatatype

; int Plugingetuniquedatatype(void)
		public Plugingetuniquedatatype
Plugingetuniquedatatype:		; _Plugingetuniquedatatype
		push	ebp
		mov	ebp, esp
		cmp	dword_619CA0, 0FEh
		jge	short loc_4D8D58
		mov	eax, dword_619CA0
		inc	dword_619CA0
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D8D58:				; CODE XREF: .text:004D8D49j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 373. _Plugintempbreakpoint
; Exported entry 671. Plugintempbreakpoint

; int __cdecl Plugintempbreakpoint(ulong _addr, ulong type, int forceint3)
		public Plugintempbreakpoint
Plugintempbreakpoint:			; _Plugintempbreakpoint
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, [ebp+10h]
		push	eax
		push	80000000h
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_44F6D0
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 374. _Pluginshowoptions
; Exported entry 670. Pluginshowoptions

; int __cdecl Pluginshowoptions(struct t_control *options)
		public Pluginshowoptions
Pluginshowoptions:			; _Pluginshowoptions
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D132C
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D8D8C:				; CODE XREF: .text:004D92C2p
					; .text:004D933Fp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ecx, [esi]
		cmp	edx, ecx
		ja	short loc_4D8DA8
		mov	eax, 4
		jmp	short loc_4D8DE8
; ---------------------------------------------------------------------------

loc_4D8DA8:				; CODE XREF: .text:004D8D9Fj
		add	eax, ecx
		sub	edx, ecx
		xor	ebx, ebx
		mov	bl, [eax]
		lea	edi, [ebx+1]
		cmp	edx, edi
		jb	short loc_4D8DBE
		mov	edx, [ebp+14h]
		cmp	edi, [edx]
		jbe	short loc_4D8DC5

loc_4D8DBE:				; CODE XREF: .text:004D8DB5j
		mov	eax, 4
		jmp	short loc_4D8DE8
; ---------------------------------------------------------------------------

loc_4D8DC5:				; CODE XREF: .text:004D8DBCj
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4D8DDF
		push	100h		; nw
		inc	eax
		mov	ecx, [ebp+18h]
		push	ecx		; w
		push	ebx		; ns
		push	eax		; s
		call	Asciitounicode
		add	esp, 10h

loc_4D8DDF:				; CODE XREF: .text:004D8DC9j
		add	[esi], edi
		mov	edx, [ebp+14h]
		sub	[edx], edi
		xor	eax, eax

loc_4D8DE8:				; CODE XREF: .text:004D8DA6j
					; .text:004D8DC3j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4D8DF0:				; CODE XREF: .text:004D94C9p
					; .text:004D94F2p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ecx, [ebp+14h]
		mov	eax, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	edx, [eax]
		cmp	esi, edx
		jbe	short loc_4D8E0C
		cmp	dword ptr [ecx], 0
		jnz	short loc_4D8E13

loc_4D8E0C:				; CODE XREF: .text:004D8E05j
		mov	eax, 4
		jmp	short loc_4D8E52
; ---------------------------------------------------------------------------

loc_4D8E13:				; CODE XREF: .text:004D8E0Aj
		add	ebx, edx
		sub	esi, edx
		xor	edx, edx
		mov	dl, [ebx]
		inc	dword ptr [eax]
		dec	dword ptr [ecx]
		test	dl, 80h
		jz	short loc_4D8E45
		cmp	esi, 1
		jbe	short loc_4D8E2E
		cmp	dword ptr [ecx], 0
		jnz	short loc_4D8E35

loc_4D8E2E:				; CODE XREF: .text:004D8E27j
		mov	eax, 4
		jmp	short loc_4D8E52
; ---------------------------------------------------------------------------

loc_4D8E35:				; CODE XREF: .text:004D8E2Cj
		and	edx, 7Fh
		shl	edx, 8
		movzx	ebx, byte ptr [ebx+1]
		add	edx, ebx
		inc	dword ptr [eax]
		dec	dword ptr [ecx]

loc_4D8E45:				; CODE XREF: .text:004D8E22j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4D8E50
		mov	eax, [ebp+18h]
		mov	[eax], edx

loc_4D8E50:				; CODE XREF: .text:004D8E49j
		xor	eax, eax

loc_4D8E52:				; CODE XREF: .text:004D8E11j
					; .text:004D8E33j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D8E58:				; CODE XREF: .text:004D98ACp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ecx, [ebp+14h]
		mov	edx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	eax, [edx]
		cmp	esi, eax
		jbe	short loc_4D8E74
		cmp	dword ptr [ecx], 0
		jnz	short loc_4D8E7E

loc_4D8E74:				; CODE XREF: .text:004D8E6Dj
		mov	eax, 4
		jmp	loc_4D8F16
; ---------------------------------------------------------------------------

loc_4D8E7E:				; CODE XREF: .text:004D8E72j
		add	ebx, eax
		sub	esi, eax
		xor	eax, eax
		mov	al, [ebx]
		inc	dword ptr [edx]
		dec	dword ptr [ecx]
		cmp	eax, 81h
		jnz	short loc_4D8EAE
		cmp	esi, 2
		jb	short loc_4D8E9B
		cmp	dword ptr [ecx], 2
		jnb	short loc_4D8EA2

loc_4D8E9B:				; CODE XREF: .text:004D8E94j
		mov	eax, 4
		jmp	short loc_4D8F16
; ---------------------------------------------------------------------------

loc_4D8EA2:				; CODE XREF: .text:004D8E99j
		movzx	eax, word ptr [ebx+1]
		add	dword ptr [edx], 2
		sub	dword ptr [ecx], 2
		jmp	short loc_4D8F09
; ---------------------------------------------------------------------------

loc_4D8EAE:				; CODE XREF: .text:004D8E8Fj
		cmp	eax, 84h
		jnz	short loc_4D8ED8
		cmp	esi, 3
		jb	short loc_4D8EBF
		cmp	dword ptr [ecx], 3
		jnb	short loc_4D8EC6

loc_4D8EBF:				; CODE XREF: .text:004D8EB8j
		mov	eax, 4
		jmp	short loc_4D8F16
; ---------------------------------------------------------------------------

loc_4D8EC6:				; CODE XREF: .text:004D8EBDj
		mov	eax, [ebx]
		shr	eax, 8
		and	eax, 0FFFFFFh
		add	dword ptr [edx], 3
		sub	dword ptr [ecx], 3
		jmp	short loc_4D8F09
; ---------------------------------------------------------------------------

loc_4D8ED8:				; CODE XREF: .text:004D8EB3j
		cmp	eax, 88h
		jnz	short loc_4D8EFB
		cmp	esi, 3
		jb	short loc_4D8EE9
		cmp	dword ptr [ecx], 3
		jnb	short loc_4D8EF0

loc_4D8EE9:				; CODE XREF: .text:004D8EE2j
		mov	eax, 4
		jmp	short loc_4D8F16
; ---------------------------------------------------------------------------

loc_4D8EF0:				; CODE XREF: .text:004D8EE7j
		mov	eax, [ebx+1]
		add	dword ptr [edx], 4
		sub	dword ptr [ecx], 4
		jmp	short loc_4D8F09
; ---------------------------------------------------------------------------

loc_4D8EFB:				; CODE XREF: .text:004D8EDDj
		cmp	eax, 80h
		jbe	short loc_4D8F09
		mov	eax, 4
		jmp	short loc_4D8F16
; ---------------------------------------------------------------------------

loc_4D8F09:				; CODE XREF: .text:004D8EACj
					; .text:004D8ED6j ...
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4D8F14
		mov	edx, [ebp+18h]
		mov	[edx], eax

loc_4D8F14:				; CODE XREF: .text:004D8F0Dj
		xor	eax, eax

loc_4D8F16:				; CODE XREF: .text:004D8E79j
					; .text:004D8EA0j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D8F1C:				; CODE XREF: .text:004D948Cp
					; .text:004D9B46p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, 4
		mov	esi, [ebp+18h]
		mov	ecx, [ebp+1Ch]
		test	esi, esi
		mov	ebx, [ebp+14h]
		mov	edx, [ebp+10h]
		jnz	short loc_4D8F3A
		add	eax, 0FFFFFFFEh

loc_4D8F3A:				; CODE XREF: .text:004D8F35j
		mov	edi, [edx]
		add	edi, eax
		cmp	edi, [ebp+0Ch]
		jnb	short loc_4D8F47
		cmp	eax, [ebx]
		jbe	short loc_4D8F4E

loc_4D8F47:				; CODE XREF: .text:004D8F41j
		mov	eax, 4
		jmp	short loc_4D8F77
; ---------------------------------------------------------------------------

loc_4D8F4E:				; CODE XREF: .text:004D8F45j
		test	esi, esi
		jz	short loc_4D8F62
		test	ecx, ecx
		jz	short loc_4D8F71
		mov	esi, [ebp+8]
		mov	edi, [edx]
		mov	esi, [esi+edi]
		mov	[ecx], esi
		jmp	short loc_4D8F71
; ---------------------------------------------------------------------------

loc_4D8F62:				; CODE XREF: .text:004D8F50j
		test	ecx, ecx
		jz	short loc_4D8F71
		mov	esi, [ebp+8]
		mov	edi, [edx]
		movzx	esi, word ptr [esi+edi]
		mov	[ecx], esi

loc_4D8F71:				; CODE XREF: .text:004D8F54j
					; .text:004D8F60j ...
		add	[edx], eax
		sub	[ebx], eax
		xor	eax, eax

loc_4D8F77:				; CODE XREF: .text:004D8F4Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
