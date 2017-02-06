.code

; int __cdecl loc_46736C(const void *, const void *)
loc_46736C:				; DATA XREF: .text:loc_4684F8o
					; .text:loc_468AD2o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_467384
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467384:				; CODE XREF: .text:0046737Cj
		cmp	ebx, ecx
		jnb	short loc_467390
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467390:				; CODE XREF: .text:00467386j
		mov	ebx, [edx+4]
		mov	ecx, [eax+4]
		cmp	ebx, ecx
		jbe	short loc_4673A0
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4673A0:				; CODE XREF: .text:00467398j
		cmp	ebx, ecx
		jnb	short loc_4673AC
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4673AC:				; CODE XREF: .text:004673A2j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4673B4(const void *, const void *)
loc_4673B4:				; DATA XREF: .text:00468AB9o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_4673CC
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4673CC:				; CODE XREF: .text:004673C4j
		cmp	ebx, ecx
		jnb	short loc_4673D8
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4673D8:				; CODE XREF: .text:004673CEj
		mov	ebx, [edx+4]
		mov	ecx, [eax+4]
		cmp	ebx, ecx
		jle	short loc_4673E8
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4673E8:				; CODE XREF: .text:004673E0j
		cmp	ebx, ecx
		jge	short loc_4673F4
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4673F4:				; CODE XREF: .text:004673EAj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4673FC(const void *, const void *)
loc_4673FC:				; DATA XREF: .text:loc_4686B7o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx+4]
		mov	ecx, [eax+4]
		cmp	ebx, ecx
		jbe	short loc_467416
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467416:				; CODE XREF: .text:0046740Ej
		cmp	ebx, ecx
		jnb	short loc_467422
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467422:				; CODE XREF: .text:00467418j
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_467430
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_467430:				; CODE XREF: .text:00467428j
		cmp	ebx, ecx
		jnb	short loc_46743C
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_46743C:				; CODE XREF: .text:00467432j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_467444@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int nDenominator)
loc_467444:				; CODE XREF: .text:0046F315p
					; .text:0046F34Ap
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 8

loc_46744D:				; CODE XREF: .text:00467455j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_46744D
		mov	eax, [ebp-4]
		add	esp, 0FFFFF150h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, addr0
		cmp	eax, [ebp+0Ch]
		ja	short loc_467478
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_46747F

loc_467478:				; CODE XREF: .text:0046746Bj
		xor	eax, eax
		jmp	loc_468C9A
; ---------------------------------------------------------------------------

loc_46747F:				; CODE XREF: .text:00467476j
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, addr1
		jbe	short loc_467499
		mov	ecx, addr1
		sub	ecx, [ebp+0Ch]
		mov	[ebp+10h], ecx

loc_467499:				; CODE XREF: .text:0046748Bj
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		add	eax, [ebp+10h]
		mov	[ebp-54h], eax
		xor	eax, eax
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	[ebp-4Ch], edx
		mov	ecx, [ebp+8]
		add	ecx, 8F4h
		xor	edx, edx
		mov	[ebp-98h], ecx
		mov	[ebp-50h], eax
		mov	[ebp-3Ch], edx
		lea	ecx, [ebp-8898h]
		push	1000h		; nmax
		push	ecx		; set
		call	Initset
		add	esp, 8
		mov	dword ptr [ebp-0Ch], 100h
		push	1		; flags
		mov	eax, [ebp-0Ch]
		mov	edx, eax	; int
		lea	eax, [edx+eax*2]
		shl	eax, 4
		add	eax, edx
		shl	eax, 2		; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-8Ch], eax
		cmp	dword ptr [ebp-8Ch], 0
		jnz	short loc_467531
		push	offset aLowMemorySwitc ; "  Low	memory,	switches are not analysed"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_468C9A
; ---------------------------------------------------------------------------

loc_467531:				; CODE XREF: .text:00467510j
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-0Ch]
		jge	short loc_46756D

loc_46753E:				; CODE XREF: .text:0046756Bj
		push	10h		; nmax
		mov	eax, [ebp-4]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		shl	eax, 4
		add	eax, edx
		shl	eax, 2
		add	eax, [ebp-8Ch]
		add	eax, 1Ch
		push	eax		; set
		call	Initset
		add	esp, 8
		inc	dword ptr [ebp-4]
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-0Ch]
		jl	short loc_46753E

loc_46756D:				; CODE XREF: .text:0046753Cj
		mov	ebx, [ebp-4Ch]
		cmp	ebx, [ebp-54h]
		jnb	short loc_4675C0

loc_467575:				; CODE XREF: .text:004675BEj
		mov	eax, dword_5E5D74
		and	word ptr [eax+ebx*2], 0D6FFh
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2], 1
		jz	short loc_4675BA
		push	2		; nbuf
		lea	ecx, [ebp-898h]
		push	ecx		; buf
		mov	eax, addr0
		add	eax, ebx
		push	eax		; dest
		call	Findlocaljumpsto
		add	esp, 0Ch
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 2
		jl	short loc_4675BA
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 2000h

loc_4675BA:				; CODE XREF: .text:0046758Aj
					; .text:004675ACj
		inc	ebx
		cmp	ebx, [ebp-54h]
		jb	short loc_467575

loc_4675C0:				; CODE XREF: .text:00467573j
		mov	eax, dword_5E5D8C
		mov	ecx, dword_5E5D88
		shl	eax, 2
		mov	[ebp-94h], ecx
		shr	eax, 3
		mov	[ebp-1Ch], eax
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_4675DF:				; CODE XREF: .text:00468C84j
		mov	edx, s
		mov	ecx, [ebp-4Ch]
		cmp	byte ptr [edx+ecx], 1Ch
		jz	short loc_4675F6
		inc	dword ptr [ebp-4Ch]
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_4675F6:				; CODE XREF: .text:004675ECj
		mov	eax, dword_5E5D74
		mov	edx, [ebp-4Ch]
		test	byte ptr [eax+edx*2], 70h
		jz	short loc_467636
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-4Ch]
		movzx	edx, word ptr [ecx+eax*2]
		and	edx, 70h
		cmp	edx, 10h
		jz	short loc_467636
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-4Ch]
		movzx	edx, word ptr [ecx+eax*2]
		and	edx, 70h
		cmp	edx, 50h
		jz	short loc_467636
		inc	dword ptr [ebp-4Ch]
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_467636:				; CODE XREF: .text:00467602j
					; .text:00467617j ...
		mov	ecx, [ebp-50h]
		add	ecx, 2000h
		cmp	ecx, [ebp-4Ch]
		jnb	short loc_46767E
		mov	eax, [ebp+10h]
		push	eax		; nDenominator
		push	3E8h		; nNumerator
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	ecx, [ebp-4Ch]
		sub	ecx, edx
		push	ecx		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_467678
		mov	dword ptr [ebp-3Ch], 0FFFFFFFFh
		jmp	loc_468C8A
; ---------------------------------------------------------------------------

loc_467678:				; CODE XREF: .text:0046766Aj
		mov	eax, [ebp-4Ch]
		mov	[ebp-50h], eax

loc_46767E:				; CODE XREF: .text:00467642j
		mov	dword ptr [ebp-10h], 1
		xor	edx, edx
		mov	[ebp-14h], edx
		xor	ecx, ecx
		mov	[ebp-18h], ecx
		xor	eax, eax
		mov	[ebp-30h], eax
		lea	edx, [ebp-8898h]
		push	edx		; set
		call	Emptyrange
		pop	ecx
		mov	ecx, [ebp-8Ch]
		mov	[ebp-90h], ecx
		mov	eax, [ebp-90h]
		mov	dword ptr [eax], 1
		mov	edx, [ebp-90h]
		mov	ecx, [ebp-4Ch]
		mov	[edx+4], ecx
		mov	eax, [ebp-90h]
		mov	dword ptr [eax+8], 0FFFFFFFFh
		mov	edx, [ebp-90h]
		xor	ecx, ecx
		mov	[edx+0Ch], ecx
		mov	eax, [ebp-90h]
		mov	[eax+10h], ecx
		mov	edx, [ebp-90h]
		xor	eax, eax
		mov	[edx+14h], eax
		mov	edx, [ebp-90h]
		mov	dword ptr [edx+18h], 0FFFFFFFFh
		mov	ecx, [ebp-90h]
		add	ecx, 1Ch
		push	ecx		; set
		call	Fullrange
		pop	ecx
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-90h]
		lea	ebx, [edx+9Ch]

loc_46771F:				; CODE XREF: .text:0046772Aj
		mov	byte ptr [ebx],	0
		inc	dword ptr [ebp-4]
		inc	ebx
		cmp	dword ptr [ebp-4], 8
		jl	short loc_46771F
		mov	dword ptr [ebp-8], 1
		xor	esi, esi

loc_467735:				; CODE XREF: .text:00467772j
					; .text:00467777j ...
		cmp	dword ptr [ebp-8], 0 ; jumptable 00467C40 default case
		jle	loc_4684B5

loc_46773F:				; CODE XREF: .text:004684AFj
		dec	dword ptr [ebp-8]
		mov	eax, [ebp-8]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		shl	eax, 4
		add	eax, edx
		shl	eax, 2
		add	eax, [ebp-8Ch]
		mov	[ebp-90h], eax
		mov	ecx, [ebp-90h]
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		mov	ebx, [ecx+4]
		cmp	ebx, eax
		jb	short loc_467735 ; jumptable 00467C40 default case
		cmp	ebx, [ebp-54h]
		jnb	short loc_467735 ; jumptable 00467C40 default case
		lea	edx, [ebx+20h]
		cmp	edx, [ebp-54h]
		ja	short loc_467735 ; jumptable 00467C40 default case
		mov	ecx, s
		cmp	byte ptr [ecx+ebx], 1Ch
		jnz	short loc_467798
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ebx*2], 2
		jz	short loc_4677A2

loc_467798:				; CODE XREF: .text:0046778Bj
		xor	edx, edx
		mov	[ebp-10h], edx
		jmp	loc_4684B5
; ---------------------------------------------------------------------------

loc_4677A2:				; CODE XREF: .text:00467796j
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2+1],	8
		jnz	loc_4683E5
		push	ebx		; value
		lea	eax, [ebp-8898h]
		push	eax		; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jnz	loc_4683E5
		cmp	ebx, [ebp-4Ch]
		jz	short loc_46784A
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2+1],	20h
		jnz	loc_4683E5
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2], 1
		jz	short loc_46784A
		mov	[ebp-58h], ebx
		cmp	dword ptr [ebp-58h], 0
		jbe	short loc_46780D

loc_4677F6:				; CODE XREF: .text:0046780Bj
		dec	dword ptr [ebp-58h]
		mov	eax, s
		mov	edx, [ebp-58h]
		cmp	byte ptr [eax+edx], 1
		jnz	short loc_46780D
		cmp	dword ptr [ebp-58h], 0
		ja	short loc_4677F6

loc_46780D:				; CODE XREF: .text:004677F4j
					; .text:00467805j
		mov	ecx, s
		mov	eax, [ebp-58h]
		cmp	byte ptr [ecx+eax], 1Ch
		jnz	short loc_46784A
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-58h]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		cmp	eax, 30h
		jz	short loc_46784A
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-58h]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		cmp	eax, 70h
		jnz	loc_4683E5

loc_46784A:				; CODE XREF: .text:004677CEj
					; .text:004677EBj ...
		mov	edx, dword_5E5D70
		xor	ecx, ecx
		lea	eax, [ebp-8898h]
		mov	cl, [edx+ebx]
		add	ecx, ebx
		dec	ecx
		push	ecx		; rmax
		push	ebx		; rmin
		push	eax		; set
		call	Addrange
		add	esp, 0Ch
		lea	edx, [ebp-34h]
		lea	ecx, [ebp-28h]
		lea	eax, [ebp-5Ch]
		push	edx
		push	ecx
		push	eax
		push	ebx
		mov	edx, [ebp-90h]
		push	edx
		call	loc_465B5C
		add	esp, 14h
		test	eax, eax
		jz	loc_467980
		mov	ecx, [ebp-90h]
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jnz	short loc_4678B6
		mov	eax, [ebp-90h]
		mov	edx, [ebp-28h]
		mov	[eax+18h], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-28h]
		mov	byte ptr [ecx+eax+9Ch],	0

loc_4678B6:				; CODE XREF: .text:00467897j
		mov	edx, [ebp-90h]
		mov	ecx, [edx+18h]
		cmp	ecx, [ebp-28h]
		jnz	loc_467980
		mov	eax, [ebp-90h]
		test	byte ptr [eax],	2
		jnz	loc_4683E5
		mov	edx, [ebp-90h]
		mov	eax, [ebp-90h]
		mov	ecx, [edx+10h]
		mov	[eax+0Ch], ecx
		mov	edx, [ebp-90h]
		mov	eax, [ebp-90h]
		mov	ecx, [edx+10h]
		add	ecx, [ebp-5Ch]
		mov	[eax+14h], ecx
		cmp	dword ptr [ebp-34h], 0FFFFFFFFh
		jnz	short loc_46792B
		mov	edx, [ebp-90h]
		mov	dword ptr [edx], 1
		mov	ecx, [ebp-90h]
		mov	edx, [ebp-90h]
		mov	eax, [ecx+14h]
		mov	[edx+10h], eax
		mov	dword ptr [ebp-18h], 1
		jmp	short loc_467962
; ---------------------------------------------------------------------------

loc_46792B:				; CODE XREF: .text:00467902j
		cmp	dword ptr [ebp-34h], 1
		jnz	short loc_46793F
		mov	ecx, [ebp-90h]
		mov	dword ptr [ecx], 2
		jmp	short loc_467962
; ---------------------------------------------------------------------------

loc_46793F:				; CODE XREF: .text:0046792Fj
		mov	eax, [ebp-90h]
		xor	edx, edx
		mov	[eax], edx
		mov	ecx, [ebp-90h]
		mov	edx, [ebp-90h]
		mov	eax, [ecx+14h]
		mov	[edx+10h], eax
		mov	dword ptr [ebp-18h], 1

loc_467962:				; CODE XREF: .text:00467929j
					; .text:0046793Dj
		mov	ecx, dword_5E5D70
		xor	eax, eax
		mov	edx, [ebp-90h]
		mov	al, [ecx+ebx]
		add	ebx, eax
		mov	[edx+4], ebx
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467980:				; CODE XREF: .text:00467887j
					; .text:004678C2j
		mov	ecx, [ebp-90h]
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jnz	short loc_4679F9
		lea	eax, [ebp-5Ch]
		lea	edx, [ebp-28h]
		push	eax
		push	edx
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_46638C
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4679F9
		mov	eax, [ebp-90h]
		mov	edx, [ebp-28h]
		mov	[eax+18h], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-28h]
		mov	byte ptr [ecx+eax+9Ch],	0
		push	0FFFFFFFFh	; rmax
		mov	edx, [ebp-5Ch]
		push	edx		; rmin
		mov	ecx, [ebp-90h]
		add	ecx, 1Ch
		push	ecx		; set
		call	Removerange
		mov	eax, dword_5E5D70
		xor	edx, edx
		mov	ecx, [ebp-90h]
		add	esp, 0Ch
		mov	dl, [eax+ebx]
		add	ebx, edx
		mov	[ecx+4], ebx
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_4679F9:				; CODE XREF: .text:0046798Aj
					; .text:004679A5j
		lea	eax, [ebp-5Ch]
		push	eax
		lea	edx, [ebp-28h]
		push	edx
		push	ebx
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_4665DC
		add	esp, 10h
		test	eax, eax
		jz	loc_467AA6
		mov	eax, [ebp-90h]
		test	byte ptr [eax],	2
		jnz	loc_4683E5
		mov	edx, [ebp-90h]
		mov	eax, [ebp-90h]
		mov	ecx, [edx+10h]
		add	ecx, [ebp-5Ch]
		mov	[eax+14h], ecx
		mov	edx, [ebp-90h]
		mov	eax, [ebp-90h]
		mov	ecx, [edx+14h]
		mov	[eax+10h], ecx
		mov	edx, [ebp-90h]
		mov	[edx+0Ch], ecx
		mov	eax, [ebp-90h]
		mov	edx, [ebp-28h]
		mov	[eax+18h], edx
		mov	eax, [ebp-28h]
		mov	ecx, [ebp-90h]
		mov	byte ptr [ecx+eax+9Ch],	0
		mov	edx, [ebp-90h]
		xor	eax, eax
		mov	dword ptr [edx], 1
		mov	dword ptr [ebp-18h], 1
		mov	ecx, dword_5E5D70
		mov	edx, [ebp-90h]
		mov	al, [ecx+ebx]
		add	ebx, eax
		mov	[edx+4], ebx
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467AA6:				; CODE XREF: .text:00467A13j
		lea	ecx, [ebp-2Ch]
		push	ecx
		lea	eax, [ebp-28h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		push	ebx
		call	loc_4666F8
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_467B2C
		mov	ecx, [ebp-90h]
		mov	eax, [ecx+18h]
		cmp	eax, [ebp-28h]
		jz	loc_4683E5
		mov	edx, [ebp-90h]
		mov	ecx, [ebp-28h]
		mov	byte ptr [edx+ecx+9Ch],	1
		mov	eax, [ebp-90h]
		mov	edx, [ebp-28h]
		mov	ecx, [ebp-5Ch]
		mov	[eax+edx*4+0A4h], ecx
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_467B18
		mov	eax, [ebp-90h]
		test	byte ptr [eax],	2
		jnz	loc_4683E5
		mov	edx, [ebp-90h]
		or	dword ptr [edx], 1

loc_467B18:				; CODE XREF: .text:00467AFEj
		add	ebx, [ebp-4]
		mov	ecx, [ebp-90h]
		mov	[ecx+4], ebx
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467B2C:				; CODE XREF: .text:00467AC2j
		cmp	ebx, [ebp-4Ch]
		jz	loc_4684B5
		lea	eax, [ebp-60h]
		push	eax
		push	ebx
		call	loc_466B4C
		add	esp, 8
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0FFFFFFFFh
		jz	loc_468118
		cmp	dword ptr [ebp-20h], 10h
		jnz	short loc_467B8A
		mov	edx, [ebp-90h]
		test	byte ptr [edx],	2
		jnz	loc_4683E5
		cmp	ebx, [ebp-60h]
		ja	loc_4683E5
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-60h]
		mov	[ecx+8], eax
		mov	edx, [ebp-90h]
		mov	[edx+4], eax
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467B8A:				; CODE XREF: .text:00467B53j
		mov	ecx, [ebp-90h]
		test	byte ptr [ecx],	1
		jnz	loc_4683E5
		mov	eax, [ebp-90h]
		and	dword ptr [eax], 0FFFFFFFDh
		mov	edx, [ebp-8]
		add	edx, 2
		cmp	edx, [ebp-0Ch]
		jge	short loc_467BB2
		cmp	esi, [ebp-1Ch]
		jl	short loc_467BC8

loc_467BB2:				; CODE XREF: .text:00467BABj
		cmp	dword ptr [ebp-10h], 1
		jnz	loc_4683E5
		mov	dword ptr [ebp-10h], 2
		jmp	loc_4683E5
; ---------------------------------------------------------------------------

loc_467BC8:				; CODE XREF: .text:00467BB0j
		mov	ecx, [ebp-90h]
		mov	eax, [ecx+14h]
		mov	[ebp-80h], eax
		cmp	dword ptr [ebp-20h], 4
		jz	short loc_467BE0
		cmp	dword ptr [ebp-20h], 5
		jnz	short loc_467BFE

loc_467BE0:				; CODE XREF: .text:00467BD8j
		mov	edx, [ebp-80h]
		push	edx		; value
		mov	ecx, [ebp-90h]
		add	ecx, 1Ch
		push	ecx		; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jz	loc_4683E5

loc_467BFE:				; CODE XREF: .text:00467BDEj
		mov	eax, [ebp-90h]
		mov	ecx, dword_5E5D70
		mov	edx, [eax+0Ch]
		xor	eax, eax
		mov	[ebp-7Ch], edx
		mov	al, [ecx+ebx]
		mov	ecx, [ebp-90h]
		mov	edx, [ebp-90h]
		push	esi
		lea	edi, [ecx+0C4h]
		add	ebx, eax
		mov	esi, edx
		mov	ecx, 31h
		rep movsd
		mov	eax, [ebp-20h]
		pop	esi
		cmp	eax, 0Fh	; switch 16 cases
		ja	loc_467735	; jumptable 00467C40 default case
		jmp	ds:off_467C47[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_467C47	dd offset loc_467735	; DATA XREF: .text:00467C40r
		dd offset loc_467735	; jump table for switch	statement
		dd offset loc_467C87
		dd offset loc_467CFE
		dd offset loc_467D75
		dd offset loc_467DC0
		dd offset loc_467E0E
		dd offset loc_467E86
		dd offset loc_467735
		dd offset loc_467735
		dd offset loc_467735
		dd offset loc_467735
		dd offset loc_467EFE
		dd offset loc_467F85
		dd offset loc_46800B
		dd offset loc_468092
; ---------------------------------------------------------------------------

loc_467C87:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	edx, [ebp-90h]	; jumptable 00467C40 case 2
		mov	[edx+4], ebx
		mov	ecx, [ebp-90h]
		mov	[ecx+8], ebx
		mov	eax, [ebp-80h]
		cmp	eax, [ebp-7Ch]
		jz	short loc_467CB9
		mov	edx, [ebp-80h]
		dec	edx
		push	edx
		mov	ecx, [ebp-7Ch]
		push	ecx
		mov	eax, [ebp-90h]
		push	eax
		call	loc_466C18
		add	esp, 0Ch

loc_467CB9:				; CODE XREF: .text:00467C9Fj
		mov	edx, [ebp-90h]
		mov	ecx, [ebp-60h]
		mov	[edx+0C8h], ecx
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+0CCh], edx
		mov	ecx, [ebp-7Ch]
		dec	ecx
		push	ecx
		mov	eax, [ebp-80h]
		push	eax
		mov	edx, [ebp-90h]
		add	edx, 0C4h
		push	edx
		call	loc_466C18
		add	esp, 0Ch
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467CFE:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	ecx, [ebp-90h]	; jumptable 00467C40 case 3
		mov	[ecx+4], ebx
		mov	eax, [ebp-90h]
		mov	[eax+8], ebx
		mov	edx, [ebp-7Ch]
		dec	edx
		push	edx
		mov	ecx, [ebp-80h]
		push	ecx
		mov	eax, [ebp-90h]
		push	eax
		call	loc_466C18
		add	esp, 0Ch
		mov	edx, [ebp-90h]
		mov	ecx, [ebp-60h]
		mov	[edx+0C8h], ecx
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+0CCh], edx
		mov	ecx, [ebp-80h]
		cmp	ecx, [ebp-7Ch]
		jz	short loc_467D6C
		mov	eax, [ebp-80h]
		dec	eax
		push	eax
		mov	edx, [ebp-7Ch]
		push	edx
		mov	ecx, [ebp-90h]
		add	ecx, 0C4h
		push	ecx
		call	loc_466C18
		add	esp, 0Ch

loc_467D6C:				; CODE XREF: .text:00467D4Cj
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467D75:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	eax, [ebp-94h]	; jumptable 00467C40 case 4
		mov	edx, [ebp-60h]
		mov	[eax+esi*8], edx
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-80h]
		mov	[ecx+esi*8+4], eax
		inc	esi
		mov	edx, [ebp-90h]
		mov	[edx+4], ebx
		mov	ecx, [ebp-90h]
		mov	[ecx+8], ebx
		mov	eax, [ebp-80h]
		push	eax
		mov	edx, [ebp-80h]
		push	edx
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_466C18
		add	esp, 0Ch
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467DC0:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	eax, [ebp-94h]	; jumptable 00467C40 case 5
		mov	[eax+esi*8], ebx
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-80h]
		mov	[edx+esi*8+4], ecx
		inc	esi
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+4], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-60h]
		mov	[ecx+8], eax
		mov	edx, [ebp-80h]
		push	edx
		mov	ecx, [ebp-80h]
		push	ecx
		mov	eax, [ebp-90h]
		push	eax
		call	loc_466C18
		add	esp, 0Ch
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467E0E:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	edx, [ebp-90h]	; jumptable 00467C40 case 6
		mov	[edx+4], ebx
		mov	ecx, [ebp-90h]
		mov	[ecx+8], ebx
		mov	eax, [ebp-80h]
		push	eax
		mov	edx, [ebp-7Ch]
		push	edx
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_466C18
		add	esp, 0Ch
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+0C8h], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-60h]
		mov	[ecx+0CCh], eax
		mov	edx, [ebp-7Ch]
		dec	edx
		cmp	edx, [ebp-80h]
		jz	short loc_467E7D
		mov	ecx, [ebp-7Ch]
		dec	ecx
		push	ecx
		mov	eax, [ebp-80h]
		inc	eax
		push	eax
		mov	edx, [ebp-90h]
		add	edx, 0C4h
		push	edx
		call	loc_466C18
		add	esp, 0Ch

loc_467E7D:				; CODE XREF: .text:00467E5Cj
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467E86:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	ecx, [ebp-90h]	; jumptable 00467C40 case 7
		mov	[ecx+4], ebx
		mov	eax, [ebp-90h]
		mov	[eax+8], ebx
		mov	edx, [ebp-7Ch]
		dec	edx
		cmp	edx, [ebp-80h]
		jz	short loc_467EBA
		mov	ecx, [ebp-7Ch]
		dec	ecx
		push	ecx
		mov	eax, [ebp-80h]
		inc	eax
		push	eax
		mov	edx, [ebp-90h]
		push	edx
		call	loc_466C18
		add	esp, 0Ch

loc_467EBA:				; CODE XREF: .text:00467E9Fj
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-60h]
		mov	[ecx+0C8h], eax
		mov	edx, [ebp-90h]
		mov	ecx, [ebp-60h]
		mov	[edx+0CCh], ecx
		mov	eax, [ebp-80h]
		push	eax
		mov	edx, [ebp-7Ch]
		push	edx
		mov	ecx, [ebp-90h]
		add	ecx, 0C4h
		push	ecx
		call	loc_466C18
		add	esp, 0Ch
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467EFE:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	eax, [ebp-90h]	; jumptable 00467C40 case 12
		mov	[eax+4], ebx
		mov	edx, [ebp-90h]
		mov	[edx+8], ebx
		mov	ecx, [ebp-7Ch]
		add	ecx, 80000000h
		cmp	ecx, [ebp-80h]
		jz	short loc_467F3C
		mov	eax, [ebp-80h]
		dec	eax
		push	eax
		mov	edx, [ebp-7Ch]
		add	edx, 80000000h
		push	edx
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_466C60
		add	esp, 0Ch

loc_467F3C:				; CODE XREF: .text:00467F1Cj
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+0C8h], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-60h]
		mov	[ecx+0CCh], eax
		mov	edx, [ebp-7Ch]
		add	edx, 7FFFFFFFh
		push	edx
		mov	ecx, [ebp-80h]
		push	ecx
		mov	eax, [ebp-90h]
		add	eax, 0C4h
		push	eax
		call	loc_466C60
		add	esp, 0Ch
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_467F85:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	edx, [ebp-90h]	; jumptable 00467C40 case 13
		mov	[edx+4], ebx
		mov	ecx, [ebp-90h]
		mov	[ecx+8], ebx
		mov	eax, [ebp-7Ch]
		add	eax, 7FFFFFFFh
		push	eax
		mov	edx, [ebp-80h]
		push	edx
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_466C60
		add	esp, 0Ch
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+0C8h], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-60h]
		mov	[ecx+0CCh], eax
		mov	edx, [ebp-7Ch]
		add	edx, 80000000h
		cmp	edx, [ebp-80h]
		jz	short loc_468002
		mov	ecx, [ebp-80h]
		dec	ecx
		push	ecx
		mov	eax, [ebp-7Ch]
		add	eax, 80000000h
		push	eax
		mov	edx, [ebp-90h]
		add	edx, 0C4h
		push	edx
		call	loc_466C60
		add	esp, 0Ch

loc_468002:				; CODE XREF: .text:00467FDDj
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_46800B:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	ecx, [ebp-90h]	; jumptable 00467C40 case 14
		mov	[ecx+4], ebx
		mov	eax, [ebp-90h]
		mov	[eax+8], ebx
		mov	edx, [ebp-80h]
		push	edx
		mov	ecx, [ebp-7Ch]
		add	ecx, 80000000h
		push	ecx
		mov	eax, [ebp-90h]
		push	eax
		call	loc_466C60
		add	esp, 0Ch
		mov	edx, [ebp-90h]
		mov	ecx, [ebp-60h]
		mov	[edx+0C8h], ecx
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+0CCh], edx
		mov	ecx, [ebp-7Ch]
		add	ecx, 7FFFFFFFh
		cmp	ecx, [ebp-80h]
		jz	short loc_468089
		mov	eax, [ebp-7Ch]
		add	eax, 7FFFFFFFh
		push	eax
		mov	edx, [ebp-80h]
		inc	edx
		push	edx
		mov	ecx, [ebp-90h]
		add	ecx, 0C4h
		push	ecx
		call	loc_466C60
		add	esp, 0Ch

loc_468089:				; CODE XREF: .text:00468064j
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_468092:				; CODE XREF: .text:00467C40j
					; DATA XREF: .text:off_467C47o
		mov	eax, [ebp-90h]	; jumptable 00467C40 case 15
		mov	[eax+4], ebx
		mov	edx, [ebp-90h]
		mov	[edx+8], ebx
		mov	ecx, [ebp-7Ch]
		add	ecx, 7FFFFFFFh
		cmp	ecx, [ebp-80h]
		jz	short loc_4680CF
		mov	eax, [ebp-7Ch]
		add	eax, 7FFFFFFFh
		push	eax
		mov	edx, [ebp-80h]
		inc	edx
		push	edx
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_466C60
		add	esp, 0Ch

loc_4680CF:				; CODE XREF: .text:004680B0j
		mov	eax, [ebp-90h]
		mov	edx, [ebp-60h]
		mov	[eax+0C8h], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-60h]
		mov	[ecx+0CCh], eax
		mov	edx, [ebp-80h]
		push	edx
		mov	ecx, [ebp-7Ch]
		add	ecx, 80000000h
		push	ecx
		mov	eax, [ebp-90h]
		add	eax, 0C4h
		push	eax
		call	loc_466C60
		add	esp, 0Ch
		add	dword ptr [ebp-8], 2
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_468118:				; CODE XREF: .text:00467B49j
		lea	edx, [ebp-78h]
		push	edx
		lea	ecx, [ebp-74h]
		push	ecx
		lea	eax, [ebp-60h]
		push	eax
		push	ebx
		mov	edx, [ebp-90h]
		push	edx
		call	loc_466CD4
		add	esp, 14h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	loc_468300
		mov	ecx, [ebp-90h]
		test	byte ptr [ecx],	2
		jnz	loc_4683E5
		mov	eax, [ebp-90h]
		add	eax, 1Ch
		push	eax		; set
		call	Getsetcount
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4683E5
		cmp	ebx, 4000h
		ja	loc_4683E5
		mov	dword ptr [ebp-18h], 1
		mov	dword ptr [ebp-30h], 1
		mov	eax, [ebp-90h]
		xor	edi, edi
		mov	edx, [eax+0Ch]
		mov	[ebp-58h], edx

loc_468192:				; CODE XREF: .text:004682FBj
		lea	eax, [ebp-68h]
		push	eax		; rmax
		lea	edx, [ebp-64h]
		push	edx		; rmin
		push	edi		; index
		mov	ecx, [ebp-90h]
		add	ecx, 1Ch
		push	ecx		; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	loc_467735	; jumptable 00467C40 default case
		mov	eax, [ebp-64h]
		mov	[ebp-48h], eax
		jmp	loc_4682E6
; ---------------------------------------------------------------------------

loc_4681C0:				; CODE XREF: .text:004682F4j
		cmp	dword ptr [ebp-74h], 0
		jz	short loc_468226
		mov	eax, [ebp-74h]
		add	eax, [ebp-48h]
		sub	eax, [ebp-58h]
		mov	edx, addr0
		cmp	eax, edx
		jb	loc_4682E3
		cmp	eax, addr1
		jnb	loc_4682E3
		sub	eax, edx
		mov	ecx, s
		movzx	eax, byte ptr [ecx+eax]
		and	eax, 1Fh
		cmp	eax, 5
		jnz	loc_4682E3
		mov	ecx, [ebp-74h]
		mov	eax, copy
		add	ecx, [ebp-48h]
		xor	ebx, ebx
		sub	ecx, [ebp-58h]
		sub	ecx, addr0
		mov	bl, [eax+ecx]
		mov	eax, [ebp-60h]
		shl	ebx, 2
		sub	eax, edx
		add	ebx, eax
		jmp	short loc_46823A
; ---------------------------------------------------------------------------

loc_468226:				; CODE XREF: .text:004681C4j
		mov	eax, [ebp-48h]
		mov	ebx, [ebp-60h]
		sub	eax, [ebp-58h]
		sub	ebx, addr0
		shl	eax, 2
		add	ebx, eax

loc_46823A:				; CODE XREF: .text:00468224j
		mov	eax, _size
		cmp	ebx, eax
		jnb	loc_4682E3
		lea	edx, [ebx+4]
		cmp	eax, edx
		jbe	loc_4682E3
		mov	ecx, s
		xor	eax, eax
		mov	al, [ecx+ebx]
		and	eax, 1Fh
		cmp	eax, 5
		jz	short loc_468270
		mov	edx, s
		cmp	eax, 4
		jnz	short loc_4682E3

loc_468270:				; CODE XREF: .text:00468263j
		mov	ecx, copy	; int
		mov	ebx, [ecx+ebx]
		mov	eax, addr0
		cmp	ebx, eax
		jb	short loc_4682E3
		cmp	ebx, addr1
		jnb	short loc_4682E3
		cmp	esi, [ebp-1Ch]
		jl	short loc_46829E
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_4682FA
		mov	dword ptr [ebp-10h], 2
		jmp	short loc_4682FA
; ---------------------------------------------------------------------------

loc_46829E:				; CODE XREF: .text:0046828Dj
		push	8003h		; type
		push	ebx		; dest
		add	eax, [ebp-78h]	; int
		push	eax		; from
		mov	edx, [ebp-98h]	; int
		push	edx		; pdat
		call	Addjump
		add	esp, 10h
		mov	eax, addr0
		mov	edx, eax
		add	edx, [ebp-4Ch]
		cmp	ebx, edx
		jnz	short loc_4682CA
		xor	ecx, ecx
		mov	[ebp-10h], ecx

loc_4682CA:				; CODE XREF: .text:004682C3j
		sub	ebx, eax
		mov	eax, [ebp-94h]
		mov	[eax+esi*8], ebx
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-48h]
		mov	[edx+esi*8+4], ecx
		inc	esi

loc_4682E3:				; CODE XREF: .text:004681D7j
					; .text:004681E3j ...
		inc	dword ptr [ebp-48h]

loc_4682E6:				; CODE XREF: .text:004681BBj
		mov	eax, [ebp-48h]
		cmp	eax, [ebp-64h]
		jb	short loc_4682FA
		mov	edx, [ebp-48h]
		cmp	edx, [ebp-68h]
		jbe	loc_4681C0

loc_4682FA:				; CODE XREF: .text:00468293j
					; .text:0046829Cj ...
		inc	edi
		jmp	loc_468192
; ---------------------------------------------------------------------------

loc_468300:				; CODE XREF: .text:0046813Bj
		lea	ecx, [ebp-28h]
		push	ecx
		mov	eax, [ebp-90h]
		mov	edx, [eax+18h]
		push	edx
		push	ebx
		call	loc_46722C
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_46837C
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-28h]
		lea	edx, [ebp-34h]
		mov	byte ptr [ecx+eax+9Ch],	0
		lea	ecx, [ebp-2Ch]
		push	edx
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		add	ebx, [ebp-4]
		push	ebx
		mov	edx, [ebp-90h]
		push	edx
		call	loc_465B5C
		add	esp, 14h
		test	eax, eax
		jz	short loc_468368
		mov	ecx, [ebp-2Ch]
		cmp	ecx, [ebp-28h]
		jnz	short loc_468368
		mov	eax, [ebp-90h]
		mov	edx, [ebp-28h]
		mov	[eax+18h], edx

loc_468368:				; CODE XREF: .text:00468352j
					; .text:0046835Aj
		mov	ecx, [ebp-90h]
		mov	eax, [ebp-4]
		add	[ecx+4], eax
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_46837C:				; CODE XREF: .text:0046831Ej
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+ebx*2]
		and	ecx, 70h
		mov	[ebp-20h], ecx
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4683A4
		cmp	dword ptr [ebp-20h], 10h
		jz	short loc_4683A4
		cmp	dword ptr [ebp-20h], 50h
		jz	short loc_4683A4
		cmp	dword ptr [ebp-20h], 60h
		jnz	short loc_4683E5

loc_4683A4:				; CODE XREF: .text:00468390j
					; .text:00468396j ...
		mov	eax, [ebp-90h]
		push	eax
		call	loc_4672D0
		pop	ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4683E5
		cmp	dword ptr [ebp-4], 2
		jnz	short loc_4683C9
		mov	edx, [ebp-90h]
		or	dword ptr [edx], 1

loc_4683C9:				; CODE XREF: .text:004683BEj
		mov	ecx, dword_5E5D70
		mov	edx, [ebp-90h]
		xor	eax, eax
		mov	al, [ecx+ebx]
		add	[edx+4], eax
		inc	dword ptr [ebp-8]
		jmp	loc_467735	; jumptable 00467C40 default case
; ---------------------------------------------------------------------------

loc_4683E5:				; CODE XREF: .text:004677ADj
					; .text:004677C5j ...
		mov	ecx, [ebp-90h]
		cmp	dword ptr [ecx+8], 0FFFFFFFFh
		jz	loc_467735	; jumptable 00467C40 default case
		mov	eax, [ebp-90h]
		add	eax, 1Ch
		push	eax		; set
		call	Getsetcount
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jbe	short loc_468475
		cmp	ebx, 40h
		ja	short loc_468475
		xor	edi, edi

loc_468412:				; CODE XREF: .text:00468473j
		lea	eax, [ebp-68h]
		push	eax		; rmax
		lea	edx, [ebp-64h]
		push	edx		; rmin
		push	edi		; index
		mov	ecx, [ebp-90h]
		add	ecx, 1Ch
		push	ecx		; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	short loc_4684AB
		mov	ebx, [ebp-64h]
		jmp	short loc_468468
; ---------------------------------------------------------------------------

loc_468436:				; CODE XREF: .text:00468470j
		cmp	esi, [ebp-1Ch]
		jl	short loc_46844A
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_468472
		mov	dword ptr [ebp-10h], 2
		jmp	short loc_468472
; ---------------------------------------------------------------------------

loc_46844A:				; CODE XREF: .text:00468439j
		mov	eax, [ebp-90h]
		mov	ecx, [ebp-94h]
		mov	edx, [eax+8]
		mov	[ecx+esi*8], edx
		mov	eax, [ebp-94h]
		mov	[eax+esi*8+4], ebx
		inc	esi
		inc	ebx

loc_468468:				; CODE XREF: .text:00468434j
		cmp	ebx, [ebp-64h]
		jb	short loc_468472
		cmp	ebx, [ebp-68h]
		jbe	short loc_468436

loc_468472:				; CODE XREF: .text:0046843Fj
					; .text:00468448j ...
		inc	edi
		jmp	short loc_468412
; ---------------------------------------------------------------------------

loc_468475:				; CODE XREF: .text:00468409j
					; .text:0046840Ej
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_468493
		mov	edx, [ebp-90h]
		mov	ecx, [edx+8]
		mov	[ebp-84h], ecx
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4684AB
; ---------------------------------------------------------------------------

loc_468493:				; CODE XREF: .text:00468479j
		mov	eax, [ebp-90h]
		mov	edx, [eax+8]
		cmp	edx, [ebp-84h]
		jz	short loc_4684AB
		mov	dword ptr [ebp-14h], 0FFFFFFFFh

loc_4684AB:				; CODE XREF: .text:0046842Fj
					; .text:00468491j ...
		cmp	dword ptr [ebp-8], 0
		jg	loc_46773F

loc_4684B5:				; CODE XREF: .text:00467739j
					; .text:0046779Dj ...
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4684C0
		cmp	esi, 2
		jge	short loc_4684C8

loc_4684C0:				; CODE XREF: .text:004684B9j
		inc	dword ptr [ebp-4Ch]
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_4684C8:				; CODE XREF: .text:004684BEj
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_4684F8
		cmp	esi, [ebp-1Ch]
		jl	short loc_4684DC
		mov	dword ptr [ebp-10h], 2
		jmp	short loc_4684F8
; ---------------------------------------------------------------------------

loc_4684DC:				; CODE XREF: .text:004684D1j
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-84h]
		mov	[ecx+esi*8], eax
		mov	edx, [ebp-94h]
		xor	ecx, ecx
		mov	[edx+esi*8+4], ecx
		inc	esi

loc_4684F8:				; CODE XREF: .text:004684CCj
					; .text:004684DAj
		push	offset loc_46736C ; fcmp
		push	8		; width
		push	esi		; nelem
		mov	eax, [ebp-94h]
		push	eax		; base
		call	_qsort
		add	esp, 10h
		mov	dword ptr [ebp-24h], 1
		mov	dword ptr [ebp-4], 1
		cmp	esi, [ebp-4]
		jle	short loc_468548

loc_468522:				; CODE XREF: .text:00468546j
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		mov	eax, [edx+ecx*8]
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		cmp	eax, [edx+ecx*8-8]
		jz	short loc_468540
		inc	dword ptr [ebp-24h]

loc_468540:				; CODE XREF: .text:0046853Bj
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	short loc_468522

loc_468548:				; CODE XREF: .text:00468520j
		cmp	dword ptr [ebp-24h], 2
		jge	short loc_468556
		inc	dword ptr [ebp-4Ch]
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_468556:				; CODE XREF: .text:0046854Cj
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_468573
		cmp	dword ptr [ebp-24h], 3
		jl	short loc_46856B
		cmp	dword_5BDD28, 0
		jnz	short loc_468573

loc_46856B:				; CODE XREF: .text:00468560j
		inc	dword ptr [ebp-4Ch]
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_468573:				; CODE XREF: .text:0046855Aj
					; .text:00468569j
		mov	eax, dword_5E5D74
		mov	edx, [ebp-4Ch]
		test	byte ptr [eax+edx*2], 1
		jz	short loc_4685EE
		push	200h		; nbuf
		lea	ecx, [ebp-898h]
		push	ecx		; buf
		mov	eax, addr0
		add	eax, [ebp-4Ch]
		push	eax		; dest
		call	Findlocaljumpsto
		mov	[ebp-28h], eax
		xor	edx, edx
		mov	[ebp-4], edx
		add	esp, 0Ch
		mov	eax, [ebp-4]
		lea	ebx, [ebp-898h]
		cmp	eax, [ebp-28h]
		jge	short loc_4685DE

loc_4685B4:				; CODE XREF: .text:004685DCj
		mov	edx, [ebx]
		sub	edx, addr0
		push	edx		; value
		lea	ecx, [ebp-8898h]
		push	ecx		; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jnz	short loc_4685DE
		inc	dword ptr [ebp-4]
		add	ebx, 4
		mov	eax, [ebp-4]
		cmp	eax, [ebp-28h]
		jl	short loc_4685B4

loc_4685DE:				; CODE XREF: .text:004685B2j
					; .text:004685CEj
		mov	edx, [ebp-4]
		cmp	edx, [ebp-28h]
		jge	short loc_4685EE
		inc	dword ptr [ebp-4Ch]
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_4685EE:				; CODE XREF: .text:0046857Fj
					; .text:004685E4j
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_468624
		xor	ecx, ecx
		mov	[ebp-4], ecx
		cmp	esi, [ebp-4]
		jle	short loc_468617

loc_4685FE:				; CODE XREF: .text:00468615j
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8]
		cmp	ecx, [ebp-4Ch]
		jb	short loc_468617
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	short loc_4685FE

loc_468617:				; CODE XREF: .text:004685FCj
					; .text:0046860Dj
		cmp	esi, [ebp-4]
		jle	short loc_468624
		inc	dword ptr [ebp-4Ch]
		jmp	loc_468C7B
; ---------------------------------------------------------------------------

loc_468624:				; CODE XREF: .text:004685F2j
					; .text:0046861Aj
		cmp	dword ptr [ebp-10h], 2
		jnz	short loc_468652
		cmp	dword_5BDD18, 0
		jz	short loc_468652
		push	offset aSwitchIsTooCom ; "  Switch is too complex, some	cases are"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	eax, addr0
		add	eax, [ebp-4Ch]
		push	eax		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_468652:				; CODE XREF: .text:00468628j
					; .text:00468631j
		xor	edx, edx
		mov	[ebp-4], edx

loc_468657:				; CODE XREF: .text:004686B5j
		lea	ecx, [ebp-68h]
		lea	eax, [ebp-64h]
		push	ecx		; rmax
		push	eax		; rmin
		mov	edx, [ebp-4]
		lea	ecx, [ebp-8898h]
		push	edx		; index
		push	ecx		; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	short loc_4686B7
		mov	ebx, [ebp-64h]
		cmp	ebx, [ebp-68h]
		ja	short loc_4686B2

loc_46867E:				; CODE XREF: .text:004686B0j
		cmp	ebx, [ebp-84h]
		jz	short loc_4686AC
		xor	edi, edi
		cmp	esi, edi
		jle	short loc_46869C

loc_46868C:				; CODE XREF: .text:0046869Aj
		mov	eax, [ebp-94h]
		cmp	ebx, [eax+edi*8]
		jz	short loc_46869C
		inc	edi
		cmp	esi, edi
		jg	short loc_46868C

loc_46869C:				; CODE XREF: .text:0046868Aj
					; .text:00468695j
		cmp	esi, edi
		jg	short loc_4686AC
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 800h

loc_4686AC:				; CODE XREF: .text:00468684j
					; .text:0046869Ej
		inc	ebx
		cmp	ebx, [ebp-68h]
		jbe	short loc_46867E

loc_4686B2:				; CODE XREF: .text:0046867Cj
		inc	dword ptr [ebp-4]
		jmp	short loc_468657
; ---------------------------------------------------------------------------

loc_4686B7:				; CODE XREF: .text:00468674j
		push	offset loc_4673FC ; fcmp
		push	8		; width
		push	esi		; nelem
		mov	ecx, [ebp-94h]
		push	ecx		; base
		call	_qsort
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-20h], eax
		add	esp, 10h
		mov	dword ptr [ebp-40h], 7FFFFFFFh
		mov	dword ptr [ebp-44h], 80000000h
		mov	dword ptr [ebp-6Ch], 0FFFFFFFFh
		mov	[ebp-70h], edx
		mov	ecx, [ebp-94h]
		cmp	dword ptr [ecx+esi*8-4], 80h
		jb	loc_468819
		mov	eax, [ebp-94h]
		cmp	dword ptr [eax+esi*8-4], 0FFFFh
		ja	loc_468819
		xor	edx, edx
		xor	eax, eax
		mov	[ebp-38h], edx
		xor	edx, edx
		mov	[ebp-88h], eax
		mov	[ebp-4], edx
		xor	edi, edi
		cmp	esi, [ebp-4]
		jle	loc_4687F9

loc_468732:				; CODE XREF: .text:004687F3j
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_468750
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-4]
		mov	edx, [ecx+eax*8]
		cmp	edx, [ebp-84h]
		jz	loc_4687ED

loc_468750:				; CODE XREF: .text:00468736j
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-4]
		cmp	dword ptr [ecx+eax*8+4], 500h
		jbe	short loc_468766
		inc	dword ptr [ebp-38h]

loc_468766:				; CODE XREF: .text:00468761j
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		cmp	dword ptr [edx+ecx*8+4], 400h
		jnb	short loc_4687ED
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		cmp	dword ptr [eax+edx*8+4], 0
		jz	short loc_4687F9
		push	0		; _name
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-4]
		mov	edx, [ecx+eax*8+4]
		push	edx		; value
		push	offset aMessage_5 ; "MESSAGE"
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4687F9
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-4]
		cmp	dword ptr [ecx+eax*8+4], 110h
		jnz	short loc_4687C6
		or	dword ptr [ebp-88h], 1
		jmp	short loc_4687EC
; ---------------------------------------------------------------------------

loc_4687C6:				; CODE XREF: .text:004687BBj
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		cmp	dword ptr [edx+ecx*8+4], 111h
		jnz	short loc_4687E2
		or	dword ptr [ebp-88h], 2
		jmp	short loc_4687EC
; ---------------------------------------------------------------------------

loc_4687E2:				; CODE XREF: .text:004687D7j
		or	dword ptr [ebp-88h], 80000000h

loc_4687EC:				; CODE XREF: .text:004687C4j
					; .text:004687E0j
		inc	edi

loc_4687ED:				; CODE XREF: .text:0046874Aj
					; .text:00468777j
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	loc_468732

loc_4687F9:				; CODE XREF: .text:0046872Cj
					; .text:00468787j ...
		cmp	esi, [ebp-4]
		jg	short loc_468809
		cmp	edi, 2
		jle	short loc_468809
		cmp	dword ptr [ebp-38h], 2
		jl	short loc_468812

loc_468809:				; CODE XREF: .text:004687FCj
					; .text:00468801j
		cmp	dword ptr [ebp-88h], 3
		jnz	short loc_468819

loc_468812:				; CODE XREF: .text:00468807j
		mov	dword ptr [ebp-20h], 20h

loc_468819:				; CODE XREF: .text:004686FBj
					; .text:0046870Fj ...
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_46888F
		mov	eax, [ebp-94h]
		cmp	dword ptr [eax+esi*8-4], 0FFh
		jnb	short loc_46888F
		xor	edx, edx
		mov	[ebp-4], edx
		cmp	esi, [ebp-4]
		jle	short loc_468883

loc_468839:				; CODE XREF: .text:00468881j
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_468853
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-4]
		mov	edx, [ecx+eax*8]
		cmp	edx, [ebp-84h]
		jz	short loc_46887B

loc_468853:				; CODE XREF: .text:0046883Dj
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-4]
		cmp	dword ptr [ecx+eax*8+4], 0
		jz	short loc_46887B
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		mov	al, [edx+ecx*8+4]
		push	eax		; a1
		call	IstextA
		pop	ecx
		test	al, 1
		jz	short loc_468883

loc_46887B:				; CODE XREF: .text:00468851j
					; .text:00468861j
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	short loc_468839

loc_468883:				; CODE XREF: .text:00468837j
					; .text:00468879j
		cmp	esi, [ebp-4]
		jg	short loc_46888F
		mov	dword ptr [ebp-20h], 10h

loc_46888F:				; CODE XREF: .text:0046881Dj
					; .text:0046882Dj ...
		cmp	dword ptr [ebp-20h], 0
		jnz	loc_468922
		mov	edx, [ebp-94h]
		cmp	dword ptr [edx+esi*8-4], 80000000h
		jb	short loc_468922
		mov	ecx, [ebp-94h]
		cmp	dword ptr [ecx+esi*8-4], 0C0FFFFFFh
		ja	short loc_468922
		xor	eax, eax
		mov	[ebp-4], eax
		cmp	esi, [ebp-4]
		jle	short loc_468916

loc_4688C3:				; CODE XREF: .text:00468914j
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_4688DD
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		mov	eax, [edx+ecx*8]
		cmp	eax, [ebp-84h]
		jz	short loc_46890E

loc_4688DD:				; CODE XREF: .text:004688C7j
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		cmp	dword ptr [edx+ecx*8+4], 0
		jz	short loc_46890E
		push	0		; _name
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		push	ecx		; value
		push	offset aException_3 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_468916

loc_46890E:				; CODE XREF: .text:004688DBj
					; .text:004688EBj
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	short loc_4688C3

loc_468916:				; CODE XREF: .text:004688C1j
					; .text:0046890Cj
		cmp	esi, [ebp-4]
		jg	short loc_468922
		mov	dword ptr [ebp-20h], 40h

loc_468922:				; CODE XREF: .text:00468893j
					; .text:004688A7j ...
		cmp	dword ptr [ebp-20h], 0
		jnz	loc_4689DF
		mov	eax, [ebp-94h]
		cmp	dword ptr [eax+4], 80000000h
		jnb	loc_4689DF
		mov	edx, [ebp-94h]
		cmp	dword ptr [edx+esi*8-4], 80000000h
		jb	loc_4689DF
		xor	ecx, ecx
		mov	[ebp-4], ecx
		cmp	esi, [ebp-4]
		jle	short loc_4689C3

loc_46895D:				; CODE XREF: .text:004689C1j
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_468977
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8]
		cmp	ecx, [ebp-84h]
		jz	short loc_4689BB

loc_468977:				; CODE XREF: .text:00468961j
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		cmp	ecx, [ebp-40h]
		jge	short loc_468999
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		mov	[ebp-40h], ecx

loc_468999:				; CODE XREF: .text:00468987j
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		cmp	ecx, [ebp-44h]
		jle	short loc_4689BB
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		mov	[ebp-44h], ecx

loc_4689BB:				; CODE XREF: .text:00468975j
					; .text:004689A9j
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	short loc_46895D

loc_4689C3:				; CODE XREF: .text:0046895Bj
		cmp	dword ptr [ebp-40h], 0
		jge	short loc_4689DF
		cmp	dword ptr [ebp-44h], 0
		jle	short loc_4689DF
		cmp	dword ptr [ebp-40h], 0FFFFC000h
		jl	short loc_4689DF
		mov	dword ptr [ebp-20h], 80h

loc_4689DF:				; CODE XREF: .text:00468926j
					; .text:00468939j ...
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4689E9
		or	dword ptr [ebp-20h], 1

loc_4689E9:				; CODE XREF: .text:004689E3j
		test	byte ptr [ebp-20h], 80h
		jz	short loc_468A06
		mov	eax, [ebp-40h]
		mov	[ebp-8CA8h], eax
		mov	edx, [ebp-44h]
		mov	[ebp-8CA4h], edx
		jmp	loc_468A88
; ---------------------------------------------------------------------------

loc_468A06:				; CODE XREF: .text:004689EDj
		xor	ecx, ecx
		mov	[ebp-4], ecx
		cmp	esi, [ebp-4]
		jle	short loc_468A76

loc_468A10:				; CODE XREF: .text:00468A74j
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_468A2A
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8]
		cmp	ecx, [ebp-84h]
		jz	short loc_468A6E

loc_468A2A:				; CODE XREF: .text:00468A14j
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		cmp	ecx, [ebp-6Ch]
		jnb	short loc_468A4C
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		mov	[ebp-6Ch], ecx

loc_468A4C:				; CODE XREF: .text:00468A3Aj
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		cmp	ecx, [ebp-70h]
		jbe	short loc_468A6E
		mov	eax, [ebp-94h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8+4]
		mov	[ebp-70h], ecx

loc_468A6E:				; CODE XREF: .text:00468A28j
					; .text:00468A5Cj
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	short loc_468A10

loc_468A76:				; CODE XREF: .text:00468A0Ej
		mov	eax, [ebp-6Ch]
		mov	[ebp-8CA8h], eax
		mov	edx, [ebp-70h]
		mov	[ebp-8CA4h], edx

loc_468A88:				; CODE XREF: .text:00468A01j
		mov	ecx, [ebp-20h]
		mov	[ebp-8CA0h], ecx
		cmp	dword ptr [ebp-10h], 2
		jnz	short loc_468A9E
		or	dword ptr [ebp-8CA0h], 2

loc_468A9E:				; CODE XREF: .text:00468A95j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_468AAB
		or	dword ptr [ebp-8CA0h], 4

loc_468AAB:				; CODE XREF: .text:00468AA2j
		xor	eax, eax
		mov	[ebp-8C9Ch], eax
		test	byte ptr [ebp-20h], 80h
		jz	short loc_468AD2
		push	offset loc_4673B4 ; fcmp
		push	8		; width
		push	esi		; nelem
		mov	edx, [ebp-94h]
		push	edx		; base
		call	_qsort
		add	esp, 10h
		jmp	short loc_468AE9
; ---------------------------------------------------------------------------

loc_468AD2:				; CODE XREF: .text:00468AB7j
		push	offset loc_46736C ; fcmp
		push	8		; width
		push	esi		; nelem
		mov	ecx, [ebp-94h]
		push	ecx		; base
		call	_qsort
		add	esp, 10h

loc_468AE9:				; CODE XREF: .text:00468AD0j
		mov	eax, [ebp-94h]
		xor	ecx, ecx
		mov	ebx, [eax]
		mov	eax, addr0
		add	eax, [ebp-4Ch]
		mov	[ebp-8EB4h], eax
		xor	eax, eax
		mov	edx, [ebp-20h]
		mov	[ebp-8EB0h], edx
		mov	[ebp-8EACh], ecx
		mov	[ebp-4], eax
		cmp	esi, [ebp-4]
		jle	loc_468BF6

loc_468B1E:				; CODE XREF: .text:00468BF0j
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		cmp	ebx, [edx+ecx*8]
		jz	short loc_468B9E
		mov	eax, [ebp-8EACh]
		lea	edx, [ebp-8EB4h]
		shl	eax, 2
		mov	ecx, addr0
		add	eax, 0Ch
		add	ecx, ebx
		push	eax		; datasize
		push	edx		; data
		push	41h		; type
		push	ecx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		cmp	dword ptr [ebp-8C9Ch], 100h
		jl	short loc_468B68
		or	dword ptr [ebp-8CA0h], 2
		jmp	short loc_468B81
; ---------------------------------------------------------------------------

loc_468B68:				; CODE XREF: .text:00468B5Dj
		add	ebx, addr0
		mov	eax, [ebp-8C9Ch]
		inc	dword ptr [ebp-8C9Ch]
		mov	[ebp+eax*4-8C98h], ebx

loc_468B81:				; CODE XREF: .text:00468B66j
		mov	edx, [ebp-94h]
		mov	ecx, [ebp-4]
		mov	ebx, [edx+ecx*8]
		mov	eax, [ebp-20h]
		mov	[ebp-8EB0h], eax
		xor	edx, edx
		mov	[ebp-8EACh], edx

loc_468B9E:				; CODE XREF: .text:00468B2Aj
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_468BB5
		cmp	ebx, [ebp-84h]
		jnz	short loc_468BB5
		or	dword ptr [ebp-8EB0h], 4
		jmp	short loc_468BEA
; ---------------------------------------------------------------------------

loc_468BB5:				; CODE XREF: .text:00468BA2j
					; .text:00468BAAj
		cmp	dword ptr [ebp-8EACh], 80h
		jl	short loc_468BCA
		or	dword ptr [ebp-8EB0h], 2
		jmp	short loc_468BEA
; ---------------------------------------------------------------------------

loc_468BCA:				; CODE XREF: .text:00468BBFj
		mov	ecx, [ebp-94h]
		mov	eax, [ebp-4]
		mov	edx, [ecx+eax*8+4]
		mov	ecx, [ebp-8EACh]
		inc	dword ptr [ebp-8EACh]
		mov	[ebp+ecx*4-8EA8h], edx

loc_468BEA:				; CODE XREF: .text:00468BB3j
					; .text:00468BC8j
		inc	dword ptr [ebp-4]
		cmp	esi, [ebp-4]
		jg	loc_468B1E

loc_468BF6:				; CODE XREF: .text:00468B18j
		mov	eax, [ebp-8EACh]
		lea	edx, [ebp-8EB4h]
		shl	eax, 2
		mov	ecx, addr0
		add	eax, 0Ch
		add	ecx, ebx
		push	eax		; datasize
		push	edx		; data
		push	41h		; type
		push	ecx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		cmp	dword ptr [ebp-8C9Ch], 100h
		jl	short loc_468C32
		or	dword ptr [ebp-8CA0h], 2
		jmp	short loc_468C4B
; ---------------------------------------------------------------------------

loc_468C32:				; CODE XREF: .text:00468C27j
		add	ebx, addr0
		mov	eax, [ebp-8C9Ch]
		inc	dword ptr [ebp-8C9Ch]
		mov	[ebp+eax*4-8C98h], ebx

loc_468C4B:				; CODE XREF: .text:00468C30j
		mov	edx, [ebp-8C9Ch]
		lea	ecx, [ebp-8CA8h]
		shl	edx, 2
		mov	eax, addr0
		add	edx, 10h
		push	edx		; datasize
		push	ecx		; data
		push	40h		; type
		add	eax, [ebp-4Ch]
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		inc	dword_5E5D9C
		inc	dword ptr [ebp-4Ch]

loc_468C7B:				; CODE XREF: .text:004675DAj
					; .text:004675F1j ...
		mov	edx, [ebp-4Ch]
		add	edx, 6
		cmp	edx, [ebp-54h]
		jb	loc_4675DF

loc_468C8A:				; CODE XREF: .text:00467673j
		mov	ecx, [ebp-8Ch]
		push	ecx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-3Ch]

loc_468C9A:				; CODE XREF: .text:0046747Aj
					; .text:0046752Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_468CA4(int, int, int nDenominator, int)
loc_468CA4:				; CODE XREF: .text:0046F38Ep
					; .text:0046F3C5p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 7

loc_468CAD:				; CODE XREF: .text:00468CB5j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_468CAD
		mov	eax, [ebp-4]
		add	esp, 0FFFFF148h
		push	ebx
		push	esi
		push	edi
		mov	eax, addr0
		cmp	eax, [ebp+0Ch]
		ja	short loc_468CD8
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_468CDF

loc_468CD8:				; CODE XREF: .text:00468CCBj
		xor	eax, eax
		jmp	loc_4692E7
; ---------------------------------------------------------------------------

loc_468CDF:				; CODE XREF: .text:00468CD6j
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		mov	edx, addr1
		cmp	ecx, edx
		jbe	short loc_468CF5
		sub	edx, [ebp+0Ch]
		mov	[ebp+10h], edx

loc_468CF5:				; CODE XREF: .text:00468CEDj
		mov	edx, [ebp+0Ch]
		lea	ecx, [ebp-82Ch]
		sub	edx, eax
		add	edx, [ebp+10h]
		xor	eax, eax
		mov	[ebp-1Ch], edx
		mov	[ebp-18h], eax
		push	100h		; nmax
		push	ecx		; set
		call	Initset
		add	esp, 8
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		mov	[ebp-14h], eax
		mov	edx, [ebp-14h]
		cmp	edx, [ebp-1Ch]
		jnb	loc_4692E5

loc_468D31:				; CODE XREF: .text:004692DFj
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-14h]
		test	byte ptr [ecx+eax*2], 82h
		jz	loc_4692D6
		push	0		; subaddr
		mov	edx, addr0
		add	edx, [ebp-14h]
		push	edx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_468D73
		mov	ecx, [ebp-28h]
		test	byte ptr [ecx+0Ah], 1
		jnz	loc_4692D6

loc_468D73:				; CODE XREF: .text:00468D64j
		mov	eax, [ebp-18h]
		add	eax, 2000h
		cmp	eax, [ebp-14h]
		jnb	short loc_468DB6
		mov	edx, [ebp+10h]
		push	edx		; nDenominator
		push	3E8h		; nNumerator
		mov	ecx, [ebp+0Ch]
		sub	ecx, addr0
		mov	eax, [ebp-14h]
		sub	eax, ecx
		push	eax		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_468DB0
		or	eax, 0FFFFFFFFh
		jmp	loc_4692E7
; ---------------------------------------------------------------------------

loc_468DB0:				; CODE XREF: .text:00468DA6j
		mov	edx, [ebp-14h]
		mov	[ebp-18h], edx

loc_468DB6:				; CODE XREF: .text:00468D7Ej
		push	40h		; n
		push	0		; c
		lea	ecx, [ebp-86Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		push	0		; follow
		push	0FFFFFFFFh	; nexp
		push	0		; _name
		push	0		; rettype
		push	0		; adec
		lea	eax, [ebp-86Ch]
		push	eax		; pd
		mov	edx, addr0
		add	edx, [ebp-14h]
		push	edx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		test	eax, eax
		jl	short loc_468E5C
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_468E1E
		mov	ecx, addr0
		lea	eax, [ebp-86Ch]
		add	ecx, [ebp-14h]
		mov	[ebp-86Ch], ecx
		push	eax		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8
		jmp	loc_4692D6
; ---------------------------------------------------------------------------

loc_468E1E:				; CODE XREF: .text:00468DF4j
		mov	edx, [ebp-28h]
		mov	eax, [ebp-28h]
		mov	ecx, [edx+8]
		and	ecx, 0F81FFFFFh
		or	ecx, [ebp-864h]
		mov	[eax+8], ecx
		test	byte ptr [ebp-862h], 1
		jz	short loc_468E4B
		mov	edx, [ebp-28h]
		mov	ecx, [ebp-860h]
		mov	[edx+0Ch], ecx

loc_468E4B:				; CODE XREF: .text:00468E3Dj
		mov	eax, [ebp-28h]
		mov	dl, [ebp-834h]
		or	[eax+38h], dl
		jmp	loc_4692D6
; ---------------------------------------------------------------------------

loc_468E5C:				; CODE XREF: .text:00468DEEj
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-14h]
		test	byte ptr [ecx+eax*2], 2
		jz	loc_4692D6
		mov	edx, addr0
		xor	ecx, ecx
		add	edx, [ebp-14h]
		xor	eax, eax
		mov	[ebp-65ECh], edx
		lea	edi, [ebp-65DEh]
		mov	dword ptr [ebp-65E8h], 1
		mov	[ebp-65E4h], ecx

loc_468E98:				; CODE XREF: .text:00468EABj
		mov	edx, eax
		xor	ecx, ecx
		or	edx, 28h
		inc	eax
		mov	[edi], edx
		mov	[edi+20h], ecx
		add	edi, 4
		cmp	eax, 8
		jl	short loc_468E98
		xor	eax, eax
		mov	[ebp-6592h], eax
		xor	eax, eax
		mov	[ebp-64FEh], eax
		xor	edx, edx
		mov	[ebp-649Ah], edx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		lea	eax, [ebp-82Ch]
		push	eax		; set
		call	Emptyrange
		pop	ecx
		xor	edx, edx
		mov	[ebp-8], edx
		xor	ecx, ecx
		mov	[ebp-24h], ecx
		xor	eax, eax
		mov	[ebp-0Ch], eax
		xor	edx, edx
		mov	[ebp-10h], edx

loc_468EEB:				; CODE XREF: .text:00468F3Ej
					; .text:00468F5Dj ...
		mov	ecx, [ebp-4]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		shl	ecx, 4
		sub	ecx, eax
		shl	ecx, 2
		sub	ecx, eax
		cmp	dword ptr [ebp-4], 0
		lea	edi, [ebp+ecx*2-65ECh]
		jl	loc_4691CE

loc_468F0E:				; CODE XREF: .text:004691C8j
		mov	esi, [ebp-4]
		mov	eax, esi
		lea	esi, [eax+esi*2]
		shl	esi, 4
		sub	esi, eax
		shl	esi, 2
		sub	esi, eax
		add	esi, esi
		lea	edx, [ebp-65ECh]
		add	esi, edx
		mov	eax, [esi]
		cmp	eax, [ebp+0Ch]
		jb	short loc_468F3B
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	eax, edx
		jb	short loc_468F40

loc_468F3B:				; CODE XREF: .text:00468F2Fj
		dec	dword ptr [ebp-4]
		jmp	short loc_468EEB
; ---------------------------------------------------------------------------

loc_468F40:				; CODE XREF: .text:00468F39j
		mov	ebx, eax
		sub	ebx, addr0
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+ebx]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_468F5F
		dec	dword ptr [ebp-4]
		jmp	short loc_468EEB
; ---------------------------------------------------------------------------

loc_468F5F:				; CODE XREF: .text:00468F58j
		push	ebx		; value
		lea	ecx, [ebp-82Ch]
		push	ecx		; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jz	short loc_468F7B
		dec	dword ptr [ebp-4]
		jmp	loc_468EEB
; ---------------------------------------------------------------------------

loc_468F7B:				; CODE XREF: .text:00468F71j
		push	esi		; predict
		push	0		; reg
		lea	eax, [ebp-7EBCh]
		push	0		; mode
		push	eax		; da
		mov	edx, addr0
		add	edx, ebx
		push	0		; dec
		push	edx		; ip
		mov	eax, copy
		mov	ecx, [ebp-1Ch]
		sub	ecx, ebx
		add	eax, ebx
		push	ecx		; cmdsize
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_468FBA
		cmp	dword ptr [ebp-7E90h], 0
		jz	short loc_468FC2

loc_468FBA:				; CODE XREF: .text:00468FAFj
		dec	dword ptr [ebp-4]
		jmp	loc_468EEB
; ---------------------------------------------------------------------------

loc_468FC2:				; CODE XREF: .text:00468FB8j
		cmp	dword ptr [esi+16Eh], 3Ch
		jnz	short loc_468FDB
		cmp	dword ptr [esi+172h], 0
		jnz	short loc_468FDB
		mov	dword ptr [ebp-0Ch], 1

loc_468FDB:				; CODE XREF: .text:00468FC9j
					; .text:00468FD2j
		test	byte ptr [esi+0Ah], 80h
		jz	short loc_468FE8
		mov	dword ptr [ebp-0Ch], 1

loc_468FE8:				; CODE XREF: .text:00468FDFj
		mov	edx, [ebp-20h]
		lea	ecx, [ebp-82Ch]
		add	edx, ebx
		dec	edx
		push	edx		; rmax
		push	ebx		; rmin
		push	ecx		; set
		call	Addrange
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4691CE
		mov	eax, dword_5E5D74
		movzx	edx, word ptr [eax+ebx*2]
		and	edx, 70h
		cmp	edx, 40h
		jg	short loc_469037
		jz	loc_4690F9
		sub	edx, 1
		jb	short loc_46904F
		sub	edx, 0Fh
		jz	short loc_46904F
		sub	edx, 10h
		jz	short loc_46905F
		sub	edx, 10h
		jz	short loc_4690A5
		jmp	loc_4691C4
; ---------------------------------------------------------------------------

loc_469037:				; CODE XREF: .text:00469016j
		sub	edx, 50h
		jz	short loc_46904F
		sub	edx, 10h
		jz	short loc_46904F
		sub	edx, 10h
		jz	loc_469167
		jmp	loc_4691C4
; ---------------------------------------------------------------------------

loc_46904F:				; CODE XREF: .text:00469021j
					; .text:00469026j ...
		add	ebx, addr0
		add	ebx, [ebp-20h]
		mov	[esi], ebx
		jmp	loc_4691C4
; ---------------------------------------------------------------------------

loc_46905F:				; CODE XREF: .text:0046902Bj
		mov	ecx, addr0
		mov	edx, copy
		add	ecx, ebx
		push	ecx		; int
		mov	eax, [ebp-1Ch]
		sub	eax, ebx
		add	edx, ebx
		push	eax		; int
		push	edx		; src
		call	loc_461804
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_469095
		push	eax		; _addr
		call	Isnoreturn
		pop	ecx
		test	eax, eax
		jz	short loc_469095
		mov	dword ptr [ebp-10h], 1

loc_469095:				; CODE XREF: .text:00469081j
					; .text:0046908Cj
		add	ebx, addr0
		add	ebx, [ebp-20h]
		mov	[esi], ebx
		jmp	loc_4691C4
; ---------------------------------------------------------------------------

loc_4690A5:				; CODE XREF: .text:00469030j
		cmp	dword ptr [esi], 0
		jnz	loc_4691C4
		mov	ecx, addr0
		add	ecx, ebx
		push	ecx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_4690DE
		mov	eax, [ebp-2Ch]
		mov	edx, [eax]
		add	ebx, addr0
		cmp	edx, ebx
		jnz	short loc_4690DE
		mov	ecx, [ebp-2Ch]
		cmp	dword ptr [ecx+4], 0
		jnz	short loc_4690EC

loc_4690DE:				; CODE XREF: .text:004690C4j
					; .text:004690D3j
		dec	dword ptr [ebp-4]
		add	edi, 0FFFFFE8Ah
		jmp	loc_4691C4
; ---------------------------------------------------------------------------

loc_4690EC:				; CODE XREF: .text:004690DCj
		mov	eax, [ebp-2Ch]
		mov	edx, [eax+4]
		mov	[esi], edx
		jmp	loc_4691C4
; ---------------------------------------------------------------------------

loc_4690F9:				; CODE XREF: .text:00469018j
		mov	ecx, addr0
		add	ecx, ebx
		add	ecx, [ebp-20h]
		mov	[esi], ecx
		mov	eax, addr0
		add	eax, ebx
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_4691C4
		mov	edx, [ebp-2Ch]
		mov	ecx, [edx]
		add	ebx, addr0
		cmp	ecx, ebx
		jnz	loc_4691C4
		mov	eax, [ebp-2Ch]
		cmp	dword ptr [eax+4], 0
		jz	loc_4691C4
		cmp	dword ptr [ebp-4], 3Fh
		jge	short loc_4691C4
		inc	dword ptr [ebp-4]
		add	edi, 176h
		push	esi
		push	edi
		mov	ecx, 5Dh
		rep movsd
		movsw
		mov	eax, [ebp-2Ch]
		pop	edi
		pop	esi
		mov	edx, [eax+4]
		mov	[edi], edx
		jmp	short loc_4691C4
; ---------------------------------------------------------------------------

loc_469167:				; CODE XREF: .text:00469044j
		mov	ecx, [ebp-7EA8h]
		and	ecx, 1Fh
		cmp	ecx, 0Fh
		jnz	short loc_4691C4
		cmp	dword ptr [esi], 0
		jnz	short loc_4691C4
		cmp	dword ptr [ebp-7E74h], 0
		jnz	short loc_469195
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_469195
		cmp	dword ptr [esi+1Eh], 2Ch
		jnz	short loc_4691C4
		cmp	dword ptr [esi+3Eh], 4
		jnz	short loc_4691C4

loc_469195:				; CODE XREF: .text:00469181j
					; .text:00469187j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_4691AF
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-7E74h]
		jz	short loc_4691AF
		mov	dword ptr [ebp-24h], 0FFFFFFFFh
		jmp	short loc_4691B8
; ---------------------------------------------------------------------------

loc_4691AF:				; CODE XREF: .text:00469199j
					; .text:004691A4j
		mov	edx, [ebp-7E74h]
		mov	[ebp-24h], edx

loc_4691B8:				; CODE XREF: .text:004691ADj
		inc	dword ptr [ebp-8]
		dec	dword ptr [ebp-4]
		add	edi, 0FFFFFE8Ah

loc_4691C4:				; CODE XREF: .text:00469032j
					; .text:0046904Aj ...
		cmp	dword ptr [ebp-4], 0
		jge	loc_468F0E

loc_4691CE:				; CODE XREF: .text:00468F08j
					; .text:00469001j
		cmp	dword ptr [ebp-8], 0
		jle	loc_469277
		cmp	dword ptr [ebp-24h], 0FFFFFFFFh
		jz	loc_469277
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_46922A
		push	40h		; n
		push	0		; c
		lea	ecx, [ebp-86Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, addr0
		add	eax, [ebp-14h]
		lea	edx, [ebp-86Ch]
		mov	[ebp-86Ch], eax
		mov	dword ptr [ebp-868h], 1
		push	edx		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8
		mov	[ebp-28h], eax

loc_46922A:				; CODE XREF: .text:004691E6j
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_469277
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_469242
		mov	ecx, [ebp-28h]
		or	dword ptr [ecx+8], 20000h
		jmp	short loc_46924C
; ---------------------------------------------------------------------------

loc_469242:				; CODE XREF: .text:00469234j
		mov	eax, [ebp-28h]
		or	dword ptr [eax+8], 10000h

loc_46924C:				; CODE XREF: .text:00469240j
		mov	edx, [ebp-28h]
		mov	ecx, [ebp-24h]
		mov	[edx+0Ch], ecx
		cmp	dword ptr [ebp-24h], 0
		jbe	short loc_469277
		test	byte ptr [ebp-24h], 3
		jnz	short loc_469277
		mov	eax, [ebp-28h]
		or	dword ptr [eax+8], 200000h
		mov	edx, [ebp-24h]
		mov	ecx, [ebp-28h]
		shr	edx, 2
		mov	[ecx+28h], edx

loc_469277:				; CODE XREF: .text:004691D2j
					; .text:004691DCj ...
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4692D6
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4692C6
		push	40h		; n
		push	0		; c
		lea	eax, [ebp-86Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, addr0
		add	edx, [ebp-14h]
		lea	ecx, [ebp-86Ch]
		mov	[ebp-86Ch], edx
		mov	dword ptr [ebp-868h], 1
		push	ecx		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8
		mov	[ebp-28h], eax

loc_4692C6:				; CODE XREF: .text:00469281j
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4692D6
		mov	eax, [ebp-28h]
		or	dword ptr [eax+8], 40000h

loc_4692D6:				; CODE XREF: .text:00468D3Ej
					; .text:00468D6Dj ...
		inc	dword ptr [ebp-14h]
		mov	edx, [ebp-14h]
		cmp	edx, [ebp-1Ch]
		jb	loc_468D31

loc_4692E5:				; CODE XREF: .text:00468D2Bj
		xor	eax, eax

loc_4692E7:				; CODE XREF: .text:00468CDAj
					; .text:00468DABj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4692F0:				; CODE XREF: .text:0046B68Dp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF184h
		push	ebx
		push	esi
		push	edi
		cmp	dword_5BDD38, 0
		jz	loc_4698EC
		mov	eax, addr0
		cmp	eax, [ebp+0Ch]
		ja	loc_4698EC
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jnb	loc_4698EC
		mov	ebx, [ebp+0Ch]
		sub	ebx, addr0
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ebx*2+1],	80h
		jnz	loc_4698EC
		push	0		; subaddr
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		mov	ecx, [ebp+10h]
		push	ecx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	loc_4698EC
		mov	eax, [ebp-28h]
		lea	edi, [ebp-5ACh]
		mov	esi, eax
		mov	ecx, 5Dh
		rep movsd
		movsw
		lea	eax, [ebp-5ACh]
		lea	edx, [ebp-1E7Ch]
		push	eax		; predict
		push	0		; reg
		push	100h		; mode
		push	edx		; da
		push	0		; dec
		mov	eax, addr1
		mov	ecx, [ebp+0Ch]
		mov	edx, copy
		push	ecx		; ip
		sub	eax, [ebp+0Ch]
		add	edx, ebx
		push	eax		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jz	loc_4698EC
		cmp	dword ptr [ebp-1E50h], 0
		jnz	loc_4698EC
		mov	ecx, [ebp-1E68h]
		and	ecx, 1Fh
		cmp	ecx, 0Ch
		jnz	loc_4698EC
		cmp	dword ptr [ebp-1E3Ch], 0
		jz	short loc_4693EE
		mov	eax, [ebp-1E3Ch]
		mov	[ebp-1Ch], eax
		jmp	short loc_46940C
; ---------------------------------------------------------------------------

loc_4693EE:				; CODE XREF: .text:004693E1j
		mov	edx, [ebp-55Eh]
		and	edx, 0FFFFFF7Fh
		cmp	edx, 20h
		jnz	loc_4698EC
		mov	ecx, [ebp-55Ah]
		mov	[ebp-1Ch], ecx

loc_46940C:				; CODE XREF: .text:004693ECj
		push	0		; subaddr
		mov	eax, [ebp-1Ch]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jz	loc_4698EC
		test	byte ptr [edi+0Ah], 1
		jz	loc_4698EC
		cmp	dword ptr [edi+0Ch], 0
		jnz	loc_4698EC
		test	dword ptr [edi+8], 7E00000h
		jnz	loc_4698EC
		push	0		; subaddr
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-18h]
		push	eax		; _addr
		mov	edx, [ebp+10h]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4698EC
		mov	ecx, [eax+1Eh]
		and	ecx, 0FFh
		cmp	ecx, 2Ch
		jnz	loc_4698EC
		mov	edx, [eax+1Eh]
		mov	[ebp-20h], edx
		cmp	dword ptr [ebp-20h], 0
		jz	loc_4698EC
		mov	esi, [eax+3Eh]
		mov	[ebp-10h], esi
		add	ebx, [ebp-18h]
		xor	eax, eax
		mov	[ebp-14h], eax

loc_469497:				; CODE XREF: .text:00469531j
					; .text:0046956Aj
		cmp	ebx, _size
		jnb	loc_4698EC
		push	0		; subaddr
		mov	ecx, addr0
		add	ecx, ebx
		push	ecx		; _addr
		mov	eax, [ebp+10h]
		push	eax		; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4698EC
		mov	edx, [eax+1Eh]
		cmp	edx, [ebp-20h]
		jnz	loc_4698EC
		mov	edx, [eax+3Eh]
		cmp	esi, edx
		jg	loc_46956F
		mov	esi, edx
		mov	edx, dword_5E5D74
		movzx	edx, word ptr [edx+ebx*2]
		and	edx, 70h
		cmp	edx, 60h
		jnz	short loc_4694FD
		mov	ecx, copy
		cmp	byte ptr [ecx+ebx], 59h
		jnz	loc_4698EC

loc_4694FD:				; CODE XREF: .text:004694EBj
		cmp	edx, 30h
		jnz	short loc_469536
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_46956F
		mov	edx, [eax+16Eh]
		and	edx, 7Fh
		cmp	edx, 20h
		jnz	short loc_46956F
		mov	edx, [eax+172h]
		mov	ecx, addr0
		cmp	edx, ecx
		jb	short loc_46956F
		mov	ebx, edx
		mov	dword ptr [ebp-14h], 1
		sub	ebx, ecx
		jmp	loc_469497
; ---------------------------------------------------------------------------

loc_469536:				; CODE XREF: .text:00469500j
		cmp	edx, 20h
		jz	short loc_46956F
		cmp	edx, 40h
		jz	short loc_46956F
		cmp	edx, 50h
		jz	short loc_46956F
		cmp	edx, 70h
		jz	loc_4698EC
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ebx*2], 3
		jnz	loc_4698EC
		mov	edx, dword_5E5D70
		xor	ecx, ecx
		mov	cl, [edx+ebx]
		add	ebx, ecx
		jmp	loc_469497
; ---------------------------------------------------------------------------

loc_46956F:				; CODE XREF: .text:004694D3j
					; .text:00469506j ...
		sub	esi, [ebp-10h]
		shr	esi, 2
		mov	[ebp-0Ch], esi
		test	byte ptr [edi+0Bh], 10h
		jnz	short loc_46958D
		mov	eax, [ebp-0Ch]
		mov	[edi+2Ch], eax
		or	dword ptr [edi+8], 10000000h
		jmp	short loc_4695CD
; ---------------------------------------------------------------------------

loc_46958D:				; CODE XREF: .text:0046957Cj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4695CD
		cmp	dword ptr [edi+2Ch], 0
		jnz	short loc_4695A1
		mov	edx, [ebp-0Ch]
		mov	[edi+2Ch], edx
		jmp	short loc_4695CD
; ---------------------------------------------------------------------------

loc_4695A1:				; CODE XREF: .text:00469597j
		mov	ecx, [edi+2Ch]
		cmp	ecx, [ebp-0Ch]
		jz	short loc_4695CD
		or	dword ptr [edi+8], 20000000h
		lea	eax, [edi+2Ch]
		mov	[ebp-2Ch], eax
		mov	edx, [ebp-2Ch]
		mov	ecx, [edx]
		cmp	ecx, [ebp-0Ch]
		jge	short loc_4695C5
		mov	eax, [ebp-2Ch]
		jmp	short loc_4695C8
; ---------------------------------------------------------------------------

loc_4695C5:				; CODE XREF: .text:004695BEj
		lea	eax, [ebp-0Ch]

loc_4695C8:				; CODE XREF: .text:004695C3j
		mov	edx, [eax]
		mov	[edi+2Ch], edx

loc_4695CD:				; CODE XREF: .text:0046958Bj
					; .text:00469591j ...
		mov	ecx, [ebp-28h]
		mov	eax, [ecx+3Eh]
		mov	[ebp-24h], eax
		mov	ebx, [ebp+0Ch]
		sub	ebx, addr0
		dec	ebx
		jmp	loc_4696E7
; ---------------------------------------------------------------------------

loc_4695E5:				; CODE XREF: .text:004696F1j
		mov	eax, s
		movzx	eax, byte ptr [eax+ebx]
		and	eax, 1Fh
		cmp	eax, 1
		jz	loc_4696E6
		mov	edx, s
		cmp	eax, 1Ch
		jnz	loc_4696F7
		mov	ecx, dword_5E5D74
		movzx	edx, word ptr [ecx+ebx*2]
		and	edx, 70h
		cmp	edx, 30h
		jz	loc_4696F7
		cmp	edx, 60h
		jz	loc_4696F7
		cmp	edx, 70h
		jz	loc_4696F7
		cmp	edx, 20h
		jnz	short loc_4696A7
		mov	eax, [ebp-28h]
		mov	ecx, [eax+3Eh]
		cmp	ecx, [ebp-24h]
		ja	loc_4696F7
		mov	eax, [ebp-28h]
		mov	edx, [ebp-24h]
		sub	edx, [eax+3Eh]
		mov	[ebp-4], edx
		test	byte ptr [ebp-4], 3
		jnz	loc_4696F7
		mov	ecx, [ebp-4]
		shr	ecx, 2
		mov	[ebp-4], ecx
		test	byte ptr [edi+0Bh], 40h
		jnz	short loc_469679
		mov	eax, [ebp-4]
		mov	[edi+30h], eax
		or	dword ptr [edi+8], 40000000h
		jmp	short loc_4696F7
; ---------------------------------------------------------------------------

loc_469679:				; CODE XREF: .text:00469668j
		mov	edx, [edi+30h]
		cmp	edx, [ebp-4]
		jz	short loc_4696F7
		lea	ecx, [edi+30h]
		mov	[ebp-30h], ecx
		mov	eax, [ebp-30h]
		mov	edx, [eax]
		cmp	edx, [ebp-4]
		jle	short loc_469696
		mov	ecx, [ebp-30h]
		jmp	short loc_469699
; ---------------------------------------------------------------------------

loc_469696:				; CODE XREF: .text:0046968Fj
		lea	ecx, [ebp-4]

loc_469699:				; CODE XREF: .text:00469694j
		mov	eax, [ecx]
		mov	[edi+30h], eax
		or	dword ptr [edi+8], 80000000h
		jmp	short loc_4696F7
; ---------------------------------------------------------------------------

loc_4696A7:				; CODE XREF: .text:00469634j
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2], 3
		jnz	short loc_4696F7
		push	0		; subaddr
		mov	eax, addr0
		add	eax, ebx
		push	eax		; _addr
		mov	edx, [ebp+10h]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4696F7
		mov	ecx, [eax+1Eh]
		mov	edx, [ebp-28h]
		cmp	ecx, [edx+1Eh]
		jnz	short loc_4696F7
		mov	ecx, [eax+3Eh]
		cmp	ecx, [ebp-24h]
		jl	short loc_4696F7
		mov	eax, [eax+3Eh]
		mov	[ebp-24h], eax

loc_4696E6:				; CODE XREF: .text:004695F4j
		dec	ebx

loc_4696E7:				; CODE XREF: .text:004695E0j
		mov	eax, addr0
		add	eax, ebx
		cmp	eax, [ebp+8]
		jnb	loc_4695E5

loc_4696F7:				; CODE XREF: .text:00469603j
					; .text:00469619j ...
		push	4		; datasize
		lea	edx, [ebp-0Ch]
		push	edx		; data
		push	35h		; type
		mov	ecx, [ebp+0Ch]
		push	ecx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		cmp	dword_5BDD40, 0
		jz	loc_4698D7
		xor	esi, esi
		lea	eax, [edi+39h]
		mov	[ebp-34h], eax

loc_469720:				; CODE XREF: .text:004698D1j
		cmp	esi, [ebp-0Ch]
		jl	short loc_469739
		cmp	dword_5BDD44, 0
		jnz	short loc_469739
		mov	edx, [ebp-34h]
		or	byte ptr [edx],	50h
		jmp	loc_4698CA
; ---------------------------------------------------------------------------

loc_469739:				; CODE XREF: .text:00469723j
					; .text:0046972Cj
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebp-34h]
		mov	ebx, eax
		jmp	loc_4698BB
; ---------------------------------------------------------------------------

loc_469748:				; CODE XREF: .text:004698C4j
		mov	eax, [ebp-4]
		lea	eax, [eax+eax*2]
		mov	edx, [ebp-28h]
		mov	ecx, [edx+eax*4+5Eh]
		mov	edx, esi
		shl	edx, 2
		add	edx, [ebp-10h]
		cmp	ecx, edx
		jnz	loc_4698B8
		mov	ecx, [ebp-28h]
		cmp	dword ptr [ecx+eax*4+62h], 20h
		jz	short loc_469772
		or	byte ptr [ebx],	40h

loc_469772:				; CODE XREF: .text:0046976Dj
		mov	eax, [ebp-4]
		lea	eax, [eax+eax*2]
		mov	edx, [ebp-28h]
		mov	ecx, [edx+eax*4+62h]
		and	ecx, 7Fh
		cmp	ecx, 20h
		jnz	loc_4698CA
		mov	edx, [ebp-28h]
		mov	eax, [edx+eax*4+66h]
		mov	ecx, eax
		add	ecx, esi
		inc	ecx
		cmp	ecx, [ebp-0Ch]
		jnz	short loc_4697A1
		or	byte ptr [ebx],	20h
		jmp	short loc_4697A4
; ---------------------------------------------------------------------------

loc_4697A1:				; CODE XREF: .text:0046979Aj
		or	byte ptr [ebx],	40h

loc_4697A4:				; CODE XREF: .text:0046979Fj
		test	byte ptr [ebx],	10h
		jnz	loc_4698CA
		cmp	eax, 10000h
		jb	short loc_4697BB
		cmp	eax, 0FFFF0000h
		jb	short loc_4697C3

loc_4697BB:				; CODE XREF: .text:004697B2j
		or	byte ptr [ebx],	10h
		jmp	loc_4698CA
; ---------------------------------------------------------------------------

loc_4697C3:				; CODE XREF: .text:004697B9j
		push	5		; mode
		push	400h		; size
		push	eax		; _addr
		lea	eax, [ebp-434h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4697E8
		or	byte ptr [ebx],	10h
		jmp	loc_4698CA
; ---------------------------------------------------------------------------

loc_4697E8:				; CODE XREF: .text:004697DEj
		cmp	edi, 400h
		jnz	short loc_469800
		xor	eax, eax
		mov	[ebp+edi-435h],	al
		mov	[ebp+edi-436h],	al

loc_469800:				; CODE XREF: .text:004697EEj
		push	edi
		lea	edx, [ebp-434h]
		push	edx
		call	loc_483C80
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jle	short loc_46981E
		or	eax, 0FFFFFFFFh
		jmp	short loc_469830
; ---------------------------------------------------------------------------

loc_46981E:				; CODE XREF: .text:00469817j
		shr	edi, 1
		push	edi
		lea	edx, [ebp-434h]
		push	edx
		call	loc_483E74
		add	esp, 8

loc_469830:				; CODE XREF: .text:0046981Cj
		cmp	dword ptr [ebp-8], 0
		jl	short loc_469871
		cmp	dword_5BDD44, 0
		jz	short loc_469850
		mov	ecx, [ebp-8]
		add	ecx, esi
		inc	ecx
		cmp	ecx, [ebp-0Ch]
		setle	dl
		and	edx, 1
		jmp	short loc_46985F
; ---------------------------------------------------------------------------

loc_469850:				; CODE XREF: .text:0046983Dj
		mov	ecx, [ebp-8]
		add	ecx, esi
		inc	ecx
		cmp	ecx, [ebp-0Ch]
		setz	dl
		and	edx, 1

loc_46985F:				; CODE XREF: .text:0046984Ej
		test	dl, dl
		jz	short loc_469871
		or	byte ptr [ebx],	1
		cmp	dword ptr [ebp-8], 0
		jle	short loc_4698CA
		or	byte ptr [ebx],	2
		jmp	short loc_4698CA
; ---------------------------------------------------------------------------

loc_469871:				; CODE XREF: .text:00469834j
					; .text:00469861j
		test	eax, eax
		jl	short loc_4698AA
		cmp	dword_5BDD44, 0
		jz	short loc_46988D
		lea	ecx, [eax+esi+1]
		cmp	ecx, [ebp-0Ch]
		setle	dl
		and	edx, 1
		jmp	short loc_46989A
; ---------------------------------------------------------------------------

loc_46988D:				; CODE XREF: .text:0046987Cj
		lea	ecx, [eax+esi+1]
		cmp	ecx, [ebp-0Ch]
		setz	dl
		and	edx, 1

loc_46989A:				; CODE XREF: .text:0046988Bj
		test	dl, dl
		jz	short loc_4698AA
		or	byte ptr [ebx],	4
		test	eax, eax
		jle	short loc_4698CA
		or	byte ptr [ebx],	8
		jmp	short loc_4698CA
; ---------------------------------------------------------------------------

loc_4698AA:				; CODE XREF: .text:00469873j
					; .text:0046989Cj
		cmp	dword_5BDD44, 0
		jnz	short loc_4698CA
		or	byte ptr [ebx],	10h
		jmp	short loc_4698CA
; ---------------------------------------------------------------------------

loc_4698B8:				; CODE XREF: .text:0046975Fj
		inc	dword ptr [ebp-4]

loc_4698BB:				; CODE XREF: .text:00469743j
		mov	eax, [ebp-28h]
		mov	ecx, [eax+5Ah]
		cmp	ecx, [ebp-4]
		jg	loc_469748

loc_4698CA:				; CODE XREF: .text:00469734j
					; .text:00469785j ...
		inc	esi
		inc	dword ptr [ebp-34h]
		cmp	esi, 7
		jl	loc_469720

loc_4698D7:				; CODE XREF: .text:00469712j
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		mov	edx, dword_5E5D74
		or	word ptr [edx+eax*2], 8000h

loc_4698EC:				; CODE XREF: .text:0046930Aj
					; .text:00469318j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4698F4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int nDenominator, int)
loc_4698F4:				; CODE XREF: .text:0046F48Ep
					; .text:0046F4CAp
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 8

loc_4698FD:				; CODE XREF: .text:00469905j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4698FD
		mov	eax, [ebp-4]
		add	esp, 0FFFFFD30h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, addr0
		cmp	eax, [ebp+0Ch]
		ja	short loc_469928
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_46992F

loc_469928:				; CODE XREF: .text:0046991Bj
		xor	eax, eax
		jmp	loc_46BCED
; ---------------------------------------------------------------------------

loc_46992F:				; CODE XREF: .text:00469926j
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, addr1
		jbe	short loc_469949
		mov	ecx, addr1
		sub	ecx, [ebp+0Ch]
		mov	[ebp+10h], ecx

loc_469949:				; CODE XREF: .text:0046993Bj
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		add	eax, [ebp+10h]
		mov	[ebp-5Ch], eax
		push	80h		; n
		push	0		; c
		lea	edx, [ebp-7E94h]
		push	edx		; s
		call	_memset
		mov	dword ptr [ebp-7E90h], 1
		mov	ecx, [ebp+0Ch]
		add	esp, 0Ch
		sub	ecx, addr0
		mov	[ebp-4Ch], ecx
		mov	eax, [ebp-4Ch]
		cmp	eax, [ebp-5Ch]
		jnb	short loc_4699E4

loc_46998C:				; CODE XREF: .text:004699E2j
		mov	edx, s
		mov	ecx, [ebp-4Ch]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jnz	short loc_4699D9
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-4Ch]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		cmp	eax, 20h
		jnz	short loc_4699D9
		mov	edx, addr0
		lea	ecx, [ebp-7E94h]
		add	edx, [ebp-4Ch]
		mov	[ebp-7E94h], edx
		push	ecx		; item
		mov	eax, [ebp+14h]
		push	eax		; sd
		call	Addsorteddata
		add	esp, 8

loc_4699D9:				; CODE XREF: .text:004699A0j
					; .text:004699B5j
		inc	dword ptr [ebp-4Ch]
		mov	edx, [ebp-4Ch]
		cmp	edx, [ebp-5Ch]
		jb	short loc_46998C

loc_4699E4:				; CODE XREF: .text:0046998Aj
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		sub	ecx, addr0
		xor	edx, edx
		mov	[ebp-4Ch], ecx
		mov	[ebp-58h], eax
		mov	[ebp-14h], edx
		xor	ecx, ecx	; int
		mov	[ebp-40h], ecx
		mov	dword ptr [ebp-24h], 200h
		push	1		; flags
		mov	eax, [ebp-24h]
		mov	edx, eax	; int
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		add	eax, eax	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-8Ch], eax
		cmp	dword ptr [ebp-8Ch], 0
		jnz	short loc_469A53
		push	offset aLowMemoryUna_1 ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_46BCED
; ---------------------------------------------------------------------------

loc_469A53:				; CODE XREF: .text:00469A32j
		push	44h		; n
		push	0		; c
		lea	edx, [ebp-7C9Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	1		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	1000h		; nexp
		push	176h		; itemsize
		lea	ecx, [ebp-7C9Ch]
		push	ecx		; sd
		call	Createsorteddata
		add	esp, 18h
		test	eax, eax
		jz	short loc_469AB5
		mov	eax, [ebp-8Ch]
		push	eax		; data
		call	Memfree
		pop	ecx
		push	offset aLowMemoryUna_1 ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_46BCED
; ---------------------------------------------------------------------------

loc_469AB5:				; CODE XREF: .text:00469A87j
		push	800h		; nmax
		lea	edx, [ebp-7C58h]
		push	edx		; set
		call	Initset
		add	esp, 8

loc_469AC9:				; CODE XREF: .text:00469B7Bj
					; .text:00469BE4j ...
		cmp	dword ptr [ebp-14h], 2
		jnz	short loc_469AFD
		jmp	short loc_469AD4
; ---------------------------------------------------------------------------

loc_469AD1:				; CODE XREF: .text:00469AF1j
		inc	dword ptr [ebp-4Ch]

loc_469AD4:				; CODE XREF: .text:00469ACFj
		mov	ecx, [ebp-4Ch]
		cmp	ecx, [ebp-5Ch]
		jnb	short loc_469AF3
		mov	eax, [ebp-4Ch]
		push	eax		; value
		lea	edx, [ebp-7C58h]
		push	edx		; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jnz	short loc_469AD1

loc_469AF3:				; CODE XREF: .text:00469ADAj
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_469AFD
; ---------------------------------------------------------------------------

loc_469AFA:				; CODE XREF: .text:00469B12j
		inc	dword ptr [ebp-4Ch]

loc_469AFD:				; CODE XREF: .text:00469ACDj
					; .text:00469AF8j
		mov	eax, [ebp-4Ch]
		cmp	eax, [ebp-5Ch]
		jnb	short loc_469B14
		mov	edx, s
		mov	ecx, [ebp-4Ch]
		cmp	byte ptr [edx+ecx], 1Ch
		jnz	short loc_469AFA

loc_469B14:				; CODE XREF: .text:00469B03j
		mov	eax, [ebp-4Ch]
		cmp	eax, [ebp-5Ch]
		jnb	loc_46BA47
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_469B80
		jmp	short loc_469B58
; ---------------------------------------------------------------------------

loc_469B28:				; CODE XREF: .text:00469B74j
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-4Ch]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		mov	[ebp-64h], eax
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-4Ch]
		xor	eax, eax
		mov	al, [edx+ecx]
		add	[ebp-4Ch], eax
		cmp	dword ptr [ebp-64h], 30h
		jz	short loc_469B76
		cmp	dword ptr [ebp-64h], 70h
		jz	short loc_469B76

loc_469B58:				; CODE XREF: .text:00469B26j
		mov	edx, [ebp-4Ch]
		cmp	edx, [ebp-5Ch]
		jnb	short loc_469B76
		mov	ecx, s
		mov	eax, [ebp-4Ch]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_469B28

loc_469B76:				; CODE XREF: .text:00469B50j
					; .text:00469B56j ...
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	loc_469AC9
; ---------------------------------------------------------------------------

loc_469B80:				; CODE XREF: .text:00469B24j
		mov	eax, [ebp-58h]
		add	eax, 800h
		cmp	eax, [ebp-4Ch]
		jnb	short loc_469BC7
		mov	edx, [ebp+10h]
		push	edx		; nDenominator
		push	3E8h		; nNumerator
		mov	ecx, [ebp+0Ch]
		sub	ecx, addr0
		mov	eax, [ebp-4Ch]
		sub	eax, ecx
		push	eax		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_469BC1
		mov	dword ptr [ebp-40h], 1
		jmp	loc_46BCD0
; ---------------------------------------------------------------------------

loc_469BC1:				; CODE XREF: .text:00469BB3j
		mov	edx, [ebp-4Ch]
		mov	[ebp-58h], edx

loc_469BC7:				; CODE XREF: .text:00469B8Bj
		mov	ecx, [ebp-4Ch]
		add	ecx, 4
		cmp	ecx, [ebp-5Ch]
		ja	short loc_469BE9
		mov	eax, copy
		mov	edx, [ebp-4Ch]
		cmp	dword ptr [eax+edx], 0
		jnz	short loc_469BE9
		add	dword ptr [ebp-4Ch], 2
		jmp	loc_469AC9
; ---------------------------------------------------------------------------

loc_469BE9:				; CODE XREF: .text:00469BD0j
					; .text:00469BDEj
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-4Ch]
		test	byte ptr [ecx+eax*2], 83h
		jnz	short loc_469C1D
		push	0
		mov	ecx, copy
		mov	edx, [ebp-5Ch]
		push	edx
		push	ecx
		mov	eax, [ebp-4Ch]
		push	eax
		call	loc_45CC50
		add	esp, 10h
		test	eax, eax
		jz	short loc_469C1D
		inc	dword ptr [ebp-4Ch]
		jmp	loc_469AC9
; ---------------------------------------------------------------------------

loc_469C1D:				; CODE XREF: .text:00469BF6j
					; .text:00469C13j
		xor	edx, edx
		mov	[ebp-7Ch], edx
		xor	ecx, ecx
		mov	[ebp-80h], ecx
		xor	eax, eax
		mov	[ebp-84h], eax

loc_469C2F:				; CODE XREF: .text:0046A01Ej
					; .text:0046A0DAj
		xor	edx, edx
		mov	[ebp-44h], edx
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		lea	ecx, [ebp-7C9Ch]
		push	ecx		; sd
		call	Deletesorteddatarange
		mov	edx, [ebp-8Ch]
		mov	eax, addr0
		add	eax, [ebp-4Ch]
		add	esp, 0Ch
		mov	[edx], eax
		xor	edx, edx
		mov	ecx, [ebp-8Ch]
		mov	dword ptr [ecx+4], 1
		mov	eax, [ebp-8Ch]
		xor	ecx, ecx
		mov	[eax+8], edx
		mov	[ebp-4], ecx

loc_469C74:				; CODE XREF: .text:00469CBCj
		mov	eax, dword_5E5D74
		mov	edx, [ebp-4Ch]
		test	byte ptr [eax+edx*2], 1
		jz	short loc_469C93
		mov	ecx, [ebp-8Ch]
		mov	eax, [ebp-4]
		xor	edx, edx
		mov	[ecx+eax*4+0Eh], edx
		jmp	short loc_469CA6
; ---------------------------------------------------------------------------

loc_469C93:				; CODE XREF: .text:00469C80j
		mov	ecx, [ebp-8Ch]
		mov	eax, [ebp-4]
		mov	edx, [ebp-4]
		or	edx, 28h
		mov	[ecx+eax*4+0Eh], edx

loc_469CA6:				; CODE XREF: .text:00469C91j
		mov	ecx, [ebp-8Ch]
		mov	eax, [ebp-4]
		xor	edx, edx
		mov	[ecx+eax*4+2Eh], edx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_469C74
		mov	ecx, [ebp-8Ch]
		xor	eax, eax
		mov	[ecx+5Ah], eax
		xor	ecx, ecx
		mov	edx, [ebp-8Ch]
		mov	[edx+0EEh], ecx
		xor	edx, edx
		mov	eax, [ebp-8Ch]
		xor	ecx, ecx
		mov	[eax+152h], edx
		mov	[ebp-10h], ecx
		push	0		; subaddr
		mov	eax, addr0
		add	eax, [ebp-4Ch]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-98h], eax
		cmp	dword ptr [ebp-98h], 0
		jnz	short loc_469D3F
		push	40h		; n
		push	0		; c
		lea	edx, [ebp-7ED4h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, addr0
		add	ecx, [ebp-4Ch]
		mov	[ebp-7ED4h], ecx
		mov	dword ptr [ebp-7ED0h], 1
		jmp	short loc_469D5F
; ---------------------------------------------------------------------------

loc_469D3F:				; CODE XREF: .text:00469D0Fj
		push	40h		; n
		mov	eax, [ebp-98h]
		push	eax		; src
		lea	edx, [ebp-7ED4h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-7EC4h], ecx

loc_469D5F:				; CODE XREF: .text:00469D3Dj
		mov	byte ptr [ebp-7E9Ch], 0EFh
		and	dword ptr [ebp-7ECCh], 0FFEFFFFFh
		lea	eax, [ebp-7C58h]
		push	eax		; set
		call	Emptyrange
		pop	ecx
		xor	edx, edx
		mov	[ebp-1Ch], edx
		mov	[ebp-18h], edx
		mov	dword ptr [ebp-2Ch], 1
		xor	eax, eax
		mov	[ebp-28h], eax

loc_469D91:				; CODE XREF: .text:0046B09Ej
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-3Ch], ecx
		mov	[ebp-68h], eax

loc_469D9B:				; CODE XREF: .text:00469E03j
					; .text:00469E61j ...
		cmp	dword ptr [ebp-10h], 0
		jl	loc_46AF2F

loc_469DA5:				; CODE XREF: .text:0046AF29j
		cmp	dword_5BDD1C, 0
		jnz	short loc_469DBB
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_469DBB
		mov	dword ptr [ebp-1Ch], 1

loc_469DBB:				; CODE XREF: .text:00469DACj
					; .text:00469DB2j
		cmp	dword ptr [ebp-1Ch], 0
		jnz	loc_46AF2F
		mov	esi, [ebp-10h]
		mov	eax, esi
		lea	esi, [eax+esi*2]
		shl	esi, 4
		sub	esi, eax
		shl	esi, 2
		sub	esi, eax
		mov	eax, [ebp+0Ch]
		add	esi, esi
		add	esi, [ebp-8Ch]
		sub	eax, addr0
		mov	ebx, [esi]
		sub	ebx, addr0
		cmp	ebx, eax
		jb	short loc_469DF9
		cmp	ebx, [ebp-5Ch]
		jb	short loc_469E05

loc_469DF9:				; CODE XREF: .text:00469DF2j
		mov	dword ptr [ebp-18h], 1
		dec	dword ptr [ebp-10h]
		jmp	short loc_469D9B
; ---------------------------------------------------------------------------

loc_469E05:				; CODE XREF: .text:00469DF7j
		mov	edx, s
		xor	ecx, ecx
		mov	cl, [edx+ebx]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jz	short loc_469E24
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_46AF2F
; ---------------------------------------------------------------------------

loc_469E24:				; CODE XREF: .text:00469E16j
		cmp	dword_5BDD1C, 0
		jnz	short loc_469E66
		mov	eax, s
		test	byte ptr [eax+ebx], 60h
		jz	short loc_469E66
		mov	edx, dword_5E5D70
		xor	ecx, ecx
		lea	eax, [ebp-7C58h]
		mov	cl, [edx+ebx]
		add	ecx, ebx
		dec	ecx
		push	ecx		; rmax
		push	ebx		; rmin
		push	eax		; set
		call	Addrange
		add	esp, 0Ch
		mov	dword ptr [ebp-18h], 1
		dec	dword ptr [ebp-10h]
		jmp	loc_469D9B
; ---------------------------------------------------------------------------

loc_469E66:				; CODE XREF: .text:00469E2Bj
					; .text:00469E36j
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2], 2
		jz	short loc_469EDF
		cmp	ebx, [ebp-4Ch]
		jz	short loc_469EDF
		xor	ecx, ecx
		mov	eax, addr0
		add	eax, ebx
		mov	[ebp-2Ch], ecx
		mov	[ebp-7E14h], eax
		xor	edx, edx
		mov	dword ptr [ebp-7E10h], 1
		mov	[ebp-7E0Ch], edx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		lea	edi, [ebp-7E06h]

loc_469EA6:				; CODE XREF: .text:00469EBDj
		mov	eax, [ebp-4]
		xor	edx, edx
		or	eax, 28h
		mov	[edi], eax
		mov	[edi+20h], edx
		inc	dword ptr [ebp-4]
		add	edi, 4
		cmp	dword ptr [ebp-4], 8
		jl	short loc_469EA6
		xor	ecx, ecx
		mov	[ebp-7DBAh], ecx
		xor	eax, eax
		mov	[ebp-7CC2h], eax
		lea	edx, [ebp-7E14h]
		push	edx
		push	esi
		call	loc_44011C
		add	esp, 8

loc_469EDF:				; CODE XREF: .text:00469E70j
					; .text:00469E75j
		push	0		; subaddr
		mov	ecx, [esi]
		push	ecx		; _addr
		lea	eax, [ebp-7C9Ch]
		push	eax		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-90h], eax
		cmp	dword ptr [ebp-90h], 0
		jz	loc_46A152
		mov	edx, [ebp-90h]
		mov	ecx, [edx+1Eh]
		and	ecx, 0FFh
		cmp	ecx, 2Ch
		jnz	loc_46A11A
		mov	eax, [esi+1Eh]
		and	eax, 0FFh
		cmp	eax, 2Ch
		jnz	loc_46A11A
		mov	edx, [ebp-90h]
		mov	ecx, [edx+1Eh]
		cmp	ecx, [esi+1Eh]
		jnz	loc_46A11A
		mov	eax, [ebp-90h]
		mov	edx, [eax+3Eh]
		sub	edx, [esi+3Eh]
		jz	loc_46A11A
		mov	ecx, [ebp-7Ch]
		cmp	ecx, [esi]
		jnz	short loc_469F68
		mov	eax, [ebp-84h]
		add	[esi+3Eh], eax
		jmp	loc_46A11A
; ---------------------------------------------------------------------------

loc_469F68:				; CODE XREF: .text:00469F58j
		cmp	dword ptr [ebp-7Ch], 0
		jnz	loc_46A023
		lea	edx, [ebx+0Ah]
		cmp	edx, _size
		jnb	loc_46A023
		cmp	ebx, 5
		jbe	loc_46A023
		mov	ecx, copy
		cmp	byte ptr [ecx+ebx-5], 0B8h
		jnz	loc_46A023
		mov	eax, copy
		cmp	dword ptr [eax+ebx-4], 100h
		jnb	short loc_46A023
		mov	edx, copy
		push	0Ah		; n
		add	edx, ebx
		push	offset byte_53BB90 ; s2
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_46A023
		mov	eax, copy
		mov	ecx, [esi]
		mov	[ebp-7Ch], ecx
		mov	edx, [eax+ebx-4]
		dec	edx
		shl	edx, 0Ch
		mov	[ebp-80h], edx
		mov	dword ptr [ebp-84h], 1000h
		mov	ecx, [ebp-80h]
		add	ecx, [ebp-84h]
		push	ecx
		push	offset aLoopReservesI_ ; "Loop reserves	%i. bytes on the stack"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-0AA4h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0AA4h]
		push	edx		; s
		push	31h		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	loc_469C2F
; ---------------------------------------------------------------------------

loc_46A023:				; CODE XREF: .text:00469F6Cj
					; .text:00469F7Bj ...
		cmp	dword ptr [ebp-7Ch], 0
		jnz	loc_46A0DF
		lea	eax, [ebx+7]
		cmp	eax, _size
		jnb	loc_46A0DF
		cmp	ebx, 5
		jbe	loc_46A0DF
		mov	edx, copy
		cmp	byte ptr [edx+ebx-5], 0B9h
		jnz	loc_46A0DF
		mov	ecx, copy
		cmp	dword ptr [ecx+ebx-4], 8000h
		jnb	short loc_46A0DF
		mov	eax, copy
		push	7		; n
		add	eax, ebx
		push	offset byte_53BBE6
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_46A0DF
		mov	ecx, copy
		mov	edx, [esi]
		mov	[ebp-7Ch], edx
		mov	eax, [ecx+ebx-4]
		dec	eax
		shl	eax, 3
		mov	[ebp-80h], eax
		mov	dword ptr [ebp-84h], 8
		mov	edx, [ebp-80h]
		add	edx, [ebp-84h]
		push	edx
		push	offset aLoopReservesI_ ; "Loop reserves	%i. bytes on the stack"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-0AA4h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-0AA4h]
		push	eax		; s
		push	31h		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	loc_469C2F
; ---------------------------------------------------------------------------

loc_46A0DF:				; CODE XREF: .text:0046A027j
					; .text:0046A036j ...
		cmp	dword_5BDD18, 0
		jz	short loc_46A11A
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2+1],	1
		jnz	short loc_46A11A
		push	offset aEspMayDependOn ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	eax, [esi]
		push	eax		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 100h

loc_46A11A:				; CODE XREF: .text:00469F18j
					; .text:00469F29j ...
		push	esi
		mov	ecx, [ebp-90h]
		push	ecx
		call	loc_44011C
		add	esp, 8
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_46A13B
		dec	dword ptr [ebp-10h]
		jmp	loc_469D9B
; ---------------------------------------------------------------------------

loc_46A13B:				; CODE XREF: .text:0046A131j
		mov	eax, [ebp-90h]
		push	esi
		mov	edi, esi
		mov	esi, eax
		mov	ecx, 5Dh
		rep movsd
		movsw
		pop	esi
		jmp	short loc_46A199
; ---------------------------------------------------------------------------

loc_46A152:				; CODE XREF: .text:00469F00j
		mov	eax, [esi]
		cmp	eax, [ebp-7Ch]
		jnz	short loc_46A16B
		mov	edx, [ebp-80h]
		sub	[esi+3Eh], edx
		xor	ecx, ecx
		mov	[ebp-80h], ecx
		mov	dword ptr [ebp-44h], 1

loc_46A16B:				; CODE XREF: .text:0046A157j
		push	esi		; item
		lea	eax, [ebp-7C9Ch]
		push	eax		; sd
		call	Addsorteddata
		add	esp, 8
		mov	[ebp-90h], eax
		cmp	dword ptr [ebp-90h], 0
		jnz	short loc_46A199
		mov	dword ptr [ebp-18h], 1
		dec	dword ptr [ebp-10h]
		jmp	loc_469D9B
; ---------------------------------------------------------------------------

loc_46A199:				; CODE XREF: .text:0046A150j
					; .text:0046A188j
		mov	edx, [ebp-5Ch]
		sub	edx, ebx
		cmp	edx, 3
		jb	short loc_46A1C9
		mov	ecx, copy
		cmp	word ptr [ecx+ebx], 0E483h
		jnz	short loc_46A1C9
		mov	eax, copy
		cmp	byte ptr [eax+ebx+2], 0F8h
		jnz	short loc_46A1C9
		mov	dword ptr [ebp-34h], 8
		jmp	loc_46A255
; ---------------------------------------------------------------------------

loc_46A1C9:				; CODE XREF: .text:0046A1A1j
					; .text:0046A1AFj ...
		mov	edx, [ebp-5Ch]
		sub	edx, ebx
		cmp	edx, 3
		jb	short loc_46A1F6
		mov	ecx, copy
		cmp	word ptr [ecx+ebx], 0E483h
		jnz	short loc_46A1F6
		mov	eax, copy
		cmp	byte ptr [eax+ebx+2], 0F0h
		jnz	short loc_46A1F6
		mov	dword ptr [ebp-34h], 10h
		jmp	short loc_46A255
; ---------------------------------------------------------------------------

loc_46A1F6:				; CODE XREF: .text:0046A1D1j
					; .text:0046A1DFj ...
		mov	edx, [ebp-5Ch]
		sub	edx, ebx
		cmp	edx, 6
		jb	short loc_46A223
		mov	ecx, copy
		cmp	word ptr [ecx+ebx], 0E481h
		jnz	short loc_46A223
		mov	eax, copy
		cmp	dword ptr [eax+ebx+2], 0FFFFFFF8h
		jnz	short loc_46A223
		mov	dword ptr [ebp-34h], 8
		jmp	short loc_46A255
; ---------------------------------------------------------------------------

loc_46A223:				; CODE XREF: .text:0046A1FEj
					; .text:0046A20Cj ...
		mov	edx, [ebp-5Ch]
		sub	edx, ebx
		cmp	edx, 6
		jb	short loc_46A250
		mov	ecx, copy
		cmp	word ptr [ecx+ebx], 0E481h
		jnz	short loc_46A250
		mov	eax, copy
		cmp	dword ptr [eax+ebx+2], 0FFFFFFF0h
		jnz	short loc_46A250
		mov	dword ptr [ebp-34h], 10h
		jmp	short loc_46A255
; ---------------------------------------------------------------------------

loc_46A250:				; CODE XREF: .text:0046A22Bj
					; .text:0046A239j ...
		xor	edx, edx
		mov	[ebp-34h], edx

loc_46A255:				; CODE XREF: .text:0046A1C4j
					; .text:0046A1F4j ...
		cmp	dword ptr [ebp-34h], 0
		jz	loc_46A309
		test	byte ptr [ebp-7ECAh], 10h
		jnz	loc_46A309
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2+1],	1
		jnz	short loc_46A2BD
		mov	eax, [ebp-34h]
		push	eax
		push	offset aTXStackAlignment ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-0AA4h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-0AA4h]
		mov	eax, addr0
		add	eax, ebx
		push	ecx		; s
		push	31h		; type
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 100h

loc_46A2BD:				; CODE XREF: .text:0046A277j
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-2388h]
		push	0		; mode
		push	ecx		; da
		mov	eax, addr0
		add	eax, ebx
		push	0		; dec
		push	eax		; ip
		mov	ecx, copy
		mov	edx, [ebp-5Ch]
		sub	edx, ebx
		add	ecx, ebx
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		mov	[ebp-60h], eax
		mov	eax, addr0
		add	eax, ebx
		add	esp, 20h
		add	eax, [ebp-60h]
		mov	[esi], eax
		or	dword ptr [ebp-7ECCh], 100000h
		jmp	loc_46A401
; ---------------------------------------------------------------------------

loc_46A309:				; CODE XREF: .text:0046A259j
					; .text:0046A266j
		mov	ecx, dword_5E5D74
		push	esi		; predict
		push	0		; reg
		mov	edx, 100h
		movzx	eax, word ptr [ecx+ebx*2]
		and	eax, 70h
		cmp	eax, 30h
		jz	short loc_46A329
		add	edx, 0FFFFFF00h

loc_46A329:				; CODE XREF: .text:0046A321j
		or	edx, 10h
		mov	ecx, addr0
		push	edx		; mode
		lea	edx, [ebp-2388h]
		push	edx		; da
		add	ecx, ebx
		push	0		; dec
		push	ecx		; ip
		mov	eax, [ebp-5Ch]
		mov	edx, copy
		sub	eax, ebx
		add	edx, ebx
		push	eax		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-60h], eax
		cmp	dword ptr [ebp-68h], 0
		jnz	short loc_46A382
		cmp	dword ptr [esi+5Ah], 1
		jnz	short loc_46A382
		cmp	dword ptr [esi+1Eh], 2Ch
		jnz	short loc_46A382
		cmp	dword ptr [esi+62h], 2Dh
		jnz	short loc_46A382
		cmp	dword ptr [esi+66h], 0
		jnz	short loc_46A382
		cmp	dword ptr [esi+5Eh], 0FFFFFFFCh
		jnz	short loc_46A382
		mov	ecx, [esi]
		mov	[ebp-68h], ecx

loc_46A382:				; CODE XREF: .text:0046A35Dj
					; .text:0046A363j ...
		cmp	dword ptr [ebp-7EC4h], 0
		jz	short loc_46A39E
		cmp	dword ptr [ebp-44h], 1
		jnz	short loc_46A401
		mov	eax, [ebp-90h]
		mov	edx, [eax]
		cmp	edx, [ebp-7Ch]
		jz	short loc_46A401

loc_46A39E:				; CODE XREF: .text:0046A389j
		cmp	dword ptr [esi+1Eh], 2Ch
		jnz	short loc_46A401
		mov	ecx, [ebp-90h]
		cmp	dword ptr [ecx+1Eh], 2Ch
		jnz	short loc_46A401
		mov	eax, [ebp-90h]
		mov	edx, [eax+3Eh]
		sub	edx, [esi+3Eh]
		cmp	edx, 4
		jle	short loc_46A401
		mov	ecx, [esi+3Eh]
		neg	ecx
		mov	[ebp-7EC4h], ecx
		cmp	dword ptr [ebp-44h], 1
		jnz	short loc_46A3E6
		mov	eax, [ebp-90h]
		mov	edx, [eax]
		cmp	edx, [ebp-7Ch]
		jz	short loc_46A3E6
		xor	ecx, ecx
		mov	[ebp-44h], ecx
		jmp	short loc_46A401
; ---------------------------------------------------------------------------

loc_46A3E6:				; CODE XREF: .text:0046A3D0j
					; .text:0046A3DDj
		mov	eax, [ebp-90h]
		mov	edx, [eax+3Eh]
		sub	edx, [esi+3Eh]
		cmp	edx, 0FFCh
		jnz	short loc_46A401
		mov	dword ptr [ebp-44h], 1

loc_46A401:				; CODE XREF: .text:0046A304j
					; .text:0046A38Fj ...
		cmp	dword ptr [ebp-60h], 0
		jz	short loc_46A410
		cmp	dword ptr [ebp-235Ch], 0
		jz	short loc_46A41C

loc_46A410:				; CODE XREF: .text:0046A405j
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_46AF2F
; ---------------------------------------------------------------------------

loc_46A41C:				; CODE XREF: .text:0046A40Ej
		test	byte ptr [esi+0Ah], 4
		jz	loc_46A5AA
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-48h], ecx
		mov	[ebp-8], eax
		xor	edx, edx
		lea	edi, [esi+5Eh]
		mov	[ebp-4], edx
		jmp	short loc_46A478
; ---------------------------------------------------------------------------

loc_46A43A:				; CODE XREF: .text:0046A47Ej
		mov	eax, [edi]
		cmp	eax, [esi+3Eh]
		jnz	short loc_46A453
		cmp	dword ptr [edi+4], 440h
		jnz	short loc_46A453
		mov	dword ptr [ebp-8], 1
		jmp	short loc_46A472
; ---------------------------------------------------------------------------

loc_46A453:				; CODE XREF: .text:0046A43Fj
					; .text:0046A448j
		mov	edx, [edi]
		mov	ecx, [esi+3Eh]
		add	ecx, 4
		cmp	edx, ecx
		jnz	short loc_46A472
		mov	eax, [edi+4]
		and	eax, 0FFFFFF7Fh
		cmp	eax, 20h
		jnz	short loc_46A472
		mov	edx, [edi+8]
		mov	[ebp-48h], edx

loc_46A472:				; CODE XREF: .text:0046A451j
					; .text:0046A45Dj ...
		inc	dword ptr [ebp-4]
		add	edi, 0Ch

loc_46A478:				; CODE XREF: .text:0046A438j
		mov	ecx, [ebp-4]
		cmp	ecx, [esi+5Ah]
		jl	short loc_46A43A
		cmp	dword ptr [ebp-8], 0
		jz	loc_46A5A3
		mov	eax, addr0
		cmp	eax, [ebp-48h]
		ja	short loc_46A512
		mov	edx, [ebp-48h]
		cmp	edx, addr1
		jnb	short loc_46A512
		mov	ecx, [ebp-48h]
		sub	ecx, addr0
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+ecx]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jnz	short loc_46A512
		mov	ecx, [ebp-48h]
		sub	ecx, addr0
		mov	eax, dword_5E5D74
		or	word ptr [eax+ecx*2], 2
		mov	edx, [ebp-48h]
		sub	edx, addr0
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+edx*2+1],	1
		jnz	short loc_46A512
		push	offset aSeHandlingRout ; "SE handling routine"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, [ebp-48h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	edx, [ebp-48h]
		sub	edx, addr0
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+edx*2], 100h

loc_46A512:				; CODE XREF: .text:0046A492j
					; .text:0046A49Dj ...
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ebx*2+1],	1
		jnz	loc_46A5A3
		mov	edx, addr0
		cmp	edx, [ebp-48h]
		ja	short loc_46A538
		mov	ecx, [ebp-48h]
		cmp	ecx, addr1
		jb	short loc_46A558

loc_46A538:				; CODE XREF: .text:0046A52Bj
		push	offset aInstallsSeHand ; "Installs SE handler"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, ebx
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	short loc_46A597
; ---------------------------------------------------------------------------

loc_46A558:				; CODE XREF: .text:0046A536j
		mov	edx, [ebp-48h]
		sub	edx, addr0
		push	edx
		push	offset aInstallsSeHa_0 ; "Installs SE handler <+%X>"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-0AA4h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-0AA4h]
		mov	edx, addr0
		add	edx, ebx
		push	eax		; s
		push	31h		; type
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46A597:				; CODE XREF: .text:0046A556j
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+ebx*2], 100h

loc_46A5A3:				; CODE XREF: .text:0046A484j
					; .text:0046A51Cj
		and	dword ptr [esi+8], 0FFFBFFFFh

loc_46A5AA:				; CODE XREF: .text:0046A420j
		xor	eax, eax
		lea	edi, [ebp-230Ch]
		mov	[ebp-8], eax

loc_46A5B5:				; CODE XREF: .text:0046A764j
		xor	eax, eax
		mov	[ebp-30h], eax
		mov	edx, [edi]
		mov	[ebp-38h], edx
		mov	ecx, [edi-30h]
		and	ecx, 281100h
		cmp	ecx, 80100h
		jnz	loc_46A757
		cmp	dword ptr [edi-10h], 4
		jz	loc_46A757
		cmp	dword ptr [edi-10h], 5
		jz	loc_46A757
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-90h]
		lea	eax, [edx+0Eh]
		lea	edx, [edi-0Ch]
		mov	[ebp-0A4h], edx

loc_46A5FF:				; CODE XREF: .text:0046A666j
		mov	ecx, [ebp-0A4h]
		cmp	byte ptr [ecx],	0
		jz	short loc_46A656
		mov	edx, [eax]
		mov	ecx, edx
		and	ecx, 0FFFFFF7Fh
		cmp	ecx, 20h
		jnz	short loc_46A630
		mov	edx, [eax+20h]
		mov	ecx, [ebp-0A4h]
		movzx	ecx, byte ptr [ecx]
		imul	edx, ecx
		add	edx, [ebp-38h]
		mov	[ebp-38h], edx
		jmp	short loc_46A656
; ---------------------------------------------------------------------------

loc_46A630:				; CODE XREF: .text:0046A617j
		cmp	edx, 2Ch
		jnz	short loc_46A668
		mov	edx, [ebp-0A4h]
		movzx	edx, byte ptr [edx]
		add	[ebp-30h], edx
		mov	ecx, [eax+20h]
		mov	edx, [ebp-0A4h]
		movzx	edx, byte ptr [edx]
		imul	ecx, edx
		add	ecx, [ebp-38h]
		mov	[ebp-38h], ecx

loc_46A656:				; CODE XREF: .text:0046A608j
					; .text:0046A62Ej
		inc	dword ptr [ebp-4]
		add	eax, 4
		inc	dword ptr [ebp-0A4h]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_46A5FF

loc_46A668:				; CODE XREF: .text:0046A633j
		cmp	dword ptr [ebp-30h], 1
		jnz	loc_46A757
		cmp	dword ptr [ebp-4], 8
		jnz	loc_46A757
		cmp	dword_5BDD18, 0
		jz	short loc_46A6E0
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ebx*2+1],	1
		jnz	short loc_46A6E0
		mov	ecx, [ebp-90h]
		cmp	dword ptr [ecx+1Eh], 2Ch
		jnz	short loc_46A6E0
		mov	eax, [ebp-90h]
		mov	edx, [eax+3Eh]
		cmp	edx, [ebp-38h]
		jle	short loc_46A6E0
		mov	ecx, copy
		cmp	byte ptr [ecx+ebx], 8Dh
		jz	short loc_46A6E0
		push	offset aPossibleAccess ; "  Possible access to uninitialized part"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	eax, [ebp-237Ch]
		push	eax		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 100h

loc_46A6E0:				; CODE XREF: .text:0046A683j
					; .text:0046A68Fj ...
		cmp	dword_5BDD18, 0
		jz	short loc_46A743
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2+1],	1
		jnz	short loc_46A743
		mov	eax, [ebp-90h]
		cmp	dword ptr [eax+1Eh], 2Ch
		jnz	short loc_46A743
		cmp	dword ptr [ebp-38h], 0
		jnz	short loc_46A743
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+ebx*2]
		and	ecx, 70h
		cmp	ecx, 70h
		jz	short loc_46A743
		push	offset aPossibleManipu ; "  Possible manipulation of return addre"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	eax, [ebp-237Ch]
		push	eax		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 100h

loc_46A743:				; CODE XREF: .text:0046A6E7j
					; .text:0046A6F4j ...
		mov	ecx, [edi-24h]
		add	[ebp-38h], ecx
		mov	eax, [ebp-38h]
		cmp	eax, [ebp-3Ch]
		jle	short loc_46A757
		mov	edx, [ebp-38h]
		mov	[ebp-3Ch], edx

loc_46A757:				; CODE XREF: .text:0046A5CEj
					; .text:0046A5D8j ...
		inc	dword ptr [ebp-8]
		add	edi, 460h
		cmp	dword ptr [ebp-8], 4
		jl	loc_46A5B5
		mov	ecx, [ebp-90h]
		mov	eax, [esi+16Eh]
		mov	[ecx+16Eh], eax
		mov	edx, [ebp-90h]
		mov	ecx, [esi+172h]
		mov	[edx+172h], ecx
		lea	edx, [ebp-7C58h]
		mov	eax, [ebp-60h]
		add	eax, ebx
		dec	eax
		push	eax		; rmax
		push	ebx		; rmin
		push	edx		; set
		call	Addrange
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_46A7B0
		mov	dword ptr [ebp-18h], 1

loc_46A7B0:				; CODE XREF: .text:0046A7A7j
		mov	ecx, dword_5E5D74
		movzx	eax, word ptr [ecx+ebx*2]
		and	eax, 70h
		cmp	eax, 40h
		jg	short loc_46A7E5
		jz	loc_46A9FB
		sub	eax, 1
		jb	short loc_46A7FD
		sub	eax, 0Fh
		jz	short loc_46A7FD
		sub	eax, 10h
		jz	short loc_46A80D
		sub	eax, 10h
		jz	loc_46A8CE
		jmp	loc_46AF1E
; ---------------------------------------------------------------------------

loc_46A7E5:				; CODE XREF: .text:0046A7C0j
		sub	eax, 50h
		jz	short loc_46A7FD
		sub	eax, 10h
		jz	short loc_46A7FD
		sub	eax, 10h
		jz	loc_46AB19
		jmp	loc_46AF1E
; ---------------------------------------------------------------------------

loc_46A7FD:				; CODE XREF: .text:0046A7CBj
					; .text:0046A7D0j ...
		add	ebx, addr0
		add	ebx, [ebp-60h]
		mov	[esi], ebx
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46A80D:				; CODE XREF: .text:0046A7D5j
		mov	edx, [ebp-2348h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-48h], eax
		mov	ecx, [ebp-48h]
		push	ecx		; _addr
		call	Isnoreturn
		pop	ecx
		test	eax, eax
		jz	loc_46A8BE
		mov	eax, [ebp-60h]
		add	eax, ebx
		cmp	eax, [ebp-5Ch]
		jnb	loc_46A8BE
		mov	edx, [ebp-60h]
		add	edx, ebx
		mov	ecx, dword_5E5D70
		cmp	byte ptr [ecx+edx], 0
		jz	short loc_46A8AC
		mov	eax, [ebp-60h]
		add	eax, ebx
		mov	edx, dword_5E5D74
		test	byte ptr [edx+eax*2], 82h
		jnz	short loc_46A8AC
		push	0
		mov	eax, copy
		mov	ecx, [ebp-5Ch]
		push	ecx
		push	eax
		mov	edx, [ebp-60h]
		add	edx, ebx
		push	edx
		call	loc_45CC50
		add	esp, 10h
		test	eax, eax
		jnz	short loc_46A8AC
		mov	ecx, [ebp-60h]
		add	ecx, ebx
		add	ecx, 2
		cmp	ecx, [ebp-5Ch]
		ja	short loc_46A8BE
		mov	eax, [ebp-60h]
		add	eax, ebx
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jnz	short loc_46A8BE
		mov	ecx, [ebp-60h]
		add	ecx, ebx
		mov	eax, copy
		cmp	byte ptr [eax+ecx+1], 0
		jnz	short loc_46A8BE

loc_46A8AC:				; CODE XREF: .text:0046A84Cj
					; .text:0046A85Dj ...
		or	dword ptr [ebp-7ECCh], 40000h
		dec	dword ptr [ebp-10h]
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46A8BE:				; CODE XREF: .text:0046A829j
					; .text:0046A837j ...
		add	ebx, addr0
		add	ebx, [ebp-60h]
		mov	[esi], ebx
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46A8CE:				; CODE XREF: .text:0046A7DAj
		cmp	dword ptr [esi+4Eh], 3Ch
		jnz	short loc_46A8E7
		cmp	dword ptr [esi+52h], 0
		jnz	short loc_46A8E7
		mov	edx, [ebp-90h]
		or	dword ptr [edx+8], 400000h

loc_46A8E7:				; CODE XREF: .text:0046A8D2j
					; .text:0046A8D8j
		mov	ecx, addr0
		add	ecx, ebx
		push	ecx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-9Ch], eax
		cmp	dword ptr [ebp-9Ch], 0
		jz	short loc_46A919
		mov	eax, [ebp-9Ch]
		mov	ecx, addr0
		add	ecx, ebx
		mov	edx, [eax]
		cmp	edx, ecx
		jz	short loc_46A925

loc_46A919:				; CODE XREF: .text:0046A903j
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46A925:				; CODE XREF: .text:0046A917j
		push	esi
		lea	edi, [ebp-7E14h]
		mov	ecx, 5Dh
		rep movsd
		movsw
		pop	esi
		dec	dword ptr [ebp-10h]
		jmp	loc_46A9DF
; ---------------------------------------------------------------------------

loc_46A93E:				; CODE XREF: .text:0046A9F0j
		mov	eax, [ebp-24h]
		dec	eax		; int
		cmp	eax, [ebp-10h]
		jg	short loc_46A969
		push	1		; flags
		push	0		; failed
		push	176h		; itemsize
		lea	edx, [ebp-24h]	; int
		push	edx		; pcount
		mov	ecx, [ebp-8Ch]	; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-8Ch], eax

loc_46A969:				; CODE XREF: .text:0046A945j
		mov	eax, [ebp-9Ch]
		cmp	dword ptr [eax+4], 0
		jz	short loc_46A9D1
		mov	edx, [ebp-24h]
		dec	edx
		cmp	edx, [ebp-10h]
		jle	short loc_46A9D1
		inc	dword ptr [ebp-10h]
		lea	esi, [ebp-7E14h]
		mov	ecx, [ebp-10h]
		mov	edx, [ebp-8Ch]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		shl	ecx, 4
		sub	ecx, eax
		shl	ecx, 2
		sub	ecx, eax
		lea	edi, [edx+ecx*2]
		mov	ecx, 5Dh
		rep movsd
		movsw
		mov	eax, [ebp-10h]
		mov	ecx, [ebp-8Ch]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		mov	edx, [ebp-9Ch]
		mov	edx, [edx+4]
		mov	[ecx+eax*2], edx
		jmp	short loc_46A9D8
; ---------------------------------------------------------------------------

loc_46A9D1:				; CODE XREF: .text:0046A973j
					; .text:0046A97Cj
		mov	dword ptr [ebp-18h], 1

loc_46A9D8:				; CODE XREF: .text:0046A9CFj
		add	dword ptr [ebp-9Ch], 9

loc_46A9DF:				; CODE XREF: .text:0046A939j
		mov	eax, [ebp-9Ch]
		mov	ecx, [eax]
		mov	eax, addr0
		add	eax, ebx
		cmp	ecx, eax
		jz	loc_46A93E
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46A9FB:				; CODE XREF: .text:0046A7C2j
		mov	edx, addr0
		add	edx, ebx
		push	edx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-9Ch], eax
		cmp	dword ptr [ebp-9Ch], 0
		jz	short loc_46AA2D
		mov	ecx, [ebp-9Ch]
		mov	edx, addr0
		add	edx, ebx
		mov	eax, [ecx]
		cmp	eax, edx
		jz	short loc_46AA39

loc_46AA2D:				; CODE XREF: .text:0046AA17j
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46AA39:				; CODE XREF: .text:0046AA2Bj
		add	ebx, addr0
		add	ebx, [ebp-60h]
		mov	[esi], ebx
		mov	ecx, [ebp-24h]
		dec	ecx		; int
		cmp	ecx, [ebp-10h]
		jg	short loc_46AA89
		push	1		; flags
		push	0		; failed
		push	176h		; itemsize
		lea	eax, [ebp-24h]	; int
		push	eax		; pcount
		mov	edx, [ebp-8Ch]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-8Ch], eax
		mov	esi, [ebp-10h]
		mov	eax, esi
		lea	esi, [eax+esi*2]
		shl	esi, 4
		sub	esi, eax
		shl	esi, 2
		sub	esi, eax
		add	esi, esi
		add	esi, [ebp-8Ch]

loc_46AA89:				; CODE XREF: .text:0046AA4Bj
		mov	edx, [ebp-9Ch]
		cmp	dword ptr [edx+4], 0
		jz	short loc_46AB0D
		mov	ecx, [ebp-24h]
		dec	ecx
		cmp	ecx, [ebp-10h]
		jle	short loc_46AB0D
		inc	dword ptr [ebp-10h]
		mov	eax, [ebp-10h]
		mov	ecx, [ebp-8Ch]
		mov	edx, eax
		push	esi
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		lea	edi, [ecx+eax*2]
		mov	ecx, 5Dh
		rep movsd
		movsw
		mov	eax, [ebp-9Ch]
		pop	esi
		mov	edx, [eax+4]
		cmp	edx, [esi]
		jbe	short loc_46AAE4
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		mov	[esi], eax
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46AAE4:				; CODE XREF: .text:0046AAD2j
		mov	edx, [ebp-10h]
		mov	eax, [ebp-8Ch]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		shl	edx, 4
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		mov	ecx, [ebp-9Ch]
		mov	ecx, [ecx+4]
		mov	[eax+edx*2], ecx
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46AB0D:				; CODE XREF: .text:0046AA93j
					; .text:0046AA9Cj
		mov	dword ptr [ebp-18h], 1
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46AB19:				; CODE XREF: .text:0046A7F2j
		mov	eax, [ebp-2374h]
		and	eax, 1Fh
		cmp	eax, 0Ch
		jnz	short loc_46AB39
		or	dword ptr [ebp-7ECCh], 40000h
		dec	dword ptr [ebp-10h]
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46AB39:				; CODE XREF: .text:0046AB25j
		mov	edx, [ebp-2374h]
		and	edx, 1Fh
		cmp	edx, 0Fh
		jz	short loc_46AB53
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46AB53:				; CODE XREF: .text:0046AB45j
		cmp	dword ptr [esi], 0
		jz	loc_46ADE8
		mov	eax, [ebp-90h]
		or	dword ptr [eax+8], 100000h
		mov	edx, addr0	; int
		cmp	edx, [esi]
		ja	short loc_46ABCF
		mov	ecx, [esi]
		cmp	ecx, addr1
		jnb	short loc_46ABCF
		mov	eax, [esi]
		sub	eax, addr0
		mov	edx, s
		xor	ecx, ecx
		mov	cl, [edx+eax]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jnz	short loc_46ABAB
		mov	eax, [esi]
		sub	eax, addr0
		mov	edx, dword_5E5D74
		or	word ptr [edx+eax*2], 1

loc_46ABAB:				; CODE XREF: .text:0046AB96j
		push	8004h		; type
		mov	eax, addr0
		mov	ecx, [esi]	; int
		add	eax, ebx	; int
		push	ecx		; dest
		push	eax		; from
		mov	edx, [ebp+8]
		add	edx, 8F4h	; int
		push	edx		; pdat
		call	Addjump
		add	esp, 10h
		jmp	short loc_46ABF0
; ---------------------------------------------------------------------------

loc_46ABCF:				; CODE XREF: .text:0046AB71j
					; .text:0046AB7Bj
		mov	ecx, addr0
		push	8004h		; type
		add	ecx, ebx	; int
		push	0		; dest
		push	ecx		; from
		mov	eax, [ebp+8]
		add	eax, 8F4h	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h

loc_46ABF0:				; CODE XREF: .text:0046ABCDj
		mov	edx, addr0
		push	0		; decode
		add	edx, ebx
		push	3		; n
		push	edx		; ip
		mov	ecx, _size
		push	ecx		; size
		mov	eax, addr0
		push	eax		; base
		mov	edx, copy
		push	edx		; copy
		call	Disassembleforward
		add	esp, 18h
		cmp	eax, [esi]
		jnz	loc_46AF25
		add	ebx, [ebp-60h]
		mov	[ebp-50h], ebx
		mov	ecx, dword_5E5D70
		mov	eax, [ebp-50h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		add	edx, [ebp-50h]
		mov	[ebp-54h], edx
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-50h]
		movzx	edx, word ptr [ecx+eax*2]
		and	edx, 70h
		cmp	edx, 30h
		jnz	loc_46AF25
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-50h]
		test	byte ptr [ecx+eax*2], 3
		jnz	loc_46AF25
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-54h]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		cmp	eax, 30h
		jnz	loc_46AF25
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-54h]
		test	byte ptr [edx+ecx*2], 3
		jnz	loc_46AF25
		mov	eax, addr0
		add	eax, [ebp-54h]
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-9Ch], eax
		test	eax, eax
		jz	loc_46AF25
		mov	edx, [ebp-9Ch]
		mov	eax, addr0
		add	eax, [ebp-54h]
		mov	ecx, [edx]
		cmp	ecx, eax
		jnz	loc_46AF25
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+4]
		cmp	ecx, addr0
		jbe	loc_46AF25
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		cmp	edx, addr1
		jnb	loc_46AF25
		mov	ecx, [ebp-9Ch]
		mov	edx, addr0
		add	edx, [ebp-54h]
		mov	eax, [ecx+9]
		cmp	eax, edx
		jz	loc_46AF25
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		sub	eax, addr0
		dec	eax
		mov	[ebp-48h], eax
		jmp	short loc_46AD24
; ---------------------------------------------------------------------------

loc_46AD21:				; CODE XREF: .text:0046AD3Cj
		dec	dword ptr [ebp-48h]

loc_46AD24:				; CODE XREF: .text:0046AD1Fj
		cmp	dword ptr [ebp-48h], 0
		jbe	short loc_46AD3E
		mov	edx, s
		mov	ecx, [ebp-48h]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 1Fh
		dec	eax
		jz	short loc_46AD21

loc_46AD3E:				; CODE XREF: .text:0046AD28j
		mov	edx, s
		mov	ecx, [ebp-48h]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jnz	loc_46AF25
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-48h]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		cmp	eax, 50h
		jnz	loc_46AF25
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	edx, [ebp-3C58h]
		push	edx		; da
		push	0		; dec
		mov	ecx, addr0
		add	ecx, [ebp-48h]
		push	ecx		; ip
		mov	eax, [ebp-5Ch]
		sub	eax, [ebp-48h]
		push	eax		; cmdsize
		mov	edx, copy
		add	edx, [ebp-48h]
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		test	byte ptr [ebp-3C09h], 2
		jz	loc_46AF25
		mov	ecx, [ebp-3BCCh]
		cmp	ecx, [esi]
		jnz	loc_46AF25
		mov	eax, dword_5E5D70
		mov	edx, [ebp-54h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		add	ecx, [ebp-54h]
		dec	ecx
		push	ecx		; rmax
		mov	eax, [ebp-50h]
		push	eax		; rmin
		lea	edx, [ebp-7C58h]
		push	edx		; set
		call	Addrange
		add	esp, 0Ch
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46ADE8:				; CODE XREF: .text:0046AB56j
		cmp	dword ptr [esi+4Eh], 0
		jz	short loc_46AE02
		mov	ecx, [ebp-90h]
		or	dword ptr [ecx+8], 200000h
		mov	dword ptr [ebp-18h], 1

loc_46AE02:				; CODE XREF: .text:0046ADECj
		mov	eax, [ebp-90h]
		cmp	dword ptr [eax+1Eh], 2Ch
		jnz	short loc_46AE67
		mov	edx, [ebp-90h]
		cmp	dword ptr [edx+3Eh], 0
		jz	short loc_46AE67
		mov	ecx, addr0
		xor	eax, eax
		add	ecx, [ebp-4Ch]
		xor	edx, edx
		mov	[esi], ecx
		lea	edi, [esi+0Eh]
		mov	dword ptr [esi+4], 1
		mov	[esi+8], eax
		mov	[ebp-4], edx

loc_46AE39:				; CODE XREF: .text:0046AE4Cj
		xor	eax, eax
		xor	edx, edx
		mov	[edi], eax
		mov	[edi+20h], edx
		inc	dword ptr [ebp-4]
		add	edi, 4
		cmp	dword ptr [ebp-4], 8
		jl	short loc_46AE39
		xor	ecx, ecx
		xor	eax, eax
		mov	[esi+5Ah], ecx
		mov	[esi+152h], eax
		mov	dword ptr [ebp-18h], 1
		jmp	loc_46AF25
; ---------------------------------------------------------------------------

loc_46AE67:				; CODE XREF: .text:0046AE0Cj
					; .text:0046AE18j
		mov	edx, [ebp-90h]
		lea	edi, [esi+0Eh]
		or	dword ptr [edx+8], 2000000h
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_46AE7C:				; CODE XREF: .text:0046AEACj
		mov	eax, [edi]
		mov	edx, [ebp-4]
		or	edx, 28h
		and	eax, 0FFFFFDFFh
		cmp	eax, edx
		jnz	short loc_46AE93
		cmp	dword ptr [edi+20h], 0
		jz	short loc_46AEA2

loc_46AE93:				; CODE XREF: .text:0046AE8Bj
		mov	ecx, [ebp-4]
		mov	al, 1
		shl	al, cl
		not	al
		and	[ebp-7E9Ch], al

loc_46AEA2:				; CODE XREF: .text:0046AE91j
		inc	dword ptr [ebp-4]
		add	edi, 4
		cmp	dword ptr [ebp-4], 8
		jl	short loc_46AE7C
		test	byte ptr [ebp-7ECAh], 1
		jnz	short loc_46AEFA
		or	dword ptr [ebp-7ECCh], 10000h
		mov	edx, [ebp-2340h]
		mov	[ebp-7EC8h], edx
		cmp	dword ptr [ebp-2340h], 0
		jbe	short loc_46AF19
		test	byte ptr [ebp-2340h], 3
		jnz	short loc_46AF19
		or	dword ptr [ebp-7ECCh], 200000h
		mov	ecx, [ebp-2340h]
		shr	ecx, 2
		mov	[ebp-7EACh], ecx
		jmp	short loc_46AF19
; ---------------------------------------------------------------------------

loc_46AEFA:				; CODE XREF: .text:0046AEB5j
		mov	eax, [ebp-7EC8h]
		cmp	eax, [ebp-2340h]
		jz	short loc_46AF19
		mov	dword ptr [ebp-7EC8h], 0FFFFFFFFh
		mov	dword ptr [ebp-18h], 1

loc_46AF19:				; CODE XREF: .text:0046AED4j
					; .text:0046AEDDj ...
		dec	dword ptr [ebp-10h]
		jmp	short loc_46AF25
; ---------------------------------------------------------------------------

loc_46AF1E:				; CODE XREF: .text:0046A7E0j
					; .text:0046A7F8j
		mov	dword ptr [ebp-1Ch], 1

loc_46AF25:				; CODE XREF: .text:0046A808j
					; .text:0046A8B9j ...
		cmp	dword ptr [ebp-10h], 0
		jge	loc_469DA5

loc_46AF2F:				; CODE XREF: .text:00469D9Fj
					; .text:00469DBFj ...
		cmp	dword_5BDD1C, 0
		jnz	short loc_46AF48
		test	byte ptr [ebp-7ECAh], 5
		jnz	short loc_46AF48
		mov	dword ptr [ebp-1Ch], 1

loc_46AF48:				; CODE XREF: .text:0046AF36j
					; .text:0046AF3Fj
		cmp	dword ptr [ebp-28h], 0
		jnz	loc_46B0A3
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_46B068
; ---------------------------------------------------------------------------

loc_46AF63:				; CODE XREF: .text:0046B08Bj
		mov	ebx, [ebp-6Ch]
		cmp	ebx, [ebp-70h]
		ja	loc_46B065

loc_46AF6F:				; CODE XREF: .text:0046B05Fj
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ebx*2], 1
		jz	loc_46B05B
		push	200h		; nbuf
		lea	edx, [ebp-8A4h]
		push	edx		; buf
		mov	ecx, addr0
		add	ecx, ebx
		push	ecx		; dest
		call	Findlocaljumpsto
		mov	[ebp-0Ch], eax
		xor	eax, eax
		mov	[ebp-8], eax
		add	esp, 0Ch
		mov	eax, [ebp-8]
		lea	esi, [ebp-8A4h]
		cmp	eax, [ebp-0Ch]
		jge	short loc_46AFDB

loc_46AFB1:				; CODE XREF: .text:0046AFD9j
		mov	edx, [esi]
		sub	edx, addr0
		push	edx		; value
		lea	ecx, [ebp-7C58h]
		push	ecx		; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jz	short loc_46AFDB
		inc	dword ptr [ebp-8]
		add	esi, 4
		mov	eax, [ebp-8]
		cmp	eax, [ebp-0Ch]
		jl	short loc_46AFB1

loc_46AFDB:				; CODE XREF: .text:0046AFAFj
					; .text:0046AFCBj
		mov	edx, [ebp-8]
		cmp	edx, [ebp-0Ch]
		jl	short loc_46AFEC
		cmp	dword ptr [ebp-0Ch], 200h
		jl	short loc_46B05B

loc_46AFEC:				; CODE XREF: .text:0046AFE1j
		cmp	dword_5BDD1C, 0
		jnz	short loc_46AFFE
		mov	dword ptr [ebp-1Ch], 2
		jmp	short loc_46B065
; ---------------------------------------------------------------------------

loc_46AFFE:				; CODE XREF: .text:0046AFF3j
		mov	ecx, [ebp-24h]
		dec	ecx
		cmp	ecx, [ebp-10h]
		jle	short loc_46B05B
		inc	dword ptr [ebp-10h]
		mov	edx, addr0
		mov	esi, [ebp-10h]
		add	edx, ebx
		mov	eax, esi
		xor	ecx, ecx
		lea	esi, [eax+esi*2]
		shl	esi, 4
		sub	esi, eax
		shl	esi, 2
		sub	esi, eax
		add	esi, esi
		add	esi, [ebp-8Ch]
		xor	eax, eax
		mov	[esi], edx
		mov	dword ptr [esi+4], 1
		mov	[esi+8], ecx

loc_46B03C:				; CODE XREF: .text:0046B04Cj
		xor	edx, edx
		mov	[esi+eax*4+0Eh], edx
		xor	ecx, ecx
		mov	[esi+eax*4+2Eh], ecx
		inc	eax
		cmp	eax, 8
		jl	short loc_46B03C
		xor	eax, eax
		xor	edx, edx
		mov	[esi+5Ah], eax
		mov	[esi+152h], edx

loc_46B05B:				; CODE XREF: .text:0046AF78j
					; .text:0046AFEAj ...
		inc	ebx
		cmp	ebx, [ebp-70h]
		jbe	loc_46AF6F

loc_46B065:				; CODE XREF: .text:0046AF69j
					; .text:0046AFFCj
		inc	dword ptr [ebp-4]

loc_46B068:				; CODE XREF: .text:0046AF5Ej
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_46B091
		lea	ecx, [ebp-70h]
		lea	eax, [ebp-6Ch]
		push	ecx		; rmax
		push	eax		; rmin
		mov	edx, [ebp-4]
		lea	ecx, [ebp-7C58h]
		push	edx		; index
		push	ecx		; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jnz	loc_46AF63

loc_46B091:				; CODE XREF: .text:0046B06Cj
		cmp	dword ptr [ebp-10h], 0
		jl	short loc_46B0A3
		mov	dword ptr [ebp-28h], 1
		jmp	loc_469D91
; ---------------------------------------------------------------------------

loc_46B0A3:				; CODE XREF: .text:0046AF4Cj
					; .text:0046B095j
		cmp	dword ptr [ebp-1Ch], 0
		jnz	loc_46B9CC
		lea	eax, [ebp-7C58h]
		push	eax		; set
		call	Getrangecount
		pop	ecx
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0Ch]
		add	edx, 0FFFFFFFEh
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-4], 0
		jl	loc_46B1FB

loc_46B0D0:				; CODE XREF: .text:0046B1F5j
		lea	ecx, [ebp-70h]
		lea	eax, [ebp-6Ch]
		push	ecx		; rmax
		push	eax		; rmin
		mov	edx, [ebp-4]
		lea	ecx, [ebp-7C58h]
		push	edx		; index
		push	ecx		; set
		call	Getrangebyindex
		add	esp, 10h
		lea	eax, [ebp-78h]
		push	eax		; rmax
		lea	edx, [ebp-74h]
		push	edx		; rmin
		mov	ecx, [ebp-4]
		inc	ecx
		push	ecx		; index
		lea	eax, [ebp-7C58h]
		push	eax		; set
		call	Getrangebyindex
		add	esp, 10h
		mov	ebx, [ebp-70h]
		inc	ebx

loc_46B10B:				; CODE XREF: .text:0046B162j
					; .text:0046B16Bj ...
		cmp	ebx, [ebp-5Ch]
		jnb	loc_46B1D2

loc_46B114:				; CODE XREF: .text:0046B1CCj
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+ebx]
		and	edx, 1Fh
		cmp	edx, 10h
		jg	short loc_46B13D
		jz	short loc_46B164
		sub	edx, 1
		jb	short loc_46B14C
		sub	edx, 2
		jz	short loc_46B182
		dec	edx
		sub	edx, 0Ah
		jb	short loc_46B164
		jmp	loc_46B1D2
; ---------------------------------------------------------------------------

loc_46B13D:				; CODE XREF: .text:0046B124j
		sub	edx, 1Ch
		jz	short loc_46B193
		sub	edx, 3
		jz	short loc_46B164
		jmp	loc_46B1D2
; ---------------------------------------------------------------------------

loc_46B14C:				; CODE XREF: .text:0046B12Bj
		mov	ecx, copy
		cmp	byte ptr [ecx+ebx], 0
		jnz	short loc_46B1D2
		mov	eax, s
		mov	byte ptr [eax+ebx], 3
		inc	ebx
		jmp	short loc_46B10B
; ---------------------------------------------------------------------------

loc_46B164:				; CODE XREF: .text:0046B126j
					; .text:0046B136j ...
		inc	ebx
		jmp	short loc_46B168
; ---------------------------------------------------------------------------

loc_46B167:				; CODE XREF: .text:0046B17Ej
		inc	ebx

loc_46B168:				; CODE XREF: .text:0046B165j
		cmp	ebx, [ebp-5Ch]
		jnb	short loc_46B10B
		mov	edx, s
		xor	ecx, ecx
		mov	cl, [edx+ebx]
		and	ecx, 1Fh
		cmp	ecx, 2
		jz	short loc_46B167
		jmp	short loc_46B10B
; ---------------------------------------------------------------------------

loc_46B182:				; CODE XREF: .text:0046B130j
		mov	eax, copy
		cmp	byte ptr [eax+ebx], 0
		jnz	short loc_46B1D2
		inc	ebx
		jmp	loc_46B10B
; ---------------------------------------------------------------------------

loc_46B193:				; CODE XREF: .text:0046B140j
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+ebx*2]
		and	ecx, 73h
		cmp	ecx, 30h
		jnz	short loc_46B1D2
		inc	ebx
		jmp	short loc_46B1A9
; ---------------------------------------------------------------------------

loc_46B1A8:				; CODE XREF: .text:0046B1C0j
		inc	ebx

loc_46B1A9:				; CODE XREF: .text:0046B1A6j
		cmp	ebx, [ebp-5Ch]
		jnb	loc_46B10B
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+ebx]
		and	edx, 1Fh
		dec	edx
		jz	short loc_46B1A8
		jmp	loc_46B10B
; ---------------------------------------------------------------------------
		jmp	short loc_46B1D2
; ---------------------------------------------------------------------------
		cmp	ebx, [ebp-5Ch]
		jb	loc_46B114

loc_46B1D2:				; CODE XREF: .text:0046B10Ej
					; .text:0046B138j ...
		cmp	ebx, [ebp-74h]
		jnz	short loc_46B1EE
		mov	ecx, [ebp-74h]
		push	ecx		; rmax
		mov	eax, [ebp-70h]
		push	eax		; rmin
		lea	edx, [ebp-7C58h]
		push	edx		; set
		call	Addrange
		add	esp, 0Ch

loc_46B1EE:				; CODE XREF: .text:0046B1D5j
		dec	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0
		jge	loc_46B0D0

loc_46B1FB:				; CODE XREF: .text:0046B0CAj
		cmp	dword ptr [ebp-3Ch], 4
		jle	loc_46B2AD
		cmp	dword ptr [ebp-3Ch], 400h
		jle	short loc_46B275
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-6Ch]
		test	byte ptr [ecx+eax*2+1],	1
		jnz	short loc_46B275
		cmp	dword_5BDD18, 0
		jz	short loc_46B247
		push	offset aLargeStructure ; "  Large structure passed on stack or ES"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	edx, addr0
		add	edx, [ebp-6Ch]
		push	edx		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_46B247:				; CODE XREF: .text:0046B225j
		push	(offset	aLargeStructure+4) ; src
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	ecx, addr0
		add	ecx, [ebp-6Ch]
		push	ecx		; _addr
		call	QuickinsertnameW
		mov	eax, dword_5E5D74
		mov	edx, [ebp-6Ch]
		add	esp, 0Ch
		or	word ptr [eax+edx*2], 100h

loc_46B275:				; CODE XREF: .text:0046B20Cj
					; .text:0046B21Cj
		mov	ecx, [ebp-3Ch]
		dec	ecx
		test	ecx, ecx
		jns	short loc_46B280
		add	ecx, 3

loc_46B280:				; CODE XREF: .text:0046B27Bj
		sar	ecx, 2
		mov	[ebp-0A0h], ecx
		mov	eax, [ebp-7EA0h]
		cmp	eax, [ebp-0A0h]
		jle	short loc_46B29F
		lea	edx, [ebp-7EA0h]
		jmp	short loc_46B2A5
; ---------------------------------------------------------------------------

loc_46B29F:				; CODE XREF: .text:0046B295j
		lea	edx, [ebp-0A0h]

loc_46B2A5:				; CODE XREF: .text:0046B29Dj
		mov	eax, [edx]
		mov	[ebp-7EA0h], eax

loc_46B2AD:				; CODE XREF: .text:0046B1FFj
		lea	ecx, [ebp-7C58h]
		push	ecx		; set
		call	Getrangecount
		pop	ecx
		dec	eax
		jnz	short loc_46B306
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_46B306
		lea	eax, [ebp-70h]
		lea	edx, [ebp-6Ch]
		push	eax		; rmax
		push	edx		; rmin
		lea	ecx, [ebp-7C58h]
		push	0		; index
		push	ecx		; set
		call	Getrangebyindex
		add	esp, 10h
		mov	eax, [ebp-6Ch]
		cmp	eax, [ebp-4Ch]
		jnz	short loc_46B306
		mov	edx, [ebp-70h]
		sub	edx, [ebp-6Ch]
		inc	edx
		mov	[ebp-7ED0h], edx
		cmp	dword ptr [ebp-68h], 0
		jz	short loc_46B306
		mov	ecx, [ebp-68h]
		sub	ecx, [ebp-7ED4h]
		mov	[ebp-7EC0h], ecx

loc_46B306:				; CODE XREF: .text:0046B2BBj
					; .text:0046B2C1j ...
		lea	eax, [ebp-7C58h]
		push	eax		; set
		call	Getrangecount
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword_5BDD1C, 0
		jnz	short loc_46B334
		cmp	dword ptr [ebp-0Ch], 1
		jg	short loc_46B32D
		mov	edx, [ebp-6Ch]
		cmp	edx, [ebp-4Ch]
		jz	short loc_46B334

loc_46B32D:				; CODE XREF: .text:0046B323j
		mov	dword ptr [ebp-1Ch], 1

loc_46B334:				; CODE XREF: .text:0046B31Dj
					; .text:0046B32Bj
		xor	edi, edi
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_46B395
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_46B38A
; ---------------------------------------------------------------------------

loc_46B343:				; CODE XREF: .text:0046B393j
		mov	edx, [ebp-4]
		push	edx		; index
		lea	ecx, [ebp-7C9Ch]
		push	ecx		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	byte ptr [esi+0Bh], 2
		jz	short loc_46B387
		test	byte ptr [esi+1Eh], 20h
		jz	short loc_46B387
		cmp	dword ptr [esi+1Eh], 2Ch
		jz	short loc_46B387
		mov	eax, [esi+1Eh]
		mov	[ebp+edi*8-82D4h], eax
		mov	edx, [esi+3Eh]
		mov	[ebp+edi*8-82D0h], edx
		inc	edi
		cmp	edi, 80h
		jge	short loc_46B395

loc_46B387:				; CODE XREF: .text:0046B35Cj
					; .text:0046B362j ...
		inc	dword ptr [ebp-4]

loc_46B38A:				; CODE XREF: .text:0046B341j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-7C9Ch]
		jl	short loc_46B343

loc_46B395:				; CODE XREF: .text:0046B33Aj
					; .text:0046B385j
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_46B9BA
; ---------------------------------------------------------------------------

loc_46B39F:				; CODE XREF: .text:0046B9C6j
		lea	edx, [ebp-70h]
		lea	ecx, [ebp-6Ch]
		push	edx		; rmax
		push	ecx		; rmin
		mov	eax, [ebp-4]
		lea	edx, [ebp-7C58h]
		push	eax		; index
		push	edx		; set
		call	Getrangebyindex
		add	esp, 10h
		mov	ebx, [ebp-6Ch]
		cmp	ebx, [ebp-70h]
		ja	loc_46B95F

loc_46B3C6:				; CODE XREF: .text:0046B954j
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+ebx]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jnz	loc_46B950
		mov	ecx, dword_5E5D74
		movzx	eax, word ptr [ecx+ebx*2]
		and	eax, 70h
		cmp	eax, 40h
		jz	short loc_46B404
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+ebx*2]
		and	ecx, 70h
		cmp	ecx, 10h
		jnz	loc_46B4DD

loc_46B404:				; CODE XREF: .text:0046B3ECj
		push	0		; subaddr
		mov	eax, addr0
		add	eax, ebx
		push	eax		; _addr
		lea	edx, [ebp-7C9Ch]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	loc_46B695
		movzx	eax, word ptr [esi+0Ch]
		and	eax, 3
		cmp	eax, 2
		jz	short loc_46B443
		movzx	edx, word ptr [esi+0Ch]
		and	edx, 0Ch
		cmp	edx, 8
		jnz	loc_46B695

loc_46B443:				; CODE XREF: .text:0046B431j
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-2388h]
		push	0		; mode
		push	ecx		; da
		mov	eax, addr0
		add	eax, ebx
		push	0		; dec
		push	eax		; ip
		mov	ecx, copy
		mov	edx, [ebp-5Ch]
		sub	edx, ebx
		add	ecx, ebx
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		mov	byte ptr [ebp-85h], 0
		movzx	eax, word ptr [esi+0Ch]
		and	eax, 3
		add	esp, 20h
		cmp	eax, 2
		jnz	short loc_46B494
		test	byte ptr [ebp-2370h], 3
		jz	short loc_46B494
		or	byte ptr [ebp-85h], 1

loc_46B494:				; CODE XREF: .text:0046B482j
					; .text:0046B48Bj
		movzx	edx, word ptr [esi+0Ch]
		and	edx, 0Ch
		cmp	edx, 8
		jnz	short loc_46B4B0
		test	byte ptr [ebp-2370h], 0Ch
		jz	short loc_46B4B0
		or	byte ptr [ebp-85h], 2

loc_46B4B0:				; CODE XREF: .text:0046B49Ej
					; .text:0046B4A7j
		cmp	byte ptr [ebp-85h], 0
		jz	loc_46B695
		lea	ecx, [ebp-85h]
		push	1		; datasize
		push	ecx		; data
		mov	eax, addr0
		add	eax, ebx
		push	42h		; type
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_46B695
; ---------------------------------------------------------------------------

loc_46B4DD:				; CODE XREF: .text:0046B3FEj
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+ebx*2]
		and	ecx, 70h
		cmp	ecx, 20h
		jnz	loc_46B695
		push	0		; subaddr
		mov	eax, addr0
		add	eax, ebx
		push	eax		; _addr
		lea	edx, [ebp-7C9Ch]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	loc_46B674
		mov	eax, [esi]
		mov	[ebp-7E94h], eax
		mov	dword ptr [ebp-7E90h], 1
		mov	edx, [esi+8]
		mov	[ebp-7E8Ch], edx
		mov	ecx, [esi+0Eh]
		mov	[ebp-7E88h], ecx
		mov	eax, [esi+2Eh]
		mov	[ebp-7E84h], eax
		mov	edx, [esi+0EEh]
		mov	[ebp-7E80h], edx
		cmp	dword ptr [ebp-7E80h], 0
		jle	short loc_46B578
		mov	ecx, [ebp-7E80h]
		lea	eax, [esi+0F2h]
		shl	ecx, 2
		lea	edx, [ebp-7E7Ch]
		push	ecx		; n
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_46B578:				; CODE XREF: .text:0046B556j
		mov	ecx, [esi+16Eh]
		mov	[ebp-7E1Ch], ecx
		mov	eax, [esi+172h]
		mov	[ebp-7E18h], eax
		mov	edx, [ebp-7E1Ch]
		and	edx, 7Fh
		cmp	edx, 20h
		jz	loc_46B661
		cmp	dword_5BDD1C, 0
		jz	loc_46B661
		push	esi
		push	edi
		lea	edi, [ebp-7E14h]
		mov	ecx, 5Dh
		rep movsd
		movsw
		pop	edi
		pop	esi
		lea	eax, [ebp-7E14h]
		lea	edx, [ebp-2388h]
		push	eax		; predict
		push	0		; reg
		push	130h		; mode
		push	edx		; da
		mov	ecx, addr0
		push	0		; dec
		add	ecx, ebx
		mov	edx, copy
		push	ecx		; ip
		mov	eax, [ebp-5Ch]
		sub	eax, ebx
		add	edx, ebx
		push	eax		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-60h], eax
		cmp	dword ptr [ebp-60h], 0
		jz	short loc_46B661
		cmp	dword ptr [ebp-235Ch], 0
		jnz	short loc_46B661
		mov	ecx, [ebp-2374h]
		and	ecx, 1Fh
		cmp	ecx, 0Ch
		jnz	short loc_46B661
		cmp	dword ptr [ebp-2348h], 0
		jz	short loc_46B63A
		mov	dword ptr [ebp-7E1Ch], 20h
		mov	eax, [ebp-2348h]
		mov	[ebp-7E18h], eax
		jmp	short loc_46B661
; ---------------------------------------------------------------------------

loc_46B63A:				; CODE XREF: .text:0046B620j
		mov	edx, [ebp-7DC6h]
		and	edx, 0FFFFFF7Fh
		cmp	edx, 20h
		jnz	short loc_46B661
		mov	dword ptr [ebp-7E1Ch], 20h
		mov	ecx, [ebp-7DC2h]
		mov	[ebp-7E18h], ecx

loc_46B661:				; CODE XREF: .text:0046B59Cj
					; .text:0046B5A9j ...
		lea	eax, [ebp-7E94h]
		push	eax		; item
		mov	edx, [ebp+14h]
		push	edx		; sd
		call	Addsorteddata
		add	esp, 8

loc_46B674:				; CODE XREF: .text:0046B510j
		lea	ecx, [ebp-7C9Ch]
		mov	eax, addr0
		add	eax, ebx
		push	ecx
		push	eax
		mov	edx, addr0
		add	edx, [ebp-6Ch]
		push	edx
		call	loc_4692F0
		add	esp, 0Ch

loc_46B695:				; CODE XREF: .text:0046B421j
					; .text:0046B43Dj ...
		mov	ecx, s
		test	byte ptr [ecx+ebx], 60h
		jnz	loc_46B950
		push	0		; subaddr
		mov	eax, addr0
		add	eax, ebx
		push	eax		; _addr
		lea	edx, [ebp-7C9Ch]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-90h], eax
		cmp	dword ptr [ebp-90h], 0
		jz	loc_46B950
		push	12h		; n
		push	0		; c
		lea	ecx, [ebp-0AB8h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebp-90h]
		cmp	dword ptr [eax+1Eh], 2Ch
		jnz	short loc_46B719
		mov	edx, [ebp-90h]
		cmp	dword ptr [edx+3Eh], 0
		jg	short loc_46B719
		mov	ecx, [ebp-90h]
		mov	eax, [ecx+3Eh]
		mov	[ebp-0AB2h], eax
		or	word ptr [ebp-0AB4h], 200h
		jmp	loc_46B79E
; ---------------------------------------------------------------------------

loc_46B719:				; CODE XREF: .text:0046B6EEj
					; .text:0046B6FAj
		xor	edx, edx
		mov	[ebp-8], edx
		lea	eax, [ebp-82D4h]
		cmp	edi, [ebp-8]
		jle	short loc_46B741

loc_46B729:				; CODE XREF: .text:0046B73Fj
		mov	edx, [eax]
		mov	ecx, [ebp-90h]
		cmp	edx, [ecx+1Eh]
		jz	short loc_46B741
		inc	dword ptr [ebp-8]
		add	eax, 8
		cmp	edi, [ebp-8]
		jg	short loc_46B729

loc_46B741:				; CODE XREF: .text:0046B727j
					; .text:0046B734j
		cmp	edi, [ebp-8]
		jle	short loc_46B781
		mov	eax, [ebp-90h]
		mov	ecx, [ebp-8]
		mov	edx, [eax+3Eh]
		sub	edx, [ebp+ecx*8-82D0h]
		test	edx, edx
		jg	short loc_46B781
		mov	eax, [ebp-90h]
		mov	ecx, [ebp-8]
		mov	edx, [eax+3Eh]
		sub	edx, [ebp+ecx*8-82D0h]
		mov	[ebp-0AB2h], edx
		or	word ptr [ebp-0AB4h], 400h
		jmp	short loc_46B79E
; ---------------------------------------------------------------------------

loc_46B781:				; CODE XREF: .text:0046B744j
					; .text:0046B75Bj
		mov	eax, [ebp-90h]
		test	byte ptr [eax+0Bh], 2
		jz	short loc_46B79E
		xor	edx, edx
		mov	[ebp-0AB2h], edx
		or	word ptr [ebp-0AB4h], 400h

loc_46B79E:				; CODE XREF: .text:0046B714j
					; .text:0046B77Fj ...
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_46B7C8
		mov	ecx, [ebp-90h]
		cmp	dword ptr [ecx+22h], 2Ch
		jnz	short loc_46B7C8
		mov	eax, [ebp-90h]
		mov	edx, [eax+42h]
		mov	[ebp-0AAEh], edx
		or	word ptr [ebp-0AB4h], 100h

loc_46B7C8:				; CODE XREF: .text:0046B7A2j
					; .text:0046B7AEj
		mov	ecx, [ebp-90h]
		mov	eax, [ecx+16Eh]
		and	eax, 0FFFFFF6Fh
		cmp	eax, 20h
		jnz	loc_46B8C0
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_46B83A
		mov	edx, [ebp-90h]
		mov	ecx, [edx+172h]
		mov	[ebp-0AAAh], ecx
		or	word ptr [ebp-0AB4h], 20h
		mov	eax, [ebp-90h]
		test	byte ptr [eax+16Eh], 10h
		jz	short loc_46B819
		or	word ptr [ebp-0AB4h], 10h

loc_46B819:				; CODE XREF: .text:0046B80Fj
		mov	edx, [ebp-90h]
		test	byte ptr [edx+16Eh], 80h
		jz	loc_46B920
		or	word ptr [ebp-0AB4h], 80h
		jmp	loc_46B920
; ---------------------------------------------------------------------------

loc_46B83A:				; CODE XREF: .text:0046B7E6j
		mov	ecx, [ebp-90h]
		push	edi
		mov	esi, ecx
		lea	edi, [ebp-7E14h]
		mov	ecx, 5Dh
		lea	eax, [ebp-7E14h]
		rep movsd
		movsw
		pop	edi
		push	eax		; predict
		push	0		; reg
		lea	edx, [ebp-2388h]
		push	30h		; mode
		push	edx		; da
		mov	ecx, addr0
		push	0		; dec
		add	ecx, ebx
		mov	edx, copy
		push	ecx		; ip
		mov	eax, [ebp-5Ch]
		sub	eax, ebx
		add	edx, ebx
		push	eax		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	ecx, [ebp-7CA2h]
		mov	[ebp-0AAAh], ecx
		or	word ptr [ebp-0AB4h], 20h
		test	byte ptr [ebp-7CA6h], 10h
		jz	short loc_46B8AC
		or	word ptr [ebp-0AB4h], 10h

loc_46B8AC:				; CODE XREF: .text:0046B8A2j
		test	byte ptr [ebp-7CA6h], 80h
		jz	short loc_46B920
		or	word ptr [ebp-0AB4h], 80h
		jmp	short loc_46B920
; ---------------------------------------------------------------------------

loc_46B8C0:				; CODE XREF: .text:0046B7DCj
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_46B920
		mov	edx, eax
		and	edx, 0FFFFFFF8h
		cmp	edx, 28h
		jnz	short loc_46B920
		and	ax, 7
		mov	ecx, [ebp-90h]
		or	ax, 28h
		mov	edx, [ecx+172h]
		mov	[ebp-0AAAh], edx
		or	[ebp-0AB4h], ax
		mov	eax, [ebp-90h]
		test	byte ptr [eax+16Eh], 10h
		jz	short loc_46B908
		or	word ptr [ebp-0AB4h], 10h

loc_46B908:				; CODE XREF: .text:0046B8FEj
		mov	ecx, [ebp-90h]
		test	byte ptr [ecx+16Eh], 80h
		jz	short loc_46B920
		or	word ptr [ebp-0AB4h], 80h

loc_46B920:				; CODE XREF: .text:0046B826j
					; .text:0046B835j ...
		cmp	word ptr [ebp-0AB4h], 0
		jz	short loc_46B950
		mov	eax, addr0
		lea	edx, [ebp-0AB8h] ; int
		add	eax, ebx	; int
		mov	[ebp-0AB8h], eax
		push	edx		; data
		mov	ecx, [ebp+8]
		add	ecx, 950h	; int
		push	ecx		; pdat
		call	Addsimpledata
		add	esp, 8

loc_46B950:				; CODE XREF: .text:0046B3D6j
					; .text:0046B69Fj ...
		inc	ebx
		cmp	ebx, [ebp-70h]
		jbe	loc_46B3C6
		jmp	short loc_46B95F
; ---------------------------------------------------------------------------

loc_46B95C:				; CODE XREF: .text:0046B970j
		dec	dword ptr [ebp-70h]

loc_46B95F:				; CODE XREF: .text:0046B3C0j
					; .text:0046B95Aj
		mov	eax, s
		mov	edx, [ebp-70h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 1Fh
		dec	ecx
		jz	short loc_46B95C
		mov	eax, [ebp-70h]
		cmp	eax, [ebp-6Ch]
		jbe	short loc_46B9B7
		mov	edx, s
		mov	ecx, [ebp-6Ch]
		or	byte ptr [edx+ecx], 20h
		inc	dword ptr [ebp-6Ch]
		mov	eax, [ebp-6Ch]
		cmp	eax, [ebp-70h]
		jnb	short loc_46B9AA

loc_46B992:				; CODE XREF: .text:0046B9A8j
		mov	edx, s
		mov	ecx, [ebp-6Ch]
		or	byte ptr [edx+ecx], 60h
		inc	dword ptr [ebp-6Ch]
		mov	eax, [ebp-6Ch]
		cmp	eax, [ebp-70h]
		jb	short loc_46B992

loc_46B9AA:				; CODE XREF: .text:0046B990j
		mov	edx, s
		mov	ecx, [ebp-70h]
		or	byte ptr [edx+ecx], 40h

loc_46B9B7:				; CODE XREF: .text:0046B978j
		inc	dword ptr [ebp-4]

loc_46B9BA:				; CODE XREF: .text:0046B39Aj
		mov	eax, [ebp-4]
		cmp	eax, [ebp-0Ch]
		jge	short loc_46B9CC
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_46B39F

loc_46B9CC:				; CODE XREF: .text:0046B0A7j
					; .text:0046B9C0j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_46B9E0
		mov	edx, [ebp-1Ch]
		mov	[ebp-14h], edx
		inc	dword ptr [ebp-4Ch]
		jmp	loc_469AC9
; ---------------------------------------------------------------------------

loc_46B9E0:				; CODE XREF: .text:0046B9D0j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_46B9ED
		mov	byte ptr [ebp-7E9Ch], 0

loc_46B9ED:				; CODE XREF: .text:0046B9E4j
		test	byte ptr [ebp-7ECAh], 1
		jz	short loc_46BA19
		cmp	dword ptr [ebp-7EC8h], 0FFFFFFFFh
		jnz	short loc_46BA19
		and	dword ptr [ebp-7ECCh], 0F81EFFFFh
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-7EC8h], ecx
		mov	[ebp-7EACh], eax

loc_46BA19:				; CODE XREF: .text:0046B9F4j
					; .text:0046B9FDj
		cmp	dword ptr [ebp-7ECCh], 0
		jnz	short loc_46BA2B
		cmp	byte ptr [ebp-7E9Ch], 0
		jz	short loc_46BA3F

loc_46BA2B:				; CODE XREF: .text:0046BA20j
		lea	edx, [ebp-7ED4h]
		push	edx		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8

loc_46BA3F:				; CODE XREF: .text:0046BA29j
		inc	dword ptr [ebp-4Ch]
		jmp	loc_469AC9
; ---------------------------------------------------------------------------

loc_46BA47:				; CODE XREF: .text:00469B1Aj
		mov	ecx, [ebp+8]
		add	ecx, 8F4h
		push	ecx		; pdat
		call	Sortjumpdata
		pop	ecx
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		mov	[ebp-4Ch], eax
		mov	edx, [ebp-4Ch]
		cmp	edx, [ebp-5Ch]
		jnb	loc_46BBC7

loc_46BA6F:				; CODE XREF: .text:0046BBC1j
		mov	ecx, s
		mov	eax, [ebp-4Ch]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 60h
		cmp	edx, 20h
		jnz	short loc_46BA8B
		inc	dword_5E5D90

loc_46BA8B:				; CODE XREF: .text:0046BA83j
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-4Ch]
		movzx	edx, word ptr [ecx+eax*2]
		and	edx, 70h
		cmp	edx, 20h
		jz	short loc_46BAB9
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-4Ch]
		movzx	edx, word ptr [ecx+eax*2]
		and	edx, 70h
		cmp	edx, 30h
		jnz	loc_46BBB8

loc_46BAB9:				; CODE XREF: .text:0046BA9Ej
		push	0		; subaddr
		mov	ecx, addr0
		add	ecx, [ebp-4Ch]
		push	ecx		; _addr
		mov	eax, [ebp+14h]
		push	eax		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-94h], eax
		cmp	dword ptr [ebp-94h], 0
		jz	loc_46BBB8
		mov	edx, [ebp-94h]
		mov	ecx, [edx+78h]
		and	ecx, 7Fh
		cmp	ecx, 20h
		jnz	loc_46BBB8
		mov	eax, addr0
		add	eax, [ebp-4Ch]
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-9Ch], eax
		cmp	dword ptr [ebp-9Ch], 0
		jz	short loc_46BB3E
		mov	edx, [ebp-9Ch]
		mov	eax, addr0
		add	eax, [ebp-4Ch]
		mov	ecx, [edx]
		cmp	ecx, eax
		jnz	short loc_46BB3E
		mov	edx, [ebp-9Ch]
		cmp	dword ptr [edx+4], 0
		jnz	short loc_46BB3E
		add	dword ptr [ebp-9Ch], 9

loc_46BB3E:				; CODE XREF: .text:0046BB15j
					; .text:0046BB29j ...
		cmp	dword ptr [ebp-9Ch], 0
		jz	short loc_46BB70
		mov	ecx, [ebp-9Ch]
		mov	edx, addr0
		add	edx, [ebp-4Ch]
		mov	eax, [ecx]
		cmp	eax, edx
		jnz	short loc_46BB70
		mov	ecx, [ebp-9Ch]
		mov	edx, [ebp-94h]
		mov	eax, [ecx+4]
		cmp	eax, [edx+7Ch]
		jz	short loc_46BBB8

loc_46BB70:				; CODE XREF: .text:0046BB45j
					; .text:0046BB5Aj
		mov	eax, dword_5E5D74
		mov	edx, [ebp-4Ch]
		mov	ecx, 5
		movzx	eax, word ptr [eax+edx*2]
		and	eax, 70h
		cmp	eax, 20h
		jz	short loc_46BB8C
		add	ecx, 0FFFFFFFCh

loc_46BB8C:				; CODE XREF: .text:0046BB87j
		or	ecx, 8000h
		push	ecx		; type
		mov	edx, [ebp-94h]
		mov	ecx, [edx+7Ch]	; int
		push	ecx		; dest
		mov	eax, addr0
		add	eax, [ebp-4Ch]	; int
		push	eax		; from
		mov	edx, [ebp+8]
		add	edx, 8F4h	; int
		push	edx		; pdat
		call	Addjump
		add	esp, 10h

loc_46BBB8:				; CODE XREF: .text:0046BAB3j
					; .text:0046BADEj ...
		inc	dword ptr [ebp-4Ch]
		mov	ecx, [ebp-4Ch]
		cmp	ecx, [ebp-5Ch]
		jb	loc_46BA6F

loc_46BBC7:				; CODE XREF: .text:0046BA69j
		mov	eax, [ebp+8]
		add	eax, 8F4h
		push	eax		; pdat
		call	Sortjumpdata
		pop	ecx
		mov	edx, addr0
		push	edx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-9Ch], eax
		cmp	dword ptr [ebp-9Ch], 0
		jz	loc_46BCD0
		jmp	loc_46BCB0
; ---------------------------------------------------------------------------

loc_46BBFB:				; CODE XREF: .text:0046BCCAj
		mov	ecx, [ebp-9Ch]
		xor	eax, eax
		mov	al, [ecx+8]
		and	eax, 0Fh
		cmp	eax, 4
		jnz	loc_46BCA9
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+4]
		cmp	ecx, addr0
		jb	short loc_46BC47
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		cmp	edx, addr1
		jnb	short loc_46BC47
		mov	ecx, [ebp-9Ch]
		mov	edx, [ebp-9Ch]
		mov	eax, [ecx+9]
		cmp	eax, [edx]
		jnz	short loc_46BC64

loc_46BC47:				; CODE XREF: .text:0046BC21j
					; .text:0046BC32j
		push	offset aRetIsUsedAsAJu ; "RET is used as a jump"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-0AA4h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		jmp	short loc_46BC8F
; ---------------------------------------------------------------------------

loc_46BC64:				; CODE XREF: .text:0046BC45j
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		sub	edx, addr0
		push	edx
		push	offset aJumpToX	; "Jump	to <+%X>"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-0AA4h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_46BC8F:				; CODE XREF: .text:0046BC62j
		lea	eax, [ebp-0AA4h]
		push	eax		; s
		push	31h		; type
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46BCA9:				; CODE XREF: .text:0046BC0Cj
		add	dword ptr [ebp-9Ch], 9

loc_46BCB0:				; CODE XREF: .text:0046BBF6j
		mov	eax, [ebp-9Ch]
		cmp	byte ptr [eax+8], 0
		jz	short loc_46BCD0
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx]
		cmp	ecx, addr1
		jb	loc_46BBFB

loc_46BCD0:				; CODE XREF: .text:00469BBCj
					; .text:0046BBF0j ...
		lea	eax, [ebp-7C9Ch]
		push	eax		; sd
		call	Destroysorteddata
		pop	ecx
		mov	edx, [ebp-8Ch]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-40h]

loc_46BCED:				; CODE XREF: .text:0046992Aj
					; .text:00469A4Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		