.code

loc_4B4FEC:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-408h]
		mov	esi, [ebp+10h]
		jz	short loc_4B5013
		cmp	dword_5FC27C, 0
		jnz	short loc_4B501A

loc_4B5013:				; CODE XREF: .text:004B5008j
		xor	eax, eax
		jmp	loc_4B51DC
; ---------------------------------------------------------------------------

loc_4B501A:				; CODE XREF: .text:004B5011j
		mov	edx, pd
		mov	ecx, [edx+0Ch]
		and	ecx, 70000h
		cmp	ecx, 40000h
		jz	short loc_4B5038
		xor	eax, eax
		jmp	loc_4B51DC
; ---------------------------------------------------------------------------

loc_4B5038:				; CODE XREF: .text:004B502Fj
		push	404h		; n
		push	0		; c
		push	edi		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, dword_5FC27C
		mov	edx, [eax+8]
		mov	[edi], edx
		mov	ecx, [eax+1Ch]
		mov	[edi+4], ecx
		mov	eax, [eax+20h]
		mov	[edi+8], eax
		mov	dword ptr [edi+0Ch], 1
		mov	eax, dword_5FC278
		test	eax, eax
		jnz	short loc_4B507D
		xor	edx, edx
		mov	[edi+10h], edx
		xor	ecx, ecx
		mov	[edi+2E0h], ecx
		jmp	short loc_4B509E
; ---------------------------------------------------------------------------

loc_4B507D:				; CODE XREF: .text:004B506Cj
		mov	edx, [eax+50h]
		mov	[edi+10h], edx
		push	esi
		push	edi
		lea	esi, [eax+5Ch]
		add	edi, 14h
		mov	ecx, 0B3h
		rep movsd
		pop	edi
		pop	esi
		mov	dword ptr [edi+2E0h], 1

loc_4B509E:				; CODE XREF: .text:004B507Bj
		xor	eax, eax
		mov	[ebp-4], eax

loc_4B50A3:				; CODE XREF: .text:004B510Fj
		mov	ebx, pd
		mov	eax, [ebx+4]
		push	eax		; size
		mov	edx, [ebx]
		push	edx		; base
		push	edi		; pf
		call	Findretaddrdata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B50DB
		test	esi, esi
		jnz	short loc_4B50CC
		mov	ecx, [edi+2ECh]
		mov	[edi+4], ecx
		jmp	short loc_4B50D1
; ---------------------------------------------------------------------------

loc_4B50CC:				; CODE XREF: .text:004B50BFj
		xor	eax, eax
		mov	[edi+4], eax

loc_4B50D1:				; CODE XREF: .text:004B50CAj
		xor	edx, edx
		mov	[edi+2F4h], edx
		jmp	short loc_4B5111
; ---------------------------------------------------------------------------

loc_4B50DB:				; CODE XREF: .text:004B50BBj
		mov	ecx, pd
		mov	eax, [ecx+288h]
		cmp	eax, [edi+2F4h]
		jbe	short loc_4B5111
		mov	edx, [edi+2E8h]
		mov	[edi], edx
		mov	ecx, [edi+4]
		mov	[ebp-4], ecx
		mov	eax, [edi+2ECh]
		mov	[edi+4], eax
		mov	edx, [edi+2F0h]
		mov	[edi+8], edx
		jmp	short loc_4B50A3
; ---------------------------------------------------------------------------

loc_4B5111:				; CODE XREF: .text:004B50D9j
					; .text:004B50EDj
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4B5179
		cmp	dword ptr [edi+4], 0
		jnz	short loc_4B5124
		xor	eax, eax
		jmp	loc_4B51DC
; ---------------------------------------------------------------------------

loc_4B5124:				; CODE XREF: .text:004B511Bj
		test	esi, esi
		jnz	short loc_4B5145
		mov	edx, dword_5FC27C
		mov	eax, pd
		mov	ecx, [edx+1Ch]
		cmp	ecx, [eax+288h]
		jbe	short loc_4B5145
		xor	eax, eax
		jmp	loc_4B51DC
; ---------------------------------------------------------------------------

loc_4B5145:				; CODE XREF: .text:004B5126j
					; .text:004B513Cj
		test	esi, esi
		jnz	short loc_4B5160
		mov	edx, pd
		mov	ecx, [edx+288h]
		cmp	ecx, [edi+4]
		jnz	short loc_4B5160
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4B516E

loc_4B5160:				; CODE XREF: .text:004B5147j
					; .text:004B5158j
		cmp	esi, 1
		jnz	short loc_4B5172
		cmp	dword ptr [edi+2ECh], 0
		jnz	short loc_4B5172

loc_4B516E:				; CODE XREF: .text:004B515Ej
		xor	eax, eax
		jmp	short loc_4B51DC
; ---------------------------------------------------------------------------

loc_4B5172:				; CODE XREF: .text:004B5163j
					; .text:004B516Cj
		mov	eax, 1
		jmp	short loc_4B51DC
; ---------------------------------------------------------------------------

loc_4B5179:				; CODE XREF: .text:004B5115j
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_4B51DA
		cmp	esi, 1
		jnz	short loc_4B51A7
		mov	edx, dword_5FC27C
		mov	eax, pd
		mov	ecx, [edx+1Ch]
		cmp	ecx, [eax+288h]
		jbe	short loc_4B519F
		mov	eax, [edi+4]
		jmp	short loc_4B51BD
; ---------------------------------------------------------------------------

loc_4B519F:				; CODE XREF: .text:004B5198j
		mov	eax, [edi+2ECh]
		jmp	short loc_4B51BD
; ---------------------------------------------------------------------------

loc_4B51A7:				; CODE XREF: .text:004B5182j
		mov	edx, pd
		mov	ecx, [edx+288h]
		mov	eax, [edi+4]
		cmp	ecx, eax
		jnz	short loc_4B51BD
		mov	eax, [ebp-4]

loc_4B51BD:				; CODE XREF: .text:004B519Dj
					; .text:004B51A5j ...
		push	300h		; mode
		push	eax		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_4B51DC
; ---------------------------------------------------------------------------

loc_4B51DA:				; CODE XREF: .text:004B517Dj
		xor	eax, eax

loc_4B51DC:				; CODE XREF: .text:004B5015j
					; .text:004B5033j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B51E4:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, pd
		test	eax, eax
		mov	edi, [ebp+10h]
		mov	esi, [ebp+14h]
		jz	short loc_4B51FF
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B5206

loc_4B51FF:				; CODE XREF: .text:004B51F7j
		xor	eax, eax
		jmp	loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B5206:				; CODE XREF: .text:004B51FDj
		call	loc_4A8A0C
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B5218
		xor	eax, eax
		jmp	loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B5218:				; CODE XREF: .text:004B520Fj
		test	esi, esi
		jnz	short loc_4B5253
		cmp	dword ptr [ebx+44h], 0
		jnz	short loc_4B5229
		xor	eax, eax
		jmp	loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B5229:				; CODE XREF: .text:004B5220j
		test	edi, edi
		jnz	short loc_4B523A
		cmp	dword ptr [ebx+68h], 0
		jg	short loc_4B523A
		xor	eax, eax
		jmp	loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B523A:				; CODE XREF: .text:004B522Bj
					; .text:004B5231j
		cmp	edi, 1
		jnz	short loc_4B524C
		mov	edx, [ebx+44h]
		dec	edx
		cmp	edx, [ebx+68h]
		jg	short loc_4B524C
		xor	eax, eax
		jmp	short loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B524C:				; CODE XREF: .text:004B523Dj
					; .text:004B5246j
		mov	eax, 1
		jmp	short loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B5253:				; CODE XREF: .text:004B521Aj
		dec	esi
		jnz	short loc_4B52B8
		or	edx, 0FFFFFFFFh
		test	edi, edi
		jz	short loc_4B5260
		add	edx, 2

loc_4B5260:				; CODE XREF: .text:004B525Bj
		push	edx		; n
		push	ebx		; pt
		call	Movetableselection
		add	esp, 8
		test	eax, eax
		jle	short loc_4B5282
		cmp	dword ptr [ebx+22Ch], 0
		jz	short loc_4B5282
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8

loc_4B5282:				; CODE XREF: .text:004B526Cj
					; .text:004B5275j
		mov	ecx, [ebx+68h]
		push	ecx		; index
		add	ebx, 44h
		push	ebx		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_4B529A
		xor	eax, eax
		jmp	short loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B529A:				; CODE XREF: .text:004B5294j
		push	0Ch		; mode
		push	0		; stackaddr
		mov	edx, [eax+14h]
		push	edx		; selsize
		push	0		; dumpaddr
		mov	ecx, [eax]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_4B52BA
; ---------------------------------------------------------------------------

loc_4B52B8:				; CODE XREF: .text:004B5254j
		xor	eax, eax

loc_4B52BA:				; CODE XREF: .text:004B5201j
					; .text:004B5213j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B52C0:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		mov	ecx, pd
		test	ecx, ecx
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		jz	short loc_4B52E2
		test	byte ptr [ecx+0Eh], 4
		jz	short loc_4B52E2
		cmp	dword_5FC27C, 0
		jnz	short loc_4B52E6

loc_4B52E2:				; CODE XREF: .text:004B52D1j
					; .text:004B52D7j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B52E6:				; CODE XREF: .text:004B52E0j
		cmp	eax, 4
		jnz	short loc_4B52F5
		mov	eax, dword_5FC27C
		mov	eax, [eax+1Ch]
		jmp	short loc_4B5309
; ---------------------------------------------------------------------------

loc_4B52F5:				; CODE XREF: .text:004B52E9j
		cmp	eax, 5
		jnz	short loc_4B5305
		mov	ecx, dword_5FC27C
		mov	eax, [ecx+20h]
		jmp	short loc_4B5309
; ---------------------------------------------------------------------------

loc_4B5305:				; CODE XREF: .text:004B52F8j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5309:				; CODE XREF: .text:004B52F3j
					; .text:004B5303j
		test	edx, edx
		jnz	short loc_4B5337
		mov	edx, pd
		mov	ecx, [edx]
		cmp	eax, ecx
		jb	short loc_4B5320
		add	ecx, [edx+4]
		cmp	eax, ecx
		jb	short loc_4B5324

loc_4B5320:				; CODE XREF: .text:004B5317j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5324:				; CODE XREF: .text:004B531Ej
		cmp	eax, [edx+288h]
		jnz	short loc_4B5330
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5330:				; CODE XREF: .text:004B532Aj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5337:				; CODE XREF: .text:004B530Bj
		dec	edx
		jnz	short loc_4B5354
		push	0		; mode
		push	eax		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5354:				; CODE XREF: .text:004B5338j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; signed int __cdecl loc_4B5358(struct t_table *pt, wchar_t *a2, ulong a3, int a4)
loc_4B5358:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		mov	edi, offset pd
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, [edi]
		test	byte ptr [eax+0Bh], 20h
		jz	short loc_4B5382
		test	ebx, ebx
		jnz	short loc_4B5382
		xor	eax, eax
		jmp	loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B5382:				; CODE XREF: .text:004B5375j
					; .text:004B5379j
		cmp	dword_5FA98C, 0
		jz	short loc_4B5396
		mov	edx, [edi]
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B539D

loc_4B5396:				; CODE XREF: .text:004B5389j
		xor	eax, eax
		jmp	loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B539D:				; CODE XREF: .text:004B5394j
		mov	edx, [edi]
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B53AC
		xor	eax, eax
		jmp	loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B53AC:				; CODE XREF: .text:004B53A3j
		mov	eax, dword_5FA960
		cmp	eax, 0C0000h
		jz	short loc_4B53BF
		cmp	eax, 0D0000h
		jnz	short loc_4B53C6

loc_4B53BF:				; CODE XREF: .text:004B53B6j
		xor	eax, eax
		jmp	loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B53C6:				; CODE XREF: .text:004B53BDj
		test	ebx, ebx
		jnz	short loc_4B53D7
		mov	edx, [edi]
		mov	ecx, [edx+288h]
		mov	[ebp-4], ecx
		jmp	short loc_4B53FC
; ---------------------------------------------------------------------------

loc_4B53D7:				; CODE XREF: .text:004B53C8j
		push	1		; mode
		push	4		; size
		mov	eax, [edi]
		mov	edx, [eax+288h]
		push	edx		; _addr
		lea	ecx, [ebp-4]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_4B53FC
		xor	eax, eax
		jmp	loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B53FC:				; CODE XREF: .text:004B53D5j
					; .text:004B53F3j
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B5411
		xor	eax, eax
		jmp	loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B5411:				; CODE XREF: .text:004B5408j
		test	esi, esi
		jnz	short loc_4B541F
		mov	eax, 1
		jmp	loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B541F:				; CODE XREF: .text:004B5413j
		dec	esi
		jnz	loc_4B54FC
		lea	edx, [ebp-0Ch]
		push	edx		; coord
		push	2		; column
		mov	ecx, [edi]
		add	ecx, 18h
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B5447
		or	eax, 0FFFFFFFFh
		mov	[ebp-8], eax
		mov	[ebp-0Ch], eax

loc_4B5447:				; CODE XREF: .text:004B543Cj
		mov	edx, [ebp-4]
		push	edx
		push	offset aDecodeMemoryAr ; "Decode memory	area starting at address "...
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-20Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	gggggggggggggg+3Eh, 0
		xor	eax, eax
		test	ebx, ebx
		jz	short loc_4B547A
		add	eax, 2000000h

loc_4B547A:				; CODE XREF: .text:004B5473j
		push	eax		; a8
		mov	edx, [edi]
		mov	ecx, [edx+24Ch]
		push	ecx		; fi
		lea	ecx, [ebp-20Ch]
		mov	eax, [ebp-8]
		push	eax		; y
		mov	edx, [ebp-0Ch]
		push	edx		; x
		push	offset gggggggggggggg ;	pt
		push	ecx		; int
		push	offset aSelectStruct_0 ; "Select structure"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hWndParent
		call	Getrepstructuretype
		add	esp, 20h
		test	eax, eax
		jz	short loc_4B54BE
		xor	eax, eax
		jmp	short loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B54BE:				; CODE XREF: .text:004B54B8j
		mov	edx, dword_586212
		push	edx		; int
		mov	ecx, dword_58620E
		push	ecx		; int
		push	offset gggggggggggggg ;	s1
		cmp	ebx, 1
		jnz	short loc_4B54DD
		mov	edx, 1
		jmp	short loc_4B54EB
; ---------------------------------------------------------------------------

loc_4B54DD:				; CODE XREF: .text:004B54D4j
		mov	eax, [edi]
		mov	edx, [eax+28Ch]
		sub	edx, [eax+288h]

loc_4B54EB:				; CODE XREF: .text:004B54DBj
		push	edx		; int
		mov	eax, [ebp-4]
		push	eax		; arglist
		call	loc_4ACE58
		add	esp, 14h
		xor	eax, eax
		jmp	short loc_4B54FE
; ---------------------------------------------------------------------------

loc_4B54FC:				; CODE XREF: .text:004B5420j
		xor	eax, eax

loc_4B54FE:				; CODE XREF: .text:004B537Dj
					; .text:004B5398j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B5508:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B5532
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B5532
		mov	ecx, pd
		test	byte ptr [ecx+0Eh], 3
		jnz	short loc_4B5536

loc_4B5532:				; CODE XREF: .text:004B5515j
					; .text:004B5524j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5536:				; CODE XREF: .text:004B5530j
		test	eax, eax
		jnz	short loc_4B5541
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5541:				; CODE XREF: .text:004B5538j
		dec	eax
		jnz	short loc_4B5579
		mov	eax, pd
		push	0		; strname
		push	0		; sel1
		push	0		; sel0
		mov	ecx, [eax+8]
		mov	edx, pd
		push	ecx		; dumptype
		push	0		; path
		mov	edx, [edx+288h]
		mov	ecx, [eax+28Ch]
		sub	ecx, edx
		push	ecx		; size
		push	edx		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5579:				; CODE XREF: .text:004B5542j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B5580:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, dword_5FA988
		test	edx, edx
		jz	short loc_4B559F
		mov	ecx, pd
		cmp	dword ptr [ecx+298h], 0
		jz	short loc_4B55A3

loc_4B559F:				; CODE XREF: .text:004B558Ej
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B55A3:				; CODE XREF: .text:004B559Dj
		test	eax, eax
		jnz	short loc_4B55AE
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B55AE:				; CODE XREF: .text:004B55A5j
		dec	eax
		jnz	short loc_4B55BE
		mov	edx, [edx]
		push	edx
		call	loc_4C25C0
		pop	ecx
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B55BE:				; CODE XREF: .text:004B55AFj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B55C4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B55C4:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi		; arglist
		mov	eax, [ebp+14h]
		mov	esi, offset pd
		mov	edx, [esi]
		test	edx, edx
		jz	short loc_4B55E0
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B55E7

loc_4B55E0:				; CODE XREF: .text:004B55D8j
		xor	eax, eax
		jmp	loc_4B56D2
; ---------------------------------------------------------------------------

loc_4B55E7:				; CODE XREF: .text:004B55DEj
		cmp	dword_5FA960, 0C0000h
		jnz	short loc_4B55FB
		mov	ecx, [esi]
		cmp	dword ptr [ecx+4], 0
		jnz	short loc_4B5602

loc_4B55FB:				; CODE XREF: .text:004B55F1j
		xor	eax, eax
		jmp	loc_4B56D2
; ---------------------------------------------------------------------------

loc_4B5602:				; CODE XREF: .text:004B55F9j
		test	eax, eax
		jnz	short loc_4B5610
		mov	eax, 1
		jmp	loc_4B56D2
; ---------------------------------------------------------------------------

loc_4B5610:				; CODE XREF: .text:004B5604j
		dec	eax
		jnz	loc_4B56D0
		lea	edx, [ebp-10h]
		push	edx		; coord
		push	2		; column
		mov	ecx, [esi]
		add	ecx, 18h
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B5638
		or	eax, 0FFFFFFFFh
		mov	[ebp-0Ch], eax
		mov	[ebp-10h], eax

loc_4B5638:				; CODE XREF: .text:004B562Dj
		lea	edx, [ebp-8]
		push	edx
		mov	ecx, [ebp-0Ch]
		push	ecx
		mov	eax, [ebp-10h]
		push	eax
		push	0
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [esi]
		push	ecx
		call	loc_4A5C60
		add	esp, 18h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B566D
		push	offset aItemNotFound_0 ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B566D:				; CODE XREF: .text:004B5659j
		dec	ebx
		jz	short loc_4B5674
		xor	eax, eax
		jmp	short loc_4B56D2
; ---------------------------------------------------------------------------

loc_4B5674:				; CODE XREF: .text:004B566Ej
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B5694
		push	5		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-8]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B56C9
; ---------------------------------------------------------------------------

loc_4B5694:				; CODE XREF: .text:004B567Aj
		mov	eax, [esi]
		test	byte ptr [eax+0Eh], 2
		jz	short loc_4B56B6
		push	10h		; mode
		push	0		; stackaddr
		mov	edx, [ebp-4]
		push	edx		; selsize
		mov	ecx, [ebp-8]
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B56C9
; ---------------------------------------------------------------------------

loc_4B56B6:				; CODE XREF: .text:004B569Aj
		mov	eax, [ebp-4]
		push	eax		; size
		mov	edx, [ebp-8]
		push	edx		; _addr
		mov	ecx, [esi]
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B56C9:				; CODE XREF: .text:004B5692j
					; .text:004B56B4j
		mov	eax, 1
		jmp	short loc_4B56D2
; ---------------------------------------------------------------------------

loc_4B56D0:				; CODE XREF: .text:004B5611j
		xor	eax, eax

loc_4B56D2:				; CODE XREF: .text:004B55E2j
					; .text:004B55FDj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4B56D8@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B56D8:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi		; arglist
		mov	eax, [ebp+14h]
		mov	esi, offset pd
		mov	edx, [esi]
		test	edx, edx
		jz	short loc_4B56F4
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B56FB

loc_4B56F4:				; CODE XREF: .text:004B56ECj
		xor	eax, eax
		jmp	loc_4B57E2
; ---------------------------------------------------------------------------

loc_4B56FB:				; CODE XREF: .text:004B56F2j
		cmp	dword_5FA960, 0C0000h
		jnz	short loc_4B570F
		mov	ecx, [esi]
		cmp	dword ptr [ecx+4], 0
		jnz	short loc_4B5716

loc_4B570F:				; CODE XREF: .text:004B5705j
		xor	eax, eax
		jmp	loc_4B57E2
; ---------------------------------------------------------------------------

loc_4B5716:				; CODE XREF: .text:004B570Dj
		test	eax, eax
		jnz	short loc_4B5724
		mov	eax, 1
		jmp	loc_4B57E2
; ---------------------------------------------------------------------------

loc_4B5724:				; CODE XREF: .text:004B5718j
		dec	eax
		jnz	loc_4B57E0
		lea	edx, [ebp-10h]
		push	edx		; coord
		push	2		; column
		mov	ecx, [esi]
		add	ecx, 18h
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B574C
		or	eax, 0FFFFFFFFh
		mov	[ebp-0Ch], eax
		mov	[ebp-10h], eax

loc_4B574C:				; CODE XREF: .text:004B5741j
		lea	edx, [ebp-8]
		push	edx		; int
		mov	ecx, [ebp-0Ch]	; int
		push	ecx		; int
		mov	eax, [ebp-10h]	; int
		push	eax		; int
		push	0		; int
		mov	edx, [esi]	; int
		push	edx		; int
		call	loc_4A5FC4
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B577D
		push	offset aItemNotFound_0 ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B577D:				; CODE XREF: .text:004B5769j
		dec	ebx
		jz	short loc_4B5784
		xor	eax, eax
		jmp	short loc_4B57E2
; ---------------------------------------------------------------------------

loc_4B5784:				; CODE XREF: .text:004B577Ej
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B57A4
		push	5		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-8]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B57D9
; ---------------------------------------------------------------------------

loc_4B57A4:				; CODE XREF: .text:004B578Aj
		mov	eax, [esi]
		test	byte ptr [eax+0Eh], 2
		jz	short loc_4B57C6
		push	10h		; mode
		push	0		; stackaddr
		mov	edx, [ebp-4]
		push	edx		; selsize
		mov	ecx, [ebp-8]
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B57D9
; ---------------------------------------------------------------------------

loc_4B57C6:				; CODE XREF: .text:004B57AAj
		mov	eax, [ebp-4]
		push	eax		; size
		mov	edx, [ebp-8]
		push	edx		; _addr
		mov	ecx, [esi]
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B57D9:				; CODE XREF: .text:004B57A2j
					; .text:004B57C4j
		mov	eax, 1
		jmp	short loc_4B57E2
; ---------------------------------------------------------------------------

loc_4B57E0:				; CODE XREF: .text:004B5725j
		xor	eax, eax

loc_4B57E2:				; CODE XREF: .text:004B56F6j
					; .text:004B5711j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4B57E8@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B57E8:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi		; arglist
		mov	edx, [ebp+14h]
		mov	esi, offset pd
		mov	ecx, offset dword_5FA960
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4B580F
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4B580F
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B5816

loc_4B580F:				; CODE XREF: .text:004B5801j
					; .text:004B5807j
		xor	eax, eax
		jmp	loc_4B590E
; ---------------------------------------------------------------------------

loc_4B5816:				; CODE XREF: .text:004B580Dj
		mov	eax, [ecx]
		cmp	eax, 50000h
		jz	short loc_4B5849
		cmp	eax, 60000h
		jz	short loc_4B5849
		cmp	eax, 70000h
		jz	short loc_4B5849
		cmp	eax, 90000h
		jz	short loc_4B5849
		cmp	eax, 0A0000h
		jz	short loc_4B5849
		cmp	eax, 0B0000h
		jz	short loc_4B5849
		xor	eax, eax
		jmp	loc_4B590E
; ---------------------------------------------------------------------------

loc_4B5849:				; CODE XREF: .text:004B581Dj
					; .text:004B5824j ...
		mov	ecx, [esi]
		mov	eax, [ecx+8]
		and	eax, 0FFh
		cmp	eax, 2
		jz	short loc_4B5864
		cmp	eax, 4
		jz	short loc_4B5864
		xor	eax, eax
		jmp	loc_4B590E
; ---------------------------------------------------------------------------

loc_4B5864:				; CODE XREF: .text:004B5856j
					; .text:004B585Bj
		test	edx, edx
		jnz	short loc_4B5872
		mov	eax, 1
		jmp	loc_4B590E
; ---------------------------------------------------------------------------

loc_4B5872:				; CODE XREF: .text:004B5866j
		dec	edx
		jnz	loc_4B590C
		lea	edx, [ebp-10h]
		add	ecx, 18h
		push	edx		; coord
		push	1		; column
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B5898
		or	ecx, 0FFFFFFFFh
		mov	[ebp-0Ch], ecx
		mov	[ebp-10h], ecx

loc_4B5898:				; CODE XREF: .text:004B588Dj
		lea	eax, [ebp-8]
		push	eax		; _addr
		mov	edx, [ebp-0Ch]
		push	edx		; y
		mov	eax, [ebp-10h]
		push	eax		; x
		push	0		; a2
		mov	edx, [esi]
		push	edx		; a1
		call	loc_4A48AC
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B58C9
		push	offset aItemNotFound_0 ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B58C9:				; CODE XREF: .text:004B58B5j
		dec	ebx
		jz	short loc_4B58D0
		xor	eax, eax
		jmp	short loc_4B590E
; ---------------------------------------------------------------------------

loc_4B58D0:				; CODE XREF: .text:004B58CAj
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 2
		jz	short loc_4B58F2
		push	10h		; mode
		push	0		; stackaddr
		mov	ecx, [ebp-4]
		push	ecx		; selsize
		mov	eax, [ebp-8]
		push	eax		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5905
; ---------------------------------------------------------------------------

loc_4B58F2:				; CODE XREF: .text:004B58D6j
		mov	edx, [ebp-4]
		push	edx		; size
		mov	ecx, [ebp-8]
		push	ecx		; _addr
		mov	eax, [esi]
		push	eax		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B5905:				; CODE XREF: .text:004B58F0j
		mov	eax, 1
		jmp	short loc_4B590E
; ---------------------------------------------------------------------------

loc_4B590C:				; CODE XREF: .text:004B5873j
		xor	eax, eax

loc_4B590E:				; CODE XREF: .text:004B5811j
					; .text:004B5844j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4B5914@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B5914:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi		; arglist
		mov	edx, [ebp+14h]
		mov	esi, offset pd
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4B5936
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4B5936
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B593D

loc_4B5936:				; CODE XREF: .text:004B5928j
					; .text:004B592Ej
		xor	eax, eax
		jmp	loc_4B5A1A
; ---------------------------------------------------------------------------

loc_4B593D:				; CODE XREF: .text:004B5934j
		cmp	dword_5FA960, 80000h
		jz	short loc_4B5950
		xor	eax, eax
		jmp	loc_4B5A1A
; ---------------------------------------------------------------------------

loc_4B5950:				; CODE XREF: .text:004B5947j
		mov	ecx, [esi]
		mov	eax, [ecx+8]
		and	eax, 0FFh
		cmp	eax, 4
		jz	short loc_4B5970
		cmp	eax, 8
		jz	short loc_4B5970
		cmp	eax, 0Ah
		jz	short loc_4B5970
		xor	eax, eax
		jmp	loc_4B5A1A
; ---------------------------------------------------------------------------

loc_4B5970:				; CODE XREF: .text:004B595Dj
					; .text:004B5962j ...
		test	edx, edx
		jnz	short loc_4B597E
		mov	eax, 1
		jmp	loc_4B5A1A
; ---------------------------------------------------------------------------

loc_4B597E:				; CODE XREF: .text:004B5972j
		dec	edx
		jnz	loc_4B5A18
		lea	edx, [ebp-10h]
		add	ecx, 18h
		push	edx		; coord
		push	1		; column
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B59A4
		or	ecx, 0FFFFFFFFh
		mov	[ebp-0Ch], ecx
		mov	[ebp-10h], ecx

loc_4B59A4:				; CODE XREF: .text:004B5999j
		lea	eax, [ebp-8]
		push	eax
		mov	edx, [ebp-0Ch]
		push	edx
		mov	eax, [ebp-10h]
		push	eax
		push	0
		mov	edx, [esi]
		push	edx
		call	loc_4A4B24
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B59D5
		push	offset aItemNotFound_0 ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B59D5:				; CODE XREF: .text:004B59C1j
		dec	ebx
		jz	short loc_4B59DC
		xor	eax, eax
		jmp	short loc_4B5A1A
; ---------------------------------------------------------------------------

loc_4B59DC:				; CODE XREF: .text:004B59D6j
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 2
		jz	short loc_4B59FE
		push	10h		; mode
		push	0		; stackaddr
		mov	ecx, [ebp-4]
		push	ecx		; selsize
		mov	eax, [ebp-8]
		push	eax		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5A11
; ---------------------------------------------------------------------------

loc_4B59FE:				; CODE XREF: .text:004B59E2j
		mov	edx, [ebp-4]
		push	edx		; size
		mov	ecx, [ebp-8]
		push	ecx		; _addr
		mov	eax, [esi]
		push	eax		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B5A11:				; CODE XREF: .text:004B59FCj
		mov	eax, 1
		jmp	short loc_4B5A1A
; ---------------------------------------------------------------------------

loc_4B5A18:				; CODE XREF: .text:004B597Fj
		xor	eax, eax

loc_4B5A1A:				; CODE XREF: .text:004B5938j
					; .text:004B594Bj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4B5A20@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B5A20:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi		; arglist
		mov	edx, [ebp+14h]
		mov	esi, offset pd
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4B5A3C
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B5A43

loc_4B5A3C:				; CODE XREF: .text:004B5A34j
		xor	eax, eax
		jmp	loc_4B5B1A
; ---------------------------------------------------------------------------

loc_4B5A43:				; CODE XREF: .text:004B5A3Aj
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B5A50
		xor	eax, eax
		jmp	loc_4B5B1A
; ---------------------------------------------------------------------------

loc_4B5A50:				; CODE XREF: .text:004B5A47j
		test	edx, edx
		jnz	short loc_4B5A5E
		mov	eax, 1
		jmp	loc_4B5B1A
; ---------------------------------------------------------------------------

loc_4B5A5E:				; CODE XREF: .text:004B5A52j
		dec	edx
		jnz	loc_4B5B18
		lea	edx, [ebp-10h]
		add	eax, 18h
		push	edx		; coord
		push	2		; column
		push	eax		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B5A84
		or	ecx, 0FFFFFFFFh	; int
		mov	[ebp-0Ch], ecx
		mov	[ebp-10h], ecx

loc_4B5A84:				; CODE XREF: .text:004B5A79j
		lea	eax, [ebp-8]
		push	eax		; int
		mov	edx, [ebp-0Ch]
		push	edx		; int
		mov	eax, [ebp-10h]	; int
		push	eax		; int
		push	0		; int
		mov	edx, [esi]	; int
		push	edx		; int
		call	loc_4A71D0
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B5AB5
		push	offset aItemNotFound_0 ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B5AB5:				; CODE XREF: .text:004B5AA1j
		dec	ebx
		jz	short loc_4B5ABC
		xor	eax, eax
		jmp	short loc_4B5B1A
; ---------------------------------------------------------------------------

loc_4B5ABC:				; CODE XREF: .text:004B5AB6j
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B5ADC
		push	5		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-8]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5B11
; ---------------------------------------------------------------------------

loc_4B5ADC:				; CODE XREF: .text:004B5AC2j
		mov	eax, [esi]
		test	byte ptr [eax+0Eh], 2
		jz	short loc_4B5AFE
		push	10h		; mode
		push	0		; stackaddr
		mov	edx, [ebp-4]
		push	edx		; selsize
		mov	ecx, [ebp-8]
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5B11
; ---------------------------------------------------------------------------

loc_4B5AFE:				; CODE XREF: .text:004B5AE2j
		mov	eax, [ebp-4]
		push	eax		; size
		mov	edx, [ebp-8]
		push	edx		; _addr
		mov	ecx, [esi]
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B5B11:				; CODE XREF: .text:004B5ADAj
					; .text:004B5AFCj
		mov	eax, 1
		jmp	short loc_4B5B1A
; ---------------------------------------------------------------------------

loc_4B5B18:				; CODE XREF: .text:004B5A5Fj
		xor	eax, eax

loc_4B5B1A:				; CODE XREF: .text:004B5A3Ej
					; .text:004B5A4Bj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4B5B20@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B5B20:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi		; arglist
		mov	edx, [ebp+14h]
		mov	esi, offset pd
		mov	eax, [esi]	; int
		test	eax, eax
		jz	short loc_4B5B4B
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4B5B4B
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B5B4B
		cmp	dword_5FA96C, 0
		jnz	short loc_4B5B52

loc_4B5B4B:				; CODE XREF: .text:004B5B34j
					; .text:004B5B3Aj ...
		xor	eax, eax
		jmp	loc_4B5BF3
; ---------------------------------------------------------------------------

loc_4B5B52:				; CODE XREF: .text:004B5B49j
		test	edx, edx
		jnz	short loc_4B5B60
		mov	eax, 1
		jmp	loc_4B5BF3
; ---------------------------------------------------------------------------

loc_4B5B60:				; CODE XREF: .text:004B5B54j
		dec	edx
		jnz	loc_4B5BF1
		lea	edx, [ebp-8]	; int
		push	edx		; int
		push	0		; int
		push	eax		; int
		call	loc_4A68FC
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B5B8E
		push	offset aItemNotFound_0 ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B5B8E:				; CODE XREF: .text:004B5B7Aj
		dec	ebx
		jz	short loc_4B5B95
		xor	eax, eax
		jmp	short loc_4B5BF3
; ---------------------------------------------------------------------------

loc_4B5B95:				; CODE XREF: .text:004B5B8Fj
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B5BB5
		push	5		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-8]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5BEA
; ---------------------------------------------------------------------------

loc_4B5BB5:				; CODE XREF: .text:004B5B9Bj
		mov	eax, [esi]
		test	byte ptr [eax+0Eh], 2
		jz	short loc_4B5BD7
		push	10h		; mode
		push	0		; stackaddr
		mov	edx, [ebp-4]
		push	edx		; selsize
		mov	ecx, [ebp-8]
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5BEA
; ---------------------------------------------------------------------------

loc_4B5BD7:				; CODE XREF: .text:004B5BBBj
		mov	eax, [ebp-4]
		push	eax		; size
		mov	edx, [ebp-8]
		push	edx		; _addr
		mov	ecx, [esi]
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B5BEA:				; CODE XREF: .text:004B5BB3j
					; .text:004B5BD5j
		mov	eax, 1
		jmp	short loc_4B5BF3
; ---------------------------------------------------------------------------

loc_4B5BF1:				; CODE XREF: .text:004B5B61j
		xor	eax, eax

loc_4B5BF3:				; CODE XREF: .text:004B5B4Dj
					; .text:004B5B5Bj ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B5BFC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B5BFC:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi		; arglist
		mov	edx, [ebp+14h]
		mov	esi, offset pd
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4B5C18
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B5C1F

loc_4B5C18:				; CODE XREF: .text:004B5C10j
		xor	eax, eax
		jmp	loc_4B5CF8
; ---------------------------------------------------------------------------

loc_4B5C1F:				; CODE XREF: .text:004B5C16j
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B5C2C
		xor	eax, eax
		jmp	loc_4B5CF8
; ---------------------------------------------------------------------------

loc_4B5C2C:				; CODE XREF: .text:004B5C23j
		test	edx, edx
		jnz	short loc_4B5C56
		lea	edx, [ebp-8]
		push	edx
		push	0
		push	2
		push	eax
		call	loc_4A79D8
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4B5C4C
		xor	eax, eax
		jmp	loc_4B5CF8
; ---------------------------------------------------------------------------

loc_4B5C4C:				; CODE XREF: .text:004B5C43j
		mov	eax, 1
		jmp	loc_4B5CF8
; ---------------------------------------------------------------------------

loc_4B5C56:				; CODE XREF: .text:004B5C2Ej
		dec	edx
		jnz	loc_4B5CF6
		lea	edx, [ebp-8]
		push	edx
		mov	ecx, 2
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4B5C6D
		inc	ecx

loc_4B5C6D:				; CODE XREF: .text:004B5C6Aj
		push	ecx
		push	0
		mov	eax, [esi]
		push	eax
		call	loc_4A79D8
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B5C93
		push	offset aItemNotFound_0 ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B5C93:				; CODE XREF: .text:004B5C7Fj
		dec	ebx
		jz	short loc_4B5C9A
		xor	eax, eax
		jmp	short loc_4B5CF8
; ---------------------------------------------------------------------------

loc_4B5C9A:				; CODE XREF: .text:004B5C94j
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B5CBA
		push	5		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-8]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5CEF
; ---------------------------------------------------------------------------

loc_4B5CBA:				; CODE XREF: .text:004B5CA0j
		mov	eax, [esi]
		test	byte ptr [eax+0Eh], 2
		jz	short loc_4B5CDC
		push	10h		; mode
		push	0		; stackaddr
		mov	edx, [ebp-4]
		push	edx		; selsize
		mov	ecx, [ebp-8]
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B5CEF
; ---------------------------------------------------------------------------

loc_4B5CDC:				; CODE XREF: .text:004B5CC0j
		mov	eax, [ebp-4]
		push	eax		; size
		mov	edx, [ebp-8]
		push	edx		; _addr
		mov	ecx, [esi]
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B5CEF:				; CODE XREF: .text:004B5CB8j
					; .text:004B5CDAj
		mov	eax, 1
		jmp	short loc_4B5CF8
; ---------------------------------------------------------------------------

loc_4B5CF6:				; CODE XREF: .text:004B5C57j
		xor	eax, eax

loc_4B5CF8:				; CODE XREF: .text:004B5C1Aj
					; .text:004B5C27j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B5D00:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	ecx, dword_5FA988 ; int
		test	ecx, ecx
		jnz	short loc_4B5D14
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5D14:				; CODE XREF: .text:004B5D0Ej
		mov	eax, pd		; int
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B5D26
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5D26:				; CODE XREF: .text:004B5D20j
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B5D30
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5D30:				; CODE XREF: .text:004B5D2Aj
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B5D3A
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5D3A:				; CODE XREF: .text:004B5D34j
		test	edx, edx
		jnz	short loc_4B5D45
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5D45:				; CODE XREF: .text:004B5D3Cj
		dec	edx
		jnz	short loc_4B5D5F
		mov	edx, [eax+288h]	; int
		push	edx		; int
		push	ecx		; int
		call	loc_4A6BCC
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B5D5F:				; CODE XREF: .text:004B5D46j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B5D64:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		cmp	dword_5FA988, 0
		push	ebx
		push	esi
		mov	esi, offset pd
		mov	edx, [ebp+14h]
		mov	ebx, [ebp+10h]
		jnz	short loc_4B5D8A
		xor	eax, eax
		jmp	loc_4B5E8D
; ---------------------------------------------------------------------------

loc_4B5D8A:				; CODE XREF: .text:004B5D81j
		mov	eax, [esi]
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B5D9C
		xor	eax, eax
		jmp	loc_4B5E8D
; ---------------------------------------------------------------------------

loc_4B5D9C:				; CODE XREF: .text:004B5D93j
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B5DA9
		xor	eax, eax
		jmp	loc_4B5E8D
; ---------------------------------------------------------------------------

loc_4B5DA9:				; CODE XREF: .text:004B5DA0j
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B5DB6
		xor	eax, eax
		jmp	loc_4B5E8D
; ---------------------------------------------------------------------------

loc_4B5DB6:				; CODE XREF: .text:004B5DADj
		test	edx, edx
		jnz	short loc_4B5DC4
		mov	eax, 1
		jmp	loc_4B5E8D
; ---------------------------------------------------------------------------

loc_4B5DC4:				; CODE XREF: .text:004B5DB8j
		dec	edx
		jnz	loc_4B5E8B
		lea	edx, [ebp-8]
		add	eax, 18h
		push	edx		; coord
		push	2		; column
		push	eax		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B5DEA
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_4B5DEA:				; CODE XREF: .text:004B5DDFj
		test	ebx, ebx
		jnz	short loc_4B5E10
		push	offset aCommandsFoundI ; "Commands found in "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-408h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B5E30
; ---------------------------------------------------------------------------

loc_4B5E10:				; CODE XREF: .text:004B5DECj
		push	offset aCommandSequenc ; "Command sequences found in "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-408h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B5E30:				; CODE XREF: .text:004B5E0Ej
		mov	edx, [esi]
		add	eax, eax
		mov	ecx, [edx+4]
		push	ecx		; size
		lea	ecx, [ebp-408h]
		mov	edx, [edx]
		add	eax, ecx
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	edx, [ebp-408h]
		push	edx		; int
		mov	eax, [esi]
		mov	ecx, [eax+24Ch]
		push	ecx		; int
		mov	edx, [ebp-4]
		push	edx		; int
		mov	ecx, [ebp-8]
		push	ecx		; int
		mov	eax, [eax+288h]
		push	eax		; int
		mov	eax, dword_5FA988
		push	ebx		; int
		push	eax		; int
		mov	edx, [ebp+8]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWndParent
		call	loc_4A560C
		add	esp, 20h
		mov	eax, 1
		jmp	short loc_4B5E8D
; ---------------------------------------------------------------------------

loc_4B5E8B:				; CODE XREF: .text:004B5DC5j
		xor	eax, eax

loc_4B5E8D:				; CODE XREF: .text:004B5D85j
					; .text:004B5D97j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B5E94:				; DATA XREF: .data:stru_552B90o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		cmp	dword_5FA988, 0
		push	ebx
		push	esi
		push	edi
		mov	ebx, offset pd
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		jnz	short loc_4B5EBB
		xor	eax, eax
		jmp	loc_4B600F
; ---------------------------------------------------------------------------

loc_4B5EBB:				; CODE XREF: .text:004B5EB2j
		cmp	dword_5FA98C, 0
		jz	short loc_4B5ECF
		mov	edx, [ebx]
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B5ED6

loc_4B5ECF:				; CODE XREF: .text:004B5EC2j
		xor	eax, eax
		jmp	loc_4B600F
; ---------------------------------------------------------------------------

loc_4B5ED6:				; CODE XREF: .text:004B5ECDj
		mov	edx, [ebx]
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B5EE5
		xor	eax, eax
		jmp	loc_4B600F
; ---------------------------------------------------------------------------

loc_4B5EE5:				; CODE XREF: .text:004B5EDCj
		test	eax, eax
		jnz	short loc_4B5F36
		test	esi, esi
		jnz	short loc_4B5F0A
		mov	eax, [ebx]
		mov	edx, [eax+28Ch]
		sub	edx, [eax+288h]
		cmp	edx, stru_5FA9A8._size
		jz	short loc_4B5F0A
		xor	eax, eax
		jmp	loc_4B600F
; ---------------------------------------------------------------------------

loc_4B5F0A:				; CODE XREF: .text:004B5EEBj
					; .text:004B5F01j
		cmp	esi, 1
		jnz	short loc_4B5F2C
		mov	eax, [ebx]
		mov	edx, [eax+28Ch]
		sub	edx, [eax+288h]
		cmp	edx, stru_5FA9A8._size
		jnz	short loc_4B5F2C
		xor	eax, eax
		jmp	loc_4B600F
; ---------------------------------------------------------------------------

loc_4B5F2C:				; CODE XREF: .text:004B5F0Dj
					; .text:004B5F23j
		mov	eax, 1
		jmp	loc_4B600F
; ---------------------------------------------------------------------------

loc_4B5F36:				; CODE XREF: .text:004B5EE7j
		dec	eax
		jnz	loc_4B600D
		push	offset aReferencesTo ; "References to "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		test	esi, esi
		jnz	short loc_4B5F90
		mov	ecx, 100h
		lea	edx, [ebp-200h]
		sub	ecx, eax
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebx]
		mov	ecx, [eax+288h]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		jmp	short loc_4B5FBB
; ---------------------------------------------------------------------------

loc_4B5F90:				; CODE XREF: .text:004B5F5Fj
		mov	edx, [ebx]
		mov	edi, [ebx]
		add	eax, eax
		mov	ecx, [edx+28Ch]
		sub	ecx, [edi+288h]
		push	ecx		; size
		lea	ecx, [ebp-200h]
		mov	edx, [edx+288h]
		add	eax, ecx
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch

loc_4B5FBB:				; CODE XREF: .text:004B5F8Ej
		lea	eax, [ebp-200h]
		push	eax		; int
		push	1		; int
		mov	eax, [ebx]
		test	byte ptr [eax+0Eh], 1
		jz	short loc_4B5FD6
		mov	edx, [ebx]
		mov	ecx, [edx+288h]
		jmp	short loc_4B5FD8
; ---------------------------------------------------------------------------

loc_4B5FD6:				; CODE XREF: .text:004B5FCAj
		xor	ecx, ecx

loc_4B5FD8:				; CODE XREF: .text:004B5FD4j
		push	ecx		; int
		test	esi, esi
		jnz	short loc_4B5FE7
		mov	eax, [ebx]
		mov	edx, [eax+288h]
		jmp	short loc_4B5FF0
; ---------------------------------------------------------------------------

loc_4B5FE7:				; CODE XREF: .text:004B5FDBj
		mov	eax, [ebx]
		mov	edx, [eax+28Ch]
		dec	edx

loc_4B5FF0:				; CODE XREF: .text:004B5FE5j
		push	edx		; int
		mov	ecx, [ebx]	; int
		mov	eax, [ecx+288h]	; int
		push	eax		; int
		mov	edx, dword_5FA988 ; int
		push	edx		; int
		call	loc_4A2620
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4B600F
; ---------------------------------------------------------------------------

loc_4B600D:				; CODE XREF: .text:004B5F37j
		xor	eax, eax

loc_4B600F:				; CODE XREF: .text:004B5EB6j
					; .text:004B5ED1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B6018:				; DATA XREF: .data:stru_552B90o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ecx, [ebp+10h]
		cmp	dword_5FA988, 0
		jnz	short loc_4B6039
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B6039:				; CODE XREF: .text:004B6030j
		cmp	dword_5FA98C, 0
		jz	short loc_4B6051
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B6058

loc_4B6051:				; CODE XREF: .text:004B6040j
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B6058:				; CODE XREF: .text:004B604Fj
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B606B
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B606B:				; CODE XREF: .text:004B6062j
		cmp	stru_5FA9A8._size, 0
		jnz	short loc_4B607B
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B607B:				; CODE XREF: .text:004B6072j
		test	ecx, ecx
		jz	short loc_4B60C1
		cmp	stru_5FA9A8.jmpaddr, 0
		jnz	short loc_4B608F
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B608F:				; CODE XREF: .text:004B6086j
		mov	eax, stru_5FA9A8.cmdtype
		and	eax, 1Fh
		cmp	eax, 0Ch
		jz	short loc_4B60A1
		cmp	eax, 0Dh
		jnz	short loc_4B60AD

loc_4B60A1:				; CODE XREF: .text:004B609Aj
		cmp	ecx, 2
		jz	short loc_4B60B9
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B60AD:				; CODE XREF: .text:004B609Fj
		cmp	ecx, 2
		jnz	short loc_4B60B9
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B60B9:				; CODE XREF: .text:004B60A4j
					; .text:004B60B0j
		mov	ebx, stru_5FA9A8.jmpaddr
		jmp	short loc_4B60FD
; ---------------------------------------------------------------------------

loc_4B60C1:				; CODE XREF: .text:004B607Dj
		xor	edx, edx
		mov	eax, offset stru_5FA9A8.op

loc_4B60C8:				; CODE XREF: .text:004B60DCj
		test	byte ptr [eax+1], 2
		jz	short loc_4B60D3
		mov	ebx, [eax+30h]
		jmp	short loc_4B60DE
; ---------------------------------------------------------------------------

loc_4B60D3:				; CODE XREF: .text:004B60CCj
		inc	edx
		add	eax, 460h
		cmp	edx, 4
		jl	short loc_4B60C8

loc_4B60DE:				; CODE XREF: .text:004B60D1j
		cmp	edx, 4
		jl	short loc_4B60EA
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B60EA:				; CODE XREF: .text:004B60E1j
		test	ebx, ebx
		jz	short loc_4B60FD
		cmp	ebx, stru_5FA9A8.jmpaddr
		jnz	short loc_4B60FD
		xor	eax, eax
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B60FD:				; CODE XREF: .text:004B60BFj
					; .text:004B60ECj ...
		test	esi, esi
		jnz	short loc_4B610B
		mov	eax, 1
		jmp	loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B610B:				; CODE XREF: .text:004B60FFj
		dec	esi
		jnz	loc_4B61CD
		cmp	ecx, 1
		jnz	short loc_4B615E
		push	offset aReferencesTo ; "References to "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, 100h
		sub	ecx, eax
		lea	edx, [ebp-200h]
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		push	ebx		; _addr
		call	Decodeaddress
		add	esp, 18h
		jmp	short loc_4B6192
; ---------------------------------------------------------------------------

loc_4B615E:				; CODE XREF: .text:004B6115j
		push	offset aReferencesToCo ; "References to	constant "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-200h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		add	eax, eax
		add	eax, ecx
		push	ebx		; u
		push	eax		; s
		call	HexprintW
		add	esp, 8

loc_4B6192:				; CODE XREF: .text:004B615Cj
		lea	eax, [ebp-200h]
		mov	edx, pd
		push	eax		; int
		push	1		; int
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B61B5
		mov	ecx, pd
		mov	eax, [ecx+288h]
		jmp	short loc_4B61B7
; ---------------------------------------------------------------------------

loc_4B61B5:				; CODE XREF: .text:004B61A5j
		xor	eax, eax	; int

loc_4B61B7:				; CODE XREF: .text:004B61B3j
		push	eax		; int
		push	ebx		; int
		push	ebx		; int
		mov	edx, dword_5FA988 ; int
		push	edx		; int
		call	loc_4A2620
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4B61CF
; ---------------------------------------------------------------------------

loc_4B61CD:				; CODE XREF: .text:004B610Cj
		xor	eax, eax

loc_4B61CF:				; CODE XREF: .text:004B6034j
					; .text:004B6053j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B61D8:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		cmp	dword_5FA988, 0
		push	ebx
		mov	edx, [ebp+14h]
		jnz	short loc_4B61F5
		xor	eax, eax
		jmp	loc_4B6315
; ---------------------------------------------------------------------------

loc_4B61F5:				; CODE XREF: .text:004B61ECj
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B620A
		xor	eax, eax
		jmp	loc_4B6315
; ---------------------------------------------------------------------------

loc_4B620A:				; CODE XREF: .text:004B6201j
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B6217
		xor	eax, eax
		jmp	loc_4B6315
; ---------------------------------------------------------------------------

loc_4B6217:				; CODE XREF: .text:004B620Ej
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B6224
		xor	eax, eax
		jmp	loc_4B6315
; ---------------------------------------------------------------------------

loc_4B6224:				; CODE XREF: .text:004B621Bj
		test	edx, edx
		jnz	short loc_4B6232
		mov	eax, 1
		jmp	loc_4B6315
; ---------------------------------------------------------------------------

loc_4B6232:				; CODE XREF: .text:004B6226j
		dec	edx
		jnz	loc_4B6313
		lea	edx, [ebp-0Ch]
		add	eax, 18h
		push	edx		; coord
		push	2		; column
		push	eax		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B6258
		or	ecx, 0FFFFFFFFh
		mov	[ebp-8], ecx
		mov	[ebp-0Ch], ecx

loc_4B6258:				; CODE XREF: .text:004B624Dj
		mov	ebx, pd
		push	0		; mode
		mov	eax, [ebx+24Ch]
		push	eax		; fi
		mov	edx, [ebp-8]
		push	edx		; y
		lea	edx, [ebp-4]
		mov	ecx, [ebp-0Ch]
		push	ecx		; x
		push	67h		; savetype
		mov	eax, [ebx+14h]
		push	eax		; threadid
		push	edx		; u
		push	offset aEnterConstan_0 ; "Enter	constant or expression to search "...
		call	_T
		pop	ecx
		push	eax		; _title
		mov	ecx, [ebp+8]
		mov	eax, [ecx+22Ch]
		push	eax		; hparent
		call	Getdwordexpression
		add	esp, 24h
		test	eax, eax
		jz	short loc_4B629F
		xor	eax, eax
		jmp	short loc_4B6315
; ---------------------------------------------------------------------------

loc_4B629F:				; CODE XREF: .text:004B6299j
		push	offset aReferencesToCo ; "References to	constant "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-20Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp-4]
		lea	edx, [ebp-20Ch]
		add	eax, eax
		add	eax, edx
		push	ecx		; u
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-20Ch]
		push	eax		; int
		push	1		; int
		cmp	dword_5FA98C, 0
		jz	short loc_4B62F6
		mov	ecx, pd
		mov	eax, [ecx+288h]
		jmp	short loc_4B62F8
; ---------------------------------------------------------------------------

loc_4B62F6:				; CODE XREF: .text:004B62E6j
		xor	eax, eax

loc_4B62F8:				; CODE XREF: .text:004B62F4j
		push	eax		; int
		mov	edx, [ebp-4]	; int
		push	edx		; int
		mov	ecx, [ebp-4]	; int
		push	ecx		; int
		mov	eax, dword_5FA988 ; int
		push	eax		; int
		call	loc_4A2620
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4B6315
; ---------------------------------------------------------------------------

loc_4B6313:				; CODE XREF: .text:004B6233j
		xor	eax, eax

loc_4B6315:				; CODE XREF: .text:004B61F0j
					; .text:004B6205j ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B631C:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		cmp	dword_5FA988, 0
		mov	edx, [ebp+14h]
		jnz	short loc_4B6338
		xor	eax, eax
		jmp	loc_4B63EE
; ---------------------------------------------------------------------------

loc_4B6338:				; CODE XREF: .text:004B632Fj
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B634D
		xor	eax, eax
		jmp	loc_4B63EE
; ---------------------------------------------------------------------------

loc_4B634D:				; CODE XREF: .text:004B6344j
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B635A
		xor	eax, eax
		jmp	loc_4B63EE
; ---------------------------------------------------------------------------

loc_4B635A:				; CODE XREF: .text:004B6351j
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B6367
		xor	eax, eax
		jmp	loc_4B63EE
; ---------------------------------------------------------------------------

loc_4B6367:				; CODE XREF: .text:004B635Ej
		test	edx, edx
		jnz	short loc_4B6372
		mov	eax, 1
		jmp	short loc_4B63EE
; ---------------------------------------------------------------------------

loc_4B6372:				; CODE XREF: .text:004B6369j
		dec	edx
		jnz	short loc_4B63EC
		push	offset aModificationsI ; "Modifications	in module "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, dword_5FA988
		add	ecx, 0Ch
		mov	edx, 100h
		sub	edx, eax
		push	ecx		; src
		lea	ecx, [ebp-200h]
		add	eax, eax
		add	eax, ecx
		push	edx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax
		cmp	dword_5FA98C, 0
		jz	short loc_4B63D7
		mov	eax, pd
		mov	edx, [eax+288h]
		jmp	short loc_4B63D9
; ---------------------------------------------------------------------------

loc_4B63D7:				; CODE XREF: .text:004B63C8j
		xor	edx, edx

loc_4B63D9:				; CODE XREF: .text:004B63D5j
		push	edx
		mov	eax, dword_5FA988
		push	eax
		call	loc_4A6434
		add	esp, 0Ch
		xor	eax, eax
		jmp	short loc_4B63EE
; ---------------------------------------------------------------------------

loc_4B63EC:				; CODE XREF: .text:004B6373j
		xor	eax, eax

loc_4B63EE:				; CODE XREF: .text:004B6333j
					; .text:004B6348j ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B63F4:				; DATA XREF: .data:stru_552B90o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		cmp	dword_5FA988, 0
		mov	eax, [ebp+14h]
		jnz	short loc_4B6410
		xor	eax, eax
		jmp	loc_4B64E5
; ---------------------------------------------------------------------------

loc_4B6410:				; CODE XREF: .text:004B6407j
		cmp	dword_5FA98C, 0
		jz	short loc_4B6428
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B642F

loc_4B6428:				; CODE XREF: .text:004B6417j
		xor	eax, eax
		jmp	loc_4B64E5
; ---------------------------------------------------------------------------

loc_4B642F:				; CODE XREF: .text:004B6426j
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B6442
		xor	eax, eax
		jmp	loc_4B64E5
; ---------------------------------------------------------------------------

loc_4B6442:				; CODE XREF: .text:004B6439j
		cmp	stru_5FA9A8._size, 0
		jz	short loc_4B6454
		cmp	stru_5FA9A8.memconst, 0
		jnz	short loc_4B645B

loc_4B6454:				; CODE XREF: .text:004B6449j
		xor	eax, eax
		jmp	loc_4B64E5
; ---------------------------------------------------------------------------

loc_4B645B:				; CODE XREF: .text:004B6452j
		test	eax, eax
		jnz	short loc_4B6466
		mov	eax, 1
		jmp	short loc_4B64E5
; ---------------------------------------------------------------------------

loc_4B6466:				; CODE XREF: .text:004B645Dj
		dec	eax
		jnz	short loc_4B64E3
		push	offset aReferencesToCo ; "References to	constant "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, stru_5FA9A8.memconst
		lea	edx, [ebp-200h]
		add	eax, eax
		add	eax, edx
		push	ecx		; u
		push	eax		; s
		call	HexprintW
		add	esp, 8
		lea	ecx, [ebp-200h]
		mov	edx, pd
		push	ecx		; int
		push	1		; int
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B64C6
		mov	ecx, pd
		mov	edx, [ecx+288h]
		jmp	short loc_4B64C8
; ---------------------------------------------------------------------------

loc_4B64C6:				; CODE XREF: .text:004B64B6j
		xor	edx, edx	; int

loc_4B64C8:				; CODE XREF: .text:004B64C4j
		push	edx		; int
		mov	eax, stru_5FA9A8.memconst ; int
		push	eax		; int
		push	eax		; int
		mov	ecx, dword_5FA988 ; int
		push	ecx		; int
		call	loc_4A2620
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4B64E5
; ---------------------------------------------------------------------------

loc_4B64E3:				; CODE XREF: .text:004B6467j
		xor	eax, eax

loc_4B64E5:				; CODE XREF: .text:004B640Bj
					; .text:004B642Aj ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B64EC:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		cmp	dword_5FA988, 0
		mov	eax, [ebp+14h]
		jnz	short loc_4B6508
		xor	eax, eax
		jmp	loc_4B65AD
; ---------------------------------------------------------------------------

loc_4B6508:				; CODE XREF: .text:004B64FFj
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B651E
		xor	eax, eax
		jmp	loc_4B65AD
; ---------------------------------------------------------------------------

loc_4B651E:				; CODE XREF: .text:004B6515j
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B652B
		xor	eax, eax
		jmp	loc_4B65AD
; ---------------------------------------------------------------------------

loc_4B652B:				; CODE XREF: .text:004B6522j
		test	eax, eax
		jnz	short loc_4B6536
		mov	eax, 1
		jmp	short loc_4B65AD
; ---------------------------------------------------------------------------

loc_4B6536:				; CODE XREF: .text:004B652Dj
		dec	eax
		jnz	short loc_4B65AB
		push	offset aTextStringsRef ; "Text strings referenced in "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		mov	edx, dword_5FA988
		add	esp, 0Ch
		add	eax, eax
		mov	ecx, [edx+4]
		push	ecx		; size
		lea	ecx, [ebp-200h]
		mov	edx, [edx]
		add	eax, ecx
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax		; int
		cmp	dword_5FA98C, 0
		jz	short loc_4B6596
		mov	eax, pd
		mov	edx, [eax+288h]
		jmp	short loc_4B6598
; ---------------------------------------------------------------------------

loc_4B6596:				; CODE XREF: .text:004B6587j
		xor	edx, edx	; int

loc_4B6598:				; CODE XREF: .text:004B6594j
		push	edx		; int
		mov	eax, dword_5FA988 ; int
		push	eax		; int
		call	loc_4A2E90
		add	esp, 0Ch
		xor	eax, eax
		jmp	short loc_4B65AD
; ---------------------------------------------------------------------------

loc_4B65AB:				; CODE XREF: .text:004B6537j
		xor	eax, eax

loc_4B65AD:				; CODE XREF: .text:004B6503j
					; .text:004B6519j ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B65B4:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		cmp	dword_5FA988, 0
		mov	eax, [ebp+14h]
		jz	short loc_4B65D8
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B65DF

loc_4B65D8:				; CODE XREF: .text:004B65C7j
		xor	eax, eax
		jmp	loc_4B6674
; ---------------------------------------------------------------------------

loc_4B65DF:				; CODE XREF: .text:004B65D6j
		mov	ecx, pd
		test	byte ptr [ecx+0Bh], 8
		jz	short loc_4B65F2
		xor	eax, eax
		jmp	loc_4B6674
; ---------------------------------------------------------------------------

loc_4B65F2:				; CODE XREF: .text:004B65E9j
		test	eax, eax
		jnz	short loc_4B65FD
		mov	eax, 1
		jmp	short loc_4B6674
; ---------------------------------------------------------------------------

loc_4B65FD:				; CODE XREF: .text:004B65F4j
		dec	eax
		jnz	short loc_4B6672
		push	offset aGuidsReference ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		mov	edx, dword_5FA988
		add	esp, 0Ch
		add	eax, eax
		mov	ecx, [edx+4]
		push	ecx		; size
		lea	ecx, [ebp-200h]
		mov	edx, [edx]
		add	eax, ecx
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax		; int
		cmp	dword_5FA98C, 0
		jz	short loc_4B665D
		mov	eax, pd
		mov	edx, [eax+288h]
		jmp	short loc_4B665F
; ---------------------------------------------------------------------------

loc_4B665D:				; CODE XREF: .text:004B664Ej
		xor	edx, edx	; int

loc_4B665F:				; CODE XREF: .text:004B665Bj
		push	edx		; int
		mov	eax, dword_5FA988 ; int
		push	eax		; int
		call	loc_4A3620
		add	esp, 0Ch
		xor	eax, eax
		jmp	short loc_4B6674
; ---------------------------------------------------------------------------

loc_4B6672:				; CODE XREF: .text:004B65FEj
		xor	eax, eax

loc_4B6674:				; CODE XREF: .text:004B65DAj
					; .text:004B65EDj ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6678:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, pd
		test	edx, edx
		jz	short loc_4B668E
		cmp	dword ptr [edx+4], 0
		jnz	short loc_4B6692

loc_4B668E:				; CODE XREF: .text:004B6686j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6692:				; CODE XREF: .text:004B668Cj
		test	eax, eax
		jnz	short loc_4B669D
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B669D:				; CODE XREF: .text:004B6694j
		dec	eax
		jnz	short loc_4B66D2
		push	offset aAllUserDefined ; "All user-defined comments"
		call	_T
		pop	ecx
		push	eax
		cmp	dword_5FA98C, 0
		jz	short loc_4B66C3
		mov	edx, pd
		mov	ecx, [edx+288h]
		jmp	short loc_4B66C5
; ---------------------------------------------------------------------------

loc_4B66C3:				; CODE XREF: .text:004B66B3j
		xor	ecx, ecx

loc_4B66C5:				; CODE XREF: .text:004B66C1j
		push	ecx
		call	loc_4A3CB8
		add	esp, 8
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B66D2:				; CODE XREF: .text:004B669Ej
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B66D8:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		mov	edx, pd
		test	edx, edx
		mov	eax, [ebp+14h]
		jz	short loc_4B6706
		cmp	dword ptr [edx+4], 0
		jz	short loc_4B6706
		cmp	dword_5FA988, 0
		jz	short loc_4B6706
		cmp	decode,	0
		jnz	short loc_4B670D

loc_4B6706:				; CODE XREF: .text:004B66ECj
					; .text:004B66F2j ...
		xor	eax, eax
		jmp	loc_4B678F
; ---------------------------------------------------------------------------

loc_4B670D:				; CODE XREF: .text:004B6704j
		test	eax, eax
		jnz	short loc_4B6718
		mov	eax, 1
		jmp	short loc_4B678F
; ---------------------------------------------------------------------------

loc_4B6718:				; CODE XREF: .text:004B670Fj
		dec	eax
		jnz	short loc_4B678D
		push	offset aProceduresIn ; "Procedures in "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		mov	edx, dword_5FA988
		add	esp, 0Ch
		add	eax, eax
		mov	ecx, [edx+4]
		push	ecx		; size
		lea	ecx, [ebp-200h]
		mov	edx, [edx]
		add	eax, ecx
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax
		cmp	dword_5FA98C, 0
		jz	short loc_4B6778
		mov	eax, pd
		mov	edx, [eax+288h]
		jmp	short loc_4B677A
; ---------------------------------------------------------------------------

loc_4B6778:				; CODE XREF: .text:004B6769j
		xor	edx, edx

loc_4B677A:				; CODE XREF: .text:004B6776j
		push	edx
		mov	eax, dword_5FA988
		push	eax
		call	loc_4A3DF8
		add	esp, 0Ch
		xor	eax, eax
		jmp	short loc_4B678F
; ---------------------------------------------------------------------------

loc_4B678D:				; CODE XREF: .text:004B6719j
		xor	eax, eax

loc_4B678F:				; CODE XREF: .text:004B6708j
					; .text:004B6716j ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B6794:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		mov	edx, pd
		test	edx, edx
		mov	eax, [ebp+14h]
		jz	short loc_4B67B9
		cmp	dword ptr [edx+4], 0
		jz	short loc_4B67B9
		cmp	dword_5FA988, 0
		jnz	short loc_4B67C0

loc_4B67B9:				; CODE XREF: .text:004B67A8j
					; .text:004B67AEj
		xor	eax, eax
		jmp	loc_4B6842
; ---------------------------------------------------------------------------

loc_4B67C0:				; CODE XREF: .text:004B67B7j
		test	eax, eax
		jnz	short loc_4B67CB
		mov	eax, 1
		jmp	short loc_4B6842
; ---------------------------------------------------------------------------

loc_4B67CB:				; CODE XREF: .text:004B67C2j
		dec	eax
		jnz	short loc_4B6840
		push	offset aSwitchesIn ; "Switches in "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		mov	edx, dword_5FA988
		add	esp, 0Ch
		add	eax, eax
		mov	ecx, [edx+4]
		push	ecx		; size
		lea	ecx, [ebp-200h]
		mov	edx, [edx]
		add	eax, ecx
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax
		cmp	dword_5FA98C, 0
		jz	short loc_4B682B
		mov	eax, pd
		mov	edx, [eax+288h]
		jmp	short loc_4B682D
; ---------------------------------------------------------------------------

loc_4B682B:				; CODE XREF: .text:004B681Cj
		xor	edx, edx

loc_4B682D:				; CODE XREF: .text:004B6829j
		push	edx
		mov	eax, dword_5FA988
		push	eax
		call	loc_4A405C
		add	esp, 0Ch
		xor	eax, eax
		jmp	short loc_4B6842
; ---------------------------------------------------------------------------

loc_4B6840:				; CODE XREF: .text:004B67CCj
		xor	eax, eax

loc_4B6842:				; CODE XREF: .text:004B67BBj
					; .text:004B67C9j ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B6848:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		mov	eax, pd
		test	eax, eax
		mov	edx, [ebp+14h]
		jz	short loc_4B6866
		cmp	dword_5FA988, 0
		jnz	short loc_4B686D

loc_4B6866:				; CODE XREF: .text:004B685Bj
		xor	eax, eax
		jmp	loc_4B690C
; ---------------------------------------------------------------------------

loc_4B686D:				; CODE XREF: .text:004B6864j
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B687D
		xor	eax, eax
		jmp	loc_4B690C
; ---------------------------------------------------------------------------

loc_4B687D:				; CODE XREF: .text:004B6874j
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B688A
		xor	eax, eax
		jmp	loc_4B690C
; ---------------------------------------------------------------------------

loc_4B688A:				; CODE XREF: .text:004B6881j
		test	edx, edx
		jnz	short loc_4B6895
		mov	eax, 1
		jmp	short loc_4B690C
; ---------------------------------------------------------------------------

loc_4B6895:				; CODE XREF: .text:004B688Cj
		dec	edx
		jnz	short loc_4B690A
		push	offset aFloatingPointC ; "Floating-point constants referenced in "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		mov	edx, dword_5FA988
		add	esp, 0Ch
		add	eax, eax
		mov	ecx, [edx+4]
		push	ecx		; size
		lea	ecx, [ebp-200h]
		mov	edx, [edx]
		add	eax, ecx
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax		; int
		cmp	dword_5FA98C, 0
		jz	short loc_4B68F5
		mov	eax, pd
		mov	edx, [eax+288h]
		jmp	short loc_4B68F7
; ---------------------------------------------------------------------------

loc_4B68F5:				; CODE XREF: .text:004B68E6j
		xor	edx, edx	; int

loc_4B68F7:				; CODE XREF: .text:004B68F3j
		push	edx		; int
		mov	eax, dword_5FA988 ; int
		push	eax		; int
		call	loc_4A41D0
		add	esp, 0Ch
		xor	eax, eax
		jmp	short loc_4B690C
; ---------------------------------------------------------------------------

loc_4B690A:				; CODE XREF: .text:004B6896j
		xor	eax, eax

loc_4B690C:				; CODE XREF: .text:004B6868j
					; .text:004B6878j ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4B6910@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B6910:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, offset pd
		cmp	dword_5FA988, 0
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		jnz	short loc_4B6931
		xor	eax, eax
		jmp	loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B6931:				; CODE XREF: .text:004B6928j
		cmp	dword_5FA98C, 0
		jz	short loc_4B6945
		mov	edx, [edi]
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B694C

loc_4B6945:				; CODE XREF: .text:004B6938j
		xor	eax, eax
		jmp	loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B694C:				; CODE XREF: .text:004B6943j
		mov	eax, [edi]
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B695B
		xor	eax, eax
		jmp	loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B695B:				; CODE XREF: .text:004B6952j
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B6968
		xor	eax, eax
		jmp	loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B6968:				; CODE XREF: .text:004B695Fj
		call	loc_4C49A0
		test	eax, eax
		jg	short loc_4B6978
		xor	eax, eax
		jmp	loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B6978:				; CODE XREF: .text:004B696Fj
		test	ebx, ebx
		jnz	short loc_4B69C0
		test	esi, esi
		jnz	short loc_4B699A
		mov	eax, [edi]
		mov	edx, [eax+28Ch]
		sub	edx, [eax+288h]
		cmp	edx, stru_5FA9A8._size
		jz	short loc_4B699A
		xor	eax, eax
		jmp	short loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B699A:				; CODE XREF: .text:004B697Ej
					; .text:004B6994j
		cmp	esi, 1
		jnz	short loc_4B69B9
		mov	eax, [edi]
		mov	edx, [eax+28Ch]
		sub	edx, [eax+288h]
		cmp	edx, stru_5FA9A8._size
		jnz	short loc_4B69B9
		xor	eax, eax
		jmp	short loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B69B9:				; CODE XREF: .text:004B699Dj
					; .text:004B69B3j
		mov	eax, 1
		jmp	short loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B69C0:				; CODE XREF: .text:004B697Aj
		dec	ebx
		jnz	short loc_4B6A16
		mov	eax, [edi]
		mov	edx, [eax+28Ch]
		push	edx		; addr1
		mov	ecx, [eax+288h]
		push	ecx		; addr0
		call	Findruntracerecord
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jge	short loc_4B69F5
		push	offset aNoRecordFound ;	"No record found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4B6A12
; ---------------------------------------------------------------------------

loc_4B69F5:				; CODE XREF: .text:004B69DFj
		push	ebx
		call	loc_4C5958
		pop	ecx
		push	1000Ch		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	ebx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4B6A12:				; CODE XREF: .text:004B69F3j
		xor	eax, eax
		jmp	short loc_4B6A18
; ---------------------------------------------------------------------------

loc_4B6A16:				; CODE XREF: .text:004B69C1j
		xor	eax, eax

loc_4B6A18:				; CODE XREF: .text:004B692Cj
					; .text:004B6947j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B6A20:				; DATA XREF: .data:stru_552C38o
		push	ebp
		mov	ecx, offset pd
		mov	ebp, esp
		push	ebx
		mov	eax, [ecx]
		test	eax, eax
		mov	ebx, [ebp+14h]
		mov	edx, [ebp+10h]
		jz	short loc_4B6A3B
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B6A40

loc_4B6A3B:				; CODE XREF: .text:004B6A33j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6A40:				; CODE XREF: .text:004B6A39j
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B6A4B
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6A4B:				; CODE XREF: .text:004B6A44j
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B6A5C
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6A5C:				; CODE XREF: .text:004B6A55j
		cmp	dword ptr [eax+6FCh], 1
		jz	short loc_4B6A6A
		or	eax, 0FFFFFFFFh
		jmp	short loc_4B6A7E
; ---------------------------------------------------------------------------

loc_4B6A6A:				; CODE XREF: .text:004B6A63j
		mov	eax, [ecx]
		mov	eax, [eax+700h]
		test	eax, eax
		jl	short loc_4B6A7B
		cmp	eax, 8
		jl	short loc_4B6A7E

loc_4B6A7B:				; CODE XREF: .text:004B6A74j
		or	eax, 0FFFFFFFFh

loc_4B6A7E:				; CODE XREF: .text:004B6A68j
					; .text:004B6A79j
		test	ebx, ebx
		jnz	short loc_4B6A9C
		cmp	eax, edx
		jnz	short loc_4B6A94
		mov	edx, 2
		inc	eax
		jz	short loc_4B6A8F
		inc	edx

loc_4B6A8F:				; CODE XREF: .text:004B6A8Cj
		mov	eax, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6A94:				; CODE XREF: .text:004B6A84j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6A9C:				; CODE XREF: .text:004B6A80j
		dec	ebx
		jnz	short loc_4B6ACC
		cmp	edx, 0FFFFFFFFh
		jnz	short loc_4B6AB0
		mov	eax, [ecx]
		xor	ebx, ebx
		mov	[eax+6FCh], ebx
		jmp	short loc_4B6ABC
; ---------------------------------------------------------------------------

loc_4B6AB0:				; CODE XREF: .text:004B6AA2j
		mov	eax, [ecx]
		mov	dword ptr [eax+6FCh], 1

loc_4B6ABC:				; CODE XREF: .text:004B6AAEj
		mov	ecx, [ecx]
		mov	eax, 1
		mov	[ecx+700h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6ACC:				; CODE XREF: .text:004B6A9Dj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4B6AD4
loc_4B6AD4:				; DATA XREF: .text:004BFE45o
					; .text:004BFE67o ...
		push	ebp
		mov	ebp, esp
		mov	edx, offset pd
		push	ebx
		push	esi
		cmp	dword ptr [edx], 0
		mov	ecx, [ebp+14h]
		mov	eax, [ebp+10h]
		jnz	short loc_4B6AF0
		xor	eax, eax
		jmp	loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6AF0:				; CODE XREF: .text:004B6AE7j
		test	eax, eax
		jnz	short loc_4B6B11
		mov	ebx, [edx]
		cmp	dword ptr [ebx+6F4h], 0FFFFFFFFh
		jnz	short loc_4B6B11
		mov	ebx, [edx]
		cmp	dword ptr [ebx+6F8h], 0
		jnz	short loc_4B6B11
		xor	eax, eax
		jmp	loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6B11:				; CODE XREF: .text:004B6AF2j
					; .text:004B6AFDj ...
		cmp	eax, 1
		jnz	short loc_4B6B41
		cmp	dword_5FA98C, 0
		jz	short loc_4B6B3A
		mov	ebx, [edx]
		cmp	dword ptr [ebx+288h], 0
		jz	short loc_4B6B3A
		mov	ebx, [edx]
		mov	esi, [ebx+6F8h]
		cmp	esi, [ebx+288h]
		jnz	short loc_4B6B41

loc_4B6B3A:				; CODE XREF: .text:004B6B1Dj
					; .text:004B6B28j
		xor	eax, eax
		jmp	loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6B41:				; CODE XREF: .text:004B6B14j
					; .text:004B6B38j
		cmp	eax, 2
		jz	short loc_4B6B4B
		cmp	eax, 3
		jnz	short loc_4B6B63

loc_4B6B4B:				; CODE XREF: .text:004B6B44j
		cmp	dword_5FC27C, 0
		jz	short loc_4B6B5C
		mov	ebx, [edx]
		test	byte ptr [ebx+0Eh], 4
		jnz	short loc_4B6B63

loc_4B6B5C:				; CODE XREF: .text:004B6B52j
		xor	eax, eax
		jmp	loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6B63:				; CODE XREF: .text:004B6B49j
					; .text:004B6B5Aj
		cmp	eax, 2
		jnz	short loc_4B6B73
		mov	ebx, [edx]
		cmp	dword ptr [ebx+6F4h], 4
		jz	short loc_4B6B83

loc_4B6B73:				; CODE XREF: .text:004B6B66j
		cmp	eax, 3
		jnz	short loc_4B6B8A
		mov	ebx, [edx]
		cmp	dword ptr [ebx+6F4h], 5
		jnz	short loc_4B6B8A

loc_4B6B83:				; CODE XREF: .text:004B6B71j
		xor	eax, eax
		jmp	loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6B8A:				; CODE XREF: .text:004B6B76j
					; .text:004B6B81j
		cmp	eax, 4
		jnz	short loc_4B6BAC
		mov	ebx, dword_5FA988
		test	ebx, ebx
		jz	short loc_4B6BA5
		mov	esi, [edx]
		mov	esi, [esi+6F8h]
		cmp	esi, [ebx]
		jnz	short loc_4B6BAC

loc_4B6BA5:				; CODE XREF: .text:004B6B97j
		xor	eax, eax
		jmp	loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6BAC:				; CODE XREF: .text:004B6B8Dj
					; .text:004B6BA3j
		test	ecx, ecx
		jnz	short loc_4B6BBA
		mov	eax, 1
		jmp	loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6BBA:				; CODE XREF: .text:004B6BAEj
		dec	ecx
		jnz	loc_4B6C52
		cmp	eax, 1
		jnz	short loc_4B6BE0
		mov	eax, [edx]
		mov	dword ptr [eax+6F4h], 0FFFFFFFFh
		mov	ecx, [eax+288h]
		mov	[eax+6F8h], ecx
		jmp	short loc_4B6C4B
; ---------------------------------------------------------------------------

loc_4B6BE0:				; CODE XREF: .text:004B6BC4j
		cmp	eax, 2
		jnz	short loc_4B6BFB
		mov	eax, [edx]
		xor	edx, edx
		mov	dword ptr [eax+6F4h], 4
		mov	[eax+6F8h], edx
		jmp	short loc_4B6C4B
; ---------------------------------------------------------------------------

loc_4B6BFB:				; CODE XREF: .text:004B6BE3j
		cmp	eax, 3
		jnz	short loc_4B6C16
		mov	eax, [edx]
		xor	edx, edx
		mov	dword ptr [eax+6F4h], 5
		mov	[eax+6F8h], edx
		jmp	short loc_4B6C4B
; ---------------------------------------------------------------------------

loc_4B6C16:				; CODE XREF: .text:004B6BFEj
		cmp	eax, 4
		jnz	short loc_4B6C37
		mov	eax, [edx]
		mov	dword ptr [eax+6F4h], 0FFFFFFFFh
		mov	ecx, dword_5FA988
		mov	ecx, [ecx]
		mov	[eax+6F8h], ecx
		jmp	short loc_4B6C4B
; ---------------------------------------------------------------------------

loc_4B6C37:				; CODE XREF: .text:004B6C19j
		mov	eax, [edx]
		xor	edx, edx
		mov	dword ptr [eax+6F4h], 0FFFFFFFFh
		mov	[eax+6F8h], edx

loc_4B6C4B:				; CODE XREF: .text:004B6BDEj
					; .text:004B6BF9j ...
		mov	eax, 1
		jmp	short loc_4B6C54
; ---------------------------------------------------------------------------

loc_4B6C52:				; CODE XREF: .text:004B6BBBj
		xor	eax, eax

loc_4B6C54:				; CODE XREF: .text:004B6AEBj
					; .text:004B6B0Cj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6C58:				; DATA XREF: .data:stru_552DB8o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, pd
		test	eax, eax
		mov	ecx, [ebp+14h]
		mov	edx, [ebp+10h]
		jz	short loc_4B6C71
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4B6C76

loc_4B6C71:				; CODE XREF: .text:004B6C69j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6C76:				; CODE XREF: .text:004B6C6Fj
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B6C87
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6C87:				; CODE XREF: .text:004B6C80j
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B6C92
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6C92:				; CODE XREF: .text:004B6C8Bj
		mov	eax, [eax+8]
		test	edx, edx
		jnz	short loc_4B6CA5
		test	eax, 3000000h
		jnz	short loc_4B6CA5
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6CA5:				; CODE XREF: .text:004B6C97j
					; .text:004B6C9Ej
		cmp	edx, 1
		jnz	short loc_4B6CBF
		mov	ebx, eax
		and	ebx, 3000000h
		cmp	ebx, 1000000h
		jnz	short loc_4B6CBF
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6CBF:				; CODE XREF: .text:004B6CA8j
					; .text:004B6CB8j
		test	ecx, ecx
		jnz	short loc_4B6CCB
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6CCB:				; CODE XREF: .text:004B6CC1j
		dec	ecx
		jnz	short loc_4B6CFE
		and	eax, 0FCFFFFFFh
		test	edx, edx
		jnz	short loc_4B6CDC
		or	eax, 0
		jmp	short loc_4B6CE6
; ---------------------------------------------------------------------------

loc_4B6CDC:				; CODE XREF: .text:004B6CD5j
		cmp	edx, 1
		jnz	short loc_4B6CE6
		or	eax, 1000000h

loc_4B6CE6:				; CODE XREF: .text:004B6CDAj
					; .text:004B6CDFj
		push	eax		; dumptype
		mov	edx, pd
		push	edx		; pd
		call	Setdumptype
		add	esp, 8
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6CFE:				; CODE XREF: .text:004B6CCCj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B6D04:				; DATA XREF: .data:stru_552DB8o
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, offset pd
		mov	ecx, [ebp+14h]
		mov	eax, [ebp+10h]
		mov	edx, [esi]
		test	edx, edx
		jz	short loc_4B6D1F
		cmp	dword ptr [edx+4], 0
		jnz	short loc_4B6D24

loc_4B6D1F:				; CODE XREF: .text:004B6D17j
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6D24:				; CODE XREF: .text:004B6D1Dj
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B6D35
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6D35:				; CODE XREF: .text:004B6D2Ej
		test	byte ptr [edx+0Eh], 1
		jnz	short loc_4B6D40
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6D40:				; CODE XREF: .text:004B6D39j
		test	eax, eax
		jnz	short loc_4B6D51
		mov	edx, [esi]
		test	byte ptr [edx+0Ah], 40h
		jnz	short loc_4B6D51
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6D51:				; CODE XREF: .text:004B6D42j
					; .text:004B6D4Aj
		cmp	eax, 1
		jnz	short loc_4B6D63
		mov	edx, [esi]
		test	byte ptr [edx+0Ah], 40h
		jz	short loc_4B6D63
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6D63:				; CODE XREF: .text:004B6D54j
					; .text:004B6D5Cj
		test	ecx, ecx
		jnz	short loc_4B6D6F
		mov	eax, 1
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6D6F:				; CODE XREF: .text:004B6D65j
		dec	ecx
		jnz	short loc_4B6DA6
		test	eax, eax
		jnz	short loc_4B6D81
		mov	edx, [esi]
		and	dword ptr [edx+8], 0FFBFFFFFh
		jmp	short loc_4B6D8F
; ---------------------------------------------------------------------------

loc_4B6D81:				; CODE XREF: .text:004B6D74j
		cmp	eax, 1
		jnz	short loc_4B6D8F
		mov	ecx, [esi]
		or	dword ptr [ecx+8], 400000h

loc_4B6D8F:				; CODE XREF: .text:004B6D7Fj
					; .text:004B6D84j
		mov	eax, [esi]
		mov	edx, [eax+8]
		push	edx		; dumptype
		push	eax		; pd
		call	Setdumptype
		add	esp, 8
		mov	eax, 1
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6DA6:				; CODE XREF: .text:004B6D70j
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B6DAC:				; DATA XREF: .data:stru_552E30o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	ebx, dword_5FA988
		test	ebx, ebx
		jz	short loc_4B6DCA
		mov	edx, pd
		test	byte ptr [edx+0Eh], 1
		jnz	short loc_4B6DCE

loc_4B6DCA:				; CODE XREF: .text:004B6DBCj
		xor	eax, eax
		jmp	short loc_4B6E03
; ---------------------------------------------------------------------------

loc_4B6DCE:				; CODE XREF: .text:004B6DC8j
		test	eax, eax
		jnz	short loc_4B6DD9
		mov	eax, 1
		jmp	short loc_4B6E03
; ---------------------------------------------------------------------------

loc_4B6DD9:				; CODE XREF: .text:004B6DD0j
		dec	eax
		jnz	short loc_4B6E01
		mov	esi, 1
		mov	eax, [ebx]
		push	eax
		call	loc_413A9C
		pop	ecx		; int
		dec	eax		; int
		jz	short loc_4B6DEE
		dec	esi

loc_4B6DEE:				; CODE XREF: .text:004B6DEBj
		push	esi		; int
		push	1		; int
		push	ebx		; int
		call	loc_46EB44
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4B6E03
; ---------------------------------------------------------------------------

loc_4B6E01:				; CODE XREF: .text:004B6DDAj
		xor	eax, eax

loc_4B6E03:				; CODE XREF: .text:004B6DCCj
					; .text:004B6DD7j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B6E08:				; DATA XREF: .data:stru_552E30o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		cmp	dword_5FA964, 0
		jnz	short loc_4B6E1E
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6E1E:				; CODE XREF: .text:004B6E18j
		mov	ecx, eax
		cmp	ecx, 5		; switch 6 cases
		ja	loc_4B6EEE	; jumptable 004B6E29 default case
		jmp	ds:off_4B6E30[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4B6E30	dd offset loc_4B6E48	; DATA XREF: .text:004B6E29r
		dd offset loc_4B6E71	; jump table for switch	statement
		dd offset loc_4B6E8A
		dd offset loc_4B6EA3
		dd offset loc_4B6EBC
		dd offset loc_4B6ED5
; ---------------------------------------------------------------------------

loc_4B6E48:				; CODE XREF: .text:004B6E29j
					; DATA XREF: .text:off_4B6E30o
		mov	ecx, dword_5FA964 ; jumptable 004B6E29 case 0
		test	byte ptr [ecx+0Ah], 40h
		jz	short loc_4B6E6D
		cmp	dword_5FA988, 0
		jz	short loc_4B6E6D
		mov	ecx, pd
		test	byte ptr [ecx+0Eh], 1
		jz	loc_4B6EF2

loc_4B6E6D:				; CODE XREF: .text:004B6E52j
					; .text:004B6E5Bj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6E71:				; CODE XREF: .text:004B6E29j
					; DATA XREF: .text:off_4B6E30o
		cmp	dword_5FA988, 0	; jumptable 004B6E29 case 1
		jnz	short loc_4B6E86
		mov	ecx, dword_5FA964
		test	byte ptr [ecx+0Ah], 20h
		jnz	short loc_4B6EF2

loc_4B6E86:				; CODE XREF: .text:004B6E78j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6E8A:				; CODE XREF: .text:004B6E29j
					; DATA XREF: .text:off_4B6E30o
		cmp	dword_5FA988, 0	; jumptable 004B6E29 case 2
		jnz	short loc_4B6E9F
		mov	ecx, dword_5FA964
		cmp	dword ptr [ecx+0Ch], 3
		jz	short loc_4B6EF2

loc_4B6E9F:				; CODE XREF: .text:004B6E91j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6EA3:				; CODE XREF: .text:004B6E29j
					; DATA XREF: .text:off_4B6E30o
		cmp	dword_5FA988, 0	; jumptable 004B6E29 case 3
		jnz	short loc_4B6EB8
		mov	ecx, dword_5FA964
		cmp	dword ptr [ecx+0Ch], 1
		jz	short loc_4B6EF2

loc_4B6EB8:				; CODE XREF: .text:004B6EAAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6EBC:				; CODE XREF: .text:004B6E29j
					; DATA XREF: .text:off_4B6E30o
		cmp	dword_5FA988, 0	; jumptable 004B6E29 case 4
		jnz	short loc_4B6ED1
		mov	ecx, dword_5FA964
		cmp	dword ptr [ecx+0Ch], 2
		jz	short loc_4B6EF2

loc_4B6ED1:				; CODE XREF: .text:004B6EC3j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6ED5:				; CODE XREF: .text:004B6E29j
					; DATA XREF: .text:off_4B6E30o
		cmp	dword_5FA988, 0	; jumptable 004B6E29 case 5
		jnz	short loc_4B6EEA
		mov	ecx, dword_5FA964
		cmp	dword ptr [ecx+0Ch], 5
		jz	short loc_4B6EF2

loc_4B6EEA:				; CODE XREF: .text:004B6EDCj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6EEE:				; CODE XREF: .text:004B6E23j
		xor	eax, eax	; jumptable 004B6E29 default case
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6EF2:				; CODE XREF: .text:004B6E67j
					; .text:004B6E84j ...
		test	edx, edx
		jnz	short loc_4B6EFD
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6EFD:				; CODE XREF: .text:004B6EF4j
		dec	edx
		jnz	loc_4B6FB5
		test	eax, eax
		jnz	short loc_4B6F1A
		mov	edx, dword_5FA964
		push	edx
		call	loc_46FD84
		pop	ecx
		jmp	loc_4B6FAE
; ---------------------------------------------------------------------------

loc_4B6F1A:				; CODE XREF: .text:004B6F06j
		cmp	eax, 1
		jnz	short loc_4B6F32
		push	1
		mov	ecx, dword_5FA964
		push	ecx
		call	loc_46FED4
		add	esp, 8
		jmp	short loc_4B6FAE
; ---------------------------------------------------------------------------

loc_4B6F32:				; CODE XREF: .text:004B6F1Dj
		cmp	eax, 2
		jnz	short loc_4B6F49
		push	1
		mov	eax, dword_5FA964
		push	eax
		call	loc_46FFE4
		add	esp, 8
		jmp	short loc_4B6FAE
; ---------------------------------------------------------------------------

loc_4B6F49:				; CODE XREF: .text:004B6F35j
		cmp	eax, 3
		jnz	short loc_4B6F61
		push	1
		mov	edx, dword_5FA964
		push	edx
		call	loc_4700D4
		add	esp, 8
		jmp	short loc_4B6FAE
; ---------------------------------------------------------------------------

loc_4B6F61:				; CODE XREF: .text:004B6F4Cj
		cmp	eax, 4
		jnz	short loc_4B6F79
		push	1
		mov	ecx, dword_5FA964
		push	ecx
		call	loc_470200
		add	esp, 8
		jmp	short loc_4B6FAE
; ---------------------------------------------------------------------------

loc_4B6F79:				; CODE XREF: .text:004B6F64j
		cmp	eax, 5
		jnz	short loc_4B6FAE
		push	1
		mov	eax, dword_5FA964
		push	eax
		call	loc_470434
		add	esp, 8
		cmp	dword_5FA960, 0D0000h
		jz	short loc_4B6FAE
		push	40D0110h	; dumptype
		mov	edx, pd
		push	edx		; pd
		call	Setdumptype
		add	esp, 8

loc_4B6FAE:				; CODE XREF: .text:004B6F15j
					; .text:004B6F30j ...
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6FB5:				; CODE XREF: .text:004B6EFEj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B6FBC:				; DATA XREF: .data:stru_552E30o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B6FEC
		cmp	dword_5FA964, 0
		jz	short loc_4B6FEC
		mov	edx, dword_5FA964
		cmp	dword ptr [edx+64h], 0
		jz	short loc_4B6FEC
		mov	ecx, pd
		test	byte ptr [ecx+0Bh], 8
		jz	short loc_4B6FF0

loc_4B6FEC:				; CODE XREF: .text:004B6FC9j
					; .text:004B6FD2j ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6FF0:				; CODE XREF: .text:004B6FEAj
		test	eax, eax
		jnz	short loc_4B6FFB
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B6FFB:				; CODE XREF: .text:004B6FF2j
		dec	eax
		jnz	short loc_4B702A
		mov	eax, pd
		mov	edx, pd
		push	1		; keephittrace
		mov	edx, [edx+288h]
		mov	ecx, [eax+28Ch]
		sub	ecx, edx
		push	ecx		; size
		push	edx		; base
		call	Removeanalysis
		add	esp, 0Ch
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B702A:				; CODE XREF: .text:004B6FFCj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B7030:				; DATA XREF: .data:stru_552E30o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cmp	dword_5FA988, 0
		mov	eax, [ebp+14h]
		jz	short loc_4B705D
		mov	edx, pd
		cmp	dword ptr [edx+4E8h], 0
		jnz	short loc_4B705D
		mov	ecx, pd
		test	byte ptr [ecx+0Eh], 1
		jnz	short loc_4B7061

loc_4B705D:				; CODE XREF: .text:004B7040j
					; .text:004B704Fj
		xor	eax, eax
		jmp	short loc_4B70DF
; ---------------------------------------------------------------------------

loc_4B7061:				; CODE XREF: .text:004B705Bj
		test	eax, eax
		jnz	short loc_4B70BD
		xor	ebx, ebx
		jmp	short loc_4B70B1
; ---------------------------------------------------------------------------

loc_4B7069:				; CODE XREF: .text:004B70B7j
		push	ebx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4B70B0
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4B70B0
		mov	ecx, dword_5FA988
		mov	edx, [eax]
		mov	edi, edx
		add	edi, [eax+4]
		mov	esi, [ecx]
		cmp	esi, edi
		ja	short loc_4B70B0
		mov	esi, dword_5FA988
		mov	esi, [esi]
		add	esi, [ecx+4]
		cmp	edx, esi
		ja	short loc_4B70B0
		cmp	dword ptr [eax+64h], 0
		jz	short loc_4B70B0
		mov	eax, 1
		jmp	short loc_4B70DF
; ---------------------------------------------------------------------------

loc_4B70B0:				; CODE XREF: .text:004B7079j
					; .text:004B707Fj ...
		inc	ebx

loc_4B70B1:				; CODE XREF: .text:004B7067j
		cmp	ebx, memory.sorted.n
		jl	short loc_4B7069
		xor	eax, eax
		jmp	short loc_4B70DF
; ---------------------------------------------------------------------------

loc_4B70BD:				; CODE XREF: .text:004B7063j
		dec	eax
		jnz	short loc_4B70DD
		push	1		; keephittrace
		mov	eax, dword_5FA988
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [eax]
		push	ecx		; base
		call	Removeanalysis
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4B70DF
; ---------------------------------------------------------------------------

loc_4B70DD:				; CODE XREF: .text:004B70BEj
		xor	eax, eax

loc_4B70DF:				; CODE XREF: .text:004B705Fj
					; .text:004B70AEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
