.code

__scan_initw:				; DATA XREF: .data:004F6068o
		mov	off_57B804, offset loc_4EEB1C
		mov	off_57B808, offset loc_4EEF78
		retn
; ---------------------------------------------------------------------------
		align 10h

; __int32 __cdecl _wtol(const wchar_t *s)
__wtol:					; CODE XREF: .text:0040D943p
					; .text:0040D9A3p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		mov	esi, [ebp+8]

loc_4EF01B:				; CODE XREF: .text:004EF02Aj
		mov	bx, [esi]
		add	esi, 2
		push	ebx		; c
		call	_iswspace
		pop	ecx
		test	eax, eax
		jnz	short loc_4EF01B
		cmp	bx, 2Bh
		jz	short loc_4EF038
		cmp	bx, 2Dh
		jnz	short loc_4EF04A

loc_4EF038:				; CODE XREF: .text:004EF030j
		cmp	bx, 2Dh
		setz	al
		mov	bx, [esi]
		and	eax, 1
		add	esi, 2
		jmp	short loc_4EF065
; ---------------------------------------------------------------------------

loc_4EF04A:				; CODE XREF: .text:004EF036j
		xor	eax, eax
		jmp	short loc_4EF065
; ---------------------------------------------------------------------------

loc_4EF04E:				; CODE XREF: .text:004EF06Fj
		movzx	ecx, bx
		mov	edx, edi
		mov	bx, [esi]
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	edx, ecx
		add	edx, 0FFFFFFD0h
		add	esi, 2
		mov	edi, edx

loc_4EF065:				; CODE XREF: .text:004EF048j
					; .text:004EF04Cj
		cmp	bx, 30h
		jb	short loc_4EF071
		cmp	bx, 39h
		jbe	short loc_4EF04E

loc_4EF071:				; CODE XREF: .text:004EF069j
		test	eax, eax
		jz	short loc_4EF07B
		mov	eax, edi
		neg	eax
		jmp	short loc_4EF07D
; ---------------------------------------------------------------------------

loc_4EF07B:				; CODE XREF: .text:004EF073j
		mov	eax, edi

loc_4EF07D:				; CODE XREF: .text:004EF079j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _wtoi(const wchar_t *s)
__wtoi:					; CODE XREF: .text:0042B9E8p
					; .text:00436C20p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; s
		call	__wtol
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __xcvt(int, _size_t n, int, void *s, int)
___xcvt:				; CODE XREF: .text:004EE07Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	word ptr [ebp-2], 0Ah
		mov	eax, [ebp+18h]
		sub	eax, 2
		jz	short loc_4EF0B7
		sub	eax, 4
		jz	short loc_4EF0C2
		sub	eax, 2
		jz	short loc_4EF0CD
		jmp	short loc_4EF0E3
; ---------------------------------------------------------------------------

loc_4EF0B7:				; CODE XREF: .text:004EF0A9j
		mov	edx, [ebp+8]
		fld	dword ptr [edx]
		fstp	tbyte ptr [ebp-0Ch]
		wait
		jmp	short loc_4EF0E3
; ---------------------------------------------------------------------------

loc_4EF0C2:				; CODE XREF: .text:004EF0AEj
		mov	ecx, [ebp+8]
		fld	qword ptr [ecx]
		fstp	tbyte ptr [ebp-0Ch]
		wait
		jmp	short loc_4EF0E3
; ---------------------------------------------------------------------------

loc_4EF0CD:				; CODE XREF: .text:004EF0B3j
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	[ebp-0Ch], edx
		mov	edx, [eax+4]
		mov	[ebp-8], edx
		mov	dx, [eax+8]
		mov	[ebp-4], dx

loc_4EF0E3:				; CODE XREF: .text:004EF0B5j
					; .text:004EF0C0j ...
		lea	eax, [ebp-0Ch]
		lea	edx, [ebp-0Ch]
		mov	[ebp-10h], edx
		mov	bx, [eax+8]
		mov	edx, ebx
		and	dx, 7FFFh
		mov	[eax+8], dx
		test	bh, 80h
		setnz	al
		and	eax, 1
		mov	ecx, [ebp+10h]
		mov	[ecx], eax
		lea	eax, [ebp-0Ch]
		push	eax
		call	__fxam
		and	ax, 4700h
		pop	ecx
		cmp	ax, 4000h
		jnz	short loc_4EF151

loc_4EF11D:				; CODE XREF: .text:004EF1CDj
					; .text:004EF2A6j ...
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jg	short loc_4EF127
		neg	ebx
		inc	ebx

loc_4EF127:				; CODE XREF: .text:004EF122j
		cmp	ebx, 28h
		jle	short loc_4EF131
		mov	ebx, 28h

loc_4EF131:				; CODE XREF: .text:004EF12Aj
		push	ebx		; n
		push	30h		; c
		mov	eax, [ebp+14h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp+14h]
		mov	byte ptr [edx+ebx], 0
		mov	eax, 1
		jmp	loc_4EF35F
; ---------------------------------------------------------------------------

loc_4EF151:				; CODE XREF: .text:004EF11Bj
		cmp	ax, 500h
		jnz	short loc_4EF161
		mov	eax, 7FFFh
		jmp	loc_4EF35F
; ---------------------------------------------------------------------------

loc_4EF161:				; CODE XREF: .text:004EF155j
		cmp	ax, 100h
		jnz	short loc_4EF171
		mov	eax, 7FFEh
		jmp	loc_4EF35F
; ---------------------------------------------------------------------------

loc_4EF171:				; CODE XREF: .text:004EF165j
		movzx	eax, bx
		and	eax, 7FFFh
		mov	ecx, [ebp-10h]
		add	eax, 0FFFFC001h
		imul	edx, eax, 4D10h
		mov	eax, edx
		xor	edx, edx
		mov	dl, [ecx+7]
		add	edx, edx
		and	edx, 0FFh
		mov	ecx, edx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		movsx	edx, dx
		and	edx, 0FFFFh
		add	eax, edx
		mov	ecx, eax
		sar	ecx, 10h
		test	eax, 0FFFFh
		mov	[ebp-14h], ecx
		jz	short loc_4EF1BE
		inc	dword ptr [ebp-14h]

loc_4EF1BE:				; CODE XREF: .text:004EF1B9j
		mov	edi, [ebp+0Ch]
		test	edi, edi
		jg	short loc_4EF1D3
		mov	edi, [ebp-14h]
		sub	edi, [ebp+0Ch]
		test	edi, edi
		jl	loc_4EF11D

loc_4EF1D3:				; CODE XREF: .text:004EF1C3j
		cmp	edi, 13h
		jle	short loc_4EF1DD
		mov	edi, 13h

loc_4EF1DD:				; CODE XREF: .text:004EF1D6j
		mov	esi, edi
		sub	esi, [ebp-14h]
		test	esi, esi
		jz	short loc_4EF22E

loc_4EF1E6:				; CODE XREF: .text:004EF22Cj
		mov	ebx, esi
		test	esi, esi
		jge	short loc_4EF1F0
		mov	ebx, esi
		neg	ebx

loc_4EF1F0:				; CODE XREF: .text:004EF1EAj
		cmp	ebx, 1344h
		jle	short loc_4EF1FD
		mov	ebx, 1344h

loc_4EF1FD:				; CODE XREF: .text:004EF1F6j
		push	ebx
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-20h]
		wait
		test	esi, esi
		jge	short loc_4EF21C
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-0Ch]
		fdivrp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		add	esi, ebx
		jmp	short loc_4EF22A
; ---------------------------------------------------------------------------

loc_4EF21C:				; CODE XREF: .text:004EF20Aj
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		sub	esi, ebx

loc_4EF22A:				; CODE XREF: .text:004EF21Aj
		test	esi, esi
		jnz	short loc_4EF1E6

loc_4EF22E:				; CODE XREF: .text:004EF1E4j
		push	edi
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-20h]
		wait
		fld	tbyte ptr [ebp-0Ch]
		fld	tbyte ptr [ebp-20h]
		fcompp
		fnstsw	ax
		sahf
		jnb	short loc_4EF26B
		inc	dword ptr [ebp-14h]
		inc	edi
		cmp	edi, 13h
		jg	short loc_4EF2A4
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4EF2A4
		movsx	edx, word ptr [ebp-2]
		mov	[ebp-28h], edx
		fild	dword ptr [ebp-28h]
		fld	tbyte ptr [ebp-0Ch]
		fdivrp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		dec	edi
		jmp	short loc_4EF2A4
; ---------------------------------------------------------------------------

loc_4EF26B:				; CODE XREF: .text:004EF244j
		lea	ecx, [edi-1]
		push	ecx
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-20h]
		wait
		fld	tbyte ptr [ebp-0Ch]
		fld	tbyte ptr [ebp-20h]
		fcompp
		fnstsw	ax
		sahf
		jbe	short loc_4EF2A4
		dec	dword ptr [ebp-14h]
		dec	edi
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4EF2A4
		movsx	edx, word ptr [ebp-2]
		mov	[ebp-28h], edx
		fild	dword ptr [ebp-28h]
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		inc	edi

loc_4EF2A4:				; CODE XREF: .text:004EF24Dj
					; .text:004EF253j ...
		test	edi, edi
		jl	loc_4EF11D
		lea	ecx, [ebp-0Ch]
		push	ecx
		lea	eax, [ebp-0Ch]
		push	eax
		call	__fuistq
		mov	edx, [ebp+14h]
		add	esp, 8
		add	edx, edi
		xor	esi, esi
		mov	ebx, edx
		mov	[ebp-24h], edx
		mov	byte ptr [ebx],	0
		dec	ebx
		test	edi, edi
		jnz	short loc_4EF2E9
		mov	eax, [ebp-10h]
		movzx	esi, byte ptr [eax]
		and	esi, 0FFh
		xor	esi, 1
		test	esi, esi
		jnz	loc_4EF11D
		jmp	short loc_4EF303
; ---------------------------------------------------------------------------

loc_4EF2E9:				; CODE XREF: .text:004EF2CEj
					; .text:004EF301j
		lea	eax, [ebp-0Ch]
		push	eax
		call	__qdiv10
		pop	ecx
		movsx	edx, al
		or	esi, edx
		add	eax, 30h
		mov	[ebx], al
		dec	ebx
		dec	edi
		jz	short loc_4EF303
		jmp	short loc_4EF2E9
; ---------------------------------------------------------------------------

loc_4EF303:				; CODE XREF: .text:004EF2E7j
					; .text:004EF2FFj
		test	esi, esi
		jnz	short loc_4EF31D
		inc	dword ptr [ebp-14h]
		cmp	dword ptr [ebp+0Ch], 0
		jg	short loc_4EF316
		mov	edx, [ebp-24h]
		mov	byte ptr [edx],	30h

loc_4EF316:				; CODE XREF: .text:004EF30Ej
		inc	dword ptr [ebp-24h]
		mov	byte ptr [ebx+1], 31h

loc_4EF31D:				; CODE XREF: .text:004EF305j
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jg	short loc_4EF32A
		mov	ebx, [ebp-14h]
		sub	ebx, [ebp+0Ch]

loc_4EF32A:				; CODE XREF: .text:004EF322j
		cmp	ebx, 28h
		jle	short loc_4EF334
		mov	ebx, 28h

loc_4EF334:				; CODE XREF: .text:004EF32Dj
		mov	eax, [ebp-24h]
		mov	byte ptr [eax],	0
		mov	edx, [ebp-24h]
		sub	edx, [ebp+14h]
		sub	ebx, edx
		test	ebx, ebx
		jle	short loc_4EF35C
		push	ebx		; n
		push	30h		; c
		mov	ecx, [ebp-24h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebp-24h]
		mov	byte ptr [eax+ebx], 0

loc_4EF35C:				; CODE XREF: .text:004EF344j
		mov	eax, [ebp-14h]

loc_4EF35F:				; CODE XREF: .text:004EF14Cj
					; .text:004EF15Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __xcvtw(int, _size_t n, int, void *s, int)
___xcvtw:				; CODE XREF: .text:004EE38Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	word ptr [ebp-2], 0Ah
		mov	eax, [ebp+18h]
		sub	eax, 2
		jz	short loc_4EF38B
		sub	eax, 4
		jz	short loc_4EF396
		sub	eax, 2
		jz	short loc_4EF3A1
		jmp	short loc_4EF3B7
; ---------------------------------------------------------------------------

loc_4EF38B:				; CODE XREF: .text:004EF37Dj
		mov	edx, [ebp+8]
		fld	dword ptr [edx]
		fstp	tbyte ptr [ebp-0Ch]
		wait
		jmp	short loc_4EF3B7
; ---------------------------------------------------------------------------

loc_4EF396:				; CODE XREF: .text:004EF382j
		mov	ecx, [ebp+8]
		fld	qword ptr [ecx]
		fstp	tbyte ptr [ebp-0Ch]
		wait
		jmp	short loc_4EF3B7
; ---------------------------------------------------------------------------

loc_4EF3A1:				; CODE XREF: .text:004EF387j
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	[ebp-0Ch], edx
		mov	edx, [eax+4]
		mov	[ebp-8], edx
		mov	dx, [eax+8]
		mov	[ebp-4], dx

loc_4EF3B7:				; CODE XREF: .text:004EF389j
					; .text:004EF394j ...
		lea	eax, [ebp-0Ch]
		lea	edx, [ebp-0Ch]
		mov	[ebp-10h], edx
		mov	bx, [eax+8]
		mov	edx, ebx
		and	dx, 7FFFh
		mov	[eax+8], dx
		test	bh, 80h
		setnz	al
		and	eax, 1
		mov	ecx, [ebp+10h]
		mov	[ecx], eax
		lea	eax, [ebp-0Ch]
		push	eax
		call	__fxam
		and	ax, 4700h
		pop	ecx
		cmp	ax, 4000h
		jnz	short loc_4EF427

loc_4EF3F1:				; CODE XREF: .text:004EF4A3j
					; .text:004EF57Cj ...
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jg	short loc_4EF3FB
		neg	ebx
		inc	ebx

loc_4EF3FB:				; CODE XREF: .text:004EF3F6j
		cmp	ebx, 28h
		jle	short loc_4EF405
		mov	ebx, 28h

loc_4EF405:				; CODE XREF: .text:004EF3FEj
		push	ebx		; n
		push	30h		; c
		mov	eax, [ebp+14h]
		push	eax		; s
		call	__wmemset
		mov	edx, [ebp+14h]
		add	esp, 0Ch
		mov	eax, 1
		mov	word ptr [edx+ebx*2], 0
		jmp	loc_4EF652
; ---------------------------------------------------------------------------

loc_4EF427:				; CODE XREF: .text:004EF3EFj
		cmp	ax, 500h
		jnz	short loc_4EF437
		mov	eax, 7FFFh
		jmp	loc_4EF652
; ---------------------------------------------------------------------------

loc_4EF437:				; CODE XREF: .text:004EF42Bj
		cmp	ax, 100h
		jnz	short loc_4EF447
		mov	eax, 7FFEh
		jmp	loc_4EF652
; ---------------------------------------------------------------------------

loc_4EF447:				; CODE XREF: .text:004EF43Bj
		movzx	eax, bx
		and	eax, 7FFFh
		mov	ecx, [ebp-10h]
		add	eax, 0FFFFC001h
		imul	edx, eax, 4D10h
		mov	eax, edx
		xor	edx, edx
		mov	dl, [ecx+7]
		add	edx, edx
		and	edx, 0FFh
		mov	ecx, edx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		movsx	edx, dx
		and	edx, 0FFFFh
		add	eax, edx
		mov	ecx, eax
		sar	ecx, 10h
		test	eax, 0FFFFh
		mov	[ebp-14h], ecx
		jz	short loc_4EF494
		inc	dword ptr [ebp-14h]

loc_4EF494:				; CODE XREF: .text:004EF48Fj
		mov	edi, [ebp+0Ch]
		test	edi, edi
		jg	short loc_4EF4A9
		mov	edi, [ebp-14h]
		sub	edi, [ebp+0Ch]
		test	edi, edi
		jl	loc_4EF3F1

loc_4EF4A9:				; CODE XREF: .text:004EF499j
		cmp	edi, 13h
		jle	short loc_4EF4B3
		mov	edi, 13h

loc_4EF4B3:				; CODE XREF: .text:004EF4ACj
		mov	esi, edi
		sub	esi, [ebp-14h]
		test	esi, esi
		jz	short loc_4EF504

loc_4EF4BC:				; CODE XREF: .text:004EF502j
		mov	ebx, esi
		test	esi, esi
		jge	short loc_4EF4C6
		mov	ebx, esi
		neg	ebx

loc_4EF4C6:				; CODE XREF: .text:004EF4C0j
		cmp	ebx, 1344h
		jle	short loc_4EF4D3
		mov	ebx, 1344h

loc_4EF4D3:				; CODE XREF: .text:004EF4CCj
		push	ebx
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-20h]
		wait
		test	esi, esi
		jge	short loc_4EF4F2
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-0Ch]
		fdivrp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		add	esi, ebx
		jmp	short loc_4EF500
; ---------------------------------------------------------------------------

loc_4EF4F2:				; CODE XREF: .text:004EF4E0j
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		sub	esi, ebx

loc_4EF500:				; CODE XREF: .text:004EF4F0j
		test	esi, esi
		jnz	short loc_4EF4BC

loc_4EF504:				; CODE XREF: .text:004EF4BAj
		push	edi
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-20h]
		wait
		fld	tbyte ptr [ebp-0Ch]
		fld	tbyte ptr [ebp-20h]
		fcompp
		fnstsw	ax
		sahf
		jnb	short loc_4EF541
		inc	dword ptr [ebp-14h]
		inc	edi
		cmp	edi, 13h
		jg	short loc_4EF57A
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4EF57A
		movsx	edx, word ptr [ebp-2]
		mov	[ebp-28h], edx
		fild	dword ptr [ebp-28h]
		fld	tbyte ptr [ebp-0Ch]
		fdivrp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		dec	edi
		jmp	short loc_4EF57A
; ---------------------------------------------------------------------------

loc_4EF541:				; CODE XREF: .text:004EF51Aj
		lea	ecx, [edi-1]
		push	ecx
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-20h]
		wait
		fld	tbyte ptr [ebp-0Ch]
		fld	tbyte ptr [ebp-20h]
		fcompp
		fnstsw	ax
		sahf
		jbe	short loc_4EF57A
		dec	dword ptr [ebp-14h]
		dec	edi
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4EF57A
		movsx	edx, word ptr [ebp-2]
		mov	[ebp-28h], edx
		fild	dword ptr [ebp-28h]
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait
		inc	edi

loc_4EF57A:				; CODE XREF: .text:004EF523j
					; .text:004EF529j ...
		test	edi, edi
		jl	loc_4EF3F1
		lea	ecx, [ebp-0Ch]
		push	ecx
		lea	eax, [ebp-0Ch]
		push	eax
		call	__fuistq
		mov	edx, edi
		add	esp, 8
		add	edx, edx
		xor	esi, esi
		add	edx, [ebp+14h]
		mov	ebx, edx
		mov	[ebp-24h], edx
		mov	word ptr [ebx],	0
		sub	ebx, 2
		test	edi, edi
		jnz	short loc_4EF5C5
		mov	eax, [ebp-10h]
		movzx	esi, byte ptr [eax]
		and	esi, 0FFh
		xor	esi, 1
		test	esi, esi
		jnz	loc_4EF3F1
		jmp	short loc_4EF5E6
; ---------------------------------------------------------------------------

loc_4EF5C5:				; CODE XREF: .text:004EF5AAj
					; .text:004EF5E4j
		lea	eax, [ebp-0Ch]
		push	eax
		call	__qdiv10
		pop	ecx
		movsx	edx, al
		or	esi, edx
		movsx	ecx, al
		add	cx, 30h
		mov	[ebx], cx
		sub	ebx, 2
		dec	edi
		jz	short loc_4EF5E6
		jmp	short loc_4EF5C5
; ---------------------------------------------------------------------------

loc_4EF5E6:				; CODE XREF: .text:004EF5C3j
					; .text:004EF5E2j
		test	esi, esi
		jnz	short loc_4EF605
		inc	dword ptr [ebp-14h]
		cmp	dword ptr [ebp+0Ch], 0
		jg	short loc_4EF5FB
		mov	eax, [ebp-24h]
		mov	word ptr [eax],	30h

loc_4EF5FB:				; CODE XREF: .text:004EF5F1j
		add	dword ptr [ebp-24h], 2
		mov	word ptr [ebx+2], 31h

loc_4EF605:				; CODE XREF: .text:004EF5E8j
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jg	short loc_4EF612
		mov	ebx, [ebp-14h]
		sub	ebx, [ebp+0Ch]

loc_4EF612:				; CODE XREF: .text:004EF60Aj
		cmp	ebx, 28h
		jle	short loc_4EF61C
		mov	ebx, 28h

loc_4EF61C:				; CODE XREF: .text:004EF615j
		mov	eax, [ebp-24h]
		mov	word ptr [eax],	0
		mov	edx, [ebp-24h]
		sub	edx, [ebp+14h]
		sar	edx, 1
		jns	short loc_4EF631
		adc	edx, 0

loc_4EF631:				; CODE XREF: .text:004EF62Cj
		sub	ebx, edx
		test	ebx, ebx
		jle	short loc_4EF64F
		push	ebx		; n
		push	30h		; c
		mov	ecx, [ebp-24h]
		push	ecx		; s
		call	__wmemset
		add	esp, 0Ch
		mov	eax, [ebp-24h]
		mov	word ptr [eax+ebx*2], 0

loc_4EF64F:				; CODE XREF: .text:004EF635j
		mov	eax, [ebp-14h]

loc_4EF652:				; CODE XREF: .text:004EF422j
					; .text:004EF432j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _setmbcp(int newCodePage)
__setmbcp:				; CODE XREF: .text:004EF78Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		cmp	esi, 0FFFFFFFEh
		jnz	short loc_4EF675
		call	GetOEMCP
		mov	esi, eax
		jmp	short loc_4EF68F
; ---------------------------------------------------------------------------

loc_4EF675:				; CODE XREF: .text:004EF66Aj
		cmp	esi, 0FFFFFFFDh
		jnz	short loc_4EF683
		call	GetACP
		mov	esi, eax
		jmp	short loc_4EF68F
; ---------------------------------------------------------------------------

loc_4EF683:				; CODE XREF: .text:004EF678j
		cmp	esi, 0FFFFFFFCh
		jnz	short loc_4EF68F
		mov	eax, off_57B5B0
		mov	esi, [eax]

loc_4EF68F:				; CODE XREF: .text:004EF673j
					; .text:004EF681j ...
		test	esi, esi
		jz	short loc_4EF6B4
		lea	eax, [ebp-14h]
		push	eax		; lpCPInfo
		push	esi		; CodePage
		call	GetCPInfo
		test	eax, eax
		jnz	short loc_4EF6B4
		push	offset aErrorSystemCod ; "Error: system	code page access failure;"...
		call	__ErrorMessage
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4EF777
; ---------------------------------------------------------------------------

loc_4EF6B4:				; CODE XREF: .text:004EF691j
					; .text:004EF69Fj
		xor	eax, eax
		mov	edx, offset unk_61BBE4

loc_4EF6BB:				; CODE XREF: .text:004EF6C5j
		mov	byte ptr [edx],	0
		inc	eax
		inc	edx
		cmp	eax, 101h
		jl	short loc_4EF6BB
		test	esi, esi
		jz	loc_4EF76E
		cmp	dword ptr [ebp-14h], 1
		jbe	loc_4EF76E
		lea	ecx, [ebp-0Eh]
		jmp	short loc_4EF6FC
; ---------------------------------------------------------------------------

loc_4EF6DE:				; CODE XREF: .text:004EF706j
		and	eax, 0FFh
		lea	edx, byte_61BBE5[eax]
		jmp	short loc_4EF6F0
; ---------------------------------------------------------------------------

loc_4EF6EB:				; CODE XREF: .text:004EF6F7j
		mov	byte ptr [edx],	4
		inc	eax
		inc	edx

loc_4EF6F0:				; CODE XREF: .text:004EF6E9j
		xor	ebx, ebx
		mov	bl, [ecx+1]
		cmp	eax, ebx
		jle	short loc_4EF6EB
		add	ecx, 2

loc_4EF6FC:				; CODE XREF: .text:004EF6DCj
		mov	al, [ecx]
		test	al, al
		jz	short loc_4EF708
		cmp	byte ptr [ecx+1], 0
		jnz	short loc_4EF6DE

loc_4EF708:				; CODE XREF: .text:004EF700j
		mov	eax, 1
		mov	edx, offset byte_61BBE6

loc_4EF712:				; CODE XREF: .text:004EF71Cj
		or	byte ptr [edx],	8
		inc	eax
		inc	edx
		cmp	eax, 0FFh
		jl	short loc_4EF712
		cmp	esi, 3A4h
		jnz	short loc_4EF766
		xor	eax, eax
		mov	al, byte_57B980
		lea	edx, byte_61BBE5[eax]
		jmp	short loc_4EF73A
; ---------------------------------------------------------------------------

loc_4EF735:				; CODE XREF: .text:004EF744j
		or	byte ptr [edx],	1
		inc	eax
		inc	edx

loc_4EF73A:				; CODE XREF: .text:004EF733j
		xor	ecx, ecx
		mov	cl, byte_57B981
		cmp	eax, ecx
		jle	short loc_4EF735
		xor	eax, eax
		mov	al, byte_57B982
		lea	edx, byte_61BBE5[eax]
		jmp	short loc_4EF75A
; ---------------------------------------------------------------------------

loc_4EF755:				; CODE XREF: .text:004EF764j
		or	byte ptr [edx],	2
		inc	eax
		inc	edx

loc_4EF75A:				; CODE XREF: .text:004EF753j
		xor	ecx, ecx
		mov	cl, byte_57B983
		cmp	eax, ecx
		jle	short loc_4EF755

loc_4EF766:				; CODE XREF: .text:004EF724j
		mov	dword_61BCE8, esi
		jmp	short loc_4EF775
; ---------------------------------------------------------------------------

loc_4EF76E:				; CODE XREF: .text:004EF6C9j
					; .text:004EF6D3j
		xor	eax, eax
		mov	dword_61BCE8, eax

loc_4EF775:				; CODE XREF: .text:004EF76Cj
		xor	eax, eax

loc_4EF777:				; CODE XREF: .text:004EF6AFj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int _getmbcp(void)
__getmbcp:
		mov	eax, dword_61BCE8
		retn
; ---------------------------------------------------------------------------
		align 4

__initMBCSTable:			; DATA XREF: .data:004F606Eo
		call	GetACP
		push	eax		; newCodePage
		call	__setmbcp
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _ismbcspace(int c)
__ismbcspace:				; CODE XREF: .text:004EE6A4p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	eax, 0FFh
		jbe	short loc_4EF7A9
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EF7A9:				; CODE XREF: .text:004EF7A3j
		push	eax		; c
		call	_isspace
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__mbsrchr:				; CODE XREF: .text:004EFA31p
					; .text:004EFA48p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp+8]
		xor	edx, edx

loc_4EF7C1:				; CODE XREF: .text:004EF802j
		xor	ebx, ebx
		mov	bl, [eax]
		test	byte_61BBE5[ebx], 4
		jz	short loc_4EF7F3
		cmp	byte ptr [eax+1], 0
		jnz	short loc_4EF7DD
		inc	eax
		test	ecx, ecx
		jnz	short loc_4EF804
		mov	edx, eax
		jmp	short loc_4EF804
; ---------------------------------------------------------------------------

loc_4EF7DD:				; CODE XREF: .text:004EF7D2j
		xor	ebx, ebx
		mov	bl, [eax]
		shl	ebx, 8
		movzx	esi, byte ptr [eax+1]
		or	ebx, esi
		cmp	ecx, ebx
		jnz	short loc_4EF7F0
		mov	edx, eax

loc_4EF7F0:				; CODE XREF: .text:004EF7ECj
		inc	eax
		jmp	short loc_4EF7FD
; ---------------------------------------------------------------------------

loc_4EF7F3:				; CODE XREF: .text:004EF7CCj
		xor	ebx, ebx
		mov	bl, [eax]
		cmp	ecx, ebx
		jnz	short loc_4EF7FD
		mov	edx, eax

loc_4EF7FD:				; CODE XREF: .text:004EF7F1j
					; .text:004EF7F9j
		mov	bl, [eax]
		inc	eax
		test	bl, bl
		jnz	short loc_4EF7C1

loc_4EF804:				; CODE XREF: .text:004EF7D7j
					; .text:004EF7DBj
		mov	eax, edx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4EF80C(char *s, int, char)
loc_4EF80C:				; CODE XREF: .text:004EF87Ap
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	byte ptr [ebx],	0
		lea	eax, [ebp+10h]
		mov	[ebp-4], eax
		jmp	short loc_4EF83D
; ---------------------------------------------------------------------------

loc_4EF821:				; CODE XREF: .text:004EF849j
		push	ebx		; s
		call	_strlen
		pop	ecx
		mov	edi, [ebp+0Ch]
		sub	edi, eax
		dec	edi
		test	edi, edi
		jle	short loc_4EF84B
		push	edi		; maxlen
		push	esi		; src
		push	ebx		; dest
		call	_strncat
		add	esp, 0Ch

loc_4EF83D:				; CODE XREF: .text:004EF81Fj
		add	dword ptr [ebp-4], 4
		mov	eax, [ebp-4]
		mov	esi, [eax-4]
		test	esi, esi
		jnz	short loc_4EF821

loc_4EF84B:				; CODE XREF: .text:004EF830j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void __cdecl _assert(char *cond, char	*file, int line)
__assert:				; CODE XREF: .text:004E7BBDp
					; .text:004E7BDDp ...
		push	ebp
		mov	ebp, esp
		push	0
		push	offset aLine	; ", line "
		mov	eax, [ebp+0Ch]
		push	eax
		push	offset aFile	; ", file "
		mov	edx, [ebp+8]
		push	edx
		push	offset aAssertionFaile ; "Assertion failed: "
		push	0F6h		; int
		push	offset byte_61BCEC ; s
		call	loc_4EF80C
		add	esp, 20h
		push	offset byte_61BCEC ; s
		call	_strlen
		pop	ecx
		add	eax, offset byte_61BCEC
		push	eax
		mov	ecx, [ebp+10h]
		push	ecx
		call	___utoa
		add	esp, 8
		push	offset byte_61BCEC ; lpText
		call	__ErrorMessage
		pop	ecx
		call	_abort
; ---------------------------------------------------------------------------
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EF8B4:				; CODE XREF: .text:004EF92Fp
		add	esp, 0FFFFFFF0h
		push	esp		; lpSystemTime
		call	GetLocalTime
		movzx	eax, word ptr [esp+0Eh]
		push	eax
		movzx	edx, word ptr [esp+10h]
		push	edx
		movzx	ecx, word ptr [esp+12h]
		push	ecx
		movzx	eax, word ptr [esp+14h]
		push	eax
		movzx	edx, word ptr [esp+10h]
		push	edx
		movzx	ecx, word ptr [esp+1Ah]
		push	ecx
		movzx	eax, word ptr [esp+1Ah]
		push	eax
		push	offset a02d02d04d02d02 ; "%02d/%02d/%04d %02d:%02d:%02d.%03d "
		push	offset byte_61BDEC ; LPSTR
		call	wsprintfA
		add	esp, 24h
		mov	eax, offset byte_61BDEC
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _ErrorMessageHelper(LPCSTR lpFileName, LPCVOID lpBuffer)
__ErrorMessageHelper:			; CODE XREF: .text:004EFAF1p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		push	0		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	2		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	0		; dwShareMode
		push	0C0000000h	; dwDesiredAccess
		mov	eax, [ebp+8]
		push	eax		; lpFileName
		call	CreateFileA
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4EF966
		call	loc_4EF8B4
		mov	esi, eax
		lea	eax, [ebp-4]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	esi		; s
		call	_strlen
		pop	ecx
		push	eax		; nNumberOfBytesToWrite
		push	esi		; lpBuffer
		push	ebx		; hFile
		call	WriteFile
		push	0		; lpOverlapped
		lea	edx, [ebp-4]
		push	edx		; lpNumberOfBytesWritten
		push	edi		; s
		call	_strlen
		pop	ecx
		push	eax		; nNumberOfBytesToWrite
		push	edi		; lpBuffer
		push	ebx		; hFile
		call	WriteFile
		push	ebx		; hObject
		call	CloseHandle

loc_4EF966:				; CODE XREF: .text:004EF92Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

___errno:				; CODE XREF: .text:004E89CFp
					; .text:loc_4EA053p ...
		push	ebx
		push	esi
		call	GetLastError
		mov	esi, eax
		call	__thread_data
		mov	ebx, eax
		push	esi		; dwErrCode
		add	ebx, 0Ch
		call	SetLastError
		mov	eax, ebx
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; BOOL __stdcall Corbaobj::TCorbaImplementation::GetTypeInfoCount(HWND,	LPARAM)
@Corbaobj@TCorbaImplementation@GetTypeInfoCount$qqsri: ; DATA XREF: .text:004EF9C0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	dword ptr [eax], 1
		xor	eax, eax
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 10h

loc_4EF9A0:				; CODE XREF: .text:loc_4EFA5Fp
		push	ecx
		xor	eax, eax
		mov	[esp], eax
		call	GetVersion
		shr	eax, 10h
		movzx	edx, ax
		test	dh, 80h
		jnz	short loc_4EF9BD
		mov	eax, 2000h
		pop	edx
		retn
; ---------------------------------------------------------------------------

loc_4EF9BD:				; CODE XREF: .text:004EF9B4j
		mov	edx, esp
		push	edx		; lParam
		push	offset @Corbaobj@TCorbaImplementation@GetTypeInfoCount$qqsri ; lpfn
		call	GetCurrentThreadId
		push	eax		; dwThreadId
		call	EnumThreadWindows
		mov	eax, 2000h
		cmp	dword ptr [esp], 0
		jnz	short loc_4EF9E0
		add	eax, 0FFFFF000h

loc_4EF9E0:				; CODE XREF: .text:004EF9D9j
		pop	edx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _ErrorMessage(LPCSTR lpText)
__ErrorMessage:				; CODE XREF: .text:004EF6A6p
					; .text:004EF8A5p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF7Ch
		cmp	lpFileName, 0
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		jnz	loc_4EFABE
		cmp	dword_57BA10, 0
		jnz	loc_4EFABE
		cmp	dword_57BCA8, 0
		jz	short loc_4EFA78
		push	80h		; nSize
		lea	eax, [ebp-84h]
		push	eax		; lpFilename
		push	0		; hModule
		call	GetModuleFileNameA
		push	5Ch
		lea	edx, [ebp-84h]
		push	edx
		call	__mbsrchr
		add	esp, 8
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4EFA5E
		push	3Ah
		lea	edx, [ebp-84h]
		push	edx
		call	__mbsrchr
		add	esp, 8
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4EFA5E
		lea	ebx, [ebp-84h]
		jmp	short loc_4EFA5F
; ---------------------------------------------------------------------------

loc_4EFA5E:				; CODE XREF: .text:004EFA3Dj
					; .text:004EFA54j
		inc	ebx

loc_4EFA5F:				; CODE XREF: .text:004EFA5Cj
		call	loc_4EF9A0
		or	eax, 10010h
		push	eax		; uType
		push	ebx		; lpCaption
		push	esi		; lpText
		push	0		; hWnd
		call	MessageBoxA
		jmp	loc_4EFAF9
; ---------------------------------------------------------------------------

loc_4EFA78:				; CODE XREF: .text:004EFA13j
		push	0FFFFFFF4h	; nStdHandle
		call	GetStdHandle
		mov	ebx, eax
		lea	eax, [ebp-4]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	2		; nNumberOfBytesToWrite
		push	offset unk_57BA18 ; lpBuffer
		push	ebx		; hFile
		call	WriteFile
		push	0		; lpOverlapped
		lea	edx, [ebp-4]
		push	edx		; lpNumberOfBytesWritten
		push	esi		; s
		call	_strlen
		pop	ecx
		push	eax		; nNumberOfBytesToWrite
		push	esi		; lpBuffer
		push	ebx		; hFile
		call	WriteFile
		push	0		; lpOverlapped
		lea	ecx, [ebp-4]
		push	ecx		; lpNumberOfBytesWritten
		push	2		; nNumberOfBytesToWrite
		push	offset unk_57BA1B ; lpBuffer
		push	ebx		; hFile
		call	WriteFile
		jmp	short loc_4EFAF9
; ---------------------------------------------------------------------------

loc_4EFABE:				; CODE XREF: .text:004EF9F9j
					; .text:004EFA06j
		cmp	dword_57BA10, 0
		jz	short loc_4EFAD8
		cmp	dword_57BA10, 0FFFFFFFFh
		jz	short loc_4EFAF9
		push	esi
		call	dword_57BA10
		pop	ecx

loc_4EFAD8:				; CODE XREF: .text:004EFAC5j
		mov	eax, lpFileName
		test	eax, eax
		jz	short loc_4EFAF9
		cmp	lpFileName, 0FFFFFFFFh
		jz	short loc_4EFAF9
		cmp	byte ptr [eax],	0
		jz	short loc_4EFAF9
		push	esi		; lpBuffer
		push	eax		; lpFileName
		call	__ErrorMessageHelper
		add	esp, 8

loc_4EFAF9:				; CODE XREF: .text:004EFA73j
					; .text:004EFABCj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl __ErrorMessage(LPCSTR lpText)
___ErrorMessage:
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; lpText
		call	__ErrorMessage
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl _ErrorExit(LPCSTR	lpText)
__ErrorExit:				; CODE XREF: .text:004E6E5Bp
					; .text:004E6FA7p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; lpText
		call	__ErrorMessage
		pop	ecx
		push	1		; status
		call	__exit
; ---------------------------------------------------------------------------
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_18:			; DATA XREF: .data:004F6074o
		push	ebx		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		add	esp, 0FFFFFF6Ch
		push	offset aKernel32_dll ; "kernel32.dll"
		call	GetModuleHandleA
		mov	ebx, eax
		push	offset aGetprocaddress ; "GetProcAddress"
		push	ebx		; hModule
		call	GetProcAddress
		push	offset aBorland32 ; "Borland32"
		push	ebx
		call	eax
		test	eax, eax
		jz	short loc_4EFB5E
		mov	dword_61BE08, 1
		jmp	short loc_4EFBA9
; ---------------------------------------------------------------------------

loc_4EFB5E:				; CODE XREF: .text:004EFB50j
		mov	dword ptr [esp], 94h
		push	esp		; lpVersionInformation
		call	GetVersionExA
		mov	eax, [esp+10h]
		sub	eax, 1
		jb	short loc_4EFB7B
		jz	short loc_4EFB87
		dec	eax
		jz	short loc_4EFB93
		jmp	short loc_4EFB9F
; ---------------------------------------------------------------------------

loc_4EFB7B:				; CODE XREF: .text:004EFB72j
		mov	dword_61BE08, 2
		jmp	short loc_4EFBA9
; ---------------------------------------------------------------------------

loc_4EFB87:				; CODE XREF: .text:004EFB74j
		mov	dword_61BE08, 8
		jmp	short loc_4EFBA9
; ---------------------------------------------------------------------------

loc_4EFB93:				; CODE XREF: .text:004EFB77j
		mov	dword_61BE08, 4
		jmp	short loc_4EFBA9
; ---------------------------------------------------------------------------

loc_4EFB9F:				; CODE XREF: .text:004EFB79j
		mov	dword_61BE08, 2

loc_4EFBA9:				; CODE XREF: .text:004EFB5Cj
					; .text:004EFB85j ...
		add	esp, 94h
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

__pure_error_:				; DATA XREF: .data:off_5760C4o
					; .data:005760C8o ...
		push	ebp
		mov	ebp, esp
		push	offset aPureVirtualFun ; "Pure virtual function	called"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EFBC4:				; CODE XREF: .text:004EFC39p
					; .text:004EFC87p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		xor	edi, edi
		jmp	short loc_4EFBDF
; ---------------------------------------------------------------------------

loc_4EFBD4:				; CODE XREF: .text:004EFBEAj
		mov	al, [ebx]
		mov	dl, [esi]
		mov	[ebx], dl
		inc	ebx
		mov	[esi], al
		inc	esi
		inc	edi

loc_4EFBDF:				; CODE XREF: .text:004EFBD2j
		call	qqrv
		cmp	edi, [eax+0A8h]
		jb	short loc_4EFBD4
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EFBF4:				; CODE XREF: .text:004EFE51p
					; .text:004EFE63p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]

loc_4EFC00:				; CODE XREF: .text:004EFE5Cj
					; .text:004EFE6Dj
		cmp	dword ptr [ebp+0Ch], 2
		ja	short loc_4EFC46
		cmp	dword ptr [ebp+0Ch], 2
		jnz	loc_4EFE72
		call	qqrv
		mov	esi, [eax+0A8h]
		add	esi, edi
		push	esi
		push	edi
		call	qqrv
		mov	eax, [eax+0A4h]
		call	eax
		add	esp, 8
		test	eax, eax
		jle	loc_4EFE72
		push	esi
		push	edi
		call	loc_4EFBC4
		add	esp, 8
		jmp	loc_4EFE72
; ---------------------------------------------------------------------------

loc_4EFC46:				; CODE XREF: .text:004EFC04j
		call	qqrv
		mov	esi, [eax+0A8h]
		mov	eax, [ebp+0Ch]
		dec	eax
		imul	esi, eax
		add	esi, edi
		call	qqrv
		mov	ebx, [eax+0A8h]
		mov	eax, [ebp+0Ch]
		shr	eax, 1
		imul	ebx, eax
		add	ebx, edi
		push	esi
		push	ebx
		call	qqrv
		mov	edx, [eax+0A4h]
		call	edx
		add	esp, 8
		test	eax, eax
		jle	short loc_4EFC8F
		push	esi
		push	ebx
		call	loc_4EFBC4
		add	esp, 8

loc_4EFC8F:				; CODE XREF: .text:004EFC83j
		push	edi
		push	ebx
		call	qqrv
		mov	ecx, [eax+0A4h]
		call	ecx
		add	esp, 8
		test	eax, eax
		jle	short loc_4EFCB1
		push	edi
		push	ebx
		call	loc_4EFBC4
		add	esp, 8
		jmp	short loc_4EFCD1
; ---------------------------------------------------------------------------

loc_4EFCB1:				; CODE XREF: .text:004EFCA3j
		push	esi
		push	edi
		call	qqrv
		mov	eax, [eax+0A4h]
		call	eax
		add	esp, 8
		test	eax, eax
		jle	short loc_4EFCD1
		push	esi
		push	edi
		call	loc_4EFBC4
		add	esp, 8

loc_4EFCD1:				; CODE XREF: .text:004EFCAFj
					; .text:004EFCC5j
		cmp	dword ptr [ebp+0Ch], 3
		jnz	short loc_4EFCE6
		push	ebx
		push	edi
		call	loc_4EFBC4
		add	esp, 8
		jmp	loc_4EFE72
; ---------------------------------------------------------------------------

loc_4EFCE6:				; CODE XREF: .text:004EFCD5j
		call	qqrv
		mov	edx, [eax+0A8h]
		add	edx, edi
		mov	[ebp-4], edx
		mov	ebx, edx
		jmp	short loc_4EFD2A
; ---------------------------------------------------------------------------

loc_4EFCFA:				; CODE XREF: .text:004EFD41j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4EFD1B
		mov	eax, [ebp-4]
		push	eax
		push	ebx
		call	loc_4EFBC4
		add	esp, 8
		call	qqrv
		mov	edx, [eax+0A8h]
		add	[ebp-4], edx

loc_4EFD1B:				; CODE XREF: .text:004EFCFEj
		cmp	esi, ebx
		jbe	short loc_4EFD9D
		call	qqrv
		add	ebx, [eax+0A8h]

loc_4EFD2A:				; CODE XREF: .text:004EFCF8j
					; .text:004EFD9Bj
		push	edi
		push	ebx
		call	qqrv
		mov	ecx, [eax+0A4h]
		call	ecx
		add	esp, 8
		mov	[ebp-0Ch], eax
		test	eax, eax
		jle	short loc_4EFCFA
		cmp	esi, ebx
		jbe	short loc_4EFD99

loc_4EFD47:				; CODE XREF: .text:004EFD97j
		push	esi
		push	edi
		call	qqrv
		mov	edx, [eax+0A4h]
		call	edx
		add	esp, 8
		mov	[ebp-0Ch], eax
		test	eax, eax
		jge	short loc_4EFD6D
		call	qqrv
		sub	esi, [eax+0A8h]
		jmp	short loc_4EFD95
; ---------------------------------------------------------------------------

loc_4EFD6D:				; CODE XREF: .text:004EFD5Ej
		push	esi
		push	ebx
		call	loc_4EFBC4
		add	esp, 8
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4EFD99
		call	qqrv
		add	ebx, [eax+0A8h]
		call	qqrv
		sub	esi, [eax+0A8h]
		jmp	short loc_4EFD99
; ---------------------------------------------------------------------------

loc_4EFD95:				; CODE XREF: .text:004EFD6Bj
		cmp	esi, ebx
		ja	short loc_4EFD47

loc_4EFD99:				; CODE XREF: .text:004EFD45j
					; .text:004EFD7Bj ...
		cmp	esi, ebx
		ja	short loc_4EFD2A

loc_4EFD9D:				; CODE XREF: .text:004EFD1Dj
		push	edi
		push	ebx
		call	qqrv
		mov	edx, [eax+0A4h]
		call	edx
		add	esp, 8
		test	eax, eax
		jg	short loc_4EFDBE
		call	qqrv
		add	ebx, [eax+0A8h]

loc_4EFDBE:				; CODE XREF: .text:004EFDB1j
		call	qqrv
		mov	ecx, ebx
		mov	esi, edi
		sub	ecx, [eax+0A8h]
		mov	[ebp-8], ecx
		jmp	short loc_4EFDF8
; ---------------------------------------------------------------------------

loc_4EFDD2:				; CODE XREF: .text:004EFE03j
		mov	eax, [ebp-8]
		push	eax
		push	esi
		call	loc_4EFBC4
		add	esp, 8
		call	qqrv
		add	esi, [eax+0A8h]
		call	qqrv
		mov	edx, [eax+0A8h]
		sub	[ebp-8], edx

loc_4EFDF8:				; CODE XREF: .text:004EFDD0j
		cmp	esi, [ebp-4]
		jnb	short loc_4EFE05
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp-4]
		jnb	short loc_4EFDD2

loc_4EFE05:				; CODE XREF: .text:004EFDFBj
		call	qqrv
		push	dword ptr [eax+0A8h]
		mov	eax, ebx
		sub	eax, [ebp-4]
		pop	edx
		mov	ecx, edx
		xor	edx, edx
		div	ecx
		mov	esi, eax
		call	qqrv
		mov	eax, [eax+0A8h]
		imul	dword ptr [ebp+0Ch]
		add	eax, edi
		sub	eax, ebx
		push	eax
		call	qqrv
		pop	edx
		mov	eax, [eax+0A8h]
		xchg	eax, edx
		mov	ecx, edx
		xor	edx, edx
		div	ecx
		mov	[ebp+0Ch], eax
		cmp	esi, [ebp+0Ch]
		jbe	short loc_4EFE61
		mov	eax, [ebp+0Ch]
		push	eax
		push	ebx
		call	loc_4EFBF4
		add	esp, 8
		mov	[ebp+0Ch], esi
		jmp	loc_4EFC00
; ---------------------------------------------------------------------------

loc_4EFE61:				; CODE XREF: .text:004EFE4Aj
		push	esi
		push	edi
		call	loc_4EFBF4
		add	esp, 8
		mov	edi, ebx
		jmp	loc_4EFC00
; ---------------------------------------------------------------------------

loc_4EFE72:				; CODE XREF: .text:004EFC0Aj
					; .text:004EFC31j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void __cdecl qsort(void *base, _size_t	nelem, _size_t width, int (__cdecl *fcmp)(const void *, const void *))
_qsort:					; CODE XREF: .text:004166FCp
					; .text:00417FEDp ...
		push	ebp
		mov	ebp, esp
		call	qqrv
		mov	edx, [ebp+10h]
		mov	[eax+0A8h], edx
		test	edx, edx
		jz	short loc_4EFEAF
		call	qqrv
		mov	ecx, [ebp+14h]
		mov	[eax+0A4h], ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	eax, [ebp+8]
		push	eax
		call	loc_4EFBF4
		add	esp, 8

loc_4EFEAF:				; CODE XREF: .text:004EFE8Fj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__abort:				; CODE XREF: .text:004EFED0p
					; .text:loc_4F0D5Ep
		push	offset aAbnormalProgra ; "Abnormal program termination"
		call	__ErrorMessage
		pop	ecx
		push	3		; status
		call	__exit
; ---------------------------------------------------------------------------
		pop	ecx
		retn
; ---------------------------------------------------------------------------

; void abort(void)
_abort:					; CODE XREF: .text:loc_4E8629p
					; .text:loc_4E86EFp ...
		push	16h
		call	loc_4F0CF8
		pop	ecx
		call	__abort
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

nullsub_4:				; CODE XREF: .text:004EFF00p
					; .text:004EFF19p ...
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4EFEDC(int, int, UINT	uExitCode)
loc_4EFEDC:				; CODE XREF: .text:004EFF53p
					; .text:004EFF6Bp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		call	__lock_exit
		test	ebx, ebx
		jnz	short loc_4EFF08
		cmp	dword_57BA88, 0
		jz	short loc_4EFEFB
		call	dword_57BA88

loc_4EFEFB:				; CODE XREF: .text:004EFEF3j
		call	__cleanup
		call	off_57BA8C
		jmp	short loc_4EFF0F
; ---------------------------------------------------------------------------

loc_4EFF08:				; CODE XREF: .text:004EFEEAj
		xor	eax, eax
		mov	dword_57BA88, eax

loc_4EFF0F:				; CODE XREF: .text:004EFF06j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4EFF3E
		test	ebx, ebx
		jnz	short loc_4EFF25
		call	off_57BA90
		call	off_57BA94

loc_4EFF25:				; CODE XREF: .text:004EFF17j
		call	__unlock_exit
		call	__cleanup_handle_locks
		call	loc_4EB27C
		mov	edx, [ebp+10h]
		push	edx		; uExitCode
		call	__terminate
; ---------------------------------------------------------------------------
		pop	ecx

loc_4EFF3E:				; CODE XREF: .text:004EFF13j
		call	__unlock_exit
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void __cdecl exit(int	status)
_exit:					; CODE XREF: .text:0040CDC6p
					; .text:004F106Bp ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; uExitCode
		push	0		; int
		push	0		; int
		call	loc_4EFEDC
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; void __cdecl _exit(int status)
__exit:					; CODE XREF: .text:004EFB1Fp
					; .text:004EFEC1p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; uExitCode
		push	0		; int
		push	1		; int
		call	loc_4EFEDC
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void _cexit(void)
__cexit:				; uExitCode
		push	0
		push	1		; int
		push	0		; int
		call	loc_4EFEDC
		add	esp, 0Ch
		retn
; ---------------------------------------------------------------------------
		align 4

; void _c_exit(void)
__c_exit:				; uExitCode
		push	0
		push	1		; int
		push	1		; int
		call	loc_4EFEDC
		add	esp, 0Ch
		retn
; ---------------------------------------------------------------------------
		align 4

; wchar_t *__cdecl _wgetenv(const wchar_t *_name)
__wgetenv:				; CODE XREF: .text:004C9901p
					; .text:004C995Cp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		test	byte ptr dword_61BE08, 4
		push	edi
		mov	edi, [ebp+8]
		jz	short loc_4F0006
		push	edi		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4EFFBB
		xor	eax, eax
		jmp	short loc_4F0008
; ---------------------------------------------------------------------------

loc_4EFFBB:				; CODE XREF: .text:004EFFB5j
		call	__wlock_env
		mov	ebx, dword_61BE30
		jmp	short loc_4EFFE5
; ---------------------------------------------------------------------------

loc_4EFFC8:				; CODE XREF: .text:004EFFE8j
		push	esi		; maxlen
		push	edi		; s2
		mov	eax, [ebx]
		push	eax		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4EFFE2
		mov	edx, [ebx]
		cmp	word ptr [edx+esi*2], 3Dh
		jz	short loc_4EFFEA

loc_4EFFE2:				; CODE XREF: .text:004EFFD7j
		add	ebx, 4

loc_4EFFE5:				; CODE XREF: .text:004EFFC6j
		cmp	dword ptr [ebx], 0
		jnz	short loc_4EFFC8

loc_4EFFEA:				; CODE XREF: .text:004EFFE0j
		call	__wunlock_env
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4F0000
		add	esi, esi
		add	esi, eax
		add	esi, 2
		mov	eax, esi
		jmp	short loc_4F0008
; ---------------------------------------------------------------------------

loc_4F0000:				; CODE XREF: .text:004EFFF3j
		xor	eax, eax
		jmp	short loc_4F0008
; ---------------------------------------------------------------------------
		jmp	short loc_4F0008
; ---------------------------------------------------------------------------

loc_4F0006:				; CODE XREF: .text:004EFFA8j
		xor	eax, eax

loc_4F0008:				; CODE XREF: .text:004EFFB9j
					; .text:004EFFFEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__init_wild_handlers:			; CODE XREF: .text:004F0F92p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	ecx, [ebp+0Ch]
		mov	edx, [eax]

loc_4F001B:
		mov	off_57BB48, edx
		mov	eax, [ecx]
		mov	off_57BB4C, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__argv_default_expand:			; CODE XREF: .text:004F0309p
					; DATA XREF: .data:off_57BB48o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, [ebp+8]
		push	eax
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__argv_default_expand_0:		; CODE XREF: .text:004F0529p
					; DATA XREF: .data:off_57BB4Co
		push	ebp

loc_4F0041:
		mov	ebp, esp
		push	0
		mov	eax, [ebp+8]
		push	eax
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		db 90h
		db  90h	; Ѝ
		db  90h	; Ѝ
; ---------------------------------------------------------------------------

__init_setargv_handlers:		; CODE XREF: .text:004F0FAAp
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		mov	off_57BA98, eax

loc_4F0062:
		mov	off_57BA9C, edx
		mov	ecx, [ebp+10h]
		mov	eax, [ebp+14h]
		mov	off_57BAA0, ecx
		mov	off_57BAA4, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__setargv:				; DATA XREF: .data:004F607Ao
		push	ebx
		cmp	dword_61BE4C, 0
		jz	short loc_4F0102
		xor	eax, eax
		xor	edx, edx
		mov	dword_61BE10, eax
		mov	dword_61BE54, eax
		mov	dword_61BE0C, edx
		mov	ecx, lpFilename
		push	ecx		; s
		call	_strdup
		pop	ecx
		mov	ebx, eax
		mov	dword_61BE14, ebx
		push	offset loc_4F0138
		mov	eax, dword_61BE4C
		push	eax
		push	ebx
		call	off_57BA98
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4F00DC
		push	0		; int
		push	0		; s
		call	loc_4F0138
		add	esp, 8
		dec	dword_61BE54
		jmp	short loc_4F00EC
; ---------------------------------------------------------------------------

loc_4F00DC:				; CODE XREF: .text:004F00C6j
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_61BE0C, edx
		mov	dword_61BE54, ecx

loc_4F00EC:				; CODE XREF: .text:004F00DAj
		mov	eax, dword_61BE54
		mov	dword_61BE40, eax
		mov	edx, dword_61BE0C
		mov	dword_61BE44, edx

loc_4F0102:				; CODE XREF: .text:004F0084j
		pop	ebx
		retn
; ---------------------------------------------------------------------------

__exitargv:				; DATA XREF: .data:004F6116o
		call	off_57BA9C
		cmp	dword_61BE0C, 0
		jz	short locret_4F0134
		mov	eax, dword_61BE14
		push	eax		; block
		call	_free
		pop	ecx
		mov	edx, dword_61BE0C
		push	edx		; block
		call	_free
		pop	ecx
		xor	ecx, ecx
		mov	dword_61BE0C, ecx

locret_4F0134:				; CODE XREF: .text:004F0111j
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4F0138(char *s, int)
loc_4F0138:				; CODE XREF: .text:004F00CCp
					; DATA XREF: .text:004F00AFo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	eax, dword_61BE54
		cmp	eax, dword_61BE10
		jnz	short loc_4F0182
		add	dword_61BE10, 10h
		mov	edx, dword_61BE10
		shl	edx, 2
		push	edx		; size
		mov	ecx, dword_61BE0C
		push	ecx		; block
		call	_realloc
		add	esp, 8
		mov	dword_61BE0C, eax
		test	eax, eax
		jnz	short loc_4F0182
		push	offset aNoSpaceForComm ; "No space for command line argument vect"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx

loc_4F0182:				; CODE XREF: .text:004F014Cj
					; .text:004F0175j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4F01CD
		push	esi		; s
		call	_strlen
		pop	ecx
		inc	eax
		push	eax		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4F01A8
		push	offset aNoSpaceForCo_0 ; "No space for command line argument"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx

loc_4F01A8:				; CODE XREF: .text:004F019Bj
		xor	eax, eax
		push	esi
		mov	edi, esi
		or	ecx, 0FFFFFFFFh
		repne scasb
		not	ecx
		sub	edi, ecx
		mov	esi, ebx
		xchg	esi, edi
		mov	edx, ecx
		mov	eax, edi
		shr	ecx, 2
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb
		pop	esi
		jmp	short loc_4F01CF
; ---------------------------------------------------------------------------

loc_4F01CD:				; CODE XREF: .text:004F0186j
		mov	ebx, esi

loc_4F01CF:				; CODE XREF: .text:004F01CBj
		mov	eax, dword_61BE0C
		mov	edx, dword_61BE54
		mov	[eax+edx*4], ebx
		inc	dword_61BE54
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__handle_setargv:			; CODE XREF: .text:004F00BBp
					; DATA XREF: .data:004F61CCo ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		lea	ebx, [ebp-4]
		lea	esi, [ebp-8]
		mov	eax, [ebp+0Ch]
		mov	[ebx], eax
		push	0
		mov	edx, [ebp+8]
		push	edx
		call	dword ptr [ebp+10h]
		add	esp, 8
		jmp	short loc_4F020C
; ---------------------------------------------------------------------------

loc_4F020A:				; CODE XREF: .text:004F0212j
					; .text:004F0216j
		inc	dword ptr [ebx]

loc_4F020C:				; CODE XREF: .text:004F0208j
		mov	ecx, [ebx]
		mov	al, [ecx]
		cmp	al, 20h
		jz	short loc_4F020A
		cmp	al, 9
		jz	short loc_4F020A
		mov	edx, [ebx]
		cmp	byte ptr [edx],	22h
		jnz	short loc_4F023E
		inc	dword ptr [ebx]
		jmp	short loc_4F0225
; ---------------------------------------------------------------------------

loc_4F0223:				; CODE XREF: .text:004F022Fj
		inc	dword ptr [ebx]

loc_4F0225:				; CODE XREF: .text:004F0221j
		mov	ecx, [ebx]
		mov	al, [ecx]
		cmp	al, 22h
		jz	short loc_4F0231
		test	al, al
		jnz	short loc_4F0223

loc_4F0231:				; CODE XREF: .text:004F022Bj
		mov	edx, [ebx]
		cmp	byte ptr [edx],	22h
		jnz	short loc_4F024E
		inc	dword ptr [ebx]
		jmp	short loc_4F024E
; ---------------------------------------------------------------------------

loc_4F023C:				; CODE XREF: .text:004F024Cj
		inc	dword ptr [ebx]

loc_4F023E:				; CODE XREF: .text:004F021Dj
		mov	ecx, [ebx]
		mov	al, [ecx]
		cmp	al, 20h
		jz	short loc_4F024E
		cmp	al, 9
		jz	short loc_4F024E
		test	al, al
		jnz	short loc_4F023C

loc_4F024E:				; CODE XREF: .text:004F0236j
					; .text:004F023Aj ...
		mov	edx, [ebx]
		push	edx		; s
		call	_strlen
		pop	ecx
		inc	eax
		push	eax		; size
		call	_malloc
		pop	ecx
		mov	[esi], eax
		mov	dword_61BE18, eax
		test	eax, eax
		jnz	loc_4F0329
		push	offset aNoSpaceForCopy ; "No space for copy of command line"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx
		jmp	loc_4F0329
; ---------------------------------------------------------------------------

loc_4F027E:				; CODE XREF: .text:004F032Ej
		xor	edi, edi
		jmp	short loc_4F0284
; ---------------------------------------------------------------------------

loc_4F0282:				; CODE XREF: .text:004F028Aj
					; .text:004F028Ej
		inc	dword ptr [ebx]

loc_4F0284:				; CODE XREF: .text:004F0280j
		mov	eax, [ebx]
		mov	al, [eax]
		cmp	al, 20h
		jz	short loc_4F0282
		cmp	al, 9
		jz	short loc_4F0282
		mov	edx, [ebx]
		cmp	byte ptr [edx],	0
		jz	loc_4F0334
		mov	ecx, [esi]
		mov	[ebp-0Ch], ecx
		jmp	short loc_4F02E6
; ---------------------------------------------------------------------------

loc_4F02A2:				; CODE XREF: .text:004F02F4j
		cmp	al, 22h
		jnz	short loc_4F02CB
		inc	dword ptr [ebx]
		jmp	short loc_4F02B4
; ---------------------------------------------------------------------------

loc_4F02AA:				; CODE XREF: .text:004F02BEj
		push	ebx
		push	esi
		call	loc_4F035C
		add	esp, 8

loc_4F02B4:				; CODE XREF: .text:004F02A8j
		mov	eax, [ebx]
		mov	al, [eax]
		cmp	al, 22h
		jz	short loc_4F02C0
		test	al, al
		jnz	short loc_4F02AA

loc_4F02C0:				; CODE XREF: .text:004F02BAj
		mov	edx, [ebx]
		cmp	byte ptr [edx],	22h
		jnz	short loc_4F02E6
		inc	dword ptr [ebx]
		jmp	short loc_4F02E6
; ---------------------------------------------------------------------------

loc_4F02CB:				; CODE XREF: .text:004F02A4j
		mov	ecx, [ebx]
		mov	al, [ecx]
		cmp	al, 2Ah
		jz	short loc_4F02D7
		cmp	al, 3Fh
		jnz	short loc_4F02DC

loc_4F02D7:				; CODE XREF: .text:004F02D1j
		mov	edi, 1

loc_4F02DC:				; CODE XREF: .text:004F02D5j
		push	ebx
		push	esi
		call	loc_4F035C
		add	esp, 8

loc_4F02E6:				; CODE XREF: .text:004F02A0j
					; .text:004F02C5j ...
		mov	eax, [ebx]
		mov	al, [eax]
		cmp	al, 20h
		jz	short loc_4F02F6
		cmp	al, 9
		jz	short loc_4F02F6
		test	al, al
		jnz	short loc_4F02A2

loc_4F02F6:				; CODE XREF: .text:004F02ECj
					; .text:004F02F0j
		mov	edx, [esi]
		mov	byte ptr [edx],	0
		inc	dword ptr [esi]
		test	edi, edi
		jz	short loc_4F0314
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		call	off_57BB48
		add	esp, 8
		jmp	short loc_4F0320
; ---------------------------------------------------------------------------

loc_4F0314:				; CODE XREF: .text:004F02FFj
		push	0
		mov	edx, [ebp-0Ch]
		push	edx
		call	dword ptr [ebp+10h]
		add	esp, 8

loc_4F0320:				; CODE XREF: .text:004F0312j
		mov	ecx, [ebx]
		cmp	byte ptr [ecx],	0
		jz	short loc_4F0334
		inc	dword ptr [ebx]

loc_4F0329:				; CODE XREF: .text:004F0268j
					; .text:004F0279j
		mov	eax, [ebx]
		cmp	byte ptr [eax],	0
		jnz	loc_4F027E

loc_4F0334:				; CODE XREF: .text:004F0295j
					; .text:004F0325j
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__handle_exitargv:			; CODE XREF: .text:__exitargvp
					; DATA XREF: .data:004F61D0o ...
		mov	eax, dword_61BE18
		test	eax, eax
		jz	short locret_4F0358
		push	eax		; block
		call	_free
		pop	ecx
		xor	edx, edx
		mov	dword_61BE18, edx

locret_4F0358:				; CODE XREF: .text:004F0347j
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F035C:				; CODE XREF: .text:004F02ACp
					; .text:004F02DEp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		mov	ecx, [eax]
		cmp	byte ptr [ecx],	5Ch
		jnz	short loc_4F037E
		cmp	byte ptr [ecx+1], 22h
		jnz	short loc_4F037E
		mov	ecx, [edx]
		mov	byte ptr [ecx],	22h
		add	dword ptr [eax], 2
		jmp	short loc_4F03C7
; ---------------------------------------------------------------------------

loc_4F037E:				; CODE XREF: .text:004F036Cj
					; .text:004F0372j
		cmp	dword_57BAFC, 0
		jz	short loc_4F039E
		mov	ecx, [eax]
		cmp	byte ptr [ecx],	5Ch
		jnz	short loc_4F039E
		cmp	byte ptr [ecx+1], 5Ch
		jnz	short loc_4F039E
		mov	ecx, [edx]
		mov	byte ptr [ecx],	5Ch
		add	dword ptr [eax], 2
		jmp	short loc_4F03C7
; ---------------------------------------------------------------------------

loc_4F039E:				; CODE XREF: .text:004F0385j
					; .text:004F038Cj ...
		mov	esi, [eax]
		mov	cl, [esi]
		xor	ebx, ebx
		mov	bl, cl
		test	byte_61BBE5[ebx], 4
		jz	short loc_4F03BD
		cmp	byte ptr [esi+1], 0
		jz	short loc_4F03BD
		mov	ebx, [edx]
		mov	[ebx], cl
		inc	dword ptr [eax]
		inc	dword ptr [edx]

loc_4F03BD:				; CODE XREF: .text:004F03ADj
					; .text:004F03B3j
		mov	ecx, [eax]
		mov	ebx, [edx]
		mov	cl, [ecx]
		mov	[ebx], cl
		inc	dword ptr [eax]

loc_4F03C7:				; CODE XREF: .text:004F037Cj
					; .text:004F039Cj
		inc	dword ptr [edx]
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__handle_wsetargv:			; DATA XREF: .data:004F61D4o
					; .data:off_57BAA0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		lea	ebx, [ebp-4]
		lea	esi, [ebp-8]
		mov	eax, [ebp+0Ch]
		mov	[ebx], eax
		push	0
		mov	edx, [ebp+8]
		push	edx
		call	dword ptr [ebp+10h]
		add	esp, 8
		jmp	short loc_4F03F5
; ---------------------------------------------------------------------------

loc_4F03F2:				; CODE XREF: .text:004F03FEj
					; .text:004F0404j
		add	dword ptr [ebx], 2

loc_4F03F5:				; CODE XREF: .text:004F03F0j
		mov	ecx, [ebx]
		mov	ax, [ecx]
		cmp	ax, 20h
		jz	short loc_4F03F2
		cmp	ax, 9
		jz	short loc_4F03F2
		mov	edx, [ebx]
		cmp	word ptr [edx],	22h
		jnz	short loc_4F0436
		add	dword ptr [ebx], 2
		jmp	short loc_4F0416
; ---------------------------------------------------------------------------

loc_4F0413:				; CODE XREF: .text:004F0424j
		add	dword ptr [ebx], 2

loc_4F0416:				; CODE XREF: .text:004F0411j
		mov	ecx, [ebx]
		mov	ax, [ecx]
		cmp	ax, 22h
		jz	short loc_4F0426
		test	ax, ax
		jnz	short loc_4F0413

loc_4F0426:				; CODE XREF: .text:004F041Fj
		mov	edx, [ebx]
		cmp	word ptr [edx],	22h
		jnz	short loc_4F044C
		add	dword ptr [ebx], 2
		jmp	short loc_4F044C
; ---------------------------------------------------------------------------

loc_4F0433:				; CODE XREF: .text:004F044Aj
		add	dword ptr [ebx], 2

loc_4F0436:				; CODE XREF: .text:004F040Cj
		mov	ecx, [ebx]
		mov	ax, [ecx]
		cmp	ax, 20h
		jz	short loc_4F044C
		cmp	ax, 9
		jz	short loc_4F044C
		test	ax, ax
		jnz	short loc_4F0433

loc_4F044C:				; CODE XREF: .text:004F042Cj
					; .text:004F0431j ...
		mov	edx, [ebx]
		push	edx		; s
		call	_wcslen
		pop	ecx
		add	eax, eax
		add	eax, 2
		push	eax		; size
		call	_malloc
		pop	ecx
		mov	[esi], eax
		mov	dword_61BE1C, eax
		test	eax, eax
		jnz	loc_4F054B
		push	offset aNoSpaceForCo_1 ; "No space for copy of command line"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx
		jmp	loc_4F054B
; ---------------------------------------------------------------------------

loc_4F0480:				; CODE XREF: .text:004F0551j
		xor	edi, edi
		jmp	short loc_4F0487
; ---------------------------------------------------------------------------

loc_4F0484:				; CODE XREF: .text:004F0490j
					; .text:004F0496j
		add	dword ptr [ebx], 2

loc_4F0487:				; CODE XREF: .text:004F0482j
		mov	eax, [ebx]
		mov	ax, [eax]
		cmp	ax, 20h
		jz	short loc_4F0484
		cmp	ax, 9
		jz	short loc_4F0484
		mov	edx, [ebx]
		cmp	word ptr [edx],	0
		jz	loc_4F0557
		mov	ecx, [esi]
		mov	[ebp-0Ch], ecx
		jmp	short loc_4F04FD
; ---------------------------------------------------------------------------

loc_4F04AB:				; CODE XREF: .text:004F0511j
		cmp	ax, 22h
		jnz	short loc_4F04DD
		add	dword ptr [ebx], 2
		jmp	short loc_4F04C0
; ---------------------------------------------------------------------------

loc_4F04B6:				; CODE XREF: .text:004F04CEj
		push	ebx
		push	esi
		call	loc_4F0580
		add	esp, 8

loc_4F04C0:				; CODE XREF: .text:004F04B4j
		mov	eax, [ebx]
		mov	ax, [eax]
		cmp	ax, 22h
		jz	short loc_4F04D0
		test	ax, ax
		jnz	short loc_4F04B6

loc_4F04D0:				; CODE XREF: .text:004F04C9j
		mov	edx, [ebx]
		cmp	word ptr [edx],	22h
		jnz	short loc_4F04FD
		add	dword ptr [ebx], 2
		jmp	short loc_4F04FD
; ---------------------------------------------------------------------------

loc_4F04DD:				; CODE XREF: .text:004F04AFj
		mov	ecx, [ebx]
		mov	ax, [ecx]
		cmp	ax, 2Ah
		jz	short loc_4F04EE
		cmp	ax, 3Fh
		jnz	short loc_4F04F3

loc_4F04EE:				; CODE XREF: .text:004F04E6j
		mov	edi, 1

loc_4F04F3:				; CODE XREF: .text:004F04ECj
		push	ebx
		push	esi
		call	loc_4F0580
		add	esp, 8

loc_4F04FD:				; CODE XREF: .text:004F04A9j
					; .text:004F04D6j ...
		mov	eax, [ebx]
		mov	ax, [eax]
		cmp	ax, 20h
		jz	short loc_4F0513
		cmp	ax, 9
		jz	short loc_4F0513
		test	ax, ax
		jnz	short loc_4F04AB

loc_4F0513:				; CODE XREF: .text:004F0506j
					; .text:004F050Cj
		mov	edx, [esi]
		mov	word ptr [edx],	0
		add	dword ptr [esi], 2
		test	edi, edi
		jz	short loc_4F0534
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		call	off_57BB4C
		add	esp, 8
		jmp	short loc_4F0540
; ---------------------------------------------------------------------------

loc_4F0534:				; CODE XREF: .text:004F051Fj
		push	0
		mov	edx, [ebp-0Ch]
		push	edx
		call	dword ptr [ebp+10h]
		add	esp, 8

loc_4F0540:				; CODE XREF: .text:004F0532j
		mov	ecx, [ebx]
		cmp	word ptr [ecx],	0
		jz	short loc_4F0557
		add	dword ptr [ebx], 2

loc_4F054B:				; CODE XREF: .text:004F046Aj
					; .text:004F047Bj
		mov	eax, [ebx]
		cmp	word ptr [eax],	0
		jnz	loc_4F0480

loc_4F0557:				; CODE XREF: .text:004F049Ej
					; .text:004F0546j
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__handle_wexitargv:			; DATA XREF: .data:004F61D8o
					; .data:off_57BAA4o
		mov	eax, dword_61BE1C
		test	eax, eax
		jz	short locret_4F057C
		push	eax		; block
		call	_free
		pop	ecx
		xor	edx, edx
		mov	dword_61BE1C, edx

locret_4F057C:				; CODE XREF: .text:004F056Bj
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4F0580:				; CODE XREF: .text:004F04B8p
					; .text:004F04F5p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		mov	ecx, [eax]
		cmp	word ptr [ecx],	5Ch
		jnz	short loc_4F05A5
		cmp	word ptr [ecx+2], 22h
		jnz	short loc_4F05A5
		mov	ecx, [edx]
		mov	word ptr [ecx],	22h
		add	dword ptr [eax], 4
		jmp	short loc_4F05F1
; ---------------------------------------------------------------------------

loc_4F05A5:				; CODE XREF: .text:004F0590j
					; .text:004F0597j
		cmp	dword_57BAFC, 0
		jz	short loc_4F05E4
		mov	ecx, [eax]
		cmp	word ptr [ecx],	5Ch
		jnz	short loc_4F05E4
		cmp	word ptr [ecx+2], 5Ch
		jnz	short loc_4F05E4
		mov	ecx, [edx]
		mov	word ptr [ecx],	5Ch
		add	dword ptr [eax], 4
		jmp	short loc_4F05F1
; ---------------------------------------------------------------------------
		jmp	short loc_4F05E4
; ---------------------------------------------------------------------------
		mov	ecx, [eax]
		cmp	word ptr [ecx+2], 0
		jz	short loc_4F05E4
		mov	ecx, [eax]
		mov	ebx, [edx]
		mov	cx, [ecx]
		mov	[ebx], cx
		add	dword ptr [eax], 2
		add	dword ptr [edx], 2

loc_4F05E4:				; CODE XREF: .text:004F05ACj
					; .text:004F05B4j ...
		mov	ecx, [eax]
		mov	ebx, [edx]
		mov	cx, [ecx]
		mov	[ebx], cx
		add	dword ptr [eax], 2

loc_4F05F1:				; CODE XREF: .text:004F05A3j
					; .text:004F05C7j
		add	dword ptr [edx], 2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_19:			; DATA XREF: .data:004F6080o
		push	ebx		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		push	100h		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		mov	lpFilename, ebx
		test	ebx, ebx
		jnz	short loc_4F061B
		push	offset aOutOfMemoryIn_ ; "Out of memory	in _setargv0"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx

loc_4F061B:				; CODE XREF: .text:004F060Ej
		push	0FFh		; nSize
		mov	eax, lpFilename
		push	eax		; lpFilename
		push	0		; hModule
		call	GetModuleFileNameA
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4F0630:				; DATA XREF: .data:004F611Co
		mov	eax, lpFilename
		push	eax		; block
		call	_free
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 10h

__lock_env:
		mov	eax, dword_61BE2C
		push	eax
		call	__lock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 10h

__unlock_env:
		mov	eax, dword_61BE2C
		push	eax
		call	__unlock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4F0660:				; DATA XREF: .data:004F6122o
		mov	eax, dword_61BE24
		test	eax, eax
		jz	short loc_4F0670
		push	eax		; block
		call	_free
		pop	ecx

loc_4F0670:				; CODE XREF: .text:004F0667j
		mov	eax, dword_61BE20
		test	eax, eax
		jz	short loc_4F0680
		push	eax		; block
		call	_free
		pop	ecx

loc_4F0680:				; CODE XREF: .text:004F0677j
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_61BE24, edx
		mov	dword_61BE20, ecx
		retn
; ---------------------------------------------------------------------------
		align 4

__expandblock:				; CODE XREF: .text:loc_4F07E0p
		push	ebx
		push	esi
		push	edi
		push	ebp
		push	ecx
		cmp	dword_61BE20, 0
		jnz	short loc_4F0715
		cmp	dword_61BE50, 0
		jnz	short loc_4F06C4
		call	GetEnvironmentStrings
		mov	dword_61BE50, eax
		test	eax, eax
		jnz	short loc_4F06C4
		push	offset aGetenvironment ; "GetEnvironmentStrings	failed"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		db  59h	; Y
; ---------------------------------------------------------------------------

loc_4F06C4:				; CODE XREF: .text:004F06A9j
					; .text:004F06B7j
		xor	ebp, ebp
		xor	esi, esi
		mov	ebx, dword_61BE50
		jmp	short loc_4F06D8
; ---------------------------------------------------------------------------

loc_4F06D0:				; CODE XREF: .text:004F06E3j
		lea	eax, [edi+1]
		inc	esi
		add	ebp, eax
		add	ebx, eax

loc_4F06D8:				; CODE XREF: .text:004F06CEj
		push	ebx		; s
		call	_strlen
		pop	ecx
		mov	edi, eax
		test	eax, eax
		jnz	short loc_4F06D0
		lea	edi, [ebp+1]
		push	edi		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		mov	dword_61BE24, ebx
		test	ebx, ebx
		jnz	short loc_4F0702
		xor	eax, eax
		jmp	loc_4F07D8
; ---------------------------------------------------------------------------

loc_4F0702:				; CODE XREF: .text:004F06F9j
		push	edi		; n
		mov	edx, dword_61BE50
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4F0735
; ---------------------------------------------------------------------------

loc_4F0715:				; CODE XREF: .text:004F06A0j
		xor	esi, esi
		mov	ebx, dword_61BE20
		jmp	short loc_4F072F
; ---------------------------------------------------------------------------

loc_4F071F:				; CODE XREF: .text:004F0733j
		push	eax		; s
		call	_strlen
		pop	ecx
		test	eax, eax
		jnz	short loc_4F072B
		dec	esi

loc_4F072B:				; CODE XREF: .text:004F0728j
		inc	esi
		add	ebx, 4

loc_4F072F:				; CODE XREF: .text:004F071Dj
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_4F071F

loc_4F0735:				; CODE XREF: .text:004F0713j
		lea	ebx, [esi+4]
		push	4		; size
		mov	dword_61BE28, ebx
		inc	ebx
		push	ebx		; nitems
		call	_calloc
		add	esp, 8
		test	eax, eax
		mov	[esp], eax
		jnz	short loc_4F0758
		xor	eax, eax
		jmp	loc_4F07D8
; ---------------------------------------------------------------------------

loc_4F0758:				; CODE XREF: .text:004F074Fj
		cmp	dword_61BE20, 0
		jnz	short loc_4F0789
		xor	esi, esi
		mov	ebx, dword_61BE24
		mov	eax, [esp]
		mov	ebp, eax
		jmp	short loc_4F077A
; ---------------------------------------------------------------------------

loc_4F0770:				; CODE XREF: .text:004F0785j
		mov	[ebp+0], ebx
		add	ebp, 4
		inc	esi
		inc	edi
		add	ebx, edi

loc_4F077A:				; CODE XREF: .text:004F076Ej
		push	ebx		; s
		call	_strlen
		pop	ecx
		mov	edi, eax
		test	eax, eax
		jnz	short loc_4F0770
		jmp	short loc_4F07BA
; ---------------------------------------------------------------------------

loc_4F0789:				; CODE XREF: .text:004F075Fj
		xor	esi, esi
		mov	ebx, dword_61BE20
		mov	eax, [esp]
		mov	edi, eax
		jmp	short loc_4F07B4
; ---------------------------------------------------------------------------

loc_4F0798:				; CODE XREF: .text:004F07B8j
		push	eax		; s
		call	_strlen
		pop	ecx
		test	eax, eax
		jz	short loc_4F07A9
		mov	eax, [ebx]
		mov	[edi], eax
		jmp	short loc_4F07AD
; ---------------------------------------------------------------------------

loc_4F07A9:				; CODE XREF: .text:004F07A1j
		dec	esi
		add	edi, 0FFFFFFFCh

loc_4F07AD:				; CODE XREF: .text:004F07A7j
		add	edi, 4
		inc	esi
		add	ebx, 4

loc_4F07B4:				; CODE XREF: .text:004F0796j
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_4F0798

loc_4F07BA:				; CODE XREF: .text:004F0787j
		mov	eax, dword_61BE20
		test	eax, eax
		jz	short loc_4F07CA
		push	eax		; block
		call	_free
		pop	ecx

loc_4F07CA:				; CODE XREF: .text:004F07C1j
		mov	edx, [esp]
		mov	eax, 1
		mov	dword_61BE20, edx

loc_4F07D8:				; CODE XREF: .text:004F06FDj
					; .text:004F0753j
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4F07E0:				; DATA XREF: .data:004F6086o
		call	__expandblock
		test	eax, eax
		jnz	short loc_4F07F5
		push	offset aCouldNotAlloca ; "Could	not allocate memory for	environme"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		db  59h	; Y
		db 0C3h	; Í
; ---------------------------------------------------------------------------

loc_4F07F5:				; CODE XREF: .text:004F07E7j
		mov	eax, dword_61BE20
		mov	dword_61BE48, eax
		push	offset aCreatingEnviro ; "creating environment lock"
		push	offset dword_61BE2C ; int
		call	__create_lock
		add	esp, 8
		retn
; ---------------------------------------------------------------------------
		align 4

__wlock_env:				; CODE XREF: .text:loc_4EFFBBp
		mov	eax, dword_61BE3C
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

__wunlock_env:				; CODE XREF: .text:loc_4EFFEAp
		mov	eax, dword_61BE3C
		push	eax		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F0834:				; DATA XREF: .data:004F6128o
		test	byte ptr dword_61BE08, 4
		jz	short locret_4F086D
		mov	eax, dword_61BE34
		test	eax, eax
		jz	short loc_4F084D
		push	eax		; block
		call	_free
		pop	ecx

loc_4F084D:				; CODE XREF: .text:004F0844j
		mov	eax, dword_61BE30
		test	eax, eax
		jz	short loc_4F085D
		push	eax		; block
		call	_free
		pop	ecx

loc_4F085D:				; CODE XREF: .text:004F0854j
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_61BE34, edx
		mov	dword_61BE30, ecx

locret_4F086D:				; CODE XREF: .text:004F083Bj
		retn
; ---------------------------------------------------------------------------
		align 10h

__wexpandblock:				; CODE XREF: .text:004F09D5p
		push	ebx
		push	esi
		push	edi
		push	ebp
		push	ecx
		cmp	dword_61BE30, 0
		jnz	short loc_4F08FC
		cmp	dword_61BE64, 0
		jnz	short loc_4F08A0
		call	GetEnvironmentStringsW
		mov	dword_61BE64, eax
		test	eax, eax
		jnz	short loc_4F08A0
		push	offset aGetenvironme_0 ; "GetEnvironmentStrings	failed"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		db  59h	; Y
; ---------------------------------------------------------------------------

loc_4F08A0:				; CODE XREF: .text:004F0885j
					; .text:004F0893j
		xor	ebp, ebp
		xor	esi, esi
		mov	ebx, dword_61BE64
		jmp	short loc_4F08B9
; ---------------------------------------------------------------------------

loc_4F08AC:				; CODE XREF: .text:004F08C4j
		lea	eax, [edi+1]
		add	edi, edi
		add	edi, 2
		add	ebp, eax
		inc	esi
		add	ebx, edi

loc_4F08B9:				; CODE XREF: .text:004F08AAj
		push	ebx		; s
		call	_wcslen
		pop	ecx
		mov	edi, eax
		test	eax, eax
		jnz	short loc_4F08AC
		lea	edi, [ebp+1]
		mov	eax, edi
		add	eax, eax
		push	eax		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		mov	dword_61BE34, ebx
		test	ebx, ebx
		jnz	short loc_4F08E7
		xor	eax, eax
		jmp	loc_4F09C3
; ---------------------------------------------------------------------------

loc_4F08E7:				; CODE XREF: .text:004F08DEj
		add	edi, edi
		mov	edx, dword_61BE64
		push	edi		; n
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4F091C
; ---------------------------------------------------------------------------

loc_4F08FC:				; CODE XREF: .text:004F087Cj
		xor	esi, esi
		mov	ebx, dword_61BE30
		jmp	short loc_4F0916
; ---------------------------------------------------------------------------

loc_4F0906:				; CODE XREF: .text:004F091Aj
		push	eax		; s
		call	_wcslen
		pop	ecx
		test	eax, eax
		jnz	short loc_4F0912
		dec	esi

loc_4F0912:				; CODE XREF: .text:004F090Fj
		inc	esi
		add	ebx, 4

loc_4F0916:				; CODE XREF: .text:004F0904j
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_4F0906

loc_4F091C:				; CODE XREF: .text:004F08FAj
		lea	ebx, [esi+4]
		push	4		; size
		mov	dword_61BE38, ebx
		inc	ebx
		push	ebx		; nitems
		call	_calloc
		add	esp, 8
		test	eax, eax
		mov	[esp], eax
		jnz	short loc_4F093F
		xor	eax, eax
		jmp	loc_4F09C3
; ---------------------------------------------------------------------------

loc_4F093F:				; CODE XREF: .text:004F0936j
		cmp	dword_61BE30, 0
		jnz	short loc_4F0974
		xor	esi, esi
		mov	ebx, dword_61BE34
		mov	eax, [esp]
		mov	ebp, eax
		jmp	short loc_4F0965
; ---------------------------------------------------------------------------

loc_4F0957:				; CODE XREF: .text:004F0970j
		mov	[ebp+0], ebx
		add	edi, edi
		add	edi, 2
		add	ebp, 4
		inc	esi
		add	ebx, edi

loc_4F0965:				; CODE XREF: .text:004F0955j
		push	ebx		; s
		call	_wcslen
		pop	ecx
		mov	edi, eax
		test	eax, eax
		jnz	short loc_4F0957
		jmp	short loc_4F09A5
; ---------------------------------------------------------------------------

loc_4F0974:				; CODE XREF: .text:004F0946j
		xor	esi, esi
		mov	ebx, dword_61BE30
		mov	eax, [esp]
		mov	edi, eax
		jmp	short loc_4F099F
; ---------------------------------------------------------------------------

loc_4F0983:				; CODE XREF: .text:004F09A3j
		push	eax		; s
		call	_wcslen
		pop	ecx
		test	eax, eax
		jz	short loc_4F0994
		mov	eax, [ebx]
		mov	[edi], eax
		jmp	short loc_4F0998
; ---------------------------------------------------------------------------

loc_4F0994:				; CODE XREF: .text:004F098Cj
		dec	esi
		add	edi, 0FFFFFFFCh

loc_4F0998:				; CODE XREF: .text:004F0992j
		add	edi, 4
		inc	esi
		add	ebx, 4

loc_4F099F:				; CODE XREF: .text:004F0981j
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_4F0983

loc_4F09A5:				; CODE XREF: .text:004F0972j
		mov	eax, dword_61BE30
		test	eax, eax
		jz	short loc_4F09B5
		push	eax		; block
		call	_free
		pop	ecx

loc_4F09B5:				; CODE XREF: .text:004F09ACj
		mov	edx, [esp]
		mov	eax, 1
		mov	dword_61BE30, edx

loc_4F09C3:				; CODE XREF: .text:004F08E2j
					; .text:004F093Aj
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F09CC:				; DATA XREF: .data:004F608Co
		test	byte ptr dword_61BE08, 4
		jz	short locret_4F0A06
		call	__wexpandblock
		test	eax, eax
		jnz	short loc_4F09EA
		push	offset aCouldNotAllo_0 ; "Could	not allocate memory for	environme"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		db  59h	; Y
		db 0C3h	; Í
; ---------------------------------------------------------------------------

loc_4F09EA:				; CODE XREF: .text:004F09DCj
		mov	eax, dword_61BE30
		mov	dword_61BE74, eax
		push	offset aCreatingEnvi_0 ; "creating environment lock"
		push	offset dword_61BE3C ; int
		call	__create_lock
		add	esp, 8

locret_4F0A06:				; CODE XREF: .text:004F09D3j
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F0A08:				; CODE XREF: .text:004F0C74p
					; .text:004F0D2Cp
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		mov	edx, offset dword_57BC74
		mov	ecx, [ebp+8]

loc_4F0A15:				; CODE XREF: .text:004F0A20j
		cmp	ecx, [edx]
		jz	short loc_4F0A25
		inc	eax
		add	edx, 4
		cmp	eax, 0Ah
		jl	short loc_4F0A15
		or	eax, 0FFFFFFFFh

loc_4F0A25:				; CODE XREF: .text:004F0A17j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F0A28:				; DATA XREF: .text:004F0C56o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	[ebp-10h], ebx
		mov	eax, [ebp+10h]
		mov	[ebp-0Ch], eax
		xor	edx, edx
		mov	[ebp-8], edx
		call	__thread_data
		mov	esi, eax
		test	eax, eax
		jz	short loc_4F0A54
		mov	eax, [esi+28h]
		test	eax, eax
		jnz	short loc_4F0A5E

loc_4F0A54:				; CODE XREF: .text:004F0A4Bj
		mov	eax, 1
		jmp	loc_4F0C16
; ---------------------------------------------------------------------------

loc_4F0A5E:				; CODE XREF: .text:004F0A52j
		xor	edi, edi
		mov	edx, [ebx]
		cmp	edx, 0C0000090h
		jg	short loc_4F0AAC
		jz	loc_4F0B1C
		cmp	edx, 0C0000005h
		jg	short loc_4F0A96
		jz	loc_4F0B50
		sub	edx, 80000003h
		jz	loc_4F0B7A
		dec	edx
		jz	loc_4F0B88
		jmp	loc_4F0B96	; jumptable 004F0ABB default case
; ---------------------------------------------------------------------------

loc_4F0A96:				; CODE XREF: .text:004F0A76j
		sub	edx, 0C000001Dh
		jz	loc_4F0B5E
		sub	edx, 71h
		jz	short loc_4F0ADA
		jmp	loc_4F0B96	; jumptable 004F0ABB default case
; ---------------------------------------------------------------------------

loc_4F0AAC:				; CODE XREF: .text:004F0A68j
		add	edx, 3FFFFF6Fh	; switch 6 cases
		cmp	edx, 5
		ja	loc_4F0B96	; jumptable 004F0ABB default case
		jmp	ds:off_4F0AC2[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4F0AC2	dd offset loc_4F0AF0	; DATA XREF: .text:004F0ABBr
		dd offset loc_4F0B2F	; jump table for switch	statement
		dd offset loc_4F0B06
		dd offset loc_4F0B42
		dd offset loc_4F0B96
		dd offset loc_4F0B6C
; ---------------------------------------------------------------------------

loc_4F0ADA:				; CODE XREF: .text:004F0AA5j
		mov	ebx, 2
		mov	dword ptr [ebp-4], 83h
		mov	edi, 4
		jmp	loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0AF0:				; CODE XREF: .text:004F0ABBj
					; DATA XREF: .text:off_4F0AC2o
		mov	ebx, 2		; jumptable 004F0ABB case -1073741679
		mov	dword ptr [ebp-4], 84h
		mov	edi, 8
		jmp	loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B06:				; CODE XREF: .text:004F0ABBj
					; DATA XREF: .text:off_4F0AC2o
		mov	ebx, 2		; jumptable 004F0ABB case -1073741677
		mov	dword ptr [ebp-4], 85h
		mov	edi, 10h
		jmp	loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B1C:				; CODE XREF: .text:004F0A6Aj
		mov	ebx, 2
		mov	dword ptr [ebp-4], 81h
		mov	edi, 1
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B2F:				; CODE XREF: .text:004F0ABBj
					; DATA XREF: .text:off_4F0AC2o
		mov	ebx, 2		; jumptable 004F0ABB case -1073741678
		mov	dword ptr [ebp-4], 87h
		mov	edi, 49h
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B42:				; CODE XREF: .text:004F0ABBj
					; DATA XREF: .text:off_4F0AC2o
		mov	dword ptr [ebp-4], 7Fh ; jumptable 004F0ABB case -1073741676
		mov	ebx, 2
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B50:				; CODE XREF: .text:004F0A78j
		mov	dword ptr [ebp-4], 0Ch
		mov	ebx, 3
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B5E:				; CODE XREF: .text:004F0A9Cj
		mov	dword ptr [ebp-4], 14h
		mov	ebx, 1
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B6C:				; CODE XREF: .text:004F0ABBj
					; DATA XREF: .text:off_4F0AC2o
		mov	dword ptr [ebp-4], 16h ; jumptable 004F0ABB case -1073741674
		mov	ebx, 1
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B7A:				; CODE XREF: .text:004F0A84j
		mov	dword ptr [ebp-4], 17h
		mov	ebx, 1
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B88:				; CODE XREF: .text:004F0A8Bj
		mov	dword ptr [ebp-4], 18h
		mov	ebx, 1
		jmp	short loc_4F0B9D
; ---------------------------------------------------------------------------

loc_4F0B96:				; CODE XREF: .text:004F0A91j
					; .text:004F0AA7j ...
		mov	eax, 1		; jumptable 004F0ABB default case
		jmp	short loc_4F0C16
; ---------------------------------------------------------------------------

loc_4F0B9D:				; CODE XREF: .text:004F0AEBj
					; .text:004F0B01j ...
		mov	esi, [eax+ebx*4]
		cmp	esi, 1
		jnz	short loc_4F0BA9
		xor	eax, eax
		jmp	short loc_4F0C16
; ---------------------------------------------------------------------------

loc_4F0BA9:				; CODE XREF: .text:004F0BA3j
		test	esi, esi
		jnz	short loc_4F0BB4
		mov	eax, 1
		jmp	short loc_4F0C16
; ---------------------------------------------------------------------------

loc_4F0BB4:				; CODE XREF: .text:004F0BABj
		xor	edx, edx
		cmp	ebx, 1
		mov	[eax+ebx*4], edx
		jz	short loc_4F0BC8
		cmp	ebx, 3
		jz	short loc_4F0BC8
		cmp	ebx, 2
		jnz	short loc_4F0C00

loc_4F0BC8:				; CODE XREF: .text:004F0BBCj
					; .text:004F0BC1j
		call	__clear87
		push	1F3Fh
		mov	ecx, dword_57B864
		push	ecx
		call	loc_4ED9C4
		add	esp, 8
		lea	eax, [ebp-10h]
		push	eax
		mov	edx, [ebp-4]
		push	edx
		mov	ecx, dword_57BC74[ebx*4]
		push	ecx
		call	esi
		mov	eax, [ebp+10h]
		add	esp, 0Ch
		not	edi
		and	[eax+20h], edi
		jmp	short loc_4F0C13
; ---------------------------------------------------------------------------

loc_4F0C00:				; CODE XREF: .text:004F0BC6j
		lea	edx, [ebp-10h]
		push	edx
		push	0
		mov	ecx, dword_57BC74[ebx*4]
		push	ecx
		call	esi
		add	esp, 0Ch

loc_4F0C13:				; CODE XREF: .text:004F0BFEj
		mov	eax, [ebp-8]

loc_4F0C16:				; CODE XREF: .text:004F0A59j
					; .text:004F0B9Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4F0C20:				; DATA XREF: .text:004F0C62o
		push	ebp
		mov	ebp, esp
		mov	eax, 2
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4F0C31
		add	eax, 13h

loc_4F0C31:				; CODE XREF: .text:004F0C2Cj
		push	eax
		call	loc_4F0CF8
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cmp	byte_57BC48, 0
		mov	ebx, [ebp+8]
		jnz	short loc_4F0C73
		mov	dword_61BA38, offset loc_4F0A28
		push	1
		push	offset loc_4F0C20
		call	SetConsoleCtrlHandler
		mov	byte_57BC48, 1

loc_4F0C73:				; CODE XREF: .text:004F0C54j
		push	ebx
		call	loc_4F0A08
		pop	ecx
		mov	esi, eax
		inc	eax
		jnz	short loc_4F0C8F
		call	___errno
		mov	dword ptr [eax], 13h
		or	eax, 0FFFFFFFFh
		jmp	short loc_4F0CF2
; ---------------------------------------------------------------------------

loc_4F0C8F:				; CODE XREF: .text:004F0C7Dj
		cmp	ebx, 2
		jz	short loc_4F0C99
		cmp	ebx, 15h
		jnz	short loc_4F0CA0

loc_4F0C99:				; CODE XREF: .text:004F0C92j
		mov	ebx, offset byte_57BC4C
		jmp	short loc_4F0CE9
; ---------------------------------------------------------------------------

loc_4F0CA0:				; CODE XREF: .text:004F0C97j
		call	__thread_data
		mov	edi, eax
		test	eax, eax
		jnz	short loc_4F0CB0
		or	eax, 0FFFFFFFFh
		jmp	short loc_4F0CF2
; ---------------------------------------------------------------------------

loc_4F0CB0:				; CODE XREF: .text:004F0CA9j
		mov	ebx, [edi+28h]
		test	ebx, ebx
		jnz	short loc_4F0CE9
		push	28h
		call	_malloc
		pop	ecx
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4F0CD5
		call	___errno
		mov	dword ptr [eax], 8
		or	eax, 0FFFFFFFFh
		jmp	short loc_4F0CF2
; ---------------------------------------------------------------------------

loc_4F0CD5:				; CODE XREF: .text:004F0CC3j
		xor	edx, edx
		mov	eax, ebx

loc_4F0CD9:				; CODE XREF: .text:004F0CE4j
		xor	ecx, ecx
		inc	edx
		mov	[eax], ecx
		add	eax, 4
		cmp	edx, 0Ah
		jl	short loc_4F0CD9
		mov	[edi+28h], ebx

loc_4F0CE9:				; CODE XREF: .text:004F0C9Ej
					; .text:004F0CB5j
		mov	eax, [ebx+esi*4]
		mov	edx, [ebp+0Ch]
		mov	[ebx+esi*4], edx

loc_4F0CF2:				; CODE XREF: .text:004F0C8Dj
					; .text:004F0CAEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F0CF8:				; CODE XREF: .text:004EFECAp
					; .text:004F0C32p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		cmp	ebx, 2
		jz	short loc_4F0D0B
		cmp	ebx, 15h
		jnz	short loc_4F0D12

loc_4F0D0B:				; CODE XREF: .text:004F0D04j
		mov	edi, offset byte_57BC4C
		jmp	short loc_4F0D2B
; ---------------------------------------------------------------------------

loc_4F0D12:				; CODE XREF: .text:004F0D09j
		call	__thread_data
		mov	esi, eax
		test	eax, eax
		jz	short loc_4F0D24
		mov	edi, [esi+28h]
		test	edi, edi
		jnz	short loc_4F0D2B

loc_4F0D24:				; CODE XREF: .text:004F0D1Bj
		mov	eax, 1
		jmp	short loc_4F0D87
; ---------------------------------------------------------------------------

loc_4F0D2B:				; CODE XREF: .text:004F0D10j
					; .text:004F0D22j
		push	ebx
		call	loc_4F0A08
		pop	ecx
		mov	esi, eax
		inc	eax
		jnz	short loc_4F0D3E
		mov	eax, 1
		jmp	short loc_4F0D87
; ---------------------------------------------------------------------------

loc_4F0D3E:				; CODE XREF: .text:004F0D35j
		mov	eax, [edi+esi*4]
		cmp	eax, 1
		jz	short loc_4F0D85
		test	eax, eax
		jnz	short loc_4F0D6F
		add	ebx, 0FFFFFFF0h
		sub	ebx, 2
		jb	short loc_4F0D85
		sub	ebx, 2
		jz	short loc_4F0D85
		sub	ebx, 2
		jz	short loc_4F0D5E
		jmp	short loc_4F0D65
; ---------------------------------------------------------------------------

loc_4F0D5E:				; CODE XREF: .text:004F0D5Aj
		call	__abort
; ---------------------------------------------------------------------------
		jmp	short loc_4F0D85
; ---------------------------------------------------------------------------

loc_4F0D65:				; CODE XREF: .text:004F0D5Cj
		push	3		; status
		call	__exit
; ---------------------------------------------------------------------------
		pop	ecx
		jmp	short loc_4F0D85
; ---------------------------------------------------------------------------

loc_4F0D6F:				; CODE XREF: .text:004F0D48j
		xor	edx, edx
		mov	[edi+esi*4], edx
		xor	edx, edx
		mov	dl, byte ptr dword_57BC9C[esi]
		push	0
		push	edx
		push	ebx
		call	eax
		add	esp, 0Ch

loc_4F0D85:				; CODE XREF: .text:004F0D44j
					; .text:004F0D50j ...
		xor	eax, eax

loc_4F0D87:				; CODE XREF: .text:004F0D29j
					; .text:004F0D3Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl _terminate(UINT uExitCode)
__terminate:				; CODE XREF: .text:004EFF38p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; uExitCode
		call	ExitProcess
; ---------------------------------------------------------------------------
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__create_shmem:				; CODE XREF: .text:004F0FB2p
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4F0DA0:				; CODE XREF: .text:004F0EACp
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------
		align 4

__init_exit_proc:			; CODE XREF: .text:004F0E95p
					; .text:004F0EA4p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4F0DC8
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		mov	eax, 0FFh
		jmp	short loc_4F0DD8
; ---------------------------------------------------------------------------

loc_4F0DC8:				; CODE XREF: .text:004F0DB1j
		mov	dword ptr [ebp-0Ch], 100h
		mov	dword ptr [ebp-10h], 1
		xor	eax, eax

loc_4F0DD8:				; CODE XREF: .text:004F0DC6j
		mov	esi, eax
		cmp	esi, [ebp-0Ch]
		jz	loc_4F0E6F

loc_4F0DE3:				; CODE XREF: .text:004F0E69j
		xor	eax, eax
		mov	[ebp-8], eax
		mov	edx, [ebp+8]
		lea	ecx, [edx+4]
		mov	[ebp-14h], ecx
		jmp	short loc_4F0E59
; ---------------------------------------------------------------------------

loc_4F0DF3:				; CODE XREF: .text:004F0E61j
		mov	eax, [ebp-14h]
		cmp	dword ptr [ebp+0Ch], 0
		mov	eax, [eax]
		jz	short loc_4F0E03
		mov	edi, [eax+8]
		jmp	short loc_4F0E05
; ---------------------------------------------------------------------------

loc_4F0E03:				; CODE XREF: .text:004F0DFCj
		mov	edi, [eax]

loc_4F0E05:				; CODE XREF: .text:004F0E01j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4F0E10
		mov	edx, [eax+0Ch]
		jmp	short loc_4F0E13
; ---------------------------------------------------------------------------

loc_4F0E10:				; CODE XREF: .text:004F0E09j
		mov	edx, [eax+4]

loc_4F0E13:				; CODE XREF: .text:004F0E0Ej
		mov	[ebp-4], edx
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4F0E37
		mov	ebx, edi
		cmp	ebx, [ebp-4]
		jnb	short loc_4F0E52

loc_4F0E23:				; CODE XREF: .text:004F0E33j
		mov	eax, esi
		cmp	al, [ebx+1]
		jnz	short loc_4F0E2D
		call	dword ptr [ebx+2]

loc_4F0E2D:				; CODE XREF: .text:004F0E28j
		add	ebx, 6
		cmp	ebx, [ebp-4]
		jb	short loc_4F0E23
		jmp	short loc_4F0E52
; ---------------------------------------------------------------------------

loc_4F0E37:				; CODE XREF: .text:004F0E1Aj
		mov	ebx, [ebp-4]
		add	ebx, 0FFFFFFFAh
		cmp	edi, ebx
		ja	short loc_4F0E52

loc_4F0E41:				; CODE XREF: .text:004F0E50j
		mov	eax, esi
		cmp	al, [ebx+1]
		jnz	short loc_4F0E4B
		call	dword ptr [ebx+2]

loc_4F0E4B:				; CODE XREF: .text:004F0E46j
		sub	ebx, 6
		cmp	edi, ebx
		jbe	short loc_4F0E41

loc_4F0E52:				; CODE XREF: .text:004F0E21j
					; .text:004F0E35j ...
		inc	dword ptr [ebp-8]
		add	dword ptr [ebp-14h], 4

loc_4F0E59:				; CODE XREF: .text:004F0DF1j
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		cmp	ecx, [ebp-8]
		jg	short loc_4F0DF3
		add	esi, [ebp-10h]
		cmp	esi, [ebp-0Ch]
		jnz	loc_4F0DE3

loc_4F0E6F:				; CODE XREF: .text:004F0DDDj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__cleanup:				; CODE XREF: .text:loc_4EFEFBp
		push	ebx
		push	esi
		push	edi
		cmp	dword_57BCAC, 0
		jnz	short loc_4F0EDF
		mov	dword_57BCAC, 1
		push	1
		push	offset dword_61BE78
		call	__init_exit_proc
		add	esp, 8
		push	1
		push	offset dword_61BE58
		call	__init_exit_proc
		add	esp, 8
		call	loc_4F0DA0
		mov	edi, eax
		test	eax, eax
		jz	short loc_4F0EDF
		push	1
		push	edi
		call	__init_exit_proc
		add	esp, 8
		xor	esi, esi
		lea	ebx, [edi+4]
		jmp	short loc_4F0EDB
; ---------------------------------------------------------------------------

loc_4F0EC9:				; CODE XREF: .text:004F0EDDj
		mov	eax, [ebx]
		mov	edx, [eax+14h]
		push	edx
		push	1
		call	dword ptr [eax+18h]
		add	esp, 8
		inc	esi
		add	ebx, 4

loc_4F0EDB:				; CODE XREF: .text:004F0EC7j
		cmp	esi, [edi]
		jl	short loc_4F0EC9

loc_4F0EDF:				; CODE XREF: .text:004F0E82j
					; .text:004F0EB5j
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

__lock_exit:				; CODE XREF: .text:004EFEE3p
		mov	eax, dword_61BE6C
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

__unlock_exit:				; CODE XREF: .text:loc_4EFF25p
					; .text:loc_4EFF3Ep
		mov	eax, dword_61BE6C
		push	eax		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F0F04:				; DATA XREF: .data:004F6092o
		push	offset aCreatingAtexit ; "creating atexit lock"
		push	offset dword_61BE6C ; int
		call	__create_lock
		add	esp, 8
		retn
; ---------------------------------------------------------------------------
		align 4
