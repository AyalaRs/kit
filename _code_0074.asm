.code

; Exported entry 301. _Assembleallforms
; Exported entry 407. Assembleallforms

; int __cdecl Assembleallforms(wchar_t *src, ulong ip, t_asmmod	*model,	int maxmodel, int mode,	wchar_t	*errtxt)
		public Assembleallforms
Assembleallforms:			; CODE XREF: .text:0042E24Dp
					; .text:0042E612p ...
		push	ebp		; _Assembleallforms
		mov	ebp, esp
		add	esp, 0FFFFF6F8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_48C77D
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48C77D:				; CODE XREF: .text:0048C774j
		cmp	dword ptr [ebp+8], 0
		jz	short loc_48C78F
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_48C78F
		cmp	dword ptr [ebp+14h], 0
		jge	short loc_48C7CF

loc_48C78F:				; CODE XREF: .text:0048C781j
					; .text:0048C787j
		push	offset aInvalidParamet ; "Invalid parameters"
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-0A4h], edx
		cmp	dword ptr [ebp-0A4h], 0
		jz	short loc_48C7C8
		mov	ecx, [ebp-0A0h]
		push	ecx		; src
		mov	eax, [ebp-0A4h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48C7C8:				; CODE XREF: .text:0048C7B0j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48C7CF:				; CODE XREF: .text:0048C78Dj
		mov	ps.mode, 840h
		mov	edx, [ebp+8]
		mov	ps.src,	edx
		mov	ecx, [ebp+8]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	ps._length, eax
		xor	eax, eax
		mov	ecx, [ebp+18h]
		and	ecx, 2
		mov	ps.line, eax
		mov	[ebp-30h], ecx
		mov	ps.caret, eax
		mov	eax, [ebp+18h]
		xor	edx, edx
		and	eax, 6
		mov	ps.uval, edx
		cmp	eax, 6
		setz	dl
		and	edx, 1
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		mov	dword_5EC0C4, edx

loc_48C828:				; CODE XREF: .text:0049134Aj
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-1Ch], eax
		mov	[ebp-74h], edx
		mov	dword ptr [ebp-7Ch], 80000000h
		push	offset ps	; ps
		call	Scan
		pop	ecx
		mov	esi, 1
		xor	ecx, ecx
		mov	[ebp-70h], ecx
		mov	[ebp-6Ch], ecx
		mov	dword ptr [ebp-25Ch], offset off_52FF8C
		mov	dword ptr [ebp-258h], offset off_52FF08

loc_48C865:				; CODE XREF: .text:0048C8ABj
		mov	eax, [ebp-258h]
		mov	edx, [eax]
		push	edx		; s2
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_48C8AD
		mov	ecx, [ebp-25Ch]
		mov	eax, [ecx]
		push	eax		; s2
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_48C8AD
		inc	esi
		add	dword ptr [ebp-25Ch], 4
		add	dword ptr [ebp-258h], 4
		cmp	esi, 21h
		jl	short loc_48C865

loc_48C8AD:				; CODE XREF: .text:0048C87Dj
					; .text:0048C897j
		cmp	esi, 21h
		jl	short loc_48C8F8
		push	offset aAscii_4	; s2
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48C8D6
		mov	dword ptr [ebp-6Ch], 0FFFFFFFFh
		mov	esi, 1
		jmp	short loc_48C8F8
; ---------------------------------------------------------------------------

loc_48C8D6:				; CODE XREF: .text:0048C8C6j
		push	offset aUnicode_0 ; "UNICODE"
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48C8F8
		mov	dword ptr [ebp-6Ch], 0FFFFFFFFh
		mov	esi, 2

loc_48C8F8:				; CODE XREF: .text:0048C8B0j
					; .text:0048C8D4j ...
		cmp	esi, 21h
		jge	loc_48D130
		cmp	dword ptr [ebp-6Ch], 0
		jnz	short loc_48C973
		push	offset ps	; ps
		call	Scan
		pop	ecx
		cmp	dword_5EC0BE, 2
		jz	short loc_48C927
		mov	eax, ps.line
		mov	ps.caret, eax
		jmp	short loc_48C973
; ---------------------------------------------------------------------------

loc_48C927:				; CODE XREF: .text:0048C919j
		push	offset aOffset_0 ; "OFFSET"
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48C946
		mov	dword ptr [ebp-6Ch], 0FFFFFFFFh
		jmp	short loc_48C973
; ---------------------------------------------------------------------------

loc_48C946:				; CODE XREF: .text:0048C93Bj
		push	offset aFloat_1	; "FLOAT"
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48C969
		mov	edx, 1
		mov	[ebp-70h], edx
		mov	[ebp-6Ch], edx
		jmp	short loc_48C973
; ---------------------------------------------------------------------------

loc_48C969:				; CODE XREF: .text:0048C95Aj
		mov	eax, ps.line
		mov	ps.caret, eax

loc_48C973:				; CODE XREF: .text:0048C905j
					; .text:0048C925j ...
		push	6Ch		; n
		push	0		; c
		lea	ecx, [ebp-6E4h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_48C986:				; CODE XREF: .text:0048D102j
		push	offset ps	; ps
		call	Scan
		pop	ecx
		cmp	dword_5EC0BE, 6
		jnz	short loc_48C9A3
		cmp	ps._mask, 3Fh
		jz	short loc_48C9D8

loc_48C9A3:				; CODE XREF: .text:0048C998j
		cmp	dword_5EC0BE, 2
		jnz	short loc_48C9E2
		push	offset aAny	; s2
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_48C9D8
		push	offset aConst_2	; "CONST"
		push	(offset	ps.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48C9E2

loc_48C9D8:				; CODE XREF: .text:0048C9A1j
					; .text:0048C9C0j
		xor	eax, eax
		mov	[ebp-84h], eax
		jmp	short loc_48CA5D
; ---------------------------------------------------------------------------

loc_48C9E2:				; CODE XREF: .text:0048C9AAj
					; .text:0048C9D6j
		push	36h		; mode
		mov	edx, ps.line
		push	0		; b
		mov	ps.caret, edx
		push	0		; a
		mov	ecx, ps.caret
		push	0		; threadid
		push	0		; size
		add	ecx, ecx
		push	0		; base
		add	ecx, ps.src
		push	0		; data
		push	ecx		; expression
		lea	eax, [ebp-900h]
		push	eax		; result
		call	Expression
		add	esp, 24h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8F8h], 0
		jnz	short loc_48CA45
		lea	edx, [ebp-8E6h]
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CA45:				; CODE XREF: .text:0048CA24j
		mov	edx, [ebp-8]
		mov	ecx, [ebp-8F8h]
		add	ps.caret, edx
		and	ecx, 0Fh
		mov	[ebp-84h], ecx

loc_48CA5D:				; CODE XREF: .text:0048C9E0j
		cmp	dword ptr [ebp-84h], 0
		jnz	loc_48CB5E
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_48CAB0
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-0A8h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-0ACh], eax
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_48CAA9
		mov	edx, [ebp-0A8h]
		push	edx		; src
		mov	ecx, [ebp-0ACh]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48CAA9:				; CODE XREF: .text:0048CA91j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CAB0:				; CODE XREF: .text:0048CA6Ej
		xor	edx, edx
		mov	dl, [ebp-6C0h]
		add	edx, esi
		cmp	edx, 10h
		jle	short loc_48CAFF
		push	offset aTotalSizeOfThe ; "Total	size of	the constant exceeds 16	b"...
		call	_T
		pop	ecx
		mov	[ebp-0B0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-0B4h], ecx
		cmp	dword ptr [ebp-0B4h], 0
		jz	short loc_48CAF8
		mov	eax, [ebp-0B0h]
		push	eax		; src
		mov	edx, [ebp-0B4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48CAF8:				; CODE XREF: .text:0048CAE0j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CAFF:				; CODE XREF: .text:0048CABDj
		cmp	dword ptr [ebp-6C4h], 0
		jnz	short loc_48CB19
		mov	edx, esi
		shl	edx, 18h
		or	edx, 20000000h
		mov	[ebp-6C4h], edx

loc_48CB19:				; CODE XREF: .text:0048CB06j
		push	esi		; n
		push	0		; c
		xor	ecx, ecx
		mov	cl, [ebp-6C0h]
		lea	eax, [ebp-6E4h]
		add	ecx, eax
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		push	esi		; n
		push	0		; c
		xor	edx, edx
		mov	dl, [ebp-6C0h]
		lea	ecx, [ebp-6D4h]
		add	edx, ecx
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, esi
		add	[ebp-6C0h], al
		jmp	loc_48D0E7
; ---------------------------------------------------------------------------

loc_48CB5E:				; CODE XREF: .text:0048CA64j
		cmp	dword ptr [ebp-84h], 1
		jz	short loc_48CB7D
		cmp	dword ptr [ebp-84h], 2
		jz	short loc_48CB7D
		cmp	dword ptr [ebp-84h], 3
		jnz	loc_48CC93

loc_48CB7D:				; CODE XREF: .text:0048CB65j
					; .text:0048CB6Ej
		cmp	dword ptr [ebp-70h], 0
		jnz	loc_48CC93
		cmp	esi, 1
		jz	short loc_48CBD6
		cmp	esi, 2
		jz	short loc_48CBD6
		cmp	esi, 4
		jz	short loc_48CBD6
		push	offset aIntegerConstan ; "Integer constant must	be 1, 2	or 4 byte"...
		call	_T
		pop	ecx
		mov	[ebp-0B8h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-0BCh], edx
		cmp	dword ptr [ebp-0BCh], 0
		jz	short loc_48CBCF
		mov	ecx, [ebp-0B8h]
		push	ecx		; src
		mov	eax, [ebp-0BCh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48CBCF:				; CODE XREF: .text:0048CBB7j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CBD6:				; CODE XREF: .text:0048CB8Aj
					; .text:0048CB8Fj ...
		xor	edx, edx
		mov	dl, [ebp-6C0h]
		add	edx, esi
		cmp	edx, 10h
		jle	short loc_48CC25
		push	offset aTotalSizeOfThe ; "Total	size of	the constant exceeds 16	b"...
		call	_T
		pop	ecx
		mov	[ebp-0C0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-0C4h], ecx
		cmp	dword ptr [ebp-0C4h], 0
		jz	short loc_48CC1E
		mov	eax, [ebp-0C0h]
		push	eax		; src
		mov	edx, [ebp-0C4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48CC1E:				; CODE XREF: .text:0048CC06j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CC25:				; CODE XREF: .text:0048CBE3j
		cmp	dword ptr [ebp-6C4h], 0
		jnz	short loc_48CC3F
		mov	edx, esi
		shl	edx, 18h
		or	edx, 20000000h
		mov	[ebp-6C4h], edx

loc_48CC3F:				; CODE XREF: .text:0048CC2Cj
		push	esi		; n
		lea	ecx, [ebp-8F0h]
		push	ecx		; src
		xor	eax, eax
		mov	al, [ebp-6C0h]
		lea	edx, [ebp-6E4h]
		add	eax, edx
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	esi		; n
		push	0FFh		; c
		xor	ecx, ecx
		mov	cl, [ebp-6C0h]
		lea	eax, [ebp-6D4h]
		add	ecx, eax
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, esi
		add	[ebp-6C0h], dl
		mov	dword ptr [ebp-6Ch], 0FFFFFFFFh
		jmp	loc_48D0E7
; ---------------------------------------------------------------------------

loc_48CC93:				; CODE XREF: .text:0048CB77j
					; .text:0048CB81j
		cmp	dword ptr [ebp-84h], 1
		jz	short loc_48CCCD
		cmp	dword ptr [ebp-84h], 2
		jz	short loc_48CCCD
		cmp	dword ptr [ebp-84h], 3
		jz	short loc_48CCCD
		cmp	dword ptr [ebp-84h], 4
		jz	short loc_48CCCD
		cmp	dword ptr [ebp-84h], 5
		jz	short loc_48CCCD
		cmp	dword ptr [ebp-84h], 6
		jnz	loc_48CEBA

loc_48CCCD:				; CODE XREF: .text:0048CC9Aj
					; .text:0048CCA3j ...
		cmp	dword ptr [ebp-6Ch], 0
		jge	short loc_48CD13
		push	offset aDonTMixInteger ; "Don't mix integer and floating constant"...
		call	_T
		pop	ecx
		mov	[ebp-0C8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-0CCh], ecx
		cmp	dword ptr [ebp-0CCh], 0
		jz	short loc_48CD0C
		mov	eax, [ebp-0C8h]
		push	eax		; src
		mov	edx, [ebp-0CCh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48CD0C:				; CODE XREF: .text:0048CCF4j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CD13:				; CODE XREF: .text:0048CCD1j
		cmp	esi, 4
		jz	short loc_48CD62
		cmp	esi, 8
		jz	short loc_48CD62
		cmp	esi, 0Ah
		jz	short loc_48CD62
		push	offset aFloatingConsta ; "Floating constant must be 4, 8 or 10 by"...
		call	_T
		pop	ecx
		mov	[ebp-0D0h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-0D4h], edx
		cmp	dword ptr [ebp-0D4h], 0
		jz	short loc_48CD5B
		mov	ecx, [ebp-0D0h]
		push	ecx		; src
		mov	eax, [ebp-0D4h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48CD5B:				; CODE XREF: .text:0048CD43j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CD62:				; CODE XREF: .text:0048CD16j
					; .text:0048CD1Bj ...
		xor	edx, edx
		mov	dl, [ebp-6C0h]
		add	edx, esi
		cmp	edx, 10h
		jle	short loc_48CDB1
		push	offset aTotalSizeOfThe ; "Total	size of	the constant exceeds 16	b"...
		call	_T
		pop	ecx
		mov	[ebp-0D8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-0DCh], ecx
		cmp	dword ptr [ebp-0DCh], 0
		jz	short loc_48CDAA
		mov	eax, [ebp-0D8h]
		push	eax		; src
		mov	edx, [ebp-0DCh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48CDAA:				; CODE XREF: .text:0048CD92j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CDB1:				; CODE XREF: .text:0048CD6Fj
		mov	edx, esi
		shl	edx, 18h
		or	edx, 40000000h
		mov	[ebp-6C4h], edx
		call	loc_41100B
		cmp	dword ptr [ebp-84h], 1
		jz	short loc_48CDE2
		cmp	dword ptr [ebp-84h], 2
		jz	short loc_48CDE2
		cmp	dword ptr [ebp-84h], 3
		jnz	short loc_48CE19

loc_48CDE2:				; CODE XREF: .text:0048CDCEj
					; .text:0048CDD7j
		test	byte ptr [ebp-8F8h], 20h
		jz	short loc_48CDF9
		fild	dword ptr [ebp-8F0h]
		fstp	tbyte ptr [ebp-8F0h]
		jmp	short loc_48CE19
; ---------------------------------------------------------------------------

loc_48CDF9:				; CODE XREF: .text:0048CDE9j
		mov	ecx, [ebp-8F0h]
		xor	eax, eax
		mov	[ebp-908h], ecx
		mov	[ebp-904h], eax
		fild	qword ptr [ebp-908h]
		fstp	tbyte ptr [ebp-8F0h]

loc_48CE19:				; CODE XREF: .text:0048CDE0j
					; .text:0048CDF7j
		cmp	esi, 4
		jnz	short loc_48CE35
		fld	tbyte ptr [ebp-8F0h]
		xor	edx, edx
		mov	dl, [ebp-6C0h]
		fstp	dword ptr [ebp+edx-6E4h]
		jmp	short loc_48CE82
; ---------------------------------------------------------------------------

loc_48CE35:				; CODE XREF: .text:0048CE1Cj
		cmp	esi, 8
		jnz	short loc_48CE51
		fld	tbyte ptr [ebp-8F0h]
		xor	ecx, ecx
		mov	cl, [ebp-6C0h]
		fstp	qword ptr [ebp+ecx-6E4h]
		jmp	short loc_48CE82
; ---------------------------------------------------------------------------

loc_48CE51:				; CODE XREF: .text:0048CE38j
		xor	eax, eax
		mov	al, [ebp-6C0h]
		mov	edx, [ebp-8F0h]
		mov	[ebp+eax-6E4h],	edx
		mov	edx, [ebp-8ECh]
		mov	[ebp+eax-6E0h],	edx
		mov	dx, [ebp-8E8h]
		mov	[ebp+eax-6DCh],	dx

loc_48CE82:				; CODE XREF: .text:0048CE33j
					; .text:0048CE4Fj
		call	loc_411014
		push	esi		; n
		push	0FFh		; c
		xor	ecx, ecx
		mov	cl, [ebp-6C0h]
		lea	eax, [ebp-6D4h]
		add	ecx, eax
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, esi
		add	[ebp-6C0h], dl
		mov	dword ptr [ebp-6Ch], 1
		jmp	loc_48D0E7
; ---------------------------------------------------------------------------

loc_48CEBA:				; CODE XREF: .text:0048CCC7j
		cmp	dword ptr [ebp-84h], 0Ah
		jnz	loc_48D0A7
		cmp	dword ptr [ebp-6Ch], 0
		jle	short loc_48CF0D
		push	offset aDonTMixTextAnd ; "Don't mix text and floating constants"
		call	_T
		pop	ecx
		mov	[ebp-0E0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-0E4h], ecx
		cmp	dword ptr [ebp-0E4h], 0
		jz	short loc_48CF06
		mov	eax, [ebp-0E0h]
		push	eax		; src
		mov	edx, [ebp-0E4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48CF06:				; CODE XREF: .text:0048CEEEj
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CF0D:				; CODE XREF: .text:0048CECBj
		cmp	esi, 1
		jz	short loc_48CF57
		cmp	esi, 2
		jz	short loc_48CF57
		push	offset aCharacterSizeM ; "Character size must be 1 or 2	bytes"
		call	_T
		pop	ecx
		mov	[ebp-0E8h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-0ECh], edx
		cmp	dword ptr [ebp-0ECh], 0
		jz	short loc_48CF50
		mov	ecx, [ebp-0E8h]
		push	ecx		; src
		mov	eax, [ebp-0ECh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48CF50:				; CODE XREF: .text:0048CF38j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CF57:				; CODE XREF: .text:0048CF10j
					; .text:0048CF15j
		cmp	word ptr [ebp-8E6h], 0
		jnz	short loc_48CFA1
		push	offset aEmptryString ; "Emptry string"
		call	_T
		pop	ecx
		mov	[ebp-0F0h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-0F4h], edx
		cmp	dword ptr [ebp-0F4h], 0
		jz	short loc_48CF9A
		mov	ecx, [ebp-0F0h]
		push	ecx		; src
		mov	eax, [ebp-0F4h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48CF9A:				; CODE XREF: .text:0048CF82j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48CFA1:				; CODE XREF: .text:0048CF5Fj
		cmp	esi, 1
		jnz	short loc_48CFDC
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		lea	edx, [ebp-2C0h]
		push	40h		; cbMultiByte
		push	edx		; lpMultiByteStr
		lea	ecx, [ebp-8E6h]
		push	0FFFFFFFFh	; cchWideChar
		push	ecx		; lpWideCharStr
		mov	eax, asciicodepage
		push	0		; dwFlags
		push	eax		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_48CFF8
		cmp	byte ptr [ebp+ebx-2C1h], 0
		jnz	short loc_48CFF8
		dec	ebx
		jmp	short loc_48CFF8
; ---------------------------------------------------------------------------

loc_48CFDC:				; CODE XREF: .text:0048CFA4j
		lea	eax, [ebp-8E6h]
		lea	edx, [ebp-2C0h]
		push	eax		; src
		push	20h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		add	ebx, ebx

loc_48CFF8:				; CODE XREF: .text:0048CFCDj
					; .text:0048CFD7j ...
		xor	eax, eax
		mov	al, [ebp-6C0h]
		add	eax, ebx
		cmp	eax, 10h
		jle	short loc_48D047
		push	offset aTotalSizeOfThe ; "Total	size of	the constant exceeds 16	b"...
		call	_T
		pop	ecx
		mov	[ebp-0F8h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-0FCh], edx
		cmp	dword ptr [ebp-0FCh], 0
		jz	short loc_48D040
		mov	ecx, [ebp-0F8h]
		push	ecx		; src
		mov	eax, [ebp-0FCh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D040:				; CODE XREF: .text:0048D028j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D047:				; CODE XREF: .text:0048D005j
		mov	edx, esi
		lea	ecx, [ebp-2C0h]
		shl	edx, 18h
		xor	eax, eax
		or	edx, 60000000h
		mov	[ebp-6C4h], edx
		push	ebx		; n
		push	ecx		; src
		lea	edx, [ebp-6E4h]
		mov	al, [ebp-6C0h]
		add	eax, edx
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	ebx		; n
		push	0FFh		; c
		xor	ecx, ecx
		mov	cl, [ebp-6C0h]
		lea	eax, [ebp-6D4h]
		add	ecx, eax
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	[ebp-6C0h], bl
		mov	dword ptr [ebp-6Ch], 0FFFFFFFFh
		jmp	short loc_48D0E7
; ---------------------------------------------------------------------------

loc_48D0A7:				; CODE XREF: .text:0048CEC1j
		push	offset aInvalidConstan ; "Invalid constant"
		call	_T
		pop	ecx
		mov	[ebp-100h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-104h], edx
		cmp	dword ptr [ebp-104h], 0
		jz	short loc_48D0E0
		mov	ecx, [ebp-100h]
		push	ecx		; src
		mov	eax, [ebp-104h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D0E0:				; CODE XREF: .text:0048D0C8j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D0E7:				; CODE XREF: .text:0048CB59j
					; .text:0048CC8Ej ...
		push	offset ps	; ps
		call	Scan
		pop	ecx
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D108
		cmp	ps._mask, 2Ch
		jz	loc_48C986

loc_48D108:				; CODE XREF: .text:0048D0F9j
		mov	edx, [ebp-14h]
		mov	ecx, [ebp+10h]
		lea	esi, [ebp-6E4h]
		lea	edx, [edx+edx*2]
		lea	edx, [edx+edx*8]
		lea	edi, [ecx+edx*4]
		mov	ecx, 1Bh
		rep movsd
		mov	dword ptr [ebp-10h], 1
		jmp	loc_49132B
; ---------------------------------------------------------------------------

loc_48D130:				; CODE XREF: .text:0048C8FBj
					; .text:0048D5FEj
		cmp	dword_5EC0BE, 2
		jnz	loc_48D414
		push	(offset	ps.text+4) ; s
		call	__lwcsupr
		pop	ecx
		push	offset aRep_1	; "REP"
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48D1B3
		test	dword ptr [ebp-74h], 20600h
		jz	short loc_48D1A7
		push	offset aDuplicatedRepR ; "Duplicated REP/REPE/REPNE prefix"
		call	_T
		pop	ecx
		mov	[ebp-108h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-10Ch], eax
		cmp	dword ptr [ebp-10Ch], 0
		jz	short loc_48D1A0
		mov	edx, [ebp-108h]
		push	edx		; src
		mov	ecx, [ebp-10Ch]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48D1A0:				; CODE XREF: .text:0048D188j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D1A7:				; CODE XREF: .text:0048D165j
		or	dword ptr [ebp-74h], 400h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D1B3:				; CODE XREF: .text:0048D15Cj
		push	offset aRepe_3	; "REPE"
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_48D1DF
		push	offset aRepz	; "REPZ"
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48D234

loc_48D1DF:				; CODE XREF: .text:0048D1C7j
		test	dword ptr [ebp-74h], 20600h
		jz	short loc_48D228
		push	offset aDuplicatedRepR ; "Duplicated REP/REPE/REPNE prefix"
		call	_T
		pop	ecx
		mov	[ebp-110h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-114h], edx
		cmp	dword ptr [ebp-114h], 0
		jz	short loc_48D221
		mov	ecx, [ebp-110h]
		push	ecx		; src
		mov	eax, [ebp-114h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D221:				; CODE XREF: .text:0048D209j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D228:				; CODE XREF: .text:0048D1E6j
		or	dword ptr [ebp-74h], 20000h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D234:				; CODE XREF: .text:0048D1DDj
		push	offset aRepne_3	; "REPNE"
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_48D260
		push	offset aRepnz_0	; s2
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48D2B5

loc_48D260:				; CODE XREF: .text:0048D248j
		test	dword ptr [ebp-74h], 20600h
		jz	short loc_48D2A9
		push	offset aDuplicatedRepR ; "Duplicated REP/REPE/REPNE prefix"
		call	_T
		pop	ecx
		mov	[ebp-118h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-11Ch], edx
		cmp	dword ptr [ebp-11Ch], 0
		jz	short loc_48D2A2
		mov	ecx, [ebp-118h]
		push	ecx		; src
		mov	eax, [ebp-11Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D2A2:				; CODE XREF: .text:0048D28Aj
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D2A9:				; CODE XREF: .text:0048D267j
		or	dword ptr [ebp-74h], 200h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D2B5:				; CODE XREF: .text:0048D25Ej
		push	offset aLock_2	; s2
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48D31D
		test	byte ptr [ebp-73h], 1
		jz	short loc_48D311
		push	offset aDuplicatedLock ; "Duplicated LOCK prefix"
		call	_T
		pop	ecx
		mov	[ebp-120h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-124h], edx
		cmp	dword ptr [ebp-124h], 0
		jz	short loc_48D30A
		mov	ecx, [ebp-120h]
		push	ecx		; src
		mov	eax, [ebp-124h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D30A:				; CODE XREF: .text:0048D2F2j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D311:				; CODE XREF: .text:0048D2CFj
		or	dword ptr [ebp-74h], 100h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D31D:				; CODE XREF: .text:0048D2C9j
		push	offset aBht_0	; "BHT"
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48D385
		test	byte ptr [ebp-72h], 0Ch
		jz	short loc_48D379
		push	offset aDuplicatedJump ; src
		call	_T
		pop	ecx
		mov	[ebp-128h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-12Ch], edx
		cmp	dword ptr [ebp-12Ch], 0
		jz	short loc_48D372
		mov	ecx, [ebp-128h]
		push	ecx		; src
		mov	eax, [ebp-12Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D372:				; CODE XREF: .text:0048D35Aj
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D379:				; CODE XREF: .text:0048D337j
		or	dword ptr [ebp-74h], 40000h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D385:				; CODE XREF: .text:0048D331j
		push	offset aBhnt_1	; "BHNT"
		push	(offset	ps.text+4) ; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48D3ED
		test	byte ptr [ebp-72h], 0Ch
		jz	short loc_48D3E1
		push	offset aDuplicatedJump ; src
		call	_T
		pop	ecx
		mov	[ebp-130h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-134h], edx
		cmp	dword ptr [ebp-134h], 0
		jz	short loc_48D3DA
		mov	ecx, [ebp-130h]
		push	ecx		; src
		mov	eax, [ebp-134h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D3DA:				; CODE XREF: .text:0048D3C2j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D3E1:				; CODE XREF: .text:0048D39Fj
		or	dword ptr [ebp-74h], 80000h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D3ED:				; CODE XREF: .text:0048D399j
		push	(offset	ps.text+4) ; src
		push	100h		; n
		lea	edx, [ebp-4C0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, dword ptr ps.errmsg
		mov	[ebp-18h], ecx
		jmp	loc_48D603
; ---------------------------------------------------------------------------

loc_48D414:				; CODE XREF: .text:0048D137j
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D478
		cmp	ps._mask, 2Bh
		jnz	short loc_48D478
		test	byte ptr [ebp-72h], 0Ch
		jz	short loc_48D46C
		push	offset aDuplicatedJump ; src
		call	_T
		pop	ecx
		mov	[ebp-138h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-13Ch], eax
		cmp	dword ptr [ebp-13Ch], 0
		jz	short loc_48D465
		mov	edx, [ebp-138h]
		push	edx		; src
		mov	ecx, [ebp-13Ch]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48D465:				; CODE XREF: .text:0048D44Dj
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D46C:				; CODE XREF: .text:0048D42Aj
		or	dword ptr [ebp-74h], 40000h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D478:				; CODE XREF: .text:0048D41Bj
					; .text:0048D424j
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D4DC
		cmp	ps._mask, 2Dh
		jnz	short loc_48D4DC
		test	byte ptr [ebp-72h], 0Ch
		jz	short loc_48D4D0
		push	offset aDuplicatedJump ; src
		call	_T
		pop	ecx
		mov	[ebp-140h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-144h], edx
		cmp	dword ptr [ebp-144h], 0
		jz	short loc_48D4C9
		mov	ecx, [ebp-140h]
		push	ecx		; src
		mov	eax, [ebp-144h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D4C9:				; CODE XREF: .text:0048D4B1j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D4D0:				; CODE XREF: .text:0048D48Ej
		or	dword ptr [ebp-74h], 80000h
		jmp	loc_48D5F3
; ---------------------------------------------------------------------------

loc_48D4DC:				; CODE XREF: .text:0048D47Fj
					; .text:0048D488j
		cmp	dword_5EC0BE, 7
		jnz	short loc_48D525
		push	offset aInvalidCharact ; "Invalid character"
		call	_T
		pop	ecx
		mov	[ebp-148h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-14Ch], edx
		cmp	dword ptr [ebp-14Ch], 0
		jz	short loc_48D51E
		mov	ecx, [ebp-148h]
		push	ecx		; src
		mov	eax, [ebp-14Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D51E:				; CODE XREF: .text:0048D506j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D525:				; CODE XREF: .text:0048D4E3j
		cmp	dword_5EC0BE, 8
		jnz	short loc_48D55B
		mov	edx, [ebp+1Ch]
		mov	[ebp-150h], edx
		cmp	dword ptr [ebp-150h], 0
		jz	short loc_48D554
		push	(offset	ps.errmsg+4) ; src
		mov	ecx, [ebp-150h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48D554:				; CODE XREF: .text:0048D53Ej
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D55B:				; CODE XREF: .text:0048D52Cj
		test	byte ptr [ebp+18h], 1
		jz	short loc_48D5B3
		cmp	dword ptr [ebp-74h], 0
		jz	short loc_48D5B3
		xor	edx, edx
		mov	[ebp-74h], edx
		mov	ecx, [ebp+8]
		mov	ps.src,	ecx
		mov	eax, [ebp+8]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	ps._length, eax
		push	offset ps	; ps
		call	Scan
		pop	ecx
		push	(offset	ps.text+4) ; src
		push	100h		; n
		lea	edx, [ebp-4C0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, dword ptr ps.errmsg
		mov	[ebp-18h], ecx
		jmp	short loc_48D603
; ---------------------------------------------------------------------------

loc_48D5B3:				; CODE XREF: .text:0048D55Fj
					; .text:0048D565j
		push	offset aCommandMnemoni ; "Command mnemonics expected"
		call	_T
		pop	ecx
		mov	[ebp-154h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-158h], eax
		cmp	dword ptr [ebp-158h], 0
		jz	short loc_48D5EC
		mov	edx, [ebp-154h]
		push	edx		; src
		mov	ecx, [ebp-158h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48D5EC:				; CODE XREF: .text:0048D5D4j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D5F3:				; CODE XREF: .text:0048D1AEj
					; .text:0048D22Fj ...
		push	offset ps	; ps
		call	Scan
		pop	ecx
		jmp	loc_48D130
; ---------------------------------------------------------------------------

loc_48D603:				; CODE XREF: .text:0048D40Fj
					; .text:0048D5B1j
		push	offset ps	; ps
		call	Scan
		pop	ecx
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D648
		cmp	ps._mask, 3Ah
		jnz	short loc_48D648
		mov	edx, [ebp-18h]
		mov	word ptr [ebp+edx*2-4C0h], 3Ah
		inc	dword ptr [ebp-18h]
		mov	ecx, [ebp-18h]
		mov	word ptr [ebp+ecx*2-4C0h], 0
		push	offset ps	; ps
		call	Scan
		pop	ecx

loc_48D648:				; CODE XREF: .text:0048D615j
					; .text:0048D61Ej
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D66C
		cmp	ps._mask, 28h
		jnz	short loc_48D66C
		mov	dword ptr [ebp-1Ch], 1
		push	offset ps	; ps
		call	Scan
		pop	ecx

loc_48D66C:				; CODE XREF: .text:0048D64Fj
					; .text:0048D658j
		xor	eax, eax
		mov	[ebp-20h], eax

loc_48D671:				; CODE XREF: .text:0048D8EAj
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D68E
		cmp	ps._mask, 2F2Fh
		jnz	short loc_48D68E
		xor	edx, edx
		mov	dword_5EC0BE, edx

loc_48D68E:				; CODE XREF: .text:0048D678j
					; .text:0048D684j
		cmp	dword_5EC0BE, 0
		jz	short loc_48D6B2
		cmp	dword_5EC0BE, 1
		jz	short loc_48D6B2
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D6FC
		cmp	ps._mask, 3Bh
		jnz	short loc_48D6FC

loc_48D6B2:				; CODE XREF: .text:0048D695j
					; .text:0048D69Ej
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_48D8F0
		push	offset aHlaRightParent ; "HLA: right parenthesis expected"
		call	_T
		pop	ecx
		mov	[ebp-15Ch], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-160h], ecx
		cmp	dword ptr [ebp-160h], 0
		jz	short loc_48D6F5
		mov	eax, [ebp-15Ch]
		push	eax		; src
		mov	edx, [ebp-160h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48D6F5:				; CODE XREF: .text:0048D6DDj
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D6FC:				; CODE XREF: .text:0048D6A7j
					; .text:0048D6B0j
		cmp	dword ptr [ebp-1Ch], 1
		jnz	short loc_48D749
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D749
		cmp	ps._mask, 29h
		jnz	short loc_48D749
		push	offset ps	; ps
		call	Scan
		pop	ecx
		cmp	dword_5EC0BE, 6
		jnz	loc_48D8F0
		cmp	ps._mask, 2F2Fh
		jnz	loc_48D8F0
		xor	edx, edx
		mov	dword_5EC0BE, edx
		jmp	loc_48D8F0
; ---------------------------------------------------------------------------

loc_48D749:				; CODE XREF: .text:0048D700j
					; .text:0048D709j ...
		cmp	dword_5EC0BE, 8
		jnz	short loc_48D77F
		mov	ecx, [ebp+1Ch]
		mov	[ebp-164h], ecx
		cmp	dword ptr [ebp-164h], 0
		jz	short loc_48D778
		push	(offset	ps.errmsg+4) ; src
		mov	eax, [ebp-164h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D778:				; CODE XREF: .text:0048D762j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D77F:				; CODE XREF: .text:0048D750j
		cmp	dword_5EC0BE, 7
		jnz	short loc_48D7C8
		push	offset aInvalidCharact ; "Invalid character"
		call	_T
		pop	ecx
		mov	[ebp-168h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-16Ch], edx
		cmp	dword ptr [ebp-16Ch], 0
		jz	short loc_48D7C1
		mov	ecx, [ebp-168h]
		push	ecx		; src
		mov	eax, [ebp-16Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D7C1:				; CODE XREF: .text:0048D7A9j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D7C8:				; CODE XREF: .text:0048D786j
		cmp	dword ptr [ebp-20h], 0
		jle	loc_48D8B1
		mov	edx, [ebp-20h]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		lea	edx, [ecx+edx*2]
		test	byte ptr [ebp+edx*8-6D0h], 0FFh
		jz	short loc_48D854
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D854
		cmp	ps._mask, 2Bh
		jz	short loc_48D814
		cmp	ps._mask, 2Dh
		jz	short loc_48D814
		cmp	ps._mask, 7Ch
		jz	short loc_48D814
		cmp	ps._mask, 2Ah
		jnz	short loc_48D854

loc_48D814:				; CODE XREF: .text:0048D7F7j
					; .text:0048D800j ...
		push	offset aInvalidRegiste ; "Invalid register operation"
		call	_T
		pop	ecx
		mov	[ebp-170h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-174h], eax
		cmp	dword ptr [ebp-174h], 0
		jz	short loc_48D84D
		mov	edx, [ebp-170h]
		push	edx		; src
		mov	ecx, [ebp-174h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48D84D:				; CODE XREF: .text:0048D835j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D854:				; CODE XREF: .text:0048D7E5j
					; .text:0048D7EEj ...
		cmp	dword_5EC0BE, 6
		jnz	short loc_48D866
		cmp	ps._mask, 2Ch
		jz	short loc_48D8A6

loc_48D866:				; CODE XREF: .text:0048D85Bj
		push	offset aCommaBetweenOp ; "Comma	between	operands expected"
		call	_T
		pop	ecx
		mov	[ebp-178h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-17Ch], edx
		cmp	dword ptr [ebp-17Ch], 0
		jz	short loc_48D89F
		mov	ecx, [ebp-178h]
		push	ecx		; src
		mov	eax, [ebp-17Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D89F:				; CODE XREF: .text:0048D887j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D8A6:				; CODE XREF: .text:0048D864j
		push	offset ps	; ps
		call	Scan
		pop	ecx

loc_48D8B1:				; CODE XREF: .text:0048D7CCj
		mov	edx, [ebp-30h]
		push	edx		; int
		mov	ecx, [ebp+1Ch]
		push	ecx		; dst
		mov	eax, [ebp-20h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		lea	eax, [edx+eax*2]
		shl	eax, 3
		lea	ecx, [ebp-678h]
		add	eax, ecx
		push	eax		; s
		call	loc_48A7B0
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_48D8E3
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D8E3:				; CODE XREF: .text:0048D8DAj
		inc	dword ptr [ebp-20h]
		cmp	dword ptr [ebp-20h], 5
		jl	loc_48D671

loc_48D8F0:				; CODE XREF: .text:0048D6B6j
					; .text:0048D726j ...
		cmp	dword ptr [ebp-20h], 4
		jle	short loc_48D936
		push	offset aTooManyOperand ; "Too many operands"
		call	_T
		pop	ecx
		mov	[ebp-180h], eax
		mov	edx, [ebp+1Ch]
		mov	[ebp-184h], edx
		cmp	dword ptr [ebp-184h], 0
		jz	short loc_48D92F
		mov	ecx, [ebp-180h]
		push	ecx		; src
		mov	eax, [ebp-184h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48D92F:				; CODE XREF: .text:0048D917j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48D936:				; CODE XREF: .text:0048D8F4j
		lea	edx, [ebp-4C0h]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		mov	dword ptr [ebp-9Ch], offset bincmd
		jmp	loc_490CAC
; ---------------------------------------------------------------------------

loc_48D957:				; CODE XREF: .text:00490CB5j
		xor	eax, eax
		mov	[ebp-24h], eax
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+18h]
		mov	[ebp-68h], ecx
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+7], 8
		jnz	short loc_48D999
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx]
		push	ecx		; s2
		lea	eax, [ebp-4C0h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_490CA5
		jmp	loc_48DB72
; ---------------------------------------------------------------------------

loc_48D999:				; CODE XREF: .text:0048D972j
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+4], 40h
		jz	loc_48DAC4
		xor	ecx, ecx
		mov	[ebp-8], ecx

loc_48D9AE:				; CODE XREF: .text:0048D9D5j
		mov	eax, [ebp-9Ch]
		mov	edx, [eax]
		mov	ecx, [ebp-8]
		cmp	word ptr [edx+ecx*2], 2Ah
		jz	short loc_48D9D7
		mov	eax, [ebp-9Ch]
		mov	edx, [eax]
		mov	ecx, [ebp-8]
		cmp	word ptr [edx+ecx*2], 0
		jz	short loc_48D9D7
		inc	dword ptr [ebp-8]
		jmp	short loc_48D9AE
; ---------------------------------------------------------------------------

loc_48D9D7:				; CODE XREF: .text:0048D9BEj
					; .text:0048D9D0j
		mov	eax, [ebp-9Ch]
		mov	edx, [eax]
		mov	ecx, [ebp-8]
		cmp	word ptr [edx+ecx*2], 0
		jz	loc_490CA5
		mov	eax, [ebp-8]
		cmp	eax, [ebp-18h]
		jge	loc_490CA5
		mov	edx, [ebp-8]
		push	edx		; maxlen
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx]
		push	eax		; s2
		lea	edx, [ebp-4C0h]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_490CA5
		mov	esi, 1Fh
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+9], 1
		jnz	short loc_48DA31
		add	esi, 0FFFFFFE8h

loc_48DA31:				; CODE XREF: .text:0048DA2Cj
		lea	edx, off_530090[esi*4]
		test	esi, esi
		mov	[ebp-260h], edx
		jl	short loc_48DAB4

loc_48DA42:				; CODE XREF: .text:0048DAB2j
		mov	ecx, [ebp-260h]
		mov	eax, [ecx]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		push	ebx		; maxlen
		mov	eax, [ebp-260h]
		mov	edx, [eax]
		push	edx		; s2
		mov	ecx, [ebp-8]
		add	ecx, ecx
		lea	eax, [ebp-4C0h]
		add	ecx, eax
		push	ecx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_48DAA8
		mov	edx, [ebp-9Ch]
		mov	eax, [ebp-8]
		add	eax, eax
		add	ebx, ebx
		mov	ecx, [edx]
		add	ecx, eax
		add	ecx, 2
		push	ecx		; s2
		lea	ecx, [ebp-4C0h]
		mov	edx, [ebp-8]
		add	edx, edx
		add	edx, ebx
		add	edx, ecx
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_48DAB4

loc_48DAA8:				; CODE XREF: .text:0048DA75j
		dec	esi
		add	dword ptr [ebp-260h], 0FFFFFFFCh
		test	esi, esi
		jge	short loc_48DA42

loc_48DAB4:				; CODE XREF: .text:0048DA40j
					; .text:0048DAA6j
		test	esi, esi
		jl	loc_490CA5
		mov	[ebp-68h], esi
		jmp	loc_48DB72
; ---------------------------------------------------------------------------

loc_48DAC4:				; CODE XREF: .text:0048D9A3j
		mov	eax, [ebp-9Ch]
		mov	edx, [eax]
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 2
		jl	loc_490CA5
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp-18h]
		jl	loc_490CA5
		mov	eax, [ebp-8]
		dec	eax
		push	eax		; maxlen
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx]
		push	ecx		; s2
		lea	eax, [ebp-4C0h]
		push	eax		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_490CA5
		mov	edx, [ebp-8]
		cmp	word ptr [ebp+edx*2-4C2h], 44h
		jnz	short loc_48DB28
		mov	dword ptr [ebp-24h], 4
		jmp	short loc_48DB72
; ---------------------------------------------------------------------------

loc_48DB28:				; CODE XREF: .text:0048DB1Dj
		mov	ecx, [ebp-8]
		cmp	word ptr [ebp+ecx*2-4C2h], 57h
		jnz	short loc_48DB43
		mov	dword ptr [ebp-24h], 2
		or	dword ptr [ebp-74h], 40h
		jmp	short loc_48DB72
; ---------------------------------------------------------------------------

loc_48DB43:				; CODE XREF: .text:0048DB34j
		mov	eax, [ebp-8]
		cmp	word ptr [ebp+eax*2-4C2h], 0
		jnz	loc_490CA5
		cmp	dword_5BDCF8, 0
		jnz	short loc_48DB6B
		mov	dword ptr [ebp-24h], 2
		or	dword ptr [ebp-74h], 40h
		jmp	short loc_48DB72
; ---------------------------------------------------------------------------

loc_48DB6B:				; CODE XREF: .text:0048DB5Cj
		mov	dword ptr [ebp-24h], 4

loc_48DB72:				; CODE XREF: .text:0048D994j
					; .text:0048DABFj ...
		and	dword ptr [ebp-7Ch], 7FFFFFFFh
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+4]
		and	ecx, 1Fh
		cmp	ecx, 1Eh
		jnz	short loc_48DB9C
		test	byte ptr [ebp+18h], 1
		jnz	short loc_48DB9C
		or	dword ptr [ebp-7Ch], 2000000h
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DB9C:				; CODE XREF: .text:0048DB88j
					; .text:0048DB8Ej
		test	byte ptr [ebp-72h], 0Ch
		jz	short loc_48DBBA
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+6], 2
		jnz	short loc_48DBBA
		or	dword ptr [ebp-7Ch], 200000h
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DBBA:				; CODE XREF: .text:0048DBA0j
					; .text:0048DBACj
		test	byte ptr [ebp-73h], 4
		jz	short loc_48DBE0
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+4]
		and	ecx, 0F000h
		cmp	ecx, 8000h
		jz	short loc_48DBE0
		or	dword ptr [ebp-7Ch], 8
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DBE0:				; CODE XREF: .text:0048DBBEj
					; .text:0048DBD5j
		test	byte ptr [ebp-72h], 2
		jz	short loc_48DC06
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		and	edx, 0F000h
		cmp	edx, 9000h
		jz	short loc_48DC06
		or	dword ptr [ebp-7Ch], 8
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DC06:				; CODE XREF: .text:0048DBE4j
					; .text:0048DBFBj
		test	byte ptr [ebp-73h], 2
		jz	short loc_48DC2A
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		and	eax, 0F000h
		cmp	eax, 0A000h
		jz	short loc_48DC2A
		or	dword ptr [ebp-7Ch], 8
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DC2A:				; CODE XREF: .text:0048DC0Aj
					; .text:0048DC1Fj
		test	byte ptr [ebp-73h], 1
		jz	short loc_48DC48
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+9], 1
		jz	short loc_48DC48
		or	dword ptr [ebp-7Ch], 1000000h
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DC48:				; CODE XREF: .text:0048DC2Ej
					; .text:0048DC3Aj
		test	dword ptr [ebp-74h], 20600h
		jz	short loc_48DC66
		mov	ecx, [ebp-9Ch]
		test	byte ptr [ecx+9], 1
		jz	short loc_48DC66
		or	dword ptr [ebp-7Ch], 8
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DC66:				; CODE XREF: .text:0048DC4Fj
					; .text:0048DC5Bj
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+5], 2
		jz	short loc_48DC7B
		mov	dword ptr [ebp-24h], 4
		jmp	short loc_48DC8E
; ---------------------------------------------------------------------------

loc_48DC7B:				; CODE XREF: .text:0048DC70j
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+5], 1
		jz	short loc_48DC8E
		mov	dword ptr [ebp-24h], 2

loc_48DC8E:				; CODE XREF: .text:0048DC79j
					; .text:0048DC85j
		xor	ecx, ecx
		xor	esi, esi
		mov	[ebp-34h], ecx

loc_48DC95:				; CODE XREF: .text:0048DCCAj
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+esi*4+1Fh], 40h
		jnz	short loc_48DCC6
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+esi*4+1Ch], 0FFh
		jz	short loc_48DCCC
		mov	ecx, [ebp-9Ch]
		mov	edx, [ebp-34h]
		mov	eax, [ecx+esi*4+1Ch]
		mov	[ebp+edx*4-280h], eax
		inc	dword ptr [ebp-34h]

loc_48DCC6:				; CODE XREF: .text:0048DCA0j
		inc	esi
		cmp	esi, 4
		jl	short loc_48DC95

loc_48DCCC:				; CODE XREF: .text:0048DCADj
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_48DCEF
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		and	eax, 1Fh
		cmp	eax, 1Dh
		jnz	short loc_48DCEF
		or	dword ptr [ebp-7Ch], 4000000h
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DCEF:				; CODE XREF: .text:0048DCD0j
					; .text:0048DCE1j
		mov	edx, [ebp-20h]
		cmp	edx, [ebp-34h]
		jz	short loc_48DD00
		or	dword ptr [ebp-7Ch], 10h
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48DD00:				; CODE XREF: .text:0048DCF5j
		xor	ecx, ecx
		xor	edx, edx
		mov	[ebp-80h], ecx
		xor	ecx, ecx
		mov	eax, [ebp-24h]
		xor	esi, esi
		mov	[ebp-28h], eax
		mov	[ebp-2Ch], edx
		mov	[ebp-64h], ecx
		lea	eax, [ebp-280h]
		mov	[ebp-260h], eax
		cmp	esi, [ebp-20h]
		jge	loc_48F303

loc_48DD2C:				; CODE XREF: .text:0048F2FDj
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48DD3E
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+7], 4
		jz	short loc_48DD51

loc_48DD3E:				; CODE XREF: .text:0048DD30j
		lea	eax, [esi+esi*4]
		lea	eax, [esi+eax*2]
		shl	eax, 3
		lea	edx, [ebp-678h]
		add	eax, edx
		jmp	short loc_48DD67
; ---------------------------------------------------------------------------

loc_48DD51:				; CODE XREF: .text:0048DD3Cj
		mov	ecx, [ebp-20h]
		sub	ecx, esi
		lea	eax, [ecx+ecx*4]
		lea	eax, [ecx+eax*2]
		shl	eax, 3
		lea	edx, [ebp-6D0h]
		add	eax, edx

loc_48DD67:				; CODE XREF: .text:0048DD4Fj
		mov	ecx, [ebp-260h]
		mov	edx, [ecx]
		mov	[ebp-84h], edx
		mov	[eax+50h], edx
		test	byte ptr [eax+3], 80h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 1
		jnz	short loc_48DD9D
		test	byte ptr [ebp-82h], 50h
		jz	short loc_48DD9D
		or	dword ptr [ebp-7Ch], 400h
		jmp	loc_48F303
; ---------------------------------------------------------------------------

loc_48DD9D:				; CODE XREF: .text:0048DD86j
					; .text:0048DD8Fj
		test	byte ptr [eax],	0FFh
		jnz	short loc_48DDB7
		test	byte ptr [ebp-82h], 0A0h
		jz	short loc_48DDB7
		or	dword ptr [ebp-7Ch], 200h
		jmp	loc_48F303
; ---------------------------------------------------------------------------

loc_48DDB7:				; CODE XREF: .text:0048DDA0j
					; .text:0048DDA9j
		mov	ecx, [ebp-84h]
		and	ecx, 0FFh
		cmp	ecx, 24h
		jz	short loc_48DDDA
		cmp	dword ptr [eax+44h], 0
		jz	short loc_48DDDA
		or	dword ptr [ebp-7Ch], 40000h
		jmp	loc_48F303
; ---------------------------------------------------------------------------

loc_48DDDA:				; CODE XREF: .text:0048DDC6j
					; .text:0048DDCCj
		mov	edx, [ebp-84h]
		and	edx, 0FFh
		cmp	edx, 24h
		jnz	short loc_48DE03
		cmp	dword ptr [eax+44h], 1
		jz	short loc_48DE03
		test	byte ptr [eax+3], 40h
		jnz	short loc_48DE03
		or	dword ptr [ebp-7Ch], 40000h
		jmp	loc_48F303
; ---------------------------------------------------------------------------

loc_48DE03:				; CODE XREF: .text:0048DDE9j
					; .text:0048DDEFj ...
		cmp	dword ptr [eax+4], 4
		jz	short loc_48DE1E
		test	byte ptr [ebp-81h], 1
		jz	short loc_48DE1E
		or	dword ptr [ebp-7Ch], 1000h
		jmp	loc_48F303
; ---------------------------------------------------------------------------

loc_48DE1E:				; CODE XREF: .text:0048DE07j
					; .text:0048DE10j
		mov	ecx, [ebp-84h]
		and	ecx, 0F0000h
		cmp	ecx, 80000h
		jnz	short loc_48DE6C
		mov	edx, [ebp-84h]
		and	edx, 0FFh
		cmp	edx, 6Dh
		jnz	short loc_48DE49
		test	byte ptr [eax+8], 0Ah
		jnz	short loc_48DE60

loc_48DE49:				; CODE XREF: .text:0048DE41j
		mov	ecx, [ebp-84h]
		and	ecx, 0FFh
		cmp	ecx, 6Dh
		jz	short loc_48DE92
		test	byte ptr [eax+8], 9
		jz	short loc_48DE92

loc_48DE60:				; CODE XREF: .text:0048DE47j
		or	dword ptr [ebp-7Ch], 800h
		jmp	loc_48F303
; ---------------------------------------------------------------------------

loc_48DE6C:				; CODE XREF: .text:0048DE30j
		mov	edx, [ebp-84h]
		and	edx, 0F0000h
		cmp	edx, 90000h
		jnz	short loc_48DE92
		test	byte ptr [eax+8], 5
		jz	short loc_48DE92
		or	dword ptr [ebp-7Ch], 800h
		jmp	loc_48F303
; ---------------------------------------------------------------------------

loc_48DE92:				; CODE XREF: .text:0048DE58j
					; .text:0048DE5Ej ...
		mov	ecx, [ebp-84h]
		and	ecx, 0FFh
		cmp	ecx, 85h	; switch 134 cases
		ja	loc_48F2B2	; jumptable 0048DEAA default case
		jmp	ds:off_48DEB1[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_48DEB1	dd offset loc_48F2B2, offset loc_48E0C9, offset	loc_48F2A9
					; DATA XREF: .text:0048DEAAr
		dd offset loc_48E107, offset loc_48E183, offset	loc_48F2A9 ; jump table	for switch statement
		dd offset loc_48E1B1, offset loc_48E208, offset	loc_48E145
		dd offset loc_48F2A9, offset loc_48F2A9, offset	loc_48F2A9
		dd offset loc_48E22D, offset loc_48F2A9, offset	loc_48F2A9
		dd offset loc_48F2A9, offset loc_48E28D, offset	loc_48E2E1
		dd offset loc_48E303, offset loc_48E325, offset	loc_48E373
		dd offset loc_48F2F2, offset loc_48E3BE, offset	loc_48E415
		dd offset loc_48E444, offset loc_48E473, offset	loc_48E4A2
		dd offset loc_48E4F3, offset loc_48E520, offset	loc_48E54D
		dd offset loc_48E593, offset loc_48E5E6, offset	loc_48E647
		dd offset loc_48E6A8, offset loc_48E71F, offset	loc_48E76D
		dd offset loc_48E7D1, offset loc_48F2A9, offset	loc_48E83B
		dd offset loc_48E85E, offset loc_48F2A9, offset	loc_48F2A9
		dd offset loc_48F2A9, offset loc_48F2A9, offset	loc_48F2A9
		dd offset loc_48F2A9, offset loc_48F2A9, offset	loc_48F2A9
		dd offset loc_48F2A9, offset loc_48E874, offset	loc_48E889
		dd offset loc_48E8AB, offset loc_48E8F5, offset	loc_48E93F
		dd offset loc_48E989, offset loc_48E9D3, offset	loc_48EA1D
		dd offset loc_48EA67, offset loc_48EA7C, offset	loc_48EAA1
		dd offset loc_48EAC6, offset loc_48EAF3, offset	loc_48EB20
		dd offset loc_48EB20, offset loc_48EB4D, offset	loc_48EB62
		dd offset loc_48F2A9, offset loc_48EB4D, offset	loc_48EB62
		dd offset loc_48EB4D, offset loc_48EB62, offset	loc_48EB4D
		dd offset loc_48EB62, offset loc_48EB4D, offset	loc_48EB62
		dd offset loc_48EB91, offset loc_48EB91, offset	loc_48EB91
		dd offset loc_48EBB6, offset loc_48EBB6, offset	loc_48EBB6
		dd offset loc_48EC15, offset loc_48EC7A, offset	loc_48ED51
		dd offset loc_48EBB6, offset loc_48EBB6, offset	loc_48EC15
		dd offset loc_48EE0B, offset loc_48EBB6, offset	loc_48EC15
		dd offset loc_48F2A9, offset loc_48ED51, offset	loc_48EC7A
		dd offset loc_48ED04, offset loc_48EBB6, offset	loc_48EC15
		dd offset loc_48ED51, offset loc_48EC7A, offset	loc_48EBB6
		dd offset loc_48EBB6, offset loc_48EBB6, offset	loc_48EC15
		dd offset loc_48ED51, offset loc_48EBB6, offset	loc_48EC15
		dd offset loc_48EBB6, offset loc_48F2A9, offset	loc_48F2A9
		dd offset loc_48EE95, offset loc_48EEC2, offset	loc_48EEEF
		dd offset loc_48EF76, offset loc_48EFA3, offset	loc_48EFD3
		dd offset loc_48F01C, offset loc_48F056, offset	loc_48F090
		dd offset loc_48F138, offset loc_48F1C6, offset	loc_48F28A
		dd offset loc_48F2A9, offset loc_48F298, offset	loc_48F2A9
		dd offset loc_48F2A9, offset loc_48F2A9, offset	loc_48EBB6
		dd offset loc_48EBB6, offset loc_48EBB6, offset	loc_48EBB6
		dd offset loc_48EBB6, offset loc_48EBB6, offset	loc_48EBB6
		dd offset loc_48EBB6, offset loc_48EBB6
; ---------------------------------------------------------------------------

loc_48E0C9:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 1
		jnz	short loc_48E0DA
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_48E0E1
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E0E1

loc_48E0DA:				; CODE XREF: .text:0048E0CCj
		or	dword ptr [ebp-80h], 2000h

loc_48E0E1:				; CODE XREF: .text:0048E0D2j
					; .text:0048E0D8j
		cmp	dword ptr [eax+4], 1
		jz	short loc_48E0EE
		or	dword ptr [ebp-80h], 1000h

loc_48E0EE:				; CODE XREF: .text:0048E0E5j
		test	byte ptr [ebp-81h], 40h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 40000000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E107:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 3
		jnz	short loc_48E118
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_48E11F
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E11F

loc_48E118:				; CODE XREF: .text:0048E10Aj
		or	dword ptr [ebp-80h], 2000h

loc_48E11F:				; CODE XREF: .text:0048E110j
					; .text:0048E116j
		cmp	dword ptr [eax+4], 2
		jz	short loc_48E12C
		or	dword ptr [ebp-80h], 1000h

loc_48E12C:				; CODE XREF: .text:0048E123j
		test	byte ptr [ebp-81h], 40h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 40000000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E145:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 8
		jnz	short loc_48E156
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_48E15D
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E15D

loc_48E156:				; CODE XREF: .text:0048E148j
		or	dword ptr [ebp-80h], 2000h

loc_48E15D:				; CODE XREF: .text:0048E14Ej
					; .text:0048E154j
		cmp	dword ptr [eax+4], 4
		jz	short loc_48E16A
		or	dword ptr [ebp-80h], 1000h

loc_48E16A:				; CODE XREF: .text:0048E161j
		test	byte ptr [ebp-81h], 40h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 40000000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E183:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 4
		jnz	short loc_48E194
		cmp	dword ptr [eax+0Ch], 1
		jz	short loc_48E19B
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E19B

loc_48E194:				; CODE XREF: .text:0048E186j
		or	dword ptr [ebp-80h], 2000h

loc_48E19B:				; CODE XREF: .text:0048E18Cj
					; .text:0048E192j
		cmp	dword ptr [eax+4], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E1B1:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 6
		jnz	short loc_48E1C2
		cmp	dword ptr [eax+0Ch], 2
		jz	short loc_48E1C9
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E1C9

loc_48E1C2:				; CODE XREF: .text:0048E1B4j
		or	dword ptr [ebp-80h], 2000h

loc_48E1C9:				; CODE XREF: .text:0048E1BAj
					; .text:0048E1C0j
		cmp	dword ptr [eax+4], 2
		jz	short loc_48E1D6
		or	dword ptr [ebp-80h], 1000h

loc_48E1D6:				; CODE XREF: .text:0048E1CDj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E1F2
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 2
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E1F2:				; CODE XREF: .text:0048E1DAj
		cmp	dword ptr [ebp-28h], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E208:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 7
		jnz	short loc_48E221
		cmp	dword ptr [eax+0Ch], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+0Ch], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21

loc_48E221:				; CODE XREF: .text:0048E20Bj
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E22D:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 12
		jnz	short loc_48E23E
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_48E245
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_48E245

loc_48E23E:				; CODE XREF: .text:0048E230j
		or	dword ptr [ebp-80h], 2000h

loc_48E245:				; CODE XREF: .text:0048E236j
					; .text:0048E23Cj
		cmp	dword ptr [eax+4], 1
		jnz	short loc_48E25E
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+4], 20h
		jnz	short loc_48E25E
		or	dword ptr [ebp-80h], 1000h

loc_48E25E:				; CODE XREF: .text:0048E249j
					; .text:0048E255j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E26C
		mov	eax, [eax+4]
		mov	[ebp-28h], eax
		jmp	short loc_48E281
; ---------------------------------------------------------------------------

loc_48E26C:				; CODE XREF: .text:0048E262j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E281
		mov	ecx, [eax+4]
		cmp	ecx, [ebp-28h]
		jz	short loc_48E281
		or	dword ptr [ebp-80h], 20000h

loc_48E281:				; CODE XREF: .text:0048E26Aj
					; .text:0048E270j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E28D:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 16
		jz	short loc_48E299
		or	dword ptr [ebp-80h], 2000h

loc_48E299:				; CODE XREF: .text:0048E290j
		cmp	dword ptr [eax+4], 1
		jnz	short loc_48E2B2
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+4], 20h
		jnz	short loc_48E2B2
		or	dword ptr [ebp-80h], 1000h

loc_48E2B2:				; CODE XREF: .text:0048E29Dj
					; .text:0048E2A9j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E2C0
		mov	eax, [eax+4]
		mov	[ebp-28h], eax
		jmp	short loc_48E2D5
; ---------------------------------------------------------------------------

loc_48E2C0:				; CODE XREF: .text:0048E2B6j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E2D5
		mov	ecx, [eax+4]
		cmp	ecx, [ebp-28h]
		jz	short loc_48E2D5
		or	dword ptr [ebp-80h], 20000h

loc_48E2D5:				; CODE XREF: .text:0048E2BEj
					; .text:0048E2C4j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E2E1:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 17
		jz	short loc_48E2ED
		or	dword ptr [ebp-80h], 2000h

loc_48E2ED:				; CODE XREF: .text:0048E2E4j
		cmp	dword ptr [eax+4], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E303:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 18
		jz	short loc_48E30F
		or	dword ptr [ebp-80h], 2000h

loc_48E30F:				; CODE XREF: .text:0048E306j
		cmp	dword ptr [eax+4], 4
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E325:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 19
		jz	short loc_48E331
		or	dword ptr [ebp-80h], 2000h

loc_48E331:				; CODE XREF: .text:0048E328j
		cmp	dword ptr [eax+4], 2
		jz	short loc_48E344
		cmp	dword ptr [eax+4], 4
		jz	short loc_48E344
		or	dword ptr [ebp-80h], 1000h

loc_48E344:				; CODE XREF: .text:0048E335j
					; .text:0048E33Bj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E352
		mov	eax, [eax+4]
		mov	[ebp-28h], eax
		jmp	short loc_48E367
; ---------------------------------------------------------------------------

loc_48E352:				; CODE XREF: .text:0048E348j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E367
		mov	edx, [eax+4]
		cmp	edx, [ebp-28h]
		jz	short loc_48E367
		or	dword ptr [ebp-80h], 20000h

loc_48E367:				; CODE XREF: .text:0048E350j
					; .text:0048E356j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E373:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 1 ; jumptable 0048DEAA	case 20
		jz	short loc_48E37F
		or	dword ptr [ebp-80h], 2000h

loc_48E37F:				; CODE XREF: .text:0048E376j
		cmp	dword ptr [eax+4], 1
		jz	short loc_48E38C
		or	dword ptr [ebp-80h], 1000h

loc_48E38C:				; CODE XREF: .text:0048E383j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E3A8
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E3A8:				; CODE XREF: .text:0048E390j
		cmp	dword ptr [ebp-28h], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E3BE:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	dword ptr [eax], 101h ;	jumptable 0048DEAA case	22
		jnz	short loc_48E3CD
		or	dword ptr [ebp-80h], 2000h

loc_48E3CD:				; CODE XREF: .text:0048E3C4j
		cmp	dword ptr [eax+4], 1
		jnz	short loc_48E3E6
		mov	ecx, [ebp-9Ch]
		test	byte ptr [ecx+4], 20h
		jnz	short loc_48E3E6
		or	dword ptr [ebp-80h], 1000h

loc_48E3E6:				; CODE XREF: .text:0048E3D1j
					; .text:0048E3DDj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E3F4
		mov	eax, [eax+4]
		mov	[ebp-28h], eax
		jmp	short loc_48E409
; ---------------------------------------------------------------------------

loc_48E3F4:				; CODE XREF: .text:0048E3EAj
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E409
		mov	edx, [eax+4]
		cmp	edx, [ebp-28h]
		jz	short loc_48E409
		or	dword ptr [ebp-80h], 20000h

loc_48E409:				; CODE XREF: .text:0048E3F2j
					; .text:0048E3F8j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E415:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	dword ptr [eax], 101h ;	jumptable 0048DEAA case	23
		jnz	short loc_48E424
		or	dword ptr [ebp-80h], 2000h

loc_48E424:				; CODE XREF: .text:0048E41Bj
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E444:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	dword ptr [eax], 101h ;	jumptable 0048DEAA case	24
		jnz	short loc_48E453
		or	dword ptr [ebp-80h], 2000h

loc_48E453:				; CODE XREF: .text:0048E44Aj
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E473:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	dword ptr [eax], 101h ;	jumptable 0048DEAA case	25
		jnz	short loc_48E482
		or	dword ptr [ebp-80h], 2000h

loc_48E482:				; CODE XREF: .text:0048E479j
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 4
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E4A2:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	dword ptr [eax], 101h ;	jumptable 0048DEAA case	26
		jnz	short loc_48E4B1
		or	dword ptr [ebp-80h], 2000h

loc_48E4B1:				; CODE XREF: .text:0048E4A8j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E4C4
		cmp	dword ptr [eax+4], 1
		jnz	short loc_48E4C4
		or	dword ptr [ebp-80h], 1000h

loc_48E4C4:				; CODE XREF: .text:0048E4B5j
					; .text:0048E4BBj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E4D2
		mov	ecx, [eax+4]
		mov	[ebp-28h], ecx
		jmp	short loc_48E4E7
; ---------------------------------------------------------------------------

loc_48E4D2:				; CODE XREF: .text:0048E4C8j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E4E7
		mov	eax, [eax+4]
		cmp	eax, [ebp-28h]
		jz	short loc_48E4E7
		or	dword ptr [ebp-80h], 20000h

loc_48E4E7:				; CODE XREF: .text:0048E4D0j
					; .text:0048E4D6j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E4F3:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 27
		jnz	short loc_48E500
		or	dword ptr [ebp-80h], 2000h

loc_48E500:				; CODE XREF: .text:0048E4F7j
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E520:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 28
		jnz	short loc_48E52D
		or	dword ptr [ebp-80h], 2000h

loc_48E52D:				; CODE XREF: .text:0048E524j
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 10h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E54D:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	edx, [eax]	; jumptable 0048DEAA case 29
		and	edx, 80100h
		cmp	edx, 100h
		jz	short loc_48E564
		or	dword ptr [ebp-80h], 2000h

loc_48E564:				; CODE XREF: .text:0048E55Bj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E572
		mov	ecx, [eax+4]
		mov	[ebp-28h], ecx
		jmp	short loc_48E587
; ---------------------------------------------------------------------------

loc_48E572:				; CODE XREF: .text:0048E568j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E587
		mov	eax, [eax+4]
		cmp	eax, [ebp-28h]
		jz	short loc_48E587
		or	dword ptr [ebp-80h], 20000h

loc_48E587:				; CODE XREF: .text:0048E570j
					; .text:0048E576j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E593:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 30
		jnz	short loc_48E5A0
		or	dword ptr [ebp-80h], 2000h

loc_48E5A0:				; CODE XREF: .text:0048E597j
		cmp	dword ptr [eax+4], 1
		jnz	short loc_48E5AD
		or	dword ptr [ebp-80h], 1000h

loc_48E5AD:				; CODE XREF: .text:0048E5A4j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E5BB
		mov	edx, [eax+4]
		mov	[ebp-28h], edx
		jmp	short loc_48E5DA
; ---------------------------------------------------------------------------

loc_48E5BB:				; CODE XREF: .text:0048E5B1j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E5DA
		mov	ecx, [eax+4]
		cmp	ecx, [ebp-28h]
		jz	short loc_48E5DA
		mov	edx, [ebp-28h]
		add	edx, edx
		cmp	edx, [eax+4]
		jz	short loc_48E5DA
		or	dword ptr [ebp-80h], 20000h

loc_48E5DA:				; CODE XREF: .text:0048E5B9j
					; .text:0048E5BFj ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E5E6:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 31
		jnz	short loc_48E5F3
		or	dword ptr [ebp-80h], 2000h

loc_48E5F3:				; CODE XREF: .text:0048E5EAj
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E612
		cmp	dword ptr [eax+4], 4
		jz	short loc_48E612
		cmp	dword ptr [eax+4], 6
		jz	short loc_48E612
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_48E612
		or	dword ptr [ebp-80h], 1000h

loc_48E612:				; CODE XREF: .text:0048E5F7j
					; .text:0048E5FDj ...
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E63B
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E629
		mov	eax, [eax+4]
		add	eax, 0FFFFFFFEh
		mov	[ebp-28h], eax
		jmp	short loc_48E63B
; ---------------------------------------------------------------------------

loc_48E629:				; CODE XREF: .text:0048E61Cj
		mov	ecx, [eax+4]
		add	ecx, 0FFFFFFFEh
		cmp	ecx, [ebp-28h]
		jz	short loc_48E63B
		or	dword ptr [ebp-80h], 20000h

loc_48E63B:				; CODE XREF: .text:0048E616j
					; .text:0048E627j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E647:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+3], 40h ;	jumptable 0048DEAA case	32
		jnz	short loc_48E666
		test	byte ptr [eax+1], 1
		jz	short loc_48E65F
		cmp	dword ptr [eax+40h], 1
		jnz	short loc_48E65F
		cmp	dword ptr [eax+30h], 1
		jz	short loc_48E666

loc_48E65F:				; CODE XREF: .text:0048E651j
					; .text:0048E657j
		or	dword ptr [ebp-80h], 2000h

loc_48E666:				; CODE XREF: .text:0048E64Bj
					; .text:0048E65Dj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E674
		mov	edx, [eax+4]
		mov	[ebp-28h], edx
		jmp	short loc_48E689
; ---------------------------------------------------------------------------

loc_48E674:				; CODE XREF: .text:0048E66Aj
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E689
		mov	ecx, [eax+4]
		cmp	ecx, [ebp-28h]
		jz	short loc_48E689
		or	dword ptr [ebp-80h], 20000h

loc_48E689:				; CODE XREF: .text:0048E672j
					; .text:0048E678j ...
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_48E69C
		cmp	dword ptr [eax+10h], 0
		jz	short loc_48E69C
		or	dword ptr [ebp-80h], 100000h

loc_48E69C:				; CODE XREF: .text:0048E68Dj
					; .text:0048E693j
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E6A8:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+3], 40h ;	jumptable 0048DEAA case	33
		jnz	short loc_48E6C7
		test	byte ptr [eax+1], 1
		jz	short loc_48E6C0
		cmp	dword ptr [eax+40h], 1
		jnz	short loc_48E6C0
		cmp	dword ptr [eax+30h], 1
		jz	short loc_48E6C7

loc_48E6C0:				; CODE XREF: .text:0048E6B2j
					; .text:0048E6B8j
		or	dword ptr [ebp-80h], 2000h

loc_48E6C7:				; CODE XREF: .text:0048E6ACj
					; .text:0048E6BEj
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E6DA
		cmp	dword ptr [eax+4], 1
		jz	short loc_48E6DA
		or	dword ptr [ebp-80h], 1000h

loc_48E6DA:				; CODE XREF: .text:0048E6CBj
					; .text:0048E6D1j
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_48E6ED
		cmp	dword ptr [eax+10h], 0
		jz	short loc_48E6ED
		or	dword ptr [ebp-80h], 100000h

loc_48E6ED:				; CODE XREF: .text:0048E6DEj
					; .text:0048E6E4j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E709
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E709:				; CODE XREF: .text:0048E6F1j
		cmp	dword ptr [ebp-28h], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E71F:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+3], 40h ;	jumptable 0048DEAA case	34
		jnz	short loc_48E73E
		test	byte ptr [eax+1], 1
		jz	short loc_48E737
		cmp	dword ptr [eax+40h], 1
		jnz	short loc_48E737
		cmp	dword ptr [eax+2Ch], 1
		jz	short loc_48E73E

loc_48E737:				; CODE XREF: .text:0048E729j
					; .text:0048E72Fj
		or	dword ptr [ebp-80h], 2000h

loc_48E73E:				; CODE XREF: .text:0048E723j
					; .text:0048E735j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E74C
		mov	eax, [eax+4]
		mov	[ebp-28h], eax
		jmp	short loc_48E761
; ---------------------------------------------------------------------------

loc_48E74C:				; CODE XREF: .text:0048E742j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E761
		mov	eax, [eax+4]
		cmp	eax, [ebp-28h]
		jz	short loc_48E761
		or	dword ptr [ebp-80h], 20000h

loc_48E761:				; CODE XREF: .text:0048E74Aj
					; .text:0048E750j ...
		mov	dword ptr [ebp-2Ch], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E76D:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+3], 40h ;	jumptable 0048DEAA case	35
		jnz	short loc_48E78C
		test	byte ptr [eax+1], 1
		jz	short loc_48E785
		cmp	dword ptr [eax+40h], 1
		jnz	short loc_48E785
		cmp	dword ptr [eax+2Ch], 1
		jz	short loc_48E78C

loc_48E785:				; CODE XREF: .text:0048E777j
					; .text:0048E77Dj
		or	dword ptr [ebp-80h], 2000h

loc_48E78C:				; CODE XREF: .text:0048E771j
					; .text:0048E783j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E79F
		cmp	dword ptr [eax+4], 1
		jz	short loc_48E79F
		or	dword ptr [ebp-80h], 1000h

loc_48E79F:				; CODE XREF: .text:0048E790j
					; .text:0048E796j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E7BB
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E7BB:				; CODE XREF: .text:0048E7A3j
		cmp	dword ptr [ebp-28h], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E7D1:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+3], 40h ;	jumptable 0048DEAA case	36
		jnz	short loc_48E7F6
		test	byte ptr [eax+1], 1
		jz	short loc_48E7EF
		cmp	dword ptr [eax+40h], 1
		jnz	short loc_48E7EF
		cmp	dword ptr [eax+20h], 1
		jnz	short loc_48E7EF
		cmp	dword ptr [eax+44h], 1
		jz	short loc_48E7F6

loc_48E7EF:				; CODE XREF: .text:0048E7DBj
					; .text:0048E7E1j ...
		or	dword ptr [ebp-80h], 2000h

loc_48E7F6:				; CODE XREF: .text:0048E7D5j
					; .text:0048E7EDj
		cmp	dword ptr [eax+4], 0
		jz	short loc_48E809
		cmp	dword ptr [eax+4], 1
		jz	short loc_48E809
		or	dword ptr [ebp-80h], 1000h

loc_48E809:				; CODE XREF: .text:0048E7FAj
					; .text:0048E800j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E825
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 1
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E825:				; CODE XREF: .text:0048E80Dj
		cmp	dword ptr [ebp-28h], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E83B:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 38
		jnz	short loc_48E848
		or	dword ptr [ebp-80h], 2000h

loc_48E848:				; CODE XREF: .text:0048E83Fj
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E85E:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 39
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E874:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 49
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E889:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 50
		jz	short loc_48E895
		or	dword ptr [ebp-80h], 2000h

loc_48E895:				; CODE XREF: .text:0048E88Cj
		cmp	dword ptr [eax+0Ch], 1
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 4000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E8AB:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 51
		jnz	short loc_48E8BC
		cmp	dword ptr [eax+0Ch], 1
		jz	short loc_48E8C3
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E8C3

loc_48E8BC:				; CODE XREF: .text:0048E8AEj
		or	dword ptr [ebp-80h], 2000h

loc_48E8C3:				; CODE XREF: .text:0048E8B4j
					; .text:0048E8BAj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E8DF
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 2
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E8DF:				; CODE XREF: .text:0048E8C7j
		cmp	dword ptr [ebp-28h], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E8F5:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 52
		jnz	short loc_48E906
		cmp	dword ptr [eax+0Ch], 3
		jz	short loc_48E90D
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E90D

loc_48E906:				; CODE XREF: .text:0048E8F8j
		or	dword ptr [ebp-80h], 2000h

loc_48E90D:				; CODE XREF: .text:0048E8FEj
					; .text:0048E904j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E929
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 2
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E929:				; CODE XREF: .text:0048E911j
		cmp	dword ptr [ebp-28h], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E93F:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 53
		jnz	short loc_48E950
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_48E957
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E957

loc_48E950:				; CODE XREF: .text:0048E942j
		or	dword ptr [ebp-80h], 2000h

loc_48E957:				; CODE XREF: .text:0048E948j
					; .text:0048E94Ej
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E973
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 2
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E973:				; CODE XREF: .text:0048E95Bj
		cmp	dword ptr [ebp-28h], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E989:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 54
		jnz	short loc_48E99A
		cmp	dword ptr [eax+0Ch], 4
		jz	short loc_48E9A1
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E9A1

loc_48E99A:				; CODE XREF: .text:0048E98Cj
		or	dword ptr [ebp-80h], 2000h

loc_48E9A1:				; CODE XREF: .text:0048E992j
					; .text:0048E998j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48E9BD
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 2
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E9BD:				; CODE XREF: .text:0048E9A5j
		cmp	dword ptr [ebp-28h], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48E9D3:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 55
		jnz	short loc_48E9E4
		cmp	dword ptr [eax+0Ch], 5
		jz	short loc_48E9EB
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48E9EB

loc_48E9E4:				; CODE XREF: .text:0048E9D6j
		or	dword ptr [ebp-80h], 2000h

loc_48E9EB:				; CODE XREF: .text:0048E9DCj
					; .text:0048E9E2j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48EA07
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 2
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EA07:				; CODE XREF: .text:0048E9EFj
		cmp	dword ptr [ebp-28h], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EA1D:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 2 ; jumptable 0048DEAA	case 56
		jnz	short loc_48EA2E
		cmp	dword ptr [eax+0Ch], 2
		jz	short loc_48EA35
		cmp	dword ptr [eax+0Ch], 8
		jz	short loc_48EA35

loc_48EA2E:				; CODE XREF: .text:0048EA20j
		or	dword ptr [ebp-80h], 2000h

loc_48EA35:				; CODE XREF: .text:0048EA26j
					; .text:0048EA2Cj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48EA51
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-28h], 2
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EA51:				; CODE XREF: .text:0048EA39j
		cmp	dword ptr [ebp-28h], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EA67:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 4 ; jumptable 0048DEAA	case 57
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EA7C:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 4 ; jumptable 0048DEAA	case 58
		jnz	short loc_48EA95
		cmp	dword ptr [eax+0Ch], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+0Ch], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21

loc_48EA95:				; CODE XREF: .text:0048EA7Fj
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EAA1:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 4 ; jumptable 0048DEAA	case 59
		jnz	short loc_48EABA
		cmp	dword ptr [eax+0Ch], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+0Ch], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21

loc_48EABA:				; CODE XREF: .text:0048EAA4j
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EAC6:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 60
		jnz	short loc_48EAD3
		or	dword ptr [ebp-80h], 2000h

loc_48EAD3:				; CODE XREF: .text:0048EACAj
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 4
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EAF3:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 61
		jnz	short loc_48EB00
		or	dword ptr [ebp-80h], 2000h

loc_48EB00:				; CODE XREF: .text:0048EAF7j
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EB20:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA cases 62,63
		jnz	short loc_48EB2D
		or	dword ptr [ebp-80h], 2000h

loc_48EB2D:				; CODE XREF: .text:0048EB24j
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 0Ah
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EB4D:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 8 ; jumptable 0048DEAA	cases 64,67,69,71,73
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EB62:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	dword ptr [eax], 108h ;	jumptable 0048DEAA cases 65,68,70,72,74
		jnz	short loc_48EB71
		or	dword ptr [ebp-80h], 2000h

loc_48EB71:				; CODE XREF: .text:0048EB68j
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EB91:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 20h ; jumptable 0048DEAA cases	75-77
		jnz	short loc_48EBAA
		cmp	dword ptr [eax+0Ch], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+0Ch], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21

loc_48EBAA:				; CODE XREF: .text:0048EB94j
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EBB6:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 20h ; jumptable 0048DEAA cases	78-80,84,85,88,94,98-100,103,105,125-133
		jz	short loc_48EBC2
		or	dword ptr [ebp-80h], 2000h

loc_48EBC2:				; CODE XREF: .text:0048EBB9j
		test	byte ptr [ebp-81h], 4
		jz	short loc_48EBE1
		cmp	dword ptr [eax+4], 20h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EBE1:				; CODE XREF: .text:0048EBC9j
		cmp	dword ptr [eax+4], 10h
		jnz	short loc_48EBED
		cmp	dword ptr [ebp-64h], 20h
		jz	short loc_48EBF9

loc_48EBED:				; CODE XREF: .text:0048EBE5j
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_48EC00
		cmp	dword ptr [ebp-64h], 10h
		jnz	short loc_48EC00

loc_48EBF9:				; CODE XREF: .text:0048EBEBj
		or	dword ptr [ebp-80h], 1000h

loc_48EC00:				; CODE XREF: .text:0048EBF1j
					; .text:0048EBF7j
		cmp	dword ptr [ebp-64h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	edx, [eax+4]
		mov	[ebp-64h], edx
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EC15:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA cases 81,86,89,95,101,104
		jnz	short loc_48EC27
		cmp	dword ptr [eax], 20h
		jz	short loc_48EC27
		or	dword ptr [ebp-80h], 2000h

loc_48EC27:				; CODE XREF: .text:0048EC19j
					; .text:0048EC1Ej
		test	byte ptr [ebp-81h], 4
		jz	short loc_48EC46
		cmp	dword ptr [eax+4], 20h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EC46:				; CODE XREF: .text:0048EC2Ej
		cmp	dword ptr [eax+4], 10h
		jnz	short loc_48EC52
		cmp	dword ptr [ebp-64h], 20h
		jz	short loc_48EC5E

loc_48EC52:				; CODE XREF: .text:0048EC4Aj
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_48EC65
		cmp	dword ptr [ebp-64h], 10h
		jnz	short loc_48EC65

loc_48EC5E:				; CODE XREF: .text:0048EC50j
		or	dword ptr [ebp-80h], 1000h

loc_48EC65:				; CODE XREF: .text:0048EC56j
					; .text:0048EC5Cj
		cmp	dword ptr [ebp-64h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	ecx, [eax+4]
		mov	[ebp-64h], ecx
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EC7A:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA cases 82,92,97
		jz	short loc_48ECA0
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 4
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48ECA0:				; CODE XREF: .text:0048EC7Ej
		cmp	dword ptr [eax], 20h
		jz	short loc_48ECB1
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48ECB1:				; CODE XREF: .text:0048ECA3j
		test	byte ptr [ebp-81h], 4
		jz	short loc_48ECD0
		cmp	dword ptr [eax+4], 20h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48ECD0:				; CODE XREF: .text:0048ECB8j
		cmp	dword ptr [eax+4], 10h
		jnz	short loc_48ECDC
		cmp	dword ptr [ebp-64h], 20h
		jz	short loc_48ECE8

loc_48ECDC:				; CODE XREF: .text:0048ECD4j
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_48ECEF
		cmp	dword ptr [ebp-64h], 10h
		jnz	short loc_48ECEF

loc_48ECE8:				; CODE XREF: .text:0048ECDAj
		or	dword ptr [ebp-80h], 1000h

loc_48ECEF:				; CODE XREF: .text:0048ECE0j
					; .text:0048ECE6j
		cmp	dword ptr [ebp-64h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	eax, [eax+4]
		mov	[ebp-64h], eax
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48ED04:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 93
		jz	short loc_48ED2A
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 2
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48ED2A:				; CODE XREF: .text:0048ED08j
		cmp	dword ptr [eax], 20h
		jz	short loc_48ED3B
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48ED3B:				; CODE XREF: .text:0048ED2Dj
		cmp	dword ptr [ebp-64h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	dword ptr [ebp-64h], 10h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48ED51:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA cases 83,91,96,102
		jz	short loc_48EDA7
		cmp	dword ptr [ebp-64h], 0
		jnz	short loc_48ED6E
		test	byte ptr [ebp-81h], 4
		jnz	short loc_48ED6E
		mov	edx, [eax+4]
		add	edx, edx
		mov	[ebp-64h], edx

loc_48ED6E:				; CODE XREF: .text:0048ED5Bj
					; .text:0048ED64j
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [ebp-81h], 4
		jz	short loc_48ED88
		mov	ecx, 10h
		jmp	short loc_48ED8B
; ---------------------------------------------------------------------------

loc_48ED88:				; CODE XREF: .text:0048ED7Fj
		mov	ecx, [ebp-64h]

loc_48ED8B:				; CODE XREF: .text:0048ED86j
		sar	ecx, 1
		jns	short loc_48ED92
		adc	ecx, 0

loc_48ED92:				; CODE XREF: .text:0048ED8Dj
		cmp	ecx, [eax+4]
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EDA7:				; CODE XREF: .text:0048ED55j
		cmp	dword ptr [eax], 20h
		jz	short loc_48EDB8
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EDB8:				; CODE XREF: .text:0048EDAAj
		test	byte ptr [ebp-81h], 4
		jz	short loc_48EDD7
		cmp	dword ptr [eax+4], 20h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EDD7:				; CODE XREF: .text:0048EDBFj
		cmp	dword ptr [eax+4], 10h
		jnz	short loc_48EDE3
		cmp	dword ptr [ebp-64h], 20h
		jz	short loc_48EDEF

loc_48EDE3:				; CODE XREF: .text:0048EDDBj
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_48EDF6
		cmp	dword ptr [ebp-64h], 10h
		jnz	short loc_48EDF6

loc_48EDEF:				; CODE XREF: .text:0048EDE1j
		or	dword ptr [ebp-80h], 1000h

loc_48EDF6:				; CODE XREF: .text:0048EDE7j
					; .text:0048EDEDj
		cmp	dword ptr [ebp-64h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	eax, [eax+4]
		mov	[ebp-64h], eax
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EE0B:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 87
		jz	short loc_48EE31
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 8
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EE31:				; CODE XREF: .text:0048EE0Fj
		cmp	dword ptr [eax], 20h
		jz	short loc_48EE42
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EE42:				; CODE XREF: .text:0048EE34j
		test	byte ptr [ebp-81h], 4
		jz	short loc_48EE61
		cmp	dword ptr [eax+4], 20h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EE61:				; CODE XREF: .text:0048EE49j
		cmp	dword ptr [eax+4], 10h
		jnz	short loc_48EE6D
		cmp	dword ptr [ebp-64h], 20h
		jz	short loc_48EE79

loc_48EE6D:				; CODE XREF: .text:0048EE65j
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_48EE80
		cmp	dword ptr [ebp-64h], 10h
		jnz	short loc_48EE80

loc_48EE79:				; CODE XREF: .text:0048EE6Bj
		or	dword ptr [ebp-80h], 1000h

loc_48EE80:				; CODE XREF: .text:0048EE71j
					; .text:0048EE77j
		cmp	dword ptr [ebp-64h], 0
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	edx, [eax+4]
		mov	[ebp-64h], edx
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EE95:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	edx, [eax]	; jumptable 0048DEAA case 108
		and	edx, 40200h
		cmp	edx, 200h
		jz	short loc_48EEAC
		or	dword ptr [ebp-80h], 2000h

loc_48EEAC:				; CODE XREF: .text:0048EEA3j
		test	byte ptr [eax+8], 9
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EEC2:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	ecx, [eax]	; jumptable 0048DEAA case 109
		and	ecx, 40200h
		cmp	ecx, 200h
		jz	short loc_48EED9
		or	dword ptr [ebp-80h], 2000h

loc_48EED9:				; CODE XREF: .text:0048EED0j
		test	byte ptr [eax+8], 0Ah
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EEEF:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 40200h	; jumptable 0048DEAA case 110
		jz	short loc_48EEFE
		or	dword ptr [ebp-80h], 2000h

loc_48EEFE:				; CODE XREF: .text:0048EEF5j
		test	byte ptr [eax+8], 5
		jz	short loc_48EF0B
		or	dword ptr [ebp-80h], 2000h

loc_48EF0B:				; CODE XREF: .text:0048EF02j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48EF19
		mov	edx, [eax+4]
		mov	[ebp-28h], edx
		jmp	short loc_48EF2E
; ---------------------------------------------------------------------------

loc_48EF19:				; CODE XREF: .text:0048EF0Fj
		cmp	dword ptr [eax+4], 0
		jz	short loc_48EF2E
		mov	ecx, [eax+4]
		cmp	ecx, [ebp-28h]
		jz	short loc_48EF2E
		or	dword ptr [ebp-80h], 20000h

loc_48EF2E:				; CODE XREF: .text:0048EF17j
					; .text:0048EF1Dj ...
		cmp	dword ptr [ebp-28h], 1
		jnz	short loc_48EF40
		mov	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EF40:				; CODE XREF: .text:0048EF32j
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	dword ptr [eax+48h], 0FFFF0000h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	eax, [eax+48h]
		and	eax, 0FFFF8000h
		cmp	eax, 0FFFF8000h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EF76:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		test	byte ptr [eax+1], 1 ; jumptable	0048DEAA case 111
		jnz	short loc_48EF83
		or	dword ptr [ebp-80h], 2000h

loc_48EF83:				; CODE XREF: .text:0048EF7Aj
		cmp	dword ptr [eax+4], 0
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		cmp	dword ptr [eax+4], 6
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 1000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EFA3:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	edx, [eax]	; jumptable 0048DEAA case 112
		and	edx, 40200h
		cmp	edx, 200h
		jnz	short loc_48EFC7
		cmp	dword ptr [eax+48h], 1
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21

loc_48EFC7:				; CODE XREF: .text:0048EFB1j
		or	dword ptr [ebp-80h], 2000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48EFD3:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	ecx, [eax]	; jumptable 0048DEAA case 113
		and	ecx, 40200h
		cmp	ecx, 200h
		jz	short loc_48EFEA
		or	dword ptr [ebp-80h], 2000h

loc_48EFEA:				; CODE XREF: .text:0048EFE1j
		test	dword ptr [eax+48h], 0FFFFFF00h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	edx, [eax+48h]
		and	edx, 0FFFFFF80h
		cmp	edx, 0FFFFFF80h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F01C:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	ecx, [eax]	; jumptable 0048DEAA case 114
		and	ecx, 40200h
		cmp	ecx, 200h
		jz	short loc_48F033
		or	dword ptr [ebp-80h], 2000h

loc_48F033:				; CODE XREF: .text:0048F02Aj
		test	dword ptr [eax+48h], 0FFFFFF00h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F056:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	edx, [eax]	; jumptable 0048DEAA case 115
		and	edx, 40200h
		cmp	edx, 200h
		jz	short loc_48F06D
		or	dword ptr [ebp-80h], 2000h

loc_48F06D:				; CODE XREF: .text:0048F064j
		test	dword ptr [eax+48h], 0FFFF0000h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F090:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	ecx, [eax]	; jumptable 0048DEAA case 116
		and	ecx, 40200h
		cmp	ecx, 200h
		jz	short loc_48F0A7
		or	dword ptr [ebp-80h], 2000h

loc_48F0A7:				; CODE XREF: .text:0048F09Ej
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48F0B5
		mov	edx, [eax+4]
		mov	[ebp-28h], edx
		jmp	short loc_48F0CA
; ---------------------------------------------------------------------------

loc_48F0B5:				; CODE XREF: .text:0048F0ABj
		cmp	dword ptr [eax+4], 0
		jz	short loc_48F0CA
		mov	ecx, [eax+4]
		cmp	ecx, [ebp-28h]
		jz	short loc_48F0CA
		or	dword ptr [ebp-80h], 20000h

loc_48F0CA:				; CODE XREF: .text:0048F0B3j
					; .text:0048F0B9j ...
		cmp	dword ptr [ebp-28h], 1
		jnz	short loc_48F0F6
		test	dword ptr [eax+48h], 0FFFFFF00h
		jz	short loc_48F0F6
		mov	edx, [eax+48h]
		and	edx, 0FFFFFF80h
		cmp	edx, 0FFFFFF80h
		jz	short loc_48F0F6
		test	byte ptr [eax+1], 10h
		jnz	short loc_48F0F6
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F0F6:				; CODE XREF: .text:0048F0CEj
					; .text:0048F0D7j ...
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	dword ptr [eax+48h], 0FFFF0000h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	ecx, [eax+48h]
		and	ecx, 0FFFF8000h
		cmp	ecx, 0FFFF8000h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F138:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	edx, [eax]	; jumptable 0048DEAA case 117
		and	edx, 40200h
		cmp	edx, 200h
		jz	short loc_48F14F
		or	dword ptr [ebp-80h], 2000h

loc_48F14F:				; CODE XREF: .text:0048F146j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48F15D
		mov	ecx, [eax+4]
		mov	[ebp-28h], ecx
		jmp	short loc_48F172
; ---------------------------------------------------------------------------

loc_48F15D:				; CODE XREF: .text:0048F153j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48F172
		mov	edx, [eax+4]
		cmp	edx, [ebp-28h]
		jz	short loc_48F172
		or	dword ptr [ebp-80h], 20000h

loc_48F172:				; CODE XREF: .text:0048F15Bj
					; .text:0048F161j ...
		cmp	dword ptr [ebp-28h], 1
		jnz	short loc_48F184
		mov	dword ptr [ebp-80h], 20000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F184:				; CODE XREF: .text:0048F176j
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	dword ptr [eax+48h], 0FFFF0000h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	ecx, [eax+48h]
		and	ecx, 0FFFF8000h
		cmp	ecx, 0FFFF8000h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F1C6:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		mov	edx, [eax]	; jumptable 0048DEAA case 118
		and	edx, 40200h
		cmp	edx, 200h
		jz	short loc_48F1DD
		or	dword ptr [ebp-80h], 2000h

loc_48F1DD:				; CODE XREF: .text:0048F1D4j
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48F1F8
		mov	ecx, [eax+4]
		mov	[ebp-28h], ecx
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48F20D
		mov	dword ptr [ebp-28h], 4
		jmp	short loc_48F20D
; ---------------------------------------------------------------------------

loc_48F1F8:				; CODE XREF: .text:0048F1E1j
		cmp	dword ptr [eax+4], 0
		jz	short loc_48F20D
		mov	edx, [eax+4]
		cmp	edx, [ebp-28h]
		jz	short loc_48F20D
		or	dword ptr [ebp-80h], 20000h

loc_48F20D:				; CODE XREF: .text:0048F1EDj
					; .text:0048F1F6j ...
		cmp	dword ptr [ebp-28h], 4
		jnz	short loc_48F246
		mov	ecx, [eax+48h]
		and	ecx, 0FFFFFF80h
		test	ecx, ecx
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	edx, [eax+48h]
		and	edx, 0FFFFFF80h
		cmp	edx, 0FFFFFF80h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	loc_48F2F2	; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	loc_48F2F2	; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F246:				; CODE XREF: .text:0048F211j
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_48F281
		mov	ecx, [eax+48h]
		and	ecx, 0FF80h
		test	ecx, ecx
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		mov	edx, [eax+48h]
		and	edx, 0FF80h
		cmp	edx, 0FF80h
		jz	loc_48F2F2	; jumptable 0048DEAA case 21
		test	byte ptr [eax+1], 10h
		jnz	short loc_48F2F2 ; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 10000h
		jmp	short loc_48F2F2 ; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F281:				; CODE XREF: .text:0048F24Aj
		mov	dword ptr [ebp-80h], 20000h
		jmp	short loc_48F2F2 ; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F28A:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 40h ; jumptable 0048DEAA case 119
		jz	short loc_48F2F2 ; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	short loc_48F2F2 ; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F298:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		cmp	dword ptr [eax], 80h ; jumptable 0048DEAA case 121
		jz	short loc_48F2F2 ; jumptable 0048DEAA case 21
		or	dword ptr [ebp-80h], 2000h
		jmp	short loc_48F2F2 ; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F2A9:				; CODE XREF: .text:0048DEAAj
					; DATA XREF: .text:off_48DEB1o
		or	dword ptr [ebp-80h], 40000000h ; jumptable 0048DEAA cases 2,5,9-11,13-15,37,40-48,66,90,106,107,120,122-124
		jmp	short loc_48F2F2 ; jumptable 0048DEAA case 21
; ---------------------------------------------------------------------------

loc_48F2B2:				; CODE XREF: .text:0048DEA4j
					; .text:0048DEAAj
					; DATA XREF: ...
		push	offset aInternalErrorU ; jumptable 0048DEAA default case
		call	_T
		pop	ecx
		mov	[ebp-188h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-18Ch], eax
		cmp	dword ptr [ebp-18Ch], 0
		jz	short loc_48F2EB
		mov	ecx, [ebp-188h]
		push	ecx		; src
		mov	eax, [ebp-18Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48F2EB:				; CODE XREF: .text:0048F2D3j
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_48F2F2:				; CODE XREF: .text:0048DD7Cj
					; .text:0048DEAAj ...
		inc	esi		; jumptable 0048DEAA case 21
		add	dword ptr [ebp-260h], 4
		cmp	esi, [ebp-20h]
		jl	loc_48DD2C

loc_48F303:				; CODE XREF: .text:0048DD26j
					; .text:0048DD98j ...
		cmp	esi, [ebp-20h]
		jl	loc_490CA5
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_48F365
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48F365
		xor	esi, esi
		lea	eax, [ebp-678h]
		mov	[ebp-260h], eax
		cmp	esi, [ebp-20h]
		jge	short loc_48F365

loc_48F32B:				; CODE XREF: .text:0048F363j
		mov	edx, [ebp-260h]
		test	byte ptr [edx+1], 1
		jz	short loc_48F358
		mov	ecx, [ebp-260h]
		test	byte ptr [ecx+53h], 8
		jz	short loc_48F358
		mov	eax, [ebp-260h]
		cmp	dword ptr [eax+4], 0
		jnz	short loc_48F358
		or	dword ptr [ebp-80h], 80000h
		jmp	short loc_48F365
; ---------------------------------------------------------------------------

loc_48F358:				; CODE XREF: .text:0048F335j
					; .text:0048F341j ...
		inc	esi
		add	dword ptr [ebp-260h], 58h
		cmp	esi, [ebp-20h]
		jl	short loc_48F32B

loc_48F365:				; CODE XREF: .text:0048F310j
					; .text:0048F316j ...
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+9], 1
		jz	short loc_48F3A5
		cmp	dword ptr [ebp-64h], 10h
		jnz	short loc_48F38C
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+8]
		and	eax, 600h
		cmp	eax, 400h
		jz	short loc_48F39E

loc_48F38C:				; CODE XREF: .text:0048F375j
		cmp	dword ptr [ebp-64h], 20h
		jnz	short loc_48F3A5
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+9], 6
		jnz	short loc_48F3A5

loc_48F39E:				; CODE XREF: .text:0048F38Aj
		or	dword ptr [ebp-80h], 1000h

loc_48F3A5:				; CODE XREF: .text:0048F36Fj
					; .text:0048F390j ...
		cmp	dword ptr [ebp-80h], 0
		jz	short loc_48F3B6
		mov	ecx, [ebp-80h]
		or	[ebp-7Ch], ecx
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48F3B6:				; CODE XREF: .text:0048F3A9j
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_48F3D4
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_48F3D4
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_48F3D4
		or	dword ptr [ebp-7Ch], 80000h
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48F3D4:				; CODE XREF: .text:0048F3BAj
					; .text:0048F3C0j ...
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		and	edx, 0C0000000h
		cmp	edx, 0C0000000h
		jnz	short loc_48F3FA
		test	byte ptr [ebp+18h], 1
		jnz	short loc_48F3FA
		or	dword ptr [ebp-7Ch], 4
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48F3FA:				; CODE XREF: .text:0048F3E9j
					; .text:0048F3EFj
		test	byte ptr [ebp-73h], 1
		jz	short loc_48F435
		mov	ecx, [ebp-9Ch]
		test	byte ptr [ecx+6], 1
		jz	short loc_48F423
		mov	eax, [ebp-678h]
		or	eax, [ebp-620h]
		or	eax, [ebp-5C8h]
		test	ah, 1
		jnz	short loc_48F435

loc_48F423:				; CODE XREF: .text:0048F40Aj
		test	byte ptr [ebp+18h], 1
		jnz	short loc_48F435
		or	dword ptr [ebp-7Ch], 1000000h
		jmp	loc_490CA5
; ---------------------------------------------------------------------------

loc_48F435:				; CODE XREF: .text:0048F3FEj
					; .text:0048F421j ...
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-4Ch], edx
		mov	[ebp-60h], ecx

loc_48F43F:				; CODE XREF: .text:00490C9Fj
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+9], 1
		jnz	short loc_48F457
		cmp	dword ptr [ebp-60h], 1
		jz	loc_490CA5
		jmp	short loc_48F46D
; ---------------------------------------------------------------------------

loc_48F457:				; CODE XREF: .text:0048F449j
		cmp	dword ptr [ebp-60h], 0
		jnz	short loc_48F46D
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+0Ah], 7
		jnz	loc_490C98

loc_48F46D:				; CODE XREF: .text:0048F455j
					; .text:0048F45Bj
		mov	dword ptr [ebp-38h], 1

loc_48F474:				; CODE XREF: .text:00490C93j
		xor	ecx, ecx
		mov	[ebp-5Ch], ecx
		push	6Ch		; n
		push	0		; c
		lea	eax, [ebp-6E4h]
		push	eax		; s
		call	_memset
		xor	edx, edx
		xor	eax, eax
		mov	[ebp-58h], edx
		mov	[ebp-48h], eax
		mov	[ebp-44h], eax
		mov	[ebp-40h], eax
		mov	ecx, [ebp-74h]
		xor	eax, eax
		mov	[ebp-78h], ecx
		xor	ecx, ecx
		mov	[ebp-50h], eax
		mov	[ebp-54h], ecx
		mov	eax, [ebp-9Ch]
		add	esp, 0Ch
		test	byte ptr [eax+5], 4
		jz	short loc_48F4BF
		or	dword ptr [ebp-78h], 80h

loc_48F4BF:				; CODE XREF: .text:0048F4B6j
		mov	ecx, [ebp-9Ch]
		test	byte ptr [ecx+5], 1
		jz	short loc_48F4CF
		or	dword ptr [ebp-78h], 40h

loc_48F4CF:				; CODE XREF: .text:0048F4C9j
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+9], 1
		jnz	short loc_48F4E5
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	loc_48F6C9
; ---------------------------------------------------------------------------

loc_48F4E5:				; CODE XREF: .text:0048F4D9j
		cmp	dword ptr [ebp-60h], 0
		jnz	short loc_48F557
		mov	byte ptr [ebp-6E4h], 0C5h
		mov	byte ptr [ebp-6D4h], 0FFh
		mov	eax, [ebp-9Ch]
		mov	ecx, [eax+4]
		and	ecx, 0F000h
		sub	ecx, 1000h
		jz	short loc_48F522
		sub	ecx, 1000h
		jz	short loc_48F534
		sub	ecx, 1000h
		jz	short loc_48F52B
		jmp	short loc_48F53D
; ---------------------------------------------------------------------------

loc_48F522:				; CODE XREF: .text:0048F50Ej
		mov	byte ptr [ebp-6E3h], 0C1h
		jmp	short loc_48F544
; ---------------------------------------------------------------------------

loc_48F52B:				; CODE XREF: .text:0048F51Ej
		mov	byte ptr [ebp-6E3h], 0C2h
		jmp	short loc_48F544
; ---------------------------------------------------------------------------

loc_48F534:				; CODE XREF: .text:0048F516j
		mov	byte ptr [ebp-6E3h], 0C3h
		jmp	short loc_48F544
; ---------------------------------------------------------------------------

loc_48F53D:				; CODE XREF: .text:0048F520j
		mov	byte ptr [ebp-6E3h], 0C0h

loc_48F544:				; CODE XREF: .text:0048F529j
					; .text:0048F532j ...
		mov	byte ptr [ebp-6D3h], 0C3h
		mov	dword ptr [ebp-8], 2
		jmp	loc_48F60B
; ---------------------------------------------------------------------------

loc_48F557:				; CODE XREF: .text:0048F4E9j
		mov	byte ptr [ebp-6E4h], 0C4h
		mov	byte ptr [ebp-6D4h], 0FFh
		mov	eax, [ebp-9Ch]
		mov	ecx, [eax+8]
		and	ecx, 70000h
		sub	ecx, 10000h
		jz	short loc_48F586
		sub	ecx, 10000h
		jz	short loc_48F58F
		jmp	short loc_48F598
; ---------------------------------------------------------------------------

loc_48F586:				; CODE XREF: .text:0048F57Aj
		mov	byte ptr [ebp-6E3h], 0E2h
		jmp	short loc_48F59F
; ---------------------------------------------------------------------------

loc_48F58F:				; CODE XREF: .text:0048F582j
		mov	byte ptr [ebp-6E3h], 0E3h
		jmp	short loc_48F59F
; ---------------------------------------------------------------------------

loc_48F598:				; CODE XREF: .text:0048F584j
		mov	byte ptr [ebp-6E3h], 0E1h

loc_48F59F:				; CODE XREF: .text:0048F58Dj
					; .text:0048F596j
		mov	byte ptr [ebp-6D3h], 0FFh
		mov	eax, [ebp-9Ch]
		mov	ecx, [eax+4]
		and	ecx, 0F000h
		sub	ecx, 1000h
		jz	short loc_48F5CF
		sub	ecx, 1000h
		jz	short loc_48F5E1
		sub	ecx, 1000h
		jz	short loc_48F5D8
		jmp	short loc_48F5EA
; ---------------------------------------------------------------------------

loc_48F5CF:				; CODE XREF: .text:0048F5BBj
		mov	byte ptr [ebp-6E2h], 41h
		jmp	short loc_48F5F1
; ---------------------------------------------------------------------------

loc_48F5D8:				; CODE XREF: .text:0048F5CBj
		mov	byte ptr [ebp-6E2h], 42h
		jmp	short loc_48F5F1
; ---------------------------------------------------------------------------

loc_48F5E1:				; CODE XREF: .text:0048F5C3j
		mov	byte ptr [ebp-6E2h], 43h
		jmp	short loc_48F5F1
; ---------------------------------------------------------------------------

loc_48F5EA:				; CODE XREF: .text:0048F5CDj
		mov	byte ptr [ebp-6E2h], 40h

loc_48F5F1:				; CODE XREF: .text:0048F5D6j
					; .text:0048F5DFj ...
		cmp	dword ptr [ebp-30h], 0
		mov	al, 43h
		jnz	short loc_48F5FE
		add	eax, 80h

loc_48F5FE:				; CODE XREF: .text:0048F5F7j
		mov	[ebp-6D2h], al
		mov	dword ptr [ebp-8], 3

loc_48F60B:				; CODE XREF: .text:0048F552j
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+8]
		and	eax, 600h
		sub	eax, 1
		jb	short loc_48F62E
		sub	eax, 3FFh
		jz	short loc_48F63B
		sub	eax, 200h
		jz	short loc_48F653
		jmp	short loc_48F66F
; ---------------------------------------------------------------------------

loc_48F62E:				; CODE XREF: .text:0048F61Cj
		mov	ecx, [ebp-8]
		or	byte ptr [ebp+ecx-6D5h], 4
		jmp	short loc_48F6A7
; ---------------------------------------------------------------------------

loc_48F63B:				; CODE XREF: .text:0048F623j
		mov	eax, [ebp-8]
		or	byte ptr [ebp+eax-6E5h], 4
		mov	ecx, [ebp-8]
		or	byte ptr [ebp+ecx-6D5h], 4
		jmp	short loc_48F6A7
; ---------------------------------------------------------------------------

loc_48F653:				; CODE XREF: .text:0048F62Aj
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_48F662
		or	byte ptr [ebp-6BFh], 8
		jmp	short loc_48F6A7
; ---------------------------------------------------------------------------

loc_48F662:				; CODE XREF: .text:0048F657j
		mov	eax, [ebp-8]
		or	byte ptr [ebp+eax-6D5h], 4
		jmp	short loc_48F6A7
; ---------------------------------------------------------------------------

loc_48F66F:				; CODE XREF: .text:0048F62Cj
		cmp	dword ptr [ebp-64h], 10h
		jnz	short loc_48F682
		mov	ecx, [ebp-8]
		or	byte ptr [ebp+ecx-6D5h], 4
		jmp	short loc_48F6A7
; ---------------------------------------------------------------------------

loc_48F682:				; CODE XREF: .text:0048F673j
		cmp	dword ptr [ebp-64h], 20h
		jnz	short loc_48F6A0
		mov	eax, [ebp-8]
		or	byte ptr [ebp+eax-6E5h], 4
		mov	ecx, [ebp-8]
		or	byte ptr [ebp+ecx-6D5h], 4
		jmp	short loc_48F6A7
; ---------------------------------------------------------------------------

loc_48F6A0:				; CODE XREF: .text:0048F686j
		or	byte ptr [ebp-6BFh], 8

loc_48F6A7:				; CODE XREF: .text:0048F639j
					; .text:0048F651j ...
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+9], 8
		jz	short loc_48F6C9
		mov	ecx, [ebp-8]
		or	byte ptr [ebp+ecx-6E5h], 38h
		mov	eax, [ebp-8]
		or	byte ptr [ebp+eax-6D5h], 38h

loc_48F6C9:				; CODE XREF: .text:0048F4E0j
					; .text:0048F6B1j
		mov	ecx, [ebp-9Ch]
		xor	esi, esi
		mov	eax, [ecx+14h]
		mov	ecx, [ebp-9Ch]
		and	eax, [ecx+10h]
		mov	ecx, [ebp-8]
		mov	[ebp+ecx-6E4h],	eax
		mov	eax, [ebp-9Ch]
		mov	ecx, [ebp-8]
		mov	eax, [eax+10h]
		mov	[ebp+ecx-6D4h],	eax
		mov	eax, [ebp-9Ch]
		mov	ecx, [eax+0Ch]
		add	ecx, [ebp-8]
		mov	[ebp-8], ecx
		mov	eax, [ebp-8]
		lea	ecx, [ebp+eax-6E4h]
		lea	eax, [ebp-6BCh]
		mov	[ebp-268h], ecx
		mov	[ebp-264h], eax
		cmp	esi, [ebp-20h]
		jge	loc_490623

loc_48F72E:				; CODE XREF: .text:0049061Dj
		lea	eax, [esi+esi*4]
		lea	eax, [esi+eax*2]
		shl	eax, 3
		lea	ecx, [ebp-678h]
		add	eax, ecx
		mov	ecx, [eax+50h]
		and	ecx, 0FFh
		mov	[ebp-84h], ecx
		cmp	dword ptr [ebp-84h], 0
		jz	loc_490623
		mov	ecx, [ebp-84h]
		cmp	ecx, 85h	; switch 134 cases
		ja	loc_49060B	; jumptable 0048F773 default case
		mov	cl, ds:byte_48F77A[ecx]
		jmp	ds:off_48F800[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_48F77A	db	0,     3,     3,   0Eh ; DATA XREF: .text:0048F76Dr
		db    0Eh,     3,   0Eh,   0Eh ; indirect table	for switch statement
		db	3,     3,     3,     3
		db    16h,     3,     3,     3
		db    15h,     4,     4,   14h
		db    0Fh,   13h,   0Ah,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db    0Ah,   12h,   0Ah,   0Ah
		db    11h,   11h,   10h,   10h
		db    10h,     3,   0Ah,   0Ah
		db	3,     3,     3,     3
		db	3,     3,     3,     3
		db	3,     4,     4,   0Eh
		db    0Eh,   0Eh,   0Eh,   0Eh
		db    0Eh,   0Fh,   0Eh,   0Eh
		db    0Ah,   0Ah,   0Ah,   0Ah
		db	4,   0Ah,     3,     4
		db    0Ah,     4,   0Ah,     4
		db    0Ah,     4,   0Ah,   0Eh
		db    0Eh,   0Eh,     4,     4
		db	4,   0Ah,   0Ah,   0Ah
		db	4,     4,   0Ah,   0Ah
		db	4,   0Ah,     3,   0Ah
		db    0Ah,   0Ah,     4,   0Ah
		db    0Ah,   0Ah,     4,     4
		db	4,   0Ah,   0Ah,     4
		db    0Ah,     4,     3,     3
		db    0Dh,   0Ch,   0Bh,   0Ah
		db	9,     5,     8,     7
		db	6,     6,     5,     4
		db	3,     4,     3,     3
		db	3,     2,     2,     2
		db	2,     2,     2,     2
		db	2,     1
off_48F800	dd offset loc_49060B, offset loc_490493, offset	loc_48F95E
					; DATA XREF: .text:0048F773r
		dd offset loc_490612, offset loc_48F912, offset	loc_490443 ; jump table	for switch statement
		dd offset loc_4905AA, offset loc_490567, offset	loc_490521
		dd offset loc_490404, offset loc_48FA61, offset	loc_4903A0
		dd offset loc_490341, offset loc_4902B4, offset	loc_48F85C
		dd offset loc_48FA06, offset loc_490070, offset	loc_490134
		dd offset loc_4901BB, offset loc_48FA52, offset	loc_48F9B3
		dd offset loc_48F8BC, offset loc_48F887
; ---------------------------------------------------------------------------

loc_48F85C:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 cases 3,4,6,7,51-56,58,59,75-77
		mov	byte ptr [ecx],	1
		mov	ecx, [ebp-264h]
		mov	bl, [eax+0Ch]
		mov	[ecx+1], bl
		cmp	dword ptr [eax+0Ch], 9
		jl	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	byte ptr [ebp-6BFh], 8
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48F887:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 12
		mov	byte ptr [ecx],	1
		mov	ecx, [ebp-264h]
		mov	bl, [eax+0Ch]
		mov	[ecx+1], bl
		cmp	dword ptr [eax+0Ch], 9
		jl	short loc_48F8A9
		or	byte ptr [ebp-6BFh], 8

loc_48F8A9:				; CODE XREF: .text:0048F8A0j
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	dword ptr [ebp-78h], 40h
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48F8BC:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	edx, [ebp-264h]	; jumptable 0048F773 case 16
		mov	byte ptr [edx],	1
		mov	ecx, [ebp-264h]
		mov	dl, [eax+0Ch]
		mov	[ecx+1], dl
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_48F8F1
		mov	al, [eax+0Ch]
		mov	ecx, [ebp-268h]
		shl	eax, 3
		or	[ecx], al
		mov	eax, [ebp-268h]
		or	byte ptr [eax+10h], 38h
		jmp	short loc_48F8FE
; ---------------------------------------------------------------------------

loc_48F8F1:				; CODE XREF: .text:0048F8D5j
		cmp	dword ptr [eax+0Ch], 9
		jl	short loc_48F8FE
		or	byte ptr [ebp-6BFh], 8

loc_48F8FE:				; CODE XREF: .text:0048F8EFj
					; .text:0048F8F5j
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_48F908
		or	dword ptr [ebp-78h], 40h

loc_48F908:				; CODE XREF: .text:0048F902j
		mov	edx, 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48F912:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 cases 17,18,49,50,64,67,69,71,73,78-80,84,85,88,94,98-100,103,105,119,121
		mov	byte ptr [ecx],	1
		mov	edx, [ebp-264h]
		mov	cl, [eax+0Ch]
		mov	[edx+1], cl
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_48F947
		mov	al, [eax+0Ch]
		mov	edx, [ebp-268h]
		shl	eax, 3
		or	[edx], al
		mov	eax, [ebp-268h]
		or	byte ptr [eax+10h], 38h
		jmp	short loc_48F954
; ---------------------------------------------------------------------------

loc_48F947:				; CODE XREF: .text:0048F92Bj
		cmp	dword ptr [eax+0Ch], 9
		jl	short loc_48F954
		or	byte ptr [ebp-6BFh], 8

loc_48F954:				; CODE XREF: .text:0048F945j
					; .text:0048F94Bj
		mov	edx, 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48F95E:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 cases 125-132
		mov	byte ptr [ecx],	1
		mov	ecx, [ebp-264h]
		mov	bl, [eax+0Ch]
		mov	[ecx+1], bl
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_48F99D
		mov	al, [eax+0Ch]
		mov	ecx, [ebp-60h]
		shl	eax, 3
		not	al
		and	al, 38h
		or	[ebp+ecx-6E3h],	al
		mov	eax, [ebp-60h]
		or	byte ptr [ebp+eax-6D3h], 38h
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48F99D:				; CODE XREF: .text:0048F977j
		cmp	dword ptr [eax+0Ch], 9
		jl	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	byte ptr [ebp-6BFh], 8
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48F9B3:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 19
		mov	byte ptr [ecx],	1
		mov	ecx, [ebp-264h]
		mov	bl, [eax+0Ch]
		mov	[ecx+1], bl
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_48F9E6
		mov	ecx, [ebp-268h]
		mov	al, [eax+0Ch]
		or	[ecx-1], al
		mov	eax, [ebp-268h]
		or	byte ptr [eax+0Fh], 7
		jmp	short loc_48F9F3
; ---------------------------------------------------------------------------

loc_48F9E6:				; CODE XREF: .text:0048F9CCj
		cmp	dword ptr [eax+0Ch], 9
		jl	short loc_48F9F3
		or	byte ptr [ebp-6BFh], 8

loc_48F9F3:				; CODE XREF: .text:0048F9E4j
					; .text:0048F9EAj
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	dword ptr [ebp-78h], 40h
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48FA06:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 cases 20,57
		mov	byte ptr [ecx],	1
		mov	ecx, [ebp-264h]
		mov	bl, [eax+0Ch]
		mov	[ecx+1], bl
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_48FA3C
		mov	ecx, [ebp-268h]
		mov	al, [eax+0Ch]
		or	[ecx-1], al
		mov	eax, [ebp-268h]
		or	byte ptr [eax+0Fh], 7
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48FA3C:				; CODE XREF: .text:0048FA1Fj
		cmp	dword ptr [eax+0Ch], 9
		jl	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	byte ptr [ebp-6BFh], 8
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48FA52:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-268h]	; jumptable 0048F773 case 21
		or	byte ptr [ecx+10h], 38h
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48FA61:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		test	byte ptr [eax+3], 80h ;	jumptable 0048F773 cases 22-28,30,31,38,39,60-63,65,68,70,72,74,81-83,86,87,89,91-93,95-97,101,102,104,111
		jz	short loc_48FAA9
		or	byte ptr [ebp-6BFh], 8
		test	byte ptr [ebp-626h], 10h
		jz	short loc_48FA82
		mov	edx, [ebp-264h]
		mov	byte ptr [edx],	22h
		jmp	short loc_48FA9F
; ---------------------------------------------------------------------------

loc_48FA82:				; CODE XREF: .text:0048FA75j
		test	byte ptr [ebp-626h], 20h
		jz	short loc_48FA96
		mov	eax, [ebp-264h]
		mov	byte ptr [eax],	21h
		jmp	short loc_48FA9F
; ---------------------------------------------------------------------------

loc_48FA96:				; CODE XREF: .text:0048FA89j
		mov	edx, [ebp-264h]
		mov	byte ptr [edx],	23h

loc_48FA9F:				; CODE XREF: .text:0048FA80j
					; .text:0048FA94j
		mov	edx, 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48FAA9:				; CODE XREF: .text:0048FA65j
		test	byte ptr [eax],	0FFh
		jz	short loc_48FB14
		mov	ecx, [ebp-264h]
		mov	byte ptr [ecx],	1
		mov	edx, [ebp-264h]
		mov	cl, [eax+0Ch]
		mov	[edx+1], cl
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_48FAE0
		mov	edx, [ebp-268h]
		mov	al, [eax+0Ch]
		or	[edx], al
		mov	ecx, [ebp-268h]
		or	byte ptr [ecx+10h], 7
		jmp	short loc_48FAED
; ---------------------------------------------------------------------------

loc_48FAE0:				; CODE XREF: .text:0048FAC7j
		cmp	dword ptr [eax+0Ch], 9
		jl	short loc_48FAED
		or	byte ptr [ebp-6BFh], 8

loc_48FAED:				; CODE XREF: .text:0048FADEj
					; .text:0048FAE4j
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_48FAF7
		or	dword ptr [ebp-78h], 40h

loc_48FAF7:				; CODE XREF: .text:0048FAF1j
		mov	eax, [ebp-268h]
		or	byte ptr [eax],	0C0h
		mov	edx, [ebp-268h]
		or	byte ptr [edx+10h], 0C0h
		mov	edx, 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_48FB14:				; CODE XREF: .text:0048FAACj
		cmp	dword ptr [ebp-30h], 0
		jz	loc_48FBC5
		mov	ecx, [ebp-264h]
		mov	byte ptr [ecx],	2
		test	byte ptr [eax+3], 40h
		jz	short loc_48FB36
		mov	edx, [ebp-264h]
		or	byte ptr [edx],	10h

loc_48FB36:				; CODE XREF: .text:0048FB2Bj
		cmp	dword ptr [eax+10h], 8
		jnz	short loc_48FB45
		or	dword ptr [ebp-78h], 10000h
		jmp	short loc_48FB58
; ---------------------------------------------------------------------------

loc_48FB45:				; CODE XREF: .text:0048FB3Aj
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_48FB58
		mov	ecx, [eax+10h]
		mov	edx, 1
		shl	edx, cl
		or	[ebp-78h], edx

loc_48FB58:				; CODE XREF: .text:0048FB43j
					; .text:0048FB49j
		test	byte ptr [eax+2], 20h
		jz	short loc_48FB65
		or	dword ptr [ebp-78h], 80h

loc_48FB65:				; CODE XREF: .text:0048FB5Cj
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	edx, [ebp-264h]
		lea	ecx, [edx-28h]
		mov	[ebp-26Ch], ecx

loc_48FB79:				; CODE XREF: .text:0048FB94j
		mov	edx, [ebp-26Ch]
		mov	ecx, [ebp-4]
		mov	ebx, [ebp-4]
		mov	bl, [eax+ebx*4+14h]
		mov	[edx+ecx+2Ah], bl
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0Bh
		jl	short loc_48FB79
		mov	edx, [ebp-264h]
		mov	ecx, [eax+48h]
		mov	[edx+0Dh], ecx
		mov	eax, [eax]
		and	eax, 101000h
		cmp	eax, 101000h
		jnz	short loc_48FBB9
		mov	eax, [ebp-264h]
		or	byte ptr [eax],	8

loc_48FBB9:				; CODE XREF: .text:0048FBAEj
		or	byte ptr [ebp-6BFh], 8
		jmp	loc_490038
; ---------------------------------------------------------------------------

loc_48FBC5:				; CODE XREF: .text:0048FB18j
		mov	edx, [ebp-264h]
		xor	ecx, ecx
		mov	byte ptr [edx],	2
		mov	[ebp-4], ecx
		mov	edx, [ebp-264h]
		lea	ecx, [edx-28h]
		mov	[ebp-26Ch], ecx

loc_48FBE2:				; CODE XREF: .text:0048FBFDj
		mov	edx, [ebp-26Ch]
		mov	ecx, [ebp-4]
		mov	ebx, [ebp-4]
		mov	bl, [eax+ebx*4+14h]
		mov	[edx+ecx+2Ah], bl
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0Bh
		jl	short loc_48FBE2
		mov	edx, [ebp-264h]
		mov	ecx, [eax+48h]
		mov	[edx+0Dh], ecx
		xor	edx, edx
		mov	dword ptr [ebp-5Ch], 1
		mov	[ebp-3Ch], edx
		test	byte ptr [eax+2], 20h
		jz	loc_48FD78
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	dword ptr [ebp-98h], offset tmpcmdinfo
		mov	edx, [ebp-268h]
		mov	ecx, edx
		mov	[ebp-26Ch], ecx

loc_48FC3E:				; CODE XREF: .text:0048FD6Dj
		test	byte ptr [ebp-4], 38h
		jnz	loc_48FD59
		mov	edx, [ebp-98h]
		test	byte ptr [edx+0Dh], 1
		jz	loc_48FD59
		xor	ebx, ebx

loc_48FC5A:				; CODE XREF: .text:0048FC70j
		mov	edx, [ebp-98h]
		xor	ecx, ecx
		mov	cl, [edx+ebx+18h]
		cmp	ecx, [eax+ebx*4+14h]
		jnz	short loc_48FC72
		inc	ebx
		cmp	ebx, 8
		jl	short loc_48FC5A

loc_48FC72:				; CODE XREF: .text:0048FC6Aj
		cmp	ebx, 8
		jl	loc_48FD59
		mov	edx, [ebp-98h]
		cmp	dword ptr [edx+8], 0
		jnz	short loc_48FC91
		cmp	dword ptr [eax+48h], 0
		jnz	loc_48FD59

loc_48FC91:				; CODE XREF: .text:0048FC85j
		mov	ecx, [ebp-98h]
		cmp	dword ptr [ecx+8], 1
		jnz	short loc_48FCB5
		mov	edx, [eax+48h]
		and	edx, 0FFFFFF80h
		cmp	edx, 0FFFFFF80h
		jz	short loc_48FCB5
		test	dword ptr [eax+48h], 0FFFFFF80h
		jnz	loc_48FD59

loc_48FCB5:				; CODE XREF: .text:0048FC9Bj
					; .text:0048FCA6j
		inc	dword ptr [ebp-3Ch]
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp-3Ch]
		jg	loc_48FD59
		mov	ecx, [ebp-26Ch]
		mov	dl, [ebp-4]
		and	dl, 0C7h
		or	[ecx], dl
		mov	edx, [ebp-26Ch]
		or	byte ptr [edx+10h], 0C7h
		mov	ecx, [ebp-98h]
		mov	edx, [ecx+8]
		mov	[ebp-40h], edx
		cmp	dword ptr [ebp-40h], 1
		jnz	short loc_48FD06
		mov	ecx, [ebp-26Ch]
		mov	dl, [eax+48h]
		mov	[ecx+1], dl
		mov	ecx, [ebp-26Ch]
		mov	byte ptr [ecx+11h], 0FFh
		jmp	short loc_48FD26
; ---------------------------------------------------------------------------

loc_48FD06:				; CODE XREF: .text:0048FCECj
		cmp	dword ptr [ebp-40h], 2
		jnz	short loc_48FD26
		mov	edx, [ebp-26Ch]
		mov	cx, [eax+48h]
		mov	[edx+1], cx
		mov	edx, [ebp-26Ch]
		mov	word ptr [edx+11h], 0FFFFh

loc_48FD26:				; CODE XREF: .text:0048FD04j
					; .text:0048FD0Aj
		test	byte ptr [eax+53h], 80h
		jnz	short loc_48FD4D
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_48FD4D
		mov	ecx, [ebp-98h]
		mov	edx, [ecx+14h]
		cmp	edx, [eax+10h]
		jz	short loc_48FD4D
		mov	ecx, [eax+10h]
		mov	eax, 1
		shl	eax, cl
		or	[ebp-78h], eax

loc_48FD4D:				; CODE XREF: .text:0048FD2Aj
					; .text:0048FD30j ...
		or	dword ptr [ebp-78h], 80h
		jmp	loc_490028
; ---------------------------------------------------------------------------

loc_48FD59:				; CODE XREF: .text:0048FC42j
					; .text:0048FC52j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-98h], 0A8h
		cmp	dword ptr [ebp-4], 100h
		jl	loc_48FC3E
		jmp	loc_490028
; ---------------------------------------------------------------------------

loc_48FD78:				; CODE XREF: .text:0048FC1Bj
		xor	edx, edx
		mov	[ebp-4], edx
		mov	dword ptr [ebp-98h], offset stru_593CC6
		mov	ecx, [ebp-268h]
		mov	edx, ecx
		mov	[ebp-26Ch], edx

loc_48FD95:				; CODE XREF: .text:00490022j
		test	byte ptr [ebp-4], 38h
		jnz	loc_49000E
		mov	ecx, [ebp-98h]
		test	byte ptr [ecx+0Dh], 1
		jz	loc_49000E
		mov	edx, [ebp-98h]
		cmp	dword ptr [edx+4], 0
		jnz	loc_48FED1
		xor	ebx, ebx

loc_48FDC1:				; CODE XREF: .text:0048FDD7j
		mov	edx, [ebp-98h]
		xor	ecx, ecx
		mov	cl, [edx+ebx+18h]
		cmp	ecx, [eax+ebx*4+14h]
		jnz	short loc_48FDD9
		inc	ebx
		cmp	ebx, 8
		jl	short loc_48FDC1

loc_48FDD9:				; CODE XREF: .text:0048FDD1j
		cmp	ebx, 8
		jl	loc_49000E
		mov	edx, [ebp-98h]
		cmp	dword ptr [edx+8], 0
		jnz	short loc_48FDF8
		cmp	dword ptr [eax+48h], 0
		jnz	loc_49000E

loc_48FDF8:				; CODE XREF: .text:0048FDECj
		mov	ecx, [ebp-98h]
		cmp	dword ptr [ecx+8], 1
		jnz	short loc_48FE1C
		mov	edx, [eax+48h]
		and	edx, 0FFFFFF80h
		cmp	edx, 0FFFFFF80h
		jz	short loc_48FE1C
		test	dword ptr [eax+48h], 0FFFFFF80h
		jnz	loc_49000E

loc_48FE1C:				; CODE XREF: .text:0048FE02j
					; .text:0048FE0Dj
		inc	dword ptr [ebp-3Ch]
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp-3Ch]
		jg	loc_49000E
		mov	ecx, [ebp-26Ch]
		mov	dl, [ebp-4]
		and	dl, 0C7h
		or	[ecx], dl
		mov	edx, [ebp-26Ch]
		or	byte ptr [edx+10h], 0C7h
		mov	ecx, [ebp-98h]
		mov	edx, [ecx+8]
		mov	[ebp-40h], edx
		cmp	dword ptr [ebp-40h], 1
		jnz	short loc_48FE6D
		mov	ecx, [ebp-26Ch]
		mov	dl, [eax+48h]
		mov	[ecx+1], dl
		mov	ecx, [ebp-26Ch]
		mov	byte ptr [ecx+11h], 0FFh
		jmp	short loc_48FE8C
; ---------------------------------------------------------------------------

loc_48FE6D:				; CODE XREF: .text:0048FE53j
		cmp	dword ptr [ebp-40h], 4
		jnz	short loc_48FE8C
		mov	edx, [ebp-26Ch]
		mov	ecx, [eax+48h]
		mov	[edx+1], ecx
		mov	edx, [ebp-26Ch]
		mov	dword ptr [edx+11h], 0FFFFFFFFh

loc_48FE8C:				; CODE XREF: .text:0048FE6Bj
					; .text:0048FE71j
		test	byte ptr [eax+53h], 80h
		jnz	short loc_48FEB3
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_48FEB3
		mov	ecx, [ebp-98h]
		mov	edx, [ecx+14h]
		cmp	edx, [eax+10h]
		jz	short loc_48FEB3
		mov	ecx, [eax+10h]
		mov	edx, 1
		shl	edx, cl
		or	[ebp-78h], edx

loc_48FEB3:				; CODE XREF: .text:0048FE90j
					; .text:0048FE96j ...
		mov	ecx, [ebp-98h]
		mov	edx, [ecx+24h]
		cmp	edx, [eax+54h]
		jnz	loc_490028
		or	byte ptr [ebp-6BFh], 1
		jmp	loc_490028
; ---------------------------------------------------------------------------

loc_48FED1:				; CODE XREF: .text:0048FDB9j
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		mov	edx, [ebp-98h]
		mov	ecx, [ebp-26Ch]
		mov	edx, [edx+4]
		mov	[ebp-270h], ecx

loc_48FEEB:				; CODE XREF: .text:loc_48FFFFj
		xor	ebx, ebx

loc_48FEED:				; CODE XREF: .text:0048FEFDj
		xor	ecx, ecx
		mov	cl, [edx+ebx+18h]
		cmp	ecx, [eax+ebx*4+14h]
		jnz	short loc_48FEFF
		inc	ebx
		cmp	ebx, 8
		jl	short loc_48FEED

loc_48FEFF:				; CODE XREF: .text:0048FEF7j
		cmp	ebx, 8
		jl	loc_48FFEF
		cmp	dword ptr [edx+8], 0
		jnz	short loc_48FF18
		cmp	dword ptr [eax+48h], 0
		jnz	loc_48FFEF

loc_48FF18:				; CODE XREF: .text:0048FF0Cj
		cmp	dword ptr [edx+8], 1
		jnz	short loc_48FF36
		mov	ecx, [eax+48h]
		and	ecx, 0FFFFFF80h
		cmp	ecx, 0FFFFFF80h
		jz	short loc_48FF36
		test	dword ptr [eax+48h], 0FFFFFF80h
		jnz	loc_48FFEF

loc_48FF36:				; CODE XREF: .text:0048FF1Cj
					; .text:0048FF27j
		inc	dword ptr [ebp-3Ch]
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp-3Ch]
		jg	loc_48FFEF
		mov	dword ptr [ebp-58h], 1
		mov	ebx, [ebp-270h]
		mov	cl, [ebp-4]
		and	cl, 0C7h
		or	[ebx], cl
		mov	ebx, [ebp-270h]
		mov	cl, [ebp-0Ch]
		mov	[ebx+1], cl
		mov	ecx, [ebp-270h]
		or	byte ptr [ecx+10h], 0C7h
		mov	ecx, [ebp-270h]
		mov	byte ptr [ecx+11h], 0FFh
		mov	ecx, [edx+8]
		mov	[ebp-40h], ecx
		cmp	dword ptr [ebp-40h], 1
		jnz	short loc_48FF9E
		mov	ecx, [ebp-270h]
		mov	bl, [eax+48h]
		mov	[ecx+2], bl
		mov	ecx, [ebp-270h]
		mov	byte ptr [ecx+12h], 0FFh
		jmp	short loc_48FFBD
; ---------------------------------------------------------------------------

loc_48FF9E:				; CODE XREF: .text:0048FF84j
		cmp	dword ptr [ebp-40h], 4
		jnz	short loc_48FFBD
		mov	ecx, [ebp-270h]
		mov	ebx, [eax+48h]
		mov	[ecx+2], ebx
		mov	ecx, [ebp-270h]
		mov	dword ptr [ecx+12h], 0FFFFFFFFh

loc_48FFBD:				; CODE XREF: .text:0048FF9Cj
					; .text:0048FFA2j
		test	byte ptr [eax+53h], 80h
		jnz	short loc_48FFDE
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_48FFDE
		mov	ecx, [edx+14h]
		cmp	ecx, [eax+10h]
		jz	short loc_48FFDE
		mov	ecx, [eax+10h]
		mov	ebx, 1
		shl	ebx, cl
		or	[ebp-78h], ebx

loc_48FFDE:				; CODE XREF: .text:0048FFC1j
					; .text:0048FFC7j ...
		mov	edx, [edx+24h]
		cmp	edx, [eax+54h]
		jnz	short loc_490005
		or	byte ptr [ebp-6BFh], 1
		jmp	short loc_490005
; ---------------------------------------------------------------------------

loc_48FFEF:				; CODE XREF: .text:0048FF02j
					; .text:0048FF12j ...
		inc	dword ptr [ebp-0Ch]
		add	edx, 0A8h
		cmp	dword ptr [ebp-0Ch], 100h

loc_48FFFF:
		jl	loc_48FEEB

loc_490005:				; CODE XREF: .text:0048FFE4j
					; .text:0048FFEDj
		cmp	dword ptr [ebp-0Ch], 100h
		jl	short loc_490028

loc_49000E:				; CODE XREF: .text:0048FD99j
					; .text:0048FDA9j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-98h], 0A8h

loc_49001B:
		cmp	dword ptr [ebp-4], 100h
		jl	loc_48FD95

loc_490028:				; CODE XREF: .text:0048FD54j
					; .text:0048FD73j ...
		cmp	dword ptr [ebp-4], 100h
		jl	short loc_490038
		mov	dword ptr [ebp-4Ch], 1

loc_490038:				; CODE XREF: .text:0048FBC0j
					; .text:0049002Fj
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_490066

loc_49003E:
		cmp	dword ptr [ebp-84h], 16h
		jz	short loc_490062

loc_490047:
		cmp	dword ptr [ebp-84h], 1Ah
		jz	short loc_490062

loc_490050:
		cmp	dword ptr [ebp-84h], 1Eh
		jz	short loc_490062

loc_490059:
		cmp	dword ptr [ebp-84h], 1Fh
		jnz	short loc_490066

loc_490062:				; CODE XREF: .text:00490045j
					; .text:0049004Ej ...
		or	dword ptr [ebp-78h], 40h

loc_490066:				; CODE XREF: .text:0049003Cj
					; .text:00490060j
		mov	edx, 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490070:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 cases 34-36
		mov	byte ptr [ecx],	2
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4900C8
		test	byte ptr [eax+3], 80h
		jz	short loc_49008E
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	20h

loc_49008E:				; CODE XREF: .text:00490083j
		test	byte ptr [eax+3], 40h
		jz	short loc_49009D
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	10h

loc_49009D:				; CODE XREF: .text:00490092j
		cmp	dword ptr [eax+10h], 8
		jnz	short loc_4900AC
		or	dword ptr [ebp-78h], 10000h
		jmp	short loc_4900BF
; ---------------------------------------------------------------------------

loc_4900AC:				; CODE XREF: .text:004900A1j
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_4900BF
		mov	ecx, [eax+10h]
		mov	ebx, 1
		shl	ebx, cl
		or	[ebp-78h], ebx

loc_4900BF:				; CODE XREF: .text:004900AAj
					; .text:004900B0j
		or	byte ptr [ebp-6BFh], 8
		jmp	short loc_4900E1
; ---------------------------------------------------------------------------

loc_4900C8:				; CODE XREF: .text:0049007Dj
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_4900E1
		cmp	dword ptr [eax+10h], 3
		jz	short loc_4900E1
		mov	ecx, [eax+10h]
		mov	ebx, 1
		shl	ebx, cl
		or	[ebp-78h], ebx

loc_4900E1:				; CODE XREF: .text:004900C6j
					; .text:004900CCj ...
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	ecx, [ebp-264h]
		add	ecx, 0FFFFFFD8h
		mov	[ebp-26Ch], ecx

loc_4900F5:				; CODE XREF: .text:00490112j
		mov	ecx, [ebp-26Ch]
		mov	ebx, [ebp-4]
		lea	ebx, [ecx+ebx+2Ah]
		mov	ecx, [ebp-4]
		mov	cl, [eax+ecx*4+14h]
		mov	[ebx], cl
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0Bh
		jl	short loc_4900F5
		test	byte ptr [eax+2], 20h
		jz	short loc_490121
		or	dword ptr [ebp-78h], 80h

loc_490121:				; CODE XREF: .text:00490118j
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	dword ptr [ebp-78h], 40h
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490134:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 cases 32,33
		mov	byte ptr [ecx],	2
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490168
		test	byte ptr [eax+3], 80h
		jz	short loc_490152
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	20h

loc_490152:				; CODE XREF: .text:00490147j
		test	byte ptr [eax+3], 40h
		jz	short loc_490161
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	10h

loc_490161:				; CODE XREF: .text:00490156j
		or	byte ptr [ebp-6BFh], 8

loc_490168:				; CODE XREF: .text:00490141j
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	ecx, [ebp-264h]
		add	ecx, 0FFFFFFD8h
		mov	[ebp-26Ch], ecx

loc_49017C:				; CODE XREF: .text:00490199j
		mov	ecx, [ebp-26Ch]
		mov	ebx, [ebp-4]
		lea	ebx, [ecx+ebx+2Ah]
		mov	ecx, [ebp-4]
		mov	cl, [eax+ecx*4+14h]
		mov	[ebx], cl
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0Bh
		jl	short loc_49017C
		test	byte ptr [eax+2], 20h
		jz	short loc_4901A8
		or	dword ptr [ebp-78h], 80h

loc_4901A8:				; CODE XREF: .text:0049019Fj
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	dword ptr [ebp-78h], 40h
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_4901BB:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		cmp	dword ptr [ebp-28h], 2 ; jumptable 0048F773 case 29
		jnz	short loc_4901C5
		or	dword ptr [ebp-78h], 40h

loc_4901C5:				; CODE XREF: .text:004901BFj
		mov	ecx, [ebp-264h]
		mov	byte ptr [ecx],	2
		mov	ecx, [ebp-264h]
		mov	ebx, [eax+48h]
		mov	[ecx+0Dh], ebx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490245
		test	byte ptr [eax+3], 80h
		jz	short loc_4901EF
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	20h

loc_4901EF:				; CODE XREF: .text:004901E4j
		test	byte ptr [eax+3], 40h
		jz	short loc_4901FE
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	10h

loc_4901FE:				; CODE XREF: .text:004901F3j
		cmp	dword ptr [eax+10h], 8
		jnz	short loc_49020D
		or	dword ptr [ebp-78h], 10000h
		jmp	short loc_490220
; ---------------------------------------------------------------------------

loc_49020D:				; CODE XREF: .text:00490202j
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_490220
		mov	ecx, [eax+10h]
		mov	ebx, 1
		shl	ebx, cl
		or	[ebp-78h], ebx

loc_490220:				; CODE XREF: .text:0049020Bj
					; .text:00490211j
		test	byte ptr [eax+2], 20h
		jz	short loc_49022D
		or	dword ptr [ebp-78h], 80h

loc_49022D:				; CODE XREF: .text:00490224j
		test	byte ptr [eax+1], 10h
		jz	short loc_49023C
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	8

loc_49023C:				; CODE XREF: .text:00490231j
		or	byte ptr [ebp-6BFh], 8
		jmp	short loc_49029E
; ---------------------------------------------------------------------------

loc_490245:				; CODE XREF: .text:004901DEj
		cmp	dword ptr [eax+10h], 0FFFFFFFFh
		jz	short loc_49025E
		cmp	dword ptr [eax+10h], 3
		jz	short loc_49025E
		mov	ecx, [eax+10h]
		mov	ebx, 1
		shl	ebx, cl
		or	[ebp-78h], ebx

loc_49025E:				; CODE XREF: .text:00490249j
					; .text:0049024Fj
		test	byte ptr [eax+2], 20h
		jz	short loc_490286
		or	dword ptr [ebp-78h], 80h
		mov	ecx, [ebp-268h]
		mov	bx, [eax+48h]
		mov	[ecx], bx
		mov	ecx, [ebp-268h]
		mov	word ptr [ecx+10h], 0FFFFh
		jmp	short loc_49029E
; ---------------------------------------------------------------------------

loc_490286:				; CODE XREF: .text:00490262j
		mov	ecx, [ebp-268h]
		mov	ebx, [eax+48h]
		mov	[ecx], ebx
		mov	ecx, [ebp-268h]
		mov	dword ptr [ecx+10h], 0FFFFFFFFh

loc_49029E:				; CODE XREF: .text:00490243j
					; .text:00490284j
		test	byte ptr [eax+2], 20h
		mov	ecx, 2
		jnz	short loc_4902AC
		add	ecx, 2

loc_4902AC:				; CODE XREF: .text:004902A7j
		mov	[ebp-40h], ecx
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_4902B4:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		cmp	dword ptr [ebp-28h], 0 ; jumptable 0048F773 case 108
		jnz	short loc_4902C3
		mov	dword ptr [ebp-28h], 4
		jmp	short loc_4902CD
; ---------------------------------------------------------------------------

loc_4902C3:				; CODE XREF: .text:004902B8j
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_4902CD
		or	dword ptr [ebp-78h], 40h

loc_4902CD:				; CODE XREF: .text:004902C1j
					; .text:004902C7j
		mov	ecx, [ebp-264h]
		mov	byte ptr [ecx],	4
		mov	ecx, [ebp-264h]
		mov	ebx, [eax+48h]
		mov	[ecx+0Dh], ebx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490300
		test	byte ptr [eax+1], 10h
		jz	short loc_4902F7
		mov	eax, [ebp-264h]
		or	byte ptr [eax],	8

loc_4902F7:				; CODE XREF: .text:004902ECj
		or	byte ptr [ebp-6BFh], 8
		jmp	short loc_490336
; ---------------------------------------------------------------------------

loc_490300:				; CODE XREF: .text:004902E6j
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_490314
		mov	ecx, [ebp-268h]
		mov	word ptr [ecx+10h], 0FFFFh
		jmp	short loc_490321
; ---------------------------------------------------------------------------

loc_490314:				; CODE XREF: .text:00490304j
		mov	ecx, [ebp-268h]
		mov	dword ptr [ecx+10h], 0FFFFFFFFh

loc_490321:				; CODE XREF: .text:00490312j
		mov	ecx, [ebp-28h]
		mov	[ebp-50h], ecx
		mov	ecx, [ebp-8]
		mov	[ebp-54h], ecx
		mov	eax, [eax+48h]
		mov	[ebp-88h], eax

loc_490336:				; CODE XREF: .text:004902FEj
		mov	eax, [ebp-28h]
		mov	[ebp-40h], eax
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490341:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 109
		mov	byte ptr [ecx],	4
		mov	ecx, [ebp-264h]
		mov	ebx, [eax+48h]
		mov	[ecx+0Dh], ebx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490374
		test	byte ptr [eax+1], 10h
		jz	short loc_49036B
		mov	eax, [ebp-264h]
		or	byte ptr [eax],	8

loc_49036B:				; CODE XREF: .text:00490360j
		or	byte ptr [ebp-6BFh], 8
		jmp	short loc_490394
; ---------------------------------------------------------------------------

loc_490374:				; CODE XREF: .text:0049035Aj
		mov	ecx, [ebp-268h]
		mov	byte ptr [ecx+10h], 0FFh
		mov	dword ptr [ebp-50h], 1
		mov	ecx, [ebp-8]
		mov	[ebp-54h], ecx
		mov	eax, [eax+48h]
		mov	[ebp-88h], eax

loc_490394:				; CODE XREF: .text:00490372j
		mov	dword ptr [ebp-40h], 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_4903A0:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 110
		mov	byte ptr [ecx],	4
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4903B6
		mov	dword ptr [ebp-28h], 4

loc_4903B6:				; CODE XREF: .text:004903ADj
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4903D2
		test	byte ptr [eax+1], 10h
		jz	short loc_4903CB
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	8

loc_4903CB:				; CODE XREF: .text:004903C0j
		or	byte ptr [ebp-6BFh], 8

loc_4903D2:				; CODE XREF: .text:004903BAj
		mov	ecx, [eax+48h]
		mov	[ebp-8Ch], ecx
		mov	ecx, [ebp-28h]
		mov	[ebp-44h], ecx
		mov	eax, [eax+4Ch]
		mov	[ebp-90h], eax
		mov	dword ptr [ebp-48h], 2
		cmp	dword ptr [ebp-28h], 2
		jnz	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		or	dword ptr [ebp-78h], 40h
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490404:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 112
		mov	byte ptr [ecx],	4
		mov	ecx, [ebp-264h]
		mov	dword ptr [ecx+0Dh], 1
		cmp	dword ptr [ebp-30h], 0
		jz	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		test	byte ptr [eax+1], 10h
		jz	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		mov	eax, [ebp-264h]
		or	byte ptr [eax],	8
		or	byte ptr [ebp-6BFh], 8
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490443:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 cases 113,118
		mov	byte ptr [ecx],	4
		mov	ecx, [ebp-264h]
		mov	ebx, [eax+48h]
		mov	[ecx+0Dh], ebx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490474
		test	byte ptr [eax+1], 10h
		jz	short loc_49046D
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	8

loc_49046D:				; CODE XREF: .text:00490462j
		or	byte ptr [ebp-6BFh], 8

loc_490474:				; CODE XREF: .text:0049045Cj
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_49047E
		or	dword ptr [ebp-78h], 40h

loc_49047E:				; CODE XREF: .text:00490478j
		mov	eax, [eax+48h]
		mov	[ebp-8Ch], eax
		mov	dword ptr [ebp-44h], 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490493:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 133
		mov	byte ptr [ecx],	1
		mov	ecx, [ebp-264h]
		mov	bl, [eax+0Ch]
		mov	[ecx+1], bl
		cmp	dword ptr [eax+0Ch], 8
		jge	short loc_4904E4
		mov	eax, [eax+0Ch]
		shl	eax, 4
		and	eax, 70h
		mov	[ebp-8Ch], eax
		mov	al, 70h
		mov	cl, [ebp-8Ch]
		mov	[ebp-6BEh], cl
		mov	[ebp-6D5h], cl
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_4904DC
		add	eax, 8Fh

loc_4904DC:				; CODE XREF: .text:004904D5j
		mov	[ebp-6C5h], al
		jmp	short loc_49050E
; ---------------------------------------------------------------------------

loc_4904E4:				; CODE XREF: .text:004904ACj
		cmp	dword ptr [eax+0Ch], 9
		jl	short loc_4904F1
		or	byte ptr [ebp-6BFh], 8

loc_4904F1:				; CODE XREF: .text:004904E8j
		xor	eax, eax
		mov	[ebp-8Ch], eax
		xor	ecx, ecx
		mov	[ebp-6BEh], cl
		mov	[ebp-6D5h], cl
		mov	byte ptr [ebp-6C5h], 0

loc_49050E:				; CODE XREF: .text:004904E2j
		mov	dword ptr [ebp-44h], 1
		or	byte ptr [ebp-6BFh], 4
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490521:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 114
		mov	byte ptr [ecx],	4
		mov	ecx, [ebp-264h]
		mov	ebx, [eax+48h]
		mov	[ecx+0Dh], ebx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490552
		test	byte ptr [eax+1], 10h
		jz	short loc_49054B
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	8

loc_49054B:				; CODE XREF: .text:00490540j
		or	byte ptr [ebp-6BFh], 8

loc_490552:				; CODE XREF: .text:0049053Aj
		mov	eax, [eax+48h]
		mov	[ebp-90h], eax
		mov	dword ptr [ebp-48h], 1
		jmp	loc_490612	; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_490567:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		mov	ecx, [ebp-264h]	; jumptable 0048F773 case 115
		mov	byte ptr [ecx],	4
		mov	ecx, [ebp-264h]
		mov	ebx, [eax+48h]
		mov	[ecx+0Dh], ebx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490598
		test	byte ptr [eax+1], 10h
		jz	short loc_490591
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	8

loc_490591:				; CODE XREF: .text:00490586j
		or	byte ptr [ebp-6BFh], 8

loc_490598:				; CODE XREF: .text:00490580j
		mov	eax, [eax+48h]
		mov	[ebp-8Ch], eax
		mov	dword ptr [ebp-44h], 2
		jmp	short loc_490612 ; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_4905AA:				; CODE XREF: .text:0048F773j
					; DATA XREF: .text:off_48F800o
		cmp	dword ptr [ebp-28h], 0 ; jumptable 0048F773 cases 116,117
		jnz	short loc_4905BF
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_4905C9
		mov	dword ptr [ebp-28h], 4
		jmp	short loc_4905C9
; ---------------------------------------------------------------------------

loc_4905BF:				; CODE XREF: .text:004905AEj
		cmp	dword ptr [ebp-28h], 2
		jnz	short loc_4905C9
		or	dword ptr [ebp-78h], 40h

loc_4905C9:				; CODE XREF: .text:004905B4j
					; .text:004905BDj ...
		mov	ecx, [ebp-264h]
		mov	byte ptr [ecx],	4
		mov	ecx, [ebp-264h]
		mov	ebx, [eax+48h]
		mov	[ecx+0Dh], ebx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4905FA
		test	byte ptr [eax+1], 10h
		jz	short loc_4905F3
		mov	ecx, [ebp-264h]
		or	byte ptr [ecx],	8

loc_4905F3:				; CODE XREF: .text:004905E8j
		or	byte ptr [ebp-6BFh], 8

loc_4905FA:				; CODE XREF: .text:004905E2j
		mov	eax, [eax+48h]
		mov	[ebp-8Ch], eax
		mov	eax, [ebp-28h]
		mov	[ebp-44h], eax
		jmp	short loc_490612 ; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
; ---------------------------------------------------------------------------

loc_49060B:				; CODE XREF: .text:0048F767j
					; .text:0048F773j
					; DATA XREF: ...
		mov	dword ptr [ebp-4Ch], 1 ; jumptable 0048F773 default case

loc_490612:				; CODE XREF: .text:0048F773j
					; .text:0048F875j ...
		inc	esi		; jumptable 0048F773 cases 1,2,5,8-11,13-15,37,40-48,66,90,106,107,120,122-124
		add	dword ptr [ebp-264h], 11h
		cmp	esi, [ebp-20h]
		jl	loc_48F72E

loc_490623:				; CODE XREF: .text:0048F728j
					; .text:0048F755j
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_49062F
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_490666

loc_49062F:				; CODE XREF: .text:00490627j
		mov	ecx, [ebp-9Ch]
		test	byte ptr [ecx+4], 20h
		jz	short loc_490666
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_49064A
		mov	dword ptr [ebp-4Ch], 1
		jmp	short loc_49065B
; ---------------------------------------------------------------------------

loc_49064A:				; CODE XREF: .text:0049063Fj
		cmp	dword ptr [ebp-28h], 1
		jz	short loc_49065B
		mov	eax, [ebp-8]
		or	byte ptr [ebp+eax-6E5h], 1

loc_49065B:				; CODE XREF: .text:00490648j
					; .text:0049064Ej
		mov	ecx, [ebp-8]
		or	byte ptr [ebp+ecx-6D5h], 1

loc_490666:				; CODE XREF: .text:0049062Dj
					; .text:00490639j
		cmp	dword ptr [ebp-4Ch], 0
		jnz	loc_490C98
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+4], 40h
		jz	short loc_4906B9
		mov	ecx, [ebp-68h]
		mov	[ebp-8Ch], ecx
		mov	dword ptr [ebp-44h], 1
		mov	al, [ebp-8Ch]
		mov	[ebp-6BEh], al
		mov	[ebp-6D5h], al
		mov	byte ptr [ebp-6C5h], 0FFh
		or	byte ptr [ebp-6BFh], 4
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4906B9
		or	byte ptr [ebp-6BFh], 8

loc_4906B9:				; CODE XREF: .text:0049067Aj
					; .text:004906B0j
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4906F6
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4906F6
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		and	eax, 0F000h
		cmp	eax, 1000h
		jz	short loc_4906F6
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		and	eax, 0F000h
		cmp	eax, 4000h
		jz	short loc_4906F6
		or	byte ptr [ebp-6BFh], 10h

loc_4906F6:				; CODE XREF: .text:004906BDj
					; .text:004906C3j ...
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_49070C
		test	byte ptr [ebp-676h], 40h
		jz	short loc_49070C
		or	byte ptr [ebp-6BFh], 20h

loc_49070C:				; CODE XREF: .text:004906FAj
					; .text:00490703j
		add	[ebp-8], edx
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_490A92
		mov	edx, [ebp-58h]
		add	edx, [ebp-40h]
		add	[ebp-8], edx
		cmp	dword ptr [ebp-44h], 1
		jnz	short loc_490745
		mov	cl, [ebp-8Ch]
		mov	eax, [ebp-8]
		mov	[ebp+eax-6E4h],	cl
		mov	edx, [ebp-8]
		mov	byte ptr [ebp+edx-6D4h], 0FFh
		jmp	short loc_490790
; ---------------------------------------------------------------------------

loc_490745:				; CODE XREF: .text:00490726j
		cmp	dword ptr [ebp-44h], 2
		jnz	short loc_49076C
		mov	ecx, [ebp-8]
		mov	ax, [ebp-8Ch]
		mov	[ebp+ecx-6E4h],	ax
		mov	edx, [ebp-8]
		mov	word ptr [ebp+edx-6D4h], 0FFFFh
		jmp	short loc_490790
; ---------------------------------------------------------------------------

loc_49076C:				; CODE XREF: .text:00490749j
		cmp	dword ptr [ebp-44h], 4
		jnz	short loc_490790
		mov	ecx, [ebp-8]
		mov	eax, [ebp-8Ch]
		mov	[ebp+ecx-6E4h],	eax
		mov	edx, [ebp-8]
		mov	dword ptr [ebp+edx-6D4h], 0FFFFFFFFh

loc_490790:				; CODE XREF: .text:00490743j
					; .text:0049076Aj ...
		mov	ecx, [ebp-44h]
		add	[ebp-8], ecx
		cmp	dword ptr [ebp-48h], 1
		jnz	short loc_4907B9
		mov	al, [ebp-90h]
		mov	edx, [ebp-8]
		mov	[ebp+edx-6E4h],	al
		mov	ecx, [ebp-8]
		mov	byte ptr [ebp+ecx-6D4h], 0FFh
		jmp	short loc_490804
; ---------------------------------------------------------------------------

loc_4907B9:				; CODE XREF: .text:0049079Aj
		cmp	dword ptr [ebp-48h], 2
		jnz	short loc_4907E0
		mov	eax, [ebp-8]
		mov	dx, [ebp-90h]
		mov	[ebp+eax-6E4h],	dx
		mov	ecx, [ebp-8]
		mov	word ptr [ebp+ecx-6D4h], 0FFFFh
		jmp	short loc_490804
; ---------------------------------------------------------------------------

loc_4907E0:				; CODE XREF: .text:004907BDj
		cmp	dword ptr [ebp-48h], 4
		jnz	short loc_490804
		mov	eax, [ebp-8]
		mov	edx, [ebp-8Ch]
		mov	[ebp+eax-6E4h],	edx
		mov	ecx, [ebp-8]
		mov	dword ptr [ebp+ecx-6D4h], 0FFFFFFFFh

loc_490804:				; CODE XREF: .text:004907B7j
					; .text:004907DEj ...
		mov	eax, [ebp-48h]
		add	[ebp-8], eax
		cmp	dword ptr [ebp-78h], 0
		jnz	short loc_490820
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx+5], 0F0h
		jz	loc_4909F8

loc_490820:				; CODE XREF: .text:0049080Ej
		xor	ebx, ebx
		test	byte ptr [ebp-77h], 1
		jz	short loc_490836
		cmp	ebx, 4
		jge	short loc_490836
		mov	byte ptr [ebp+ebx-94h],	0F0h
		inc	ebx

loc_490836:				; CODE XREF: .text:00490826j
					; .text:0049082Bj
		test	byte ptr [ebp-78h], 80h
		jz	short loc_49084A
		cmp	ebx, 4
		jge	short loc_49084A
		mov	byte ptr [ebp+ebx-94h],	67h
		inc	ebx

loc_49084A:				; CODE XREF: .text:0049083Aj
					; .text:0049083Fj
		test	dword ptr [ebp-78h], 80002h
		jz	short loc_490861
		cmp	ebx, 4
		jge	short loc_490861
		mov	byte ptr [ebp+ebx-94h],	2Eh
		inc	ebx

loc_490861:				; CODE XREF: .text:00490851j
					; .text:00490856j
		test	dword ptr [ebp-78h], 40008h
		jz	short loc_490878
		cmp	ebx, 4
		jge	short loc_490878
		mov	byte ptr [ebp+ebx-94h],	3Eh
		inc	ebx

loc_490878:				; CODE XREF: .text:00490868j
					; .text:0049086Dj
		test	byte ptr [ebp-78h], 1
		jz	short loc_49088C
		cmp	ebx, 4
		jge	short loc_49088C
		mov	byte ptr [ebp+ebx-94h],	26h
		inc	ebx

loc_49088C:				; CODE XREF: .text:0049087Cj
					; .text:00490881j
		test	byte ptr [ebp-78h], 10h
		jz	short loc_4908A0
		cmp	ebx, 4
		jge	short loc_4908A0
		mov	byte ptr [ebp+ebx-94h],	64h
		inc	ebx

loc_4908A0:				; CODE XREF: .text:00490890j
					; .text:00490895j
		test	byte ptr [ebp-78h], 20h
		jz	short loc_4908B4
		cmp	ebx, 4
		jge	short loc_4908B4
		mov	byte ptr [ebp+ebx-94h],	65h
		inc	ebx

loc_4908B4:				; CODE XREF: .text:004908A4j
					; .text:004908A9j
		test	byte ptr [ebp-78h], 4
		jz	short loc_4908C8
		cmp	ebx, 4
		jge	short loc_4908C8
		mov	byte ptr [ebp+ebx-94h],	36h
		inc	ebx

loc_4908C8:				; CODE XREF: .text:004908B8j
					; .text:004908BDj
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+9], 1
		jnz	loc_490988
		test	byte ptr [ebp-78h], 40h
		jnz	short loc_4908F5
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+4]
		and	ecx, 0F000h
		cmp	ecx, 1000h
		jnz	short loc_490903

loc_4908F5:				; CODE XREF: .text:004908DCj
		cmp	ebx, 4
		jge	short loc_490903
		mov	byte ptr [ebp+ebx-94h],	66h
		inc	ebx

loc_490903:				; CODE XREF: .text:004908F3j
					; .text:004908F8j
		test	dword ptr [ebp-78h], 20400h
		jnz	short loc_490938
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		and	edx, 0F000h
		cmp	edx, 3000h
		jz	short loc_490938
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		and	eax, 0F000h
		cmp	eax, 6000h
		jnz	short loc_490946

loc_490938:				; CODE XREF: .text:0049090Aj
					; .text:00490921j
		cmp	ebx, 4
		jge	short loc_490946
		mov	byte ptr [ebp+ebx-94h],	0F3h
		inc	ebx

loc_490946:				; CODE XREF: .text:00490936j
					; .text:0049093Bj
		test	byte ptr [ebp-77h], 2
		jnz	short loc_49097A
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+4]
		and	ecx, 0F000h
		cmp	ecx, 2000h
		jz	short loc_49097A
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		and	edx, 0F000h
		cmp	edx, 5000h
		jnz	short loc_490988

loc_49097A:				; CODE XREF: .text:0049094Aj
					; .text:00490961j
		cmp	ebx, 4
		jge	short loc_490988
		mov	byte ptr [ebp+ebx-94h],	0F2h
		inc	ebx

loc_490988:				; CODE XREF: .text:004908D2j
					; .text:00490978j ...
		mov	ecx, [ebp-8]
		lea	eax, [ebp-6E4h]
		push	ecx		; n
		lea	edx, [ebp-6E4h]
		add	edx, ebx
		push	eax		; src
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch
		mov	ecx, [ebp-8]
		lea	eax, [ebp-6D4h]
		lea	edx, [ebp-6D4h]
		push	ecx		; n
		push	eax		; src
		add	edx, ebx
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch
		push	ebx		; n
		lea	ecx, [ebp-94h]
		push	ecx		; src
		lea	eax, [ebp-6E4h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	edx, [ebp-6D4h]
		push	ebx		; n
		push	0FFh		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		add	[ebp-8], ebx
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_4909F8
		add	[ebp-54h], ebx

loc_4909F8:				; CODE XREF: .text:0049081Aj
					; .text:004909F3j
		cmp	dword ptr [ebp-50h], 1
		jnz	short loc_490A37
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp-8]
		mov	eax, [ebp-88h]
		sub	eax, ecx
		mov	edx, eax
		and	edx, 0FFFFFF80h
		test	edx, edx
		jz	short loc_490A2B
		mov	ecx, eax
		and	ecx, 0FFFFFF80h
		cmp	ecx, 0FFFFFF80h
		jz	short loc_490A2B
		or	dword ptr [ebp-7Ch], 8000h
		jmp	loc_490C98
; ---------------------------------------------------------------------------

loc_490A2B:				; CODE XREF: .text:00490A13j
					; .text:00490A1Dj
		mov	edx, [ebp-54h]
		mov	[ebp+edx-6E4h],	al
		jmp	short loc_490A92
; ---------------------------------------------------------------------------

loc_490A37:				; CODE XREF: .text:004909FCj
		cmp	dword ptr [ebp-50h], 4
		jnz	short loc_490A59
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-8]
		push	eax
		mov	eax, [ebp-88h]
		pop	edx
		sub	eax, edx
		mov	ecx, [ebp-54h]
		mov	[ebp+ecx-6E4h],	eax
		jmp	short loc_490A92
; ---------------------------------------------------------------------------

loc_490A59:				; CODE XREF: .text:00490A3Bj
		cmp	dword ptr [ebp-50h], 2
		jnz	short loc_490A92
		test	dword ptr [ebp-88h], 0FFFF0000h
		jz	short loc_490A77
		or	dword ptr [ebp-7Ch], 10000h
		jmp	loc_490C98
; ---------------------------------------------------------------------------

loc_490A77:				; CODE XREF: .text:00490A69j
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-8]
		push	eax
		mov	eax, [ebp-88h]
		pop	edx
		sub	eax, edx
		mov	ecx, [ebp-54h]
		mov	[ebp+ecx-6E4h],	ax

loc_490A92:				; CODE XREF: .text:00490713j
					; .text:00490A35j ...
		mov	al, [ebp-8]
		mov	[ebp-6C0h], al
		mov	dl, [ebp-20h]
		mov	[ebp-6BDh], dl
		mov	ecx, [ebp-78h]
		mov	[ebp-6C4h], ecx
		mov	eax, [ebp-9Ch]
		test	byte ptr [eax+9], 1
		jnz	loc_490B46
		mov	edx, [ebp-9Ch]
		mov	ecx, [edx+4]
		and	ecx, 0F000h
		or	[ebp-6C4h], ecx
		mov	eax, [ebp-9Ch]
		mov	edx, [eax+4]
		and	edx, 0F000h
		cmp	edx, 6000h
		jg	short loc_490B0D
		jz	short loc_490B3C
		sub	edx, 1000h
		jz	short loc_490B27
		sub	edx, 1000h
		jz	short loc_490B30
		sub	edx, 1000h
		jz	short loc_490B3C
		sub	edx, 2000h
		jz	short loc_490B30
		jmp	short loc_490B46
; ---------------------------------------------------------------------------

loc_490B0D:				; CODE XREF: .text:00490AE7j
		sub	edx, 8000h
		jz	short loc_490B3C
		sub	edx, 1000h
		jz	short loc_490B3C
		sub	edx, 1000h
		jz	short loc_490B30
		jmp	short loc_490B46
; ---------------------------------------------------------------------------

loc_490B27:				; CODE XREF: .text:00490AF1j
		or	dword ptr [ebp-6C4h], 40h
		jmp	short loc_490B46
; ---------------------------------------------------------------------------

loc_490B30:				; CODE XREF: .text:00490AF9j
					; .text:00490B09j ...
		or	dword ptr [ebp-6C4h], 200h
		jmp	short loc_490B46
; ---------------------------------------------------------------------------

loc_490B3C:				; CODE XREF: .text:00490AE9j
					; .text:00490B01j ...
		or	dword ptr [ebp-6C4h], 400h

loc_490B46:				; CODE XREF: .text:00490AB7j
					; .text:00490B0Bj ...
		test	byte ptr [ebp-6C2h], 2
		jz	short loc_490B67
		mov	ecx, [ebp-6C4h]
		and	ecx, 0FFFDFFFFh
		or	ecx, 400h
		mov	[ebp-6C4h], ecx

loc_490B67:				; CODE XREF: .text:00490B4Dj
		test	byte ptr [ebp-6C2h], 4
		jz	short loc_490B84
		mov	eax, [ebp-6C4h]
		and	eax, 0FFFBFFFFh
		or	eax, 8
		mov	[ebp-6C4h], eax

loc_490B84:				; CODE XREF: .text:00490B6Ej
		test	byte ptr [ebp-6C2h], 8
		jz	short loc_490BA2
		mov	edx, [ebp-6C4h]
		and	edx, 0FFF7FFFFh
		or	edx, 2
		mov	[ebp-6C4h], edx

loc_490BA2:				; CODE XREF: .text:00490B8Bj
		test	byte ptr [ebp-6C2h], 1
		jz	short loc_490BBC
		and	dword ptr [ebp-6C4h], 0FFFEFFFFh
		or	byte ptr [ebp-6BFh], 2

loc_490BBC:				; CODE XREF: .text:00490BA9j
		mov	ecx, [ebp-9Ch]
		mov	eax, [ecx+4]
		and	eax, 0C0000000h
		cmp	eax, 0C0000000h
		jnz	short loc_490BD8
		or	byte ptr [ebp-6BFh], 40h

loc_490BD8:				; CODE XREF: .text:00490BCFj
		xor	esi, esi
		jmp	short loc_490C01
; ---------------------------------------------------------------------------

loc_490BDC:				; CODE XREF: .text:00490C09j
		push	6Ch		; n
		mov	eax, esi
		shl	eax, 2
		lea	eax, [eax+eax*2]
		lea	eax, [eax+eax*8]
		add	eax, [ebp+10h]
		push	eax		; s2
		lea	edx, [ebp-6E4h]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_490C0B
		inc	esi

loc_490C01:				; CODE XREF: .text:00490BDAj
		mov	ecx, [ebp-14h]
		add	ecx, [ebp-10h]
		cmp	esi, ecx
		jl	short loc_490BDC

loc_490C0B:				; CODE XREF: .text:00490BFEj
		mov	eax, [ebp-14h]
		add	eax, [ebp-10h]
		cmp	esi, eax
		jl	short loc_490C8A
		mov	edx, [ebp-14h]
		add	edx, [ebp-10h]
		cmp	edx, [ebp+14h]
		jge	short loc_490C44
		mov	ecx, [ebp-14h]
		mov	edx, [ebp+10h]
		add	ecx, [ebp-10h]
		lea	esi, [ebp-6E4h]
		lea	eax, [ecx+ecx*2]
		mov	ecx, 1Bh
		lea	eax, [eax+eax*8]
		lea	edi, [edx+eax*4]
		rep movsd
		inc	dword ptr [ebp-10h]
		jmp	short loc_490C8A
; ---------------------------------------------------------------------------

loc_490C44:				; CODE XREF: .text:00490C1Ej
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_490C8A
		push	offset aNoRoomForAllPo ; "No room for all possible forms"
		call	_T
		pop	ecx
		mov	[ebp-190h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-194h], eax
		cmp	dword ptr [ebp-194h], 0
		jz	short loc_490C83
		mov	edx, [ebp-190h]
		push	edx		; src
		mov	ecx, [ebp-194h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_490C83:				; CODE XREF: .text:00490C6Bj
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_490C8A:				; CODE XREF: .text:00490C13j
					; .text:00490C42j ...
		cmp	dword ptr [ebp-5Ch], 0
		jz	short loc_490C98
		inc	dword ptr [ebp-38h]
		jmp	loc_48F474
; ---------------------------------------------------------------------------

loc_490C98:				; CODE XREF: .text:0048F467j
					; .text:0049066Aj ...
		inc	dword ptr [ebp-60h]
		cmp	dword ptr [ebp-60h], 2
		jl	loc_48F43F

loc_490CA5:				; CODE XREF: .text:0048D98Ej
					; .text:0048D9E7j ...
		add	dword ptr [ebp-9Ch], 34h

loc_490CAC:				; CODE XREF: .text:0048D952j
		mov	edx, [ebp-9Ch]
		cmp	dword ptr [edx], 0
		jnz	loc_48D957
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_49132B
		test	byte ptr [ebp-79h], 80h
		jz	short loc_490D0D
		push	offset aUnknownComma_0 ; "Unknown command"
		call	_T
		pop	ecx
		mov	[ebp-198h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-19Ch], ecx
		cmp	dword ptr [ebp-19Ch], 0
		jz	loc_491324
		mov	eax, [ebp-198h]
		push	eax		; src
		mov	edx, [ebp-19Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490D0D:				; CODE XREF: .text:00490CC9j
		test	byte ptr [ebp-79h], 40h
		jz	short loc_490D55
		push	offset aImplicitOperan ; "Implicit operand"
		call	_T
		pop	ecx
		mov	[ebp-1A0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1A4h], ecx
		cmp	dword ptr [ebp-1A4h], 0
		jz	loc_491324
		mov	eax, [ebp-1A0h]
		push	eax		; src
		mov	edx, [ebp-1A4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490D55:				; CODE XREF: .text:00490D11j
		test	byte ptr [ebp-79h], 4
		jz	short loc_490D9D
		push	offset aImpreciseComma ; "Imprecise command"
		call	_T
		pop	ecx
		mov	[ebp-1A8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1ACh], ecx
		cmp	dword ptr [ebp-1ACh], 0
		jz	loc_491324
		mov	eax, [ebp-1A8h]
		push	eax		; src
		mov	edx, [ebp-1ACh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490D9D:				; CODE XREF: .text:00490D59j
		test	byte ptr [ebp-79h], 2
		jz	short loc_490DE5
		push	offset aCommandIsAStan ; "Command is a standalone prefix"
		call	_T
		pop	ecx
		mov	[ebp-1B0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1B4h], ecx
		cmp	dword ptr [ebp-1B4h], 0
		jz	loc_491324
		mov	eax, [ebp-1B0h]
		push	eax		; src
		mov	edx, [ebp-1B4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490DE5:				; CODE XREF: .text:00490DA1j
		test	byte ptr [ebp-79h], 1
		jz	short loc_490E2D
		push	offset aLockIsNotAllow ; "LOCK is not allowed"
		call	_T
		pop	ecx
		mov	[ebp-1B8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1BCh], ecx
		cmp	dword ptr [ebp-1BCh], 0
		jz	loc_491324
		mov	eax, [ebp-1B8h]
		push	eax		; src
		mov	edx, [ebp-1BCh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490E2D:				; CODE XREF: .text:00490DE9j
		test	byte ptr [ebp-7Ah], 20h
		jz	short loc_490E75
		push	offset aJumpHintIsNotA ; "Jump hint is not allowed"
		call	_T
		pop	ecx
		mov	[ebp-1C0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1C4h], ecx
		cmp	dword ptr [ebp-1C4h], 0
		jz	loc_491324
		mov	eax, [ebp-1C0h]
		push	eax		; src
		mov	edx, [ebp-1C4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490E75:				; CODE XREF: .text:00490E31j
		test	byte ptr [ebp-7Ah], 10h
		jz	short loc_490EBD
		push	offset aPrefixIsNotAll ; "Prefix is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-1C8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1CCh], ecx
		cmp	dword ptr [ebp-1CCh], 0
		jz	loc_491324
		mov	eax, [ebp-1C8h]
		push	eax		; src
		mov	edx, [ebp-1CCh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490EBD:				; CODE XREF: .text:00490E79j
		test	byte ptr [ebp-7Ah], 8
		jz	short loc_490F05
		push	offset aPleaseSpecifyO ; "Please specify operand size"
		call	_T
		pop	ecx
		mov	[ebp-1D0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1D4h], ecx
		cmp	dword ptr [ebp-1D4h], 0
		jz	loc_491324
		mov	eax, [ebp-1D0h]
		push	eax		; src
		mov	edx, [ebp-1D4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490F05:				; CODE XREF: .text:00490EC1j
		test	byte ptr [ebp-7Ah], 4
		jz	short loc_490F4D
		push	offset aUnsupportedMem ; "Unsupported memory addressing	mode"
		call	_T
		pop	ecx
		mov	[ebp-1D8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1DCh], ecx
		cmp	dword ptr [ebp-1DCh], 0
		jz	loc_491324
		mov	eax, [ebp-1D8h]
		push	eax		; src
		mov	edx, [ebp-1DCh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490F4D:				; CODE XREF: .text:00490F09j
		test	byte ptr [ebp-7Ah], 2
		jz	short loc_490F95
		push	offset aConflictingDat ; "Conflicting data size"
		call	_T
		pop	ecx
		mov	[ebp-1E0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1E4h], ecx
		cmp	dword ptr [ebp-1E4h], 0
		jz	loc_491324
		mov	eax, [ebp-1E0h]
		push	eax		; src
		mov	edx, [ebp-1E4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490F95:				; CODE XREF: .text:00490F51j
		test	byte ptr [ebp-7Ah], 1
		jz	short loc_490FDD
		push	offset aConstantIsOutO ; "Constant is out of range"
		call	_T
		pop	ecx
		mov	[ebp-1E8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1ECh], ecx
		cmp	dword ptr [ebp-1ECh], 0
		jz	loc_491324
		mov	eax, [ebp-1E8h]
		push	eax		; src
		mov	edx, [ebp-1ECh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_490FDD:				; CODE XREF: .text:00490F99j
		test	byte ptr [ebp-7Bh], 80h
		jz	short loc_491025
		push	offset aDestinationIsO ; "Destination is out of	range"
		call	_T
		pop	ecx
		mov	[ebp-1F0h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1F4h], ecx
		cmp	dword ptr [ebp-1F4h], 0
		jz	loc_491324
		mov	eax, [ebp-1F0h]
		push	eax		; src
		mov	edx, [ebp-1F4h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_491025:				; CODE XREF: .text:00490FE1j
		test	byte ptr [ebp-7Bh], 40h
		jz	short loc_49106D
		push	offset aInvalidSegment ; "Invalid segment register"
		call	_T
		pop	ecx
		mov	[ebp-1F8h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1FCh], ecx
		cmp	dword ptr [ebp-1FCh], 0
		jz	loc_491324
		mov	eax, [ebp-1F8h]
		push	eax		; src
		mov	edx, [ebp-1FCh]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_49106D:				; CODE XREF: .text:00491029j
		test	byte ptr [ebp-7Bh], 20h
		jz	short loc_4910B5
		push	offset aNoMatchForSpec ; "No match for specified operands"
		call	_T
		pop	ecx
		mov	[ebp-200h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-204h], ecx
		cmp	dword ptr [ebp-204h], 0
		jz	loc_491324
		mov	eax, [ebp-200h]
		push	eax		; src
		mov	edx, [ebp-204h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_4910B5:				; CODE XREF: .text:00491071j
		test	byte ptr [ebp-7Bh], 10h
		jz	short loc_4910FD
		push	offset aInvalidOperand ; "Invalid operand size"
		call	_T
		pop	ecx
		mov	[ebp-208h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-20Ch], ecx
		cmp	dword ptr [ebp-20Ch], 0
		jz	loc_491324
		mov	eax, [ebp-208h]
		push	eax		; src
		mov	edx, [ebp-20Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_4910FD:				; CODE XREF: .text:004910B9j
		test	byte ptr [ebp-7Bh], 8
		jz	short loc_491145
		push	offset aInvalidJumpSiz ; "Invalid jump size specifier"
		call	_T
		pop	ecx
		mov	[ebp-210h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-214h], ecx
		cmp	dword ptr [ebp-214h], 0
		jz	loc_491324
		mov	eax, [ebp-210h]
		push	eax		; src
		mov	edx, [ebp-214h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_491145:				; CODE XREF: .text:00491101j
		test	byte ptr [ebp-7Bh], 4
		jz	short loc_49118D
		push	offset aExpectingMemor ; "Expecting memory operand"
		call	_T
		pop	ecx
		mov	[ebp-218h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-21Ch], ecx
		cmp	dword ptr [ebp-21Ch], 0
		jz	loc_491324
		mov	eax, [ebp-218h]
		push	eax		; src
		mov	edx, [ebp-21Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_49118D:				; CODE XREF: .text:00491149j
		test	byte ptr [ebp-7Bh], 2
		jz	short loc_4911D5
		push	offset aExpectingReg_0 ; "Expecting register"
		call	_T
		pop	ecx
		mov	[ebp-220h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-224h], ecx
		cmp	dword ptr [ebp-224h], 0
		jz	loc_491324
		mov	eax, [ebp-220h]
		push	eax		; src
		mov	edx, [ebp-224h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_4911D5:				; CODE XREF: .text:00491191j
		test	byte ptr [ebp-7Bh], 1
		jz	short loc_49121D
		push	offset aRegisterIsNotA ; "Register is not allowed"
		call	_T
		pop	ecx
		mov	[ebp-228h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-22Ch], ecx
		cmp	dword ptr [ebp-22Ch], 0
		jz	loc_491324
		mov	eax, [ebp-228h]
		push	eax		; src
		mov	edx, [ebp-22Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_49121D:				; CODE XREF: .text:004911D9j
		test	byte ptr [ebp-7Ch], 10h
		jz	short loc_491265
		push	offset aWrongNumberOfO ; "Wrong	number of operands"
		call	_T
		pop	ecx
		mov	[ebp-230h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-234h], ecx
		cmp	dword ptr [ebp-234h], 0
		jz	loc_491324
		mov	eax, [ebp-230h]
		push	eax		; src
		mov	edx, [ebp-234h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_491324
; ---------------------------------------------------------------------------

loc_491265:				; CODE XREF: .text:00491221j
		test	byte ptr [ebp-7Ch], 8
		jz	short loc_4912AA
		push	offset aRepPrefixIsNot ; "REP prefix is	not allowed"
		call	_T
		pop	ecx
		mov	[ebp-238h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-23Ch], ecx
		cmp	dword ptr [ebp-23Ch], 0
		jz	loc_491324
		mov	eax, [ebp-238h]
		push	eax		; src
		mov	edx, [ebp-23Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_491324
; ---------------------------------------------------------------------------

loc_4912AA:				; CODE XREF: .text:00491269j
		test	byte ptr [ebp-7Ch], 4
		jz	short loc_4912EB
		push	offset aUndocumented_0 ; "Undocumented command"
		call	_T
		pop	ecx
		mov	[ebp-240h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-244h], ecx
		cmp	dword ptr [ebp-244h], 0
		jz	short loc_491324
		mov	eax, [ebp-240h]
		push	eax		; src
		mov	edx, [ebp-244h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_491324
; ---------------------------------------------------------------------------

loc_4912EB:				; CODE XREF: .text:004912AEj
		push	offset aInvalidComma_0 ; "Invalid command"
		call	_T
		pop	ecx
		mov	[ebp-248h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-24Ch], ecx
		cmp	dword ptr [ebp-24Ch], 0
		jz	short loc_491324
		mov	eax, [ebp-248h]
		push	eax		; src
		mov	edx, [ebp-24Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_491324:				; CODE XREF: .text:00490CECj
					; .text:00490D08j ...
		xor	eax, eax
		jmp	loc_4913D5
; ---------------------------------------------------------------------------

loc_49132B:				; CODE XREF: .text:0048D12Bj
					; .text:00490CBFj
		mov	edx, [ebp-10h]
		add	[ebp-14h], edx
		cmp	dword_5EC0C4, 0
		jz	short loc_491350
		cmp	dword_5EC0BE, 6
		jnz	short loc_491350
		cmp	ps._mask, 3Bh
		jz	loc_48C828

loc_491350:				; CODE XREF: .text:00491338j
					; .text:00491341j
		cmp	dword_5EC0C4, 0
		jnz	short loc_491376
		cmp	dword_5EC0BE, 6
		jnz	short loc_491376
		cmp	ps._mask, 3Bh
		jnz	short loc_491376
		push	offset ps	; ps
		call	Scan
		pop	ecx

loc_491376:				; CODE XREF: .text:00491357j
					; .text:00491360j ...
		cmp	dword_5EC0BE, 0
		jz	short loc_4913C5
		cmp	dword_5EC0BE, 1
		jz	short loc_4913C5
		push	offset aExtraCharact_0 ; "Extra	characters on line"
		call	_T
		pop	ecx
		mov	[ebp-250h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-254h], ecx
		cmp	dword ptr [ebp-254h], 0
		jz	short loc_4913C1
		mov	eax, [ebp-250h]
		push	eax		; src
		mov	edx, [ebp-254h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_4913C1:				; CODE XREF: .text:004913A9j
		xor	eax, eax
		jmp	short loc_4913D5
; ---------------------------------------------------------------------------

loc_4913C5:				; CODE XREF: .text:0049137Dj
					; .text:00491386j
		cmp	dword ptr [ebp+14h], 0
		jle	short loc_4913D2
		mov	edx, [ebp+10h]
		or	byte ptr [edx+25h], 80h

loc_4913D2:				; CODE XREF: .text:004913C9j
		mov	eax, [ebp-14h]

loc_4913D5:				; CODE XREF: .text:0048C778j
					; .text:0048C7CAj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		