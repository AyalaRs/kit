.code

; Exported entry 307. _Registermodifiedbyuser
; Exported entry 689. Registermodifiedbyuser

; int __cdecl Registermodifiedbyuser(t_thread *pthr)
		public Registermodifiedbyuser
Registermodifiedbyuser:			; CODE XREF: .text:00474F02p
					; .text:00474F89p ...
		push	ebp		; _Registermodifiedbyuser
		mov	ebp, esp
		push	esi
		push	edi
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4960FA
		cmp	dword ptr [eax+4ECh], 0
		jz	short loc_4960FA
		test	byte ptr [eax+328h], 2
		jnz	short loc_4960FA
		lea	esi, [eax+328h]
		lea	edi, [eax+4F0h]
		mov	ecx, 71h
		rep movsd
		mov	dword ptr [eax+6B4h], 1
		or	dword ptr [eax+328h], 3

loc_4960FA:				; CODE XREF: .text:004960C2j
					; .text:004960CBj ...
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_496100@<eax>(int@<eax>, int@<edx>,	int@<ecx>, LPCWSTR lpAppName, int, int,	int, int)
loc_496100:				; DATA XREF: .text:00496C85o
					; .text:00496DF9o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_496119
		xor	eax, eax
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496119:				; CODE XREF: .text:00496110j
		mov	edx, [ebp+10h]
		cmp	edx, 46Dh
		jg	short loc_496168
		jz	loc_496451
		cmp	edx, 468h
		jg	short loc_49614E
		jz	loc_496228
		sub	edx, 2
		jz	short loc_49618E
		sub	edx, 464h
		jz	loc_4961EC
		jmp	loc_496BC4
; ---------------------------------------------------------------------------

loc_49614E:				; CODE XREF: .text:00496130j
		add	edx, 0FFFFFB97h
		sub	edx, 2
		jb	loc_49625E
		jz	loc_49627F
		jmp	loc_496BC4
; ---------------------------------------------------------------------------

loc_496168:				; CODE XREF: .text:00496122j
		sub	edx, 46Fh
		jz	loc_496463
		dec	edx
		jz	loc_4969A3
		dec	edx
		jz	loc_4969E4
		dec	edx
		jz	loc_496B71
		jmp	loc_496BC4
; ---------------------------------------------------------------------------

loc_49618E:				; CODE XREF: .text:0049613Bj
		test	byte ptr [ebx+42h], 10h
		jz	short loc_4961C9
		cmp	dword ptr [ebx+220h], 0
		jz	short loc_4961C9
		mov	ecx, [ebx+220h]
		mov	[ebp-14h], ecx
		mov	eax, [ebp-14h]
		mov	edx, [eax+0Ch]
		push	edx
		mov	ecx, [ebp-14h]
		mov	eax, [ecx+8]
		push	eax		; arglist
		push	offset aII_0	; "%i,%i"
		push	offset aLocal	; "Local"
		push	ebx		; section
		push	0		; file
		call	Writetoini
		add	esp, 18h

loc_4961C9:				; CODE XREF: .text:00496192j
					; .text:0049619Bj
		test	byte ptr [ebx+43h], 10h
		jnz	loc_496BC8
		mov	edx, [ebx+220h]
		push	edx		; data
		call	Memfree
		pop	ecx
		push	ebx		; data
		call	Memfree
		pop	ecx
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_4961EC:				; CODE XREF: .text:00496143j
		mov	ecx, [ebx+248h]
		add	ecx, esi
		mov	eax, [ebx+44h]
		cmp	ecx, eax
		jbe	short loc_496221
		sub	eax, esi
		test	eax, eax
		jge	short loc_496203
		xor	eax, eax

loc_496203:				; CODE XREF: .text:004961FFj
		cmp	eax, [ebx+248h]
		jz	short loc_496221
		mov	[ebx+248h], eax
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	InvalidateRect

loc_496221:				; CODE XREF: .text:004961F9j
					; .text:00496209j
		xor	eax, eax
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496228:				; CODE XREF: .text:00496132j
		mov	edx, [ebx+248h]
		mov	eax, edx
		add	eax, [ebp+18h]
		mov	ecx, esi
		add	ecx, eax
		cmp	ecx, [ebx+44h]
		jle	short loc_496241
		mov	eax, [ebx+44h]
		sub	eax, esi

loc_496241:				; CODE XREF: .text:0049623Aj
		test	eax, eax
		jge	short loc_496247
		xor	eax, eax

loc_496247:				; CODE XREF: .text:00496243j
		cmp	eax, edx
		jz	short loc_496256
		mov	[ebx+248h], eax
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496256:				; CODE XREF: .text:00496249j
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_49625E:				; CODE XREF: .text:00496157j
		mov	edx, [ebx+248h]
		cmp	edx, [ebp+18h]
		jz	short loc_496277
		mov	ecx, [ebp+18h]
		mov	[ebx+248h], ecx
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496277:				; CODE XREF: .text:00496267j
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_49627F:				; CODE XREF: .text:0049615Dj
		mov	eax, [ebx+220h]
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_496295
		xor	eax, eax
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496295:				; CODE XREF: .text:0049628Cj
		mov	eax, [eax+8]
		mov	ecx, eax
		and	ecx, 0Fh
		and	eax, 0F0h
		mov	[ebp-10h], eax
		mov	dword ptr [ebp-18h], offset stru_5475D4
		jmp	loc_49643F
; ---------------------------------------------------------------------------

loc_4962B1:				; CODE XREF: .text:00496446j
		mov	edx, [ebp-18h]
		test	byte ptr [edx+6], 1
		jz	loc_49643B
		cmp	eax, 1
		jnz	short loc_4962CE
		mov	eax, [ebp-18h]
		mov	eax, [eax+8]
		jmp	loc_4963FA
; ---------------------------------------------------------------------------

loc_4962CE:				; CODE XREF: .text:004962C1j
		cmp	eax, 2
		jnz	short loc_4962EC
		test	ecx, ecx
		jnz	loc_49643B
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_4963FA
; ---------------------------------------------------------------------------

loc_4962EC:				; CODE XREF: .text:004962D1j
		cmp	eax, 3
		jnz	short loc_49630B
		cmp	ecx, 1
		jnz	loc_49643B
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_4963FA
; ---------------------------------------------------------------------------

loc_49630B:				; CODE XREF: .text:004962EFj
		cmp	eax, 4
		jnz	short loc_49632A
		cmp	ecx, 2
		jnz	loc_49643B
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_4963FA
; ---------------------------------------------------------------------------

loc_49632A:				; CODE XREF: .text:0049630Ej
		cmp	eax, 5
		jnz	short loc_496349
		cmp	ecx, 3
		jnz	loc_49643B
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_4963FA
; ---------------------------------------------------------------------------

loc_496349:				; CODE XREF: .text:0049632Dj
		mov	edx, [ebp-18h]
		mov	eax, [edx]
		cmp	eax, 6
		jz	short loc_496361
		cmp	eax, 7
		jz	short loc_496361
		cmp	eax, 8
		jnz	loc_49643B

loc_496361:				; CODE XREF: .text:00496351j
					; .text:00496356j
		cmp	dword_5CBBC4, 0
		jz	loc_49643B
		cmp	dword_5CBBC8, 0
		jz	loc_49643B
		mov	edx, [ebp-18h]
		cmp	dword ptr [edx], 6
		jnz	short loc_49638D
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_49643B

loc_49638D:				; CODE XREF: .text:00496381j
		mov	eax, [ebp-18h]
		cmp	dword ptr [eax], 7
		jnz	short loc_49639F
		cmp	dword ptr [ebp-10h], 10h
		jnz	loc_49643B

loc_49639F:				; CODE XREF: .text:00496393j
		mov	edx, [ebp-18h]
		cmp	dword ptr [edx], 8
		jnz	short loc_4963B1
		cmp	dword ptr [ebp-10h], 20h
		jnz	loc_49643B

loc_4963B1:				; CODE XREF: .text:004963A5j
		mov	eax, [ebp-18h]
		mov	eax, [eax+8]
		add	eax, off_54A450
		test	ecx, ecx
		jnz	short loc_4963CC
		mov	edx, off_54A454
		inc	edx
		add	eax, edx
		jmp	short loc_4963FA
; ---------------------------------------------------------------------------

loc_4963CC:				; CODE XREF: .text:004963BFj
		cmp	ecx, 1
		jnz	short loc_4963DC
		mov	edx, off_54A458
		inc	edx
		add	eax, edx
		jmp	short loc_4963FA
; ---------------------------------------------------------------------------

loc_4963DC:				; CODE XREF: .text:004963CFj
		cmp	ecx, 2
		jnz	short loc_4963EC
		mov	edx, off_54A45C
		inc	edx
		add	eax, edx
		jmp	short loc_4963FA
; ---------------------------------------------------------------------------

loc_4963EC:				; CODE XREF: .text:004963DFj
		cmp	ecx, 3
		jnz	short loc_4963FA
		mov	edx, off_54A460
		inc	edx
		add	eax, edx

loc_4963FA:				; CODE XREF: .text:004962C9j
					; .text:004962E7j ...
		mov	edx, [ebp+18h]
		add	edx, [ebx+248h]
		cmp	eax, edx
		jnz	short loc_49643B
		mov	eax, esi
		mov	edx, [ebp-18h]
		and	ax, 0FFFFh
		movzx	eax, ax
		cmp	eax, [edx+0Ch]
		jl	short loc_49643B
		mov	edx, [ebp-18h]
		cmp	eax, [edx+10h]
		jg	short loc_49643B
		mov	eax, [ebp-18h]
		mov	ecx, [eax+4]
		and	ecx, 0F1FFFFh
		push	ecx
		push	ebx
		call	loc_4943EC
		add	esp, 8
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_49643B:				; CODE XREF: .text:004962B8j
					; .text:004962D5j ...
		add	dword ptr [ebp-18h], 24h

loc_49643F:				; CODE XREF: .text:004962ACj
		mov	eax, [ebp-18h]
		mov	eax, [eax]
		test	eax, eax
		jnz	loc_4962B1
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496451:				; CODE XREF: .text:00496124j
		push	0
		push	ebx
		call	loc_4943EC
		add	esp, 8
		xor	eax, eax
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496463:				; CODE XREF: .text:0049616Ej
		mov	dx, [ebp+18h]
		and	dx, 0FFFFh
		movzx	ecx, dx
		mov	[ebp-0Ch], ecx
		cmp	dword ptr [ebp-0Ch], 25h
		jz	short loc_496491
		cmp	dword ptr [ebp-0Ch], 27h
		jz	short loc_496491
		cmp	dword ptr [ebp-0Ch], 26h
		jz	short loc_496491
		cmp	dword ptr [ebp-0Ch], 28h
		jz	short loc_496491
		xor	eax, eax
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496491:				; CODE XREF: .text:00496476j
					; .text:0049647Cj ...
		mov	edx, esi
		shr	edx, 10h
		movzx	ecx, dx
		and	ecx, 6
		cmp	ecx, 2
		jnz	short loc_496502
		cmp	dword ptr [ebp-0Ch], 26h
		mov	eax, [ebx+248h]
		jnz	short loc_4964B0
		dec	eax
		jmp	short loc_4964C1
; ---------------------------------------------------------------------------

loc_4964B0:				; CODE XREF: .text:004964ABj
		cmp	dword ptr [ebp-0Ch], 28h
		jnz	short loc_4964B9
		inc	eax
		jmp	short loc_4964C1
; ---------------------------------------------------------------------------

loc_4964B9:				; CODE XREF: .text:004964B4j
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_4964C1:				; CODE XREF: .text:004964AEj
					; .text:004964B7j
		mov	edx, esi
		and	dx, 0FFFFh
		movzx	ecx, dx
		add	ecx, eax
		cmp	ecx, [ebx+44h]
		jle	short loc_4964E1
		and	si, 0FFFFh
		movzx	eax, si
		push	eax
		mov	eax, [ebx+44h]
		pop	edx
		sub	eax, edx

loc_4964E1:				; CODE XREF: .text:004964D0j
		test	eax, eax
		jge	short loc_4964E7
		xor	eax, eax

loc_4964E7:				; CODE XREF: .text:004964E3j
		cmp	eax, [ebx+248h]
		jnz	short loc_4964F7
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_4964F7:				; CODE XREF: .text:004964EDj
		mov	[ebx+248h], eax
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496502:				; CODE XREF: .text:0049649Fj
		mov	edx, [ebx+220h]
		mov	[ebp-14h], edx
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_49651B
		shr	esi, 10h
		test	si, 4
		jz	short loc_496523

loc_49651B:				; CODE XREF: .text:0049650Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496523:				; CODE XREF: .text:00496519j
		lea	edx, [ebp-1Ch]
		push	edx
		mov	ecx, [ebp-14h]
		mov	eax, [ecx+8]
		push	eax
		mov	edx, [ebp-14h]
		mov	ecx, [edx+0Ch]
		push	ecx
		call	loc_492714
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	short loc_49654C
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4965B6

loc_49654C:				; CODE XREF: .text:00496544j
		push	10300h
		push	ebx
		call	loc_4943EC
		add	esp, 8
		lea	eax, [ebp-1Ch]
		push	eax
		mov	edx, [ebp-14h]
		mov	ecx, [edx+8]
		push	ecx
		mov	eax, [ebp-14h]
		mov	edx, [eax+0Ch]
		push	edx
		call	loc_492714
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	short loc_496583
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_49658B

loc_496583:				; CODE XREF: .text:0049657Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_49658B:				; CODE XREF: .text:00496581j
		mov	edx, [ebp-4]
		inc	edx
		push	edx		; y1
		mov	ecx, [ebp-1Ch]
		mov	eax, [ecx+10h]
		add	eax, 2
		push	eax		; x1
		mov	edx, [ebp-4]
		push	edx		; y0
		mov	ecx, [ebp-1Ch]
		mov	eax, [ecx+0Ch]
		dec	eax
		push	eax		; x0
		push	0		; column
		push	ebx		; pt
		call	Maketableareavisible
		add	esp, 18h
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_4965B6:				; CODE XREF: .text:0049654Aj
		xor	edx, edx
		mov	[ebp-20h], edx
		mov	ecx, [ebp-4]
		mov	[ebp-8], ecx
		mov	eax, [ebp-14h]
		mov	eax, [eax+8]
		mov	ecx, eax
		and	ecx, 0Fh
		and	eax, 0F0h
		mov	[ebp-10h], eax
		mov	dword ptr [ebp-18h], offset stru_5475D4
		jmp	loc_496947
; ---------------------------------------------------------------------------

loc_4965E0:				; CODE XREF: .text:0049694Ej
		mov	edx, [ebp-18h]
		mov	edx, [edx+4]
		test	edx, 10000h
		jz	loc_496943
		and	edx, 0F1FFFFh
		mov	esi, [ebp-14h]
		mov	esi, [esi+0Ch]
		and	esi, 0F1FFFFh
		cmp	edx, esi
		jz	loc_496943
		cmp	eax, 1
		jnz	short loc_49661C
		mov	eax, [ebp-18h]
		mov	eax, [eax+8]
		jmp	loc_496748
; ---------------------------------------------------------------------------

loc_49661C:				; CODE XREF: .text:0049660Fj
		cmp	eax, 2
		jnz	short loc_49663A
		test	ecx, ecx
		jnz	loc_496943
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_496748
; ---------------------------------------------------------------------------

loc_49663A:				; CODE XREF: .text:0049661Fj
		cmp	eax, 3
		jnz	short loc_496659
		cmp	ecx, 1
		jnz	loc_496943
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_496748
; ---------------------------------------------------------------------------

loc_496659:				; CODE XREF: .text:0049663Dj
		cmp	eax, 4
		jnz	short loc_496678
		cmp	ecx, 2
		jnz	loc_496943
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_496748
; ---------------------------------------------------------------------------

loc_496678:				; CODE XREF: .text:0049665Cj
		cmp	eax, 5
		jnz	short loc_496697
		cmp	ecx, 3
		jnz	loc_496943
		mov	edx, [ebp-18h]
		mov	eax, [edx+8]
		add	eax, off_54A450
		jmp	loc_496748
; ---------------------------------------------------------------------------

loc_496697:				; CODE XREF: .text:0049667Bj
		mov	edx, [ebp-18h]
		mov	eax, [edx]
		cmp	eax, 6
		jz	short loc_4966AF
		cmp	eax, 7
		jz	short loc_4966AF
		cmp	eax, 8
		jnz	loc_496943

loc_4966AF:				; CODE XREF: .text:0049669Fj
					; .text:004966A4j
		cmp	dword_5CBBC4, 0
		jz	loc_496943
		cmp	dword_5CBBC8, 0
		jz	loc_496943
		mov	edx, [ebp-18h]
		cmp	dword ptr [edx], 6
		jnz	short loc_4966DB
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_496943

loc_4966DB:				; CODE XREF: .text:004966CFj
		mov	eax, [ebp-18h]
		cmp	dword ptr [eax], 7
		jnz	short loc_4966ED
		cmp	dword ptr [ebp-10h], 10h
		jnz	loc_496943

loc_4966ED:				; CODE XREF: .text:004966E1j
		mov	edx, [ebp-18h]
		cmp	dword ptr [edx], 8
		jnz	short loc_4966FF
		cmp	dword ptr [ebp-10h], 20h
		jnz	loc_496943

loc_4966FF:				; CODE XREF: .text:004966F3j
		mov	eax, [ebp-18h]
		mov	eax, [eax+8]
		add	eax, off_54A450
		test	ecx, ecx
		jnz	short loc_49671A
		mov	edx, off_54A454
		inc	edx
		add	eax, edx
		jmp	short loc_496748
; ---------------------------------------------------------------------------

loc_49671A:				; CODE XREF: .text:0049670Dj
		cmp	ecx, 1
		jnz	short loc_49672A
		mov	edx, off_54A458
		inc	edx
		add	eax, edx
		jmp	short loc_496748
; ---------------------------------------------------------------------------

loc_49672A:				; CODE XREF: .text:0049671Dj
		cmp	ecx, 2
		jnz	short loc_49673A
		mov	edx, off_54A45C
		inc	edx
		add	eax, edx
		jmp	short loc_496748
; ---------------------------------------------------------------------------

loc_49673A:				; CODE XREF: .text:0049672Dj
		cmp	ecx, 3
		jnz	short loc_496748
		mov	edx, off_54A460
		inc	edx
		add	eax, edx

loc_496748:				; CODE XREF: .text:00496617j
					; .text:00496635j ...
		cmp	dword ptr [ebp-0Ch], 26h
		jnz	loc_496815
		cmp	eax, [ebp-4]
		jge	loc_496943
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_49676F
		mov	edx, [ebp-18h]
		mov	[ebp-20h], edx
		mov	[ebp-8], eax
		jmp	loc_496943
; ---------------------------------------------------------------------------

loc_49676F:				; CODE XREF: .text:0049675Fj
		mov	edx, [ebp-18h]
		mov	esi, [ebp-20h]
		mov	esi, [esi+4]
		mov	edx, [edx+4]
		and	edx, 0F1FFFFh
		and	esi, 0F1FFFFh
		cmp	edx, esi
		jnz	short loc_49679E
		cmp	eax, [ebp-8]
		jge	short loc_49679E
		mov	edx, [ebp-18h]
		mov	[ebp-20h], edx
		mov	[ebp-8], eax
		jmp	loc_496943
; ---------------------------------------------------------------------------

loc_49679E:				; CODE XREF: .text:00496789j
					; .text:0049678Ej
		mov	edx, [ebp-18h]
		mov	esi, [ebp-20h]
		mov	esi, [esi+4]
		mov	edx, [edx+4]
		and	edx, 0F1FFFFh
		and	esi, 0F1FFFFh
		cmp	edx, esi
		jz	short loc_4967CD
		cmp	eax, [ebp-8]
		jle	short loc_4967CD
		mov	edx, [ebp-18h]
		mov	[ebp-20h], edx
		mov	[ebp-8], eax
		jmp	loc_496943
; ---------------------------------------------------------------------------

loc_4967CD:				; CODE XREF: .text:004967B8j
					; .text:004967BDj
		cmp	eax, [ebp-8]
		jnz	loc_496943
		mov	eax, [ebp-1Ch]
		mov	esi, [eax+0Ch]
		mov	eax, [ebp-18h]
		sub	esi, [eax+0Ch]
		mov	eax, esi
		cdq
		xor	eax, edx
		sub	eax, edx
		mov	esi, eax
		mov	eax, [ebp-1Ch]
		mov	edx, [eax+0Ch]
		mov	eax, [ebp-20h]
		sub	edx, [eax+0Ch]
		mov	[ebp-24h], edx
		mov	eax, [ebp-24h]
		cdq
		xor	eax, edx
		sub	eax, edx
		cmp	esi, eax
		jge	loc_496943
		mov	eax, [ebp-18h]
		mov	[ebp-20h], eax
		jmp	loc_496943
; ---------------------------------------------------------------------------

loc_496815:				; CODE XREF: .text:0049674Cj
		cmp	dword ptr [ebp-0Ch], 28h
		jnz	loc_4968DB
		cmp	eax, [ebp-4]
		jle	loc_496943
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_49683C
		mov	edx, [ebp-18h]
		mov	[ebp-20h], edx
		mov	[ebp-8], eax
		jmp	loc_496943
; ---------------------------------------------------------------------------

loc_49683C:				; CODE XREF: .text:0049682Cj
		mov	edx, [ebp-18h]
		mov	esi, [ebp-20h]
		mov	esi, [esi+4]
		mov	edx, [edx+4]
		and	edx, 0F1FFFFh
		and	esi, 0F1FFFFh
		cmp	edx, esi
		jnz	short loc_49686B
		cmp	eax, [ebp-8]
		jle	short loc_49686B
		mov	edx, [ebp-18h]
		mov	[ebp-20h], edx
		mov	[ebp-8], eax
		jmp	loc_496943
; ---------------------------------------------------------------------------

loc_49686B:				; CODE XREF: .text:00496856j
					; .text:0049685Bj
		mov	edx, [ebp-18h]
		mov	esi, [ebp-20h]
		mov	esi, [esi+4]
		mov	edx, [edx+4]
		and	edx, 0F1FFFFh
		and	esi, 0F1FFFFh
		cmp	edx, esi
		jz	short loc_49689A
		cmp	eax, [ebp-8]
		jge	short loc_49689A
		mov	edx, [ebp-18h]
		mov	[ebp-20h], edx
		mov	[ebp-8], eax
		jmp	loc_496943
; ---------------------------------------------------------------------------

loc_49689A:				; CODE XREF: .text:00496885j
					; .text:0049688Aj
		cmp	eax, [ebp-8]
		jnz	loc_496943
		mov	eax, [ebp-1Ch]
		mov	esi, [eax+0Ch]
		mov	eax, [ebp-18h]
		sub	esi, [eax+0Ch]
		mov	eax, esi
		cdq
		xor	eax, edx
		sub	eax, edx
		mov	esi, eax
		mov	eax, [ebp-1Ch]
		mov	edx, [eax+0Ch]
		mov	eax, [ebp-20h]
		sub	edx, [eax+0Ch]
		mov	[ebp-28h], edx
		mov	eax, [ebp-28h]
		cdq
		xor	eax, edx
		sub	eax, edx
		cmp	esi, eax
		jge	short loc_496943
		mov	eax, [ebp-18h]
		mov	[ebp-20h], eax
		jmp	short loc_496943
; ---------------------------------------------------------------------------

loc_4968DB:				; CODE XREF: .text:00496819j
		cmp	dword ptr [ebp-0Ch], 25h
		jnz	short loc_496910
		cmp	eax, [ebp-4]
		jnz	short loc_496943
		mov	edx, [ebp-18h]
		mov	eax, [edx+0Ch]
		mov	edx, [ebp-1Ch]
		cmp	eax, [edx+0Ch]
		jge	short loc_496943
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_496908
		mov	eax, [ebp-18h]
		mov	edx, [eax+0Ch]
		mov	eax, [ebp-20h]
		cmp	edx, [eax+0Ch]
		jle	short loc_496943

loc_496908:				; CODE XREF: .text:004968F8j
		mov	edx, [ebp-18h]
		mov	[ebp-20h], edx
		jmp	short loc_496943
; ---------------------------------------------------------------------------

loc_496910:				; CODE XREF: .text:004968DFj
		cmp	dword ptr [ebp-0Ch], 27h
		jnz	short loc_496943
		cmp	eax, [ebp-4]
		jnz	short loc_496943
		mov	eax, [ebp-18h]
		mov	edx, [eax+0Ch]
		mov	eax, [ebp-1Ch]
		cmp	edx, [eax+0Ch]
		jle	short loc_496943
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_49693D
		mov	edx, [ebp-18h]
		mov	eax, [edx+0Ch]
		mov	edx, [ebp-20h]
		cmp	eax, [edx+0Ch]
		jge	short loc_496943

loc_49693D:				; CODE XREF: .text:0049692Dj
		mov	eax, [ebp-18h]
		mov	[ebp-20h], eax

loc_496943:				; CODE XREF: .text:004965ECj
					; .text:00496606j ...
		add	dword ptr [ebp-18h], 24h

loc_496947:				; CODE XREF: .text:004965DBj
		mov	edx, [ebp-18h]
		mov	eax, [edx]
		test	eax, eax
		jnz	loc_4965E0
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_496962
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496962:				; CODE XREF: .text:00496958j
		mov	edx, [ebp-20h]
		mov	ecx, [edx+4]
		and	ecx, 0F1FFFFh
		push	ecx
		push	ebx
		call	loc_4943EC
		add	esp, 8
		mov	eax, [ebp-8]
		inc	eax
		push	eax		; y1
		mov	edx, [ebp-20h]
		mov	ecx, [edx+10h]
		add	ecx, 2
		push	ecx		; x1
		mov	eax, [ebp-8]
		push	eax		; y0
		mov	edx, [ebp-20h]
		mov	ecx, [edx+0Ch]
		dec	ecx
		push	ecx		; x0
		push	0		; column
		push	ebx		; pt
		call	Maketableareavisible
		add	esp, 18h
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_4969A3:				; CODE XREF: .text:00496175j
		mov	eax, [ebx+220h]
		test	eax, eax
		jz	loc_496BC8
		mov	eax, [eax+8]
		test	al, 0Fh
		jnz	short loc_4969C0
		and	eax, 0FFFFFFF0h
		or	eax, 1
		jmp	short loc_4969D5
; ---------------------------------------------------------------------------

loc_4969C0:				; CODE XREF: .text:004969B6j
		mov	edx, eax
		and	edx, 0Fh
		cmp	edx, 1
		jnz	short loc_4969D2
		and	eax, 0FFFFFFF0h
		or	eax, 2
		jmp	short loc_4969D5
; ---------------------------------------------------------------------------

loc_4969D2:				; CODE XREF: .text:004969C8j
		and	eax, 0FFFFFFF0h

loc_4969D5:				; CODE XREF: .text:004969BEj
					; .text:004969D0j
		push	eax
		push	ebx
		call	loc_494BB4
		add	esp, 8
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_4969E4:				; CODE XREF: .text:0049617Cj
		mov	ecx, [ebx+220h]
		mov	[ebp-14h], ecx
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4969FB
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_4969FB:				; CODE XREF: .text:004969F1j
		mov	edx, [ebp-14h]
		mov	ecx, [edx+8]
		push	ecx
		mov	eax, [ebp+18h]
		add	eax, [ebx+248h]
		push	eax
		mov	edx, esi
		and	dx, 0FFFFh
		movzx	ecx, dx
		push	ecx
		call	loc_492878
		add	esp, 0Ch
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_496A53
		mov	eax, [ebp-18h]
		mov	edx, [eax+4]
		and	edx, 0F1FF00h
		cmp	edx, 100100h
		jnz	short loc_496A53
		mov	ecx, [ebp-18h]
		mov	eax, [ecx+4]
		and	eax, 0FFh
		push	eax
		call	loc_477DA4
		pop	ecx
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496A53:				; CODE XREF: .text:00496A26j
					; .text:00496A3Aj
		lea	edx, [ebp-18h]
		push	edx
		mov	ecx, [ebp-14h]
		mov	eax, [ecx+8]
		push	eax
		mov	edx, [ebp-14h]
		mov	ecx, [edx+0Ch]
		push	ecx
		call	loc_492714
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_496A79
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496A79:				; CODE XREF: .text:00496A6Fj
		mov	edx, esi
		mov	ecx, [ebp-18h]
		and	dx, 0FFFFh
		sub	eax, [ebx+248h]
		movzx	edx, dx
		cmp	edx, [ecx+0Ch]
		jl	short loc_496A99
		mov	ecx, [ebp-18h]
		cmp	edx, [ecx+10h]
		jle	short loc_496AA1

loc_496A99:				; CODE XREF: .text:00496A8Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496AA1:				; CODE XREF: .text:00496A97j
		mov	edx, [ebp-18h]
		test	byte ptr [edx+7], 3
		jnz	short loc_496AAF
		cmp	eax, [ebp+18h]
		jnz	short loc_496AC3

loc_496AAF:				; CODE XREF: .text:00496AA8j
		mov	edx, [ebp-18h]
		test	byte ptr [edx+7], 3
		jz	short loc_496ACB
		cmp	eax, [ebp+18h]
		jz	short loc_496ACB
		inc	eax
		cmp	eax, [ebp+18h]
		jz	short loc_496ACB

loc_496AC3:				; CODE XREF: .text:00496AADj
		or	eax, 0FFFFFFFFh
		jmp	loc_496BCD
; ---------------------------------------------------------------------------

loc_496ACB:				; CODE XREF: .text:00496AB6j
					; .text:00496ABBj ...
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_496B01
		mov	edx, [ebp-18h]
		mov	ecx, [edx+4]
		and	ecx, 0F1FFFFh
		cmp	ecx, 10500h
		jnz	short loc_496B01
		push	0		; index
		push	offset loc_49428C ; menufunc
		mov	eax, [ebx+218h]
		push	eax		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496B01:				; CODE XREF: .text:00496ACFj
					; .text:00496AE3j
		cmp	run.status, 13h
		jnz	short loc_496B21
		push	offset aProgramTermina ; "Program terminated"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496B21:				; CODE XREF: .text:00496B08j
		cmp	run.status, 12h
		jz	short loc_496B41
		push	offset aProgramIsRunni ; "Program is running"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_496BC8
; ---------------------------------------------------------------------------

loc_496B41:				; CODE XREF: .text:00496B28j
		push	0		; index
		push	offset loc_492D50 ; menufunc
		mov	edx, [ebx+218h]
		push	edx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		push	0		; index
		push	offset loc_492DD4 ; menufunc
		mov	ecx, [ebx+218h]
		push	ecx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_496BC8
; ---------------------------------------------------------------------------

loc_496B71:				; CODE XREF: .text:00496183j
		mov	eax, [ebx+220h]
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_496B84
		xor	eax, eax
		jmp	short loc_496BCD
; ---------------------------------------------------------------------------

loc_496B84:				; CODE XREF: .text:00496B7Ej
		lea	edx, [ebp-18h]
		push	edx
		mov	ecx, [ebp-14h]
		mov	eax, [ecx+8]
		push	eax
		mov	edx, [ebp-14h]
		mov	ecx, [edx+0Ch]
		push	ecx
		call	loc_492714
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_496BA6
		xor	eax, eax
		jmp	short loc_496BCD
; ---------------------------------------------------------------------------

loc_496BA6:				; CODE XREF: .text:00496BA0j
		sub	ax, [ebx+248h]
		movzx	eax, ax
		mov	edx, [ebp-18h]
		shl	eax, 10h
		mov	cx, [edx+10h]
		inc	ecx
		movzx	edx, cx
		or	edx, eax
		mov	eax, edx
		jmp	short loc_496BCD
; ---------------------------------------------------------------------------

loc_496BC4:				; CODE XREF: .text:00496149j
					; .text:00496163j ...
		xor	eax, eax
		jmp	short loc_496BCD
; ---------------------------------------------------------------------------

loc_496BC8:				; CODE XREF: .text:004961CDj
					; .text:004961E7j ...
		mov	eax, 1

loc_496BCD:				; CODE XREF: .text:00496114j
					; .text:00496223j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_496BD4:				; CODE XREF: .text:0045B39Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset aO_0 ; "O"
;__DebugBreak		
		cmp	off_54A450, 0
		jnz	short loc_496BED
		call	loc_492648

loc_496BED:				; CODE XREF: .text:00496BE6j
		push	2		; flags
		push	26Ch		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		push	2		; flags
		push	10h		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	ebx, ebx
		jz	short loc_496C14
		test	esi, esi
		jnz	short loc_496C31

loc_496C14:				; CODE XREF: .text:00496C0Ej
		test	ebx, ebx
		jz	short loc_496C1F
		push	ebx		; data
		call	Memfree
		pop	ecx

loc_496C1F:				; CODE XREF: .text:00496C16j
		test	esi, esi
		jz	short loc_496C2A
		push	esi		; data
		call	Memfree
		pop	ecx

loc_496C2A:				; CODE XREF: .text:00496C21j
		xor	eax, eax
		jmp	loc_496D4E
; ---------------------------------------------------------------------------

loc_496C31:				; CODE XREF: .text:00496C12j
		lea	edx, aRegisters;[edi+6D8h]
		push	edx		; src
		push	ebx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+40h], 136081h
		mov	dword ptr [ebx+8Ch], 1
		mov	dword ptr [ebx+90h], 1
		lea	ecx, aRegistersFpu;[edi+654h]
		lea	eax, aPressToToggleB;[edi+1B00h]
		mov	[ebx+94h], ecx
		mov	[ebx+0D8h], eax
		mov	dword ptr [ebx+11Ch], 99h
		mov	dword ptr [ebx+160h], 100h
		mov	dword ptr [ebx+208h], offset loc_496100
		add	esp, 8
		cmp	restorewinpos, 0
		jz	short loc_496CBE
		lea	edx, [esi+0Ch]
		push	edx
		lea	ecx, [esi+8]
		push	ecx		; arglist
		lea	eax, $CTW0("%i,%i");[edi+1AA8h]
		push	eax		; format
		lea	edx, aLocal;[edi+1A9Ch]
		push	edx		; key
		push	ebx		; section
		push	0		; file
		call	Getfromini
		add	esp, 18h
		jmp	short loc_496CCE
; ---------------------------------------------------------------------------

loc_496CBE:				; CODE XREF: .text:00496C99j
		xor	ecx, ecx
		mov	[esi+8], ecx
		push	0
		push	ebx
		call	loc_4943EC
		add	esp, 8

loc_496CCE:				; CODE XREF: .text:00496CBCj
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+21Ch], eax
		mov	[ebx+220h], esi
		mov	[ebx+20Ch], edx
		xor	ecx, ecx
		mov	dword ptr [ebx+210h], offset loc_494D7C
		mov	[ebx+214h], ecx
		lea	eax, aRegisters;[edi+6D8h]
		mov	dword ptr [ebx+218h], (offset stru_54A600._name+78h)
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	edx, aIco_r;[edi+1B4Eh]
		mov	ecx, g_hInstance
		push	edx		; icon
		push	ecx		; hi
		mov	eax, [ebx+8Ch]
		push	eax		; ncolumn
		push	0		; nrow
		push	ebx		; pt
		call	Createtablewindow
		add	esp, 18h
		mov	edx, [ebp+8]
		push	edx
		push	ebx
		call	loc_494C8C
		add	esp, 8
		mov	ecx, [esi+8]
		push	ecx
		push	ebx
		call	loc_494BB4
		add	esp, 8
		mov	eax, [ebx+22Ch]

loc_496D4E:				; CODE XREF: .text:00496C2Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_496D54(LPCWSTR lpAppName, int)
loc_496D54:				; CODE XREF: .text:00477876p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_496D68
		or	eax, 0FFFFFFFFh
		jmp	loc_496E87
; ---------------------------------------------------------------------------

loc_496D68:				; CODE XREF: .text:00496D5Ej
		cmp	off_54A450, 0
		jnz	short loc_496D76
		call	loc_492648

loc_496D76:				; CODE XREF: .text:00496D6Fj
		mov	eax, [ebx+220h]
		test	eax, eax
		jz	short loc_496D87
		push	eax		; data
		call	Memfree
		pop	ecx		; int

loc_496D87:				; CODE XREF: .text:00496D7Ej
		push	2		; flags
		push	10h		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_496DA1
		or	eax, 0FFFFFFFFh
		jmp	loc_496E87
; ---------------------------------------------------------------------------

loc_496DA1:				; CODE XREF: .text:00496D97j
		mov	edx, [ebp+0Ch]
		push	edx		; src
		push	1Fh		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	word ptr [ebx+3Eh], 0
		mov	dword ptr [ebx+40h], 10116081h
		mov	dword ptr [ebx+8Ch], 1
		mov	dword ptr [ebx+90h], 1
		mov	dword ptr [ebx+94h], offset aRegistersFpu ; "Registers (FPU)"
		mov	dword ptr [ebx+0D8h], offset aPressToToggleB ; "Press to toggle	between	FPU/MMX/3DNow!"
		mov	dword ptr [ebx+11Ch], 99h
		mov	dword ptr [ebx+160h], 100h
		mov	dword ptr [ebx+208h], offset loc_496100
		cmp	restorewinpos, 0
		jz	short loc_496E2B
		lea	ecx, [esi+0Ch]
		push	ecx
		lea	eax, [esi+8]
		push	eax		; arglist
		push	offset aII_0	; "%i,%i"
		push	offset aLocal	; "Local"
		push	ebx		; section
		push	0		; file
		call	Getfromini
		add	esp, 18h
		jmp	short loc_496E3B
; ---------------------------------------------------------------------------

loc_496E2B:				; CODE XREF: .text:00496E0Aj
		xor	edx, edx
		mov	[esi+8], edx
		push	0
		push	ebx
		call	loc_4943EC
		add	esp, 8

loc_496E3B:				; CODE XREF: .text:00496E29j
		mov	dword ptr [esi], 0FFFFFFFFh
		xor	ecx, ecx
		mov	[esi+4], ecx
		xor	eax, eax
		mov	[ebx+21Ch], eax
		xor	edx, edx
		mov	[ebx+220h], esi
		mov	[ebx+20Ch], edx
		mov	dword ptr [ebx+210h], offset loc_494D7C
		xor	ecx, ecx
		mov	[ebx+214h], ecx
		mov	dword ptr [ebx+218h], (offset stru_54A600._name+78h)
		mov	eax, [esi+8]
		push	eax
		push	ebx
		call	loc_494BB4
		add	esp, 8
		xor	eax, eax

loc_496E87:				; CODE XREF: .text:00496D63j
					; .text:00496D9Cj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_496E8C:				; CODE XREF: .text:00497328p
					; .text:0049767Fp
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	eax, 8		; switch 9 cases
		ja	short loc_496EFA ; jumptable 00496E97 default case
		jmp	ds:off_496E9E[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_496E9E	dd offset loc_496EFA	; DATA XREF: .text:00496E97r
		dd offset loc_496EC2	; jump table for switch	statement
		dd offset loc_496EC9
		dd offset loc_496ED0
		dd offset loc_496ED7
		dd offset loc_496EDE
		dd offset loc_496EE5
		dd offset loc_496EEC
		dd offset loc_496EF3
; ---------------------------------------------------------------------------

loc_496EC2:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aInt1 ; jumptable 00496E97 case 1
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496EC9:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aHlt_0 ; jumptable 00496E97	case 2
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496ED0:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aCli_0 ; jumptable 00496E97	case 3
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496ED7:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aSti_0 ; jumptable 00496E97	case 4
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496EDE:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aInsb_0 ; jumptable	00496E97 case 5
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496EE5:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aInsd ; jumptable 00496E97 case 6
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496EEC:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aOutsb_0 ; jumptable 00496E97 case 7
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496EF3:				; CODE XREF: .text:00496E97j
					; DATA XREF: .text:off_496E9Eo
		mov	eax, offset aOutsd ; jumptable 00496E97	case 8
		jmp	short loc_496EFF
; ---------------------------------------------------------------------------

loc_496EFA:				; CODE XREF: .text:00496E95j
					; .text:00496E97j
					; DATA XREF: ...
		mov	eax, offset aInt3_0 ; jumptable	00496E97 default case

loc_496EFF:				; CODE XREF: .text:00496EC7j
					; .text:00496ECEj ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_496F04:				; DATA XREF: .data:stru_54C6E4o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebx+68h]
		push	eax		; index
		add	ebx, 44h
		push	ebx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_5EC2BC, eax
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_496F28:				; DATA XREF: .data:stru_54C6E4o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+14h]
		mov	esi, [ebp+8]
		mov	eax, dword_5EC2BC
		test	eax, eax
		jz	short loc_496F42
		test	byte ptr [eax+9], 10h
		jnz	short loc_496F46

loc_496F42:				; CODE XREF: .text:00496F3Aj
		xor	eax, eax
		jmp	short loc_496F80
; ---------------------------------------------------------------------------

loc_496F46:				; CODE XREF: .text:00496F40j
		test	edx, edx
		jnz	short loc_496F51
		mov	eax, 1
		jmp	short loc_496F80
; ---------------------------------------------------------------------------

loc_496F51:				; CODE XREF: .text:00496F48j
		dec	edx
		jnz	short loc_496F7E
		mov	ebx, [esi+68h]
		push	1000h		; type
		mov	eax, [eax]
		push	eax		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		cmp	ebx, [esi+44h]
		jl	short loc_496F6D
		dec	ebx

loc_496F6D:				; CODE XREF: .text:00496F6Aj
		push	ebx		; selected
		push	esi		; pt
		call	Settableselection
		add	esp, 8
		mov	eax, 1
		jmp	short loc_496F80
; ---------------------------------------------------------------------------

loc_496F7E:				; CODE XREF: .text:00496F52j
		xor	eax, eax

loc_496F80:				; CODE XREF: .text:00496F44j
					; .text:00496F4Fj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_496F84:				; DATA XREF: .data:stru_54C6E4o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	edx, dword_5EC2BC
		test	edx, edx
		jz	short loc_496FA2
		test	byte ptr [edx+9], 10h
		jnz	short loc_496FA6

loc_496FA2:				; CODE XREF: .text:00496F9Aj
		xor	eax, eax
		jmp	short loc_497014
; ---------------------------------------------------------------------------

loc_496FA6:				; CODE XREF: .text:00496FA0j
		test	eax, eax
		jnz	short loc_496FD4
		mov	ecx, dword_5EC2BC
		test	byte ptr [ecx+0Ah], 2
		jnz	short loc_496FBA
		test	esi, esi
		jnz	short loc_496FC9

loc_496FBA:				; CODE XREF: .text:00496FB4j
		mov	eax, dword_5EC2BC
		test	byte ptr [eax+0Ah], 2
		jz	short loc_496FCD
		test	esi, esi
		jnz	short loc_496FCD

loc_496FC9:				; CODE XREF: .text:00496FB8j
		xor	eax, eax
		jmp	short loc_497014
; ---------------------------------------------------------------------------

loc_496FCD:				; CODE XREF: .text:00496FC3j
					; .text:00496FC7j
		mov	eax, 1
		jmp	short loc_497014
; ---------------------------------------------------------------------------

loc_496FD4:				; CODE XREF: .text:00496FA8j
		dec	eax
		jnz	short loc_497012
		push	esi		; enable
		mov	edx, dword_5EC2BC
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Enableint3breakpoint
		add	esp, 8
		call	loc_42521C
		test	eax, eax
		jz	short loc_49700B
		mov	eax, [ebx+68h]
		mov	edx, [ebx+44h]
		dec	edx
		cmp	eax, edx
		jge	short loc_49700B
		mov	ecx, [ebx+68h]
		inc	ecx
		push	ecx		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8

loc_49700B:				; CODE XREF: .text:00496FF0j
					; .text:00496FFBj
		mov	eax, 1
		jmp	short loc_497014
; ---------------------------------------------------------------------------

loc_497012:				; CODE XREF: .text:00496FD5j
		xor	eax, eax

loc_497014:				; CODE XREF: .text:00496FA4j
					; .text:00496FCBj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_497018:				; DATA XREF: .data:stru_54C6E4o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	edx, dword_5EC2BC
		test	edx, edx
		jz	short loc_497039
		test	byte ptr [edx+9], 10h
		jnz	short loc_497040

loc_497039:				; CODE XREF: .text:00497031j
		xor	eax, eax
		jmp	loc_4970E9
; ---------------------------------------------------------------------------

loc_497040:				; CODE XREF: .text:00497037j
		test	eax, eax
		jnz	short loc_497060
		cmp	esi, 119h
		jnz	short loc_497056
		mov	eax, 5
		jmp	loc_4970E9
; ---------------------------------------------------------------------------

loc_497056:				; CODE XREF: .text:0049704Aj
		mov	eax, 1
		jmp	loc_4970E9
; ---------------------------------------------------------------------------

loc_497060:				; CODE XREF: .text:00497042j
		dec	eax
		jnz	loc_4970E7
		lea	edx, [ebp-8]
		push	edx		; coord
		push	2		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_497083
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_497083:				; CODE XREF: .text:00497078j
		cmp	esi, 119h
		jnz	short loc_4970B6
		mov	eax, [ebx+234h]
		push	eax		; fi
		mov	edx, [ebp-4]
		push	edx		; y
		mov	edx, dword_5EC2BC ; int
		mov	eax, [ebp-8]	; int
		push	eax		; x
		push	0		; _title
		push	1		; naddr
		push	edx		; _addr
		mov	ecx, [ebx+22Ch]	; int
		push	ecx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		jmp	short loc_4970E0
; ---------------------------------------------------------------------------

loc_4970B6:				; CODE XREF: .text:00497089j
		mov	eax, [ebx+234h]
		push	eax		; fi
		mov	eax, dword_5EC2BC ; int
		mov	edx, [ebp-4]
		push	edx		; y
		mov	ecx, [ebp-8]	; int
		push	ecx		; x
		push	0		; _title
		push	0		; fnindex
		push	1		; naddr
		push	eax		; _addr
		mov	edx, [ebx+22Ch]	; int
		push	edx		; hparent
		call	Condlogbreakpoint
		add	esp, 20h

loc_4970E0:				; CODE XREF: .text:004970B4j
		mov	eax, 1
		jmp	short loc_4970E9
; ---------------------------------------------------------------------------

loc_4970E7:				; CODE XREF: .text:00497061j
		xor	eax, eax

loc_4970E9:				; CODE XREF: .text:0049703Bj
					; .text:00497051j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_4970F0
loc_4970F0:				; DATA XREF: .text:00498256o
					; .data:stru_54C6E4o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, dword_5EC2BC
		test	edx, edx
		jnz	short loc_497104
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_497104:				; CODE XREF: .text:004970FEj
		test	eax, eax
		jnz	short loc_49710F
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49710F:				; CODE XREF: .text:00497106j
		dec	eax
		jnz	short loc_49712B
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	edx, [edx]
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49712B:				; CODE XREF: .text:00497110j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_497130:				; DATA XREF: .data:stru_54C6E4o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edi, eax
		xor	ebx, ebx
		jmp	short loc_497169
; ---------------------------------------------------------------------------

loc_497145:				; CODE XREF: .text:0049716Cj
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	edx, [eax+8]
		test	dh, 10h
		jz	short loc_497168
		test	edx, 20000h
		jz	short loc_497167
		inc	dword ptr [ebp-4]
		jmp	short loc_497168
; ---------------------------------------------------------------------------

loc_497167:				; CODE XREF: .text:00497160j
		inc	edi

loc_497168:				; CODE XREF: .text:00497158j
					; .text:00497165j
		inc	ebx

loc_497169:				; CODE XREF: .text:00497143j
		cmp	ebx, [esi+44h]
		jl	short loc_497145
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_497199
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_497182
		test	edi, edi
		jnz	short loc_497182
		xor	eax, eax
		jmp	short loc_4971EC
; ---------------------------------------------------------------------------

loc_497182:				; CODE XREF: .text:00497178j
					; .text:0049717Cj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_497192
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_497192
		xor	eax, eax
		jmp	short loc_4971EC
; ---------------------------------------------------------------------------

loc_497192:				; CODE XREF: .text:00497186j
					; .text:0049718Cj
		mov	eax, 1
		jmp	short loc_4971EC
; ---------------------------------------------------------------------------

loc_497199:				; CODE XREF: .text:00497172j
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_4971EA
		xor	ebx, ebx
		jmp	short loc_4971DE
; ---------------------------------------------------------------------------

loc_4971A3:				; CODE XREF: .text:004971E1j
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	byte ptr [eax+9], 10h
		jz	short loc_4971DD
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4971C2
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4971DD

loc_4971C2:				; CODE XREF: .text:004971BAj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4971CE
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4971DD

loc_4971CE:				; CODE XREF: .text:004971C6j
		mov	edx, [ebp+10h]
		push	edx		; enable
		mov	ecx, [eax]
		push	ecx		; _addr
		call	Enableint3breakpoint
		add	esp, 8

loc_4971DD:				; CODE XREF: .text:004971B4j
					; .text:004971C0j ...
		inc	ebx

loc_4971DE:				; CODE XREF: .text:004971A1j
		cmp	ebx, [esi+44h]
		jl	short loc_4971A3
		mov	eax, 1
		jmp	short loc_4971EC
; ---------------------------------------------------------------------------

loc_4971EA:				; CODE XREF: .text:0049719Dj
		xor	eax, eax

loc_4971EC:				; CODE XREF: .text:00497180j
					; .text:00497190j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4971F4:				; CODE XREF: .text:0040D427p
					; .text:004D1099p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, eax
		cmp	edx, 8		; switch 9 cases
		ja	short loc_497274 ; jumptable 00497201 default case
		jmp	ds:off_497208[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_497208	dd offset loc_497274	; DATA XREF: .text:00497201r
		dd offset loc_49722C	; jump table for switch	statement
		dd offset loc_497235
		dd offset loc_49723E
		dd offset loc_497247
		dd offset loc_497250
		dd offset loc_497259
		dd offset loc_497262
		dd offset loc_49726B
; ---------------------------------------------------------------------------

loc_49722C:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 0F1h ; jumptable 00497201 case 1
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_497235:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 0F4h ; jumptable 00497201 case 2
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_49723E:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 0FAh ; jumptable 00497201 case 3
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_497247:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 0FBh ; jumptable 00497201 case 4
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_497250:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 6Ch ; jumptable 00497201 case 5
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_497259:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 6Dh ; jumptable 00497201 case 6
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_497262:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 6Eh ; jumptable 00497201 case 7
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_49726B:				; CODE XREF: .text:00497201j
					; DATA XREF: .text:off_497208o
		mov	byte_5BE6EC, 6Fh ; jumptable 00497201 case 8
		jmp	short loc_49727D
; ---------------------------------------------------------------------------

loc_497274:				; CODE XREF: .text:004971FFj
					; .text:00497201j
					; DATA XREF: ...
		mov	byte_5BE6EC, 0CCh ; jumptable 00497201 default case
		xor	eax, eax

loc_49727D:				; CODE XREF: .text:00497233j
					; .text:0049723Cj ...
		mov	dword_5BE6E8, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_497284:				; CODE XREF: .text:004587B8p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_497299
		or	eax, 0FFFFFFFFh
		jmp	loc_497381
; ---------------------------------------------------------------------------

loc_497299:				; CODE XREF: .text:0049728Fj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4972A6
		xor	eax, eax
		jmp	loc_497381
; ---------------------------------------------------------------------------

loc_4972A6:				; CODE XREF: .text:0049729Dj
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		push	edx		; addr1
		mov	ecx, [ebp+0Ch]
		push	ecx		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jge	short loc_4972CB
		xor	eax, eax
		jmp	loc_497381
; ---------------------------------------------------------------------------

loc_4972CB:				; CODE XREF: .text:004972C2j
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_497372
; ---------------------------------------------------------------------------

loc_4972D5:				; CODE XREF: .text:00497378j
		push	edi		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4972F5
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		jmp	loc_49737E
; ---------------------------------------------------------------------------

loc_4972F5:				; CODE XREF: .text:004972E7j
		mov	esi, [ebx]
		sub	esi, [ebp+0Ch]
		cmp	esi, [ebp+10h]
		jnb	short loc_49737E
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_497371
		mov	eax, [ebp+8]
		mov	dl, [eax+esi]
		cmp	dl, [ebx+0Fh]
		jnz	short loc_49731B
		mov	ecx, [ebp+8]
		mov	al, [ebx+0Eh]
		mov	[ecx+esi], al
		jmp	short loc_497371
; ---------------------------------------------------------------------------

loc_49731B:				; CODE XREF: .text:0049730Ej
		and	dword ptr [ebx+8], 0FFFEFFFFh
		xor	edx, edx
		mov	dl, [ebx+0Fh]
		push	edx
		call	loc_496E8C
		pop	ecx
		push	eax
		xor	ecx, ecx
		mov	cl, [ebx+0Fh]
		push	ecx
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+esi]
		push	edx
		mov	ecx, [ebx]
		push	ecx		; arglist
		push	offset aBreakpointSetA ; "Breakpoint set at address %08X is corru"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aCorruptBreakpo ; "Corrupt breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E678 ; cond
		call	Conderror
		add	esp, 1Ch
		push	1
		push	ebx
		call	loc_497418
		add	esp, 8

loc_497371:				; CODE XREF: .text:00497303j
					; .text:00497319j
		inc	edi

loc_497372:				; CODE XREF: .text:004972D0j
		cmp	edi, stru_5D6528.sorted.n
		jl	loc_4972D5

loc_49737E:				; CODE XREF: .text:004972F0j
					; .text:004972FDj
		mov	eax, [ebp-4]

loc_497381:				; CODE XREF: .text:00497294j
					; .text:004972A1j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_497388:				; CODE XREF: .text:00458DA2p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_49739A
		or	eax, 0FFFFFFFFh
		jmp	short loc_497410
; ---------------------------------------------------------------------------

loc_49739A:				; CODE XREF: .text:00497393j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4973A4
		xor	eax, eax
		jmp	short loc_497410
; ---------------------------------------------------------------------------

loc_4973A4:				; CODE XREF: .text:0049739Ej
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		push	edx		; addr1
		mov	ecx, [ebp+0Ch]
		push	ecx		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jge	short loc_4973C6
		xor	eax, eax
		jmp	short loc_497410
; ---------------------------------------------------------------------------

loc_4973C6:				; CODE XREF: .text:004973C0j
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_497405
; ---------------------------------------------------------------------------

loc_4973CD:				; CODE XREF: .text:0049740Bj
		push	ebx		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jnz	short loc_4973E8
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		jmp	short loc_49740D
; ---------------------------------------------------------------------------

loc_4973E8:				; CODE XREF: .text:004973DDj
		mov	edx, [eax]
		sub	edx, [ebp+0Ch]
		cmp	edx, [ebp+10h]
		jnb	short loc_49740D
		mov	cl, [esi+edx]
		mov	[eax+0Eh], cl
		test	byte ptr [eax+0Ah], 1
		jz	short loc_497404
		mov	al, [eax+0Fh]
		mov	[esi+edx], al

loc_497404:				; CODE XREF: .text:004973FCj
		inc	ebx

loc_497405:				; CODE XREF: .text:004973CBj
		cmp	ebx, stru_5D6528.sorted.n
		jl	short loc_4973CD

loc_49740D:				; CODE XREF: .text:004973E6j
					; .text:004973F0j
		mov	eax, [ebp-4]

loc_497410:				; CODE XREF: .text:00497398j
					; .text:004973A2j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_497418:				; CODE XREF: .text:0044D598p
					; .text:0044EA08p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_497433
		or	eax, 0FFFFFFFFh
		jmp	loc_49773C
; ---------------------------------------------------------------------------

loc_497433:				; CODE XREF: .text:00497429j
		test	edi, edi
		jnz	short loc_49745C
		mov	eax, [ebx+8]
		test	ah, 0E0h
		jz	short loc_497446
		mov	edi, 1
		jmp	short loc_49745C
; ---------------------------------------------------------------------------

loc_497446:				; CODE XREF: .text:0049743Dj
		and	eax, 21000h
		cmp	eax, 1000h
		jnz	short loc_497459
		mov	edi, 1
		jmp	short loc_49745C
; ---------------------------------------------------------------------------

loc_497459:				; CODE XREF: .text:00497450j
		or	edi, 0FFFFFFFFh

loc_49745C:				; CODE XREF: .text:00497435j
					; .text:00497444j ...
		xor	esi, esi
		cmp	netdbg,	0
		jnz	short loc_49746C
		call	Suspendallthreads

loc_49746C:				; CODE XREF: .text:00497465j
		cmp	edi, 1
		jnz	loc_497598
		test	byte ptr [ebx+0Ah], 1
		jnz	loc_497598
		cmp	netdbg,	0
		jz	short loc_4974F3
		cmp	dword_5D40BC, 0
		jz	short loc_4974F3
		lea	eax, [ebp-4]
		lea	edx, [ebx+0Eh]
		push	eax
		push	edx
		push	1
		xor	edx, edx
		mov	eax, [ebx]
		mov	ecx, dword_5D40BC
		push	edx
		push	eax
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+14h]
		test	eax, eax
		jnz	short loc_4974C3
		cmp	dword ptr [ebp-4], 1
		jnz	short loc_4974C3
		or	dword ptr [ebx+8], 10000h
		jmp	loc_49772C
; ---------------------------------------------------------------------------

loc_4974C3:				; CODE XREF: .text:004974AFj
					; .text:004974B5j
		mov	edx, [ebx]
		push	edx		; arglist
		push	offset aUnableToSetB_0 ; "Unable to set	breakpoint at address %08"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToSetB_7 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E67C ; cond
		call	Conderror
		add	esp, 10h
		or	esi, 0FFFFFFFFh
		jmp	loc_49772C
; ---------------------------------------------------------------------------

loc_4974F3:				; CODE XREF: .text:00497486j
					; .text:0049748Fj
		push	3		; mode
		push	1		; size
		mov	eax, [ebx]
		push	eax		; _addr
		lea	edx, [ebx+0Eh]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_49753A
		mov	ecx, [ebx]
		push	ecx		; arglist
		push	offset aUnableToSetB_1 ; "Unable to set	breakpoint at address %08"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToSetB_7 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E67C ; cond
		call	Conderror
		add	esp, 10h
		or	esi, 0FFFFFFFFh
		jmp	loc_49772C
; ---------------------------------------------------------------------------

loc_49753A:				; CODE XREF: .text:00497508j
		push	1		; mode
		push	1		; size
		mov	eax, [ebx]
		push	eax		; _addr
		push	offset byte_5BE6EC ; buf
		call	Writememory
		add	esp, 10h
		cmp	eax, 1
		jnz	short loc_497568
		mov	dl, byte_5BE6EC
		mov	[ebx+0Fh], dl
		or	dword ptr [ebx+8], 10000h
		jmp	loc_49772C
; ---------------------------------------------------------------------------

loc_497568:				; CODE XREF: .text:00497551j
		mov	ecx, [ebx]
		push	ecx		; arglist
		push	offset aUnableToSetB_2 ; "Unable to set	breakpoint at address %08"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToSetB_7 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E67C ; cond
		call	Conderror
		add	esp, 10h
		or	esi, 0FFFFFFFFh
		jmp	loc_49772C
; ---------------------------------------------------------------------------

loc_497598:				; CODE XREF: .text:0049746Fj
					; .text:00497479j
		inc	edi
		jnz	loc_49772C
		test	byte ptr [ebx+0Ah], 1
		jz	loc_49772C
		cmp	netdbg,	0
		jz	short loc_49760D
		cmp	dword_5D40BC, 0
		jz	short loc_49760D
		mov	eax, [ebx]
		xor	edx, edx
		mov	ecx, dword_5D40BC
		push	edx
		push	eax
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+18h]
		test	eax, eax
		jnz	short loc_4975DD
		and	dword ptr [ebx+8], 0FFFEFFFFh
		jmp	loc_497706
; ---------------------------------------------------------------------------

loc_4975DD:				; CODE XREF: .text:004975CFj
		mov	edx, [ebx]
		push	edx		; arglist
		push	offset aUnableToRemo_4 ; "Unable to remove breakpoint at address "...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToRemo_3 ; "Unable to remove breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E67C ; cond
		call	Conderror
		add	esp, 10h
		or	esi, 0FFFFFFFFh
		jmp	loc_497706
; ---------------------------------------------------------------------------

loc_49760D:				; CODE XREF: .text:004975B0j
					; .text:004975B9j
		push	3		; mode
		push	1		; size
		mov	eax, [ebx]
		push	eax		; _addr
		lea	edx, [ebp-5]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_497672
		call	Listmemory
		mov	ecx, [ebx]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_497642
		and	dword ptr [ebx+8], 0FFFEFFFFh
		jmp	loc_497706
; ---------------------------------------------------------------------------

loc_497642:				; CODE XREF: .text:00497634j
		mov	eax, [ebx]
		push	eax		; arglist
		push	offset aUnableToRemo_0 ; "Unable to remove breakpoint at address "...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToRemo_3 ; "Unable to remove breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E67C ; cond
		call	Conderror
		add	esp, 10h
		or	esi, 0FFFFFFFFh
		jmp	loc_497706
; ---------------------------------------------------------------------------

loc_497672:				; CODE XREF: .text:00497622j
		mov	al, [ebp-5]
		cmp	al, [ebx+0Fh]
		jz	short loc_4976BA
		movzx	esi, byte ptr [ebx+0Fh]
		push	esi
		call	loc_496E8C
		pop	ecx
		push	eax
		push	esi
		xor	eax, eax
		mov	al, [ebp-5]
		push	eax
		mov	edx, [ebx]
		push	edx		; arglist
		push	offset aBreakpointSe_0 ; "Breakpoint set at address %08X is corru"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aCorruptBreakpo ; "Corrupt breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E678 ; cond
		call	Conderror
		add	esp, 1Ch
		or	esi, 0FFFFFFFFh
		jmp	short loc_497706
; ---------------------------------------------------------------------------

loc_4976BA:				; CODE XREF: .text:00497678j
		push	1		; mode
		push	1		; size
		mov	eax, [ebx]
		push	eax		; _addr
		lea	edx, [ebx+0Eh]
		push	edx		; buf
		call	Writememory
		add	esp, 10h
		cmp	eax, 1
		jnz	short loc_4976DB
		and	dword ptr [ebx+8], 0FFFEFFFFh
		jmp	short loc_497706
; ---------------------------------------------------------------------------

loc_4976DB:				; CODE XREF: .text:004976D0j
		mov	ecx, [ebx]
		push	ecx		; arglist
		push	offset aUnableToRemo_1 ; "Unable to remove breakpoint at address "...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToRemo_3 ; "Unable to remove breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E67C ; cond
		call	Conderror
		add	esp, 10h
		or	esi, 0FFFFFFFFh

loc_497706:				; CODE XREF: .text:004975D8j
					; .text:00497608j ...
		xor	ebx, ebx
		jmp	short loc_497724
; ---------------------------------------------------------------------------

loc_49770A:				; CODE XREF: .text:0049772Aj
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_497723
		or	dword ptr [eax+6D0h], 1

loc_497723:				; CODE XREF: .text:0049771Aj
		inc	ebx

loc_497724:				; CODE XREF: .text:00497708j
		cmp	ebx, thread.sorted.n
		jl	short loc_49770A

loc_49772C:				; CODE XREF: .text:004974BEj
					; .text:004974EEj ...
		cmp	netdbg,	0
		jnz	short loc_49773A
		call	Resumeallthreads

loc_49773A:				; CODE XREF: .text:00497733j
		mov	eax, esi

loc_49773C:				; CODE XREF: .text:0049742Ej
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		