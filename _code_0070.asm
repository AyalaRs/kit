.code

; ---------------------------------------------------------------------------
; Exported entry 277. _Skipspaces
; Exported entry 721. Skipspaces

; int __cdecl Skipspaces(t_scan	*ps)
		public Skipspaces
Skipspaces:				; CODE XREF: .text:0049D416p
		push	ebp		; _Skipspaces
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_485670
		cmp	dword ptr [eax+4], 0
		jnz	short loc_485674

loc_485670:				; CODE XREF: .text:00485668j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_485674:				; CODE XREF: .text:0048566Ej
		mov	edx, [eax+4]

loc_485677:				; CODE XREF: .text:00485690j
					; .text:00485695j ...
		mov	ecx, [eax+0Ch]
		cmp	ecx, [eax+8]
		jb	short loc_485683
		mov	eax, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_485683:				; CODE XREF: .text:0048567Dj
		mov	ecx, [eax+0Ch]
		inc	dword ptr [eax+0Ch]
		movzx	ecx, word ptr [edx+ecx*2]
		sub	ecx, 9
		jz	short loc_485677
		sub	ecx, 3
		jz	short loc_485677
		sub	ecx, 14h
		jz	short loc_485677
		dec	dword ptr [eax+0Ch]
		mov	eax, [eax+0Ch]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 278. _Scan
; Exported entry 704. Scan

; void __cdecl Scan(t_scan *ps)
		public Scan
Scan:					; CODE XREF: .text:00478C0Cp
					; .text:00478DCBp ...
		push	ebp		; _Scan
		mov	ebp, esp
		add	esp, 0FFFFFFB4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_4867BD
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4856CF
		xor	eax, eax
		mov	[ebx+42Eh], eax
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4856CF:				; CODE XREF: .text:004856C0j
		mov	edx, [ebx+0Ch]
		mov	[ebx+10h], edx
		mov	edi, [ebx+4]

loc_4856D8:				; CODE XREF: .text:00485708j
					; .text:00485819j ...
		mov	eax, [ebx+0Ch]	; jumptable 00485708 cases 9,12,32
		cmp	eax, [ebx+8]
		jb	short loc_4856ED
		xor	edx, edx
		mov	[ebx+42Eh], edx
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4856ED:				; CODE XREF: .text:004856DEj
		mov	ecx, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	esi, word ptr [edi+ecx*2]
		mov	eax, esi
		cmp	eax, 7Eh	; switch 127 cases
		ja	loc_4867B0	; jumptable 00485708 default case
		mov	al, ds:byte_48570F[eax]
		jmp	ds:off_48578E[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_48570F	db    12h,     0,     0,     0 ; DATA XREF: .text:00485702r
		db	0,     0,     0,     0 ; indirect table	for switch statement
		db	0,   10h,   11h,     0
		db    10h,   11h,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db    10h,   0Fh,   0Eh,     3
		db	3,     1,     3,   0Dh
		db	1,     1,   0Ch,   0Bh
		db	1,   0Ah,     8,     9
		db	8,     8,     8,     8
		db	8,     8,     8,     8
		db	8,     8,     7,     1
		db	6,     5,     4,     1
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     1
		db	1,     1,     1,     3
		db	1,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     3,     3,     1
		db	2,     1,     1
off_48578E	dd offset loc_4867B0, offset loc_485D0E, offset	loc_486070
					; DATA XREF: .text:00485708r
		dd offset loc_48667B, offset loc_48601E, offset	loc_485FEA ; jump table	for switch statement
		dd offset loc_485EBA, offset loc_485E6C, offset	loc_48612A
		dd offset loc_485D6E, offset loc_4860A4, offset	loc_4860F6
		dd offset loc_485D20, offset loc_485AD9, offset	loc_48585B
		dd offset loc_48582E, offset loc_4856D8, offset	loc_4857EA
		dd offset loc_4857DA
; ---------------------------------------------------------------------------

loc_4857DA:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		dec	dword ptr [ebx+0Ch] ; jumptable	00485708 case 0
		xor	edx, edx
		mov	[ebx+42Eh], edx
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4857EA:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	ecx, [ebx+0Ch]	; jumptable 00485708 cases 10,13
		cmp	ecx, [ebx+8]
		jnb	short loc_485813
		cmp	esi, 0Ah
		jnz	short loc_485801
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 0Dh
		jz	short loc_485810

loc_485801:				; CODE XREF: .text:004857F5j
		cmp	esi, 0Dh
		jnz	short loc_485813
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 0Ah
		jnz	short loc_485813

loc_485810:				; CODE XREF: .text:004857FFj
		inc	dword ptr [ebx+0Ch]

loc_485813:				; CODE XREF: .text:004857F0j
					; .text:00485804j ...
		inc	dword ptr [ebx+14h]
		test	byte ptr [ebx],	10h
		jnz	loc_4856D8	; jumptable 00485708 cases 9,12,32
		mov	dword ptr [ebx+42Eh], 1
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_48582E:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	eax, [ebx+0Ch]	; jumptable 00485708 case 33
		cmp	eax, [ebx+8]
		jnb	short loc_485849
		cmp	word ptr [edi+eax*2], 3Dh
		jnz	short loc_485849
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3D21h
		jmp	short loc_48584C
; ---------------------------------------------------------------------------

loc_485849:				; CODE XREF: .text:00485834j
					; .text:0048583Bj
		mov	[ebx+18h], esi

loc_48584C:				; CODE XREF: .text:00485847j
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_48585B:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		test	byte ptr [ebx+1], 8 ; jumptable	00485708 case 34
		jz	short loc_485873
		mov	[ebx+18h], esi
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485873:				; CODE XREF: .text:0048585Fj
		xor	edx, edx
		mov	[ebx+22Ah], edx

loc_48587B:				; CODE XREF: .text:00485AC5j
		mov	ecx, [ebx+0Ch]
		cmp	ecx, [ebx+8]
		jb	short loc_4858A3
		push	offset aUnterminatedSt ; "Unterminated string"
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_485ACA
; ---------------------------------------------------------------------------

loc_4858A3:				; CODE XREF: .text:00485881j
		mov	edx, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	esi, word ptr [edi+edx*2]
		cmp	esi, 22h
		jnz	short loc_4858E2
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_4858C6
		cmp	word ptr [edi+eax*2], 22h
		jnz	short loc_4858C6
		inc	dword ptr [ebx+0Ch]
		jmp	short loc_4858E2
; ---------------------------------------------------------------------------

loc_4858C6:				; CODE XREF: .text:004858B8j
					; .text:004858BFj
		mov	edx, [ebx+22Ah]
		mov	word ptr [ebx+edx*2+2Ah], 0
		mov	dword ptr [ebx+42Eh], 3
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4858E2:				; CODE XREF: .text:004858B0j
					; .text:004858C4j
		cmp	dword ptr [ebx+22Ah], 0FFh
		jl	short loc_48590E
		push	offset aStringIsTooLon ; "String is too	long"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_485ACA
; ---------------------------------------------------------------------------

loc_48590E:				; CODE XREF: .text:004858ECj
		test	esi, esi
		jz	short loc_48591C
		cmp	esi, 0Ah
		jz	short loc_48591C
		cmp	esi, 0Dh
		jnz	short loc_48593C

loc_48591C:				; CODE XREF: .text:00485910j
					; .text:00485915j
		push	offset aUnterminatedSt ; "Unterminated string"
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_485ACA
; ---------------------------------------------------------------------------

loc_48593C:				; CODE XREF: .text:0048591Aj
		cmp	esi, 5Ch
		jnz	loc_485AB4
		test	byte ptr [ebx],	20h
		jnz	loc_485AB4
		mov	edx, [ebx+0Ch]
		cmp	edx, [ebx+8]
		jb	short loc_485976
		push	offset aUnterminatedSt ; "Unterminated string"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_485ACA
; ---------------------------------------------------------------------------

loc_485976:				; CODE XREF: .text:00485954j
		mov	eax, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	esi, word ptr [edi+eax*2]
		test	esi, esi
		jz	short loc_48598E
		cmp	esi, 0Ah
		jz	short loc_48598E
		cmp	esi, 0Dh
		jnz	short loc_4859AE

loc_48598E:				; CODE XREF: .text:00485982j
					; .text:00485987j
		push	offset aUnterminatedSt ; "Unterminated string"
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_485ACA
; ---------------------------------------------------------------------------

loc_4859AE:				; CODE XREF: .text:0048598Cj
		cmp	esi, 6Eh
		jnz	short loc_4859BD
		mov	esi, 0Ah
		jmp	loc_485AB4
; ---------------------------------------------------------------------------

loc_4859BD:				; CODE XREF: .text:004859B1j
		cmp	esi, 72h
		jnz	short loc_4859CC
		mov	esi, 0Dh
		jmp	loc_485AB4
; ---------------------------------------------------------------------------

loc_4859CC:				; CODE XREF: .text:004859C0j
		cmp	esi, 74h
		jnz	short loc_4859DB
		mov	esi, 9
		jmp	loc_485AB4
; ---------------------------------------------------------------------------

loc_4859DB:				; CODE XREF: .text:004859CFj
		cmp	esi, 78h
		jz	short loc_4859E9
		cmp	esi, 58h
		jnz	loc_485A7F

loc_4859E9:				; CODE XREF: .text:004859DEj
		mov	eax, [ebx+0Ch]
		mov	edx, eax
		inc	edx
		cmp	edx, [ebx+8]
		jnb	short loc_485A16
		movzx	ecx, word ptr [edi+eax*2]
		push	ecx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_485A16
		mov	eax, [ebx+0Ch]
		movzx	edx, word ptr [edi+eax*2+2]
		push	edx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_485A36

loc_485A16:				; CODE XREF: .text:004859F2j
					; .text:00485A01j
		push	offset aHexEscapeMustH ; "Hex escape must have two digits"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_485ACA
; ---------------------------------------------------------------------------

loc_485A36:				; CODE XREF: .text:00485A14j
		mov	eax, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	esi, word ptr [edi+eax*2]
		push	esi		; ch
		call	__ltoupper
		pop	ecx
		cmp	eax, 39h
		jg	short loc_485A51
		lea	esi, [eax-39h]
		jmp	short loc_485A54
; ---------------------------------------------------------------------------

loc_485A51:				; CODE XREF: .text:00485A4Aj
		lea	esi, [eax-37h]

loc_485A54:				; CODE XREF: .text:00485A4Fj
		shl	esi, 4
		mov	eax, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	edx, word ptr [edi+eax*2]
		mov	[ebp-3Ch], edx
		mov	ecx, [ebp-3Ch]
		push	ecx		; ch
		call	__ltoupper
		pop	ecx
		cmp	eax, 39h
		jg	short loc_485A78
		lea	edx, [eax-39h]
		jmp	short loc_485A7B
; ---------------------------------------------------------------------------

loc_485A78:				; CODE XREF: .text:00485A71j
		lea	edx, [eax-37h]

loc_485A7B:				; CODE XREF: .text:00485A76j
		add	esi, edx
		jmp	short loc_485AB4
; ---------------------------------------------------------------------------

loc_485A7F:				; CODE XREF: .text:004859E3j
		cmp	esi, 5Ch
		jnz	short loc_485A8B
		mov	esi, 5Ch
		jmp	short loc_485AB4
; ---------------------------------------------------------------------------

loc_485A8B:				; CODE XREF: .text:00485A82j
		cmp	esi, 22h
		jnz	short loc_485A97
		mov	esi, 22h
		jmp	short loc_485AB4
; ---------------------------------------------------------------------------

loc_485A97:				; CODE XREF: .text:00485A8Ej
		push	offset aUnsupportedEsc ; "Unsupported escape sequence"
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_485ACA
; ---------------------------------------------------------------------------

loc_485AB4:				; CODE XREF: .text:0048593Fj
					; .text:00485948j ...
		mov	edx, [ebx+22Ah]
		inc	dword ptr [ebx+22Ah]
		mov	[ebx+edx*2+2Ah], si
		jmp	loc_48587B
; ---------------------------------------------------------------------------

loc_485ACA:				; CODE XREF: .text:0048589Ej
					; .text:00485909j ...
		mov	dword ptr [ebx+42Eh], 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485AD9:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	ecx, [ebx+0Ch]	; jumptable 00485708 case 39
		cmp	ecx, [ebx+8]
		jb	short loc_485B0B
		push	offset aUnterminatedCh ; "Unterminated character constant"
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485B0B:				; CODE XREF: .text:00485ADFj
		mov	edx, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	esi, word ptr [edi+edx*2]
		test	esi, 0FF00h
		jz	short loc_485B47
		push	offset aUnicodeChara_3 ; "UNICODE character constants are not all"...
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485B47:				; CODE XREF: .text:00485B1Bj
		cmp	esi, 5Ch
		jnz	loc_485CB9
		test	byte ptr [ebx],	20h
		jnz	loc_485CB9
		mov	edx, [ebx+0Ch]
		cmp	edx, [ebx+8]
		jb	short loc_485B8B
		push	offset aUnterminatedCh ; "Unterminated character constant"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485B8B:				; CODE XREF: .text:00485B5Fj
		mov	eax, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	esi, word ptr [edi+eax*2]
		test	esi, esi
		jz	short loc_485BA3
		cmp	esi, 0Ah
		jz	short loc_485BA3
		cmp	esi, 0Dh
		jnz	short loc_485BCD

loc_485BA3:				; CODE XREF: .text:00485B97j
					; .text:00485B9Cj
		push	offset aUnterminatedCh ; "Unterminated character constant"
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485BCD:				; CODE XREF: .text:00485BA1j
		cmp	esi, 6Eh
		jnz	short loc_485BDC
		mov	esi, 0Ah
		jmp	loc_485CB9
; ---------------------------------------------------------------------------

loc_485BDC:				; CODE XREF: .text:00485BD0j
		cmp	esi, 72h
		jnz	short loc_485BEB
		mov	esi, 0Dh
		jmp	loc_485CB9
; ---------------------------------------------------------------------------

loc_485BEB:				; CODE XREF: .text:00485BDFj
		cmp	esi, 74h
		jnz	short loc_485BFA
		mov	esi, 9
		jmp	loc_485CB9
; ---------------------------------------------------------------------------

loc_485BFA:				; CODE XREF: .text:00485BEEj
		cmp	esi, 30h
		jnz	short loc_485C06
		xor	esi, esi
		jmp	loc_485CB9
; ---------------------------------------------------------------------------

loc_485C06:				; CODE XREF: .text:00485BFDj
		cmp	esi, 78h
		jz	short loc_485C14
		cmp	esi, 58h
		jnz	loc_485CB9

loc_485C14:				; CODE XREF: .text:00485C09j
		mov	eax, [ebx+0Ch]
		inc	eax
		cmp	eax, [ebx+8]
		jnb	short loc_485C42
		mov	edx, [ebx+0Ch]
		movzx	ecx, word ptr [edi+edx*2]
		push	ecx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_485C42
		mov	eax, [ebx+0Ch]
		movzx	edx, word ptr [edi+eax*2+2]
		push	edx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_485C6C

loc_485C42:				; CODE XREF: .text:00485C1Bj
					; .text:00485C2Dj
		push	offset aHexEscapeMustH ; "Hex escape must have two digits"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485C6C:				; CODE XREF: .text:00485C40j
		mov	eax, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	edx, word ptr [edi+eax*2]
		mov	[ebp-40h], edx
		mov	ecx, [ebp-40h]
		push	ecx		; ch
		call	__ltoupper
		pop	ecx
		cmp	eax, 39h
		jg	short loc_485C8D
		lea	esi, [eax-39h]
		jmp	short loc_485C90
; ---------------------------------------------------------------------------

loc_485C8D:				; CODE XREF: .text:00485C86j
		lea	esi, [eax-37h]

loc_485C90:				; CODE XREF: .text:00485C8Bj
		shl	esi, 4
		mov	eax, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	edx, word ptr [edi+eax*2]
		mov	[ebp-44h], edx
		mov	ecx, [ebp-44h]
		push	ecx		; ch
		call	__ltoupper
		pop	ecx
		cmp	eax, 39h
		jg	short loc_485CB4
		lea	edx, [eax-39h]
		jmp	short loc_485CB7
; ---------------------------------------------------------------------------

loc_485CB4:				; CODE XREF: .text:00485CADj
		lea	edx, [eax-37h]

loc_485CB7:				; CODE XREF: .text:00485CB2j
		add	esi, edx

loc_485CB9:				; CODE XREF: .text:00485B4Aj
					; .text:00485B53j ...
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_485CC8
		cmp	word ptr [edi+eax*2], 27h
		jz	short loc_485CF2

loc_485CC8:				; CODE XREF: .text:00485CBFj
		push	offset aUnterminatedCh ; "Unterminated character constant"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485CF2:				; CODE XREF: .text:00485CC6j
		inc	dword ptr [ebx+0Ch]
		mov	[ebx+18h], esi
		mov	dword ptr [ebx+1Ch], 0FFFFFFFFh
		mov	dword ptr [ebx+42Eh], 4
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485D0E:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	[ebx+18h], esi	; jumptable 00485708 cases 37,40,41,44,59,63,91-94,96,123,125,126
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485D20:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	eax, [ebx+0Ch]	; jumptable 00485708 case 42
		cmp	eax, [ebx+8]
		jnb	short loc_485D5C
		cmp	word ptr [edi+eax*2], 2Fh
		jnz	short loc_485D5C
		inc	dword ptr [ebx+0Ch]
		push	offset aEndOfCommentOu ; "End of comment outside the comment"
		call	_T
		pop	ecx
		push	eax		; src
		lea	edx, [ebx+22Eh]
		push	edx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485D5C:				; CODE XREF: .text:00485D26j
					; .text:00485D2Dj
		mov	[ebx+18h], esi
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485D6E:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	ecx, [ebx+0Ch]	; jumptable 00485708 case 47
		cmp	ecx, [ebx+8]
		jnb	short loc_485DB6
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 2Fh
		jnz	short loc_485DB6
		inc	dword ptr [ebx+0Ch]
		jmp	short loc_485D88
; ---------------------------------------------------------------------------

loc_485D85:				; CODE XREF: .text:00485DAFj
		inc	dword ptr [ebx+0Ch]

loc_485D88:				; CODE XREF: .text:00485D83j
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	loc_4856D8	; jumptable 00485708 cases 9,12,32
		cmp	word ptr [edi+eax*2], 0
		jz	loc_4856D8	; jumptable 00485708 cases 9,12,32
		cmp	word ptr [edi+eax*2], 0Ah
		jz	loc_4856D8	; jumptable 00485708 cases 9,12,32
		cmp	word ptr [edi+eax*2], 0Dh
		jnz	short loc_485D85
		jmp	loc_4856D8	; jumptable 00485708 cases 9,12,32
; ---------------------------------------------------------------------------

loc_485DB6:				; CODE XREF: .text:00485D74j
					; .text:00485D7Ej
		mov	edx, [ebx+0Ch]
		cmp	edx, [ebx+8]
		jnb	loc_485E5A
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 2Ah
		jnz	loc_485E5A
		inc	dword ptr [ebx+0Ch]

loc_485DD3:				; CODE XREF: .text:00485E2Cj
					; .text:00485E50j ...
		mov	eax, [ebx+0Ch]
		mov	edx, eax
		inc	edx
		cmp	edx, [ebx+8]
		jnb	short loc_485DF6
		cmp	word ptr [edi+eax*2], 2Ah
		jnz	short loc_485DF6
		cmp	word ptr [edi+eax*2+2],	2Fh
		jnz	short loc_485DF6
		add	dword ptr [ebx+0Ch], 2
		jmp	loc_4856D8	; jumptable 00485708 cases 9,12,32
; ---------------------------------------------------------------------------

loc_485DF6:				; CODE XREF: .text:00485DDCj
					; .text:00485DE3j ...
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	loc_4856D8	; jumptable 00485708 cases 9,12,32
		cmp	word ptr [edi+eax*2], 0
		jz	loc_4856D8	; jumptable 00485708 cases 9,12,32
		cmp	word ptr [edi+eax*2], 0Ah
		jnz	short loc_485E2E
		inc	dword ptr [ebx+0Ch]
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_485E29
		cmp	word ptr [edi+eax*2], 0Dh
		jnz	short loc_485E29
		inc	dword ptr [ebx+0Ch]

loc_485E29:				; CODE XREF: .text:00485E1Dj
					; .text:00485E24j
		inc	dword ptr [ebx+14h]
		jmp	short loc_485DD3
; ---------------------------------------------------------------------------

loc_485E2E:				; CODE XREF: .text:00485E12j
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 0Dh
		jnz	short loc_485E52
		inc	dword ptr [ebx+0Ch]
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_485E4D
		cmp	word ptr [edi+eax*2], 0Ah
		jnz	short loc_485E4D
		inc	dword ptr [ebx+0Ch]

loc_485E4D:				; CODE XREF: .text:00485E41j
					; .text:00485E48j
		inc	dword ptr [ebx+14h]
		jmp	short loc_485DD3
; ---------------------------------------------------------------------------

loc_485E52:				; CODE XREF: .text:00485E36j
		inc	dword ptr [ebx+0Ch]
		jmp	loc_485DD3
; ---------------------------------------------------------------------------

loc_485E5A:				; CODE XREF: .text:00485DBCj
					; .text:00485DCAj
		mov	[ebx+18h], esi
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485E6C:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	edx, [ebx+0Ch]	; jumptable 00485708 case 58
		cmp	edx, [ebx+8]
		jnb	short loc_485E8A
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 3Dh
		jnz	short loc_485E8A
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3D3Ah
		jmp	short loc_485EAB
; ---------------------------------------------------------------------------

loc_485E8A:				; CODE XREF: .text:00485E72j
					; .text:00485E7Cj
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_485EA8
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 3Ah
		jnz	short loc_485EA8
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3A3Ah
		jmp	short loc_485EAB
; ---------------------------------------------------------------------------

loc_485EA8:				; CODE XREF: .text:00485E90j
					; .text:00485E9Aj
		mov	[ebx+18h], esi

loc_485EAB:				; CODE XREF: .text:00485E88j
					; .text:00485EA6j
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485EBA:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		test	byte ptr [ebx+1], 8 ; jumptable	00485708 case 60
		jz	loc_485F98
		xor	ecx, ecx
		mov	[ebx+22Ah], ecx

loc_485ECC:				; CODE XREF: .text:00485F84j
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jb	short loc_485EF4
		push	offset aUnterminatedSt ; "Unterminated string"
		call	_T
		pop	ecx
		push	eax		; src
		lea	edx, [ebx+22Eh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_485F89
; ---------------------------------------------------------------------------

loc_485EF4:				; CODE XREF: .text:00485ED2j
		mov	ecx, [ebx+0Ch]
		inc	dword ptr [ebx+0Ch]
		movzx	esi, word ptr [edi+ecx*2]
		cmp	esi, 3Eh
		jnz	short loc_485F1F
		mov	eax, [ebx+22Ah]
		mov	word ptr [ebx+eax*2+2Ah], 0
		mov	dword ptr [ebx+42Eh], 3
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485F1F:				; CODE XREF: .text:00485F01j
		cmp	dword ptr [ebx+22Ah], 0FFh
		jl	short loc_485F48
		push	offset aStringIsTooLon ; "String is too	long"
		call	_T
		pop	ecx
		push	eax		; src
		lea	edx, [ebx+22Eh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_485F89
; ---------------------------------------------------------------------------

loc_485F48:				; CODE XREF: .text:00485F29j
		test	esi, esi
		jz	short loc_485F56
		cmp	esi, 0Ah
		jz	short loc_485F56
		cmp	esi, 0Dh
		jnz	short loc_485F73

loc_485F56:				; CODE XREF: .text:00485F4Aj
					; .text:00485F4Fj
		push	offset aUnterminatedSt ; "Unterminated string"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_485F89
; ---------------------------------------------------------------------------

loc_485F73:				; CODE XREF: .text:00485F54j
		mov	eax, [ebx+22Ah]
		inc	dword ptr [ebx+22Ah]
		mov	[ebx+eax*2+2Ah], si
		jmp	loc_485ECC
; ---------------------------------------------------------------------------

loc_485F89:				; CODE XREF: .text:00485EEFj
					; .text:00485F46j ...
		mov	dword ptr [ebx+42Eh], 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485F98:				; CODE XREF: .text:00485EBEj
		mov	edx, [ebx+0Ch]
		cmp	edx, [ebx+8]
		jnb	short loc_485FB6
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 3Dh
		jnz	short loc_485FB6
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3D3Ch
		jmp	short loc_485FDB
; ---------------------------------------------------------------------------

loc_485FB6:				; CODE XREF: .text:00485F9Ej
					; .text:00485FA8j
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_485FD4
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 3Ch
		jnz	short loc_485FD4
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3C3Ch
		jmp	short loc_485FDB
; ---------------------------------------------------------------------------

loc_485FD4:				; CODE XREF: .text:00485FBCj
					; .text:00485FC6j
		mov	dword ptr [ebx+18h], 3Ch

loc_485FDB:				; CODE XREF: .text:00485FB4j
					; .text:00485FD2j
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_485FEA:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	ecx, [ebx+0Ch]	; jumptable 00485708 case 61
		cmp	ecx, [ebx+8]
		jnb	short loc_486008
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 3Dh
		jnz	short loc_486008
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3D3Dh
		jmp	short loc_48600F
; ---------------------------------------------------------------------------

loc_486008:				; CODE XREF: .text:00485FF0j
					; .text:00485FFAj
		mov	dword ptr [ebx+18h], 3Dh

loc_48600F:				; CODE XREF: .text:00486006j
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_48601E:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	edx, [ebx+0Ch]	; jumptable 00485708 case 62
		cmp	edx, [ebx+8]
		jnb	short loc_48603C
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 3Dh
		jnz	short loc_48603C
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3D3Eh
		jmp	short loc_486061
; ---------------------------------------------------------------------------

loc_48603C:				; CODE XREF: .text:00486024j
					; .text:0048602Ej
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_48605A
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 3Eh
		jnz	short loc_48605A
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3E3Eh
		jmp	short loc_486061
; ---------------------------------------------------------------------------

loc_48605A:				; CODE XREF: .text:00486042j
					; .text:0048604Cj
		mov	dword ptr [ebx+18h], 3Eh

loc_486061:				; CODE XREF: .text:0048603Aj
					; .text:00486058j
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_486070:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	ecx, [ebx+0Ch]	; jumptable 00485708 case 124
		cmp	ecx, [ebx+8]
		jnb	short loc_48608E
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 7Ch
		jnz	short loc_48608E
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 7C7Ch
		jmp	short loc_486095
; ---------------------------------------------------------------------------

loc_48608E:				; CODE XREF: .text:00486076j
					; .text:00486080j
		mov	dword ptr [ebx+18h], 7Ch

loc_486095:				; CODE XREF: .text:0048608Cj
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4860A4:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	edx, [ebx+0Ch]	; jumptable 00485708 case 45
		cmp	edx, [ebx+8]
		jnb	short loc_4860C2
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 2Dh
		jnz	short loc_4860C2
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 2D2Dh
		jmp	short loc_4860E7
; ---------------------------------------------------------------------------

loc_4860C2:				; CODE XREF: .text:004860AAj
					; .text:004860B4j
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_4860E0
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 3Eh
		jnz	short loc_4860E0
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 3E2Dh
		jmp	short loc_4860E7
; ---------------------------------------------------------------------------

loc_4860E0:				; CODE XREF: .text:004860C8j
					; .text:004860D2j
		mov	dword ptr [ebx+18h], 2Dh

loc_4860E7:				; CODE XREF: .text:004860C0j
					; .text:004860DEj
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4860F6:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		mov	ecx, [ebx+0Ch]	; jumptable 00485708 case 43
		cmp	ecx, [ebx+8]
		jnb	short loc_486114
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 2Bh
		jnz	short loc_486114
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 2B2Bh
		jmp	short loc_48611B
; ---------------------------------------------------------------------------

loc_486114:				; CODE XREF: .text:004860FCj
					; .text:00486106j
		mov	dword ptr [ebx+18h], 2Bh

loc_48611B:				; CODE XREF: .text:00486112j
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_48612A:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		cmp	esi, 2Eh	; jumptable 00485708 cases 46,48-57
		jnz	loc_4861D2
		mov	edx, [ebx+0Ch]
		inc	edx
		cmp	edx, [ebx+8]
		jnb	short loc_48616B
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 2Eh
		jnz	short loc_48616B
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2+2],	2Eh
		jnz	short loc_48616B
		add	dword ptr [ebx+0Ch], 2
		mov	dword ptr [ebx+18h], 2E2E2Eh
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_48616B:				; CODE XREF: .text:0048613Aj
					; .text:00486144j ...
		mov	edx, [ebx+0Ch]
		cmp	edx, [ebx+8]
		jnb	short loc_48618B
		test	byte ptr [ebx+1], 2
		jnz	short loc_48618B
		mov	ecx, [ebx+0Ch]
		movzx	eax, word ptr [edi+ecx*2]
		push	eax		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4861A1

loc_48618B:				; CODE XREF: .text:00486171j
					; .text:00486177j
		mov	dword ptr [ebx+18h], 2Eh
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4861A1:				; CODE XREF: .text:00486189j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-1Ch], edx
		mov	[ebp-2Ch], ecx
		mov	[ebp-28h], ecx
		xor	eax, eax
		mov	[ebp-24h], cx
		mov	[ebp-8], eax
		mov	[ebp-4], eax
		xor	edx, edx
		mov	dword ptr [ebp-0Ch], 1
		mov	[ebp-10h], edx
		mov	dword ptr [ebp-14h], 1
		jmp	loc_486258
; ---------------------------------------------------------------------------

loc_4861D2:				; CODE XREF: .text:0048612Dj
		cmp	esi, 30h
		jnz	short loc_486236
		mov	ecx, [ebx+0Ch]
		cmp	ecx, [ebx+8]
		jnb	short loc_48620B
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 78h
		jz	short loc_4861F3
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 58h
		jnz	short loc_48620B

loc_4861F3:				; CODE XREF: .text:004861E7j
		xor	ecx, ecx
		mov	eax, 1
		mov	[ebp-0Ch], ecx
		mov	[ebp-4], ecx
		mov	[ebp-10h], eax
		mov	[ebp-8], eax
		inc	dword ptr [ebx+0Ch]
		jmp	short loc_48621E
; ---------------------------------------------------------------------------

loc_48620B:				; CODE XREF: .text:004861DDj
					; .text:004861F1j
		mov	edx, 1
		xor	eax, eax
		mov	[ebp-0Ch], edx
		mov	[ebp-8], edx
		mov	[ebp-4], edx
		mov	[ebp-10h], eax

loc_48621E:				; CODE XREF: .text:00486209j
		xor	ecx, ecx
		mov	[ebp-1Ch], ecx
		xor	eax, eax
		mov	[ebp-2Ch], eax
		mov	[ebp-28h], eax
		mov	[ebp-24h], ax
		xor	edx, edx
		mov	[ebp-14h], edx
		jmp	short loc_486258
; ---------------------------------------------------------------------------

loc_486236:				; CODE XREF: .text:004861D5j
		add	esi, 0FFFFFFD0h
		mov	eax, 1
		mov	[ebp-1Ch], esi
		xor	edx, edx
		fild	dword ptr [ebp-1Ch]
		fstp	tbyte ptr [ebp-2Ch]
		mov	[ebp-0Ch], eax
		mov	[ebp-8], eax
		mov	[ebp-4], eax
		mov	[ebp-14h], edx
		mov	[ebp-10h], edx

loc_486258:				; CODE XREF: .text:004861CDj
					; .text:00486234j
		mov	dword ptr [ebp-20h], 0FFFFFFFFh
		cmp	dword ptr [ebp-14h], 0
		jnz	loc_48639A
		jmp	loc_48633D
; ---------------------------------------------------------------------------

loc_48626E:				; CODE XREF: .text:00486343j
		movzx	esi, word ptr [edi+eax*2]
		cmp	esi, 3Fh
		jnz	short loc_4862AB
		test	byte ptr [ebx+1], 10h
		jz	loc_486349
		xor	eax, eax
		mov	[ebp-0Ch], eax
		mov	[ebp-4], eax
		test	byte ptr [ebp-19h], 0F0h
		jz	short loc_486296
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_48629A
; ---------------------------------------------------------------------------

loc_486296:				; CODE XREF: .text:0048628Dj
		shl	dword ptr [ebp-1Ch], 4

loc_48629A:				; CODE XREF: .text:00486294j
		mov	ecx, [ebp-20h]
		shl	ecx, 4
		and	ecx, 0FFFFFFF0h
		mov	[ebp-20h], ecx
		jmp	loc_48633A
; ---------------------------------------------------------------------------

loc_4862AB:				; CODE XREF: .text:00486275j
		push	esi		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jz	loc_486349
		push	esi		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jz	short loc_4862D5
		fld	tbyte ptr [ebp-2Ch]
		fld	ds:tbyte_4867C4
		fcompp
		fnstsw	ax
		sahf
		jnb	short loc_4862DF

loc_4862D5:				; CODE XREF: .text:004862C3j
		xor	edx, edx
		mov	[ebp-0Ch], edx
		mov	[ebp-4], edx
		jmp	short loc_4862F6
; ---------------------------------------------------------------------------

loc_4862DF:				; CODE XREF: .text:004862D3j
		fld	tbyte ptr [ebp-2Ch]
		fmul	ds:flt_4867D0
		lea	eax, [esi-30h]
		mov	[ebp-4Ch], eax
		fild	dword ptr [ebp-4Ch]
		faddp	st(1), st
		fstp	tbyte ptr [ebp-2Ch]

loc_4862F6:				; CODE XREF: .text:004862DDj
		test	byte ptr [ebp-19h], 0F0h
		jnz	short loc_486302
		test	byte ptr [ebp-1Dh], 0F0h
		jnz	short loc_486309

loc_486302:				; CODE XREF: .text:004862FAj
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_48633A
; ---------------------------------------------------------------------------

loc_486309:				; CODE XREF: .text:00486300j
		cmp	esi, 39h
		jg	short loc_486313
		lea	eax, [esi-30h]
		jmp	short loc_486323
; ---------------------------------------------------------------------------

loc_486313:				; CODE XREF: .text:0048630Cj
		mov	[ebp-48h], esi
		mov	edx, [ebp-48h]
		push	edx		; ch
		call	__ltoupper
		pop	ecx
		add	eax, 0FFFFFFC9h

loc_486323:				; CODE XREF: .text:00486311j
		mov	ecx, [ebp-1Ch]
		shl	ecx, 4
		add	eax, ecx
		mov	[ebp-1Ch], eax
		mov	eax, [ebp-20h]
		shl	eax, 4
		or	eax, 0Fh
		mov	[ebp-20h], eax

loc_48633A:				; CODE XREF: .text:004862A6j
					; .text:00486307j
		inc	dword ptr [ebx+0Ch]

loc_48633D:				; CODE XREF: .text:00486269j
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jb	loc_48626E

loc_486349:				; CODE XREF: .text:0048627Bj
					; .text:004862B4j
		mov	edx, [ebx+0Ch]
		cmp	edx, [ebx+8]
		jnb	short loc_48639A
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 2Eh
		jnz	short loc_48639A
		cmp	dword ptr [ebp-20h], 0FFFFFFFFh
		jz	short loc_48638B
		push	offset aMaskedDecimalN ; src
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_48638B:				; CODE XREF: .text:0048635Fj
		xor	edx, edx
		mov	[ebp-8], edx
		mov	dword ptr [ebp-14h], 1
		inc	dword ptr [ebx+0Ch]

loc_48639A:				; CODE XREF: .text:00486263j
					; .text:0048634Fj ...
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_486564
		cmp	dword ptr [ebp-14h], 1
		jnz	loc_486564
		xor	ecx, ecx
		mov	[ebp-38h], ecx
		mov	dword ptr [ebp-34h], 80000000h
		mov	word ptr [ebp-30h], 3FFFh
		jmp	short loc_4863F8
; ---------------------------------------------------------------------------

loc_4863C2:				; CODE XREF: .text:0048640Dj
		xor	eax, eax
		mov	[ebp-4], eax
		mov	[ebp-8], eax
		fld	ds:tbyte_4867D4
		fld	tbyte ptr [ebp-38h]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-38h]
		mov	edx, [ebx+0Ch]
		movzx	ecx, word ptr [edi+edx*2]
		add	ecx, 0FFFFFFD0h
		mov	[ebp-4Ch], ecx
		fild	dword ptr [ebp-4Ch]
		fld	tbyte ptr [ebp-38h]
		fmulp	st(1), st
		fld	tbyte ptr [ebp-2Ch]
		faddp	st(1), st
		fstp	tbyte ptr [ebp-2Ch]
		inc	dword ptr [ebx+0Ch]

loc_4863F8:				; CODE XREF: .text:004863C0j
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_48640F
		movzx	edx, word ptr [edi+eax*2]
		push	edx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4863C2

loc_48640F:				; CODE XREF: .text:004863FEj
		mov	ecx, [ebx+0Ch]
		cmp	ecx, [ebx+8]
		jnb	loc_486564
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 65h
		jz	short loc_486433
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 45h
		jnz	loc_486564

loc_486433:				; CODE XREF: .text:00486423j
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx
		inc	dword ptr [ebx+0Ch]
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jb	short loc_486470
		push	offset aInvalidFloat_0 ; "Invalid floating-point exponent"
		call	_T
		pop	ecx
		push	eax		; src
		lea	edx, [ebx+22Eh]
		push	edx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_486470:				; CODE XREF: .text:00486444j
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 2Bh
		jnz	short loc_486486
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebp-18h], 1
		jmp	short loc_4864A3
; ---------------------------------------------------------------------------

loc_486486:				; CODE XREF: .text:00486478j
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 2Dh
		jnz	short loc_48649C
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebp-18h], 0FFFFFFFFh
		jmp	short loc_4864A3
; ---------------------------------------------------------------------------

loc_48649C:				; CODE XREF: .text:0048648Ej
		mov	dword ptr [ebp-18h], 1

loc_4864A3:				; CODE XREF: .text:00486484j
					; .text:0048649Aj
		mov	ecx, [ebx+0Ch]
		cmp	ecx, [ebx+8]
		jnb	short loc_4864BD
		mov	eax, [ebx+0Ch]
		movzx	edx, word ptr [edi+eax*2]
		push	edx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4864E7

loc_4864BD:				; CODE XREF: .text:004864A9j
		push	offset aInvalidFloat_0 ; "Invalid floating-point exponent"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4864E7:				; CODE XREF: .text:004864BBj
		xor	esi, esi
		jmp	short loc_486535
; ---------------------------------------------------------------------------

loc_4864EB:				; CODE XREF: .text:00486545j
		mov	eax, [ebx+0Ch]
		mov	ecx, esi
		add	ecx, ecx
		movzx	edx, word ptr [edi+eax*2]
		lea	ecx, [ecx+ecx*4]
		add	edx, ecx
		inc	dword ptr [ebx+0Ch]
		add	edx, 0FFFFFFD0h
		mov	esi, edx
		cmp	esi, 1388h
		jle	short loc_486535
		push	offset aInvalidFloat_0 ; "Invalid floating-point exponent"
		call	_T
		pop	ecx
		push	eax		; src
		lea	eax, [ebx+22Eh]
		push	eax		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_486535:				; CODE XREF: .text:004864E9j
					; .text:00486509j
		mov	edx, [ebx+0Ch]
		movzx	ecx, word ptr [edi+edx*2]
		push	ecx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4864EB
		call	loc_41100B
		imul	esi, [ebp-18h]
		push	esi		; p
		call	_pow10
		fld	tbyte ptr [ebp-2Ch]
		fmulp	st(1), st
		pop	ecx
		fstp	tbyte ptr [ebp-2Ch]
		call	loc_411014

loc_486564:				; CODE XREF: .text:0048639Ej
					; .text:004863A8j ...
		test	byte ptr [ebx+1], 4
		jz	short loc_486575
		cmp	dword ptr [ebp-4], 0
		jz	short loc_486575
		xor	eax, eax
		mov	[ebp-8], eax

loc_486575:				; CODE XREF: .text:00486568j
					; .text:0048656Ej
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4865E5
		mov	edx, [ebx+0Ch]
		cmp	edx, [ebx+8]
		jnb	short loc_4865CA
		mov	ecx, [ebx+0Ch]
		cmp	word ptr [edi+ecx*2], 68h
		jz	short loc_486597
		mov	eax, [ebx+0Ch]
		cmp	word ptr [edi+eax*2], 48h
		jnz	short loc_4865CA

loc_486597:				; CODE XREF: .text:0048658Bj
		inc	dword ptr [ebx+0Ch]
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4865CA
		push	offset aPrefix0xAndSuf ; "Prefix 0x and	suffix h are mutually exc"...
		call	_T
		pop	ecx
		push	eax		; src
		lea	edx, [ebx+22Eh]
		push	edx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4865CA:				; CODE XREF: .text:00486581j
					; .text:00486595j ...
		mov	ecx, [ebp-1Ch]
		mov	[ebx+18h], ecx
		mov	eax, [ebp-20h]
		mov	[ebx+1Ch], eax
		mov	dword ptr [ebx+42Eh], 4
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4865E5:				; CODE XREF: .text:00486579j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_486622
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_486622
		fld	tbyte ptr [ebp-2Ch]
		fld	ds:tbyte_4867E0
		fcompp
		fnstsw	ax
		sahf
		jb	short loc_486622
		fld	tbyte ptr [ebp-2Ch]
		call	@_ftol$qv	; _ftol(void)
		mov	[ebx+18h], eax
		mov	dword ptr [ebx+1Ch], 0FFFFFFFFh
		mov	dword ptr [ebx+42Eh], 4
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_486622:				; CODE XREF: .text:004865E9j
					; .text:004865EFj ...
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_486651
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_486651
		mov	edx, [ebp-2Ch]
		mov	[ebx+20h], edx
		mov	edx, [ebp-28h]
		mov	[ebx+24h], edx
		mov	dx, [ebp-24h]
		mov	[ebx+28h], dx
		mov	dword ptr [ebx+42Eh], 5
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_486651:				; CODE XREF: .text:00486626j
					; .text:0048662Cj
		push	offset aInvalidOrOutOf ; "Invalid or out-of-range number"
		call	_T
		pop	ecx
		push	eax		; src
		lea	ecx, [ebx+22Eh]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+42Eh], 8
		add	esp, 8
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_48667B:				; CODE XREF: .text:00485708j
					; DATA XREF: .text:off_48578Eo
		cmp	esi, 5Fh	; jumptable 00485708 cases 35,36,38,64-90,95,97-122
		jnz	short loc_486697
		test	byte ptr [ebx],	80h
		jz	short loc_486697
		mov	[ebx+18h], esi
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_486697:				; CODE XREF: .text:0048667Ej
					; .text:00486683j
		cmp	esi, 26h
		jnz	short loc_4866D5
		test	byte ptr [ebx],	40h
		jnz	short loc_4866D5
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_4866BF
		mov	edx, [ebx+0Ch]
		cmp	word ptr [edi+edx*2], 26h
		jnz	short loc_4866BF
		inc	dword ptr [ebx+0Ch]
		mov	dword ptr [ebx+18h], 2626h
		jmp	short loc_4866C6
; ---------------------------------------------------------------------------

loc_4866BF:				; CODE XREF: .text:004866A7j
					; .text:004866B1j
		mov	dword ptr [ebx+18h], 26h

loc_4866C6:				; CODE XREF: .text:004866BDj
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4866D5:				; CODE XREF: .text:0048669Aj
					; .text:0048669Fj
		cmp	esi, 23h
		jnz	short loc_4866F1
		test	byte ptr [ebx],	40h
		jnz	short loc_4866F1
		mov	[ebx+18h], esi
		mov	dword ptr [ebx+42Eh], 6
		jmp	loc_4867BD
; ---------------------------------------------------------------------------

loc_4866F1:				; CODE XREF: .text:004866D8j
					; .text:004866DDj
		mov	[ebx+2Ah], si
		mov	dword ptr [ebx+22Ah], 1
		jmp	short loc_486770
; ---------------------------------------------------------------------------

loc_486701:				; CODE XREF: .text:00486782j
		movzx	esi, word ptr [edi+eax*2]
		cmp	esi, 5Fh
		jnz	short loc_48670F
		test	byte ptr [ebx],	80h
		jnz	short loc_486788

loc_48670F:				; CODE XREF: .text:00486708j
		push	esi		; c
		call	_isalpha
		pop	ecx
		test	eax, eax
		jnz	short loc_48675C
		push	esi		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_48675C
		cmp	esi, 5Fh
		jz	short loc_48675C
		cmp	esi, 40h
		jz	short loc_48675C
		cmp	esi, 23h
		jz	short loc_48675C
		cmp	esi, 24h
		jz	short loc_48675C
		test	byte ptr [ebx],	40h
		jz	short loc_486788
		cmp	esi, 26h
		jz	short loc_48675C
		cmp	esi, 2Eh
		jz	short loc_48675C
		cmp	esi, 21h
		jz	short loc_48675C
		cmp	esi, 3Fh
		jz	short loc_48675C
		cmp	esi, 25h
		jz	short loc_48675C
		cmp	esi, 7Eh
		jnz	short loc_486788

loc_48675C:				; CODE XREF: .text:00486718j
					; .text:00486723j ...
		mov	eax, [ebx+22Ah]
		inc	dword ptr [ebx+22Ah]
		mov	[ebx+eax*2+2Ah], si
		inc	dword ptr [ebx+0Ch]

loc_486770:				; CODE XREF: .text:004866FFj
		mov	eax, [ebx+0Ch]
		cmp	eax, [ebx+8]
		jnb	short loc_486788
		cmp	dword ptr [ebx+22Ah], 0FFh
		jl	loc_486701

loc_486788:				; CODE XREF: .text:0048670Dj
					; .text:0048673Cj ...
		mov	edx, [ebx+22Ah]
		mov	word ptr [ebx+edx*2+2Ah], 0
		test	byte ptr [ebx],	1
		jz	short loc_4867A4
		lea	ecx, [ebx+2Ah]
		push	ecx		; s
		call	__lwcsupr
		pop	ecx

loc_4867A4:				; CODE XREF: .text:00486798j
		mov	dword ptr [ebx+42Eh], 2
		jmp	short loc_4867BD
; ---------------------------------------------------------------------------

loc_4867B0:				; CODE XREF: .text:004856FCj
					; .text:00485708j
					; DATA XREF: ...
		mov	[ebx+18h], esi	; jumptable 00485708 default case
		mov	dword ptr [ebx+42Eh], 7

loc_4867BD:				; CODE XREF: .text:004856B6j
					; .text:004856CAj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
tbyte_4867C4	dt 1.0e999		; DATA XREF: .text:004862C8r
		align 10h
flt_4867D0	dd 10.0			; DATA XREF: .text:004862E2r
tbyte_4867D4	dt 0.1			; DATA XREF: .text:004863CAr
		align 10h
tbyte_4867E0	dt 4.294967295e9	; DATA XREF: .text:004865F4r
		align 4
; Exported entry 279. _Optostring
; Exported entry 663. Optostring

; int __cdecl Optostring(wchar_t *s, int op)
		public Optostring
Optostring:				; CODE XREF: .text:0049CDAEp
					; .text:0049CF97p ...
		push	ebp		; _Optostring
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		xor	edx, edx
		mov	eax, [ebp+0Ch]
		mov	word ptr [ebx+edx*2], 27h
		inc	edx
		test	eax, eax
		lea	ecx, [ebx+edx*2]
		jz	short loc_486821

loc_486807:				; CODE XREF: .text:0048681Fj
		mov	esi, eax
		inc	edx
		and	si, 0FFh
		mov	[ecx], si
		add	ecx, 2
		sar	eax, 8
		and	eax, 0FFFFFFh
		test	eax, eax
		jnz	short loc_486807

loc_486821:				; CODE XREF: .text:00486805j
		cmp	edx, 1
		jnz	short loc_486834
		mov	word ptr [ebx+edx*2], 5Ch
		inc	edx
		mov	word ptr [ebx+edx*2], 30h
		inc	edx

loc_486834:				; CODE XREF: .text:00486824j
		mov	word ptr [ebx+edx*2], 27h
		inc	edx
		mov	eax, edx
		mov	word ptr [ebx+edx*2], 0
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_486848(t_nested *a1, ulong _addr, int n, int nmax)
loc_486848:				; CODE XREF: .text:00486A2Dp
					; .text:00486A8Ap ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp+10h]
		mov	[ebp-4], eax
		mov	edx, [ebp+14h]
		mov	[ebp-8], edx
		mov	eax, [ebp+8]
		mov	ebx, [eax+8]

loc_486865:				; CODE XREF: .text:00486898j
					; .text:004868A1j
		mov	eax, [ebp-8]
		sub	eax, [ebp-4]
		cmp	eax, 2
		jge	short loc_486875
		mov	eax, [ebp-4]
		jmp	short loc_4868B2
; ---------------------------------------------------------------------------

loc_486875:				; CODE XREF: .text:0048686Ej
		mov	eax, [ebp-4]
		add	eax, [ebp-8]
		sar	eax, 1
		jns	short loc_486882
		adc	eax, 0

loc_486882:				; CODE XREF: .text:0048687Dj
		mov	esi, eax
		mov	edx, [ebp+8]
		imul	esi, ebx
		mov	edx, [edx+0Ch]
		add	edx, esi
		mov	esi, [edx]
		cmp	ecx, esi
		jnb	short loc_48689A
		mov	[ebp-8], eax
		jmp	short loc_486865
; ---------------------------------------------------------------------------

loc_48689A:				; CODE XREF: .text:00486893j
		cmp	ecx, esi
		jbe	short loc_4868AA
		mov	[ebp-4], eax
		jmp	short loc_486865
; ---------------------------------------------------------------------------

loc_4868A3:				; CODE XREF: .text:004868B0j
		add	edx, ebx
		cmp	ecx, [edx]
		jnz	short loc_4868B2
		inc	eax

loc_4868AA:				; CODE XREF: .text:0048689Cj
		lea	esi, [eax+1]
		cmp	esi, [ebp+14h]
		jl	short loc_4868A3

loc_4868B2:				; CODE XREF: .text:00486873j
					; .text:004868A7j
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 280. _Destroynesteddata
; Exported entry 473. Destroynesteddata

; int __cdecl Destroynesteddata(t_nested *nd)
		public Destroynesteddata
Destroynesteddata:			; CODE XREF: .text:00413307p
					; .text:00413314p ...
		push	ebp		; _Destroynesteddata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_486918
		inc	dword_5451C0
		mov	eax, dword_5451C0
		mov	[ebx+10h], eax
		cmp	dword ptr [ebx], 1
		jle	short loc_4868FE
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_4868FE
		cmp	dword ptr [ebx+14h], 0
		jz	short loc_4868FE
		mov	esi, [ebx+0Ch]
		mov	edi, 1
		add	esi, [ebx+8]
		jmp	short loc_4868FA
; ---------------------------------------------------------------------------

loc_4868F1:				; CODE XREF: .text:004868FCj
		push	esi
		call	dword ptr [ebx+14h]
		pop	ecx
		inc	edi
		add	esi, [ebx+8]

loc_4868FA:				; CODE XREF: .text:004868EFj
		cmp	edi, [ebx]
		jl	short loc_4868F1

loc_4868FE:				; CODE XREF: .text:004868D6j
					; .text:004868DCj ...
		mov	eax, [ebx+0Ch]
		test	eax, eax
		jz	short loc_486911
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+0Ch], edx

loc_486911:				; CODE XREF: .text:00486903j
		xor	ecx, ecx
		mov	[ebx+4], ecx
		mov	[ebx], ecx

loc_486918:				; CODE XREF: .text:004868C3j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 281. _Createnesteddata
; Exported entry 442. Createnesteddata

; int __cdecl Createnesteddata(t_nested	*nd, ulong itemsize, int nexp, NDDEST *destfunc)
		public Createnesteddata
Createnesteddata:			; CODE XREF: .text:0045CF56p
					; .text:0045CF6Ep ...
		push	ebp		; _Createnesteddata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_48693D
		cmp	esi, 10h
		jb	short loc_48693D
		cmp	edi, 2
		jge	short loc_486942

loc_48693D:				; CODE XREF: .text:00486931j
					; .text:00486936j
		or	eax, 0FFFFFFFFh
		jmp	short loc_486994
; ---------------------------------------------------------------------------

loc_486942:				; CODE XREF: .text:0048693Bj
		push	ebx		; nd
		call	Destroynesteddata
		pop	ecx		; int
		push	0		; flags
		mov	edx, edi
		imul	edx, esi	; int
		push	edx		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebx+0Ch], eax
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_486967
		or	eax, 0FFFFFFFFh
		jmp	short loc_486994
; ---------------------------------------------------------------------------

loc_486967:				; CODE XREF: .text:00486960j
		mov	[ebx+4], edi
		mov	[ebx+8], esi
		mov	edx, [ebp+14h]
		mov	[ebx+14h], edx
		push	esi		; n
		push	0		; c
		mov	ecx, [ebx+0Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebx+0Ch]
		mov	dword ptr [eax+4], 0FFFFFFFFh
		mov	dword ptr [ebx], 1
		xor	eax, eax

loc_486994:				; CODE XREF: .text:00486940j
					; .text:00486965j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 282. _Addnesteddata
; Exported entry 392. Addnesteddata

; int __cdecl Addnesteddata(t_nested *nd, void *item)
		public Addnesteddata
Addnesteddata:				; CODE XREF: .text:0046D0B9p
					; .text:0046D6A1p
		push	ebp		; _Addnesteddata
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4869B8
		cmp	dword ptr [esi+0Ch], 0
		jz	short loc_4869B8
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4869BF

loc_4869B8:				; CODE XREF: .text:004869AAj
					; .text:004869B0j
		xor	eax, eax
		jmp	loc_486C5B
; ---------------------------------------------------------------------------

loc_4869BF:				; CODE XREF: .text:004869B6j
		mov	eax, [esi+4]
		cmp	eax, [esi]
		jg	short loc_486A1B
		mov	edx, eax
		imul	edx, [esi+8]	; int
		cmp	edx, 10000000h
		jnb	short loc_486A1B
		push	0		; flags
		imul	dword ptr [esi+8]
		add	eax, eax	; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4869F1
		xor	eax, eax
		jmp	loc_486C5B
; ---------------------------------------------------------------------------

loc_4869F1:				; CODE XREF: .text:004869E8j
		mov	edx, [esi+4]
		imul	edx, [esi+8]
		push	edx		; n
		mov	ecx, [esi+0Ch]
		push	ecx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [esi+0Ch]
		push	eax		; data
		call	Virtfree
		pop	ecx
		mov	[esi+0Ch], ebx
		mov	edx, [esi+4]
		add	edx, edx
		mov	[esi+4], edx

loc_486A1B:				; CODE XREF: .text:004869C4j
					; .text:004869D2j
		mov	ecx, [ebp+0Ch]
		mov	[ebp-18h], ecx
		mov	eax, [esi]
		push	eax
		push	0
		mov	edx, [ebp-18h]
		mov	ecx, [edx]
		push	ecx
		push	esi
		call	loc_486848
		add	esp, 10h
		mov	[ebp-4], eax
		mov	ebx, [ebp-4]
		imul	ebx, [esi+8]
		add	ebx, [esi+0Ch]
		jmp	short loc_486A4A
; ---------------------------------------------------------------------------

loc_486A44:				; CODE XREF: .text:00486A62j
		sub	ebx, [esi+8]
		dec	dword ptr [ebp-4]

loc_486A4A:				; CODE XREF: .text:00486A42j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_486A64
		mov	eax, [ebp-18h]
		mov	edx, [eax]
		cmp	edx, [ebx]
		jnz	short loc_486A64
		mov	ecx, [ebp-18h]
		mov	eax, [ecx+4]
		cmp	eax, [ebx+4]
		ja	short loc_486A44

loc_486A64:				; CODE XREF: .text:00486A4Ej
					; .text:00486A57j
		mov	edi, [ebp-4]

loc_486A67:				; CODE XREF: .text:00486A9Dj
		mov	edx, [ebp-18h]
		mov	ecx, [edx+4]
		mov	eax, [ebx+4]
		cmp	ecx, eax
		jbe	short loc_486A9F
		mov	edx, [ebp-18h]
		cmp	eax, [edx]
		jb	short loc_486A82
		xor	eax, eax
		jmp	loc_486C5B
; ---------------------------------------------------------------------------

loc_486A82:				; CODE XREF: .text:00486A79j
		push	edi
		push	0
		mov	ecx, [ebx+0Ch]
		push	ecx
		push	esi
		call	loc_486848
		add	esp, 10h
		mov	edi, eax
		mov	ebx, edi
		imul	ebx, [esi+8]
		add	ebx, [esi+0Ch]
		jmp	short loc_486A67
; ---------------------------------------------------------------------------

loc_486A9F:				; CODE XREF: .text:00486A72j
		mov	eax, [ebx]
		mov	[ebp-10h], eax
		mov	edx, [ebx+8]
		inc	edx
		and	edx, 0FFh
		mov	[ebp-14h], edx
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_486ABE
		xor	eax, eax
		jmp	loc_486C5B
; ---------------------------------------------------------------------------

loc_486ABE:				; CODE XREF: .text:00486AB5j
		mov	edx, [esi]
		mov	[ebp-8], edx
		cmp	edi, [ebp-8]
		mov	ecx, [ebp-18h]
		mov	eax, [ecx+4]
		jge	short loc_486B11

loc_486ACE:				; CODE XREF: .text:00486B0Fj
		mov	edx, [ebp-8]
		push	edx
		push	edi
		push	eax
		push	esi
		call	loc_486848
		mov	[ebp-8], eax
		add	esp, 10h
		mov	ebx, [ebp-8]
		mov	eax, [ebp-18h]
		imul	ebx, [esi+8]
		add	ebx, [esi+0Ch]
		mov	edx, [eax+4]
		cmp	edx, [ebx+4]
		jb	short loc_486B11
		mov	ecx, [ebp-18h]
		mov	eax, [ecx]
		cmp	eax, [ebx]
		jb	short loc_486B09
		mov	edx, [ebp-18h]
		mov	ecx, [edx+4]
		cmp	ecx, [ebx+4]
		jz	short loc_486B11

loc_486B09:				; CODE XREF: .text:00486AFCj
		mov	eax, [ebx+0Ch]
		cmp	edi, [ebp-8]
		jl	short loc_486ACE

loc_486B11:				; CODE XREF: .text:00486ACCj
					; .text:00486AF3j ...
		cmp	edi, [ebp-8]
		jz	short loc_486B1D
		xor	eax, eax
		jmp	loc_486C5B
; ---------------------------------------------------------------------------

loc_486B1D:				; CODE XREF: .text:00486B14j
		inc	dword ptr [ebp-4]
		mov	ebx, [ebp-4]
		mov	eax, [esi+8]
		imul	ebx, eax
		add	ebx, [esi+0Ch]
		mov	edx, [esi]
		cmp	edx, [ebp-4]
		jle	short loc_486B46
		sub	edx, [ebp-4]
		imul	edx, eax
		push	edx		; n
		push	ebx		; src
		add	eax, ebx
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_486B46:				; CODE XREF: .text:00486B31j
		mov	ecx, [esi+8]
		push	ecx		; n
		mov	eax, [ebp+0Ch]
		push	eax		; src
		push	ebx		; dest
		call	_memcpy
		mov	edx, [ebx+8]
		xor	eax, eax
		and	edx, 0FFFFFF00h
		add	esp, 0Ch
		or	edx, [ebp-14h]
		mov	[ebx+8], edx
		mov	ecx, [ebp-10h]
		mov	[ebx+0Ch], ecx
		inc	dword ptr [esi]
		mov	[ebp-0Ch], eax
		mov	edi, [ebp-4]
		inc	edi
		jmp	short loc_486BBA
; ---------------------------------------------------------------------------

loc_486B79:				; CODE XREF: .text:00486BBCj
		add	ebx, [esi+8]
		mov	eax, [ebp-18h]
		mov	edx, [eax+4]
		cmp	edx, [ebx]
		jb	short loc_486BBE
		mov	ecx, [ebx+8]
		and	ecx, 0FFh
		cmp	ecx, [ebp-14h]
		jnz	short loc_486B9C
		mov	eax, [ebp-18h]
		mov	edx, [eax]
		mov	[ebx+0Ch], edx

loc_486B9C:				; CODE XREF: .text:00486B92j
		mov	edx, [ebx+8]
		mov	eax, edx
		inc	eax
		and	eax, 0FFh
		test	eax, eax
		jnz	short loc_486BAE
		inc	dword ptr [ebp-0Ch]

loc_486BAE:				; CODE XREF: .text:00486BA9j
		and	edx, 0FFFFFF00h
		or	eax, edx
		inc	edi
		mov	[ebx+8], eax

loc_486BBA:				; CODE XREF: .text:00486B77j
		cmp	edi, [esi]
		jl	short loc_486B79

loc_486BBE:				; CODE XREF: .text:00486B84j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_486C43
		mov	eax, [ebp-4]
		inc	eax
		mov	ebx, eax
		imul	ebx, [esi+8]
		add	ebx, [esi+0Ch]
		mov	edi, eax
		mov	[ebp-8], eax
		jmp	short loc_486C18
; ---------------------------------------------------------------------------

loc_486BD8:				; CODE XREF: .text:00486C1Aj
		mov	edx, [ebp-18h]
		mov	ecx, [edx+4]
		cmp	ecx, [ebx]
		jb	short loc_486C1C
		test	byte ptr [ebx+8], 0FFh
		jnz	short loc_486BF5
		cmp	dword ptr [esi+14h], 0
		jz	short loc_486C14
		push	ebx
		call	dword ptr [esi+14h]
		pop	ecx
		jmp	short loc_486C14
; ---------------------------------------------------------------------------

loc_486BF5:				; CODE XREF: .text:00486BE6j
		cmp	edi, [ebp-8]
		jz	short loc_486C11
		mov	eax, [esi+8]
		push	eax		; n
		push	ebx		; src
		mov	edx, [ebp-8]
		imul	edx, eax
		add	edx, [esi+0Ch]
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch

loc_486C11:				; CODE XREF: .text:00486BF8j
		inc	dword ptr [ebp-8]

loc_486C14:				; CODE XREF: .text:00486BECj
					; .text:00486BF3j
		inc	edi
		add	ebx, [esi+8]

loc_486C18:				; CODE XREF: .text:00486BD6j
		cmp	edi, [esi]
		jl	short loc_486BD8

loc_486C1C:				; CODE XREF: .text:00486BE0j
		mov	eax, [esi]
		cmp	edi, eax
		jge	short loc_486C3E
		sub	eax, edi
		mov	edx, [esi+8]
		imul	eax, edx
		push	eax		; n
		push	ebx		; src
		mov	ecx, [ebp-8]
		imul	ecx, edx
		add	ecx, [esi+0Ch]
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch

loc_486C3E:				; CODE XREF: .text:00486C20j
		mov	eax, [ebp-0Ch]
		sub	[esi], eax

loc_486C43:				; CODE XREF: .text:00486BC2j
		inc	dword_5451C0
		mov	edx, dword_5451C0
		mov	[esi+10h], edx
		mov	eax, [ebp-4]
		imul	dword ptr [esi+8]
		add	eax, [esi+0Ch]

loc_486C5B:				; CODE XREF: .text:004869BAj
					; .text:004869ECj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 283. _Deletenestedrange
; Exported entry 467. Deletenestedrange

; void __cdecl Deletenestedrange(t_nested *nd, ulong addr0, ulong addr1)
		public Deletenestedrange
Deletenestedrange:			; CODE XREF: .text:0046E897p
					; .text:0046E8ABp
		push	ebp		; _Deletenestedrange
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	loc_486D80
		cmp	dword ptr [edi+0Ch], 0
		jz	loc_486D80
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebp+10h]
		ja	loc_486D80
		mov	edx, [edi]
		push	edx
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	edi
		call	loc_486848
		add	esp, 10h
		mov	esi, eax
		mov	ebx, [edi+0Ch]
		mov	eax, [edi+8]
		imul	esi
		add	ebx, eax
		jmp	short loc_486CB2
; ---------------------------------------------------------------------------

loc_486CAE:				; CODE XREF: .text:00486CC3j
		sub	ebx, [edi+8]
		dec	esi

loc_486CB2:				; CODE XREF: .text:00486CACj
		cmp	esi, 1
		jle	short loc_486CC5
		mov	edx, [ebx+8]
		and	edx, 0FFh
		cmp	edx, 1
		ja	short loc_486CAE

loc_486CC5:				; CODE XREF: .text:00486CB5j
		mov	ecx, [edi]
		mov	[ebp-4], ecx
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_486D2C
; ---------------------------------------------------------------------------

loc_486CD1:				; CODE XREF: .text:00486D2Ej
		mov	edx, [ebx]
		cmp	edx, [ebp+10h]
		ja	short loc_486D30
		test	esi, esi
		jz	short loc_486D28
		mov	ecx, [ebx+4]
		cmp	ecx, [ebp+0Ch]
		jb	short loc_486D28
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebx]
		jnb	short loc_486CF0
		lea	edx, [ebp+0Ch]
		jmp	short loc_486CF2
; ---------------------------------------------------------------------------

loc_486CF0:				; CODE XREF: .text:00486CE9j
		mov	edx, ebx

loc_486CF2:				; CODE XREF: .text:00486CEEj
		mov	eax, [edx]
		mov	[ebp+0Ch], eax
		lea	eax, [ebx+4]
		mov	edx, [eax]
		cmp	edx, [ebp+10h]
		jnb	short loc_486D06
		lea	ecx, [ebp+10h]
		jmp	short loc_486D08
; ---------------------------------------------------------------------------

loc_486D06:				; CODE XREF: .text:00486CFFj
		mov	ecx, eax

loc_486D08:				; CODE XREF: .text:00486D04j
		mov	eax, [ecx]
		mov	[ebp+10h], eax
		cmp	esi, [ebp-4]
		jge	short loc_486D15
		mov	[ebp-4], esi

loc_486D15:				; CODE XREF: .text:00486D10j
		cmp	esi, [ebp-8]
		jle	short loc_486D1D
		mov	[ebp-8], esi

loc_486D1D:				; CODE XREF: .text:00486D18j
		cmp	dword ptr [edi+14h], 0
		jz	short loc_486D28
		push	ebx
		call	dword ptr [edi+14h]
		pop	ecx

loc_486D28:				; CODE XREF: .text:00486CDAj
					; .text:00486CE2j ...
		add	ebx, [edi+8]
		inc	esi

loc_486D2C:				; CODE XREF: .text:00486CCFj
		cmp	esi, [edi]
		jl	short loc_486CD1

loc_486D30:				; CODE XREF: .text:00486CD6j
		mov	edx, [ebp-8]
		cmp	edx, [ebp-4]
		jl	short loc_486D80
		inc	dword ptr [ebp-8]
		mov	ecx, [edi]
		cmp	ecx, [ebp-8]
		jle	short loc_486D69
		sub	ecx, [ebp-8]
		mov	eax, [edi+8]
		imul	ecx, eax
		push	ecx		; n
		mov	edx, [edi+0Ch]
		mov	ecx, edx
		mov	ebx, eax
		imul	ebx, [ebp-8]
		add	ecx, ebx
		push	ecx		; src
		imul	eax, [ebp-4]
		add	edx, eax
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch

loc_486D69:				; CODE XREF: .text:00486D40j
		mov	eax, [ebp-8]
		sub	eax, [ebp-4]
		sub	[edi], eax
		inc	dword_5451C0
		mov	edx, dword_5451C0
		mov	[edi+10h], edx

loc_486D80:				; CODE XREF: .text:00486C72j
					; .text:00486C7Cj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 284. _Getnestingpattern
; Exported entry 588. Getnestingpattern

; int __cdecl Getnestingpattern(t_nested *nd, ulong _addr, wchar_t *pat,	int npat, uchar	*mask, int showentry, int *isend)
		public Getnestingpattern
Getnestingpattern:			; CODE XREF: .text:004BC320p
					; .text:004BC6F2p
		push	ebp		; _Getnestingpattern
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+0Ch]
		jz	short loc_486DAD
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_486DAD
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_486DAD
		cmp	dword ptr [ebp+14h], 0
		jg	short loc_486DB4

loc_486DAD:				; CODE XREF: .text:00486D96j
					; .text:00486D9Fj ...
		xor	eax, eax
		jmp	loc_486F15
; ---------------------------------------------------------------------------

loc_486DB4:				; CODE XREF: .text:00486DABj
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_486DC1
		mov	edx, [ebp+20h]
		xor	ecx, ecx
		mov	[edx], ecx

loc_486DC1:				; CODE XREF: .text:00486DB8j
		xor	edi, edi
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx
		push	0
		push	esi
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_486848
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	loc_486F13

loc_486DE5:				; CODE XREF: .text:00486F0Dj
		mov	eax, [ebp+8]
		mov	ebx, [eax+0Ch]
		mov	eax, [ebp+8]
		mov	edx, [eax+8]
		imul	edx, [ebp-4]
		add	ebx, edx
		cmp	esi, [ebx]
		jb	loc_486EEC
		cmp	esi, [ebx+4]
		ja	loc_486EEC
		cmp	edi, [ebp+14h]
		jl	short loc_486E11
		mov	edi, [ebp+14h]
		dec	edi

loc_486E11:				; CODE XREF: .text:00486E0Bj
		test	edi, edi
		jle	short loc_486E45
		mov	eax, edi
		add	eax, eax
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; src
		mov	ecx, [ebp+10h]
		add	ecx, 2
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_486E45
		push	edi		; n
		mov	eax, [ebp+18h]
		push	eax		; src
		mov	edx, [ebp+18h]
		inc	edx
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch

loc_486E45:				; CODE XREF: .text:00486E13j
					; .text:00486E31j
		xor	eax, eax
		cmp	esi, [ebx]
		jnz	short loc_486E54
		test	byte ptr [ebx+9], 1
		jnz	short loc_486E54
		or	eax, 1

loc_486E54:				; CODE XREF: .text:00486E49j
					; .text:00486E4Fj
		cmp	esi, [ebx+4]
		jnz	short loc_486E62
		test	byte ptr [ebx+9], 2
		jnz	short loc_486E62
		or	eax, 2

loc_486E62:				; CODE XREF: .text:00486E57j
					; .text:00486E5Dj
		cmp	eax, 3
		jnz	short loc_486E71
		mov	edx, [ebp+10h]
		mov	word ptr [edx],	1Dh
		jmp	short loc_486EB0
; ---------------------------------------------------------------------------

loc_486E71:				; CODE XREF: .text:00486E65j
		cmp	eax, 2
		jnz	short loc_486E80
		mov	ecx, [ebp+10h]
		mov	word ptr [ecx],	1Ch
		jmp	short loc_486EB0
; ---------------------------------------------------------------------------

loc_486E80:				; CODE XREF: .text:00486E74j
		cmp	eax, 1
		jnz	short loc_486E8F
		mov	edx, [ebp+10h]
		mov	word ptr [edx],	18h
		jmp	short loc_486EB0
; ---------------------------------------------------------------------------

loc_486E8F:				; CODE XREF: .text:00486E83j
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_486EA8
		mov	ecx, [ebx]
		add	ecx, [ebx+10h]
		cmp	esi, ecx
		jnz	short loc_486EA8
		mov	edx, [ebp+10h]
		mov	word ptr [edx],	1Ah
		jmp	short loc_486EB0
; ---------------------------------------------------------------------------

loc_486EA8:				; CODE XREF: .text:00486E93j
					; .text:00486E9Cj
		mov	ecx, [ebp+10h]
		mov	word ptr [ecx],	19h

loc_486EB0:				; CODE XREF: .text:00486E6Fj
					; .text:00486E7Ej ...
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_486ED8
		test	byte ptr [ebx+9], 4
		jz	short loc_486EC4
		mov	edx, [ebp+18h]
		mov	byte ptr [edx],	61h
		jmp	short loc_486ED8
; ---------------------------------------------------------------------------

loc_486EC4:				; CODE XREF: .text:00486EBAj
		test	byte ptr [ebx+9], 8
		jz	short loc_486ED2
		mov	ecx, [ebp+18h]
		mov	byte ptr [ecx],	62h
		jmp	short loc_486ED8
; ---------------------------------------------------------------------------

loc_486ED2:				; CODE XREF: .text:00486EC8j
		mov	edx, [ebp+18h]
		mov	byte ptr [edx],	60h

loc_486ED8:				; CODE XREF: .text:00486EB4j
					; .text:00486EC2j ...
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_486EEB
		test	al, 2
		jz	short loc_486EEB
		mov	eax, [ebp+20h]
		mov	dword ptr [eax], 1

loc_486EEB:				; CODE XREF: .text:00486EDCj
					; .text:00486EE0j
		inc	edi

loc_486EEC:				; CODE XREF: .text:00486DF9j
					; .text:00486E02j
		mov	eax, [ebx+0Ch]
		test	eax, eax
		jz	short loc_486F13
		mov	edx, [ebp-4]
		push	edx
		push	0
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_486848
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jg	loc_486DE5

loc_486F13:				; CODE XREF: .text:00486DDFj
					; .text:00486EF1j
		mov	eax, edi

loc_486F15:				; CODE XREF: .text:00486DAFj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 285. _Getnestingdepth
; Exported entry 587. Getnestingdepth

; int __cdecl Getnestingdepth(t_nested *nd, ulong _addr)
		public Getnestingdepth
Getnestingdepth:			; CODE XREF: .text:00476F70p
		push	ebp		; _Getnestingdepth
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_486F2D
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_486F32

loc_486F2D:				; CODE XREF: .text:00486F25j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_486F32:				; CODE XREF: .text:00486F2Bj
		mov	edx, [ebx]
		push	edx
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	ebx
		call	loc_486848
		imul	dword ptr [ebx+8]
		add	eax, [ebx+0Ch]
		add	esp, 10h
		mov	eax, [eax+8]
		and	eax, 0FFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 286. _Findnesteddata
; Exported entry 524. Findnesteddata

; int __cdecl Findnesteddata(t_nested *nd, ulong _addr, int level)
		public Findnesteddata
Findnesteddata:				; CODE XREF: .text:00476FDCp
					; .text:00489325p
		push	ebp		; _Findnesteddata
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_486F71
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_486F71
		test	esi, esi
		jge	short loc_486F75

loc_486F71:				; CODE XREF: .text:00486F65j
					; .text:00486F6Bj
		xor	eax, eax
		jmp	short loc_486FEB
; ---------------------------------------------------------------------------

loc_486F75:				; CODE XREF: .text:00486F6Fj
		mov	edx, [ebx]
		push	edx
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	ebx
		call	loc_486848
		add	esp, 10h
		mov	edx, eax
		mov	eax, [ebx+0Ch]
		mov	ecx, [ebx+8]
		imul	ecx, edx
		add	eax, ecx
		test	esi, esi
		jnz	short loc_486FA3
		mov	edx, [eax]
		cmp	edx, [ebp+0Ch]
		jz	short loc_486FEB
		xor	eax, eax
		jmp	short loc_486FEB
; ---------------------------------------------------------------------------

loc_486FA3:				; CODE XREF: .text:00486F96j
		test	edx, edx
		jle	short loc_486FE9

loc_486FA7:				; CODE XREF: .text:00486FE7j
		mov	ecx, [eax+8]
		and	ecx, 0FFh
		cmp	esi, ecx
		jle	short loc_486FB8
		xor	eax, eax
		jmp	short loc_486FEB
; ---------------------------------------------------------------------------

loc_486FB8:				; CODE XREF: .text:00486FB2j
		cmp	esi, ecx
		jnz	short loc_486FC8
		mov	edx, [eax+4]
		cmp	edx, [ebp+0Ch]
		jnb	short loc_486FEB
		xor	eax, eax
		jmp	short loc_486FEB
; ---------------------------------------------------------------------------

loc_486FC8:				; CODE XREF: .text:00486FBAj
		push	edx
		push	0
		mov	edx, [eax+0Ch]
		push	edx
		push	ebx
		call	loc_486848
		add	esp, 10h
		mov	edx, eax
		mov	eax, [ebx+0Ch]
		mov	ecx, [ebx+8]
		imul	ecx, edx
		add	eax, ecx
		test	edx, edx
		jg	short loc_486FA7

loc_486FE9:				; CODE XREF: .text:00486FA5j
		xor	eax, eax

loc_486FEB:				; CODE XREF: .text:00486F73j
					; .text:00486F9Dj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 287. _Nesteddatatoudd
; Exported entry 660. Nesteddatatoudd

; int __cdecl Nesteddatatoudd(t_nested *nd, ulong base,	ulong *datasize)
		public Nesteddatatoudd
Nesteddatatoudd:			; CODE XREF: .text:004AA123p
					; .text:004AA16Ap
		push	ebp		; _Nesteddatatoudd
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_487011
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_487011
		cmp	dword ptr [ebx], 0
		jz	short loc_487011
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_487018

loc_487011:				; CODE XREF: .text:00486FFEj
					; .text:00487004j ...
		xor	eax, eax
		jmp	loc_48709A
; ---------------------------------------------------------------------------

loc_487018:				; CODE XREF: .text:0048700Fj
		mov	edx, [ebx]
		imul	edx, [ebx+8]
		add	edx, 18h
		mov	[ebp-8], edx
		mov	ecx, [ebp-8]
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_48703B
		xor	eax, eax
		jmp	short loc_48709A
; ---------------------------------------------------------------------------

loc_48703B:				; CODE XREF: .text:00487035j
		mov	edx, [ebp-0Ch]
		mov	ecx, [ebx]
		mov	[edx], ecx
		xor	ecx, ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [ebx+8]
		xor	edi, edi
		mov	[eax+4], edx
		mov	[ebp-4], ecx
		jmp	short loc_487088
; ---------------------------------------------------------------------------

loc_487054:				; CODE XREF: .text:0048708Dj
		mov	esi, [ebp-0Ch]
		mov	eax, edi
		mov	edx, [ebx+8]
		add	esi, eax
		push	edx		; n
		add	esi, 8
		mov	ecx, [ebx+0Ch]
		add	ecx, eax
		push	ecx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp+0Ch]
		sub	[esi], eax
		mov	edx, [ebp+0Ch]
		sub	[esi+4], edx
		mov	ecx, [ebp+0Ch]
		sub	[esi+0Ch], ecx
		inc	dword ptr [ebp-4]
		add	edi, [ebx+8]

loc_487088:				; CODE XREF: .text:00487052j
		mov	eax, [ebp-4]
		cmp	eax, [ebx]
		jl	short loc_487054
		mov	edx, [ebp+10h]
		mov	ecx, [ebp-8]
		mov	[edx], ecx
		mov	eax, [ebp-0Ch]

loc_48709A:				; CODE XREF: .text:00487013j
					; .text:00487039j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 288. _Uddtonesteddata
; Exported entry 736. Uddtonesteddata

; signed int __cdecl Uddtonesteddata(t_nested *nd, void	*data, ulong base, ulong size)
		public Uddtonesteddata
Uddtonesteddata:			; CODE XREF: .text:004AB8F0p
					; .text:004AB967p
		push	ebp		; _Uddtonesteddata
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	edi, [ebp+10h]
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4870C4
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4870C4
		cmp	eax, 8
		jnb	short loc_4870CC

loc_4870C4:				; CODE XREF: .text:004870B7j
					; .text:004870BDj
		or	eax, 0FFFFFFFFh
		jmp	loc_487166
; ---------------------------------------------------------------------------

loc_4870CC:				; CODE XREF: .text:004870C2j
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		mov	[ebp-8], ecx
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+4]
		mov	[ebp-0Ch], ecx
		mov	edx, [ebp-8]
		imul	edx, [ebp-0Ch]
		add	edx, 18h
		cmp	eax, edx
		jz	short loc_4870F0
		or	eax, 0FFFFFFFFh
		jmp	short loc_487166
; ---------------------------------------------------------------------------

loc_4870F0:				; CODE XREF: .text:004870E9j
		mov	ecx, [ebp+8]
		mov	eax, [ecx+14h]
		push	eax		; destfunc
		mov	edx, [ebp-8]
		add	edx, 20h
		push	edx		; nexp
		mov	ecx, [ebp-0Ch]
		push	ecx		; itemsize
		mov	eax, [ebp+8]
		push	eax		; nd
		call	Createnesteddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_487117
		or	eax, 0FFFFFFFFh
		jmp	short loc_487166
; ---------------------------------------------------------------------------

loc_487117:				; CODE XREF: .text:00487110j
		xor	edx, edx
		mov	[ebp-4], edx
		xor	esi, esi
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jge	short loc_48715C

loc_487126:				; CODE XREF: .text:0048715Aj
		mov	edx, [ebp+8]
		mov	eax, esi
		mov	ebx, [edx+0Ch]
		mov	edx, [ebp-0Ch]
		push	edx		; n
		add	ebx, eax
		mov	ecx, [ebp+0Ch]
		add	ecx, eax
		add	ecx, 8
		push	ecx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	[ebx], edi
		add	[ebx+4], edi
		add	[ebx+0Ch], edi
		inc	dword ptr [ebp-4]
		add	esi, [ebp-0Ch]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jl	short loc_487126

loc_48715C:				; CODE XREF: .text:00487124j
		mov	edx, [ebp+8]
		mov	ecx, [ebp-8]
		mov	[edx], ecx
		xor	eax, eax

loc_487166:				; CODE XREF: .text:004870C7j
					; .text:004870EEj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
