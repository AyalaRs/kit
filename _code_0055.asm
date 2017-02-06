.code

; int __cdecl loc_464230(int, int, int nDenominator)
loc_464230:				; CODE XREF: .text:0046F1B3p
					; .text:0046F1E8p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD7Ch
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		cmp	eax, addr0
		jb	short loc_464252
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_464259

loc_464252:				; CODE XREF: .text:00464245j
		xor	eax, eax
		jmp	loc_464587
; ---------------------------------------------------------------------------

loc_464259:				; CODE XREF: .text:00464250j
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		mov	eax, addr1
		cmp	edx, eax
		jbe	short loc_46426E
		sub	eax, [ebp+0Ch]
		mov	[ebp+10h], eax

loc_46426E:				; CODE XREF: .text:00464266j
		lea	edx, [ebp-1Ch]
		push	edx		; value
		push	offset aMaxknownproc ; "%%MAXKNOWNPROC%%"
		call	Getconstantbyname
		add	esp, 8
		test	eax, eax
		jnz	short loc_46428C
		cmp	dword ptr [ebp-1Ch], 400h
		jbe	short loc_464293

loc_46428C:				; CODE XREF: .text:00464281j
		mov	dword ptr [ebp-1Ch], 20h

loc_464293:				; CODE XREF: .text:0046428Aj
		push	1		; flags
		mov	ecx, [ebp-1Ch]
		shl	ecx, 2		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_4642B4
		xor	eax, eax
		jmp	loc_464587
; ---------------------------------------------------------------------------

loc_4642B4:				; CODE XREF: .text:004642ABj
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-8], edx
		mov	[ebp-0Ch], ecx
		xor	ebx, ebx
		mov	eax, [ebp-24h]
		cmp	ebx, [ebp-1Ch]
		mov	esi, eax
		jnb	short loc_464303

loc_4642CA:				; CODE XREF: .text:00464301j
		lea	eax, [ebx+1]
		lea	edx, [ebp-244h]
		push	eax
		push	offset aProc04lu ; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-244h]
		push	ecx		; _name
		call	Getrawdata
		pop	ecx
		mov	edi, eax
		mov	[esi], edi
		test	edi, edi
		jz	short loc_4642FD
		inc	dword ptr [ebp-8]
		add	esi, 4

loc_4642FD:				; CODE XREF: .text:004642F5j
		inc	ebx
		cmp	ebx, [ebp-1Ch]
		jb	short loc_4642CA

loc_464303:				; CODE XREF: .text:004642C8j
		cmp	dword ptr [ebp-8], 0
		jz	loc_46457A
		xor	eax, eax
		mov	[ebp-14h], eax
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		mov	edx, eax
		add	edx, [ebp+10h]
		mov	[ebp-18h], edx
		mov	[ebp-10h], eax
		mov	ecx, [ebp-10h]
		cmp	ecx, [ebp-18h]
		jnb	loc_464495

loc_464332:				; CODE XREF: .text:0046448Fj
		mov	eax, dword_5E5D74
		mov	edx, [ebp-10h]
		test	byte ptr [eax+edx*2], 2
		jz	loc_464486
		mov	ecx, [ebp-14h]
		add	ecx, 4000h
		cmp	ecx, [ebp-10h]
		jnb	short loc_46438C
		mov	eax, [ebp+10h]
		push	eax		; nDenominator
		push	3E8h		; nNumerator
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	ecx, [ebp-10h]
		sub	ecx, edx
		push	ecx		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_464386
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_46457A
; ---------------------------------------------------------------------------

loc_464386:				; CODE XREF: .text:00464378j
		mov	eax, [ebp-10h]
		mov	[ebp-14h], eax

loc_46438C:				; CODE XREF: .text:00464350j
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-24h]
		mov	esi, ecx
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jge	loc_464486

loc_4643A2:				; CODE XREF: .text:00464480j
		mov	ebx, [esi]
		mov	edx, [ebp-18h]
		sub	edx, [ebp-10h]
		mov	eax, [ebx]
		cmp	eax, edx
		ja	loc_464474
		mov	ecx, copy
		mov	edx, ebx
		add	ecx, [ebp-10h]
		add	edx, 0Ch
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4643F2
		mov	ebx, eax
		add	ebx, edx
		test	eax, eax
		mov	[ebp-20h], ebx
		jbe	short loc_4643E8

loc_4643D3:				; CODE XREF: .text:004643E6j
		mov	bl, [ecx]
		mov	edi, [ebp-20h]
		xor	bl, [edx]
		and	bl, [edi]
		jnz	short loc_4643E8
		dec	eax
		inc	edx
		inc	dword ptr [ebp-20h]
		inc	ecx
		test	eax, eax
		ja	short loc_4643D3

loc_4643E8:				; CODE XREF: .text:004643D1j
					; .text:004643DCj
		test	eax, eax
		ja	loc_464474
		jmp	short loc_464401
; ---------------------------------------------------------------------------

loc_4643F2:				; CODE XREF: .text:004643C6j
		push	eax		; n
		push	edx		; s2
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_464474

loc_464401:				; CODE XREF: .text:004643F0j
		push	0		; subaddr
		mov	eax, addr0
		add	eax, [ebp-10h]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_464427
		mov	edx, [esi]
		mov	ecx, [edx+8]
		mov	[eax+18h], ecx
		jmp	short loc_464486
; ---------------------------------------------------------------------------

loc_464427:				; CODE XREF: .text:0046441Bj
		push	40h		; n
		push	0		; c
		lea	eax, [ebp-284h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, addr0
		add	edx, [ebp-10h]
		mov	[ebp-284h], edx
		lea	edx, [ebp-284h]
		mov	dword ptr [ebp-280h], 1
		mov	ecx, [esi]
		mov	eax, [ecx+8]
		mov	[ebp-26Ch], eax
		push	edx		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8
		jmp	short loc_464486
; ---------------------------------------------------------------------------

loc_464474:				; CODE XREF: .text:004643AEj
					; .text:004643EAj ...
		inc	dword ptr [ebp-4]
		add	esi, 4
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jl	loc_4643A2

loc_464486:				; CODE XREF: .text:0046433Ej
					; .text:0046439Cj ...
		inc	dword ptr [ebp-10h]
		mov	eax, [ebp-10h]
		cmp	eax, [ebp-18h]
		jb	loc_464332

loc_464495:				; CODE XREF: .text:0046432Cj
		cmp	dword_5E5D84, 0
		jnz	loc_46457A
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	[ebp-10h], edx
		mov	ecx, [ebp-10h]
		cmp	ecx, [ebp-18h]
		jnb	loc_464570

loc_4644BA:				; CODE XREF: .text:0046456Aj
		call	loc_41094C
		mov	edx, eax
		mov	ecx, copy
		add	ecx, [ebp-10h]
		xor	eax, eax
		mov	[ebp-4], eax

loc_4644CF:				; CODE XREF: .text:004644DEj
		mov	al, [ecx]
		cmp	al, [edx]
		jnz	short loc_4644E0
		inc	dword ptr [ebp-4]
		inc	edx
		inc	ecx
		cmp	dword ptr [ebp-4], 20h
		jl	short loc_4644CF

loc_4644E0:				; CODE XREF: .text:004644D3j
		cmp	dword ptr [ebp-4], 20h
		jl	short loc_464561
		mov	ebx, 47h
		mov	ecx, copy
		add	ecx, [ebp-10h]
		xor	eax, eax
		mov	[ebp-4], eax
		lea	eax, [ebp-224h]
		jmp	short loc_464531
; ---------------------------------------------------------------------------

loc_464501:				; CODE XREF: .text:0046453Aj
		xor	edx, edx
		mov	dl, [ecx]
		xor	dx, bx
		add	ebx, ebx
		and	dx, 0FFh
		add	ebx, 3
		mov	[eax], dx
		cmp	ebx, 100h
		jb	short loc_46452A
		mov	edx, ebx
		shr	edx, 8
		xor	ebx, edx
		and	ebx, 0FFh

loc_46452A:				; CODE XREF: .text:0046451Bj
		add	eax, 2
		inc	dword ptr [ebp-4]
		inc	ecx

loc_464531:				; CODE XREF: .text:004644FFj
		cmp	dword ptr [ebp-4], 20h
		jge	short loc_46453C
		cmp	byte ptr [ecx],	0
		jnz	short loc_464501

loc_46453C:				; CODE XREF: .text:00464535j
		mov	eax, [ebp-4]
		lea	ecx, [ebp-224h]
		mov	word ptr [ebp+eax*2-224h], 0
		push	ecx		; arglist
		push	offset aS_12	; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_464561:				; CODE XREF: .text:004644E4j
		inc	dword ptr [ebp-10h]
		mov	eax, [ebp-10h]
		cmp	eax, [ebp-18h]
		jb	loc_4644BA

loc_464570:				; CODE XREF: .text:004644B4j
		mov	dword_5E5D84, 1

loc_46457A:				; CODE XREF: .text:00464307j
					; .text:00464381j ...
		mov	edx, [ebp-24h]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-0Ch]

loc_464587:				; CODE XREF: .text:00464254j
					; .text:004642AFj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_464590(int, int, int nDenominator)
loc_464590:				; CODE XREF: .text:0046F226p
					; .text:0046F264p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 3

loc_464599:				; CODE XREF: .text:004645A1j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_464599
		mov	eax, [ebp-4]
		add	esp, 0FFFFF708h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		cmp	eax, addr0
		jb	short loc_4645C5
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_4645CC

loc_4645C5:				; CODE XREF: .text:004645B8j
		xor	eax, eax
		jmp	loc_4651FE
; ---------------------------------------------------------------------------

loc_4645CC:				; CODE XREF: .text:004645C3j
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, addr1
		jbe	short loc_4645E6
		mov	ecx, addr1
		sub	ecx, [ebp+0Ch]
		mov	[ebp+10h], ecx

loc_4645E6:				; CODE XREF: .text:004645D8j
		lea	eax, [ebp-38h]
		push	eax		; value
		push	offset aMaxtricks ; "%%MAXTRICKS%%"
		call	Getconstantbyname
		add	esp, 8
		test	eax, eax
		jz	short loc_464604
		cmp	dword ptr [ebp-38h], 100h
		jbe	short loc_46460D

loc_464604:				; CODE XREF: .text:004645F9j
		mov	dword ptr [ebp-8], 20h
		jmp	short loc_464613
; ---------------------------------------------------------------------------

loc_46460D:				; CODE XREF: .text:00464602j
		mov	edx, [ebp-38h]	; int
		mov	[ebp-8], edx

loc_464613:				; CODE XREF: .text:0046460Bj
		mov	ecx, [ebp-8]
		shl	ecx, 7
		test	ecx, ecx
		jns	short loc_464620
		add	ecx, 3

loc_464620:				; CODE XREF: .text:0046461Bj
		sar	ecx, 2
		add	ecx, 80h	; int
		mov	[ebp-0Ch], ecx
		push	1		; flags
		mov	eax, [ebp-0Ch]
		shl	eax, 2
		lea	eax, [eax+eax*2]
		lea	eax, [eax+eax*8] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-50h], eax
		push	1		; flags
		mov	edx, [ebp-8]
		mov	ecx, edx	; int
		shl	edx, 6
		add	edx, ecx
		shl	edx, 3		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_46466D
		cmp	dword ptr [ebp-54h], 0
		jnz	short loc_464694

loc_46466D:				; CODE XREF: .text:00464665j
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_46467D
		mov	eax, [ebp-50h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_46467D:				; CODE XREF: .text:00464671j
		cmp	dword ptr [ebp-54h], 0
		jz	short loc_46468D
		mov	edx, [ebp-54h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_46468D:				; CODE XREF: .text:00464681j
		xor	eax, eax
		jmp	loc_4651FE
; ---------------------------------------------------------------------------

loc_464694:				; CODE XREF: .text:0046466Bj
		mov	edx, dword_5BDCC8
		xor	ecx, ecx
		mov	[ebp-24h], edx
		mov	[ebp-14h], ecx
		xor	eax, eax
		lea	edx, [ebp-15Ch]
		mov	[ebp-10h], eax
		mov	dword_5BDCC8, 1
		mov	dword ptr [ebp-20h], 1
		push	100h		; n
		push	0		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jge	loc_464955

loc_4646DF:				; CODE XREF: .text:0046494Fj
		mov	edx, [ebp-4]
		lea	ecx, [ebp-35Ch]
		inc	edx
		push	edx
		push	offset aTrick03i ; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-35Ch]
		push	eax		; _name
		call	Getrawdata
		pop	ecx
		test	eax, eax
		jz	loc_464946
		cmp	dword ptr [eax], 0
		jz	loc_464946
		cmp	dword ptr [eax+4], 0
		jnz	loc_464946
		lea	esi, [eax+0Ch]
		mov	eax, [eax]
		cmp	byte ptr [esi+eax-1], 0
		jnz	loc_464946
		jmp	short loc_464733
; ---------------------------------------------------------------------------

loc_464732:				; CODE XREF: .text:0046473Aj
		inc	esi

loc_464733:				; CODE XREF: .text:00464730j
		xor	edx, edx
		mov	dl, [esi]
		cmp	edx, 20h
		jz	short loc_464732
		xor	edi, edi

loc_46473E:				; CODE XREF: .text:0046476Fj
		mov	al, [esi]
		xor	edx, edx
		mov	dl, al
		cmp	edx, 0Ah
		jz	short loc_464771
		test	al, al
		jz	short loc_464771
		mov	ecx, [ebp-10h]
		and	eax, 0FFh
		mov	edx, ecx
		inc	esi
		shl	ecx, 6
		add	ecx, edx
		mov	edx, [ebp-54h]
		lea	ecx, [edx+ecx*8]
		mov	[ecx+edi*2+8], ax
		inc	edi
		cmp	edi, 0FFh
		jl	short loc_46473E

loc_464771:				; CODE XREF: .text:00464747j
					; .text:0046474Bj
		test	edi, edi
		jz	loc_464946
		cmp	byte ptr [esi],	0
		jz	loc_464946
		mov	eax, [ebp-10h]
		mov	ecx, [ebp-54h]
		mov	edx, eax
		shl	eax, 6
		add	eax, edx
		xor	edx, edx
		lea	eax, [ecx+eax*8]
		xor	ecx, ecx
		mov	word ptr [eax+edi*2+8],	0
		mov	[ebp-18h], edx
		mov	[ebp-1Ch], ecx
		xor	eax, eax
		mov	[ebp-30h], eax
		jmp	short loc_4647AB
; ---------------------------------------------------------------------------

loc_4647AA:				; CODE XREF: .text:004647B8j
		inc	esi

loc_4647AB:				; CODE XREF: .text:004647A8j
					; .text:00464898j
		mov	al, [esi]
		xor	edx, edx
		mov	dl, al
		cmp	edx, 0Ah
		jz	short loc_4647BA
		test	al, al
		jnz	short loc_4647AA

loc_4647BA:				; CODE XREF: .text:004647B4j
		cmp	byte ptr [esi],	0
		jz	loc_46489E
		inc	esi
		xor	edi, edi
		lea	eax, [ebp-35Ch]

loc_4647CC:				; CODE XREF: .text:00464804j
		mov	dl, [esi]
		xor	ecx, ecx
		mov	cl, dl
		cmp	ecx, 0Ah
		jz	short loc_464806
		test	dl, dl
		jz	short loc_464806
		mov	dl, [esi]
		xor	ecx, ecx
		mov	cl, dl
		cmp	ecx, 2Fh
		jnz	short loc_4647F0
		xor	ecx, ecx
		mov	cl, [esi+1]
		cmp	ecx, 2Fh
		jz	short loc_464806

loc_4647F0:				; CODE XREF: .text:004647E4j
		and	edx, 0FFh
		mov	[eax], dx
		inc	edi
		add	eax, 2
		inc	esi
		cmp	edi, 0FFh
		jl	short loc_4647CC

loc_464806:				; CODE XREF: .text:004647D5j
					; .text:004647D9j ...
		mov	word ptr [ebp+edi*2-35Ch], 0
		lea	eax, [ebp-75Ch]
		push	eax		; errtxt
		push	6		; mode
		mov	eax, [ebp-0Ch]
		sub	eax, [ebp-14h]
		sub	eax, [ebp-18h]
		push	eax		; maxmodel
		lea	eax, [ebp-35Ch]
		mov	edx, [ebp-14h]
		mov	ecx, [ebp-18h]
		shl	edx, 2
		shl	ecx, 2
		lea	edx, [edx+edx*2]
		lea	ecx, [ecx+ecx*2]
		lea	edx, [edx+edx*8]
		add	edx, [ebp-50h]
		lea	ecx, [ecx+ecx*8]
		add	edx, ecx
		push	edx		; model
		push	0		; ip
		push	eax		; src
		call	Assembleallforms
		add	esp, 18h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_46488E
		cmp	dword_5BDD18, 0
		jz	short loc_464885
		lea	eax, [ebp-75Ch]
		push	eax
		mov	edx, [ebp-4]
		inc	edx
		push	edx		; arglist
		push	offset aTrickyPatternI ; "  Tricky pattern %i: %s"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_464885:				; CODE XREF: .text:0046485Fj
		mov	dword ptr [ebp-30h], 1
		jmp	short loc_46489E
; ---------------------------------------------------------------------------

loc_46488E:				; CODE XREF: .text:00464856j
		add	[ebp-18h], ebx
		inc	dword ptr [ebp-1Ch]
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4647AB

loc_46489E:				; CODE XREF: .text:004647BDj
					; .text:0046488Cj
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_464946
		mov	ecx, [ebp-10h]
		mov	edx, [ebp-54h]
		mov	eax, ecx
		xor	edi, edi
		shl	ecx, 6
		add	ecx, eax
		mov	eax, [ebp-14h]
		shl	eax, 2
		lea	eax, [eax+eax*2]
		lea	eax, [eax+eax*8]
		add	eax, [ebp-50h]
		mov	[edx+ecx*8], eax
		mov	edx, [ebp-10h]
		mov	eax, [ebp-54h]
		mov	ecx, edx
		shl	edx, 6
		add	edx, ecx
		mov	ecx, [ebp-18h]
		mov	[eax+edx*8+4], ecx
		mov	eax, [ebp-10h]
		mov	ecx, [ebp-54h]
		mov	edx, eax
		shl	eax, 6
		add	eax, edx
		cmp	edi, [ebp-18h]
		mov	eax, [ecx+eax*8]
		jge	short loc_464928

loc_4648F2:				; CODE XREF: .text:00464926j
		test	edi, edi
		jle	short loc_4648FC
		test	byte ptr [eax+25h], 80h
		jnz	short loc_464928

loc_4648FC:				; CODE XREF: .text:004648F4j
		xor	ebx, ebx
		lea	edx, [ebp-15Ch]

loc_464904:				; CODE XREF: .text:0046491Dj
		xor	ecx, ecx
		mov	cl, [eax]
		xor	ecx, ebx
		movzx	esi, byte ptr [eax+10h]
		and	ecx, esi
		jnz	short loc_464915
		mov	byte ptr [edx],	1

loc_464915:				; CODE XREF: .text:00464910j
		inc	ebx
		inc	edx
		cmp	ebx, 100h
		jl	short loc_464904
		inc	edi
		add	eax, 6Ch
		cmp	edi, [ebp-18h]
		jl	short loc_4648F2

loc_464928:				; CODE XREF: .text:004648F0j
					; .text:004648FAj
		mov	eax, [ebp-20h]
		cmp	eax, [ebp-1Ch]
		jle	short loc_464935
		lea	edx, [ebp-20h]
		jmp	short loc_464938
; ---------------------------------------------------------------------------

loc_464935:				; CODE XREF: .text:0046492Ej
		lea	edx, [ebp-1Ch]

loc_464938:				; CODE XREF: .text:00464933j
		mov	eax, [edx]
		mov	[ebp-20h], eax
		inc	dword ptr [ebp-10h]
		mov	ecx, [ebp-18h]
		add	[ebp-14h], ecx

loc_464946:				; CODE XREF: .text:00464707j
					; .text:00464710j ...
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jl	loc_4646DF

loc_464955:				; CODE XREF: .text:004646D9j
		mov	edx, [ebp-24h]
		xor	ecx, ecx	; int
		xor	eax, eax	; int
		mov	[ebp-30h], ecx
		mov	[ebp-48h], eax
		mov	dword_5BDCC8, edx
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4651D7
		push	1		; flags
		mov	edx, [ebp-20h]
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		mov	[ebp-48h], eax
		xor	ecx, ecx
		mov	[ebp-40h], ecx
		add	esp, 8
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		add	eax, [ebp+10h]
		mov	[ebp-44h], eax
		mov	dword ptr [ebp-2020h], 0FFFFFFFFh
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	[ebp-3Ch], edx
		mov	ecx, [ebp-3Ch]
		cmp	ecx, [ebp-44h]
		jnb	loc_4651D7

loc_4649BC:				; CODE XREF: .text:004651D1j
		mov	eax, s
		mov	edx, [ebp-3Ch]
		cmp	byte ptr [eax+edx], 1Ch
		jnz	loc_4651C8
		mov	ecx, [ebp-40h]
		add	ecx, 8000h
		cmp	ecx, [ebp-3Ch]
		jnb	short loc_464A16
		mov	eax, [ebp+10h]
		push	eax		; nDenominator
		push	3E8h		; nNumerator
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	ecx, [ebp-3Ch]
		sub	ecx, edx
		push	ecx		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_464A10
		mov	dword ptr [ebp-30h], 0FFFFFFFFh
		jmp	loc_4651D7
; ---------------------------------------------------------------------------

loc_464A10:				; CODE XREF: .text:00464A02j
		mov	eax, [ebp-3Ch]
		mov	[ebp-40h], eax

loc_464A16:				; CODE XREF: .text:004649DAj
		mov	edx, [ebp-44h]
		sub	edx, [ebp-3Ch]
		cmp	edx, 5
		jb	loc_464AA5
		mov	ecx, copy
		mov	eax, [ebp-3Ch]
		xor	edx, edx
		mov	dl, [ecx+eax]
		cmp	byte ptr [ebp+edx-15Ch], 0
		jnz	short loc_464AA5
		mov	ecx, copy
		mov	eax, [ebp-3Ch]
		xor	edx, edx
		mov	dl, [ecx+eax+1]
		cmp	byte ptr [ebp+edx-15Ch], 0
		jnz	short loc_464AA5
		mov	ecx, copy
		mov	eax, [ebp-3Ch]
		xor	edx, edx
		mov	dl, [ecx+eax+2]
		cmp	byte ptr [ebp+edx-15Ch], 0
		jnz	short loc_464AA5
		mov	ecx, copy
		mov	eax, [ebp-3Ch]
		xor	edx, edx
		mov	dl, [ecx+eax+3]
		cmp	byte ptr [ebp+edx-15Ch], 0
		jnz	short loc_464AA5
		mov	ecx, copy
		mov	eax, [ebp-3Ch]
		xor	edx, edx
		mov	dl, [ecx+eax+4]
		cmp	byte ptr [ebp+edx-15Ch], 0
		jz	loc_4651C8

loc_464AA5:				; CODE XREF: .text:00464A1Fj
					; .text:00464A3Bj ...
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jge	loc_4651C8

loc_464AB6:				; CODE XREF: .text:004651C2j
		mov	edx, [ebp-20h]
		lea	eax, [ebp-202Ch]
		push	edx		; namatch
		lea	edx, [ebp-2Ch]
		mov	ecx, [ebp-48h]
		push	ecx		; amatch
		push	eax		; da
		push	edx		; pb
		lea	ecx, [ebp-28h]
		push	ecx		; pa
		push	1		; mode
		mov	eax, [ebp-4]
		mov	ecx, [ebp-54h]
		mov	edx, eax
		shl	eax, 6
		add	eax, edx
		mov	eax, [ecx+eax*8+4]
		push	eax		; nmodel
		mov	edx, [ebp-4]
		mov	eax, [ebp-54h]
		mov	ecx, edx
		shl	edx, 6
		add	edx, ecx
		mov	ecx, addr0
		mov	edx, [eax+edx*8]
		push	edx		; model
		push	0		; decode
		add	ecx, [ebp-3Ch]
		mov	edx, copy
		push	ecx		; cmdip
		mov	eax, [ebp-44h]
		sub	eax, [ebp-3Ch]
		push	eax		; cmdsize
		add	edx, [ebp-3Ch]
		push	edx		; cmd
		call	Comparesequence
		add	esp, 30h
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jz	loc_4651B9
		push	0		; predict
		push	0		; reg
		push	811h		; mode
		lea	ecx, [ebp-202Ch]
		push	ecx		; da
		push	0		; dec
		mov	eax, addr0
		add	eax, [ebp-3Ch]
		push	eax		; ip
		mov	edx, [ebp-44h]
		sub	edx, [ebp-3Ch]
		push	edx		; cmdsize
		mov	ecx, copy
		add	ecx, [ebp-3Ch]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		xor	edi, edi
		jmp	short loc_464B5D
; ---------------------------------------------------------------------------

loc_464B5C:				; CODE XREF: .text:00464B6Dj
		inc	edi

loc_464B5D:				; CODE XREF: .text:00464B5Aj
		mov	eax, [ebp-20h]
		dec	eax
		cmp	edi, eax
		jge	short loc_464B6F
		mov	edx, [ebp-48h]
		cmp	dword ptr [edx+edi*4+4], 0
		jnz	short loc_464B5C

loc_464B6F:				; CODE XREF: .text:00464B63j
		mov	ecx, [ebp-48h]
		mov	eax, [ecx+edi*4]
		cmp	eax, addr1
		jb	short loc_464B8D
		xor	edx, edx
		mov	[ebp-3450h], edx
		mov	[ebp-38B0h], edx
		jmp	short loc_464BCA
; ---------------------------------------------------------------------------

loc_464B8D:				; CODE XREF: .text:00464B7Bj
		push	0		; predict
		push	0		; reg
		push	811h		; mode
		lea	ecx, [ebp-38FCh]
		push	ecx		; da
		push	0		; dec
		mov	edx, [ebp-48h]
		push	eax		; ip
		mov	ecx, [ebp-48h]
		mov	edx, addr1
		sub	edx, eax
		push	edx		; cmdsize
		mov	eax, [ebp-48h]
		mov	ecx, [eax+edi*4]
		add	ecx, copy
		sub	ecx, addr0
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h

loc_464BCA:				; CODE XREF: .text:00464B8Bj
		cmp	dword_5BDD24, 0
		jz	short loc_464BF0
		push	offset a1_1	; "(1) "
		push	100h		; n
		lea	eax, [ebp-35Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		jmp	short loc_464BF2
; ---------------------------------------------------------------------------

loc_464BF0:				; CODE XREF: .text:00464BD1j
		xor	edi, edi

loc_464BF2:				; CODE XREF: .text:00464BEEj
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 6
		add	eax, edx
		shl	eax, 3
		add	eax, [ebp-54h]
		add	eax, 8
		mov	[ebp-4Ch], eax
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx],	24h
		jnz	short loc_464C21
		mov	dword ptr [ebp-34h], 1
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_4650F8
; ---------------------------------------------------------------------------

loc_464C21:				; CODE XREF: .text:00464C0Fj
		xor	eax, eax
		mov	[ebp-34h], eax
		jmp	loc_4650F8
; ---------------------------------------------------------------------------

loc_464C2B:				; CODE XREF: .text:00465107j
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx],	25h
		jnz	short loc_464C9D
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx+2], 31h
		jnz	short loc_464C9D
		cmp	dword ptr [ebp-1FE0h], 0
		jnz	short loc_464C6D
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-35Ch]
		add	edx, edx
		push	$CTW0("???")	; "???"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_464C94
; ---------------------------------------------------------------------------

loc_464C6D:				; CODE XREF: .text:00464C45j
		lea	eax, [ebp-1F80h]
		mov	edx, 100h
		sub	edx, edi
		push	eax
		mov	ecx, edi
		dec	edx
		lea	eax, [ebp-35Ch]
		add	ecx, ecx
		add	ecx, eax
		push	edx
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax

loc_464C94:				; CODE XREF: .text:00464C6Bj
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_4650F4
; ---------------------------------------------------------------------------

loc_464C9D:				; CODE XREF: .text:00464C32j
					; .text:00464C3Cj
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx],	25h
		jnz	short loc_464D0F
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx+2], 32h
		jnz	short loc_464D0F
		cmp	dword ptr [ebp-1B80h], 0
		jnz	short loc_464CDF
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-35Ch]
		add	edx, edx
		push	(offset	a50+2)	; src
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_464D06
; ---------------------------------------------------------------------------

loc_464CDF:				; CODE XREF: .text:00464CB7j
		lea	eax, [ebp-1B20h]
		mov	edx, 100h
		sub	edx, edi
		push	eax
		mov	ecx, edi
		dec	edx
		lea	eax, [ebp-35Ch]
		add	ecx, ecx
		add	ecx, eax
		push	edx
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax

loc_464D06:				; CODE XREF: .text:00464CDDj
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_4650F4
; ---------------------------------------------------------------------------

loc_464D0F:				; CODE XREF: .text:00464CA4j
					; .text:00464CAEj
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx],	25h
		jnz	short loc_464D81
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx+2], 33h
		jnz	short loc_464D81
		cmp	dword ptr [ebp-38B0h], 0
		jnz	short loc_464D51
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-35Ch]
		add	edx, edx
		push	$CTW0("???")	; "???"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_464D78
; ---------------------------------------------------------------------------

loc_464D51:				; CODE XREF: .text:00464D29j
		lea	eax, [ebp-3850h]
		mov	edx, 100h
		sub	edx, edi
		push	eax
		mov	ecx, edi
		dec	edx
		lea	eax, [ebp-35Ch]
		add	ecx, ecx
		add	ecx, eax
		push	edx
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax

loc_464D78:				; CODE XREF: .text:00464D4Fj
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_4650F4
; ---------------------------------------------------------------------------

loc_464D81:				; CODE XREF: .text:00464D16j
					; .text:00464D20j
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx],	25h
		jnz	short loc_464DF3
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx+2], 34h
		jnz	short loc_464DF3
		cmp	dword ptr [ebp-3450h], 0
		jnz	short loc_464DC3
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-35Ch]
		add	edx, edx
		push	(offset	a50+2)	; src
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_464DEA
; ---------------------------------------------------------------------------

loc_464DC3:				; CODE XREF: .text:00464D9Bj
		lea	eax, [ebp-33F0h]
		mov	edx, 100h
		sub	edx, edi
		push	eax
		mov	ecx, edi
		dec	edx
		lea	eax, [ebp-35Ch]
		add	ecx, ecx
		add	ecx, eax
		push	edx
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax

loc_464DEA:				; CODE XREF: .text:00464DC1j
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_4650F4
; ---------------------------------------------------------------------------

loc_464DF3:				; CODE XREF: .text:00464D88j
					; .text:00464D92j
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx],	25h
		jnz	short loc_464E6C
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx+2], 41h
		jnz	short loc_464E6C
		cmp	dword ptr [ebp-28h], 0
		jl	short loc_464E12
		cmp	dword ptr [ebp-28h], 8
		jl	short loc_464E38

loc_464E12:				; CODE XREF: .text:00464E0Aj
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-35Ch]
		add	edx, edx
		push	$CTW0("???")	; "???"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_464E63
; ---------------------------------------------------------------------------

loc_464E38:				; CODE XREF: .text:00464E10j
		mov	eax, [ebp-28h]
		mov	ecx, 100h
		sub	ecx, edi
		dec	ecx
		mov	edx, off_52FC84[eax*4]
		mov	eax, edi
		push	edx
		lea	edx, [ebp-35Ch]
		add	eax, eax
		add	eax, edx
		push	ecx
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax

loc_464E63:				; CODE XREF: .text:00464E36j
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_4650F4
; ---------------------------------------------------------------------------

loc_464E6C:				; CODE XREF: .text:00464DFAj
					; .text:00464E04j
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx],	25h
		jnz	short loc_464EE5
		mov	eax, [ebp-4Ch]
		cmp	word ptr [eax+2], 42h
		jnz	short loc_464EE5
		cmp	dword ptr [ebp-2Ch], 0
		jl	short loc_464E8B
		cmp	dword ptr [ebp-2Ch], 8
		jl	short loc_464EB1

loc_464E8B:				; CODE XREF: .text:00464E83j
		mov	ecx, edi
		mov	edx, 100h
		sub	edx, edi
		lea	eax, [ebp-35Ch]
		add	ecx, ecx
		push	$CTW0("???")	; "???"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_464EDC
; ---------------------------------------------------------------------------

loc_464EB1:				; CODE XREF: .text:00464E89j
		mov	edx, [ebp-2Ch]
		mov	eax, 100h
		sub	eax, edi
		dec	eax
		mov	ecx, off_52FC84[edx*4]
		push	ecx
		mov	edx, edi
		lea	ecx, [ebp-35Ch]
		add	edx, edx
		add	edx, ecx
		push	eax
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax

loc_464EDC:				; CODE XREF: .text:00464EAFj
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_4650F4
; ---------------------------------------------------------------------------

loc_464EE5:				; CODE XREF: .text:00464E73j
					; .text:00464E7Dj
		mov	eax, [ebp-4Ch]
		cmp	word ptr [eax],	25h
		jnz	loc_46507F
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx+2], 4Dh
		jnz	loc_46507F
		xor	ebx, ebx
		lea	esi, [ebp-0C60h]

loc_464F08:				; CODE XREF: .text:00464F2Ej
					; .text:00464F56j ...
		mov	eax, ebx
		lea	edx, [ebp-0C60h]
		add	eax, eax
		push	5		; maxlen
		add	eax, edx
		push	offset aLock_0	; s2
		push	eax		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_464F30
		add	ebx, 5
		add	esi, 0Ah
		jmp	short loc_464F08
; ---------------------------------------------------------------------------

loc_464F30:				; CODE XREF: .text:00464F26j
		mov	ecx, ebx
		lea	eax, [ebp-0C60h]
		add	ecx, ecx
		push	4		; maxlen
		add	ecx, eax
		push	offset aBht_1	; s2
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_464F58
		add	ebx, 4
		add	esi, 8
		jmp	short loc_464F08
; ---------------------------------------------------------------------------

loc_464F58:				; CODE XREF: .text:00464F4Ej
		mov	edx, ebx
		lea	ecx, [ebp-0C60h]
		add	edx, edx
		push	4		; maxlen
		add	edx, ecx
		push	offset aBhnt_0	; "BHNT	"
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_464F80
		add	ebx, 5
		add	esi, 0Ah
		jmp	short loc_464F08
; ---------------------------------------------------------------------------

loc_464F80:				; CODE XREF: .text:00464F76j
		cmp	word ptr [esi],	2Bh
		jnz	short loc_464F8F
		inc	ebx
		add	esi, 2
		jmp	loc_464F08
; ---------------------------------------------------------------------------

loc_464F8F:				; CODE XREF: .text:00464F84j
		cmp	word ptr [esi],	2Dh
		jnz	short loc_464F9E
		inc	ebx
		add	esi, 2
		jmp	loc_464F08
; ---------------------------------------------------------------------------

loc_464F9E:				; CODE XREF: .text:00464F93j
		mov	eax, ebx
		lea	edx, [ebp-0C60h]
		add	eax, eax
		push	4		; maxlen
		add	eax, edx
		push	offset aRep_3	; "REP "
		push	eax		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_464FC9
		add	ebx, 4
		add	esi, 8
		jmp	loc_464F08
; ---------------------------------------------------------------------------

loc_464FC9:				; CODE XREF: .text:00464FBCj
		mov	ecx, ebx
		lea	eax, [ebp-0C60h]
		add	ecx, ecx
		push	5		; maxlen
		add	ecx, eax
		push	offset aRepe_2	; "REPE	"
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_464FF4
		add	ebx, 5
		add	esi, 0Ah
		jmp	loc_464F08
; ---------------------------------------------------------------------------

loc_464FF4:				; CODE XREF: .text:00464FE7j
		mov	edx, ebx
		lea	ecx, [ebp-0C60h]
		add	edx, edx
		push	6		; maxlen
		add	edx, ecx
		push	offset aRepne_0	; s2
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_46501F
		add	ebx, 6
		add	esi, 0Ch
		jmp	loc_464F08
; ---------------------------------------------------------------------------

loc_46501F:				; CODE XREF: .text:00465012j
		lea	esi, [ebp+ebx*2-0C60h]
		jmp	short loc_46502C
; ---------------------------------------------------------------------------

loc_465028:				; CODE XREF: .text:00465038j
		inc	ebx
		add	esi, 2

loc_46502C:				; CODE XREF: .text:00465026j
		mov	ax, [esi]
		cmp	ax, 20h
		jz	short loc_46503A
		test	ax, ax
		jnz	short loc_465028

loc_46503A:				; CODE XREF: .text:00465033j
		lea	edx, [ebp-0C60h]
		mov	ecx, 100h
		sub	ecx, edi
		push	edx		; src
		inc	ebx
		mov	[ebp-58h], ecx
		mov	[ebp-5Ch], ebx
		mov	eax, [ebp-5Ch]
		cmp	eax, [ebp-58h]
		jge	short loc_46505C
		lea	edx, [ebp-5Ch]
		jmp	short loc_46505F
; ---------------------------------------------------------------------------

loc_46505C:				; CODE XREF: .text:00465055j
		lea	edx, [ebp-58h]

loc_46505F:				; CODE XREF: .text:0046505Aj
		mov	eax, [edx]
		push	eax		; n
		mov	ecx, edi
		add	ecx, ecx
		lea	eax, [ebp-35Ch]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		add	dword ptr [ebp-4Ch], 2
		jmp	short loc_4650F4
; ---------------------------------------------------------------------------

loc_46507F:				; CODE XREF: .text:00464EECj
					; .text:00464EFAj
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx],	25h
		jnz	short loc_4650E5
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx+2], 2Ah
		jnz	short loc_4650E5
		push	0		; comment
		push	100h		; nsymb
		lea	eax, [ebp-55Ch]
		push	eax		; symb
		push	400h		; mode
		push	0		; amod
		mov	edx, addr0
		add	edx, [ebp-3Ch]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	ecx, [ebp-55Ch]
		mov	edx, edi
		mov	eax, 100h
		push	ecx		; src
		sub	eax, edi
		lea	ecx, [ebp-35Ch]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		add	dword ptr [ebp-4Ch], 2
		jmp	short loc_4650F4
; ---------------------------------------------------------------------------

loc_4650E5:				; CODE XREF: .text:00465086j
					; .text:00465090j
		mov	eax, [ebp-4Ch]
		mov	dx, [eax]
		mov	[ebp+edi*2-35Ch], dx
		inc	edi

loc_4650F4:				; CODE XREF: .text:00464C98j
					; .text:00464D0Aj ...
		add	dword ptr [ebp-4Ch], 2

loc_4650F8:				; CODE XREF: .text:00464C1Cj
					; .text:00464C26j
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx],	0
		jz	short loc_46510D
		cmp	edi, 0FEh
		jl	loc_464C2B

loc_46510D:				; CODE XREF: .text:004650FFj
		mov	word ptr [ebp+edi*2-35Ch], 0
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_46514E
		xor	edi, edi
		jmp	short loc_465122
; ---------------------------------------------------------------------------

loc_465121:				; CODE XREF: .text:00465132j
		inc	edi

loc_465122:				; CODE XREF: .text:0046511Fj
		mov	eax, [ebp-20h]
		dec	eax
		cmp	edi, eax
		jge	short loc_465134
		mov	edx, [ebp-48h]
		cmp	dword ptr [edx+edi*4+4], 0
		jnz	short loc_465121

loc_465134:				; CODE XREF: .text:00465128j
		lea	ecx, [ebp-35Ch]
		push	ecx		; s
		push	31h		; type
		mov	eax, [ebp-48h]
		mov	edx, [eax+edi*4]
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	short loc_4651B9
; ---------------------------------------------------------------------------

loc_46514E:				; CODE XREF: .text:0046511Bj
		lea	ecx, [ebp-35Ch]
		mov	eax, addr0
		push	ecx		; s
		push	31h		; type
		add	eax, [ebp-3Ch]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		cmp	dword_5BDD24, 0
		jz	short loc_4651C8
		mov	edi, 1
		jmp	short loc_4651A9
; ---------------------------------------------------------------------------

loc_465178:				; CODE XREF: .text:004651B5j
		lea	eax, [edi+1]
		lea	edx, [ebp-35Ch]
		push	eax
		push	offset aI_6	; "(%i)"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-35Ch]
		push	ecx		; s
		push	31h		; type
		mov	eax, [ebp-48h]
		mov	edx, [eax+edi*4]
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		inc	edi

loc_4651A9:				; CODE XREF: .text:00465176j
		cmp	edi, [ebp-20h]
		jge	short loc_4651C8
		mov	ecx, [ebp-48h]
		cmp	dword ptr [ecx+edi*4], 0
		jnz	short loc_465178
		jmp	short loc_4651C8
; ---------------------------------------------------------------------------

loc_4651B9:				; CODE XREF: .text:00464B1Ej
					; .text:0046514Cj
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jl	loc_464AB6

loc_4651C8:				; CODE XREF: .text:004649C8j
					; .text:00464A9Fj ...
		inc	dword ptr [ebp-3Ch]
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-44h]
		jb	loc_4649BC

loc_4651D7:				; CODE XREF: .text:0046496Cj
					; .text:004649B6j ...
		cmp	dword ptr [ebp-48h], 0
		jz	short loc_4651E7
		mov	ecx, [ebp-48h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_4651E7:				; CODE XREF: .text:004651DBj
		mov	eax, [ebp-50h]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	edx, [ebp-54h]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-30h]

loc_4651FE:				; CODE XREF: .text:004645C7j
					; .text:0046468Fj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_465208:				; CODE XREF: .text:004655B6p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp+8]
		mov	eax, [ebp+14h]
		shr	eax, 2
		mov	[ebp-4], eax
		xor	eax, eax
		cmp	eax, [ebp-4]
		jnb	short loc_465242

loc_465227:				; CODE XREF: .text:00465240j
		mov	ebx, [ecx]
		xor	ebx, [edx]
		and	ebx, [esi]
		jz	short loc_465233
		xor	eax, eax
		jmp	short loc_465269
; ---------------------------------------------------------------------------

loc_465233:				; CODE XREF: .text:0046522Dj
		add	edx, 4
		add	ecx, 4
		add	esi, 4
		inc	eax
		cmp	eax, [ebp-4]
		jb	short loc_465227

loc_465242:				; CODE XREF: .text:00465225j
		and	dword ptr [ebp+14h], 3
		xor	eax, eax
		cmp	eax, [ebp+14h]
		jnb	short loc_465264

loc_46524D:				; CODE XREF: .text:00465262j
		inc	ecx
		mov	bl, [edx]
		inc	esi
		inc	edx
		xor	bl, [ecx-1]
		and	bl, [esi-1]
		jz	short loc_46525E
		xor	eax, eax
		jmp	short loc_465269
; ---------------------------------------------------------------------------

loc_46525E:				; CODE XREF: .text:00465258j
		inc	eax
		cmp	eax, [ebp+14h]
		jb	short loc_46524D

loc_465264:				; CODE XREF: .text:0046524Bj
		mov	eax, 1

loc_465269:				; CODE XREF: .text:00465231j
					; .text:0046525Cj
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_465270(int, int, int nDenominator)
loc_465270:				; CODE XREF: .text:0046F2A2p
					; .text:0046F2E0p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF564h
		push	ebx
		push	esi
		push	edi
		push	44h		; n
		push	0		; c
		lea	eax, [ebp-0A88h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-20h], edx
		xor	ecx, ecx
		mov	[ebp-8], ecx
		mov	dword ptr [ebp-38h], offset dword_5E1A00
		jmp	loc_465B33
; ---------------------------------------------------------------------------

loc_4652A5:				; CODE XREF: .text:00465B3Cj
		mov	eax, [ebp-38h]
		cmp	dword ptr [eax], 0
		jle	loc_465342
		mov	edx, [ebp-38h]
		mov	eax, [ebp-38h]
		mov	cl, [eax-20h]
		mov	edx, [edx]
		mov	[ebp-25h], cl
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		sub	esi, addr0
		sub	eax, addr0
		add	esi, [ebp+10h]
		mov	[ebp-24h], eax
		mov	ecx, [ebp-38h]
		lea	eax, [ecx-1Fh]
		mov	ecx, copy
		mov	[ebp-3Ch], eax
		mov	eax, [ebp-24h]
		add	ecx, eax
		cmp	esi, [ebp-24h]
		jbe	short loc_465339

loc_4652F0:				; CODE XREF: .text:00465337j
		mov	al, [ecx]
		cmp	al, [ebp-25h]
		jnz	short loc_465330
		mov	eax, [ebp-24h]
		add	eax, edx
		cmp	esi, eax
		jb	short loc_465330
		mov	dword ptr [ebp-4], 1
		mov	eax, [ebp-3Ch]
		cmp	edx, [ebp-4]
		jle	short loc_46532B

loc_46530F:				; CODE XREF: .text:00465329j
		mov	ebx, [ebp-24h]
		add	ebx, [ebp-4]
		mov	edi, copy
		mov	bl, [edi+ebx]
		cmp	bl, [eax]
		jnz	short loc_46532B
		inc	dword ptr [ebp-4]
		inc	eax
		cmp	edx, [ebp-4]
		jg	short loc_46530F

loc_46532B:				; CODE XREF: .text:0046530Dj
					; .text:00465320j
		cmp	edx, [ebp-4]
		jle	short loc_465339

loc_465330:				; CODE XREF: .text:004652F5j
					; .text:004652FEj
		inc	dword ptr [ebp-24h]
		inc	ecx
		cmp	esi, [ebp-24h]
		ja	short loc_4652F0

loc_465339:				; CODE XREF: .text:004652EEj
					; .text:0046532Ej
		cmp	esi, [ebp-24h]
		jbe	loc_465B29

loc_465342:				; CODE XREF: .text:004652ABj
		push	offset word_57EDF8 ; src
		push	104h		; n
		lea	eax, [ebp-244h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		push	offset asc_53B9CE ; "\\"
		mov	edx, 104h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-244h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		mov	edx, [ebp-8]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, offset word_5E17D8
		push	edx		; src
		mov	eax, 104h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-244h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-444h]
		push	eax		; int
		push	0		; int
		lea	edx, [ebp-244h]
		push	edx		; path
		call	loc_4DBD30
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_465411
		lea	ecx, [ebp-444h]
		push	ecx
		mov	eax, [ebp-8]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*4]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, offset word_5E17D8
		push	eax		; arglist
		push	offset aSS_8	; "  '%s': %s"
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		jmp	loc_465B29
; ---------------------------------------------------------------------------

loc_465411:				; CODE XREF: .text:004653D8j
		push	400h		; n
		push	0		; c
		lea	ecx, [ebp-0A44h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_46549C
; ---------------------------------------------------------------------------

loc_46542E:				; CODE XREF: .text:004654A5j
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset stru_5BE1AC ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_465499
		mov	ecx, [ebp-2Ch]
		xor	edx, edx
		mov	eax, [ecx+10h]
		mov	dl, [eax]
		mov	eax, [ebp-2Ch]
		mov	ecx, [ebp+edx*4-0A44h]
		mov	[eax+28h], ecx
		xor	ecx, ecx
		mov	edx, [ebp-2Ch]
		mov	[edx+2Ch], ecx
		mov	eax, [ebp-2Ch]
		mov	edx, [eax+10h]
		mov	eax, [ebp-2Ch]
		mov	ecx, [edx+1]
		mov	[eax+30h], ecx
		mov	edx, [ebp-2Ch]
		mov	ecx, [edx+14h]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+1]
		mov	[edx+34h], eax
		xor	edx, edx
		mov	ecx, [ebp-2Ch]
		mov	eax, [ecx+10h]
		mov	ecx, [ebp-2Ch]
		mov	dl, [eax]
		mov	[ebp+edx*4-0A44h], ecx

loc_465499:				; CODE XREF: .text:00465446j
		inc	dword ptr [ebp-4]

loc_46549C:				; CODE XREF: .text:0046542Cj
		mov	eax, [ebp-4]
		cmp	eax, stru_5BE1AC.n
		jl	short loc_46542E
		push	0		; mode
		push	0		; destfunc
		push	1		; sortfunc
		push	400h		; nexp
		push	14h		; itemsize
		lea	edx, [ebp-0A88h]
		push	edx		; sd
		call	Createsorteddata
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		sub	esi, addr0
		add	esp, 18h
		add	esi, [ebp+10h]
		xor	edi, edi
		sub	eax, addr0
		mov	[ebp-24h], eax
		jmp	loc_465624
; ---------------------------------------------------------------------------

loc_4654E2:				; CODE XREF: .text:0046562Cj
		lea	edx, [edi+4000h]
		cmp	edx, [ebp-24h]
		jnb	short loc_465542
		mov	ecx, [ebp+10h]
		push	ecx		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		mov	edx, [ebp-24h]
		sub	edx, eax
		push	edx		; nNumber
		call	MulDiv
		mov	ecx, [ebp-8]
		shl	ecx, 3
		lea	ecx, [ecx+ecx*4]
		lea	ecx, [ecx+ecx*4]
		lea	ecx, [ecx+ecx*4] ; int
		add	eax, ecx
		cdq			; int
		idiv	dword_5E5D58
		mov	[ebp-18h], eax
		mov	eax, [ebp-18h]	; int
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_46553F
		mov	dword ptr [ebp-20h], 0FFFFFFFFh
		jmp	loc_465B42
; ---------------------------------------------------------------------------

loc_46553F:				; CODE XREF: .text:00465531j
		mov	edi, [ebp-24h]

loc_465542:				; CODE XREF: .text:004654EBj
		mov	eax, copy
		mov	edx, [ebp-24h]
		mov	ebx, [eax+edx+1]
		mov	eax, copy
		mov	edx, [ebp-24h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		mov	eax, [ebp+ecx*4-0A44h]
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_465621

loc_46556F:				; CODE XREF: .text:0046561Bj
		mov	edx, [ebp-2Ch]
		mov	eax, [edx+4]
		mov	edx, [ebp-2Ch]
		mov	ecx, [edx+30h]
		mov	edx, [ebp-2Ch]
		xor	ecx, ebx
		and	ecx, [edx+34h]
		jnz	loc_46560E
		mov	ecx, esi
		sub	ecx, [ebp-24h]
		cmp	eax, ecx
		ja	short loc_46560E
		sub	eax, 5
		push	eax
		mov	eax, [ebp-2Ch]
		mov	eax, [eax+14h]
		add	eax, 5
		push	eax
		mov	edx, [ebp-2Ch]
		mov	ecx, [edx+10h]
		add	ecx, 5
		push	ecx
		mov	eax, copy
		add	eax, [ebp-24h]
		add	eax, 5
		push	eax
		call	loc_465208
		add	esp, 10h
		test	eax, eax
		jz	short loc_46560E
		mov	edx, [ebp-0A88h]
		xor	ecx, ecx
		mov	[ebp-0A9Ch], edx
		mov	dword ptr [ebp-0A98h], 1
		mov	[ebp-0A94h], ecx
		lea	ecx, [ebp-0A9Ch]
		mov	eax, [ebp-24h]
		mov	[ebp-0A90h], eax
		lea	eax, [ebp-0A88h]
		mov	edx, [ebp-2Ch]
		mov	[ebp-0A8Ch], edx
		push	ecx		; item
		push	eax		; sd
		call	Addsorteddata
		add	esp, 8
		mov	edx, [ebp-2Ch]
		inc	dword ptr [edx+2Ch]

loc_46560E:				; CODE XREF: .text:00465583j
					; .text:00465590j ...
		mov	ecx, [ebp-2Ch]
		mov	eax, [ecx+28h]
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jnz	loc_46556F

loc_465621:				; CODE XREF: .text:00465569j
		inc	dword ptr [ebp-24h]

loc_465624:				; CODE XREF: .text:004654DDj
		mov	edx, esi
		sub	edx, 8
		cmp	edx, [ebp-24h]
		ja	loc_4654E2
		xor	ecx, ecx
		mov	[ebp-1Ch], ecx
		xor	eax, eax
		mov	[ebp-10h], eax
		jmp	loc_465AA0
; ---------------------------------------------------------------------------

loc_465641:				; CODE XREF: .text:00465AADj
		push	1		; confirm
		lea	edx, [ebp-0A88h]
		push	edx		; sd
		call	Confirmsorteddata
		add	esp, 8
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_465A7C
; ---------------------------------------------------------------------------

loc_46565C:				; CODE XREF: .text:00465A85j
		mov	eax, [ebp-4]
		push	eax		; index
		lea	edx, [ebp-0A88h]
		push	edx		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_465A79
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+9], 2
		jz	loc_465A79
		mov	eax, [ebp-30h]
		mov	edx, [eax+0Ch]
		mov	[ebp-24h], edx
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+10h]
		mov	[ebp-2Ch], eax
		mov	edx, [ebp-2Ch]
		cmp	dword ptr [edx+2Ch], 1
		jle	short loc_4656B3
		mov	ecx, [ebp-30h]
		and	dword ptr [ecx+8], 0FFFFFDFFh
		jmp	loc_465A79
; ---------------------------------------------------------------------------

loc_4656B3:				; CODE XREF: .text:004656A2j
		mov	dword ptr [ebp-14h], 1
		xor	esi, esi
		mov	eax, [ebp-2Ch]
		mov	edx, [eax+20h]
		mov	[ebp-34h], edx
		jmp	loc_4657EA
; ---------------------------------------------------------------------------

loc_4656CA:				; CODE XREF: .text:004657F0j
		mov	ecx, [ebp-34h]
		mov	eax, [ecx]
		mov	ebx, eax
		add	ebx, [ebp-24h]
		lea	edx, [ebx+4]
		cmp	edx, _size
		jnb	loc_4657F6
		mov	ecx, copy
		mov	edx, [ebp-2Ch]
		mov	edi, [ecx+ebx]
		mov	ecx, [edx+10h]
		sub	edi, [ecx+eax]
		mov	eax, [ebp-34h]
		cmp	byte ptr [eax+8], 0
		jnz	short loc_465709
		add	ebx, addr0
		add	ebx, 4
		add	edi, ebx

loc_465709:				; CODE XREF: .text:004656FCj
		cmp	edi, 10000h
		jb	loc_4657E5
		cmp	edi, 0FFFF0000h
		jnb	loc_4657E5
		push	100h		; nname
		lea	eax, [ebp-444h]
		push	eax		; _name
		push	4Bh		; type
		mov	edx, [ebp-34h]
		mov	ecx, [edx+4]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	loc_4657F6
		mov	ebx, edi
		test	ebx, ebx
		jz	short loc_46578E

loc_46574C:				; CODE XREF: .text:0046578Cj
		push	100h		; nname
		lea	eax, [ebp-644h]
		push	eax		; _name
		push	22h		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_465781
		lea	edx, [ebp-644h]
		push	edx		; s2
		lea	ecx, [ebp-444h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_46578E

loc_465781:				; CODE XREF: .text:00465765j
		push	ebx		; _addr
		call	Followjump
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_46574C

loc_46578E:				; CODE XREF: .text:0046574Aj
					; .text:0046577Fj
		test	ebx, ebx
		jnz	short loc_4657E5
		cmp	edi, addr0
		jb	short loc_4657A2
		cmp	edi, addr1
		jb	short loc_4657A9

loc_4657A2:				; CODE XREF: .text:00465798j
		xor	eax, eax
		mov	[ebp-14h], eax
		jmp	short loc_4657E5
; ---------------------------------------------------------------------------

loc_4657A9:				; CODE XREF: .text:004657A0j
		push	100h		; nname
		lea	edx, [ebp-644h]
		push	edx		; _name
		push	2Bh		; type
		push	edi		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4657CB
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_4657E5
; ---------------------------------------------------------------------------

loc_4657CB:				; CODE XREF: .text:004657C2j
		lea	eax, [ebp-644h]
		push	eax		; s2
		lea	edx, [ebp-444h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4657F6

loc_4657E5:				; CODE XREF: .text:0046570Fj
					; .text:0046571Bj ...
		inc	esi
		add	dword ptr [ebp-34h], 9

loc_4657EA:				; CODE XREF: .text:004656C5j
		mov	ecx, [ebp-2Ch]
		cmp	esi, [ecx+24h]
		jl	loc_4656CA

loc_4657F6:				; CODE XREF: .text:004656DDj
					; .text:00465740j ...
		mov	eax, [ebp-2Ch]
		cmp	esi, [eax+24h]
		jge	short loc_46580D
		mov	edx, [ebp-30h]
		and	dword ptr [edx+8], 0FFFFFDFFh
		jmp	loc_465A79
; ---------------------------------------------------------------------------

loc_46580D:				; CODE XREF: .text:004657FCj
		cmp	dword ptr [ebp-14h], 0
		jnz	loc_46589C
		xor	ebx, ebx
		cmp	dword ptr [ebp-4], 0
		jle	short loc_465847
		mov	eax, [ebp-4]
		dec	eax
		push	eax		; index
		lea	edx, [ebp-0A88h]
		push	edx		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_465847
		mov	ecx, [eax+0Ch]
		mov	eax, [ebp-30h]
		cmp	ecx, [eax+0Ch]
		jnz	short loc_465847
		mov	ebx, 1

loc_465847:				; CODE XREF: .text:0046581Dj
					; .text:00465835j ...
		mov	eax, [ebp-0A88h]
		dec	eax
		cmp	eax, [ebp-4]
		jle	short loc_46587F
		test	ebx, ebx
		jnz	short loc_46587F
		mov	edx, [ebp-4]
		inc	edx
		push	edx		; index
		lea	ecx, [ebp-0A88h]
		push	ecx		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_46587F
		mov	eax, [eax+0Ch]
		mov	edx, [ebp-30h]
		cmp	eax, [edx+0Ch]
		jnz	short loc_46587F
		mov	ebx, 1

loc_46587F:				; CODE XREF: .text:00465851j
					; .text:00465855j ...
		test	ebx, ebx
		jnz	short loc_46589C
		mov	ecx, [ebp-10h]
		mov	eax, 800h
		shr	eax, cl
		mov	edx, [ebp-2Ch]
		cmp	eax, [edx+4]
		jnb	short loc_46589C
		mov	dword ptr [ebp-14h], 1

loc_46589C:				; CODE XREF: .text:00465811j
					; .text:00465881j ...
		cmp	dword ptr [ebp-14h], 0
		jz	loc_465A79
		xor	esi, esi
		mov	eax, [ebp-2Ch]
		mov	ebx, [eax+18h]
		jmp	short loc_46592A
; ---------------------------------------------------------------------------

loc_4658B0:				; CODE XREF: .text:00465930j
		push	100h		; nname
		lea	eax, [ebp-444h]
		push	eax		; _name
		push	4Bh		; type
		mov	edx, [ebx+4]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_465926
		lea	ecx, [ebp-444h]
		mov	eax, addr0
		push	ecx		; s
		push	2Bh		; type
		add	eax, [ebp-24h]
		add	eax, [ebx]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		push	0		; recurs
		lea	edx, [ebp-644h]
		push	edx		; undecorated
		lea	ecx, [ebp-444h]
		push	ecx		; _name
		call	DemanglenameW
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_465923
		lea	eax, [ebp-644h]
		mov	edx, addr0
		push	eax		; s
		push	2Ch		; type
		add	edx, [ebp-24h]
		add	edx, [ebx]
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_465923:				; CODE XREF: .text:00465904j
		inc	dword ptr [ebp-1Ch]

loc_465926:				; CODE XREF: .text:004658CCj
		inc	esi
		add	ebx, 8

loc_46592A:				; CODE XREF: .text:004658AEj
		mov	ecx, [ebp-2Ch]
		cmp	esi, [ecx+1Ch]
		jl	loc_4658B0
		xor	esi, esi
		mov	eax, [ebp-2Ch]
		mov	edx, [eax+20h]
		mov	[ebp-34h], edx
		jmp	loc_4659FB
; ---------------------------------------------------------------------------

loc_465946:				; CODE XREF: .text:00465A01j
		mov	ecx, [ebp-34h]
		mov	eax, [ecx]
		mov	ebx, eax
		add	ebx, [ebp-24h]
		lea	edx, [ebx+4]
		cmp	edx, _size
		jnb	loc_4659F6
		mov	ecx, copy
		mov	edx, [ebp-2Ch]
		mov	edi, [ecx+ebx]
		mov	ecx, [edx+10h]
		sub	edi, [ecx+eax]
		mov	eax, [ebp-34h]
		cmp	byte ptr [eax+8], 0
		jnz	short loc_465985
		add	ebx, addr0
		add	ebx, 4
		add	edi, ebx

loc_465985:				; CODE XREF: .text:00465978j
		cmp	edi, 10000h
		jb	short loc_4659F6
		cmp	edi, 0FFFF0000h
		jnb	short loc_4659F6
		push	100h		; nname
		lea	eax, [ebp-444h]
		push	eax		; _name
		push	4Bh		; type
		mov	edx, [ebp-34h]
		mov	ecx, [edx+4]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4659F6
		lea	eax, [ebp-444h]
		push	eax		; s
		push	2Bh		; type
		push	edi		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		push	0		; recurs
		lea	edx, [ebp-644h]
		push	edx		; undecorated
		lea	ecx, [ebp-444h]
		push	ecx		; _name
		call	DemanglenameW
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_4659F6
		lea	eax, [ebp-644h]
		push	eax		; s
		push	2Ch		; type
		push	edi		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_4659F6:				; CODE XREF: .text:00465959j
					; .text:0046598Bj ...
		inc	esi
		add	dword ptr [ebp-34h], 9

loc_4659FB:				; CODE XREF: .text:00465941j
		mov	edx, [ebp-2Ch]
		cmp	esi, [edx+24h]
		jl	loc_465946
		mov	ecx, [ebp-30h]
		and	dword ptr [ecx+8], 0FFFFFDFFh
		mov	esi, [ebp-4]
		dec	esi
		test	esi, esi
		jl	short loc_465A44

loc_465A19:				; CODE XREF: .text:00465A42j
		push	esi		; index
		lea	eax, [ebp-0A88h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_465A44
		mov	edx, [eax+0Ch]
		mov	ecx, [ebp-30h]
		cmp	edx, [ecx+0Ch]
		jnz	short loc_465A44
		and	dword ptr [eax+8], 0FFFFFDFFh
		dec	esi
		test	esi, esi
		jge	short loc_465A19

loc_465A44:				; CODE XREF: .text:00465A17j
					; .text:00465A2Bj ...
		mov	esi, [ebp-4]
		inc	esi
		jmp	short loc_465A71
; ---------------------------------------------------------------------------

loc_465A4A:				; CODE XREF: .text:00465A77j
		push	esi		; index
		lea	eax, [ebp-0A88h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_465A79
		mov	edx, [eax+0Ch]
		mov	ecx, [ebp-30h]
		cmp	edx, [ecx+0Ch]
		jnz	short loc_465A79
		and	dword ptr [eax+8], 0FFFFFDFFh
		inc	esi

loc_465A71:				; CODE XREF: .text:00465A48j
		cmp	esi, [ebp-0A88h]
		jl	short loc_465A4A

loc_465A79:				; CODE XREF: .text:00465676j
					; .text:00465683j ...
		inc	dword ptr [ebp-4]

loc_465A7C:				; CODE XREF: .text:00465657j
		mov	eax, [ebp-4]
		cmp	eax, [ebp-0A88h]
		jl	loc_46565C
		lea	edx, [ebp-0A88h]
		push	edx		; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		call	Mergequickdata
		inc	dword ptr [ebp-10h]

loc_465AA0:				; CODE XREF: .text:0046563Cj
		cmp	dword ptr [ebp-10h], 7
		jge	short loc_465AB3
		cmp	dword ptr [ebp-0A88h], 0
		jg	loc_465641

loc_465AB3:				; CODE XREF: .text:00465AA4j
		cmp	dword ptr [ebp-1Ch], 1
		jnz	short loc_465AED
		mov	ecx, [ebp-8]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, offset word_5E17D8
		push	ecx		; arglist
		push	offset a1LibraryFuncti ; "  1 library function from '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_465B29
; ---------------------------------------------------------------------------

loc_465AED:				; CODE XREF: .text:00465AB7j
		cmp	dword ptr [ebp-1Ch], 1
		jle	short loc_465B29
		mov	edx, [ebp-8]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, offset word_5E17D8
		push	edx
		mov	eax, [ebp-1Ch]
		push	eax		; arglist
		push	offset aILibraryFuncti ; "  %i library functions from '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_465B29:				; CODE XREF: .text:0046533Cj
					; .text:0046540Cj ...
		inc	dword ptr [ebp-8]
		add	dword ptr [ebp-38h], 22Ch

loc_465B33:				; CODE XREF: .text:004652A0j
		mov	edx, [ebp-8]
		cmp	edx, dword_5E5D58
		jl	loc_4652A5

loc_465B42:				; CODE XREF: .text:0046553Aj
		lea	ecx, [ebp-0A88h]
		push	ecx		; sd
		call	Destroysorteddata
		pop	ecx
		mov	eax, [ebp-20h]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_465B5C:				; CODE XREF: .text:0046787Dp
					; .text:00468348p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+14h]
		mov	ecx, [ebp+0Ch]
		lea	eax, [ecx+7]
		cmp	eax, _size
		jbe	short loc_465B7B
		xor	eax, eax
		jmp	loc_466383
; ---------------------------------------------------------------------------

loc_465B7B:				; CODE XREF: .text:00465B72j
		xor	esi, esi
		mov	eax, copy
		add	eax, ecx
		xor	ebx, ebx
		mov	bl, [eax]
		cmp	ebx, 3Bh
		jg	loc_465C8F
		jz	loc_465DE9	; jumptable 00465BA0 cases 3,43
		cmp	ebx, 39h	; switch 58 cases
		ja	loc_46634E	; jumptable 00465BA0 default case
		jmp	ds:off_465BA7[ebx*4] ; switch jump
; ---------------------------------------------------------------------------
off_465BA7	dd offset loc_46634E, offset loc_465D4F, offset	loc_46634E
					; DATA XREF: .text:00465BA0r
		dd offset loc_465DE9, offset loc_465E83, offset	loc_465EA5 ; jump table	for switch statement
		dd offset loc_46634E, offset loc_46634E, offset	loc_465EC4
		dd offset loc_465F19, offset loc_465EC4, offset	loc_465F19
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_465EC4
		dd offset loc_465F19, offset loc_465EC4, offset	loc_465F19
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_465D4F
		dd offset loc_46634E, offset loc_465DE9, offset	loc_465F68
		dd offset loc_465F88, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_46634E, offset loc_46634E, offset	loc_46634E
		dd offset loc_465D4F
; ---------------------------------------------------------------------------

loc_465C8F:				; CODE XREF: .text:00465B8Bj
		cmp	ebx, 83h
		jg	short loc_465CF8
		jz	loc_466129
		cmp	ebx, 48h
		jge	short loc_465CCD
		sub	ebx, 3Ch
		jz	loc_465FA5
		dec	ebx
		jz	loc_465FC7
		add	ebx, 0FFFFFFFDh
		sub	ebx, 4
		jb	loc_465FE6
		dec	ebx
		sub	ebx, 3
		jb	loc_466028
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465CCD:				; CODE XREF: .text:00465CA0j
		add	ebx, 0FFFFFFB8h
		sub	ebx, 4
		jb	loc_46604A
		dec	ebx
		sub	ebx, 3
		jb	loc_46608C
		sub	ebx, 30h
		jz	loc_4660AE
		dec	ebx
		jz	loc_466129
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465CF8:				; CODE XREF: .text:00465C95j
		cmp	ebx, 0F6h
		jg	short loc_465D2E
		jz	loc_466203
		sub	ebx, 84h
		jz	loc_465EC4	; jumptable 00465BA0 cases 8,10,32,34
		dec	ebx
		jz	loc_465F19	; jumptable 00465BA0 cases 9,11,33,35
		sub	ebx, 23h
		jz	loc_4661B1
		dec	ebx
		jz	loc_4661DB
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465D2E:				; CODE XREF: .text:00465CFEj
		sub	ebx, 0F7h
		jz	loc_46624C
		sub	ebx, 7
		jz	loc_466290
		dec	ebx
		jz	loc_4662F5
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465D4F:				; CODE XREF: .text:00465BA0j
					; DATA XREF: .text:off_465BA7o
		xor	ebx, ebx	; jumptable 00465BA0 cases 1,41,57
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	edi, [ebp+8]
		mov	bl, [eax+1]
		and	ebx, 7
		cmp	ebx, [edi+18h]
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		sar	ebx, 3
		and	ebx, 7
		mov	[ebp-4], ebx
		mov	ebx, [ebp+8]
		mov	edi, [ebp-4]
		cmp	byte ptr [ebx+edi+9Ch],	0
		jz	loc_46634E	; jumptable 00465BA0 default case
		cmp	byte ptr [eax],	1
		jnz	short loc_465DB7
		mov	ebx, [ebp+8]
		mov	esi, [ebp-4]
		mov	ebx, [ebx+esi*4+0A4h]
		mov	esi, [ebp+10h]
		neg	ebx
		mov	[esi], ebx
		jmp	short loc_465DC9
; ---------------------------------------------------------------------------

loc_465DB7:				; CODE XREF: .text:00465D9Fj
		mov	ebx, [ebp+8]
		mov	esi, [ebp-4]
		mov	ebx, [ebx+esi*4+0A4h]
		mov	esi, [ebp+10h]
		mov	[esi], ebx

loc_465DC9:				; CODE XREF: .text:00465DB5j
		mov	ebx, [ebp+8]
		mov	esi, 1
		mov	ebx, [ebx+18h]
		mov	[edx], ebx
		cmp	byte ptr [eax],	39h
		mov	ebx, [ebp+18h]
		setz	al
		and	eax, 1
		mov	[ebx], eax
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465DE9:				; CODE XREF: .text:00465B91j
					; .text:00465BA0j
					; DATA XREF: ...
		xor	ebx, ebx	; jumptable 00465BA0 cases 3,43
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	edi, [ebp+8]
		mov	bl, [eax+1]
		sar	ebx, 3
		and	ebx, 7
		cmp	ebx, [edi+18h]
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		mov	[ebp-4], ebx
		mov	ebx, [ebp+8]
		mov	edi, [ebp-4]
		cmp	byte ptr [ebx+edi+9Ch],	0
		jz	loc_46634E	; jumptable 00465BA0 default case
		cmp	byte ptr [eax],	1
		jnz	short loc_465E51
		mov	ebx, [ebp+8]
		mov	esi, [ebp-4]
		mov	ebx, [ebx+esi*4+0A4h]
		mov	esi, [ebp+10h]
		neg	ebx
		mov	[esi], ebx
		jmp	short loc_465E63
; ---------------------------------------------------------------------------

loc_465E51:				; CODE XREF: .text:00465E39j
		mov	ebx, [ebp+8]
		mov	esi, [ebp-4]
		mov	ebx, [ebx+esi*4+0A4h]
		mov	esi, [ebp+10h]
		mov	[esi], ebx

loc_465E63:				; CODE XREF: .text:00465E4Fj
		mov	ebx, [ebp+8]
		mov	esi, 1
		mov	ebx, [ebx+18h]
		mov	[edx], ebx
		cmp	byte ptr [eax],	3Bh
		mov	ebx, [ebp+18h]
		setz	al
		and	eax, 1
		mov	[ebx], eax
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465E83:				; CODE XREF: .text:00465BA0j
					; DATA XREF: .text:off_465BA7o
		movzx	eax, byte ptr [eax+1] ;	jumptable 00465BA0 case	4
		mov	ebx, [ebp+10h]
		mov	esi, 1
		neg	eax
		mov	[ebx], eax
		mov	dword ptr [edx], 80h
		mov	eax, [ebp+18h]
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465EA5:				; CODE XREF: .text:00465BA0j
					; DATA XREF: .text:off_465BA7o
		mov	ebx, [ebp+10h]	; jumptable 00465BA0 case 5
		mov	eax, [eax+1]
		neg	eax
		mov	[ebx], eax
		xor	eax, eax
		mov	[edx], eax
		xor	ebx, ebx
		mov	eax, [ebp+18h]
		mov	esi, 1
		mov	[eax], ebx
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465EC4:				; CODE XREF: .text:00465BA0j
					; .text:00465D0Cj
					; DATA XREF: ...
		xor	ebx, ebx	; jumptable 00465BA0 cases 8,10,32,34
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		mov	[edx], ebx
		movzx	eax, byte ptr [eax+1]
		sar	eax, 3
		mov	ebx, [edx]
		and	eax, 7
		cmp	ebx, eax
		jnz	loc_46634E	; jumptable 00465BA0 default case
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	esi, 1
		mov	[eax], ebx
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		or	dword ptr [edx], 80h
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465F19:				; CODE XREF: .text:00465BA0j
					; .text:00465D13j
					; DATA XREF: ...
		xor	ebx, ebx	; jumptable 00465BA0 cases 9,11,33,35
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		mov	[edx], ebx
		movzx	eax, byte ptr [eax+1]
		sar	eax, 3
		mov	ebx, [edx]
		and	eax, 7
		cmp	ebx, eax
		jnz	loc_46634E	; jumptable 00465BA0 default case
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	esi, 1
		mov	[eax], ebx
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465F68:				; CODE XREF: .text:00465BA0j
					; DATA XREF: .text:off_465BA7o
		movzx	eax, byte ptr [eax+1] ;	jumptable 00465BA0 case	44
		mov	ebx, [ebp+10h]
		mov	esi, 1
		mov	[ebx], eax
		mov	dword ptr [edx], 80h
		mov	eax, [ebp+18h]
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465F88:				; CODE XREF: .text:00465BA0j
					; DATA XREF: .text:off_465BA7o
		mov	eax, [eax+1]	; jumptable 00465BA0 case 45
		mov	ebx, [ebp+10h]
		mov	[ebx], eax
		xor	eax, eax
		mov	[edx], eax
		mov	eax, [ebp+18h]
		xor	ebx, ebx
		mov	[eax], ebx
		mov	esi, 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465FA5:				; CODE XREF: .text:00465CA5j
		movzx	eax, byte ptr [eax+1]
		mov	ebx, [ebp+10h]
		mov	esi, 1
		mov	[ebx], eax
		mov	dword ptr [edx], 80h
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465FC7:				; CODE XREF: .text:00465CACj
		mov	eax, [eax+1]
		mov	ebx, [ebp+10h]
		mov	[ebx], eax
		xor	eax, eax
		mov	[edx], eax
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		mov	esi, 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_465FE6:				; CODE XREF: .text:00465CB8j
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 0FFFFFFFFh
		movzx	eax, byte ptr [eax]
		and	eax, 7
		mov	[edx], eax
		mov	eax, [ebp+8]
		mov	eax, [eax+18h]
		cmp	eax, 0FFFFFFFFh
		jz	short loc_466017
		test	al, 80h
		jz	short loc_466017
		mov	ecx, [ebp+18h]
		mov	dword ptr [ecx], 0FFFFFFFFh
		or	dword ptr [edx], 80h
		jmp	short loc_46601E
; ---------------------------------------------------------------------------

loc_466017:				; CODE XREF: .text:00466000j
					; .text:00466004j
		mov	edx, [ebp+18h]
		xor	eax, eax
		mov	[edx], eax

loc_46601E:				; CODE XREF: .text:00466015j
		mov	eax, 1
		jmp	loc_466383
; ---------------------------------------------------------------------------

loc_466028:				; CODE XREF: .text:00465CC2j
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 0FFFFFFFFh
		movzx	eax, byte ptr [eax]
		and	eax, 7
		xor	ecx, ecx
		mov	[edx], eax
		mov	eax, 1
		mov	edx, [ebp+18h]
		mov	[edx], ecx
		jmp	loc_466383
; ---------------------------------------------------------------------------

loc_46604A:				; CODE XREF: .text:00465CD3j
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 1
		movzx	eax, byte ptr [eax]
		and	eax, 7
		mov	[edx], eax
		mov	ecx, [ebp+8]
		mov	eax, [ecx+18h]
		cmp	eax, 0FFFFFFFFh
		jz	short loc_46607B
		test	al, 80h
		jz	short loc_46607B
		mov	ecx, [ebp+18h]
		mov	dword ptr [ecx], 0FFFFFFFFh
		or	dword ptr [edx], 80h
		jmp	short loc_466082
; ---------------------------------------------------------------------------

loc_46607B:				; CODE XREF: .text:00466064j
					; .text:00466068j
		mov	edx, [ebp+18h]
		xor	eax, eax
		mov	[edx], eax

loc_466082:				; CODE XREF: .text:00466079j
		mov	eax, 1
		jmp	loc_466383
; ---------------------------------------------------------------------------

loc_46608C:				; CODE XREF: .text:00465CDDj
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 1
		movzx	eax, byte ptr [eax]
		and	eax, 7
		xor	ecx, ecx
		mov	[edx], eax
		mov	eax, 1
		mov	edx, [ebp+18h]
		mov	[edx], ecx
		jmp	loc_466383
; ---------------------------------------------------------------------------

loc_4660AE:				; CODE XREF: .text:00465CE6j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		or	ebx, 80h
		mov	[edx], ebx
		xor	ebx, ebx
		mov	bl, [eax+2]
		mov	esi, [ebp+10h]
		mov	[esi], ebx
		movzx	eax, byte ptr [eax+1]
		and	eax, 38h
		test	eax, eax
		jnz	short loc_4660FA
		mov	eax, [ebp+10h]
		neg	ebx
		mov	[eax], ebx
		xor	ebx, ebx
		mov	eax, [ebp+18h]
		mov	[eax], ebx
		jmp	short loc_46611F
; ---------------------------------------------------------------------------

loc_4660FA:				; CODE XREF: .text:004660E8j
		cmp	eax, 28h
		jnz	short loc_466108
		mov	eax, [ebp+18h]
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_46611F
; ---------------------------------------------------------------------------

loc_466108:				; CODE XREF: .text:004660FDj
		cmp	eax, 38h
		jnz	short loc_466118
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		jmp	short loc_46611F
; ---------------------------------------------------------------------------

loc_466118:				; CODE XREF: .text:0046610Bj
		xor	eax, eax
		jmp	loc_466383
; ---------------------------------------------------------------------------

loc_46611F:				; CODE XREF: .text:004660F8j
					; .text:00466106j ...
		mov	esi, 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_466129:				; CODE XREF: .text:00465C97j
					; .text:00465CEDj
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		mov	[edx], ebx
		cmp	byte ptr [eax],	81h
		jnz	short loc_466159
		mov	ebx, [eax+2]
		mov	esi, [ebp+10h]
		mov	[esi], ebx
		jmp	short loc_466162
; ---------------------------------------------------------------------------

loc_466159:				; CODE XREF: .text:0046614Dj
		movsx	ebx, byte ptr [eax+2]
		mov	esi, [ebp+10h]
		mov	[esi], ebx

loc_466162:				; CODE XREF: .text:00466157j
		movzx	eax, byte ptr [eax+1]
		and	eax, 38h
		test	eax, eax
		jnz	short loc_466182
		mov	eax, [ebp+10h]
		mov	ebx, [ebp+10h]
		mov	eax, [eax]
		neg	eax
		mov	[ebx], eax
		xor	ebx, ebx
		mov	eax, [ebp+18h]
		mov	[eax], ebx
		jmp	short loc_4661A7
; ---------------------------------------------------------------------------

loc_466182:				; CODE XREF: .text:0046616Bj
		cmp	eax, 28h
		jnz	short loc_466190
		mov	eax, [ebp+18h]
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_4661A7
; ---------------------------------------------------------------------------

loc_466190:				; CODE XREF: .text:00466185j
		cmp	eax, 38h
		jnz	short loc_4661A0
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		jmp	short loc_4661A7
; ---------------------------------------------------------------------------

loc_4661A0:				; CODE XREF: .text:00466193j
		xor	eax, eax
		jmp	loc_466383
; ---------------------------------------------------------------------------

loc_4661A7:				; CODE XREF: .text:00466180j
					; .text:0046618Ej ...
		mov	esi, 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_4661B1:				; CODE XREF: .text:00465D1Cj
		cmp	byte ptr [eax+1], 0FFh
		jnz	loc_46634E	; jumptable 00465BA0 default case
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	[eax], ebx
		mov	dword ptr [edx], 80h
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		mov	esi, 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_4661DB:				; CODE XREF: .text:00465D23j
		cmp	dword ptr [eax+1], 0FFFFFFFFh
		jnz	loc_46634E	; jumptable 00465BA0 default case
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	[eax], ebx
		xor	eax, eax
		mov	[edx], eax
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		mov	esi, 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_466203:				; CODE XREF: .text:00465D00j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0F8h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		cmp	byte ptr [eax+2], 0FFh
		jnz	loc_46634E	; jumptable 00465BA0 default case
		mov	ebx, [ebp+10h]
		xor	esi, esi
		mov	[ebx], esi
		mov	esi, 1
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		or	eax, 80h
		mov	[edx], eax
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_46624C:				; CODE XREF: .text:00465D34j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0F8h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		cmp	dword ptr [eax+2], 0FFFFFFFFh
		jnz	loc_46634E	; jumptable 00465BA0 default case
		mov	ebx, [ebp+10h]
		xor	esi, esi
		mov	[ebx], esi
		mov	esi, 1
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		mov	[edx], eax
		mov	eax, [ebp+18h]
		mov	dword ptr [eax], 1
		jmp	loc_46634E	; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_466290:				; CODE XREF: .text:00465D3Dj
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_46634E	; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		or	ebx, 80h
		mov	[edx], ebx
		movzx	eax, byte ptr [eax+1]
		and	eax, 38h
		test	eax, eax
		jnz	short loc_4662D9
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	esi, 1
		mov	dword ptr [eax], 0FFFFFFFFh
		mov	eax, [ebp+18h]
		mov	[eax], ebx
		jmp	short loc_46634E ; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_4662D9:				; CODE XREF: .text:004662C0j
		cmp	eax, 8
		jnz	short loc_46634E ; jumptable 00465BA0 default case
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	esi, 1
		mov	dword ptr [eax], 1
		mov	eax, [ebp+18h]
		mov	[eax], ebx
		jmp	short loc_46634E ; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_4662F5:				; CODE XREF: .text:00465D44j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	short loc_46634E ; jumptable 00465BA0 default case
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		mov	[edx], ebx
		movzx	eax, byte ptr [eax+1]
		and	eax, 38h
		test	eax, eax
		jnz	short loc_466334
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	esi, 1
		mov	dword ptr [eax], 0FFFFFFFFh
		mov	eax, [ebp+18h]
		mov	[eax], ebx
		jmp	short loc_46634E ; jumptable 00465BA0 default case
; ---------------------------------------------------------------------------

loc_466334:				; CODE XREF: .text:0046631Bj
		cmp	eax, 8
		jnz	short loc_46634E ; jumptable 00465BA0 default case
		mov	eax, [ebp+10h]
		xor	ebx, ebx
		mov	esi, 1
		mov	dword ptr [eax], 1
		mov	eax, [ebp+18h]
		mov	[eax], ebx

loc_46634E:				; CODE XREF: .text:00465B9Aj
					; .text:00465BA0j ...
		cmp	dword ptr [edx], 4 ; jumptable 00465BA0	default	case
		jnz	short loc_466355
		xor	esi, esi

loc_466355:				; CODE XREF: .text:00466351j
		mov	eax, 1
		mov	edx, dword_5E5D70
		add	edx, ecx
		jmp	short loc_466379
; ---------------------------------------------------------------------------

loc_466364:				; CODE XREF: .text:0046637Fj
		mov	ebx, eax
		add	ebx, ecx
		mov	edi, dword_5E5D74
		test	byte ptr [edi+ebx*2], 4
		jz	short loc_466378
		xor	eax, eax
		jmp	short loc_466383
; ---------------------------------------------------------------------------

loc_466378:				; CODE XREF: .text:00466372j
		inc	eax

loc_466379:				; CODE XREF: .text:00466362j
		xor	ebx, ebx
		mov	bl, [edx]
		cmp	eax, ebx
		jl	short loc_466364
		mov	eax, esi

loc_466383:				; CODE XREF: .text:00465B76j
					; .text:00466023j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_46638C:				; CODE XREF: .text:0046799Bp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4]
		mov	edx, eax
		add	edx, 6
		cmp	edx, _size
		jbe	short loc_4663AF
		xor	eax, eax
		jmp	loc_4665D7
; ---------------------------------------------------------------------------

loc_4663AF:				; CODE XREF: .text:004663A6j
		add	eax, copy
		xor	edx, edx
		xor	ebx, ebx
		mov	bl, [eax]
		cmp	ebx, 25h
		jg	short loc_4663E2
		jz	loc_46651F
		sub	ebx, 0Fh
		jz	short loc_4663FC
		sub	ebx, 12h
		jz	loc_466469
		sub	ebx, 2
		jz	loc_4664C7
		jmp	loc_466595
; ---------------------------------------------------------------------------

loc_4663E2:				; CODE XREF: .text:004663BEj
		sub	ebx, 81h
		jz	loc_466528
		sub	ebx, 2
		jz	loc_46655F
		jmp	loc_466595
; ---------------------------------------------------------------------------

loc_4663FC:				; CODE XREF: .text:004663C9j
		cmp	byte ptr [eax+1], 0B6h
		jnz	loc_466595
		xor	ebx, ebx
		mov	bl, [eax+2]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	short loc_466448
		mov	ecx, [ecx+18h]
		xor	ebx, ebx
		mov	bl, [eax+2]
		and	ebx, 7
		or	ebx, 80h
		cmp	ecx, ebx
		jnz	loc_466595
		movzx	eax, byte ptr [eax+2]
		sar	eax, 3
		mov	edx, 0FFh
		and	eax, 7
		mov	[esi], eax
		jmp	loc_466595
; ---------------------------------------------------------------------------

loc_466448:				; CODE XREF: .text:00466417j
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jnz	loc_466595
		xor	ecx, ecx
		mov	edx, 0FFh
		mov	cl, [eax+2]
		sar	ecx, 3
		and	ecx, 7
		mov	[esi], ecx
		jmp	loc_466595
; ---------------------------------------------------------------------------

loc_466469:				; CODE XREF: .text:004663CEj
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_466595
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jz	short loc_466498
		movzx	edi, byte ptr [eax+1]
		and	edi, 7
		mov	ebx, [ecx+18h]
		cmp	ebx, edi
		jnz	loc_466595

loc_466498:				; CODE XREF: .text:00466484j
		xor	ebx, ebx
		mov	bl, [eax+1]
		sar	ebx, 3
		and	ebx, 7
		cmp	byte ptr [ecx+ebx+9Ch],	0
		jz	loc_466595
		movzx	eax, byte ptr [eax+1]
		sar	eax, 3
		and	eax, 7
		mov	edx, [ecx+eax*4+0A4h]
		jmp	loc_466595
; ---------------------------------------------------------------------------

loc_4664C7:				; CODE XREF: .text:004663D7j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	loc_466595
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jz	short loc_4664F9
		movzx	edi, byte ptr [eax+1]
		sar	edi, 3
		mov	ebx, [ecx+18h]
		and	edi, 7
		cmp	ebx, edi
		jnz	loc_466595

loc_4664F9:				; CODE XREF: .text:004664E2j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		cmp	byte ptr [ecx+ebx+9Ch],	0
		jz	loc_466595
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		mov	edx, [ecx+eax*4+0A4h]
		jmp	short loc_466595
; ---------------------------------------------------------------------------

loc_46651F:				; CODE XREF: .text:004663C0j
		mov	edx, [eax+1]
		xor	eax, eax
		mov	[esi], eax
		jmp	short loc_466595
; ---------------------------------------------------------------------------

loc_466528:				; CODE XREF: .text:004663E8j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0F8h
		cmp	ebx, 0E0h
		jnz	short loc_466595
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jz	short loc_466550
		mov	ecx, [ecx+18h]
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		cmp	ecx, ebx
		jnz	short loc_466595

loc_466550:				; CODE XREF: .text:0046653Fj
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 7
		mov	[esi], edx
		mov	edx, [eax+2]
		jmp	short loc_466595
; ---------------------------------------------------------------------------

loc_46655F:				; CODE XREF: .text:004663F1j
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 0F8h
		cmp	ebx, 0E0h
		jnz	short loc_466595
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jz	short loc_466587
		mov	ecx, [ecx+18h]
		xor	ebx, ebx
		mov	bl, [eax+1]
		and	ebx, 7
		cmp	ecx, ebx
		jnz	short loc_466595

loc_466587:				; CODE XREF: .text:00466576j
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 7
		mov	[esi], edx
		movsx	edx, byte ptr [eax+2]

loc_466595:				; CODE XREF: .text:004663DDj
					; .text:004663F7j ...
		test	edx, edx
		jz	short loc_46659E
		cmp	dword ptr [esi], 4
		jnz	short loc_4665A2

loc_46659E:				; CODE XREF: .text:00466597j
		xor	eax, eax
		jmp	short loc_4665D7
; ---------------------------------------------------------------------------

loc_4665A2:				; CODE XREF: .text:0046659Cj
		mov	eax, 1

loc_4665A7:				; CODE XREF: .text:004665B9j
		mov	ecx, eax
		mov	ebx, 1
		shl	ebx, cl
		dec	ebx
		cmp	edx, ebx
		jz	short loc_4665BB
		inc	eax
		cmp	eax, 0Dh
		jl	short loc_4665A7

loc_4665BB:				; CODE XREF: .text:004665B3j
		cmp	eax, 0Dh
		jge	short loc_4665D5
		mov	ecx, eax
		mov	eax, 1
		shl	eax, cl
		mov	edx, [ebp+10h]
		mov	[edx], eax
		mov	eax, 1
		jmp	short loc_4665D7
; ---------------------------------------------------------------------------

loc_4665D5:				; CODE XREF: .text:004665BEj
		xor	eax, eax

loc_4665D7:				; CODE XREF: .text:004663AAj
					; .text:004665A0j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4665DC:				; CODE XREF: .text:00467A09p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF72Ch
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		lea	edx, [eax+2]
		mov	esi, _size
		cmp	edx, esi
		jbe	short loc_466609
		xor	eax, eax
		jmp	loc_4666F0
; ---------------------------------------------------------------------------

loc_466609:				; CODE XREF: .text:00466600j
		mov	edx, copy
		add	edx, eax
		cmp	byte ptr [edx],	8Dh
		jz	short loc_46661D
		xor	eax, eax
		jmp	loc_4666F0
; ---------------------------------------------------------------------------

loc_46661D:				; CODE XREF: .text:00466614j
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-18D4h]
		push	0		; mode
		push	ecx		; da
		mov	ecx, addr0
		add	ecx, eax
		push	0		; dec
		push	ecx		; ip
		sub	esi, eax
		push	esi		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword ptr [ebp-18A8h], 0
		jnz	short loc_466653
		cmp	dword ptr [ebp-18A4h], 0
		jz	short loc_46665A

loc_466653:				; CODE XREF: .text:00466648j
		xor	eax, eax
		jmp	loc_4666F0
; ---------------------------------------------------------------------------

loc_46665A:				; CODE XREF: .text:00466651j
		cmp	dword ptr [ebx+18h], 0FFFFFFFFh
		jnz	short loc_466681
		xor	eax, eax
		lea	edx, [ebp-1404h]

loc_466668:				; CODE XREF: .text:00466675j
		cmp	byte ptr [edx],	1
		jnz	short loc_466670
		mov	[ebx+18h], eax

loc_466670:				; CODE XREF: .text:0046666Bj
		inc	eax
		inc	edx
		cmp	eax, 8
		jl	short loc_466668
		cmp	dword ptr [ebx+18h], 0FFFFFFFFh
		jnz	short loc_466681
		xor	eax, eax
		jmp	short loc_4666F0
; ---------------------------------------------------------------------------

loc_466681:				; CODE XREF: .text:0046665Ej
					; .text:0046667Bj
		mov	edx, [ebp-13F8h]
		mov	ecx, [ebp+14h]
		neg	edx
		mov	[ecx], edx
		lea	edx, [ebx+0A4h]
		mov	[ebp-4], edx
		lea	edx, [ebp-1404h]
		lea	ecx, [ebx+9Ch]
		xor	eax, eax

loc_4666A5:				; CODE XREF: .text:004666D5j
		cmp	eax, [ebx+18h]
		jnz	short loc_4666B1
		cmp	byte ptr [edx],	1
		jnz	short loc_4666D7
		jmp	short loc_4666CB
; ---------------------------------------------------------------------------

loc_4666B1:				; CODE XREF: .text:004666A8j
		cmp	byte ptr [edx],	0
		jz	short loc_4666CB
		cmp	byte ptr [ecx],	0
		jz	short loc_4666D7
		mov	esi, [ebp-4]
		mov	esi, [esi]
		movzx	edi, byte ptr [edx]
		imul	esi, edi
		mov	edi, [ebp+14h]
		sub	[edi], esi

loc_4666CB:				; CODE XREF: .text:004666AFj
					; .text:004666B4j
		inc	eax
		add	dword ptr [ebp-4], 4
		inc	ecx
		inc	edx
		cmp	eax, 8
		jl	short loc_4666A5

loc_4666D7:				; CODE XREF: .text:004666ADj
					; .text:004666B9j
		cmp	eax, 8
		jge	short loc_4666E0
		xor	eax, eax
		jmp	short loc_4666F0
; ---------------------------------------------------------------------------

loc_4666E0:				; CODE XREF: .text:004666DAj
		mov	edx, [ebp+10h]
		mov	ecx, [ebp-1874h]
		mov	[edx], ecx
		mov	eax, 1

loc_4666F0:				; CODE XREF: .text:00466604j
					; .text:00466618j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4666F8:				; CODE XREF: .text:00467AB3p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF730h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		lea	eax, [esi+10h]
		cmp	eax, _size
		jbe	short loc_466723
		xor	eax, eax
		jmp	loc_466B42
; ---------------------------------------------------------------------------

loc_466723:				; CODE XREF: .text:0046671Aj
		mov	eax, copy
		add	eax, esi
		xor	ebx, ebx
		xor	edx, edx
		mov	dl, [eax]
		cmp	edx, 6Ah
		jg	short loc_466786
		jz	loc_4668DB
		cmp	edx, 2Bh
		jg	short loc_466766
		jz	loc_46682A
		sub	edx, 0Dh
		jz	loc_4667D8
		sub	edx, 18h
		jz	loc_466802
		sub	edx, 4
		jz	loc_46682A
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_466766:				; CODE XREF: .text:0046673Ej
		sub	edx, 31h
		jz	loc_46682A
		sub	edx, 2
		jz	loc_46682A
		sub	edx, 35h
		jz	loc_466878
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_466786:				; CODE XREF: .text:00466733j
		cmp	edx, 0B8h
		jge	short loc_4667B1
		sub	edx, 81h
		jz	loc_46693F
		sub	edx, 2
		jz	loc_4669C5
		sub	edx, 0Ah
		jz	loc_466A4B
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_4667B1:				; CODE XREF: .text:0046678Cj
		add	edx, 0FFFFFF48h
		sub	edx, 4
		jb	loc_466AB1
		dec	edx
		sub	edx, 3
		jb	loc_466AB1
		sub	edx, 7
		jz	loc_466AE0
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_4667D8:				; CODE XREF: .text:00466749j
		cmp	dword ptr [eax+1], 0FFFFFFFFh
		jnz	loc_466B11
		xor	eax, eax
		mov	ebx, 5
		mov	[edi], eax
		mov	ecx, [ebp+0Ch]
		mov	dword ptr [ecx], 0FFFFFFFFh
		mov	eax, [ebp+14h]
		mov	dword ptr [eax], 1
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_466802:				; CODE XREF: .text:00466752j
		cmp	dword ptr [eax+1], 0
		jnz	loc_466B11
		xor	eax, eax
		xor	ecx, ecx
		mov	[edi], eax
		mov	ebx, 5
		mov	edx, [ebp+0Ch]
		mov	[edx], ecx
		mov	eax, [ebp+14h]
		mov	dword ptr [eax], 1
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_46682A:				; CODE XREF: .text:00466740j
					; .text:0046675Bj ...
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 0C0h
		cmp	edx, 0C0h
		jnz	loc_466B11
		xor	ecx, ecx
		mov	cl, [eax+1]
		sar	ecx, 3
		xor	cl, [eax+1]
		test	cl, 7
		jnz	loc_466B11
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		xor	edx, edx
		mov	[edi], eax
		mov	ebx, 2
		mov	eax, [ebp+0Ch]
		mov	[eax], edx
		mov	ecx, [ebp+14h]
		mov	dword ptr [ecx], 1
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_466878:				; CODE XREF: .text:0046677Bj
		mov	edx, [eax+1]
		mov	ecx, [ebp+0Ch]
		mov	[ecx], edx
		xor	edx, edx
		mov	dl, [eax+5]
		and	edx, 0F8h
		cmp	edx, 58h
		jnz	short loc_4668A0
		movzx	eax, byte ptr [eax+5]
		and	eax, 7
		mov	ebx, 6
		mov	[edi], eax
		jmp	short loc_4668CF
; ---------------------------------------------------------------------------

loc_4668A0:				; CODE XREF: .text:0046688Ej
		cmp	byte ptr [eax+5], 8Fh
		jnz	loc_466B11
		xor	edx, edx
		mov	dl, [eax+6]
		and	edx, 0F8h
		cmp	edx, 0C0h
		jnz	loc_466B11
		movzx	eax, byte ptr [eax+6]
		and	eax, 7
		mov	ebx, 7
		mov	[edi], eax

loc_4668CF:				; CODE XREF: .text:0046689Ej
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax], edx
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_4668DB:				; CODE XREF: .text:00466735j
		movsx	ecx, byte ptr [eax+1]
		mov	edx, [ebp+0Ch]
		mov	[edx], ecx
		xor	ecx, ecx
		mov	cl, [eax+2]
		and	ecx, 0F8h
		cmp	ecx, 58h
		jnz	short loc_466904
		movzx	eax, byte ptr [eax+2]
		and	eax, 7
		mov	ebx, 3
		mov	[edi], eax
		jmp	short loc_466933
; ---------------------------------------------------------------------------

loc_466904:				; CODE XREF: .text:004668F2j
		cmp	byte ptr [eax+2], 8Fh
		jnz	loc_466B11
		xor	edx, edx
		mov	dl, [eax+3]
		and	edx, 0F8h
		cmp	edx, 0C0h
		jnz	loc_466B11
		movzx	eax, byte ptr [eax+3]
		and	eax, 7
		mov	ebx, 4
		mov	[edi], eax

loc_466933:				; CODE XREF: .text:00466902j
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax], edx
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_46693F:				; CODE XREF: .text:00466794j
		xor	ecx, ecx
		mov	cl, [eax+1]
		and	ecx, 0F8h
		cmp	ecx, 0C8h
		jnz	short loc_466981
		cmp	dword ptr [eax+2], 0FFFFFFFFh
		jnz	loc_466B11
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		mov	ebx, 6
		mov	[edi], eax
		mov	edx, [ebp+0Ch]
		mov	dword ptr [edx], 0FFFFFFFFh
		mov	ecx, [ebp+14h]
		mov	dword ptr [ecx], 1
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_466981:				; CODE XREF: .text:00466950j
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 0F8h
		cmp	edx, 0E0h
		jnz	loc_466B11
		cmp	dword ptr [eax+2], 0
		jnz	loc_466B11
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		mov	ebx, 6
		mov	[edi], eax
		xor	eax, eax
		mov	ecx, [ebp+0Ch]
		mov	[ecx], eax
		mov	edx, [ebp+14h]
		mov	dword ptr [edx], 1
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_4669C5:				; CODE XREF: .text:0046679Dj
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 0F8h
		cmp	edx, 0C8h
		jnz	short loc_466A07
		cmp	byte ptr [eax+2], 0FFh
		jnz	loc_466B11
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		mov	ebx, 3
		mov	[edi], eax
		mov	ecx, [ebp+0Ch]
		mov	dword ptr [ecx], 0FFFFFFFFh
		mov	eax, [ebp+14h]
		mov	dword ptr [eax], 1
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_466A07:				; CODE XREF: .text:004669D6j
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 0F8h
		cmp	edx, 0E0h
		jnz	loc_466B11
		cmp	byte ptr [eax+2], 0
		jnz	loc_466B11
		movzx	eax, byte ptr [eax+1]
		and	eax, 7
		mov	ebx, 3
		mov	[edi], eax
		xor	eax, eax
		mov	ecx, [ebp+0Ch]
		mov	[ecx], eax
		mov	edx, [ebp+14h]
		mov	dword ptr [edx], 1
		jmp	loc_466B11
; ---------------------------------------------------------------------------

loc_466A4B:				; CODE XREF: .text:004667A6j
		push	0		; predict
		push	0		; reg
		lea	edx, [ebp-18D0h]
		push	0		; mode
		push	edx		; da
		mov	ecx, addr0
		add	ecx, esi
		mov	edx, _size
		push	0		; dec
		push	ecx		; ip
		sub	edx, esi
		push	edx		; cmdsize
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword ptr [ebp-18A4h], 0
		jnz	loc_466B11
		cmp	dword ptr [ebp-13F8h], 0
		jnz	loc_466B11
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-13F4h]
		mov	[eax], ecx
		mov	eax, [ebp-1870h]
		mov	[edi], eax
		mov	edx, [ebp+14h]
		xor	ecx, ecx
		mov	[edx], ecx
		mov	ebx, [ebp-18C0h]
		jmp	short loc_466B11
; ---------------------------------------------------------------------------

loc_466AB1:				; CODE XREF: .text:004667BAj
					; .text:004667C4j
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 7
		mov	[edi], edx
		mov	ecx, [eax+1]
		mov	edx, [ebp+0Ch]
		mov	[edx], ecx
		movzx	eax, byte ptr [eax+6]
		and	eax, 0C0h
		cmp	eax, 0C0h
		jnz	short loc_466B11
		mov	ecx, [ebp+14h]
		xor	eax, eax
		mov	[ecx], eax
		mov	ebx, 5
		jmp	short loc_466B11
; ---------------------------------------------------------------------------

loc_466AE0:				; CODE XREF: .text:004667CDj
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 0F8h
		cmp	edx, 0C0h
		jnz	short loc_466B11
		xor	ecx, ecx
		mov	ebx, 6
		mov	cl, [eax+1]
		and	ecx, 7
		mov	[edi], ecx
		xor	ecx, ecx
		mov	edx, [ebp+0Ch]
		mov	eax, [eax+2]
		mov	[edx], eax
		mov	eax, [ebp+14h]
		mov	[eax], ecx

loc_466B11:				; CODE XREF: .text:00466761j
					; .text:00466781j ...
		test	ebx, ebx
		jz	short loc_466B1A
		cmp	dword ptr [edi], 4
		jnz	short loc_466B1E

loc_466B1A:				; CODE XREF: .text:00466B13j
		xor	eax, eax
		jmp	short loc_466B42
; ---------------------------------------------------------------------------

loc_466B1E:				; CODE XREF: .text:00466B18j
		mov	eax, 1
		cmp	ebx, eax
		jle	short loc_466B40

loc_466B27:				; CODE XREF: .text:00466B3Ej
		mov	edx, eax
		add	edx, esi
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+edx*2], 4
		jz	short loc_466B3B
		xor	eax, eax
		jmp	short loc_466B42
; ---------------------------------------------------------------------------

loc_466B3B:				; CODE XREF: .text:00466B35j
		inc	eax
		cmp	ebx, eax
		jg	short loc_466B27

loc_466B40:				; CODE XREF: .text:00466B25j
		mov	eax, ebx

loc_466B42:				; CODE XREF: .text:0046671Ej
					; .text:00466B1Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_466B4C:				; CODE XREF: .text:00467B3Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	ecx, [ebp+8]
		lea	eax, [ecx+6]
		cmp	eax, _size
		jbe	short loc_466B6A
		or	eax, 0FFFFFFFFh
		jmp	loc_466C13
; ---------------------------------------------------------------------------

loc_466B6A:				; CODE XREF: .text:00466B60j
		mov	eax, copy
		add	eax, ecx
		cmp	byte ptr [eax],	0E9h
		jnz	short loc_466B88
		add	ecx, [eax+1]
		mov	eax, 10h
		add	ecx, 5
		mov	[ebx], ecx
		jmp	loc_466C13
; ---------------------------------------------------------------------------

loc_466B88:				; CODE XREF: .text:00466B74j
		cmp	byte ptr [eax],	0EBh
		jnz	short loc_466B9F
		movsx	edx, byte ptr [eax+1]
		add	ecx, edx
		mov	eax, 10h
		add	ecx, 2
		mov	[ebx], ecx
		jmp	short loc_466C13
; ---------------------------------------------------------------------------

loc_466B9F:				; CODE XREF: .text:00466B8Bj
		cmp	byte ptr [eax],	0Fh
		jnz	short loc_466BC9
		xor	edx, edx
		mov	dl, [eax+1]
		and	edx, 0F0h
		cmp	edx, 80h
		jnz	short loc_466BC9
		xor	edx, edx
		add	ecx, [eax+2]
		mov	dl, [eax+1]
		and	edx, 0Fh
		add	ecx, 6
		mov	[ebx], ecx
		jmp	short loc_466BEF
; ---------------------------------------------------------------------------

loc_466BC9:				; CODE XREF: .text:00466BA2j
					; .text:00466BB5j
		xor	edx, edx
		mov	dl, [eax]
		mov	esi, edx
		and	esi, 0F0h
		cmp	esi, 70h
		jnz	short loc_466BEA
		movsx	eax, byte ptr [eax+1]
		add	ecx, eax
		and	edx, 0Fh
		add	ecx, 2
		mov	[ebx], ecx
		jmp	short loc_466BEF
; ---------------------------------------------------------------------------

loc_466BEA:				; CODE XREF: .text:00466BD8j
		or	eax, 0FFFFFFFFh
		jmp	short loc_466C13
; ---------------------------------------------------------------------------

loc_466BEF:				; CODE XREF: .text:00466BC7j
					; .text:00466BE8j
		test	edx, edx
		jz	short loc_466C0C
		cmp	edx, 1
		jz	short loc_466C0C
		cmp	edx, 8
		jz	short loc_466C0C
		cmp	edx, 9
		jz	short loc_466C0C
		cmp	edx, 0Ah
		jz	short loc_466C0C
		cmp	edx, 0Bh
		jnz	short loc_466C11

loc_466C0C:				; CODE XREF: .text:00466BF1j
					; .text:00466BF6j ...
		or	eax, 0FFFFFFFFh
		jmp	short loc_466C13
; ---------------------------------------------------------------------------

loc_466C11:				; CODE XREF: .text:00466C0Aj
		mov	eax, edx

loc_466C13:				; CODE XREF: .text:00466B65j
					; .text:00466B83j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_466C18:				; CODE XREF: .text:00467CB1p
					; .text:00467CEDp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_466C5A
		cmp	eax, esi
		jb	short loc_466C3F
		push	eax		; rmax
		push	esi		; rmin
		add	ebx, 1Ch
		push	ebx		; set
		call	Removerange
		add	esp, 0Ch
		jmp	short loc_466C5A
; ---------------------------------------------------------------------------

loc_466C3F:				; CODE XREF: .text:00466C2Dj
		push	eax		; rmax
		push	0		; rmin
		lea	edi, [ebx+1Ch]
		push	edi		; set
		call	Removerange
		add	esp, 0Ch
		push	0FFFFFFFFh	; rmax
		push	esi		; rmin
		push	edi		; set
		call	Removerange
		add	esp, 0Ch

loc_466C5A:				; CODE XREF: .text:00466C29j
					; .text:00466C3Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_466C60:				; CODE XREF: .text:00466C7Ep
					; .text:00466C8Dp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_466CCD
		cmp	edi, esi
		jge	short loc_466C97
		push	edi
		push	80000000h
		push	ebx
		call	loc_466C60
		add	esp, 0Ch
		push	7FFFFFFFh
		push	esi
		push	ebx
		call	loc_466C60
		add	esp, 0Ch
		jmp	short loc_466CCD
; ---------------------------------------------------------------------------

loc_466C97:				; CODE XREF: .text:00466C75j
		test	edi, edi
		jl	short loc_466C9F
		test	esi, esi
		jl	short loc_466CAF

loc_466C9F:				; CODE XREF: .text:00466C99j
		push	edi		; rmax
		push	esi		; rmin
		add	ebx, 1Ch
		push	ebx		; set
		call	Removerange
		add	esp, 0Ch
		jmp	short loc_466CCD
; ---------------------------------------------------------------------------

loc_466CAF:				; CODE XREF: .text:00466C9Dj
		push	0FFFFFFFFh	; rmax
		push	esi		; rmin
		lea	eax, [ebx+1Ch]
		push	eax		; set
		call	Removerange
		add	esp, 0Ch
		add	ebx, 1Ch
		push	edi		; rmax
		push	0		; rmin
		push	ebx		; set
		call	Removerange
		add	esp, 0Ch

loc_466CCD:				; CODE XREF: .text:00466C71j
					; .text:00466C95j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_466CD4:				; CODE XREF: .text:0046812Cp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF728h
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		add	eax, 20h
		cmp	eax, _size
		jbe	short loc_466CFB
		xor	eax, eax
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_466CFB:				; CODE XREF: .text:00466CF2j
		mov	ebx, copy
		add	ebx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	esi, [eax+18h]
		mov	al, [ebx]
		cmp	al, 2Eh
		jz	short loc_466D18
		cmp	al, 3Eh
		jz	short loc_466D18
		cmp	al, 26h
		jnz	short loc_466D21

loc_466D18:				; CODE XREF: .text:00466D0Ej
					; .text:00466D12j
		mov	dword ptr [ebp-8], 1
		jmp	short loc_466D26
; ---------------------------------------------------------------------------

loc_466D21:				; CODE XREF: .text:00466D16j
		xor	edx, edx
		mov	[ebp-8], edx

loc_466D26:				; CODE XREF: .text:00466D1Fj
		mov	ecx, [ebp-8]
		mov	eax, [ebx+ecx]
		and	eax, 0C7FFFFh
		cmp	eax, 8524FFh
		jnz	short loc_466D71
		mov	edx, [ebp-8]
		xor	ecx, ecx
		mov	cl, [ebx+edx+2]
		sar	ecx, 3
		and	ecx, 7
		cmp	esi, ecx
		jnz	short loc_466D71
		mov	eax, [ebp-8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebx+eax+3]
		mov	[ecx], edx
		xor	edx, edx
		mov	eax, [ebp+14h]
		mov	[eax], edx
		mov	ecx, [ebp+18h]
		mov	eax, [ebp+0Ch]
		mov	[ecx], eax
		mov	eax, [ebp-8]
		add	eax, 7
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_466D71:				; CODE XREF: .text:00466D36j
					; .text:00466D49j
		mov	edx, [ebp-8]
		cmp	byte ptr [ebx+edx], 8Ah
		jnz	loc_466E92
		mov	ecx, [ebp-8]
		xor	eax, eax
		mov	al, [ebx+ecx+1]
		sar	eax, 3
		and	eax, 7
		cmp	esi, eax
		jnz	loc_466E92
		test	esi, esi
		jz	short loc_466DAC
		cmp	esi, 3
		jz	short loc_466DAC
		cmp	esi, 1
		jz	short loc_466DAC
		cmp	esi, 2
		jnz	loc_466E92

loc_466DAC:				; CODE XREF: .text:00466D97j
					; .text:00466D9Cj ...
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	edx, [ebp-18D8h]
		push	edx		; da
		push	0		; dec
		mov	ecx, addr0
		add	ecx, [ebp+0Ch]
		push	ecx		; ip
		mov	eax, _size
		sub	eax, [ebp+0Ch]
		push	eax		; cmdsize
		push	ebx		; cmd
		call	Disasm
		add	esp, 20h
		mov	edx, eax
		cmp	dword ptr [ebp-18ACh], 0
		jz	short loc_466DE9
		xor	eax, eax
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_466DE9:				; CODE XREF: .text:00466DE0j
		test	byte ptr [ebp-142Bh], 1
		jz	loc_466E92
		cmp	dword ptr [ebp-1420h], 1
		jnz	loc_466E92
		cmp	dword ptr [ebp-13FCh], 0
		jz	loc_466E92
		xor	eax, eax
		lea	ecx, [ebp-1408h]

loc_466E18:				; CODE XREF: .text:00466E2Fj
		cmp	esi, eax
		jnz	short loc_466E21
		cmp	byte ptr [ecx],	1
		jnz	short loc_466E31

loc_466E21:				; CODE XREF: .text:00466E1Aj
		cmp	esi, eax
		jz	short loc_466E2A
		cmp	byte ptr [ecx],	0
		jnz	short loc_466E31

loc_466E2A:				; CODE XREF: .text:00466E23j
		inc	eax
		inc	ecx
		cmp	eax, 8
		jl	short loc_466E18

loc_466E31:				; CODE XREF: .text:00466E1Fj
					; .text:00466E28j
		cmp	eax, 8
		jl	short loc_466E92
		mov	eax, edx
		mov	cl, [ebx+edx]
		cmp	cl, 2Eh
		jz	short loc_466E4A
		cmp	cl, 3Eh
		jz	short loc_466E4A
		cmp	cl, 26h
		jnz	short loc_466E4B

loc_466E4A:				; CODE XREF: .text:00466E3Ej
					; .text:00466E43j
		inc	edx

loc_466E4B:				; CODE XREF: .text:00466E48j
		mov	ecx, [ebx+edx]
		and	ecx, 0C7FFFFh
		cmp	ecx, 8524FFh
		jnz	short loc_466E92
		xor	ecx, ecx
		mov	cl, [ebx+edx+2]
		sar	ecx, 3
		and	ecx, 7
		cmp	esi, ecx
		jnz	short loc_466E92
		mov	ecx, [ebx+edx+3]
		mov	ebx, [ebp+10h]
		mov	[ebx], ecx
		mov	ecx, [ebp+14h]
		mov	ebx, [ebp-13FCh]
		mov	[ecx], ebx
		mov	ecx, [ebp+0Ch]
		add	ecx, eax
		mov	eax, [ebp+18h]
		mov	[eax], ecx
		lea	eax, [edx+7]
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_466E92:				; CODE XREF: .text:00466D78j
					; .text:00466D8Fj ...
		mov	edx, [ebp-8]
		cmp	word ptr [ebx+edx], 0B60Fh
		jnz	loc_466F91
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	ecx, [ebp-18D8h]
		push	ecx		; da
		push	0		; dec
		mov	eax, addr0
		add	eax, [ebp+0Ch]
		push	eax		; ip
		mov	edx, _size
		sub	edx, [ebp+0Ch]
		push	edx		; cmdsize
		push	ebx		; cmd
		call	Disasm
		add	esp, 20h
		mov	edx, eax
		cmp	dword ptr [ebp-18ACh], 0
		jz	short loc_466EDE
		xor	eax, eax
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_466EDE:				; CODE XREF: .text:00466ED5j
		test	byte ptr [ebp-142Bh], 1
		jz	loc_466F91
		cmp	dword ptr [ebp-1420h], 1
		jnz	loc_466F91
		cmp	dword ptr [ebp-13FCh], 0
		jz	loc_466F91
		xor	eax, eax
		lea	ecx, [ebp-1408h]

loc_466F0D:				; CODE XREF: .text:00466F24j
		cmp	esi, eax
		jnz	short loc_466F16
		cmp	byte ptr [ecx],	1
		jnz	short loc_466F26

loc_466F16:				; CODE XREF: .text:00466F0Fj
		cmp	esi, eax
		jz	short loc_466F1F
		cmp	byte ptr [ecx],	0
		jnz	short loc_466F26

loc_466F1F:				; CODE XREF: .text:00466F18j
		inc	eax
		inc	ecx
		cmp	eax, 8
		jl	short loc_466F0D

loc_466F26:				; CODE XREF: .text:00466F14j
					; .text:00466F1Dj
		cmp	eax, 8
		jl	short loc_466F91
		mov	eax, edx
		mov	ecx, [ebp-1878h]
		mov	[ebp-4], ecx
		mov	cl, [ebx+edx]
		cmp	cl, 2Eh
		jz	short loc_466F48
		cmp	cl, 3Eh
		jz	short loc_466F48
		cmp	cl, 26h
		jnz	short loc_466F49

loc_466F48:				; CODE XREF: .text:00466F3Cj
					; .text:00466F41j
		inc	edx

loc_466F49:				; CODE XREF: .text:00466F46j
		mov	ecx, [ebx+edx]
		and	ecx, 0C7FFFFh
		cmp	ecx, 8524FFh
		jnz	short loc_466F91
		xor	ecx, ecx
		mov	cl, [ebx+edx+2]
		sar	ecx, 3
		and	ecx, 7
		cmp	ecx, [ebp-4]
		jnz	short loc_466F91
		mov	ecx, [ebx+edx+3]
		mov	ebx, [ebp+10h]
		mov	[ebx], ecx
		mov	ecx, [ebp+14h]
		mov	ebx, [ebp-13FCh]
		mov	[ecx], ebx
		mov	ecx, [ebp+0Ch]
		add	ecx, eax
		mov	eax, [ebp+18h]
		mov	[eax], ecx
		lea	eax, [edx+7]
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_466F91:				; CODE XREF: .text:00466E9Bj
					; .text:00466EE5j ...
		mov	edx, [ebp-8]
		cmp	byte ptr [ebx+edx], 8Ah
		jnz	loc_4670E7
		mov	ecx, [ebp-8]
		xor	eax, eax
		mov	al, [ebx+ecx+1]
		sar	eax, 3
		and	eax, 7
		mov	[ebp-4], eax
		cmp	esi, [ebp-4]
		jz	loc_4670E7
		cmp	dword ptr [ebp-4], 0
		jz	short loc_466FD5
		cmp	dword ptr [ebp-4], 3
		jz	short loc_466FD5
		cmp	dword ptr [ebp-4], 1
		jz	short loc_466FD5
		cmp	dword ptr [ebp-4], 2
		jnz	loc_4670E7

loc_466FD5:				; CODE XREF: .text:00466FBDj
					; .text:00466FC3j ...
		mov	edx, [ebp+8]
		mov	ecx, [ebp-4]
		cmp	byte ptr [edx+ecx+9Ch],	0
		jz	loc_4670E7
		mov	eax, [ebp+8]
		mov	edx, [ebp-4]
		test	dword ptr [eax+edx*4+0A4h], 0FFFFFF00h
		jnz	loc_4670E7
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	ecx, [ebp-18D8h]
		push	ecx		; da
		push	0		; dec
		mov	eax, addr0
		add	eax, [ebp+0Ch]
		push	eax		; ip
		mov	edx, _size
		sub	edx, [ebp+0Ch]
		push	edx		; cmdsize
		push	ebx		; cmd
		call	Disasm
		add	esp, 20h
		mov	edx, eax
		cmp	dword ptr [ebp-18ACh], 0
		jz	short loc_46703D
		xor	eax, eax
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_46703D:				; CODE XREF: .text:00467034j
		test	byte ptr [ebp-142Bh], 1
		jz	loc_4670E7
		cmp	dword ptr [ebp-1420h], 1
		jnz	loc_4670E7
		cmp	dword ptr [ebp-13FCh], 0
		jz	loc_4670E7
		xor	eax, eax
		lea	ecx, [ebp-1408h]

loc_46706C:				; CODE XREF: .text:00467083j
		cmp	esi, eax
		jnz	short loc_467075
		cmp	byte ptr [ecx],	1
		jnz	short loc_467085

loc_467075:				; CODE XREF: .text:0046706Ej
		cmp	esi, eax
		jz	short loc_46707E
		cmp	byte ptr [ecx],	0
		jnz	short loc_467085

loc_46707E:				; CODE XREF: .text:00467077j
		inc	eax
		inc	ecx
		cmp	eax, 8
		jl	short loc_46706C

loc_467085:				; CODE XREF: .text:00467073j
					; .text:0046707Cj
		cmp	eax, 8
		jl	short loc_4670E7
		mov	eax, edx
		mov	cl, [ebx+edx]
		cmp	cl, 2Eh
		jz	short loc_46709E
		cmp	cl, 3Eh
		jz	short loc_46709E
		cmp	cl, 26h
		jnz	short loc_46709F

loc_46709E:				; CODE XREF: .text:00467092j
					; .text:00467097j
		inc	edx

loc_46709F:				; CODE XREF: .text:0046709Cj
		mov	ecx, [ebx+edx]
		and	ecx, 0C7FFFFh
		cmp	ecx, 8524FFh
		jnz	short loc_4670E7
		xor	ecx, ecx
		mov	cl, [ebx+edx+2]
		sar	ecx, 3
		and	ecx, 7
		cmp	ecx, [ebp-4]
		jnz	short loc_4670E7
		mov	ecx, [ebx+edx+3]
		mov	ebx, [ebp+10h]
		mov	[ebx], ecx
		mov	ecx, [ebp+14h]
		mov	ebx, [ebp-13FCh]
		mov	[ecx], ebx
		mov	ecx, [ebp+0Ch]
		add	ecx, eax
		mov	eax, [ebp+18h]
		mov	[eax], ecx
		lea	eax, [edx+7]
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_4670E7:				; CODE XREF: .text:00466F98j
					; .text:00466FB3j ...
		cmp	dword ptr [ebp-8], 0
		jnz	loc_467196
		mov	edx, [ebx]
		and	edx, 0C0FFFFh
		cmp	edx, 0C0B60Fh
		jnz	loc_467196
		xor	eax, eax
		mov	al, [ebx+2]
		mov	edx, eax
		and	edx, 7
		or	edx, 80h
		cmp	esi, edx
		jnz	loc_467224
		sar	eax, 3
		and	eax, 7
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 4
		jz	loc_467224
		mov	edx, 3
		mov	eax, edx
		mov	cl, [ebx+edx]
		cmp	cl, 2Eh
		jz	short loc_467149
		cmp	cl, 3Eh
		jz	short loc_467149
		cmp	cl, 26h
		jnz	short loc_46714A

loc_467149:				; CODE XREF: .text:0046713Dj
					; .text:00467142j
		inc	edx

loc_46714A:				; CODE XREF: .text:00467147j
		mov	ecx, [ebx+edx]
		and	ecx, 0C7FFFFh
		cmp	ecx, 8524FFh
		jnz	loc_467224
		xor	ecx, ecx
		mov	cl, [ebx+edx+2]
		sar	ecx, 3
		and	ecx, 7
		cmp	ecx, [ebp-4]
		jnz	loc_467224
		mov	ecx, [ebx+edx+3]
		mov	ebx, [ebp+10h]
		mov	[ebx], ecx
		mov	ecx, [ebp+14h]
		xor	ebx, ebx
		mov	[ecx], ebx
		mov	ecx, [ebp+0Ch]
		add	ecx, eax
		mov	eax, [ebp+18h]
		mov	[eax], ecx
		lea	eax, [edx+7]
		jmp	loc_467226
; ---------------------------------------------------------------------------

loc_467196:				; CODE XREF: .text:004670EBj
					; .text:004670FFj
		cmp	dword ptr [ebp-8], 0
		jnz	loc_467224
		cmp	esi, 80h
		jnz	short loc_467224
		cmp	byte ptr [ebx],	25h
		jnz	short loc_467224
		mov	eax, 2

loc_4671B2:				; CODE XREF: .text:004671C5j
		mov	ecx, eax
		mov	edx, 1
		shl	edx, cl
		dec	edx
		cmp	edx, [ebx+1]
		jz	short loc_4671C7
		inc	eax
		cmp	eax, 0Ah
		jl	short loc_4671B2

loc_4671C7:				; CODE XREF: .text:004671BFj
		cmp	eax, 0Ah
		jge	short loc_467224
		mov	edx, 5
		mov	eax, edx
		mov	cl, [ebx+edx]
		cmp	cl, 2Eh
		jz	short loc_4671E5
		cmp	cl, 3Eh
		jz	short loc_4671E5
		cmp	cl, 26h
		jnz	short loc_4671E6

loc_4671E5:				; CODE XREF: .text:004671D9j
					; .text:004671DEj
		inc	edx

loc_4671E6:				; CODE XREF: .text:004671E3j
		mov	ecx, [ebx+edx]
		and	ecx, 0C7FFFFh
		cmp	ecx, 8524FFh
		jnz	short loc_467224
		xor	ecx, ecx
		mov	cl, [ebx+edx+2]
		sar	ecx, 3
		test	cl, 7
		jnz	short loc_467224
		mov	ecx, [ebx+edx+3]
		mov	ebx, [ebp+10h]
		mov	[ebx], ecx
		mov	ecx, [ebp+14h]
		xor	ebx, ebx
		mov	[ecx], ebx
		mov	ecx, [ebp+0Ch]
		add	ecx, eax
		mov	eax, [ebp+18h]
		mov	[eax], ecx
		lea	eax, [edx+7]
		jmp	short loc_467226
; ---------------------------------------------------------------------------

loc_467224:				; CODE XREF: .text:00467117j
					; .text:0046712Aj ...
		xor	eax, eax

loc_467226:				; CODE XREF: .text:00466CF6j
					; .text:00466D6Cj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_46722C:				; CODE XREF: .text:0046830Fp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	edx, 0FFFFFFFFh
		jnz	short loc_467240
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467240:				; CODE XREF: .text:00467239j
		lea	ecx, [eax+2]
		cmp	ecx, _size
		jbe	short loc_467250
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467250:				; CODE XREF: .text:00467249j
		mov	ecx, copy
		add	ecx, eax
		mov	eax, ecx
		mov	cl, [eax]
		sub	cl, 89h
		jz	short loc_467268
		sub	cl, 2
		jz	short loc_467299
		jmp	short loc_4672CA
; ---------------------------------------------------------------------------

loc_467268:				; CODE XREF: .text:0046725Fj
		xor	ecx, ecx
		mov	cl, [eax+1]
		mov	ebx, ecx
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	short loc_4672CA
		mov	ebx, ecx
		sar	ebx, 3
		and	ebx, 7
		cmp	edx, ebx
		jnz	short loc_4672CA
		and	ecx, 7
		mov	eax, [ebp+10h]
		mov	[eax], ecx
		mov	eax, 2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467299:				; CODE XREF: .text:00467264j
		xor	ecx, ecx
		mov	cl, [eax+1]
		mov	ebx, ecx
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	short loc_4672CA
		mov	ebx, ecx
		and	ebx, 7
		cmp	edx, ebx
		jnz	short loc_4672CA
		sar	ecx, 3
		and	ecx, 7
		mov	eax, [ebp+10h]
		mov	[eax], ecx
		mov	eax, 2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4672CA:				; CODE XREF: .text:00467266j
					; .text:0046727Bj ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4672D0:				; CODE XREF: .text:004683ABp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF730h
		push	ebx
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebx+18h], 0FFFFFFFFh
		jnz	short loc_4672EE
		xor	eax, eax
		jmp	short loc_467364
; ---------------------------------------------------------------------------

loc_4672EE:				; CODE XREF: .text:004672E8j
		push	0		; predict
		push	0		; reg
		lea	edx, [ebp-18D0h]
		push	0		; mode
		push	edx		; da
		push	0		; dec
		mov	eax, [ebx+4]
		mov	ecx, addr0
		add	ecx, eax
		mov	edx, _size
		push	ecx		; ip
		sub	edx, eax
		mov	ecx, copy
		push	edx		; cmdsize
		add	ecx, eax
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword ptr [ebp-18A4h], 0
		jz	short loc_467330
		xor	eax, eax
		jmp	short loc_467364
; ---------------------------------------------------------------------------

loc_467330:				; CODE XREF: .text:0046732Aj
		mov	ecx, [ebx+18h]
		mov	edx, 1
		shl	edx, cl
		and	edx, [ebp-1898h]
		jz	short loc_467346
		xor	eax, eax
		jmp	short loc_467364
; ---------------------------------------------------------------------------

loc_467346:				; CODE XREF: .text:00467340j
		test	byte ptr [ebp-18BAh], 70h
		jnz	short loc_467356
		mov	eax, 1
		jmp	short loc_467364
; ---------------------------------------------------------------------------

loc_467356:				; CODE XREF: .text:0046734Dj
		test	byte ptr [ebx],	2
		jnz	short loc_467362
		mov	eax, 2
		jmp	short loc_467364
; ---------------------------------------------------------------------------

loc_467362:				; CODE XREF: .text:00467359j
		xor	eax, eax

loc_467364:				; CODE XREF: .text:004672ECj
					; .text:0046732Ej ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
