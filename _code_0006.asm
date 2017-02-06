.code

; Exported entry  13. _IstextA
; Exported entry 639. IstextA

; int __cdecl IstextA(unsigned __int8 a1)
		public IstextA
IstextA:				; CODE XREF: .text:0042FFE3p
					; .text:004407CEp ...
		push	ebp		; _IstextA
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	dword_57DD30, 0
		jz	short loc_4029E8
		and	eax, 0FFh
		and	eax, 0FFh
		xor	edx, edx
		mov	dl, g_rare[eax]
		and	edx, 3
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4029E8:				; CODE XREF: .text:004029CDj
		xor	ecx, ecx
		mov	cl, al
		and	ecx, 0FFh
		xor	eax, eax
		mov	al, g_rare[ecx]
		and	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  14. _IstextW
; Exported entry 640. IstextW

; int __cdecl IstextW(__int16 a1)
		public IstextW
IstextW:				; CODE XREF: .text:00462F3Dp
					; .text:0046312Fp ...
		push	ebp		; _IstextW
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	ah, 0FFh
		jz	short loc_402A0F
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_402A0F:				; CODE XREF: .text:00402A09j
		movzx	edx, ax
		and	edx, 0FFh
		xor	ecx, ecx
		mov	cl, g_rare[edx]
		and	ecx, 1
		mov	eax, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  15. _IsrareA
; Exported entry 634. IsrareA

		public IsrareA
IsrareA:				; CODE XREF: .text:00463667p
					; .text:004878E3p ...
		push	ebp		; _IsrareA
		mov	ebp, esp
		xor	eax, eax
		mov	al, [ebp+8]
		and	eax, 0FFh
		movzx	eax, g_rare[eax]
		and	eax, 10h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_402A44:				; CODE XREF: .text:0040E325p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	esi, offset byte_57DD4C

loc_402A51:				; CODE XREF: .text:00402A64j
		mov	edi, ebx
		push	edi		; ch
		call	__ltolower
		pop	ecx
		mov	[esi], al
		inc	ebx
		inc	esi
		cmp	ebx, 100h
		jl	short loc_402A51
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  16. _Replacegraphs
; Exported entry 698. Replacegraphs

; signed __int16 *__cdecl Replacegraphs(int mode, wchar_t *s, uchar *mask, int select, int n)
		public Replacegraphs
Replacegraphs:				; CODE XREF: .text:004213C2p
					; .text:004219B6p ...
		push	ebp		; _Replacegraphs
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	edx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp+8]
		test	eax, eax
		jz	loc_4032B7
		test	edx, edx
		jz	loc_4032B7
		cmp	dword ptr [ebp+18h], 0
		jle	loc_4032B7
		test	bh, 1
		jnz	short loc_402AAB
		mov	esi, ebx
		and	esi, 60h
		cmp	esi, 60h
		jnz	loc_4032B7

loc_402AAB:				; CODE XREF: .text:00402A9Bj
		xor	esi, esi
		mov	[ebp-4], esi
		mov	esi, edx
		mov	edx, [ebp-4]
		cmp	edx, [ebp+18h]
		jge	loc_4032B7

loc_402ABE:				; CODE XREF: .text:004032B1j
		mov	edx, ebx
		and	edx, 60h
		cmp	edx, 60h
		jz	short loc_402AE1
		test	bh, 1
		jz	loc_4032A4
		xor	edx, edx
		mov	dl, [esi]
		and	edx, 60h
		cmp	edx, 60h
		jnz	loc_4032A4

loc_402AE1:				; CODE XREF: .text:00402AC6j
		cmp	ecx, 1
		jnz	loc_402D8A
		movzx	edx, word ptr [eax]
		cmp	edx, 3Dh	; switch 62 cases
		ja	loc_402D81	; jumptable 00402AF6 default case
		jmp	ds:off_402AFD[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_402AFD	dd offset loc_402D81, offset loc_402BF5, offset	loc_402BFE
					; DATA XREF: .text:00402AF6r
		dd offset loc_402C07, offset loc_402C10, offset	loc_402C19 ; jump table	for switch statement
		dd offset loc_402C22, offset loc_402C2B, offset	loc_402D81
		dd offset loc_402D81, offset loc_402D81, offset	loc_402D81
		dd offset loc_402D81, offset loc_402D81, offset	loc_402D81
		dd offset loc_402D81, offset loc_402C34, offset	loc_402C3D
		dd offset loc_402C46, offset loc_402C4F, offset	loc_402C58
		dd offset loc_402C61, offset loc_402D81, offset	loc_402D81
		dd offset loc_402C6A, offset loc_402C73, offset	loc_402C7C
		dd offset loc_402C85, offset loc_402C8E, offset	loc_402C97
		dd offset loc_402CA0, offset loc_402D81, offset	loc_402D81
		dd offset loc_402CA9, offset loc_402CB2, offset	loc_402CBB
		dd offset loc_402D81, offset loc_402CC4, offset	loc_402CCD
		dd offset loc_402CD6, offset loc_402CDF, offset	loc_402CE8
		dd offset loc_402CF1, offset loc_402CFA, offset	loc_402D81
		dd offset loc_402D81, offset loc_402D81, offset	loc_402D81
		dd offset loc_402D03, offset loc_402D0C, offset	loc_402D15
		dd offset loc_402D1E, offset loc_402D27, offset	loc_402D30
		dd offset loc_402D39, offset loc_402D42, offset	loc_402D4B
		dd offset loc_402D54, offset loc_402D5D, offset	loc_402D66
		dd offset loc_402D6F, offset loc_402D78
; ---------------------------------------------------------------------------

loc_402BF5:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 20h		; jumptable 00402AF6 case 1
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402BFE:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 20h		; jumptable 00402AF6 case 2
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C07:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Eh		; jumptable 00402AF6 case 3
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C10:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Eh		; jumptable 00402AF6 case 4
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C19:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 3Eh		; jumptable 00402AF6 case 5
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C22:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 24h		; jumptable 00402AF6 case 6
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C2B:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 3Fh		; jumptable 00402AF6 case 7
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C34:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Eh		; jumptable 00402AF6 case 16
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C3D:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Dh		; jumptable 00402AF6 case 17
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C46:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 20h		; jumptable 00402AF6 case 18
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C4F:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Eh		; jumptable 00402AF6 case 19
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C58:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 78h		; jumptable 00402AF6 case 20
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C61:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 20h		; jumptable 00402AF6 case 21
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C6A:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Fh		; jumptable 00402AF6 case 24
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C73:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 7Ch		; jumptable 00402AF6 case 25
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C7C:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 7Ch		; jumptable 00402AF6 case 26
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C85:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 7Ch		; jumptable 00402AF6 case 27
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C8E:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Ch		; jumptable 00402AF6 case 28
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402C97:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Bh		; jumptable 00402AF6 case 29
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CA0:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Dh		; jumptable 00402AF6 case 30
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CA9:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Ch		; jumptable 00402AF6 case 33
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CB2:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 7Ch		; jumptable 00402AF6 case 34
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CBB:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Fh		; jumptable 00402AF6 case 35
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CC4:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Ch		; jumptable 00402AF6 case 37
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CCD:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Fh		; jumptable 00402AF6 case 38
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CD6:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Fh		; jumptable 00402AF6 case 39
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CDF:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 5Ch		; jumptable 00402AF6 case 40
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CE8:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 3Eh		; jumptable 00402AF6 case 41
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CF1:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 3Eh		; jumptable 00402AF6 case 42
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402CFA:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 3Eh		; jumptable 00402AF6 case 43
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D03:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Dh		; jumptable 00402AF6 case 48
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D0C:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 49
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D15:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 50
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D1E:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 51
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D27:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 52
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D30:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 53
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D39:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 54
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D42:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 55
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D4B:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 56
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D54:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 2Bh		; jumptable 00402AF6 case 57
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D5D:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 7Ch		; jumptable 00402AF6 case 58
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D66:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 3Ch		; jumptable 00402AF6 case 59
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D6F:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 3Eh		; jumptable 00402AF6 case 60
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D78:				; CODE XREF: .text:00402AF6j
					; DATA XREF: .text:off_402AFDo
		mov	dx, 21h		; jumptable 00402AF6 case 61
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D81:				; CODE XREF: .text:00402AF0j
					; .text:00402AF6j
					; DATA XREF: ...
		mov	dx, 20h		; jumptable 00402AF6 default case
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402D8A:				; CODE XREF: .text:00402AE4j
		cmp	ecx, 2
		jnz	loc_403033
		movzx	edx, word ptr [eax]
		cmp	edx, 3Dh	; switch 62 cases
		ja	loc_40302A	; jumptable 00402D9F default case
		jmp	ds:off_402DA6[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_402DA6	dd offset loc_40302A, offset loc_402E9E, offset	loc_402EA7
					; DATA XREF: .text:00402D9Fr
		dd offset loc_402EB0, offset loc_402EB9, offset	loc_402EC2 ; jump table	for switch statement
		dd offset loc_402ECB, offset loc_402ED4, offset	loc_40302A
		dd offset loc_40302A, offset loc_40302A, offset	loc_40302A
		dd offset loc_40302A, offset loc_40302A, offset	loc_40302A
		dd offset loc_40302A, offset loc_402EDD, offset	loc_402EE6
		dd offset loc_402EEF, offset loc_402EF8, offset	loc_402F01
		dd offset loc_402F0A, offset loc_40302A, offset	loc_40302A
		dd offset loc_402F13, offset loc_402F1C, offset	loc_402F25
		dd offset loc_402F2E, offset loc_402F37, offset	loc_402F40
		dd offset loc_402F49, offset loc_40302A, offset	loc_40302A
		dd offset loc_402F52, offset loc_402F5B, offset	loc_402F64
		dd offset loc_40302A, offset loc_402F6D, offset	loc_402F76
		dd offset loc_402F7F, offset loc_402F88, offset	loc_402F91
		dd offset loc_402F9A, offset loc_402FA3, offset	loc_40302A
		dd offset loc_40302A, offset loc_40302A, offset	loc_40302A
		dd offset loc_402FAC, offset loc_402FB5, offset	loc_402FBE
		dd offset loc_402FC7, offset loc_402FD0, offset	loc_402FD9
		dd offset loc_402FE2, offset loc_402FEB, offset	loc_402FF4
		dd offset loc_402FFD, offset loc_403006, offset	loc_40300F
		dd offset loc_403018, offset loc_403021
; ---------------------------------------------------------------------------

loc_402E9E:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 20h		; jumptable 00402D9F case 1
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EA7:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0B3h	; jumptable 00402D9F case 2
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EB0:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 2Eh		; jumptable 00402D9F case 3
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EB9:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 2Eh		; jumptable 00402D9F case 4
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EC2:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 3Eh		; jumptable 00402D9F case 5
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402ECB:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 24h		; jumptable 00402D9F case 6
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402ED4:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 3Fh		; jumptable 00402D9F case 7
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EDD:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 18h		; jumptable 00402D9F case 16
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EE6:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 1Bh		; jumptable 00402D9F case 17
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EEF:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 19h		; jumptable 00402D9F case 18
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402EF8:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 18h		; jumptable 00402D9F case 19
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F01:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 12h		; jumptable 00402D9F case 20
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F0A:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 19h		; jumptable 00402D9F case 21
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F13:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0DAh	; jumptable 00402D9F case 24
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F1C:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0B3h	; jumptable 00402D9F case 25
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F25:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 2Bh		; jumptable 00402D9F case 26
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F2E:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 2Bh		; jumptable 00402D9F case 27
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F37:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C0h	; jumptable 00402D9F case 28
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F40:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 5Bh		; jumptable 00402D9F case 29
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F49:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C6h	; jumptable 00402D9F case 30
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F52:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C0h	; jumptable 00402D9F case 33
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F5B:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0B3h	; jumptable 00402D9F case 34
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F64:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0DAh	; jumptable 00402D9F case 35
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F6D:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C0h	; jumptable 00402D9F case 37
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F76:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0DAh	; jumptable 00402D9F case 38
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F7F:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0DAh	; jumptable 00402D9F case 39
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F88:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C0h	; jumptable 00402D9F case 40
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F91:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C3h	; jumptable 00402D9F case 41
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402F9A:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C3h	; jumptable 00402D9F case 42
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FA3:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C3h	; jumptable 00402D9F case 43
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FAC:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C4h	; jumptable 00402D9F case 48
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FB5:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0DAh	; jumptable 00402D9F case 49
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FBE:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C2h	; jumptable 00402D9F case 50
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FC7:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0BFh	; jumptable 00402D9F case 51
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FD0:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C3h	; jumptable 00402D9F case 52
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FD9:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C5h	; jumptable 00402D9F case 53
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FE2:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0B4h	; jumptable 00402D9F case 54
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FEB:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C0h	; jumptable 00402D9F case 55
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FF4:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0C1h	; jumptable 00402D9F case 56
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_402FFD:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0D9h	; jumptable 00402D9F case 57
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403006:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0B3h	; jumptable 00402D9F case 58
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_40300F:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 3Ch		; jumptable 00402D9F case 59
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403018:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 3Eh		; jumptable 00402D9F case 60
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403021:				; CODE XREF: .text:00402D9Fj
					; DATA XREF: .text:off_402DA6o
		mov	dx, 0B3h	; jumptable 00402D9F case 61
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_40302A:				; CODE XREF: .text:00402D99j
					; .text:00402D9Fj
					; DATA XREF: ...
		mov	dx, 20h		; jumptable 00402D9F default case
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403033:				; CODE XREF: .text:00402D8Dj
		cmp	ecx, 3
		jnz	loc_40329D
		movzx	edx, word ptr [eax]
		cmp	edx, 3Dh	; switch 62 cases
		ja	loc_403297	; jumptable 00403048 default case
		jmp	ds:off_40304F[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_40304F	dd offset loc_403297, offset loc_403147, offset	loc_403150
					; DATA XREF: .text:00403048r
		dd offset loc_403159, offset loc_403162, offset	loc_40316B ; jump table	for switch statement
		dd offset loc_403174, offset loc_40317D, offset	loc_403297
		dd offset loc_403297, offset loc_403297, offset	loc_403297
		dd offset loc_403297, offset loc_403297, offset	loc_403297
		dd offset loc_403297, offset loc_403186, offset	loc_40318F
		dd offset loc_403198, offset loc_4031A1, offset	loc_4031AA
		dd offset loc_4031B3, offset loc_403297, offset	loc_403297
		dd offset loc_4031BC, offset loc_4031C5, offset	loc_4031CE
		dd offset loc_4031D7, offset loc_4031E0, offset	loc_4031E9
		dd offset loc_4031F2, offset loc_403297, offset	loc_403297
		dd offset loc_4031FB, offset loc_403204, offset	loc_40320D
		dd offset loc_403297, offset loc_403216, offset	loc_40321F
		dd offset loc_403225, offset loc_40322B, offset	loc_403231
		dd offset loc_403237, offset loc_40323D, offset	loc_403297
		dd offset loc_403297, offset loc_403297, offset	loc_403297
		dd offset loc_403243, offset loc_403249, offset	loc_40324F
		dd offset loc_403255, offset loc_40325B, offset	loc_403261
		dd offset loc_403267, offset loc_40326D, offset	loc_403273
		dd offset loc_403279, offset loc_40327F, offset	loc_403285
		dd offset loc_40328B, offset loc_403291
; ---------------------------------------------------------------------------

loc_403147:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 20h		; jumptable 00403048 case 1
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403150:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 7Ch		; jumptable 00403048 case 2
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403159:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 0B7h	; jumptable 00403048 case 3
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403162:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2219h	; jumptable 00403048 case 4
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_40316B:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25BAh	; jumptable 00403048 case 5
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403174:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 24h		; jumptable 00403048 case 6
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_40317D:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 3Fh		; jumptable 00403048 case 7
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403186:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25B2h	; jumptable 00403048 case 16
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_40318F:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25C4h	; jumptable 00403048 case 17
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403198:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25BCh	; jumptable 00403048 case 18
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031A1:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25B2h	; jumptable 00403048 case 19
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031AA:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 251Ch	; jumptable 00403048 case 20
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031B3:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 250Ch	; jumptable 00403048 case 21
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031BC:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2553h	; jumptable 00403048 case 24
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031C5:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2551h	; jumptable 00403048 case 25
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031CE:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 255Fh	; jumptable 00403048 case 26
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031D7:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 255Fh	; jumptable 00403048 case 27
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031E0:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2514h	; jumptable 00403048 case 28
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031E9:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 5Bh		; jumptable 00403048 case 29
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031F2:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2560h	; jumptable 00403048 case 30
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_4031FB:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2514h	; jumptable 00403048 case 33
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403204:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2502h	; jumptable 00403048 case 34
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_40320D:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 250Ch	; jumptable 00403048 case 35
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_403216:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2514h	; jumptable 00403048 case 37
		jmp	loc_4032A1
; ---------------------------------------------------------------------------

loc_40321F:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 250Ch	; jumptable 00403048 case 38
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403225:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 250Ch	; jumptable 00403048 case 39
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40322B:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2514h	; jumptable 00403048 case 40
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403231:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 251Ch	; jumptable 00403048 case 41
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403237:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 250Ch	; jumptable 00403048 case 42
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40323D:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2514h	; jumptable 00403048 case 43
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403243:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2500h	; jumptable 00403048 case 48
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403249:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 250Ch	; jumptable 00403048 case 49
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40324F:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 252Ch	; jumptable 00403048 case 50
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403255:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2510h	; jumptable 00403048 case 51
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40325B:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 251Ch	; jumptable 00403048 case 52
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403261:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 253Ch	; jumptable 00403048 case 53
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403267:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2524h	; jumptable 00403048 case 54
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40326D:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2514h	; jumptable 00403048 case 55
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403273:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2534h	; jumptable 00403048 case 56
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403279:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2518h	; jumptable 00403048 case 57
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40327F:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 2502h	; jumptable 00403048 case 58
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403285:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25C4h	; jumptable 00403048 case 59
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40328B:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25BAh	; jumptable 00403048 case 60
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403291:				; CODE XREF: .text:00403048j
					; DATA XREF: .text:off_40304Fo
		mov	dx, 25BCh	; jumptable 00403048 case 61
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_403297:				; CODE XREF: .text:00403042j
					; .text:00403048j
					; DATA XREF: ...
		mov	dx, 20h		; jumptable 00403048 default case
		jmp	short loc_4032A1
; ---------------------------------------------------------------------------

loc_40329D:				; CODE XREF: .text:00403036j
		mov	dx, 20h

loc_4032A1:				; CODE XREF: .text:00402BF9j
					; .text:00402C02j ...
		mov	[eax], dx

loc_4032A4:				; CODE XREF: .text:00402ACBj
					; .text:00402ADBj
		inc	dword ptr [ebp-4]
		add	eax, 2
		inc	esi
		mov	edx, [ebp-4]
		cmp	edx, [ebp+18h]
		jl	loc_402ABE

loc_4032B7:				; CODE XREF: .text:00402A80j
					; .text:00402A88j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  17. _Unicodebuffertoascii
; Exported entry 738. Unicodebuffertoascii

; HGLOBAL __cdecl Unicodebuffertoascii(HGLOBAL hunicode)
		public Unicodebuffertoascii
Unicodebuffertoascii:			; CODE XREF: .text:00419C8Bp
					; .text:00419D4Ap ...
		push	ebp		; _Unicodebuffertoascii
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jnz	short loc_4032D3
		xor	eax, eax
		jmp	loc_40336D
; ---------------------------------------------------------------------------

loc_4032D3:				; CODE XREF: .text:004032CAj
		push	edi		; hMem
		call	GlobalSize
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4032E6
		xor	eax, eax
		jmp	loc_40336D
; ---------------------------------------------------------------------------

loc_4032E6:				; CODE XREF: .text:004032DDj
		push	esi		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4032FB
		xor	eax, eax
		jmp	short loc_40336D
; ---------------------------------------------------------------------------

loc_4032FB:				; CODE XREF: .text:004032F5j
		push	ebx		; hMem
		call	GlobalLock
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_403314
		push	ebx		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	short loc_40336D
; ---------------------------------------------------------------------------

loc_403314:				; CODE XREF: .text:00403308j
		push	edi		; hMem
		call	GlobalLock
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_403333
		push	ebx		; hMem
		call	GlobalUnlock
		push	ebx		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	short loc_40336D
; ---------------------------------------------------------------------------

loc_403333:				; CODE XREF: .text:00403321j
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	esi		; cbMultiByte
		mov	eax, asciicodepage
		mov	edx, [ebp-4]
		push	edx		; lpMultiByteStr
		push	0FFFFFFFFh	; cchWideChar
		mov	ecx, [ebp-8]
		push	ecx		; lpWideCharStr
		push	0		; dwFlags
		push	eax		; CodePage
		call	WideCharToMultiByte
		mov	esi, eax
		push	ebx		; hMem
		call	GlobalUnlock
		push	edi		; hMem
		call	GlobalUnlock
		push	2002h		; uFlags
		push	esi		; dwBytes
		push	ebx		; hMem
		call	GlobalReAlloc
		mov	ebx, eax
		mov	eax, ebx

loc_40336D:				; CODE XREF: .text:004032CEj
					; .text:004032E1j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  18. _Unicodetoascii
; Exported entry 739. Unicodetoascii

; int __cdecl Unicodetoascii(const wchar_t *w, int nw, char *s,	int ns)
		public Unicodetoascii
Unicodetoascii:				; CODE XREF: .text:00439E20p
					; .text:0047C2E3p ...
		push	ebp		; _Unicodetoascii
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_403393
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_403393
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_403393
		test	esi, esi
		jg	short loc_4033A7

loc_403393:				; CODE XREF: .text:00403381j
					; .text:00403387j ...
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4033A3
		test	esi, esi
		jle	short loc_4033A3
		mov	eax, [ebp+10h]
		mov	byte ptr [eax],	0

loc_4033A3:				; CODE XREF: .text:00403397j
					; .text:0040339Bj
		xor	eax, eax
		jmp	short loc_4033D2
; ---------------------------------------------------------------------------

loc_4033A7:				; CODE XREF: .text:00403391j
		xor	edx, edx
		mov	ecx, [ebp+10h]
		jmp	short loc_4033B7
; ---------------------------------------------------------------------------

loc_4033AE:				; CODE XREF: .text:004033C7j
		mov	bl, [eax]
		inc	edx
		mov	[ecx], bl
		inc	ecx
		add	eax, 2

loc_4033B7:				; CODE XREF: .text:004033ACj
		cmp	edx, [ebp+0Ch]
		jge	short loc_4033C9
		lea	ebx, [esi-1]
		cmp	edx, ebx
		jge	short loc_4033C9
		cmp	word ptr [eax],	0
		jnz	short loc_4033AE

loc_4033C9:				; CODE XREF: .text:004033BAj
					; .text:004033C1j
		mov	eax, [ebp+10h]
		mov	byte ptr [eax+edx], 0
		mov	eax, edx

loc_4033D2:				; CODE XREF: .text:004033A5j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  19. _Asciitounicode
; Exported entry 402. Asciitounicode

; int __cdecl Asciitounicode(const char	*s, int	ns, wchar_t *w,	int nw)
		public Asciitounicode
Asciitounicode:				; CODE XREF: .text:00413A6Ep
					; .text:00413F25p ...
		push	ebp		; _Asciitounicode
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4033F7
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4033F7
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4033F7
		test	ebx, ebx
		jg	short loc_40340D

loc_4033F7:				; CODE XREF: .text:004033E5j
					; .text:004033EBj ...
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_403409
		test	ebx, ebx
		jle	short loc_403409
		mov	eax, [ebp+10h]
		mov	word ptr [eax],	0

loc_403409:				; CODE XREF: .text:004033FBj
					; .text:004033FFj
		xor	eax, eax
		jmp	short loc_40343B
; ---------------------------------------------------------------------------

loc_40340D:				; CODE XREF: .text:004033F5j
		xor	edx, edx
		mov	ecx, [ebp+10h]
		jmp	short loc_40341F
; ---------------------------------------------------------------------------

loc_403414:				; CODE XREF: .text:0040342Ej
		movzx	esi, byte ptr [eax]
		mov	[ecx], si
		inc	edx
		add	ecx, 2
		inc	eax

loc_40341F:				; CODE XREF: .text:00403412j
		cmp	edx, [ebp+0Ch]
		jge	short loc_403430
		lea	esi, [ebx-1]
		cmp	edx, esi
		jge	short loc_403430
		cmp	byte ptr [eax],	0
		jnz	short loc_403414

loc_403430:				; CODE XREF: .text:00403422j
					; .text:00403429j
		mov	eax, [ebp+10h]
		mov	word ptr [eax+edx*2], 0
		mov	eax, edx

loc_40343B:				; CODE XREF: .text:0040340Bj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  20. _Unicodetoutf
; Exported entry 740. Unicodetoutf

; int __cdecl Unicodetoutf(const wchar_t *w, int nw, char *t, int nt)
		public Unicodetoutf
Unicodetoutf:				; CODE XREF: .text:00419265p
					; .text:00439F80p ...
		push	ebp		; _Unicodetoutf
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	edx, [ebp+8]
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_403457
		test	esi, esi
		jg	short loc_40345E

loc_403457:				; CODE XREF: .text:00403451j
		xor	eax, eax
		jmp	loc_40350C
; ---------------------------------------------------------------------------

loc_40345E:				; CODE XREF: .text:00403455j
		test	edx, edx
		jz	short loc_403468
		cmp	dword ptr [ebp+0Ch], 0
		jg	short loc_403475

loc_403468:				; CODE XREF: .text:00403460j
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	byte ptr [edx],	0
		jmp	loc_40350C
; ---------------------------------------------------------------------------

loc_403475:				; CODE XREF: .text:00403466j
		xor	ecx, ecx
		mov	edi, edx
		mov	[ebp-4], ecx
		xor	ecx, ecx
		mov	edx, [ebp-4]
		mov	eax, [ebp+10h]
		cmp	edx, [ebp+0Ch]
		jge	short loc_403503

loc_403489:				; CODE XREF: .text:00403501j
		movzx	edx, word ptr [edi]
		test	edx, edx
		jz	short loc_403503
		cmp	edx, 7Fh
		jg	short loc_4034A2
		lea	ebx, [ecx+1]
		cmp	esi, ebx
		jle	short loc_403503
		mov	[eax], dl
		inc	ecx
		inc	eax
		jmp	short loc_4034F5
; ---------------------------------------------------------------------------

loc_4034A2:				; CODE XREF: .text:00403493j
		cmp	edx, 7FFh
		jg	short loc_4034C9
		lea	ebx, [ecx+2]
		cmp	esi, ebx
		jle	short loc_403503
		mov	ebx, edx
		and	dl, 3Fh
		sar	ebx, 6
		or	dl, 80h
		or	bl, 0C0h
		inc	ecx
		mov	[eax], bl
		inc	eax
		inc	ecx
		mov	[eax], dl
		inc	eax
		jmp	short loc_4034F5
; ---------------------------------------------------------------------------

loc_4034C9:				; CODE XREF: .text:004034A8j
		lea	ebx, [ecx+3]
		cmp	esi, ebx
		jle	short loc_403503
		mov	ebx, edx
		inc	ecx
		sar	ebx, 0Ch
		inc	ecx
		or	bl, 0E0h
		inc	ecx
		mov	[eax], bl
		mov	ebx, edx
		sar	ebx, 6
		inc	eax
		and	bl, 3Fh
		and	dl, 3Fh
		or	bl, 80h
		or	dl, 80h
		mov	[eax], bl
		inc	eax
		mov	[eax], dl
		inc	eax

loc_4034F5:				; CODE XREF: .text:004034A0j
					; .text:004034C7j
		inc	dword ptr [ebp-4]
		add	edi, 2
		mov	edx, [ebp-4]
		cmp	edx, [ebp+0Ch]
		jl	short loc_403489

loc_403503:				; CODE XREF: .text:00403487j
					; .text:0040348Ej ...
		mov	eax, [ebp+10h]
		mov	byte ptr [eax+ecx], 0
		mov	eax, ecx

loc_40350C:				; CODE XREF: .text:00403459j
					; .text:00403470j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  21. _Utftounicode
; Exported entry 745. Utftounicode

; int __cdecl Utftounicode(const char *t, int nt, wchar_t *w, int nw)
		public Utftounicode
Utftounicode:				; CODE XREF: .text:004160EEp
					; .text:00418D0Cp ...
		push	ebp		; _Utftounicode
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+10h], 0
		mov	eax, [ebp+8]
		jz	short loc_40352B
		cmp	dword ptr [ebp+14h], 0
		jg	short loc_403532

loc_40352B:				; CODE XREF: .text:00403523j
		xor	eax, eax
		jmp	loc_403667
; ---------------------------------------------------------------------------

loc_403532:				; CODE XREF: .text:00403529j
		test	eax, eax
		jz	short loc_40353C
		cmp	dword ptr [ebp+0Ch], 0
		jg	short loc_40354B

loc_40353C:				; CODE XREF: .text:00403534j
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	word ptr [edx],	0
		jmp	loc_403667
; ---------------------------------------------------------------------------

loc_40354B:				; CODE XREF: .text:0040353Aj
		xor	ecx, ecx
		xor	edx, edx
		mov	[ebp-4], edx
		mov	edx, [ebp+10h]
		mov	ebx, edx
		jmp	loc_403646
; ---------------------------------------------------------------------------

loc_40355C:				; CODE XREF: .text:00403652j
		xor	edx, edx
		inc	ecx
		mov	dl, [eax]
		inc	eax
		test	edx, edx
		jz	loc_403658
		test	dl, 80h
		jnz	short loc_40357D
		mov	[ebx], dx
		inc	dword ptr [ebp-4]
		add	ebx, 2
		jmp	loc_403646
; ---------------------------------------------------------------------------

loc_40357D:				; CODE XREF: .text:0040356Dj
		mov	esi, edx
		and	esi, 0E0h
		cmp	esi, 0C0h
		jnz	short loc_4035D1
		cmp	ecx, [ebp+0Ch]
		jge	loc_403658
		movzx	esi, byte ptr [eax]
		mov	[ebp-8], esi
		inc	ecx
		inc	eax
		mov	esi, [ebp-8]
		and	esi, 0C0h
		cmp	esi, 80h
		jnz	loc_403658
		shl	edx, 6
		and	dx, 7C0h
		mov	si, [ebp-8]
		and	si, 3Fh
		or	dx, si
		mov	[ebx], dx
		inc	dword ptr [ebp-4]
		add	ebx, 2
		jmp	short loc_403646
; ---------------------------------------------------------------------------

loc_4035D1:				; CODE XREF: .text:0040358Bj
		mov	esi, edx
		and	esi, 0F0h
		cmp	esi, 0E0h
		jnz	short loc_403658
		lea	esi, [ecx+1]
		cmp	esi, [ebp+0Ch]
		jge	short loc_403658
		movzx	esi, byte ptr [eax]
		mov	[ebp-8], esi
		inc	ecx
		inc	eax
		mov	esi, [ebp-8]
		and	esi, 0C0h
		cmp	esi, 80h
		jnz	short loc_403658
		movzx	esi, byte ptr [eax]
		mov	[ebp-0Ch], esi
		inc	ecx
		inc	eax
		mov	esi, [ebp-0Ch]
		and	esi, 0C0h
		cmp	esi, 80h
		jnz	short loc_403658
		shl	edx, 0Ch
		and	dx, 0F000h
		mov	si, [ebp-8]
		shl	esi, 6
		and	si, 0FC0h
		or	dx, si
		mov	si, [ebp-0Ch]
		and	si, 3Fh
		or	dx, si
		mov	[ebx], dx
		inc	dword ptr [ebp-4]
		add	ebx, 2

loc_403646:				; CODE XREF: .text:00403557j
					; .text:00403578j ...
		cmp	ecx, [ebp+0Ch]
		jge	short loc_403658
		mov	edx, [ebp+14h]
		dec	edx
		cmp	edx, [ebp-4]
		jg	loc_40355C

loc_403658:				; CODE XREF: .text:00403564j
					; .text:00403590j ...
		mov	eax, [ebp+10h]
		mov	ecx, [ebp-4]
		mov	word ptr [eax+ecx*2], 0
		mov	eax, [ebp-4]

loc_403667:				; CODE XREF: .text:0040352Dj
					; .text:00403546j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  22. _Getmbstringinfo
; Exported entry 583. Getmbstringinfo

; int __cdecl Getmbstringinfo(UINT CodePage, char *sel0, int nb, int cb, char *sel1, WCHAR *s, int dwBytes)
		public Getmbstringinfo
Getmbstringinfo:			; CODE XREF: .text:00427D85p
					; .text:004AECF5p ...
		push	ebp		; _Getmbstringinfo
		mov	ebp, esp
		add	esp, 0FFFFFFD4h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+18h]
		mov	edi, [ebp+0Ch]
		cmp	dword ptr [ebp+10h], 1
		jl	short loc_403693
		cmp	dword ptr [ebp+14h], 1
		jl	short loc_403693
		test	edi, edi
		jz	short loc_403693
		test	eax, eax
		jnz	short loc_4036A7

loc_403693:				; CODE XREF: .text:00403683j
					; .text:00403689j ...
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_4036A0
		mov	eax, [ebp+20h]
		xor	edx, edx
		mov	[eax], edx

loc_4036A0:				; CODE XREF: .text:00403697j
		xor	eax, eax
		jmp	loc_403801
; ---------------------------------------------------------------------------

loc_4036A7:				; CODE XREF: .text:00403691j
		mov	edx, [ebp+14h]
		cmp	edx, [ebp+10h]
		jle	short loc_4036B5
		mov	ecx, [ebp+10h]
		mov	[ebp+14h], ecx

loc_4036B5:				; CODE XREF: .text:004036ADj
		xor	esi, esi
		xor	edx, edx
		mov	[ebp-4], edx
		mov	[ebp-1Ch], eax
		mov	ecx, [ebp+1Ch]
		mov	eax, ecx
		mov	[ebp-18h], eax
		cmp	esi, [ebp+14h]
		jge	loc_4037F3

loc_4036D0:				; CODE XREF: .text:004037EDj
		push	8		; cchWideChar
		lea	edx, [ebp-2Ch]
		push	edx		; lpWideCharStr
		mov	ecx, [ebp+10h]
		sub	ecx, esi
		mov	[ebp-10h], ecx
		mov	dword ptr [ebp-14h], 5
		mov	eax, [ebp-14h]
		cmp	eax, [ebp-10h]
		jge	short loc_4036F2
		lea	edx, [ebp-14h]
		jmp	short loc_4036F5
; ---------------------------------------------------------------------------

loc_4036F2:				; CODE XREF: .text:004036EBj
		lea	edx, [ebp-10h]

loc_4036F5:				; CODE XREF: .text:004036F0j
		mov	eax, [edx]
		push	eax		; cbMultiByte
		lea	ecx, [esi+edi]
		push	ecx		; lpMultiByteStr
		push	0		; dwFlags
		mov	eax, [ebp+8]
		push	eax		; CodePage
		call	MultiByteToWideChar
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_40371D
		mov	ax, [ebp-2Ch]
		cmp	ax, 0DC00h
		jb	short loc_40372D
		cmp	ax, 0DFFFh
		ja	short loc_40372D

loc_40371D:				; CODE XREF: .text:0040370Bj
		mov	word ptr [ebp-2Ch], 2Eh
		mov	ebx, 1
		jmp	loc_4037C1
; ---------------------------------------------------------------------------

loc_40372D:				; CODE XREF: .text:00403715j
					; .text:0040371Bj
		mov	ax, [ebp-2Ch]
		cmp	ax, 0D800h
		jb	short loc_403780
		cmp	ax, 0DBFFh
		ja	short loc_403780
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	8		; cbMultiByte
		lea	edx, [ebp-0Ch]
		push	edx		; lpMultiByteStr
		push	2		; cchWideChar
		lea	ecx, [ebp-2Ch]
		push	ecx		; lpWideCharStr
		push	0		; dwFlags
		mov	eax, [ebp+8]
		push	eax		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_403773
		push	ebx		; n
		lea	eax, [ebp-0Ch]
		push	eax		; s2
		lea	edx, [esi+edi]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_403778

loc_403773:				; CODE XREF: .text:0040375Cj
		mov	ebx, 1

loc_403778:				; CODE XREF: .text:00403771j
		mov	word ptr [ebp-2Ch], 2Eh
		jmp	short loc_4037C1
; ---------------------------------------------------------------------------

loc_403780:				; CODE XREF: .text:00403735j
					; .text:0040373Bj
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	8		; cbMultiByte
		lea	eax, [ebp-0Ch]
		push	eax		; lpMultiByteStr
		push	1		; cchWideChar
		lea	edx, [ebp-2Ch]
		push	edx		; lpWideCharStr
		push	0		; dwFlags
		mov	ecx, [ebp+8]
		push	ecx		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4037B6
		push	ebx		; n
		lea	eax, [ebp-0Ch]
		push	eax		; s2
		lea	edx, [esi+edi]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4037C1

loc_4037B6:				; CODE XREF: .text:0040379Fj
		mov	word ptr [ebp-2Ch], 2Eh
		mov	ebx, 1

loc_4037C1:				; CODE XREF: .text:00403728j
					; .text:0040377Ej ...
		lea	eax, [ebx+esi]
		cmp	eax, [ebp+14h]
		jg	short loc_4037F3
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4037D9
		mov	edx, [ebp-18h]
		mov	cx, [ebp-2Ch]
		mov	[edx], cx

loc_4037D9:				; CODE XREF: .text:004037CDj
		mov	eax, [ebp-1Ch]
		mov	[eax], bl
		add	esi, ebx
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-1Ch]
		add	dword ptr [ebp-18h], 2
		cmp	esi, [ebp+14h]
		jl	loc_4036D0

loc_4037F3:				; CODE XREF: .text:004036CAj
					; .text:004037C7j
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_4037FE
		mov	edx, [ebp+20h]
		mov	[edx], esi

loc_4037FE:				; CODE XREF: .text:004037F7j
		mov	eax, [ebp-4]

loc_403801:				; CODE XREF: .text:004036A2j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  23. _Getmbcharlength
; Exported entry 580. Getmbcharlength

; int __cdecl Getmbcharlength(UINT CodePage, LPCSTR lpMultiByteStr, int	cbMultiByte, int ccb)
		public Getmbcharlength
Getmbcharlength:			; _Getmbcharlength
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	esi, esi
		jz	short loc_403821
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_403828

loc_403821:				; CODE XREF: .text:00403819j
		xor	eax, eax
		jmp	loc_403911
; ---------------------------------------------------------------------------

loc_403828:				; CODE XREF: .text:0040381Fj
		push	8		; cchWideChar
		lea	edx, [ebp-1Ch]
		push	edx		; lpWideCharStr
		mov	dword ptr [ebp-0Ch], 5
		mov	ecx, [ebp+10h]
		cmp	ecx, [ebp-0Ch]
		jge	short loc_403842
		lea	eax, [ebp+10h]
		jmp	short loc_403845
; ---------------------------------------------------------------------------

loc_403842:				; CODE XREF: .text:0040383Bj
		lea	eax, [ebp-0Ch]

loc_403845:				; CODE XREF: .text:00403840j
		mov	edx, [eax]
		push	edx		; cbMultiByte
		push	esi		; lpMultiByteStr
		push	0		; dwFlags
		push	edi		; CodePage
		call	MultiByteToWideChar
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_403867
		mov	ax, [ebp-1Ch]
		cmp	ax, 0DC00h
		jb	short loc_403877
		cmp	ax, 0DFFFh
		ja	short loc_403877

loc_403867:				; CODE XREF: .text:00403855j
		mov	word ptr [ebp-1Ch], 2Eh
		mov	ebx, 1
		jmp	loc_4038FF
; ---------------------------------------------------------------------------

loc_403877:				; CODE XREF: .text:0040385Fj
					; .text:00403865j
		mov	ax, [ebp-1Ch]
		cmp	ax, 0D800h
		jb	short loc_4038C4
		cmp	ax, 0DBFFh
		ja	short loc_4038C4
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	8		; cbMultiByte
		lea	edx, [ebp-8]
		push	edx		; lpMultiByteStr
		push	2		; cchWideChar
		lea	ecx, [ebp-1Ch]
		push	ecx		; lpWideCharStr
		push	0		; dwFlags
		push	edi		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4038B7
		push	ebx		; n
		lea	eax, [ebp-8]
		push	eax		; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4038BC

loc_4038B7:				; CODE XREF: .text:004038A3j
		mov	ebx, 1

loc_4038BC:				; CODE XREF: .text:004038B5j
		mov	word ptr [ebp-1Ch], 2Eh
		jmp	short loc_4038FF
; ---------------------------------------------------------------------------

loc_4038C4:				; CODE XREF: .text:0040387Fj
					; .text:00403885j
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	8		; cbMultiByte
		lea	eax, [ebp-8]
		push	eax		; lpMultiByteStr
		push	1		; cchWideChar
		lea	edx, [ebp-1Ch]
		push	edx		; lpWideCharStr
		push	0		; dwFlags
		push	edi		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4038F4
		push	ebx		; n
		lea	eax, [ebp-8]
		push	eax		; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4038FF

loc_4038F4:				; CODE XREF: .text:004038E0j
		mov	word ptr [ebp-1Ch], 2Eh
		mov	ebx, 1

loc_4038FF:				; CODE XREF: .text:00403872j
					; .text:004038C2j ...
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_40390F
		mov	eax, [ebp+14h]
		mov	dx, [ebp-1Ch]
		mov	[eax], dx

loc_40390F:				; CODE XREF: .text:00403903j
		mov	eax, ebx

loc_403911:				; CODE XREF: .text:00403823j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  24. _Iszero
; Exported entry 641. Iszero

; signed int __cdecl Iszero(void *data,	int n)
		public Iszero
Iszero:					; CODE XREF: .text:00492C55p
		push	ebp		; _Iszero
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		test	edx, edx
		jnz	short loc_403929
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_403929:				; CODE XREF: .text:00403923j
		test	eax, eax
		jle	short loc_40393D

loc_40392D:				; CODE XREF: .text:0040393Bj
		mov	cl, [edx]
		inc	edx
		test	cl, cl
		jz	short loc_403938
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_403938:				; CODE XREF: .text:00403932j
		dec	eax
		test	eax, eax
		jg	short loc_40392D

loc_40393D:				; CODE XREF: .text:0040392Bj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  25. _Guidtotext
; Exported entry 621. Guidtotext

; int __cdecl Guidtotext(uchar *guid, wchar_t *s)
		public Guidtotext
Guidtotext:				; CODE XREF: .text:004428F1p
					; .text:0048081Bp
		push	ebp		; _Guidtotext
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_403955
		test	edx, edx
		jnz	short loc_403959

loc_403955:				; CODE XREF: .text:0040394Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_403959:				; CODE XREF: .text:00403953j
		xor	ecx, ecx
		mov	cl, [eax+0Fh]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+0Eh]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+0Dh]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+0Ch]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+0Bh]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+0Ah]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+9]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+8]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+6]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+7]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+4]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+5]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+1]
		push	ecx
		xor	ecx, ecx
		mov	cl, [eax+2]
		push	ecx
		movzx	eax, byte ptr [eax+3]
		push	eax
		push	offset a02x02x02x02x02 ; "{%02X%02X%02X%02X-%02X%02X-%02X%02X-%02"...
		push	edx		; buffer
		call	_swprintf
		add	esp, 48h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		