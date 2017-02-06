.code

loc_427D94:				; DATA XREF: .data:stru_52497Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	loc_427E44
		mov	eax, dword_5DBD2C
		cmp	eax, dword_5DBD30
		jl	short loc_427DB8
		xor	eax, eax
		jmp	loc_427ED6
; ---------------------------------------------------------------------------

loc_427DB8:				; CODE XREF: .text:00427DAFj
		xor	esi, esi
		mov	ebx, eax
		jmp	short loc_427E16
; ---------------------------------------------------------------------------

loc_427DBE:				; CODE XREF: .text:00427E2Dj
		test	bl, 1
		mov	eax, 0Fh
		jnz	short loc_427DCD
		add	eax, 0E1h

loc_427DCD:				; CODE XREF: .text:00427DC6j
		mov	edx, ebx
		sar	edx, 1
		jns	short loc_427DD6
		adc	edx, 0

loc_427DD6:				; CODE XREF: .text:00427DD1j
		mov	ecx, dword_5DA910
		mov	cl, [ecx+edx+408h]
		xor	cl, byte_5DAD1C[edx]
		and	ecx, 0FFh
		test	ecx, eax
		jz	short loc_427DF8
		mov	esi, 1

loc_427DF8:				; CODE XREF: .text:00427DF1j
		mov	ecx, dword_5DA910
		mov	cl, [ecx+edx+8]
		xor	cl, byte ptr sel0[edx]
		xor	edx, edx
		mov	dl, cl
		test	edx, eax
		jz	short loc_427E15
		mov	esi, 1

loc_427E15:				; CODE XREF: .text:00427E0Ej
		inc	ebx

loc_427E16:				; CODE XREF: .text:00427DBCj
		cmp	ebx, dword_5DBD30
		jge	short loc_427E2F
		mov	eax, dword_5DA910
		mov	edx, [eax]
		add	edx, edx
		cmp	ebx, edx
		jge	short loc_427E2F
		test	esi, esi
		jz	short loc_427DBE

loc_427E2F:				; CODE XREF: .text:00427E1Cj
					; .text:00427E29j
		test	esi, esi
		jnz	short loc_427E3A
		xor	eax, eax
		jmp	loc_427ED6
; ---------------------------------------------------------------------------

loc_427E3A:				; CODE XREF: .text:00427E31j
		mov	eax, 1
		jmp	loc_427ED6
; ---------------------------------------------------------------------------

loc_427E44:				; CODE XREF: .text:00427D9Ej
		dec	eax
		jnz	loc_427ED4
		mov	ebx, dword_5DBD2C
		jmp	short loc_427EB8
; ---------------------------------------------------------------------------

loc_427E53:				; CODE XREF: .text:00427ECBj
		test	bl, 1
		mov	eax, 0Fh
		jnz	short loc_427E62
		add	eax, 0E1h

loc_427E62:				; CODE XREF: .text:00427E5Bj
		mov	esi, ebx
		sar	esi, 1
		jns	short loc_427E6B
		adc	esi, 0

loc_427E6B:				; CODE XREF: .text:00427E66j
		mov	edx, dword_5DA910
		mov	cl, [edx+esi+408h]
		mov	edx, eax
		not	dl
		and	dl, byte_5DAD1C[esi]
		and	cl, al
		or	cl, dl
		mov	byte_5DAD1C[esi], cl
		mov	ecx, dword_5DA910
		mov	dl, [ecx+esi+8]
		and	dl, al
		not	al
		and	al, byte ptr sel0[esi]
		or	dl, al
		mov	byte ptr sel0[esi], dl
		mov	dword_5DBD48, 1
		call	loc_427D58
		inc	ebx

loc_427EB8:				; CODE XREF: .text:00427E51j
		cmp	ebx, dword_5DBD30
		jge	short loc_427ECD
		mov	eax, dword_5DA910
		mov	ecx, [eax]
		add	ecx, ecx
		cmp	ebx, ecx
		jl	short loc_427E53

loc_427ECD:				; CODE XREF: .text:00427EBEj
		mov	eax, 1
		jmp	short loc_427ED6
; ---------------------------------------------------------------------------

loc_427ED4:				; CODE XREF: .text:00427E45j
		xor	eax, eax

loc_427ED6:				; CODE XREF: .text:00427DB3j
					; .text:00427E35j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_427EDC:				; DATA XREF: .data:stru_52497Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+8]
		test	eax, eax
		jnz	short loc_427F15
		mov	eax, dword_5DBD2C
		cmp	eax, dword_5DBD30
		jl	short loc_427EFD
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427EFD:				; CODE XREF: .text:00427EF7j
		test	ecx, ecx
		jnz	short loc_427F0E
		cmp	dword_5DBD3C, 0
		jnz	short loc_427F0E
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427F0E:				; CODE XREF: .text:00427EFFj
					; .text:00427F08j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427F15:				; CODE XREF: .text:00427EEAj
		dec	eax
		jnz	short loc_427F4F
		test	ecx, ecx
		jnz	short loc_427F33
		push	0		; lParam
		push	0		; wParam
		push	300h		; Msg
		mov	edx, [edx+22Ch]
		push	edx		; hWnd
		call	SendMessageW
		jmp	short loc_427F48
; ---------------------------------------------------------------------------

loc_427F33:				; CODE XREF: .text:00427F1Aj
		push	0		; lParam
		push	0		; wParam
		push	301h		; Msg
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	SendMessageW

loc_427F48:				; CODE XREF: .text:00427F31j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427F4F:				; CODE XREF: .text:00427F16j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_427F54:				; DATA XREF: .data:stru_52497Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_427F92
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_427F73
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427F73:				; CODE XREF: .text:00427F6Cj
		push	1		; uFormat
		call	GetClipboardData
		mov	ebx, eax
		call	CloseClipboard
		test	ebx, ebx
		jnz	short loc_427F8A
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427F8A:				; CODE XREF: .text:00427F83j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427F92:				; CODE XREF: .text:00427F5Dj
		dec	eax
		jnz	short loc_427FB5
		push	0		; lParam
		push	0		; wParam
		push	302h		; Msg
		mov	edx, [ebp+8]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	SendMessageW
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427FB5:				; CODE XREF: .text:00427F93j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_427FBC:				; DATA XREF: .data:stru_52497Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_427FE7
		cmp	dword_5DBD2C, 0
		jnz	short loc_427FE0
		mov	eax, dword_5DBD30
		cmp	eax, dword_5DBD38
		jnz	short loc_427FE0
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427FE0:				; CODE XREF: .text:00427FCDj
					; .text:00427FDAj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427FE7:				; CODE XREF: .text:00427FC4j
		dec	eax
		jnz	short loc_42800F
		xor	edx, edx
		mov	dword_5DBD28, edx
		mov	dword_5DBD34, edx
		mov	dword_5DBD2C, edx
		mov	eax, dword_5DBD38
		mov	dword_5DBD30, eax
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_42800F:				; CODE XREF: .text:00427FE8j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_428014:				; DATA XREF: .data:stru_52497Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_428038
		mov	eax, dword_5DBD2C
		cmp	eax, dword_5DBD30
		jl	short loc_428031
		xor	eax, eax
		jmp	short loc_42808C
; ---------------------------------------------------------------------------

loc_428031:				; CODE XREF: .text:0042802Bj
		mov	eax, 1
		jmp	short loc_42808C
; ---------------------------------------------------------------------------

loc_428038:				; CODE XREF: .text:0042801Ej
		dec	eax
		jnz	short loc_42808A
		mov	ebx, dword_5DBD2C
		jmp	short loc_42807B
; ---------------------------------------------------------------------------

loc_428043:				; CODE XREF: .text:00428081j
		test	bl, 1
		mov	eax, 0Fh
		jnz	short loc_428052
		add	eax, 0E1h

loc_428052:				; CODE XREF: .text:0042804Bj
		mov	edx, eax
		mov	esi, ebx
		sar	esi, 1
		jns	short loc_42805D
		adc	esi, 0

loc_42805D:				; CODE XREF: .text:00428058j
		or	byte_5DAD1C[esi], dl
		not	dl
		and	byte ptr sel0[esi], dl
		mov	dword_5DBD48, 1
		call	loc_427D58
		inc	ebx

loc_42807B:				; CODE XREF: .text:00428041j
		cmp	ebx, dword_5DBD30
		jl	short loc_428043
		mov	eax, 1
		jmp	short loc_42808C
; ---------------------------------------------------------------------------

loc_42808A:				; CODE XREF: .text:00428039j
		xor	eax, eax

loc_42808C:				; CODE XREF: .text:0042802Fj
					; .text:00428036j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_428090:				; CODE XREF: .text:0042F229p
					; .text:0042F4C0p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	edi, offset dword_5DA914
		cmp	dword ptr [ebp+10h], 0
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		jz	loc_4281C5
		cmp	eax, edx
		jz	loc_4281C5
		cmp	edx, eax
		jle	short loc_4280C7
		mov	esi, edx
		mov	ebx, eax
		mov	dword ptr [ebp-4], 1
		jmp	short loc_4280DA
; ---------------------------------------------------------------------------

loc_4280C7:				; CODE XREF: .text:004280B8j
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+10h]
		add	esi, edx
		add	ebx, eax
		dec	esi
		dec	ebx
		mov	dword ptr [ebp-4], 0FFFFFFFFh

loc_4280DA:				; CODE XREF: .text:004280C5j
		cmp	dword ptr [ebp+10h], 0
		jle	loc_4281C5

loc_4280E4:				; CODE XREF: .text:004281BFj
		test	esi, 1
		jnz	short loc_428118
		mov	eax, esi
		sar	eax, 1
		jns	short loc_4280F5
		adc	eax, 0

loc_4280F5:				; CODE XREF: .text:004280F0j
		xor	edx, edx
		mov	dl, [edi+eax+8]
		sar	edx, 4
		and	edx, 0Fh
		mov	[ebp-8], edx
		xor	ecx, ecx
		mov	cl, [edi+eax+408h]
		sar	ecx, 4
		and	ecx, 0Fh
		mov	[ebp-0Ch], ecx
		jmp	short loc_42813C
; ---------------------------------------------------------------------------

loc_428118:				; CODE XREF: .text:004280EAj
		mov	eax, esi
		sar	eax, 1
		jns	short loc_428121
		adc	eax, 0

loc_428121:				; CODE XREF: .text:0042811Cj
		xor	edx, edx
		mov	dl, [edi+eax+8]
		and	edx, 0Fh
		mov	[ebp-8], edx
		xor	ecx, ecx
		mov	cl, [edi+eax+408h]
		and	ecx, 0Fh
		mov	[ebp-0Ch], ecx

loc_42813C:				; CODE XREF: .text:00428116j
		test	bl, 1
		jnz	short loc_428178
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42814A
		adc	eax, 0

loc_42814A:				; CODE XREF: .text:00428145j
		mov	cl, [ebp-8]
		mov	dl, [edi+eax+8]
		shl	ecx, 4
		and	dl, 0Fh
		or	dl, cl
		mov	[edi+eax+8], dl
		mov	cl, [ebp-0Ch]
		mov	dl, [edi+eax+408h]
		shl	ecx, 4
		and	dl, 0Fh
		or	dl, cl
		mov	[edi+eax+408h],	dl
		jmp	short loc_4281A3
; ---------------------------------------------------------------------------

loc_428178:				; CODE XREF: .text:0042813Fj
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_428181
		adc	eax, 0

loc_428181:				; CODE XREF: .text:0042817Cj
		mov	dl, [edi+eax+8]
		and	dl, 0F0h
		or	dl, [ebp-8]
		mov	[edi+eax+8], dl
		mov	cl, [edi+eax+408h]
		and	cl, 0F0h
		or	cl, [ebp-0Ch]
		mov	[edi+eax+408h],	cl

loc_4281A3:				; CODE XREF: .text:00428176j
		mov	dword_5DBD48, 1
		call	loc_427D58
		dec	dword ptr [ebp+10h]
		add	esi, [ebp-4]
		add	ebx, [ebp-4]
		cmp	dword ptr [ebp+10h], 0
		jg	loc_4280E4

loc_4281C5:				; CODE XREF: .text:004280A8j
					; .text:004280B0j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4281CC:				; CODE XREF: .text:0042ECA7p
					; .text:0042F2E7p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ecx, [ebp+8]
		test	ecx, ecx
		jge	short loc_4281DC
		xor	ecx, ecx
		jmp	short loc_4281E7
; ---------------------------------------------------------------------------

loc_4281DC:				; CODE XREF: .text:004281D6j
		mov	eax, dword_5DBD1C
		cmp	ecx, eax
		jle	short loc_4281E7
		mov	ecx, eax

loc_4281E7:				; CODE XREF: .text:004281DAj
					; .text:004281E3j
		xor	edx, edx
		xor	ebx, ebx
		mov	eax, offset sel1
		cmp	ecx, edx
		jle	short loc_4281FF

loc_4281F4:				; CODE XREF: .text:004281FDj
		movzx	esi, byte ptr [eax]
		add	ebx, esi
		inc	edx
		inc	eax
		cmp	ecx, edx
		jg	short loc_4281F4

loc_4281FF:				; CODE XREF: .text:004281F2j
		mov	eax, ebx
		add	eax, eax
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_428208:				; CODE XREF: .text:0042EC9Ep
					; .text:0042F2DEp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	ecx, 2
		mov	eax, esi
		cdq
		idiv	ecx
		mov	esi, eax
		xor	edx, edx
		xor	ecx, ecx
		mov	eax, offset sel1
		jmp	short loc_428238
; ---------------------------------------------------------------------------

loc_428228:				; CODE XREF: .text:0042823Ej
		xor	ebx, ebx
		mov	bl, [eax]
		mov	edi, ebx
		add	edi, ecx
		cmp	esi, edi
		jl	short loc_428240
		add	ecx, ebx
		inc	edx
		inc	eax

loc_428238:				; CODE XREF: .text:00428226j
		cmp	edx, dword_5DBD1C
		jl	short loc_428228

loc_428240:				; CODE XREF: .text:00428232j
		mov	eax, edx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_428248:				; CODE XREF: .text:0042EA7Bp
					; .text:0042EA8Cp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	ecx, 2
		mov	eax, esi
		cdq
		idiv	ecx
		mov	esi, eax
		xor	ecx, ecx
		xor	edx, edx
		mov	eax, offset sel1
		jmp	short loc_428278
; ---------------------------------------------------------------------------

loc_428268:				; CODE XREF: .text:0042827Ej
		xor	ebx, ebx
		mov	bl, [eax]
		mov	edi, ebx
		add	edi, edx
		cmp	esi, edi
		jl	short loc_428280
		add	edx, ebx
		inc	ecx
		inc	eax

loc_428278:				; CODE XREF: .text:00428266j
		cmp	ecx, dword_5DBD1C
		jl	short loc_428268

loc_428280:				; CODE XREF: .text:00428272j
		mov	eax, edx
		add	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_42828C:				; CODE XREF: .text:00430A9Bp
					; .text:00430E81p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF7FCh
		push	ebx
		mov	ebx, [ebp+0Ch]
		push	804h		; datasize
		lea	eax, [ebp-804h]
		push	eax		; data
		push	66h		; type
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_4282C3
		cmp	dword ptr [ebp-804h], 400h
		jbe	short loc_4282C7

loc_4282C3:				; CODE XREF: .text:004282B5j
		xor	eax, eax
		jmp	short loc_428310
; ---------------------------------------------------------------------------

loc_4282C7:				; CODE XREF: .text:004282C1j
		test	ebx, ebx
		jz	short loc_42830B
		mov	edx, [ebp-804h]
		lea	eax, [ebp-800h]
		mov	[ebx], edx
		lea	edx, [ebx+8]
		mov	dword ptr [ebx+4], 400h
		mov	ecx, [ebx]
		push	ecx		; n
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx]
		lea	edx, [ebp-800h]
		add	edx, eax
		push	eax		; n
		push	edx		; src
		add	ebx, 408h
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_42830B:				; CODE XREF: .text:004282C9j
		mov	eax, 1

loc_428310:				; CODE XREF: .text:004282C5j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_428318:				; CODE XREF: .text:00430F26p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_42844A
		cmp	dword ptr [ebx], 0
		jz	loc_42844A
		cmp	dword ptr [ebx], 400h
		ja	loc_42844A
		mov	eax, [ebx]
		mov	esi, 4
		mov	[ebp-804h], eax
		push	eax		; n
		lea	eax, [ebx+8]
		lea	edx, [ebp-804h]
		add	edx, esi
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx]
		add	esi, eax
		lea	edx, [ebx+408h]
		push	eax		; n
		lea	ecx, [ebp-804h]
		add	ecx, esi
		push	edx		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	esi, [ebx]
		or	edi, 0FFFFFFFFh
		xor	ebx, ebx

loc_42838F:				; CODE XREF: .text:004283CBj
		push	804h		; datasize
		lea	eax, [ebp-1008h]
		push	eax		; data
		push	66h		; type
		push	ebx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_4283CD
		push	esi		; n
		lea	edx, [ebp-1008h]
		push	edx		; s2
		lea	ecx, [ebp-804h]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4283C7
		mov	edi, ebx

loc_4283C7:				; CODE XREF: .text:004283C3j
		inc	ebx
		cmp	ebx, 10h
		jl	short loc_42838F

loc_4283CD:				; CODE XREF: .text:004283A8j
		test	edi, edi
		jz	short loc_42844A
		test	edi, edi
		jle	short loc_4283D9
		mov	ebx, edi
		jmp	short loc_4283E3
; ---------------------------------------------------------------------------

loc_4283D9:				; CODE XREF: .text:004283D3j
		cmp	ebx, 10h
		jl	short loc_4283E3
		mov	ebx, 10h

loc_4283E3:				; CODE XREF: .text:004283D7j
					; .text:004283DCj
		dec	ebx
		test	ebx, ebx
		jl	short loc_42842C

loc_4283E8:				; CODE XREF: .text:0042842Aj
		push	804h		; datasize
		lea	eax, [ebp-1008h]
		push	eax		; data
		push	66h		; type
		push	ebx		; _addr
		call	Finddata
		add	esp, 10h
		mov	eax, [ebp-1008h]
		add	eax, eax
		add	eax, 4
		cmp	eax, 804h
		ja	short loc_42842C
		push	eax		; datasize
		lea	edx, [ebp-1008h]
		push	edx		; data
		push	66h		; type
		lea	ecx, [ebx+1]
		push	ecx		; _addr
		call	Insertdata
		add	esp, 10h
		dec	ebx
		test	ebx, ebx
		jge	short loc_4283E8

loc_42842C:				; CODE XREF: .text:004283E6j
					; .text:0042840Fj
		push	esi		; datasize
		lea	eax, [ebp-804h]
		push	eax		; data
		push	66h		; type
		push	0		; _addr
		call	Insertdata
		add	esp, 10h
		mov	dword_5D5614, 1

loc_42844A:				; CODE XREF: .text:0042832Dj
					; .text:00428336j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_428454(HWND hDlg)
loc_428454:				; CODE XREF: .text:0043334Dp
					; .text:00433699p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset index
		mov	ebx, [ebp+8]
		mov	eax, [edi+8]
		and	eax, 0E00000h
		cmp	eax, 800000h
		jnz	short loc_428488
		push	8FCh		; nIDCheckButton
		push	8FEh		; nIDLastButton
		push	8FCh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4284C5
; ---------------------------------------------------------------------------

loc_428488:				; CODE XREF: .text:0042846Fj
		mov	edx, [edi+8]
		and	edx, 0E00000h
		cmp	edx, 400000h
		jnz	short loc_4284B0
		push	8FEh		; nIDCheckButton
		push	8FEh		; nIDLastButton
		push	8FCh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4284C5
; ---------------------------------------------------------------------------

loc_4284B0:				; CODE XREF: .text:00428497j
		push	8FDh		; nIDCheckButton
		push	8FEh		; nIDLastButton
		push	8FCh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton

loc_4284C5:				; CODE XREF: .text:00428486j
					; .text:004284AEj
		mov	ecx, [edi+8]
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		setnz	al
		and	eax, 1
		push	eax		; bEnable
		push	8FFh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		mov	edx, [edi+8]
		and	edx, 0E00000h
		cmp	edx, 800000h
		jz	short loc_428503
		test	byte ptr [edi+0Ch], 1
		jz	short loc_428507

loc_428503:				; CODE XREF: .text:004284FBj
		xor	ecx, ecx
		jmp	short loc_42850C
; ---------------------------------------------------------------------------

loc_428507:				; CODE XREF: .text:00428501j
		mov	ecx, 1

loc_42850C:				; CODE XREF: .text:00428505j
		push	ecx		; bEnable
		push	900h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		mov	eax, [edi+8]
		and	eax, 0E00000h
		cmp	eax, 800000h
		jz	short loc_428533
		test	byte ptr [edi+0Ch], 3
		jz	short loc_428537

loc_428533:				; CODE XREF: .text:0042852Bj
		xor	edx, edx
		jmp	short loc_42853C
; ---------------------------------------------------------------------------

loc_428537:				; CODE XREF: .text:00428531j
		mov	edx, 1

loc_42853C:				; CODE XREF: .text:00428535j
		push	edx		; bEnable
		push	901h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword ptr [edi+10h], 4
		jnz	short loc_428561
		test	byte ptr [edi+0Ch], 3
		jz	short loc_428561
		mov	dword ptr [edi+10h], 2

loc_428561:				; CODE XREF: .text:00428552j
					; .text:00428558j
		test	byte ptr [edi+0Ch], 1
		jz	short loc_42856E
		mov	dword ptr [edi+10h], 1

loc_42856E:				; CODE XREF: .text:00428565j
		mov	ecx, [edi+8]
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		jnz	short loc_428596
		push	8FFh		; nIDCheckButton
		push	901h		; nIDLastButton
		push	8FFh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4285E5
; ---------------------------------------------------------------------------

loc_428596:				; CODE XREF: .text:0042857Dj
		cmp	dword ptr [edi+10h], 4
		jnz	short loc_4285B3
		push	901h		; nIDCheckButton
		push	901h		; nIDLastButton
		push	8FFh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4285E5
; ---------------------------------------------------------------------------

loc_4285B3:				; CODE XREF: .text:0042859Aj
		cmp	dword ptr [edi+10h], 2
		jnz	short loc_4285D0
		push	900h		; nIDCheckButton
		push	901h		; nIDLastButton
		push	8FFh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4285E5
; ---------------------------------------------------------------------------

loc_4285D0:				; CODE XREF: .text:004285B7j
		push	8FFh		; nIDCheckButton
		push	901h		; nIDLastButton
		push	8FFh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton

loc_4285E5:				; CODE XREF: .text:00428594j
					; .text:004285B1j ...
		mov	eax, [edi]
		add	eax, 906h
		push	eax		; nIDCheckButton
		push	909h		; nIDLastButton
		push	906h		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		xor	esi, esi

loc_4285FF:				; CODE XREF: .text:00428631j
		push	1		; bErase
		lea	eax, [esi+90Ah]
		push	0		; lpRect
		push	eax		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		lea	edx, [esi+90Eh]
		push	0		; lpRect
		push	edx		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		inc	esi
		cmp	esi, 4
		jl	short loc_4285FF
		test	byte ptr g_dialog.mode,	40h
		jz	loc_4287F5
		mov	ecx, [edi+8]
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		setz	al
		and	eax, 1
		mov	esi, eax
		push	esi		; bEnable
		push	91Dh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword_5DC34C, 0
		jnz	short loc_428678
		cmp	dword ptr [edi+14h], 0
		jz	short loc_428687

loc_428678:				; CODE XREF: .text:00428670j
		mov	eax, [edi+8]
		and	eax, 0E00000h
		cmp	eax, 800000h
		jz	short loc_42868B

loc_428687:				; CODE XREF: .text:00428676j
		xor	esi, esi
		jmp	short loc_428690
; ---------------------------------------------------------------------------

loc_42868B:				; CODE XREF: .text:00428685j
		mov	esi, 1

loc_428690:				; CODE XREF: .text:00428689j
		test	esi, esi
		jz	short loc_4286BA
		mov	eax, [edi+8]
		and	eax, 30000000h
		cmp	eax, 10000000h
		jnz	short loc_4286BA
		push	925h		; nIDCheckButton
		push	926h		; nIDLastButton
		push	924h		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4286FB
; ---------------------------------------------------------------------------

loc_4286BA:				; CODE XREF: .text:00428692j
					; .text:004286A1j
		test	esi, esi
		jz	short loc_4286E6
		mov	edx, [edi+8]
		and	edx, 30000000h
		cmp	edx, 30000000h
		jnz	short loc_4286E6
		push	926h		; nIDCheckButton
		push	926h		; nIDLastButton
		push	924h		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4286FB
; ---------------------------------------------------------------------------

loc_4286E6:				; CODE XREF: .text:004286BCj
					; .text:004286CDj
		push	924h		; nIDCheckButton
		push	926h		; nIDLastButton
		push	924h		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton

loc_4286FB:				; CODE XREF: .text:004286B8j
					; .text:004286E4j
		push	esi		; bEnable
		push	924h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	esi		; bEnable
		push	925h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	esi		; bEnable
		push	926h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword_5DC350, 0
		jz	short loc_42874B
		mov	ecx, [edi+8]
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		jz	short loc_42874F

loc_42874B:				; CODE XREF: .text:00428738j
		xor	esi, esi
		jmp	short loc_428754
; ---------------------------------------------------------------------------

loc_42874F:				; CODE XREF: .text:00428749j
		mov	esi, 1

loc_428754:				; CODE XREF: .text:0042874Dj
		test	esi, esi
		jz	short loc_42877E
		mov	eax, [edi+8]
		and	eax, 0C0000000h
		cmp	eax, 40000000h
		jnz	short loc_42877E
		push	928h		; nIDCheckButton
		push	929h		; nIDLastButton
		push	927h		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4287BF
; ---------------------------------------------------------------------------

loc_42877E:				; CODE XREF: .text:00428756j
					; .text:00428765j
		test	esi, esi
		jz	short loc_4287AA
		mov	edx, [edi+8]
		and	edx, 0C0000000h
		cmp	edx, 0C0000000h
		jnz	short loc_4287AA
		push	929h		; nIDCheckButton
		push	929h		; nIDLastButton
		push	927h		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4287BF
; ---------------------------------------------------------------------------

loc_4287AA:				; CODE XREF: .text:00428780j
					; .text:00428791j
		push	927h		; nIDCheckButton
		push	929h		; nIDLastButton
		push	927h		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton

loc_4287BF:				; CODE XREF: .text:0042877Cj
					; .text:004287A8j
		push	esi		; bEnable
		push	927h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	esi		; bEnable
		push	928h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	esi		; bEnable
		push	929h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4287F5:				; CODE XREF: .text:0042863Aj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4287FC(HWND hDlg, int)
loc_4287FC:				; CODE XREF: .text:00435247p
					; .text:004354ACp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		push	9D9h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		mov	edi, eax
		push	0		; lParam
		push	0		; wParam
		push	184h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		push	offset rtprot.range ; set
		call	Getrangecount
		pop	ecx
		mov	esi, eax
		xor	eax, eax
		mov	[ebp-4], eax
		mov	ebx, eax
		cmp	esi, ebx
		jle	loc_428919

loc_428843:				; CODE XREF: .text:00428913j
		lea	eax, [ebp-0Ch]
		push	eax		; rmax
		lea	edx, [ebp-8]
		push	edx		; rmin
		push	ebx		; index
		push	offset rtprot.range ; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	loc_428910
		mov	ecx, [ebp+0Ch]
		cmp	ecx, [ebp-8]
		jb	short loc_42886C
		mov	[ebp-4], ebx

loc_42886C:				; CODE XREF: .text:00428867j
		cmp	dword_5CBBB0, 0
		jz	short loc_4288BD
		mov	eax, [ebp-8]
		cmp	eax, [ebp-0Ch]
		jnz	short loc_4288A0
		push	0		; comment
		lea	edx, [ebp-20Ch]
		push	100h		; nsymb
		push	edx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	ecx, [ebp-8]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		jmp	short loc_4288FC
; ---------------------------------------------------------------------------

loc_4288A0:				; CODE XREF: .text:0042887Bj
		mov	eax, [ebp-0Ch]
		sub	eax, [ebp-8]
		inc	eax
		push	eax		; size
		mov	edx, [ebp-8]
		push	edx		; _addr
		lea	ecx, [ebp-20Ch]
		push	ecx		; s
		call	Decoderange
		add	esp, 0Ch
		jmp	short loc_4288FC
; ---------------------------------------------------------------------------

loc_4288BD:				; CODE XREF: .text:00428873j
		mov	eax, [ebp-8]
		cmp	eax, [ebp-0Ch]
		jnz	short loc_4288DF
		mov	edx, [ebp-8]
		lea	ecx, [ebp-20Ch]
		push	edx
		push	offset a08x_3	; "%08X"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4288FC
; ---------------------------------------------------------------------------

loc_4288DF:				; CODE XREF: .text:004288C3j
		mov	eax, [ebp-0Ch]
		lea	ecx, [ebp-20Ch]
		inc	eax
		push	eax
		mov	edx, [ebp-8]
		push	edx
		push	offset a08x__08x ; "%08X..%08X"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h

loc_4288FC:				; CODE XREF: .text:0042889Ej
					; .text:004288BBj ...
		lea	eax, [ebp-20Ch]
		push	eax		; lParam
		push	0		; wParam
		push	180h		; Msg
		push	edi		; hWnd
		call	SendMessageW

loc_428910:				; CODE XREF: .text:0042885Bj
		inc	ebx
		cmp	esi, ebx
		jg	loc_428843

loc_428919:				; CODE XREF: .text:0042883Dj
		test	ebx, ebx
		jle	short loc_428937
		cmp	rtprot.rangeactive, 0
		jz	short loc_428937
		push	0		; lParam
		mov	edx, [ebp-4]
		push	edx		; wParam
		push	186h		; Msg
		push	edi		; hWnd
		call	SendMessageW

loc_428937:				; CODE XREF: .text:0042891Bj
					; .text:00428924j
		cmp	rtprot.rangeactive, 0
		setnz	cl
		and	ecx, 1
		push	ecx		; bEnable
		push	edi		; hWnd
		call	EnableWindow
		cmp	rtprot.rangeactive, 0
		setnz	al
		and	eax, 1
		push	eax		; bEnable
		push	9DAh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		lea	ecx, [ebp-0Ch]
		lea	eax, [ebp-8]
		push	ecx		; rmax
		push	eax		; rmin
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset rtprot.range ; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jnz	short loc_428991
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_4289C2
; ---------------------------------------------------------------------------

loc_428991:				; CODE XREF: .text:00428988j
		mov	eax, [ebp-8]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4289BD
		mov	edx, [ebx+458h]
		cmp	edx, [ebp-8]
		ja	short loc_4289BD
		mov	ecx, [ebx+458h]
		add	ecx, [ebx+45Ch]
		cmp	ecx, [ebp-8]
		ja	short loc_4289C2

loc_4289BD:				; CODE XREF: .text:0042899Fj
					; .text:004289AAj
		xor	eax, eax
		mov	[ebp-8], eax

loc_4289C2:				; CODE XREF: .text:0042898Fj
					; .text:004289BBj
		cmp	rtprot.rangeactive, 0
		jz	short loc_4289D5
		test	esi, esi
		jle	short loc_4289D5
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4289D9

loc_4289D5:				; CODE XREF: .text:004289C9j
					; .text:004289CDj
		xor	edx, edx
		jmp	short loc_4289DE
; ---------------------------------------------------------------------------

loc_4289D9:				; CODE XREF: .text:004289D3j
		mov	edx, 1

loc_4289DE:				; CODE XREF: .text:004289D7j
		push	edx		; bEnable
		push	9DBh		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	rtprot.rangeactive, 0
		jz	short loc_428A00
		test	esi, esi
		jg	short loc_428A04

loc_428A00:				; CODE XREF: .text:004289FAj
		xor	eax, eax
		jmp	short loc_428A09
; ---------------------------------------------------------------------------

loc_428A04:				; CODE XREF: .text:004289FEj
		mov	eax, 1

loc_428A09:				; CODE XREF: .text:00428A02j
		push	eax		; bEnable
		push	9DCh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	rtprot.rangeactive, 0
		jz	short loc_428A2B
		test	esi, esi
		jg	short loc_428A2F

loc_428A2B:				; CODE XREF: .text:00428A25j
		xor	ecx, ecx
		jmp	short loc_428A34
; ---------------------------------------------------------------------------

loc_428A2F:				; CODE XREF: .text:00428A29j
		mov	ecx, 1

loc_428A34:				; CODE XREF: .text:00428A2Dj
		push	ecx		; bEnable
		push	9DDh		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_428A50(const void *, const void *)
loc_428A50:				; DATA XREF: .text:004368C5o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx+4]
		mov	ecx, [eax+4]
		cmp	ebx, ecx
		jbe	short loc_428A6A
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_428A6A:				; CODE XREF: .text:00428A62j
		cmp	ebx, ecx
		jnb	short loc_428A76
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_428A76:				; CODE XREF: .text:00428A6Cj
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_428A84
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_428A84:				; CODE XREF: .text:00428A7Cj
		cmp	ebx, ecx
		jnb	short loc_428A90
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_428A90:				; CODE XREF: .text:00428A86j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_428A98(const void *, const void *)
loc_428A98:				; DATA XREF: .text:00436CB1o
					; .text:00436E7Do
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, dword_5DC5DC
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	eax, [eax]
		cmp	eax, ebx
		mov	edx, [edx]
		jnz	short loc_428ABB
		cmp	ebx, edx
		jz	short loc_428ABB
		or	ecx, 0FFFFFFFFh
		jmp	short loc_428AE2
; ---------------------------------------------------------------------------

loc_428ABB:				; CODE XREF: .text:00428AB0j
					; .text:00428AB4j
		mov	ebx, dword_5DC5DC
		cmp	edx, ebx
		jnz	short loc_428AD0
		cmp	ebx, eax
		jz	short loc_428AD0
		mov	ecx, 1
		jmp	short loc_428AE2
; ---------------------------------------------------------------------------

loc_428AD0:				; CODE XREF: .text:00428AC3j
					; .text:00428AC7j
		cmp	edx, eax
		jbe	short loc_428AD9
		or	ecx, 0FFFFFFFFh
		jmp	short loc_428AE2
; ---------------------------------------------------------------------------

loc_428AD9:				; CODE XREF: .text:00428AD2j
		cmp	edx, eax
		jnb	short loc_428AE2
		mov	ecx, 1

loc_428AE2:				; CODE XREF: .text:00428AB9j
					; .text:00428ACEj ...
		mov	eax, ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_428AE8:				; CODE XREF: .text:loc_40FD05p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	edx, g_hInstance
		lea	eax, [ebp-28h]
		push	eax		; lpWndClass
		push	offset aOd_empty ; "OD_EMPTY"
		push	edx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jz	short loc_428B0B
		xor	eax, eax
		jmp	short loc_428B47
; ---------------------------------------------------------------------------

loc_428B0B:				; CODE XREF: .text:00428B05j
		lea	edx, [ebp-28h]
		push	edx		; lpWndClass
		push	offset a32770	; "#32770"
		push	0		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_428B24
		or	eax, 0FFFFFFFFh
		jmp	short loc_428B47
; ---------------------------------------------------------------------------

loc_428B24:				; CODE XREF: .text:00428B1Dj
		mov	dword ptr [ebp-1Ch], 22h
		mov	dword ptr [ebp-4], offset aOd_empty ; "OD_EMPTY"
		lea	edx, [ebp-28h]
		push	edx		; lpWndClass
		call	RegisterClassW
		test	ax, ax
		jnz	short loc_428B45
		or	eax, 0FFFFFFFFh
		jmp	short loc_428B47
; ---------------------------------------------------------------------------

loc_428B45:				; CODE XREF: .text:00428B3Ej
		xor	eax, eax

loc_428B47:				; CODE XREF: .text:00428B09j
					; .text:00428B22j ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 111. _Getcontrolpos
; Exported entry 555. Getcontrolpos

; int __cdecl Getcontrolpos(HWND hDlg, int nIDDlgItem, LPRECT lpRect)
		public Getcontrolpos
Getcontrolpos:				; CODE XREF: .text:004DC3D2p
		push	ebp		; _Getcontrolpos
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_428B5F
		test	esi, esi
		jnz	short loc_428B64

loc_428B5F:				; CODE XREF: .text:00428B59j
		or	eax, 0FFFFFFFFh
		jmp	short loc_428B91
; ---------------------------------------------------------------------------

loc_428B64:				; CODE XREF: .text:00428B5Dj
		mov	edx, [ebp+0Ch]
		push	edx		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		test	eax, eax
		jnz	short loc_428B77
		or	eax, 0FFFFFFFFh
		jmp	short loc_428B91
; ---------------------------------------------------------------------------

loc_428B77:				; CODE XREF: .text:00428B70j
		push	esi		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		push	esi		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		add	esi, 8
		push	esi		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		xor	eax, eax

loc_428B91:				; CODE XREF: .text:00428B62j
					; .text:00428B75j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 112. _Movecontrol
; Exported entry 655. Movecontrol

; int __cdecl Movecontrol(HWND hDlg, int nIDDlgItem, int, int, int, int)
		public Movecontrol
Movecontrol:				; CODE XREF: .text:0042CACEp
					; .text:0042CAE2p ...
		push	ebp		; _Movecontrol
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_428BFE
		lea	eax, [ebp-10h]
		push	eax		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		lea	edx, [ebp-10h]
		push	edx		; lpPoint
		push	esi		; hWnd
		call	ScreenToClient
		lea	ecx, [ebp-8]
		push	ecx		; lpPoint
		push	esi		; hWnd
		call	ScreenToClient
		push	300h		; uFlags
		mov	ecx, [ebp-4]
		mov	edx, [ebp-0Ch]
		sub	ecx, edx
		add	ecx, [ebp+1Ch]
		push	ecx		; cy
		mov	ecx, [ebp-8]
		mov	eax, [ebp-10h]
		sub	ecx, eax
		add	ecx, [ebp+18h]
		push	ecx		; cx
		add	edx, [ebp+14h]
		push	edx		; Y
		add	eax, [ebp+10h]
		push	eax		; X
		push	0		; hWndInsertAfter
		push	ebx		; hWnd
		call	SetWindowPos

loc_428BFE:				; CODE XREF: .text:00428BB1j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 113. _Findcontrol
; Exported entry 505. Findcontrol

; t_control *__cdecl Findcontrol(HWND hWnd)
		public Findcontrol
Findcontrol:				; CODE XREF: .text:00424D28p
					; .text:00424DACp ...
		push	ebp		; _Findcontrol
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_428C14
		xor	eax, eax
		jmp	short loc_428C54
; ---------------------------------------------------------------------------

loc_428C14:				; CODE XREF: .text:00428C0Ej
		push	1Eh		; nIndex
		push	esi		; hWnd
		call	GetParent
		push	eax		; hWnd
		call	GetWindowLongW
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_428C2D
		cmp	dword ptr [ebx], 0
		jnz	short loc_428C31

loc_428C2D:				; CODE XREF: .text:00428C26j
		xor	eax, eax
		jmp	short loc_428C54
; ---------------------------------------------------------------------------

loc_428C31:				; CODE XREF: .text:00428C2Bj
		push	esi		; hWnd
		call	GetDlgCtrlID
		mov	edx, eax
		test	edx, edx
		jnz	short loc_428C41
		xor	eax, eax
		jmp	short loc_428C54
; ---------------------------------------------------------------------------

loc_428C41:				; CODE XREF: .text:00428C3Bj
		mov	eax, [ebx]
		jmp	short loc_428C4D
; ---------------------------------------------------------------------------

loc_428C45:				; CODE XREF: .text:00428C50j
		cmp	edx, [eax+4]
		jz	short loc_428C54
		add	eax, 28h

loc_428C4D:				; CODE XREF: .text:00428C43j
		cmp	dword ptr [eax], 0
		jnz	short loc_428C45
		xor	eax, eax

loc_428C54:				; CODE XREF: .text:00428C12j
					; .text:00428C2Fj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_428C58(HWND hWnd, int)
loc_428C58:				; CODE XREF: .text:004CF817p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_428C6C
		test	esi, esi
		jnz	short loc_428C70

loc_428C6C:				; CODE XREF: .text:00428C66j
		xor	eax, eax
		jmp	short loc_428CC9
; ---------------------------------------------------------------------------

loc_428C70:				; CODE XREF: .text:00428C6Aj
		mov	dword ptr [esi], 0FFFFFFFFh
		push	1Eh		; nIndex
		push	edi		; hWnd
		call	GetParent
		push	eax		; hWnd
		call	GetWindowLongW
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_428C8F
		cmp	dword ptr [ebx], 0
		jnz	short loc_428C93

loc_428C8F:				; CODE XREF: .text:00428C88j
		xor	eax, eax
		jmp	short loc_428CC9
; ---------------------------------------------------------------------------

loc_428C93:				; CODE XREF: .text:00428C8Dj
		push	edi		; hWnd
		call	GetDlgCtrlID
		mov	ecx, eax
		test	ecx, ecx
		jnz	short loc_428CA3
		xor	eax, eax
		jmp	short loc_428CC9
; ---------------------------------------------------------------------------

loc_428CA3:				; CODE XREF: .text:00428C9Dj
		mov	eax, [ebx]
		jmp	short loc_428CBB
; ---------------------------------------------------------------------------

loc_428CA7:				; CODE XREF: .text:00428CBFj
		cmp	edx, 1
		jnz	short loc_428CB3
		mov	edx, [eax+24h]
		mov	[esi], edx
		jmp	short loc_428CB8
; ---------------------------------------------------------------------------

loc_428CB3:				; CODE XREF: .text:00428CAAj
		cmp	ecx, [eax+4]
		jz	short loc_428CC9

loc_428CB8:				; CODE XREF: .text:00428CB1j
		add	eax, 28h

loc_428CBB:				; CODE XREF: .text:00428CA5j
		mov	edx, [eax]
		test	edx, edx
		jnz	short loc_428CA7
		mov	dword ptr [esi], 0FFFFFFFFh
		xor	eax, eax

loc_428CC9:				; CODE XREF: .text:00428C6Ej
					; .text:00428C91j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 114. _Defaultactions
; Exported entry 461. Defaultactions

; int __cdecl Defaultactions(HWND hparent, t_control *pctr, WPARAM wp, LPARAM lp)
		public Defaultactions
Defaultactions:				; CODE XREF: .text:00424DC1p
					; .text:0042ABE7p ...
		push	ebp		; _Defaultactions
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jz	short loc_428CEC
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_428CF3

loc_428CEC:				; CODE XREF: .text:00428CE4j
		xor	eax, eax
		jmp	loc_428EC4
; ---------------------------------------------------------------------------

loc_428CF3:				; CODE XREF: .text:00428CEAj
		push	1Eh		; nIndex
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetWindowLongW
		mov	edi, eax
		mov	eax, [ebx]
		cmp	eax, 3Eh
		jz	short loc_428D0C
		cmp	eax, 3Fh
		jnz	short loc_428D32

loc_428D0C:				; CODE XREF: .text:00428D05j
		mov	edx, esi
		shr	edx, 10h
		test	dx, dx
		jnz	short loc_428D32
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	SendMessageW
		mov	edx, [ebx+18h]
		mov	[edx], eax
		jmp	loc_428EA8
; ---------------------------------------------------------------------------

loc_428D32:				; CODE XREF: .text:00428D0Aj
					; .text:00428D14j
		mov	eax, [ebx]
		cmp	eax, 40h
		jb	short loc_428D8C
		cmp	eax, 5Fh
		ja	short loc_428D8C
		mov	ecx, esi
		shr	ecx, 10h
		test	cx, cx
		jnz	short loc_428D8C
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	SendMessageW
		test	eax, eax
		jnz	short loc_428D76
		mov	ecx, [ebx]
		mov	edx, 1
		sub	ecx, 40h
		mov	eax, [ebx+18h]
		shl	edx, cl
		not	edx
		and	[eax], edx
		jmp	loc_428EA8
; ---------------------------------------------------------------------------

loc_428D76:				; CODE XREF: .text:00428D5Cj
		mov	ecx, [ebx]
		mov	edx, 1
		sub	ecx, 40h
		mov	eax, [ebx+18h]
		shl	edx, cl
		or	[eax], edx
		jmp	loc_428EA8
; ---------------------------------------------------------------------------

loc_428D8C:				; CODE XREF: .text:00428D37j
					; .text:00428D3Cj ...
		mov	eax, [ebx]
		cmp	eax, 30h
		jz	short loc_428D98
		cmp	eax, 31h
		jnz	short loc_428DBF

loc_428D98:				; CODE XREF: .text:00428D91j
		mov	edx, esi
		shr	edx, 10h
		cmp	dx, 1
		jnz	short loc_428DBF
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	SendMessageW
		mov	edx, [ebx+18h]
		mov	[edx], eax
		jmp	loc_428EA8
; ---------------------------------------------------------------------------

loc_428DBF:				; CODE XREF: .text:00428D96j
					; .text:00428DA1j
		mov	eax, [ebx]
		cmp	eax, 60h
		jb	short loc_428DEC
		cmp	eax, 6Fh
		ja	short loc_428DEC
		mov	ecx, esi
		shr	ecx, 10h
		test	cx, cx
		jnz	short loc_428DEC
		test	edi, edi
		jz	short loc_428DEC
		cmp	dword ptr [edi+78h], 0
		jz	short loc_428DEC
		sub	eax, 60h
		mov	edx, [ebx+18h]
		mov	[edx], eax
		jmp	loc_428EA8
; ---------------------------------------------------------------------------

loc_428DEC:				; CODE XREF: .text:00428DC4j
					; .text:00428DC9j ...
		mov	eax, [ebx]
		cmp	eax, 13h
		jz	short loc_428E0D
		cmp	eax, 14h
		jz	short loc_428E0D
		cmp	eax, 85h
		jz	short loc_428E0D
		cmp	eax, 88h
		jz	short loc_428E0D
		cmp	eax, 89h
		jnz	short loc_428E31

loc_428E0D:				; CODE XREF: .text:00428DF1j
					; .text:00428DF6j ...
		mov	ecx, esi
		shr	ecx, 10h
		cmp	cx, 9
		jnz	short loc_428E31
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	SendMessageW
		mov	edx, [ebx+18h]
		mov	[edx], eax
		jmp	short loc_428EA8
; ---------------------------------------------------------------------------

loc_428E31:				; CODE XREF: .text:00428E0Bj
					; .text:00428E16j
		cmp	dword ptr [ebx], 8Ah
		jnz	short loc_428E5E
		mov	ecx, esi
		shr	ecx, 10h
		cmp	cx, 9
		jnz	short loc_428E5E
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	SendMessageW
		inc	eax
		mov	edx, [ebx+18h]
		mov	[edx], eax
		jmp	short loc_428EA8
; ---------------------------------------------------------------------------

loc_428E5E:				; CODE XREF: .text:00428E37j
					; .text:00428E42j
		cmp	dword ptr [ebx], 84h
		jnz	short loc_428EA4
		shr	esi, 10h
		cmp	si, 9
		jnz	short loc_428EA4
		push	100h		; nMaxCount
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	GetWindowTextW
		mov	word ptr [ebp-2], 0
		mov	edx, [ebx+18h]
		lea	ecx, [ebp-200h]
		push	edx
		push	offset aSX	; "%*s (%X)"
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	short loc_428EA8
; ---------------------------------------------------------------------------

loc_428EA4:				; CODE XREF: .text:00428E64j
					; .text:00428E6Dj
		xor	eax, eax
		jmp	short loc_428EC4
; ---------------------------------------------------------------------------

loc_428EA8:				; CODE XREF: .text:00428D2Dj
					; .text:00428D71j ...
		test	edi, edi
		jz	short loc_428EBF
		cmp	dword ptr [edi+74h], 0
		jz	short loc_428EBF
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [edi+74h]
		push	edx		; hWnd
		call	InvalidateRect

loc_428EBF:				; CODE XREF: .text:00428EAAj
					; .text:00428EB0j
		mov	eax, 1

loc_428EC4:				; CODE XREF: .text:00428CEEj
					; .text:00428EA6j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	loc_428ECC(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_428ECC:				; DATA XREF: .text:004297D4o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		cmp	edi, 102h
		jnz	short loc_428F12
		push	esi		; hWnd
		call	Findcontrol
		pop	ecx
		mov	[ebp-4], eax
		test	eax, eax
		jz	short loc_428F12
		mov	edx, [ebp-4]
		cmp	dword ptr [edx], 0Eh
		jnz	short loc_428F12
		cmp	ebx, 20h
		jb	short loc_428F12
		xor	ecx, ecx
		mov	cl, bl
		push	ecx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_428F12
		xor	eax, eax
		jmp	short loc_428F25
; ---------------------------------------------------------------------------

loc_428F12:				; CODE XREF: .text:00428EE2j
					; .text:00428EF0j ...
		mov	edx, [ebp+14h]
		mov	ecx, dword_5DA598
		push	edx		; lParam
		push	ebx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		push	ecx		; lpPrevWndFunc
		call	CallWindowProcW

loc_428F25:				; CODE XREF: .text:00428F10j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 115. _Addstringtocombolist
; Exported entry 397. Addstringtocombolist

; void __cdecl Addstringtocombolist(HWND hc, wchar_t *s)
		public Addstringtocombolist
Addstringtocombolist:			; CODE XREF: .text:0042B430p
					; .text:0042B462p ...
		push	ebp		; _Addstringtocombolist
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_428FEE
		test	edi, edi
		jz	loc_428FEE
		cmp	word ptr [edi],	0
		jz	loc_428FEE
		push	0		; lParam
		push	0		; wParam
		push	146h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		mov	[ebp-4], eax
		xor	ebx, ebx
		cmp	ebx, [ebp-4]
		jge	short loc_428FD1

loc_428F75:				; CODE XREF: .text:00428FCFj
		push	0		; lParam
		push	ebx		; wParam
		push	149h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		cmp	eax, 0FFFFFFFFh
		jz	short loc_428FCB
		cmp	eax, 100h
		jge	short loc_428FCB
		lea	eax, [ebp-204h]
		push	eax		; lParam
		push	ebx		; wParam
		push	148h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		push	100h		; maxlen
		lea	edx, [ebp-204h]
		push	edx		; s2
		push	edi		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_428FCB
		push	0		; lParam
		push	ebx		; wParam
		push	144h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		jmp	short loc_428FD1
; ---------------------------------------------------------------------------

loc_428FCB:				; CODE XREF: .text:00428F86j
					; .text:00428F8Dj ...
		inc	ebx
		cmp	ebx, [ebp-4]
		jl	short loc_428F75

loc_428FD1:				; CODE XREF: .text:00428F73j
					; .text:00428FC9j
		push	edi		; lParam
		push	0		; wParam
		push	14Ah		; Msg
		push	esi		; hWnd
		call	SendMessageW
		push	0		; lParam
		push	10h		; wParam
		push	144h		; Msg
		push	esi		; hWnd
		call	SendMessageW

loc_428FEE:				; CODE XREF: .text:00428F44j
					; .text:00428F4Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
