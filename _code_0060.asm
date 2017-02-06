.code

loc_472118:				; CODE XREF: .text:00472561p
					; .text:00472618p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	ecx, [ebp+8]
		test	edx, edx
		jz	short loc_47212F
		xor	eax, eax
		mov	[edx], eax

loc_47212F:				; CODE XREF: .text:00472129j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_47213C
		mov	eax, [ebp+14h]
		xor	esi, esi
		mov	[eax], esi

loc_47213C:				; CODE XREF: .text:00472133j
		test	ecx, ecx
		jz	short loc_472144
		test	ebx, ebx
		jnz	short loc_47214B

loc_472144:				; CODE XREF: .text:0047213Ej
		xor	eax, eax
		jmp	loc_472397
; ---------------------------------------------------------------------------

loc_47214B:				; CODE XREF: .text:00472142j
		cmp	dword ptr [ecx+4], 1
		jnz	loc_472276
		mov	eax, [ecx+18h]
		test	eax, eax
		jz	short loc_4721D6
		mov	esi, fi
		mov	edi, esi
		lea	esi, [edi+esi*4]
		shl	esi, 5
		sub	esi, edi
		mov	esi, font.height[esi*4]
		imul	esi, eax
		add	esi, [ebx+4]
		add	esi, 4
		test	edx, edx
		mov	eax, esi
		jz	loc_472397
		mov	ebx, [ecx+10h]
		test	ebx, ebx
		jz	short loc_472193
		cmp	dword ptr [ebx+28h], 0
		jnz	short loc_4721AC

loc_472193:				; CODE XREF: .text:0047218Bj
		mov	ebx, fi
		mov	esi, ebx
		lea	ebx, [esi+ebx*4]
		shl	ebx, 5
		sub	ebx, esi
		mov	ebx, font.height[ebx*4]
		jmp	short loc_4721C6
; ---------------------------------------------------------------------------

loc_4721AC:				; CODE XREF: .text:00472191j
		mov	ebx, [ebx+28h]
		mov	ebx, [ebx+234h]
		mov	esi, ebx
		lea	ebx, [esi+ebx*4]
		shl	ebx, 5
		sub	ebx, esi
		mov	ebx, font.height[ebx*4]

loc_4721C6:				; CODE XREF: .text:004721AAj
		mov	ecx, [ecx+18h]
		imul	ecx, ebx
		add	ecx, 4
		mov	[edx], ecx
		jmp	loc_472397
; ---------------------------------------------------------------------------

loc_4721D6:				; CODE XREF: .text:0047215Aj
		mov	eax, [ecx+24h]
		test	eax, eax
		jz	short loc_47225C
		mov	edx, fi
		mov	esi, edx
		lea	edx, [esi+edx*4]
		shl	edx, 5
		sub	edx, esi
		mov	edx, font.height[edx*4]
		imul	edx, eax
		mov	eax, [ebx+0Ch]
		sub	eax, edx
		add	eax, 0FFFFFFFCh
		cmp	dword ptr [ebp+14h], 0
		jz	loc_472397
		mov	edx, [ecx+1Ch]
		test	edx, edx
		jz	short loc_472216
		cmp	dword ptr [edx+28h], 0
		jnz	short loc_47222F

loc_472216:				; CODE XREF: .text:0047220Ej
		mov	edx, fi
		mov	ebx, edx
		lea	edx, [ebx+edx*4]
		shl	edx, 5
		sub	edx, ebx
		mov	ebx, font.height[edx*4]
		jmp	short loc_472249
; ---------------------------------------------------------------------------

loc_47222F:				; CODE XREF: .text:00472214j
		mov	edx, [edx+28h]
		mov	edx, [edx+234h]
		mov	ebx, edx
		lea	edx, [ebx+edx*4]
		shl	edx, 5
		sub	edx, ebx
		mov	ebx, font.height[edx*4]

loc_472249:				; CODE XREF: .text:0047222Dj
		mov	edx, [ecx+24h]
		mov	ecx, [ebp+14h]
		imul	edx, ebx
		add	edx, 4
		mov	[ecx], edx
		jmp	loc_472397
; ---------------------------------------------------------------------------

loc_47225C:				; CODE XREF: .text:004721DBj
		mov	eax, [ebx+0Ch]
		mov	esi, [ebx+4]
		sub	eax, esi
		imul	dword ptr [ecx+8]
		mov	ecx, 64h
		cdq
		idiv	ecx
		add	eax, esi
		jmp	loc_472397
; ---------------------------------------------------------------------------

loc_472276:				; CODE XREF: .text:0047214Fj
		cmp	dword ptr [ecx+4], 2
		jnz	loc_472395
		mov	eax, [ecx+18h]
		test	eax, eax
		jz	short loc_472300
		mov	esi, fi
		mov	edi, esi
		lea	esi, [edi+esi*4]
		shl	esi, 5
		sub	esi, edi
		mov	esi, font._width[esi*4]
		imul	esi, eax
		add	esi, [ebx]
		add	esi, 4
		test	edx, edx
		mov	eax, esi
		jz	loc_472397
		mov	ebx, [ecx+10h]
		test	ebx, ebx
		jz	short loc_4722BD
		cmp	dword ptr [ebx+28h], 0
		jnz	short loc_4722D6

loc_4722BD:				; CODE XREF: .text:004722B5j
		mov	ebx, fi
		mov	esi, ebx
		lea	ebx, [esi+ebx*4]
		shl	ebx, 5
		sub	ebx, esi
		mov	ebx, font._width[ebx*4]
		jmp	short loc_4722F0
; ---------------------------------------------------------------------------

loc_4722D6:				; CODE XREF: .text:004722BBj
		mov	ebx, [ebx+28h]
		mov	ebx, [ebx+234h]
		mov	esi, ebx
		lea	ebx, [esi+ebx*4]
		shl	ebx, 5
		sub	ebx, esi
		mov	ebx, font._width[ebx*4]

loc_4722F0:				; CODE XREF: .text:004722D4j
		mov	ecx, [ecx+18h]
		imul	ecx, ebx
		add	ecx, 4
		mov	[edx], ecx
		jmp	loc_472397
; ---------------------------------------------------------------------------

loc_472300:				; CODE XREF: .text:00472285j
		mov	eax, [ecx+24h]
		test	eax, eax
		jz	short loc_47237F
		mov	edx, fi
		mov	esi, edx
		lea	edx, [esi+edx*4]
		shl	edx, 5
		sub	edx, esi
		mov	edx, font._width[edx*4]
		imul	edx, eax
		mov	eax, [ebx+8]
		sub	eax, edx
		add	eax, 0FFFFFFFCh
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_472397
		mov	edx, [ecx+1Ch]
		test	edx, edx
		jz	short loc_47233C
		cmp	dword ptr [edx+28h], 0
		jnz	short loc_472355

loc_47233C:				; CODE XREF: .text:00472334j
		mov	edx, fi
		mov	ebx, edx
		lea	edx, [ebx+edx*4]
		shl	edx, 5
		sub	edx, ebx
		mov	ebx, font._width[edx*4]
		jmp	short loc_47236F
; ---------------------------------------------------------------------------

loc_472355:				; CODE XREF: .text:0047233Aj
		mov	edx, [edx+28h]
		mov	edx, [edx+234h]
		mov	ebx, edx
		lea	edx, [ebx+edx*4]
		shl	edx, 5
		sub	edx, ebx
		mov	ebx, font._width[edx*4]

loc_47236F:				; CODE XREF: .text:00472353j
		mov	edx, [ecx+24h]
		mov	ecx, [ebp+14h]
		imul	edx, ebx
		add	edx, 4
		mov	[ecx], edx
		jmp	short loc_472397
; ---------------------------------------------------------------------------

loc_47237F:				; CODE XREF: .text:00472305j
		mov	eax, [ebx+8]
		mov	esi, [ebx]
		sub	eax, esi
		imul	dword ptr [ecx+8]
		mov	ecx, 64h
		cdq
		idiv	ecx
		add	eax, esi
		jmp	short loc_472397
; ---------------------------------------------------------------------------

loc_472395:				; CODE XREF: .text:0047227Aj
		xor	eax, eax

loc_472397:				; CODE XREF: .text:00472146j
					; .text:00472180j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_47239C(LPCWSTR lpAppName, int)
loc_47239C:				; CODE XREF: .text:004723FFp
					; .text:0047240Cp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_472414
		test	ebx, ebx
		jz	short loc_472414
		cmp	word ptr [esi],	0
		jz	short loc_472414
		mov	eax, [ebx+4]
		cmp	eax, 1
		jz	short loc_4723C8
		cmp	eax, 2
		jnz	short loc_472414

loc_4723C8:				; CODE XREF: .text:004723C1j
		mov	edx, [ebx]
		lea	ecx, [ebp-200h]
		push	edx
		push	offset aOffsetI	; "Offset[%i]"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	eax, [ebx+0Ch]
		push	eax		; arglist
		push	offset aI_1	; "%i"
		lea	edx, [ebp-200h]
		push	edx		; key
		push	esi		; section
		push	0		; file
		call	Writetoini
		add	esp, 14h
		mov	ecx, [ebx+10h]
		push	ecx		; int
		push	esi		; lpAppName
		call	loc_47239C
		add	esp, 8
		mov	eax, [ebx+1Ch]
		push	eax		; int
		push	esi		; lpAppName
		call	loc_47239C
		add	esp, 8

loc_472414:				; CODE XREF: .text:004723AFj
					; .text:004723B3j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_47241C:				; CODE XREF: .text:00472441p
					; .text:0047244Ep ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_47246F
		test	ebx, ebx
		jz	short loc_47246F
		mov	eax, [ebx+4]
		cmp	eax, 1
		jz	short loc_47243C
		cmp	eax, 2
		jnz	short loc_472458

loc_47243C:				; CODE XREF: .text:00472435j
		mov	edx, [ebx+10h]
		push	edx
		push	esi
		call	loc_47241C
		add	esp, 8
		mov	ecx, [ebx+1Ch]
		push	ecx
		push	esi
		call	loc_47241C
		add	esp, 8
		jmp	short loc_47246F
; ---------------------------------------------------------------------------

loc_472458:				; CODE XREF: .text:0047243Aj
		mov	eax, [ebx+28h]
		mov	eax, [eax+22Ch]
		test	eax, eax
		jz	short loc_47246F
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_47246F:				; CODE XREF: .text:00472429j
					; .text:0047242Dj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_472474(int, int, UINT	Msg, WPARAM wParam, LPARAM lParam)
loc_472474:				; CODE XREF: .text:004724AAp
					; .text:004724C7p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_47248B
		test	ebx, ebx
		jnz	short loc_47248F

loc_47248B:				; CODE XREF: .text:00472485j
		xor	eax, eax
		jmp	short loc_4724F8
; ---------------------------------------------------------------------------

loc_47248F:				; CODE XREF: .text:00472489j
		mov	eax, [ebx+4]
		cmp	eax, 1
		jz	short loc_47249C
		cmp	eax, 2
		jnz	short loc_4724D8

loc_47249C:				; CODE XREF: .text:00472495j
		mov	edx, [ebp+18h]
		push	edx		; lParam
		mov	ecx, [ebp+14h]
		push	ecx		; wParam
		push	edi		; Msg
		mov	eax, [ebx+10h]
		push	eax		; int
		push	esi		; int
		call	loc_472474
		add	esp, 14h
		cmp	eax, 1234h
		jz	short loc_4724F8
		mov	edx, [ebp+18h]
		push	edx		; lParam
		mov	ecx, [ebp+14h]
		push	ecx		; wParam
		push	edi		; Msg
		mov	eax, [ebx+1Ch]
		push	eax		; int
		push	esi		; int
		call	loc_472474
		add	esp, 14h
		cmp	eax, 1234h
		jz	short loc_4724F8
		jmp	short loc_4724F6
; ---------------------------------------------------------------------------

loc_4724D8:				; CODE XREF: .text:0047249Aj
		mov	edx, [ebx+28h]
		mov	eax, [edx+22Ch]
		test	eax, eax
		jz	short loc_4724F6
		mov	edx, [ebp+18h]
		push	edx		; lParam
		mov	ecx, [ebp+14h]
		push	ecx		; wParam
		push	edi		; Msg
		push	eax		; hWnd
		call	SendMessageW
		jmp	short loc_4724F8
; ---------------------------------------------------------------------------

loc_4724F6:				; CODE XREF: .text:004724D6j
					; .text:004724E3j
		xor	eax, eax

loc_4724F8:				; CODE XREF: .text:0047248Dj
					; .text:004724B7j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_472500:				; CODE XREF: .text:004725ABp
					; .text:004725E4p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebp+8], 0
		jz	short loc_47251D
		test	ebx, ebx
		jz	short loc_47251D
		test	esi, esi
		jnz	short loc_472524

loc_47251D:				; CODE XREF: .text:00472513j
					; .text:00472517j
		xor	eax, eax
		jmp	loc_4726A0
; ---------------------------------------------------------------------------

loc_472524:				; CODE XREF: .text:0047251Bj
		movsx	edx, word ptr [ebp+1Ch]
		mov	[ebp-4], edx
		mov	ecx, [ebp+1Ch]
		shr	ecx, 10h
		and	cx, 0FFFFh
		movsx	eax, cx
		mov	[ebp-8], eax
		cmp	dword ptr [ebx+4], 1
		jnz	loc_4725F1
		mov	edx, [ebp-4]
		cmp	edx, [esi]
		jl	short loc_472554
		mov	ecx, [ebp-4]
		cmp	ecx, [esi+8]
		jl	short loc_47255B

loc_472554:				; CODE XREF: .text:0047254Aj
		xor	eax, eax
		jmp	loc_4726A0
; ---------------------------------------------------------------------------

loc_47255B:				; CODE XREF: .text:00472552j
		push	0
		push	0
		push	esi
		push	ebx
		call	loc_472118
		add	esp, 10h
		mov	edi, eax
		add	edi, [ebx+0Ch]
		lea	eax, [edi-1]
		cmp	eax, [ebp-8]
		jg	short loc_472582
		cmp	edi, [ebp-8]
		jl	short loc_472582
		mov	eax, ebx
		jmp	loc_4726A0
; ---------------------------------------------------------------------------

loc_472582:				; CODE XREF: .text:00472574j
					; .text:00472579j
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		mov	ecx, 4
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-0Ch], edi
		mov	eax, [ebp+1Ch]
		push	eax
		lea	eax, [ebp-18h]
		mov	edx, [ebp+18h]
		push	edx
		mov	ecx, [ebp+14h]
		push	ecx
		push	eax
		mov	edx, [ebx+10h]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_472500
		add	esp, 18h
		test	eax, eax
		jnz	loc_4726A0
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		mov	ecx, 4
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-14h], edi
		mov	eax, [ebp+1Ch]
		push	eax
		lea	eax, [ebp-18h]
		mov	edx, [ebp+18h]
		push	edx
		mov	ecx, [ebp+14h]
		push	ecx
		push	eax
		mov	edx, [ebx+1Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_472500
		add	esp, 18h
		jmp	loc_4726A0
; ---------------------------------------------------------------------------

loc_4725F1:				; CODE XREF: .text:0047253Fj
		cmp	dword ptr [ebx+4], 2
		jnz	loc_47269E
		mov	eax, [ebp-8]
		cmp	eax, [esi+4]
		jl	short loc_47260B
		mov	edx, [ebp-8]
		cmp	edx, [esi+0Ch]
		jl	short loc_472612

loc_47260B:				; CODE XREF: .text:00472601j
		xor	eax, eax
		jmp	loc_4726A0
; ---------------------------------------------------------------------------

loc_472612:				; CODE XREF: .text:00472609j
		push	0
		push	0
		push	esi
		push	ebx
		call	loc_472118
		add	esp, 10h
		mov	edi, eax
		add	edi, [ebx+0Ch]
		lea	eax, [edi-1]
		cmp	eax, [ebp-4]
		jg	short loc_472636
		cmp	edi, [ebp-4]
		jl	short loc_472636
		mov	eax, ebx
		jmp	short loc_4726A0
; ---------------------------------------------------------------------------

loc_472636:				; CODE XREF: .text:0047262Bj
					; .text:00472630j
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		mov	ecx, 4
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-10h], edi
		mov	eax, [ebp+1Ch]
		push	eax
		lea	eax, [ebp-18h]
		mov	edx, [ebp+18h]
		push	edx
		mov	ecx, [ebp+14h]
		push	ecx
		push	eax
		mov	edx, [ebx+10h]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_472500
		add	esp, 18h
		test	eax, eax
		jnz	short loc_4726A0
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		mov	ecx, 4
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-18h], edi
		mov	eax, [ebp+1Ch]
		push	eax
		lea	eax, [ebp-18h]
		mov	edx, [ebp+18h]
		push	edx
		mov	ecx, [ebp+14h]
		push	ecx
		push	eax
		mov	edx, [ebx+1Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_472500
		add	esp, 18h
		jmp	short loc_4726A0
; ---------------------------------------------------------------------------

loc_47269E:				; CODE XREF: .text:004725F5j
		xor	eax, eax

loc_4726A0:				; CODE XREF: .text:0047251Fj
					; .text:00472556j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4726A8:				; CODE XREF: .text:00472789p
					; .text:004727B6p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebp+8], 0
		jz	loc_4728E4
		test	ebx, ebx
		jz	loc_4728E4
		test	esi, esi
		jz	loc_4728E4
		cmp	dword ptr [ebx+4], 1
		jnz	loc_4727C3
		lea	eax, [ebp-8]
		push	eax
		lea	edx, [ebp-4]
		push	edx
		push	esi
		push	ebx
		call	loc_472118
		add	esp, 10h
		mov	ecx, [ebp+8]
		cmp	ebx, [ecx+6Ch]
		jnz	short loc_472714
		mov	edx, [ebp+8]
		mov	edi, [edx+70h]
		mov	edx, [ebp+14h]
		shr	edx, 10h
		add	edi, eax
		and	dx, 0FFFFh
		movsx	ecx, dx
		mov	edx, [ebp+8]
		add	edi, ecx
		sub	edi, [edx+78h]
		jmp	short loc_472719
; ---------------------------------------------------------------------------

loc_472714:				; CODE XREF: .text:004726F3j
		mov	edi, [ebx+0Ch]
		add	edi, eax

loc_472719:				; CODE XREF: .text:00472712j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_47272F
		mov	edx, [esi+4]
		add	edx, [ebp-4]
		cmp	edi, edx
		jle	short loc_47272F
		mov	edi, [esi+4]
		add	edi, [ebp-4]

loc_47272F:				; CODE XREF: .text:0047271Dj
					; .text:00472727j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_472745
		mov	edx, [esi+0Ch]
		sub	edx, [ebp-8]
		cmp	edi, edx
		jge	short loc_472745
		mov	edi, [esi+0Ch]
		sub	edi, [ebp-8]

loc_472745:				; CODE XREF: .text:00472733j
					; .text:0047273Dj
		mov	edx, [esi+4]
		add	edx, [ebx+14h]
		cmp	edi, edx
		jge	short loc_472751
		mov	edi, edx

loc_472751:				; CODE XREF: .text:0047274Dj
		mov	edx, [esi+0Ch]
		sub	edx, [ebx+20h]
		cmp	edi, edx
		jle	short loc_47275D
		mov	edi, edx

loc_47275D:				; CODE XREF: .text:00472759j
		mov	edx, edi
		mov	ecx, 4
		sub	edx, eax
		mov	[ebx+0Ch], edx
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-0Ch], edi
		lea	ecx, [ebp-18h]
		mov	eax, [ebp+18h]
		push	eax
		mov	edx, [ebp+14h]
		push	edx
		push	ecx
		mov	eax, [ebx+10h]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4726A8
		add	esp, 14h
		mov	ecx, 4
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-14h], edi
		lea	ecx, [ebp-18h]
		mov	eax, [ebp+18h]
		push	eax
		mov	edx, [ebp+14h]
		push	edx
		push	ecx
		mov	eax, [ebx+1Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4726A8
		add	esp, 14h
		jmp	loc_4728E4
; ---------------------------------------------------------------------------

loc_4727C3:				; CODE XREF: .text:004726D5j
		cmp	dword ptr [ebx+4], 2
		jnz	loc_4728A6
		lea	ecx, [ebp-8]
		push	ecx
		lea	eax, [ebp-4]
		push	eax
		push	esi
		push	ebx
		call	loc_472118
		add	esp, 10h
		mov	edx, [ebp+8]
		cmp	ebx, [edx+6Ch]
		jnz	short loc_4727FD
		movsx	edx, word ptr [ebp+14h]
		mov	ecx, [ebp+8]
		mov	edi, [ecx+70h]
		mov	ecx, [ebp+8]
		add	edi, eax
		add	edi, edx
		sub	edi, [ecx+74h]
		jmp	short loc_472802
; ---------------------------------------------------------------------------

loc_4727FD:				; CODE XREF: .text:004727E5j
		mov	edi, [ebx+0Ch]
		add	edi, eax

loc_472802:				; CODE XREF: .text:004727FBj
		cmp	dword ptr [ebp-4], 0
		jle	short loc_472816
		mov	edx, [esi]
		add	edx, [ebp-4]
		cmp	edi, edx
		jle	short loc_472816
		mov	edi, [esi]
		add	edi, [ebp-4]

loc_472816:				; CODE XREF: .text:00472806j
					; .text:0047280Fj
		cmp	dword ptr [ebp-8], 0
		jle	short loc_47282C
		mov	edx, [esi+8]
		sub	edx, [ebp-8]
		cmp	edi, edx
		jge	short loc_47282C
		mov	edi, [esi+8]
		sub	edi, [ebp-8]

loc_47282C:				; CODE XREF: .text:0047281Aj
					; .text:00472824j
		mov	edx, [esi]
		add	edx, [ebx+14h]
		cmp	edi, edx
		jge	short loc_472837
		mov	edi, edx

loc_472837:				; CODE XREF: .text:00472833j
		mov	edx, [esi+8]
		sub	edx, [ebx+20h]
		cmp	edi, edx
		jle	short loc_472843
		mov	edi, edx

loc_472843:				; CODE XREF: .text:0047283Fj
		mov	edx, edi
		mov	ecx, 4
		sub	edx, eax
		mov	[ebx+0Ch], edx
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-10h], edi
		lea	ecx, [ebp-18h]
		mov	eax, [ebp+18h]
		push	eax
		mov	edx, [ebp+14h]
		push	edx
		push	ecx
		mov	eax, [ebx+10h]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4726A8
		add	esp, 14h
		mov	ecx, 4
		push	esi
		push	edi
		lea	edi, [ebp-18h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-18h], edi
		lea	ecx, [ebp-18h]
		mov	eax, [ebp+18h]
		push	eax
		mov	edx, [ebp+14h]
		push	edx
		push	ecx
		mov	eax, [ebx+1Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4726A8
		add	esp, 14h
		jmp	short loc_4728E4
; ---------------------------------------------------------------------------

loc_4728A6:				; CODE XREF: .text:004727C7j
		mov	ecx, [ebx+28h]
		mov	edi, [ecx+22Ch]
		test	edi, edi
		jz	short loc_4728E4
		push	4		; uFlags
		mov	eax, [esi+0Ch]
		sub	eax, [esi+4]
		add	eax, 0FFFFFFFEh
		push	eax		; cy
		mov	edx, [esi+8]
		sub	edx, [esi]
		add	edx, 0FFFFFFFEh
		push	edx		; cx
		mov	ecx, [esi+4]
		inc	ecx
		push	ecx		; y
		mov	eax, [esi]
		inc	eax
		push	eax		; x
		push	0		; hWndInsertAfter
		push	edi		; hWnd
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		push	ecx		; hWinPosInfo
		call	DeferWindowPos
		mov	edx, [ebp+18h]
		mov	[edx], eax

loc_4728E4:				; CODE XREF: .text:004726BBj
					; .text:004726C3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4728EC:				; CODE XREF: .text:00472922p
					; .text:00472944p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, [ebx+4]
		cmp	eax, 1
		jz	short loc_472908
		cmp	eax, 2
		jnz	short loc_47294E

loc_472908:				; CODE XREF: .text:00472901j
		mov	edx, [ebp+24h]
		push	edx
		mov	ecx, [ebp+20h]
		push	ecx
		mov	eax, [ebp+1Ch]
		push	eax
		mov	edx, [ebp+18h]
		push	edx
		push	edi
		push	esi
		mov	ecx, [ebx+10h]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4728EC
		add	esp, 20h
		mov	edx, [ebp+24h]
		push	edx
		mov	ecx, [ebp+20h]
		push	ecx
		mov	eax, [ebp+1Ch]
		push	eax
		mov	edx, [ebp+18h]
		push	edx
		push	edi
		push	esi
		mov	ecx, [ebx+1Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4728EC
		add	esp, 20h
		jmp	short loc_4729AC
; ---------------------------------------------------------------------------

loc_47294E:				; CODE XREF: .text:00472906j
		cmp	dword ptr [ebx+4], 3
		jnz	short loc_4729AC
		mov	edx, [ebx+28h]
		cmp	dword ptr [edx+22Ch], 0
		jz	short loc_4729AC
		test	esi, esi
		jnz	short loc_47296F
		mov	ecx, [ebx+28h]
		mov	eax, [ecx+22Ch]
		mov	[esi], eax

loc_47296F:				; CODE XREF: .text:00472962j
		cmp	dword ptr [edi], 0
		jnz	short loc_472976
		mov	[edi], ebx

loc_472976:				; CODE XREF: .text:00472972j
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [edx], 0
		jz	short loc_47298B
		mov	ecx, [ebp+20h]
		cmp	dword ptr [ecx], 0
		jnz	short loc_47298B
		mov	eax, [ebp+20h]
		mov	[eax], ebx

loc_47298B:				; CODE XREF: .text:0047297Cj
					; .text:00472984j
		mov	edx, [ebx+28h]
		mov	ecx, [edx+22Ch]
		cmp	ecx, [esi]
		jnz	short loc_4729A7
		mov	eax, [ebp+1Ch]
		mov	[eax], ebx
		mov	edx, [ebp+24h]
		mov	eax, [ebp+18h]
		mov	ecx, [edx]
		mov	[eax], ecx

loc_4729A7:				; CODE XREF: .text:00472996j
		mov	edx, [ebp+24h]
		mov	[edx], ebx

loc_4729AC:				; CODE XREF: .text:0047294Cj
					; .text:00472952j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4729B4:				; CODE XREF: .text:004729D2p
					; .text:004729DFp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	eax, [ebx+4]
		cmp	eax, 1
		jz	short loc_4729CD
		cmp	eax, 2
		jnz	short loc_4729EC

loc_4729CD:				; CODE XREF: .text:004729C6j
		mov	edx, [ebx+10h]
		push	edx
		push	edi
		call	loc_4729B4
		add	esp, 8
		mov	ecx, [ebx+1Ch]
		push	ecx
		push	edi
		call	loc_4729B4
		add	esp, 8
		jmp	loc_472A71
; ---------------------------------------------------------------------------

loc_4729EC:				; CODE XREF: .text:004729CBj
		cmp	dword ptr [ebx+4], 3
		jnz	short loc_472A71
		xor	esi, esi
		cmp	ebx, [edi+68h]
		jnz	short loc_472A27
		mov	eax, [ebx+28h]
		mov	eax, [eax+22Ch]
		test	eax, eax
		jz	short loc_472A0C
		push	eax		; hWnd
		call	SetFocus

loc_472A0C:				; CODE XREF: .text:00472A04j
		mov	eax, [ebx+28h]
		test	eax, eax
		jz	short loc_472A40
		test	byte ptr [eax+42h], 20h
		jz	short loc_472A40
		and	dword ptr [eax+40h], 0FFDFFFFFh
		mov	esi, 1
		jmp	short loc_472A40
; ---------------------------------------------------------------------------

loc_472A27:				; CODE XREF: .text:004729F7j
		mov	eax, [ebx+28h]
		test	eax, eax
		jz	short loc_472A40
		test	byte ptr [eax+42h], 60h
		jnz	short loc_472A40
		or	dword ptr [eax+40h], 200000h
		mov	esi, 1

loc_472A40:				; CODE XREF: .text:00472A11j
					; .text:00472A17j ...
		mov	eax, [ebx+28h]
		test	byte ptr [eax+42h], 80h
		jz	short loc_472A4E
		mov	esi, 1

loc_472A4E:				; CODE XREF: .text:00472A47j
		test	esi, esi
		jz	short loc_472A71
		mov	eax, [ebx+28h]
		cmp	dword ptr [eax+22Ch], 0
		jz	short loc_472A71
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebx+28h]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	InvalidateRect

loc_472A71:				; CODE XREF: .text:004729E7j
					; .text:004729F0j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_472A78:				; CODE XREF: .text:004730C7p
					; .text:0047370Dp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	[ebp-14h], eax
		mov	[ebp-10h], eax
		mov	[ebp-0Ch], eax
		mov	[ebp-8], eax
		mov	[ebp-4], eax
		test	esi, esi
		jz	short loc_472AA4
		mov	[ebp-18h], esi
		jmp	short loc_472ABE
; ---------------------------------------------------------------------------

loc_472AA4:				; CODE XREF: .text:00472A9Dj
		mov	eax, [ebx+68h]
		test	eax, eax
		jz	short loc_472AB9
		mov	edx, [eax+28h]
		mov	ecx, [edx+22Ch]
		mov	[ebp-18h], ecx
		jmp	short loc_472ABE
; ---------------------------------------------------------------------------

loc_472AB9:				; CODE XREF: .text:00472AA9j
		xor	eax, eax
		mov	[ebp-18h], eax

loc_472ABE:				; CODE XREF: .text:00472AA2j
					; .text:00472AB7j
		lea	edx, [ebp-14h]
		lea	ecx, [ebp-10h]
		push	edx
		push	ecx
		lea	eax, [ebp-0Ch]
		lea	edx, [ebp-8]
		push	eax
		push	edx
		lea	ecx, [ebp-4]
		lea	eax, [ebp-18h]
		push	ecx
		push	eax
		mov	edx, [ebx+48h]
		push	edx
		push	ebx
		call	loc_4728EC
		add	esp, 20h
		test	esi, esi
		jnz	short loc_472B13
		test	edi, edi
		jge	short loc_472AFE
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_472AF6
		mov	ecx, [ebp-14h]
		jmp	short loc_472AF9
; ---------------------------------------------------------------------------

loc_472AF6:				; CODE XREF: .text:00472AEFj
		mov	ecx, [ebp-8]

loc_472AF9:				; CODE XREF: .text:00472AF4j
		mov	[ebp-0Ch], ecx
		jmp	short loc_472B13
; ---------------------------------------------------------------------------

loc_472AFE:				; CODE XREF: .text:00472AE9j
		test	edi, edi
		jle	short loc_472B13
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_472B0D
		mov	eax, [ebp-4]
		jmp	short loc_472B10
; ---------------------------------------------------------------------------

loc_472B0D:				; CODE XREF: .text:00472B06j
		mov	eax, [ebp-10h]

loc_472B10:				; CODE XREF: .text:00472B0Bj
		mov	[ebp-0Ch], eax

loc_472B13:				; CODE XREF: .text:00472AE5j
					; .text:00472AFCj ...
		mov	edx, [ebx+68h]
		cmp	edx, [ebp-0Ch]
		jnz	short loc_472B1F
		xor	eax, eax
		jmp	short loc_472B5E
; ---------------------------------------------------------------------------

loc_472B1F:				; CODE XREF: .text:00472B19j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_472B2A
		or	eax, 0FFFFFFFFh
		jmp	short loc_472B5E
; ---------------------------------------------------------------------------

loc_472B2A:				; CODE XREF: .text:00472B23j
		mov	edx, [ebp-0Ch]
		mov	[ebx+68h], edx
		cmp	dword_57FE88, 0
		jz	short loc_472B4C
		push	0
		mov	ecx, [ebp-0Ch]
		add	ecx, 6Ch
		push	ecx
		push	1
		call	loc_4D21C8
		add	esp, 0Ch

loc_472B4C:				; CODE XREF: .text:00472B37j
		mov	eax, [ebx+48h]
		push	eax
		push	ebx
		call	loc_4729B4
		add	esp, 8
		mov	eax, 1

loc_472B5E:				; CODE XREF: .text:00472B1Dj
					; .text:00472B28j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_472B68(LPCWSTR lpAppName, int, int)
loc_472B68:				; CODE XREF: .text:00472C76p
					; .text:00472CA4p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebp+8], 0
		jz	loc_472DF2
		test	ebx, ebx
		jz	loc_472DF2
		test	esi, esi
		jz	loc_472DF2
		xor	eax, eax
		mov	[ebx+0Ch], eax
		mov	eax, [ebx+4]
		cmp	eax, 1
		jz	short loc_472BA6
		cmp	eax, 2
		jnz	short loc_472BE4

loc_472BA6:				; CODE XREF: .text:00472B9Fj
		mov	edx, [ebp+8]
		cmp	word ptr [edx],	0
		jz	short loc_472BE4
		mov	ecx, [ebx]
		lea	eax, [ebp-208h]
		push	ecx
		push	offset aOffsetI	; "Offset[%i]"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebx+0Ch]
		lea	ecx, [ebp-208h]
		push	edx		; arglist
		push	offset aI_1	; "%i"
		push	ecx		; key
		mov	eax, [ebp+8]
		push	eax		; section
		push	0		; file
		call	Getfromini
		add	esp, 14h

loc_472BE4:				; CODE XREF: .text:00472BA4j
					; .text:00472BADj
		cmp	dword ptr [ebx+4], 1
		jnz	loc_472CB1
		lea	edx, [ebp-8]
		push	edx
		lea	ecx, [ebp-4]
		push	ecx
		push	esi
		push	ebx
		call	loc_472118
		add	esp, 10h
		mov	edi, [ebx+0Ch]
		add	edi, eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_472C1B
		mov	edx, [esi+4]
		add	edx, [ebp-4]
		cmp	edi, edx
		jle	short loc_472C1B
		mov	edi, [esi+4]
		add	edi, [ebp-4]

loc_472C1B:				; CODE XREF: .text:00472C09j
					; .text:00472C13j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_472C31
		mov	edx, [esi+0Ch]
		sub	edx, [ebp-8]
		cmp	edi, edx
		jge	short loc_472C31
		mov	edi, [esi+0Ch]
		sub	edi, [ebp-8]

loc_472C31:				; CODE XREF: .text:00472C1Fj
					; .text:00472C29j
		mov	edx, [esi+4]
		add	edx, [ebx+14h]
		cmp	edi, edx
		jge	short loc_472C3D
		mov	edi, edx

loc_472C3D:				; CODE XREF: .text:00472C39j
		mov	edx, [esi+0Ch]
		sub	edx, [ebx+20h]
		cmp	edi, edx
		jle	short loc_472C49
		mov	edi, edx

loc_472C49:				; CODE XREF: .text:00472C45j
		mov	edx, edi
		mov	ecx, 4
		sub	edx, eax
		lea	eax, [ebp-218h]
		mov	[ebx+0Ch], edx
		push	esi
		push	edi
		lea	edi, [ebp-218h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-20Ch], edi
		push	eax		; int
		mov	edx, [ebx+10h]
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; lpAppName
		call	loc_472B68
		add	esp, 0Ch
		mov	ecx, 4
		lea	eax, [ebp-218h]
		push	esi
		push	edi
		lea	edi, [ebp-218h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-214h], edi
		push	eax		; int
		mov	edx, [ebx+1Ch]
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; lpAppName
		call	loc_472B68
		add	esp, 0Ch
		jmp	loc_472DF2
; ---------------------------------------------------------------------------

loc_472CB1:				; CODE XREF: .text:00472BE8j
		cmp	dword ptr [ebx+4], 2
		jnz	loc_472D78
		lea	eax, [ebp-8]
		push	eax
		lea	edx, [ebp-4]
		push	edx
		push	esi
		push	ebx
		call	loc_472118
		add	esp, 10h
		mov	edi, [ebx+0Ch]
		add	edi, eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_472CE6
		mov	edx, [esi]
		add	edx, [ebp-4]
		cmp	edi, edx
		jle	short loc_472CE6
		mov	edi, [esi]
		add	edi, [ebp-4]

loc_472CE6:				; CODE XREF: .text:00472CD6j
					; .text:00472CDFj
		cmp	dword ptr [ebp-8], 0
		jle	short loc_472CFC
		mov	edx, [esi+8]
		sub	edx, [ebp-8]
		cmp	edi, edx
		jge	short loc_472CFC
		mov	edi, [esi+8]
		sub	edi, [ebp-8]

loc_472CFC:				; CODE XREF: .text:00472CEAj
					; .text:00472CF4j
		mov	edx, [esi]
		add	edx, [ebx+14h]
		cmp	edi, edx
		jge	short loc_472D07
		mov	edi, edx

loc_472D07:				; CODE XREF: .text:00472D03j
		mov	edx, [esi+8]
		sub	edx, [ebx+20h]
		cmp	edi, edx
		jle	short loc_472D13
		mov	edi, edx

loc_472D13:				; CODE XREF: .text:00472D0Fj
		mov	edx, edi
		mov	ecx, 4
		sub	edx, eax
		lea	eax, [ebp-218h]
		mov	[ebx+0Ch], edx
		push	esi
		push	edi
		lea	edi, [ebp-218h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-210h], edi
		push	eax		; int
		mov	edx, [ebx+10h]
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; lpAppName
		call	loc_472B68
		add	esp, 0Ch
		mov	ecx, 4
		lea	eax, [ebp-218h]
		push	esi
		push	edi
		lea	edi, [ebp-218h]
		rep movsd
		pop	edi
		pop	esi
		mov	[ebp-218h], edi
		push	eax		; int
		mov	edx, [ebx+1Ch]
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; lpAppName
		call	loc_472B68
		add	esp, 0Ch
		jmp	short loc_472DF2
; ---------------------------------------------------------------------------

loc_472D78:				; CODE XREF: .text:00472CB5j
		cmp	dword ptr [ebx+4], 3
		jnz	short loc_472DF2
		mov	eax, [ebx+28h]
		test	eax, eax
		jz	short loc_472DF2
		mov	edx, [ebp+8]
		lea	edi, [ebp-218h]
		mov	ecx, [edx+54h]
		lea	edx, [ebp-218h]
		mov	[eax+224h], ecx
		mov	ecx, 4
		or	dword ptr [eax+40h], 10000000h
		push	esi
		rep movsd
		pop	esi
		inc	dword ptr [ebp-218h]
		dec	dword ptr [ebp-210h]
		inc	dword ptr [ebp-214h]
		dec	dword ptr [ebp-20Ch]
		push	edx		; rpos
		mov	eax, [ebx+28h]
		push	eax		; pt
		mov	ecx, [eax+224h]
		push	ecx		; hparent
		call	Createottablewindow
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_472DF2
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+68h], 0
		jnz	short loc_472DF2
		mov	ecx, [ebp+8]
		mov	[ecx+68h], ebx
		push	eax		; hWnd
		call	SetFocus

loc_472DF2:				; CODE XREF: .text:00472B7Ej
					; .text:00472B86j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_472DFC(int, LPRECT lpRect)
loc_472DFC:				; CODE XREF: .text:00473D96p
					; .text:0047449Bp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_472E15
		cmp	dword ptr [ebx+58h], 0
		jz	short loc_472E15
		test	esi, esi
		jnz	short loc_472E1A

loc_472E15:				; CODE XREF: .text:00472E09j
					; .text:00472E0Fj
		or	eax, 0FFFFFFFFh
		jmp	short loc_472E3B
; ---------------------------------------------------------------------------

loc_472E1A:				; CODE XREF: .text:00472E13j
		push	esi		; lpRect
		mov	edx, [ebx+58h]
		push	edx		; hWnd
		call	GetClientRect
		push	esi		; lParam
		push	0		; wParam
		push	1328h		; Msg
		mov	ecx, [ebx+58h]
		push	ecx		; hWnd
		call	SendMessageW
		add	dword ptr [esi+4], 2
		xor	eax, eax

loc_472E3B:				; CODE XREF: .text:00472E18j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __stdcall	loc_472E40(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_472E40:				; DATA XREF: .text:0047381Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD60h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	0		; nIndex
		push	esi		; hWnd
		call	GetWindowLongW
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_472E91
		cmp	hwclient, 0
		jnz	short loc_472E7D
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_4737E4
; ---------------------------------------------------------------------------

loc_472E7D:				; CODE XREF: .text:00472E67j
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4737E4
; ---------------------------------------------------------------------------

loc_472E91:				; CODE XREF: .text:00472E5Ej
		mov	edx, edi
		cmp	edx, 104h
		jg	loc_472F2A
		jz	loc_4736F0
		cmp	edx, 22h
		jg	short loc_472F00
		jz	loc_47378C	; jumptable 00472EB9 case 3
		cmp	edx, 0Fh	; switch 16 cases
		ja	loc_4737B7	; jumptable 00472EB9 default case
		jmp	ds:off_472EC0[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_472EC0	dd offset loc_4737B7	; DATA XREF: .text:00472EB9r
		dd offset loc_4737B7	; jump table for switch	statement
		dd offset loc_472FA5
		dd offset loc_47378C
		dd offset loc_4737B7
		dd offset loc_473628
		dd offset loc_4737B7
		dd offset loc_47304A
		dd offset loc_4737B7
		dd offset loc_4737B7
		dd offset loc_4737B7
		dd offset loc_4737B7
		dd offset loc_4737B7
		dd offset loc_4737B7
		dd offset loc_4737B7
		dd offset loc_47329F
; ---------------------------------------------------------------------------

loc_472F00:				; CODE XREF: .text:00472EA8j
		sub	edx, 24h
		jz	loc_473446
		sub	edx, 22h
		jz	loc_473581
		dec	edx
		jz	loc_4735D3
		sub	edx, 0B9h
		jz	loc_4736F0
		jmp	loc_4737B7	; jumptable 00472EB9 default case
; ---------------------------------------------------------------------------

loc_472F2A:				; CODE XREF: .text:00472E99j
		cmp	edx, 473h
		jg	short loc_472F78
		jz	loc_4730C0
		cmp	edx, 200h
		jg	short loc_472F60
		jz	loc_4730E5
		sub	edx, 112h
		jz	loc_47378C	; jumptable 00472EB9 case 3
		sub	edx, 0Eh
		jz	loc_47378C	; jumptable 00472EB9 case 3
		jmp	loc_4737B7	; jumptable 00472EB9 default case
; ---------------------------------------------------------------------------

loc_472F60:				; CODE XREF: .text:00472F3Ej
		sub	edx, 201h
		jz	loc_4731F0
		dec	edx
		jz	loc_473290
		jmp	loc_4737B7	; jumptable 00472EB9 default case
; ---------------------------------------------------------------------------

loc_472F78:				; CODE XREF: .text:00472F30j
		sub	edx, 484h
		jz	loc_473745
		dec	edx
		sub	edx, 4
		jb	loc_473767
		sub	edx, 3
		jz	loc_47377F
		sub	edx, 2
		jz	loc_473767
		jmp	loc_4737B7	; jumptable 00472EB9 default case
; ---------------------------------------------------------------------------

loc_472FA5:				; CODE XREF: .text:00472EB9j
					; DATA XREF: .text:off_472EC0o
		cmp	esi, dword_57FE6C ; jumptable 00472EB9 case 2
		jnz	short loc_472FB5
		xor	ecx, ecx
		mov	dword_57FE6C, ecx

loc_472FB5:				; CODE XREF: .text:00472FABj
		test	byte ptr [ebx+46h], 2
		jz	short loc_473021
		cmp	word ptr [ebx],	0
		jz	short loc_473021
		mov	dword ptr [ebp-260h], 2Ch
		lea	eax, [ebp-260h]
		push	eax		; lpwndpl
		push	esi		; hWnd
		call	GetWindowPlacement
		mov	ecx, [ebp-258h]
		push	ecx
		mov	ecx, [ebp-238h]
		mov	edx, [ebp-240h]
		sub	ecx, edx
		push	ecx
		mov	ecx, [ebp-23Ch]
		mov	eax, [ebp-244h]
		sub	ecx, eax
		push	ecx
		push	edx
		push	eax		; arglist
		push	offset aIIIII_1	; "%i,%i,%i,%i,%i"
		push	offset aPlacement_1 ; "Placement"
		push	ebx		; section
		push	0		; file
		call	Writetoini
		add	esp, 24h
		mov	edx, [ebx+48h]
		push	edx		; int
		push	ebx		; lpAppName
		call	loc_47239C
		add	esp, 8

loc_473021:				; CODE XREF: .text:00472FB9j
					; .text:00472FBFj
		xor	eax, eax
		mov	[ebx+64h], eax
		mov	[ebx+54h], eax
		cmp	hwclient, 0
		jz	loc_4737E2
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4737E4
; ---------------------------------------------------------------------------

loc_47304A:				; CODE XREF: .text:00472EB9j
					; DATA XREF: .text:off_472EC0o
		cmp	dword_57FE88, 0	; jumptable 00472EB9 case 7
		jz	short loc_473078
		push	100h		; nMaxCount
		lea	eax, [ebp-214h]
		push	eax		; lpString
		push	esi		; hWnd
		call	GetWindowTextW
		push	0
		lea	edx, [ebp-214h]
		push	edx
		push	0
		call	loc_4D21C8
		add	esp, 0Ch

loc_473078:				; CODE XREF: .text:00473051j
		mov	eax, [ebx+68h]
		test	eax, eax
		jz	loc_4737E2
		mov	edx, [eax+28h]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	SetFocus
		cmp	dword_57FE88, 0
		jz	short loc_4730AE
		push	0
		mov	eax, [ebx+68h]
		add	eax, 6Ch
		push	eax
		push	1
		call	loc_4D21C8
		add	esp, 0Ch

loc_4730AE:				; CODE XREF: .text:00473099j
		mov	edx, [ebx+48h]
		push	edx
		push	ebx
		call	loc_4729B4
		add	esp, 8
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_4730C0:				; CODE XREF: .text:00472F32j
		push	0
		mov	ecx, [ebp+14h]
		push	ecx
		push	ebx
		call	loc_472A78
		add	esp, 0Ch
		dec	eax
		jnz	loc_4737E2
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_4730E5:				; CODE XREF: .text:00472F40j
		lea	eax, [ebp-224h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_473118
		lea	edx, [ebp-234h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-228h]
		sub	ecx, [ebp-230h]
		sub	[ebp-218h], ecx

loc_473118:				; CODE XREF: .text:004730F7j
		inc	dword ptr [ebp-224h]
		dec	dword ptr [ebp-21Ch]
		inc	dword ptr [ebp-220h]
		dec	dword ptr [ebp-218h]
		cmp	dword ptr [ebx+6Ch], 0
		jnz	short loc_4731AC
		mov	eax, [ebp+14h]
		lea	ecx, [ebp-224h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		push	edi
		push	ecx
		mov	eax, [ebx+48h]
		push	eax
		push	ebx
		call	loc_472500
		add	esp, 18h
		test	eax, eax
		jz	short loc_473174
		cmp	dword ptr [eax+4], 1
		jnz	short loc_473174
		push	7F85h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		push	eax		; hCursor
		call	SetCursor
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_473174:				; CODE XREF: .text:00473155j
					; .text:0047315Bj
		test	eax, eax
		jz	short loc_473195
		cmp	dword ptr [eax+4], 2
		jnz	short loc_473195
		push	7F84h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		push	eax		; hCursor
		call	SetCursor
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_473195:				; CODE XREF: .text:00473176j
					; .text:0047317Cj
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		push	eax		; hCursor
		call	SetCursor
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_4731AC:				; CODE XREF: .text:00473134j
		push	0Ah		; nNumWindows
		call	BeginDeferWindowPos
		mov	[ebp-14h], eax
		lea	edx, [ebp-14h]
		push	edx
		lea	eax, [ebp-224h]
		mov	ecx, [ebp+14h]
		push	ecx
		push	eax
		mov	edx, [ebx+48h]
		push	edx
		push	ebx
		call	loc_4726A8
		add	esp, 14h
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4731E1
		mov	ecx, [ebp-14h]
		push	ecx		; hWinPosInfo
		call	EndDeferWindowPos

loc_4731E1:				; CODE XREF: .text:004731D6j
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_4731F0:				; CODE XREF: .text:00472F66j
		lea	eax, [ebp-224h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_473223
		lea	edx, [ebp-234h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-228h]
		sub	ecx, [ebp-230h]
		sub	[ebp-218h], ecx

loc_473223:				; CODE XREF: .text:00473202j
		inc	dword ptr [ebp-224h]
		dec	dword ptr [ebp-21Ch]
		inc	dword ptr [ebp-220h]
		dec	dword ptr [ebp-218h]
		lea	ecx, [ebp-224h]
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		push	edi
		push	ecx
		mov	eax, [ebx+48h]
		push	eax
		push	ebx
		call	loc_472500
		add	esp, 18h
		mov	[ebx+6Ch], eax
		cmp	dword ptr [ebx+6Ch], 0
		jz	loc_4737E2
		mov	edx, [ebx+6Ch]
		mov	ecx, [edx+0Ch]
		mov	[ebx+70h], ecx
		movsx	eax, word ptr [ebp+14h]
		mov	[ebx+74h], eax
		mov	edx, [ebp+14h]
		shr	edx, 10h
		and	dx, 0FFFFh
		movsx	ecx, dx
		mov	[ebx+78h], ecx
		push	esi		; hWnd
		call	SetCapture
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_473290:				; CODE XREF: .text:00472F6Dj
		xor	eax, eax
		mov	[ebx+6Ch], eax
		call	ReleaseCapture
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_47329F:				; CODE XREF: .text:00472EB9j
					; DATA XREF: .text:off_472EC0o
		lea	edx, [ebp-224h]	; jumptable 00472EB9 case 15
		push	edx		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_4732D2
		lea	edx, [ebp-234h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-228h]
		sub	ecx, [ebp-230h]
		sub	[ebp-218h], ecx

loc_4732D2:				; CODE XREF: .text:004732B1j
		mov	eax, [ebx+50h]
		test	eax, eax
		jl	short loc_4732DE
		cmp	eax, 8
		jl	short loc_4732E7

loc_4732DE:				; CODE XREF: .text:004732D7j
		mov	edx, g_Color_index
		mov	[ebx+50h], edx

loc_4732E7:				; CODE XREF: .text:004732DCj
		lea	ecx, [ebp-2A0h]
		push	ecx		; lpPaint
		push	esi		; hWnd
		call	BeginPaint
		mov	edi, eax
		mov	eax, [ebx+50h]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		mov	ecx, scheme.textcolor[eax*8]
		push	ecx		; COLORREF
		call	CreateSolidBrush
		mov	[ebp-0Ch], eax
		mov	eax, [ebx+50h]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		mov	ecx, (scheme.textcolor+8)[eax*8]
		push	ecx		; COLORREF
		call	CreateSolidBrush
		mov	[ebp-10h], eax
		mov	eax, [ebx+68h]
		test	eax, eax
		jz	short loc_47333F
		cmp	dword ptr [eax+28h], 0
		jnz	short loc_473355

loc_47333F:				; CODE XREF: .text:00473337j
		mov	edx, [ebp-10h]
		lea	ecx, [ebp-224h]
		push	edx		; hbr
		push	ecx		; lprc
		push	edi		; hDC
		call	FillRect
		jmp	loc_473422
; ---------------------------------------------------------------------------

loc_473355:				; CODE XREF: .text:0047333Dj
		lea	eax, [ebp-234h]
		push	eax		; lpRect
		mov	edx, [ebx+68h]
		mov	ecx, [edx+28h]
		mov	eax, [ecx+22Ch]
		push	eax		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-234h]
		lea	eax, [ebp-8]
		mov	[ebp-8], edx
		mov	ecx, [ebp-230h]
		mov	[ebp-4], ecx
		push	eax		; lpPoint
		push	esi		; hWnd
		call	ScreenToClient
		mov	edx, [ebp-8]
		add	edx, 0FFFFFFFEh
		mov	[ebp-234h], edx
		mov	ecx, [ebp-4]
		add	ecx, 0FFFFFFFEh
		mov	[ebp-230h], ecx
		lea	ecx, [ebp-8]
		mov	eax, [ebp-22Ch]
		mov	[ebp-8], eax
		mov	edx, [ebp-228h]
		mov	[ebp-4], edx
		push	ecx		; lpPoint
		push	esi		; hWnd
		call	ScreenToClient
		mov	eax, [ebp-8]
		add	eax, 2
		mov	[ebp-22Ch], eax
		lea	eax, [ebp-234h]
		mov	edx, [ebp-4]
		add	edx, 2
		mov	[ebp-228h], edx
		mov	ecx, [ebp-0Ch]
		push	ecx		; hbr
		push	eax		; lprc
		push	edi		; hDC
		call	FillRect
		mov	edx, [ebp-228h]
		push	edx		; int
		mov	ecx, [ebp-22Ch]
		push	ecx		; int
		mov	eax, [ebp-230h]
		push	eax		; int
		mov	edx, [ebp-234h]
		push	edx		; int
		push	edi		; HDC
		call	ExcludeClipRect
		mov	ecx, [ebp-10h]
		lea	eax, [ebp-224h]
		push	ecx		; hbr
		push	eax		; lprc
		push	edi		; hDC
		call	FillRect
		push	0		; HRGN
		push	edi		; HDC
		call	SelectClipRgn

loc_473422:				; CODE XREF: .text:00473350j
		mov	edx, [ebp-10h]
		push	edx		; HGDIOBJ
		call	DeleteObject
		mov	ecx, [ebp-0Ch]
		push	ecx		; HGDIOBJ
		call	DeleteObject
		lea	eax, [ebp-2A0h]
		push	eax		; lpPaint
		push	esi		; hWnd
		call	EndPaint
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_473446:				; CODE XREF: .text:00472F03j
		mov	eax, fi
		xor	edx, edx
		mov	ecx, eax
		mov	[ebp-220h], edx
		mov	[ebp-224h], edx
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		mov	edx, font._width[eax*4]
		shl	edx, 5
		mov	[ebp-21Ch], edx
		mov	eax, font.height[eax*4]
		shl	eax, 4
		mov	[ebp-218h], eax
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_4734A9
		lea	edx, [ebp-234h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-228h]
		sub	ecx, [ebp-230h]
		add	[ebp-218h], ecx

loc_4734A9:				; CODE XREF: .text:00473488j
		push	0		; bMenu
		push	0CF0000h	; dwStyle
		lea	eax, [ebp-224h]
		push	eax		; lpRect
		call	AdjustWindowRect
		mov	edx, [ebp-21Ch]
		mov	ebx, [ebp+14h]
		sub	edx, [ebp-224h]
		mov	[ebx+18h], edx
		mov	eax, [ebp-218h]
		sub	eax, [ebp-220h]
		mov	[ebx+1Ch], eax
		cmp	dword_57FE64, 2
		jnz	short loc_473560
		push	20h		; nIndex
		call	GetSystemMetrics
		neg	eax
		mov	[ebx+10h], eax
		push	21h		; nIndex
		call	GetSystemMetrics
		neg	eax
		mov	[ebx+14h], eax
		push	0		; nIndex
		call	GetSystemMetrics
		push	eax
		push	20h		; nIndex
		call	GetSystemMetrics
		add	eax, eax
		pop	edx
		add	edx, eax
		mov	[ebx+8], edx
		push	1		; nIndex
		call	GetSystemMetrics
		push	eax
		push	21h		; nIndex
		call	GetSystemMetrics
		add	eax, eax
		pop	ecx
		add	ecx, eax
		mov	[ebx+0Ch], ecx
		mov	eax, hwollymain
		push	eax		; hWnd
		call	IsZoomed
		test	eax, eax
		jz	short loc_473560
		lea	edx, [ebp-234h]
		push	edx		; lpRect
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-228h]
		add	[ebx+14h], eax
		mov	edx, [ebp-228h]
		sub	[ebx+0Ch], edx

loc_473560:				; CODE XREF: .text:004734E4j
					; .text:00473539j
		cmp	hwclient, 0
		jz	loc_4737E2
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4737E4
; ---------------------------------------------------------------------------

loc_473581:				; CODE XREF: .text:00472F0Cj
		lea	edx, [ebp-224h]
		push	edx		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp+14h]
		test	byte ptr [ecx+18h], 1
		jnz	loc_4737E2
		mov	edx, [ebp-21Ch]
		mov	eax, [ebp+14h]
		sub	edx, [ebp-224h]
		cmp	edx, [eax+10h]
		jnz	short loc_4735C4
		mov	ecx, [ebp-218h]
		sub	ecx, [ebp-220h]
		cmp	ecx, [eax+14h]
		jz	loc_4737E2

loc_4735C4:				; CODE XREF: .text:004735ADj
		mov	eax, [ebp+14h]
		or	dword ptr [eax+18h], 100h
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_4735D3:				; CODE XREF: .text:00472F13j
		mov	edx, [ebp+14h]
		mov	ecx, [edx]
		mov	eax, dword_57FE6C
		cmp	ecx, eax
		jz	short loc_4735F7
		test	eax, eax
		jz	short loc_4735F7
		push	13h		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	eax		; hWnd
		call	SetWindowPos

loc_4735F7:				; CODE XREF: .text:004735DFj
					; .text:004735E3j
		cmp	hwclient, 0
		jnz	short loc_473614
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_4737E4
; ---------------------------------------------------------------------------

loc_473614:				; CODE XREF: .text:004735FEj
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4737E4
; ---------------------------------------------------------------------------

loc_473628:				; CODE XREF: .text:00472EB9j
					; DATA XREF: .text:off_472EC0o
		cmp	dword ptr [ebp+14h], 0 ; jumptable 00472EB9 case 5
		jz	loc_4736C5
		lea	ecx, [ebp-224h]
		push	ecx		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_473678
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	5		; Msg
		push	eax		; hWnd
		call	SendMessageW
		lea	eax, [ebp-234h]
		push	eax		; lpRect
		mov	edx, [ebx+64h]
		push	edx		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-228h]
		sub	ecx, [ebp-230h]
		sub	[ebp-218h], ecx

loc_473678:				; CODE XREF: .text:00473644j
		inc	dword ptr [ebp-224h]
		dec	dword ptr [ebp-21Ch]
		inc	dword ptr [ebp-220h]
		dec	dword ptr [ebp-218h]
		push	0Ah		; nNumWindows
		call	BeginDeferWindowPos
		mov	[ebp-14h], eax
		lea	eax, [ebp-14h]
		push	eax
		lea	ecx, [ebp-224h]
		mov	edx, [ebp+14h]
		push	edx
		push	ecx
		mov	eax, [ebx+48h]
		push	eax
		push	ebx
		call	loc_4726A8
		add	esp, 14h
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4736C5
		mov	edx, [ebp-14h]
		push	edx		; hWinPosInfo
		call	EndDeferWindowPos

loc_4736C5:				; CODE XREF: .text:0047362Cj
					; .text:004736BAj
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		cmp	hwclient, 0
		jz	loc_4737E2
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4737E4
; ---------------------------------------------------------------------------

loc_4736F0:				; CODE XREF: .text:00472E9Fj
					; .text:00472F1Fj
		mov	edx, [ebp+14h]
		push	edx		; __int16
		mov	ecx, [ebp+10h]
		push	ecx		; uVirtKey
		push	edi		; int
		call	loc_4249DC
		add	esp, 0Ch
		cmp	eax, 0C8h
		jnz	short loc_473717
		push	0FFFFFFFFh
		push	0
		push	ebx
		call	loc_472A78
		add	esp, 0Ch
		jmp	short loc_47372F
; ---------------------------------------------------------------------------

loc_473717:				; CODE XREF: .text:00473706j
		cmp	eax, 0C9h
		jnz	loc_4737E2
		push	1
		push	0
		push	ebx
		call	loc_472A78
		add	esp, 0Ch

loc_47372F:				; CODE XREF: .text:00473715j
		dec	eax
		jnz	loc_4737E2
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		jmp	loc_4737E2
; ---------------------------------------------------------------------------

loc_473745:				; CODE XREF: .text:00472F7Ej
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		mov	ecx, [ebx+48h]
		push	ecx		; int
		push	ebx		; int
		call	loc_472474
		add	esp, 14h
		jmp	short loc_4737E4
; ---------------------------------------------------------------------------

loc_473767:				; CODE XREF: .text:00472F88j
					; .text:00472F9Aj
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		mov	ecx, [ebx+48h]
		push	ecx		; int
		push	ebx		; int
		call	loc_472474
		add	esp, 14h
		jmp	short loc_4737E4
; ---------------------------------------------------------------------------

loc_47377F:				; CODE XREF: .text:00472F91j
		mov	eax, [ebx+40h]
		or	dword_57FE7C, eax
		xor	eax, eax
		jmp	short loc_4737E4
; ---------------------------------------------------------------------------

loc_47378C:				; CODE XREF: .text:00472EAAj
					; .text:00472EB9j ...
		cmp	hwclient, 0	; jumptable 00472EB9 case 3
		jnz	short loc_4737A6
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	short loc_4737E4
; ---------------------------------------------------------------------------

loc_4737A6:				; CODE XREF: .text:00473793j
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	short loc_4737E4
; ---------------------------------------------------------------------------

loc_4737B7:				; CODE XREF: .text:00472EB3j
					; .text:00472EB9j ...
		cmp	hwclient, 0	; jumptable 00472EB9 default case
		jnz	short loc_4737D1
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	short loc_4737E4
; ---------------------------------------------------------------------------

loc_4737D1:				; CODE XREF: .text:004737BEj
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	short loc_4737E4
; ---------------------------------------------------------------------------

loc_4737E2:				; CODE XREF: .text:00473030j
					; .text:0047307Dj ...
		xor	eax, eax

loc_4737E4:				; CODE XREF: .text:00472E78j
					; .text:00472E8Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

loc_4737F0:				; CODE XREF: .text:0040FCC4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	edx, g_hInstance
		lea	eax, [ebp-28h]
		push	eax		; lpWndClass
		push	offset word_5D54C8 ; lpClassName
		push	edx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_47385E
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-28h], ecx
		mov	edx, g_hInstance
		mov	dword ptr [ebp-24h], offset loc_472E40
		mov	[ebp-20h], eax
		xor	ecx, ecx
		mov	dword ptr [ebp-1Ch], 20h
		mov	[ebp-18h], edx
		mov	[ebp-14h], ecx
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-10h], eax
		mov	[ebp-0Ch], edx
		xor	ecx, ecx
		lea	eax, [ebp-28h]
		mov	[ebp-8], ecx
		mov	dword ptr [ebp-4], offset word_5D54C8
		push	eax		; lpWndClass
		call	RegisterClassW
		test	ax, ax
		jnz	short loc_47385E
		or	eax, 0FFFFFFFFh
		jmp	short loc_473860
; ---------------------------------------------------------------------------

loc_47385E:				; CODE XREF: .text:0047380Dj
					; .text:00473857j
		xor	eax, eax

loc_473860:				; CODE XREF: .text:0047385Cj
		mov	esp, ebp
		pop	ebp
		retn
		