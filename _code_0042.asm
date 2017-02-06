.code

loc_43AFE0:				; CODE XREF: .text:004D9687p
					; .text:004D96A1p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_43AFFC
		test	edi, edi
		jz	short loc_43AFFC
		cmp	edi, 100000h
		jbe	short loc_43B000

loc_43AFFC:				; CODE XREF: .text:0043AFEEj
					; .text:0043AFF2j
		xor	eax, eax
		jmp	short loc_43B056
; ---------------------------------------------------------------------------

loc_43B000:				; CODE XREF: .text:0043AFFAj
		xor	eax, eax
		lea	ebx, [esi+4]
		jmp	short loc_43B017
; ---------------------------------------------------------------------------

loc_43B007:				; CODE XREF: .text:0043B019j
		mov	edx, 100000h
		sub	edx, [ebx+4]
		cmp	edi, edx
		jbe	short loc_43B01B
		inc	eax		; int
		add	ebx, 8

loc_43B017:				; CODE XREF: .text:0043B005j
		cmp	eax, [esi]
		jl	short loc_43B007

loc_43B01B:				; CODE XREF: .text:0043B011j
		mov	edx, [esi]	; int
		cmp	eax, edx
		jl	short loc_43B04E
		cmp	edx, 100h
		jl	short loc_43B02D
		xor	eax, eax
		jmp	short loc_43B056
; ---------------------------------------------------------------------------

loc_43B02D:				; CODE XREF: .text:0043B027j
		push	3		; flags
		push	100000h		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebx], eax
		cmp	dword ptr [ebx], 0
		jnz	short loc_43B047
		xor	eax, eax
		jmp	short loc_43B056
; ---------------------------------------------------------------------------

loc_43B047:				; CODE XREF: .text:0043B041j
		xor	edx, edx
		mov	[ebx+4], edx
		inc	dword ptr [esi]

loc_43B04E:				; CODE XREF: .text:0043B01Fj
		mov	eax, [ebx]
		add	eax, [ebx+4]
		add	[ebx+4], edi

loc_43B056:				; CODE XREF: .text:0043AFFEj
					; .text:0043B02Bj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_43B05C(void *s)
loc_43B05C:				; CODE XREF: .text:004DBCF4p
					; .text:004DE4C2p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_43B099
		xor	ebx, ebx
		lea	esi, [edi+4]
		jmp	short loc_43B07D
; ---------------------------------------------------------------------------

loc_43B070:				; CODE XREF: .text:0043B087j
		mov	eax, [esi]
		push	eax		; data
		call	Virtfree
		pop	ecx
		inc	ebx
		add	esi, 8

loc_43B07D:				; CODE XREF: .text:0043B06Ej
		cmp	ebx, [edi]
		jge	short loc_43B089
		cmp	ebx, 100h
		jl	short loc_43B070

loc_43B089:				; CODE XREF: .text:0043B07Fj
		push	804h		; n
		push	0		; c
		push	edi		; s
		call	_memset
		add	esp, 0Ch

loc_43B099:				; CODE XREF: .text:0043B067j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43B0A0:				; CODE XREF: .text:0043C107p
					; .text:0043C44Fp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		test	byte ptr mode, 40h
		push	edi
		mov	ebx, [ebp+8]
		jz	short loc_43B11A
		cmp	dword_5E071C, 0
		jz	short loc_43B11A
		mov	eax, dword_5E071C
		test	byte ptr [eax],	40h
		jz	short loc_43B11A
		xor	edx, edx
		mov	eax, dword_5E071C
		add	eax, 194h

loc_43B0D1:				; CODE XREF: .text:0043B118j
		cmp	dword ptr [eax+4], 0
		jz	short loc_43B111
		mov	ecx, [eax]
		mov	esi, [ebx+3Ch]
		cmp	ecx, esi
		ja	short loc_43B111
		mov	ecx, esi
		mov	edi, [eax]
		add	edi, [eax+4]
		add	ecx, [ebx+0Ch]
		cmp	ecx, edi
		ja	short loc_43B111
		add	esi, eax
		mov	edx, [ebx+0Ch]
		push	edx		; n
		add	esi, 8
		sub	esi, [eax]
		lea	eax, [ebx+40h]
		push	esi		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		or	dword ptr [ebx], 10000000h
		mov	eax, [ebx+0Ch]
		jmp	short loc_43B130
; ---------------------------------------------------------------------------

loc_43B111:				; CODE XREF: .text:0043B0D5j
					; .text:0043B0DEj ...
		inc	edx
		add	eax, 18h
		cmp	edx, 2
		jl	short loc_43B0D1

loc_43B11A:				; CODE XREF: .text:0043B0B0j
					; .text:0043B0B9j ...
		push	1		; mode
		mov	edx, [ebx+0Ch]
		push	edx		; size
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		add	ebx, 40h
		push	ebx		; buf
		call	Readmemory
		add	esp, 10h

loc_43B130:				; CODE XREF: .text:0043B10Fj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43B138:				; CODE XREF: .text:0044184Cp
					; .text:00441C16p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43B152
		test	eax, eax
		jz	short loc_43B152
		cmp	eax, 20h
		jbe	short loc_43B157

loc_43B152:				; CODE XREF: .text:0043B147j
					; .text:0043B14Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B157:				; CODE XREF: .text:0043B150j
		cmp	edx, 9
		jz	short loc_43B161
		cmp	edx, 0Ah
		jnz	short loc_43B19A

loc_43B161:				; CODE XREF: .text:0043B15Aj
		cmp	dword_5BDCC8, 3
		jnz	short loc_43B182
		push	offset a_ascii	; ".ASCII"
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	loc_43B27B
; ---------------------------------------------------------------------------

loc_43B182:				; CODE XREF: .text:0043B168j
		push	(offset	a_ascii+2) ; "ASCII"
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	loc_43B27B
; ---------------------------------------------------------------------------

loc_43B19A:				; CODE XREF: .text:0043B15Fj
		cmp	edx, 0Bh
		jz	short loc_43B1A4
		cmp	edx, 0Ch
		jnz	short loc_43B1DD

loc_43B1A4:				; CODE XREF: .text:0043B19Dj
		cmp	dword_5BDCC8, 3
		jnz	short loc_43B1C5
		push	offset a_unicode ; ".UNICODE"
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	loc_43B27B
; ---------------------------------------------------------------------------

loc_43B1C5:				; CODE XREF: .text:0043B1ABj
		push	(offset	a_unicode+2) ; "UNICODE"
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	loc_43B27B
; ---------------------------------------------------------------------------

loc_43B1DD:				; CODE XREF: .text:0043B1A2j
		cmp	dword_5BDCC8, 2
		jnz	short loc_43B244
		cmp	eax, 10h
		jnz	short loc_43B209
		cmp	dword_5BDCF0, 1
		jnz	short loc_43B209
		push	offset aXmmword	; "XMMWORD"
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43B27B
; ---------------------------------------------------------------------------

loc_43B209:				; CODE XREF: .text:0043B1E9j
					; .text:0043B1F2j
		cmp	eax, 20h
		jnz	short loc_43B22C
		cmp	dword_5BDCF0, 1
		jnz	short loc_43B22C
		push	offset aYmmword_1 ; "YMMWORD"
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43B27B
; ---------------------------------------------------------------------------

loc_43B22C:				; CODE XREF: .text:0043B20Cj
					; .text:0043B215j
		mov	edx, sizename[eax*4]
		push	edx
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43B27B
; ---------------------------------------------------------------------------

loc_43B244:				; CODE XREF: .text:0043B1E4j
		cmp	dword_5BDCC8, 3
		jnz	short loc_43B265
		mov	ecx, sizeatt[eax*4]
		push	ecx
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43B27B
; ---------------------------------------------------------------------------

loc_43B265:				; CODE XREF: .text:0043B24Bj
		mov	eax, sizekey[eax*4]
		push	eax
		push	100h
		push	ebx
		call	loc_410A49
		add	esp, 0Ch

loc_43B27B:				; CODE XREF: .text:0043B17Dj
					; .text:0043B195j ...
		mov	word ptr [ebx+eax*2], 20h
		inc	eax
		cmp	dword_5BDCD0, 0
		jz	short loc_43B29C
		cmp	eax, 8
		jge	short loc_43B29C

loc_43B290:				; CODE XREF: .text:0043B29Aj
		mov	word ptr [ebx+eax*2], 20h
		inc	eax
		cmp	eax, 8
		jl	short loc_43B290

loc_43B29C:				; CODE XREF: .text:0043B289j
					; .text:0043B28Ej
		mov	word ptr [ebx+eax*2], 0
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl __GetPolymorphicDTC(void *, unsigned int)
@__GetPolymorphicDTC$qpvui:		; CODE XREF: .text:0043E2C2p
					; .text:0043E4A3p
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43B2B0:				; CODE XREF: .text:0043BFEAp
					; .text:0043C39Cp ...
		push	ebp
		mov	ebp, esp
		mov	edx, dword_5E0720
		and	edx, 3Fh
		mov	eax, [ebp+0Ch]
		cmp	edx, 8
		jg	short loc_43B2DA
		jz	loc_43B35C
		dec	edx
		jz	short loc_43B2F1
		dec	edx
		jz	short loc_43B312
		sub	edx, 2
		jz	short loc_43B336
		jmp	loc_43B3CE
; ---------------------------------------------------------------------------

loc_43B2DA:				; CODE XREF: .text:0043B2C2j
		sub	edx, 10h
		jz	loc_43B382
		sub	edx, 10h
		jz	loc_43B3A8
		jmp	loc_43B3CE
; ---------------------------------------------------------------------------

loc_43B2F1:				; CODE XREF: .text:0043B2CBj
		test	eax, eax
		jnz	short loc_43B2FE
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 10h

loc_43B2FE:				; CODE XREF: .text:0043B2F3j
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43B30E
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 4

loc_43B30E:				; CODE XREF: .text:0043B302j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B312:				; CODE XREF: .text:0043B2CEj
		dec	eax
		jnz	short loc_43B31F
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 10h

loc_43B31F:				; CODE XREF: .text:0043B313j
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43B32F
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 4

loc_43B32F:				; CODE XREF: .text:0043B323j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B336:				; CODE XREF: .text:0043B2D3j
		cmp	eax, 2
		jnz	short loc_43B345
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 10h

loc_43B345:				; CODE XREF: .text:0043B339j
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43B355
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 4

loc_43B355:				; CODE XREF: .text:0043B349j
		mov	eax, 2
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B35C:				; CODE XREF: .text:0043B2C4j
		cmp	eax, 3
		jnz	short loc_43B36B
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 10h

loc_43B36B:				; CODE XREF: .text:0043B35Fj
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43B37B
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 4

loc_43B37B:				; CODE XREF: .text:0043B36Fj
		mov	eax, 3
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B382:				; CODE XREF: .text:0043B2DDj
		cmp	eax, 4
		jnz	short loc_43B391
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 10h

loc_43B391:				; CODE XREF: .text:0043B385j
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43B3A1
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 4

loc_43B3A1:				; CODE XREF: .text:0043B395j
		mov	eax, 4
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B3A8:				; CODE XREF: .text:0043B2E6j
		cmp	eax, 5
		jnz	short loc_43B3B7
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 10h

loc_43B3B7:				; CODE XREF: .text:0043B3ABj
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43B3C7
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 4

loc_43B3C7:				; CODE XREF: .text:0043B3BBj
		mov	eax, 5
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B3CE:				; CODE XREF: .text:0043B2D5j
					; .text:0043B2ECj
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B3D0:				; CODE XREF: .text:0043C251p
					; .text:0043C270p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+1Ch]
		mov	edi, [ebp+8]
		cmp	dword_5BDCC8, 3
		jnz	loc_43B584
		xor	ebx, ebx
		mov	eax, edi
		and	eax, 0F0000h
		cmp	eax, 80000h
		jnz	short loc_43B401
		mov	word ptr [esi+ebx*2], 2Ah
		inc	ebx

loc_43B401:				; CODE XREF: .text:0043B3F8j
		cmp	dword_5BDCD8, 0
		jz	short loc_43B41B
		test	edi, 80000000h
		jnz	short loc_43B41B
		test	byte ptr mode+1, 8
		jz	short loc_43B424

loc_43B41B:				; CODE XREF: .text:0043B408j
					; .text:0043B410j
		test	byte ptr dword_5E0720, 3Fh
		jz	short loc_43B453

loc_43B424:				; CODE XREF: .text:0043B419j
		mov	word ptr [esi+ebx*2], 25h
		inc	ebx
		mov	edx, [ebp+10h]
		mov	eax, 100h
		sub	eax, ebx
		mov	ecx, segname[edx*4]
		push	ecx
		push	eax
		lea	edx, [esi+ebx*2]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [esi+ebx*2], 3Ah
		inc	ebx

loc_43B453:				; CODE XREF: .text:0043B422j
		cmp	dword ptr [ebp+18h], 0
		jge	short loc_43B482
		cmp	dword ptr [ebp+18h], 0FFFFC000h
		jle	short loc_43B482
		mov	word ptr [esi+ebx*2], 2Dh
		inc	ebx
		mov	ecx, [ebp+18h]
		neg	ecx
		push	ecx		; u
		lea	eax, [esi+ebx*2]
		push	eax		; s
		call	HexprintW
		add	esp, 8
		add	ebx, eax
		jmp	loc_43B54A
; ---------------------------------------------------------------------------

loc_43B482:				; CODE XREF: .text:0043B457j
					; .text:0043B460j
		cmp	dword ptr [ebp+18h], 0
		jz	loc_43B54A
		cmp	dword ptr [ebp+10h], 4
		jz	short loc_43B4A1
		cmp	dword ptr [ebp+10h], 5
		jz	short loc_43B4A1
		test	byte ptr mode, 10h
		jnz	short loc_43B4B8

loc_43B4A1:				; CODE XREF: .text:0043B490j
					; .text:0043B496j
		mov	edx, [ebp+18h]
		push	edx		; u
		lea	ecx, [esi+ebx*2]
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		add	ebx, eax
		jmp	loc_43B54A
; ---------------------------------------------------------------------------

loc_43B4B8:				; CODE XREF: .text:0043B49Fj
		mov	eax, 20000h
		cmp	dword_5BDD04, 0
		jnz	short loc_43B4CB
		add	eax, 0FFFF0000h

loc_43B4CB:				; CODE XREF: .text:0043B4C4j
		mov	[ebp-4], eax
		mov	eax, edi
		and	eax, 0F0000h
		cmp	eax, 80000h
		jnz	short loc_43B4E5
		or	dword ptr [ebp-4], 406000h
		jmp	short loc_43B4F0
; ---------------------------------------------------------------------------

loc_43B4E5:				; CODE XREF: .text:0043B4DAj
		test	eax, eax
		jnz	short loc_43B4F0
		or	dword ptr [ebp-4], 300000h

loc_43B4F0:				; CODE XREF: .text:0043B4E3j
					; .text:0043B4E7j
		cmp	dword_5BDD00, 0
		jz	short loc_43B502
		test	byte ptr mode+1, 8
		jz	short loc_43B509

loc_43B502:				; CODE XREF: .text:0043B4F7j
		or	dword ptr [ebp-4], 100h

loc_43B509:				; CODE XREF: .text:0043B500j
		test	edi, 30000000h
		jz	short loc_43B515
		xor	edx, edx
		jmp	short loc_43B521
; ---------------------------------------------------------------------------

loc_43B515:				; CODE XREF: .text:0043B50Fj
		mov	edx, dword_5E0714
		add	edx, 16D0h

loc_43B521:				; CODE XREF: .text:0043B513j
		mov	eax, 100h
		push	edx		; comment
		sub	eax, ebx
		lea	ecx, [esi+ebx*2]
		push	eax		; nsymb
		push	ecx		; symb
		mov	edx, dword_5E0714
		mov	eax, [ebp-4]
		push	eax		; mode
		mov	ecx, [edx+0Ch]
		push	ecx		; amod
		mov	eax, [ebp+18h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	ebx, eax

loc_43B54A:				; CODE XREF: .text:0043B47Dj
					; .text:0043B486j ...
		mov	edx, [ebp+14h]
		cmp	word ptr [edx],	0
		jz	loc_43B942
		mov	word ptr [esi+ebx*2], 28h
		inc	ebx
		mov	ecx, [ebp+14h]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx
		push	eax
		lea	edx, [esi+ebx*2]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [esi+ebx*2], 29h
		inc	ebx
		jmp	loc_43B942
; ---------------------------------------------------------------------------

loc_43B584:				; CODE XREF: .text:0043B3E4j
		mov	ecx, edi
		and	ecx, 0F0000h
		cmp	ecx, 90000h
		jnz	short loc_43B5AB
		push	offset aFar	; "FAR "
		push	100h
		push	esi
		call	loc_410A49
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_43B5DB
; ---------------------------------------------------------------------------

loc_43B5AB:				; CODE XREF: .text:0043B592j
		cmp	dword_5BDCE0, 0
		jz	short loc_43B5D9
		mov	eax, edi
		and	eax, 0F0000h
		cmp	eax, 80000h
		jnz	short loc_43B5D9
		push	offset aNear	; "NEAR	"
		push	100h
		push	esi
		call	loc_410A49
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_43B5DB
; ---------------------------------------------------------------------------

loc_43B5D9:				; CODE XREF: .text:0043B5B2j
					; .text:0043B5C0j
		xor	ebx, ebx

loc_43B5DB:				; CODE XREF: .text:0043B5A9j
					; .text:0043B5D7j
		cmp	dword_5BDCC8, 0
		jz	short loc_43B621
		mov	word ptr [esi+ebx*2], 5Bh
		inc	ebx
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43B621
		mov	eax, [ebp+14h]
		cmp	word ptr [eax],	0
		jnz	short loc_43B621
		test	byte ptr mode+1, 8
		jnz	short loc_43B621
		push	offset aSmall	; "SMALL "
		mov	edx, 100h
		sub	edx, ebx
		push	edx
		lea	ecx, [esi+ebx*2]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax

loc_43B621:				; CODE XREF: .text:0043B5E2j
					; .text:0043B5F2j ...
		cmp	dword ptr [ebp+0Ch], 20h
		jg	loc_43B76E
		mov	eax, edi
		and	eax, 0FFh
		cmp	eax, 27h
		jz	loc_43B76E
		cmp	dword_5BDCDC, 0
		jnz	short loc_43B650
		test	edi, 8000000h
		jz	loc_43B76E

loc_43B650:				; CODE XREF: .text:0043B642j
		test	byte ptr mode+1, 8
		jnz	loc_43B76E
		cmp	dword_5BDCC8, 2
		jnz	short loc_43B681
		push	offset aType_1	; "TYPE	"
		mov	edx, 100h
		sub	edx, ebx
		push	edx
		lea	ecx, [esi+ebx*2]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax

loc_43B681:				; CODE XREF: .text:0043B664j
		mov	eax, edi
		and	eax, 0FFh
		cmp	eax, 1Eh
		jnz	short loc_43B6CA
		cmp	dword_5BDCC8, 1
		jnz	short loc_43B6CA
		mov	edx, [ebp+0Ch]
		sar	edx, 1
		jns	short loc_43B6A0
		adc	edx, 0

loc_43B6A0:				; CODE XREF: .text:0043B69Bj
		mov	ecx, sizename[edx*4]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx
		push	eax
		lea	edx, [esi+ebx*2]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [esi+ebx*2], 20h
		inc	ebx
		jmp	loc_43B74A
; ---------------------------------------------------------------------------

loc_43B6CA:				; CODE XREF: .text:0043B68Bj
					; .text:0043B694j
		cmp	dword ptr [ebp+0Ch], 10h
		jnz	short loc_43B6F6
		cmp	dword_5BDCF0, 1
		jnz	short loc_43B6F6
		push	offset aXmmword_1 ; "XMMWORD "
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx
		lea	eax, [esi+ebx*2]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_43B74A
; ---------------------------------------------------------------------------

loc_43B6F6:				; CODE XREF: .text:0043B6CEj
					; .text:0043B6D7j
		cmp	dword ptr [ebp+0Ch], 20h
		jnz	short loc_43B722
		cmp	dword_5BDCF0, 1
		jnz	short loc_43B722
		push	offset aYmmword	; "YMMWORD "
		mov	edx, 100h
		sub	edx, ebx
		push	edx
		lea	ecx, [esi+ebx*2]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_43B74A
; ---------------------------------------------------------------------------

loc_43B722:				; CODE XREF: .text:0043B6FAj
					; .text:0043B703j
		mov	eax, [ebp+0Ch]
		mov	ecx, 100h
		sub	ecx, ebx
		mov	edx, sizename[eax*4]
		push	edx
		push	ecx
		lea	eax, [esi+ebx*2]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [esi+ebx*2], 20h
		inc	ebx

loc_43B74A:				; CODE XREF: .text:0043B6C5j
					; .text:0043B6F4j ...
		cmp	dword_5BDCC8, 0
		jnz	short loc_43B76E
		push	offset aPtr	; "PTR "
		mov	edx, 100h
		sub	edx, ebx
		push	edx
		lea	ecx, [esi+ebx*2]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax

loc_43B76E:				; CODE XREF: .text:0043B625j
					; .text:0043B635j ...
		cmp	dword_5BDCD8, 0
		jz	short loc_43B788
		test	edi, 80000000h
		jnz	short loc_43B788
		test	byte ptr mode+1, 8
		jz	short loc_43B791

loc_43B788:				; CODE XREF: .text:0043B775j
					; .text:0043B77Dj
		test	byte ptr dword_5E0720, 3Fh
		jz	short loc_43B7B9

loc_43B791:				; CODE XREF: .text:0043B786j
		mov	eax, [ebp+10h]
		mov	ecx, 100h
		sub	ecx, ebx
		mov	edx, segname[eax*4]
		push	edx
		push	ecx
		lea	eax, [esi+ebx*2]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [esi+ebx*2], 3Ah
		inc	ebx

loc_43B7B9:				; CODE XREF: .text:0043B78Fj
		cmp	dword_5BDCC8, 0
		jnz	short loc_43B7FF
		mov	word ptr [esi+ebx*2], 5Bh
		inc	ebx
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43B7FF
		mov	edx, [ebp+14h]
		cmp	word ptr [edx],	0
		jnz	short loc_43B7FF
		test	byte ptr mode+1, 8
		jnz	short loc_43B7FF
		push	offset aSmall	; "SMALL "
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx
		lea	eax, [esi+ebx*2]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax

loc_43B7FF:				; CODE XREF: .text:0043B7C0j
					; .text:0043B7D0j ...
		mov	edx, [ebp+14h]
		cmp	word ptr [edx],	0
		jz	short loc_43B822
		mov	ecx, [ebp+14h]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx
		push	eax
		lea	edx, [esi+ebx*2]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax

loc_43B822:				; CODE XREF: .text:0043B806j
		mov	ecx, [ebp+14h]
		cmp	word ptr [ecx],	0
		jz	short loc_43B85A
		cmp	dword ptr [ebp+18h], 0
		jge	short loc_43B85A
		cmp	dword ptr [ebp+18h], 0FFFFC000h
		jle	short loc_43B85A
		mov	word ptr [esi+ebx*2], 2Dh
		inc	ebx
		mov	eax, [ebp+18h]
		neg	eax
		push	eax		; u
		lea	edx, [esi+ebx*2]
		push	edx		; s
		call	HexprintW
		add	esp, 8
		add	ebx, eax
		jmp	loc_43B93B
; ---------------------------------------------------------------------------

loc_43B85A:				; CODE XREF: .text:0043B829j
					; .text:0043B82Fj ...
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_43B86D
		mov	ecx, [ebp+14h]
		cmp	word ptr [ecx],	0
		jnz	loc_43B93B

loc_43B86D:				; CODE XREF: .text:0043B85Ej
		mov	eax, [ebp+14h]
		cmp	word ptr [eax],	0
		jz	short loc_43B87D
		mov	word ptr [esi+ebx*2], 2Bh
		inc	ebx

loc_43B87D:				; CODE XREF: .text:0043B874j
		cmp	dword ptr [ebp+10h], 4
		jz	short loc_43B892
		cmp	dword ptr [ebp+10h], 5
		jz	short loc_43B892
		test	byte ptr mode, 10h
		jnz	short loc_43B8A9

loc_43B892:				; CODE XREF: .text:0043B881j
					; .text:0043B887j
		mov	edx, [ebp+18h]
		push	edx		; u
		lea	ecx, [esi+ebx*2]
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		add	ebx, eax
		jmp	loc_43B93B
; ---------------------------------------------------------------------------

loc_43B8A9:				; CODE XREF: .text:0043B890j
		mov	eax, 20000h
		cmp	dword_5BDD04, 0
		jnz	short loc_43B8BC
		add	eax, 0FFFF0000h

loc_43B8BC:				; CODE XREF: .text:0043B8B5j
		mov	[ebp-4], eax
		mov	eax, edi
		and	eax, 0F0000h
		cmp	eax, 80000h
		jnz	short loc_43B8D6
		or	dword ptr [ebp-4], 406000h
		jmp	short loc_43B8E1
; ---------------------------------------------------------------------------

loc_43B8D6:				; CODE XREF: .text:0043B8CBj
		test	eax, eax
		jnz	short loc_43B8E1
		or	dword ptr [ebp-4], 300000h

loc_43B8E1:				; CODE XREF: .text:0043B8D4j
					; .text:0043B8D8j
		cmp	dword_5BDD00, 0
		jz	short loc_43B8F3
		test	byte ptr mode+1, 8
		jz	short loc_43B8FA

loc_43B8F3:				; CODE XREF: .text:0043B8E8j
		or	dword ptr [ebp-4], 100h

loc_43B8FA:				; CODE XREF: .text:0043B8F1j
		test	edi, 30000000h
		jz	short loc_43B906
		xor	edx, edx
		jmp	short loc_43B912
; ---------------------------------------------------------------------------

loc_43B906:				; CODE XREF: .text:0043B900j
		mov	edx, dword_5E0714
		add	edx, 16D0h

loc_43B912:				; CODE XREF: .text:0043B904j
		mov	eax, 100h
		push	edx		; comment
		sub	eax, ebx
		lea	ecx, [esi+ebx*2]
		push	eax		; nsymb
		push	ecx		; symb
		mov	edx, dword_5E0714
		mov	eax, [ebp-4]
		push	eax		; mode
		mov	ecx, [edx+0Ch]
		push	ecx		; amod
		mov	eax, [ebp+18h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	ebx, eax

loc_43B93B:				; CODE XREF: .text:0043B855j
					; .text:0043B867j ...
		mov	word ptr [esi+ebx*2], 5Dh
		inc	ebx

loc_43B942:				; CODE XREF: .text:0043B551j
					; .text:0043B57Fj
		mov	word ptr [esi+ebx*2], 0
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43B950:				; CODE XREF: .text:0043C290p
					; .text:0043C499p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	eax, [esi+3Ch]
		push	eax		; _addr
		call	Findmemory
		test	byte ptr mode, 80h
		pop	ecx
		jnz	short loc_43B97A
		test	eax, eax
		jz	short loc_43B97A
		test	byte ptr [eax+0Ah], 18h
		jnz	short loc_43B97E

loc_43B97A:				; CODE XREF: .text:0043B96Ej
					; .text:0043B972j
		xor	edx, edx
		jmp	short loc_43B983
; ---------------------------------------------------------------------------

loc_43B97E:				; CODE XREF: .text:0043B978j
		mov	edx, 1

loc_43B983:				; CODE XREF: .text:0043B97Cj
		mov	eax, edi
		xor	ebx, ebx
		and	eax, 0FFh
		mov	[ebp-4], edx
		cmp	eax, 27h
		jnz	loc_43BA42
		cmp	dword ptr [ebp-4], 0
		jz	short loc_43B9AB
		push	offset aStackAddress ; "Stack address="
		call	_T
		pop	ecx
		jmp	short loc_43B9B6
; ---------------------------------------------------------------------------

loc_43B9AB:				; CODE XREF: .text:0043B99Cj
		push	offset aAddress_8 ; "Address="
		call	_T
		pop	ecx

loc_43B9B6:				; CODE XREF: .text:0043B9A9j
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+ebx*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, [esi+34h]
		cmp	ecx, [esi+3Ch]
		jz	short loc_43BA27
		mov	eax, [esi+20h]
		mov	ecx, 100h
		sub	ecx, ebx
		mov	edx, segname[eax*4]
		push	edx
		push	ecx
		lea	eax, [esi+ebx*2+260h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [esi+ebx*2+260h], 3Ah
		inc	ebx
		mov	edx, [esi+34h]
		push	edx		; u
		lea	ecx, [esi+ebx*2+260h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		mov	word ptr [esi+ebx*2+260h], 3Dh
		inc	ebx

loc_43BA27:				; CODE XREF: .text:0043B9D4j
		mov	eax, [esi+3Ch]
		push	eax		; u
		lea	esi, [esi+ebx*2+260h]
		push	esi		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		jmp	loc_43BB84
; ---------------------------------------------------------------------------

loc_43BA42:				; CODE XREF: .text:0043B992j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_43BAA7
		mov	eax, edi
		and	eax, 0FFh
		cmp	eax, 28h
		jz	short loc_43BA59
		cmp	eax, 2Ah
		jnz	short loc_43BA81

loc_43BA59:				; CODE XREF: .text:0043BA52j
		push	offset aTopOfStack ; "Top of stack "
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [esi+ebx*2+260h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_43BAA7
; ---------------------------------------------------------------------------

loc_43BA81:				; CODE XREF: .text:0043BA57j
		push	offset aStack	; "Stack "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [esi+ebx*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_43BAA7:				; CODE XREF: .text:0043BA46j
					; .text:0043BA7Fj
		mov	ecx, [esi+34h]
		cmp	ecx, [esi+3Ch]
		jz	short loc_43BB1F
		mov	word ptr [esi+ebx*2+260h], 5Bh
		mov	eax, [esi+20h]
		inc	ebx
		mov	ecx, 100h
		sub	ecx, ebx
		mov	edx, segname[eax*4]
		push	edx
		push	ecx
		lea	eax, [esi+ebx*2+260h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [esi+ebx*2+260h], 3Ah
		inc	ebx
		mov	edx, [esi+34h]
		push	edx		; u
		lea	ecx, [esi+ebx*2+260h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		mov	eax, 100h
		sub	eax, ebx
		push	offset asc_531302 ; "]="
		push	eax		; n
		lea	edx, [esi+ebx*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_43BB1F:				; CODE XREF: .text:0043BAADj
		mov	word ptr [esi+ebx*2+260h], 5Bh
		inc	ebx
		mov	ecx, [esi+3Ch]
		push	ecx		; u
		lea	eax, [esi+ebx*2+260h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		mov	edx, 100h
		sub	edx, ebx
		push	offset asc_531308 ; "]"
		push	edx		; n
		lea	ecx, [esi+ebx*2+260h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		test	byte ptr [esi+3], 2
		jnz	short loc_43BB84
		push	$CTW0("=???")	; "=???"
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	esi, [esi+ebx*2+260h]
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_43BB84:				; CODE XREF: .text:0043BA3Dj
					; .text:0043BB63j
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43BB8C:				; CODE XREF: .text:00444A2Dp
					; .text:00444A98p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		and	eax, 0FFh
		add	eax, 0FFFFFFC0h	; switch 70 cases
		cmp	eax, 45h
		ja	loc_43BC3C	; jumptable 0043BBA9 default case
		mov	al, ds:byte_43BBB0[eax]
		jmp	ds:off_43BBF6[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_43BBB0	db	1,     1,     1,     4 ; DATA XREF: .text:0043BBA3r
		db	4,     6,     6,     5 ; indirect table	for switch statement
		db	5,     6,     6,     3
		db	5,     1,     6,     6
		db	6,     6,     6,     6
		db	5,     5,     5,     5
		db	1,     1,     1,     1
		db	1,     1,     4,     4
		db	4,     4,     3,     3
		db	3,     3,     3,     2
		db	2,     2,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     6,     6,     5
		db	5,     1,     4,     3
		db	2,     1
off_43BBF6	dd offset loc_43BC3C, offset loc_43BC12, offset	loc_43BC35
					; DATA XREF: .text:0043BBA9r
		dd offset loc_43BC27, offset loc_43BC19, offset	loc_43BC2E ; jump table	for switch statement
		dd offset loc_43BC20
; ---------------------------------------------------------------------------

loc_43BC12:				; CODE XREF: .text:0043BBA9j
					; DATA XREF: .text:off_43BBF6o
		mov	eax, 1		; jumptable 0043BBA9 cases 64-66,77,88-93,129,133
		jmp	short loc_43BC41
; ---------------------------------------------------------------------------

loc_43BC19:				; CODE XREF: .text:0043BBA9j
					; DATA XREF: .text:off_43BBF6o
		mov	eax, 2		; jumptable 0043BBA9 cases 67,68,94-97,130
		jmp	short loc_43BC41
; ---------------------------------------------------------------------------

loc_43BC20:				; CODE XREF: .text:0043BBA9j
					; DATA XREF: .text:off_43BBF6o
		mov	eax, 4		; jumptable 0043BBA9 cases 69,70,73,74,78-83,125,126
		jmp	short loc_43BC41
; ---------------------------------------------------------------------------

loc_43BC27:				; CODE XREF: .text:0043BBA9j
					; DATA XREF: .text:off_43BBF6o
		mov	eax, 4		; jumptable 0043BBA9 cases 75,98-102,131
		jmp	short loc_43BC41
; ---------------------------------------------------------------------------

loc_43BC2E:				; CODE XREF: .text:0043BBA9j
					; DATA XREF: .text:off_43BBF6o
		mov	eax, 8		; jumptable 0043BBA9 cases 71,72,76,84-87,127,128
		jmp	short loc_43BC41
; ---------------------------------------------------------------------------

loc_43BC35:				; CODE XREF: .text:0043BBA9j
					; DATA XREF: .text:off_43BBF6o
		mov	eax, 8		; jumptable 0043BBA9 cases 103-105,132
		jmp	short loc_43BC41
; ---------------------------------------------------------------------------

loc_43BC3C:				; CODE XREF: .text:0043BB9Dj
					; .text:0043BBA9j
					; DATA XREF: ...
		mov	eax, 1		; jumptable 0043BBA9 default case

loc_43BC41:				; CODE XREF: .text:0043BC17j
					; .text:0043BC1Ej ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43BC44:				; CODE XREF: .text:00443B83p
					; .text:00443BA6p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+10h]
		cmp	edi, 1
		mov	dword ptr [ebx], 1
		mov	[ebx+10h], edi
		mov	[ebx+0Ch], edi
		mov	[ebx+14h], esi
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		jnz	short loc_43BC77
		push	esi		; bytereg
		call	Byteregtodwordreg
		pop	ecx
		jmp	short loc_43BC79
; ---------------------------------------------------------------------------

loc_43BC77:				; CODE XREF: .text:0043BC6Cj
		mov	eax, esi

loc_43BC79:				; CODE XREF: .text:0043BC75j
		test	byte ptr [ebp+0Bh], 10h
		jnz	short loc_43BC9D
		mov	ecx, eax
		mov	edx, 1
		shl	edx, cl
		mov	[ebx+18h], edx
		mov	ecx, eax
		mov	edx, 1
		shl	edx, cl
		mov	ecx, dword_5E0714
		or	[ecx+34h], edx

loc_43BC9D:				; CODE XREF: .text:0043BC7Dj
		test	byte ptr [ebp+0Bh], 30h
		jz	short loc_43BCC1
		mov	ecx, eax
		mov	edx, 1
		shl	edx, cl
		mov	[ebx+1Ch], edx
		mov	ecx, eax
		mov	edx, 1
		shl	edx, cl
		mov	ecx, dword_5E0714
		or	[ecx+38h], edx

loc_43BCC1:				; CODE XREF: .text:0043BCA1j
		test	byte ptr [ebp+0Bh], 2
		jz	short loc_43BCD8
		cmp	eax, 4
		jnz	short loc_43BCD8
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 2000h

loc_43BCD8:				; CODE XREF: .text:0043BCC5j
					; .text:0043BCCAj
		test	byte ptr mode, 5
		jz	loc_43BD76
		xor	eax, eax
		cmp	dword_5BDCC8, 3
		jnz	short loc_43BD11
		mov	edx, [ebp+8]
		and	edx, 0F0000h
		cmp	edx, 80000h
		jnz	short loc_43BD09
		mov	word ptr [ebx+eax*2+60h], 2Ah
		inc	eax

loc_43BD09:				; CODE XREF: .text:0043BCFFj
		mov	word ptr [ebx+eax*2+60h], 25h
		inc	eax

loc_43BD11:				; CODE XREF: .text:0043BCEEj
		cmp	edi, 4
		jnz	short loc_43BD35
		mov	ecx, off_52FC84[esi*4]
		mov	edx, 100h
		sub	edx, eax
		push	ecx
		push	edx
		lea	eax, [ebx+eax*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43BD76
; ---------------------------------------------------------------------------

loc_43BD35:				; CODE XREF: .text:0043BD14j
		cmp	edi, 1
		jnz	short loc_43BD59
		mov	ecx, regname[esi*4]
		mov	edx, 100h
		sub	edx, eax
		push	ecx
		push	edx
		lea	eax, [ebx+eax*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43BD76
; ---------------------------------------------------------------------------

loc_43BD59:				; CODE XREF: .text:0043BD38j
		mov	ecx, off_52FC64[esi*4]
		mov	edx, 100h
		sub	edx, eax
		push	ecx
		push	edx
		lea	eax, [ebx+eax*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43BD76:				; CODE XREF: .text:0043BCDFj
					; .text:0043BD33j ...
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43BDF8
		cmp	edi, 4
		jnz	short loc_43BD8D
		mov	edx, [eax+esi*4+0Ch]
		mov	[ebx+40h], edx
		jmp	short loc_43BDD1
; ---------------------------------------------------------------------------

loc_43BD8D:				; CODE XREF: .text:0043BD82j
		cmp	edi, 1
		jnz	short loc_43BDBE
		cmp	esi, 4
		jge	short loc_43BDA8
		mov	ecx, dword_5E071C
		xor	eax, eax
		mov	al, [ecx+esi*4+0Ch]
		mov	[ebx+40h], eax
		jmp	short loc_43BDD1
; ---------------------------------------------------------------------------

loc_43BDA8:				; CODE XREF: .text:0043BD95j
		mov	edx, dword_5E071C
		mov	ecx, [edx+esi*4-4]
		shr	ecx, 8
		xor	eax, eax
		mov	al, cl
		mov	[ebx+40h], eax
		jmp	short loc_43BDD1
; ---------------------------------------------------------------------------

loc_43BDBE:				; CODE XREF: .text:0043BD90j
		mov	edx, dword_5E071C
		mov	ecx, [edx+esi*4+0Ch]
		and	ecx, 0FFFFh
		mov	[ebx+40h], ecx

loc_43BDD1:				; CODE XREF: .text:0043BD8Bj
					; .text:0043BDA6j ...
		test	byte ptr mode, 4
		jz	short loc_43BDF2
		lea	eax, [ebx+60h]
		lea	edx, [ebx+260h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43BDF2:				; CODE XREF: .text:0043BDD8j
		or	dword ptr [ebx], 2000000h

loc_43BDF8:				; CODE XREF: .text:0043BD7Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43BE00:				; CODE XREF: .text:00443F3Ap
					; .text:00443FA6p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF6Ch
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+18h]
		mov	edi, [ebp+10h]
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_43BE29
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 2
		or	eax, 0FFFFFFFFh
		jmp	loc_43C29A
; ---------------------------------------------------------------------------

loc_43BE29:				; CODE XREF: .text:0043BE16j
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43BE51
		xor	edx, edx
		mov	dl, [edi]
		mov	dword_5E0728, 1
		lea	esi, [edx+edx*4]
		lea	esi, [edx+esi*4]
		shl	esi, 3
		add	esi, offset tmpcmdinfo
		jmp	short loc_43BEAA
; ---------------------------------------------------------------------------

loc_43BE51:				; CODE XREF: .text:0043BE30j
		xor	eax, eax
		mov	al, [edi]
		lea	esi, [eax+eax*4]
		lea	esi, [eax+esi*4]
		shl	esi, 3
		add	esi, offset stru_593CC6
		cmp	dword ptr [esi+4], 0
		jnz	short loc_43BE76
		mov	dword_5E0728, 1
		jmp	short loc_43BEAA
; ---------------------------------------------------------------------------

loc_43BE76:				; CODE XREF: .text:0043BE68j
		cmp	dword ptr [ebp+14h], 2
		jnb	short loc_43BE8D
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 2
		or	eax, 0FFFFFFFFh
		jmp	loc_43C29A
; ---------------------------------------------------------------------------

loc_43BE8D:				; CODE XREF: .text:0043BE7Aj
		xor	edx, edx
		mov	dl, [edi+1]
		lea	ecx, [edx+edx*4]
		lea	ecx, [edx+ecx*4]
		shl	ecx, 3
		add	ecx, [esi+4]
		mov	dword_5E0728, 2
		mov	esi, ecx

loc_43BEAA:				; CODE XREF: .text:0043BE4Fj
					; .text:0043BE74j
		xor	eax, eax
		mov	al, [edi]
		and	eax, 0C0h
		cmp	eax, 0C0h
		jnz	short loc_43BEC1
		xor	eax, eax
		jmp	loc_43C29A
; ---------------------------------------------------------------------------

loc_43BEC1:				; CODE XREF: .text:0043BEB8j
		mov	eax, [ebp+0Ch]
		lea	ecx, [esi+18h]
		mov	[ebx+0Ch], eax
		mov	[ebx+10h], eax
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword_5E0744, 1
		mov	dword_5E0748, 1
		mov	edx, [esi+0Ch]
		lea	eax, [ebx+24h]
		mov	[ebx], edx
		push	8		; n
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [esi+20h]
		mov	[ebx+2Ch], edx
		mov	ecx, dword_5E0714
		mov	eax, [esi+20h]
		or	[ecx+34h], eax
		mov	eax, [esi+8]
		mov	dword_5E072C, eax
		test	eax, eax
		jz	loc_43BFE2
		mov	edx, [ebp+14h]
		cmp	edx, [esi]
		jnb	short loc_43BF37
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 2
		or	eax, 0FFFFFFFFh
		jmp	loc_43C29A
; ---------------------------------------------------------------------------

loc_43BF37:				; CODE XREF: .text:0043BF23j
		cmp	dword_5E072C, 1
		jnz	short loc_43BF5A
		mov	edx, dword_5E0728
		mov	eax, dword_5E0714
		movsx	ecx, byte ptr [edi+edx]
		mov	[eax+44h], ecx
		mov	[ebx+30h], ecx
		jmp	loc_43BFE2
; ---------------------------------------------------------------------------

loc_43BF5A:				; CODE XREF: .text:0043BF3Ej
		cmp	dword_5E072C, 4
		jnz	short loc_43BFCC
		mov	edx, dword_5E0724
		mov	eax, dword_5E0714
		add	edx, dword_5E0728
		mov	[eax+24h], edx
		test	byte ptr mode, 10h
		jz	short loc_43BFB7
		mov	edx, [eax+0Ch]
		mov	ecx, dword_5E0714
		add	edx, [ecx+24h]
		push	edx		; _addr
		push	0		; pmod
		call	Findfixup
		add	esp, 8
		test	eax, eax
		jz	short loc_43BFB7
		mov	edx, dword_5E0714
		mov	ecx, [edx+0Ch]
		mov	edx, dword_5E0714
		add	ecx, [edx+24h]
		cmp	ecx, [eax]
		jnz	short loc_43BFB7
		or	dword ptr [ebx], 10000h

loc_43BFB7:				; CODE XREF: .text:0043BF7Ej
					; .text:0043BF99j ...
		mov	eax, dword_5E0728
		mov	ecx, [edi+eax]
		mov	eax, dword_5E0714
		mov	[eax+44h], ecx
		mov	[ebx+30h], ecx
		jmp	short loc_43BFE2
; ---------------------------------------------------------------------------

loc_43BFCC:				; CODE XREF: .text:0043BF61j
		mov	edx, dword_5E0728
		movzx	eax, word ptr [edi+edx]
		mov	edx, dword_5E0714
		mov	[edx+44h], eax
		mov	[ebx+30h], eax

loc_43BFE2:				; CODE XREF: .text:0043BF18j
					; .text:0043BF55j ...
		mov	edx, [esi+14h]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_43B2B0
		add	esp, 8
		mov	[ebx+20h], eax
		cmp	dword ptr [esi+20h], 0
		jnz	short loc_43C049
		mov	eax, [ebx+30h]
		mov	[ebx+34h], eax
		or	dword ptr [ebx], 800000h
		mov	eax, [ebx+20h]
		cmp	eax, 4
		jz	short loc_43C014
		cmp	eax, 5
		jnz	short loc_43C01A

loc_43C014:				; CODE XREF: .text:0043C00Dj
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43C02B

loc_43C01A:				; CODE XREF: .text:0043C012j
		mov	edx, [ebx+30h]
		mov	[ebx+3Ch], edx
		or	dword ptr [ebx], 1000000h
		jmp	loc_43C0B1
; ---------------------------------------------------------------------------

loc_43C02B:				; CODE XREF: .text:0043C018j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43C0B1
		mov	edx, [ebx+20h]
		mov	ecx, [eax+edx*4+48h]
		add	ecx, [ebx+30h]
		mov	[ebx+3Ch], ecx
		or	dword ptr [ebx], 1000000h
		jmp	short loc_43C0B1
; ---------------------------------------------------------------------------

loc_43C049:				; CODE XREF: .text:0043BFF9j
		cmp	dword_5E071C, 0
		jz	short loc_43C0B1
		mov	eax, [ebx+30h]
		lea	edx, [ebx+24h]
		mov	[ebp-4], eax
		xor	eax, eax

loc_43C05D:				; CODE XREF: .text:0043C075j
		movzx	edi, byte ptr [edx]
		mov	ecx, dword_5E071C
		inc	edx
		mov	ecx, [ecx+eax*4+0Ch]
		inc	eax
		imul	ecx, edi
		add	[ebp-4], ecx
		cmp	eax, 8
		jl	short loc_43C05D
		test	byte ptr [ebx+2], 20h
		jz	short loc_43C084
		and	dword ptr [ebp-4], 0FFFFh

loc_43C084:				; CODE XREF: .text:0043C07Bj
		mov	eax, [ebp-4]
		mov	[ebx+34h], eax
		test	byte ptr [ebp+0Bh], 80h
		jnz	short loc_43C0A5
		mov	edx, dword_5E071C
		mov	ecx, [ebx+20h]
		mov	eax, [edx+ecx*4+48h]
		add	eax, [ebp-4]
		mov	[ebx+3Ch], eax
		jmp	short loc_43C0AB
; ---------------------------------------------------------------------------

loc_43C0A5:				; CODE XREF: .text:0043C08Ej
		mov	edx, [ebp-4]
		mov	[ebx+3Ch], edx

loc_43C0AB:				; CODE XREF: .text:0043C0A3j
		or	dword ptr [ebx], 1800000h

loc_43C0B1:				; CODE XREF: .text:0043C026j
					; .text:0043C032j ...
		test	byte ptr mode, 10h
		jz	short loc_43C117
		test	byte ptr [ebx+3], 1
		jz	short loc_43C117
		push	0		; nname
		push	0		; _name
		push	26h		; type
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_43C0F1
		push	44h		; datasize
		lea	eax, [ebp-94h]
		push	eax		; data
		push	28h		; type
		mov	edx, [ebx+3Ch]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_43C0F7

loc_43C0F1:				; CODE XREF: .text:0043C0D4j
		or	dword ptr [ebx], 20000h

loc_43C0F7:				; CODE XREF: .text:0043C0EFj
		test	byte ptr mode, 20h
		jz	short loc_43C106
		test	byte ptr [ebx+2], 2
		jnz	short loc_43C117

loc_43C106:				; CODE XREF: .text:0043C0FEj
		push	ebx
		call	loc_43B0A0
		pop	ecx
		test	eax, eax
		jz	short loc_43C117
		or	dword ptr [ebx], 2000000h

loc_43C117:				; CODE XREF: .text:0043C0B8j
					; .text:0043C0BEj ...
		cmp	dword ptr [ebp+0Ch], 2
		jnz	short loc_43C137
		mov	ecx, [ebp+8]
		and	ecx, 0F0000h
		cmp	ecx, 80000h
		jnz	short loc_43C137
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 20h

loc_43C137:				; CODE XREF: .text:0043C11Bj
					; .text:0043C12Cj
		test	byte ptr mode, 1
		jz	loc_43C278
		mov	edi, [ebx+30h]
		cmp	dword_5BDCC8, 3
		jnz	short loc_43C155
		lea	eax, [esi+68h]
		jmp	short loc_43C158
; ---------------------------------------------------------------------------

loc_43C155:				; CODE XREF: .text:0043C14Ej
		lea	eax, [esi+28h]

loc_43C158:				; CODE XREF: .text:0043C153j
		test	byte ptr mode+1, 2
		mov	[ebp-8], eax
		jz	loc_43C22F
		cmp	dword ptr [ebx+20h], 4
		jz	loc_43C22F
		cmp	dword ptr [ebx+2Ch], 10h
		jnz	short loc_43C17E
		cmp	byte ptr [ebx+28h], 1
		jz	short loc_43C192

loc_43C17E:				; CODE XREF: .text:0043C176j
		cmp	dword ptr [ebx+2Ch], 20h
		jnz	loc_43C22F
		cmp	byte ptr [ebx+29h], 1
		jnz	loc_43C22F

loc_43C192:				; CODE XREF: .text:0043C17Cj
		mov	edx, dword_5E0714
		mov	ecx, [edx+0Ch]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_43C22F
		mov	eax, dword_5E0714
		mov	edx, [eax+0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-0Ch]
		add	ecx, 950h
		push	ecx		; pdat
		call	Findsimpledata
		add	esp, 8
		mov	[ebp-10h], eax
		test	eax, eax
		jz	short loc_43C22F
		cmp	dword ptr [ebx+2Ch], 10h
		jnz	short loc_43C1E0
		mov	edx, [ebp-10h]
		test	byte ptr [edx+5], 6
		jnz	short loc_43C1EF

loc_43C1E0:				; CODE XREF: .text:0043C1D5j
		cmp	dword ptr [ebx+2Ch], 20h
		jnz	short loc_43C22F
		mov	ecx, [ebp-10h]
		test	byte ptr [ecx+5], 1
		jz	short loc_43C22F

loc_43C1EF:				; CODE XREF: .text:0043C1DEj
		cmp	dword ptr [ebx+2Ch], 10h
		jnz	short loc_43C1FF
		mov	eax, [ebp-10h]
		mov	eax, [eax+6]
		add	eax, edi
		jmp	short loc_43C207
; ---------------------------------------------------------------------------

loc_43C1FF:				; CODE XREF: .text:0043C1F3j
		mov	edx, [ebp-10h]
		mov	eax, [edx+0Ah]
		add	eax, edi

loc_43C207:				; CODE XREF: .text:0043C1FDj
		push	40h		; len
		lea	edx, [ebp-50h]
		push	edx		; _name
		mov	ecx, [ebp+0Ch]
		push	ecx		; datasize
		push	eax		; offs
		mov	eax, dword_5E0714
		mov	edx, [eax+0Ch]
		push	edx		; ip
		call	Decodearglocal
		add	esp, 14h
		test	eax, eax
		jle	short loc_43C22F
		lea	ecx, [ebp-50h]
		xor	edi, edi
		mov	[ebp-8], ecx

loc_43C22F:				; CODE XREF: .text:0043C162j
					; .text:0043C16Cj ...
		test	byte ptr mode+1, 8
		jz	short loc_43C25B
		test	byte ptr [ebp+0Bh], 80h
		jz	short loc_43C25B
		lea	eax, [ebx+60h]
		push	eax
		push	edi
		mov	edx, [ebp-8]
		push	edx
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B3D0
		add	esp, 18h
		jmp	short loc_43C278
; ---------------------------------------------------------------------------

loc_43C25B:				; CODE XREF: .text:0043C236j
					; .text:0043C23Cj
		lea	edx, [ebx+60h]
		push	edx
		push	edi
		mov	ecx, [ebp-8]
		push	ecx
		mov	eax, [ebx+20h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_43B3D0
		add	esp, 18h

loc_43C278:				; CODE XREF: .text:0043C13Ej
					; .text:0043C259j
		mov	eax, mode
		and	eax, 14h
		cmp	eax, 14h
		jnz	short loc_43C298
		test	byte ptr [ebx+3], 1
		jz	short loc_43C298
		push	ebx
		mov	edx, [ebp+8]
		push	edx
		call	loc_43B950
		add	esp, 8

loc_43C298:				; CODE XREF: .text:0043C283j
					; .text:0043C289j
		mov	eax, [esi]

loc_43C29A:				; CODE XREF: .text:0043BE24j
					; .text:0043BE88j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43C2A4:				; CODE XREF: .text:004441B0p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB8h
		test	byte ptr dword_5E0720, 80h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+18h]
		mov	esi, [ebp+8]
		jz	short loc_43C2CB
		mov	dword_5E072C, 2
		jmp	short loc_43C2D5
; ---------------------------------------------------------------------------

loc_43C2CB:				; CODE XREF: .text:0043C2BDj
		mov	dword_5E072C, 4

loc_43C2D5:				; CODE XREF: .text:0043C2C9j
		mov	eax, [ebp+14h]
		cmp	eax, dword_5E072C
		jnb	short loc_43C2F2
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 2
		or	eax, 0FFFFFFFFh
		jmp	loc_43C4A6
; ---------------------------------------------------------------------------

loc_43C2F2:				; CODE XREF: .text:0043C2DEj
		mov	dword ptr [ebx], 900100h
		mov	[ebx+10h], edi
		mov	[ebx+0Ch], edi
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword_5E0744, 1
		mov	dword_5E0748, 1
		cmp	dword_5E072C, 4
		jnz	short loc_43C381
		mov	eax, dword_5E0714
		mov	edx, dword_5E0724
		mov	[eax+24h], edx
		test	byte ptr mode, 10h
		jz	short loc_43C36F
		mov	ecx, [eax+0Ch]
		mov	eax, dword_5E0714
		add	ecx, [eax+24h]
		push	ecx		; _addr
		push	0		; pmod
		call	Findfixup
		add	esp, 8
		test	eax, eax
		jz	short loc_43C36F
		mov	edx, dword_5E0714
		mov	ecx, [edx+0Ch]
		mov	edx, dword_5E0714
		add	ecx, [edx+24h]
		cmp	ecx, [eax]
		jnz	short loc_43C36F
		or	dword ptr [ebx], 10000h

loc_43C36F:				; CODE XREF: .text:0043C337j
					; .text:0043C351j ...
		mov	eax, [ebp+10h]
		mov	ecx, [eax]
		mov	eax, dword_5E0714
		mov	[eax+44h], ecx
		mov	[ebx+30h], ecx
		jmp	short loc_43C399
; ---------------------------------------------------------------------------

loc_43C381:				; CODE XREF: .text:0043C320j
		mov	edx, [ebp+10h]
		movzx	eax, word ptr [edx]
		mov	edx, dword_5E0714
		mov	[edx+44h], eax
		mov	[ebx+30h], eax
		or	dword ptr [ebx], 200000h

loc_43C399:				; CODE XREF: .text:0043C37Fj
		push	3
		push	esi
		call	loc_43B2B0
		add	esp, 8
		mov	[ebx+20h], eax
		mov	edx, [ebx+30h]
		mov	[ebx+34h], edx
		mov	eax, [ebx+20h]
		cmp	eax, 4
		jz	short loc_43C3BA
		cmp	eax, 5
		jnz	short loc_43C3C2

loc_43C3BA:				; CODE XREF: .text:0043C3B3j
		test	esi, 80000000h
		jz	short loc_43C3D0

loc_43C3C2:				; CODE XREF: .text:0043C3B8j
		mov	edx, [ebx+30h]
		mov	[ebx+3Ch], edx
		or	dword ptr [ebx], 1000000h
		jmp	short loc_43C3EC
; ---------------------------------------------------------------------------

loc_43C3D0:				; CODE XREF: .text:0043C3C0j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43C3EC
		mov	edx, [ebx+20h]
		mov	ecx, [eax+edx*4+48h]
		add	ecx, [ebx+30h]
		mov	[ebx+3Ch], ecx
		or	dword ptr [ebx], 1000000h

loc_43C3EC:				; CODE XREF: .text:0043C3CEj
					; .text:0043C3D7j
		test	byte ptr mode, 10h
		jz	short loc_43C460
		test	byte ptr [ebx+3], 1
		jz	short loc_43C460
		mov	[ebp-4], edi
		cmp	dword ptr [ebp-4], 20h
		jbe	short loc_43C40B
		mov	dword ptr [ebp-4], 20h

loc_43C40B:				; CODE XREF: .text:0043C402j
		push	0		; nname
		push	0		; _name
		push	26h		; type
		mov	eax, [ebx+3Ch]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_43C439
		push	44h		; datasize
		lea	edx, [ebp-48h]
		push	edx		; data
		push	28h		; type
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_43C43F

loc_43C439:				; CODE XREF: .text:0043C41Fj
		or	dword ptr [ebx], 20000h

loc_43C43F:				; CODE XREF: .text:0043C437j
		test	byte ptr mode, 20h
		jz	short loc_43C44E
		test	byte ptr [ebx+2], 2
		jnz	short loc_43C460

loc_43C44E:				; CODE XREF: .text:0043C446j
		push	ebx
		call	loc_43B0A0
		pop	ecx
		cmp	eax, [ebp-4]
		jnz	short loc_43C460
		or	dword ptr [ebx], 2000000h

loc_43C460:				; CODE XREF: .text:0043C3F3j
					; .text:0043C3F9j ...
		test	byte ptr mode, 1
		jz	short loc_43C484
		lea	eax, [ebx+60h]
		push	eax
		mov	edx, [ebx+30h]
		push	edx
		push	(offset	aAl_2+3) ; ""
		mov	ecx, [ebx+20h]
		push	ecx
		push	edi
		push	esi
		call	loc_43B3D0
		add	esp, 18h

loc_43C484:				; CODE XREF: .text:0043C467j
		mov	eax, mode
		and	eax, 14h
		cmp	eax, 14h
		jnz	short loc_43C4A1
		test	byte ptr [ebx+3], 1
		jz	short loc_43C4A1
		push	ebx
		push	esi
		call	loc_43B950
		add	esp, 8

loc_43C4A1:				; CODE XREF: .text:0043C48Fj
					; .text:0043C495j
		mov	eax, dword_5E072C

loc_43C4A6:				; CODE XREF: .text:0043C2EDj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43C4B0:				; CODE XREF: .text:004442F8p
					; .text:0044432Bp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF78h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+20h]
		mov	edi, [ebp+1Ch]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 80100h
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_43C4EE
		or	dword ptr [ebx], 8000h
		mov	[ebx+14h], esi
		mov	ecx, esi
		mov	eax, 1
		shl	eax, cl
		mov	edx, dword_5E0714
		or	[edx+38h], eax
		jmp	short loc_43C4F5
; ---------------------------------------------------------------------------

loc_43C4EE:				; CODE XREF: .text:0043C4CFj
		mov	dword ptr [ebx+14h], 0FFFFFFFFh

loc_43C4F5:				; CODE XREF: .text:0043C4ECj
		cmp	dword ptr [ebp+18h], 2
		jnz	short loc_43C503
		or	dword ptr [ebx], 200000h
		jmp	short loc_43C529
; ---------------------------------------------------------------------------

loc_43C503:				; CODE XREF: .text:0043C4F9j
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_43C529
		mov	dword_5E0744, 1
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43C529
		or	dword ptr [ebx], 200000h
		mov	dword ptr [ebp+18h], 2

loc_43C529:				; CODE XREF: .text:0043C501j
					; .text:0043C507j ...
		cmp	dword ptr [ebp+14h], 0FFFFFFFFh
		jnz	short loc_43C54C
		push	3
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B2B0
		add	esp, 8
		mov	[ebx+20h], eax
		mov	dword_5E0748, 1
		jmp	short loc_43C552
; ---------------------------------------------------------------------------

loc_43C54C:				; CODE XREF: .text:0043C52Dj
		mov	edx, [ebp+14h]
		mov	[ebx+20h], edx

loc_43C552:				; CODE XREF: .text:0043C54Aj
		mov	eax, edi
		mov	[ebx+0Ch], eax
		mov	[ebx+10h], eax
		mov	byte ptr [ebx+esi+24h],	1
		mov	ecx, esi
		mov	eax, 1
		shl	eax, cl
		mov	[ebx+2Ch], eax
		mov	edx, dword_5E0714
		or	[edx+34h], eax
		cmp	edi, 2
		jnz	short loc_43C593
		mov	ecx, [ebp+8]
		and	ecx, 0F0000h
		cmp	ecx, 80000h
		jnz	short loc_43C593
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 20h

loc_43C593:				; CODE XREF: .text:0043C577j
					; .text:0043C588j
		test	byte ptr mode, 1
		jz	loc_43C648
		cmp	dword_5BDCC8, 3
		jnz	short loc_43C5BE
		push	offset asc_53159E ; "%"
		push	20h		; n
		lea	edx, [ebp-44h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43C5C0
; ---------------------------------------------------------------------------

loc_43C5BE:				; CODE XREF: .text:0043C5A7j
		xor	eax, eax

loc_43C5C0:				; CODE XREF: .text:0043C5BCj
		cmp	dword ptr [ebp+18h], 2
		mov	edx, 1
		jz	short loc_43C5CC
		inc	edx

loc_43C5CC:				; CODE XREF: .text:0043C5C9j
		shl	edx, 5
		lea	ecx, regname[edx]
		mov	edx, [ecx+esi*4]
		mov	ecx, 20h
		sub	ecx, eax
		push	edx		; src
		lea	edx, [ebp-44h]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword ptr [ebp+14h], 0FFFFFFFFh
		jnz	short loc_43C614
		lea	eax, [ebx+60h]
		lea	ecx, [ebp-44h]
		push	eax
		push	0
		push	ecx
		mov	eax, [ebx+20h]
		push	eax
		push	edi
		mov	edx, [ebp+8]
		push	edx
		call	loc_43B3D0
		add	esp, 18h
		jmp	short loc_43C648
; ---------------------------------------------------------------------------

loc_43C614:				; CODE XREF: .text:0043C5F5j
		mov	ecx, dword_5E0720
		lea	eax, [ebx+60h]
		mov	[ebp-4], ecx
		push	eax
		and	dword_5E0720, 0FFFFFFC0h
		lea	edx, [ebp-44h]
		push	0
		push	edx
		mov	ecx, [ebx+20h]
		push	ecx
		push	edi
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B3D0
		add	esp, 18h
		mov	edx, [ebp-4]
		mov	dword_5E0720, edx

loc_43C648:				; CODE XREF: .text:0043C59Aj
					; .text:0043C612j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	loc_43C712
		cmp	dword ptr [ebp+18h], 2
		jnz	short loc_43C66A
		mov	edx, [eax+esi*4+0Ch]
		and	edx, 0FFFFh
		mov	[ebx+34h], edx
		jmp	short loc_43C677
; ---------------------------------------------------------------------------

loc_43C66A:				; CODE XREF: .text:0043C659j
		mov	ecx, dword_5E071C
		mov	eax, [ecx+esi*4+0Ch]
		mov	[ebx+34h], eax

loc_43C677:				; CODE XREF: .text:0043C668j
		mov	edx, dword_5E071C
		mov	ecx, [ebx+20h]
		mov	eax, [edx+ecx*4+48h]
		add	eax, [ebx+34h]
		mov	[ebx+3Ch], eax
		or	dword ptr [ebx], 1800000h
		test	byte ptr mode, 10h
		jz	short loc_43C712
		mov	esi, edi
		cmp	esi, 20h
		jbe	short loc_43C6A5
		mov	esi, 20h

loc_43C6A5:				; CODE XREF: .text:0043C69Ej
		push	0		; nname
		push	0		; _name
		push	26h		; type
		mov	eax, [ebx+3Ch]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_43C6D6
		push	44h		; datasize
		lea	edx, [ebp-88h]
		push	edx		; data
		push	28h		; type
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_43C6DC

loc_43C6D6:				; CODE XREF: .text:0043C6B9j
		or	dword ptr [ebx], 20000h

loc_43C6DC:				; CODE XREF: .text:0043C6D4j
		test	byte ptr mode, 20h
		jz	short loc_43C6EB
		test	byte ptr [ebx+2], 2
		jnz	short loc_43C6FC

loc_43C6EB:				; CODE XREF: .text:0043C6E3j
		push	ebx
		call	loc_43B0A0
		pop	ecx
		cmp	esi, eax
		jnz	short loc_43C6FC
		or	dword ptr [ebx], 2000000h

loc_43C6FC:				; CODE XREF: .text:0043C6E9j
					; .text:0043C6F4j
		test	byte ptr mode, 4
		jz	short loc_43C712
		push	ebx
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B950
		add	esp, 8

loc_43C712:				; CODE XREF: .text:0043C64Fj
					; .text:0043C697j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43C71C:				; CODE XREF: .text:004445BDp
					; .text:004445ECp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 88100h
		mov	dword ptr [ebx+14h], 4
		mov	dword ptr [ebx+2Ch], 10h
		mov	eax, dword_5E0714
		or	dword ptr [eax+34h], 10h
		mov	edx, dword_5E0714
		or	dword ptr [edx+38h], 10h
		mov	dword_5E0744, 1
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43C772
		or	dword ptr [ebx], 200000h
		mov	edi, 2
		jmp	short loc_43C777
; ---------------------------------------------------------------------------

loc_43C772:				; CODE XREF: .text:0043C763j
		mov	edi, 4

loc_43C777:				; CODE XREF: .text:0043C770j
		mov	dword ptr [ebx+20h], 2
		mov	eax, esi
		mov	[ebx+0Ch], eax
		mov	[ebx+10h], eax
		mov	byte ptr [ebx+28h], 1
		neg	eax
		mov	[ebx+30h], eax
		cmp	esi, 2
		jnz	short loc_43C7AF
		mov	edx, [ebp+8]
		and	edx, 0F0000h
		cmp	edx, 80000h
		jnz	short loc_43C7AF
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 20h

loc_43C7AF:				; CODE XREF: .text:0043C792j
					; .text:0043C7A3j
		test	byte ptr mode, 1
		jz	loc_43C83C
		cmp	dword_5BDCC8, 3
		jnz	short loc_43C7DA
		push	offset asc_53159E ; "%"
		push	20h		; n
		lea	eax, [ebp-44h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43C7DC
; ---------------------------------------------------------------------------

loc_43C7DA:				; CODE XREF: .text:0043C7C3j
		xor	eax, eax

loc_43C7DC:				; CODE XREF: .text:0043C7D8j
		mov	edx, 1
		cmp	edi, 2
		jz	short loc_43C7E7
		inc	edx

loc_43C7E7:				; CODE XREF: .text:0043C7E4j
		shl	edx, 5
		mov	ecx, off_52FC54[edx]
		mov	edx, 20h
		sub	edx, eax
		push	ecx		; src
		lea	ecx, [ebp-44h]
		add	eax, eax
		add	eax, ecx
		push	edx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, dword_5E0720
		mov	[ebp-4], eax
		lea	eax, [ebx+60h]
		push	eax
		lea	edx, [ebp-44h]
		and	dword_5E0720, 0FFFFFFC0h
		push	0
		push	edx
		mov	ecx, [ebx+20h]
		push	ecx
		push	esi
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B3D0
		add	esp, 18h
		mov	edx, [ebp-4]
		mov	dword_5E0720, edx

loc_43C83C:				; CODE XREF: .text:0043C7B6j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43C8C1
		cmp	edi, 2
		jnz	short loc_43C85A
		mov	edx, [eax+1Ch]
		sub	edx, esi
		and	edx, 0FFFFh
		mov	[ebx+34h], edx
		jmp	short loc_43C868
; ---------------------------------------------------------------------------

loc_43C85A:				; CODE XREF: .text:0043C848j
		mov	ecx, dword_5E071C
		mov	eax, [ecx+1Ch]
		sub	eax, esi
		mov	[ebx+34h], eax

loc_43C868:				; CODE XREF: .text:0043C858j
		mov	edx, dword_5E071C
		mov	ecx, [ebx+20h]
		mov	eax, [edx+ecx*4+48h]
		add	eax, [ebx+34h]
		mov	[ebx+3Ch], eax
		or	dword ptr [ebx], 1800000h
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_43C8C1
		test	byte ptr mode, 10h
		jz	short loc_43C8C1
		cmp	esi, 20h
		jbe	short loc_43C89A
		mov	esi, 20h

loc_43C89A:				; CODE XREF: .text:0043C893j
		push	ebx
		call	loc_43B0A0
		pop	ecx
		cmp	esi, eax
		jnz	short loc_43C8AB
		or	dword ptr [ebx], 2000000h

loc_43C8AB:				; CODE XREF: .text:0043C8A3j
		test	byte ptr mode, 4
		jz	short loc_43C8C1
		push	ebx
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B950
		add	esp, 8

loc_43C8C1:				; CODE XREF: .text:0043C843j
					; .text:0043C885j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43C8C8:				; CODE XREF: .text:0044461Bp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 88100h
		mov	dword ptr [ebx+14h], 4
		mov	dword ptr [ebx+2Ch], 10h
		mov	eax, dword_5E0714
		or	dword ptr [eax+34h], 10h
		mov	edx, dword_5E0714
		or	dword ptr [edx+38h], 10h
		mov	dword_5E0744, 1
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43C91E
		or	dword ptr [ebx], 200000h
		mov	edi, 2
		jmp	short loc_43C923
; ---------------------------------------------------------------------------

loc_43C91E:				; CODE XREF: .text:0043C90Fj
		mov	edi, 4

loc_43C923:				; CODE XREF: .text:0043C91Cj
		mov	dword ptr [ebx+20h], 2
		mov	eax, esi
		add	eax, eax
		mov	[ebx+0Ch], eax
		mov	[ebx+10h], esi
		mov	byte ptr [ebx+28h], 1
		neg	eax
		mov	[ebx+30h], eax
		test	byte ptr mode, 1
		jz	loc_43C9CA
		cmp	dword_5BDCC8, 3
		jnz	short loc_43C968
		push	offset asc_53159E ; "%"
		push	20h		; n
		lea	edx, [ebp-44h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43C96A
; ---------------------------------------------------------------------------

loc_43C968:				; CODE XREF: .text:0043C951j
		xor	eax, eax

loc_43C96A:				; CODE XREF: .text:0043C966j
		mov	edx, 1
		cmp	edi, 2
		jz	short loc_43C975
		inc	edx

loc_43C975:				; CODE XREF: .text:0043C972j
		shl	edx, 5
		mov	ecx, off_52FC54[edx]
		mov	edx, 20h
		sub	edx, eax
		push	ecx		; src
		lea	ecx, [ebp-44h]
		add	eax, eax
		add	eax, ecx
		push	edx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, dword_5E0720
		mov	[ebp-4], eax
		lea	eax, [ebx+60h]
		push	eax
		lea	edx, [ebp-44h]
		and	dword_5E0720, 0FFFFFFC0h
		push	0
		push	edx
		mov	ecx, [ebx+20h]
		push	ecx
		push	esi
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B3D0
		add	esp, 18h
		mov	edx, [ebp-4]
		mov	dword_5E0720, edx

loc_43C9CA:				; CODE XREF: .text:0043C944j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43CA13
		cmp	edi, 2
		jnz	short loc_43C9EA
		mov	edx, [eax+1Ch]
		add	esi, esi
		sub	edx, esi
		and	edx, 0FFFFh
		mov	[ebx+34h], edx
		jmp	short loc_43C9FA
; ---------------------------------------------------------------------------

loc_43C9EA:				; CODE XREF: .text:0043C9D6j
		mov	ecx, dword_5E071C
		mov	eax, [ecx+1Ch]
		add	esi, esi
		sub	eax, esi
		mov	[ebx+34h], eax

loc_43C9FA:				; CODE XREF: .text:0043C9E8j
		mov	edx, dword_5E071C
		mov	ecx, [ebx+20h]
		mov	eax, [edx+ecx*4+48h]
		add	eax, [ebx+34h]
		mov	[ebx+3Ch], eax
		or	dword ptr [ebx], 1800000h

loc_43CA13:				; CODE XREF: .text:0043C9D1j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43CA1C:				; CODE XREF: .text:00444644p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 88100h
		mov	dword ptr [ebx+14h], 4
		mov	dword ptr [ebx+2Ch], 10h
		mov	eax, dword_5E0714
		mov	edx, 0FFh
		mov	[eax+34h], edx
		mov	[ebx+18h], edx
		mov	eax, dword_5E0714
		or	dword ptr [eax+38h], 10h
		mov	dword_5E0744, 1
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43CA78
		or	dword ptr [ebx], 200000h
		mov	edi, 2
		jmp	short loc_43CA7D
; ---------------------------------------------------------------------------

loc_43CA78:				; CODE XREF: .text:0043CA69j
		mov	edi, 4

loc_43CA7D:				; CODE XREF: .text:0043CA76j
		mov	dword ptr [ebx+20h], 2
		mov	eax, esi
		shl	eax, 3
		mov	[ebx+0Ch], eax
		mov	[ebx+10h], esi
		mov	byte ptr [ebx+28h], 1
		neg	eax
		mov	[ebx+30h], eax
		test	byte ptr mode, 1
		jz	loc_43CB25
		cmp	dword_5BDCC8, 3
		jnz	short loc_43CAC3
		push	offset asc_53159E ; "%"
		push	20h		; n
		lea	edx, [ebp-44h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43CAC5
; ---------------------------------------------------------------------------

loc_43CAC3:				; CODE XREF: .text:0043CAACj
		xor	eax, eax

loc_43CAC5:				; CODE XREF: .text:0043CAC1j
		mov	edx, 1
		cmp	edi, 2
		jz	short loc_43CAD0
		inc	edx

loc_43CAD0:				; CODE XREF: .text:0043CACDj
		shl	edx, 5
		mov	ecx, off_52FC54[edx]
		mov	edx, 20h
		sub	edx, eax
		push	ecx		; src
		lea	ecx, [ebp-44h]
		add	eax, eax
		add	eax, ecx
		push	edx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, dword_5E0720
		mov	[ebp-4], eax
		lea	eax, [ebx+60h]
		push	eax
		lea	edx, [ebp-44h]

loc_43CB01:				; DATA XREF: .text:0049A573o
		and	dword_5E0720, 0FFFFFFC0h
		push	0
		push	edx
		mov	ecx, [ebx+20h]
		push	ecx
		push	esi
		mov	eax, [ebp+8]
		push	eax
		call	loc_43B3D0
		add	esp, 18h
		mov	edx, [ebp-4]
		mov	dword_5E0720, edx

loc_43CB25:				; CODE XREF: .text:0043CA9Fj
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43CB70
		cmp	edi, 2
		jnz	short loc_43CB46
		shl	esi, 3
		mov	edx, [eax+1Ch]
		sub	edx, esi
		and	edx, 0FFFFh
		mov	[ebx+34h], edx
		jmp	short loc_43CB57
; ---------------------------------------------------------------------------

loc_43CB46:				; CODE XREF: .text:0043CB31j
		mov	ecx, dword_5E071C
		shl	esi, 3
		mov	eax, [ecx+1Ch]
		sub	eax, esi
		mov	[ebx+34h], eax

loc_43CB57:				; CODE XREF: .text:0043CB44j
		mov	edx, dword_5E071C
		mov	ecx, [ebx+20h]
		mov	eax, [edx+ecx*4+48h]
		add	eax, [ebx+34h]
		mov	[ebx+3Ch], eax
		or	dword ptr [ebx], 1800000h

loc_43CB70:				; CODE XREF: .text:0043CB2Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43CB78:				; CODE XREF: .text:004443A8p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		mov	dword ptr [ebx], 80100h
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43CB98
		or	dword ptr [ebx], 200000h

loc_43CB98:				; CODE XREF: .text:0043CB90j
		mov	dword_5E0744, 1
		mov	dword_5E0748, 1
		mov	dword ptr [ebx+0Ch], 1
		mov	dword ptr [ebx+10h], 1
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		push	3
		push	esi
		call	loc_43B2B0
		add	esp, 8
		mov	[ebx+20h], eax
		mov	byte ptr [ebx+24h], 1
		mov	byte ptr [ebx+27h], 1
		mov	dword ptr [ebx+2Ch], 9
		mov	eax, dword_5E0714
		or	dword ptr [eax+34h], 9
		test	byte ptr mode, 1
		jz	short loc_43CC3B
		cmp	dword_5BDCC8, 3
		jnz	short loc_43CC10
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43CC09
		mov	eax, offset aBxAl ; "%BX,%AL"
		jmp	short loc_43CC25
; ---------------------------------------------------------------------------

loc_43CC09:				; CODE XREF: .text:0043CC00j
		mov	eax, offset aEbxAl_1 ; "%EBX,%AL"
		jmp	short loc_43CC25
; ---------------------------------------------------------------------------

loc_43CC10:				; CODE XREF: .text:0043CBF7j
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43CC20
		mov	eax, offset aBxAl_0 ; "BX+AL"
		jmp	short loc_43CC25
; ---------------------------------------------------------------------------

loc_43CC20:				; CODE XREF: .text:0043CC17j
		mov	eax, offset aEbxAl ; "EBX+AL"

loc_43CC25:				; CODE XREF: .text:0043CC07j
					; .text:0043CC0Ej ...
		lea	edx, [ebx+60h]
		push	edx
		push	0
		push	eax
		mov	ecx, [ebx+20h]
		push	ecx
		push	1
		push	esi
		call	loc_43B3D0
		add	esp, 18h

loc_43CC3B:				; CODE XREF: .text:0043CBEEj
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43CCAB
		mov	edx, [eax+18h]
		mov	ecx, [eax+0Ch]
		and	ecx, 0FFh
		add	edx, ecx
		mov	[ebx+34h], edx
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43CC65
		and	dword ptr [ebx+34h], 0FFFFh

loc_43CC65:				; CODE XREF: .text:0043CC5Cj
		mov	eax, dword_5E071C
		mov	edx, [ebx+20h]
		mov	ecx, [eax+edx*4+48h]
		add	ecx, [ebx+34h]
		mov	[ebx+3Ch], ecx
		or	dword ptr [ebx], 1800000h
		test	byte ptr mode, 10h
		jz	short loc_43CCAB
		push	ebx
		call	loc_43B0A0
		pop	ecx
		cmp	eax, 1
		jnz	short loc_43CC98
		or	dword ptr [ebx], 2000000h

loc_43CC98:				; CODE XREF: .text:0043CC90j
		test	byte ptr mode, 4
		jz	short loc_43CCAB
		push	ebx
		push	esi
		call	loc_43B950
		add	esp, 8

loc_43CCAB:				; CODE XREF: .text:0043CC42j
					; .text:0043CC84j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43CCB0:				; CODE XREF: .text:004446BDp
					; .text:00444704p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 2
		cmp	esi, 6
		jl	short loc_43CCD5
		or	dword ptr [ebx], 1000h
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 20h

loc_43CCD5:				; CODE XREF: .text:0043CCC4j
		mov	edx, 2
		mov	[ebx+10h], edx
		mov	[ebx+0Ch], edx
		mov	[ebx+14h], esi
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr [ebp+0Bh], 30h
		jz	short loc_43CCFC
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 80h

loc_43CCFC:				; CODE XREF: .text:0043CCEEj
		test	byte ptr mode, 5
		jz	short loc_43CD35
		xor	eax, eax
		cmp	dword_5BDCC8, 3
		jnz	short loc_43CD18
		mov	word ptr [ebx+eax*2+60h], 25h
		inc	eax

loc_43CD18:				; CODE XREF: .text:0043CD0Ej
		mov	edx, segname[esi*4]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx
		push	ecx
		lea	eax, [ebx+eax*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43CD35:				; CODE XREF: .text:0043CD03j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43CD71
		cmp	esi, 6
		jge	short loc_43CD71
		mov	edx, [eax+esi*4+30h]
		mov	[ebx+40h], edx
		test	byte ptr mode, 4
		jz	short loc_43CD6B
		lea	ecx, [ebx+60h]
		lea	eax, [ebx+260h]
		push	ecx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43CD6B:				; CODE XREF: .text:0043CD51j
		or	dword ptr [ebx], 2000000h

loc_43CD71:				; CODE XREF: .text:0043CD3Cj
					; .text:0043CD41j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43CD78:				; CODE XREF: .text:004447F7p
					; .text:00444812p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 4
		mov	eax, 0Ah
		mov	[ebx+10h], eax
		mov	[ebx+0Ch], eax
		mov	[ebx+14h], esi
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	loc_43CE5F
		cmp	dword_5BDCC8, 3
		jnz	short loc_43CDFD
		cmp	dword_5BDCFC, 0
		jz	short loc_43CDDC
		test	esi, esi
		jnz	short loc_43CDDC
		push	offset aSt	; "%ST"
		push	100h
		lea	edx, [ebx+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		jmp	loc_43CE5F
; ---------------------------------------------------------------------------

loc_43CDDC:				; CODE XREF: .text:0043CDBBj
					; .text:0043CDBFj
		mov	word ptr [ebx+60h], 25h
		mov	ecx, off_52FDE4[esi*4]
		lea	eax, [ebx+62h]
		push	ecx
		push	0FFh
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43CE5F
; ---------------------------------------------------------------------------

loc_43CDFD:				; CODE XREF: .text:0043CDB2j
		cmp	dword_5BDCFC, 0
		jz	short loc_43CE22
		test	esi, esi
		jnz	short loc_43CE22
		push	(offset	aSt+2)	; "ST"
		push	100h
		lea	edx, [ebx+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43CE5F
; ---------------------------------------------------------------------------

loc_43CE22:				; CODE XREF: .text:0043CE04j
					; .text:0043CE08j
		cmp	dword_5BDCC8, 2
		jz	short loc_43CE46
		mov	ecx, fpuname[esi*4]
		lea	eax, [ebx+60h]
		push	ecx
		push	100h
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43CE5F
; ---------------------------------------------------------------------------

loc_43CE46:				; CODE XREF: .text:0043CE29j
		mov	edx, off_52FDE4[esi*4]
		lea	ecx, [ebx+60h]
		push	edx
		push	100h
		push	ecx
		call	loc_410A49
		add	esp, 0Ch

loc_43CE5F:				; CODE XREF: .text:0043CDA5j
					; .text:0043CDD7j ...
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43CEC0
		push	0Ah		; n
		add	esi, [eax+80h]
		and	esi, 80000007h
		jns	short loc_43CE7D
		dec	esi
		or	esi, 0FFFFFFF8h
		inc	esi

loc_43CE7D:				; CODE XREF: .text:0043CE76j
		mov	edx, esi
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	edx, eax
		add	edx, 84h
		push	edx		; src
		lea	ecx, [ebx+40h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		test	byte ptr mode, 4
		jz	short loc_43CEBA
		lea	eax, [ebx+60h]
		lea	edx, [ebx+260h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43CEBA:				; CODE XREF: .text:0043CEA0j
		or	dword ptr [ebx], 2000000h

loc_43CEC0:				; CODE XREF: .text:0043CE66j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43CEC4:				; CODE XREF: .text:00444A21p
					; .text:00444A8Cp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 8
		mov	dword ptr [ebx+0Ch], 8
		mov	dword ptr [ebx+10h], 4
		mov	[ebx+14h], esi
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43CF26
		xor	eax, eax
		cmp	dword_5BDCC8, 3
		jnz	short loc_43CF09
		mov	word ptr [ebx+eax*2+60h], 25h
		inc	eax

loc_43CF09:				; CODE XREF: .text:0043CEFFj
		mov	edx, mmxname[esi*4]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx
		push	ecx
		lea	eax, [ebx+eax*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43CF26:				; CODE XREF: .text:0043CEF4j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43CF74
		push	8		; n
		mov	edx, esi
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	edx, eax
		add	edx, 84h
		push	edx		; src
		lea	ecx, [ebx+40h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		test	byte ptr mode, 4
		jz	short loc_43CF6E
		lea	eax, [ebx+60h]
		lea	edx, [ebx+260h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43CF6E:				; CODE XREF: .text:0043CF54j
		or	dword ptr [ebx], 2000000h

loc_43CF74:				; CODE XREF: .text:0043CF2Dj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43CF78:				; CODE XREF: .text:00444B17p
					; .text:00444B76p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 10h
		mov	dword ptr [ebx+0Ch], 8
		mov	dword ptr [ebx+10h], 4
		mov	[ebx+14h], esi
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43CFDA
		xor	eax, eax
		cmp	dword_5BDCC8, 3
		jnz	short loc_43CFBD
		mov	word ptr [ebx+eax*2+60h], 25h
		inc	eax

loc_43CFBD:				; CODE XREF: .text:0043CFB3j
		mov	edx, mmxname[esi*4]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx
		push	ecx
		lea	eax, [ebx+eax*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43CFDA:				; CODE XREF: .text:0043CFA8j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43D028
		push	8		; n
		mov	edx, esi
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	edx, eax
		add	edx, 84h
		push	edx		; src
		lea	ecx, [ebx+40h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		test	byte ptr mode, 4
		jz	short loc_43D022
		lea	eax, [ebx+60h]
		lea	edx, [ebx+260h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43D022:				; CODE XREF: .text:0043D008j
		or	dword ptr [ebx], 2000000h

loc_43D028:				; CODE XREF: .text:0043CFE1j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43D02C:				; CODE XREF: .text:00444BBFp
					; .text:00444BECp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebx], 20h
		test	byte ptr [ebp+0Bh], 4
		jz	short loc_43D04C
		mov	dword ptr [ebx+0Ch], 10h
		jmp	short loc_43D054
; ---------------------------------------------------------------------------

loc_43D04C:				; CODE XREF: .text:0043D041j
		mov	eax, dword_5E073C
		mov	[ebx+0Ch], eax

loc_43D054:				; CODE XREF: .text:0043D04Aj
		mov	dword ptr [ebx+10h], 4
		mov	[ebx+14h], esi
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		cmp	dword_5E0728, 0
		jnz	short loc_43D078
		mov	dword_5E0728, 1

loc_43D078:				; CODE XREF: .text:0043D06Cj
		test	byte ptr mode, 5
		jz	short loc_43D0C2
		xor	eax, eax
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D094
		mov	word ptr [ebx+eax*2+60h], 25h
		inc	eax

loc_43D094:				; CODE XREF: .text:0043D08Aj
		cmp	dword ptr [ebx+0Ch], 20h
		mov	edx, 1
		jz	short loc_43D0A0
		dec	edx

loc_43D0A0:				; CODE XREF: .text:0043D09Dj
		shl	edx, 6
		lea	ecx, ssename[edx]
		mov	edx, [ecx+esi*4]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx
		push	ecx
		lea	eax, [ebx+eax*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43D0C2:				; CODE XREF: .text:0043D07Fj
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43D131
		test	byte ptr [eax],	4
		jz	short loc_43D131
		push	10h		; n
		mov	edx, esi
		shl	edx, 4
		add	edx, eax
		add	edx, 110h
		push	edx		; src
		lea	ecx, [ebx+40h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		test	byte ptr mode, 4
		jz	short loc_43D12B
		xor	eax, eax
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D10B
		mov	word ptr [ebx+eax*2+260h], 25h
		inc	eax

loc_43D10B:				; CODE XREF: .text:0043D0FEj
		mov	edx, ssename[esi*4]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx
		push	ecx
		lea	eax, [ebx+eax*2+260h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43D12B:				; CODE XREF: .text:0043D0F3j
		or	dword ptr [ebx], 2000000h

loc_43D131:				; CODE XREF: .text:0043D0C9j
					; .text:0043D0CEj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43D138:				; CODE XREF: .text:004450B4p
					; .text:004450D6p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+10h]
		mov	dword ptr [ebx], 800h
		mov	eax, [ebp+0Ch]
		mov	[ebx+10h], eax
		mov	[ebx+0Ch], eax
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43D19C
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D186
		push	offset aEfl	; "%EFL"
		push	100h
		lea	edx, [ebx+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43D19C
; ---------------------------------------------------------------------------

loc_43D186:				; CODE XREF: .text:0043D16Cj
		push	(offset	aEfl+2)	; "EFL"
		push	100h
		lea	ecx, [ebx+60h]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch

loc_43D19C:				; CODE XREF: .text:0043D163j
					; .text:0043D184j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43D1D2
		mov	edx, [eax+2Ch]
		mov	[ebx+40h], edx
		test	byte ptr mode, 4
		jz	short loc_43D1CC
		lea	ecx, [ebx+60h]
		lea	eax, [ebx+260h]
		push	ecx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43D1CC:				; CODE XREF: .text:0043D1B2j
		or	dword ptr [ebx], 2000000h

loc_43D1D2:				; CODE XREF: .text:0043D1A3j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43D1D8:				; CODE XREF: .text:00445119p
					; .text:00445161p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+20h]
		mov	edx, [ebp+1Ch]
		mov	ecx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebp+18h]
		jbe	short loc_43D202
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 2
		or	eax, 0FFFFFFFFh
		jmp	loc_43D38E
; ---------------------------------------------------------------------------

loc_43D202:				; CODE XREF: .text:0043D1EFj
		mov	dword ptr [ebx], 2010200h
		mov	[ebx+10h], esi
		mov	[ebx+0Ch], esi
		mov	dword_5E0730, eax
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		add	edx, eax
		cmp	eax, 1
		jnz	short loc_43D232
		movsx	ecx, byte ptr [ecx]
		add	edx, ecx
		mov	[ebx+30h], edx
		jmp	short loc_43D246
; ---------------------------------------------------------------------------

loc_43D232:				; CODE XREF: .text:0043D226j
		cmp	eax, 2
		jnz	short loc_43D241
		movzx	ecx, word ptr [ecx]
		add	edx, ecx
		mov	[ebx+30h], edx
		jmp	short loc_43D246
; ---------------------------------------------------------------------------

loc_43D241:				; CODE XREF: .text:0043D235j
		add	edx, [ecx]
		mov	[ebx+30h], edx

loc_43D246:				; CODE XREF: .text:0043D230j
					; .text:0043D23Fj
		cmp	esi, 2
		jnz	short loc_43D25C
		and	dword ptr [ebx+30h], 0FFFFh
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 20h

loc_43D25C:				; CODE XREF: .text:0043D249j
		mov	edx, [ebx+30h]
		mov	[ebx+40h], edx
		mov	dword_5E0740, 1
		test	byte ptr mode, 1
		jz	loc_43D363
		cmp	eax, 1
		jnz	short loc_43D2B1
		cmp	dword_5BDCC8, 2
		jz	short loc_43D2B1
		cmp	dword_5BDCC8, 3
		jz	short loc_43D2B1
		test	byte ptr mode+1, 8
		jnz	short loc_43D2B1
		push	offset aShort	; "SHORT "
		push	100h
		lea	eax, [ebx+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43D2B3
; ---------------------------------------------------------------------------

loc_43D2B1:				; CODE XREF: .text:0043D27Cj
					; .text:0043D285j ...
		xor	eax, eax

loc_43D2B3:				; CODE XREF: .text:0043D2AFj
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D2C4
		mov	word ptr [ebx+eax*2+60h], 24h
		inc	eax

loc_43D2C4:				; CODE XREF: .text:0043D2BAj
		cmp	esi, 4
		jnz	short loc_43D33A
		test	byte ptr mode, 10h
		jz	short loc_43D33A
		test	byte ptr [ebp+0Bh], 30h
		jz	short loc_43D2DC
		xor	ecx, ecx
		jmp	short loc_43D2E8
; ---------------------------------------------------------------------------

loc_43D2DC:				; CODE XREF: .text:0043D2D6j
		mov	ecx, dword_5E0714
		add	ecx, 16D0h

loc_43D2E8:				; CODE XREF: .text:0043D2DAj
		push	ecx		; comment
		mov	ecx, 100h
		sub	ecx, eax
		push	ecx		; nsymb
		lea	eax, [ebx+eax*2+60h]
		push	eax		; symb
		xor	eax, eax
		cmp	dword_5BDD00, 0
		jz	short loc_43D30A
		test	byte ptr mode+1, 8
		jz	short loc_43D30F

loc_43D30A:				; CODE XREF: .text:0043D2FFj
		add	eax, 100h

loc_43D30F:				; CODE XREF: .text:0043D308j
		mov	ecx, 20000h
		cmp	dword_5BDD04, 0
		jnz	short loc_43D323
		add	ecx, 0FFFE0000h

loc_43D323:				; CODE XREF: .text:0043D31Bj
		or	eax, ecx
		or	eax, offset loc_416400
		push	eax		; mode
		mov	edx, [ebx+30h]
		push	edx		; amod
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		jmp	short loc_43D363
; ---------------------------------------------------------------------------

loc_43D33A:				; CODE XREF: .text:0043D2C7j
					; .text:0043D2D0j
		cmp	esi, 4
		jnz	short loc_43D352
		mov	edx, [ebx+30h]
		push	edx		; u
		lea	eax, [ebx+eax*2+60h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		jmp	short loc_43D363
; ---------------------------------------------------------------------------

loc_43D352:				; CODE XREF: .text:0043D33Dj
		mov	ecx, [ebx+30h]
		push	ecx		; u
		lea	eax, [ebx+eax*2+60h]
		push	eax		; s
		call	Hexprint4W
		add	esp, 8

loc_43D363:				; CODE XREF: .text:0043D273j
					; .text:0043D338j ...
		test	byte ptr mode, 4
		jz	short loc_43D38C
		push	offset aDest	; "Dest"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		add	ebx, 260h
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43D38C:				; CODE XREF: .text:0043D36Aj
		mov	eax, esi

loc_43D38E:				; CODE XREF: .text:0043D1FDj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_43D394(int, int, void	*src, int, int)
loc_43D394:				; CODE XREF: .text:0044519Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+18h]
		lea	eax, [esi+2]
		cmp	eax, [ebp+14h]
		jbe	short loc_43D3BD
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 2
		or	eax, 0FFFFFFFFh
		jmp	loc_43D544
; ---------------------------------------------------------------------------

loc_43D3BD:				; CODE XREF: .text:0043D3A9j
		mov	dword ptr [ebx], 2040200h
		mov	[ebx+0Ch], eax
		mov	[ebx+10h], esi
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		mov	dword_5E0730, esi
		mov	dword_5E0734, 2
		cmp	esi, 2
		jnz	short loc_43D400
		movzx	edx, word ptr [edi]
		mov	[ebx+34h], edx
		mov	[ebx+30h], edx
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 20h
		jmp	short loc_43D452
; ---------------------------------------------------------------------------

loc_43D400:				; CODE XREF: .text:0043D3EAj
		mov	ecx, [edi]
		mov	[ebx+30h], ecx
		mov	eax, dword_5E0714
		mov	edx, dword_5E0724
		mov	[eax+28h], edx
		test	byte ptr mode, 10h
		jz	short loc_43D452
		mov	ecx, [eax+0Ch]
		mov	eax, dword_5E0714
		add	ecx, [eax+28h]
		push	ecx		; _addr
		push	0		; pmod
		call	Findfixup
		add	esp, 8
		test	eax, eax
		jz	short loc_43D452
		mov	edx, dword_5E0714
		mov	ecx, [edx+0Ch]
		mov	edx, dword_5E0714
		add	ecx, [edx+28h]
		cmp	ecx, [eax]
		jnz	short loc_43D452
		or	dword ptr [ebx], 10000h

loc_43D452:				; CODE XREF: .text:0043D3FEj
					; .text:0043D41Aj ...
		movzx	eax, word ptr [edi+esi]
		mov	[ebx+38h], eax
		lea	eax, [ebx+40h]
		mov	ecx, [ebx+0Ch]
		push	ecx		; n
		push	edi		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	dword_5E0740, 1
		test	byte ptr mode, 1
		jz	loc_43D518
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D4C6
		cmp	esi, 2
		jnz	short loc_43D4AB
		movzx	edx, word ptr [edi]
		push	edx
		lea	eax, [ebx+60h]
		movzx	ecx, word ptr [edi+2]
		push	ecx
		push	offset a04x04x	; "$%04X,$%04X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_43D518
; ---------------------------------------------------------------------------

loc_43D4AB:				; CODE XREF: .text:0043D48Dj
		mov	edx, [edi]
		lea	eax, [ebx+60h]
		push	edx
		movzx	ecx, word ptr [edi+4]
		push	ecx
		push	offset a04x08x	; "$%04X,$%08X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_43D518
; ---------------------------------------------------------------------------

loc_43D4C6:				; CODE XREF: .text:0043D488j
		push	offset aFar	; "FAR "
		push	100h
		lea	edx, [ebx+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		cmp	esi, 2
		jnz	short loc_43D4FE
		movzx	ecx, word ptr [edi]
		push	ecx
		lea	eax, [ebx+eax*2+60h]
		movzx	edx, word ptr [edi+2]
		push	edx
		push	offset a04x04x_0 ; "%04X:%04X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_43D518
; ---------------------------------------------------------------------------

loc_43D4FE:				; CODE XREF: .text:0043D4DFj
		mov	ecx, [edi]
		lea	eax, [ebx+eax*2+60h]
		push	ecx
		movzx	edx, word ptr [edi+4]
		push	edx
		push	offset a04x08x_3 ; "%04X:%08X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h

loc_43D518:				; CODE XREF: .text:0043D47Bj
					; .text:0043D4A9j ...
		test	byte ptr mode, 4
		jz	short loc_43D541
		push	offset aDest	; "Dest"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		add	ebx, 260h
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43D541:				; CODE XREF: .text:0043D51Fj
		lea	eax, [esi+2]

loc_43D544:				; CODE XREF: .text:0043D3B8j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43D54C:				; CODE XREF: .text:00445226p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	dword ptr [ebx], 2000200h
		mov	eax, 1
		mov	[ebx+10h], eax
		mov	[ebx+0Ch], eax
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		mov	dword ptr [ebx+30h], 1
		mov	dword ptr [ebx+40h], 1
		test	byte ptr mode, 1
		jz	short loc_43D5C0
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D5AA
		push	offset a1	; "$1"
		push	100h		; n
		lea	edx, [ebx+60h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43D5C0
; ---------------------------------------------------------------------------

loc_43D5AA:				; CODE XREF: .text:0043D590j
		push	(offset	aR11+4)	; src
		push	100h		; n
		lea	ecx, [ebx+60h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43D5C0:				; CODE XREF: .text:0043D587j
					; .text:0043D5A8j
		mov	dword ptr [ebx+8], 4
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43D5CC:				; CODE XREF: .text:0044524Ep
					; .text:00445316p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	ecx, dword_5E0728
		push	edi
		add	ecx, dword_5E072C
		mov	eax, [ebp+0Ch]
		mov	edi, [ebp+10h]
		add	ecx, eax
		mov	ebx, [ebp+24h]
		cmp	dword ptr [ebp+20h], 0
		mov	edx, [ebp+18h]
		jz	short loc_43D5FB
		mov	esi, dword_5E0730
		jmp	short loc_43D5FD
; ---------------------------------------------------------------------------

loc_43D5FB:				; CODE XREF: .text:0043D5F1j
		xor	esi, esi

loc_43D5FD:				; CODE XREF: .text:0043D5F9j
		add	ecx, esi
		cmp	ecx, [ebp+1Ch]
		jbe	short loc_43D615
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 2
		or	eax, 0FFFFFFFFh
		jmp	loc_43D9FC
; ---------------------------------------------------------------------------

loc_43D615:				; CODE XREF: .text:0043D602j
		mov	dword ptr [ebx], 2000200h
		mov	[ebx+10h], edi
		mov	[ebx+0Ch], edi
		mov	ecx, dword_5E0728
		add	ecx, dword_5E072C
		add	edx, ecx
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_43D63C
		mov	dword_5E0730, eax
		jmp	short loc_43D647
; ---------------------------------------------------------------------------

loc_43D63C:				; CODE XREF: .text:0043D633j
		mov	dword_5E0734, eax
		add	edx, dword_5E0730

loc_43D647:				; CODE XREF: .text:0043D63Aj
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		cmp	eax, 4
		jnz	short loc_43D6C0
		mov	edx, [edx]
		mov	[ebx+30h], edx
		mov	edx, dword_5E0724
		add	edx, dword_5E0728
		add	edx, dword_5E072C
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_43D67F
		mov	ecx, dword_5E0730
		jmp	short loc_43D681
; ---------------------------------------------------------------------------

loc_43D67F:				; CODE XREF: .text:0043D675j
		xor	ecx, ecx

loc_43D681:				; CODE XREF: .text:0043D67Dj
		add	edx, ecx
		mov	eax, dword_5E0714
		mov	[eax+28h], edx
		test	byte ptr mode, 10h
		jz	short loc_43D6D3
		mov	eax, [eax+0Ch]
		add	eax, edx
		push	eax		; _addr
		push	0		; pmod
		call	Findfixup
		add	esp, 8
		test	eax, eax
		jz	short loc_43D6D3
		mov	edx, dword_5E0714
		mov	ecx, [edx+0Ch]
		add	ecx, [edx+28h]
		cmp	ecx, [eax]
		jnz	short loc_43D6D3
		or	dword ptr [ebx], 10000h
		jmp	short loc_43D6D3
; ---------------------------------------------------------------------------

loc_43D6C0:				; CODE XREF: .text:0043D658j
		cmp	eax, 1
		jnz	short loc_43D6CD
		movsx	eax, byte ptr [edx]
		mov	[ebx+30h], eax
		jmp	short loc_43D6D3
; ---------------------------------------------------------------------------

loc_43D6CD:				; CODE XREF: .text:0043D6C3j
		movzx	edx, word ptr [edx]
		mov	[ebx+30h], edx

loc_43D6D3:				; CODE XREF: .text:0043D692j
					; .text:0043D6A6j ...
		cmp	edi, 1
		jnz	short loc_43D6E1
		and	dword ptr [ebx+30h], 0FFh
		jmp	short loc_43D6ED
; ---------------------------------------------------------------------------

loc_43D6E1:				; CODE XREF: .text:0043D6D6j
		cmp	edi, 2
		jnz	short loc_43D6ED
		and	dword ptr [ebx+30h], 0FFFFh

loc_43D6ED:				; CODE XREF: .text:0043D6DFj
					; .text:0043D6E4j
		mov	ecx, [ebx+30h]
		mov	[ebx+40h], ecx
		mov	eax, [ebp+8]
		and	eax, 0F0000h
		sub	eax, 40000h
		jz	short loc_43D715
		sub	eax, 10000h
		jz	short loc_43D748
		sub	eax, 50000h
		jz	short loc_43D781
		jmp	loc_43D79F
; ---------------------------------------------------------------------------

loc_43D715:				; CODE XREF: .text:0043D700j
		cmp	dword ptr [ebp+14h], 4
		jnz	short loc_43D721
		cmp	dword ptr [ebx+40h], 1Fh
		ja	short loc_43D739

loc_43D721:				; CODE XREF: .text:0043D719j
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_43D72D
		cmp	dword ptr [ebx+40h], 7
		ja	short loc_43D739

loc_43D72D:				; CODE XREF: .text:0043D725j
		cmp	dword ptr [ebp+14h], 2
		jnz	short loc_43D79F
		cmp	dword ptr [ebx+40h], 0Fh
		jbe	short loc_43D79F

loc_43D739:				; CODE XREF: .text:0043D71Fj
					; .text:0043D72Bj
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 400h
		jmp	short loc_43D79F
; ---------------------------------------------------------------------------

loc_43D748:				; CODE XREF: .text:0043D707j
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_43D772
		cmp	dword ptr [ebp+14h], 4
		jnz	short loc_43D75A
		cmp	dword ptr [ebx+40h], 1Fh
		ja	short loc_43D772

loc_43D75A:				; CODE XREF: .text:0043D752j
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_43D766
		cmp	dword ptr [ebx+40h], 7
		ja	short loc_43D772

loc_43D766:				; CODE XREF: .text:0043D75Ej
		cmp	dword ptr [ebp+14h], 2
		jnz	short loc_43D79F
		cmp	dword ptr [ebx+40h], 0Fh
		jbe	short loc_43D79F

loc_43D772:				; CODE XREF: .text:0043D74Cj
					; .text:0043D758j ...
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 400h
		jmp	short loc_43D79F
; ---------------------------------------------------------------------------

loc_43D781:				; CODE XREF: .text:0043D70Ej
		test	byte ptr [ebx+40h], 3
		jz	short loc_43D793
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 1000h

loc_43D793:				; CODE XREF: .text:0043D785j
		mov	edx, dword_5E0714
		mov	ecx, [ebx+40h]
		mov	[edx+48h], ecx

loc_43D79F:				; CODE XREF: .text:0043D710j
					; .text:0043D731j ...
		test	byte ptr mode, 1
		jz	loc_43D9D1
		mov	eax, [ebp+8]
		xor	esi, esi
		and	eax, 0F0000h
		cmp	edi, 1
		mov	[ebp-4], eax
		jnz	short loc_43D809
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D7CF
		mov	word ptr [ebx+esi*2+60h], 24h
		inc	esi

loc_43D7CF:				; CODE XREF: .text:0043D7C5j
		cmp	dword ptr [ebp-4], 30000h
		jnz	short loc_43D7F3
		mov	eax, [ebx+30h]
		lea	edx, [ebx+esi*2+60h]
		push	eax
		push	offset a02x_4	; "%02X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43D9D1
; ---------------------------------------------------------------------------

loc_43D7F3:				; CODE XREF: .text:0043D7D6j
		mov	ecx, [ebx+30h]
		push	ecx		; u
		lea	eax, [ebx+esi*2+60h]
		push	eax		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_43D9D1
; ---------------------------------------------------------------------------

loc_43D809:				; CODE XREF: .text:0043D7BCj
		cmp	edi, 4
		jnz	loc_43D94B
		cmp	dword ptr [ebp-4], 30000h
		jnz	short loc_43D842
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D82C
		mov	word ptr [ebx+esi*2+60h], 24h
		inc	esi

loc_43D82C:				; CODE XREF: .text:0043D822j
		mov	edx, [ebx+30h]
		push	edx		; u
		lea	ecx, [ebx+esi*2+60h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		jmp	loc_43D9D1
; ---------------------------------------------------------------------------

loc_43D842:				; CODE XREF: .text:0043D819j
		test	byte ptr mode, 10h
		jz	short loc_43D8C9
		cmp	dword ptr [ebp-4], 0
		jz	short loc_43D863
		cmp	dword ptr [ebp-4], 80000h
		jz	short loc_43D863
		cmp	dword ptr [ebp-4], 90000h
		jnz	short loc_43D8C9

loc_43D863:				; CODE XREF: .text:0043D84Fj
					; .text:0043D858j
		push	0		; comment
		mov	eax, 100h
		sub	eax, esi
		push	eax		; nsymb
		lea	edx, [ebx+esi*2+60h]
		push	edx		; symb
		xor	ecx, ecx
		cmp	dword_5BDD00, 0
		jz	short loc_43D886
		test	byte ptr mode+1, 8
		jz	short loc_43D88C

loc_43D886:				; CODE XREF: .text:0043D87Bj
		add	ecx, 100h

loc_43D88C:				; CODE XREF: .text:0043D884j
		or	ecx, 5
		mov	eax, 20000h
		cmp	dword_5BDD04, 0
		jnz	short loc_43D8A2
		add	eax, 0FFFF0000h

loc_43D8A2:				; CODE XREF: .text:0043D89Bj
		or	ecx, eax
		mov	edx, dword_5E0714
		or	ecx, 3400h
		push	ecx		; mode
		mov	ecx, [edx+0Ch]
		push	ecx		; amod
		mov	eax, [ebx+30h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		test	eax, eax
		jg	loc_43D9D1

loc_43D8C9:				; CODE XREF: .text:0043D849j
					; .text:0043D861j
		cmp	dword ptr [ebp-4], 10000h
		jz	short loc_43D8F3
		cmp	dword ptr [ebp-4], 0B0000h
		jz	short loc_43D8F3
		cmp	dword ptr [ebx+30h], 0
		jge	short loc_43D8F3
		cmp	dword ptr [ebp-4], 20000h
		jz	short loc_43D91A
		cmp	dword ptr [ebx+30h], 0FFFFC000h
		jg	short loc_43D91A

loc_43D8F3:				; CODE XREF: .text:0043D8D0j
					; .text:0043D8D9j ...
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D904
		mov	word ptr [ebx+esi*2+60h], 24h
		inc	esi

loc_43D904:				; CODE XREF: .text:0043D8FAj
		mov	edx, [ebx+30h]
		push	edx		; u
		lea	ecx, [ebx+esi*2+60h]
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_43D9D1
; ---------------------------------------------------------------------------

loc_43D91A:				; CODE XREF: .text:0043D8E8j
					; .text:0043D8F1j
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D92B
		mov	word ptr [ebx+esi*2+60h], 24h
		inc	esi

loc_43D92B:				; CODE XREF: .text:0043D921j
		mov	word ptr [ebx+esi*2+60h], 2Dh
		inc	esi
		mov	eax, [ebx+30h]
		neg	eax
		push	eax		; u
		lea	edx, [ebx+esi*2+60h]
		push	edx		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_43D9D1
; ---------------------------------------------------------------------------

loc_43D94B:				; CODE XREF: .text:0043D80Cj
		cmp	dword_5BDCC8, 3
		jnz	short loc_43D95E
		mov	word ptr [ebx+esi*2+60h], 24h
		inc	esi
		jmp	short loc_43D99F
; ---------------------------------------------------------------------------

loc_43D95E:				; CODE XREF: .text:0043D952j
		test	byte ptr [ebp+0Bh], 8
		jz	short loc_43D99F
		mov	ecx, sizename[edi*4]
		mov	eax, 100h
		sub	eax, esi
		push	ecx
		push	eax
		lea	edx, [ebx+esi*2+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		mov	ecx, 100h
		sub	ecx, esi
		push	(offset	aFar+6)	; src
		push	ecx		; n
		lea	eax, [ebx+esi*2+60h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_43D99F:				; CODE XREF: .text:0043D95Cj
					; .text:0043D962j
		cmp	dword ptr [ebp-4], 30000h
		jnz	short loc_43D9C0
		mov	edx, [ebx+30h]
		lea	ecx, [ebx+esi*2+60h]
		push	edx
		push	(offset	a04x04x04x04x+1Eh) ; "%04X"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_43D9D1
; ---------------------------------------------------------------------------

loc_43D9C0:				; CODE XREF: .text:0043D9A6j
		mov	eax, [ebx+30h]
		push	eax		; u
		lea	edx, [ebx+esi*2+60h]
		push	edx		; s
		call	HexprintW
		add	esp, 8

loc_43D9D1:				; CODE XREF: .text:0043D7A6j
					; .text:0043D7EEj ...
		test	byte ptr mode, 4
		jz	short loc_43D9FA
		push	offset aImm	; "Imm"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		add	ebx, 260h
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43D9FA:				; CODE XREF: .text:0043D9D8j
		mov	eax, edi

loc_43D9FC:				; CODE XREF: .text:0043D610j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43DA04:				; CODE XREF: .text:00445426p
					; .text:0044543Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, 4
		mov	eax, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	dword ptr [eax], 40h
		mov	[eax+10h], edx
		mov	[eax+0Ch], edx
		mov	[eax+14h], ebx
		mov	dword ptr [eax+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43DA62
		xor	edx, edx
		cmp	dword_5BDCC8, 3
		jnz	short loc_43DA45
		mov	word ptr [eax+edx*2+60h], 25h
		inc	edx

loc_43DA45:				; CODE XREF: .text:0043DA3Bj
		mov	ecx, crname[ebx*4]
		push	ecx
		mov	ecx, 100h
		sub	ecx, edx
		push	ecx
		lea	eax, [eax+edx*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43DA62:				; CODE XREF: .text:0043DA30j
		test	ebx, ebx
		jz	short loc_43DA82
		cmp	ebx, 2
		jz	short loc_43DA82
		cmp	ebx, 3
		jz	short loc_43DA82
		cmp	ebx, 4
		jz	short loc_43DA82
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 100h

loc_43DA82:				; CODE XREF: .text:0043DA64j
					; .text:0043DA69j ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43DA88:				; CODE XREF: .text:0044545Ep
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		mov	dword ptr [eax], 80h
		mov	edx, 4
		mov	[eax+10h], edx
		mov	[eax+0Ch], edx
		mov	[eax+14h], ecx
		mov	dword ptr [eax+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43DAE5
		xor	edx, edx
		cmp	dword_5BDCC8, 3
		jnz	short loc_43DAC8
		mov	word ptr [eax+edx*2+60h], 25h
		inc	edx

loc_43DAC8:				; CODE XREF: .text:0043DABEj
		mov	ecx, drname[ecx*4]
		push	ecx
		mov	ecx, 100h
		sub	ecx, edx
		push	ecx
		lea	eax, [eax+edx*2+60h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch

loc_43DAE5:				; CODE XREF: .text:0043DAB3j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43DAE8:				; CODE XREF: .text:0044546Dp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		mov	dword ptr [ebx], 800h
		mov	eax, 2
		mov	[ebx+10h], eax
		mov	[ebx+0Ch], eax
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43DB4E
		cmp	dword_5BDCC8, 3
		jnz	short loc_43DB38
		push	offset aFst	; "%FST"
		push	100h
		lea	edx, [ebx+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43DB4E
; ---------------------------------------------------------------------------

loc_43DB38:				; CODE XREF: .text:0043DB1Ej
		push	(offset	aFst+2)	; "FST"
		push	100h
		lea	ecx, [ebx+60h]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch

loc_43DB4E:				; CODE XREF: .text:0043DB15j
					; .text:0043DB36j
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43DB87
		mov	edx, [eax+0DCh]
		mov	[ebx+40h], edx
		test	byte ptr mode, 4
		jz	short loc_43DB81
		lea	ecx, [ebx+60h]
		lea	eax, [ebx+260h]
		push	ecx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43DB81:				; CODE XREF: .text:0043DB67j
		or	dword ptr [ebx], 2000000h

loc_43DB87:				; CODE XREF: .text:0043DB55j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43DB8C:				; CODE XREF: .text:0044548Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		mov	dword ptr [ebx], 800h
		mov	eax, 2
		mov	[ebx+10h], eax
		mov	[ebx+0Ch], eax
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43DBF2
		cmp	dword_5BDCC8, 3
		jnz	short loc_43DBDC
		push	offset aFcw	; "%FCW"
		push	100h
		lea	edx, [ebx+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43DBF2
; ---------------------------------------------------------------------------

loc_43DBDC:				; CODE XREF: .text:0043DBC2j
		push	(offset	aFcw+2)	; "FCW"
		push	100h
		lea	ecx, [ebx+60h]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch

loc_43DBF2:				; CODE XREF: .text:0043DBB9j
					; .text:0043DBDAj
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43DC2B
		mov	edx, [eax+0E0h]
		mov	[ebx+40h], edx
		test	byte ptr mode, 4
		jz	short loc_43DC25
		lea	ecx, [ebx+60h]
		lea	eax, [ebx+260h]
		push	ecx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43DC25:				; CODE XREF: .text:0043DC0Bj
		or	dword ptr [ebx], 2000000h

loc_43DC2B:				; CODE XREF: .text:0043DBF9j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43DC30:				; CODE XREF: .text:004454A7p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		mov	dword ptr [ebx], 800h
		mov	eax, 4
		mov	[ebx+10h], eax
		mov	[ebx+0Ch], eax
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+20h], 0FFFFFFFFh
		test	byte ptr mode, 5
		jz	short loc_43DC96
		cmp	dword_5BDCC8, 3
		jnz	short loc_43DC80
		push	offset aMxcsr	; "%MXCSR"
		push	100h
		lea	edx, [ebx+60h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		jmp	short loc_43DC96
; ---------------------------------------------------------------------------

loc_43DC80:				; CODE XREF: .text:0043DC66j
		push	(offset	aMxcsr+2) ; "MXCSR"
		push	100h
		lea	ecx, [ebx+60h]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch

loc_43DC96:				; CODE XREF: .text:0043DC5Dj
					; .text:0043DC7Ej
		mov	eax, dword_5E071C
		test	eax, eax
		jz	short loc_43DCD4
		test	byte ptr [eax],	4
		jz	short loc_43DCD4
		mov	edx, [eax+190h]
		mov	[ebx+40h], edx
		test	byte ptr mode, 4
		jz	short loc_43DCCE
		lea	ecx, [ebx+60h]
		lea	eax, [ebx+260h]
		push	ecx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43DCCE:				; CODE XREF: .text:0043DCB4j
		or	dword ptr [ebx], 2000000h

loc_43DCD4:				; CODE XREF: .text:0043DC9Dj
					; .text:0043DCA2j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43DCD8:				; CODE XREF: .text:00443B90p
					; .text:00443BB3p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	dword ptr [ebx+8], 4
		test	byte ptr mode, 4
		jz	loc_43E556
		test	byte ptr [ebx+3], 2
		jz	loc_43E556
		lea	eax, [ebx+260h]
		push	eax		; s
		call	_wcslen
		mov	edi, [ebp+8]
		pop	ecx
		and	edi, 0F0000h
		mov	esi, eax
		cmp	dword ptr [ebx+0Ch], 4
		jnz	loc_43E1FF
		mov	word ptr [ebx+esi*2+260h], 3Dh
		inc	esi
		cmp	edi, 20000h
		jz	short loc_43DD52
		cmp	edi, 40000h
		jz	short loc_43DD52
		cmp	edi, 50000h
		jz	short loc_43DD52
		cmp	edi, 60000h
		jnz	short loc_43DD9B

loc_43DD52:				; CODE XREF: .text:0043DD38j
					; .text:0043DD40j ...
		mov	eax, [ebx+40h]
		cmp	eax, 9
		ja	short loc_43DD75
		push	eax
		push	(offset	a04x08x+0Eh) ; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43DD75:				; CODE XREF: .text:0043DD58j
		mov	edi, [ebx+40h]
		push	edi
		push	edi
		push	offset a08xDecimalI_ ; "%08X (decimal %i.)"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43DD9B:				; CODE XREF: .text:0043DD50j
		cmp	edi, 10000h
		jnz	short loc_43DDEC
		mov	eax, [ebx+40h]
		cmp	eax, 9
		ja	short loc_43DDC6
		push	eax
		push	(offset	a04x08x+0Eh) ; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43DDC6:				; CODE XREF: .text:0043DDA9j
		mov	edi, [ebx+40h]
		push	edi
		push	edi
		push	offset a08xDecimalU_ ; "%08X (decimal %u.)"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43DDEC:				; CODE XREF: .text:0043DDA1j
		cmp	edi, 80000h
		jnz	loc_43DF6B
		push	0		; comment
		push	100h		; nsymb
		lea	eax, [ebp-200h]
		push	eax		; symb
		xor	edx, edx
		cmp	dword_5BDD00, 0
		jz	short loc_43DE1A
		test	byte ptr mode+1, 8
		jz	short loc_43DE20

loc_43DE1A:				; CODE XREF: .text:0043DE0Fj
		add	edx, 100h

loc_43DE20:				; CODE XREF: .text:0043DE18j
		mov	ecx, dword_5E0714
		or	edx, 9
		or	edx, 26400h
		push	edx		; mode
		mov	eax, [ecx+0Ch]
		push	eax		; amod
		mov	edx, [ebx+40h]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_43DE65
		push	100h		; nsymb
		lea	eax, [ebp-200h]
		push	eax		; symb
		push	20008h		; addrmode
		mov	edx, [ebx+40h]
		push	edx		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	edi, eax

loc_43DE65:				; CODE XREF: .text:0043DE44j
		test	edi, edi
		jle	short loc_43DEC6
		mov	eax, [ebx+40h]
		lea	edx, [ebx+esi*2+260h]
		push	eax
		push	offset a08x_7	; "%08X	("
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		lea	ecx, [ebp-200h]
		mov	eax, 100h
		sub	eax, esi
		push	ecx		; src
		push	eax		; n
		lea	edx, [ebx+esi*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	ecx, 100h
		sub	ecx, esi
		push	(offset	aSt0+8)	; src
		push	ecx		; n
		lea	eax, [ebx+esi*2+260h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_43DEF4
; ---------------------------------------------------------------------------

loc_43DEC6:				; CODE XREF: .text:0043DE67j
		mov	edx, 100h
		push	0		; comment
		sub	edx, esi
		lea	ecx, [ebx+esi*2+260h]
		push	edx		; nsymb
		mov	eax, dword_5E0714
		push	ecx		; symb
		push	26500h		; mode
		mov	edx, [eax+0Ch]
		push	edx		; amod
		mov	ecx, [ebx+40h]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	esi, eax

loc_43DEF4:				; CODE XREF: .text:0043DEC4j
		mov	eax, [ebx+40h]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	edi, eax
		cmp	edi, [ebx+40h]
		jz	loc_43E556
		lea	eax, [esi+14h]
		cmp	eax, 100h
		jge	loc_43E556
		push	offset aJumpsTo	; " - jumps to "
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, esi
		push	eax		; src
		push	edx		; n
		lea	ecx, [ebx+esi*2+260h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	eax, 100h
		sub	eax, esi
		push	0		; comment
		push	eax		; nsymb
		mov	eax, dword_5E0714
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; symb
		push	26000h		; mode
		mov	edx, [eax+0Ch]
		push	edx		; amod
		push	edi		; _addr
		call	Decodeaddress
		add	esp, 18h
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43DF6B:				; CODE XREF: .text:0043DDF2j
		cmp	edi, 30000h
		jz	loc_43E1E6
		cmp	edi, 70000h
		jz	loc_43E1E6
		mov	eax, [ebx+40h]
		cmp	eax, 9
		ja	short loc_43DFA6
		push	eax
		push	(offset	aI_35+2) ; "%i"
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43DFA6:				; CODE XREF: .text:0043DF89j
		mov	eax, [ebx+40h]
		cmp	eax, 0FFFF0000h
		jl	short loc_43DFDD
		cmp	eax, 10000h
		jg	short loc_43DFDD
		mov	edi, [ebx+40h]
		push	edi
		push	edi
		push	offset a08xDecimalI_ ; "%08X (decimal %i.)"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43DFDD:				; CODE XREF: .text:0043DFAEj
					; .text:0043DFB5j
		mov	word ptr [ebp-400h], 0
		test	byte ptr [ebp+0Bh], 30h
		jz	short loc_43DFF0
		xor	eax, eax
		jmp	short loc_43DFF6
; ---------------------------------------------------------------------------

loc_43DFF0:				; CODE XREF: .text:0043DFEAj
		lea	eax, [ebp-400h]

loc_43DFF6:				; CODE XREF: .text:0043DFEEj
		push	eax		; comment
		push	100h		; nsymb
		lea	edx, [ebp-200h]
		push	edx		; symb
		xor	ecx, ecx
		cmp	dword_5BDD00, 0
		jz	short loc_43E017
		test	byte ptr mode+1, 8
		jz	short loc_43E01D

loc_43E017:				; CODE XREF: .text:0043E00Cj
		add	ecx, 100h

loc_43E01D:				; CODE XREF: .text:0043E015j
		mov	eax, dword_5E0714
		or	ecx, 9
		or	ecx, 8F26400h
		push	ecx		; mode
		mov	edx, [eax+0Ch]
		push	edx		; amod
		mov	ecx, [ebx+40h]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	edi, eax
		cmp	word ptr [ebp-400h], 0
		jz	short loc_43E0A9
		mov	eax, [ebp+8]
		and	eax, 0FFh
		cmp	eax, 28h
		jz	short loc_43E05A
		cmp	eax, 2Ah
		jnz	short loc_43E082

loc_43E05A:				; CODE XREF: .text:0043E053j
		push	offset aTopOfStack_1 ; "Top of stack = "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43E084
; ---------------------------------------------------------------------------

loc_43E082:				; CODE XREF: .text:0043E058j
		xor	eax, eax

loc_43E084:				; CODE XREF: .text:0043E080j
		mov	ecx, 100h
		lea	edx, [ebp-400h]
		sub	ecx, eax
		add	eax, eax
		add	eax, dword_5E0714
		push	edx		; src
		push	ecx		; n
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43E0A9:				; CODE XREF: .text:0043E046j
		test	edi, edi
		jnz	short loc_43E0CC
		push	100h		; nsymb
		lea	eax, [ebp-200h]
		push	eax		; symb
		push	20008h		; addrmode
		mov	edx, [ebx+40h]
		push	edx		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	edi, eax

loc_43E0CC:				; CODE XREF: .text:0043E0ABj
		test	edi, edi
		jle	short loc_43E12E
		mov	eax, [ebx+40h]
		lea	edx, [ebx+esi*2+260h]
		push	eax
		push	offset a08x_7	; "%08X	("
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		lea	ecx, [ebp-200h]
		mov	eax, 100h
		sub	eax, esi
		push	ecx		; src
		push	eax		; n
		lea	edx, [ebx+esi*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	ecx, 100h
		sub	ecx, esi
		push	(offset	aSt0+8)	; src
		push	ecx		; n
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E12E:				; CODE XREF: .text:0043E0CEj
		mov	word ptr [ebp-400h], 0
		lea	eax, [ebp-400h]
		mov	edx, 100h
		sub	edx, esi
		push	eax		; comment
		mov	eax, dword_5E0714
		push	edx		; nsymb
		lea	ecx, [ebx+esi*2+260h]
		push	ecx		; symb
		push	8F26500h	; mode
		mov	edx, [eax+0Ch]
		push	edx		; amod
		mov	ecx, [ebx+40h]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	esi, eax
		cmp	word ptr [ebp-400h], 0
		jz	loc_43E556
		push	offset asc_53172E ; ", "
		mov	eax, 100h
		sub	eax, esi
		push	eax		; n
		lea	edx, [ebx+esi*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	ecx, [ebp-400h]
		mov	eax, 100h
		sub	eax, esi
		push	ecx		; src
		push	eax		; n
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		test	byte ptr [ebp+0Bh], 30h
		jnz	loc_43E556
		lea	eax, [ebp-400h]
		mov	edx, dword_5E0714
		push	eax		; src
		add	edx, 16D0h
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E1E6:				; CODE XREF: .text:0043DF71j
					; .text:0043DF7Dj
		mov	ecx, [ebx+40h]
		push	ecx		; u
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; s
		call	Hexprint8W
		add	esp, 8
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E1FF:				; CODE XREF: .text:0043DD21j
		cmp	dword ptr [ebx+0Ch], 1
		jnz	loc_43E3E0
		mov	eax, [ebx+40h]
		lea	edx, [ebx+esi*2+260h]
		push	eax
		push	offset a02x_1	; "=%02X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		cmp	edi, 20000h
		jz	short loc_43E244
		cmp	edi, 40000h
		jz	short loc_43E244
		cmp	edi, 50000h
		jz	short loc_43E244
		cmp	edi, 60000h
		jnz	short loc_43E274

loc_43E244:				; CODE XREF: .text:0043E22Aj
					; .text:0043E232j ...
		cmp	dword ptr [ebx+40h], 9
		jbe	loc_43E556
		movsx	ecx, byte ptr [ebx+40h]
		push	ecx
		push	(offset	a08xDecimalI_+8) ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E274:				; CODE XREF: .text:0043E242j
		cmp	edi, 10000h
		jnz	short loc_43E2AB
		cmp	dword ptr [ebx+40h], 9
		jbe	loc_43E556
		mov	eax, [ebx+40h]
		push	eax
		push	(offset	a08xDecimalU_+8) ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E2AB:				; CODE XREF: .text:0043E27Aj
		cmp	edi, 0B0000h
		jnz	loc_43E355
		mov	eax, [ebx+40h]
		push	eax		; unsigned int
		lea	edx, [ebp-200h]
		push	edx		; void *
		call	@__GetPolymorphicDTC$qpvui ; __GetPolymorphicDTC(void *,uint)
		add	esp, 8
		test	eax, eax
		jz	loc_43E556
		push	(offset	a08x_7+8) ; src
		mov	ecx, 100h
		sub	ecx, esi
		push	ecx		; n
		lea	eax, [ebx+esi*2+260h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	edx, [ebp-200h]
		mov	ecx, 100h
		sub	ecx, esi
		push	edx		; src
		push	ecx		; n
		lea	eax, [ebx+esi*2+260h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, 100h
		sub	edx, esi
		push	(offset	aSt0+8)	; src
		push	edx		; n
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E355:				; CODE XREF: .text:0043E2B1j
		cmp	edi, 30000h
		jz	loc_43E556
		push	0		; mode
		mov	ecx, [ebx+40h]
		push	ecx		; c
		lea	eax, [ebp-200h]
		push	eax		; s
		call	Commentcharacter
		add	esp, 0Ch
		test	eax, eax
		jz	loc_43E556
		push	(offset	a08x_7+8) ; src
		mov	edx, 100h
		sub	edx, esi
		push	edx		; n
		lea	ecx, [ebx+esi*2+260h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	eax, [ebp-200h]
		mov	edx, 100h
		sub	edx, esi
		push	eax		; src
		push	edx		; n
		lea	ecx, [ebx+esi*2+260h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	eax, 100h
		sub	eax, esi
		push	(offset	aSt0+8)	; src
		push	eax		; n
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E3E0:				; CODE XREF: .text:0043E203j
		cmp	dword ptr [ebx+0Ch], 2
		jnz	loc_43E533
		mov	eax, [ebx+40h]
		lea	edx, [ebx+esi*2+260h]
		push	eax
		push	offset a04x	; "=%04X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		cmp	edi, 20000h
		jz	short loc_43E425
		cmp	edi, 40000h
		jz	short loc_43E425
		cmp	edi, 50000h
		jz	short loc_43E425
		cmp	edi, 60000h
		jnz	short loc_43E455

loc_43E425:				; CODE XREF: .text:0043E40Bj
					; .text:0043E413j ...
		cmp	dword ptr [ebx+40h], 9
		jbe	loc_43E556
		movsx	ecx, word ptr [ebx+40h]
		push	ecx
		push	(offset	a08xDecimalI_+8) ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E455:				; CODE XREF: .text:0043E423j
		cmp	edi, 10000h
		jnz	short loc_43E48C
		cmp	dword ptr [ebx+40h], 9
		jbe	loc_43E556
		mov	eax, [ebx+40h]
		push	eax
		push	(offset	a08xDecimalU_+8) ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_43E556
; ---------------------------------------------------------------------------

loc_43E48C:				; CODE XREF: .text:0043E45Bj
		cmp	edi, 0B0000h
		jnz	loc_43E556
		mov	eax, [ebx+40h]
		push	eax		; unsigned int
		lea	edx, [ebp-200h]
		push	edx		; void *
		call	@__GetPolymorphicDTC$qpvui ; __GetPolymorphicDTC(void *,uint)
		add	esp, 8
		test	eax, eax
		jz	loc_43E556
		push	(offset	a08x_7+8) ; src
		mov	ecx, 100h
		sub	ecx, esi
		push	ecx		; n
		lea	eax, [ebx+esi*2+260h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	edx, [ebp-200h]
		mov	ecx, 100h
		sub	ecx, esi
		push	edx		; src
		push	ecx		; n
		lea	eax, [ebx+esi*2+260h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, 100h
		sub	edx, esi
		push	(offset	aSt0+8)	; src
		push	edx		; n
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43E556
; ---------------------------------------------------------------------------

loc_43E533:				; CODE XREF: .text:0043E3E4j
		cmp	dword ptr [ebx+0Ch], 8
		jnz	short loc_43E556
		mov	ecx, [ebx+40h]
		push	ecx
		mov	eax, [ebx+44h]
		lea	ebx, [ebx+esi*2+260h]
		push	eax
		push	offset a08x_08x	; "=%08X_%08X"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h

loc_43E556:				; CODE XREF: .text:0043DCF5j
					; .text:0043DCFFj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43E560:				; CODE XREF: .text:00444250p
					; .text:00444450p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	dword ptr [ebx+8], 4
		test	byte ptr mode, 4
		jz	loc_43E860
		test	byte ptr [ebx+3], 2
		jz	loc_43E860
		cmp	dword ptr [ebx+0Ch], 0
		jz	loc_43E860
		cmp	dword ptr [ebx+10h], 0
		jz	loc_43E860
		lea	eax, [ebx+260h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		lea	ecx, [ebx+0Ch]
		mov	dword ptr [ebp-0Ch], 20h
		mov	eax, [ecx]
		cmp	eax, [ebp-0Ch]
		jl	short loc_43E5C1
		lea	ecx, [ebp-0Ch]

loc_43E5C1:				; CODE XREF: .text:0043E5BCj
		mov	eax, [ecx]
		xor	edi, edi
		cdq
		idiv	dword ptr [ebx+10h]
		mov	[ebp-4], eax
		and	dword ptr [ebp+8], 0F0000h
		cmp	edi, [ebp-4]
		jge	loc_43E860

loc_43E5DC:				; CODE XREF: .text:0043E85Aj
		mov	ax, 3Dh
		test	edi, edi
		jz	short loc_43E5E7
		add	eax, 0FFFFFFEFh

loc_43E5E7:				; CODE XREF: .text:0043E5E2j
		mov	[ebx+esi*2+260h], ax
		inc	esi
		mov	edx, [ebp-4]
		mov	eax, [ebx+10h]
		sub	edx, edi
		dec	edx
		imul	edx, eax
		add	edx, ebx
		add	edx, 40h
		cmp	eax, 10h	; switch 17 cases
		mov	[ebp-8], edx
		ja	loc_43E856	; jumptable 0043E613 default case
		mov	al, ds:byte_43E61A[eax]
		jmp	ds:off_43E62B[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_43E61A	db	0,     5,     4,     0 ; DATA XREF: .text:0043E60Dr
		db	3,     0,     0,     0 ; indirect table	for switch statement
		db	2,     0,     0,     0
		db	0,     0,     0,     0
		db	1
off_43E62B	dd offset loc_43E856	; DATA XREF: .text:0043E613r
		dd offset loc_43E824	; jump table for switch	statement
		dd offset loc_43E7FE
		dd offset loc_43E771
		dd offset loc_43E6DB
		dd offset loc_43E643
; ---------------------------------------------------------------------------

loc_43E643:				; CODE XREF: .text:0043E613j
					; DATA XREF: .text:off_43E62Bo
		cmp	dword ptr [ebp+8], 20000h ; jumptable 0043E613 case 1
		jz	short loc_43E667
		cmp	dword ptr [ebp+8], 40000h
		jz	short loc_43E667
		cmp	dword ptr [ebp+8], 50000h
		jz	short loc_43E667
		cmp	dword ptr [ebp+8], 60000h
		jnz	short loc_43E68A

loc_43E667:				; CODE XREF: .text:0043E64Aj
					; .text:0043E653j ...
		mov	edx, [ebp-8]
		lea	eax, [ebx+esi*2+260h]
		movsx	ecx, byte ptr [edx]
		push	ecx
		push	offset a4i_	; "%4i."
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43E856	; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E68A:				; CODE XREF: .text:0043E665j
		cmp	dword ptr [ebp+8], 10000h
		jnz	short loc_43E6B7
		mov	edx, [ebp-8]
		xor	ecx, ecx
		lea	eax, [ebx+esi*2+260h]
		mov	cl, [edx]
		push	ecx
		push	offset a3u_	; "%3u."
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43E856	; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E6B7:				; CODE XREF: .text:0043E691j
		mov	edx, [ebp-8]
		xor	ecx, ecx
		lea	eax, [ebx+esi*2+260h]
		mov	cl, [edx]
		push	ecx
		push	offset a02x_4	; "%02X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43E856	; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E6DB:				; CODE XREF: .text:0043E613j
					; DATA XREF: .text:off_43E62Bo
		cmp	dword ptr [ebp+8], 20000h ; jumptable 0043E613 case 2
		jz	short loc_43E6FF
		cmp	dword ptr [ebp+8], 40000h
		jz	short loc_43E6FF
		cmp	dword ptr [ebp+8], 50000h
		jz	short loc_43E6FF
		cmp	dword ptr [ebp+8], 60000h
		jnz	short loc_43E722

loc_43E6FF:				; CODE XREF: .text:0043E6E2j
					; .text:0043E6EBj ...
		mov	edx, [ebp-8]
		lea	eax, [ebx+esi*2+260h]
		movsx	ecx, word ptr [edx]
		push	ecx
		push	offset a6i_	; "%6i."
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43E856	; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E722:				; CODE XREF: .text:0043E6FDj
		cmp	dword ptr [ebp+8], 10000h
		jnz	short loc_43E74E
		mov	edx, [ebp-8]
		lea	eax, [ebx+esi*2+260h]
		movzx	ecx, word ptr [edx]
		push	ecx
		push	offset a5u_	; "%5u."
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43E856	; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E74E:				; CODE XREF: .text:0043E729j
		mov	edx, [ebp-8]
		lea	eax, [ebx+esi*2+260h]
		movzx	ecx, word ptr [edx]
		push	ecx
		push	(offset	a04x04x04x04x+1Eh) ; "%04X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43E856	; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E771:				; CODE XREF: .text:0043E613j
					; DATA XREF: .text:off_43E62Bo
		cmp	dword ptr [ebp+8], 20000h ; jumptable 0043E613 case 4
		jz	short loc_43E795
		cmp	dword ptr [ebp+8], 40000h
		jz	short loc_43E795
		cmp	dword ptr [ebp+8], 50000h
		jz	short loc_43E795
		cmp	dword ptr [ebp+8], 60000h
		jnz	short loc_43E7B7

loc_43E795:				; CODE XREF: .text:0043E778j
					; .text:0043E781j ...
		mov	edx, [ebp-8]
		lea	eax, [ebx+esi*2+260h]
		mov	ecx, [edx]
		push	ecx
		push	offset a11i_	; "%11i."
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43E856	; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E7B7:				; CODE XREF: .text:0043E793j
		cmp	dword ptr [ebp+8], 10000h
		jnz	short loc_43E7DF
		mov	edx, [ebp-8]
		lea	eax, [ebx+esi*2+260h]
		mov	ecx, [edx]
		push	ecx
		push	offset a10u_	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_43E856 ; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E7DF:				; CODE XREF: .text:0043E7BEj
		mov	edx, [ebp-8]
		lea	eax, [ebx+esi*2+260h]
		mov	ecx, [edx]
		push	ecx
		push	(offset	a04x08x+0Eh) ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_43E856 ; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E7FE:				; CODE XREF: .text:0043E613j
					; DATA XREF: .text:off_43E62Bo
		mov	edx, [ebp-8]	; jumptable 0043E613 case 8
		mov	ecx, [edx]
		push	ecx
		lea	ecx, [ebx+esi*2+260h]
		mov	eax, [ebp-8]
		mov	edx, [eax+4]
		push	edx
		push	offset a08x08x	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	esi, eax
		jmp	short loc_43E856 ; jumptable 0043E613 default case
; ---------------------------------------------------------------------------

loc_43E824:				; CODE XREF: .text:0043E613j
					; DATA XREF: .text:off_43E62Bo
		mov	eax, [ebp-8]	; jumptable 0043E613 case 16
		mov	edx, [eax]
		push	edx
		mov	ecx, [ebp-8]
		mov	eax, [ecx+4]
		push	eax
		mov	edx, [ebp-8]
		mov	ecx, [edx+8]
		push	ecx
		lea	ecx, [ebx+esi*2+260h]
		mov	eax, [ebp-8]
		mov	edx, [eax+0Ch]
		push	edx
		push	offset a08x08x08x08x ; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 18h
		add	esi, eax

loc_43E856:				; CODE XREF: .text:0043E607j
					; .text:0043E613j ...
		inc	edi		; jumptable 0043E613 default case
		cmp	edi, [ebp-4]
		jl	loc_43E5DC

loc_43E860:				; CODE XREF: .text:0043E57Aj
					; .text:0043E584j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43E868:				; CODE XREF: .text:004442D2p
					; .text:00444525p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	dword ptr [ebx+8], 4
		test	byte ptr mode, 4
		jz	short loc_43E8D8
		test	byte ptr [ebx+3], 2
		jz	short loc_43E8D8
		lea	eax, [ebx+260h]
		push	eax		; s
		call	_wcslen
		cmp	dword ptr [ebx+0Ch], 4
		pop	ecx
		jnz	short loc_43E8BA
		movzx	edx, word ptr [ebx+40h]
		push	edx
		movzx	ecx, word ptr [ebx+42h]
		push	ecx
		push	offset a04x04x_2 ; format
		lea	ebx, [ebx+eax*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43E8BA:				; CODE XREF: .text:0043E896j
		mov	edx, [ebx+40h]
		push	edx
		movzx	ecx, word ptr [ebx+44h]
		push	ecx
		push	offset a04x08x_1 ; "=%04X:%08X"
		lea	ebx, [ebx+eax*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h

loc_43E8D8:				; CODE XREF: .text:0043E87Dj
					; .text:0043E883j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43E8DC:				; CODE XREF: .text:0044521Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	dword ptr [ebx+8], 4
		test	byte ptr mode, 4
		jz	short loc_43E924
		test	byte ptr [ebx+3], 2
		jz	short loc_43E924
		lea	eax, [ebx+260h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	edx, [ebx+42h]
		push	edx
		movzx	ecx, word ptr [ebx+40h]
		push	ecx
		push	offset a04x08x_1 ; "=%04X:%08X"
		lea	ebx, [ebx+eax*2+260h]
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h

loc_43E924:				; CODE XREF: .text:0043E8F1j
					; .text:0043E8F7j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43E928:				; CODE XREF: .text:00444559p
					; .text:004450C2p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	dword ptr [esi+8], 4
		test	byte ptr mode, 4
		jz	loc_43EA4E
		test	byte ptr [esi+3], 2
		jz	loc_43EA4E
		lea	eax, [esi+260h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	edi, eax
		cmp	dword ptr [esi+0Ch], 1
		jnz	short loc_43E98E
		mov	dword ptr [ebp-4], 0FFh
		mov	eax, [esi+40h]
		lea	edx, [esi+edi*2+260h]
		and	eax, [ebp-4]
		push	eax
		push	offset a02x_5	; "=%02X ("
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_43E9DD
; ---------------------------------------------------------------------------

loc_43E98E:				; CODE XREF: .text:0043E965j
		cmp	dword ptr [esi+0Ch], 2
		jnz	short loc_43E9BB
		mov	dword ptr [ebp-4], 0FFFFh
		mov	ecx, [esi+40h]
		lea	eax, [esi+edi*2+260h]
		and	ecx, [ebp-4]
		push	ecx
		push	offset a04x_0	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_43E9DD
; ---------------------------------------------------------------------------

loc_43E9BB:				; CODE XREF: .text:0043E992j
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		mov	edx, [esi+40h]
		lea	ecx, [esi+edi*2+260h]
		push	edx
		push	offset a08x_9	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax

loc_43E9DD:				; CODE XREF: .text:0043E98Cj
					; .text:0043E9B9j
		xor	eax, eax
		mov	[ebp-8], eax
		mov	edx, [ebp+0Ch]
		mov	ebx, edx
		jmp	short loc_43EA2B
; ---------------------------------------------------------------------------

loc_43E9E9:				; CODE XREF: .text:0043EA2Fj
		and	eax, [ebp-4]
		jz	short loc_43EA25
		cmp	dword ptr [ebp-8], 0
		jz	short loc_43E9FF
		mov	word ptr [esi+edi*2+260h], 20h
		inc	edi

loc_43E9FF:				; CODE XREF: .text:0043E9F2j
		mov	eax, [esi+40h]
		mov	ecx, [ebx+4]
		and	eax, [ebx]
		shr	eax, cl
		push	eax
		lea	eax, [esi+edi*2+260h]
		mov	edx, [ebx+8]
		push	edx
		push	offset aSI	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		add	edi, eax

loc_43EA25:				; CODE XREF: .text:0043E9ECj
		inc	dword ptr [ebp-8]
		add	ebx, 0Ch

loc_43EA2B:				; CODE XREF: .text:0043E9E7j
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_43E9E9
		push	(offset	aSt0+8)	; src
		mov	edx, 100h
		sub	edx, edi
		push	edx		; n
		lea	esi, [esi+edi*2+260h]
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43EA4E:				; CODE XREF: .text:0043E942j
					; .text:0043E94Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43EA58:				; CODE XREF: .text:004446C6p
					; .text:00444735p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	dword ptr [ebx+8], 4
		test	byte ptr mode, 4
		jz	short loc_43EAA1
		test	byte ptr [ebx+3], 2
		jz	short loc_43EAA1
		lea	eax, [ebx+260h]
		push	eax		; s
		call	_wcslen
		mov	edx, [ebx+40h]
		pop	ecx
		and	edx, 0FFFFh
		lea	ebx, [ebx+eax*2+260h]
		push	edx
		push	offset a04x	; "=%04X"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_43EAA1:				; CODE XREF: .text:0043EA6Dj
					; .text:0043EA73j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EAA4:				; CODE XREF: .text:00444800p
					; .text:0044481Bp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	dword ptr [ebx+8], 0Dh
		test	byte ptr mode, 4
		jz	loc_43EC48
		test	byte ptr [ebx+3], 2
		jz	loc_43EC48
		lea	eax, [ebx+260h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	edi, eax
		mov	word ptr [ebx+edi*2+260h], 3Dh
		inc	edi
		mov	esi, edi
		call	loc_41100B
		mov	eax, [ebx+0Ch]
		sub	eax, 4
		jz	short loc_43EB06
		sub	eax, 4
		jz	short loc_43EB1D
		sub	eax, 2
		jz	short loc_43EB37
		jmp	short loc_43EB56
; ---------------------------------------------------------------------------

loc_43EB06:				; CODE XREF: .text:0043EAF8j
		push	dword ptr [ebx+40h] ; f
		lea	ecx, [ebx+esi*2+260h]
		push	ecx		; s
		call	Printfloat4
		add	esp, 8
		add	esi, eax
		jmp	short loc_43EB7F
; ---------------------------------------------------------------------------

loc_43EB1D:				; CODE XREF: .text:0043EAFDj
		push	dword ptr [ebx+44h]
		push	dword ptr [ebx+40h] ; d
		lea	edx, [ebx+esi*2+260h]
		push	edx		; s
		call	Printfloat8
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_43EB7F
; ---------------------------------------------------------------------------

loc_43EB37:				; CODE XREF: .text:0043EB02j
		mov	cx, [ebx+48h]
		lea	eax, [ebx+esi*2+260h]
		push	ecx
		push	dword ptr [ebx+44h]
		push	dword ptr [ebx+40h] ; ext
		push	eax		; s
		call	Printfloat10
		add	esp, 10h
		add	esi, eax
		jmp	short loc_43EB7F
; ---------------------------------------------------------------------------

loc_43EB56:				; CODE XREF: .text:0043EB04j
		push	$CTW0("??? \{internal error\}") ; "??? (internal	error)"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, esi
		push	eax		; src
		push	edx		; n
		lea	ebx, [ebx+esi*2+260h]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_43EC43
; ---------------------------------------------------------------------------

loc_43EB7F:				; CODE XREF: .text:0043EB1Bj
					; .text:0043EB35j ...
		mov	eax, [ebx+0Ch]
		push	eax		; size
		lea	edx, [ebx+40h]
		push	edx		; data
		lea	ecx, [ebp-200h]
		push	ecx		; s
		call	Nameoffloat
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_43EBF7
		push	(offset	a08x_7+8) ; src
		mov	eax, 100h
		sub	eax, esi
		push	eax		; n
		lea	edx, [ebx+esi*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	ecx, [ebp-200h]
		mov	eax, 100h
		sub	eax, esi
		push	ecx		; src
		push	eax		; n
		lea	edx, [ebx+esi*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	ecx, 100h
		sub	ecx, esi
		push	(offset	aSt0+8)	; src
		push	ecx		; n
		lea	eax, [ebx+esi*2+260h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43EBF7:				; CODE XREF: .text:0043EB98j
		push	offset aFloat	; "FLOAT "
		call	_T
		pop	ecx
		push	eax
		push	100h
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx
		call	loc_410A49
		mov	edx, 100h
		add	esp, 0Ch
		sub	edx, eax
		add	eax, eax
		add	eax, dword_5E0714
		lea	ebx, [ebx+edi*2+260h]
		push	ebx		; src
		push	edx		; n
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43EC43:				; CODE XREF: .text:0043EB7Aj
		call	loc_411014

loc_43EC48:				; CODE XREF: .text:0043EAC1j
					; .text:0043EACBj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43EC50:				; CODE XREF: .text:004449E8p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	dword ptr [esi+8], 4
		test	byte ptr mode, 4
		jz	short loc_43ECC7
		test	byte ptr [esi+3], 2
		jz	short loc_43ECC7
		lea	eax, [esi+260h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		xor	edi, edi

loc_43EC80:				; CODE XREF: .text:0043ECC5j
		test	edi, edi
		jnz	short loc_43EC91
		mov	word ptr [esi+ebx*2+260h], 3Dh
		inc	ebx
		jmp	short loc_43EC9C
; ---------------------------------------------------------------------------

loc_43EC91:				; CODE XREF: .text:0043EC82j
		mov	word ptr [esi+ebx*2+260h], 20h
		inc	ebx

loc_43EC9C:				; CODE XREF: .text:0043EC8Fj
		mov	eax, 9
		lea	ecx, [esi+ebx*2+260h]
		sub	eax, edi
		xor	edx, edx
		mov	dl, [esi+eax+40h]
		push	edx
		push	offset a02x_4	; "%02X"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		inc	edi
		cmp	edi, 0Ah
		jl	short loc_43EC80

loc_43ECC7:				; CODE XREF: .text:0043EC67j
					; .text:0043EC6Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43ECCC:				; CODE XREF: .text:00444B27p
					; .text:00444B86p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	dword ptr [ebx+8], 0Dh
		test	byte ptr mode, 4
		jz	loc_43EE22
		test	byte ptr [ebx+3], 2
		jz	loc_43EE22
		cmp	dword ptr [ebx+0Ch], 0
		jz	loc_43EE22
		cmp	dword ptr [ebx+10h], 0
		jz	loc_43EE22
		lea	eax, [ebx+260h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		lea	ecx, [ebx+0Ch]
		mov	word ptr [ebx+edx*2+260h], 3Dh
		inc	dword ptr [ebp-4]
		mov	edi, [ebp-4]
		mov	dword ptr [ebp-10h], 20h
		mov	eax, [ecx]
		cmp	eax, [ebp-10h]
		jl	short loc_43ED41
		lea	ecx, [ebp-10h]

loc_43ED41:				; CODE XREF: .text:0043ED3Cj
		mov	eax, [ecx]
		cdq
		idiv	dword ptr [ebx+10h]
		mov	[ebp-8], eax
		xor	esi, esi
		cmp	esi, [ebp-8]
		jge	short loc_43EDCD

loc_43ED51:				; CODE XREF: .text:0043EDCBj
		test	esi, esi
		jz	short loc_43ED74
		push	offset asc_53172E ; ", "
		mov	eax, 100h
		sub	eax, edi
		push	eax		; n
		lea	edx, [ebx+edi*2+260h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_43ED74:				; CODE XREF: .text:0043ED53j
		mov	ecx, [ebp-8]
		mov	eax, [ebx+10h]
		sub	ecx, esi
		dec	ecx
		imul	ecx, eax
		add	ecx, ebx
		add	ecx, 40h
		sub	eax, 4
		mov	[ebp-0Ch], ecx
		jz	short loc_43ED94
		sub	eax, 4
		jz	short loc_43EDAD
		jmp	short loc_43EDC7
; ---------------------------------------------------------------------------

loc_43ED94:				; CODE XREF: .text:0043ED8Bj
		mov	edx, [ebp-0Ch]
		lea	eax, [ebx+edi*2+260h]
		push	dword ptr [edx]	; f
		push	eax		; s
		call	Printfloat4
		add	esp, 8
		add	edi, eax
		jmp	short loc_43EDC7
; ---------------------------------------------------------------------------

loc_43EDAD:				; CODE XREF: .text:0043ED90j
		mov	edx, [ebp-0Ch]
		lea	eax, [ebx+edi*2+260h]
		push	dword ptr [edx+4]
		push	dword ptr [edx]	; d
		push	eax		; s
		call	Printfloat8
		add	esp, 0Ch
		add	edi, eax

loc_43EDC7:				; CODE XREF: .text:0043ED92j
					; .text:0043EDABj
		inc	esi
		cmp	esi, [ebp-8]
		jl	short loc_43ED51

loc_43EDCD:				; CODE XREF: .text:0043ED4Fj
		push	offset aFloat	; "FLOAT "
		call	_T
		pop	ecx
		push	eax
		push	100h
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx
		call	loc_410A49
		mov	esi, eax
		mov	eax, [ebp-4]
		mov	edx, 100h
		add	eax, eax
		sub	edx, esi
		add	esp, 0Ch
		add	ebx, eax
		add	esi, esi
		add	ebx, 260h
		add	esi, dword_5E0714
		push	ebx		; src
		push	edx		; n
		add	esi, 16D0h
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43EE22:				; CODE XREF: .text:0043ECE6j
					; .text:0043ECF0j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43EE2C:				; CODE XREF: .text:0043EF3Fp
					; .text:0043F015p ...
		mov	eax, dword_5E0720
		push	ebp
		and	eax, 3Fh
		mov	ebp, esp
		cmp	eax, 8
		jg	short loc_43EE4B
		jz	short loc_43EE69
		dec	eax
		jz	short loc_43EE57
		dec	eax
		jz	short loc_43EE5B
		sub	eax, 2
		jz	short loc_43EE62
		jmp	short loc_43EE7E
; ---------------------------------------------------------------------------

loc_43EE4B:				; CODE XREF: .text:0043EE3Aj
		sub	eax, 10h
		jz	short loc_43EE70
		sub	eax, 10h
		jz	short loc_43EE77
		jmp	short loc_43EE7E
; ---------------------------------------------------------------------------

loc_43EE57:				; CODE XREF: .text:0043EE3Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EE5B:				; CODE XREF: .text:0043EE42j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EE62:				; CODE XREF: .text:0043EE47j
		mov	eax, 2
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EE69:				; CODE XREF: .text:0043EE3Cj
		mov	eax, 3
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EE70:				; CODE XREF: .text:0043EE4Ej
		mov	eax, 4
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EE77:				; CODE XREF: .text:0043EE53j
		mov	eax, 5
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EE7E:				; CODE XREF: .text:0043EE49j
					; .text:0043EE55j
		mov	eax, [ebp+8]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43EE84:				; CODE XREF: .text:004485C8p
					; .text:004486F5p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_43EE9E
		or	eax, 0FFFFFFFFh
		jmp	loc_43EFAA
; ---------------------------------------------------------------------------

loc_43EE9E:				; CODE XREF: .text:0043EE94j
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43EEC6
		xor	edx, edx
		mov	dl, [edi]
		mov	dword_5E0728, 1
		lea	ebx, [edx+edx*4]
		lea	ebx, [edx+ebx*4]
		shl	ebx, 3
		add	ebx, offset tmpcmdinfo
		jmp	short loc_43EF16
; ---------------------------------------------------------------------------

loc_43EEC6:				; CODE XREF: .text:0043EEA5j
		xor	eax, eax
		mov	al, [edi]
		lea	ebx, [eax+eax*4]
		lea	ebx, [eax+ebx*4]
		shl	ebx, 3
		add	ebx, offset stru_593CC6
		mov	eax, [ebx+4]
		test	eax, eax
		jnz	short loc_43EEEC
		mov	dword_5E0728, 1
		jmp	short loc_43EF16
; ---------------------------------------------------------------------------

loc_43EEEC:				; CODE XREF: .text:0043EEDEj
		cmp	dword ptr [ebp+0Ch], 2
		jnb	short loc_43EEFA
		or	eax, 0FFFFFFFFh
		jmp	loc_43EFAA
; ---------------------------------------------------------------------------

loc_43EEFA:				; CODE XREF: .text:0043EEF0j
		xor	edx, edx
		mov	dl, [edi+1]
		mov	dword_5E0728, 2
		lea	ecx, [edx+edx*4]
		lea	ecx, [edx+ecx*4]
		shl	ecx, 3
		add	ecx, eax
		mov	ebx, ecx

loc_43EF16:				; CODE XREF: .text:0043EEC4j
					; .text:0043EEEAj
		xor	eax, eax
		mov	al, [edi]
		mov	edx, eax
		and	edx, 0C0h
		cmp	edx, 0C0h
		jnz	short loc_43EF34
		and	eax, 7
		mov	[esi+0Ch], eax
		xor	eax, eax
		jmp	short loc_43EFAA
; ---------------------------------------------------------------------------

loc_43EF34:				; CODE XREF: .text:0043EF28j
		mov	dword ptr [esi+0Ch], 0FFFFFFFFh
		mov	edx, [ebx+14h]
		push	edx
		call	loc_43EE2C
		pop	ecx
		mov	[esi+10h], eax
		mov	ecx, [ebx+0Ch]
		mov	[esi], ecx
		mov	eax, [ebx+18h]
		mov	[esi+14h], eax
		mov	edx, [ebx+1Ch]
		mov	[esi+18h], edx
		mov	eax, [ebx+8]
		mov	dword_5E072C, eax
		test	eax, eax
		jz	short loc_43EFA8
		mov	edx, [ebp+0Ch]
		cmp	edx, [ebx]
		jnb	short loc_43EF71
		or	eax, 0FFFFFFFFh
		jmp	short loc_43EFAA
; ---------------------------------------------------------------------------

loc_43EF71:				; CODE XREF: .text:0043EF6Aj
		cmp	eax, 1
		jnz	short loc_43EF85
		mov	edx, dword_5E0728
		movsx	ecx, byte ptr [edi+edx]
		mov	[esi+1Ch], ecx
		jmp	short loc_43EFA8
; ---------------------------------------------------------------------------

loc_43EF85:				; CODE XREF: .text:0043EF74j
		cmp	dword_5E072C, 4
		jnz	short loc_43EF9B
		mov	eax, dword_5E0728
		mov	edx, [edi+eax]
		mov	[esi+1Ch], edx
		jmp	short loc_43EFA8
; ---------------------------------------------------------------------------

loc_43EF9B:				; CODE XREF: .text:0043EF8Cj
		mov	ecx, dword_5E0728
		movzx	eax, word ptr [edi+ecx]
		mov	[esi+1Ch], eax

loc_43EFA8:				; CODE XREF: .text:0043EF63j
					; .text:0043EF83j ...
		mov	eax, [ebx]

loc_43EFAA:				; CODE XREF: .text:0043EE99j
					; .text:0043EEF5j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43EFB0:				; CODE XREF: .text:0044884Dp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+8]
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43EFCF
		mov	dword_5E072C, 2
		jmp	short loc_43EFD9
; ---------------------------------------------------------------------------

loc_43EFCF:				; CODE XREF: .text:0043EFC1j
		mov	dword_5E072C, 4

loc_43EFD9:				; CODE XREF: .text:0043EFCDj
		mov	edx, [ebp+0Ch]
		cmp	edx, dword_5E072C
		jnb	short loc_43EFEA
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43EFEA:				; CODE XREF: .text:0043EFE2j
		mov	dword ptr [ebx], 100100h
		mov	dword ptr [ebx+0Ch], 0FFFFFFFFh
		cmp	dword_5E072C, 4
		jnz	short loc_43F007
		mov	ecx, [eax]
		mov	[ebx+1Ch], ecx
		jmp	short loc_43F013
; ---------------------------------------------------------------------------

loc_43F007:				; CODE XREF: .text:0043EFFEj
		movzx	eax, word ptr [eax]
		mov	[ebx+1Ch], eax
		or	dword ptr [ebx], 200000h

loc_43F013:				; CODE XREF: .text:0043F005j
		push	3
		call	loc_43EE2C
		pop	ecx
		mov	[ebx+10h], eax
		mov	eax, dword_5E072C
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43F028:				; CODE XREF: .text:0044890Fp
					; .text:0044892Bp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+18h]
		mov	eax, [ebp+14h]
		mov	edx, [ebp+10h]
		mov	esi, [ebp+8]
		mov	dword ptr [ebx], 80100h
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_43F050
		or	dword ptr [ebx], 8000h
		mov	[ebx+0Ch], esi
		jmp	short loc_43F057
; ---------------------------------------------------------------------------

loc_43F050:				; CODE XREF: .text:0043F043j
		mov	dword ptr [ebx+0Ch], 0FFFFFFFFh

loc_43F057:				; CODE XREF: .text:0043F04Ej
		cmp	eax, 2
		jz	short loc_43F069
		test	eax, eax
		jnz	short loc_43F06F
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43F06F

loc_43F069:				; CODE XREF: .text:0043F05Aj
		or	dword ptr [ebx], 200000h

loc_43F06F:				; CODE XREF: .text:0043F05Ej
					; .text:0043F067j
		cmp	edx, 0FFFFFFFFh
		jz	short loc_43F079
		mov	[ebx+10h], edx
		jmp	short loc_43F084
; ---------------------------------------------------------------------------

loc_43F079:				; CODE XREF: .text:0043F072j
		push	3
		call	loc_43EE2C
		pop	ecx
		mov	[ebx+10h], eax

loc_43F084:				; CODE XREF: .text:0043F077j
		mov	byte ptr [ebx+esi+14h],	1
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43F090:				; CODE XREF: .text:00448B30p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	dword ptr [eax], 88100h
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43F0AB
		or	dword ptr [eax], 200000h

loc_43F0AB:				; CODE XREF: .text:0043F0A3j
		mov	dword ptr [eax+0Ch], 4
		mov	dword ptr [eax+10h], 2
		mov	byte ptr [eax+18h], 1
		mov	edx, [ebp+8]
		neg	edx
		mov	[eax+1Ch], edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43F0C8:				; CODE XREF: .text:00448B48p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	dword ptr [eax], 88100h
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43F0E3
		or	dword ptr [eax], 200000h

loc_43F0E3:				; CODE XREF: .text:0043F0DBj
		mov	dword ptr [eax+0Ch], 4
		mov	dword ptr [eax+10h], 2
		mov	byte ptr [eax+18h], 1
		mov	edx, [ebp+8]
		add	edx, edx
		neg	edx
		mov	[eax+1Ch], edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43F104:				; CODE XREF: .text:00448B62p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	dword ptr [eax], 88100h
		test	byte ptr dword_5E0720, 80h
		jz	short loc_43F11F
		or	dword ptr [eax], 200000h

loc_43F11F:				; CODE XREF: .text:0043F117j
		mov	dword ptr [eax+0Ch], 4
		mov	dword ptr [eax+10h], 2
		mov	byte ptr [eax+18h], 1
		mov	edx, [ebp+8]
		shl	edx, 3
		neg	edx
		mov	[eax+1Ch], edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_43F140:				; CODE XREF: .text:004491A9p
					; .text:004491FDp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+1Ch]
		mov	ecx, [ebp+18h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	edx, [ebp+8]
		cmp	edx, [ebp+14h]
		jbe	short loc_43F15E
		or	eax, 0FFFFFFFFh
		jmp	short loc_43F1A7
; ---------------------------------------------------------------------------

loc_43F15E:				; CODE XREF: .text:0043F157j
		mov	dword ptr [eax], 10200h
		mov	[eax+8], ebx
		mov	dword_5E0730, edx
		add	ecx, edx
		mov	dword ptr [eax+0Ch], 0FFFFFFFFh
		cmp	edx, 1
		jnz	short loc_43F185
		movsx	edx, byte ptr [esi]
		add	ecx, edx
		mov	[eax+1Ch], ecx
		jmp	short loc_43F199
; ---------------------------------------------------------------------------

loc_43F185:				; CODE XREF: .text:0043F179j
		cmp	edx, 2
		jnz	short loc_43F194
		movzx	edx, word ptr [esi]
		add	ecx, edx
		mov	[eax+1Ch], ecx
		jmp	short loc_43F199
; ---------------------------------------------------------------------------

loc_43F194:				; CODE XREF: .text:0043F188j
		add	ecx, [esi]
		mov	[eax+1Ch], ecx

loc_43F199:				; CODE XREF: .text:0043F183j
					; .text:0043F192j
		cmp	ebx, 2
		jnz	short loc_43F1A5
		and	dword ptr [eax+1Ch], 0FFFFh

loc_43F1A5:				; CODE XREF: .text:0043F19Cj
		mov	eax, ebx

loc_43F1A7:				; CODE XREF: .text:0043F15Cj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43F1AC:				; CODE XREF: .text:0044931Ap
					; .text:004493B6p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, dword_5E0728
		push	edi
		add	esi, dword_5E072C
		mov	edx, [ebp+8]
		add	esi, edx
		mov	eax, [ebp+1Ch]
		cmp	dword ptr [ebp+18h], 0
		mov	ecx, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		jz	short loc_43F1DA
		mov	edi, dword_5E0730
		jmp	short loc_43F1DC
; ---------------------------------------------------------------------------

loc_43F1DA:				; CODE XREF: .text:0043F1D0j
		xor	edi, edi

loc_43F1DC:				; CODE XREF: .text:0043F1D8j
		add	esi, edi
		cmp	esi, [ebp+14h]
		jbe	short loc_43F1E8
		or	eax, 0FFFFFFFFh
		jmp	short loc_43F25B
; ---------------------------------------------------------------------------

loc_43F1E8:				; CODE XREF: .text:0043F1E1j
		mov	dword ptr [eax], 200h
		mov	[eax+8], ebx
		mov	esi, dword_5E0728
		add	esi, dword_5E072C
		add	ecx, esi
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_43F20D
		mov	dword_5E0730, edx
		jmp	short loc_43F219
; ---------------------------------------------------------------------------

loc_43F20D:				; CODE XREF: .text:0043F203j
		mov	dword_5E0734, edx
		add	ecx, dword_5E0730

loc_43F219:				; CODE XREF: .text:0043F20Bj
		mov	dword ptr [eax+0Ch], 0FFFFFFFFh
		cmp	edx, 4
		jnz	short loc_43F22C
		mov	edx, [ecx]
		mov	[eax+1Ch], edx
		jmp	short loc_43F23F
; ---------------------------------------------------------------------------

loc_43F22C:				; CODE XREF: .text:0043F223j
		cmp	edx, 1
		jnz	short loc_43F239
		movsx	ecx, byte ptr [ecx]
		mov	[eax+1Ch], ecx
		jmp	short loc_43F23F
; ---------------------------------------------------------------------------

loc_43F239:				; CODE XREF: .text:0043F22Fj
		movzx	edx, word ptr [ecx]
		mov	[eax+1Ch], edx

loc_43F23F:				; CODE XREF: .text:0043F22Aj
					; .text:0043F237j
		cmp	ebx, 1
		jnz	short loc_43F24D
		and	dword ptr [eax+1Ch], 0FFh
		jmp	short loc_43F259
; ---------------------------------------------------------------------------

loc_43F24D:				; CODE XREF: .text:0043F242j
		cmp	ebx, 2
		jnz	short loc_43F259
		and	dword ptr [eax+1Ch], 0FFFFh

loc_43F259:				; CODE XREF: .text:0043F24Bj
					; .text:0043F250j
		mov	eax, ebx

loc_43F25B:				; CODE XREF: .text:0043F1E6j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43F260:				; CODE XREF: .text:0040FE23p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		push	3		; flags
		push	56860h		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		mov	dword_5BDD0C, ebx
		test	ebx, ebx
		jnz	short loc_43F28C
		or	eax, 0FFFFFFFFh
		jmp	loc_43FD0C
; ---------------------------------------------------------------------------

loc_43F28C:				; CODE XREF: .text:0043F282j
		mov	ebx, 4000h
		mov	ecx, offset bincmd
		jmp	short loc_43F313
; ---------------------------------------------------------------------------

loc_43F298:				; CODE XREF: .text:0043F317j
		mov	eax, [ecx+4]
		and	eax, 1Fh
		cmp	eax, 1Dh
		jz	short loc_43F310
		mov	edx, [ecx+14h]
		mov	[ebp-10h], edx
		mov	eax, [ecx+10h]
		and	eax, 3FFFh
		xor	edx, edx
		mov	[ebp-14h], eax

loc_43F2B6:				; CODE XREF: .text:0043F30Ej
		mov	eax, [ebp-10h]
		xor	eax, edx
		and	eax, [ebp-14h]
		jnz	short loc_43F307
		mov	eax, edx
		shl	eax, 3
		add	eax, dword_5BDD0C
		jmp	short loc_43F2D0
; ---------------------------------------------------------------------------

loc_43F2CD:				; CODE XREF: .text:0043F2D9j
		mov	eax, [eax+4]

loc_43F2D0:				; CODE XREF: .text:0043F2CBj
		cmp	dword ptr [eax], 0
		jz	short loc_43F2DB
		cmp	dword ptr [eax+4], 0
		jnz	short loc_43F2CD

loc_43F2DB:				; CODE XREF: .text:0043F2D3j
		cmp	dword ptr [eax], 0
		jnz	short loc_43F2E4
		mov	[eax], ecx
		jmp	short loc_43F307
; ---------------------------------------------------------------------------

loc_43F2E4:				; CODE XREF: .text:0043F2DEj
		cmp	ebx, 0AD0Ch
		jl	short loc_43F2F4
		or	eax, 0FFFFFFFFh
		jmp	loc_43FD0C
; ---------------------------------------------------------------------------

loc_43F2F4:				; CODE XREF: .text:0043F2EAj
		mov	esi, ebx
		shl	esi, 3
		add	esi, dword_5BDD0C
		inc	ebx
		mov	[eax+4], esi
		mov	eax, esi
		mov	[eax], ecx

loc_43F307:				; CODE XREF: .text:0043F2BEj
					; .text:0043F2E2j
		inc	edx
		cmp	edx, 4000h
		jb	short loc_43F2B6

loc_43F310:				; CODE XREF: .text:0043F2A1j
		add	ecx, 34h

loc_43F313:				; CODE XREF: .text:0043F296j
		cmp	dword ptr [ecx+0Ch], 0
		jnz	loc_43F298
		push	0A800h		; n
		push	0		; c
		push	offset tmpcmdinfo ; s
		call	_memset
		add	esp, 0Ch
		xor	esi, esi
		mov	ebx, offset tmpcmdinfo

loc_43F338:				; CODE XREF: .text:0043F627j
		mov	edi, esi
		mov	eax, esi
		and	eax, 0C0h
		and	edi, 7
		cmp	eax, 0C0h
		jnz	short loc_43F36C
		mov	dword ptr [ebx], 1
		xor	edx, edx
		mov	[ebx+0Ch], edx
		mov	[ebx+10h], edi
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		jmp	loc_43F61A	; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F36C:				; CODE XREF: .text:0043F349j
		mov	ecx, esi
		and	ecx, 0C7h
		cmp	ecx, 6
		jnz	short loc_43F3A7
		mov	dword ptr [ebx], 3
		mov	dword ptr [ebx+8], 2
		mov	dword ptr [ebx+0Ch], 300100h
		mov	dword ptr [ebx+10h], 0FFFFFFFFh
		mov	dword ptr [ebx+14h], 3
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		jmp	loc_43F61A	; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F3A7:				; CODE XREF: .text:0043F377j
		mov	dword ptr [ebx+0Ch], 280100h
		cmp	eax, 40h
		jnz	short loc_43F3C3
		mov	dword ptr [ebx+8], 1
		or	dword ptr [ebx+0Ch], 100000h
		jmp	short loc_43F3D8
; ---------------------------------------------------------------------------

loc_43F3C3:				; CODE XREF: .text:0043F3B1j
		cmp	eax, 80h
		jnz	short loc_43F3D8
		mov	dword ptr [ebx+8], 2
		or	dword ptr [ebx+0Ch], 100000h

loc_43F3D8:				; CODE XREF: .text:0043F3C1j
					; .text:0043F3C8j
		mov	eax, [ebx+8]
		inc	eax
		mov	[ebx], eax
		mov	dword ptr [ebx+10h], 0FFFFFFFFh
		cmp	edi, 7		; switch 8 cases
		ja	loc_43F61A	; jumptable 0043F3EE default case
		jmp	ds:off_43F3F5[edi*4] ; switch jump
; ---------------------------------------------------------------------------
off_43F3F5	dd offset loc_43F415	; DATA XREF: .text:0043F3EEr
		dd offset loc_43F459	; jump table for switch	statement
		dd offset loc_43F49D
		dd offset loc_43F4E1
		dd offset loc_43F525
		dd offset loc_43F565
		dd offset loc_43F5A2
		dd offset loc_43F5DF
; ---------------------------------------------------------------------------

loc_43F415:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Bh], 1 ;	jumptable 0043F3EE case	0
		mov	byte ptr [ebx+1Eh], 1
		mov	dword ptr [ebx+14h], 3
		push	offset aBxSi_1	; src
		lea	edx, [ebx+28h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		push	offset aBxSi	; "%BX,%SI"
		lea	ecx, [ebx+68h]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+20h], 48h
		mov	dword ptr [ebx+24h], 6
		add	esp, 8
		jmp	loc_43F61A	; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F459:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Bh], 1 ;	jumptable 0043F3EE case	1
		mov	byte ptr [ebx+1Fh], 1
		mov	dword ptr [ebx+14h], 3
		push	offset aBxDi_1	; src
		lea	eax, [ebx+28h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		push	offset aBxDi	; "%BX,%DI"
		lea	edx, [ebx+68h]
		push	edx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+20h], 88h
		mov	dword ptr [ebx+24h], 7
		add	esp, 8
		jmp	loc_43F61A	; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F49D:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Dh], 1 ;	jumptable 0043F3EE case	2
		mov	byte ptr [ebx+1Eh], 1
		mov	dword ptr [ebx+14h], 2
		push	offset aBpSi_0	; src
		lea	ecx, [ebx+28h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		push	offset aBpSi	; "%BP,%SI"
		lea	eax, [ebx+68h]
		push	eax		; dst
		call	_wcscpy
		mov	dword ptr [ebx+20h], 60h
		mov	dword ptr [ebx+24h], 6
		add	esp, 8
		jmp	loc_43F61A	; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F4E1:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Dh], 1 ;	jumptable 0043F3EE case	3
		mov	byte ptr [ebx+1Fh], 1
		mov	dword ptr [ebx+14h], 2
		push	offset aBpDi_1	; src
		lea	edx, [ebx+28h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		push	offset aBpDi	; "%BP,%DI"
		lea	ecx, [ebx+68h]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+20h], 0A0h
		mov	dword ptr [ebx+24h], 7
		add	esp, 8
		jmp	loc_43F61A	; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F525:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Eh], 1 ;	jumptable 0043F3EE case	4
		mov	dword ptr [ebx+14h], 3
		push	offset aSi	; src
		lea	eax, [ebx+28h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		push	(offset	aBxSi+8) ; src
		lea	edx, [ebx+68h]
		push	edx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+20h], 40h
		mov	dword ptr [ebx+24h], 6
		add	esp, 8
		jmp	loc_43F61A	; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F565:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Fh], 1 ;	jumptable 0043F3EE case	5
		mov	dword ptr [ebx+14h], 3
		push	offset aDi	; "DI"
		lea	ecx, [ebx+28h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		push	(offset	aBxDi+8) ; src
		lea	eax, [ebx+68h]
		push	eax		; dst
		call	_wcscpy
		mov	dword ptr [ebx+20h], 80h
		mov	dword ptr [ebx+24h], 7
		add	esp, 8
		jmp	short loc_43F61A ; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F5A2:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Dh], 1 ;	jumptable 0043F3EE case	6
		mov	dword ptr [ebx+14h], 2
		push	offset aBp_1	; src
		lea	edx, [ebx+28h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		push	offset aBp	; "%BP"
		lea	ecx, [ebx+68h]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+20h], 20h
		mov	dword ptr [ebx+24h], 5
		add	esp, 8
		jmp	short loc_43F61A ; jumptable 0043F3EE default case
; ---------------------------------------------------------------------------

loc_43F5DF:				; CODE XREF: .text:0043F3EEj
					; DATA XREF: .text:off_43F3F5o
		mov	byte ptr [ebx+1Bh], 1 ;	jumptable 0043F3EE case	7
		mov	dword ptr [ebx+14h], 3
		push	offset aBx_1	; src
		lea	eax, [ebx+28h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		push	offset aBx	; "%BX"
		lea	edx, [ebx+68h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		mov	dword ptr [ebx+20h], 8
		mov	dword ptr [ebx+24h], 3

loc_43F61A:				; CODE XREF: .text:0043F367j
					; .text:0043F3A2j ...
		inc	esi		; jumptable 0043F3EE default case
		add	ebx, 0A8h
		cmp	esi, 0FFh
		jle	loc_43F338
		push	0A800h		; n
		push	0		; c
		push	offset stru_593CC6 ; s
		call	_memset
		add	esp, 0Ch
		xor	esi, esi
		mov	ebx, offset stru_593CC6

loc_43F648:				; CODE XREF: .text:0043F78Fj
		mov	edi, esi
		mov	eax, esi
		and	eax, 0C0h
		and	edi, 7
		cmp	eax, 0C0h
		jnz	short loc_43F67C
		mov	dword ptr [ebx], 1
		xor	edx, edx
		mov	[ebx+0Ch], edx
		mov	[ebx+10h], edi
		mov	dword ptr [ebx+14h], 0FFFFFFFFh
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		jmp	loc_43F782
; ---------------------------------------------------------------------------

loc_43F67C:				; CODE XREF: .text:0043F659j
		mov	ecx, esi
		and	ecx, 0C7h
		cmp	ecx, 5
		jnz	short loc_43F6B7
		mov	dword ptr [ebx], 5
		mov	dword ptr [ebx+8], 4
		mov	dword ptr [ebx+0Ch], 100100h
		mov	dword ptr [ebx+10h], 0FFFFFFFFh
		mov	dword ptr [ebx+14h], 3
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		jmp	loc_43F782
; ---------------------------------------------------------------------------

loc_43F6B7:				; CODE XREF: .text:0043F687j
		mov	dword ptr [ebx+0Ch], 100h
		mov	dword ptr [ebx+10h], 0FFFFFFFFh
		cmp	eax, 40h
		jnz	short loc_43F6DA
		mov	dword ptr [ebx+8], 1
		or	dword ptr [ebx+0Ch], 100000h
		jmp	short loc_43F6EF
; ---------------------------------------------------------------------------

loc_43F6DA:				; CODE XREF: .text:0043F6C8j
		cmp	eax, 80h
		jnz	short loc_43F6EF
		mov	dword ptr [ebx+8], 4
		or	dword ptr [ebx+0Ch], 100000h

loc_43F6EF:				; CODE XREF: .text:0043F6D8j
					; .text:0043F6DFj
		cmp	edi, 4
		jnz	short loc_43F726
		mov	eax, esi
		and	eax, 0C0h
		test	eax, eax
		jnz	short loc_43F708
		mov	dword ptr [ebx+4], offset stru_59E4C6
		jmp	short loc_43F71D
; ---------------------------------------------------------------------------

loc_43F708:				; CODE XREF: .text:0043F6FDj
		cmp	eax, 40h
		jnz	short loc_43F716
		mov	dword ptr [ebx+4], offset stru_5A8CC6
		jmp	short loc_43F71D
; ---------------------------------------------------------------------------

loc_43F716:				; CODE XREF: .text:0043F70Bj
		mov	dword ptr [ebx+4], offset stru_5B34C6

loc_43F71D:				; CODE XREF: .text:0043F706j
					; .text:0043F714j
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		jmp	short loc_43F782
; ---------------------------------------------------------------------------

loc_43F726:				; CODE XREF: .text:0043F6F2j
		mov	edx, [ebx+8]
		mov	ecx, 2
		inc	edx
		mov	[ebx], edx
		or	dword ptr [ebx+0Ch], 80000h
		cmp	edi, 5
		jz	short loc_43F73E
		inc	ecx

loc_43F73E:				; CODE XREF: .text:0043F73Bj
		mov	[ebx+14h], ecx
		mov	byte ptr [ebx+edi+18h],	1
		mov	eax, off_52FC84[edi*4]
		push	eax		; src
		lea	edx, [ebx+28h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		mov	ecx, off_52FC84[edi*4]
		push	ecx
		push	offset aS_5	; "%%%s"
		lea	eax, [ebx+68h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, edi
		mov	edx, 1
		shl	edx, cl
		mov	[ebx+20h], edx
		mov	[ebx+24h], edi

loc_43F782:				; CODE XREF: .text:0043F677j
					; .text:0043F6B2j ...
		inc	esi
		add	ebx, 0A8h
		cmp	esi, 0FFh
		jle	loc_43F648
		push	0A800h		; n
		push	0		; c
		push	offset stru_59E4C6 ; s
		call	_memset
		add	esp, 0Ch
		xor	esi, esi
		mov	ebx, offset stru_59E4C6

loc_43F7B0:				; CODE XREF: .text:0043F988j
		mov	dword ptr [ebx+0Ch], 100h
		mov	eax, esi
		mov	edi, esi
		sar	eax, 3
		and	edi, 7
		mov	dword ptr [ebx+10h], 0FFFFFFFFh
		and	eax, 7
		mov	[ebp-8], eax
		mov	eax, esi
		and	eax, 0C0h
		test	eax, eax
		jnz	short loc_43F7E2
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_43F807
; ---------------------------------------------------------------------------

loc_43F7E2:				; CODE XREF: .text:0043F7D7j
		cmp	eax, 40h
		jnz	short loc_43F7F0
		mov	dword ptr [ebp-0Ch], 2
		jmp	short loc_43F807
; ---------------------------------------------------------------------------

loc_43F7F0:				; CODE XREF: .text:0043F7E5j
		cmp	eax, 80h
		jnz	short loc_43F800
		mov	dword ptr [ebp-0Ch], 4
		jmp	short loc_43F807
; ---------------------------------------------------------------------------

loc_43F800:				; CODE XREF: .text:0043F7F5j
		mov	dword ptr [ebp-0Ch], 8

loc_43F807:				; CODE XREF: .text:0043F7E0j
					; .text:0043F7EEj ...
		cmp	dword ptr [ebp-8], 4
		jz	short loc_43F871
		mov	ecx, [ebp-8]
		mov	dl, [ebp-0Ch]
		mov	[ebx+ecx+18h], dl
		lea	ecx, [ebx+28h]
		mov	eax, [ebp-8]
		mov	edx, off_52FC84[eax*4]
		push	edx
		push	(offset	aS_5+4)	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	ecx, [ebp-8]
		mov	eax, 1
		shl	eax, cl
		mov	[ebx+20h], eax
		or	dword ptr [ebx+0Ch], 80000h
		cmp	dword ptr [ebp-0Ch], 1
		jle	short loc_43F876
		mov	edx, [ebp-0Ch]
		push	edx
		push	offset aI_35	; "*%i"
		mov	eax, [ebp-4]
		add	eax, eax
		add	eax, ebx
		add	eax, 28h
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-4], eax
		jmp	short loc_43F876
; ---------------------------------------------------------------------------

loc_43F871:				; CODE XREF: .text:0043F80Bj
		xor	edx, edx
		mov	[ebp-4], edx

loc_43F876:				; CODE XREF: .text:0043F84Ej
					; .text:0043F86Fj
		cmp	edi, 5
		jnz	short loc_43F89F
		mov	dword ptr [ebx], 6
		mov	dword ptr [ebx+8], 4
		or	dword ptr [ebx+0Ch], 100000h
		mov	dword ptr [ebx+14h], 3
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		jmp	short loc_43F905
; ---------------------------------------------------------------------------

loc_43F89F:				; CODE XREF: .text:0043F879j
		mov	dword ptr [ebx], 2
		mov	ecx, 2
		cmp	edi, 4
		jz	short loc_43F8B5
		cmp	edi, 5
		jz	short loc_43F8B5
		inc	ecx

loc_43F8B5:				; CODE XREF: .text:0043F8ADj
					; .text:0043F8B2j
		mov	[ebx+14h], ecx
		inc	byte ptr [ebx+edi+18h]
		or	dword ptr [ebx+0Ch], 80000h
		cmp	dword ptr [ebp-4], 0
		jz	short loc_43F8D6
		mov	eax, [ebp-4]
		mov	word ptr [ebx+eax*2+28h], 2Bh
		inc	dword ptr [ebp-4]

loc_43F8D6:				; CODE XREF: .text:0043F8C7j
		mov	edx, off_52FC84[edi*4]
		push	edx
		push	(offset	aS_5+4)	; format
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	ecx, ebx
		add	ecx, 28h
		push	ecx		; buffer
		call	_swprintf
		mov	ecx, edi
		mov	eax, 1
		shl	eax, cl
		add	esp, 0Ch
		or	[ebx+20h], eax
		mov	[ebx+24h], edi

loc_43F905:				; CODE XREF: .text:0043F89Dj
		cmp	edi, 5
		jz	short loc_43F928
		mov	edx, off_52FC84[edi*4]
		lea	eax, [ebx+68h]
		push	edx
		push	offset aS_5	; "%%%s"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	short loc_43F92D
; ---------------------------------------------------------------------------

loc_43F928:				; CODE XREF: .text:0043F908j
		xor	edx, edx
		mov	[ebp-4], edx

loc_43F92D:				; CODE XREF: .text:0043F926j
		cmp	dword ptr [ebp-8], 4
		jz	short loc_43F97B
		mov	ecx, [ebp-8]
		mov	eax, off_52FC84[ecx*4]
		push	eax
		push	offset aS_6	; ",%%%s"
		mov	edx, [ebp-4]
		add	edx, edx
		add	edx, ebx
		add	edx, 68h
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-4], eax
		cmp	dword ptr [ebp-0Ch], 1
		jle	short loc_43F97B
		mov	ecx, [ebp-0Ch]
		push	ecx
		push	offset aI_0	; format
		mov	eax, [ebp-4]
		add	eax, eax
		add	eax, ebx
		add	eax, 68h
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_43F97B:				; CODE XREF: .text:0043F931j
					; .text:0043F95Dj
		inc	esi
		add	ebx, 0A8h
		cmp	esi, 0FFh
		jle	loc_43F7B0
		push	0A800h		; n
		push	0		; c
		push	offset stru_5A8CC6 ; s
		call	_memset
		add	esp, 0Ch
		xor	esi, esi
		mov	ebx, offset stru_5A8CC6

loc_43F9A9:				; CODE XREF: .text:0043FB46j
		mov	dword ptr [ebx+0Ch], 180100h
		mov	eax, esi
		mov	edi, esi
		sar	eax, 3
		and	edi, 7
		mov	dword ptr [ebx+10h], 0FFFFFFFFh
		and	eax, 7
		mov	[ebp-8], eax
		mov	eax, esi
		and	eax, 0C0h
		test	eax, eax
		jnz	short loc_43F9DB
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_43FA00
; ---------------------------------------------------------------------------

loc_43F9DB:				; CODE XREF: .text:0043F9D0j
		cmp	eax, 40h
		jnz	short loc_43F9E9
		mov	dword ptr [ebp-0Ch], 2
		jmp	short loc_43FA00
; ---------------------------------------------------------------------------

loc_43F9E9:				; CODE XREF: .text:0043F9DEj
		cmp	eax, 80h
		jnz	short loc_43F9F9
		mov	dword ptr [ebp-0Ch], 4
		jmp	short loc_43FA00
; ---------------------------------------------------------------------------

loc_43F9F9:				; CODE XREF: .text:0043F9EEj
		mov	dword ptr [ebp-0Ch], 8

loc_43FA00:				; CODE XREF: .text:0043F9D9j
					; .text:0043F9E7j ...
		mov	dword ptr [ebx], 3
		mov	edx, 2
		mov	dword ptr [ebx+8], 1
		cmp	edi, 4
		jz	short loc_43FA1D
		cmp	edi, 5
		jz	short loc_43FA1D
		inc	edx

loc_43FA1D:				; CODE XREF: .text:0043FA15j
					; .text:0043FA1Aj
		mov	ecx, edi
		mov	eax, 1
		shl	eax, cl
		mov	[ebx+14h], edx
		mov	byte ptr [ebx+edi+18h],	1
		mov	[ebx+24h], edi
		mov	[ebx+20h], eax
		cmp	dword ptr [ebp-8], 4
		jz	short loc_43FA97
		mov	ecx, [ebp-8]
		mov	dl, [ebp-0Ch]
		add	[ebx+ecx+18h], dl
		lea	ecx, [ebx+28h]
		mov	eax, [ebp-8]
		mov	edx, off_52FC84[eax*4]
		push	edx
		push	(offset	aS_5+4)	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	ecx, [ebp-8]
		mov	eax, 1
		shl	eax, cl
		or	[ebx+20h], eax
		cmp	dword ptr [ebp-0Ch], 1
		jle	short loc_43FA9C
		mov	edx, [ebp-0Ch]
		push	edx
		push	offset aI_35	; "*%i"
		mov	eax, [ebp-4]
		add	eax, eax
		add	eax, ebx
		add	eax, 28h
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-4], eax
		jmp	short loc_43FA9C
; ---------------------------------------------------------------------------

loc_43FA97:				; CODE XREF: .text:0043FA38j
		xor	edx, edx
		mov	[ebp-4], edx

loc_43FA9C:				; CODE XREF: .text:0043FA74j
					; .text:0043FA95j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_43FAAF
		mov	ecx, [ebp-4]
		mov	word ptr [ebx+ecx*2+28h], 2Bh
		inc	dword ptr [ebp-4]

loc_43FAAF:				; CODE XREF: .text:0043FAA0j
		mov	eax, off_52FC84[edi*4]
		push	eax
		push	(offset	aS_5+4)	; format
		mov	edx, [ebp-4]
		add	edx, edx
		add	edx, ebx
		add	edx, 28h
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, off_52FC84[edi*4]
		push	ecx
		push	offset aS_5	; "%%%s"
		lea	eax, [ebx+68h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-8], 4
		jz	short loc_43FB39
		mov	edx, [ebp-8]
		mov	ecx, off_52FC84[edx*4]
		push	ecx
		push	offset aS_6	; ",%%%s"
		mov	eax, [ebp-4]
		add	eax, eax
		add	eax, ebx
		add	eax, 68h
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-4], eax
		cmp	dword ptr [ebp-0Ch], 1
		jle	short loc_43FB39
		mov	edx, [ebp-0Ch]
		push	edx
		push	offset aI_0	; format
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	ecx, ebx
		add	ecx, 68h
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_43FB39:				; CODE XREF: .text:0043FAEFj
					; .text:0043FB1Bj
		inc	esi
		add	ebx, 0A8h
		cmp	esi, 0FFh
		jle	loc_43F9A9
		push	0A800h		; n
		push	0		; c
		push	offset stru_5B34C6 ; s
		call	_memset
		add	esp, 0Ch
		xor	esi, esi
		mov	ebx, offset stru_5B34C6

loc_43FB67:				; CODE XREF: .text:0043FD04j
		mov	dword ptr [ebx+0Ch], 180100h
		mov	eax, esi
		mov	edi, esi
		sar	eax, 3
		and	edi, 7
		mov	dword ptr [ebx+10h], 0FFFFFFFFh
		and	eax, 7
		mov	[ebp-8], eax
		mov	eax, esi
		and	eax, 0C0h
		test	eax, eax
		jnz	short loc_43FB99
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_43FBBE
; ---------------------------------------------------------------------------

loc_43FB99:				; CODE XREF: .text:0043FB8Ej
		cmp	eax, 40h
		jnz	short loc_43FBA7
		mov	dword ptr [ebp-0Ch], 2
		jmp	short loc_43FBBE
; ---------------------------------------------------------------------------

loc_43FBA7:				; CODE XREF: .text:0043FB9Cj
		cmp	eax, 80h
		jnz	short loc_43FBB7
		mov	dword ptr [ebp-0Ch], 4
		jmp	short loc_43FBBE
; ---------------------------------------------------------------------------

loc_43FBB7:				; CODE XREF: .text:0043FBACj
		mov	dword ptr [ebp-0Ch], 8

loc_43FBBE:				; CODE XREF: .text:0043FB97j
					; .text:0043FBA5j ...
		mov	dword ptr [ebx], 6
		mov	edx, 2
		mov	dword ptr [ebx+8], 4
		cmp	edi, 4
		jz	short loc_43FBDB
		cmp	edi, 5
		jz	short loc_43FBDB
		inc	edx

loc_43FBDB:				; CODE XREF: .text:0043FBD3j
					; .text:0043FBD8j
		mov	ecx, edi
		mov	eax, 1
		shl	eax, cl
		mov	[ebx+14h], edx
		mov	byte ptr [ebx+edi+18h],	1
		mov	[ebx+24h], edi
		mov	[ebx+20h], eax
		cmp	dword ptr [ebp-8], 4
		jz	short loc_43FC55
		mov	ecx, [ebp-8]
		mov	dl, [ebp-0Ch]
		add	[ebx+ecx+18h], dl
		lea	ecx, [ebx+28h]
		mov	eax, [ebp-8]
		mov	edx, off_52FC84[eax*4]
		push	edx
		push	(offset	aS_5+4)	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	ecx, [ebp-8]
		mov	eax, 1
		shl	eax, cl
		or	[ebx+20h], eax
		cmp	dword ptr [ebp-0Ch], 1
		jle	short loc_43FC5A
		mov	edx, [ebp-0Ch]
		push	edx
		push	offset aI_35	; "*%i"
		mov	eax, [ebp-4]
		add	eax, eax
		add	eax, ebx
		add	eax, 28h
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-4], eax
		jmp	short loc_43FC5A
; ---------------------------------------------------------------------------

loc_43FC55:				; CODE XREF: .text:0043FBF6j
		xor	edx, edx
		mov	[ebp-4], edx

loc_43FC5A:				; CODE XREF: .text:0043FC32j
					; .text:0043FC53j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_43FC6D
		mov	ecx, [ebp-4]
		mov	word ptr [ebx+ecx*2+28h], 2Bh
		inc	dword ptr [ebp-4]

loc_43FC6D:				; CODE XREF: .text:0043FC5Ej
		mov	eax, off_52FC84[edi*4]
		push	eax
		push	(offset	aS_5+4)	; format
		mov	edx, [ebp-4]
		add	edx, edx
		add	edx, ebx
		add	edx, 28h
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, off_52FC84[edi*4]
		push	ecx
		push	offset aS_5	; "%%%s"
		lea	eax, [ebx+68h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-8], 4
		jz	short loc_43FCF7
		mov	edx, [ebp-8]
		mov	ecx, off_52FC84[edx*4]
		push	ecx
		push	offset aS_6	; ",%%%s"
		mov	eax, [ebp-4]
		add	eax, eax
		add	eax, ebx
		add	eax, 68h
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-4], eax
		cmp	dword ptr [ebp-0Ch], 1
		jle	short loc_43FCF7
		mov	edx, [ebp-0Ch]
		push	edx
		push	offset aI_0	; format
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	ecx, ebx
		add	ecx, 68h
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_43FCF7:				; CODE XREF: .text:0043FCADj
					; .text:0043FCD9j
		inc	esi
		add	ebx, 0A8h
		cmp	esi, 0FFh
		jle	loc_43FB67
		xor	eax, eax

loc_43FD0C:				; CODE XREF: .text:0043F287j
					; .text:0043F2EFj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43FD14:				; CODE XREF: .text:00410748p
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5BDD0C
		test	eax, eax
		jz	short loc_43FD2F
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5BDD0C, edx

loc_43FD2F:				; CODE XREF: .text:0043FD1Ej
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		