.code

loc_480D40:				; CODE XREF: .text:004841BAp
					; .text:0048454Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD88h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	dword ptr [ebp-1Ch], 18h
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+4]
		mov	[ebp-20h], edx
		mov	ecx, [ebp-20h]
		cmp	ecx, [ebp-1Ch]
		jge	short loc_480D6E
		lea	eax, [ebp-20h]
		jmp	short loc_480D71
; ---------------------------------------------------------------------------

loc_480D6E:				; CODE XREF: .text:00480D67j
		lea	eax, [ebp-1Ch]

loc_480D71:				; CODE XREF: .text:00480D6Cj
		mov	edx, [eax]
		test	ebx, ebx
		mov	[ebp-0Ch], edx
		jz	loc_480E83
		xor	ecx, ecx
		mov	[ebx], ecx
		mov	dword ptr [ebx+4], 1
		mov	eax, [ebp+8]
		test	byte ptr [eax],	1
		jz	short loc_480D9F
		mov	dword ptr [ebx+8], 10000h
		xor	edx, edx
		mov	[ebx+0Ch], edx
		jmp	short loc_480DC8
; ---------------------------------------------------------------------------

loc_480D9F:				; CODE XREF: .text:00480D8Fj
		mov	ecx, [ebp+8]
		test	byte ptr [ecx],	2
		jz	short loc_480DBE
		mov	dword ptr [ebx+8], 10000h
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+4]
		shl	edx, 2
		mov	[ebx+0Ch], edx
		jmp	short loc_480DC8
; ---------------------------------------------------------------------------

loc_480DBE:				; CODE XREF: .text:00480DA5j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+8], ecx
		mov	[ebx+0Ch], eax

loc_480DC8:				; CODE XREF: .text:00480D9Dj
					; .text:00480DBCj
		mov	edx, [ebp+8]
		test	byte ptr [edx],	8
		jnz	short loc_480DDC
		or	dword ptr [ebx+8], 200000h
		jmp	loc_480E64
; ---------------------------------------------------------------------------

loc_480DDC:				; CODE XREF: .text:00480DCEj
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	al, [ecx+4]
		mov	edx, [ebp+8]
		mov	ecx, [edx+eax*8+2]
		add	ecx, dword_5E9E20
		mov	[ebp-14h], ecx
		push	offset aFormat	; "FORMAT"
		mov	esi, [ebp-14h]
		add	esi, 4
		push	esi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_480E15
		or	dword ptr [ebx+8], 400000h
		jmp	short loc_480E64
; ---------------------------------------------------------------------------

loc_480E15:				; CODE XREF: .text:00480E0Aj
		push	offset aWformat	; "WFORMAT"
		push	esi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_480E30
		or	dword ptr [ebx+8], 800000h
		jmp	short loc_480E64
; ---------------------------------------------------------------------------

loc_480E30:				; CODE XREF: .text:00480E25j
		push	offset aScan	; s2
		push	esi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_480E4B
		or	dword ptr [ebx+8], 1000000h
		jmp	short loc_480E64
; ---------------------------------------------------------------------------

loc_480E4B:				; CODE XREF: .text:00480E40j
		push	offset off_542940 ; s2
		push	esi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_480E64
		or	dword ptr [ebx+8], 2000000h

loc_480E64:				; CODE XREF: .text:00480DD7j
					; .text:00480E13j ...
		test	dword ptr [ebx+8], 7E00000h
		jz	short loc_480E78
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+4]
		mov	[ebx+28h], edx

loc_480E78:				; CODE XREF: .text:00480E6Bj
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		shr	eax, 8
		mov	[ebx+38h], al

loc_480E83:				; CODE XREF: .text:00480D78j
		xor	edx, edx
		mov	[ebp-18h], edx
		cmp	dword ptr [ebp+14h], 0
		jz	loc_481526
		mov	eax, [ebp+8]
		xor	ecx, ecx
		mov	dword_5EBC68, ecx
		xor	esi, esi
		lea	edx, [eax+0Eh]
		mov	[ebp-28h], edx
		mov	ecx, [ebp+14h]
		lea	eax, [ecx+8]
		mov	[ebp-24h], eax
		cmp	esi, [ebp-0Ch]
		jge	loc_481526

loc_480EB7:				; CODE XREF: .text:00481520j
		mov	edx, [ebp+8]
		xor	ecx, ecx
		mov	cl, [edx+4]
		cmp	esi, ecx
		jge	loc_48118F
		mov	[ebp-4], esi
		mov	eax, [ebp-24h]
		mov	ecx, [ebp-4]
		mov	edx, eax
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	eax, [ebp+14h]
		lea	eax, [eax+ecx*4-444h]
		jmp	short loc_480EF3
; ---------------------------------------------------------------------------

loc_480EEB:				; CODE XREF: .text:00480F02j
		dec	dword ptr [ebp-4]
		add	eax, 0FFFFFBB4h

loc_480EF3:				; CODE XREF: .text:00480EE9j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_480F04
		cmp	dword ptr [eax], 0
		jz	short loc_480F04
		mov	ecx, [eax]
		cmp	ecx, [edx]
		jz	short loc_480EEB

loc_480F04:				; CODE XREF: .text:00480EF7j
					; .text:00480EFCj
		mov	[ebp-8], esi
		mov	edx, [ebp-24h]
		mov	eax, [ebp-8]
		mov	edi, edx
		mov	edx, eax
		shl	eax, 4
		mov	ecx, [ebp+14h]
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		lea	eax, [ecx+eax*4+454h]
		jmp	short loc_480F30
; ---------------------------------------------------------------------------

loc_480F28:				; CODE XREF: .text:00480F42j
		inc	dword ptr [ebp-8]
		add	eax, 44Ch

loc_480F30:				; CODE XREF: .text:00480F26j
		mov	edx, [ebp-0Ch]
		dec	edx
		cmp	edx, [ebp-8]
		jle	short loc_480F44
		cmp	dword ptr [eax], 0
		jz	short loc_480F44
		mov	ecx, [eax]
		cmp	ecx, [edi]
		jz	short loc_480F28

loc_480F44:				; CODE XREF: .text:00480F37j
					; .text:00480F3Cj
		mov	eax, [ebp+8]
		mov	edx, [ebp-4]
		movzx	ecx, word ptr [eax+edx*8+10h]
		mov	eax, esi
		add	ecx, [ebp+8]
		shl	eax, 4
		push	ecx		; src
		add	eax, esi
		push	100h		; n
		lea	eax, [esi+eax*8]
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, [ebp+14h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp-8]
		sub	eax, [ebp-4]
		test	eax, eax
		jle	short loc_480FF2
		cmp	eax, 4
		jge	short loc_480FF2
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_480FF2
		xor	ebx, ebx
		mov	edi, offset off_541824

loc_480F93:				; CODE XREF: .text:00480FF0j
		mov	edx, esi
		mov	eax, [edi]
		shl	edx, 4
		push	eax		; s2
		add	edx, esi
		lea	edx, [esi+edx*8]
		lea	edx, [esi+edx*2]
		shl	edx, 2
		add	edx, [ebp+14h]
		add	edx, 4Ch
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_480FE9
		mov	edx, esi
		mov	ecx, [ebp-8]
		shl	edx, 4
		sub	ecx, [ebp-4]
		add	edx, esi
		mov	eax, [edi+ecx*4]
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+edx*8]
		lea	edx, [esi+edx*2]
		shl	edx, 2
		add	edx, [ebp+14h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_480FF2
; ---------------------------------------------------------------------------

loc_480FE9:				; CODE XREF: .text:00480FB7j
		inc	ebx
		add	edi, 10h
		cmp	ebx, 35h
		jl	short loc_480F93

loc_480FF2:				; CODE XREF: .text:00480F7Fj
					; .text:00480F84j ...
		mov	ecx, [ebp-28h]
		mov	eax, [ebp-28h]
		movzx	edi, word ptr [ecx]
		mov	edx, [eax-4]
		add	edx, dword_5E9E20
		xor	ebx, ebx
		mov	[ebp-14h], edx
		jmp	short loc_48102B
; ---------------------------------------------------------------------------

loc_48100B:				; CODE XREF: .text:00481031j
		mov	edx, ebx
		mov	eax, [ebp-14h]
		shl	edx, 6
		add	eax, 4
		push	eax		; s2
		add	edx, offset word_5EA848
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_481033
		inc	ebx

loc_48102B:				; CODE XREF: .text:00481009j
		cmp	ebx, dword_5EBC68
		jl	short loc_48100B

loc_481033:				; CODE XREF: .text:00481028j
		cmp	ebx, dword_5EBC68
		jge	loc_48115E
		test	edi, 1
		jz	short loc_481055
		test	byte ptr word_5EBC48[ebx*4], 1
		jnz	loc_48115E

loc_481055:				; CODE XREF: .text:00481045j
		mov	ecx, dword ptr word_5EBC48[ebx*4]
		or	ecx, edi
		and	ecx, 9
		cmp	ecx, 8
		jz	loc_48115E
		mov	eax, edi
		and	eax, 7
		cmp	eax, 3
		jnz	short loc_48108F
		push	offset dword_5E9E58 ; a2
		mov	edx, ebx
		shl	edx, 6
		add	edx, offset word_5EAA48
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		jmp	short loc_4810A8
; ---------------------------------------------------------------------------

loc_48108F:				; CODE XREF: .text:00481072j
		push	offset dword_5E9E38 ; a2
		mov	ecx, ebx
		shl	ecx, 6
		add	ecx, offset word_5EAA48
		push	ecx		; s1
		call	loc_478D08
		add	esp, 8

loc_4810A8:				; CODE XREF: .text:0048108Dj
		test	eax, eax
		jz	short loc_4810B7
		mov	edx, dword_5E9E20
		add	edx, eax
		mov	[ebp-14h], edx

loc_4810B7:				; CODE XREF: .text:004810AAj
		mov	eax, ebx
		shl	eax, 9
		cmp	word_5EAC48[eax], 0
		jz	loc_481157
		mov	ecx, [ebp-24h]
		test	byte ptr [ecx-8], 4
		jz	loc_481157
		mov	edx, esi
		mov	eax, ebx
		shl	edx, 4
		add	edx, esi
		shl	eax, 9
		add	eax, offset word_5EAC48
		lea	edx, [esi+edx*8]
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+edx*2]
		shl	edx, 2
		add	edx, [ebp+14h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, ebx
		shl	ecx, 9
		add	ecx, offset word_5EAC48
		push	offset asc_544016 ; "="
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_481157
		mov	eax, [ebp+8]
		mov	edx, [ebp-4]
		movzx	ecx, word ptr [eax+edx*8+10h]
		mov	eax, esi
		add	ecx, [ebp+8]
		shl	eax, 4
		push	ecx		; src
		add	eax, esi
		push	0FFh		; n
		lea	eax, [esi+eax*8]
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, [ebp+14h]
		add	eax, 4Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_481157:				; CODE XREF: .text:004810C4j
					; .text:004810D1j ...
		or	edi, dword ptr word_5EBC48[ebx*4]

loc_48115E:				; CODE XREF: .text:00481039j
					; .text:0048104Fj ...
		mov	eax, esi
		mov	edx, [ebp-24h]
		shl	eax, 4
		mov	[edx+4], di
		add	eax, esi
		mov	ecx, [ebp-14h]
		add	ecx, 4
		lea	eax, [esi+eax*8]
		push	ecx		; src
		push	1Fh		; n
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, [ebp+14h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4811F3
; ---------------------------------------------------------------------------

loc_48118F:				; CODE XREF: .text:00480EC1j
		mov	edx, [ebp-24h]
		movzx	edi, word ptr [edx+4]
		and	edi, 7
		cmp	edi, 3
		jnz	short loc_4811C4
		push	offset dword_5E9E58 ; a2
		mov	eax, esi
		shl	eax, 4
		add	eax, esi
		lea	eax, [esi+eax*8]
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, [ebp+14h]
		add	eax, 0Eh
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		jmp	short loc_4811E8
; ---------------------------------------------------------------------------

loc_4811C4:				; CODE XREF: .text:0048119Cj
		push	offset dword_5E9E38 ; a2
		mov	edx, esi
		shl	edx, 4
		add	edx, esi
		lea	edx, [esi+edx*8]
		lea	edx, [esi+edx*2]
		shl	edx, 2
		add	edx, [ebp+14h]
		add	edx, 0Eh
		push	edx		; s1
		call	loc_478D08
		add	esp, 8

loc_4811E8:				; CODE XREF: .text:004811C2j
		mov	ecx, dword_5E9E20
		add	ecx, eax
		mov	[ebp-14h], ecx

loc_4811F3:				; CODE XREF: .text:0048118Dj
		xor	ebx, ebx
		lea	edi, [ebp-38h]
		jmp	short loc_481220
; ---------------------------------------------------------------------------

loc_4811FA:				; CODE XREF: .text:0048122Bj
		lea	eax, [ebx+esi]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+14h]
		test	byte ptr [ecx+eax*4], 3
		jz	short loc_48122D
		mov	edx, [ebp+14h]
		inc	ebx
		mov	eax, [edx+eax*4+4]
		mov	[edi], eax
		add	edi, 4

loc_481220:				; CODE XREF: .text:004811F8j
		cmp	ebx, 4
		jge	short loc_48122D
		lea	ecx, [ebx+esi]
		cmp	ecx, 18h
		jl	short loc_4811FA

loc_48122D:				; CODE XREF: .text:00481211j
					; .text:00481223j
		test	ebx, ebx
		jnz	short loc_481242
		mov	eax, [ebp-24h]
		mov	word ptr [eax+244h], 0
		jmp	loc_481511
; ---------------------------------------------------------------------------

loc_481242:				; CODE XREF: .text:0048122Fj
		mov	edx, [ebp-24h]
		movzx	ecx, word ptr [edx+4]
		and	ecx, 0FFFFFFEFh
		cmp	ecx, 40h
		jnz	short loc_48129D
		mov	eax, esi
		push	10h		; n
		shl	eax, 4
		push	offset aHmodule	; "HMODULE"
		add	eax, esi
		lea	eax, [esi+eax*8]
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, [ebp+14h]
		add	eax, 0Eh
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_48129D
		mov	edx, [ebp-24h]
		test	byte ptr [edx-8], 3
		jz	short loc_48129D
		mov	ecx, [ebp-24h]
		cmp	dword ptr [ecx-4], 0
		jz	short loc_48129D
		mov	eax, [ebp-24h]
		mov	edx, [eax-4]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-18h], eax

loc_48129D:				; CODE XREF: .text:0048124Fj
					; .text:00481279j ...
		mov	ecx, [ebp-24h]
		movzx	eax, word ptr [ecx+4]
		and	eax, 7
		cmp	eax, 3
		jnz	loc_481338
		mov	edi, esi
		mov	ebx, 1
		shl	edi, 4
		lea	edx, [ebp-278h]
		add	edi, esi
		mov	byte ptr [ebp-278h], 3Eh
		lea	edi, [esi+edi*8]
		lea	edi, [esi+edi*2]
		shl	edi, 2
		add	edi, [ebp+14h]
		mov	eax, edi
		add	eax, 0Eh
		add	edx, ebx
		push	eax		; src
		push	1Fh		; n
		push	edx		; dest
		call	StrcopyW
		inc	eax
		add	esp, 0Ch
		add	eax, eax
		lea	ecx, [ebp-0Ch]
		add	eax, ebx
		mov	ebx, eax
		mov	byte ptr [ebp+ebx-278h], 0
		mov	edx, [ebp+1Ch]
		sub	edx, esi
		dec	edx
		add	edi, 24Ch
		push	edx		; int
		push	ecx		; int
		mov	eax, [ebp+14h]
		lea	edx, [ebp-38h]
		push	eax		; int
		push	0		; int
		push	0		; int
		push	100h		; int
		push	edi		; int
		push	4		; int
		push	4		; int
		push	edx		; src
		lea	ecx, [ebp-278h]
		push	ecx		; int
		mov	eax, [ebp-18h]
		push	eax		; int
		call	loc_47D990
		add	esp, 30h
		mov	ebx, eax
		jmp	loc_4814FE
; ---------------------------------------------------------------------------

loc_481338:				; CODE XREF: .text:004812AAj
		mov	eax, [ebp-24h]
		movzx	edx, word ptr [eax+4]
		and	edx, 7
		dec	edx
		jnz	loc_48149A
		cmp	dword ptr [ebp-38h], 0
		jnz	short loc_481382
		mov	ecx, esi
		push	offset aNull_4	; "NULL"
		shl	ecx, 4
		push	100h		; n
		add	ecx, esi
		lea	ecx, [esi+ecx*8]
		lea	ecx, [esi+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+14h]
		add	ecx, 24Ch
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4814FE
; ---------------------------------------------------------------------------

loc_481382:				; CODE XREF: .text:0048134Dj
		mov	eax, esi
		push	0		; comment
		shl	eax, 4
		push	100h		; nsymb
		add	eax, esi
		lea	eax, [esi+eax*8]
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, [ebp+14h]
		add	eax, 24Ch
		push	eax		; symb
		push	10400h		; mode
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4813B1
		xor	edx, edx
		jmp	short loc_4813B6
; ---------------------------------------------------------------------------

loc_4813B1:				; CODE XREF: .text:004813ABj
		mov	ecx, [ebp-18h]
		mov	edx, [ecx]

loc_4813B6:				; CODE XREF: .text:004813AFj
		push	edx		; amod
		mov	eax, [ebp-38h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	ebx, eax
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-38h]
		push	eax		; _addr
		lea	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_4814FE
		mov	ecx, [ebp+1Ch]
		lea	eax, [ebp-0Ch]
		sub	ecx, esi
		dec	ecx
		push	ecx		; int
		push	eax		; int
		mov	edx, [ebp+14h]
		lea	ecx, [ebp-238h]
		push	edx		; int
		push	0		; int
		push	0		; int
		push	100h		; int
		push	ecx		; int
		push	4		; int
		lea	eax, [ebp-10h]
		push	4		; int
		push	eax		; src
		mov	edx, [ebp-14h]
		mov	ecx, [edx]
		add	ecx, dword_5E9E2C
		push	ecx		; int
		mov	eax, [ebp-18h]
		push	eax		; int
		call	loc_47D990
		add	esp, 30h
		test	eax, eax
		jle	loc_4814FE
		mov	ecx, esi
		mov	edx, 100h
		shl	ecx, 4
		sub	edx, ebx
		add	ecx, esi
		push	offset asc_54430E ; " -> "
		push	edx		; n
		mov	eax, ebx
		lea	ecx, [esi+ecx*8]
		add	eax, eax
		lea	ecx, [esi+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+14h]
		add	ecx, eax
		add	ecx, 24Ch
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, esi
		shl	eax, 4
		add	esp, 0Ch
		add	eax, esi
		lea	edx, [ebp-238h]
		mov	ecx, 100h
		push	edx		; src
		lea	eax, [esi+eax*8]
		sub	ecx, ebx
		push	ecx		; n
		mov	edx, ebx
		lea	eax, [esi+eax*2]
		add	edx, edx
		shl	eax, 2
		add	eax, [ebp+14h]
		add	eax, edx
		add	eax, 24Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4814FE
; ---------------------------------------------------------------------------

loc_48149A:				; CODE XREF: .text:00481343j
		mov	ecx, [ebp-24h]
		test	byte ptr [ecx+4], 7
		jnz	short loc_4814FC
		mov	edx, [ebp+1Ch]
		lea	ecx, [ebp-0Ch]
		sub	edx, esi
		mov	eax, ebx
		dec	edx
		push	edx		; int
		push	ecx		; int
		mov	ecx, esi
		mov	edx, [ebp+14h]
		shl	ecx, 4
		push	edx		; int
		add	ecx, esi
		push	0		; int
		push	0		; int
		push	100h		; int
		lea	ecx, [esi+ecx*8]
		shl	eax, 2
		lea	ecx, [esi+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+14h]
		add	ecx, 24Ch
		push	ecx		; int
		push	eax		; int
		push	eax		; int
		lea	eax, [ebp-38h]
		push	eax		; src
		mov	edx, [ebp-14h]
		mov	ecx, [edx]
		add	ecx, dword_5E9E2C
		push	ecx		; int
		mov	eax, [ebp-18h]
		push	eax		; int
		call	loc_47D990
		add	esp, 30h
		mov	ebx, eax
		jmp	short loc_4814FE
; ---------------------------------------------------------------------------

loc_4814FC:				; CODE XREF: .text:004814A1j
		xor	ebx, ebx

loc_4814FE:				; CODE XREF: .text:00481333j
					; .text:0048137Dj ...
		test	ebx, ebx
		jle	short loc_481511
		mov	eax, [ebp-28h]
		test	byte ptr [eax],	10h
		jz	short loc_481511
		mov	edx, [ebp-24h]
		or	dword ptr [edx-8], 8

loc_481511:				; CODE XREF: .text:0048123Dj
					; .text:00481500j ...
		inc	esi
		add	dword ptr [ebp-28h], 8
		add	dword ptr [ebp-24h], 44Ch
		cmp	esi, [ebp-0Ch]
		jl	loc_480EB7

loc_481526:				; CODE XREF: .text:00480E8Cj
					; .text:00480EB1j
		cmp	dword ptr [ebp+18h], 0
		jz	loc_481629
		mov	ecx, [ebp+8]
		movzx	edi, byte ptr [ecx+5]
		test	edi, edi
		jz	short loc_481544
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+6], 0
		jnz	short loc_481551

loc_481544:				; CODE XREF: .text:00481539j
		mov	edx, [ebp+18h]
		mov	word ptr [edx],	0
		jmp	loc_481629
; ---------------------------------------------------------------------------

loc_481551:				; CODE XREF: .text:00481542j
		mov	ecx, [ebp+8]
		mov	eax, [ecx+6]
		add	eax, dword_5E9E20
		xor	ebx, ebx
		mov	[ebp-14h], eax
		jmp	short loc_481584
; ---------------------------------------------------------------------------

loc_481564:				; CODE XREF: .text:0048158Aj
		mov	edx, ebx
		mov	eax, [ebp-14h]
		shl	edx, 6
		add	eax, 4
		push	eax		; s2
		add	edx, offset word_5EA848
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_48158C
		inc	ebx

loc_481584:				; CODE XREF: .text:00481562j
		cmp	ebx, dword_5EBC68
		jl	short loc_481564

loc_48158C:				; CODE XREF: .text:00481581j
		cmp	ebx, dword_5EBC68
		jge	short loc_48160B
		test	edi, 1
		jz	short loc_4815A6
		test	byte ptr word_5EBC48[ebx*4], 1
		jnz	short loc_48160B

loc_4815A6:				; CODE XREF: .text:0048159Aj
		mov	ecx, dword ptr word_5EBC48[ebx*4]
		or	ecx, edi
		and	ecx, 9
		cmp	ecx, 8
		jz	short loc_48160B
		mov	eax, edi
		and	eax, 7
		cmp	eax, 3
		jnz	short loc_4815DC
		push	offset dword_5E9E58 ; a2
		mov	edx, ebx
		shl	edx, 6
		add	edx, offset word_5EAA48
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		jmp	short loc_4815F5
; ---------------------------------------------------------------------------

loc_4815DC:				; CODE XREF: .text:004815BFj
		push	offset dword_5E9E38 ; a2
		mov	ecx, ebx
		shl	ecx, 6
		add	ecx, offset word_5EAA48
		push	ecx		; s1
		call	loc_478D08
		add	esp, 8

loc_4815F5:				; CODE XREF: .text:004815DAj
		test	eax, eax
		jz	short loc_481604
		mov	edx, dword_5E9E20
		add	edx, eax
		mov	[ebp-14h], edx

loc_481604:				; CODE XREF: .text:004815F7j
		or	edi, dword ptr word_5EBC48[ebx*4]

loc_48160B:				; CODE XREF: .text:00481592j
					; .text:004815A4j ...
		mov	eax, [ebp+18h]
		mov	[eax], di
		mov	ecx, [ebp-14h]
		add	ecx, 4
		push	ecx		; src
		push	1Fh		; n
		mov	eax, [ebp+18h]
		add	eax, 2
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_481629:				; CODE XREF: .text:0048152Aj
					; .text:0048154Cj
		mov	eax, [ebp-0Ch]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_481634@<eax>(int@<eax>, int@<edx>,	int@<ecx>, char	arglist)
loc_481634:				; CODE XREF: .text:00481C78p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi		; arglist
		push	offset aSavingKnownDat ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	eax, 2010000h
		push	eax		; version
		push	offset signature ; "PRECOMPILED"
		mov	edx, [ebp+8]
		push	edx		; _name
		call	Createtaggedfile
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_481696
		mov	ecx, [ebp+8]
		push	ecx		; arglist
		push	offset aUnableToCrea_0 ; "  Unable to create file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_48195A
; ---------------------------------------------------------------------------

loc_481696:				; CODE XREF: .text:00481673j
		xor	edi, edi
		test	edi, edi
		jnz	short loc_4816C5
		cmp	dword_5E9E28, 0
		jle	short loc_4816C5
		mov	eax, dword_5E9E20
		push	eax		; data
		mov	edx, dword_5E9E28
		push	edx		; size
		push	6D616E66h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax

loc_4816C5:				; CODE XREF: .text:0048169Aj
					; .text:004816A3j
		test	edi, edi
		jnz	short loc_4816F2
		cmp	dword_5E9E34, 0
		jle	short loc_4816F2
		mov	eax, dword_5E9E2C
		push	eax		; data
		mov	edx, dword_5E9E34
		push	edx		; size
		push	74616466h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax

loc_4816F2:				; CODE XREF: .text:004816C7j
					; .text:004816D0j
		test	edi, edi
		jnz	short loc_481722
		cmp	dword_5E9E40, 0
		jle	short loc_481722
		mov	edx, dword_5E9E40
		mov	eax, dword_5E9E38
		shl	edx, 2
		push	eax		; data
		push	edx		; size
		push	70797466h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax

loc_481722:				; CODE XREF: .text:004816F4j
					; .text:004816FDj
		test	edi, edi
		jnz	short loc_481752
		cmp	dword_5E9E50, 0
		jle	short loc_481752
		mov	edx, dword_5E9E50
		mov	eax, dword_5E9E48
		shl	edx, 2
		push	eax		; data
		push	edx		; size
		push	63727066h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax

loc_481752:				; CODE XREF: .text:00481724j
					; .text:0048172Dj
		test	edi, edi
		jnz	short loc_481782
		cmp	dword_5E9E60, 0
		jle	short loc_481782
		mov	edx, dword_5E9E60
		mov	eax, dword_5E9E58
		shl	edx, 2
		push	eax		; data
		push	edx		; size
		push	72747366h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax

loc_481782:				; CODE XREF: .text:00481754j
					; .text:0048175Dj
		test	edi, edi
		jnz	short loc_4817B2
		cmp	dword_5E9E70, 0
		jle	short loc_4817B2
		mov	edx, dword_5E9E70
		mov	eax, dword_5E9E68
		shl	edx, 2
		push	eax		; data
		push	edx		; size
		push	74736366h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax

loc_4817B2:				; CODE XREF: .text:00481784j
					; .text:0048178Dj
		test	edi, edi
		jnz	short loc_4817E2
		cmp	dword_5E9E80, 0
		jle	short loc_4817E2
		mov	edx, dword_5E9E80
		mov	eax, dword_5E9E78
		shl	edx, 2
		push	eax		; data
		push	edx		; size
		push	77617266h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax

loc_4817E2:				; CODE XREF: .text:004817B4j
					; .text:004817BDj
		xor	eax, eax
		mov	esi, offset dword_5E9ED0
		mov	[ebp-4], eax
		jmp	short loc_481867
; ---------------------------------------------------------------------------

loc_4817EE:				; CODE XREF: .text:00481874j
		push	1		; flags
		mov	eax, [esi]
		shl	eax, 2
		add	eax, 40h	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_48180C
		or	edi, 0FFFFFFFFh
		jmp	short loc_48187A
; ---------------------------------------------------------------------------

loc_48180C:				; CODE XREF: .text:00481805j
		push	40h		; n
		mov	eax, [ebp-4]
		shl	eax, 4
		lea	eax, [eax+eax*4]
		add	eax, offset word_5E9E88
		push	eax		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [esi]
		shl	edx, 2
		push	edx		; n
		mov	ecx, [esi-8]
		push	ecx		; src
		lea	eax, [ebx+40h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	ebx		; data
		mov	edx, [esi]
		shl	edx, 2
		add	edx, 40h
		push	edx		; size
		push	70726766h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax
		push	ebx		; data
		call	Memfree
		pop	ecx		; int
		inc	dword ptr [ebp-4]
		add	esi, 50h

loc_481867:				; CODE XREF: .text:004817ECj
		mov	eax, [ebp-4]
		cmp	eax, dword_5EBC78
		jge	short loc_48187A
		test	edi, edi
		jz	loc_4817EE

loc_48187A:				; CODE XREF: .text:0048180Aj
					; .text:00481870j
		xor	edx, edx
		mov	esi, (offset dword_5EA648+4)
		mov	[ebp-4], edx
		jmp	short loc_4818FF
; ---------------------------------------------------------------------------

loc_481886:				; CODE XREF: .text:0048190Cj
		push	1		; flags
		mov	eax, [esi]
		shl	eax, 3
		add	eax, 40h	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4818A4
		or	edi, 0FFFFFFFFh
		jmp	short loc_481912
; ---------------------------------------------------------------------------

loc_4818A4:				; CODE XREF: .text:0048189Dj
		push	40h		; n
		mov	eax, [ebp-4]
		shl	eax, 3
		lea	eax, [eax+eax*8]
		add	eax, offset word_5EA608
		push	eax		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [esi]
		shl	edx, 3
		push	edx		; n
		mov	ecx, [esi-4]
		push	ecx		; src
		lea	eax, [ebx+40h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	ebx		; data
		mov	edx, [esi]
		shl	edx, 3
		add	edx, 40h
		push	edx		; size
		push	61727466h	; tag
		mov	ecx, [ebp-8]
		push	ecx		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax
		push	ebx		; data
		call	Memfree
		pop	ecx		; int
		inc	dword ptr [ebp-4]
		add	esi, 48h

loc_4818FF:				; CODE XREF: .text:00481884j
		mov	eax, [ebp-4]
		cmp	eax, dword_5EBC7C
		jge	short loc_481912
		test	edi, edi
		jz	loc_481886

loc_481912:				; CODE XREF: .text:004818A2j
					; .text:00481908j
		test	edi, edi
		jz	short loc_481934
		mov	edx, [ebp+8]
		push	edx		; arglist
		push	offset aErrorSavingD_0 ; "  Error saving data to file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_481950
; ---------------------------------------------------------------------------

loc_481934:				; CODE XREF: .text:00481914j
		mov	ecx, [ebp+8]
		push	ecx		; arglist
		push	offset aFileSCreatedSu ; "  File '%s' created successfully"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_481950:				; CODE XREF: .text:00481932j
		mov	eax, [ebp-8]
		push	eax		; stream
		call	Finalizetaggedfile
		pop	ecx

loc_48195A:				; CODE XREF: .text:00481691j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_481964:				; CODE XREF: .text:00449E77p
					; .text:00481AC9p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, dword_5E9E20
		test	eax, eax
		jz	short loc_481981
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E9E20, edx

loc_481981:				; CODE XREF: .text:00481970j
		xor	ecx, ecx
		mov	dword_5E9E28, ecx
		mov	dword_5E9E24, ecx
		mov	eax, dword_5E9E2C
		test	eax, eax
		jz	short loc_4819A7
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E9E2C, edx

loc_4819A7:				; CODE XREF: .text:00481996j
		xor	eax, eax
		mov	dword_5E9E34, eax
		mov	dword_5E9E30, eax
		mov	eax, dword_5E9E38
		test	eax, eax
		jz	short loc_4819C3
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4819C3:				; CODE XREF: .text:004819BAj
		push	10h		; n
		push	0		; c
		push	offset dword_5E9E38 ; s
		call	_memset
		add	esp, 0Ch
		mov	eax, dword_5E9E48
		test	eax, eax
		jz	short loc_4819E4
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4819E4:				; CODE XREF: .text:004819DBj
		push	10h		; n
		push	0		; c
		push	offset dword_5E9E48 ; s
		call	_memset
		add	esp, 0Ch
		mov	eax, dword_5E9E58
		test	eax, eax
		jz	short loc_481A05
		push	eax		; data
		call	Memfree
		pop	ecx

loc_481A05:				; CODE XREF: .text:004819FCj
		push	10h		; n
		push	0		; c
		push	offset dword_5E9E58 ; s
		call	_memset
		add	esp, 0Ch
		mov	eax, dword_5E9E68
		test	eax, eax
		jz	short loc_481A26
		push	eax		; data
		call	Memfree
		pop	ecx

loc_481A26:				; CODE XREF: .text:00481A1Dj
		push	10h		; n
		push	0		; c
		push	offset dword_5E9E68 ; s
		call	_memset
		add	esp, 0Ch
		mov	eax, dword_5E9E78
		test	eax, eax
		jz	short loc_481A47
		push	eax		; data
		call	Memfree
		pop	ecx

loc_481A47:				; CODE XREF: .text:00481A3Ej
		push	10h		; n
		push	0		; c
		push	offset dword_5E9E78 ; s
		call	_memset
		add	esp, 0Ch
		xor	ebx, ebx
		mov	esi, offset dword_5E9EC8

loc_481A5F:				; CODE XREF: .text:00481A73j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_481A6C
		push	eax		; data
		call	Memfree
		pop	ecx

loc_481A6C:				; CODE XREF: .text:00481A63j
		inc	ebx
		add	esi, 50h
		cmp	ebx, 18h
		jl	short loc_481A5F
		push	780h		; n
		push	0		; c
		push	offset word_5E9E88 ; s
		call	_memset
		add	esp, 0Ch
		xor	ebx, ebx
		mov	esi, offset dword_5EA648

loc_481A90:				; CODE XREF: .text:00481AA4j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_481A9D
		push	eax		; data
		call	Memfree
		pop	ecx

loc_481A9D:				; CODE XREF: .text:00481A94j
		inc	ebx
		add	esi, 48h
		cmp	ebx, 8
		jl	short loc_481A90
		push	240h		; n
		push	0		; c
		push	offset word_5EA608 ; s
		call	_memset
		add	esp, 0Ch
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_481AC0:				; CODE XREF: .text:0044A3E9p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi		; arglist
		call	loc_481964
		cmp	dword_57DD2C, 0
		jz	loc_481C90
		mov	ebx, 10000h
		mov	dword_5E9E24, ebx
		mov	dword_5E9E30, 10000h
		mov	dword_5E9E3C, 200h
		mov	dword_5E9E4C, 1000h
		mov	dword_5E9E5C, 80h
		mov	dword_5E9E6C, 2000h
		mov	dword_5E9E7C, 40h
		push	1		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E9E20, eax
		push	1		; flags
		mov	eax, dword_5E9E30 ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E9E2C, eax
		mov	edx, dword_5E9E3C
		shl	edx, 2		; int
		push	1		; flags
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E9E38, eax
		mov	ecx, dword_5E9E4C
		shl	ecx, 2		; int
		push	1		; flags
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E9E48, eax
		mov	eax, dword_5E9E5C
		shl	eax, 2		; int
		push	1		; flags
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E9E58, eax
		mov	edx, dword_5E9E6C
		shl	edx, 2		; int
		push	1		; flags
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E9E68, eax
		mov	ecx, dword_5E9E7C
		shl	ecx, 2		; int
		push	1		; flags
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E9E78, eax
		cmp	dword_5E9E20, 0
		jz	short loc_481C02
		cmp	dword_5E9E2C, 0
		jz	short loc_481C02
		cmp	dword_5E9E38, 0
		jz	short loc_481C02
		cmp	dword_5E9E48, 0
		jz	short loc_481C02
		cmp	dword_5E9E58, 0
		jz	short loc_481C02
		cmp	dword_5E9E68, 0
		jz	short loc_481C02
		cmp	dword_5E9E78, 0
		jnz	short loc_481C27

loc_481C02:				; CODE XREF: .text:00481BCAj
					; .text:00481BD3j ...
		push	offset aDecodingOfKnow ; "Decoding of known functions is not poss"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		call	loc_481964
		or	eax, 0FFFFFFFFh
		jmp	loc_482270
; ---------------------------------------------------------------------------

loc_481C27:				; CODE XREF: .text:00481C00j
		push	6		; n
		push	0		; c
		mov	edx, dword_5E9E20
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	dword_5E9E28, 6
		mov	ecx, dword_5E9E2C
		mov	byte ptr [ecx],	0
		mov	dword_5E9E34, 1
		push	offset aOllydbg_1 ; "ollydbg"
		call	loc_482A7C
		pop	ecx		; int
		test	eax, eax
		jz	short loc_481C73
		call	loc_481964
		or	eax, 0FFFFFFFFh
		jmp	loc_482270
; ---------------------------------------------------------------------------

loc_481C73:				; CODE XREF: .text:00481C64j
		push	offset aOllydbg_dat ; "ollydbg.dat"
		call	loc_481634
		pop	ecx
		call	loc_4CC234
		push	1
		call	loc_419654
		pop	ecx
		jmp	loc_48226E
; ---------------------------------------------------------------------------

loc_481C90:				; CODE XREF: .text:00481AD5j
		push	offset signature ; "PRECOMPILED"
		push	offset aRes_known ; "RES_KNOWN"
		lea	edx, [ebp-28h]
		push	edx		; int
		call	loc_4A940C
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_481CC4
		push	0
		lea	eax, [ebp-10h]
		push	eax
		lea	edx, [ebp-0Ch]
		push	edx
		lea	ecx, [ebp-28h]
		push	ecx
		call	loc_4A929C
		add	esp, 10h
		mov	ebx, eax

loc_481CC4:				; CODE XREF: .text:00481CAAj
		test	ebx, ebx
		jnz	short loc_481CD4
		cmp	dword ptr [ebp-0Ch], 7265560Ah
		jz	short loc_481CD4
		or	ebx, 0FFFFFFFFh

loc_481CD4:				; CODE XREF: .text:00481CC6j
					; .text:00481CCFj
		test	ebx, ebx
		jnz	short loc_481CFF
		push	4		; int
		lea	eax, [ebp-18h]
		push	eax		; dest
		lea	edx, [ebp-28h]
		push	edx		; int
		call	loc_4A931C
		add	esp, 0Ch
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 4
		jnz	short loc_481CFC
		cmp	dword ptr [ebp-18h], 2010000h
		jz	short loc_481CFF

loc_481CFC:				; CODE XREF: .text:00481CF1j
		or	ebx, 0FFFFFFFFh

loc_481CFF:				; CODE XREF: .text:00481CD6j
					; .text:00481CFAj
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-4], eax
		mov	[ebp-8], edx
		mov	dword ptr [ebp-1Ch], offset dword_5EA648
		test	ebx, ebx
		mov	esi, offset dword_5E9EC8
		jnz	loc_482249

loc_481D1D:				; CODE XREF: .text:00482243j
		lea	eax, [ebp-14h]
		push	eax
		lea	edx, [ebp-10h]
		push	edx
		lea	ecx, [ebp-0Ch]
		push	ecx
		lea	eax, [ebp-28h]
		push	eax
		call	loc_4A929C
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_482249
		cmp	dword ptr [ebp-0Ch], 646E450Ah
		jz	loc_482249
		mov	eax, [ebp-0Ch]
		cmp	eax, 70797466h
		jg	short loc_481D89
		jz	loc_481E76
		sub	eax, 61727466h
		jz	loc_482172
		sub	eax, 1FFFC00h
		jz	loc_481EE5
		sub	eax, 9EEFE00h	; int
		jz	short loc_481DB6
		sub	eax, 310F900h
		jz	loc_4820A3
		jmp	loc_48223E
; ---------------------------------------------------------------------------

loc_481D89:				; CODE XREF: .text:00481D54j
		sub	eax, 72747366h
		jz	loc_481F54
		sub	eax, 1ECF100h
		jz	short loc_481E17
		sub	eax, 11FF00h
		jz	loc_481FC3
		sub	eax, 2EE0F00h
		jz	loc_482034
		jmp	loc_48223E
; ---------------------------------------------------------------------------

loc_481DB6:				; CODE XREF: .text:00481D77j
		mov	edx, [ebp-14h]
		add	edx, 1000h	; int
		mov	dword_5E9E24, edx
		push	1		; flags
		mov	ecx, dword_5E9E24 ; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5E9E20, edi
		test	edi, edi
		jnz	short loc_481DEA
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481DEA:				; CODE XREF: .text:00481DE0j
		mov	eax, dword_5E9E24
		lea	edx, [ebp-28h]
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		add	esp, 0Ch
		mov	dword_5E9E28, eax
		cmp	dword_5E9E28, 0
		jnz	loc_482241
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481E17:				; CODE XREF: .text:00481D99j
		mov	eax, [ebp-14h]
		add	eax, 1000h	; int
		mov	dword_5E9E30, eax
		push	1		; flags
		mov	edx, dword_5E9E30 ; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5E9E2C, edi
		test	edi, edi
		jnz	short loc_481E49
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481E49:				; CODE XREF: .text:00481E3Fj
		mov	eax, dword_5E9E30
		lea	edx, [ebp-28h]
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		add	esp, 0Ch
		mov	dword_5E9E34, eax
		cmp	dword_5E9E34, 0
		jnz	loc_482241
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481E76:				; CODE XREF: .text:00481D56j
		mov	eax, [ebp-14h]
		shr	eax, 2
		add	eax, 40h	; int
		mov	dword_5E9E3C, eax
		push	1		; flags
		mov	edx, dword_5E9E3C
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5E9E38, edi
		test	edi, edi
		jnz	short loc_481EAC
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481EAC:				; CODE XREF: .text:00481EA2j
		mov	eax, dword_5E9E3C
		lea	edx, [ebp-28h]
		shl	eax, 2
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		shr	eax, 2
		add	esp, 0Ch
		mov	dword_5E9E40, eax
		cmp	dword_5E9E40, 0
		jnz	short loc_481ED6
		or	ebx, 0FFFFFFFFh

loc_481ED6:				; CODE XREF: .text:00481ED1j
		mov	dword_5E9E44, 1
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481EE5:				; CODE XREF: .text:00481D6Cj
		mov	eax, [ebp-14h]
		shr	eax, 2
		add	eax, 40h	; int
		mov	dword_5E9E4C, eax
		push	1		; flags
		mov	edx, dword_5E9E4C
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5E9E48, edi
		test	edi, edi
		jnz	short loc_481F1B
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481F1B:				; CODE XREF: .text:00481F11j
		mov	eax, dword_5E9E4C
		lea	edx, [ebp-28h]
		shl	eax, 2
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		shr	eax, 2
		add	esp, 0Ch
		mov	dword_5E9E50, eax
		cmp	dword_5E9E50, 0
		jnz	short loc_481F45
		or	ebx, 0FFFFFFFFh

loc_481F45:				; CODE XREF: .text:00481F40j
		mov	dword_5E9E54, 1
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481F54:				; CODE XREF: .text:00481D8Ej
		mov	eax, [ebp-14h]
		shr	eax, 2
		add	eax, 20h	; int
		mov	dword_5E9E5C, eax
		push	1		; flags
		mov	edx, dword_5E9E5C
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5E9E58, edi
		test	edi, edi
		jnz	short loc_481F8A
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481F8A:				; CODE XREF: .text:00481F80j
		mov	eax, dword_5E9E5C
		lea	edx, [ebp-28h]
		shl	eax, 2
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		shr	eax, 2
		add	esp, 0Ch
		mov	dword_5E9E60, eax
		cmp	dword_5E9E60, 0
		jnz	short loc_481FB4
		or	ebx, 0FFFFFFFFh

loc_481FB4:				; CODE XREF: .text:00481FAFj
		mov	dword_5E9E64, 1
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481FC3:				; CODE XREF: .text:00481DA0j
		mov	eax, [ebp-14h]
		shr	eax, 2
		add	eax, 80h	; int
		mov	dword_5E9E6C, eax
		push	1		; flags
		mov	edx, dword_5E9E6C
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5E9E68, edi
		test	edi, edi
		jnz	short loc_481FFB
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_481FFB:				; CODE XREF: .text:00481FF1j
		mov	eax, dword_5E9E6C
		lea	edx, [ebp-28h]
		shl	eax, 2
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		shr	eax, 2
		add	esp, 0Ch
		mov	dword_5E9E70, eax
		cmp	dword_5E9E70, 0
		jnz	short loc_482025
		or	ebx, 0FFFFFFFFh

loc_482025:				; CODE XREF: .text:00482020j
		mov	dword_5E9E74, 1
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_482034:				; CODE XREF: .text:00481DABj
		mov	eax, [ebp-14h]
		shr	eax, 2
		add	eax, 40h	; int
		mov	dword_5E9E7C, eax
		push	1		; flags
		mov	edx, dword_5E9E7C
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5E9E78, edi
		test	edi, edi
		jnz	short loc_48206A
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_48206A:				; CODE XREF: .text:00482060j
		mov	eax, dword_5E9E7C
		lea	edx, [ebp-28h]
		shl	eax, 2
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		shr	eax, 2
		add	esp, 0Ch
		mov	dword_5E9E80, eax
		cmp	dword_5E9E80, 0
		jnz	short loc_482094
		or	ebx, 0FFFFFFFFh

loc_482094:				; CODE XREF: .text:0048208Fj
		mov	dword_5E9E84, 1
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_4820A3:				; CODE XREF: .text:00481D7Ej
		cmp	dword ptr [ebp-4], 18h
		jle	short loc_4820B1
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_4820B1:				; CODE XREF: .text:004820A7j
		push	3		; flags
		mov	eax, [ebp-14h]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4820CD
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_4820CD:				; CODE XREF: .text:004820C3j
		mov	eax, [ebp-14h]
		lea	edx, [ebp-28h]
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		add	esp, 0Ch
		cmp	eax, [ebp-14h]
		jz	short loc_4820F2
		push	edi		; data
		call	Memfree
		pop	ecx
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_4820F2:				; CODE XREF: .text:004820E1j
		push	1		; flags
		mov	eax, [ebp-14h]
		sub	eax, 40h	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[esi], eax
		cmp	dword ptr [esi], 0
		jnz	short loc_482119
		push	edi		; data
		call	Memfree
		pop	ecx
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_482119:				; CODE XREF: .text:00482108j
		mov	eax, [ebp-14h]
		sub	eax, 40h
		shr	eax, 2
		mov	[esi+4], eax
		mov	[esi+8], eax
		push	3Eh		; n
		push	edi		; src
		mov	edx, [ebp-4]
		shl	edx, 4
		lea	edx, [edx+edx*4]
		add	edx, offset word_5E9E88
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebp-14h]
		sub	ecx, 40h
		lea	eax, [edi+40h]
		push	ecx		; n
		push	eax		; src
		mov	edx, [esi]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	dword ptr [esi+0Ch], 1
		inc	dword ptr [ebp-4]
		add	esi, 50h
		push	edi		; data
		call	Memfree
		pop	ecx
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_482172:				; CODE XREF: .text:00481D61j
		cmp	dword ptr [ebp-8], 8
		jle	short loc_482180
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_482180:				; CODE XREF: .text:00482176j
		push	3		; flags
		mov	eax, [ebp-14h]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_48219C
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_48219C:				; CODE XREF: .text:00482192j
		mov	eax, [ebp-14h]
		lea	edx, [ebp-28h]
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		add	esp, 0Ch
		cmp	eax, [ebp-14h]
		jz	short loc_4821C1
		push	edi		; data
		call	Memfree
		pop	ecx
		or	ebx, 0FFFFFFFFh
		jmp	loc_482241
; ---------------------------------------------------------------------------

loc_4821C1:				; CODE XREF: .text:004821B0j
		push	1		; flags
		mov	eax, [ebp-14h]
		sub	eax, 40h	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	edx, [ebp-1Ch]
		mov	[edx], eax
		mov	ecx, [ebp-1Ch]
		cmp	dword ptr [ecx], 0
		jnz	short loc_4821EB
		push	edi		; data
		call	Memfree
		pop	ecx
		or	ebx, 0FFFFFFFFh
		jmp	short loc_482241
; ---------------------------------------------------------------------------

loc_4821EB:				; CODE XREF: .text:004821DDj
		mov	eax, [ebp-14h]
		mov	edx, [ebp-1Ch]
		sub	eax, 40h
		shr	eax, 3
		mov	[edx+4], eax
		push	3Eh		; n
		push	edi		; src
		mov	ecx, [ebp-8]
		shl	ecx, 3
		lea	ecx, [ecx+ecx*8]
		add	ecx, offset word_5EA608
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp-14h]
		sub	eax, 40h
		lea	edx, [edi+40h]
		push	eax		; n
		push	edx		; src
		mov	ecx, [ebp-1Ch]
		mov	eax, [ecx]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	dword ptr [ebp-8]
		add	dword ptr [ebp-1Ch], 48h
		push	edi		; data
		call	Memfree
		pop	ecx
		jmp	short loc_482241
; ---------------------------------------------------------------------------

loc_48223E:				; CODE XREF: .text:00481D84j
					; .text:00481DB1j
		or	ebx, 0FFFFFFFFh

loc_482241:				; CODE XREF: .text:00481DE5j
					; .text:00481E09j ...
		test	ebx, ebx
		jz	loc_481D1D

loc_482249:				; CODE XREF: .text:00481D17j
					; .text:00481D39j ...
		test	ebx, ebx
		jz	short loc_48226E
		call	loc_481964
		push	offset aCorruptApiData ; "Corrupt API data, known functions and	c"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	eax, ebx
		jmp	short loc_482270
; ---------------------------------------------------------------------------

loc_48226E:				; CODE XREF: .text:00481C8Bj
					; .text:0048224Bj
		xor	eax, eax

loc_482270:				; CODE XREF: .text:00481C22j
					; .text:00481C6Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_482278:				; CODE XREF: .text:0044AEFCp
					; .text:0044B36Ep
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		push	offset dword_5E9E24 ; newcount
		push	1		; itemsize
		mov	eax, dword_5E9E28 ; int
		push	eax		; count
		mov	edx, dword_5E9E20 ; int
		push	edx		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_5E9E20, eax
		mov	ecx, dword_5E9E34 ; int
		mov	eax, dword_5E9E2C ; int
		push	offset dword_5E9E30 ; newcount
		push	1		; itemsize
		push	ecx		; count
		push	eax		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_5E9E2C, eax
		mov	edx, dword_5E9E40 ; int
		mov	ecx, dword_5E9E38 ; int
		push	offset dword_5E9E3C ; newcount
		push	4		; itemsize
		push	edx		; count
		push	ecx		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_5E9E38, eax
		mov	eax, dword_5E9E50 ; int
		mov	edx, dword_5E9E48 ; int
		push	offset dword_5E9E4C ; newcount
		push	4		; itemsize
		push	eax		; count
		push	edx		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_5E9E48, eax
		mov	ecx, dword_5E9E60 ; int
		mov	eax, dword_5E9E58 ; int
		push	offset dword_5E9E5C ; newcount
		push	4		; itemsize
		push	ecx		; count
		push	eax		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_5E9E58, eax
		mov	edx, dword_5E9E70 ; int
		mov	ecx, dword_5E9E68 ; int
		push	offset dword_5E9E6C ; newcount
		push	4		; itemsize
		push	edx		; count
		push	ecx		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_5E9E68, eax
		mov	eax, dword_5E9E80 ; int
		mov	edx, dword_5E9E78 ; int
		push	offset dword_5E9E7C ; newcount
		push	4		; itemsize
		push	eax		; count
		push	edx		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_5E9E78, eax
		xor	esi, esi
		mov	ebx, offset dword_5E9EC8

loc_48236E:				; CODE XREF: .text:0048239Bj
		mov	edi, [ebx]
		test	edi, edi
		jz	short loc_482394
		mov	eax, esi
		shl	eax, 4
		lea	eax, [eax+eax*4]
		add	eax, offset dword_5E9ECC ; int
		push	eax		; newcount
		push	4		; itemsize
		mov	edx, [ebx+8]	; int
		push	edx		; count
		push	edi		; data
		call	Mempurge
		add	esp, 10h
		mov	[ebx], eax

loc_482394:				; CODE XREF: .text:00482372j
		inc	esi
		add	ebx, 50h
		cmp	esi, 18h
		jl	short loc_48236E
		xor	esi, esi
		mov	ebx, offset dword_5EA648

loc_4823A4:				; CODE XREF: .text:004823C4j
		mov	edi, [ebx]
		test	edi, edi
		jz	short loc_4823BD
		push	0		; newcount
		push	8		; itemsize
		mov	eax, [ebx+4]	; int
		push	eax		; count
		push	edi		; data
		call	Mempurge
		add	esp, 10h
		mov	[ebx], eax

loc_4823BD:				; CODE XREF: .text:004823A8j
		inc	esi
		add	ebx, 48h
		cmp	esi, 8
		jl	short loc_4823A4
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4823CC:				; CODE XREF: .text:004C93E3p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+0Ch]
		jz	short loc_4823E8
		test	edi, edi
		jz	short loc_4823E8
		cmp	dword ptr [edi+4Ch], 0
		jnz	short loc_4823F0

loc_4823E8:				; CODE XREF: .text:004823DCj
					; .text:004823E0j
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_4823F0:				; CODE XREF: .text:004823E6j
		xor	ebx, ebx
		lea	esi, [edi+50h]

loc_4823F5:				; CODE XREF: .text:0048287Ej
		test	byte ptr [esi],	1
		jz	short loc_482408
		cmp	dword ptr [esi+4], 4
		jz	short loc_482408
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_482408:				; CODE XREF: .text:004823F8j
					; .text:004823FEj
		cmp	dword ptr [esi+4], 4
		jle	loc_482874
		cmp	dword ptr [esi+4], 8
		jnz	loc_482551
		push	offset aQuad_0	; s2
		lea	edx, [ebx+ebx*8]
		lea	edx, [ebx+edx*8]
		shl	edx, 3
		add	edx, edi
		add	edx, 258h
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_482551
		cmp	ebx, 17h
		jl	short loc_482450
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_482450:				; CODE XREF: .text:00482446j
		cmp	dword ptr [esi+24Ch], 0
		jz	short loc_482461
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_482461:				; CODE XREF: .text:00482457j
		lea	edx, [ebx+ebx*8]
		lea	ecx, [ebx+ebx*8]
		lea	edx, [ebx+edx*8]
		lea	ecx, [ebx+ecx*8]
		shl	edx, 3
		add	edx, edi
		shl	ecx, 3
		add	edx, 58h
		push	edx		; src
		add	ecx, edi
		add	ecx, 2A0h
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	edx, [ebx+ebx*8]
		mov	eax, 100h
		push	offset a_lo	; "_lo"
		sub	eax, [ebp-4]
		lea	edx, [ebx+edx*8]
		push	eax		; n
		shl	edx, 3
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	edx, edi
		add	edx, ecx
		add	edx, 58h
		push	edx		; dest
		call	StrcopyW
		lea	edx, [ebx+ebx*8]
		add	esp, 0Ch
		mov	eax, 100h
		lea	edx, [ebx+edx*8]
		shl	edx, 3
		push	offset aQuad_lo	; "QUAD_LO"
		sub	eax, [ebp-4]
		add	edx, edi
		add	edx, 258h
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebx+ebx*8]
		mov	dword ptr [esi+4], 4
		push	offset a_hi	; "_hi"
		mov	ecx, 100h
		sub	ecx, [ebp-4]
		lea	eax, [ebx+eax*8]
		push	ecx		; n
		shl	eax, 3
		mov	edx, [ebp-4]
		add	edx, edx
		add	eax, edi
		add	eax, edx
		add	eax, 2A0h
		push	eax		; dest
		call	StrcopyW
		lea	eax, [ebx+ebx*8]
		add	esp, 0Ch
		mov	ecx, 100h
		lea	eax, [ebx+eax*8]
		shl	eax, 3
		push	offset aQuad_hi	; "QUAD_HI"
		sub	ecx, [ebp-4]
		add	eax, edi
		add	eax, 4A0h
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		mov	dword ptr [esi+24Ch], 4
		add	esp, 0Ch
		jmp	loc_482874
; ---------------------------------------------------------------------------

loc_482551:				; CODE XREF: .text:00482416j
					; .text:0048243Dj
		cmp	dword ptr [esi+4], 8
		jnz	loc_482690
		push	offset aDouble_3 ; s2
		lea	edx, [ebx+ebx*8]
		lea	edx, [ebx+edx*8]
		shl	edx, 3
		add	edx, edi
		add	edx, 258h
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_482690
		cmp	ebx, 17h
		jl	short loc_48258F
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_48258F:				; CODE XREF: .text:00482585j
		cmp	dword ptr [esi+24Ch], 0
		jz	short loc_4825A0
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_4825A0:				; CODE XREF: .text:00482596j
		lea	edx, [ebx+ebx*8]
		lea	ecx, [ebx+ebx*8]
		lea	edx, [ebx+edx*8]
		lea	ecx, [ebx+ecx*8]
		shl	edx, 3
		add	edx, edi
		shl	ecx, 3
		add	edx, 58h
		push	edx		; src
		add	ecx, edi
		add	ecx, 2A0h
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	edx, [ebx+ebx*8]
		mov	eax, 100h
		push	offset a_lo	; "_lo"
		sub	eax, [ebp-4]
		lea	edx, [ebx+edx*8]
		push	eax		; n
		shl	edx, 3
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	edx, edi
		add	edx, ecx
		add	edx, 58h
		push	edx		; dest
		call	StrcopyW
		lea	edx, [ebx+ebx*8]
		add	esp, 0Ch
		mov	eax, 100h
		lea	edx, [ebx+edx*8]
		shl	edx, 3
		push	offset aDouble_lo ; "DOUBLE_LO"
		sub	eax, [ebp-4]
		add	edx, edi
		add	edx, 258h
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebx+ebx*8]
		mov	dword ptr [esi+4], 4
		push	offset a_hi	; "_hi"
		mov	ecx, 100h
		sub	ecx, [ebp-4]
		lea	eax, [ebx+eax*8]
		push	ecx		; n
		shl	eax, 3
		mov	edx, [ebp-4]
		add	edx, edx
		add	eax, edi
		add	eax, edx
		add	eax, 2A0h
		push	eax		; dest
		call	StrcopyW
		lea	eax, [ebx+ebx*8]
		add	esp, 0Ch
		mov	ecx, 100h
		lea	eax, [ebx+eax*8]
		shl	eax, 3
		push	offset aDouble_hi ; "DOUBLE_HI"
		sub	ecx, [ebp-4]
		add	eax, edi
		add	eax, 4A0h
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		mov	dword ptr [esi+24Ch], 4
		add	esp, 0Ch
		jmp	loc_482874
; ---------------------------------------------------------------------------

loc_482690:				; CODE XREF: .text:00482555j
					; .text:0048257Cj
		mov	eax, [esi+4]
		cmp	eax, 0Ah
		jz	short loc_4826A1
		cmp	eax, 0Ch
		jnz	loc_48286C

loc_4826A1:				; CODE XREF: .text:00482696j
		push	offset aLdouble	; "LDOUBLE"
		lea	edx, [ebx+ebx*8]
		lea	edx, [ebx+edx*8]
		shl	edx, 3
		add	edx, edi
		add	edx, 258h
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_48286C
		cmp	ebx, 16h
		jl	short loc_4826D5
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_4826D5:				; CODE XREF: .text:004826CBj
		cmp	dword ptr [esi+24Ch], 0
		jnz	short loc_4826E7
		cmp	dword ptr [esi+494h], 0
		jz	short loc_4826EF

loc_4826E7:				; CODE XREF: .text:004826DCj
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_4826EF:				; CODE XREF: .text:004826E5j
		lea	edx, [ebx+ebx*8]
		lea	ecx, [ebx+ebx*8]
		lea	edx, [ebx+edx*8]
		lea	ecx, [ebx+ecx*8]
		shl	edx, 3
		add	edx, edi
		shl	ecx, 3
		add	edx, 58h
		push	edx		; src
		add	ecx, edi
		add	ecx, 2A0h
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		mov	[ebp-4], eax
		lea	eax, [ebx+ebx*8]
		lea	edx, [ebx+ebx*8]
		add	esp, 0Ch
		lea	eax, [ebx+eax*8]
		shl	eax, 3
		lea	edx, [ebx+edx*8]
		add	eax, edi
		shl	edx, 3
		add	eax, 58h
		push	eax		; src
		add	edx, edi
		add	edx, 4E8h
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebx+ebx*8]
		mov	ecx, 100h
		push	offset a_lo	; "_lo"
		sub	ecx, [ebp-4]
		lea	eax, [ebx+eax*8]
		push	ecx		; n
		shl	eax, 3
		mov	edx, [ebp-4]
		add	edx, edx
		add	eax, edi
		add	eax, edx
		add	eax, 58h
		push	eax		; dest
		call	StrcopyW
		lea	eax, [ebx+ebx*8]
		add	esp, 0Ch
		mov	ecx, 100h
		lea	eax, [ebx+eax*8]
		shl	eax, 3
		push	offset aLdouble_lo ; "LDOUBLE_LO"
		sub	ecx, [ebp-4]
		add	eax, edi
		add	eax, 258h
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebx+ebx*8]
		mov	dword ptr [esi+4], 4
		push	offset a_mi	; "_mi"
		mov	edx, 100h
		sub	edx, [ebp-4]
		lea	ecx, [ebx+ecx*8]
		push	edx		; n
		shl	ecx, 3
		mov	eax, [ebp-4]
		add	eax, eax
		add	ecx, edi
		add	ecx, eax
		add	ecx, 2A0h
		push	ecx		; dest
		call	StrcopyW
		lea	ecx, [ebx+ebx*8]
		add	esp, 0Ch
		mov	edx, 100h
		lea	ecx, [ebx+ecx*8]
		shl	ecx, 3
		push	offset asc_542996 ; "L"
		sub	edx, [ebp-4]
		add	ecx, edi
		add	ecx, 4A0h
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebx+ebx*8]
		mov	dword ptr [esi+24Ch], 4
		push	offset a_hi	; "_hi"
		mov	eax, 100h
		sub	eax, [ebp-4]
		lea	edx, [ebx+edx*8]
		push	eax		; n
		shl	edx, 3
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	edx, edi
		add	edx, ecx
		add	edx, 4E8h
		push	edx		; dest
		call	StrcopyW
		lea	edx, [ebx+ebx*8]
		add	esp, 0Ch
		mov	eax, 100h
		lea	edx, [ebx+edx*8]
		shl	edx, 3
		push	offset aDouble_hi ; "DOUBLE_HI"
		sub	eax, [ebp-4]
		add	edx, edi
		add	edx, 6E8h
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		mov	dword ptr [esi+494h], 4
		add	esp, 0Ch
		jmp	short loc_482874
; ---------------------------------------------------------------------------

loc_48286C:				; CODE XREF: .text:0048269Bj
					; .text:004826C2j
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_482874:				; CODE XREF: .text:0048240Cj
					; .text:0048254Cj ...
		inc	ebx
		add	esi, 248h
		cmp	ebx, 18h
		jl	loc_4823F5
		cmp	dword ptr [edi+54h], 0
		jnz	short loc_482893
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_482898
; ---------------------------------------------------------------------------

loc_482893:				; CODE XREF: .text:00482888j
		xor	edx, edx
		mov	[ebp-0Ch], edx

loc_482898:				; CODE XREF: .text:00482891j
		mov	ecx, [ebp-0Ch]
		push	ecx		; arglist
		push	offset a______________ ; "................._offset %i"
		push	2		; color
		push	0		; _addr
		call	Addtolist
		mov	eax, [ebp-0Ch]
		add	esp, 10h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 18h
		mov	edx, [ebp-8]
		mov	ecx, edx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*8]
		lea	eax, [edi+edx*8+54h]
		jge	short loc_4828DB

loc_4828C8:				; CODE XREF: .text:004828D9j
		cmp	dword ptr [eax], 0
		jz	short loc_4828DB
		inc	dword ptr [ebp-8]
		add	eax, 248h
		cmp	dword ptr [ebp-8], 18h
		jl	short loc_4828C8

loc_4828DB:				; CODE XREF: .text:004828C6j
					; .text:004828CBj
		mov	ebx, [ebp-8]
		cmp	ebx, 18h
		lea	eax, [ebx+ebx*8]
		lea	eax, [ebx+eax*8]
		lea	eax, [edi+eax*8+54h]
		jge	short loc_4828FD

loc_4828ED:				; CODE XREF: .text:004828FBj
		cmp	dword ptr [eax], 0
		jnz	short loc_4828FD
		inc	ebx
		add	eax, 248h
		cmp	ebx, 18h
		jl	short loc_4828ED

loc_4828FD:				; CODE XREF: .text:004828EBj
					; .text:004828F0j
		cmp	ebx, 18h
		jge	short loc_48290A
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_48290A:				; CODE XREF: .text:00482900j
		mov	ebx, [ebp-0Ch]
		cmp	ebx, [ebp-8]
		lea	eax, [ebx+ebx*8]
		lea	eax, [ebx+eax*8]
		lea	eax, [edi+eax*8+50h]
		jge	short loc_482934

loc_48291C:				; CODE XREF: .text:00482932j
		test	byte ptr [eax],	40h
		jnz	short loc_482929
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_482929:				; CODE XREF: .text:0048291Fj
		inc	ebx
		add	eax, 248h
		cmp	ebx, [ebp-8]
		jl	short loc_48291C

loc_482934:				; CODE XREF: .text:0048291Aj
		push	4000h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_482950
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_482950:				; CODE XREF: .text:00482946j
		mov	ecx, [ebp-14h]
		mov	edx, [edi]
		mov	[ecx], edx
		mov	al, [ebp-8]
		mov	edx, [ebp-14h]
		sub	al, [ebp-0Ch]
		mov	[edx+4], al
		test	byte ptr [edi+4], 40h
		jz	short loc_48296F
		cmp	dword ptr [edi+8], 0
		jnz	short loc_482980

loc_48296F:				; CODE XREF: .text:00482967j
		mov	ecx, [ebp-14h]
		mov	byte ptr [ecx+5], 0
		mov	eax, [ebp-14h]
		xor	edx, edx
		mov	[eax+6], edx
		jmp	short loc_4829AE
; ---------------------------------------------------------------------------

loc_482980:				; CODE XREF: .text:0048296Dj
		push	offset dword_5E9E38 ; a2
		lea	ecx, [edi+0Ch]
		push	ecx		; s1
		call	loc_478D08
		mov	ebx, eax
		mov	eax, [ebp-14h]
		add	esp, 8
		test	ebx, ebx
		mov	[eax+6], ebx
		jnz	short loc_4829A5
		or	eax, 0FFFFFFFFh
		jmp	loc_482A75
; ---------------------------------------------------------------------------

loc_4829A5:				; CODE XREF: .text:0048299Bj
		mov	dl, [edi+4]
		mov	ecx, [ebp-14h]
		mov	[ecx+5], dl

loc_4829AE:				; CODE XREF: .text:0048297Ej
		mov	eax, [ebp-8]
		sub	eax, [ebp-0Ch]
		shl	eax, 3
		add	eax, 0Ah
		mov	[ebp-10h], eax
		xor	ebx, ebx
		mov	eax, [ebp-14h]
		lea	esi, [eax+0Ah]
		jmp	loc_482A51
; ---------------------------------------------------------------------------

loc_4829CA:				; CODE XREF: .text:00482A59j
		push	offset dword_5E9E38 ; a2
		mov	eax, [ebp-0Ch]
		add	eax, ebx
		lea	edx, [eax+eax*8]
		lea	edx, [eax+edx*8]
		shl	edx, 3
		add	edx, edi
		add	edx, 258h
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	[esi], eax
		cmp	dword ptr [esi], 0
		jnz	short loc_4829FA
		or	eax, 0FFFFFFFFh
		jmp	short loc_482A75
; ---------------------------------------------------------------------------

loc_4829FA:				; CODE XREF: .text:004829F3j
		mov	edx, [ebp-0Ch]
		add	edx, ebx
		lea	ecx, [edx+edx*8]
		lea	ecx, [edx+ecx*8]
		mov	ax, [edi+ecx*8+50h]
		mov	[esi+4], ax
		mov	dx, [ebp-10h]
		mov	[esi+6], dx
		mov	ecx, [ebp-0Ch]
		add	ecx, ebx
		lea	eax, [ecx+ecx*8]
		lea	eax, [ecx+eax*8]
		shl	eax, 3
		add	eax, edi
		add	eax, 58h
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp-14h]
		add	edx, [ebp-10h]
		push	edx		; dest
		call	StrcopyW
		mov	[ebp-4], eax
		add	esp, 0Ch
		mov	ecx, [ebp-4]
		inc	ebx
		inc	ecx
		add	ecx, ecx
		add	ecx, [ebp-10h]
		add	esi, 8
		mov	[ebp-10h], ecx

loc_482A51:				; CODE XREF: .text:004829C5j
		mov	eax, [ebp-8]
		sub	eax, [ebp-0Ch]
		cmp	ebx, eax
		jl	loc_4829CA
		mov	edx, [ebp-10h]
		push	edx		; datasize
		mov	ecx, [ebp-14h]
		push	ecx		; data
		push	4Ah		; type
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h

loc_482A75:				; CODE XREF: .text:004823EBj
					; .text:00482403j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_482A7C(char arglist)
loc_482A7C:				; CODE XREF: .text:0044A3F3p
					; .text:0044AEF6p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF7BCh
		push	ebx
		push	esi
		push	edi
		mov	esi, offset aSavingKnownDat ; "Saving known data to file"
;__DebugBreak
		cmp	dword ptr [ebp+8], 0
		jz	short loc_482AA5
		mov	eax, [ebp+8]
		cmp	word ptr [eax],	0
		jz	short loc_482AA5
		cmp	dword_5E9E20, 0
		jnz	short loc_482AAD

loc_482AA5:				; CODE XREF: .text:00482A91j
					; .text:00482A9Aj
		or	eax, 0FFFFFFFFh
		jmp	loc_48361D
; ---------------------------------------------------------------------------

loc_482AAD:				; CODE XREF: .text:00482AA3j
		xor	edx, edx
		mov	dword_5EBC8C, edx
		mov	dword_5EBC88, edx
		mov	dword_5EBC84, edx
		mov	dword_5EBC80, edx
		mov	dword_5EBC7C, edx
		mov	dword_5EBC78, edx
		mov	dword_5EBC74, edx
		push	offset ollydir	; src
		push	104h		; n
		lea	eax, [ebp-410h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, $CTW0("\\");[esi+1E0Ah]
		mov	ecx, ebx
		push	eax		; src
		mov	edx, 104h
		sub	edx, ebx
		lea	eax, [ebp-410h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, [ebp+8]
		mov	eax, ebx
		push	edx		; src
		mov	ecx, 104h
		sub	ecx, ebx
		lea	edx, [ebp-410h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, 104h
		lea	ecx, a_arg_1;[esi+1E0Eh]
		sub	eax, ebx
		push	ecx		; src
		lea	edx, aOutOfMemoryUna;[ebp-410h]
		add	ebx, ebx
		add	ebx, edx
		push	eax		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-4]
		push	ecx		; int
		push	0		; psize
		push	0		; fixsize
		lea	eax, [ebp-410h]
		push	eax		; path
		call	Readfile
		add	esp, 10h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_482BAB
		cmp	dword ptr [ebp-4], 0
		jz	short loc_482BA3
		mov	edx, [ebp+8]
		push	edx		; arglist
		lea	ecx, aOutOfMemoryUna;[esi+1E18h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_482BA3:				; CODE XREF: .text:00482B83j
		or	eax, 0FFFFFFFFh
		jmp	loc_48361D
; ---------------------------------------------------------------------------

loc_482BAB:				; CODE XREF: .text:00482B7Dj
		cmp	dword ptr [ebp-4], 2
		jbe	short loc_482BF2
		mov	edx, [ebp-8]
		cmp	byte ptr [edx],	0FEh
		jnz	short loc_482BF2
		mov	ecx, [ebp-8]
		cmp	byte ptr [ecx+1], 0FFh
		jnz	short loc_482BF2
		mov	eax, [ebp-8]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	edx, [ebp+8]
		push	edx		; arglist
		lea	ecx, aFileS_argHasUn;[esi+1E8Eh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		or	eax, 0FFFFFFFFh
		jmp	loc_48361D
; ---------------------------------------------------------------------------

loc_482BF2:				; CODE XREF: .text:00482BAFj
					; .text:00482BB7j ...
		cmp	dword ptr [ebp-4], 2
		jbe	short loc_482C28
		mov	edx, [ebp-8]
		cmp	byte ptr [edx],	0FFh
		jnz	short loc_482C28
		mov	ecx, [ebp-8]
		cmp	byte ptr [ecx+1], 0FEh
		jnz	short loc_482C28
		mov	eax, [ebp-8]
		add	eax, 2
		mov	[ebp-840h], eax
		mov	edx, [ebp-4]
		sub	edx, 2
		shr	edx, 1
		mov	[ebp-83Ch], edx
		jmp	loc_482CA9
; ---------------------------------------------------------------------------

loc_482C28:				; CODE XREF: .text:00482BF6j
					; .text:00482BFEj ...
		push	1		; flags
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	ecx, 2		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_482C71
		mov	eax, [ebp-8]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	edx, [ebp+8]
		push	edx		; arglist
		lea	ecx, aOutOfMemoryUna;[esi+1E18h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		or	eax, 0FFFFFFFFh
		jmp	loc_48361D
; ---------------------------------------------------------------------------

loc_482C71:				; CODE XREF: .text:00482C3Fj
		mov	edx, [ebp-4]
		inc	edx
		push	edx		; nw
		push	ebx		; w
		mov	ecx, [ebp-4]
		push	ecx		; ns
		mov	eax, [ebp-8]
		push	eax		; s
		call	Asciitounicode
		add	esp, 10h
		mov	[ebp-4], eax
		mov	edx, [ebp-8]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	[ebp-8], ebx
		mov	ecx, [ebp-8]
		mov	[ebp-840h], ecx
		mov	eax, [ebp-4]
		mov	[ebp-83Ch], eax

loc_482CA9:				; CODE XREF: .text:00482C23j
		xor	edx, edx
		mov	failed,	edx
		mov	ecx, [ebp+8]
		push	ecx		; arglist
		lea	eax, aLoadingFunctio;[esi+1EFEh]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		mov	dword ptr [ebp-844h], 200h
		xor	edx, edx
		add	esp, 10h
		mov	[ebp-834h], edx
		mov	[ebp-838h], edx
		mov	dword ptr [ebp-830h], 1
		xor	ebx, ebx

loc_482CF3:				; CODE XREF: .text:004830B9j
		test	ebx, ebx
		jnz	loc_48311F

loc_482CFB:				; CODE XREF: .text:00483119j
		xor	edi, edi
		lea	eax, [ebp-844h]
		push	eax		; ps
		call	Scan
		cmp	dword ptr [ebp-416h], 2
		pop	ecx
		jnz	loc_4830AE
		lea	edx, [ebp-81Ah]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		lea	ecx, aNoreturn;[esi+1F56h]
		push	ecx		; s2
		lea	eax, [ebp-81Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482D7A
		mov	edi, 4
		lea	eax, [ebp-844h]
		push	eax		; ps
		call	Scan
		cmp	dword ptr [ebp-416h], 2
		pop	ecx
		jz	short loc_482D6D
		lea	edx, aKeywordExpecte;[esi+752h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_482D6D:				; CODE XREF: .text:00482D57j
		lea	eax, [ebp-81Ah]
		push	eax		; s
		call	__lwcsupr
		pop	ecx

loc_482D7A:				; CODE XREF: .text:00482D3Cj
		lea	edx, aInfo_1;[esi+1F68h]
		push	edx		; s2
		lea	ecx, [ebp-81Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482DF5
		test	edi, edi
		jz	short loc_482DAC
		lea	eax, aInvalidTypeMod;[esi+1F72h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_482DAC:				; CODE XREF: .text:00482D96j
		lea	eax, [ebp-844h]
		push	eax		; ps
		call	Scan
		cmp	dword ptr [ebp-416h], 3
		pop	ecx
		jz	short loc_482DD6
		lea	edx, aLengthOfDataNa;[esi+0C40h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482DD6:				; CODE XREF: .text:00482DC0j
		lea	eax, [ebp-81Ah]
		push	eax		; arglist
		lea	edx, aS_13;[esi+1FA4h]
		push	edx		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482DF5:				; CODE XREF: .text:00482D92j
		lea	ecx, aConst_0;[esi+44Ah]
		push	ecx		; s2
		lea	eax, [ebp-81Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482E3B
		test	edi, edi
		jz	short loc_482E27
		lea	edx, aInvalidTypeMod; [esi+1F72h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_482E27:				; CODE XREF: .text:00482E11j
		lea	eax, [ebp-844h]
		push	eax
		call	loc_478DBC
		pop	ecx
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482E3B:				; CODE XREF: .text:00482E0Dj
		lea	eax, aGroup_0;[esi+0E76h]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482E81
		test	edi, edi
		jz	short loc_482E6D
		lea	ecx, aInvalidTypeMod; [esi+1F72h]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_482E6D:				; CODE XREF: .text:00482E57j
		lea	eax, [ebp-844h]
		push	eax
		call	loc_478EA0
		pop	ecx
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482E81:				; CODE XREF: .text:00482E53j
		lea	eax, aTranslator_1;[esi+1FAEh]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482EC7
		test	edi, edi
		jz	short loc_482EB3
		lea	ecx, aInvalidTypeMod; [esi+1F72h]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_482EB3:				; CODE XREF: .text:00482E9Dj
		lea	eax, [ebp-844h]
		push	eax
		call	loc_4791C8
		pop	ecx
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482EC7:				; CODE XREF: .text:00482E99j
		lea	eax, aType_6;[esi+1FC4h]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482F0D
		test	edi, edi
		jz	short loc_482EF9
		lea	ecx, aInvalidTypeMod; [esi+1F72h]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_482EF9:				; CODE XREF: .text:00482EE3j
		lea	eax, [ebp-844h]
		push	eax
		call	loc_4794B4
		pop	ecx
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482F0D:				; CODE XREF: .text:00482EDFj
		lea	eax, aStruct;[esi+0E82h]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482F53
		test	edi, edi
		jz	short loc_482F3F
		lea	ecx, aInvalidTypeMod; [esi+1F72h]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_482F3F:				; CODE XREF: .text:00482F29j
		lea	eax, [ebp-844h]
		push	eax
		call	loc_47AC18
		pop	ecx
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482F53:				; CODE XREF: .text:00482F25j
		lea	eax, aFunction_1;[esi+1FCEh]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482F87
		or	edi, 0
		push	edi
		lea	ecx, [ebp-844h]
		push	ecx
		call	loc_47B8AC
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482F87:				; CODE XREF: .text:00482F6Bj
		lea	eax, aPascal;[esi+1FE0h]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482FBB
		or	edi, 2
		push	edi
		lea	ecx, [ebp-844h]
		push	ecx
		call	loc_47B8AC
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482FBB:				; CODE XREF: .text:00482F9Fj
		lea	eax, aCfunc;[esi+1FEEh]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_482FEF
		or	edi, 1
		push	edi
		lea	ecx, [ebp-844h]
		push	ecx
		call	loc_47B8AC
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_482FEF:				; CODE XREF: .text:00482FD3j
		lea	eax, $CTW0("STDFUNC");[esi+1724h]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_483026
		or	edi, 0E802h
		push	edi
		lea	ecx, [ebp-844h]
		push	ecx
		call	loc_47B8AC
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4830D0
; ---------------------------------------------------------------------------

loc_483026:				; CODE XREF: .text:00483007j
		lea	eax, aStdc;[esi+1FFAh]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48305A
		or	edi, 0E801h
		push	edi
		lea	ecx, [ebp-844h]
		push	ecx
		call	loc_47B8AC
		add	esp, 8
		mov	ebx, eax
		jmp	short loc_4830D0
; ---------------------------------------------------------------------------

loc_48305A:				; CODE XREF: .text:0048303Ej
		lea	eax, aRawdata;[esi+2004h]
		push	eax		; s2
		lea	edx, [ebp-81Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48309D
		test	edi, edi
		jz	short loc_48308C
		lea	ecx, aInvalidTypeMod; [esi+1F72h]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	loc_48311F
; ---------------------------------------------------------------------------

loc_48308C:				; CODE XREF: .text:00483076j
		lea	eax, [ebp-844h]
		push	eax
		call	loc_47C1B4
		pop	ecx
		mov	ebx, eax
		jmp	short loc_4830D0
; ---------------------------------------------------------------------------

loc_48309D:				; CODE XREF: .text:00483072j
		lea	eax, aUnexpectedKeyw;[esi+2014h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	short loc_4830D0
; ---------------------------------------------------------------------------

loc_4830AE:				; CODE XREF: .text:00482D11j
		mov	eax, [ebp-416h]
		test	eax, eax
		jz	short loc_48311F
		dec	eax
		jz	loc_482CF3
		lea	edx, aKeywordExpecte;[esi+752h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	short loc_48311F
; ---------------------------------------------------------------------------

loc_4830D0:				; CODE XREF: .text:00482DD1j
					; .text:00482DF0j ...
		cmp	failed,	0
		jz	short loc_4830EA
		lea	eax, aLowMemoryProce;[esi+2D8h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	short loc_48311F
; ---------------------------------------------------------------------------

loc_4830EA:				; CODE XREF: .text:004830D7j
		test	ebx, ebx
		jnz	short loc_483117
		lea	eax, [ebp-844h]
		push	eax		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebp-416h]
		test	eax, eax
		jz	short loc_483117
		dec	eax
		jz	short loc_483117
		lea	edx, aExtraCharact_1;[esi+3EAh]
		push	edx		; src
		call	_T
		pop	ecx
		mov	ebx, eax

loc_483117:				; CODE XREF: .text:004830ECj
					; .text:00483103j ...
		test	ebx, ebx
		jz	loc_482CFB

loc_48311F:				; CODE XREF: .text:00482CF5j
					; .text:00482D68j ...
		mov	eax, [ebp-8]
		push	eax		; data
		call	Memfree
		pop	ecx
		test	ebx, ebx
		jz	short loc_48318B
		cmp	dword ptr [ebp-416h], 8
		jnz	short loc_483161
		lea	edx, [ebp-616h]
		push	edx
		push	ebx
		mov	ecx, [ebp-830h]
		push	ecx		; arglist
		lea	eax, aLineI_SS_1;[esi+203Ah]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 18h
		jmp	short loc_483183
; ---------------------------------------------------------------------------

loc_483161:				; CODE XREF: .text:00483134j
		push	ebx
		mov	edx, [ebp-830h]
		push	edx		; arglist
		lea	ecx, aLineI_S_1;[esi+2060h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_483183:				; CODE XREF: .text:0048315Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_48361D
; ---------------------------------------------------------------------------

loc_48318B:				; CODE XREF: .text:0048312Bj
		push	0		; value
		lea	edx, $CTW0("$");[esi+207Ch]
		push	edx		; _name
		call	Getconstantbyname
		add	esp, 8
		xor	ebx, ebx
		jmp	short loc_4831FD
; ---------------------------------------------------------------------------

loc_4831A0:				; CODE XREF: .text:00483206j
		mov	edx, dword_5E9E68
		mov	eax, dword_5E9E20
		mov	ecx, [edx+ebx*4+4]
		mov	edx, dword_5E9E68
		add	ecx, eax
		add	ecx, 4
		push	ecx		; s2
		mov	ecx, [edx+ebx*4]
		add	ecx, eax
		add	ecx, 4
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4831FC
		mov	eax, dword_5E9E68
		mov	eax, [eax+ebx*4]
		add	eax, dword_5E9E20
		add	eax, 4
		push	eax		; arglist
		lea	edx, aRedefinedConst;[esi+2080h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_4831FC:				; CODE XREF: .text:004831CEj
		inc	ebx

loc_4831FD:				; CODE XREF: .text:0048319Ej
		mov	ecx, dword_5E9E70
		dec	ecx
		cmp	ebx, ecx
		jl	short loc_4831A0
		xor	ebx, ebx
		mov	eax, dword_5EBC74
		test	eax, eax
		jle	short loc_483269
		dec	eax
		jnz	short loc_48323D
		lea	edx, a1Constant;[esi+20B4h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-208h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_483269
; ---------------------------------------------------------------------------

loc_48323D:				; CODE XREF: .text:00483214j
		mov	edx, dword_5EBC74
		push	edx
		lea	ecx, aIConstants;[esi+20CAh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-208h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_483269:				; CODE XREF: .text:00483211j
					; .text:0048323Bj
		cmp	dword_5EBC78, 0
		jle	short loc_4832F0
		test	ebx, ebx
		jle	short loc_483294
		mov	eax, ebx
		lea	ecx, asc_543C58;[esi+20E4h]
		lea	edx, [ebp-208h]
		add	eax, eax
		add	eax, edx
		push	ecx		; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_483294:				; CODE XREF: .text:00483274j
		cmp	dword_5EBC78, 1
		jnz	short loc_4832C4
		lea	ecx, a1Group;[esi+20EAh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-208h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_4832F0
; ---------------------------------------------------------------------------

loc_4832C4:				; CODE XREF: .text:0048329Bj
		mov	ecx, dword_5EBC78
		push	ecx
		lea	eax, aIGroups;[esi+20FAh]
		push	eax		; src
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-208h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_4832F0:				; CODE XREF: .text:00483270j
					; .text:004832C2j
		cmp	dword_5EBC7C, 0
		jle	short loc_483376
		test	ebx, ebx
		jle	short loc_48331B
		mov	edx, ebx
		lea	eax, asc_543C58;[esi+20E4h]
		lea	ecx, [ebp-208h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_48331B:				; CODE XREF: .text:004832FBj
		cmp	dword_5EBC7C, 1
		jnz	short loc_48334B
		lea	eax, a1Translator;[esi+210Eh]
		push	eax		; src
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-208h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_483376
; ---------------------------------------------------------------------------

loc_48334B:				; CODE XREF: .text:00483322j
		mov	eax, dword_5EBC7C
		push	eax
		lea	edx, aITranslators;[esi+2128h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-208h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_483376:				; CODE XREF: .text:004832F7j
					; .text:00483349j
		cmp	dword_5EBC80, 0
		jle	short loc_4833FD
		test	ebx, ebx
		jle	short loc_4833A1
		mov	ecx, ebx
		lea	edx, asc_543C58;[esi+20E4h]
		lea	eax, [ebp-208h]
		add	ecx, ecx
		add	ecx, eax
		push	edx		; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_4833A1:				; CODE XREF: .text:00483381j
		cmp	dword_5EBC80, 1
		jnz	short loc_4833D1
		lea	edx, a1Structure;[esi+2146h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-208h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_4833FD
; ---------------------------------------------------------------------------

loc_4833D1:				; CODE XREF: .text:004833A8j
		mov	edx, dword_5EBC80
		push	edx
		lea	ecx, aIStructures;[esi+215Eh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-208h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_4833FD:				; CODE XREF: .text:0048337Dj
					; .text:004833CFj
		cmp	dword_5EBC84, 0
		jle	short loc_483484
		test	ebx, ebx
		jle	short loc_483428
		mov	eax, ebx
		lea	ecx, asc_543C58;[esi+20E4h]
		lea	edx, [ebp-208h]
		add	eax, eax
		add	eax, edx
		push	ecx		; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_483428:				; CODE XREF: .text:00483408j
		cmp	dword_5EBC84, 1
		jnz	short loc_483458
		lea	ecx, a1Type;[esi+217Ah]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-208h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_483484
; ---------------------------------------------------------------------------

loc_483458:				; CODE XREF: .text:0048342Fj
		mov	ecx, dword_5EBC84
		push	ecx
		lea	eax, aITypes;[esi+2188h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-208h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_483484:				; CODE XREF: .text:00483404j
					; .text:00483456j
		cmp	dword_5EBC88, 0
		jle	short loc_48350A
		test	ebx, ebx
		jle	short loc_4834AF
		mov	edx, ebx
		lea	eax, asc_543C58;[esi+20E4h]
		lea	ecx, [ebp-208h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_4834AF:				; CODE XREF: .text:0048348Fj
		cmp	dword_5EBC88, 1
		jnz	short loc_4834DF
		lea	eax, a1Function;[esi+219Ah]
		push	eax		; src
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-208h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_48350A
; ---------------------------------------------------------------------------

loc_4834DF:				; CODE XREF: .text:004834B6j
		mov	eax, dword_5EBC88
		push	eax
		lea	edx, aIFunctions;[esi+21B0h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-208h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_48350A:				; CODE XREF: .text:0048348Bj
					; .text:004834DDj
		cmp	dword_5EBC8C, 0
		jle	short loc_483591
		test	ebx, ebx
		jle	short loc_483535
		mov	ecx, ebx
		lea	edx, asc_543C58;[esi+20E4h]
		lea	eax, [ebp-208h]
		add	ecx, ecx
		add	ecx, eax
		push	edx		; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_483535:				; CODE XREF: .text:00483515j
		cmp	dword_5EBC8C, 1
		jnz	short loc_483565
		lea	edx, a1DataBlock;[esi+21CAh]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-208h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_483591
; ---------------------------------------------------------------------------

loc_483565:				; CODE XREF: .text:0048353Cj
		mov	edx, dword_5EBC8C
		push	edx
		lea	ecx, aIDataBlocks;[esi+21E4h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-208h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_483591:				; CODE XREF: .text:00483511j
					; .text:00483563j
		test	ebx, ebx
		jle	short loc_4835AF
		lea	ecx, [ebp-208h]
		push	ecx		; arglist
		lea	eax, aS_13;[esi+1FA4h]
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_4835AF:				; CODE XREF: .text:00483593j
		mov	eax, dword_5E9E40
		mov	edi, dword_5E9E28
		add	eax, dword_5E9E50
		add	edi, dword_5E9E34
		add	eax, dword_5E9E60
		add	eax, dword_5E9E70
		add	eax, dword_5E9E80
		shl	eax, 2
		add	edi, eax
		mov	eax, offset dword_5E9EC8
		xor	ebx, ebx

loc_4835E4:				; CODE XREF: .text:004835FAj
		cmp	dword ptr [eax], 0
		jz	short loc_4835F3
		mov	edx, [eax+8]
		shl	edx, 2
		add	edx, edi
		mov	edi, edx

loc_4835F3:				; CODE XREF: .text:004835E7j
		inc	ebx
		add	eax, 50h
		cmp	ebx, 18h
		jl	short loc_4835E4
		test	edi, edi
		jle	short loc_48361B
		push	edi		; arglist
		lea	ecx, aTotalSizeOfKno;[esi+2202h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_48361B:				; CODE XREF: .text:004835FEj
		xor	eax, eax

loc_48361D:				; CODE XREF: .text:00482AA8j
					; .text:00482BA6j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		