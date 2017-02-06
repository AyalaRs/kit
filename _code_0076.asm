.code

loc_492648:				; CODE XREF: .text:00496BE8p
					; .text:00496D71p
		push	ebp
		mov	ebp, esp
		cmp	off_54A450, 0
		jnz	loc_492711
		mov	eax, offset stru_5475D4
		jmp	loc_492707
; ---------------------------------------------------------------------------

loc_492662:				; CODE XREF: .text:0049270Bj
		cmp	edx, 6		; switch 7 cases
		ja	loc_492704	; jumptable 0049266B default case
		jmp	ds:off_492672[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_492672	dd offset loc_492704	; DATA XREF: .text:0049266Br
		dd offset loc_49268E	; jump table for switch	statement
		dd offset loc_4926A2
		dd offset loc_4926B6
		dd offset loc_4926CA
		dd offset loc_4926DE
		dd offset loc_4926F2
; ---------------------------------------------------------------------------

loc_49268E:				; CODE XREF: .text:0049266Bj
					; DATA XREF: .text:off_492672o
		mov	edx, [eax+8]	; jumptable 0049266B case 1
		cmp	edx, off_54A450
		jl	short loc_492704 ; jumptable 0049266B default case
		inc	edx
		mov	off_54A450, edx
		jmp	short loc_492704 ; jumptable 0049266B default case
; ---------------------------------------------------------------------------

loc_4926A2:				; CODE XREF: .text:0049266Bj
					; DATA XREF: .text:off_492672o
		mov	edx, [eax+8]	; jumptable 0049266B case 2
		cmp	edx, off_54A454
		jl	short loc_492704 ; jumptable 0049266B default case
		inc	edx
		mov	off_54A454, edx
		jmp	short loc_492704 ; jumptable 0049266B default case
; ---------------------------------------------------------------------------

loc_4926B6:				; CODE XREF: .text:0049266Bj
					; DATA XREF: .text:off_492672o
		mov	edx, [eax+8]	; jumptable 0049266B case 3
		cmp	edx, off_54A458
		jl	short loc_492704 ; jumptable 0049266B default case
		inc	edx
		mov	off_54A458, edx
		jmp	short loc_492704 ; jumptable 0049266B default case
; ---------------------------------------------------------------------------

loc_4926CA:				; CODE XREF: .text:0049266Bj
					; DATA XREF: .text:off_492672o
		mov	edx, [eax+8]	; jumptable 0049266B case 4
		cmp	edx, off_54A45C
		jl	short loc_492704 ; jumptable 0049266B default case
		inc	edx
		mov	off_54A45C, edx
		jmp	short loc_492704 ; jumptable 0049266B default case
; ---------------------------------------------------------------------------

loc_4926DE:				; CODE XREF: .text:0049266Bj
					; DATA XREF: .text:off_492672o
		mov	edx, [eax+8]	; jumptable 0049266B case 5
		cmp	edx, off_54A460
		jl	short loc_492704 ; jumptable 0049266B default case
		inc	edx
		mov	off_54A460, edx
		jmp	short loc_492704 ; jumptable 0049266B default case
; ---------------------------------------------------------------------------

loc_4926F2:				; CODE XREF: .text:0049266Bj
					; DATA XREF: .text:off_492672o
		mov	edx, [eax+8]	; jumptable 0049266B case 6
		cmp	edx, off_54A464
		jl	short loc_492704 ; jumptable 0049266B default case
		inc	edx
		mov	off_54A464, edx

loc_492704:				; CODE XREF: .text:00492665j
					; .text:0049266Bj ...
		add	eax, 24h	; jumptable 0049266B default case

loc_492707:				; CODE XREF: .text:0049265Dj
		mov	edx, [eax]
		test	edx, edx
		jnz	loc_492662

loc_492711:				; CODE XREF: .text:00492652j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_492714:				; CODE XREF: .text:00492A54p
					; .text:0049443Bp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	ecx, edx
		and	ecx, 0F0h
		and	edx, 0Fh
		mov	eax, offset stru_5475D4
		jmp	loc_4927CC
; ---------------------------------------------------------------------------

loc_492735:				; CODE XREF: .text:004927CFj
		cmp	dword ptr [eax], 2
		jnz	short loc_492742
		test	edx, edx
		jnz	loc_4927C9

loc_492742:				; CODE XREF: .text:00492738j
		cmp	dword ptr [eax], 3
		jnz	short loc_49274C
		cmp	edx, 1
		jnz	short loc_4927C9

loc_49274C:				; CODE XREF: .text:00492745j
		cmp	dword ptr [eax], 4
		jnz	short loc_492756
		cmp	edx, 2
		jnz	short loc_4927C9

loc_492756:				; CODE XREF: .text:0049274Fj
		cmp	dword ptr [eax], 5
		jnz	short loc_492760
		cmp	edx, 3
		jnz	short loc_4927C9

loc_492760:				; CODE XREF: .text:00492759j
		cmp	dword ptr [eax], 6
		jnz	short loc_49277B
		cmp	dword_5CBBC4, 0
		jz	short loc_4927C9
		cmp	dword_5CBBC8, 0
		jz	short loc_4927C9
		test	ecx, ecx
		jnz	short loc_4927C9

loc_49277B:				; CODE XREF: .text:00492763j
		cmp	dword ptr [eax], 7
		jnz	short loc_492797
		cmp	dword_5CBBC4, 0
		jz	short loc_4927C9
		cmp	dword_5CBBC8, 0
		jz	short loc_4927C9
		cmp	ecx, 10h
		jnz	short loc_4927C9

loc_492797:				; CODE XREF: .text:0049277Ej
		cmp	dword ptr [eax], 8
		jnz	short loc_4927B3
		cmp	dword_5CBBC4, 0
		jz	short loc_4927C9
		cmp	dword_5CBBC8, 0
		jz	short loc_4927C9
		cmp	ecx, 20h
		jnz	short loc_4927C9

loc_4927B3:				; CODE XREF: .text:0049279Aj
		mov	esi, [eax+4]
		mov	edi, [ebp+8]
		and	edi, 0F1FFFFh
		and	esi, 0F1FFFFh
		cmp	esi, edi
		jz	short loc_4927D5

loc_4927C9:				; CODE XREF: .text:0049273Cj
					; .text:0049274Aj ...
		add	eax, 24h

loc_4927CC:				; CODE XREF: .text:00492730j
		cmp	dword ptr [eax], 0
		jnz	loc_492735

loc_4927D5:				; CODE XREF: .text:004927C7j
		cmp	dword ptr [eax], 1
		jnz	short loc_4927E2
		mov	ecx, [eax+8]
		jmp	loc_492869
; ---------------------------------------------------------------------------

loc_4927E2:				; CODE XREF: .text:004927D8j
		mov	ecx, [eax]
		cmp	ecx, 2
		jz	short loc_4927F8
		cmp	ecx, 3
		jz	short loc_4927F8
		cmp	ecx, 4
		jz	short loc_4927F8
		cmp	ecx, 5
		jnz	short loc_492803

loc_4927F8:				; CODE XREF: .text:004927E7j
					; .text:004927ECj ...
		mov	ecx, [eax+8]
		add	ecx, off_54A450
		jmp	short loc_492869
; ---------------------------------------------------------------------------

loc_492803:				; CODE XREF: .text:004927F6j
		mov	ecx, [eax]
		cmp	ecx, 6
		jz	short loc_492814
		cmp	ecx, 7
		jz	short loc_492814
		cmp	ecx, 8
		jnz	short loc_49285C

loc_492814:				; CODE XREF: .text:00492808j
					; .text:0049280Dj
		mov	ecx, [eax+8]
		add	ecx, off_54A450
		test	edx, edx
		jnz	short loc_49282C
		mov	edx, off_54A454
		inc	edx
		add	ecx, edx
		jmp	short loc_492869
; ---------------------------------------------------------------------------

loc_49282C:				; CODE XREF: .text:0049281Fj
		cmp	edx, 1
		jnz	short loc_49283C
		mov	edx, off_54A458
		inc	edx
		add	ecx, edx
		jmp	short loc_492869
; ---------------------------------------------------------------------------

loc_49283C:				; CODE XREF: .text:0049282Fj
		cmp	edx, 2
		jnz	short loc_49284C
		mov	edx, off_54A45C
		inc	edx
		add	ecx, edx
		jmp	short loc_492869
; ---------------------------------------------------------------------------

loc_49284C:				; CODE XREF: .text:0049283Fj
		cmp	edx, 3
		jnz	short loc_492869
		mov	edx, off_54A460
		inc	edx
		add	ecx, edx
		jmp	short loc_492869
; ---------------------------------------------------------------------------

loc_49285C:				; CODE XREF: .text:00492812j
		test	ebx, ebx
		jz	short loc_492864
		xor	eax, eax
		mov	[ebx], eax

loc_492864:				; CODE XREF: .text:0049285Ej
		or	eax, 0FFFFFFFFh
		jmp	short loc_492871
; ---------------------------------------------------------------------------

loc_492869:				; CODE XREF: .text:004927DDj
					; .text:00492801j ...
		test	ebx, ebx
		jz	short loc_49286F
		mov	[ebx], eax

loc_49286F:				; CODE XREF: .text:0049286Bj
		mov	eax, ecx

loc_492871:				; CODE XREF: .text:00492867j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_492878:				; CODE XREF: .text:00496A17p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+10h]
		mov	esi, [ebp+8]
		mov	ebx, edx
		and	ebx, 0F0h
		and	edx, 0Fh
		mov	eax, offset stru_5475D4
		jmp	loc_4929DD
; ---------------------------------------------------------------------------

loc_492899:				; CODE XREF: .text:004929E0j
		cmp	dword ptr [eax], 2
		jnz	short loc_4928A6
		test	edx, edx
		jnz	loc_4929DA

loc_4928A6:				; CODE XREF: .text:0049289Cj
		cmp	dword ptr [eax], 3
		jnz	short loc_4928B4
		cmp	edx, 1
		jnz	loc_4929DA

loc_4928B4:				; CODE XREF: .text:004928A9j
		cmp	dword ptr [eax], 4
		jnz	short loc_4928C2
		cmp	edx, 2
		jnz	loc_4929DA

loc_4928C2:				; CODE XREF: .text:004928B7j
		cmp	dword ptr [eax], 5
		jnz	short loc_4928D0
		cmp	edx, 3
		jnz	loc_4929DA

loc_4928D0:				; CODE XREF: .text:004928C5j
		cmp	dword ptr [eax], 6
		jnz	short loc_4928F7
		cmp	dword_5CBBC4, 0
		jz	loc_4929DA
		cmp	dword_5CBBC8, 0
		jz	loc_4929DA
		test	ebx, ebx
		jnz	loc_4929DA

loc_4928F7:				; CODE XREF: .text:004928D3j
		cmp	dword ptr [eax], 7
		jnz	short loc_49291F
		cmp	dword_5CBBC4, 0
		jz	loc_4929DA
		cmp	dword_5CBBC8, 0
		jz	loc_4929DA
		cmp	ebx, 10h
		jnz	loc_4929DA

loc_49291F:				; CODE XREF: .text:004928FAj
		cmp	dword ptr [eax], 8
		jnz	short loc_492947
		cmp	dword_5CBBC4, 0
		jz	loc_4929DA
		cmp	dword_5CBBC8, 0
		jz	loc_4929DA
		cmp	ebx, 20h
		jnz	loc_4929DA

loc_492947:				; CODE XREF: .text:00492922j
		cmp	dword ptr [eax], 1
		jnz	short loc_492951
		mov	ecx, [eax+8]
		jmp	short loc_4929C9
; ---------------------------------------------------------------------------

loc_492951:				; CODE XREF: .text:0049294Aj
		mov	ecx, [eax]
		cmp	ecx, 2
		jz	short loc_492967
		cmp	ecx, 3
		jz	short loc_492967
		cmp	ecx, 4
		jz	short loc_492967
		cmp	ecx, 5
		jnz	short loc_492972

loc_492967:				; CODE XREF: .text:00492956j
					; .text:0049295Bj ...
		mov	ecx, [eax+8]
		add	ecx, off_54A450
		jmp	short loc_4929C9
; ---------------------------------------------------------------------------

loc_492972:				; CODE XREF: .text:00492965j
		mov	ecx, [eax]
		cmp	ecx, 6
		jz	short loc_492983
		cmp	ecx, 7
		jz	short loc_492983
		cmp	ecx, 8
		jnz	short loc_4929DA

loc_492983:				; CODE XREF: .text:00492977j
					; .text:0049297Cj
		mov	ecx, [eax+8]
		add	ecx, off_54A450
		test	edx, edx
		jnz	short loc_49299B
		mov	edi, off_54A454
		inc	edi
		add	ecx, edi
		jmp	short loc_4929C9
; ---------------------------------------------------------------------------

loc_49299B:				; CODE XREF: .text:0049298Ej
		cmp	edx, 1
		jnz	short loc_4929AB
		mov	edi, off_54A458
		inc	edi
		add	ecx, edi
		jmp	short loc_4929C9
; ---------------------------------------------------------------------------

loc_4929AB:				; CODE XREF: .text:0049299Ej
		cmp	edx, 2
		jnz	short loc_4929BB
		mov	edi, off_54A45C
		inc	edi
		add	ecx, edi
		jmp	short loc_4929C9
; ---------------------------------------------------------------------------

loc_4929BB:				; CODE XREF: .text:004929AEj
		cmp	edx, 3
		jnz	short loc_4929C9
		mov	edi, off_54A460
		inc	edi
		add	ecx, edi

loc_4929C9:				; CODE XREF: .text:0049294Fj
					; .text:00492970j ...
		cmp	ecx, [ebp+0Ch]
		jnz	short loc_4929DA
		cmp	esi, [eax+0Ch]
		jl	short loc_4929DA
		cmp	esi, [eax+10h]
		jg	short loc_4929DA
		jmp	short loc_4929E8
; ---------------------------------------------------------------------------

loc_4929DA:				; CODE XREF: .text:004928A0j
					; .text:004928AEj ...
		add	eax, 24h

loc_4929DD:				; CODE XREF: .text:00492894j
		cmp	dword ptr [eax], 0
		jnz	loc_492899
		xor	eax, eax

loc_4929E8:				; CODE XREF: .text:004929D8j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4929F0:				; DATA XREF: .data:stru_54A600o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		xor	edx, edx
		mov	dword_5EC0D4, eax
		push	ebx
		xor	ecx, ecx
		push	esi
		mov	dword_5EC0D8, edx
		xor	eax, eax
		mov	pthr, ecx
		push	edi
		xor	edx, edx
		mov	ebx, [ebp+8]
		mov	dword_5EC0E0, eax
		mov	dword_5EC2B8, edx
		test	ebx, ebx
		jnz	short loc_492A2A
		xor	eax, eax
		jmp	loc_492B8C
; ---------------------------------------------------------------------------

loc_492A2A:				; CODE XREF: .text:00492A21j
		mov	esi, [ebx+220h]
		mov	dword_5EC0D4, esi
		test	esi, esi
		jnz	short loc_492A41
		xor	eax, eax
		jmp	loc_492B8C
; ---------------------------------------------------------------------------

loc_492A41:				; CODE XREF: .text:00492A38j
		mov	edi, [esi+0Ch]
		mov	dword_5EC0E0, edi
		push	offset dword_5EC0D8
		mov	eax, [esi+8]
		push	eax
		push	edi
		call	loc_492714
		add	esp, 0Ch
		mov	row, eax
		cmp	row, 0
		jge	short loc_492A72
		xor	edx, edx
		mov	dword_5EC0E0, edx

loc_492A72:				; CODE XREF: .text:00492A68j
		mov	ecx, dword_5EC0D4
		mov	eax, [ecx]
		push	eax		; ordinal
		call	Findthreadbyordinal
		pop	ecx
		mov	pthr, eax
		mov	eax, pthr
		test	eax, eax
		jz	short loc_492A98
		cmp	dword ptr [eax+4ECh], 0
		jnz	short loc_492AA2

loc_492A98:				; CODE XREF: .text:00492A8Dj
		xor	edx, edx
		mov	dword_5EC0E0, edx
		jmp	short loc_492B03
; ---------------------------------------------------------------------------

loc_492AA2:				; CODE XREF: .text:00492A96j
		mov	ecx, dword_5EC0E0
		lea	esi, [eax+328h]
		and	ecx, 0FFh
		mov	edi, offset preg
		add	ecx, [eax+3A8h]
		and	ecx, 7
		mov	dword_5EC0EC, ecx
		mov	ecx, 71h
		rep movsd
		mov	eax, [ebx+268h]
		test	eax, eax
		jnz	short loc_492AE5
		mov	dword_5EC2B8, 1
		jmp	short loc_492B03
; ---------------------------------------------------------------------------

loc_492AE5:				; CODE XREF: .text:00492AD7j
		push	0		; cmd
		push	offset preg	; preg
		push	eax		; nback
		call	Getruntrace
		add	esp, 0Ch
		test	eax, eax
		jl	short loc_492B03
		mov	dword_5EC2B8, 1

loc_492B03:				; CODE XREF: .text:00492AA0j
					; .text:00492AE3j ...
		mov	eax, dword_5EC0E0
		and	eax, 1FF00h
		mov	dword_5EC0E8, eax
		cmp	dword_5EC2B8, 0
		jnz	short loc_492B25
		xor	edx, edx
		mov	dumpaddr, edx
		jmp	short loc_492B87
; ---------------------------------------------------------------------------

loc_492B25:				; CODE XREF: .text:00492B19j
		cmp	eax, 10300h
		jnz	short loc_492B43
		mov	ecx, dword_5EC0D8
		mov	eax, [ecx+14h]
		mov	edx, dword ptr preg.status[eax]
		mov	dumpaddr, edx
		jmp	short loc_492B87
; ---------------------------------------------------------------------------

loc_492B43:				; CODE XREF: .text:00492B2Aj
		cmp	eax, 10500h
		jnz	short loc_492B58
		mov	ecx, preg._ip
		mov	dumpaddr, ecx
		jmp	short loc_492B87
; ---------------------------------------------------------------------------

loc_492B58:				; CODE XREF: .text:00492B48j
		cmp	dword_5EC0E8, 11700h
		jnz	short loc_492B7F
		mov	eax, preg.ferrseg
		cmp	eax, preg.s+4
		jnz	short loc_492B7F
		mov	edx, preg.feroffs
		mov	dumpaddr, edx
		jmp	short loc_492B87
; ---------------------------------------------------------------------------

loc_492B7F:				; CODE XREF: .text:00492B62j
					; .text:00492B6Fj
		xor	ecx, ecx
		mov	dumpaddr, ecx

loc_492B87:				; CODE XREF: .text:00492B23j
					; .text:00492B41j ...
		mov	eax, 1

loc_492B8C:				; CODE XREF: .text:00492A25j
					; .text:00492A3Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_492B94:				; DATA XREF: .data:stru_54A600o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		cmp	run.status, 12h
		jnz	short loc_492BB3
		test	eax, eax
		jz	short loc_492BB7
		cmp	dword ptr [eax+268h], 0
		jle	short loc_492BB7

loc_492BB3:				; CODE XREF: .text:00492BA4j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492BB7:				; CODE XREF: .text:00492BA8j
					; .text:00492BB1j
		test	edx, edx
		jnz	short loc_492BCE
		cmp	dword_5EC0E8, 10300h
		jnz	short loc_492BFE
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492BCE:				; CODE XREF: .text:00492BB9j
		dec	edx
		jnz	short loc_492BFE
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, dword_5EC0D8
		mov	eax, [ecx+14h]
		mov	edx, pthr
		mov	ecx, [ebp+10h]
		add	[edx+eax+328h],	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492BFE:				; CODE XREF: .text:00492BC5j
					; .text:00492BCFj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_492C04:				; DATA XREF: .data:stru_54A600o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		cmp	run.status, 12h
		jnz	short loc_492C23
		test	eax, eax
		jz	short loc_492C27
		cmp	dword ptr [eax+268h], 0
		jle	short loc_492C27

loc_492C23:				; CODE XREF: .text:00492C14j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492C27:				; CODE XREF: .text:00492C18j
					; .text:00492C21j
		test	edx, edx
		jnz	short loc_492C68
		cmp	dword_5EC0E8, 10F00h
		jnz	loc_492CBF
		push	0Ah		; n
		mov	edx, dword_5EC0EC
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	edx, pthr
		add	edx, 3ACh
		push	edx		; data
		call	Iszero
		add	esp, 8
		test	eax, eax
		jnz	short loc_492CBF
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492C68:				; CODE XREF: .text:00492C29j
		dec	edx
		jnz	short loc_492CBF
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		push	0Ah		; n
		push	0		; c
		mov	ecx, dword_5EC0EC
		add	ecx, ecx
		lea	ecx, [ecx+ecx*4]
		add	ecx, pthr
		add	ecx, 3ACh
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword_5BE240, 0
		jz	short loc_492CB8
		mov	eax, pthr
		mov	edx, dword_5EC0EC
		mov	byte ptr [eax+edx+3FCh], 1

loc_492CB8:				; CODE XREF: .text:00492CA3j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492CBF:				; CODE XREF: .text:00492C35j
					; .text:00492C5Fj ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_492CC4:				; DATA XREF: .data:stru_54A600o
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	run.status, 12h
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		jnz	short loc_492CE7
		test	eax, eax
		jz	short loc_492CEC
		cmp	dword ptr [eax+268h], 0
		jle	short loc_492CEC

loc_492CE7:				; CODE XREF: .text:00492CD8j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492CEC:				; CODE XREF: .text:00492CDCj
					; .text:00492CE5j
		test	edx, edx
		jnz	short loc_492D1B
		cmp	dword_5EC0E8, 10300h
		jnz	short loc_492D49
		mov	edx, dword_5EC0D8
		mov	ecx, [edx+14h]
		mov	eax, pthr
		cmp	ebx, [eax+ecx+328h]
		jz	short loc_492D49
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492D1B:				; CODE XREF: .text:00492CEEj
		dec	edx
		jnz	short loc_492D49
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, dword_5EC0D8
		mov	eax, [ecx+14h]
		mov	edx, pthr
		mov	[edx+eax+328h],	ebx
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492D49:				; CODE XREF: .text:00492CFAj
					; .text:00492D11j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_492D50
loc_492D50:				; DATA XREF: .text:00496B43o
					; .data:stru_54A600o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		cmp	run.status, 12h
		jnz	short loc_492D6F
		test	eax, eax
		jz	short loc_492D73
		cmp	dword ptr [eax+268h], 0
		jle	short loc_492D73

loc_492D6F:				; CODE XREF: .text:00492D60j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492D73:				; CODE XREF: .text:00492D64j
					; .text:00492D6Dj
		test	edx, edx
		jnz	short loc_492D9F
		mov	eax, dword_5EC0E8
		cmp	eax, 10700h
		jz	short loc_492D98
		cmp	eax, 11200h
		jz	short loc_492D98
		cmp	eax, 11600h
		jz	short loc_492D98
		cmp	eax, 12400h
		jnz	short loc_492DCE

loc_492D98:				; CODE XREF: .text:00492D81j
					; .text:00492D88j ...
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492D9F:				; CODE XREF: .text:00492D75j
		dec	edx
		jnz	short loc_492DCE
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, dword_5EC0D8
		mov	edx, [eax+14h]
		mov	ecx, pthr
		mov	eax, [eax+1Ch]
		xor	[ecx+edx+328h],	eax
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_492DCE:				; CODE XREF: .text:00492D96j
					; .text:00492DA0j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_492DD4
loc_492DD4:				; DATA XREF: .text:00496B5Ao
					; .data:stru_54A600o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDD0h
		cmp	run.status, 12h
		push	ebx
		push	esi
		push	edi
		mov	edi, offset dword_5EC0E8
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+8]
		jnz	short loc_492E01
		test	ebx, ebx
		jz	short loc_492E08
		cmp	dword ptr [ebx+268h], 0
		jle	short loc_492E08

loc_492E01:				; CODE XREF: .text:00492DF2j
		xor	eax, eax
		jmp	loc_4938EC
; ---------------------------------------------------------------------------

loc_492E08:				; CODE XREF: .text:00492DF6j
					; .text:00492DFFj
		test	eax, eax
		jnz	loc_492EDB
		cmp	pthr, 0
		jz	short loc_492E46
		cmp	dword_5EC0D8, 0
		jz	short loc_492E46
		mov	edx, dword_5EC0D8
		cmp	dword ptr [edx+1Ch], 0
		jnz	short loc_492E46
		cmp	dword ptr [edi], 10500h
		jz	short loc_492E46
		cmp	dword ptr [edi], 11700h
		jz	short loc_492E46
		cmp	dword ptr [edi], 10E00h
		jnz	short loc_492E4D

loc_492E46:				; CODE XREF: .text:00492E17j
					; .text:00492E20j ...
		xor	eax, eax
		jmp	loc_4938EC
; ---------------------------------------------------------------------------

loc_492E4D:				; CODE XREF: .text:00492E44j
		cmp	dword ptr [edi], 10C00h
		jnz	short loc_492E6B
		mov	edx, pthr
		test	byte ptr [edx+328h], 10h
		jnz	short loc_492E6B
		xor	eax, eax
		jmp	loc_4938EC
; ---------------------------------------------------------------------------

loc_492E6B:				; CODE XREF: .text:00492E53j
					; .text:00492E62j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_492ED1
		mov	eax, [edi]
		cmp	eax, 10F00h
		jz	short loc_492EB2
		cmp	eax, 11A00h
		jz	short loc_492EB2
		cmp	eax, 11B00h
		jz	short loc_492EB2
		cmp	eax, 11D00h
		jz	short loc_492EB2
		cmp	eax, 11E00h
		jz	short loc_492EB2
		cmp	eax, 11F00h
		jz	short loc_492EB2
		cmp	eax, 12000h
		jz	short loc_492EB2
		cmp	eax, 12100h
		jz	short loc_492EB2
		cmp	eax, 12200h
		jnz	short loc_492EC7

loc_492EB2:				; CODE XREF: .text:00492E78j
					; .text:00492E7Fj ...
		mov	edx, [ebp+10h]
		push	edx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_492EC7
		xor	eax, eax
		jmp	loc_4938EC
; ---------------------------------------------------------------------------

loc_492EC7:				; CODE XREF: .text:00492EB0j
					; .text:00492EBEj
		mov	eax, 5
		jmp	loc_4938EC
; ---------------------------------------------------------------------------

loc_492ED1:				; CODE XREF: .text:00492E6Fj
		mov	eax, 1
		jmp	loc_4938EC
; ---------------------------------------------------------------------------

loc_492EDB:				; CODE XREF: .text:00492E0Aj
		dec	eax
		jnz	loc_4938EA
		lea	edx, [ebp-20h]
		push	edx		; coord
		push	0		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_492F00
		or	ecx, 0FFFFFFFFh
		mov	[ebp-8], ecx
		mov	[ebp-4], ecx
		jmp	short loc_492F0C
; ---------------------------------------------------------------------------

loc_492F00:				; CODE XREF: .text:00492EF3j
		mov	eax, [ebp-20h]
		mov	[ebp-4], eax
		mov	edx, [ebp-1Ch]
		mov	[ebp-8], edx

loc_492F0C:				; CODE XREF: .text:00492EFEj
		mov	esi, dword_5EC0E0
		and	esi, 0FFh
		cmp	dword ptr [edi], 10300h
		jnz	short loc_492F81
		mov	eax, pthr
		mov	edx, [eax+esi*4+334h]
		mov	[ebp-0Ch], edx
		push	0		; mode
		mov	ecx, [ebx+234h]
		push	ecx		; fi
		mov	eax, [ebp-8]
		push	eax		; y
		mov	edx, [ebp-4]
		push	edx		; x
		mov	ecx, [ebp+10h]
		push	ecx		; letter
		lea	eax, [ebp-0Ch]
		push	eax		; data
		push	esi		; reg
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Getregister
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, pthr
		mov	edx, [ebp-0Ch]
		mov	[eax+esi*4+334h], edx
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_492F81:				; CODE XREF: .text:00492F1Ej
		cmp	dword ptr [edi], 10800h
		jnz	short loc_492FF5
		mov	ecx, pthr
		mov	eax, [ecx+354h]
		mov	[ebp-0Ch], eax
		push	20h		; mode
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		lea	ecx, [ebp-0Ch]
		mov	eax, [ebp-4]
		push	eax		; x
		mov	edx, [ebp+10h]
		push	edx		; letter
		push	ecx		; data
		push	offset aModifyFlags ; "Modify flags"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebx+22Ch]
		push	eax		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, pthr
		mov	eax, [ebp-0Ch]
		mov	[ecx+354h], eax
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_492FF5:				; CODE XREF: .text:00492F87j
		cmp	dword ptr [edi], 10A00h
		jnz	loc_4930CC
		mov	edx, pthr
		mov	ecx, [edx+esi*4+358h]
		mov	[ebp-0Ch], ecx
		mov	eax, segname[esi*4]
		push	eax
		push	offset aModifyS_1 ; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-220h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	22h		; mode
		mov	ecx, [ebx+234h]
		push	ecx		; fi
		mov	eax, [ebp-8]
		push	eax		; y
		lea	eax, [ebp-0Ch]
		mov	edx, [ebp-4]
		push	edx		; x
		lea	edx, [ebp-220h]
		mov	ecx, [ebp+10h]
		push	ecx		; letter
		push	eax		; data
		push	edx		; _title
		mov	ecx, [ebx+22Ch]
		push	ecx		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	eax, pthr
		push	eax		; pthr
		call	Registermodifiedbyuser
		mov	eax, pthr
		mov	edx, [ebp-0Ch]
		pop	ecx
		and	edx, 0FFFFh
		mov	[eax+esi*4+358h], edx
		mov	edx, esi
		shl	edx, 2
		mov	ecx, eax
		add	ecx, esi
		add	edx, pthr
		add	ecx, 3A0h
		push	ecx		; int
		mov	ecx, edx
		add	ecx, 388h
		add	edx, 370h
		push	ecx		; int
		push	edx		; int
		mov	edx, [ebp-0Ch]
		and	edx, 0FFFFh
		push	edx		; dwSelector
		mov	eax, [eax]
		push	eax		; int
		call	_Getselectorinfo
		add	esp, 14h
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_4930CC:				; CODE XREF: .text:00492FFBj
		cmp	dword ptr [edi], 10C00h
		jnz	short loc_49314A
		mov	ecx, pthr
		mov	eax, [ecx+434h]
		mov	[ebp-0Ch], eax
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		lea	ecx, [ebp-0Ch]
		mov	eax, [ebp-4]
		push	eax		; x
		mov	edx, [ebp+10h]
		push	edx		; letter
		push	ecx		; data
		push	offset aChangeThreadSL ; "Change thread's last error"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebx+22Ch]
		push	eax		; hparent
		call	Getlasterrorcode
		add	esp, 1Ch
		test	eax, eax
		jle	loc_4938E3
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, pthr
		or	dword ptr [ecx+328h], 20h
		mov	eax, pthr
		mov	edx, [ebp-0Ch]
		mov	[eax+434h], edx
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_49314A:				; CODE XREF: .text:004930D2j
		cmp	dword ptr [edi], 10F00h
		jnz	loc_493278
		mov	ecx, dword_5EC0EC
		lea	ecx, [ecx+ecx*4]
		mov	eax, pthr
		mov	edx, [eax+ecx*2+3ACh]
		mov	[ebp-18h], edx
		mov	edx, [eax+ecx*2+3B0h]
		mov	[ebp-14h], edx
		mov	dx, [eax+ecx*2+3B4h]
		mov	[ebp-10h], dx
		mov	ecx, [ebx+234h]
		push	ecx		; fi
		mov	eax, [ebp-8]
		push	eax		; y
		mov	edx, [ebp-4]
		push	edx		; x
		mov	ecx, [ebp+10h]
		push	ecx		; letter
		lea	eax, [ebp-18h]
		push	eax		; data
		push	esi		; reg
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Getfpureg
		add	esp, 1Ch
		test	eax, eax
		jle	loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, dword_5EC0EC
		lea	eax, [eax+eax*4]
		mov	edx, pthr
		mov	ecx, [ebp-18h]
		mov	[edx+eax*2+3ACh], ecx
		mov	ecx, [ebp-14h]
		mov	[edx+eax*2+3B0h], ecx
		mov	cx, [ebp-10h]
		mov	[edx+eax*2+3B4h], cx
		cmp	dword_5BE240, 0
		jz	loc_4938E3
		lea	eax, [ebp-18h]
		cmp	dword ptr [eax], 0
		jnz	short loc_49322C
		cmp	word ptr [eax+4], 0
		jnz	short loc_49322C
		test	dword ptr [eax+6], 7FFFFFFFh
		jnz	short loc_49322C
		mov	edx, pthr
		mov	ecx, dword_5EC0EC
		mov	byte ptr [edx+ecx+3FCh], 1
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_49322C:				; CODE XREF: .text:00493201j
					; .text:00493208j ...
		mov	ecx, [eax+6]
		mov	edx, ecx
		and	edx, 7FFF0000h
		test	edx, edx
		jz	short loc_493260
		cmp	edx, 7FFF0000h
		jz	short loc_493260
		test	ch, 80h
		jz	short loc_493260
		mov	eax, pthr
		mov	edx, dword_5EC0EC
		mov	byte ptr [eax+edx+3FCh], 0
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_493260:				; CODE XREF: .text:00493239j
					; .text:00493241j ...
		mov	eax, pthr
		mov	ecx, dword_5EC0EC
		mov	byte ptr [eax+ecx+3FCh], 2
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_493278:				; CODE XREF: .text:00493150j
		cmp	dword ptr [edi], 11100h
		jnz	short loc_4932F0
		mov	eax, pthr
		mov	edx, [eax+404h]
		mov	[ebp-0Ch], edx
		push	22h		; mode
		mov	ecx, [ebx+234h]
		push	ecx		; fi
		mov	eax, [ebp-8]
		push	eax		; y
		lea	eax, [ebp-0Ch]
		mov	edx, [ebp-4]
		push	edx		; x
		mov	ecx, [ebp+10h]
		push	ecx		; letter
		push	eax		; data
		push	offset aModifyFpuSta_1 ; "Modify FPU status register"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		mov	edx, pthr
		mov	eax, [ebp-0Ch]
		and	eax, 0FFFFh
		pop	ecx
		mov	[edx+404h], eax
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_4932F0:				; CODE XREF: .text:0049327Ej
		cmp	dword ptr [edi], 11400h
		jnz	short loc_493369
		mov	ecx, pthr
		mov	eax, [ecx+408h]
		mov	[ebp-0Ch], eax
		push	22h		; mode
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		lea	ecx, [ebp-0Ch]
		mov	eax, [ebp-4]
		push	eax		; x
		mov	edx, [ebp+10h]
		push	edx		; letter
		push	ecx		; data
		push	offset aModifyFpuCon_0 ; "Modify FPU control register"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebx+22Ch]
		push	eax		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, pthr
		mov	ecx, [ebp-0Ch]
		and	ecx, 0FFFFh
		mov	[eax+408h], ecx
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_493369:				; CODE XREF: .text:004932F6j
		cmp	dword ptr [edi], 11900h
		jnz	loc_493426
		push	8		; n
		mov	edi, esi
		add	edi, edi
		lea	edi, [edi+edi*4]
		mov	eax, edi
		add	eax, pthr
		add	eax, 3ACh
		push	eax		; src
		lea	edx, [ebp-230h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, mmxname[esi*4]
		push	ecx
		push	offset aModifyS_1 ; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-220h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		lea	ecx, [ebp-230h]
		mov	eax, [ebp-4]
		push	eax		; x
		lea	eax, [ebp-220h]
		mov	edx, [ebp+10h]
		push	edx		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Getmmx
		add	esp, 1Ch
		test	eax, eax
		jle	loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		lea	eax, [ebp-230h]
		add	edi, pthr
		push	8		; n
		push	eax		; src
		add	edi, 3ACh
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_493426:				; CODE XREF: .text:0049336Fj
		cmp	dword ptr [edi], 11A00h
		jnz	loc_4934E8
		push	8		; n
		mov	edi, esi
		add	edi, edi
		lea	edi, [edi+edi*4]
		mov	eax, edi
		add	eax, pthr
		add	eax, 3ACh
		push	eax		; src
		lea	edx, [ebp-230h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, mmxname[esi*4]
		push	ecx
		push	offset aModify3dnowR_0 ; "Modify 3DNow!	register %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-220h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	40000h		; mode
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		lea	ecx, [ebp-230h]
		mov	eax, [ebp-4]
		push	eax		; x
		lea	eax, [ebp-220h]
		mov	edx, [ebp+10h]
		push	edx		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Get3dnow
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		lea	eax, [ebp-230h]
		add	edi, pthr
		push	8		; n
		push	eax		; src
		add	edi, 3ACh
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_4934E8:				; CODE XREF: .text:0049342Cj
		cmp	dword ptr [edi], 11B00h
		jnz	loc_4935A7
		push	8		; n
		mov	edi, esi
		add	edi, edi
		lea	edi, [edi+edi*4]
		mov	eax, edi
		add	eax, pthr
		add	eax, 3ACh
		push	eax		; src
		lea	edx, [ebp-230h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, mmxname[esi*4]
		push	ecx
		push	offset aModify3dnowR_0 ; "Modify 3DNow!	register %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-220h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	0		; mode
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		lea	ecx, [ebp-230h]
		mov	eax, [ebp-4]
		push	eax		; x
		lea	eax, [ebp-220h]
		mov	edx, [ebp+10h]
		push	edx		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Get3dnow
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		lea	eax, [ebp-230h]
		add	edi, pthr
		push	8		; n
		push	eax		; src
		add	edi, 3ACh
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_4935A7:				; CODE XREF: .text:004934EEj
		cmp	dword ptr [edi], 11C00h
		jnz	loc_493673
		push	10h		; n
		mov	edi, esi
		shl	edi, 4
		mov	eax, edi
		add	eax, pthr
		add	eax, 438h
		push	eax		; src
		lea	edx, [ebp-230h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, ssename[esi*4]
		push	ecx
		push	offset aModifyS_1 ; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-220h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	0C0104h		; mode
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		lea	ecx, [ebp-230h]
		mov	eax, [ebp-4]
		push	eax		; x
		lea	eax, [ebp-220h]
		mov	edx, [ebp+10h]
		push	edx		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Getsse
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		mov	eax, pthr
		pop	ecx
		lea	edx, [ebp-230h]
		or	dword ptr [eax+328h], 8
		add	edi, pthr
		push	10h		; n
		push	edx		; src
		add	edi, 438h
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_493673:				; CODE XREF: .text:004935ADj
		mov	eax, [edi]
		cmp	eax, 11D00h
		jz	short loc_493695
		cmp	eax, 11E00h
		jz	short loc_493695
		cmp	eax, 11F00h
		jz	short loc_493695
		cmp	eax, 12000h
		jnz	loc_493787

loc_493695:				; CODE XREF: .text:0049367Aj
					; .text:00493681j ...
		push	10h		; n
		mov	edx, esi
		shl	edx, 4
		add	edx, pthr
		add	edx, 438h
		push	edx		; src
		lea	ecx, [ebp-230h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [edi]
		cmp	eax, 11D00h
		jnz	short loc_4936C8
		mov	edi, 0C0000h
		jmp	short loc_4936E6
; ---------------------------------------------------------------------------

loc_4936C8:				; CODE XREF: .text:004936BFj
		cmp	eax, 11E00h
		jnz	short loc_4936D6
		mov	edi, 80000h
		jmp	short loc_4936E6
; ---------------------------------------------------------------------------

loc_4936D6:				; CODE XREF: .text:004936CDj
		cmp	eax, 11F00h
		jnz	short loc_4936E4
		mov	edi, 40000h
		jmp	short loc_4936E6
; ---------------------------------------------------------------------------

loc_4936E4:				; CODE XREF: .text:004936DBj
		xor	edi, edi

loc_4936E6:				; CODE XREF: .text:004936C6j
					; .text:004936D4j ...
		mov	eax, ssename[esi*4]
		push	eax
		push	offset aModifyS_1 ; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-220h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		or	edi, 704h
		push	edi		; mode
		mov	ecx, [ebx+234h]
		push	ecx		; fi
		mov	eax, [ebp-8]
		push	eax		; y
		lea	eax, [ebp-230h]
		mov	edx, [ebp-4]
		push	edx		; x
		lea	edx, [ebp-220h]
		mov	ecx, [ebp+10h]
		push	ecx		; letter
		push	eax		; data
		push	edx		; _title
		mov	ecx, [ebx+22Ch]
		push	ecx		; hparent
		call	Getsse
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	eax, pthr
		push	eax		; pthr
		call	Registermodifiedbyuser
		mov	edx, pthr
		pop	ecx
		shl	esi, 4
		lea	ecx, [ebp-230h]
		or	dword ptr [edx+328h], 8
		add	esi, pthr
		push	10h		; n
		push	ecx		; src
		add	esi, 438h
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4938E3
; ---------------------------------------------------------------------------

loc_493787:				; CODE XREF: .text:0049368Fj
		mov	eax, [edi]
		cmp	eax, 12100h
		jz	short loc_49379B
		cmp	eax, 12200h
		jnz	loc_49386D

loc_49379B:				; CODE XREF: .text:0049378Ej
		push	10h		; n
		mov	edx, esi
		shl	edx, 4
		add	edx, pthr
		add	edx, 438h
		push	edx		; src
		lea	ecx, [ebp-230h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		cmp	dword ptr [edi], 12100h
		jnz	short loc_4937CD
		mov	edi, 80000h
		jmp	short loc_4937CF
; ---------------------------------------------------------------------------

loc_4937CD:				; CODE XREF: .text:004937C4j
		xor	edi, edi

loc_4937CF:				; CODE XREF: .text:004937CBj
		mov	eax, ssename[esi*4]
		push	eax
		push	offset aModifyS_1 ; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-220h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		or	edi, 708h
		push	edi		; mode
		mov	ecx, [ebx+234h]
		push	ecx		; fi
		mov	eax, [ebp-8]
		push	eax		; y
		lea	eax, [ebp-230h]
		mov	edx, [ebp-4]
		push	edx		; x
		lea	edx, [ebp-220h]
		mov	ecx, [ebp+10h]
		push	ecx		; letter
		push	eax		; data
		push	edx		; _title
		mov	ecx, [ebx+22Ch]
		push	ecx		; hparent
		call	Getsse
		add	esp, 20h
		test	eax, eax
		jle	loc_4938E3
		mov	eax, pthr
		push	eax		; pthr
		call	Registermodifiedbyuser
		mov	edx, pthr
		pop	ecx
		shl	esi, 4
		lea	ecx, [ebp-230h]
		or	dword ptr [edx+328h], 8
		add	esi, pthr
		push	10h		; n
		push	ecx		; src
		add	esi, 438h
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4938E3
; ---------------------------------------------------------------------------

loc_49386D:				; CODE XREF: .text:00493795j
		cmp	dword ptr [edi], 12300h
		jnz	short loc_4938E3
		mov	eax, pthr
		mov	edx, [eax+4B8h]
		mov	[ebp-0Ch], edx
		push	24h		; mode
		mov	ecx, [ebx+234h]
		push	ecx		; fi
		mov	eax, [ebp-8]
		push	eax		; y
		lea	eax, [ebp-0Ch]
		mov	edx, [ebp-4]
		push	edx		; x
		mov	ecx, [ebp+10h]
		push	ecx		; letter
		push	eax		; data
		push	offset aModifyMxcsr_0 ;	"Modify	MXCSR"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [ebx+22Ch]
		push	edx		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	short loc_4938E3
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, pthr
		or	dword ptr [eax+328h], 8
		mov	edx, pthr
		mov	ecx, [ebp-0Ch]
		mov	[edx+4B8h], ecx

loc_4938E3:				; CODE XREF: .text:00492F5Aj
					; .text:00492F7Cj ...
		mov	eax, 1
		jmp	short loc_4938EC
; ---------------------------------------------------------------------------

loc_4938EA:				; CODE XREF: .text:00492EDCj
		xor	eax, eax

loc_4938EC:				; CODE XREF: .text:00492E03j
					; .text:00492E48j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4938F4:				; DATA XREF: .data:stru_54A468o
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	run.status, 12h
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		jnz	short loc_493917
		test	eax, eax
		jz	short loc_49391C
		cmp	dword ptr [eax+268h], 0
		jle	short loc_49391C

loc_493917:				; CODE XREF: .text:00493908j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49391C:				; CODE XREF: .text:0049390Cj
					; .text:00493915j
		test	edx, edx
		jnz	short loc_49395F
		mov	eax, dword_5EC0E8
		cmp	eax, 10700h
		jz	short loc_493933
		cmp	eax, 10800h
		jnz	short loc_493998

loc_493933:				; CODE XREF: .text:0049392Aj
		mov	edx, pthr
		mov	ecx, [edx+354h]
		push	ecx		; flags
		push	ebx		; code
		call	Setcondition
		add	esp, 8
		mov	edx, pthr
		cmp	eax, [edx+354h]
		jz	short loc_493998
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49395F:				; CODE XREF: .text:0049391Ej
		dec	edx
		jnz	short loc_493998
		mov	ecx, pthr
		push	ecx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, pthr
		mov	edx, [eax+354h]
		push	edx		; flags
		push	ebx		; code
		call	Setcondition
		add	esp, 8
		mov	ecx, pthr
		mov	[ecx+354h], eax
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493998:				; CODE XREF: .text:00493931j
					; .text:00493955j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4939A0:				; DATA XREF: .data:stru_54A600o
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	run.status, 12h
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		jnz	short loc_4939C3
		test	eax, eax
		jz	short loc_4939C8
		cmp	dword ptr [eax+268h], 0
		jle	short loc_4939C8

loc_4939C3:				; CODE XREF: .text:004939B4j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4939C8:				; CODE XREF: .text:004939B8j
					; .text:004939C1j
		test	edx, edx
		jnz	short loc_493A12
		cmp	dword_5EC0E8, 11100h
		jz	short loc_4939F5
		cmp	dword_5EC0E8, 11200h
		jnz	short loc_493A43
		mov	edx, dword_5EC0E0
		and	edx, 0FFh
		cmp	edx, 8
		jb	short loc_493A43

loc_4939F5:				; CODE XREF: .text:004939D6j
		mov	ecx, pthr
		mov	eax, [ecx+404h]
		and	eax, 4500h
		cmp	ebx, eax
		jz	short loc_493A43
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493A12:				; CODE XREF: .text:004939CAj
		dec	edx
		jnz	short loc_493A43
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, pthr
		mov	edx, [eax+404h]
		and	edx, 0FFFFBAFFh
		or	ebx, edx
		mov	[eax+404h], ebx
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493A43:				; CODE XREF: .text:004939E2j
					; .text:004939F3j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493A48:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	run.status, 12h
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		jnz	short loc_493A6B
		test	eax, eax
		jz	short loc_493A70
		cmp	dword ptr [eax+268h], 0
		jle	short loc_493A70

loc_493A6B:				; CODE XREF: .text:00493A5Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493A70:				; CODE XREF: .text:00493A60j
					; .text:00493A69j
		test	edx, edx
		jnz	short loc_493AA1
		cmp	dword_5EC0E8, 10E00h
		jnz	short loc_493ACB
		mov	edx, pthr
		mov	ecx, dword_5EC0EC
		xor	eax, eax
		mov	al, [edx+ecx+3FCh]
		cmp	eax, ebx
		jz	short loc_493ACB
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493AA1:				; CODE XREF: .text:00493A72j
		dec	edx
		jnz	short loc_493ACB
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, pthr
		mov	eax, dword_5EC0EC
		mov	[ecx+eax+3FCh],	bl
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493ACB:				; CODE XREF: .text:00493A7Ej
					; .text:00493A97j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493AD0:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+8]
		mov	esi, offset pthr
		cmp	run.status, 12h
		jnz	short loc_493AF9
		test	eax, eax
		jz	short loc_493B00
		cmp	dword ptr [eax+268h], 0
		jle	short loc_493B00

loc_493AF9:				; CODE XREF: .text:00493AEAj
		xor	eax, eax
		jmp	loc_493BC5
; ---------------------------------------------------------------------------

loc_493B00:				; CODE XREF: .text:00493AEEj
					; .text:00493AF7j
		cmp	dword_5EC0E8, 12500h
		jnz	short loc_493B1E
		mov	ecx, [esi]
		test	byte ptr [ecx+328h], 4
		jnz	short loc_493B1E
		xor	eax, eax
		jmp	loc_493BC5
; ---------------------------------------------------------------------------

loc_493B1E:				; CODE XREF: .text:00493B0Aj
					; .text:00493B15j
		test	edx, edx
		jnz	short loc_493B73
		cmp	dword_5EC0E8, 11500h
		jnz	short loc_493B47
		mov	edx, [esi]
		mov	ecx, [edx+408h]
		and	ecx, 0C00h
		cmp	ebx, ecx
		jz	short loc_493B47
		mov	eax, 1
		jmp	short loc_493BC5
; ---------------------------------------------------------------------------

loc_493B47:				; CODE XREF: .text:00493B2Cj
					; .text:00493B3Ej
		cmp	dword_5EC0E8, 12500h
		jnz	short loc_493B6F
		mov	edx, [esi]
		shl	ebx, 3
		mov	ecx, [edx+4B8h]
		and	ecx, 6000h
		cmp	ecx, ebx
		jz	short loc_493B6F
		mov	eax, 1
		jmp	short loc_493BC5
; ---------------------------------------------------------------------------

loc_493B6F:				; CODE XREF: .text:00493B51j
					; .text:00493B66j
		xor	eax, eax
		jmp	short loc_493BC5
; ---------------------------------------------------------------------------

loc_493B73:				; CODE XREF: .text:00493B20j
		dec	edx
		jnz	short loc_493BC3
		mov	edx, [esi]
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		cmp	dword_5EC0E8, 11500h
		jnz	short loc_493BA3
		mov	eax, [esi]
		mov	edx, [eax+408h]
		and	edx, 0FFFFF3FFh
		or	ebx, edx
		mov	[eax+408h], ebx
		jmp	short loc_493BBC
; ---------------------------------------------------------------------------

loc_493BA3:				; CODE XREF: .text:00493B89j
		mov	eax, [esi]
		shl	ebx, 3
		mov	edx, [eax+4B8h]
		and	edx, 0FFFF9FFFh
		or	edx, ebx
		mov	[eax+4B8h], edx

loc_493BBC:				; CODE XREF: .text:00493BA1j
		mov	eax, 1
		jmp	short loc_493BC5
; ---------------------------------------------------------------------------

loc_493BC3:				; CODE XREF: .text:00493B74j
		xor	eax, eax

loc_493BC5:				; CODE XREF: .text:00493AFBj
					; .text:00493B19j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_493BCC:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	run.status, 12h
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		jnz	short loc_493BEF
		test	eax, eax
		jz	short loc_493BF4
		cmp	dword ptr [eax+268h], 0
		jle	short loc_493BF4

loc_493BEF:				; CODE XREF: .text:00493BE0j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493BF4:				; CODE XREF: .text:00493BE4j
					; .text:00493BEDj
		test	edx, edx
		jnz	short loc_493C22
		cmp	dword_5EC0E8, 11500h
		jnz	short loc_493C53
		mov	edx, pthr
		mov	ecx, [edx+408h]
		and	ecx, 300h
		cmp	ebx, ecx
		jz	short loc_493C53
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493C22:				; CODE XREF: .text:00493BF6j
		dec	edx
		jnz	short loc_493C53
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, pthr
		mov	edx, [eax+408h]
		and	edx, 0FFFFFCFFh
		or	ebx, edx
		mov	[eax+408h], ebx
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493C53:				; CODE XREF: .text:00493C02j
					; .text:00493C18j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493C58:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, [ebp+10h]
		test	eax, eax
		jnz	short loc_493C7F
		mov	eax, dword_5EC0D4
		test	eax, eax
		jz	short loc_493CA4
		mov	ecx, [eax+8]
		and	ecx, 0Fh
		cmp	edx, ecx
		jz	short loc_493CA4
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493C7F:				; CODE XREF: .text:00493C63j
		dec	eax
		jnz	short loc_493CA4
		mov	ecx, dword_5EC0D4
		mov	eax, [ecx+8]
		and	eax, 0FFFFFFF0h
		or	edx, eax
		push	edx
		mov	edx, [ebp+8]
		push	edx
		call	loc_494BB4
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493CA4:				; CODE XREF: .text:00493C6Cj
					; .text:00493C76j ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493CA8:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, [ebp+10h]
		cmp	dword_5CBBC4, 0
		jz	short loc_493CDB
		cmp	dword_5CBBC8, 0
		jz	short loc_493CDB
		cmp	pthr, 0
		jz	short loc_493CDB
		mov	ecx, pthr
		test	byte ptr [ecx+328h], 4
		jnz	short loc_493CDF

loc_493CDB:				; CODE XREF: .text:00493CB8j
					; .text:00493CC1j ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493CDF:				; CODE XREF: .text:00493CD9j
		test	eax, eax
		jnz	short loc_493D00
		mov	eax, dword_5EC0D4
		test	eax, eax
		jz	short loc_493D27
		mov	ecx, [eax+8]
		and	ecx, 0F0h
		cmp	edx, ecx
		jz	short loc_493D27
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493D00:				; CODE XREF: .text:00493CE1j
		dec	eax
		jnz	short loc_493D27
		mov	ecx, dword_5EC0D4
		mov	eax, [ecx+8]
		and	eax, 0FFFFFF0Fh
		or	edx, eax
		push	edx
		mov	edx, [ebp+8]
		push	edx
		call	loc_494BB4
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493D27:				; CODE XREF: .text:00493CEAj
					; .text:00493CF7j ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_493D2C:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	ebx, offset pthr
		mov	esi, offset dword_5EC0D8
		cmp	run.status, 12h
		jnz	short loc_493D77
		test	eax, eax
		jz	short loc_493D58
		cmp	dword ptr [eax+268h], 0
		jg	short loc_493D77

loc_493D58:				; CODE XREF: .text:00493D4Dj
		cmp	dword_5EC0E0, 0
		jz	short loc_493D77
		mov	eax, [ebx]
		cmp	dword ptr [eax+6B4h], 0
		jz	short loc_493D77
		mov	ecx, [ebx]
		test	byte ptr [ecx+328h], 2
		jnz	short loc_493D7E

loc_493D77:				; CODE XREF: .text:00493D49j
					; .text:00493D56j ...
		xor	eax, eax
		jmp	loc_493F9F
; ---------------------------------------------------------------------------

loc_493D7E:				; CODE XREF: .text:00493D75j
		test	edx, edx
		jnz	loc_493E48
		mov	eax, dword_5EC0E8
		cmp	eax, 10E00h
		jnz	short loc_493DB8
		mov	edx, [ebx]
		mov	ecx, dword_5EC0EC
		mov	al, [edx+ecx+3FCh]
		mov	edx, [ebx]
		mov	ecx, dword_5EC0EC
		cmp	al, [edx+ecx+5C4h]
		setnz	al
		and	eax, 1
		jmp	short loc_493E36
; ---------------------------------------------------------------------------

loc_493DB8:				; CODE XREF: .text:00493D90j
		cmp	eax, 10F00h
		jnz	short loc_493DE7
		push	0Ah		; n
		mov	esi, dword_5EC0EC
		add	esi, esi
		lea	esi, [esi+esi*4]
		add	esi, [ebx]
		mov	eax, esi
		add	eax, 574h
		push	eax		; s2
		add	esi, 3ACh
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		jmp	short loc_493E36
; ---------------------------------------------------------------------------

loc_493DE7:				; CODE XREF: .text:00493DBDj
		mov	edi, [esi]
		cmp	dword ptr [edi+1Ch], 0
		jz	short loc_493E10
		mov	eax, [edi+14h]
		mov	edx, [ebx]
		mov	eax, [edx+eax+328h]
		mov	edx, [esi]
		mov	ecx, [edx+14h]
		mov	edx, [ebx]
		xor	eax, [edx+ecx+4F0h]
		mov	ecx, [esi]
		and	eax, [ecx+1Ch]
		jmp	short loc_493E36
; ---------------------------------------------------------------------------

loc_493E10:				; CODE XREF: .text:00493DEDj
		mov	eax, [edi+18h]
		push	eax		; n
		mov	eax, [esi]
		mov	edx, [eax+14h]
		add	edx, [ebx]
		add	edx, 4F0h
		push	edx		; s2
		mov	ecx, [edi+14h]
		add	ecx, [ebx]
		add	ecx, 328h
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch

loc_493E36:				; CODE XREF: .text:00493DB6j
					; .text:00493DE5j ...
		test	eax, eax
		jz	loc_493F9D
		mov	eax, 1
		jmp	loc_493F9F
; ---------------------------------------------------------------------------

loc_493E48:				; CODE XREF: .text:00493D80j
		dec	edx
		jnz	loc_493F9D
		cmp	dword_5EC0E8, 10E00h
		jnz	short loc_493E7C
		mov	eax, [ebx]
		mov	edx, dword_5EC0EC
		mov	cl, [eax+edx+5C4h]
		mov	edx, dword_5EC0EC
		mov	[eax+edx+3FCh],	cl
		jmp	loc_493F37
; ---------------------------------------------------------------------------

loc_493E7C:				; CODE XREF: .text:00493E59j
		cmp	dword_5EC0E8, 10F00h
		jnz	short loc_493ED4
		cmp	dword_5BE240, 0
		jz	short loc_493EAD
		mov	eax, [ebx]
		mov	ecx, dword_5EC0EC
		mov	dl, [eax+ecx+5C4h]
		mov	ecx, dword_5EC0EC
		mov	[eax+ecx+3FCh],	dl

loc_493EAD:				; CODE XREF: .text:00493E8Fj
		push	0Ah		; n
		mov	eax, dword_5EC0EC
		add	eax, eax
		lea	eax, [eax+eax*4]
		add	eax, [ebx]
		mov	edx, eax
		add	edx, 574h
		push	edx		; src
		add	eax, 3ACh
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_493F37
; ---------------------------------------------------------------------------

loc_493ED4:				; CODE XREF: .text:00493E86j
		mov	eax, [esi]
		mov	eax, [eax+1Ch]
		test	eax, eax
		jz	short loc_493F13
		mov	edx, [esi]
		mov	edi, [ebx]
		mov	ecx, [edx+14h]
		mov	edx, [ebx]
		mov	ecx, [edx+ecx+328h]
		mov	edx, eax
		not	edx
		and	ecx, edx
		mov	edx, [esi]
		mov	edx, [edx+14h]
		mov	edx, [edi+edx+4F0h]
		and	edx, eax
		mov	eax, [esi]
		or	ecx, edx
		mov	edx, [ebx]
		mov	eax, [eax+14h]
		mov	[edx+eax+328h],	ecx
		jmp	short loc_493F37
; ---------------------------------------------------------------------------

loc_493F13:				; CODE XREF: .text:00493EDBj
		mov	edx, [esi]
		mov	ecx, [edx+18h]
		push	ecx		; n
		mov	eax, [esi]
		mov	eax, [eax+14h]
		add	eax, [ebx]
		mov	ecx, eax
		add	ecx, 4F0h
		push	ecx		; src
		add	eax, 328h
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch

loc_493F37:				; CODE XREF: .text:00493E77j
					; .text:00493ED2j ...
		mov	eax, [ebx]
		mov	edx, [eax+404h]
		shr	edx, 0Bh
		and	edx, 7
		mov	[eax+3A8h], edx
		cmp	dword_5EC0E8, 10A00h
		jnz	short loc_493F96
		mov	edx, dword_5EC0E0
		and	edx, 0FFh
		cmp	edx, 6
		jge	short loc_493F96
		mov	ecx, [eax+edx*4+538h]
		mov	[eax+edx*4+370h], ecx
		mov	ecx, [ebx]
		mov	ecx, [ecx+edx*4+550h]
		mov	[eax+edx*4+388h], ecx
		mov	ecx, [ebx]
		mov	cl, [ecx+edx+568h]
		mov	[eax+edx+3A0h],	cl

loc_493F96:				; CODE XREF: .text:00493F55j
					; .text:00493F66j
		mov	eax, 1
		jmp	short loc_493F9F
; ---------------------------------------------------------------------------

loc_493F9D:				; CODE XREF: .text:00493E38j
					; .text:00493E49j
		xor	eax, eax

loc_493F9F:				; CODE XREF: .text:00493D79j
					; .text:00493E43j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_493FA4:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFAF4h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_493FCE
		cmp	dword_5EC0E0, 0
		jz	loc_494132
		mov	eax, 1
		jmp	loc_494134
; ---------------------------------------------------------------------------

loc_493FCE:				; CODE XREF: .text:00493FB5j
		dec	eax
		jnz	loc_494132
		lea	edx, [ebp-8]
		lea	ecx, [ebp-50Ch]
		push	edx		; tselect
		push	ecx		; tmask
		lea	eax, [ebp-20Ch]
		mov	edx, row
		push	eax		; text
		push	0		; column
		push	edx		; row
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Gettabletext
		mov	[ebp-4], eax
		xor	eax, eax
		mov	ebx, eax
		add	esp, 18h
		lea	esi, [ebp+eax-50Ch]
		lea	edx, [ebp+ebx*2-40Ch]
		mov	[ebp-0Ch], edx
		lea	edx, [ebp+eax*2-20Ch]
		cmp	eax, [ebp-4]
		jge	short loc_494047

loc_494020:				; CODE XREF: .text:00494045j
		test	byte ptr [esi],	80h
		jz	short loc_49403D
		test	ebx, ebx
		jnz	short loc_49402F
		cmp	word ptr [edx],	20h
		jz	short loc_49403D

loc_49402F:				; CODE XREF: .text:00494027j
		mov	cx, [edx]
		mov	edi, [ebp-0Ch]
		mov	[edi], cx
		inc	ebx
		add	dword ptr [ebp-0Ch], 2

loc_49403D:				; CODE XREF: .text:00494023j
					; .text:0049402Dj
		inc	eax
		add	edx, 2
		inc	esi
		cmp	eax, [ebp-4]
		jl	short loc_494020

loc_494047:				; CODE XREF: .text:0049401Ej
		lea	eax, [ebp+ebx*2-40Eh]
		jmp	short loc_494054
; ---------------------------------------------------------------------------

loc_494050:				; CODE XREF: .text:0049405Cj
		dec	ebx
		add	eax, 0FFFFFFFEh

loc_494054:				; CODE XREF: .text:0049404Ej
		test	ebx, ebx
		jle	short loc_49405E
		cmp	word ptr [eax],	20h
		jz	short loc_494050

loc_49405E:				; CODE XREF: .text:00494056j
		mov	word ptr [ebp+ebx*2-40Ch], 0
		inc	ebx
		mov	edi, ebx
		add	edi, edi
		push	edi		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	esi, eax
		test	esi, esi
		jnz	short loc_494097
		push	offset aUnableToCopy_0 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_494134
; ---------------------------------------------------------------------------

loc_494097:				; CODE XREF: .text:0049407Cj
		push	esi		; hMem
		call	GlobalLock
		test	eax, eax
		jnz	short loc_4940BD
		push	offset aUnableToCopy_0 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		push	esi		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	short loc_494134
; ---------------------------------------------------------------------------

loc_4940BD:				; CODE XREF: .text:0049409Fj
		push	edi		; n
		lea	edx, [ebp-40Ch]
		push	edx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	esi		; hMem
		call	GlobalUnlock
		mov	ecx, hwollymain
		push	ecx		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_494100
		push	offset aUnableToCopy_0 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		push	esi		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	short loc_494134
; ---------------------------------------------------------------------------

loc_494100:				; CODE XREF: .text:004940E2j
		call	EmptyClipboard
		push	esi		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_494129
		push	esi		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		test	eax, eax
		jz	short loc_494129
		push	eax		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_494129:				; CODE XREF: .text:00494114j
					; .text:0049411Fj
		call	CloseClipboard
		xor	eax, eax
		jmp	short loc_494134
; ---------------------------------------------------------------------------

loc_494132:				; CODE XREF: .text:00493FBEj
					; .text:00493FCFj
		xor	eax, eax

loc_494134:				; CODE XREF: .text:00493FC9j
					; .text:00494092j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
