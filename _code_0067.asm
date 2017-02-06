.code

; int __cdecl loc_47D990(int, int, void	*src, int, int,	int, int, int, int, int, int, int)
loc_47D990:				; CODE XREF: .text:00481329p
					; .text:00481419p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 6

loc_47D999:				; CODE XREF: .text:0047D9A1j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_47D999
		add	esp, 0FFFFF224h
		mov	eax, [ebp-4]
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+28h], 0
		mov	edi, [ebp+20h]
		jz	short loc_47D9BF
		mov	eax, [ebp+28h]
		xor	edx, edx
		mov	[eax], edx

loc_47D9BF:				; CODE XREF: .text:0047D9B6j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_47D9DC
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_47D9DC
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_47D9DC
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_47D9DC
		cmp	edi, 3
		jg	short loc_47D9E3

loc_47D9DC:				; CODE XREF: .text:0047D9C3j
					; .text:0047D9C9j ...
		xor	eax, eax
		jmp	loc_480D36
; ---------------------------------------------------------------------------

loc_47D9E3:				; CODE XREF: .text:0047D9DAj
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_47D9F1
		mov	edx, [ebp+18h]
		cmp	edx, [ebp+14h]
		jbe	short loc_47D9F7

loc_47D9F1:				; CODE XREF: .text:0047D9E7j
		mov	ecx, [ebp+14h]
		mov	[ebp+18h], ecx

loc_47D9F7:				; CODE XREF: .text:0047D9EFj
		xor	ebx, ebx
		cmp	dword ptr [ebp+14h], 0
		jbe	loc_480D2B

loc_47DA03:				; CODE XREF: .text:00480D25j
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	dword ptr [ebp-50h], 4
		mov	edx, [ebp+18h]
		cmp	edx, [ebp-50h]
		jnb	short loc_47DA1E
		lea	ecx, [ebp+18h]
		jmp	short loc_47DA21
; ---------------------------------------------------------------------------

loc_47DA1E:				; CODE XREF: .text:0047DA17j
		lea	ecx, [ebp-50h]

loc_47DA21:				; CODE XREF: .text:0047DA1Cj
		mov	eax, [ecx]
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; src
		lea	eax, [ebp-1Ch]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp-1Ch]
		mov	[ebp-20h], edx
		test	ebx, ebx
		jle	short loc_47DA4F
		lea	ecx, [edi-1]
		cmp	ebx, ecx
		jge	short loc_47DA4F
		mov	eax, [ebp+1Ch]
		mov	word ptr [eax+ebx*2], 2Ch
		inc	ebx

loc_47DA4F:				; CODE XREF: .text:0047DA3Cj
					; .text:0047DA43j
		mov	edx, [ebp+18h]
		cmp	edx, [ebp+14h]
		jbe	loc_480D0A
		push	$CTW0("???")	; "???"
		sub	edi, ebx
		push	edi		; n
		mov	ecx, ebx
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D2B
; ---------------------------------------------------------------------------

loc_47DA7A:				; CODE XREF: .text:00480D0Fj
		mov	eax, [ebp+0Ch]
		mov	al, [eax+esi]
		test	al, al
		jz	loc_480D15
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	cl, al
		mov	[ebp-14h], ecx
		inc	esi
		mov	eax, [ebp-14h]
		cmp	eax, 63h	; switch 100 cases
		ja	loc_480CF6	; jumptable 0047DA9F default case
		jmp	ds:off_47DAA6[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_47DAA6	dd offset loc_480CF6, offset loc_47DC36, offset	loc_47DC4A
					; DATA XREF: .text:0047DA9Fr
		dd offset loc_47DC6C, offset loc_47DCA9, offset	loc_47DCB4 ; jump table	for switch statement
		dd offset loc_47DCD6, offset loc_47DCF8, offset	loc_47DD1A
		dd offset loc_47DD3C, offset loc_47DD5E, offset	loc_47DD80
		dd offset loc_47DDA9, offset loc_47DDD2, offset	loc_47DE0F
		dd offset loc_47DE4C, offset loc_47DE73, offset	loc_47DE8F
		dd offset loc_47DEE8, offset loc_47DF35, offset	loc_47DF6B
		dd offset loc_480CF6, offset loc_480CF6, offset	loc_480CF6
		dd offset loc_480CF6, offset loc_480CF6, offset	loc_480CF6
		dd offset loc_480CF6, offset loc_480CF6, offset	loc_480CF6
		dd offset loc_480CF6, offset loc_480CF6, offset	loc_47E0EB
		dd offset loc_47E214, offset loc_47E24A, offset	loc_47E280
		dd offset loc_47E322, offset loc_47E364, offset	loc_47E3C5
		dd offset loc_47E420, offset loc_47E46F, offset	loc_47E4B0
		dd offset loc_47E594, offset loc_47E214, offset	loc_47E60E
		dd offset loc_47E6D8, offset loc_47E782, offset	loc_47E8D1
		dd offset loc_47EA0D, offset loc_47EB04, offset	loc_47EA0D
		dd offset loc_47EB04, offset loc_47EBDC, offset	loc_47EC74
		dd offset loc_47EEAF, offset loc_47ED6E, offset	loc_47EE6D
		dd offset loc_47EEAF, offset loc_47EEF1, offset	loc_47EFB5
		dd offset loc_480CF6, offset loc_47F012, offset	loc_47F083
		dd offset loc_47F25B, offset loc_47F2F3, offset	loc_47F457
		dd offset loc_47F543, offset loc_47F872, offset	loc_47FE9F
		dd offset loc_47FED5, offset loc_4801F9, offset	loc_4801F9
		dd offset loc_4801F9, offset loc_480264, offset	loc_48029A
		dd offset loc_480CF6, offset loc_480CF6, offset	loc_480CF6
		dd offset loc_480CF6, offset loc_480CF6, offset	loc_48030B
		dd offset loc_480394, offset loc_480406, offset	loc_48043E
		dd offset loc_480523, offset loc_480CF6, offset	loc_480CF6
		dd offset loc_480CF6, offset loc_480CF6, offset	loc_480CF6
		dd offset loc_48060D, offset loc_48060D, offset	loc_48060D
		dd offset loc_48060D, offset loc_48060D, offset	loc_48060D
		dd offset loc_480903, offset loc_480903, offset	loc_480903
		dd offset loc_480903
; ---------------------------------------------------------------------------

loc_47DC36:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp+0Ch]	; jumptable 0047DA9F case 1
		mov	ecx, [edx+esi]
		and	ecx, [ebp-20h]
		add	esi, 4
		mov	[ebp-1Ch], ecx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DC4A:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+0Ch]	; jumptable 0047DA9F case 2
		mov	eax, [eax+esi]
		mov	edx, [ebp-20h]
		mov	[ebp-1Ch], edx
		jmp	short loc_47DC5D
; ---------------------------------------------------------------------------

loc_47DC58:				; CODE XREF: .text:0047DC5Fj
		shr	eax, 1
		shr	dword ptr [ebp-1Ch], 1

loc_47DC5D:				; CODE XREF: .text:0047DC56j
		test	al, 1
		jz	short loc_47DC58
		and	[ebp-1Ch], eax
		add	esi, 4
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DC6C:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp+0Ch]	; jumptable 0047DA9F case 3
		mov	eax, [ecx+esi]
		mov	edx, [ebp-20h]
		mov	[ebp-1Ch], edx
		jmp	short loc_47DC7F
; ---------------------------------------------------------------------------

loc_47DC7A:				; CODE XREF: .text:0047DC81j
		shr	eax, 1
		shr	dword ptr [ebp-1Ch], 1

loc_47DC7F:				; CODE XREF: .text:0047DC78j
		test	al, 1
		jz	short loc_47DC7A
		and	[ebp-1Ch], eax
		mov	edx, 80000000h
		jmp	short loc_47DC95
; ---------------------------------------------------------------------------

loc_47DC8D:				; CODE XREF: .text:0047DC97j
		shr	edx, 1
		or	edx, 80000000h

loc_47DC95:				; CODE XREF: .text:0047DC8Bj
		test	edx, eax
		jz	short loc_47DC8D
		test	[ebp-1Ch], edx
		jz	short loc_47DCA1
		or	[ebp-1Ch], edx

loc_47DCA1:				; CODE XREF: .text:0047DC9Cj
		add	esi, 4
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DCA9:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp-20h]	; jumptable 0047DA9F case 4
		mov	[ebp-1Ch], eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DCB4:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp+0Ch]	; jumptable 0047DA9F case 5
		mov	eax, [ecx+esi]
		cmp	eax, [ebp-1Ch]
		jnz	short loc_47DCC7
		add	esi, 6
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DCC7:				; CODE XREF: .text:0047DCBDj
		mov	edx, [ebp+0Ch]
		movzx	ecx, word ptr [edx+esi+4]
		mov	esi, ecx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DCD6:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+0Ch]	; jumptable 0047DA9F case 6
		mov	edx, [eax+esi]
		cmp	edx, [ebp-1Ch]
		jz	short loc_47DCE9
		add	esi, 6
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DCE9:				; CODE XREF: .text:0047DCDFj
		mov	ecx, [ebp+0Ch]
		movzx	eax, word ptr [ecx+esi+4]
		mov	esi, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DCF8:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp+0Ch]	; jumptable 0047DA9F case 7
		mov	ecx, [edx+esi]
		and	ecx, [ebp-1Ch]
		jz	short loc_47DD0B
		add	esi, 6
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD0B:				; CODE XREF: .text:0047DD01j
		mov	eax, [ebp+0Ch]
		movzx	edx, word ptr [eax+esi+4]
		mov	esi, edx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD1A:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp+0Ch]	; jumptable 0047DA9F case 8
		mov	eax, [ecx+esi]
		and	eax, [ebp-1Ch]
		jnz	short loc_47DD2D
		add	esi, 6
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD2D:				; CODE XREF: .text:0047DD23j
		mov	edx, [ebp+0Ch]
		movzx	ecx, word ptr [edx+esi+4]
		mov	esi, ecx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD3C:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+0Ch]	; jumptable 0047DA9F case 9
		mov	edx, [eax+esi]
		cmp	edx, [ebp-1Ch]
		jb	short loc_47DD4F
		add	esi, 6
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD4F:				; CODE XREF: .text:0047DD45j
		mov	ecx, [ebp+0Ch]
		movzx	eax, word ptr [ecx+esi+4]
		mov	esi, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD5E:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp+0Ch]	; jumptable 0047DA9F case 10
		mov	ecx, [edx+esi]
		cmp	ecx, [ebp-1Ch]
		ja	short loc_47DD71
		add	esi, 6
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD71:				; CODE XREF: .text:0047DD67j
		mov	eax, [ebp+0Ch]
		movzx	edx, word ptr [eax+esi+4]
		mov	esi, edx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD80:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp+0Ch]	; jumptable 0047DA9F case 11
		mov	edx, [ebp+0Ch]
		mov	eax, [ecx+esi]
		and	eax, [ebp-20h]
		cmp	eax, [edx+esi+4]
		jnz	short loc_47DD9A
		add	esi, 0Ah
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DD9A:				; CODE XREF: .text:0047DD90j
		mov	ecx, [ebp+0Ch]
		movzx	eax, word ptr [ecx+esi+8]
		mov	esi, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DDA9:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp+0Ch]	; jumptable 0047DA9F case 12
		mov	eax, [ebp+0Ch]
		mov	ecx, [edx+esi]
		and	ecx, [ebp-20h]
		cmp	ecx, [eax+esi+4]
		jz	short loc_47DDC3
		add	esi, 0Ah
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DDC3:				; CODE XREF: .text:0047DDB9j
		mov	edx, [ebp+0Ch]
		movzx	ecx, word ptr [edx+esi+8]
		mov	esi, ecx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DDD2:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+0Ch]	; jumptable 0047DA9F case 13
		mov	eax, [eax+esi]
		mov	edx, [ebp-20h]
		mov	[ebp-18h], edx
		jmp	short loc_47DDE5
; ---------------------------------------------------------------------------

loc_47DDE0:				; CODE XREF: .text:0047DDE7j
		shr	eax, 1
		shr	dword ptr [ebp-18h], 1

loc_47DDE5:				; CODE XREF: .text:0047DDDEj
		test	al, 1
		jz	short loc_47DDE0
		and	[ebp-18h], eax
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+esi+4]
		cmp	eax, [ebp-18h]
		jnz	short loc_47DE00
		add	esi, 0Ah
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DE00:				; CODE XREF: .text:0047DDF6j
		mov	edx, [ebp+0Ch]
		movzx	ecx, word ptr [edx+esi+8]
		mov	esi, ecx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DE0F:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+0Ch]	; jumptable 0047DA9F case 14
		mov	eax, [eax+esi]
		mov	edx, [ebp-20h]
		mov	[ebp-18h], edx
		jmp	short loc_47DE22
; ---------------------------------------------------------------------------

loc_47DE1D:				; CODE XREF: .text:0047DE24j
		shr	eax, 1
		shr	dword ptr [ebp-18h], 1

loc_47DE22:				; CODE XREF: .text:0047DE1Bj
		test	al, 1
		jz	short loc_47DE1D
		and	[ebp-18h], eax
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+esi+4]
		cmp	eax, [ebp-18h]
		jz	short loc_47DE3D
		add	esi, 0Ah
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DE3D:				; CODE XREF: .text:0047DE33j
		mov	edx, [ebp+0Ch]
		movzx	ecx, word ptr [edx+esi+8]
		mov	esi, ecx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DE4C:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+0Ch]	; jumptable 0047DA9F case 15
		movzx	edx, word ptr [eax+esi]
		mov	esi, edx
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DE5A:				; CODE XREF: .text:0047DE7Bj
		lea	ecx, [edi-1]
		cmp	ebx, ecx
		jge	short loc_47DE70
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp+1Ch]
		mov	dx, [eax+esi]
		mov	[ecx+ebx*2], dx
		inc	ebx

loc_47DE70:				; CODE XREF: .text:0047DE5Fj
		add	esi, 2

loc_47DE73:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+0Ch]	; jumptable 0047DA9F case 16
		cmp	word ptr [eax+esi], 0
		jnz	short loc_47DE5A
		add	esi, 2
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DE8F:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	word ptr [ebp-3Ah], 0 ;	jumptable 0047DA9F case	17
		jmp	short loc_47DEB4
; ---------------------------------------------------------------------------

loc_47DE97:				; CODE XREF: .text:0047DEBCj
		lea	edx, [edi-1]
		cmp	ebx, edx
		jge	short loc_47DEB1
		mov	ecx, [ebp+0Ch]
		mov	ax, [ecx+esi]
		mov	[ebp-3Ah], ax
		mov	edx, [ebp+1Ch]
		mov	[edx+ebx*2], ax
		inc	ebx

loc_47DEB1:				; CODE XREF: .text:0047DE9Cj
		add	esi, 2

loc_47DEB4:				; CODE XREF: .text:0047DE95j
		mov	ecx, [ebp+0Ch]
		cmp	word ptr [ecx+esi], 0
		jnz	short loc_47DE97
		add	esi, 2
		cmp	word ptr [ebp-3Ah], 7Ch
		jz	short loc_47DED9
		lea	eax, [edi-1]
		cmp	ebx, eax
		jge	short loc_47DED9
		mov	edx, [ebp+1Ch]
		mov	word ptr [edx+ebx*2], 7Ch
		inc	ebx

loc_47DED9:				; CODE XREF: .text:0047DEC6j
					; .text:0047DECDj
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DEE8:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp+0Ch]	; jumptable 0047DA9F case 18
		mov	eax, [ecx+esi]
		and	eax, [ebp-1Ch]
		test	eax, eax
		jz	short loc_47DF2C
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+esi]
		and	ecx, [ebp-1Ch]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	HexprintW
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47DF2C:				; CODE XREF: .text:0047DEF3j
		add	esi, 4
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DF34:				; CODE XREF: .text:0047DF49j
					; .text:0047DF52j ...
		dec	ebx

loc_47DF35:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		test	ebx, ebx	; jumptable 0047DA9F case 19
		jle	loc_480D0A
		mov	edx, [ebp+1Ch]
		mov	ax, [edx+ebx*2-2]
		cmp	ax, 20h
		jz	short loc_47DF34
		mov	edx, [ebp+1Ch]
		cmp	ax, 7Ch
		jz	short loc_47DF34
		mov	ecx, [ebp+1Ch]
		cmp	ax, 2Eh
		jz	short loc_47DF34
		mov	edx, [ebp+1Ch]
		cmp	ax, 2Ch
		jz	short loc_47DF34
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DF6B:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		xor	eax, eax	; jumptable 0047DA9F case 20
		mov	[ebp-8], eax
		jmp	short loc_47DF97
; ---------------------------------------------------------------------------

loc_47DF72:				; CODE XREF: .text:0047DFA0j
		push	1Fh		; maxlen
		mov	ecx, [ebp-8]
		shl	ecx, 6
		add	ecx, offset word_5EA848
		push	ecx		; s2
		mov	eax, [ebp+0Ch]
		add	eax, esi
		inc	eax
		push	eax		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_47DFA2
		inc	dword ptr [ebp-8]

loc_47DF97:				; CODE XREF: .text:0047DF70j
		mov	edx, [ebp-8]
		cmp	edx, dword_5EBC68
		jl	short loc_47DF72

loc_47DFA2:				; CODE XREF: .text:0047DF92j
		mov	ecx, dword_5EBC68
		cmp	ecx, [ebp-8]
		jg	short loc_47DFF8
		cmp	dword_5EBC68, 8
		jl	short loc_47DFF2
		inc	esi
		jmp	short loc_47DFBC
; ---------------------------------------------------------------------------

loc_47DFB9:				; CODE XREF: .text:0047DFC4j
		add	esi, 2

loc_47DFBC:				; CODE XREF: .text:0047DFB7j
		mov	eax, [ebp+0Ch]
		cmp	word ptr [eax+esi], 0
		jnz	short loc_47DFB9
		add	esi, 2
		jmp	short loc_47DFCE
; ---------------------------------------------------------------------------

loc_47DFCB:				; CODE XREF: .text:0047DFD6j
		add	esi, 2

loc_47DFCE:				; CODE XREF: .text:0047DFC9j
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+esi], 0
		jnz	short loc_47DFCB
		add	esi, 2
		jmp	short loc_47DFE0
; ---------------------------------------------------------------------------

loc_47DFDD:				; CODE XREF: .text:0047DFE8j
		add	esi, 2

loc_47DFE0:				; CODE XREF: .text:0047DFDBj
		mov	ecx, [ebp+0Ch]
		cmp	word ptr [ecx+esi], 0
		jnz	short loc_47DFDD
		add	esi, 2
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47DFF2:				; CODE XREF: .text:0047DFB4j
		inc	dword_5EBC68

loc_47DFF8:				; CODE XREF: .text:0047DFABj
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-8]
		xor	edx, edx
		mov	dl, [eax+esi]
		xor	eax, eax
		mov	dword ptr word_5EBC48[ecx*4], edx
		mov	[ebp-4], eax
		mov	edx, [ebp-8]
		inc	esi
		shl	edx, 3
		lea	eax, word_5EA848[edx*8]
		jmp	short loc_47E032
; ---------------------------------------------------------------------------

loc_47E01F:				; CODE XREF: .text:0047E03Aj
		mov	edx, [ebp+0Ch]
		mov	cx, [edx+esi]
		mov	[eax], cx
		add	eax, 2
		inc	dword ptr [ebp-4]
		add	esi, 2

loc_47E032:				; CODE XREF: .text:0047E01Dj
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+esi], 0
		jnz	short loc_47E01F
		mov	eax, [ebp-8]
		xor	edx, edx
		shl	eax, 6
		add	esi, 2
		lea	ecx, word_5EA848[eax]
		mov	eax, [ebp-4]
		mov	word ptr [ecx+eax*2], 0
		mov	[ebp-4], edx
		mov	ecx, [ebp-8]
		shl	ecx, 3
		lea	eax, word_5EAA48[ecx*8]
		jmp	short loc_47E07B
; ---------------------------------------------------------------------------

loc_47E068:				; CODE XREF: .text:0047E083j
		mov	edx, [ebp+0Ch]
		mov	cx, [edx+esi]
		mov	[eax], cx
		add	eax, 2
		inc	dword ptr [ebp-4]
		add	esi, 2

loc_47E07B:				; CODE XREF: .text:0047E066j
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+esi], 0
		jnz	short loc_47E068
		mov	eax, [ebp-8]
		xor	edx, edx
		shl	eax, 6
		add	esi, 2
		lea	ecx, word_5EAA48[eax]
		mov	eax, [ebp-4]
		mov	word ptr [ecx+eax*2], 0
		mov	[ebp-4], edx
		mov	ecx, [ebp-8]
		shl	ecx, 6
		lea	eax, word_5EAC48[ecx*8]
		jmp	short loc_47E0C4
; ---------------------------------------------------------------------------

loc_47E0B1:				; CODE XREF: .text:0047E0CCj
		mov	edx, [ebp+0Ch]
		mov	cx, [edx+esi]
		mov	[eax], cx
		add	eax, 2
		inc	dword ptr [ebp-4]
		add	esi, 2

loc_47E0C4:				; CODE XREF: .text:0047E0AFj
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+esi], 0
		jnz	short loc_47E0B1
		mov	eax, [ebp-8]
		shl	eax, 9
		add	esi, 2
		lea	ecx, word_5EAC48[eax]
		mov	eax, [ebp-4]
		mov	word ptr [ecx+eax*2], 0
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E0EB:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	word ptr [ebp-450h], 0 ; jumptable 0047DA9F case 32
		push	100h		; nsymb
		lea	edx, [ebp-250h]
		push	edx		; symb
		push	0		; isstatic
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		call	Isstring
		add	esp, 10h
		test	eax, eax
		jle	short loc_47E135
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E135:				; CODE XREF: .text:0047E110j
		cmp	dword ptr [ebp+14h], 4
		jnz	short loc_47E143
		lea	eax, [ebp-450h]
		jmp	short loc_47E145
; ---------------------------------------------------------------------------

loc_47E143:				; CODE XREF: .text:0047E139j
		xor	eax, eax

loc_47E145:				; CODE XREF: .text:0047E141j
		push	eax		; comment
		lea	edx, [ebp-250h]
		push	100h		; nsymb
		push	edx		; symb
		push	8F26001h	; mode
		push	0		; amod
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		test	eax, eax
		jz	short loc_47E1DE
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 4
		jnz	loc_480D0A
		cmp	word ptr [ebp-450h], 0
		jz	loc_480D0A
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543C58 ; ", "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-450h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E1DE:				; CODE XREF: .text:0047E167j
		mov	ecx, [ebp-1Ch]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	SignedhexW
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E214:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp-1Ch]	; jumptable 0047DA9F cases 33,43
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	SignedhexW
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E24A:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp-1Ch]	; jumptable 0047DA9F case 34
		push	eax		; u
		lea	edx, [ebp-250h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		lea	ecx, [ebp-250h]
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	ecx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E280:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp-1Ch]	; jumptable 0047DA9F case 35
		push	ecx
		push	offset aLow08x	; "Low:	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-250h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+18h], 8
		jb	loc_480D0A
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_543F54 ; " => "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp+10h]
		push	dword ptr [eax+4]
		push	dword ptr [eax]
		push	offset aLd	; "%Ld"
		lea	ecx, [ebp-250h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E322:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp-1Ch]	; jumptable 0047DA9F case 36
		push	eax
		push	offset aHigh08x	; "High: %08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-250h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-250h]
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	ecx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E364:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 37
		jl	short loc_47E38A
		cmp	dword ptr [ebp-1Ch], 9
		jg	short loc_47E38A
		mov	ecx, [ebp-1Ch]
		lea	eax, [ebp-250h]
		push	ecx
		push	offset aLi	; "%li"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_47E3A2
; ---------------------------------------------------------------------------

loc_47E38A:				; CODE XREF: .text:0047E368j
					; .text:0047E36Ej
		mov	edx, [ebp-1Ch]
		lea	ecx, [ebp-250h]
		push	edx
		push	offset aLi_	; "%li."
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_47E3A2:				; CODE XREF: .text:0047E388j
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E3C5:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 9 ; jumptable 0047DA9F case 38
		ja	short loc_47E3E5
		mov	eax, [ebp-1Ch]
		lea	edx, [ebp-250h]
		push	eax
		push	offset aLu_0	; "%lu"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_47E3FD
; ---------------------------------------------------------------------------

loc_47E3E5:				; CODE XREF: .text:0047E3C9j
		mov	ecx, [ebp-1Ch]
		lea	eax, [ebp-250h]
		push	ecx
		push	offset aLu__1	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_47E3FD:				; CODE XREF: .text:0047E3E3j
		lea	edx, [ebp-250h]
		mov	ecx, edi
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E420:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 39
		jnz	short loc_47E444
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aFalse	; "FALSE"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47E460
; ---------------------------------------------------------------------------

loc_47E444:				; CODE XREF: .text:0047E424j
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aTrue_3	; "TRUE"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47E460:				; CODE XREF: .text:0047E442j
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E46F:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp-1Ch]	; jumptable 0047DA9F case 40
		lea	eax, [ebp-250h]
		and	ecx, 0FFh
		push	ecx
		push	offset a02x_7	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E4B0:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	dl, [ebp-1Ch]	; jumptable 0047DA9F case 41
		push	edx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_47E4E8
		mov	ecx, [ebp-1Ch]
		lea	eax, [ebp-250h]
		and	ecx, 0FFh
		push	ecx
		push	offset aC_4	; "'%c'"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	dword_5EBC6C, 1
		jmp	short loc_47E506
; ---------------------------------------------------------------------------

loc_47E4E8:				; CODE XREF: .text:0047E4BCj
		mov	edx, [ebp-1Ch]
		lea	ecx, [ebp-250h]
		and	edx, 0FFh
		push	edx
		push	offset a02x_7	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_47E506:				; CODE XREF: .text:0047E4E6j
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_480D0A
		push	10h		; mode
		mov	eax, [ebp-1Ch]
		push	eax		; c
		lea	edx, [ebp-250h]
		push	edx		; s
		call	Commentcharacter
		add	esp, 0Ch
		test	eax, eax
		jle	loc_480D0A
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_543C58 ; ", "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-250h]
		mov	ecx, edi
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E594:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	dx, [ebp-1Ch]	; jumptable 0047DA9F case 42
		push	edx		; a1
		call	IstextW
		pop	ecx
		test	eax, eax
		jz	short loc_47E5CD
		mov	ecx, [ebp-1Ch]
		lea	eax, [ebp-250h]
		and	ecx, 0FFh
		push	ecx
		push	offset aC_4	; "'%c'"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	dword_5EBC6C, 1
		jmp	short loc_47E5EB
; ---------------------------------------------------------------------------

loc_47E5CD:				; CODE XREF: .text:0047E5A1j
		mov	edx, [ebp-1Ch]
		lea	ecx, [ebp-250h]
		and	edx, 0FFFFh
		push	edx
		push	offset a04x_5	; "%04X"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_47E5EB:				; CODE XREF: .text:0047E5CBj
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E60E:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 44
		jnz	short loc_47E63F
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aNull_4	; "NULL"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E63F:				; CODE XREF: .text:0047E612j
		push	5		; mode
		push	200h		; size
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		lea	eax, [ebp-650h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_47E683
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	$CTW0("???")	; "???"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E683:				; CODE XREF: .text:0047E660j
		push	100h		; nw
		lea	eax, [ebp-250h]
		push	eax		; w
		mov	edx, [ebp-24h]
		push	edx		; nt
		lea	ecx, [ebp-650h]
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		mov	[ebp-0Ch], eax
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	1		; stopatzero
		push	eax		; ntext
		add	edx, edx
		add	edx, [ebp+1Ch]
		lea	eax, [ebp-250h]
		push	edx		; text
		mov	ecx, [ebp-0Ch]
		push	ecx		; ndata
		push	eax		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E6D8:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 45
		jnz	short loc_47E709
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aNull_4	; "NULL"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E709:				; CODE XREF: .text:0047E6DCj
		push	5		; mode
		push	200h		; size
		mov	eax, [ebp-1Ch]
		push	eax		; _addr
		lea	edx, [ebp-650h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 2
		jnb	short loc_47E74D
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	$CTW0("???")	; "???"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E74D:				; CODE XREF: .text:0047E72Aj
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	1		; stopatzero
		push	edx		; ntext
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		lea	edx, [ebp-650h]
		push	ecx		; text
		mov	eax, [ebp-24h]
		shr	eax, 1
		push	eax		; ndata
		push	edx		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E782:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 46
		jnz	short loc_47E7B3
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aNull_4	; "NULL"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E7B3:				; CODE XREF: .text:0047E786j
		push	5		; mode
		push	200h		; size
		mov	edx, [ebp-1Ch]
		push	edx		; _addr
		lea	ecx, [ebp-650h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_47E7F7
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	$CTW0("???")	; "???"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E7F7:				; CODE XREF: .text:0047E7D4j
		xor	ecx, ecx
		mov	[ebp-2Ch], ecx
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-2Ch]
		jbe	loc_480D0A

loc_47E808:				; CODE XREF: .text:0047E8C6j
		cmp	dword ptr [ebp-2Ch], 0
		jbe	short loc_47E82A
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_543C58 ; ", "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47E82A:				; CODE XREF: .text:0047E80Cj
		mov	eax, [ebp-24h]
		sub	eax, [ebp-2Ch]
		push	eax		; n
		lea	edx, [ebp-650h]
		add	edx, [ebp-2Ch]
		push	edx		; src
		call	StrlenA
		add	esp, 8
		mov	[ebp-28h], eax
		lea	ecx, [ebp-250h]
		lea	edx, [ebp-650h]
		push	100h		; nw
		push	ecx		; w
		mov	eax, [ebp-24h]
		sub	eax, [ebp-2Ch]
		push	eax		; nt
		add	edx, [ebp-2Ch]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		mov	[ebp-0Ch], eax
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	1		; stopatzero
		push	ecx		; ntext
		add	eax, eax
		add	eax, [ebp+1Ch]
		lea	ecx, [ebp-250h]
		push	eax		; text
		mov	edx, [ebp-0Ch]
		push	edx		; ndata
		push	ecx		; data
		call	Stringtotext
		add	ebx, eax
		mov	eax, [ebp-28h]
		inc	eax
		add	esp, 14h
		add	[ebp-2Ch], eax
		mov	dword_5EBC6C, 1
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebp-24h]
		jnb	loc_480D0A
		mov	ecx, [ebp-2Ch]
		cmp	byte ptr [ebp+ecx-650h], 0
		jz	loc_480D0A
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-2Ch]
		ja	loc_47E808
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E8D1:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 47
		jnz	short loc_47E902
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aNull_4	; "NULL"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E902:				; CODE XREF: .text:0047E8D5j
		push	5		; mode
		push	200h		; size
		mov	eax, [ebp-1Ch]
		push	eax		; _addr
		lea	edx, [ebp-650h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 2
		jnb	short loc_47E946
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	$CTW0("???")	; "???"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47E946:				; CODE XREF: .text:0047E923j
		xor	edx, edx
		mov	[ebp-2Ch], edx
		jmp	loc_47E9F9
; ---------------------------------------------------------------------------

loc_47E950:				; CODE XREF: .text:0047EA02j
		cmp	dword ptr [ebp-2Ch], 0
		jbe	short loc_47E972
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_543C58 ; ", "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47E972:				; CODE XREF: .text:0047E954j
		mov	edx, [ebp-24h]
		sub	edx, [ebp-2Ch]
		shr	edx, 1
		push	edx		; n
		lea	ecx, [ebp-650h]
		add	ecx, [ebp-2Ch]
		push	ecx		; src
		call	StrlenW
		add	esp, 8
		mov	[ebp-28h], eax
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	1		; stopatzero
		push	eax		; ntext
		add	edx, edx
		add	edx, [ebp+1Ch]
		lea	eax, [ebp-650h]
		push	edx		; text
		mov	ecx, [ebp-28h]
		push	ecx		; ndata
		add	eax, [ebp-2Ch]
		push	eax		; data
		call	Stringtotext
		mov	edx, [ebp-28h]
		add	esp, 14h
		add	edx, edx
		add	ebx, eax
		add	edx, 2
		mov	dword_5EBC6C, 1
		add	[ebp-2Ch], edx
		mov	ecx, [ebp-2Ch]
		add	ecx, 2
		cmp	ecx, [ebp-24h]
		ja	loc_480D0A
		mov	eax, [ebp-2Ch]
		cmp	byte ptr [ebp+eax-650h], 0
		jnz	short loc_47E9F9
		mov	edx, [ebp-2Ch]
		cmp	byte ptr [ebp+edx-64Fh], 0
		jz	loc_480D0A

loc_47E9F9:				; CODE XREF: .text:0047E94Bj
					; .text:0047E9E6j
		mov	ecx, [ebp-24h]
		sub	ecx, [ebp-2Ch]
		cmp	ecx, 2
		jnb	loc_47E950
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EA0D:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F cases 48,50
		jnz	short loc_47EA3E
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aNull_4	; "NULL"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EA3E:				; CODE XREF: .text:0047EA11j
		push	5		; mode
		push	200h		; size
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		lea	eax, [ebp-650h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_47EA82
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	$CTW0("???")	; "???"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EA82:				; CODE XREF: .text:0047EA5Fj
		push	100h		; nw
		lea	eax, [ebp-250h]
		push	eax		; w
		mov	edx, [ebp-24h]
		push	edx		; nt
		lea	ecx, [ebp-650h]
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		inc	eax
		mov	[ebp-0Ch], eax
		mov	eax, edi
		sub	eax, ebx
		mov	edx, ebx
		push	1		; stopatzero
		push	eax		; ntext
		add	edx, edx
		lea	eax, [ebp-250h]
		add	edx, [ebp+1Ch]
		push	edx		; text
		mov	ecx, [ebp-0Ch]
		push	ecx		; ndata
		push	eax		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	edx, [ebp+34h]
		push	edx
		mov	ecx, [ebp+30h]
		push	ecx
		mov	eax, [ebp+2Ch]
		push	eax
		push	0
		cmp	dword ptr [ebp-14h], 32h
		setz	dl
		and	edx, 1
		push	edx
		mov	ecx, [ebp-0Ch]
		push	ecx
		lea	eax, [ebp-250h]
		push	eax
		call	loc_47C7C4
		add	esp, 1Ch
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EB04:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F cases 49,51
		jnz	short loc_47EB35
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aNull_4	; "NULL"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EB35:				; CODE XREF: .text:0047EB08j
		push	5		; mode
		push	200h		; size
		mov	eax, [ebp-1Ch]
		push	eax		; _addr
		lea	edx, [ebp-650h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 2
		jnb	short loc_47EB79
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	$CTW0("???")	; "???"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EB79:				; CODE XREF: .text:0047EB56j
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	1		; stopatzero
		push	edx		; ntext
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		lea	edx, [ebp-650h]
		push	ecx		; text
		mov	eax, [ebp-24h]
		shr	eax, 1
		push	eax		; ndata
		push	edx		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	ecx, [ebp+34h]
		push	ecx
		mov	eax, [ebp+30h]
		push	eax
		mov	edx, [ebp+2Ch]
		push	edx
		push	1
		cmp	dword ptr [ebp-14h], 33h
		setz	cl
		and	ecx, 1
		push	ecx
		mov	eax, [ebp-24h]
		shr	eax, 1
		push	eax
		lea	edx, [ebp-650h]
		push	edx
		call	loc_47C7C4
		add	esp, 1Ch
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EBDC:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		push	dword ptr [ebp-1Ch] ; jumptable	0047DA9F case 52
		lea	eax, [ebp-250h]
		push	eax		; s
		call	Printfloat4
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 4
		jnz	short loc_47EC65
		push	4		; size
		lea	edx, [ebp-1Ch]
		push	edx		; data
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Nameoffloat
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_47EC65
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543C58 ; ", "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47EC65:				; CODE XREF: .text:0047EC10j
					; .text:0047EC29j
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EC74:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp-1Ch]	; jumptable 0047DA9F case 53
		push	ecx
		push	offset aLow08x	; "Low:	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-250h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+18h], 8
		jb	loc_480D0A
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_543F54 ; " => "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp+10h]
		lea	ecx, [ebp-250h]
		push	dword ptr [eax+4]
		push	dword ptr [eax]	; d
		push	ecx		; s
		call	Printfloat8
		add	esp, 0Ch
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	8		; size
		mov	eax, [ebp+10h]
		push	eax		; data
		lea	edx, [ebp-250h]
		push	edx		; s
		call	Nameoffloat
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_47ED5F
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_543C58 ; ", "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-250h]
		mov	ecx, edi
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47ED5F:				; CODE XREF: .text:0047ED23j
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47ED6E:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp-1Ch]	; jumptable 0047DA9F case 55
		push	edx
		push	offset aLow08x	; "Low:	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-250h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+18h], 0Ah
		jb	loc_480D0A
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543F54 ; " => "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		mov	ecx, [ebp+10h]
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-250h]
		mov	ax, [ecx+8]
		push	eax
		push	dword ptr [ecx+4]
		push	dword ptr [ecx]	; ext
		push	edx		; s
		call	Printfloat10
		add	esp, 10h
		lea	ecx, [ebp-250h]
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	ecx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	0Ah		; size
		mov	ecx, [ebp+10h]
		push	ecx		; data
		lea	eax, [ebp-250h]
		push	eax		; s
		call	Nameoffloat
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_47EE5E
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_543C58 ; ", "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47EE5E:				; CODE XREF: .text:0047EE22j
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EE6D:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp-1Ch]	; jumptable 0047DA9F case 56
		push	eax
		push	offset aMiddle08x ; "Middle: %08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-250h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-250h]
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	ecx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EEAF:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp-1Ch]	; jumptable 0047DA9F cases 54,57
		push	ecx
		push	offset aHigh08x	; "High: %08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-250h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EEF1:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp-1Ch]	; jumptable 0047DA9F case 58
		lea	ecx, [ebp-250h]
		push	edx
		push	offset aLu__1	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 4
		jnz	loc_480D0A
		lea	eax, [ebp-250h]
		push	eax		; s
		mov	edx, [ebp-1Ch]
		push	edx		; id
		mov	ecx, [ebp+8]
		push	ecx		; pm
		call	Getmodulestring
		add	esp, 0Ch
		test	eax, eax
		jle	loc_480D0A
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543FF8 ; " => '"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	(offset	aUnableToCrea_0+36h) ; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EFB5:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 59
		jnz	short loc_47EFDC
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aNull_4	; "NULL"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47EFDC:				; CODE XREF: .text:0047EFB9j
		mov	eax, [ebp-1Ch]
		push	eax		; u
		lea	edx, [ebp-250h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		lea	ecx, [ebp-250h]
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	ecx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F012:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		lea	ecx, [ebp-250h]	; jumptable 0047DA9F case 61
		push	ecx		; _name
		mov	eax, [ebp-1Ch]
		push	eax		; value
		mov	edx, [ebp+0Ch]
		add	edx, esi
		push	edx		; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_47F044
		mov	ecx, [ebp-1Ch]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	SignedhexW
		add	esp, 8
		jmp	short loc_47F04E
; ---------------------------------------------------------------------------

loc_47F044:				; CODE XREF: .text:0047F02Dj
		mov	dword_5EBC6C, 1

loc_47F04E:				; CODE XREF: .text:0047F042j
		lea	edx, [ebp-250h]
		mov	ecx, edi
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47F071
; ---------------------------------------------------------------------------

loc_47F06E:				; CODE XREF: .text:0047F079j
		add	esi, 2

loc_47F071:				; CODE XREF: .text:0047F06Cj
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+esi], 0
		jnz	short loc_47F06E
		add	esi, 2
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F083:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 62
		jnz	short loc_47F0AA
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aNull_4	; "NULL"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47F249
; ---------------------------------------------------------------------------

loc_47F0AA:				; CODE XREF: .text:0047F087j
		push	0		; comment
		push	100h		; nsymb
		lea	edx, [ebp-250h]
		push	edx		; symb
		push	10400h		; mode
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_47F0C7
		xor	ecx, ecx
		jmp	short loc_47F0CC
; ---------------------------------------------------------------------------

loc_47F0C7:				; CODE XREF: .text:0047F0C1j
		mov	eax, [ebp+8]
		mov	ecx, [eax]

loc_47F0CC:				; CODE XREF: .text:0047F0C5j
		push	ecx		; amod
		mov	edx, [ebp-1Ch]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 4
		jnz	loc_47F249
		push	18h		; nstr
		lea	eax, [ebp-6DD0h]
		push	eax		; str
		push	0		; item0
		mov	edx, [ebp-1Ch]
		push	edx		; _addr
		mov	ecx, [ebp+0Ch]
		add	ecx, esi
		push	ecx		; _name
		call	Decodestructure
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	loc_47F23A
		mov	eax, [ebp+0Ch]
		lea	edx, [ebp-250h]
		add	eax, esi
		push	eax
		push	offset aS_11	; " -> %s {"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-250h]
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	ecx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_47F20E
; ---------------------------------------------------------------------------

loc_47F16D:				; CODE XREF: .text:0047F218j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_47F18F
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543C58 ; ", "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47F18F:				; CODE XREF: .text:0047F171j
		mov	ecx, [ebp-4]
		lea	edx, [ebp-6D80h]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		mov	eax, ebx
		shl	ecx, 4
		add	eax, eax
		add	ecx, edx
		push	ecx		; src
		mov	ecx, edi
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_544016 ; "="
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, [ebp-4]
		mov	edx, eax
		add	esp, 0Ch
		shl	eax, 4
		lea	ecx, [ebp-6B80h]
		add	eax, edx
		lea	eax, [edx+eax*4]
		mov	edx, ebx
		shl	eax, 4
		add	edx, edx
		add	eax, ecx
		push	eax		; src
		mov	eax, edi
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		inc	dword ptr [ebp-4]

loc_47F20E:				; CODE XREF: .text:0047F168j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-10h]
		jge	short loc_47F21E
		cmp	edi, ebx
		jg	loc_47F16D

loc_47F21E:				; CODE XREF: .text:0047F214j
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_54401A ; "}"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47F23A:				; CODE XREF: .text:0047F125j
		mov	dword_5EBC6C, 1
		jmp	short loc_47F249
; ---------------------------------------------------------------------------

loc_47F246:				; CODE XREF: .text:0047F251j
		add	esi, 2

loc_47F249:				; CODE XREF: .text:0047F0A5j
					; .text:0047F0FBj ...
		mov	ecx, [ebp+0Ch]
		cmp	word ptr [ecx+esi], 0
		jnz	short loc_47F246
		add	esi, 2
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F25B:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 63
		jnz	short loc_47F28C
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aNull_4	; "NULL"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F28C:				; CODE XREF: .text:0047F25Fj
		cmp	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jnz	short loc_47F2BD
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aInvalid_handle ; "INVALID_HANDLE_VALUE"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F2BD:				; CODE XREF: .text:0047F290j
		mov	edx, [ebp-1Ch]
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F2F3:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 64
		jnz	short loc_47F324
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aNull_4	; "NULL"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F324:				; CODE XREF: .text:0047F2F7j
		cmp	dword ptr [ebp-1Ch], 0FFFFFFFDh
		jnz	short loc_47F355
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aHwnd_message ; "HWND_MESSAGE"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F355:				; CODE XREF: .text:0047F328j
		mov	edx, [ebp-1Ch]
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	100h		; nMaxCount
		lea	eax, [ebp-250h]
		push	eax		; lpClassName
		mov	edx, [ebp-1Ch]
		push	edx		; hWnd
		call	GetClassNameW
		test	eax, eax
		jle	short loc_47F3EA
		push	offset aClass	; ", class = "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-250h]
		mov	ecx, edi
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1

loc_47F3EA:				; CODE XREF: .text:0047F39Dj
		push	100h		; nMaxCount
		lea	edx, [ebp-250h]
		push	edx		; lpString
		mov	ecx, [ebp-1Ch]
		push	ecx		; hWnd
		call	GetWindowTextW
		test	eax, eax
		jle	loc_480D0A
		push	offset aText_0	; ", text = "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F457:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 65
		jnz	short loc_47F488
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aNull_4	; "NULL"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F488:				; CODE XREF: .text:0047F45Bj
		mov	edx, [ebp-1Ch]
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp-1Ch]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-40h], eax
		cmp	dword ptr [ebp-40h], 0
		jz	loc_480D0A
		mov	edx, [ebp-40h]
		cmp	word ptr [edx+0Ch], 0
		jz	loc_480D0A
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_54408C ; " ('"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, [ebp-40h]
		add	ebx, eax
		add	edx, 0Ch
		mov	ecx, edi
		push	edx		; src
		sub	ecx, ebx
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_544094 ; "')"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F543:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 66
		jnz	short loc_47F574
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aNull_4	; "NULL"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F574:				; CODE XREF: .text:0047F547j
		mov	ecx, [ebp-1Ch]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, [ebp-1Ch]
		push	edx		; hDC
		call	WindowFromDC
		mov	[ebp-48h], eax
		cmp	dword ptr [ebp-48h], 0
		jnz	loc_47F74C
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_480D0A
		cmp	peblock, 0
		jz	loc_480D0A
		mov	ecx, peblock
		push	1		; mode
		add	ecx, 94h
		push	4		; size
		push	ecx		; _addr
		lea	eax, [ebp-30h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 4
		jnz	loc_480D0A
		cmp	dword ptr [ebp-30h], 0
		jz	loc_480D0A
		mov	edx, [ebp-30h]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-44h], eax
		cmp	dword ptr [ebp-44h], 0
		jz	loc_480D0A
		mov	ecx, [ebp-44h]
		cmp	dword ptr [ecx+4], 100000h
		jb	short loc_47F647
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_47F647
		cmp	VersionInformation.dwMajorVersion, 5
		jnz	short loc_47F650
		cmp	VersionInformation.dwMinorVersion, 1
		jnb	short loc_47F650

loc_47F647:				; CODE XREF: .text:0047F62Aj
					; .text:0047F633j
		mov	dword ptr [ebp-34h], 3FFFh
		jmp	short loc_47F657
; ---------------------------------------------------------------------------

loc_47F650:				; CODE XREF: .text:0047F63Cj
					; .text:0047F645j
		mov	dword ptr [ebp-34h], 0FFFFh

loc_47F657:				; CODE XREF: .text:0047F64Ej
		push	1		; mode
		push	10h		; size
		mov	eax, [ebp-1Ch]
		and	eax, [ebp-34h]
		shl	eax, 4
		add	eax, [ebp-30h]
		push	eax		; _addr
		lea	edx, [ebp-6DE0h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 10h
		jnz	loc_480D0A
		mov	ecx, [ebp-1Ch]
		shr	ecx, 10h
		cmp	cx, [ebp-6DD8h]
		jnz	loc_480D0A
		cmp	word ptr [ebp-6DDCh], 0
		jz	short loc_47F6B5
		mov	ax, [ebp-6DDCh]
		cmp	ax, word ptr processid
		jnz	loc_480D0A

loc_47F6B5:				; CODE XREF: .text:0047F69Fj
		mov	dx, [ebp-6DD6h]
		dec	dx
		jz	short loc_47F6D0
		sub	dx, 14h
		jz	short loc_47F6F5
		sub	dx, 3ECh
		jz	short loc_47F71A
		jmp	short loc_47F73D
; ---------------------------------------------------------------------------

loc_47F6D0:				; CODE XREF: .text:0047F6BFj
		push	offset asc_54409A ; " "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47F73D
; ---------------------------------------------------------------------------

loc_47F6F5:				; CODE XREF: .text:0047F6C5j
		push	offset aMetafile ; " (Metafile)"
		call	_T
		pop	ecx
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47F73D
; ---------------------------------------------------------------------------

loc_47F71A:				; CODE XREF: .text:0047F6CCj
		push	offset aMemoryDc ; " (Memory DC)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47F73D:				; CODE XREF: .text:0047F6CEj
					; .text:0047F6F3j ...
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F74C:				; CODE XREF: .text:0047F5B5j
		mov	ecx, [ebp-48h]
		push	ecx
		push	offset aDcOfWindow08x ;	" (DC of window	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-250h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	100h		; nMaxCount
		lea	edx, [ebp-250h]
		push	edx		; lpClassName
		mov	ecx, [ebp-48h]
		push	ecx		; hWnd
		call	GetClassNameW
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_47F7E8
		push	offset aClass	; ", class = "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47F7E8:				; CODE XREF: .text:0047F7A5j
		push	100h		; nMaxCount
		lea	ecx, [ebp-250h]
		push	ecx		; lpString
		mov	eax, [ebp-48h]
		push	eax		; hWnd
		call	GetWindowTextW
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_47F847
		push	offset aText_0	; ", text = "
		call	_T
		pop	ecx
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47F847:				; CODE XREF: .text:0047F804j
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	(offset	aInvalidTypeMod+2Eh) ; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F872:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 67
		jnz	short loc_47F8A3
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aNull_4	; "NULL"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F8A3:				; CODE XREF: .text:0047F876j
		mov	edx, [ebp-1Ch]
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	100h		; nname
		lea	eax, [ebp-250h]
		push	eax		; _name
		mov	edx, [ebp-1Ch]
		push	edx		; gdihandle
		call	Findstockobject
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_47F955
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_54411A ; " ("
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-250h]
		mov	ecx, edi
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	(offset	aInvalidTypeMod+2Eh) ; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47F955:				; CODE XREF: .text:0047F8EEj
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_480D0A
		cmp	peblock, 0
		jz	loc_480D0A
		mov	eax, peblock
		push	1		; mode
		add	eax, 94h
		push	4		; size
		push	eax		; _addr
		lea	edx, [ebp-30h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 4
		jnz	loc_480D0A
		cmp	dword ptr [ebp-30h], 0
		jz	loc_480D0A
		mov	ecx, [ebp-30h]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-44h], eax
		cmp	dword ptr [ebp-44h], 0
		jz	loc_480D0A
		mov	eax, [ebp-44h]
		cmp	dword ptr [eax+4], 100000h
		jb	short loc_47F9DF
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_47F9DF
		cmp	VersionInformation.dwMajorVersion, 5
		jnz	short loc_47F9E8
		cmp	VersionInformation.dwMinorVersion, 1
		jnb	short loc_47F9E8

loc_47F9DF:				; CODE XREF: .text:0047F9C2j
					; .text:0047F9CBj
		mov	dword ptr [ebp-34h], 3FFFh
		jmp	short loc_47F9EF
; ---------------------------------------------------------------------------

loc_47F9E8:				; CODE XREF: .text:0047F9D4j
					; .text:0047F9DDj
		mov	dword ptr [ebp-34h], 0FFFFh

loc_47F9EF:				; CODE XREF: .text:0047F9E6j
		push	1		; mode
		push	10h		; size
		mov	edx, [ebp-1Ch]
		and	edx, [ebp-34h]
		shl	edx, 4
		add	edx, [ebp-30h]
		push	edx		; _addr
		lea	ecx, [ebp-6DE0h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 10h
		jnz	loc_480D0A
		mov	eax, [ebp-1Ch]
		shr	eax, 10h
		cmp	ax, [ebp-6DD8h]
		jnz	loc_480D0A
		cmp	word ptr [ebp-6DDCh], 0
		jz	short loc_47FA4D
		mov	dx, [ebp-6DDCh]
		cmp	dx, word ptr processid
		jnz	loc_480D0A

loc_47FA4D:				; CODE XREF: .text:0047FA37j
		movzx	ecx, word ptr [ebp-6DD6h]
		cmp	ecx, 9
		jg	short loc_47FA93
		jz	loc_47FCA4
		cmp	ecx, 8		; switch 9 cases
		ja	loc_47FE90	; jumptable 0047FA68 default case
		jmp	ds:off_47FA6F[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_47FA6F	dd offset loc_47FE90	; DATA XREF: .text:0047FA68r
		dd offset loc_47FACF	; jump table for switch	statement
		dd offset loc_47FE90
		dd offset loc_47FE90
		dd offset loc_47FAF7
		dd offset loc_47FC2C
		dd offset loc_47FE90
		dd offset loc_47FC54
		dd offset loc_47FC7C
; ---------------------------------------------------------------------------

loc_47FA93:				; CODE XREF: .text:0047FA57j
		cmp	ecx, 15h
		jg	short loc_47FAB5
		jz	loc_47FE23
		sub	ecx, 0Ah
		jz	loc_47FCCC
		sub	ecx, 6
		jz	loc_47FCF4
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FAB5:				; CODE XREF: .text:0047FA96j
		sub	ecx, 30h
		jz	loc_47FE48
		sub	ecx, 3D1h
		jz	loc_47FE6D
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FACF:				; CODE XREF: .text:0047FA68j
					; DATA XREF: .text:off_47FA6Fo
		push offset a___Dc		; (DC) jumptable 0047FA68 case 1 
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FAF7:				; CODE XREF: .text:0047FA68j
					; DATA XREF: .text:off_47FA6Fo
		push	offset aRegion	; jumptable 0047FA68 case 4
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp-6DD4h], 0
		jz	loc_47FC0B
		push	18h		; nstr
		lea	edx, [ebp-6DD0h]
		push	edx		; str
		push	0		; item0
		mov	ecx, [ebp-6DD4h]
		add	ecx, 8
		push	ecx		; _addr
		push	offset aRect	; "RECT"
		call	Decodestructure
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	loc_47FC0B
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_47FBFB
; ---------------------------------------------------------------------------

loc_47FB60:				; CODE XREF: .text:0047FC05j
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_543C58 ; ", "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, [ebp-4]
		mov	edx, eax
		add	esp, 0Ch
		shl	eax, 4
		lea	ecx, [ebp-6D80h]
		add	eax, edx
		lea	eax, [edx+eax*4]
		mov	edx, ebx
		shl	eax, 4
		add	edx, edx
		add	eax, ecx
		push	eax		; src
		mov	eax, edi
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_544016 ; "="
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		mov	edx, [ebp-4]
		add	ebx, eax
		mov	ecx, edx
		add	esp, 0Ch
		shl	edx, 4
		lea	eax, [ebp-6B80h]
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		mov	ecx, ebx
		shl	edx, 4
		add	ecx, ecx
		add	edx, eax
		push	edx		; src
		mov	edx, edi
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		inc	dword ptr [ebp-4]

loc_47FBFB:				; CODE XREF: .text:0047FB5Bj
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jge	short loc_47FC0B
		cmp	edi, ebx
		jg	loc_47FB60

loc_47FC0B:				; CODE XREF: .text:0047FB21j
					; .text:0047FB50j ...
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	(offset	aInvalidTypeMod+2Eh) ; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FC2C:				; CODE XREF: .text:0047FA68j
					; DATA XREF: .text:off_47FA6Fo
		push	offset aBitmap	; jumptable 0047FA68 case 5
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FC54:				; CODE XREF: .text:0047FA68j
					; DATA XREF: .text:off_47FA6Fo
		push	offset aPath	; jumptable 0047FA68 case 7
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FC7C:				; CODE XREF: .text:0047FA68j
					; DATA XREF: .text:off_47FA6Fo
		push	offset aPalette	; jumptable 0047FA68 case 8
		call	_T
		pop	ecx
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FCA4:				; CODE XREF: .text:0047FA59j
		push	offset aColorSpace ; " (Color space)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FCCC:				; CODE XREF: .text:0047FAA1j
		push	offset aFont	; " (Font)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_47FE90	; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FCF4:				; CODE XREF: .text:0047FAAAj
		push	offset aBrush	; " (Brush"
		call	_T
		pop	ecx
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp-6DD4h], 0
		jz	loc_47FE05
		push	18h		; nstr
		lea	eax, [ebp-6DD0h]
		push	eax		; str
		push	0		; item0
		mov	edx, [ebp-6DD4h]
		push	edx		; _addr
		push	offset aLogsolidbrush ;	"LOGSOLIDBRUSH"
		call	Decodestructure
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	loc_47FE05
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_47FDF5
; ---------------------------------------------------------------------------

loc_47FD5A:				; CODE XREF: .text:0047FDFFj
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543C58 ; ", "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	ecx, [ebp-4]
		mov	eax, ecx
		add	esp, 0Ch
		shl	ecx, 4
		lea	edx, [ebp-6D80h]
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		mov	eax, ebx
		shl	ecx, 4
		add	eax, eax
		add	ecx, edx
		push	ecx		; src
		mov	ecx, edi
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_544016 ; "="
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, [ebp-4]
		mov	edx, eax
		add	esp, 0Ch
		shl	eax, 4
		lea	ecx, [ebp-6B80h]
		add	eax, edx
		lea	eax, [edx+eax*4]
		mov	edx, ebx
		shl	eax, 4
		add	edx, edx
		add	eax, ecx
		push	eax		; src
		mov	eax, edi
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		inc	dword ptr [ebp-4]

loc_47FDF5:				; CODE XREF: .text:0047FD55j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-10h]
		jge	short loc_47FE05
		cmp	edi, ebx
		jg	loc_47FD5A

loc_47FE05:				; CODE XREF: .text:0047FD1Ej
					; .text:0047FD4Aj ...
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	(offset	aInvalidTypeMod+2Eh) ; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47FE90 ; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FE23:				; CODE XREF: .text:0047FA98j
		push	offset aMetafile ; " (Metafile)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47FE90 ; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FE48:				; CODE XREF: .text:0047FAB8j
		push	offset aPen	; " (Pen)"
		call	_T
		pop	ecx
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47FE90 ; jumptable 0047FA68 default case
; ---------------------------------------------------------------------------

loc_47FE6D:				; CODE XREF: .text:0047FAC4j
		push	offset aMemoryDc ; " (Memory DC)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_47FE90:				; CODE XREF: .text:0047FA62j
					; .text:0047FA68j ...
		mov	dword_5EBC6C, 1	; jumptable 0047FA68 default case
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47FE9F:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	ecx, [ebp-1Ch]	; jumptable 0047DA9F case 68
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_47FED5:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-1Ch], 0 ; jumptable 0047DA9F case 69
		jnz	short loc_47FEFC
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aNull_4	; "NULL"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_47FEFC:				; CODE XREF: .text:0047FED9j
		cmp	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jnz	short loc_47FF23
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aInvalid_handle ; "INVALID_HANDLE_VALUE"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_47FF23:				; CODE XREF: .text:0047FF00j
		cmp	dword ptr [ebp-1Ch], 80000000h
		jnz	short loc_47FF4D
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aHkey_classes_1 ; "HKEY_CLASSES_ROOT"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_47FF4D:				; CODE XREF: .text:0047FF2Aj
		cmp	dword ptr [ebp-1Ch], 80000001h
		jnz	short loc_47FF77
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aHkey_current_u ; "HKEY_CURRENT_USER"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_47FF77:				; CODE XREF: .text:0047FF54j
		cmp	dword ptr [ebp-1Ch], 80000002h
		jnz	short loc_47FFA1
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aHkey_local_mac ; "HKEY_LOCAL_MACHINE"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_47FFA1:				; CODE XREF: .text:0047FF7Ej
		cmp	dword ptr [ebp-1Ch], 80000003h
		jnz	short loc_47FFCB
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aHkey_users ; "HKEY_USERS"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_47FFCB:				; CODE XREF: .text:0047FFA8j
		cmp	dword ptr [ebp-1Ch], 80000004h
		jnz	short loc_47FFF5
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aHkey_performan ; "HKEY_PERFORMANCE_DATA"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_47FFF5:				; CODE XREF: .text:0047FFD2j
		cmp	dword ptr [ebp-1Ch], 80000005h
		jnz	short loc_48001F
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aHkey_current_c ; "HKEY_CURRENT_CONFIG"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_48001F:				; CODE XREF: .text:0047FFFCj
		cmp	dword ptr [ebp-1Ch], 80000006h
		jnz	short loc_480049
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aHkey_dyn_data ;	"HKEY_DYN_DATA"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_480042:
		add	ebx, eax

loc_480044:
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_480049:				; CODE XREF: .text:00480026j
		cmp	_imp__NtQueryKey, 0
		jz	short loc_48007A

loc_480052:				; dwOptions
		push	0
		push	0		; bInheritHandle
		push	20019h		; dwDesiredAccess
		lea	edx, [ebp-4Ch]
		push	edx		; lpTargetHandle
		mov	ecx, hTargetProcessHandle
		push	ecx		; hTargetProcessHandle
		mov	eax, [ebp-1Ch]
		push	eax		; hSourceHandle
		mov	edx, process
		push	edx		; hSourceProcessHandle
		call	DuplicateHandle
		test	eax, eax
		jnz	short loc_4800B0

loc_48007A:				; CODE XREF: .text:00480050j
		mov	ecx, [ebp-1Ch]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801EA
; ---------------------------------------------------------------------------

loc_4800B0:				; CODE XREF: .text:00480078j
		lea	edx, [ebp-18h]
		lea	ecx, [ebp-650h]
		push	edx		; _DWORD
		push	200h		; _DWORD
		push	ecx		; _DWORD
		push	3		; _DWORD
		mov	eax, [ebp-4Ch]
		push	eax		; _DWORD
		call	_imp__NtQueryKey
		test	eax, eax
		jnz	short loc_4800D6
		cmp	dword ptr [ebp-18h], 4
		ja	short loc_48010C

loc_4800D6:				; CODE XREF: .text:004800CEj
		mov	edx, [ebp-1Ch]
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4801E1
; ---------------------------------------------------------------------------

loc_48010C:				; CODE XREF: .text:004800D4j
		mov	eax, [ebp-18h]
		sub	eax, 4
		shr	eax, 1
		inc	eax
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 100h
		jbe	short loc_480128
		mov	dword ptr [ebp-18h], 100h

loc_480128:				; CODE XREF: .text:0048011Fj
		lea	edx, [ebp-64Ch]
		push	edx		; src
		mov	ecx, [ebp-18h]
		push	ecx		; n
		lea	eax, [ebp-250h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48017E
		mov	edx, [ebp-1Ch]
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4801E1
; ---------------------------------------------------------------------------

loc_48017E:				; CODE XREF: .text:00480149j
		lea	eax, [ebp-250h]
		push	eax		; key
		call	Substitutehkeyprefix
		pop	ecx
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	offset asc_5442DE ; "["
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_5442E2 ; "]"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4801E1:				; CODE XREF: .text:00480107j
					; .text:0048017Cj
		mov	ecx, [ebp-4Ch]
		push	ecx		; hObject
		call	CloseHandle

loc_4801EA:				; CODE XREF: .text:0047FEF7j
					; .text:0047FF1Ej ...
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_4801F9:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		push	0		; jumptable 0047DA9F cases 70-72
		mov	eax, edi
		sub	eax, ebx
		push	eax		; nsymb
		add	ebx, ebx
		add	ebx, [ebp+1Ch]
		push	ebx		; symb
		push	20003h		; mode
		push	0		; amod
		mov	edx, [ebp-1Ch]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_480255
		mov	ecx, [ebp-1Ch]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_480255:				; CODE XREF: .text:0048021Dj
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_480264:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp-1Ch]	; jumptable 0047DA9F case 73
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_48029A:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp-1Ch]	; jumptable 0047DA9F case 74
		lea	ecx, [ebp-250h]
		push	eax
		mov	edx, [ebp-1Ch]
		push	edx
		push	offset aXU_	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp-1Ch]
		cmp	eax, processid
		jnz	loc_480D0A
		push	offset aDebuggee_0 ; ",	Debuggee"
		call	_T
		pop	ecx
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_48030B:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp+18h], 8 ; jumptable 0047DA9F case 80
		jnb	short loc_48032C
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	eax, [ebp-250h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_480371
; ---------------------------------------------------------------------------

loc_48032C:				; CODE XREF: .text:0048030Fj
		mov	edx, [ebp+10h]
		mov	ecx, [edx+4]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0Ch]
		mov	word ptr [ebp+edx*2-250h], 20h
		inc	dword ptr [ebp-0Ch]
		mov	ecx, [ebp+10h]
		mov	eax, [ecx]
		push	eax		; u
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-250h]
		add	edx, ecx
		push	edx		; s
		call	Hexprint8W
		add	esp, 8

loc_480371:				; CODE XREF: .text:0048032Aj
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_480394:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, [ebp+10h]	; jumptable 0047DA9F case 81
		cmp	byte ptr [eax],	0
		jnz	short loc_4803AE
		mov	word ptr [ebp-250h], 0
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_4803CD
; ---------------------------------------------------------------------------

loc_4803AE:				; CODE XREF: .text:0048039Aj
		push	100h		; nw
		lea	edx, [ebp-250h]
		push	edx		; w
		mov	ecx, [ebp+14h]
		push	ecx		; nt
		mov	eax, [ebp+10h]
		push	eax		; t
		call	Utftounicode
		add	esp, 10h
		mov	[ebp-0Ch], eax

loc_4803CD:				; CODE XREF: .text:004803ACj
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	1		; stopatzero
		push	edx		; ntext
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		lea	edx, [ebp-250h]
		push	ecx		; text
		mov	eax, [ebp-0Ch]
		push	eax		; ndata
		push	edx		; data
		call	Stringtotext
		add	esp, 14h
		mov	ecx, [ebp+14h]
		mov	[ebp+18h], ecx
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_480406:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	eax, edi	; jumptable 0047DA9F case 82
		mov	edx, ebx
		sub	eax, ebx
		push	1		; stopatzero
		push	eax		; ntext
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; text
		mov	ecx, [ebp+14h]
		shr	ecx, 1
		push	ecx		; ndata
		mov	eax, [ebp+10h]
		push	eax		; data
		call	Stringtotext
		add	esp, 14h
		mov	edx, [ebp+14h]
		mov	[ebp+18h], edx
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_48043E:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp+18h], 8 ; jumptable 0047DA9F case 83
		jnb	short loc_48045F
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	ecx, [ebp-250h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_480480
; ---------------------------------------------------------------------------

loc_48045F:				; CODE XREF: .text:00480442j
		mov	eax, [ebp+10h]
		lea	ecx, [ebp-250h]
		push	dword ptr [eax+4]
		push	dword ptr [eax]	; d
		push	ecx		; s
		call	Printfloat8
		add	esp, 0Ch
		mov	dword_5EBC6C, 1

loc_480480:				; CODE XREF: .text:0048045Dj
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 8
		jnz	loc_480D0A
		push	8		; size
		mov	eax, [ebp+10h]
		push	eax		; data
		lea	edx, [ebp-250h]
		push	edx		; s
		call	Nameoffloat
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jle	loc_480D0A
		mov	ecx, [ebp-8]
		add	ecx, ebx
		add	ecx, 3
		cmp	edi, ecx
		jle	loc_480D0A
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543C58 ; ", "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_480523:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp+18h], 0Ah ; jumptable 0047DA9F case 84
		jnb	short loc_480544
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	ecx, [ebp-250h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_48056A
; ---------------------------------------------------------------------------

loc_480544:				; CODE XREF: .text:00480527j
		mov	eax, [ebp+10h]
		lea	ecx, [ebp-250h]
		mov	dx, [eax+8]
		push	edx
		push	dword ptr [eax+4]
		push	dword ptr [eax]	; ext
		push	ecx		; s
		call	Printfloat10
		add	esp, 10h
		mov	dword_5EBC6C, 1

loc_48056A:				; CODE XREF: .text:00480542j
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 0Ah
		jnz	loc_480D0A
		push	0Ah		; size
		mov	eax, [ebp+10h]
		push	eax		; data
		lea	edx, [ebp-250h]
		push	edx		; s
		call	Nameoffloat
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jle	loc_480D0A
		mov	ecx, [ebp-8]
		add	ecx, ebx
		add	ecx, 3
		cmp	edi, ecx
		jle	loc_480D0A
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_543C58 ; ", "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_48060D:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		cmp	dword ptr [ebp-14h], 5Ah ; jumptable 0047DA9F cases 90-95
		jz	short loc_48061F
		cmp	dword ptr [ebp-14h], 5Ch
		jz	short loc_48061F
		cmp	dword ptr [ebp-14h], 5Eh
		jnz	short loc_480634

loc_48061F:				; CODE XREF: .text:00480611j
					; .text:00480617j
		mov	dword ptr [ebp-38h], 2
		mov	ecx, [ebp-1Ch]
		and	ecx, 0FFFFh
		mov	[ebp-18h], ecx
		jmp	short loc_480641
; ---------------------------------------------------------------------------

loc_480634:				; CODE XREF: .text:0048061Dj
		mov	dword ptr [ebp-38h], 4
		mov	eax, [ebp-1Ch]
		mov	[ebp-18h], eax

loc_480641:				; CODE XREF: .text:00480632j
		mov	edx, [ebp-1Ch]
		push	edx		; u
		lea	ecx, [ebp-250h]
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		lea	eax, [ebp-250h]
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp+14h]
		cmp	eax, [ebp-38h]
		jnz	loc_480D0A
		cmp	dword ptr [ebp+8], 0
		jz	loc_480D0A
		mov	edx, [ebp+8]
		test	byte ptr [edx+0Bh], 4
		jz	loc_480D0A
		cmp	dword ptr [ebp-14h], 5Ah
		jz	short loc_4806A5
		cmp	dword ptr [ebp-14h], 5Bh
		jnz	loc_48077F

loc_4806A5:				; CODE XREF: .text:00480699j
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+4ACh], 0
		jz	loc_48077F
		cmp	dword ptr [ebp-18h], 0
		jbe	loc_48077F
		mov	eax, [ebp+8]
		mov	edx, [eax+4B0h]
		cmp	edx, [ebp-18h]
		jbe	loc_48077F
		push	5		; mode
		push	200h		; size
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4ACh]
		add	eax, [ebp-18h]
		push	eax		; _addr
		lea	edx, [ebp-650h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	loc_480D0A
		cmp	byte ptr [ebp-650h], 0
		jz	loc_480D0A
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_54430E ; " -> "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-250h]
		add	ebx, eax
		lea	eax, [ebp-650h]
		push	100h		; nw
		push	edx		; w
		mov	ecx, [ebp-24h]
		push	ecx		; nt
		push	eax		; t
		call	Utftounicode
		add	esp, 10h
		mov	[ebp-0Ch], eax
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	1		; stopatzero
		push	edx		; ntext
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		lea	edx, [ebp-250h]
		push	ecx		; text
		mov	eax, [ebp-0Ch]
		push	eax		; ndata
		push	edx		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	dword_5EBC6C, 1
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_48077F:				; CODE XREF: .text:0048069Fj
					; .text:004806AFj ...
		cmp	dword ptr [ebp-14h], 5Ch
		jz	short loc_48078F
		cmp	dword ptr [ebp-14h], 5Dh
		jnz	loc_480846

loc_48078F:				; CODE XREF: .text:00480783j
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+4B4h], 0
		jz	loc_480846
		cmp	dword ptr [ebp-18h], 0
		jbe	loc_480846
		mov	eax, [ebp+8]
		mov	edx, [eax+4B8h]
		shr	edx, 4
		cmp	edx, [ebp-18h]
		jb	loc_480846
		push	5		; mode
		push	10h		; size
		mov	ecx, [ebp+8]
		mov	edx, [ebp-18h]
		dec	edx
		shl	edx, 4
		mov	eax, [ecx+4B4h]
		add	eax, edx
		lea	ecx, [ebp-650h]
		push	eax		; _addr
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 10h
		jnz	loc_480D0A
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_54430E ; " -> "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	ecx, [ebp-250h]
		push	ecx		; s
		lea	eax, [ebp-650h]
		push	eax		; guid
		call	Guidtotext
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_480846:				; CODE XREF: .text:00480789j
					; .text:00480799j ...
		cmp	dword ptr [ebp-14h], 5Eh
		jz	short loc_480856
		cmp	dword ptr [ebp-14h], 5Fh
		jnz	loc_480D0A

loc_480856:				; CODE XREF: .text:0048084Aj
		cmp	dword ptr [ebp-18h], 0
		jbe	loc_480D0A
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4BCh], 0
		jz	loc_480D0A
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4C0h]
		cmp	eax, [ebp-18h]
		jbe	loc_480D0A
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_480899
		mov	edx, [ebp+8]
		mov	eax, [ebp+24h]
		mov	ecx, [edx+4BCh]
		add	ecx, [ebp-18h]
		mov	[eax], ecx

loc_480899:				; CODE XREF: .text:00480886j
		cmp	dword ptr [ebp+28h], 0
		jz	short loc_4808A8
		mov	edx, [ebp+28h]
		mov	dword ptr [edx], 1

loc_4808A8:				; CODE XREF: .text:0048089Dj
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_54430E ; " -> "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		mov	edx, [ebp+8]
		add	ebx, eax
		add	esp, 0Ch
		lea	eax, [ebp-250h]
		mov	ecx, [edx+4BCh]
		add	ecx, [ebp-18h]
		push	ecx		; u
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		lea	edx, [ebp-250h]
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480D0A
; ---------------------------------------------------------------------------

loc_480903:				; CODE XREF: .text:0047DA9Fj
					; DATA XREF: .text:off_47DAA6o
		mov	edx, [ebp+14h]	; jumptable 0047DA9F cases 96-99
		mov	[ebp+18h], edx
		cmp	dword ptr [ebp+14h], 4
		jnz	loc_480D0A
		push	5		; mode
		push	200h		; size
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		lea	eax, [ebp-650h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	loc_480D0A
		cmp	byte ptr [ebp-650h], 0FFh
		jz	loc_480D0A
		test	byte ptr [ebp-650h], 80h
		jnz	short loc_480967
		xor	edx, edx
		mov	dl, [ebp-650h]
		mov	[ebp-28h], edx
		mov	dword ptr [ebp-4], 1
		jmp	loc_480A0B
; ---------------------------------------------------------------------------

loc_480967:				; CODE XREF: .text:0048094Ej
		xor	ecx, ecx
		mov	cl, [ebp-650h]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jnz	short loc_4809AB
		cmp	dword ptr [ebp-24h], 2
		jb	loc_480D0A
		xor	eax, eax
		xor	edx, edx
		mov	al, [ebp-650h]
		mov	dl, [ebp-64Fh]
		and	eax, 3Fh
		shl	eax, 8
		or	eax, edx
		mov	[ebp-28h], eax
		mov	dword ptr [ebp-4], 2
		jmp	short loc_480A0B
; ---------------------------------------------------------------------------

loc_4809AB:				; CODE XREF: .text:0048097Bj
		xor	ecx, ecx
		mov	cl, [ebp-650h]
		and	ecx, 0E0h
		cmp	ecx, 0C0h
		jnz	loc_480D0A
		cmp	dword ptr [ebp-24h], 4
		jb	loc_480D0A
		xor	eax, eax
		xor	edx, edx
		mov	al, [ebp-650h]
		mov	dl, [ebp-64Fh]
		and	eax, 1Fh
		xor	ecx, ecx
		shl	edx, 10h
		mov	cl, [ebp-64Eh]
		shl	eax, 18h
		or	eax, edx
		xor	edx, edx
		shl	ecx, 8
		mov	dl, [ebp-64Dh]
		or	eax, ecx
		or	eax, edx
		mov	[ebp-28h], eax
		mov	dword ptr [ebp-4], 4

loc_480A0B:				; CODE XREF: .text:00480962j
					; .text:004809A9j
		mov	eax, [ebp-28h]
		add	eax, [ebp-4]
		cmp	eax, [ebp-24h]
		ja	loc_480D0A
		cmp	dword ptr [ebp-14h], 60h
		jnz	loc_480AE4
		cmp	dword ptr [ebp-28h], 1
		jnz	short loc_480A3A
		mov	ecx, [ebp-4]
		movsx	eax, byte ptr [ebp+ecx-650h]
		mov	[ebp-8], eax
		jmp	short loc_480A67
; ---------------------------------------------------------------------------

loc_480A3A:				; CODE XREF: .text:00480A28j
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_480A50
		mov	edx, [ebp-4]
		movsx	ecx, word ptr [ebp+edx-650h]
		mov	[ebp-8], ecx
		jmp	short loc_480A67
; ---------------------------------------------------------------------------

loc_480A50:				; CODE XREF: .text:00480A3Ej
		cmp	dword ptr [ebp-28h], 4
		jnz	loc_480D0A
		mov	eax, [ebp-4]
		mov	edx, [ebp+eax-650h]
		mov	[ebp-8], edx

loc_480A67:				; CODE XREF: .text:00480A38j
					; .text:00480A4Ej
		cmp	dword ptr [ebp-8], 0
		jl	short loc_480A8D
		cmp	dword ptr [ebp-8], 9
		jg	short loc_480A8D
		mov	ecx, [ebp-8]
		lea	eax, [ebp-250h]
		push	ecx
		push	(offset	a______________+30h) ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_480AA5
; ---------------------------------------------------------------------------

loc_480A8D:				; CODE XREF: .text:00480A6Bj
					; .text:00480A71j
		mov	edx, [ebp-8]
		lea	ecx, [ebp-250h]
		push	edx
		push	offset aI__7	; "%i."
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_480AA5:				; CODE XREF: .text:00480A8Bj
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aConst_1	; "CONST "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480CEA
; ---------------------------------------------------------------------------

loc_480AE4:				; CODE XREF: .text:00480A1Ej
		cmp	dword ptr [ebp-14h], 61h
		jnz	loc_480B84
		cmp	dword ptr [ebp-28h], 1
		jnz	short loc_480B05
		mov	ecx, [ebp-4]
		xor	eax, eax
		mov	al, [ebp+ecx-650h]
		mov	[ebp-18h], eax
		jmp	short loc_480B32
; ---------------------------------------------------------------------------

loc_480B05:				; CODE XREF: .text:00480AF2j
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_480B1B
		mov	edx, [ebp-4]
		movzx	ecx, word ptr [ebp+edx-650h]
		mov	[ebp-18h], ecx
		jmp	short loc_480B32
; ---------------------------------------------------------------------------

loc_480B1B:				; CODE XREF: .text:00480B09j
		cmp	dword ptr [ebp-28h], 4
		jnz	loc_480D0A
		mov	eax, [ebp-4]
		mov	edx, [ebp+eax-650h]
		mov	[ebp-18h], edx

loc_480B32:				; CODE XREF: .text:00480B03j
					; .text:00480B19j
		mov	ecx, [ebp-18h]
		push	ecx		; u
		lea	eax, [ebp-250h]
		push	eax		; s
		call	SignedhexW
		add	esp, 8
		mov	edx, edi
		sub	edx, ebx
		mov	ecx, ebx
		push	offset aConst_1	; "CONST "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	eax, [ebp-250h]
		mov	edx, edi
		sub	edx, ebx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_480CEA
; ---------------------------------------------------------------------------

loc_480B84:				; CODE XREF: .text:00480AE8j
		cmp	dword ptr [ebp-14h], 62h
		jnz	loc_480CA5
		cmp	dword ptr [ebp-28h], 4
		jnz	short loc_480BAF
		mov	eax, [ebp-4]
		lea	ecx, [ebp-250h]
		push	dword ptr [ebp+eax-650h] ; f
		push	ecx		; s
		call	Printfloat4
		add	esp, 8
		jmp	short loc_480C0A
; ---------------------------------------------------------------------------

loc_480BAF:				; CODE XREF: .text:00480B92j
		cmp	dword ptr [ebp-28h], 8
		jnz	short loc_480BD7
		mov	eax, [ebp-4]
		lea	ecx, [ebp-250h]
		push	dword ptr [ebp+eax-64Ch]
		push	dword ptr [ebp+eax-650h] ; d
		push	ecx		; s
		call	Printfloat8
		add	esp, 0Ch
		jmp	short loc_480C0A
; ---------------------------------------------------------------------------

loc_480BD7:				; CODE XREF: .text:00480BB3j
		cmp	dword ptr [ebp-28h], 0Ah
		jnz	loc_480D0A
		mov	eax, [ebp-4]
		lea	ecx, [ebp-250h]
		mov	dx, [ebp+eax-648h]
		push	edx
		push	dword ptr [ebp+eax-64Ch]
		push	dword ptr [ebp+eax-650h] ; ext
		push	ecx		; s
		call	Printfloat10
		add	esp, 10h

loc_480C0A:				; CODE XREF: .text:00480BADj
					; .text:00480BD5j
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset aFloat_8	; "FLOAT "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		lea	ecx, [ebp-250h]
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, [ebp-28h]
		push	ecx		; size
		lea	eax, [ebp-650h]
		add	eax, [ebp-4]
		push	eax		; data
		lea	edx, [ebp-250h]
		push	edx		; s
		call	Nameoffloat
		add	esp, 0Ch
		test	eax, eax
		jle	loc_480CEA
		mov	ecx, edi
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_543C58 ; ", "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-250h]
		mov	ecx, edi
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_480CEA
; ---------------------------------------------------------------------------

loc_480CA5:				; CODE XREF: .text:00480B88j
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		push	offset aUnicode	; "UNICODE "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	1		; stopatzero
		push	eax		; ntext
		add	edx, edx
		add	edx, [ebp+1Ch]
		lea	eax, [ebp-650h]
		push	edx		; text
		mov	ecx, [ebp-28h]
		shr	ecx, 1
		push	ecx		; ndata
		add	eax, [ebp-4]
		push	eax		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax

loc_480CEA:				; CODE XREF: .text:00480ADFj
					; .text:00480B7Fj ...
		mov	dword_5EBC6C, 1
		jmp	short loc_480D0A
; ---------------------------------------------------------------------------

loc_480CF6:				; CODE XREF: .text:0047DA99j
					; .text:0047DA9Fj
					; DATA XREF: ...
		push	$CTW0("???")	; jumptable 0047DA9F default case
		push	edi		; n
		mov	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_480D36
; ---------------------------------------------------------------------------

loc_480D0A:				; CODE XREF: .text:0047DA55j
					; .text:0047DC45j ...
		lea	ecx, [edi-1]
		cmp	ebx, ecx
		jl	loc_47DA7A

loc_480D15:				; CODE XREF: .text:0047DA82j
		mov	eax, [ebp+18h]
		add	[ebp+10h], eax
		mov	edx, [ebp+18h]
		sub	[ebp+14h], edx
		cmp	dword ptr [ebp+14h], 0
		ja	loc_47DA03

loc_480D2B:				; CODE XREF: .text:0047D9FDj
					; .text:0047DA75j
		mov	ecx, [ebp+1Ch]
		mov	eax, ebx
		mov	word ptr [ecx+ebx*2], 0

loc_480D36:				; CODE XREF: .text:0047D9DEj
					; .text:00480D08j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
