.code

; int __cdecl fcmp(const void *a1, const void *a2)
fcmp:					; DATA XREF: .text:loc_4166E7o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_413694
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_413694:				; CODE XREF: .text:0041368Cj
		cmp	ebx, ecx
		jnb	short loc_4136A0
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4136A0:				; CODE XREF: .text:00413696j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4136A8:				; CODE XREF: .text:0044F985p
					; .text:00456E6Dp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, 4000h
		mov	edi, [ebp+8]
		push	ebx		; dwBytes
		and	edi, 0FFFFF000h
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4136D1
		or	eax, 0FFFFFFFFh
		jmp	loc_413758
; ---------------------------------------------------------------------------

loc_4136D1:				; CODE XREF: .text:004136C7j
		push	5		; mode
		push	ebx		; size
		push	edi		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 40h
		jnb	short loc_4136EA
		or	eax, 0FFFFFFFFh
		jmp	short loc_413758
; ---------------------------------------------------------------------------

loc_4136EA:				; CODE XREF: .text:004136E3j
		mov	eax, esi
		cmp	word ptr [eax],	5A4Dh
		jz	short loc_4136F8
		or	eax, 0FFFFFFFFh
		jmp	short loc_413758
; ---------------------------------------------------------------------------

loc_4136F8:				; CODE XREF: .text:004136F1j
		mov	eax, [eax+3Ch]
		lea	edx, [eax+18h]
		cmp	ebx, edx
		jnb	short loc_413707
		or	eax, 0FFFFFFFFh
		jmp	short loc_413758
; ---------------------------------------------------------------------------

loc_413707:				; CODE XREF: .text:00413700j
		cmp	dword ptr [esi+eax], 4550h
		jz	short loc_413715
		or	eax, 0FFFFFFFFh
		jmp	short loc_413758
; ---------------------------------------------------------------------------

loc_413715:				; CODE XREF: .text:0041370Ej
		add	eax, 18h
		lea	edx, [eax+0E0h]
		cmp	ebx, edx
		jnb	short loc_413727
		or	eax, 0FFFFFFFFh
		jmp	short loc_413758
; ---------------------------------------------------------------------------

loc_413727:				; CODE XREF: .text:00413720j
		add	esi, eax
		cmp	dword ptr [ebp+0Ch], 0
		mov	eax, esi
		jz	short loc_413748
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_413740
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	[edx], ecx
		jmp	short loc_413748
; ---------------------------------------------------------------------------

loc_413740:				; CODE XREF: .text:00413735j
		add	edi, [eax+10h]
		mov	edx, [ebp+0Ch]
		mov	[edx], edi

loc_413748:				; CODE XREF: .text:0041372Fj
					; .text:0041373Ej
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_413756
		mov	eax, [eax+38h]
		mov	ecx, [ebp+10h]
		mov	[ecx], eax

loc_413756:				; CODE XREF: .text:0041374Cj
		xor	eax, eax

loc_413758:				; CODE XREF: .text:004136CCj
					; .text:004136E8j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  70. _Getexportfrommemory
; Exported entry 567. Getexportfrommemory

; int __cdecl Getexportfrommemory(ulong	_addr, wchar_t *s)
		public Getexportfrommemory
Getexportfrommemory:			; CODE XREF: .text:004562D8p
		push	ebp		; _Getexportfrommemory
		mov	ebp, esp
		add	esp, 0FFFFFE9Ch
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_413779
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_413779:				; CODE XREF: .text:00413770j
		mov	edx, [ebp+8]
		and	edx, 0FFFF0000h
		xor	ebx, ebx
		mov	[ebp-0Ch], edx
		jmp	short loc_4137B8
; ---------------------------------------------------------------------------

loc_413789:				; CODE XREF: .text:004137C4j
		push	1		; mode
		push	2		; size
		mov	eax, [ebp-0Ch]
		push	eax		; _addr
		lea	edx, [ebp-1Eh]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4137A8
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_4137A8:				; CODE XREF: .text:0041379Fj
		cmp	word ptr [ebp-1Eh], 5A4Dh
		jz	short loc_4137C6
		inc	ebx
		sub	dword ptr [ebp-0Ch], 10000h

loc_4137B8:				; CODE XREF: .text:00413787j
		cmp	ebx, 100h
		jge	short loc_4137C6
		cmp	dword ptr [ebp-0Ch], 0
		ja	short loc_413789

loc_4137C6:				; CODE XREF: .text:004137AEj
					; .text:004137BEj
		cmp	ebx, 100h
		jge	short loc_4137D4
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4137DB

loc_4137D4:				; CODE XREF: .text:004137CCj
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_4137DB:				; CODE XREF: .text:004137D2j
		push	1		; mode
		push	40h		; size
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		lea	ecx, [ebp-70h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4137FA
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_4137FA:				; CODE XREF: .text:004137F1j
		mov	ebx, [ebp-0Ch]
		lea	eax, [ebp-10h]
		add	ebx, [ebp-34h]
		push	1		; mode
		push	4		; size
		push	ebx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_41381C
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_41381C:				; CODE XREF: .text:00413813j
		cmp	dword ptr [ebp-10h], 4550h
		jz	short loc_41382C
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_41382C:				; CODE XREF: .text:00413823j
		add	ebx, 4
		push	1		; mode
		push	14h		; size
		push	ebx		; _addr
		lea	edx, [ebp-84h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_41384E
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_41384E:				; CODE XREF: .text:00413845j
		cmp	word ptr [ebp-84h], 14Ch
		jz	short loc_413860
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_413860:				; CODE XREF: .text:00413857j
		movzx	edx, word ptr [ebp-74h]
		mov	[ebp-14h], edx
		add	ebx, 14h
		cmp	dword ptr [ebp-14h], 60h
		jnb	short loc_413877
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_413877:				; CODE XREF: .text:0041386Ej
		cmp	dword ptr [ebp-14h], 0E0h
		jnb	short loc_4138B7
		push	0E0h		; n
		push	0		; c
		lea	edx, [ebp-164h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		lea	eax, [ebp-164h]
		push	1		; mode
		mov	ecx, [ebp-14h]
		push	ecx		; size
		push	ebx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4138D9
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_4138B7:				; CODE XREF: .text:0041387Ej
		push	1		; mode
		push	0E0h		; size
		push	ebx		; _addr
		lea	edx, [ebp-164h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4138D9
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_4138D9:				; CODE XREF: .text:004138AEj
					; .text:004138D0j
		mov	eax, [ebp-108h]
		cmp	eax, 10h
		jbe	short loc_4138E9
		mov	eax, 10h

loc_4138E9:				; CODE XREF: .text:004138E2j
		cmp	word ptr [ebp-164h], 10Bh
		jnz	short loc_413909
		shl	eax, 3
		mov	edx, [ebp-14h]
		add	edx, 80h
		add	eax, 0E0h	; int
		cmp	edx, eax
		jz	short loc_413910

loc_413909:				; CODE XREF: .text:004138F2j
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_413910:				; CODE XREF: .text:00413907j
		mov	edx, [ebp-100h]
		mov	[ebp-14h], edx
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_413926
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_413926:				; CODE XREF: .text:0041391Dj
		mov	edx, [ebp-104h]	; int
		mov	[ebp-18h], edx
		push	1		; flags
		mov	ecx, [ebp-14h]
		add	ecx, 4		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_413950
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_413950:				; CODE XREF: .text:00413947j
		push	1		; mode
		mov	edx, [ebp-14h]
		push	edx		; size
		mov	ecx, [ebp-0Ch]
		add	ecx, [ebp-18h]
		push	ecx		; _addr
		mov	eax, [ebp-24h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-14h]
		jz	short loc_41397F
		mov	edx, [ebp-24h]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_41397F:				; CODE XREF: .text:0041396Cj
		mov	edx, [ebp-24h]
		mov	ecx, [edx+14h]
		mov	[ebp-4], ecx
		mov	eax, [ebp-24h]
		mov	edx, [ebp-24h]
		mov	ebx, [ebp-24h]
		mov	ecx, [ebp-24h]
		mov	edx, [edx+24h]
		mov	eax, [eax+1Ch]
		mov	ebx, [ebx+20h]
		mov	ecx, [ecx+18h]
		sub	eax, [ebp-18h]
		sub	ebx, [ebp-18h]
		sub	edx, [ebp-18h]
		mov	[ebp-1Ch], ebx
		mov	ebx, [ebp-4]
		shl	ebx, 2
		add	ebx, eax
		cmp	ebx, [ebp-14h]
		jnb	short loc_4139D1
		mov	ebx, ecx
		shl	ebx, 2
		add	ebx, [ebp-1Ch]
		cmp	ebx, [ebp-14h]
		jnb	short loc_4139D1
		mov	ebx, ecx
		add	ebx, ebx
		add	ebx, edx
		cmp	ebx, [ebp-14h]
		jb	short loc_4139E2

loc_4139D1:				; CODE XREF: .text:004139B7j
					; .text:004139C4j
		mov	eax, [ebp-24h]
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_413A92
; ---------------------------------------------------------------------------

loc_4139E2:				; CODE XREF: .text:004139CFj
		xor	ebx, ebx
		mov	[ebp-8], ebx
		xor	ebx, ebx
		mov	esi, [ebp-24h]
		mov	edi, [ebp-1Ch]
		add	esi, edi
		mov	[ebp-30h], esi
		mov	esi, [ebp-24h]
		lea	edx, [esi+edx]
		mov	[ebp-2Ch], edx
		mov	edx, [ebp-24h]
		lea	eax, [edx+eax]
		mov	[ebp-28h], eax
		cmp	ebx, [ebp-4]
		jge	short loc_413A85

loc_413A0B:				; CODE XREF: .text:00413A83j
		mov	eax, [ebp-28h]
		mov	esi, [eax]
		sub	esi, [ebp-18h]
		cmp	esi, [ebp-14h]
		jb	short loc_413A7B
		xor	eax, eax
		mov	edx, [ebp-2Ch]
		cmp	ecx, eax
		jle	short loc_413A31

loc_413A21:				; CODE XREF: .text:00413A2Fj
		mov	di, [edx]
		cmp	di, bx
		jz	short loc_413A31
		inc	eax
		add	edx, 2
		cmp	ecx, eax
		jg	short loc_413A21

loc_413A31:				; CODE XREF: .text:00413A1Fj
					; .text:00413A27j
		cmp	ecx, eax
		jle	short loc_413A7B
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*4], 0
		jz	short loc_413A7B
		mov	edx, [ebp-0Ch]
		add	edx, [ebp-18h]
		add	esi, edx
		cmp	esi, [ebp+8]
		jnz	short loc_413A7B
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+eax*4]
		sub	eax, [ebp-18h]
		cmp	eax, [ebp-14h]
		jnb	short loc_413A85
		push	100h		; nw
		mov	edx, [ebp+0Ch]
		push	edx		; w
		mov	ecx, [ebp-14h]
		sub	ecx, eax
		push	ecx		; ns
		mov	edx, [ebp-24h]
		add	edx, eax
		push	edx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	[ebp-8], eax
		jmp	short loc_413A85
; ---------------------------------------------------------------------------

loc_413A7B:				; CODE XREF: .text:00413A16j
					; .text:00413A33j ...
		inc	ebx
		add	dword ptr [ebp-28h], 4
		cmp	ebx, [ebp-4]
		jl	short loc_413A0B

loc_413A85:				; CODE XREF: .text:00413A09j
					; .text:00413A57j ...
		mov	eax, [ebp-24h]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-8]

loc_413A92:				; CODE XREF: .text:00413774j
					; .text:004137A3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_413A9C:				; CODE XREF: .text:00412747p
					; .text:0044FAAAp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEA8h
		cmp	process, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		jz	short loc_413AB8
		test	esi, esi
		jnz	short loc_413AC0

loc_413AB8:				; CODE XREF: .text:00413AB2j
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413AC0:				; CODE XREF: .text:00413AB6j
		push	1		; mode
		push	40h		; size
		push	esi		; _addr
		lea	edx, [ebp-50h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 40h
		jz	short loc_413ADE
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413ADE:				; CODE XREF: .text:00413AD4j
		cmp	word ptr [ebp-50h], 5A4Dh
		jz	short loc_413AEE
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413AEE:				; CODE XREF: .text:00413AE4j
		mov	ebx, [ebp-14h]
		push	1		; mode
		add	ebx, esi
		push	4		; size
		push	ebx		; _addr
		lea	eax, [ebp-4]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_413B11
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413B11:				; CODE XREF: .text:00413B07j
		cmp	dword ptr [ebp-4], 4550h
		jz	short loc_413B22
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413B22:				; CODE XREF: .text:00413B18j
		add	ebx, 4
		push	1		; mode
		push	14h		; size
		push	ebx		; _addr
		lea	edx, [ebp-64h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 14h
		jz	short loc_413B43
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413B43:				; CODE XREF: .text:00413B39j
		cmp	word ptr [ebp-64h], 14Ch
		jz	short loc_413B53
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413B53:				; CODE XREF: .text:00413B49j
		add	ebx, 14h
		movzx	edi, word ptr [ebp-54h]
		cmp	edi, 60h
		jnb	short loc_413B67
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413B67:				; CODE XREF: .text:00413B5Dj
		cmp	edi, 0E0h
		jnb	short loc_413BA4
		push	0E0h		; n
		push	0		; c
		lea	edx, [ebp-144h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	1		; mode
		push	edi		; size
		push	ebx		; _addr
		lea	ecx, [ebp-144h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	edi, eax
		jz	short loc_413BCA
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413BA4:				; CODE XREF: .text:00413B6Dj
		push	1		; mode
		push	0E0h		; size
		push	ebx		; _addr
		lea	edx, [ebp-144h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 0E0h
		jz	short loc_413BCA
		or	eax, 0FFFFFFFFh
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413BCA:				; CODE XREF: .text:00413B9Aj
					; .text:00413BC0j
		mov	edx, [ebp-0DCh]
		mov	[ebp-8], edx
		cmp	dword ptr [ebp-8], 0
		mov	edi, [ebp-0D8h]
		jz	short loc_413BE3
		test	edi, edi
		jnz	short loc_413BED

loc_413BE3:				; CODE XREF: .text:00413BDDj
		mov	eax, 1
		jmp	loc_413CE6
; ---------------------------------------------------------------------------

loc_413BED:				; CODE XREF: .text:00413BE1j
		xor	ebx, ebx
		jmp	loc_413CD6
; ---------------------------------------------------------------------------

loc_413BF4:				; CODE XREF: .text:00413CDBj
		push	1		; mode
		push	14h		; size
		mov	eax, [ebp-8]
		add	eax, esi
		add	eax, ebx
		push	eax		; _addr
		lea	edx, [ebp-158h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 14h
		jnz	loc_413CD3
		cmp	dword ptr [ebp-14Ch], 0
		jz	loc_413CE1
		cmp	dword ptr [ebp-148h], 0
		jz	loc_413CE1
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-158h]
		add	ecx, esi
		push	ecx		; _addr
		lea	eax, [ebp-0Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_413C55
		xor	edx, edx
		mov	[ebp-0Ch], edx

loc_413C55:				; CODE XREF: .text:00413C4Ej
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-148h]
		add	ecx, esi
		push	ecx		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_413C78
		or	eax, 0FFFFFFFFh
		jmp	short loc_413CE6
; ---------------------------------------------------------------------------

loc_413C78:				; CODE XREF: .text:00413C71j
		mov	eax, [ebp-10h]
		cmp	eax, 10000h
		jnb	short loc_413C86
		xor	eax, eax
		jmp	short loc_413CE6
; ---------------------------------------------------------------------------

loc_413C86:				; CODE XREF: .text:00413C80j
		cmp	eax, [ebp-0Ch]
		jnz	short loc_413C8F
		xor	eax, eax
		jmp	short loc_413CE6
; ---------------------------------------------------------------------------

loc_413C8F:				; CODE XREF: .text:00413C89j
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_413C9E
		xor	eax, eax
		jmp	short loc_413CE6
; ---------------------------------------------------------------------------

loc_413C9E:				; CODE XREF: .text:00413C98j
		cmp	netdbg,	0
		jnz	short loc_413CD3
		mov	edx, [ebp-10h]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_413CB9
		xor	eax, eax
		jmp	short loc_413CE6
; ---------------------------------------------------------------------------

loc_413CB9:				; CODE XREF: .text:00413CB3j
		push	24h		; type3
		push	23h		; type2
		push	22h		; type1
		mov	edx, [ebp-10h]
		push	edx		; _addr
		call	Isdataavailable
		add	esp, 10h
		test	eax, eax
		jnz	short loc_413CD3
		xor	eax, eax
		jmp	short loc_413CE6
; ---------------------------------------------------------------------------

loc_413CD3:				; CODE XREF: .text:00413C12j
					; .text:00413CA5j ...
		add	ebx, 14h

loc_413CD6:				; CODE XREF: .text:00413BEFj
		lea	edx, [ebx+14h]
		cmp	edi, edx
		jnb	loc_413BF4

loc_413CE1:				; CODE XREF: .text:00413C1Fj
					; .text:00413C2Cj
		mov	eax, 1

loc_413CE6:				; CODE XREF: .text:00413ABBj
					; .text:00413AD9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
