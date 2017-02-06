.code

; int __cdecl loc_49F844(void *s, wchar_t *, wchar_t *,	void *)
loc_49F844:				; CODE XREF: .text:0049FB20p
					; .text:004A06BDp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFAF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		push	21Ah		; n
		push	0		; c
		push	edi		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_49F872
		lea	eax, [ebp-510h]
		mov	[ebp+10h], eax

loc_49F872:				; CODE XREF: .text:0049F867j
		mov	edx, [ebp+10h]
		lea	eax, [ebp-110h]
		mov	word ptr [edx],	0
		push	9		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; err
		push	0		; explen
		push	100h		; nexpr
		push	eax		; cexpr
		mov	edx, [ebp+0Ch]
		push	edx		; expression
		call	Cexpression
		add	esp, 18h
		mov	ecx, [ebp+10h]
		cmp	word ptr [ecx],	0
		jz	short loc_49F8CB
		mov	eax, [ebp+10h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49F8C4
		push	ebx		; n
		push	1		; c
		mov	eax, [ebp+14h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_49F8C4:				; CODE XREF: .text:0049F8B3j
		mov	eax, ebx
		jmp	loc_49FAB8
; ---------------------------------------------------------------------------

loc_49F8CB:				; CODE XREF: .text:0049F8A1j
		call	Getcputhreadid
		mov	[ebp-10h], eax
		lea	edx, [ebp-110h]
		mov	dword ptr [ebp-0Ch], 1
		push	edx		; cexpr
		call	Exprcount
		pop	ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 1
		jz	short loc_49F8F5
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_49F8F5:				; CODE XREF: .text:0049F8EEj
		xor	ebx, ebx
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jge	loc_49FAAC

loc_49F908:				; CODE XREF: .text:0049FAA6j
		test	ebx, ebx
		jle	short loc_49F948
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_54E720 ; "; "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jle	short loc_49F946
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49F946
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+14h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_49F946:				; CODE XREF: .text:0049F92Dj
					; .text:0049F933j
		add	ebx, esi

loc_49F948:				; CODE XREF: .text:0049F90Aj
		push	1		; mode
		push	0		; b
		push	0		; a
		lea	eax, [ebp-110h]
		mov	edx, [ebp-10h]
		push	edx		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		mov	ecx, [ebp-4]
		lea	edx, [ebp-310h]
		push	ecx		; index
		push	eax		; cexpr
		push	edx		; expl
		push	edi		; result
		call	Eexpression
		add	esp, 2Ch
		cmp	dword ptr [ebp-8], 1
		jle	short loc_49F9E8
		cmp	word ptr [ebp-310h], 0
		jz	short loc_49F9E8
		lea	ecx, [ebp-310h]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		mov	esi, eax
		add	esp, 0Ch
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_54E726 ; " =	"
		sub	eax, esi
		add	edx, edx
		push	eax		; n
		mov	ecx, esi
		add	edx, [ebp+10h]
		add	ecx, ecx
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		test	esi, esi
		jle	short loc_49F9E6
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49F9E6
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+14h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_49F9E6:				; CODE XREF: .text:0049F9CDj
					; .text:0049F9D3j
		add	ebx, esi

loc_49F9E8:				; CODE XREF: .text:0049F977j
					; .text:0049F981j
		test	byte ptr [edi+8], 0Fh
		jnz	short loc_49FA57
		mov	edx, 100h
		mov	ecx, ebx
		sub	edx, ebx
		push	$CTW0("??? ")	; "??? "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	edx, 100h
		lea	eax, [edi+1Ah]
		sub	edx, ebx
		push	eax		; src
		sub	edx, esi
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+10h]
		mov	eax, esi
		add	eax, eax
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		test	esi, esi
		jle	short loc_49FA4E
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49FA4E
		push	esi		; n
		push	1		; c
		mov	edx, [ebp+14h]
		add	edx, ebx
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_49FA4E:				; CODE XREF: .text:0049FA35j
					; .text:0049FA3Bj
		add	ebx, esi
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		jmp	short loc_49FA9D
; ---------------------------------------------------------------------------

loc_49FA57:				; CODE XREF: .text:0049F9ECj
		lea	eax, [edi+1Ah]
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jle	short loc_49FA90
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49FA90
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+14h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_49FA90:				; CODE XREF: .text:0049FA77j
					; .text:0049FA7Dj
		add	ebx, esi
		cmp	dword ptr [edi+0Ch], 1
		jle	short loc_49FA9D
		xor	edx, edx
		mov	[ebp-0Ch], edx

loc_49FA9D:				; CODE XREF: .text:0049FA55j
					; .text:0049FA96j
		inc	dword ptr [ebp-4]
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jl	loc_49F908

loc_49FAAC:				; CODE XREF: .text:0049F902j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_49FAB6
		xor	eax, eax
		mov	[edi], eax

loc_49FAB6:				; CODE XREF: .text:0049FAB0j
		mov	eax, ebx

loc_49FAB8:				; CODE XREF: .text:0049F8C6j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_49FAC0:				; DATA XREF: .data:stru_54E5D0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		xor	eax, eax
		mov	dword_5F2B40, eax
		mov	dword_5F2B48, eax
		cmp	dword ptr [ebx+68h], 0
		jge	short loc_49FAE0
		xor	edx, edx
		mov	[ebx+68h], edx

loc_49FAE0:				; CODE XREF: .text:0049FAD9j
		mov	ecx, watch.sorted.n
		dec	ecx
		mov	edi, [ebx+68h]
		cmp	ecx, edi
		jnz	short loc_49FAF7
		xor	eax, eax
		mov	dword_5F2B3C, eax
		jmp	short loc_49FB28
; ---------------------------------------------------------------------------

loc_49FAF7:				; CODE XREF: .text:0049FAECj
		push	0		; subaddr
		push	edi		; _addr
		push	offset watch.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		mov	dword_5F2B3C, esi
		test	esi, esi
		jz	short loc_49FB28
		push	0		; void *
		add	esi, 0Ch
		push	0		; wchar_t *
		push	esi		; wchar_t *
		push	offset dword_5F2B40 ; s
		call	loc_49F844
		add	esp, 10h

loc_49FB28:				; CODE XREF: .text:0049FAF5j
					; .text:0049FB11j
		call	Getcputhreadid
		push	eax		; threadid
		call	Findthread
		pop	ecx
		mov	dword_5F2D5C, eax
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49FB44:				; DATA XREF: .data:stru_54E5D0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, [ebp+8]
		test	eax, eax
		jnz	short loc_49FB66
		test	edx, edx
		jz	short loc_49FB5B
		cmp	dword ptr [edx+44h], 1
		jg	short loc_49FB5F

loc_49FB5B:				; CODE XREF: .text:0049FB53j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49FB5F:				; CODE XREF: .text:0049FB59j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49FB66:				; CODE XREF: .text:0049FB4Fj
		dec	eax
		jnz	short loc_49FB70
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49FB70:				; CODE XREF: .text:0049FB67j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_49FB74
loc_49FB74:				; DATA XREF: .text:004A0722o
					; .text:004A075Fo ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDECh
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		test	eax, eax
		jnz	short loc_49FBBE
		mov	eax, watch.sorted.n
		dec	eax
		cmp	eax, [esi+68h]
		jnz	short loc_49FBA8
		test	ebx, ebx
		jz	short loc_49FBA1
		cmp	ebx, 2
		jnz	short loc_49FBB4

loc_49FBA1:				; CODE XREF: .text:0049FB9Aj
		xor	eax, eax
		jmp	loc_49FD00
; ---------------------------------------------------------------------------

loc_49FBA8:				; CODE XREF: .text:0049FB96j
		cmp	ebx, 1
		jnz	short loc_49FBB4
		xor	eax, eax
		jmp	loc_49FD00
; ---------------------------------------------------------------------------

loc_49FBB4:				; CODE XREF: .text:0049FB9Fj
					; .text:0049FBABj
		mov	eax, 1
		jmp	loc_49FD00
; ---------------------------------------------------------------------------

loc_49FBBE:				; CODE XREF: .text:0049FB8Bj
		dec	eax
		jnz	loc_49FCFE
		lea	edx, [ebp-8]
		push	edx		; coord
		push	0		; column
		push	offset watch	; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_49FBE5
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_49FBE5:				; CODE XREF: .text:0049FBDAj
		mov	eax, [esi+68h]
		xor	edx, edx
		mov	[ebp-214h], eax
		mov	eax, dword_5F2B3C
		mov	dword ptr [ebp-210h], 1
		mov	[ebp-20Ch], edx
		test	eax, eax
		jz	short loc_49FC0D
		test	ebx, ebx
		jnz	short loc_49FC18

loc_49FC0D:				; CODE XREF: .text:0049FC07j
		mov	word ptr [ebp-208h], 0
		jmp	short loc_49FC30
; ---------------------------------------------------------------------------

loc_49FC18:				; CODE XREF: .text:0049FC0Bj
		add	eax, 0Ch
		lea	edx, [ebp-208h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_49FC30:				; CODE XREF: .text:0049FC16j
		cmp	ebx, 2
		jz	short loc_49FC46
		cmp	ebx, 2
		jbe	short loc_49FC53
		mov	ecx, watch.sorted.n
		dec	ecx
		cmp	ecx, [esi+68h]
		jz	short loc_49FC53

loc_49FC46:				; CODE XREF: .text:0049FC33j
		push	offset aEditWatchExpre ; "Edit watch expression"
		call	_T
		pop	ecx
		jmp	short loc_49FC5E
; ---------------------------------------------------------------------------

loc_49FC53:				; CODE XREF: .text:0049FC38j
					; .text:0049FC44j
		push	offset aEnterNewWatchE ; "Enter	new watch expression"
		call	_T
		pop	ecx

loc_49FC5E:				; CODE XREF: .text:0049FC51j
		mov	edx, watch.font
		push	0		; mode
		push	edx		; fi
		cmp	ebx, 2
		mov	ecx, [ebp-4]
		push	ecx		; y
		mov	edx, [ebp-8]
		push	edx		; x
		jbe	short loc_49FC78
		mov	ecx, ebx
		jmp	short loc_49FC7A
; ---------------------------------------------------------------------------

loc_49FC78:				; CODE XREF: .text:0049FC72j
		xor	ecx, ecx

loc_49FC7A:				; CODE XREF: .text:0049FC76j
		push	ecx		; letter
		push	64h		; savetype
		push	100h		; length
		lea	edx, [ebp-208h]
		push	edx		; s
		push	eax		; _title
		mov	eax, [esi+22Ch]
		push	eax		; hparent
		call	Getstring
		add	esp, 28h
		test	eax, eax
		jg	short loc_49FCA1
		xor	eax, eax
		jmp	short loc_49FD00
; ---------------------------------------------------------------------------

loc_49FCA1:				; CODE XREF: .text:0049FC9Bj
		test	ebx, ebx
		jz	short loc_49FCB3
		cmp	ebx, 1
		jz	short loc_49FCB3
		cmp	dword_5F2B3C, 0
		jnz	short loc_49FCC9

loc_49FCB3:				; CODE XREF: .text:0049FCA3j
					; .text:0049FCA8j
		lea	edx, [ebp-214h]
		push	edx		; item
		push	offset watch.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		jmp	short loc_49FCE0
; ---------------------------------------------------------------------------

loc_49FCC9:				; CODE XREF: .text:0049FCB1j
		mov	ecx, dword_5F2B3C
		push	esi
		mov	edi, ecx
		lea	esi, [ebp-214h]
		mov	ecx, 83h
		rep movsd
		pop	esi

loc_49FCE0:				; CODE XREF: .text:0049FCC7j
		mov	eax, [esi+68h]
		mov	edx, eax
		inc	edx
		push	edx		; y1
		push	0		; x1
		push	eax		; y0
		push	0		; x0
		push	0FFFFFFFFh	; column
		push	esi		; pt
		call	Maketableareavisible
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_49FD00
; ---------------------------------------------------------------------------

loc_49FCFE:				; CODE XREF: .text:0049FBBFj
		xor	eax, eax

loc_49FD00:				; CODE XREF: .text:0049FBA3j
					; .text:0049FBAFj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49FD08:				; DATA XREF: .data:stru_54E5D0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, [ebp+8]
		test	eax, eax
		jnz	short loc_49FD2B
		mov	eax, watch.sorted.n
		dec	eax
		cmp	eax, [edx+68h]
		jnz	short loc_49FD24
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49FD24:				; CODE XREF: .text:0049FD1Ej
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49FD2B:				; CODE XREF: .text:0049FD13j
		dec	eax
		jnz	short loc_49FD48
		push	0		; subaddr
		mov	edx, [edx+68h]
		push	edx		; _addr
		push	offset watch.sorted ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49FD48:				; CODE XREF: .text:0049FD2Cj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49FD4C:				; DATA XREF: .data:stru_54E5D0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	eax, eax
		jnz	short loc_49FDAA
		cmp	dword ptr [ebx+44h], 2
		jge	short loc_49FD6B
		xor	eax, eax
		jmp	loc_49FE0B
; ---------------------------------------------------------------------------

loc_49FD6B:				; CODE XREF: .text:0049FD62j
		mov	edx, watch.sorted.n
		dec	edx
		cmp	edx, [ebx+68h]
		jnz	short loc_49FD7E
		xor	eax, eax
		jmp	loc_49FE0B
; ---------------------------------------------------------------------------

loc_49FD7E:				; CODE XREF: .text:0049FD75j
		cmp	dword ptr [ebx+68h], 0
		jnz	short loc_49FD8C
		test	esi, esi
		jnz	short loc_49FD8C
		xor	eax, eax
		jmp	short loc_49FE0B
; ---------------------------------------------------------------------------

loc_49FD8C:				; CODE XREF: .text:0049FD82j
					; .text:0049FD86j
		mov	edx, watch.sorted.n
		add	edx, 0FFFFFFFEh
		cmp	edx, [ebx+68h]
		jnz	short loc_49FDA3
		cmp	esi, 1
		jnz	short loc_49FDA3
		xor	eax, eax
		jmp	short loc_49FE0B
; ---------------------------------------------------------------------------

loc_49FDA3:				; CODE XREF: .text:0049FD98j
					; .text:0049FD9Dj
		mov	eax, 1
		jmp	short loc_49FE0B
; ---------------------------------------------------------------------------

loc_49FDAA:				; CODE XREF: .text:0049FD5Cj
		dec	eax
		jnz	short loc_49FE09
		test	esi, esi
		jnz	short loc_49FDB7
		mov	edx, [ebx+68h]
		dec	edx
		jmp	short loc_49FDBB
; ---------------------------------------------------------------------------

loc_49FDB7:				; CODE XREF: .text:0049FDAFj
		mov	edx, [ebx+68h]
		inc	edx

loc_49FDBB:				; CODE XREF: .text:0049FDB5j
		push	edx		; i2
		mov	ecx, watch.sorted.data
		mov	eax, [ebx+68h]
		push	eax		; i1
		push	20Ch		; size
		push	ecx		; base
		call	Swapmem
		add	esp, 10h
		push	offset watch.sorted ; sd
		call	Renumeratesorteddata
		pop	ecx
		test	esi, esi
		jnz	short loc_49FDE8
		dec	dword ptr [ebx+68h]
		jmp	short loc_49FDEB
; ---------------------------------------------------------------------------

loc_49FDE8:				; CODE XREF: .text:0049FDE1j
		inc	dword ptr [ebx+68h]

loc_49FDEB:				; CODE XREF: .text:0049FDE6j
		mov	eax, [ebx+68h]
		mov	edx, eax
		inc	edx
		push	edx		; y1
		push	0		; x1
		push	eax		; y0
		push	0		; x0
		push	0FFFFFFFFh	; column
		push	ebx		; pt
		call	Maketableareavisible
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_49FE0B
; ---------------------------------------------------------------------------

loc_49FE09:				; CODE XREF: .text:0049FDABj
		xor	eax, eax

loc_49FE0B:				; CODE XREF: .text:0049FD66j
					; .text:0049FD79j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_49FE10
loc_49FE10:				; DATA XREF: .text:004A0778o
					; .data:stru_54E5D0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF1D0h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, [ebp+14h]
		mov	edi, [ebp+8]
		cmp	dword_5F2B40, 0
		jz	short loc_49FE34
		cmp	dword_5F2B48, 0
		jnz	short loc_49FE3B

loc_49FE34:				; CODE XREF: .text:0049FE29j
		xor	eax, eax
		jmp	loc_4A056A
; ---------------------------------------------------------------------------

loc_49FE3B:				; CODE XREF: .text:0049FE32j
		test	byte ptr dword_5F2B40, 10h
		jz	short loc_49FE6C
		cmp	run.status, 12h
		jnz	short loc_49FE65
		cmp	dword_5F2D5C, 0
		jz	short loc_49FE65
		mov	edx, dword_5F2D5C
		cmp	dword ptr [edx+4ECh], 0
		jnz	short loc_49FE6C

loc_49FE65:				; CODE XREF: .text:0049FE4Bj
					; .text:0049FE54j
		xor	eax, eax
		jmp	loc_4A056A
; ---------------------------------------------------------------------------

loc_49FE6C:				; CODE XREF: .text:0049FE42j
					; .text:0049FE63j
		test	eax, eax
		jnz	short loc_49FE7A
		mov	eax, 1
		jmp	loc_4A056A
; ---------------------------------------------------------------------------

loc_49FE7A:				; CODE XREF: .text:0049FE6Ej
		dec	eax
		jnz	loc_4A0568
		lea	edx, [ebp-24h]
		push	edx		; coord
		push	0		; column
		push	offset watch	; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_49FEA1
		or	ecx, 0FFFFFFFFh
		mov	[ebp-20h], ecx
		mov	[ebp-24h], ecx

loc_49FEA1:				; CODE XREF: .text:0049FE96j
		mov	eax, dword_5F2B40
		and	eax, 1Fh
		dec	eax
		sub	eax, 9
		jb	loc_4A00FF
		add	eax, 0FFFFFFF9h
		sub	eax, 3
		jb	short loc_49FED0
		sub	eax, 2
		jz	loc_49FF53
		dec	eax
		jz	loc_4A0069
		jmp	loc_4A0561
; ---------------------------------------------------------------------------

loc_49FED0:				; CODE XREF: .text:0049FEB9j
		mov	edx, dword_5F2B40
		and	edx, 0Fh
		dec	edx
		jnz	short loc_49FEEC
		mov	eax, reg
		push	eax		; bytereg
		call	Byteregtodwordreg
		pop	ecx
		mov	ebx, eax
		jmp	short loc_49FEF2
; ---------------------------------------------------------------------------

loc_49FEEC:				; CODE XREF: .text:0049FEDAj
		mov	ebx, reg

loc_49FEF2:				; CODE XREF: .text:0049FEEAj
		mov	eax, dword_5F2D5C
		mov	edx, [eax+ebx*4+334h]
		mov	[ebp-0Ch], edx
		push	0		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-0Ch]
		mov	eax, [ebp-20h]
		push	eax		; y
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	ebx		; reg
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getregister
		add	esp, 20h
		mov	esi, eax
		test	esi, esi
		jle	loc_4A0561
		mov	eax, dword_5F2D5C
		push	eax		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	edx, dword_5F2D5C
		mov	ecx, [ebp-0Ch]
		mov	[edx+ebx*4+334h], ecx
		jmp	loc_4A0561
; ---------------------------------------------------------------------------

loc_49FF53:				; CODE XREF: .text:0049FEBEj
		mov	eax, dword_5F2D5C
		mov	edx, reg
		mov	ebx, [eax+3A8h]
		add	ebx, edx
		and	ebx, 7
		lea	ecx, [ebx+ebx*4]
		mov	esi, [eax+ecx*2+3ACh]
		mov	[ebp-1Ch], esi
		mov	esi, [eax+ecx*2+3B0h]
		mov	[ebp-18h], esi
		mov	si, [eax+ecx*2+3B4h]
		mov	[ebp-14h], si
		mov	eax, [edi+234h]
		push	eax		; fi
		mov	ecx, [ebp-20h]
		push	ecx		; y
		lea	ecx, [ebp-1Ch]
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; letter
		push	ecx		; data
		push	edx		; reg
		mov	edx, [edi+22Ch]
		push	edx		; hparent
		call	Getfpureg
		add	esp, 1Ch
		mov	esi, eax
		test	esi, esi
		jle	loc_4A0561
		mov	eax, dword_5F2D5C
		push	eax		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		lea	edx, [ebx+ebx*4]
		mov	ecx, dword_5F2D5C
		mov	eax, [ebp-1Ch]
		mov	[ecx+edx*2+3ACh], eax
		mov	eax, [ebp-18h]
		mov	[ecx+edx*2+3B0h], eax
		mov	ax, [ebp-14h]
		mov	[ecx+edx*2+3B4h], ax
		cmp	dword_5BE240, 0
		jz	loc_4A0561
		lea	eax, [ebp-1Ch]
		cmp	dword ptr [eax], 0
		jnz	short loc_4A0028
		cmp	word ptr [eax+4], 0
		jnz	short loc_4A0028
		test	dword ptr [eax+6], 7FFFFFFFh
		jnz	short loc_4A0028
		mov	edx, dword_5F2D5C
		mov	byte ptr [edx+ebx+3FCh], 1
		jmp	loc_4A0561
; ---------------------------------------------------------------------------

loc_4A0028:				; CODE XREF: .text:004A0003j
					; .text:004A000Aj ...
		mov	ecx, [eax+6]
		mov	edx, ecx
		and	edx, 7FFF0000h
		test	edx, edx
		jz	short loc_4A0056
		cmp	edx, 7FFF0000h
		jz	short loc_4A0056
		test	ch, 80h
		jz	short loc_4A0056
		mov	eax, dword_5F2D5C
		mov	byte ptr [eax+ebx+3FCh], 0
		jmp	loc_4A0561
; ---------------------------------------------------------------------------

loc_4A0056:				; CODE XREF: .text:004A0035j
					; .text:004A003Dj ...
		mov	ecx, dword_5F2D5C
		mov	byte ptr [ecx+ebx+3FCh], 2
		jmp	loc_4A0561
; ---------------------------------------------------------------------------

loc_4A0069:				; CODE XREF: .text:0049FEC5j
		mov	ebx, reg
		mov	eax, dword_5F2D5C
		mov	edx, [eax+ebx*4+358h]
		mov	[ebp-0Ch], edx
		mov	ecx, segname[ebx*4]
		push	ecx
		push	offset aModifyS_2 ; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-228h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	22h		; mode
		mov	edx, [edi+234h]
		push	edx		; fi
		lea	edx, [ebp-0Ch]
		mov	ecx, [ebp-20h]
		push	ecx		; y
		lea	ecx, [ebp-228h]
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; letter
		push	edx		; data
		push	ecx		; _title
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getinteger
		add	esp, 20h
		mov	esi, eax
		test	esi, esi
		jle	loc_4A0561
		mov	eax, dword_5F2D5C
		push	eax		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	edx, [ebp-0Ch]
		and	edx, 0FFFFh
		mov	ecx, dword_5F2D5C
		mov	[ecx+ebx*4+358h], edx
		jmp	loc_4A0561
; ---------------------------------------------------------------------------

loc_4A00FF:				; CODE XREF: .text:0049FEADj
		mov	eax, dword_5F2B40
		and	eax, 0Fh
		cmp	eax, 9		; switch 10 cases
		ja	loc_4A0308	; jumptable 004A0110 default case
		jmp	ds:off_4A0117[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4A0117	dd offset loc_4A0308	; DATA XREF: .text:004A0110r
		dd offset loc_4A013F	; jump table for switch	statement
		dd offset loc_4A0173
		dd offset loc_4A01A7
		dd offset loc_4A01DB
		dd offset loc_4A020F
		dd offset loc_4A0243
		dd offset loc_4A0277
		dd offset loc_4A02A8
		dd offset loc_4A02D9
; ---------------------------------------------------------------------------

loc_4A013F:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 1		; jumptable 004A0110 case 1
		mov	dword ptr [ebp-10h], 101h
		push	offset aEditByteAt ; "Edit byte	at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	loc_4A0308	; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A0173:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 2		; jumptable 004A0110 case 2
		mov	dword ptr [ebp-10h], 102h
		push	offset aEditWordAt ; "Edit word	at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	loc_4A0308	; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A01A7:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 4		; jumptable 004A0110 case 3
		mov	dword ptr [ebp-10h], 104h
		push	offset aEditDwordAt ; "Edit dword at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	loc_4A0308	; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A01DB:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 4		; jumptable 004A0110 case 4
		mov	dword ptr [ebp-10h], 4
		push	offset aEdit32BitFloat ; "Edit 32-bit float at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	loc_4A0308	; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A020F:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 8		; jumptable 004A0110 case 5
		mov	dword ptr [ebp-10h], 8
		push	offset aEdit64BitFloat ; "Edit 64-bit float at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	loc_4A0308	; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A0243:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 0Ah	; jumptable 004A0110 case 6
		mov	dword ptr [ebp-10h], 0Ah
		push	offset aEdit80BitFloat ; "Edit 80-bit float at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	loc_4A0308	; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A0277:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 2		; jumptable 004A0110 case 7
		mov	dword ptr [ebp-10h], 22h
		push	offset aEditSelectorAt ; "Edit selector	at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	short loc_4A0308 ; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A02A8:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 400h	; jumptable 004A0110 case 8
		mov	dword ptr [ebp-10h], 400h
		push	offset aEditAsciiStrin ; "Edit ASCII string at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	short loc_4A0308 ; jumptable 004A0110 default case
; ---------------------------------------------------------------------------

loc_4A02D9:				; CODE XREF: .text:004A0110j
					; DATA XREF: .text:off_4A0117o
		mov	ebx, 400h	; jumptable 004A0110 case 9
		mov	dword ptr [ebp-10h], 500h
		push	offset aEditUnicodeStr ; "Edit UNICODE string at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-228h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax

loc_4A0308:				; CODE XREF: .text:004A010Aj
					; .text:004A0110j ...
		push	0		; jumptable 004A0110 default case
		mov	edx, 100h
		sub	edx, [ebp-4]
		push	edx		; nsymb
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-228h]
		add	ecx, eax
		push	ecx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, reg
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	ecx, reg
		lea	eax, [ebp-628h]
		push	5		; mode
		push	ebx		; size
		push	ecx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4A0366
		cmp	ebx, 400h
		jz	short loc_4A037F
		cmp	ebx, [ebp-8]
		jz	short loc_4A037F

loc_4A0366:				; CODE XREF: .text:004A0357j
		push	offset aMemoryIsNotR_0 ; "Memory is not	readable"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4A056A
; ---------------------------------------------------------------------------

loc_4A037F:				; CODE XREF: .text:004A035Fj
					; .text:004A0364j
		mov	ebx, [ebp-8]
		mov	eax, dword_5F2B40
		and	eax, 0Fh
		dec	eax
		sub	eax, 3
		jb	short loc_4A03A2
		sub	eax, 3
		jb	short loc_4A03DB
		jz	short loc_4A03A2
		dec	eax
		sub	eax, 2
		jb	short loc_4A0414
		jmp	loc_4A0507
; ---------------------------------------------------------------------------

loc_4A03A2:				; CODE XREF: .text:004A038Ej
					; .text:004A0395j
		mov	edx, [ebp-10h]
		push	edx		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-628h]
		mov	eax, [ebp-20h]
		push	eax		; y
		lea	eax, [ebp-228h]
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [edi+22Ch]
		push	edx		; hparent
		call	Getinteger
		add	esp, 20h
		mov	esi, eax
		jmp	loc_4A0507
; ---------------------------------------------------------------------------

loc_4A03DB:				; CODE XREF: .text:004A0393j
		mov	eax, [ebp-10h]
		push	eax		; mode
		mov	edx, [edi+234h]
		push	edx		; fi
		lea	edx, [ebp-628h]
		mov	ecx, [ebp-20h]
		push	ecx		; y
		lea	ecx, [ebp-228h]
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; letter
		push	edx		; data
		push	ecx		; _title
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getfloat
		add	esp, 20h
		mov	esi, eax
		jmp	loc_4A0507
; ---------------------------------------------------------------------------

loc_4A0414:				; CODE XREF: .text:004A039Bj
		mov	eax, dword_5F2B40
		and	eax, 0Fh
		cmp	eax, 8
		jnz	short loc_4A0439
		push	ebx		; n
		lea	edx, [ebp-628h]
		push	edx		; src
		call	StrlenA
		add	esp, 8
		mov	[ebp-0E30h], eax
		jmp	short loc_4A0453
; ---------------------------------------------------------------------------

loc_4A0439:				; CODE XREF: .text:004A041Fj
		mov	ecx, ebx
		shr	ecx, 1
		push	ecx		; n
		lea	eax, [ebp-628h]
		push	eax		; src
		call	StrlenW
		add	esp, 8
		mov	[ebp-0E30h], eax

loc_4A0453:				; CODE XREF: .text:004A0437j
		mov	[ebp-0E2Ch], ebx
		push	ebx		; n
		lea	edx, [ebp-628h]
		push	edx		; src
		lea	ecx, [ebp-0E28h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	eax, [ebp-0A28h]
		push	ebx		; n
		push	0FFh		; c
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp-10h]
		push	edx		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-0E30h]
		mov	eax, [ebp-20h]
		push	eax		; y
		lea	eax, [ebp-228h]
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; hstr
		push	eax		; _title
		mov	edx, [edi+22Ch]
		push	edx		; hparent
		call	Binaryedit
		add	esp, 20h
		mov	esi, eax
		test	esi, esi
		jg	short loc_4A04C4
		xor	eax, eax
		jmp	loc_4A056A
; ---------------------------------------------------------------------------

loc_4A04C4:				; CODE XREF: .text:004A04BBj
		mov	ebx, [ebp-0E30h]
		xor	eax, eax
		mov	[ebp-8], eax
		lea	edx, [ebp-628h]
		mov	[ebp-28h], edx
		lea	eax, [ebp-0A28h]
		cmp	ebx, [ebp-8]
		jbe	short loc_4A0507

loc_4A04E3:				; CODE XREF: .text:004A0505j
		mov	edx, [ebp-28h]
		mov	cl, [eax]
		not	cl
		and	cl, [edx]
		mov	dl, [eax-400h]
		and	dl, [eax]
		inc	eax
		or	cl, dl
		mov	edx, [ebp-28h]
		mov	[edx], cl
		inc	dword ptr [ebp-8]
		inc	dword ptr [ebp-28h]
		cmp	ebx, [ebp-8]
		ja	short loc_4A04E3

loc_4A0507:				; CODE XREF: .text:004A039Dj
					; .text:004A03D6j ...
		test	esi, esi
		jg	short loc_4A050F
		xor	eax, eax
		jmp	short loc_4A056A
; ---------------------------------------------------------------------------

loc_4A050F:				; CODE XREF: .text:004A0509j
		call	Suspendallthreads
		push	20h		; mode
		push	ebx		; size
		mov	ecx, reg
		push	ecx		; _addr
		lea	eax, [ebp-628h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h
		mov	edx, reg
		push	0		; keephittrace
		push	ebx		; size
		push	edx		; base
		call	Removeanalysis
		add	esp, 0Ch
		push	ebx
		mov	ecx, reg
		push	ecx
		mov	eax, reg
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads

loc_4A0561:				; CODE XREF: .text:0049FECBj
					; .text:0049FF2Cj ...
		mov	eax, 1
		jmp	short loc_4A056A
; ---------------------------------------------------------------------------

loc_4A0568:				; CODE XREF: .text:0049FE7Bj
		xor	eax, eax

loc_4A056A:				; CODE XREF: .text:0049FE36j
					; .text:0049FE67j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A0574:				; DATA XREF: .data:stru_54E5D0o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, dword_5F2B48
		cmp	edx, 3
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+14h]
		jz	short loc_4A0593
		cmp	edx, 23h
		jz	short loc_4A0593
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A0593:				; CODE XREF: .text:004A0587j
					; .text:004A058Cj
		test	eax, eax
		jnz	short loc_4A05D2
		mov	ecx, g_addr
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4A05AD
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A05AD:				; CODE XREF: .text:004A05A6j
		test	ebx, ebx
		jnz	short loc_4A05BA
		test	dword ptr [eax+8], 2001000h
		jnz	short loc_4A05CA

loc_4A05BA:				; CODE XREF: .text:004A05AFj
		cmp	ebx, 1
		jz	short loc_4A05CA
		cmp	ebx, 2
		jnz	short loc_4A0638
		test	byte ptr [eax+0Ah], 8
		jz	short loc_4A0638

loc_4A05CA:				; CODE XREF: .text:004A05B8j
					; .text:004A05BDj
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A05D2:				; CODE XREF: .text:004A0595j
		dec	eax
		jnz	short loc_4A0638
		cmp	ebx, 1
		jnz	short loc_4A05F8
		push	90h		; mode
		push	0		; stackaddr
		push	1		; selsize
		mov	edx, g_addr
		push	edx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4A0633
; ---------------------------------------------------------------------------

loc_4A05F8:				; CODE XREF: .text:004A05D8j
		cmp	ebx, 2
		jnz	short loc_4A061B
		push	100h		; mode
		mov	ecx, g_addr
		push	ecx		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4A0633
; ---------------------------------------------------------------------------

loc_4A061B:				; CODE XREF: .text:004A05FBj
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	eax, g_addr
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4A0633:				; CODE XREF: .text:004A05F6j
					; .text:004A0619j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A0638:				; CODE XREF: .text:004A05C2j
					; .text:004A05C8j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4A0640(wchar_t *, void *, int, int, int, int)
loc_4A0640:				; DATA XREF: .text:004A0884o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE4h
		xor	eax, eax
		mov	edx, [ebp+18h]
		mov	ecx, [ebp+1Ch]
		add	ecx, 4		; switch 6 cases
		cmp	ecx, 5
		ja	short loc_4A06CE ; jumptable 004A0659 default case
		jmp	ds:off_4A0660[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4A0660	dd offset loc_4A0678	; DATA XREF: .text:004A0659r
		dd offset loc_4A067C	; jump table for switch	statement
		dd offset loc_4A0680
		dd offset loc_4A0684
		dd offset loc_4A0688
		dd offset loc_4A069F
; ---------------------------------------------------------------------------

loc_4A0678:				; CODE XREF: .text:004A0659j
					; DATA XREF: .text:off_4A0660o
		xor	eax, eax	; jumptable 004A0659 case -4
		jmp	short loc_4A06CE ; jumptable 004A0659 default case
; ---------------------------------------------------------------------------

loc_4A067C:				; CODE XREF: .text:004A0659j
					; DATA XREF: .text:off_4A0660o
		xor	eax, eax	; jumptable 004A0659 case -3
		jmp	short loc_4A06CE ; jumptable 004A0659 default case
; ---------------------------------------------------------------------------

loc_4A0680:				; CODE XREF: .text:004A0659j
					; DATA XREF: .text:off_4A0660o
		xor	eax, eax	; jumptable 004A0659 case -2
		jmp	short loc_4A06CE ; jumptable 004A0659 default case
; ---------------------------------------------------------------------------

loc_4A0684:				; CODE XREF: .text:004A0659j
					; DATA XREF: .text:off_4A0660o
		xor	eax, eax	; jumptable 004A0659 case -1
		jmp	short loc_4A06CE ; jumptable 004A0659 default case
; ---------------------------------------------------------------------------

loc_4A0688:				; CODE XREF: .text:004A0659j
					; DATA XREF: .text:off_4A0660o
		add	edx, 0Ch	; jumptable 004A0659 case 0
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4A06CE ; jumptable 004A0659 default case
; ---------------------------------------------------------------------------

loc_4A069F:				; CODE XREF: .text:004A0659j
					; DATA XREF: .text:off_4A0660o
		mov	ecx, watch.sorted.n ; jumptable	004A0659 case 1
		dec	ecx
		cmp	ecx, [edx]
		jz	short loc_4A06CE ; jumptable 004A0659 default case
		mov	eax, [ebp+0Ch]
		add	edx, 0Ch
		push	eax		; void *
		lea	ecx, [ebp-21Ch]
		mov	eax, [ebp+8]
		push	eax		; wchar_t *
		push	edx		; wchar_t *
		push	ecx		; s
		call	loc_49F844
		add	esp, 10h
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 100h

loc_4A06CE:				; CODE XREF: .text:004A0657j
					; .text:004A067Aj ...
		mov	esp, ebp	; jumptable 004A0659 default case
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4A06D4(int, int, int,	wint_t c)
loc_4A06D4:				; DATA XREF: .text:004A0860o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebp+10h]
		sub	eax, 102h
		jz	short loc_4A0703
		sub	eax, 36Fh
		jz	short loc_4A073F
		sub	eax, 3
		jz	loc_4A0795
		sub	eax, 18h
		jz	loc_4A07BF
		jmp	loc_4A07CE
; ---------------------------------------------------------------------------

loc_4A0703:				; CODE XREF: .text:004A06E3j
		test	ebx, ebx
		jz	loc_4A07CE
		mov	dx, [ebp+14h]
		push	edx		; c
		call	_iswgraph
		pop	ecx
		test	eax, eax
		jz	loc_4A07CE
		mov	ecx, [ebp+14h]
		push	ecx		; index
		push	offset loc_49FB74 ; menufunc
		mov	eax, [ebx+218h]
		push	eax		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A073F:				; CODE XREF: .text:004A06EAj
		mov	eax, [ebp+14h]
		shr	eax, 10h
		movzx	eax, ax
		test	eax, eax
		jnz	short loc_4A0776
		mov	edx, 1
		mov	ecx, watch.sorted.n
		dec	ecx
		cmp	ecx, [ebx+68h]
		jz	short loc_4A075E
		inc	edx

loc_4A075E:				; CODE XREF: .text:004A075Bj
		push	edx		; index
		push	offset loc_49FB74 ; menufunc
		mov	eax, [ebx+218h]
		push	eax		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4A078D
; ---------------------------------------------------------------------------

loc_4A0776:				; CODE XREF: .text:004A074Aj
		push	0		; index
		push	offset loc_49FE10 ; menufunc
		mov	edx, [ebx+218h]
		push	edx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4A078D:				; CODE XREF: .text:004A0774j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A0795:				; CODE XREF: .text:004A06EFj
		mov	eax, run.status
		test	eax, eax
		jz	short loc_4A07CE
		cmp	eax, 12h
		jz	short loc_4A07CE
		cmp	eax, 13h
		jz	short loc_4A07CE
		call	Flushmemorycache
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	InvalidateRect
		jmp	short loc_4A07CE
; ---------------------------------------------------------------------------

loc_4A07BF:				; CODE XREF: .text:004A06F8j
		or	dword_57FE7C, 2000h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A07CE:				; CODE XREF: .text:004A06FEj
					; .text:004A0705j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A07D4:				; CODE XREF: .text:0040B0A1p
					; .text:00410075p
		push	ebp
		mov	ebp, esp
		cmp	watch.bar.nbar,	0
		jnz	loc_4A089E
		push	offset aWatches_1 ; src
		push	offset watch	; dst
		call	_wcscpy
		mov	watch.mode, 10F8180h
		mov	watch.bar.visible, 1
		mov	watch.bar._name,	offset aExpression ; "Expression"
		mov	watch.bar.expl,	offset aExpressionToEv ; "Expression to	evaluate"
		mov	watch.bar.mode,	2000h
		mov	watch.bar.defdx, 28h
		mov	watch.bar._name+4, offset aValue_1 ; "Value"
		xor	eax, eax
		mov	watch.bar.expl+4, offset aValueOfExpress ; "Value of expression"
		mov	watch.bar.mode+4, eax
		mov	watch.bar.defdx+4, 0FFh
		mov	watch.bar.nbar,	2
		xor	edx, edx
		mov	watch.tabfunc, offset loc_4A06D4
		xor	ecx, ecx
		mov	watch.custommode, edx
		xor	eax, eax
		mov	watch.customdata, ecx
		mov	watch.updatefunc, eax
		add	esp, 8
		xor	edx, edx
		mov	watch.drawfunc,	offset loc_4A0640
		mov	watch.tableselfunc, edx
		mov	watch.menu, offset stru_54E5D0

loc_4A089E:				; CODE XREF: .text:004A07DEj
		cmp	watch.hw, 0
		jnz	short loc_4A08D6
		push	offset aWatches_1 ; src
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset aIco_quest ; "ICO_QUEST"
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, watch.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset watch	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4A08E6
; ---------------------------------------------------------------------------

loc_4A08D6:				; CODE XREF: .text:004A08A5j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, watch.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_4A08E6:				; CODE XREF: .text:004A08D4j
		cmp	watch.hparent, 0
		jz	short loc_4A093B
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4A093B
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4A0912
		push	0		; lParam
		mov	edx, watch.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4A0912:				; CODE XREF: .text:004A08FCj
		mov	ecx, watch.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4A092F
		push	9		; nCmdShow
		mov	eax, watch.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4A092F:				; CODE XREF: .text:004A0920j
		mov	edx, watch.hw
		push	edx		; hWnd
		call	SetFocus

loc_4A093B:				; CODE XREF: .text:004A08EDj
					; .text:004A08F3j
		mov	eax, watch.hw
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A0944:				; CODE XREF: .text:004A0FEFp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	eax, offset aAddress ; "Address"
		mov	edx, [ebx+88h]
		cmp	edx, esi
		jz	loc_4A0E19
		cmp	esi, 1
		jz	short loc_4A097F
		cmp	esi, 3
		jz	short loc_4A097F
		cmp	esi, 4
		jz	short loc_4A097F
		cmp	esi, 5
		jz	short loc_4A097F
		cmp	esi, 7
		jnz	loc_4A0A02

loc_4A097F:				; CODE XREF: .text:004A0965j
					; .text:004A096Aj ...
		mov	[ebx+94h], eax
		lea	ecx, [eax+10h]
		mov	[ebx+0D8h], ecx
		xor	edx, edx
		mov	[ebx+11Ch], edx
		lea	ecx, [eax+3Ch]
		mov	dword ptr [ebx+160h], 9
		mov	[ebx+98h], ecx
		lea	edx, [eax+4Ch]
		mov	[ebx+0DCh], edx
		mov	ecx, 2Dh
		mov	dword ptr [ebx+120h], 1000h
		cmp	esi, 4
		jz	short loc_4A09C9
		add	ecx, 0FFFFFFFBh

loc_4A09C9:				; CODE XREF: .text:004A09C4j
		mov	[ebx+164h], ecx
		lea	edx, [eax+76h]
		mov	[ebx+9Ch], edx
		add	eax, 76h
		mov	[ebx+0E0h], eax
		xor	ecx, ecx
		mov	[ebx+124h], ecx
		mov	dword ptr [ebx+168h], 100h
		mov	dword ptr [ebx+8Ch], 3
		jmp	loc_4A0E0C
; ---------------------------------------------------------------------------

loc_4A0A02:				; CODE XREF: .text:004A0979j
		cmp	esi, 2
		jnz	loc_4A0A8C
		mov	[ebx+94h], eax
		lea	edx, [eax+88h]
		mov	[ebx+0D8h], edx
		xor	ecx, ecx
		mov	[ebx+11Ch], ecx
		lea	edx, [eax+0BCh]
		mov	dword ptr [ebx+160h], 9
		mov	[ebx+98h], edx
		lea	ecx, [eax+0D8h]
		mov	[ebx+0DCh], ecx
		xor	edx, edx
		mov	[ebx+120h], edx
		lea	ecx, [eax+76h]
		mov	dword ptr [ebx+164h], 28h
		mov	[ebx+9Ch], ecx
		add	eax, 76h
		mov	[ebx+0E0h], eax
		xor	eax, eax
		mov	[ebx+124h], eax
		mov	dword ptr [ebx+168h], 100h
		mov	dword ptr [ebx+8Ch], 3
		jmp	loc_4A0E0C
; ---------------------------------------------------------------------------

loc_4A0A8C:				; CODE XREF: .text:004A0A05j
		cmp	esi, 6
		jnz	loc_4A0B96
		mov	[ebx+94h], eax
		lea	edx, [eax+12Eh]
		mov	[ebx+0D8h], edx
		lea	ecx, [eax+3Ch]
		mov	dword ptr [ebx+11Ch], 2
		mov	dword ptr [ebx+160h], 9
		mov	[ebx+98h], ecx
		lea	edx, [eax+4Ch]
		mov	[ebx+0DCh], edx
		lea	ecx, [eax+152h]
		mov	dword ptr [ebx+120h], 1000h
		mov	dword ptr [ebx+164h], 20h
		mov	[ebx+9Ch], ecx
		lea	edx, [eax+15Ch]
		mov	[ebx+0E0h], edx
		lea	ecx, [eax+18Eh]
		mov	dword ptr [ebx+124h], 2
		mov	dword ptr [ebx+168h], 0Bh
		mov	[ebx+0A0h], ecx
		lea	edx, [eax+1A0h]
		mov	[ebx+0E4h], edx
		lea	ecx, [eax+1C6h]
		mov	dword ptr [ebx+128h], 2
		mov	dword ptr [ebx+16Ch], 9
		mov	[ebx+0A4h], ecx
		lea	edx, [eax+1D2h]
		mov	[ebx+0E8h], edx
		xor	ecx, ecx
		mov	[ebx+12Ch], ecx
		lea	edx, [eax+76h]
		mov	dword ptr [ebx+170h], 28h
		add	eax, 76h
		mov	[ebx+0A8h], edx
		mov	[ebx+0ECh], eax
		xor	ecx, ecx
		mov	[ebx+130h], ecx
		mov	dword ptr [ebx+174h], 100h
		mov	dword ptr [ebx+8Ch], 6
		jmp	loc_4A0E0C
; ---------------------------------------------------------------------------

loc_4A0B96:				; CODE XREF: .text:004A0A8Fj
		cmp	esi, 8
		jnz	loc_4A0C75
		mov	[ebx+94h], eax
		lea	edx, [eax+10h]
		mov	[ebx+0D8h], edx
		lea	ecx, [eax+3Ch]
		mov	dword ptr [ebx+11Ch], 2
		mov	dword ptr [ebx+160h], 9
		mov	[ebx+98h], ecx
		lea	edx, [eax+4Ch]
		mov	[ebx+0DCh], edx
		lea	ecx, [eax+1EEh]
		mov	dword ptr [ebx+120h], 1000h
		mov	dword ptr [ebx+164h], 28h
		mov	[ebx+9Ch], ecx
		lea	edx, [eax+1F8h]
		mov	[ebx+0E0h], edx
		lea	ecx, [eax+230h]
		mov	dword ptr [ebx+124h], 2
		mov	dword ptr [ebx+168h], 9
		mov	[ebx+0A0h], ecx
		lea	edx, [eax+244h]
		mov	[ebx+0E4h], edx
		lea	ecx, [eax+76h]
		mov	dword ptr [ebx+128h], 2
		mov	dword ptr [ebx+16Ch], 23h
		mov	[ebx+0A4h], ecx
		add	eax, 266h
		mov	[ebx+0E8h], eax
		xor	eax, eax
		mov	[ebx+12Ch], eax
		mov	dword ptr [ebx+170h], 100h
		mov	dword ptr [ebx+8Ch], 5
		jmp	loc_4A0E0C
; ---------------------------------------------------------------------------

loc_4A0C75:				; CODE XREF: .text:004A0B99j
		cmp	esi, 9
		jnz	loc_4A0D29
		mov	[ebx+94h], eax
		lea	edx, [eax+2B2h]
		mov	[ebx+0D8h], edx
		xor	ecx, ecx
		mov	[ebx+11Ch], ecx
		lea	edx, [eax+2EEh]
		mov	dword ptr [ebx+160h], 9
		mov	[ebx+98h], edx
		lea	ecx, [eax+310h]
		mov	[ebx+0DCh], ecx
		xor	edx, edx
		mov	[ebx+120h], edx
		lea	ecx, [eax+33Eh]
		mov	dword ptr [ebx+164h], 28h
		mov	[ebx+9Ch], ecx
		lea	edx, [eax+360h]
		mov	[ebx+0E0h], edx
		xor	ecx, ecx
		mov	[ebx+124h], ecx
		lea	edx, [eax+76h]
		mov	dword ptr [ebx+168h], 28h
		add	eax, 76h
		mov	[ebx+0A0h], edx
		mov	[ebx+0E4h], eax
		xor	ecx, ecx
		mov	[ebx+128h], ecx
		mov	dword ptr [ebx+16Ch], 100h
		mov	dword ptr [ebx+8Ch], 4
		jmp	loc_4A0E0C
; ---------------------------------------------------------------------------

loc_4A0D29:				; CODE XREF: .text:004A0C78j
		cmp	esi, 0Ah
		jnz	loc_4A0E04
		mov	[ebx+94h], eax
		lea	edx, [eax+38Eh]
		mov	[ebx+0D8h], edx
		lea	ecx, [eax+3Ch]
		mov	dword ptr [ebx+11Ch], 2
		mov	dword ptr [ebx+160h], 18h
		mov	[ebx+98h], ecx
		lea	edx, [eax+4Ch]
		mov	[ebx+0DCh], edx
		xor	ecx, ecx
		mov	[ebx+120h], ecx
		lea	edx, [eax+3E0h]
		mov	dword ptr [ebx+164h], 28h
		mov	[ebx+9Ch], edx
		lea	ecx, [eax+3ECh]
		mov	[ebx+0E0h], ecx
		lea	edx, [eax+446h]
		mov	dword ptr [ebx+124h], 2
		mov	dword ptr [ebx+168h], 8
		mov	[ebx+0A0h], edx
		lea	ecx, [eax+454h]
		mov	[ebx+0E4h], ecx
		lea	edx, [eax+76h]
		mov	dword ptr [ebx+128h], 2
		mov	dword ptr [ebx+16Ch], 8
		add	eax, 76h
		mov	[ebx+0A4h], edx
		mov	[ebx+0E8h], eax
		xor	ecx, ecx
		mov	[ebx+12Ch], ecx
		mov	dword ptr [ebx+170h], 100h
		mov	dword ptr [ebx+8Ch], 5
		jmp	short loc_4A0E0C
; ---------------------------------------------------------------------------

loc_4A0E04:				; CODE XREF: .text:004A0D2Cj
		xor	eax, eax
		mov	[ebx+8Ch], eax

loc_4A0E0C:				; CODE XREF: .text:004A09FDj
					; .text:004A0A87j ...
		push	ebx		; pt
		call	Defaultbar
		pop	ecx
		mov	[ebx+88h], esi

loc_4A0E19:				; CODE XREF: .text:004A095Cj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4A0E20:				; CODE XREF: .text:004A2688p
					; .text:004A2ECBp ...
		push	ebp
		mov	ebp, esp
		push	0		; mode
		push	0		; destfunc
		push	offset loc_4A7AF4 ; sortfunc
		push	80h		; nexp
		push	18h		; itemsize
		push	offset stru_5FA8D4 ; sd
		call	Createsorteddata
		add	esp, 18h
		mov	word_5F6D98, 0
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4A0E4C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, void	*s, int, int, int, int)
loc_4A0E4C:				; CODE XREF: .text:004A2E81p
					; .text:004A3610p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB90h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4A0E65
		xor	eax, eax
		jmp	loc_4A1059
; ---------------------------------------------------------------------------

loc_4A0E65:				; CODE XREF: .text:004A0E5Cj
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		mov	[ebp-4], ecx
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4A0E8C
		push	offset aNoItemsFound ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4A1059
; ---------------------------------------------------------------------------

loc_4A0E8C:				; CODE XREF: .text:004A0E71j
		push	0FFFFFFFFh	; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		xor	ebx, ebx
		mov	esi, offset stru_5F82F8

loc_4A0EA2:				; CODE XREF: .text:004A0EC8j
		mov	eax, [esi+28h]
		test	eax, eax
		jnz	short loc_4A0EB0
		xor	eax, eax
		jmp	loc_4A1059
; ---------------------------------------------------------------------------

loc_4A0EB0:				; CODE XREF: .text:004A0EA7j
		add	eax, 44h
		push	eax		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jz	short loc_4A0ECA
		inc	ebx
		add	esi, 46Ch
		cmp	ebx, 8
		jl	short loc_4A0EA2

loc_4A0ECA:				; CODE XREF: .text:004A0EBCj
		cmp	ebx, 8
		jl	short loc_4A0EF2
		mov	ebx, 7
		lea	eax, [ebx+ebx*8]
		shl	eax, 3
		sub	eax, ebx
		shl	eax, 2
		sub	eax, ebx
		mov	edx, stru_5F82F8.table[eax*4]
		add	edx, 44h
		push	edx		; sd
		call	Destroysorteddata
		pop	ecx

loc_4A0EF2:				; CODE XREF: .text:004A0ECDj
		test	ebx, ebx
		jle	short loc_4A0F5D
		lea	ecx, [ebx+ebx*8]
		lea	edi, [ebp-470h]
		shl	ecx, 3
		mov	eax, ebx
		sub	ecx, ebx
		shl	ecx, 2
		lea	edx, [eax+eax*8]
		sub	ecx, ebx
		lea	esi, stru_5F82F8.index[ecx*4]
		mov	ecx, 11Bh
		rep movsd
		shl	edx, 3
		sub	edx, eax
		shl	edx, 2
		sub	edx, eax
		test	eax, eax
		lea	edx, (stru_5F6F98.sorted.block+0E9Ch)[edx*4]
		jle	short loc_4A0F4B

loc_4A0F31:				; CODE XREF: .text:004A0F49j
		mov	esi, edx
		lea	edi, [edx+46Ch]
		mov	ecx, 11Bh
		rep movsd
		dec	eax
		add	edx, 0FFFFFB94h
		test	eax, eax
		jg	short loc_4A0F31

loc_4A0F4B:				; CODE XREF: .text:004A0F2Fj
		lea	esi, [ebp-470h]
		mov	edi, offset stru_5F82F8
		mov	ecx, 11Bh
		rep movsd

loc_4A0F5D:				; CODE XREF: .text:004A0EF4j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A0F6A
		mov	eax, $CTW0("");(offset aAddress+0Dh) ; ""
		jmp	short loc_4A0F6D
; ---------------------------------------------------------------------------

loc_4A0F6A:				; CODE XREF: .text:004A0F61j
		mov	eax, [ebp+10h]

loc_4A0F6D:				; CODE XREF: .text:004A0F68j
		push	eax		; src
		push	20h		; n
		push	offset stru_5F82F8.tabname ; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4A0F8A
		mov	edx, $CTW0("");(offset aAddress+0Dh) ; ""
		jmp	short loc_4A0F8D
; ---------------------------------------------------------------------------

loc_4A0F8A:				; CODE XREF: .text:004A0F81j
		mov	edx, [ebp+14h]

loc_4A0F8D:				; CODE XREF: .text:004A0F88j
		push	edx		; src
		push	100h		; n
		push	offset stru_5F82F8._title ; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4A0FAD
		mov	eax, $CTW0("");(offset aAddress+0Dh) ; ""
		jmp	short loc_4A0FB0
; ---------------------------------------------------------------------------

loc_4A0FAD:				; CODE XREF: .text:004A0FA4j
		mov	eax, [ebp+18h]

loc_4A0FB0:				; CODE XREF: .text:004A0FABj
		push	eax		; src
		push	100h		; n
		push	offset stru_5F82F8.status ; dest
		call	StrcopyW
		mov	esi, stru_5F82F8.table
		add	esp, 0Ch
		mov	eax, [ebp+8]
		mov	ecx, 11h
		push	esi
		lea	edi, [esi+44h]
		mov	esi, eax
		rep movsd
		pop	esi
		push	44h		; n
		push	0		; c
		mov	eax, [ebp+8]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp+0Ch]
		push	edx
		push	esi
		call	loc_4A0944
		add	esp, 8
		push	0		; selected
		push	esi		; pt
		call	Settableselection
		add	esp, 8
		xor	eax, eax
		mov	edx, offset stru_5F82F8._type
		cmp	ebx, eax
		jl	short loc_4A103F

loc_4A100D:				; CODE XREF: .text:004A103Dj
		mov	dword ptr [edx], 3
		cmp	ebx, eax
		jnz	short loc_4A101B
		xor	ecx, ecx
		jmp	short loc_4A1031
; ---------------------------------------------------------------------------

loc_4A101B:				; CODE XREF: .text:004A1015j
		lea	ecx, [eax+eax*8]
		shl	ecx, 3
		sub	ecx, eax
		shl	ecx, 2
		sub	ecx, eax
		shl	ecx, 2
		add	ecx, (offset stru_5F82F8.index+46Ch)

loc_4A1031:				; CODE XREF: .text:004A1019j
		mov	[edx+0Ch], ecx
		inc	eax
		add	edx, 46Ch
		cmp	ebx, eax
		jge	short loc_4A100D

loc_4A103F:				; CODE XREF: .text:004A100Bj
		push	1
		call	loc_4A8930
		pop	ecx
		push	0		; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		mov	eax, [ebp-4]

loc_4A1059:				; CODE XREF: .text:004A0E60j
					; .text:004A0E87j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A1060:				; CODE XREF: .text:004A2587p
					; .text:004A25AAp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB90h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jl	short loc_4A1078
		cmp	edi, 8
		jl	short loc_4A1080

loc_4A1078:				; CODE XREF: .text:004A1071j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A1291
; ---------------------------------------------------------------------------

loc_4A1080:				; CODE XREF: .text:004A1076j
		lea	edx, [edi+edi*8]
		shl	edx, 3
		sub	edx, edi
		shl	edx, 2
		sub	edx, edi
		mov	ebx, stru_5F82F8.table[edx*4]
		test	ebx, ebx
		jnz	short loc_4A10A0
		or	eax, 0FFFFFFFFh
		jmp	loc_4A1291
; ---------------------------------------------------------------------------

loc_4A10A0:				; CODE XREF: .text:004A1096j
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jnz	short loc_4A10B6
		or	eax, 0FFFFFFFFh
		jmp	loc_4A1291
; ---------------------------------------------------------------------------

loc_4A10B6:				; CODE XREF: .text:004A10ACj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A10C3
		xor	eax, eax
		jmp	loc_4A1291
; ---------------------------------------------------------------------------

loc_4A10C3:				; CODE XREF: .text:004A10BAj
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		lea	edx, [ebp-4]
		push	edx		; index
		push	offset stru_5FA658 ; pf
		call	Gettabcount
		add	esp, 8
		cmp	dword ptr [ebp-4], 0
		jl	short loc_4A10E7
		cmp	dword ptr [ebp-4], 8
		jl	short loc_4A10EA

loc_4A10E7:				; CODE XREF: .text:004A10DFj
		mov	[ebp-4], edi

loc_4A10EA:				; CODE XREF: .text:004A10E5j
		push	0FFFFFFFFh	; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		add	ebx, 44h
		push	ebx		; sd
		call	Destroysorteddata
		pop	ecx
		push	offset aNoSearchResult ; "No search results"
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	eax, [edi+edi*8]
		shl	eax, 3
		sub	eax, edi
		shl	eax, 2
		sub	eax, edi
		shl	eax, 2
		add	eax, offset stru_5F82F8.tabname
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aNoSearchResult ; "No search results"
		call	_T
		lea	edx, [edi+edi*8]
		pop	ecx
		shl	edx, 3
		push	eax		; src
		sub	edx, edi
		push	100h		; n
		shl	edx, 2
		sub	edx, edi
		shl	edx, 2
		add	edx, offset stru_5F82F8._title
		push	edx		; dest
		call	StrcopyW
		lea	ecx, [edi+edi*8]
		add	esp, 0Ch
		shl	ecx, 3
		sub	ecx, edi
		push	$CTW0("");(offset aAddress+0Dh) ;	src
		shl	ecx, 2
		push	100h		; n
		sub	ecx, edi
		shl	ecx, 2
		add	ecx, offset stru_5F82F8.status
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	edi, 7
		jge	loc_4A1217
		lea	eax, [edi+edi*8]
		push	edi
		shl	eax, 3
		mov	ecx, 11Bh
		sub	eax, edi
		shl	eax, 2
		sub	eax, edi
		lea	edi, [ebp-470h]
		lea	esi, stru_5F82F8.index[eax*4]
		mov	eax, 7
		rep movsd
		pop	edi
		sub	eax, edi
		lea	ecx, [edi+edi*8]
		shl	ecx, 3
		sub	ecx, edi
		lea	edx, [eax+eax*8]
		shl	edx, 3
		sub	edx, eax
		shl	edx, 2
		sub	edx, eax
		lea	eax, [edi+edi*8]
		shl	eax, 3
		sub	eax, edi
		shl	ecx, 2
		shl	eax, 2
		sub	ecx, edi
		sub	eax, edi
		shl	edx, 2
		shl	ecx, 2
		push	edx		; n
		shl	eax, 2
		add	ecx, (offset stru_5F82F8.index+46Ch)
		push	ecx		; src
		add	eax, offset stru_5F82F8
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		push	edi
		lea	esi, [ebp-470h]
		mov	edi, (offset stru_5F82F8.index+1EF4h)
		mov	ecx, 11Bh
		rep movsd
		pop	edi

loc_4A1217:				; CODE XREF: .text:004A118Cj
		xor	esi, esi
		mov	ebx, (offset stru_5F82F8.table+46Ch)

loc_4A121E:				; CODE XREF: .text:004A1263j
		cmp	esi, 7
		jz	short loc_4A1233
		mov	eax, [ebx]
		add	eax, 44h
		push	eax		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jnz	short loc_4A123D

loc_4A1233:				; CODE XREF: .text:004A1221j
		xor	edx, edx
		mov	[ebx-484h], edx
		jmp	short loc_4A1265
; ---------------------------------------------------------------------------

loc_4A123D:				; CODE XREF: .text:004A1231j
		lea	ecx, [esi+esi*8]
		shl	ecx, 3
		sub	ecx, esi
		shl	ecx, 2
		sub	ecx, esi
		inc	esi
		shl	ecx, 2
		add	ecx, (offset stru_5F82F8.index+46Ch)
		mov	[ebx-484h], ecx
		add	ebx, 46Ch
		cmp	esi, 8
		jle	short loc_4A121E

loc_4A1265:				; CODE XREF: .text:004A123Bj
		push	offset stru_5FA658 ; pf
		call	Updatetabs
		pop	ecx
		cmp	edi, [ebp-4]
		jg	short loc_4A127E
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4A127E
		dec	dword ptr [ebp-4]

loc_4A127E:				; CODE XREF: .text:004A1273j
					; .text:004A1279j
		mov	eax, [ebp-4]
		push	eax		; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		xor	eax, eax

loc_4A1291:				; CODE XREF: .text:004A107Bj
					; .text:004A109Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A1298:				; CODE XREF: .text:004A25E7p
					; .text:004A260Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB94h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jle	short loc_4A12B0
		cmp	ebx, 8
		jl	short loc_4A12B8

loc_4A12B0:				; CODE XREF: .text:004A12A9j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A13CD
; ---------------------------------------------------------------------------

loc_4A12B8:				; CODE XREF: .text:004A12AEj
		lea	esi, [ebx+ebx*8]
		shl	esi, 3
		sub	esi, ebx
		shl	esi, 2
		sub	esi, ebx
		mov	eax, stru_5F82F8.table[esi*4]
		test	eax, eax
		jnz	short loc_4A12D8
		or	eax, 0FFFFFFFFh
		jmp	loc_4A13CD
; ---------------------------------------------------------------------------

loc_4A12D8:				; CODE XREF: .text:004A12CEj
		add	eax, 44h
		push	eax		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jnz	short loc_4A12EE
		or	eax, 0FFFFFFFFh
		jmp	loc_4A13CD
; ---------------------------------------------------------------------------

loc_4A12EE:				; CODE XREF: .text:004A12E4j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A12FB
		xor	eax, eax
		jmp	loc_4A13CD
; ---------------------------------------------------------------------------

loc_4A12FB:				; CODE XREF: .text:004A12F2j
		push	0FFFFFFFFh	; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		lea	edi, [ebp-46Ch]
		mov	ecx, 11Bh
		lea	eax, [ebx+ebx*8]
		push	esi
		lea	esi, stru_5F82F8.index[esi*4]
		rep movsd
		shl	eax, 3
		pop	esi
		sub	eax, ebx
		shl	eax, 2
		sub	eax, ebx
		test	ebx, ebx
		lea	eax, (stru_5F6F98.sorted.block+0E9Ch)[eax*4]
		jle	short loc_4A1351

loc_4A1338:				; CODE XREF: .text:004A134Fj
		mov	esi, eax
		lea	edi, [eax+46Ch]
		mov	ecx, 11Bh
		rep movsd
		dec	ebx
		add	eax, 0FFFFFB94h
		test	ebx, ebx
		jg	short loc_4A1338

loc_4A1351:				; CODE XREF: .text:004A1336j
		lea	esi, [ebp-46Ch]
		mov	edi, offset stru_5F82F8
		mov	ecx, 11Bh
		rep movsd
		xor	ebx, ebx
		mov	esi, (offset stru_5F82F8.table+46Ch)

loc_4A136A:				; CODE XREF: .text:004A13AFj
		cmp	ebx, 7
		jz	short loc_4A137F
		mov	eax, [esi]
		add	eax, 44h
		push	eax		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jnz	short loc_4A1389

loc_4A137F:				; CODE XREF: .text:004A136Dj
		xor	edx, edx
		mov	[esi-484h], edx
		jmp	short loc_4A13B1
; ---------------------------------------------------------------------------

loc_4A1389:				; CODE XREF: .text:004A137Dj
		lea	ecx, [ebx+ebx*8]
		shl	ecx, 3
		sub	ecx, ebx
		shl	ecx, 2
		sub	ecx, ebx
		inc	ebx
		shl	ecx, 2
		add	ecx, (offset stru_5F82F8.index+46Ch)
		mov	[esi-484h], ecx
		add	esi, 46Ch
		cmp	ebx, 8
		jle	short loc_4A136A

loc_4A13B1:				; CODE XREF: .text:004A1387j
		push	offset stru_5FA658 ; pf
		call	Updatetabs
		pop	ecx
		push	0		; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		xor	eax, eax

loc_4A13CD:				; CODE XREF: .text:004A12B3j
					; .text:004A12D3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A13D4:				; CODE XREF: .text:004A5241p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFC0h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A13EC
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		jmp	short loc_4A13F4
; ---------------------------------------------------------------------------

loc_4A13EC:				; CODE XREF: .text:004A13E1j
		mov	eax, [ebp+10h]
		mov	edx, [eax]
		mov	[ebp-8], edx

loc_4A13F4:				; CODE XREF: .text:004A13EAj
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4A1403
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	short loc_4A140B
; ---------------------------------------------------------------------------

loc_4A1403:				; CODE XREF: .text:004A13F8j
		mov	ecx, [ebp+14h]
		mov	eax, [ecx]
		mov	[ebp-0Ch], eax

loc_4A140B:				; CODE XREF: .text:004A1401j
		mov	edx, [ebp+8]
		add	edx, 4Ch
		mov	[ebp-10h], edx
		mov	ecx, [ebp+0Ch]
		add	ecx, 28h
		xor	eax, eax
		mov	[ebp-4], eax

loc_4A141F:				; CODE XREF: .text:004A1672j
		mov	edx, [ebp-10h]
		mov	edx, [edx]
		test	dl, 0FFh
		jz	loc_4A14DB
		mov	al, [ecx]
		test	al, 1
		jnz	short loc_4A143A
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A143A:				; CODE XREF: .text:004A1431j
		test	al, 20h
		jnz	loc_4A1661
		mov	al, [ecx+1]
		cmp	al, 8
		jz	loc_4A1661
		cmp	al, 9
		jnz	short loc_4A1487
		cmp	dword ptr [ebp-8], 0FFFFFFFFh
		jnz	short loc_4A1471
		mov	edx, [ebp-10h]
		mov	eax, [edx+14h]
		cmp	eax, [ebp-0Ch]
		jnz	short loc_4A1469
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1469:				; CODE XREF: .text:004A1460j
		mov	[ebp-8], eax
		jmp	loc_4A1661
; ---------------------------------------------------------------------------

loc_4A1471:				; CODE XREF: .text:004A1455j
		mov	edx, [ebp-10h]
		mov	eax, [edx+14h]
		cmp	eax, [ebp-8]
		jz	loc_4A1661
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1487:				; CODE XREF: .text:004A144Fj
		cmp	al, 0Ah
		jnz	short loc_4A14C1
		cmp	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jnz	short loc_4A14AB
		mov	edx, [ebp-10h]
		mov	eax, [edx+14h]
		cmp	eax, [ebp-8]
		jnz	short loc_4A14A3
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A14A3:				; CODE XREF: .text:004A149Aj
		mov	[ebp-0Ch], eax
		jmp	loc_4A1661
; ---------------------------------------------------------------------------

loc_4A14AB:				; CODE XREF: .text:004A148Fj
		mov	edx, [ebp-10h]
		mov	eax, [edx+14h]
		cmp	eax, [ebp-0Ch]
		jz	loc_4A1661
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A14C1:				; CODE XREF: .text:004A1489j
		mov	edx, [ebp-10h]
		mov	edx, [edx+14h]
		and	eax, 0FFh
		cmp	edx, eax
		jz	loc_4A1661
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A14DB:				; CODE XREF: .text:004A1427j
		test	dh, 1
		jz	loc_4A1637
		mov	al, [ecx]
		test	al, 2
		jnz	short loc_4A14F1
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A14F1:				; CODE XREF: .text:004A14E8j
		test	al, 20h
		jnz	loc_4A1661
		test	al, 10h
		jnz	loc_4A1661
		test	al, 8
		jnz	short loc_4A1517
		mov	edx, [ebp-10h]
		mov	eax, [edx+30h]
		cmp	eax, [ecx+0Dh]
		jz	short loc_4A1526
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1517:				; CODE XREF: .text:004A1503j
		test	edx, 100000h
		jnz	short loc_4A1526
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1526:				; CODE XREF: .text:004A150Ej
					; .text:004A151Dj
		xor	eax, eax
		lea	ebx, [ebp-40h]
		lea	edx, [ecx+2]

loc_4A152E:				; CODE XREF: .text:004A153Bj
		movzx	esi, byte ptr [edx]
		mov	[ebx], esi
		inc	eax
		add	ebx, 4
		inc	edx
		cmp	eax, 0Bh
		jl	short loc_4A152E
		cmp	dword ptr [ebp-8], 0FFFFFFFFh
		jz	short loc_4A1552
		mov	eax, [ebp-8]
		mov	edx, [ebp-1Ch]
		add	[ebp+eax*4-40h], edx
		xor	eax, eax
		mov	[ebp-1Ch], eax

loc_4A1552:				; CODE XREF: .text:004A1541j
		cmp	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jz	short loc_4A1567
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-18h]
		add	[ebp+edx*4-40h], eax
		xor	edx, edx
		mov	[ebp-18h], edx

loc_4A1567:				; CODE XREF: .text:004A1556j
		xor	eax, eax
		lea	edx, [ebp-40h]
		mov	[ebp-14h], edx
		mov	edx, [ebp-10h]
		lea	ebx, [edx+24h]

loc_4A1575:				; CODE XREF: .text:004A161Bj
		mov	esi, [ebp-14h]
		xor	edx, edx
		mov	dl, [ebx]
		sub	edx, [esi]
		test	edx, edx
		jge	short loc_4A1589
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1589:				; CODE XREF: .text:004A1580j
		test	edx, edx
		jz	loc_4A1612
		cmp	edx, [ebp-1Ch]
		jnz	short loc_4A15A5
		cmp	eax, [ebp-0Ch]
		jz	short loc_4A15A5
		mov	[ebp-8], eax
		xor	edx, edx
		mov	[ebp-1Ch], edx
		jmp	short loc_4A1612
; ---------------------------------------------------------------------------

loc_4A15A5:				; CODE XREF: .text:004A1594j
					; .text:004A1599j
		cmp	edx, [ebp-18h]
		jnz	short loc_4A15B9
		cmp	eax, [ebp-8]
		jz	short loc_4A15B9
		mov	[ebp-0Ch], eax
		xor	edx, edx
		mov	[ebp-18h], edx
		jmp	short loc_4A1612
; ---------------------------------------------------------------------------

loc_4A15B9:				; CODE XREF: .text:004A15A8j
					; .text:004A15ADj
		mov	esi, [ebp-1Ch]
		test	esi, esi
		jle	short loc_4A15DD
		mov	edi, esi
		add	edi, [ebp-20h]
		cmp	edx, edi
		jg	short loc_4A15DD
		cmp	eax, [ebp-0Ch]
		jz	short loc_4A15DD
		mov	[ebp-8], eax
		sub	edx, esi
		sub	[ebp-20h], edx
		xor	edx, edx
		mov	[ebp-1Ch], edx
		jmp	short loc_4A1612
; ---------------------------------------------------------------------------

loc_4A15DD:				; CODE XREF: .text:004A15BEj
					; .text:004A15C7j ...
		mov	esi, [ebp-18h]
		test	esi, esi
		jle	short loc_4A1601
		mov	edi, esi
		add	edi, [ebp-20h]
		cmp	edx, edi
		jg	short loc_4A1601
		cmp	eax, [ebp-8]
		jz	short loc_4A1601
		mov	[ebp-0Ch], eax
		sub	edx, esi
		sub	[ebp-20h], edx
		xor	edx, edx
		mov	[ebp-18h], edx
		jmp	short loc_4A1612
; ---------------------------------------------------------------------------

loc_4A1601:				; CODE XREF: .text:004A15E2j
					; .text:004A15EBj ...
		cmp	edx, [ebp-20h]
		jg	short loc_4A160B
		sub	[ebp-20h], edx
		jmp	short loc_4A1612
; ---------------------------------------------------------------------------

loc_4A160B:				; CODE XREF: .text:004A1604j
		xor	eax, eax
		jmp	loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1612:				; CODE XREF: .text:004A158Bj
					; .text:004A15A3j ...
		add	dword ptr [ebp-14h], 4
		inc	eax
		inc	ebx
		cmp	eax, 8
		jl	loc_4A1575
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_4A1633
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4A1633
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4A1661

loc_4A1633:				; CODE XREF: .text:004A1625j
					; .text:004A162Bj
		xor	eax, eax
		jmp	short loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1637:				; CODE XREF: .text:004A14DEj
		mov	edx, [ebp-10h]
		test	byte ptr [edx+1], 6
		jz	short loc_4A1678
		mov	al, [ecx]
		test	al, 4
		jnz	short loc_4A164A
		xor	eax, eax
		jmp	short loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A164A:				; CODE XREF: .text:004A1644j
		test	al, 20h
		jnz	short loc_4A1661
		test	al, 8
		jnz	short loc_4A1661
		mov	edx, [ebp-10h]
		mov	eax, [edx+30h]
		cmp	eax, [ecx+0Dh]
		jz	short loc_4A1661
		xor	eax, eax
		jmp	short loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1661:				; CODE XREF: .text:004A143Cj
					; .text:004A1447j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-10h], 460h
		add	ecx, 11h
		cmp	dword ptr [ebp-4], 4
		jl	loc_4A141F

loc_4A1678:				; CODE XREF: .text:004A163Ej
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	cl, [edx+27h]
		cmp	ecx, [ebp-4]
		jz	short loc_4A1689
		xor	eax, eax
		jmp	short loc_4A16AA
; ---------------------------------------------------------------------------

loc_4A1689:				; CODE XREF: .text:004A1683j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4A1697
		mov	edx, [ebp+10h]
		mov	ecx, [ebp-8]
		mov	[edx], ecx

loc_4A1697:				; CODE XREF: .text:004A168Dj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4A16A5
		mov	eax, [ebp+14h]
		mov	edx, [ebp-0Ch]
		mov	[eax], edx

loc_4A16A5:				; CODE XREF: .text:004A169Bj
		mov	eax, 1

loc_4A16AA:				; CODE XREF: .text:004A1435j
					; .text:004A1464j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
