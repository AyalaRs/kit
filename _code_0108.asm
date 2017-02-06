.code

; int __cdecl loc_4D8F7C(int, int, int,	wchar_t	*buffer)
loc_4D8F7C:				; CODE XREF: .text:004DB3EBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCA0h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4D8F96
		or	eax, 0FFFFFFFFh
		jmp	loc_4DA81F
; ---------------------------------------------------------------------------

loc_4D8F96:				; CODE XREF: .text:004D8F8Cj
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D8FA2
		cmp	dword ptr [ebp+0Ch], 3
		ja	short loc_4D8FC7

loc_4D8FA2:				; CODE XREF: .text:004D8F9Aj
		push	offset aInternalErro_4 ; "Internal error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_4DA81F
; ---------------------------------------------------------------------------

loc_4D8FC7:				; CODE XREF: .text:004D8FA0j
		xor	edx, edx
		xor	ecx, ecx	; int
		mov	[ebp-10h], edx
		mov	[ebp-48h], ecx
		mov	dword ptr [ebp-2Ch], 40h
		xor	eax, eax	; int
		mov	[ebp-28h], eax
		push	1		; flags
		mov	edx, [ebp-2Ch]
		shl	edx, 2
		lea	edx, [edx+edx*2] ; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-80h], eax
		mov	dword ptr [ebp-34h], 200h
		xor	ecx, ecx	; int
		mov	[ebp-30h], ecx
		push	1		; flags
		mov	eax, [ebp-34h]
		mov	edx, eax	; int
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*4] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-84h], eax
		mov	dword ptr [ebp-24h], 20h
		xor	ecx, ecx	; int
		mov	[ebp-20h], ecx
		push	3		; flags
		mov	eax, [ebp-24h]
		shl	eax, 3
		lea	eax, [eax+eax*2] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-88h], eax
		cmp	dword ptr [ebp-80h], 0
		jz	short loc_4D905A
		cmp	dword ptr [ebp-84h], 0
		jz	short loc_4D905A
		cmp	dword ptr [ebp-88h], 0
		jnz	short loc_4D9066

loc_4D905A:				; CODE XREF: .text:004D9046j
					; .text:004D904Fj
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9066:				; CODE XREF: .text:004D9058j
		mov	dword ptr [ebp-8], 1
		mov	edx, [ebp+8]
		cmp	byte ptr [edx],	0F0h
		jnz	short loc_4D90DB
		mov	ecx, [ebp+8]
		movzx	eax, word ptr [ecx+1]
		add	eax, 3
		mov	[ebp-60h], eax
		mov	dword ptr [ebp-4], 4

loc_4D9089:				; CODE XREF: .text:004D909Fj
		mov	ecx, [ebp-4]
		mov	edx, 1
		shl	edx, cl
		cmp	edx, [ebp-60h]
		jz	short loc_4D90A1
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 10h
		jl	short loc_4D9089

loc_4D90A1:				; CODE XREF: .text:004D9096j
		cmp	dword ptr [ebp-4], 10h
		jl	short loc_4D90B3
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D90B3:				; CODE XREF: .text:004D90A5j
		mov	eax, [ebp+8]
		mov	ecx, [ebp+8]
		mov	edx, [eax+3]
		movzx	eax, word ptr [ecx+7]
		add	edx, eax
		cmp	edx, [ebp+0Ch]
		jbe	short loc_4D90D3
		mov	dword ptr [ebp-10h], 2
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D90D3:				; CODE XREF: .text:004D90C5j
		mov	edx, [ebp-60h]
		mov	[ebp-5Ch], edx
		jmp	short loc_4D90E7
; ---------------------------------------------------------------------------

loc_4D90DB:				; CODE XREF: .text:004D9073j
		xor	ecx, ecx
		mov	[ebp-5Ch], ecx
		mov	dword ptr [ebp-60h], 1

loc_4D90E7:				; CODE XREF: .text:004D90D9j
		mov	eax, [ebp-5Ch]
		cmp	eax, [ebp+0Ch]
		jnb	loc_4DA64D

loc_4D90F3:				; CODE XREF: .text:004DA647j
		mov	edx, [ebp-5Ch]
		add	edx, 3
		cmp	edx, [ebp+0Ch]
		jbe	short loc_4D910A
		mov	dword ptr [ebp-10h], 3
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D910A:				; CODE XREF: .text:004D90FCj
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4D9158
		push	40h		; n
		push	0		; c
		lea	ecx, [ebp-128h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebp-14h], eax
		xor	edx, edx
		mov	[ebp-18h], edx
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		xor	eax, eax
		mov	[ebp-1Ch], eax
		xor	edx, edx
		mov	[ebp-28h], edx
		xor	ecx, ecx
		mov	[ebp-30h], ecx
		xor	eax, eax
		mov	[ebp-20h], eax
		xor	edx, edx
		mov	[ebp-44h], edx
		xor	ecx, ecx
		mov	[ebp-8], ecx
		mov	eax, dword_61A720
		mov	[ebp-7Ch], eax

loc_4D9158:				; CODE XREF: .text:004D910Ej
		mov	edx, [ebp+8]
		mov	ecx, [ebp-5Ch]
		movzx	edi, byte ptr [edx+ecx]
		inc	dword ptr [ebp-5Ch]
		mov	eax, [ebp+8]
		mov	edx, [ebp-5Ch]
		movzx	ecx, word ptr [eax+edx]
		mov	[ebp-64h], ecx
		cmp	dword ptr [ebp-64h], 0
		jnz	short loc_4D9184
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9184:				; CODE XREF: .text:004D9176j
		add	dword ptr [ebp-5Ch], 2
		mov	eax, [ebp-5Ch]
		add	eax, [ebp-64h]
		cmp	eax, [ebp+0Ch]
		jbe	short loc_4D919F
		mov	dword ptr [ebp-10h], 3
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D919F:				; CODE XREF: .text:004D9191j
		dec	dword ptr [ebp-64h]
		mov	edx, edi
		cmp	edx, 9Ah
		jg	loc_4D9231
		jz	loc_4D96F0
		add	edx, 0FFFFFF80h	; switch 26 cases
		cmp	edx, 19h
		ja	loc_4DA61F	; jumptable 004D91C2 default case
		jmp	ds:off_4D91C9[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4D91C9	dd offset loc_4D92B0	; DATA XREF: .text:004D91C2r
		dd offset loc_4DA61F	; jump table for switch	statement
		dd offset loc_4D92B0
		dd offset loc_4DA61F
		dd offset loc_4DA61F
		dd offset loc_4DA61F
		dd offset loc_4DA61F
		dd offset loc_4DA61F
		dd offset loc_4D92E3
		dd offset loc_4DA61F
		dd offset loc_4DA1DB
		dd offset loc_4DA1DB
		dd offset loc_4D96FC
		dd offset loc_4DA61F
		dd offset loc_4DA61F
		dd offset loc_4DA61F
		dd offset loc_4D9A72
		dd offset loc_4D9A72
		dd offset loc_4DA61F
		dd offset loc_4DA61F
		dd offset loc_4DA1CF
		dd offset loc_4DA1CF
		dd offset loc_4D9387
		dd offset loc_4DA61F
		dd offset loc_4D9437
		dd offset loc_4D9437
; ---------------------------------------------------------------------------

loc_4D9231:				; CODE XREF: .text:004D91AAj
		cmp	edx, 0B4h
		jge	short loc_4D926B
		add	edx, 0FFFFFF64h
		sub	edx, 2
		jb	loc_4D9DB4
		add	edx, 0FFFFFFFEh
		sub	edx, 2
		jb	loc_4D9C88
		sub	edx, 2
		jb	loc_4D9DA3
		sub	edx, 0Ch
		jz	loc_4D9800
		jmp	loc_4DA61F	; jumptable 004D91C2 default case
; ---------------------------------------------------------------------------

loc_4D926B:				; CODE XREF: .text:004D9237j
		cmp	edx, 0C6h
		jg	short loc_4D9296
		jz	loc_4DA616
		add	edx, 0FFFFFF4Ch
		sub	edx, 2
		jb	loc_4D977E
		sub	edx, 2
		jz	loc_4D9800
		jmp	loc_4DA61F	; jumptable 004D91C2 default case
; ---------------------------------------------------------------------------

loc_4D9296:				; CODE XREF: .text:004D9271j
		sub	edx, 0CAh
		jz	loc_4D9387	; jumptable 004D91C2 case 150
		sub	edx, 27h
		jz	loc_4DA64D
		jmp	loc_4DA61F	; jumptable 004D91C2 default case
; ---------------------------------------------------------------------------

loc_4D92B0:				; CODE XREF: .text:004D91C2j
					; DATA XREF: .text:off_4D91C9o
		push	0		; jumptable 004D91C2 cases 128,130
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		mov	eax, [ebp-64h]
		inc	eax
		add	[ebp-5Ch], eax
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D92E3:				; CODE XREF: .text:004D91C2j
					; DATA XREF: .text:off_4D91C9o
		inc	dword ptr [ebp-5Ch] ; jumptable	004D91C2 case 136
		dec	dword ptr [ebp-64h]
		mov	edx, [ebp+8]
		mov	ecx, [ebp-5Ch]
		cmp	byte ptr [edx+ecx], 0A0h
		jnz	loc_4D937B
		mov	eax, [ebp+8]
		mov	edx, [ebp-5Ch]
		cmp	byte ptr [eax+edx+1], 1
		jnz	short loc_4D937B
		mov	ecx, [ebp+8]
		mov	eax, [ebp-5Ch]
		cmp	byte ptr [ecx+eax+2], 0
		jz	short loc_4D937B
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4D9325
		mov	dword ptr [ebp-10h], 6
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9325:				; CODE XREF: .text:004D9317j
		add	dword ptr [ebp-5Ch], 3
		sub	dword ptr [ebp-64h], 3
		push	0
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		push	0
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D

loc_4D937B:				; CODE XREF: .text:004D92F3j
					; .text:004D9304j ...
		mov	eax, [ebp-64h]
		inc	eax
		add	[ebp-5Ch], eax
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D9387:				; CODE XREF: .text:004D91C2j
					; .text:004D929Cj
					; DATA XREF: ...
		mov	edx, [ebp-14h]	; jumptable 004D91C2 case 150
		lea	ecx, [ebp+edx-128h]
		mov	[ebp-0A8h], ecx
		cmp	dword ptr [ebp-64h], 0
		jbe	loc_4D942B

loc_4D93A1:				; CODE XREF: .text:004D9425j
		lea	eax, [ebp-328h]
		push	eax
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		cmp	dword ptr [ebp-14h], 3Fh
		jge	short loc_4D9421
		inc	dword ptr [ebp-14h]
		inc	dword ptr [ebp-0A8h]
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	ebx, offset off_5780F8
		mov	eax, [ebp-0A8h]
		mov	edx, eax
		mov	[ebp-0A4h], edx

loc_4D93F4:				; CODE XREF: .text:004D941Fj
		mov	eax, [ebx]
		push	eax		; s2
		lea	edx, [ebp-328h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D9415
		mov	ecx, [ebp-0A4h]
		mov	byte ptr [ecx],	1
		jmp	short loc_4D9421
; ---------------------------------------------------------------------------

loc_4D9415:				; CODE XREF: .text:004D9408j
		inc	dword ptr [ebp-4]
		add	ebx, 4
		cmp	dword ptr [ebp-4], 6
		jl	short loc_4D93F4

loc_4D9421:				; CODE XREF: .text:004D93D1j
					; .text:004D9413j
		cmp	dword ptr [ebp-64h], 0
		ja	loc_4D93A1

loc_4D942B:				; CODE XREF: .text:004D939Bj
		mov	eax, [ebp-64h]
		inc	eax
		add	[ebp-5Ch], eax
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D9437:				; CODE XREF: .text:004D91C2j
					; DATA XREF: .text:off_4D91C9o
		cmp	dword ptr [ebp-64h], 0 ; jumptable 004D91C2 cases 152,153
		jnz	short loc_4D9449
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9449:				; CODE XREF: .text:004D943Bj
		mov	edx, [ebp+8]
		mov	ecx, [ebp-5Ch]
		xor	ebx, ebx
		mov	bl, [edx+ecx]
		inc	dword ptr [ebp-5Ch]
		dec	dword ptr [ebp-64h]
		test	bl, 1
		jnz	short loc_4D946B
		mov	dword ptr [ebp-10h], 5
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D946B:				; CODE XREF: .text:004D945Dj
		cmp	edi, 99h
		lea	eax, [ebp-68h]
		setz	dl
		and	edx, 1
		push	eax
		push	edx
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8F1C
		add	esp, 18h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		cmp	edi, 98h
		jnz	short loc_4D94B5
		test	bl, 2
		jz	short loc_4D94B5
		or	dword ptr [ebp-68h], 10000h

loc_4D94B5:				; CODE XREF: .text:004D94A7j
					; .text:004D94ACj
		lea	eax, [ebp-38h]
		push	eax
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		lea	ecx, [ebp-3Ch]
		push	ecx
		lea	eax, [ebp-64h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		push	0
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		cmp	dword ptr [ebp-64h], 0
		jz	short loc_4D9540
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9540:				; CODE XREF: .text:004D9532j
		inc	dword ptr [ebp-0Ch]
		cmp	dword ptr [ebp-68h], 8
		jb	loc_4D96E8
		cmp	dword ptr [ebp-38h], 40h
		jge	short loc_4D9560
		mov	ecx, [ebp-38h]
		cmp	byte ptr [ebp+ecx-128h], 0
		jnz	short loc_4D957B

loc_4D9560:				; CODE XREF: .text:004D9551j
		cmp	dword ptr [ebp-3Ch], 40h
		jge	loc_4D96E8
		mov	eax, [ebp-3Ch]
		cmp	byte ptr [ebp+eax-128h], 0
		jz	loc_4D96E8

loc_4D957B:				; CODE XREF: .text:004D955Ej
		mov	edx, ebx
		and	edx, 1Ch
		cmp	edx, 14h
		jz	loc_4D96E8
		mov	ecx, ebx
		and	ecx, 1Ch
		cmp	ecx, 18h
		jz	loc_4D96E8
		mov	eax, [ebp-20h]	; int
		cmp	eax, [ebp-24h]
		jl	short loc_4D95D2
		push	1		; flags
		push	0		; failed
		push	18h		; itemsize
		lea	edx, [ebp-24h]	; int
		push	edx		; pcount
		mov	ecx, [ebp-88h]	; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-88h], eax
		mov	eax, [ebp-20h]
		cmp	eax, [ebp-24h]
		jl	short loc_4D95D2
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D95D2:				; CODE XREF: .text:004D959Dj
					; .text:004D95C4j
		mov	edx, [ebp-20h]
		and	ebx, 0E0h
		shl	edx, 3
		sar	ebx, 5
		lea	edx, [edx+edx*2]
		add	edx, [ebp-88h]
		cmp	ebx, 5		; switch 6 cases
		mov	[ebp-8Ch], edx
		mov	ecx, [ebp-8Ch]
		mov	eax, [ebp-0Ch]
		mov	[ecx], eax
		mov	edx, [ebp-8Ch]
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		ja	short loc_4D9673 ; jumptable 004D960C default case
		jmp	ds:off_4D9613[ebx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4D9613	dd offset loc_4D962B	; DATA XREF: .text:004D960Cr
		dd offset loc_4D9673	; jump table for switch	statement
		dd offset loc_4D9637
		dd offset loc_4D9646
		dd offset loc_4D9655
		dd offset loc_4D9664
; ---------------------------------------------------------------------------

loc_4D962B:				; CODE XREF: .text:004D960Cj
					; DATA XREF: .text:off_4D9613o
		mov	dword ptr [ebp-10h], 7 ; jumptable 004D960C case 0
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9637:				; CODE XREF: .text:004D960Cj
					; DATA XREF: .text:off_4D9613o
		mov	eax, [ebp-8Ch]	; jumptable 004D960C case 2
		mov	dword ptr [eax+8], 1
		jmp	short loc_4D967E
; ---------------------------------------------------------------------------

loc_4D9646:				; CODE XREF: .text:004D960Cj
					; DATA XREF: .text:off_4D9613o
		mov	edx, [ebp-8Ch]	; jumptable 004D960C case 3
		mov	dword ptr [edx+8], 0Fh
		jmp	short loc_4D967E
; ---------------------------------------------------------------------------

loc_4D9655:				; CODE XREF: .text:004D960Cj
					; DATA XREF: .text:off_4D9613o
		mov	ecx, [ebp-8Ch]	; jumptable 004D960C case 4
		mov	dword ptr [ecx+8], 0FFh
		jmp	short loc_4D967E
; ---------------------------------------------------------------------------

loc_4D9664:				; CODE XREF: .text:004D960Cj
					; DATA XREF: .text:off_4D9613o
		mov	eax, [ebp-8Ch]	; jumptable 004D960C case 5
		mov	dword ptr [eax+8], 3
		jmp	short loc_4D967E
; ---------------------------------------------------------------------------

loc_4D9673:				; CODE XREF: .text:004D960Aj
					; .text:004D960Cj
					; DATA XREF: ...
		mov	edx, [ebp-8Ch]	; jumptable 004D960C default case
		xor	ecx, ecx
		mov	[edx+8], ecx

loc_4D967E:				; CODE XREF: .text:004D9644j
					; .text:004D9653j ...
		mov	eax, [ebp-68h]
		push	eax
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	edx, [ebp-8Ch]
		mov	[edx+0Ch], eax
		mov	ecx, [ebp-68h]
		push	ecx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	edx, [ebp-8Ch]
		mov	[edx+10h], eax
		mov	eax, [ebp-8Ch]
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_4D96CA
		mov	ecx, [ebp-8Ch]
		cmp	dword ptr [ecx+10h], 0
		jnz	short loc_4D96D6

loc_4D96CA:				; CODE XREF: .text:004D96BCj
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D96D6:				; CODE XREF: .text:004D96C8j
		mov	eax, [ebp-8Ch]
		mov	edx, dword_61A720
		mov	[eax+14h], edx
		inc	dword ptr [ebp-20h]

loc_4D96E8:				; CODE XREF: .text:004D9547j
					; .text:004D9564j ...
		inc	dword ptr [ebp-5Ch]
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D96F0:				; CODE XREF: .text:004D91B0j
		mov	ecx, [ebp-64h]
		inc	ecx
		add	[ebp-5Ch], ecx
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D96FC:				; CODE XREF: .text:004D91C2j
					; DATA XREF: .text:off_4D91C9o
		cmp	dword ptr [ebp-64h], 0 ; jumptable 004D91C2 case 140
		jbe	short loc_4D9776

loc_4D9702:				; CODE XREF: .text:004D9774j
		lea	eax, [ebp-328h]
		push	eax
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		push	0
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		inc	dword ptr [ebp-18h]
		lea	eax, [ebp-328h]
		push	eax		; s
		push	4Bh		; type
		mov	edx, [ebp-7Ch]
		add	edx, [ebp-18h]
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		cmp	dword ptr [ebp-64h], 0
		ja	short loc_4D9702

loc_4D9776:				; CODE XREF: .text:004D9700j
		inc	dword ptr [ebp-5Ch]
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D977E:				; CODE XREF: .text:004D9282j
		cmp	dword ptr [ebp-64h], 0
		jbe	short loc_4D97F8

loc_4D9784:				; CODE XREF: .text:004D97F6j
		lea	ecx, [ebp-328h]
		push	ecx
		lea	eax, [ebp-64h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		push	0
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		inc	dword ptr [ebp-18h]
		lea	ecx, [ebp-328h]
		push	ecx		; s
		push	4Bh		; type
		mov	eax, [ebp-7Ch]
		add	eax, [ebp-18h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		cmp	dword ptr [ebp-64h], 0
		ja	short loc_4D9784

loc_4D97F8:				; CODE XREF: .text:004D9782j
		inc	dword ptr [ebp-5Ch]
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D9800:				; CODE XREF: .text:004D9260j
					; .text:004D928Bj
		cmp	dword ptr [ebp-64h], 0
		jbe	loc_4D9A6A

loc_4D980A:				; CODE XREF: .text:004D9A64j
		lea	edx, [ebp-328h]
		push	edx
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		push	0
		lea	eax, [ebp-64h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		cmp	dword ptr [ebp-64h], 0
		jz	short loc_4D986B
		mov	edx, [ebp-5Ch]
		cmp	edx, [ebp+0Ch]
		jb	short loc_4D9877

loc_4D986B:				; CODE XREF: .text:004D9861j
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9877:				; CODE XREF: .text:004D9869j
		mov	ecx, [ebp+8]
		mov	eax, [ebp-5Ch]
		movzx	esi, byte ptr [ecx+eax]
		inc	dword ptr [ebp-5Ch]
		dec	dword ptr [ebp-64h]
		cmp	esi, 61h
		jnz	short loc_4D9898
		mov	dword ptr [ebp-10h], 5
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9898:				; CODE XREF: .text:004D988Aj
		lea	eax, [ebp-68h]
		push	eax
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8E58
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		inc	dword ptr [ebp-18h]
		lea	ecx, [ebp-328h]
		push	ecx		; s
		push	4Bh		; type
		mov	eax, [ebp-7Ch]
		add	eax, [ebp-18h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		inc	dword ptr [ebp-1Ch]
		cmp	dword ptr [ebp-68h], 8
		jb	loc_4D9A60
		cmp	esi, 5Fh
		jg	loc_4D9A60
		cmp	esi, 40h
		jge	loc_4D9A60
		cmp	byte ptr [ebp+esi-128h], 0
		jz	loc_4D9A60
		mov	edx, [ebp-20h]	; int
		cmp	edx, [ebp-24h]
		jl	short loc_4D9944
		push	1		; flags
		push	0		; failed
		push	18h		; itemsize
		lea	ecx, [ebp-24h]	; int
		push	ecx		; pcount
		mov	eax, [ebp-88h]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-88h], eax
		mov	edx, [ebp-20h]
		cmp	edx, [ebp-24h]
		jl	short loc_4D9944
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9944:				; CODE XREF: .text:004D990Fj
					; .text:004D9936j
		mov	ecx, [ebp-28h]	; int
		cmp	ecx, [ebp-2Ch]
		jl	short loc_4D9965
		push	1		; flags
		push	0		; failed
		push	0Ch		; itemsize
		lea	eax, [ebp-2Ch]	; int
		push	eax		; pcount
		mov	edx, [ebp-80h]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-80h], eax

loc_4D9965:				; CODE XREF: .text:004D994Aj
		cmp	dword ptr [ebp-80h], 0
		jz	short loc_4D9973
		mov	ecx, [ebp-28h]
		cmp	ecx, [ebp-2Ch]
		jl	short loc_4D997F

loc_4D9973:				; CODE XREF: .text:004D9969j
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D997F:				; CODE XREF: .text:004D9971j
		mov	eax, [ebp-28h]
		mov	edx, [ebp-80h]
		mov	ecx, [ebp-1Ch]
		add	ecx, 4000h
		lea	eax, [eax+eax*2]
		mov	[edx+eax*4], ecx
		xor	ecx, ecx
		mov	eax, [ebp-28h]
		mov	edx, [ebp-80h]
		lea	eax, [eax+eax*2]
		mov	[edx+eax*4+4], ecx
		mov	eax, [ebp-28h]
		mov	ecx, [ebp-7Ch]
		mov	edx, [ebp-80h]
		add	ecx, [ebp-18h]
		lea	eax, [eax+eax*2]
		mov	[edx+eax*4+8], ecx
		inc	dword ptr [ebp-28h]
		mov	eax, [ebp-20h]
		shl	eax, 3
		lea	eax, [eax+eax*2]
		add	eax, [ebp-88h]
		mov	[ebp-8Ch], eax
		mov	ecx, [ebp-8Ch]
		mov	edx, [ebp-1Ch]
		add	edx, 4000h
		mov	[ecx], edx
		mov	eax, [ebp-8Ch]
		mov	edx, [ebp-68h]
		mov	[eax+4], edx
		xor	eax, eax
		mov	ecx, [ebp-8Ch]
		mov	[ecx+8], eax
		mov	edx, [ebp-68h]
		push	edx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	ecx, [ebp-8Ch]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-68h]
		push	eax
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	edx, [ebp-8Ch]
		mov	[edx+10h], eax
		mov	ecx, [ebp-8Ch]
		cmp	dword ptr [ecx+0Ch], 0
		jz	short loc_4D9A42
		mov	eax, [ebp-8Ch]
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_4D9A4E

loc_4D9A42:				; CODE XREF: .text:004D9A34j
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9A4E:				; CODE XREF: .text:004D9A40j
		mov	edx, [ebp-8Ch]
		mov	ecx, dword_61A720
		mov	[edx+14h], ecx
		inc	dword ptr [ebp-20h]

loc_4D9A60:				; CODE XREF: .text:004D98E3j
					; .text:004D98ECj ...
		cmp	dword ptr [ebp-64h], 0
		ja	loc_4D980A

loc_4D9A6A:				; CODE XREF: .text:004D9804j
		inc	dword ptr [ebp-5Ch]
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D9A72:				; CODE XREF: .text:004D91C2j
					; DATA XREF: .text:off_4D91C9o
		push	0		; jumptable 004D91C2 cases 144,145
		lea	eax, [ebp-64h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		lea	edx, [ebp-38h]
		push	edx
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		cmp	dword ptr [ebp-38h], 0
		jnz	short loc_4D9AEF
		push	0
		lea	eax, [ebp-64h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D

loc_4D9AEF:				; CODE XREF: .text:004D9AC6j
		cmp	dword ptr [ebp-64h], 0
		jbe	loc_4D9C80

loc_4D9AF9:				; CODE XREF: .text:004D9C7Aj
		lea	edx, [ebp-328h]
		push	edx
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8D8C
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		cmp	edi, 91h
		lea	eax, [ebp-6Ch]
		setz	dl
		and	edx, 1
		push	eax
		push	edx
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8F1C
		add	esp, 18h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		push	0
		lea	eax, [ebp-64h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-88h]
		mov	[ebp-8Ch], ecx
		mov	eax, [ebp-88h]
		mov	edx, [ebp-4]
		cmp	edx, [ebp-20h]
		jge	short loc_4D9BBD

loc_4D9BA1:				; CODE XREF: .text:004D9BBBj
		mov	ecx, [eax]
		cmp	ecx, [ebp-38h]
		jz	short loc_4D9BBD
		add	eax, 18h
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8Ch], 18h
		mov	edx, [ebp-4]
		cmp	edx, [ebp-20h]
		jl	short loc_4D9BA1

loc_4D9BBD:				; CODE XREF: .text:004D9B9Fj
					; .text:004D9BA6j
		mov	eax, [ebp-4]
		cmp	eax, [ebp-20h]
		jge	loc_4D9C76
		mov	ecx, [ebp-8Ch]
		mov	eax, [ecx+4]
		cmp	eax, [ebp-6Ch]
		jbe	loc_4D9C76
		cmp	word ptr [ebp-328h], 0
		jz	loc_4D9C76
		mov	edx, [ebp-28h]	; int
		cmp	edx, [ebp-2Ch]
		jl	short loc_4D9C0A
		push	1		; flags
		push	0		; failed
		push	0Ch		; itemsize
		lea	ecx, [ebp-2Ch]	; int
		push	ecx		; pcount
		mov	eax, [ebp-80h]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-80h], eax

loc_4D9C0A:				; CODE XREF: .text:004D9BEFj
		cmp	dword ptr [ebp-80h], 0
		jz	short loc_4D9C18
		mov	edx, [ebp-28h]
		cmp	edx, [ebp-2Ch]
		jl	short loc_4D9C24

loc_4D9C18:				; CODE XREF: .text:004D9C0Ej
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9C24:				; CODE XREF: .text:004D9C16j
		mov	ecx, [ebp-28h]
		lea	ecx, [ecx+ecx*2]
		mov	eax, [ebp-80h]
		mov	edx, [ebp-38h]
		mov	[eax+ecx*4], edx
		mov	ecx, [ebp-28h]
		lea	ecx, [ecx+ecx*2]
		mov	eax, [ebp-80h]
		mov	edx, [ebp-6Ch]
		mov	[eax+ecx*4+4], edx
		mov	ecx, [ebp-28h]
		lea	ecx, [ecx+ecx*2]
		mov	eax, [ebp-80h]
		mov	edx, dword_61A724
		mov	[eax+ecx*4+8], edx
		lea	ecx, [ebp-328h]
		push	ecx		; s
		push	4Bh		; type
		mov	eax, dword_61A724
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		inc	dword_61A724
		inc	dword ptr [ebp-28h]

loc_4D9C76:				; CODE XREF: .text:004D9BC3j
					; .text:004D9BD5j ...
		cmp	dword ptr [ebp-64h], 0
		ja	loc_4D9AF9

loc_4D9C80:				; CODE XREF: .text:004D9AF3j
		inc	dword ptr [ebp-5Ch]
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D9C88:				; CODE XREF: .text:004D924Ej
		lea	edx, [ebp-44h]
		push	edx
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		cmp	edi, 0A1h
		lea	eax, [ebp-78h]
		setz	dl
		and	edx, 1
		push	eax
		push	edx
		lea	ecx, [ebp-64h]
		push	ecx
		lea	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8F1C
		add	esp, 18h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-88h]
		mov	[ebp-8Ch], edx
		mov	ecx, [ebp-88h]
		mov	eax, ecx
		mov	[ebp-0A8h], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-20h]
		jge	short loc_4D9D34

loc_4D9D0E:				; CODE XREF: .text:004D9D32j
		mov	ecx, [ebp-0A8h]
		mov	eax, [ecx]
		cmp	eax, [ebp-44h]
		jz	short loc_4D9D34
		add	dword ptr [ebp-0A8h], 18h
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8Ch], 18h
		mov	edx, [ebp-4]
		cmp	edx, [ebp-20h]
		jl	short loc_4D9D0E

loc_4D9D34:				; CODE XREF: .text:004D9D0Cj
					; .text:004D9D19j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-20h]
		jge	short loc_4D9D97
		mov	eax, [ebp-78h]
		mov	edx, [ebp-8Ch]
		add	eax, [ebp-64h]
		cmp	eax, [edx+4]
		jbe	short loc_4D9D59
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9D59:				; CODE XREF: .text:004D9D4Bj
		mov	ecx, [ebp-64h]
		push	ecx		; n
		mov	eax, [ebp+8]
		add	eax, [ebp-5Ch]
		push	eax		; src
		mov	edx, [ebp-8Ch]
		mov	ecx, [edx+0Ch]
		add	ecx, [ebp-78h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp-64h]
		push	eax		; n
		push	0FFh		; c
		mov	edx, [ebp-8Ch]
		mov	ecx, [edx+10h]
		add	ecx, [ebp-78h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_4D9D97:				; CODE XREF: .text:004D9D3Aj
		mov	eax, [ebp-64h]
		inc	eax
		add	[ebp-5Ch], eax
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D9DA3:				; CODE XREF: .text:004D9257j
		xor	edx, edx
		mov	[ebp-44h], edx
		mov	ecx, [ebp-64h]
		inc	ecx
		add	[ebp-5Ch], ecx
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4D9DB4:				; CODE XREF: .text:004D9242j
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-88h]
		mov	[ebp-8Ch], edx
		mov	ecx, [ebp-88h]
		mov	eax, ecx
		mov	[ebp-0A8h], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-20h]
		jge	short loc_4D9E01

loc_4D9DDB:				; CODE XREF: .text:004D9DFFj
		mov	ecx, [ebp-0A8h]
		mov	eax, [ecx]
		cmp	eax, [ebp-44h]
		jz	short loc_4D9E01
		add	dword ptr [ebp-0A8h], 18h
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8Ch], 18h
		mov	edx, [ebp-4]
		cmp	edx, [ebp-20h]
		jl	short loc_4D9DDB

loc_4D9E01:				; CODE XREF: .text:004D9DD9j
					; .text:004D9DE6j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-20h]
		jl	short loc_4D9E11
		xor	eax, eax
		mov	[ebp-8Ch], eax

loc_4D9E11:				; CODE XREF: .text:004D9E07j
		cmp	dword ptr [ebp-64h], 2
		jb	loc_4DA1B5

loc_4D9E1B:				; CODE XREF: .text:004DA1AFj
		mov	edx, [ebp+8]
		mov	ecx, [ebp-5Ch]
		xor	ebx, ebx
		mov	bl, [edx+ecx]
		inc	dword ptr [ebp-5Ch]
		dec	dword ptr [ebp-64h]
		test	bl, 80h
		jnz	loc_4D9EF1
		mov	eax, ebx
		and	eax, 3
		test	bl, 40h
		mov	[ebp-4], eax
		jnz	short loc_4D9E8B
		sar	ebx, 2
		mov	edx, [ebp-4]
		and	ebx, 3
		lea	eax, [ebp-0C8h]
		mov	[ebp+edx*4-0B8h], ebx
		lea	edx, [ebp-64h]
		mov	ecx, [ebp-4]
		shl	ecx, 2
		add	ecx, eax
		push	ecx
		lea	ecx, [ebp-5Ch]
		push	edx
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		jmp	loc_4DA1AB
; ---------------------------------------------------------------------------

loc_4D9E8B:				; CODE XREF: .text:004D9E40j
		sar	ebx, 2
		and	ebx, 7
		mov	[ebp-54h], ebx
		mov	ecx, [ebp-4]
		mov	eax, [ebp-54h]
		mov	[ebp+ecx*4-0D8h], eax
		cmp	dword ptr [ebp-54h], 3
		jl	short loc_4D9EB8
		mov	edx, [ebp-4]
		xor	ecx, ecx
		mov	[ebp+edx*4-0E8h], ecx
		jmp	loc_4DA1AB
; ---------------------------------------------------------------------------

loc_4D9EB8:				; CODE XREF: .text:004D9EA5j
		mov	eax, [ebp-4]
		lea	edx, [ebp-0E8h]
		shl	eax, 2
		lea	ecx, [ebp-64h]
		add	eax, edx
		push	eax
		lea	eax, [ebp-5Ch]
		push	ecx
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D
		jmp	loc_4DA1AB
; ---------------------------------------------------------------------------

loc_4D9EF1:				; CODE XREF: .text:004D9E2Fj
		test	bl, 40h
		setnz	al
		and	eax, 1
		mov	[ebp-40h], eax
		mov	edx, [ebp+8]
		mov	ecx, [ebp-5Ch]
		xor	eax, eax
		mov	al, [edx+ecx]
		mov	edx, ebx
		and	edx, 3
		shl	edx, 8
		add	eax, edx
		mov	[ebp-70h], eax
		inc	dword ptr [ebp-5Ch]
		dec	dword ptr [ebp-64h]
		cmp	dword ptr [ebp-64h], 0
		jnz	short loc_4D9F2D
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4D9F2D:				; CODE XREF: .text:004D9F1Fj
		mov	ecx, [ebp+8]
		mov	eax, [ebp-5Ch]
		movzx	esi, byte ptr [ecx+eax]
		inc	dword ptr [ebp-5Ch]
		dec	dword ptr [ebp-64h]
		test	esi, 80h
		jz	short loc_4D9F6B
		mov	eax, esi
		mov	ecx, esi
		sar	eax, 4
		and	eax, 3
		sar	ecx, 4
		and	ecx, 3
		mov	edx, [ebp+eax*4-0D8h]
		mov	[ebp-54h], edx
		mov	eax, [ebp+ecx*4-0E8h]
		mov	[ebp-58h], eax
		jmp	short loc_4D9FAC
; ---------------------------------------------------------------------------

loc_4D9F6B:				; CODE XREF: .text:004D9F43j
		mov	edx, esi
		sar	edx, 4
		and	edx, 7
		mov	[ebp-54h], edx
		cmp	dword ptr [ebp-54h], 3
		jl	short loc_4D9F83
		xor	ecx, ecx
		mov	[ebp-58h], ecx
		jmp	short loc_4D9FAC
; ---------------------------------------------------------------------------

loc_4D9F83:				; CODE XREF: .text:004D9F7Aj
		lea	eax, [ebp-58h]
		push	eax
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D

loc_4D9FAC:				; CODE XREF: .text:004D9F69j
					; .text:004D9F81j
		test	esi, 8
		jz	short loc_4D9FDB
		mov	ecx, esi
		mov	edx, esi
		and	ecx, 3
		and	edx, 4
		mov	eax, [ebp+ecx*4-0B8h]
		mov	ecx, esi
		or	eax, edx
		and	ecx, 3
		mov	[ebp-4Ch], eax
		mov	eax, [ebp+ecx*4-0C8h]
		mov	[ebp-50h], eax
		jmp	short loc_4DA00C
; ---------------------------------------------------------------------------

loc_4D9FDB:				; CODE XREF: .text:004D9FB2j
		mov	edx, esi
		lea	ecx, [ebp-50h]
		and	edx, 7
		lea	eax, [ebp-64h]
		mov	[ebp-4Ch], edx
		push	ecx
		push	eax
		lea	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4D8DF0
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D

loc_4DA00C:				; CODE XREF: .text:004D9FD9j
		test	esi, 4
		jz	short loc_4DA01B
		xor	edx, edx
		mov	[ebp-74h], edx
		jmp	short loc_4DA051
; ---------------------------------------------------------------------------

loc_4DA01B:				; CODE XREF: .text:004DA012j
		cmp	edi, 9Dh
		lea	ecx, [ebp-74h]
		setz	al
		and	eax, 1
		push	ecx
		push	eax
		lea	edx, [ebp-64h]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4D8F1C
		add	esp, 18h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4DA64D

loc_4DA051:				; CODE XREF: .text:004DA019j
		sar	ebx, 2
		and	ebx, 0Fh
		cmp	ebx, 9
		jz	short loc_4DA072
		cmp	ebx, 0Bh
		jz	short loc_4DA072
		cmp	ebx, 0Dh
		jz	short loc_4DA072
		mov	dword ptr [ebp-10h], 8
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA072:				; CODE XREF: .text:004DA05Aj
					; .text:004DA05Fj ...
		cmp	dword ptr [ebp-8Ch], 0
		jz	loc_4DA1AB
		cmp	ebx, 9
		jz	short loc_4DA089
		cmp	ebx, 0Dh
		jnz	short loc_4DA092

loc_4DA089:				; CODE XREF: .text:004DA082j
		mov	dword ptr [ebp-68h], 4
		jmp	short loc_4DA099
; ---------------------------------------------------------------------------

loc_4DA092:				; CODE XREF: .text:004DA087j
		mov	dword ptr [ebp-68h], 6

loc_4DA099:				; CODE XREF: .text:004DA090j
		mov	ecx, [ebp-78h]
		mov	eax, [ebp-8Ch]
		add	ecx, [ebp-70h]
		add	ecx, [ebp-68h]
		cmp	ecx, [eax+4]
		jbe	short loc_4DA0B9
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA0B9:				; CODE XREF: .text:004DA0ABj
		mov	edx, [ebp-68h]
		push	edx		; n
		push	0		; c
		mov	ecx, [ebp-8Ch]
		mov	eax, [ecx+10h]
		add	eax, [ebp-78h]
		add	eax, [ebp-70h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		cmp	ebx, 9
		jz	short loc_4DA0E5
		cmp	ebx, 0Dh
		jnz	loc_4DA1AB

loc_4DA0E5:				; CODE XREF: .text:004DA0DAj
		cmp	dword ptr [ebp-4Ch], 2
		jz	short loc_4DA0F5
		cmp	dword ptr [ebp-4Ch], 6
		jnz	loc_4DA1AB

loc_4DA0F5:				; CODE XREF: .text:004DA0E9j
		cmp	dword ptr [ebp-74h], 0
		jnz	loc_4DA1AB
		mov	edx, [ebp-30h]	; int
		cmp	edx, [ebp-34h]
		jl	short loc_4DA126
		push	1		; flags
		push	0		; failed
		push	0Dh		; itemsize
		lea	ecx, [ebp-34h]	; int
		push	ecx		; pcount
		mov	eax, [ebp-84h]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-84h], eax

loc_4DA126:				; CODE XREF: .text:004DA105j
		cmp	dword ptr [ebp-84h], 0
		jz	short loc_4DA137
		mov	edx, [ebp-30h]
		cmp	edx, [ebp-34h]
		jl	short loc_4DA143

loc_4DA137:				; CODE XREF: .text:004DA12Dj
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA143:				; CODE XREF: .text:004DA135j
		mov	ecx, [ebp-30h]
		mov	edx, [ebp-84h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*4]
		mov	eax, [ebp-44h]
		mov	[edx+ecx], eax
		mov	edx, [ebp-30h]
		mov	eax, [ebp-84h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		mov	ecx, [ebp-78h]
		add	ecx, [ebp-70h]
		mov	[eax+edx+4], ecx
		mov	edx, [ebp-30h]
		mov	ecx, [ebp-84h]
		mov	eax, edx
		lea	edx, [eax+edx*2]
		lea	edx, [eax+edx*4]
		mov	eax, [ebp-7Ch]
		add	eax, [ebp-50h]
		mov	[ecx+edx+8], eax
		mov	edx, [ebp-30h]
		mov	eax, [ebp-84h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		mov	cl, [ebp-40h]
		mov	[eax+edx+0Ch], cl
		inc	dword ptr [ebp-30h]

loc_4DA1AB:				; CODE XREF: .text:004D9E86j
					; .text:004D9EB3j ...
		cmp	dword ptr [ebp-64h], 2
		jnb	loc_4D9E1B

loc_4DA1B5:				; CODE XREF: .text:004D9E15j
		cmp	dword ptr [ebp-64h], 0
		jz	short loc_4DA1C7
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA1C7:				; CODE XREF: .text:004DA1B9j
		inc	dword ptr [ebp-5Ch]
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4DA1CF:				; CODE XREF: .text:004D91C2j
					; DATA XREF: .text:off_4D91C9o
		mov	edx, [ebp-64h]	; jumptable 004D91C2 cases 148,149
		inc	edx
		add	[ebp-5Ch], edx
		jmp	loc_4DA641
; ---------------------------------------------------------------------------

loc_4DA1DB:				; CODE XREF: .text:004D91C2j
					; DATA XREF: .text:off_4D91C9o
		cmp	dword ptr [ebp-64h], 0 ; jumptable 004D91C2 cases 138,139
		jnz	short loc_4DA1ED
		mov	dword ptr [ebp-10h], 4
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA1ED:				; CODE XREF: .text:004DA1DFj
		mov	eax, [ebp+8]
		mov	edx, [ebp-5Ch]
		inc	dword ptr [ebp-5Ch]
		dec	dword ptr [ebp-64h]
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebp-88h]
		mov	[ebp-8Ch], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-20h]
		jge	loc_4DA5EB

loc_4DA216:				; CODE XREF: .text:004DA5E5j
		mov	ecx, [ebp-8Ch]
		mov	eax, [ecx+10h]
		cmp	byte ptr [eax],	0
		jz	loc_4DA5D5
		xor	eax, eax
		xor	ebx, ebx
		jmp	short loc_4DA24E
; ---------------------------------------------------------------------------

loc_4DA22E:				; CODE XREF: .text:004DA25Cj
		mov	edx, [ebp-8Ch]
		mov	ecx, [edx+10h]
		cmp	byte ptr [ecx+eax], 0
		jz	short loc_4DA24D
		mov	edx, [ebp-8Ch]
		mov	ecx, [edx+0Ch]
		cmp	byte ptr [ecx+eax], 0
		jz	short loc_4DA24D
		inc	ebx

loc_4DA24D:				; CODE XREF: .text:004DA23Bj
					; .text:004DA24Aj
		inc	eax

loc_4DA24E:				; CODE XREF: .text:004DA22Cj
		mov	edx, [ebp-8Ch]
		cmp	eax, [edx+4]
		jnb	short loc_4DA25E
		cmp	ebx, 4
		jl	short loc_4DA22E

loc_4DA25E:				; CODE XREF: .text:004DA257j
		cmp	ebx, 4
		jl	loc_4DA5D5
		mov	eax, [ebp-8Ch]
		cmp	dword ptr [eax+4], 20h
		jnb	short loc_4DA2A3
		mov	ecx, [ebp-8Ch]
		mov	eax, [ecx+10h]
		cmp	byte ptr [eax+1], 0
		jz	short loc_4DA2A3
		mov	edx, [ebp-8Ch]
		mov	ecx, [edx+0Ch]
		cmp	byte ptr [ecx],	0FFh
		jnz	short loc_4DA2A3
		mov	eax, [ebp-8Ch]
		mov	edx, [eax+0Ch]
		cmp	byte ptr [edx+1], 25h
		jz	loc_4DA5D5

loc_4DA2A3:				; CODE XREF: .text:004DA271j
					; .text:004DA280j ...
		mov	ecx, dword_619F18
		xor	ebx, ebx
		mov	[ebp-360h], ecx
		xor	ecx, ecx
		mov	eax, [ebp-8Ch]
		mov	edx, [eax+4]
		mov	[ebp-35Ch], edx
		mov	[ebp-358h], ecx
		mov	eax, [ebp-8Ch]
		mov	edx, [eax+8]
		mov	[ebp-354h], edx
		mov	ecx, [ebp-8Ch]
		mov	eax, [ecx+0Ch]
		mov	[ebp-350h], eax
		xor	eax, eax
		mov	edx, [ebp-8Ch]
		mov	ecx, [edx+10h]
		mov	[ebp-34Ch], ecx
		cmp	eax, [ebp-28h]
		jge	short loc_4DA316

loc_4DA2FC:				; CODE XREF: .text:004DA314j
		lea	edx, [eax+eax*2]
		mov	ecx, [ebp-80h]
		mov	edx, [ecx+edx*4]
		mov	ecx, [ebp-8Ch]
		cmp	edx, [ecx]
		jnz	short loc_4DA310
		inc	ebx

loc_4DA310:				; CODE XREF: .text:004DA30Dj
		inc	eax
		cmp	eax, [ebp-28h]
		jl	short loc_4DA2FC

loc_4DA316:				; CODE XREF: .text:004DA2FAj
		mov	[ebp-344h], ebx
		test	ebx, ebx
		jnz	short loc_4DA32D
		xor	eax, eax
		mov	[ebp-348h], eax
		jmp	loc_4DA41B
; ---------------------------------------------------------------------------

loc_4DA32D:				; CODE XREF: .text:004DA31Ej
		shl	ebx, 3
		push	ebx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-348h], eax
		cmp	dword ptr [ebp-348h], 0
		jnz	short loc_4DA359
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA359:				; CODE XREF: .text:004DA34Bj
		xor	eax, eax
		xor	ebx, ebx
		cmp	eax, [ebp-28h]
		jge	short loc_4DA3A3

loc_4DA362:				; CODE XREF: .text:004DA3A1j
		lea	edx, [eax+eax*2]
		mov	ecx, [ebp-80h]
		mov	edx, [ecx+edx*4]
		mov	ecx, [ebp-8Ch]
		cmp	edx, [ecx]
		jnz	short loc_4DA39D
		lea	edx, [eax+eax*2]
		mov	ecx, [ebp-80h]
		mov	edx, [ecx+edx*4+4]
		mov	ecx, [ebp-348h]
		mov	[ecx+ebx*8], edx
		lea	edx, [eax+eax*2]
		mov	ecx, [ebp-80h]
		mov	edx, [ecx+edx*4+8]
		mov	ecx, [ebp-348h]
		mov	[ecx+ebx*8+4], edx
		inc	ebx

loc_4DA39D:				; CODE XREF: .text:004DA373j
		inc	eax
		cmp	eax, [ebp-28h]
		jl	short loc_4DA362

loc_4DA3A3:				; CODE XREF: .text:004DA360j
		xor	edx, edx
		jmp	short loc_4DA414
; ---------------------------------------------------------------------------

loc_4DA3A7:				; CODE XREF: .text:004DA419j
		lea	eax, [edx+1]
		cmp	ebx, eax
		jle	short loc_4DA413

loc_4DA3AE:				; CODE XREF: .text:004DA411j
		mov	ecx, [ebp-348h]
		mov	esi, [ebp-348h]
		mov	ecx, [ecx+edx*8]
		cmp	ecx, [esi+eax*8]
		jbe	short loc_4DA40E
		mov	ecx, [ebp-348h]
		mov	esi, [ecx+edx*8]
		mov	[ebp-94h], esi
		mov	esi, [ecx+edx*8+4]
		mov	[ebp-90h], esi
		mov	ecx, [ebp-348h]
		mov	esi, [ebp-348h]
		mov	edi, [esi+eax*8]
		mov	[ecx+edx*8], edi
		mov	edi, [esi+eax*8+4]
		mov	[ecx+edx*8+4], edi
		mov	ecx, [ebp-348h]
		mov	esi, [ebp-94h]
		mov	[ecx+edx*8], esi
		mov	esi, [ebp-90h]
		mov	[ecx+edx*8+4], esi

loc_4DA40E:				; CODE XREF: .text:004DA3C0j
		inc	eax
		cmp	ebx, eax
		jg	short loc_4DA3AE

loc_4DA413:				; CODE XREF: .text:004DA3ACj
		inc	edx

loc_4DA414:				; CODE XREF: .text:004DA3A5j
		lea	eax, [ebx-1]
		cmp	edx, eax
		jl	short loc_4DA3A7

loc_4DA41B:				; CODE XREF: .text:004DA328j
		xor	eax, eax
		xor	ebx, ebx
		cmp	eax, [ebp-30h]
		jge	short loc_4DA444

loc_4DA424:				; CODE XREF: .text:004DA442j
		lea	edx, [eax+eax*2]
		lea	edx, [eax+edx*4]
		mov	ecx, [ebp-84h]
		mov	edx, [ecx+edx]
		mov	ecx, [ebp-8Ch]
		cmp	edx, [ecx]
		jnz	short loc_4DA43E
		inc	ebx

loc_4DA43E:				; CODE XREF: .text:004DA43Bj
		inc	eax
		cmp	eax, [ebp-30h]
		jl	short loc_4DA424

loc_4DA444:				; CODE XREF: .text:004DA422j
		mov	[ebp-33Ch], ebx
		test	ebx, ebx
		jnz	short loc_4DA45B
		xor	eax, eax
		mov	[ebp-340h], eax
		jmp	loc_4DA5AF
; ---------------------------------------------------------------------------

loc_4DA45B:				; CODE XREF: .text:004DA44Cj
		lea	eax, [ebx+ebx*8]
		push	eax
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-340h], eax
		cmp	dword ptr [ebp-340h], 0
		jnz	short loc_4DA487
		mov	dword ptr [ebp-10h], 9
		jmp	loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA487:				; CODE XREF: .text:004DA479j
		xor	eax, eax
		xor	ebx, ebx
		cmp	eax, [ebp-30h]
		jge	short loc_4DA4F4

loc_4DA490:				; CODE XREF: .text:004DA4F2j
		lea	edx, [eax+eax*2]
		mov	ecx, [ebp-84h]
		mov	esi, [ebp-8Ch]
		lea	edx, [eax+edx*4]
		mov	ecx, [ecx+edx]
		cmp	ecx, [esi]
		jnz	short loc_4DA4EE
		mov	ecx, [ebp-84h]
		lea	esi, [ebx+ebx*8]
		mov	edi, [ebp-340h]
		mov	ecx, [ecx+edx+4]
		mov	[edi+esi], ecx
		lea	esi, [ebx+ebx*8]
		mov	ecx, [ebp-84h]
		mov	edi, [ebp-340h]
		mov	ecx, [ecx+edx+8]
		mov	[edi+esi+4], ecx
		mov	ecx, [ebp-84h]
		mov	esi, [ebp-340h]
		mov	dl, [ecx+edx+0Ch]
		lea	ecx, [ebx+ebx*8]
		inc	ebx
		mov	[esi+ecx+8], dl

loc_4DA4EE:				; CODE XREF: .text:004DA4A7j
		inc	eax
		cmp	eax, [ebp-30h]
		jl	short loc_4DA490

loc_4DA4F4:				; CODE XREF: .text:004DA48Ej
		xor	edx, edx
		jmp	loc_4DA5A4
; ---------------------------------------------------------------------------

loc_4DA4FB:				; CODE XREF: .text:004DA5A9j
		lea	eax, [edx+1]
		cmp	ebx, eax
		jle	loc_4DA5A3

loc_4DA506:				; CODE XREF: .text:004DA59Dj
		lea	ecx, [edx+edx*8]
		mov	esi, [ebp-340h]
		mov	ecx, [esi+ecx]
		lea	esi, [eax+eax*8]
		mov	edi, [ebp-340h]
		cmp	ecx, [edi+esi]
		jbe	short loc_4DA59A
		lea	ecx, [edx+edx*8]
		mov	esi, [ebp-340h]
		mov	edi, ecx
		mov	ecx, [esi+edi]
		mov	[ebp-0A0h], ecx
		mov	ecx, [esi+edi+4]
		mov	[ebp-9Ch], ecx
		mov	cl, [esi+edi+8]
		mov	[ebp-98h], cl
		lea	ecx, [edx+edx*8]
		mov	esi, [ebp-340h]
		mov	edi, [ebp-340h]
		lea	ecx, [esi+ecx]
		lea	esi, [eax+eax*8]
		lea	esi, [edi+esi]
		mov	edi, ecx
		mov	ecx, [esi]
		mov	[edi], ecx
		mov	ecx, [esi+4]
		mov	[edi+4], ecx
		mov	cl, [esi+8]
		mov	[edi+8], cl
		lea	ecx, [edx+edx*8]
		mov	edi, ecx
		mov	esi, [ebp-340h]
		mov	ecx, [ebp-0A0h]
		mov	[esi+edi], ecx
		mov	ecx, [ebp-9Ch]
		mov	[esi+edi+4], ecx
		mov	cl, [ebp-98h]
		mov	[esi+edi+8], cl

loc_4DA59A:				; CODE XREF: .text:004DA51Ej
		inc	eax
		cmp	ebx, eax
		jg	loc_4DA506

loc_4DA5A3:				; CODE XREF: .text:004DA500j
		inc	edx

loc_4DA5A4:				; CODE XREF: .text:004DA4F6j
		lea	eax, [ebx-1]
		cmp	edx, eax
		jl	loc_4DA4FB

loc_4DA5AF:				; CODE XREF: .text:004DA456j
		lea	edx, [ebp-360h]
		push	edx		; item
		push	offset stru_5BE1AC ; sd
		call	Addsorteddata
		add	esp, 8
		inc	dword ptr [ebp-48h]
		mov	eax, [ebp-8Ch]
		mov	edx, [eax+4]
		add	dword_619F18, edx

loc_4DA5D5:				; CODE XREF: .text:004DA222j
					; .text:004DA261j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8Ch], 18h
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-20h]
		jl	loc_4DA216

loc_4DA5EB:				; CODE XREF: .text:004DA210j
		mov	eax, [ebp-18h]
		add	dword_61A720, eax
		mov	dword ptr [ebp-8], 1
		mov	edx, [ebp-64h]
		inc	edx
		add	[ebp-5Ch], edx
		mov	ecx, [ebp-5Ch]
		mov	eax, [ebp-60h]
		add	ecx, [ebp-60h]
		dec	eax
		not	eax
		dec	ecx
		and	ecx, eax
		mov	[ebp-5Ch], ecx
		jmp	short loc_4DA641
; ---------------------------------------------------------------------------

loc_4DA616:				; CODE XREF: .text:004D9273j
		mov	edx, [ebp-64h]
		inc	edx
		add	[ebp-5Ch], edx
		jmp	short loc_4DA641
; ---------------------------------------------------------------------------

loc_4DA61F:				; CODE XREF: .text:004D91BCj
					; .text:004D91C2j ...
		push	edi		; jumptable 004D91C2 default case
		push	offset aUnknownRecordT ; "Unknown record type 0x%02X"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp+14h]
		push	ecx		; buffer
		call	_swprintf
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		add	esp, 0Ch
		jmp	short loc_4DA64D
; ---------------------------------------------------------------------------

loc_4DA641:				; CODE XREF: .text:004D92DEj
					; .text:004D9382j ...
		mov	eax, [ebp-5Ch]
		cmp	eax, [ebp+0Ch]
		jb	loc_4D90F3

loc_4DA64D:				; CODE XREF: .text:004D9061j
					; .text:004D90AEj ...
		cmp	dword ptr [ebp-80h], 0
		jz	short loc_4DA65D
		mov	edx, [ebp-80h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4DA65D:				; CODE XREF: .text:004DA651j
		cmp	dword ptr [ebp-84h], 0
		jz	short loc_4DA673
		mov	ecx, [ebp-84h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_4DA673:				; CODE XREF: .text:004DA664j
		cmp	dword ptr [ebp-88h], 0
		jz	short loc_4DA689
		mov	eax, [ebp-88h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4DA689:				; CODE XREF: .text:004DA67Aj
		mov	edx, [ebp-10h]
		inc	edx
		cmp	edx, 0Ah	; switch 11 cases
		ja	loc_4DA7F4	; jumptable 004DA696 default case
		jmp	ds:off_4DA69D[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4DA69D	dd offset loc_4DA811	; DATA XREF: .text:004DA696r
		dd offset loc_4DA811	; jump table for switch	statement
		dd offset loc_4DA6CE
		dd offset loc_4DA6F0
		dd offset loc_4DA712
		dd offset loc_4DA734
		dd offset loc_4DA756
		dd offset loc_4DA778
		dd offset loc_4DA797
		dd offset loc_4DA7B6
		dd offset loc_4DA7D5
; ---------------------------------------------------------------------------
		jmp	loc_4DA811	; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA6CE:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aInvalidOmfPage ; jumptable 004DA696 case 2
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+14h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DA811	; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA6F0:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aInvalidOmfDict ; jumptable 004DA696 case 3
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DA811	; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA712:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aUnexpectedEn_0 ; jumptable 004DA696 case 4
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DA811	; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA734:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aOmfSyntaxError ; jumptable 004DA696 case 5
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+14h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DA811	; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA756:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset a16BitOmfFile ; jumptable 004DA696 case 6
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DA811	; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA778:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aImportLibrary ;	jumptable 004DA696 case	7
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DA811 ; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA797:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aContainsAbsolu ; jumptable 004DA696 case 8
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+14h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DA811 ; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA7B6:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aContainsUnsupp ; jumptable 004DA696 case 9
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DA811 ; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA7D5:				; CODE XREF: .text:004DA696j
					; DATA XREF: .text:off_4DA69Do
		push	offset aLowMemory_4 ; jumptable	004DA696 case 10
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DA811 ; jumptable 004DA696 cases 0,1
; ---------------------------------------------------------------------------

loc_4DA7F4:				; CODE XREF: .text:004DA690j
		push	offset aInternalErro_4 ; jumptable 004DA696 default case
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+14h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DA811:				; CODE XREF: .text:004DA696j
					; .text:004DA6C9j ...
		cmp	dword ptr [ebp-10h], 0 ; jumptable 004DA696 cases 0,1
		jnz	short loc_4DA81C
		mov	eax, [ebp-48h]
		jmp	short loc_4DA81F
; ---------------------------------------------------------------------------

loc_4DA81C:				; CODE XREF: .text:004DA815j
		or	eax, 0FFFFFFFFh

loc_4DA81F:				; CODE XREF: .text:004D8F91j
					; .text:004D8FC2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DA828:				; CODE XREF: .text:004DB2EBp
					; .text:004DB41Dp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD2Ch
		xor	eax, eax
		xor	edx, edx
		xor	ecx, ecx
		push	ebx
		push	esi
		push	edi
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], edx
		xor	eax, eax
		mov	[ebp-8], ecx
		mov	[ebp-18h], eax
		mov	[ebp-14h], eax
		push	44h		; n
		lea	edx, [ebp-2D4h]
		push	0		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword ptr [ebp+0Ch], 14h
		jnb	short loc_4DA870
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA870:				; CODE XREF: .text:004DA862j
		mov	ecx, [ebp+8]
		mov	[ebp-4Ch], ecx
		add	dword ptr [ebp-20h], 14h
		mov	eax, [ebp-4Ch]
		cmp	word ptr [eax+2], 0FFFFh
		jnz	short loc_4DA891
		mov	dword ptr [ebp-1Ch], 6
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA891:				; CODE XREF: .text:004DA883j
		mov	edx, [ebp-4Ch]
		cmp	word ptr [edx],	14Ch
		jz	short loc_4DA8B0
		mov	ecx, [ebp-4Ch]
		cmp	word ptr [ecx],	0
		jz	short loc_4DA8B0
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA8B0:				; CODE XREF: .text:004DA899j
					; .text:004DA8A2j
		mov	eax, [ebp-4Ch]
		cmp	word ptr [eax+10h], 0
		jz	short loc_4DA8DF
		mov	edx, [ebp-4Ch]
		movzx	ecx, word ptr [edx+10h]
		add	ecx, [ebp-20h]
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_4DA8D5
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA8D5:				; CODE XREF: .text:004DA8C7j
		mov	eax, [ebp-4Ch]
		movzx	edx, word ptr [eax+10h]
		add	[ebp-20h], edx

loc_4DA8DF:				; CODE XREF: .text:004DA8B8j
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_4DB06F
; ---------------------------------------------------------------------------

loc_4DA8E9:				; CODE XREF: .text:004DB079j
		mov	eax, [ebp-20h]
		add	eax, 28h
		cmp	eax, [ebp+0Ch]
		jbe	short loc_4DA900
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA900:				; CODE XREF: .text:004DA8F2j
		mov	edx, [ebp+8]
		add	edx, [ebp-20h]
		mov	[ebp-50h], edx
		mov	ecx, [ebp-50h]
		test	byte ptr [ecx+24h], 20h
		jz	loc_4DB068
		mov	eax, [ebp-50h]
		test	byte ptr [eax+25h], 8
		jnz	loc_4DB068
		mov	edx, [ebp-50h]
		cmp	dword ptr [edx+10h], 0
		jz	loc_4DB068
		mov	ecx, [ebp-50h]
		cmp	dword ptr [ecx+14h], 0
		jz	loc_4DB068
		mov	eax, [ebp-50h]
		mov	ecx, [ebp-50h]
		mov	edx, [eax+14h]
		add	edx, [ecx+10h]
		cmp	edx, [ebp+0Ch]
		jbe	short loc_4DA95A
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA95A:				; CODE XREF: .text:004DA94Cj
		mov	eax, [ebp-50h]
		mov	edx, [eax+14h]
		add	edx, [ebp+8]
		mov	[ebp-30h], edx
		mov	ecx, [ebp-50h]
		mov	eax, [ecx+10h]
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 6
		jnz	short loc_4DA998
		mov	edx, [ebp-50h]
		test	byte ptr [edx+25h], 10h
		jz	short loc_4DA998
		mov	ecx, [ebp-30h]
		cmp	byte ptr [ecx],	0FFh
		jnz	short loc_4DA998
		mov	eax, [ebp-30h]
		cmp	byte ptr [eax+1], 25h
		jnz	short loc_4DA998
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4DA99F
; ---------------------------------------------------------------------------

loc_4DA998:				; CODE XREF: .text:004DA973j
					; .text:004DA97Cj ...
		mov	dword ptr [ebp-18h], 1

loc_4DA99F:				; CODE XREF: .text:004DA996j
		cmp	dword ptr [ebp-28h], 8
		jb	loc_4DB068
		mov	edx, [ebp-4Ch]
		mov	eax, [ebp-4Ch]
		mov	ecx, [edx+8]
		mov	edx, [eax+0Ch]
		add	edx, edx
		lea	edx, [edx+edx*8]
		add	ecx, edx
		mov	[ebp-24h], ecx
		mov	ecx, [ebp-24h]
		add	ecx, 4
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_4DA9D6
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA9D6:				; CODE XREF: .text:004DA9C8j
		mov	eax, [ebp+8]
		add	eax, [ebp-24h]
		mov	[ebp-34h], eax
		mov	edx, [ebp-34h]
		mov	ecx, [edx]
		mov	[ebp-2Ch], ecx
		mov	eax, [ebp-24h]
		add	eax, [ebp-2Ch]
		cmp	eax, [ebp+0Ch]
		jbe	short loc_4DA9FE
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DA9FE:				; CODE XREF: .text:004DA9F0j
		mov	edx, [ebp-28h]
		push	edx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4DAA21
		mov	dword ptr [ebp-1Ch], 9
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DAA21:				; CODE XREF: .text:004DAA13j
		mov	eax, [ebp-28h]
		push	eax		; n
		push	0FFh		; c
		push	esi		; s
		call	_memset
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-10h], edx
		mov	ecx, [ebp-50h]
		movzx	eax, word ptr [ecx+20h]
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-50h]
		cmp	dword ptr [edx+18h], 0
		jz	loc_4DAAFD
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4DAAFD
		mov	ecx, [ebp-50h]
		test	byte ptr [ecx+27h], 1
		jz	short loc_4DAA6E
		mov	dword ptr [ebp-1Ch], 3
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DAA6E:				; CODE XREF: .text:004DAA60j
		mov	ecx, [ebp-0Ch]
		mov	eax, [ebp-50h]
		add	ecx, ecx
		mov	edx, [eax+18h]
		lea	ecx, [ecx+ecx*4]
		add	edx, ecx
		cmp	edx, [ebp+0Ch]
		jbe	short loc_4DAA8F
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DAA8F:				; CODE XREF: .text:004DAA81j
		mov	eax, [ebp-50h]
		mov	edx, [eax+18h]
		add	edx, [ebp+8]
		mov	[ebp-54h], edx
		xor	ebx, ebx
		cmp	ebx, [ebp-0Ch]
		jge	short loc_4DAAFD

loc_4DAAA2:				; CODE XREF: .text:004DAAFBj
		mov	eax, [ebp-54h]
		mov	edx, [ebp-50h]
		mov	ecx, [ebp-28h]
		sub	ecx, 4
		mov	eax, [eax]
		sub	eax, [edx+0Ch]
		cmp	eax, ecx
		jbe	short loc_4DAAC3
		mov	dword ptr [ebp-1Ch], 4
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DAAC3:				; CODE XREF: .text:004DAAB5j
		mov	edx, [ebp-54h]
		cmp	word ptr [edx+8], 0
		jz	short loc_4DAAF3
		push	4		; n
		push	0		; c
		add	eax, esi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebp-54h]
		cmp	word ptr [eax+8], 6
		jz	short loc_4DAAF0
		mov	ecx, [ebp-54h]
		cmp	word ptr [ecx+8], 14h
		jnz	short loc_4DAAF3

loc_4DAAF0:				; CODE XREF: .text:004DAAE4j
		inc	dword ptr [ebp-10h]

loc_4DAAF3:				; CODE XREF: .text:004DAACBj
					; .text:004DAAEEj
		inc	ebx
		add	dword ptr [ebp-54h], 0Ah
		cmp	ebx, [ebp-0Ch]
		jl	short loc_4DAAA2

loc_4DAAFD:				; CODE XREF: .text:004DAA49j
					; .text:004DAA53j ...
		cmp	byte ptr [esi],	0
		jz	loc_4DB068
		mov	edx, [ebp-30h]
		xor	ebx, ebx
		mov	ecx, edx
		mov	edx, esi
		xor	eax, eax
		jmp	short loc_4DAB21
; ---------------------------------------------------------------------------

loc_4DAB13:				; CODE XREF: .text:004DAB29j
		cmp	byte ptr [edx],	0
		jz	short loc_4DAB1E
		cmp	byte ptr [ecx],	0
		jz	short loc_4DAB1E
		inc	eax

loc_4DAB1E:				; CODE XREF: .text:004DAB16j
					; .text:004DAB1Bj
		inc	ebx
		inc	ecx
		inc	edx

loc_4DAB21:				; CODE XREF: .text:004DAB11j
		cmp	ebx, [ebp-28h]
		jnb	short loc_4DAB2B
		cmp	eax, 4
		jl	short loc_4DAB13

loc_4DAB2B:				; CODE XREF: .text:004DAB24j
		cmp	eax, 4
		jl	loc_4DB068
		cmp	dword ptr [ebp-28h], 20h
		jnb	short loc_4DAB55
		cmp	byte ptr [esi+1], 0
		jz	short loc_4DAB55
		mov	eax, [ebp-30h]
		cmp	byte ptr [eax],	0FFh
		jnz	short loc_4DAB55
		mov	ecx, [ebp-30h]
		cmp	byte ptr [ecx+1], 25h
		jz	loc_4DB068

loc_4DAB55:				; CODE XREF: .text:004DAB38j
					; .text:004DAB3Ej ...
		mov	eax, dword_619F18
		xor	ecx, ecx
		mov	[ebp-290h], eax
		mov	edx, [ebp-28h]
		mov	[ebp-28Ch], edx
		mov	[ebp-288h], ecx
		mov	eax, [ebp-50h]
		mov	edx, 1
		mov	ecx, [eax+24h]
		shr	ecx, 14h
		and	ecx, 0Fh
		dec	ecx
		shl	edx, cl
		mov	[ebp-284h], edx
		mov	eax, [ebp-28h]
		push	eax
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-280h], eax
		cmp	dword ptr [ebp-280h], 0
		jnz	short loc_4DABB7
		mov	dword ptr [ebp-1Ch], 9
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DABB7:				; CODE XREF: .text:004DABA9j
		mov	edx, [ebp-28h]
		push	edx		; n
		mov	ecx, [ebp-30h]
		push	ecx		; src
		mov	eax, [ebp-280h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	[ebp-27Ch], esi
		push	4		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	80h		; nexp
		push	4		; itemsize
		lea	edx, [ebp-2D4h]
		push	edx		; sd
		call	Createsorteddata
		add	esp, 18h
		xor	ebx, ebx
		jmp	short loc_4DAC51
; ---------------------------------------------------------------------------

loc_4DABF4:				; CODE XREF: .text:004DAC57j
		mov	eax, [ebp-4Ch]
		mov	ecx, ebx
		add	ecx, ecx
		mov	edx, [eax+8]
		add	edx, [ebp+8]
		lea	ecx, [ecx+ecx*8]
		add	edx, ecx
		mov	[ebp-58h], edx
		xor	edx, edx
		mov	eax, [ebp-58h]
		mov	ecx, [ebp-58h]
		mov	dl, [eax+11h]
		movsx	eax, word ptr [ecx+0Ch]
		add	ebx, edx
		mov	edx, [ebp-4]
		inc	edx
		cmp	eax, edx
		jnz	short loc_4DAC50
		mov	ecx, [ebp-58h]
		cmp	byte ptr [ecx+10h], 2
		jz	short loc_4DAC3D
		mov	eax, [ebp-58h]
		cmp	byte ptr [eax+10h], 3
		jnz	short loc_4DAC50
		mov	edx, [ebp-58h]
		cmp	dword ptr [edx+8], 0
		jz	short loc_4DAC50

loc_4DAC3D:				; CODE XREF: .text:004DAC29j
		lea	ecx, [ebp-58h]
		push	ecx		; item
		lea	eax, [ebp-2D4h]
		push	eax		; sd
		call	Addsorteddata
		add	esp, 8

loc_4DAC50:				; CODE XREF: .text:004DAC20j
					; .text:004DAC32j ...
		inc	ebx

loc_4DAC51:				; CODE XREF: .text:004DABF2j
		mov	edx, [ebp-4Ch]
		cmp	ebx, [edx+0Ch]
		jb	short loc_4DABF4
		mov	ecx, [ebp-2D4h]
		mov	[ebp-274h], ecx
		cmp	dword ptr [ebp-274h], 0
		jnz	short loc_4DAC7B
		xor	eax, eax
		mov	[ebp-278h], eax
		jmp	loc_4DADCC
; ---------------------------------------------------------------------------

loc_4DAC7B:				; CODE XREF: .text:004DAC6Cj
		mov	edx, [ebp-274h]
		shl	edx, 3
		push	edx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-278h], eax
		cmp	dword ptr [ebp-278h], 0
		jnz	short loc_4DACAD
		mov	dword ptr [ebp-1Ch], 9
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DACAD:				; CODE XREF: .text:004DAC9Fj
		xor	ebx, ebx
		jmp	loc_4DAD5A
; ---------------------------------------------------------------------------

loc_4DACB4:				; CODE XREF: .text:004DAD60j
		push	ebx		; index
		lea	eax, [ebp-2D4h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DACD4
		mov	dword ptr [ebp-1Ch], 63h
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DACD4:				; CODE XREF: .text:004DACC6j
		mov	edx, [eax]
		mov	[ebp-58h], edx
		mov	ecx, [ebp-58h]
		cmp	dword ptr [ecx], 0
		jz	short loc_4DACFD
		push	100h		; nw
		lea	eax, [ebp-258h]
		push	eax		; w
		push	8		; nt
		mov	edx, [ebp-58h]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_4DAD23
; ---------------------------------------------------------------------------

loc_4DACFD:				; CODE XREF: .text:004DACDFj
		lea	ecx, [ebp-258h]
		push	100h		; nw
		push	ecx		; w
		push	100h		; nt
		mov	eax, [ebp+8]
		mov	edx, [ebp-58h]
		add	eax, [ebp-24h]
		add	eax, [edx+4]
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_4DAD23:				; CODE XREF: .text:004DACFBj
		lea	ecx, [ebp-258h]
		mov	eax, dword_61A720
		push	ecx		; s
		push	4Bh		; type
		push	eax		; _addr
		call	QuickinsertnameW
		mov	edx, [ebp-58h]
		mov	eax, [ebp-278h]
		add	esp, 0Ch
		mov	ecx, [edx+8]
		mov	[eax+ebx*8], ecx
		mov	edx, dword_61A720
		mov	[eax+ebx*8+4], edx
		inc	dword_61A720
		inc	ebx

loc_4DAD5A:				; CODE XREF: .text:004DACAFj
		cmp	ebx, [ebp-274h]
		jl	loc_4DACB4
		xor	edx, edx
		jmp	short loc_4DADC1
; ---------------------------------------------------------------------------

loc_4DAD6A:				; CODE XREF: .text:004DADCAj
		lea	eax, [edx+1]
		jmp	short loc_4DADB8
; ---------------------------------------------------------------------------

loc_4DAD6F:				; CODE XREF: .text:004DADBEj
		mov	ebx, [ebp-278h]
		mov	esi, [ebp-278h]
		mov	ecx, [ebx+edx*8]
		cmp	ecx, [esi+eax*8]
		jbe	short loc_4DADB7
		mov	ecx, [ebp-278h]
		mov	esi, [ecx+edx*8]
		mov	[ebp-3Ch], esi
		mov	esi, [ecx+edx*8+4]
		mov	[ebp-38h], esi
		mov	ecx, [ebp-278h]
		mov	esi, [ecx+eax*8]
		mov	[ebx+edx*8], esi
		mov	esi, [ecx+eax*8+4]
		mov	[ebx+edx*8+4], esi
		mov	ecx, [ebp-3Ch]
		mov	[ebx+edx*8], ecx
		mov	ecx, [ebp-38h]
		mov	[ebx+edx*8+4], ecx

loc_4DADB7:				; CODE XREF: .text:004DAD81j
		inc	eax

loc_4DADB8:				; CODE XREF: .text:004DAD6Dj
		cmp	eax, [ebp-274h]
		jl	short loc_4DAD6F
		inc	edx

loc_4DADC1:				; CODE XREF: .text:004DAD68j
		mov	eax, [ebp-274h]
		dec	eax
		cmp	edx, eax
		jl	short loc_4DAD6A

loc_4DADCC:				; CODE XREF: .text:004DAC76j
		push	4		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	80h		; nexp
		push	4		; itemsize
		lea	edx, [ebp-2D4h]
		push	edx		; sd
		call	Createsorteddata
		add	esp, 18h
		mov	eax, [ebp-50h]
		mov	edx, [eax+18h]
		add	edx, [ebp+8]
		mov	[ebp-54h], edx
		xor	ebx, ebx
		cmp	ebx, [ebp-0Ch]
		jge	short loc_4DAE56

loc_4DADFB:				; CODE XREF: .text:004DAE54j
		mov	eax, [ebp-54h]
		mov	ax, [eax+8]
		cmp	ax, 6
		jz	short loc_4DAE0E
		cmp	ax, 14h
		jnz	short loc_4DAE4C

loc_4DAE0E:				; CODE XREF: .text:004DAE06j
		mov	edx, [ebp-4Ch]
		mov	eax, [ebp-54h]
		mov	ecx, [edx+8]
		mov	edx, [eax+4]
		add	edx, edx
		add	ecx, [ebp+8]
		lea	edx, [edx+edx*8]
		add	ecx, edx
		mov	[ebp-58h], ecx
		mov	ecx, [ebp-58h]
		cmp	byte ptr [ecx+10h], 3
		jnz	short loc_4DAE39
		mov	eax, [ebp-58h]
		cmp	dword ptr [eax+8], 0
		jz	short loc_4DAE4C

loc_4DAE39:				; CODE XREF: .text:004DAE2Ej
		lea	edx, [ebp-54h]
		push	edx		; item
		lea	ecx, [ebp-2D4h]
		push	ecx		; sd
		call	Addsorteddata
		add	esp, 8

loc_4DAE4C:				; CODE XREF: .text:004DAE0Cj
					; .text:004DAE37j
		inc	ebx
		add	dword ptr [ebp-54h], 0Ah
		cmp	ebx, [ebp-0Ch]
		jl	short loc_4DADFB

loc_4DAE56:				; CODE XREF: .text:004DADF9j
		mov	eax, [ebp-2D4h]
		mov	[ebp-26Ch], eax
		cmp	dword ptr [ebp-26Ch], 0
		jnz	short loc_4DAE78
		xor	edx, edx
		mov	[ebp-270h], edx
		jmp	loc_4DB048
; ---------------------------------------------------------------------------

loc_4DAE78:				; CODE XREF: .text:004DAE69j
		mov	ecx, [ebp-26Ch]
		lea	ecx, [ecx+ecx*8]
		push	ecx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-270h], eax
		cmp	dword ptr [ebp-270h], 0
		jnz	short loc_4DAEAA
		mov	dword ptr [ebp-1Ch], 9
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DAEAA:				; CODE XREF: .text:004DAE9Cj
		xor	ebx, ebx
		jmp	loc_4DAF9A
; ---------------------------------------------------------------------------

loc_4DAEB1:				; CODE XREF: .text:004DAFA0j
		push	ebx		; index
		lea	eax, [ebp-2D4h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DAED1
		mov	dword ptr [ebp-1Ch], 63h
		jmp	loc_4DB098
; ---------------------------------------------------------------------------

loc_4DAED1:				; CODE XREF: .text:004DAEC3j
		mov	edx, [eax]
		mov	[ebp-54h], edx
		mov	ecx, [ebp-54h]
		mov	edx, [ebp-50h]
		mov	eax, [ecx]
		lea	ecx, [ebx+ebx*8]
		sub	eax, [edx+0Ch]
		mov	edx, [ebp-270h]
		mov	[edx+ecx], eax
		mov	eax, [ebp-4Ch]
		mov	ecx, [eax+8]
		mov	eax, [ebp-54h]
		add	ecx, [ebp+8]
		mov	edx, [eax+4]
		add	edx, edx
		lea	edx, [edx+edx*8]
		add	ecx, edx
		mov	[ebp-58h], ecx
		mov	ecx, [ebp-58h]
		cmp	dword ptr [ecx], 0
		jz	short loc_4DAF2A
		push	100h		; nw
		lea	eax, [ebp-258h]
		push	eax		; w
		push	8		; nt
		mov	edx, [ebp-58h]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_4DAF50
; ---------------------------------------------------------------------------

loc_4DAF2A:				; CODE XREF: .text:004DAF0Cj
		lea	ecx, [ebp-258h]
		push	100h		; nw
		push	ecx		; w
		push	100h		; nt
		mov	eax, [ebp+8]
		mov	edx, [ebp-58h]
		add	eax, [ebp-24h]
		add	eax, [edx+4]
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_4DAF50:				; CODE XREF: .text:004DAF28j
		lea	ecx, [ebp-258h]
		mov	eax, dword_61A720
		push	ecx		; s
		push	4Bh		; type
		push	eax		; _addr
		call	QuickinsertnameW
		lea	edx, [ebx+ebx*8]
		mov	ecx, [ebp-270h]
		mov	eax, dword_61A720
		add	esp, 0Ch
		mov	[ecx+edx+4], eax
		mov	al, 1
		mov	esi, [ebp-54h]
		mov	ecx, [ebp-270h]
		inc	dword_61A720
		cmp	word ptr [esi+8], 6
		lea	edx, [ebx+ebx*8]
		jz	short loc_4DAF95
		dec	eax

loc_4DAF95:				; CODE XREF: .text:004DAF92j
		mov	[ecx+edx+8], al
		inc	ebx

loc_4DAF9A:				; CODE XREF: .text:004DAEACj
		cmp	ebx, [ebp-26Ch]
		jl	loc_4DAEB1
		xor	edx, edx
		jmp	loc_4DB039
; ---------------------------------------------------------------------------

loc_4DAFAD:				; CODE XREF: .text:004DB042j
		lea	eax, [edx+1]
		jmp	short loc_4DB02C
; ---------------------------------------------------------------------------

loc_4DAFB2:				; CODE XREF: .text:004DB032j
		lea	ebx, [edx+edx*8]
		mov	ecx, [ebp-270h]
		lea	esi, [eax+eax*8]
		mov	edi, [ebp-270h]
		mov	ecx, [ecx+ebx]
		cmp	ecx, [edi+esi]
		jbe	short loc_4DB02B
		mov	ecx, [ebp-270h]
		mov	esi, ecx
		mov	ecx, [esi+ebx]
		mov	[ebp-48h], ecx
		mov	ecx, [esi+ebx+4]
		mov	[ebp-44h], ecx
		mov	cl, [esi+ebx+8]
		lea	esi, [eax+eax*8]
		mov	[ebp-40h], cl
		mov	edi, [ebp-270h]
		mov	ecx, [ebp-270h]
		lea	esi, [edi+esi]
		mov	edi, ecx
		mov	ecx, [esi]
		mov	[edi+ebx], ecx
		mov	ecx, [esi+4]
		mov	[edi+ebx+4], ecx
		mov	cl, [esi+8]
		mov	[edi+ebx+8], cl
		mov	ecx, [ebp-270h]
		mov	esi, ecx
		mov	ecx, [ebp-48h]
		mov	[esi+ebx], ecx
		mov	ecx, [ebp-44h]
		mov	[esi+ebx+4], ecx
		mov	cl, [ebp-40h]
		mov	[esi+ebx+8], cl

loc_4DB02B:				; CODE XREF: .text:004DAFCAj
		inc	eax

loc_4DB02C:				; CODE XREF: .text:004DAFB0j
		cmp	eax, [ebp-26Ch]
		jl	loc_4DAFB2
		inc	edx

loc_4DB039:				; CODE XREF: .text:004DAFA8j
		mov	eax, [ebp-26Ch]
		dec	eax
		cmp	edx, eax
		jl	loc_4DAFAD

loc_4DB048:				; CODE XREF: .text:004DAE73j
		lea	edx, [ebp-290h]
		push	edx		; item
		push	offset stru_5BE1AC ; sd
		call	Addsorteddata
		add	esp, 8
		inc	dword ptr [ebp-8]
		mov	eax, [ebp-28h]
		add	dword_619F18, eax

loc_4DB068:				; CODE XREF: .text:004DA910j
					; .text:004DA91Dj ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-20h], 28h

loc_4DB06F:				; CODE XREF: .text:004DA8E4j
		mov	edx, [ebp-4Ch]
		movzx	ecx, word ptr [edx+2]
		cmp	ecx, [ebp-4]
		jg	loc_4DA8E9
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4DB098
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4DB098
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4DB098
		mov	dword ptr [ebp-1Ch], 6

loc_4DB098:				; CODE XREF: .text:004DA86Bj
					; .text:004DA88Cj ...
		lea	eax, [ebp-2D4h]
		push	eax		; sd
		call	Destroysorteddata
		pop	ecx
		mov	edx, [ebp-1Ch]
		inc	edx
		cmp	edx, 0Ah	; switch 11 cases
		ja	loc_4DB188	; jumptable 004DB0B2 default case
		jmp	ds:off_4DB0B9[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4DB0B9	dd offset loc_4DB1A5	; DATA XREF: .text:004DB0B2r
		dd offset loc_4DB1A5	; jump table for switch	statement
		dd offset loc_4DB0EA
		dd offset loc_4DB188
		dd offset loc_4DB10C
		dd offset loc_4DB12B
		dd offset loc_4DB188
		dd offset loc_4DB14A
		dd offset loc_4DB188
		dd offset loc_4DB188
		dd offset loc_4DB169
; ---------------------------------------------------------------------------
		jmp	loc_4DB1A5	; jumptable 004DB0B2 cases 0,1
; ---------------------------------------------------------------------------

loc_4DB0EA:				; CODE XREF: .text:004DB0B2j
					; DATA XREF: .text:off_4DB0B9o
		push	offset aFileIsNotFor80 ; jumptable 004DB0B2 case 2
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+14h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DB1A5	; jumptable 004DB0B2 cases 0,1
; ---------------------------------------------------------------------------

loc_4DB10C:				; CODE XREF: .text:004DB0B2j
					; DATA XREF: .text:off_4DB0B9o
		push	offset aCoffSectionIsT ; jumptable 004DB0B2 case 4
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DB1A5 ; jumptable 004DB0B2 cases 0,1
; ---------------------------------------------------------------------------

loc_4DB12B:				; CODE XREF: .text:004DB0B2j
					; DATA XREF: .text:off_4DB0B9o
		push	offset aCoffSyntaxErro ; jumptable 004DB0B2 case 5
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DB1A5 ; jumptable 004DB0B2 cases 0,1
; ---------------------------------------------------------------------------

loc_4DB14A:				; CODE XREF: .text:004DB0B2j
					; DATA XREF: .text:off_4DB0B9o
		push	offset aImportLibrary ;	jumptable 004DB0B2 case	7
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+14h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DB1A5 ; jumptable 004DB0B2 cases 0,1
; ---------------------------------------------------------------------------

loc_4DB169:				; CODE XREF: .text:004DB0B2j
					; DATA XREF: .text:off_4DB0B9o
		push	offset aLowMemory_4 ; jumptable	004DB0B2 case 10
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DB1A5 ; jumptable 004DB0B2 cases 0,1
; ---------------------------------------------------------------------------

loc_4DB188:				; CODE XREF: .text:004DB0ACj
					; .text:004DB0B2j
					; DATA XREF: ...
		push	offset aInternalErro_4 ; jumptable 004DB0B2 default case
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DB1A5:				; CODE XREF: .text:004DB0B2j
					; .text:004DB0E5j ...
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 004DB0B2 cases 0,1
		jnz	short loc_4DB1B0
		mov	eax, [ebp-8]
		jmp	short loc_4DB1B3
; ---------------------------------------------------------------------------

loc_4DB1B0:				; CODE XREF: .text:004DB1A9j
		or	eax, 0FFFFFFFFh

loc_4DB1B3:				; CODE XREF: .text:004DB1AEj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4DB1BC(void *s1, int,	int, int)
loc_4DB1BC:				; CODE XREF: .text:004DB404p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4DB1D3
		or	eax, 0FFFFFFFFh
		jmp	loc_4DB37D
; ---------------------------------------------------------------------------

loc_4DB1D3:				; CODE XREF: .text:004DB1C9j
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4DB1DF
		cmp	dword ptr [ebp+0Ch], 3
		ja	short loc_4DB204

loc_4DB1DF:				; CODE XREF: .text:004DB1D7j
		push	offset aInternalErro_4 ; "Internal error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_4DB37D
; ---------------------------------------------------------------------------

loc_4DB204:				; CODE XREF: .text:004DB1DDj
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-0Ch], edx
		mov	[ebp-10h], ecx
		push	8		; n
		push	offset aArch	; "!<arch>\n"
		mov	eax, [ebp+8]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4DB231
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4DB323
; ---------------------------------------------------------------------------

loc_4DB231:				; CODE XREF: .text:004DB223j
		mov	dword ptr [ebp-14h], 8
		mov	edx, [ebp-14h]
		add	edx, 3Ch
		cmp	edx, [ebp+0Ch]
		jbe	short loc_4DB24F
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4DB323
; ---------------------------------------------------------------------------

loc_4DB24F:				; CODE XREF: .text:004DB241j
		xor	ecx, ecx
		mov	[ebp-8], ecx

loc_4DB254:				; CODE XREF: .text:004DB31Ej
		mov	dword ptr [ebp-4], 0Ah
		mov	eax, [ebp+8]
		mov	edx, [ebp-14h]
		xor	esi, esi
		xor	edi, edi
		lea	ecx, [eax+edx+30h]
		mov	[ebp-18h], ecx
		cmp	edi, [ebp-4]
		jge	short loc_4DB29A

loc_4DB271:				; CODE XREF: .text:004DB298j
		mov	eax, [ebp-18h]
		xor	ebx, ebx
		mov	bl, [eax]
		push	ebx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jz	short loc_4DB29A
		mov	eax, esi
		lea	edx, [ebx-30h]
		add	eax, eax
		inc	edi
		inc	dword ptr [ebp-18h]
		lea	eax, [eax+eax*4]
		add	eax, edx
		cmp	edi, [ebp-4]
		mov	esi, eax
		jl	short loc_4DB271

loc_4DB29A:				; CODE XREF: .text:004DB26Fj
					; .text:004DB281j
		test	edi, edi
		jz	short loc_4DB2A8
		cmp	edi, [ebp-4]
		jge	short loc_4DB2B1
		cmp	ebx, 20h
		jz	short loc_4DB2B1

loc_4DB2A8:				; CODE XREF: .text:004DB29Cj
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_4DB323
; ---------------------------------------------------------------------------

loc_4DB2B1:				; CODE XREF: .text:004DB2A1j
					; .text:004DB2A6j
		add	dword ptr [ebp-14h], 3Ch
		mov	ecx, [ebp-14h]
		add	ecx, esi
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_4DB2C8
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_4DB323
; ---------------------------------------------------------------------------

loc_4DB2C8:				; CODE XREF: .text:004DB2BDj
		cmp	dword ptr [ebp-8], 3
		jl	short loc_4DB303
		test	esi, esi
		jnz	short loc_4DB2DB
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_4DB323
; ---------------------------------------------------------------------------

loc_4DB2DB:				; CODE XREF: .text:004DB2D0j
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		push	esi
		mov	ecx, [ebp+8]
		add	ecx, [ebp-14h]
		push	ecx
		call	loc_4DA828
		add	esp, 10h
		test	eax, eax
		jge	short loc_4DB300
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4DB323
; ---------------------------------------------------------------------------

loc_4DB300:				; CODE XREF: .text:004DB2F5j
		add	[ebp-0Ch], eax

loc_4DB303:				; CODE XREF: .text:004DB2CCj
		add	[ebp-14h], esi
		mov	eax, [ebp-14h]
		inc	eax
		and	eax, 0FFFFFFFEh
		mov	[ebp-14h], eax
		mov	edx, [ebp-14h]
		add	edx, 3Ch
		cmp	edx, [ebp+0Ch]
		ja	short loc_4DB323
		inc	dword ptr [ebp-8]
		jmp	loc_4DB254
; ---------------------------------------------------------------------------

loc_4DB323:				; CODE XREF: .text:004DB22Cj
					; .text:004DB24Aj ...
		mov	ecx, [ebp-10h]
		sub	ecx, 0FFFFFFFFh
		jz	short loc_4DB36F
		dec	ecx
		jz	short loc_4DB36F
		dec	ecx
		jz	short loc_4DB333
		jmp	short loc_4DB352
; ---------------------------------------------------------------------------

loc_4DB333:				; CODE XREF: .text:004DB32Fj
		push	offset aCoffSyntaxErro ; "COFF syntax error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DB36F
; ---------------------------------------------------------------------------

loc_4DB352:				; CODE XREF: .text:004DB331j
		push	offset aInternalErro_4 ; "Internal error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DB36F:				; CODE XREF: .text:004DB329j
					; .text:004DB32Cj ...
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4DB37A
		mov	eax, [ebp-0Ch]
		jmp	short loc_4DB37D
; ---------------------------------------------------------------------------

loc_4DB37A:				; CODE XREF: .text:004DB373j
		or	eax, 0FFFFFFFFh

loc_4DB37D:				; CODE XREF: .text:004DB1CEj
					; .text:004DB1FFj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4DB384(wchar_t *path,	wchar_t	*buffer)
loc_4DB384:				; CODE XREF: .text:004DC99Dp
					; .text:004DCB12p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		test	edi, edi
		jnz	short loc_4DB39D
		lea	edi, [ebp-204h]

loc_4DB39D:				; CODE XREF: .text:004DB395j
		lea	eax, [ebp-4]
		push	eax		; int
		push	10h		; psize
		push	0		; fixsize
		mov	edx, [ebp+8]
		push	edx		; path
		call	Readfile
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4DB3D9
		push	offset aUnableToReadOb ; "Unable to read object	file"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_4DB48A
; ---------------------------------------------------------------------------

loc_4DB3D9:				; CODE XREF: .text:004DB3B5j
		mov	al, [ebx]
		cmp	al, 80h
		jz	short loc_4DB3E3
		cmp	al, 0F0h
		jnz	short loc_4DB3F7

loc_4DB3E3:				; CODE XREF: .text:004DB3DDj
		push	edi		; buffer
		push	0		; int
		mov	edx, [ebp-4]
		push	edx		; int
		push	ebx		; int
		call	loc_4D8F7C
		add	esp, 10h
		mov	esi, eax
		jmp	short loc_4DB446
; ---------------------------------------------------------------------------

loc_4DB3F7:				; CODE XREF: .text:004DB3E1j
		cmp	byte ptr [ebx],	21h
		jnz	short loc_4DB410
		push	edi		; int
		push	0		; int
		mov	eax, [ebp-4]
		push	eax		; int
		push	ebx		; s1
		call	loc_4DB1BC
		add	esp, 10h
		mov	esi, eax
		jmp	short loc_4DB446
; ---------------------------------------------------------------------------

loc_4DB410:				; CODE XREF: .text:004DB3FAj
		cmp	byte ptr [ebx],	4Ch
		jnz	short loc_4DB429
		push	edi
		push	0
		mov	eax, [ebp-4]
		push	eax
		push	ebx
		call	loc_4DA828
		add	esp, 10h
		mov	esi, eax
		jmp	short loc_4DB446
; ---------------------------------------------------------------------------

loc_4DB429:				; CODE XREF: .text:004DB413j
		push	offset aUnrecognizedOb ; "Unrecognized object file format"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	esi, 0FFFFFFFFh

loc_4DB446:				; CODE XREF: .text:004DB3F5j
					; .text:004DB40Ej ...
		cmp	esi, 1
		jnz	short loc_4DB467
		push	offset a1Image	; "1 image"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DB481
; ---------------------------------------------------------------------------

loc_4DB467:				; CODE XREF: .text:004DB449j
		test	esi, esi
		jl	short loc_4DB481
		push	esi
		push	offset aIImages	; "%i images"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4DB481:				; CODE XREF: .text:004DB465j
					; .text:004DB469j
		push	ebx		; data
		call	Memfree
		pop	ecx
		mov	eax, esi

loc_4DB48A:				; CODE XREF: .text:004DB3D4j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DB494:				; CODE XREF: .text:004DC9BEp
					; .text:004DCB33p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF4h
		push	ebx
		push	esi
		push	edi
		call	Mergequickdata
		push	1		; sort
		push	offset stru_5BE1AC ; sd
		call	Sortsorteddata
		add	esp, 8
		push	1		; confirm
		push	offset stru_5BE1AC ; sd
		call	Confirmsorteddata
		add	esp, 8
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4DB6D6
; ---------------------------------------------------------------------------

loc_4DB4CD:				; CODE XREF: .text:004DB6DFj
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset stru_5BE1AC ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4DB6D3
		test	byte ptr [esi+9], 2
		jz	loc_4DB6D3
		mov	eax, [esi+4]
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-4]
		inc	edx
		mov	[ebp-8], edx
		jmp	loc_4DB6C4
; ---------------------------------------------------------------------------

loc_4DB504:				; CODE XREF: .text:004DB6CDj
		mov	ecx, [ebp-8]
		push	ecx		; index
		push	offset stru_5BE1AC ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	loc_4DB6C1
		mov	eax, [edi+4]
		cmp	eax, [ebp-0Ch]
		jnz	loc_4DB6D3
		test	byte ptr [edi+9], 2
		jz	loc_4DB6C1
		mov	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [edi+10h]
		push	ecx		; s2
		mov	eax, [esi+10h]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4DB6C1
		mov	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [edi+14h]
		push	ecx		; s2
		mov	eax, [esi+14h]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4DB6C1
		cmp	dword ptr [esi+1Ch], 0
		jz	short loc_4DB579
		cmp	dword ptr [edi+1Ch], 0
		jnz	short loc_4DB58C

loc_4DB579:				; CODE XREF: .text:004DB571j
		and	dword ptr [esi+8], 0FFFFFDFFh
		and	dword ptr [edi+8], 0FFFFFDFFh
		jmp	loc_4DB6C1
; ---------------------------------------------------------------------------

loc_4DB58C:				; CODE XREF: .text:004DB577j
		push	100h		; nname
		lea	edx, [ebp-20Ch]
		push	edx		; _name
		push	4Bh		; type
		mov	ecx, [esi+18h]
		mov	eax, [ecx+4]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		lea	edx, [ebp-40Ch]
		push	edx		; _name
		push	4Bh		; type
		mov	ecx, [edi+18h]
		mov	eax, [ecx+4]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		lea	edx, [ebp-40Ch]
		push	edx		; s2
		lea	ecx, [ebp-20Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DB5EC
		and	dword ptr [edi+8], 0FFFFFDFFh
		jmp	loc_4DB6C1
; ---------------------------------------------------------------------------

loc_4DB5EC:				; CODE XREF: .text:004DB5DEj
		mov	eax, [edi+24h]
		cmp	eax, [esi+24h]
		jz	short loc_4DB607
		and	dword ptr [esi+8], 0FFFFFDFFh
		and	dword ptr [edi+8], 0FFFFFDFFh
		jmp	loc_4DB6C1
; ---------------------------------------------------------------------------

loc_4DB607:				; CODE XREF: .text:004DB5F2j
		xor	ebx, ebx
		jmp	loc_4DB695
; ---------------------------------------------------------------------------

loc_4DB60E:				; CODE XREF: .text:004DB698j
		lea	eax, [ebx+ebx*8]
		mov	edx, [esi+20h]
		mov	ecx, [edx+eax]
		lea	eax, [ebx+ebx*8]
		mov	edx, [edi+20h]
		cmp	ecx, [edx+eax]
		jnz	short loc_4DB694
		lea	ecx, [ebx+ebx*8]
		mov	eax, [esi+20h]
		mov	edx, [eax+ecx+4]
		lea	ecx, [ebx+ebx*8]
		mov	eax, [edi+20h]
		cmp	edx, [eax+ecx+4]
		jz	short loc_4DB694
		push	100h		; nname
		lea	edx, [ebp-20Ch]
		push	edx		; _name
		push	4Bh		; type
		lea	ecx, [ebx+ebx*8]
		mov	eax, [esi+20h]
		mov	edx, [eax+ecx+4]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		lea	ecx, [ebp-40Ch]
		push	ecx		; _name
		push	4Bh		; type
		lea	eax, [ebx+ebx*8]
		mov	edx, [edi+20h]
		mov	ecx, [edx+eax+4]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		lea	eax, [ebp-40Ch]
		push	eax		; s2
		lea	edx, [ebp-20Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DB69E

loc_4DB694:				; CODE XREF: .text:004DB620j
					; .text:004DB636j
		inc	ebx

loc_4DB695:				; CODE XREF: .text:004DB609j
		cmp	ebx, [esi+24h]
		jl	loc_4DB60E

loc_4DB69E:				; CODE XREF: .text:004DB692j
		cmp	ebx, [esi+24h]
		jl	short loc_4DB6B3
		and	dword ptr [esi+8], 0FFFFFDFFh
		and	dword ptr [edi+8], 0FFFFFDFFh
		jmp	short loc_4DB6C1
; ---------------------------------------------------------------------------

loc_4DB6B3:				; CODE XREF: .text:004DB6A1j
		or	dword ptr [esi+8], 10000h
		or	dword ptr [edi+8], 10000h

loc_4DB6C1:				; CODE XREF: .text:004DB519j
					; .text:004DB52Fj ...
		inc	dword ptr [ebp-8]

loc_4DB6C4:				; CODE XREF: .text:004DB4FFj
		mov	ecx, [ebp-8]
		cmp	ecx, stru_5BE1AC.n
		jl	loc_4DB504

loc_4DB6D3:				; CODE XREF: .text:004DB4E2j
					; .text:004DB4ECj ...
		inc	dword ptr [ebp-4]

loc_4DB6D6:				; CODE XREF: .text:004DB4C8j
		mov	eax, stru_5BE1AC.n
		dec	eax
		cmp	eax, [ebp-4]
		jg	loc_4DB4CD
		push	offset stru_5BE1AC ; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4DB6F8(wchar_t *path,	wchar_t	*buffer)
loc_4DB6F8:				; CODE XREF: .text:004DCBB2p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD94h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	0		; version
		push	offset aImageLibraryFi ; "Image	library	file v2.01"
		push	ebx		; _name
		call	Createtaggedfile
		add	esp, 0Ch
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4DB77D
		push	offset aUnableToCrea_9 ; "Unable to create '"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		push	ebx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	ecx, 100h
		sub	ecx, edi
		push	(offset	aUnableToCrea_9+22h) ; src
		push	ecx		; n
		add	edi, edi
		add	edi, [ebp+0Ch]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_4DBBB3
; ---------------------------------------------------------------------------

loc_4DB77D:				; CODE XREF: .text:004DB71Ej
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-8], edx
		mov	[ebp-4], ecx
		mov	eax, n
		push	offset byte_5BE1F0 ; data
		push	eax		; size
		push	0A6E6753h	; tag
		mov	edx, [ebp-1Ch]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4DB7B3
		mov	dword ptr [ebp-8], 1
		jmp	loc_4DBB08
; ---------------------------------------------------------------------------

loc_4DB7B3:				; CODE XREF: .text:004DB7A5j
		push	44h		; n
		push	0		; c
		lea	ecx, [ebp-26Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		push	4		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	1000h		; nexp
		push	4		; itemsize
		lea	eax, [ebp-26Ch]
		push	eax		; sd
		call	Createsorteddata
		add	esp, 18h
		test	eax, eax
		jz	short loc_4DB7F2
		mov	dword ptr [ebp-8], 2
		jmp	loc_4DBB08
; ---------------------------------------------------------------------------

loc_4DB7F2:				; CODE XREF: .text:004DB7E4j
		xor	esi, esi
		jmp	short loc_4DB851
; ---------------------------------------------------------------------------

loc_4DB7F6:				; CODE XREF: .text:004DB857j
		push	esi		; index
		push	offset stru_619CA4.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4DB850
		push	208h		; nt
		lea	edx, [ebp-228h]
		push	edx		; t
		push	104h		; nw
		add	eax, 0Ch
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	edi, eax
		lea	eax, [ebp-228h]
		push	eax		; data
		push	edi		; size
		push	0A6E664Fh	; tag
		mov	edx, [ebp-1Ch]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4DB850
		mov	dword ptr [ebp-8], 1
		jmp	loc_4DBB08
; ---------------------------------------------------------------------------

loc_4DB850:				; CODE XREF: .text:004DB806j
					; .text:004DB842j
		inc	esi

loc_4DB851:				; CODE XREF: .text:004DB7F4j
		cmp	esi, stru_619CA4.sorted.n
		jl	short loc_4DB7F6
		xor	esi, esi
		jmp	loc_4DBA66
; ---------------------------------------------------------------------------

loc_4DB860:				; CODE XREF: .text:004DBA6Cj
		push	esi		; index
		push	offset stru_5BE1AC ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4DBA65
		mov	edx, [ebx+4]
		mov	eax, 20h
		add	edx, edx
		mov	ecx, [ebx+1Ch]
		add	eax, edx
		mov	edx, [ebx+24h]
		shl	ecx, 3
		add	eax, ecx
		lea	edx, [edx+edx*8]
		add	eax, edx
		push	eax		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4DB8B0
		mov	dword ptr [ebp-8], 2
		jmp	loc_4DBB08
; ---------------------------------------------------------------------------

loc_4DB8B0:				; CODE XREF: .text:004DB8A2j
		mov	eax, [ebp-10h]
		mov	[ebp-18h], eax
		mov	ecx, [ebp-18h]
		mov	eax, [ebx+4]
		mov	[ecx], eax
		mov	edx, [ebp-18h]
		xor	ecx, ecx
		mov	[edx+4], ecx
		mov	eax, [ebp-18h]
		mov	edx, [ebx+0Ch]
		mov	[eax+8], edx
		mov	ecx, [ebp-18h]
		mov	eax, [ebx+8]
		mov	[ecx+0Ch], eax
		mov	edx, [ebp-18h]
		mov	ecx, [ebx+1Ch]
		mov	[edx+10h], ecx
		mov	eax, [ebp-18h]
		mov	edx, [ebx+24h]
		mov	[eax+14h], edx
		push	8		; n
		push	0		; c
		mov	ecx, [ebp-18h]
		add	ecx, 18h
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	dword ptr [ebp-0Ch], 20h
		mov	eax, [ebx+4]
		push	eax		; n
		mov	edx, [ebx+10h]
		push	edx		; src
		mov	ecx, [ebp-10h]
		add	ecx, [ebp-0Ch]
		push	ecx		; dest
		call	_memcpy
		mov	eax, [ebx+4]
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		xor	eax, eax
		mov	byte ptr [ebp-11h], 55h
		mov	edx, [ebp-10h]
		mov	ecx, [ebp-0Ch]
		xor	edi, edi
		add	edx, ecx
		mov	[ebp-20h], edx
		jmp	short loc_4DB978
; ---------------------------------------------------------------------------

loc_4DB936:				; CODE XREF: .text:004DB97Bj
		cmp	edi, 80h
		jge	short loc_4DB949
		mov	ecx, [ebx+14h]
		mov	dl, [ecx+eax]
		cmp	dl, [ebp-11h]
		jz	short loc_4DB976

loc_4DB949:				; CODE XREF: .text:004DB93Cj
		test	edi, edi
		jle	short loc_4DB96B
		mov	dl, [ebp-11h]
		mov	ecx, edi
		add	cl, 0FFh
		and	dl, 80h
		or	cl, dl
		mov	edx, [ebp-20h]
		mov	[edx], cl
		inc	dword ptr [ebp-0Ch]
		inc	dword ptr [ebp-20h]
		mov	ecx, [ebp-18h]
		inc	dword ptr [ecx+4]

loc_4DB96B:				; CODE XREF: .text:004DB94Bj
		mov	edx, [ebx+14h]
		xor	edi, edi
		mov	cl, [edx+eax]
		mov	[ebp-11h], cl

loc_4DB976:				; CODE XREF: .text:004DB947j
		inc	edi
		inc	eax

loc_4DB978:				; CODE XREF: .text:004DB934j
		cmp	eax, [ebx+4]
		jb	short loc_4DB936
		test	edi, edi
		jle	short loc_4DB99F
		mov	dl, [ebp-11h]
		mov	eax, edi
		add	al, 0FFh
		and	dl, 80h
		or	al, dl
		mov	edx, [ebp-0Ch]
		mov	ecx, [ebp-10h]
		mov	[ecx+edx], al
		inc	dword ptr [ebp-0Ch]
		mov	eax, [ebp-18h]
		inc	dword ptr [eax+4]

loc_4DB99F:				; CODE XREF: .text:004DB97Fj
		cmp	dword ptr [ebx+1Ch], 0
		jle	short loc_4DB9ED
		xor	edi, edi
		jmp	short loc_4DB9C5
; ---------------------------------------------------------------------------

loc_4DB9A9:				; CODE XREF: .text:004DB9C8j
		mov	eax, edi
		shl	eax, 3
		add	eax, [ebx+18h]
		add	eax, 4
		push	eax		; item
		lea	edx, [ebp-26Ch]
		push	edx		; sd
		call	Addsorteddata
		add	esp, 8
		inc	edi

loc_4DB9C5:				; CODE XREF: .text:004DB9A7j
		cmp	edi, [ebx+1Ch]
		jl	short loc_4DB9A9
		mov	ecx, [ebx+1Ch]
		shl	ecx, 3
		push	ecx		; n
		mov	eax, [ebx+18h]
		push	eax		; src
		mov	edx, [ebp-10h]
		add	edx, [ebp-0Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx+1Ch]
		shl	ecx, 3
		add	[ebp-0Ch], ecx

loc_4DB9ED:				; CODE XREF: .text:004DB9A3j
		cmp	dword ptr [ebx+24h], 0
		jle	short loc_4DBA39
		xor	edi, edi
		jmp	short loc_4DBA11
; ---------------------------------------------------------------------------

loc_4DB9F7:				; CODE XREF: .text:004DBA14j
		lea	eax, [edi+edi*8]
		add	eax, [ebx+20h]
		add	eax, 4
		push	eax		; item
		lea	edx, [ebp-26Ch]
		push	edx		; sd
		call	Addsorteddata
		add	esp, 8
		inc	edi

loc_4DBA11:				; CODE XREF: .text:004DB9F5j
		cmp	edi, [ebx+24h]
		jl	short loc_4DB9F7
		mov	ecx, [ebx+24h]
		lea	ecx, [ecx+ecx*8]
		push	ecx		; n
		mov	eax, [ebx+20h]
		push	eax		; src
		mov	edx, [ebp-10h]
		add	edx, [ebp-0Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx+24h]
		lea	ecx, [ecx+ecx*8]
		add	[ebp-0Ch], ecx

loc_4DBA39:				; CODE XREF: .text:004DB9F1j
		mov	eax, [ebp-10h]
		push	eax		; data
		mov	edx, [ebp-0Ch]
		push	edx		; size
		push	0A676D49h	; tag
		mov	ecx, [ebp-1Ch]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4DBA62
		mov	dword ptr [ebp-8], 1
		jmp	loc_4DBB08
; ---------------------------------------------------------------------------

loc_4DBA62:				; CODE XREF: .text:004DBA54j
		inc	dword ptr [ebp-4]

loc_4DBA65:				; CODE XREF: .text:004DB872j
		inc	esi

loc_4DBA66:				; CODE XREF: .text:004DB85Bj
		cmp	esi, stru_5BE1AC.n
		jl	loc_4DB860
		xor	esi, esi
		jmp	loc_4DBAFC
; ---------------------------------------------------------------------------

loc_4DBA79:				; CODE XREF: .text:004DBB02j
		push	esi		; index
		lea	eax, [ebp-26Ch]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4DBA98
		mov	dword ptr [ebp-8], 3
		jmp	short loc_4DBB08
; ---------------------------------------------------------------------------

loc_4DBA98:				; CODE XREF: .text:004DBA8Dj
		push	203h		; datasize
		lea	eax, [ebp-223h]
		push	eax		; data
		push	4Bh		; type
		mov	edx, [ebx]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4DBAFB
		mov	ecx, [ebx]
		lea	eax, [ebp-228h]
		sub	ecx, 0F0000000h
		mov	[ebp-228h], ecx
		mov	byte ptr [ebp-224h], 4Bh
		push	eax		; data
		mov	edx, [ebp-0Ch]
		add	edx, 5
		push	edx		; size
		push	7461440Ah	; tag
		mov	ecx, [ebp-1Ch]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4DBAFB
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4DBB08
; ---------------------------------------------------------------------------

loc_4DBAFB:				; CODE XREF: .text:004DBAB8j
					; .text:004DBAF0j
		inc	esi

loc_4DBAFC:				; CODE XREF: .text:004DBA74j
		cmp	esi, [ebp-26Ch]
		jl	loc_4DBA79

loc_4DBB08:				; CODE XREF: .text:004DB7AEj
					; .text:004DB7EDj ...
		lea	eax, [ebp-26Ch]
		push	eax		; sd
		call	Destroysorteddata
		pop	ecx
		mov	edx, [ebp-1Ch]
		push	edx		; stream
		call	Finalizetaggedfile
		cmp	dword ptr [ebp-8], 0
		pop	ecx
		jnz	short loc_4DBB43
		mov	ecx, [ebp-4]
		push	ecx
		push	offset aLibraryContain ; "Library contains %i functions"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+0Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4DBBAA
; ---------------------------------------------------------------------------

loc_4DBB43:				; CODE XREF: .text:004DBB23j
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_4DBB68
		push	offset aUnableToSaveOb ; "Unable to save object	library"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DBBAA
; ---------------------------------------------------------------------------

loc_4DBB68:				; CODE XREF: .text:004DBB47j
		cmp	dword ptr [ebp-8], 2
		jnz	short loc_4DBB8D
		push	offset aLowMemory_4 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DBBAA
; ---------------------------------------------------------------------------

loc_4DBB8D:				; CODE XREF: .text:004DBB6Cj
		push	offset aErrorWhenCreat ; "Error	when creating object library"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DBBAA:				; CODE XREF: .text:004DBB41j
					; .text:004DBB66j ...
		xor	eax, eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4DBBB3
		dec	eax

loc_4DBBB3:				; CODE XREF: .text:004DB778j
					; .text:004DBBB0j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
