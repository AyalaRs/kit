.code

loc_47AC18:				; CODE XREF: .text:00482F46p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 9

loc_47AC21:				; CODE XREF: .text:0047AC29j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_47AC21
		mov	eax, [ebp-4]
		add	esp, 0FFFFF29Ch
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		push	eax		; ps
		call	Scan
		pop	ecx
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+42Eh], 2
		jz	short loc_47AC69
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+42Eh], 3
		jz	short loc_47AC69
		push	offset aBadStructureNa ; src
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47AC69:				; CODE XREF: .text:0047AC4Bj
					; .text:0047AC57j
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+22Ah], 1Fh
		jl	short loc_47AC85
		push	offset aLengthOfStruct ; "Length of structure _name is limited to "...
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47AC85:				; CODE XREF: .text:0047AC73j
		mov	edx, [ebp+8]
		lea	ecx, [ebp-1368h]
		add	edx, 2Ah
		push	edx		; src
		push	1Fh		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		push	25800h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jnz	short loc_47ACC4
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47ACC4:				; CODE XREF: .text:0047ACB2j
		xor	edi, edi
		xor	eax, eax
		mov	[ebp-14h], eax
		xor	edx, edx
		mov	[ebp-2Ch], edx

loc_47ACD0:				; CODE XREF: .text:0047ACE4j
					; .text:0047B4F3j ...
		mov	ecx, [ebp+8]
		push	ecx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+42Eh], 1
		jz	short loc_47ACD0
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+42Eh], 2
		jz	short loc_47AD02
		push	offset aExpectingField ; "Expecting field size or END"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47AD02:				; CODE XREF: .text:0047ACF0j
		push	(offset	aExpectingConst+26h) ; s2
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_47AF57
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_47AD34
		push	offset aEmptyStructure ; "Empty	structures are not allowed"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47AD34:				; CODE XREF: .text:0047AD22j
		mov	eax, [ebp-14h]
		mov	ecx, dword_5E9E60 ; int
		mov	edx, eax	; int
		shl	eax, 3
		sub	eax, edx
		add	eax, eax
		add	eax, 6
		cmp	ecx, dword_5E9E5C
		mov	[ebp-10h], eax
		jl	short loc_47AD93
		push	1		; flags
		push	offset failed	; failed
		push	4		; itemsize
		push	offset dword_5E9E5C ; pcount
		mov	eax, dword_5E9E58 ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E58, eax
		mov	edx, dword_5E9E60
		cmp	edx, dword_5E9E5C
		jl	short loc_47AD93
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47AD93:				; CODE XREF: .text:0047AD52j
					; .text:0047AD81j
		mov	ecx, dword_5E9E34
		add	ecx, [ebp-10h]
		add	ecx, edi	; int
		cmp	ecx, dword_5E9E30
		jle	short loc_47ADEA
		push	1		; flags
		push	offset failed	; failed
		push	1		; itemsize
		push	offset dword_5E9E30 ; pcount
		mov	eax, dword_5E9E2C ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E2C, eax
		mov	edx, dword_5E9E34
		add	edx, [ebp-10h]
		add	edx, edi
		cmp	edx, dword_5E9E30
		jle	short loc_47ADEA
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47ADEA:				; CODE XREF: .text:0047ADA4j
					; .text:0047ADD8j
		push	offset dword_5E9E58 ; a2
		lea	ecx, [ebp-1368h]
		push	ecx		; s1
		call	loc_478D08
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_47AE34
		lea	eax, [ebp-1368h]
		push	eax		; arglist
		push	offset aRedefinedStruc ; "  Redefined structure	'%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		mov	edx, dword_5E9E20
		mov	ecx, dword_5E9E34
		mov	[edx+ebx], ecx
		jmp	short loc_47AE6D
; ---------------------------------------------------------------------------

loc_47AE34:				; CODE XREF: .text:0047AE02j
		mov	eax, [ebp-0Ch]
		push	eax		; int
		lea	edx, [ebp-1368h]
		push	edx		; src
		mov	ecx, dword_5E9E34
		push	ecx		; int
		call	loc_478C44
		add	esp, 0Ch
		mov	edx, dword_5E9E60
		inc	dword_5E9E60
		mov	ecx, dword_5E9E58
		mov	[ecx+edx*4], eax
		mov	dword_5E9E64, 1

loc_47AE6D:				; CODE XREF: .text:0047AE32j
		inc	dword_5EBC80
		mov	eax, dword_5E9E2C
		add	eax, dword_5E9E34
		mov	[ebp-3Ch], eax
		mov	eax, [ebp-3Ch]
		mov	edx, [ebp-2Ch]
		mov	[eax], edx
		xor	edx, edx
		mov	ax, [ebp-14h]
		mov	ecx, [ebp-3Ch]
		mov	[ecx+4], ax
		mov	[ebp-4], edx
		lea	ecx, [ebp-518h]
		lea	eax, [ebp-1328h]
		mov	[ebp-50h], ecx
		mov	[ebp-4Ch], eax
		lea	edx, [ebp-11FCh]
		lea	ecx, [ebp-10D0h]
		mov	[ebp-48h], edx
		mov	[ebp-44h], ecx
		mov	eax, [ebp-3Ch]
		mov	ebx, [ebp-4]
		add	eax, 6
		lea	ecx, [ebp-0E78h]
		cmp	ebx, [ebp-14h]
		lea	edx, [ebp-9C8h]
		jge	short loc_47AF2A

loc_47AED7:				; CODE XREF: .text:0047AF28j
		mov	ebx, [edx]
		add	edx, 4
		mov	[eax], ebx
		mov	ebx, [ecx]
		add	ecx, 4
		mov	[eax+4], ebx
		mov	ebx, [ebp-44h]
		mov	bx, [ebx]
		mov	[eax+8], bx
		mov	ebx, [ebp-48h]
		mov	bl, [ebx]
		mov	[eax+0Ah], bl
		mov	ebx, [ebp-4Ch]
		mov	bl, [ebx]
		mov	[eax+0Bh], bl
		mov	ebx, [ebp-50h]
		mov	bx, [ebx]
		add	bx, [ebp-10h]
		mov	[eax+0Ch], bx
		add	eax, 0Eh
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-50h], 4
		inc	dword ptr [ebp-4Ch]
		inc	dword ptr [ebp-48h]
		add	dword ptr [ebp-44h], 2
		mov	ebx, [ebp-4]
		cmp	ebx, [ebp-14h]
		jl	short loc_47AED7

loc_47AF2A:				; CODE XREF: .text:0047AED5j
		push	edi		; n
		mov	edx, dword_5E9E2C
		add	edx, dword_5E9E34
		mov	eax, [ebp-38h]
		push	eax		; src
		add	edx, [ebp-10h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	edi, [ebp-10h]
		add	dword_5E9E34, edi
		xor	eax, eax
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47AF57:				; CODE XREF: .text:0047AD18j
		cmp	dword ptr [ebp-14h], 12Ch
		jl	short loc_47AF70
		push	offset aTooManyItems ; "Too many items"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47AF70:				; CODE XREF: .text:0047AF5Ej
		push	offset aByte_2	; s2
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AF94
		mov	dword ptr [ebp-24h], 1
		jmp	loc_47B04C
; ---------------------------------------------------------------------------

loc_47AF94:				; CODE XREF: .text:0047AF86j
		push	offset aWord_1	; s2
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AFB8
		mov	dword ptr [ebp-24h], 2
		jmp	loc_47B04C
; ---------------------------------------------------------------------------

loc_47AFB8:				; CODE XREF: .text:0047AFAAj
		push	offset aThree	; "THREE"
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AFD9
		mov	dword ptr [ebp-24h], 3
		jmp	short loc_47B04C
; ---------------------------------------------------------------------------

loc_47AFD9:				; CODE XREF: .text:0047AFCEj
		push	offset aDword_2	; s2
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AFFA
		mov	dword ptr [ebp-24h], 4
		jmp	short loc_47B04C
; ---------------------------------------------------------------------------

loc_47AFFA:				; CODE XREF: .text:0047AFEFj
		push	offset aQword_0	; s2
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B01B
		mov	dword ptr [ebp-24h], 8
		jmp	short loc_47B04C
; ---------------------------------------------------------------------------

loc_47B01B:				; CODE XREF: .text:0047B010j
		push	offset aTbyte_0	; s2
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B03C
		mov	dword ptr [ebp-24h], 0Ah
		jmp	short loc_47B04C
; ---------------------------------------------------------------------------

loc_47B03C:				; CODE XREF: .text:0047B031j
		push	offset aFieldSizeExpec ; "Field	size expected"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B04C:				; CODE XREF: .text:0047AF8Fj
					; .text:0047AFB3j ...
		mov	edx, [ebp+8]
		push	edx		; ps
		call	Scan
		pop	ecx
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+42Eh], 6
		jnz	short loc_47B0C1
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+18h], 2Ah
		jnz	short loc_47B0C1
		lea	edx, [ebp-28h]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_47B08F
		push	offset aInvalidRepeatC ; "Invalid repeat count"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B08F:				; CODE XREF: .text:0047B07Dj
		cmp	dword ptr [ebp-28h], 8000h
		ja	short loc_47B0A5
		mov	eax, [ebp-24h]
		imul	dword ptr [ebp-28h]
		cmp	eax, 8000h
		jbe	short loc_47B0B5

loc_47B0A5:				; CODE XREF: .text:0047B096j
		push	offset aRepeatCountOut ; "Repeat count outside of allowed limits"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B0B5:				; CODE XREF: .text:0047B0A3j
		mov	edx, [ebp+8]
		push	edx		; ps
		call	Scan
		pop	ecx
		jmp	short loc_47B0C8
; ---------------------------------------------------------------------------

loc_47B0C1:				; CODE XREF: .text:0047B060j
					; .text:0047B069j
		mov	dword ptr [ebp-28h], 1

loc_47B0C8:				; CODE XREF: .text:0047B0BFj
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+42Eh], 2
		jz	short loc_47B0F0
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+42Eh], 3
		jz	short loc_47B0F0
		push	offset aTypeNameExpect ; "Type _name expected"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B0F0:				; CODE XREF: .text:0047B0D2j
					; .text:0047B0DEj
		push	offset dword_5E9E38 ; a2
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_47B3B5
		xor	eax, eax
		mov	[ebp-20h], eax
		push	offset aChar	; "CHAR"
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B143
		push	offset aAtext_1	; s2
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B14C

loc_47B143:				; CODE XREF: .text:0047B129j
		mov	byte ptr [ebp-31h], 9
		jmp	loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B14C:				; CODE XREF: .text:0047B141j
		push	offset aWchar	; "WCHAR"
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B17C
		push	offset aWtext_0	; s2
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B185

loc_47B17C:				; CODE XREF: .text:0047B162j
		mov	byte ptr [ebp-31h], 0Bh
		jmp	loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B185:				; CODE XREF: .text:0047B17Aj
		push	offset aFloat_0	; "FLOAT"
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B1BC
		cmp	dword ptr [ebp-24h], 4
		jz	short loc_47B1B3
		push	offset aInvalidSizeOfF ; "Invalid size of FLOAT"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B1B3:				; CODE XREF: .text:0047B1A1j
		mov	byte ptr [ebp-31h], 0Dh
		jmp	loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B1BC:				; CODE XREF: .text:0047B19Bj
		push	offset aDouble_3 ; s2
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B1F3
		cmp	dword ptr [ebp-24h], 8
		jz	short loc_47B1EA
		push	offset aInvalidSizeOfD ; "Invalid size of DOUBLE"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B1EA:				; CODE XREF: .text:0047B1D8j
		mov	byte ptr [ebp-31h], 0Dh
		jmp	loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B1F3:				; CODE XREF: .text:0047B1D2j
		push	offset aLdouble	; "LDOUBLE"
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B22A
		cmp	dword ptr [ebp-24h], 0Ah
		jz	short loc_47B221
		push	offset aInvalidSizeOfL ; "Invalid size of LDOUBLE"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B221:				; CODE XREF: .text:0047B20Fj
		mov	byte ptr [ebp-31h], 0Dh
		jmp	loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B22A:				; CODE XREF: .text:0047B209j
		push	offset aAscii_2	; s2
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	loc_47B32A
		push	offset aUnicode_7 ; s2
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	loc_47B32A
		push	offset aFormat	; "FORMAT"
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	loc_47B32A
		push	offset aWformat	; "WFORMAT"
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	loc_47B32A
		push	offset aScan	; s2
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B32A
		push	offset off_542940 ; s2
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B32A
		push	offset word_5429DA ; s2
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B32A
		push	offset aCallback_1 ; "CALLBACK"
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B32A
		push	offset aWinproca_0 ; "WINPROCA"
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B32A
		push	offset aWinprocw_1 ; "WINPROCW"
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B349

loc_47B32A:				; CODE XREF: .text:0047B240j
					; .text:0047B25Cj ...
		cmp	dword ptr [ebp-24h], 4
		jz	short loc_47B340
		push	offset aInvalidPointer ; "Invalid pointer size"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B340:				; CODE XREF: .text:0047B32Ej
		mov	byte ptr [ebp-31h], 4
		jmp	loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B349:				; CODE XREF: .text:0047B328j
		push	offset aVoid_1	; s2
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B3A9
		push	offset aHexdata	; "HEXDATA"
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B3A9
		push	offset aInt_0	; s2
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47B3A9
		push	offset aUint_1	; s2
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B3AF

loc_47B3A9:				; CODE XREF: .text:0047B35Fj
					; .text:0047B377j ...
		mov	byte ptr [ebp-31h], 6
		jmp	short loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B3AF:				; CODE XREF: .text:0047B3A7j
		mov	byte ptr [ebp-31h], 4
		jmp	short loc_47B3D6
; ---------------------------------------------------------------------------

loc_47B3B5:				; CODE XREF: .text:0047B108j
		push	offset dword_5E9E58 ; a2
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	ebx, eax
		mov	dword ptr [ebp-20h], 1
		mov	byte ptr [ebp-31h], 4

loc_47B3D6:				; CODE XREF: .text:0047B147j
					; .text:0047B180j ...
		mov	eax, [ebp+8]
		push	eax		; ps
		call	Scan
		pop	ecx
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+42Eh], 6
		jnz	loc_47B4F8
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+18h], 2Ah
		jnz	loc_47B4F8
		test	ebx, ebx
		jnz	short loc_47B411
		push	offset aPointerToUndef ; "Pointer to undefined type or structure"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B411:				; CODE XREF: .text:0047B3FFj
		cmp	dword ptr [ebp-24h], 4
		jz	short loc_47B427
		push	offset aInvalidPointer ; "Invalid pointer size"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B427:				; CODE XREF: .text:0047B415j
		mov	eax, [ebp-24h]
		imul	dword ptr [ebp-28h]
		mov	edx, [ebp-14h]
		mov	[ebp+edx*4-9C8h], eax
		mov	dx, 1
		mov	ecx, [ebp-14h]
		mov	eax, [ebp+ecx*4-9C8h]
		add	[ebp-2Ch], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_47B451
		add	edx, 2

loc_47B451:				; CODE XREF: .text:0047B44Cj
		or	dx, 40h
		mov	ecx, [ebp-14h]
		mov	[ebp+ecx*2-10D0h], dx
		mov	eax, [ebp-14h]
		mov	byte ptr [ebp+eax-11FCh], 4
		mov	edx, [ebp+8]
		push	edx		; ps
		call	Scan
		mov	eax, [ebp-14h]
		pop	ecx
		mov	cl, [ebp-24h]
		mov	[ebp+eax-1328h], cl
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+42Eh], 2
		jz	short loc_47B4AA
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+42Eh], 3
		jz	short loc_47B4AA
		push	offset aBadItemName ; src
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B4AA:				; CODE XREF: .text:0047B48Cj
					; .text:0047B498j
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ah]
		inc	edx
		add	edx, edx
		push	edx		; n
		mov	ecx, [ebp+8]
		add	ecx, 2Ah
		push	ecx		; src
		mov	eax, [ebp-38h]
		add	eax, edi
		push	eax		; dest
		call	_memcpy
		mov	edx, [ebp-14h]
		add	esp, 0Ch
		mov	[ebp+edx*4-518h], edi
		mov	ecx, [ebp+8]
		mov	edx, [ebp-14h]
		mov	eax, [ecx+22Ah]
		mov	[ebp+edx*4-0E78h], ebx
		inc	eax
		add	eax, eax
		add	eax, edi
		inc	dword ptr [ebp-14h]
		mov	edi, eax
		jmp	loc_47ACD0
; ---------------------------------------------------------------------------

loc_47B4F8:				; CODE XREF: .text:0047B3EAj
					; .text:0047B3F7j
		test	ebx, ebx
		jnz	short loc_47B50C
		push	offset aUndefinedType ;	src
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B50C:				; CODE XREF: .text:0047B4FAj
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+42Eh], 2
		jz	short loc_47B534
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+42Eh], 3
		jz	short loc_47B534
		push	offset aBadItemName ; src
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B534:				; CODE XREF: .text:0047B516j
					; .text:0047B522j
		cmp	dword ptr [ebp-20h], 0
		jnz	loc_47B5D1
		mov	edx, [ebp-24h]
		mov	ecx, [ebp-14h]
		imul	edx, [ebp-28h]
		mov	[ebp+ecx*4-9C8h], edx
		mov	eax, [ebp-14h]
		mov	edx, [ebp+eax*4-9C8h]
		add	[ebp-2Ch], edx
		mov	ecx, [ebp-14h]
		mov	word ptr [ebp+ecx*2-10D0h], 40h
		mov	eax, [ebp-14h]
		mov	dl, [ebp-31h]
		mov	[ebp+eax-11FCh], dl
		mov	eax, [ebp-14h]
		mov	cl, [ebp-24h]
		mov	[ebp+eax-1328h], cl
		mov	edx, [ebp+8]
		mov	ecx, [edx+22Ah]
		inc	ecx
		add	ecx, ecx
		push	ecx		; n
		mov	eax, [ebp+8]
		add	eax, 2Ah
		push	eax		; src
		mov	edx, [ebp-38h]
		add	edx, edi
		push	edx		; dest
		call	_memcpy
		mov	ecx, [ebp-14h]
		add	esp, 0Ch
		mov	[ebp+ecx*4-518h], edi
		mov	eax, [ebp+8]
		mov	ecx, [ebp-14h]
		mov	edx, [eax+22Ah]
		mov	[ebp+ecx*4-0E78h], ebx
		inc	edx
		add	edx, edx
		add	edx, edi
		inc	dword ptr [ebp-14h]
		mov	edi, edx
		jmp	loc_47ACD0
; ---------------------------------------------------------------------------

loc_47B5D1:				; CODE XREF: .text:0047B538j
		mov	eax, dword_5E9E20
		lea	edx, [ebp-30h]
		add	eax, ebx
		mov	[ebp-40h], eax
		push	edx		; size
		mov	ecx, [ebp-40h]
		add	ecx, 4
		push	ecx		; _name
		call	Getstructureitemcount
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_47B5FD
		cmp	dword ptr [ebp-1Ch], 20h
		jle	short loc_47B60D

loc_47B5FD:				; CODE XREF: .text:0047B5F5j
		push	offset aChildStructure ; "Child	structure is too comlex"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B60D:				; CODE XREF: .text:0047B5FBj
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_47B622
		mov	eax, [ebp-24h]
		imul	dword ptr [ebp-28h]
		xor	edx, edx
		div	dword ptr [ebp-30h]
		test	edx, edx
		jz	short loc_47B632

loc_47B622:				; CODE XREF: .text:0047B611j
		push	offset aSizeOfFieldIsN ; "Size of field	is not multiple	of child "...
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B632:				; CODE XREF: .text:0047B620j
		mov	ecx, [ebp-1Ch]
		lea	eax, [ebp-9D68h]
		push	ecx		; nstr
		push	eax		; str
		push	0		; item0
		push	0		; _addr
		mov	edx, [ebp-40h]
		add	edx, 4
		push	edx		; _name
		call	Decodestructure
		add	esp, 14h
		cmp	eax, [ebp-1Ch]
		jz	short loc_47B665
		push	offset aUnableToGetDes ; "Unable to get	description of child stru"...
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B665:				; CODE XREF: .text:0047B653j
		mov	eax, [ebp-24h]
		xor	ecx, ecx
		imul	dword ptr [ebp-28h]
		xor	edx, edx
		div	dword ptr [ebp-30h]
		mov	[ebp-18h], eax
		mov	[ebp-4], ecx
		mov	eax, [ebp-4]
		cmp	eax, [ebp-18h]
		jge	loc_47ACD0

loc_47B684:				; CODE XREF: .text:0047B897j
		xor	edx, edx
		mov	[ebp-8], edx
		mov	ecx, [ebp-14h]
		lea	eax, [ebp+ecx*4-0E78h]
		mov	[ebp-68h], eax
		mov	edx, [ebp-14h]
		lea	ecx, [ebp+edx*4-518h]
		mov	[ebp-64h], ecx
		mov	eax, [ebp-14h]
		lea	edx, [ebp+eax-1328h]
		mov	[ebp-60h], edx
		mov	ecx, [ebp-14h]
		lea	eax, [ebp+ecx-11FCh]
		mov	[ebp-5Ch], eax
		mov	edx, [ebp-14h]
		lea	ecx, [ebp+edx*2-10D0h]
		mov	[ebp-58h], ecx
		mov	eax, [ebp-14h]
		lea	edx, [ebp+eax*4-9C8h]
		mov	[ebp-54h], edx
		lea	esi, [ebp-9D5Ah]
		mov	eax, [ebp-8]
		cmp	eax, [ebp-1Ch]
		jge	loc_47B88E

loc_47B6E9:				; CODE XREF: .text:0047B888j
		cmp	dword ptr [ebp-14h], 12Ch
		jl	short loc_47B702
		push	offset aTooManyItems ; "Too many items"
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B702:				; CODE XREF: .text:0047B6F0j
		mov	edx, [ebp+8]
		add	edx, 2Ah
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp-38h]
		add	ecx, edi
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		cmp	ebx, 0F0h
		jle	short loc_47B736
		push	offset aResultingNameO ; "Resulting _name of child structure membe"...
		call	_T
		pop	ecx
		jmp	loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B736:				; CODE XREF: .text:0047B724j
		cmp	dword ptr [ebp-18h], 1
		jnz	short loc_47B75E
		push	offset a__1	; "."
		push	100h		; n
		mov	eax, [ebp-38h]
		mov	edx, ebx
		add	edx, edx
		add	eax, edi
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_47B77D
; ---------------------------------------------------------------------------

loc_47B75E:				; CODE XREF: .text:0047B73Aj
		mov	ecx, [ebp-4]
		mov	edx, ebx
		push	ecx
		push	offset aI__	; "[%i.]."
		mov	eax, [ebp-38h]
		add	edx, edx
		add	eax, edi
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_47B77D:				; CODE XREF: .text:0047B75Cj
		mov	ecx, [ebp-8]
		lea	edx, [ebp-9D18h]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		shl	ecx, 4
		add	ecx, edx
		mov	edx, ebx
		push	ecx		; src
		mov	ecx, 100h
		sub	ecx, ebx
		add	edx, edx
		push	ecx		; n
		mov	eax, [ebp-38h]
		add	eax, edi
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	ebx, eax
		mov	edx, [ebp-54h]
		xor	eax, eax
		inc	ebx
		mov	al, [esi]
		add	ebx, ebx
		mov	[edx], eax
		add	ebx, edi
		add	[ebp-2Ch], eax
		add	esp, 0Ch
		mov	ax, [esi+2]
		mov	ecx, [ebp-58h]
		mov	[ecx], ax
		mov	edx, [ebp-5Ch]
		mov	cl, [esi-1]
		mov	[edx], cl
		mov	eax, [ebp-60h]
		mov	dl, [esi]
		mov	[eax], dl
		mov	ecx, [ebp-64h]
		mov	[ecx], edi
		mov	edi, ebx
		mov	eax, [ebp-58h]
		movzx	edx, word ptr [eax]
		and	edx, 6
		cmp	edx, 2
		jnz	short loc_47B820
		push	offset dword_5E9E58 ; a2
		mov	ecx, [ebp-8]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		shl	ecx, 4
		lea	edx, [ebp-9D56h]
		add	ecx, edx
		push	ecx		; s1
		call	loc_478D08
		add	esp, 8
		mov	ecx, [ebp-68h]
		mov	[ecx], eax
		jmp	short loc_47B84B
; ---------------------------------------------------------------------------

loc_47B820:				; CODE XREF: .text:0047B7F1j
		push	offset dword_5E9E38 ; a2
		mov	eax, [ebp-8]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*4]
		shl	eax, 4
		lea	ecx, [ebp-9D56h]
		add	eax, ecx
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		mov	edx, [ebp-68h]
		mov	[edx], eax

loc_47B84B:				; CODE XREF: .text:0047B81Ej
		mov	eax, [ebp-68h]
		cmp	dword ptr [eax], 0
		jnz	short loc_47B860
		push	offset aUndefinedChild ; "Undefined child member type"
		call	_T
		pop	ecx
		jmp	short loc_47B8A2
; ---------------------------------------------------------------------------

loc_47B860:				; CODE XREF: .text:0047B851j
		inc	dword ptr [ebp-14h]
		add	dword ptr [ebp-68h], 4
		add	dword ptr [ebp-64h], 4
		inc	dword ptr [ebp-60h]
		inc	dword ptr [ebp-5Ch]
		add	dword ptr [ebp-58h], 2
		add	dword ptr [ebp-54h], 4
		inc	dword ptr [ebp-8]
		add	esi, 450h
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp-1Ch]
		jl	loc_47B6E9

loc_47B88E:				; CODE XREF: .text:0047B6E3j
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-18h]
		jl	loc_47B684
		jmp	loc_47ACD0
; ---------------------------------------------------------------------------

loc_47B8A2:				; CODE XREF: .text:0047AC64j
					; .text:0047AC80j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_47B8AC:				; CODE XREF: .text:00482F78p
					; .text:00482FACp ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 3

loc_47B8B5:				; CODE XREF: .text:0047B8BDj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_47B8B5
		add	esp, 0FFFFFD0Ch
		mov	eax, [ebp-4]
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	[ebp-18h], eax
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jnz	short loc_47B8F3
		cmp	dword ptr [ebx+18h], 2Eh
		jnz	short loc_47B8F3
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_47B995
; ---------------------------------------------------------------------------

loc_47B8F3:				; CODE XREF: .text:0047B8E1j
					; .text:0047B8E7j
		cmp	dword ptr [ebx+42Eh], 2
		jz	short loc_47B915
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_47B915
		push	offset aBadModuleName ;	src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47B915:				; CODE XREF: .text:0047B8FAj
					; .text:0047B903j
		cmp	dword ptr [ebx+22Ah], 20h
		jl	short loc_47B92E
		push	offset aLengthOfModule ; "Length of module _name	is limited to 31 "...
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47B92E:				; CODE XREF: .text:0047B91Cj
		lea	ecx, [ebx+2Ah]
		push	ecx		; s
		call	__lwcsupr
		pop	ecx
		push	offset a_intern_ ; "_INTERN_"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47B954
		mov	dword ptr [ebp-18h], 1

loc_47B954:				; CODE XREF: .text:0047B94Bj
		lea	edx, [ebx+2Ah]
		lea	ecx, [ebp-2F8h]
		push	edx		; src
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jnz	short loc_47B985
		cmp	dword ptr [ebx+18h], 2Eh
		jz	short loc_47B995

loc_47B985:				; CODE XREF: .text:0047B97Dj
		push	offset aPointAfterModu ; "Point	after module _name expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47B995:				; CODE XREF: .text:0047B8EEj
					; .text:0047B983j
		mov	eax, [ebp-4]
		mov	word ptr [ebp+eax*2-2F8h], 2Eh
		inc	dword ptr [ebp-4]
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jz	short loc_47B9CE
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_47B9CE
		push	offset aBadFunctionNam ; src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47B9CE:				; CODE XREF: .text:0047B9B3j
					; .text:0047B9BCj
		mov	edx, [ebp-4]
		add	edx, [ebx+22Ah]
		cmp	edx, 100h
		jl	short loc_47B9EF
		push	offset aTooLongFunctio ; src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47B9EF:				; CODE XREF: .text:0047B9DDj
		lea	ecx, [ebx+2Ah]
		push	ecx		; src
		mov	eax, 100h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-2F8h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	[ebp-4], eax
		xor	eax, eax
		mov	[ebp-8], eax
		xor	edx, edx
		mov	[ebp-20h], edx
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-24h], ecx
		mov	[ebp-10h], eax
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-0Ch], eax
		mov	[ebp-1Ch], edx

loc_47BA31:				; CODE XREF: .text:0047BA59j
		mov	ecx, [ebp-8]
		lea	eax, [ebp+ecx*4-98h]
		mov	[ebp-38h], eax
		mov	edx, [ebp-8]
		lea	ecx, [ebp+edx*4-0FCh]
		mov	[ebp-2Ch], ecx

loc_47BA4B:				; CODE XREF: .text:0047C18Fj
					; .text:0047C19Cj
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 1
		pop	ecx
		jz	short loc_47BA31
		cmp	dword ptr [ebx+42Eh], 6
		jnz	short loc_47BAB8
		cmp	dword ptr [ebx+18h], 2E2E2Eh
		jnz	short loc_47BAB8
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_47BA83
		push	offset aVariableNumber ; src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BA83:				; CODE XREF: .text:0047BA71j
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_47BA99
		push	offset aEllipsis___AsF ; "Ellipsis (...) as first and only argume"...
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BA99:				; CODE XREF: .text:0047BA87j
		test	byte ptr [ebp+0Ch], 8
		jz	short loc_47BAAF
		push	offset aDuplicatedElli ; "Duplicated ellipsis"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BAAF:				; CODE XREF: .text:0047BA9Dj
		or	dword ptr [ebp+0Ch], 8
		jmp	loc_47C181
; ---------------------------------------------------------------------------

loc_47BAB8:				; CODE XREF: .text:0047BA62j
					; .text:0047BA6Bj
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47BAD8
		cmp	eax, 3
		jz	short loc_47BAD8
		push	offset aKeywordOrNameO ; "Keyword or _name of type expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BAD8:				; CODE XREF: .text:0047BAC1j
					; .text:0047BAC6j
		push	(offset	aExpectingConst+26h) ; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_47BD29
		cmp	dword ptr [ebp-1Ch], 1
		jle	short loc_47BB07
		push	offset aFunctionContai ; "Function contains too	many formats"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BB07:				; CODE XREF: .text:0047BAF5j
		push	4000h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_47BB2B
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BB2B:				; CODE XREF: .text:0047BB19j
		mov	ecx, [ebp-28h]
		mov	eax, [ebp+0Ch]
		mov	[ecx], eax
		mov	dl, [ebp-8]
		mov	ecx, [ebp-28h]
		mov	[ecx+4], dl
		mov	al, [ebp-24h]
		mov	edx, [ebp-28h]
		mov	[edx+5], al
		mov	ecx, [ebp-28h]
		mov	eax, [ebp-20h]
		mov	[ecx+6], eax
		mov	edi, [ebp-8]
		shl	edi, 3
		add	edi, 0Ah
		test	byte ptr [ebp+0Ch], 8
		jz	short loc_47BB69
		cmp	dword ptr [ebp-8], 0
		jle	short loc_47BB69
		mov	eax, [ebp-2Ch]
		or	dword ptr [eax], 20h

loc_47BB69:				; CODE XREF: .text:0047BB5Bj
					; .text:0047BB61j
		lea	eax, [ebp-0F8h]
		xor	esi, esi
		mov	[ebp-34h], eax
		lea	eax, [ebp-98h]
		mov	edx, [ebp-28h]
		mov	[ebp-30h], eax
		cmp	esi, [ebp-8]
		lea	ebx, [edx+0Ah]
		jge	short loc_47BBD6

loc_47BB88:				; CODE XREF: .text:0047BBD4j
		mov	edx, [ebp-30h]
		mov	ecx, [edx]
		mov	[ebx], ecx
		mov	ecx, esi
		mov	eax, [ebp-34h]
		shl	ecx, 9
		mov	dx, [eax]
		lea	eax, [ebp-32F8h]
		mov	[ebx+4], dx
		add	ecx, eax
		mov	[ebx+6], di
		push	ecx		; src
		push	100h		; n
		mov	edx, [ebp-28h]
		add	edx, edi
		push	edx		; dest
		call	StrcopyW
		add	dword ptr [ebp-34h], 4
		add	dword ptr [ebp-30h], 4
		inc	eax
		add	esp, 0Ch
		add	eax, eax
		inc	esi
		add	eax, edi	; int
		add	ebx, 8
		cmp	esi, [ebp-8]
		mov	edi, eax
		jl	short loc_47BB88

loc_47BBD6:				; CODE XREF: .text:0047BB86j
		mov	edx, dword_5E9E50 ; int
		cmp	edx, dword_5E9E4C
		jl	short loc_47BC23
		push	1		; flags
		push	offset failed	; failed
		push	4		; itemsize
		push	offset dword_5E9E4C ; pcount
		mov	ecx, dword_5E9E48 ; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E48, eax
		mov	eax, dword_5E9E50
		cmp	eax, dword_5E9E4C
		jl	short loc_47BC23
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BC23:				; CODE XREF: .text:0047BBE2j
					; .text:0047BC11j
		mov	edx, dword_5E9E34
		add	edx, edi	; int
		cmp	edx, dword_5E9E30
		jle	short loc_47BC74
		push	1		; flags
		push	offset failed	; failed
		push	1		; itemsize
		push	offset dword_5E9E30 ; pcount
		mov	ecx, dword_5E9E2C ; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E2C, eax
		mov	eax, dword_5E9E34
		add	eax, edi
		cmp	eax, dword_5E9E30
		jle	short loc_47BC74
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BC74:				; CODE XREF: .text:0047BC31j
					; .text:0047BC62j
		push	offset dword_5E9E48 ; a2
		lea	edx, [ebp-2F8h]
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_47BCBE
		lea	eax, [ebp-2F8h]
		push	eax		; arglist
		push	offset aRedefinedProce ; "  Redefined procedure	'%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		mov	edx, dword_5E9E20
		mov	ecx, dword_5E9E34
		mov	[edx+esi], ecx
		jmp	short loc_47BCF7
; ---------------------------------------------------------------------------

loc_47BCBE:				; CODE XREF: .text:0047BC8Cj
		mov	eax, [ebp-4]
		push	eax		; int
		lea	edx, [ebp-2F8h]
		push	edx		; src
		mov	ecx, dword_5E9E34
		push	ecx		; int
		call	loc_478C44
		add	esp, 0Ch
		mov	edx, dword_5E9E50
		inc	dword_5E9E50
		mov	ecx, dword_5E9E48
		mov	[ecx+edx*4], eax
		mov	dword_5E9E54, 1

loc_47BCF7:				; CODE XREF: .text:0047BCBCj
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_47BD03
		inc	dword_5EBC88

loc_47BD03:				; CODE XREF: .text:0047BCFBj
		push	edi		; n
		mov	eax, [ebp-28h]
		push	eax		; src
		mov	eax, dword_5E9E2C
		add	eax, dword_5E9E34
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword_5E9E34, edi
		xor	eax, eax
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BD29:				; CODE XREF: .text:0047BAEBj
		push	offset aReturns	; "RETURNS"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_47BE1F
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_47BD58
		push	offset aDuplicatedRetu ; "Duplicated RETURNS"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BD58:				; CODE XREF: .text:0047BD46j
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jnz	short loc_47BD7C
		cmp	dword ptr [ebx+18h], 2Ah
		jnz	short loc_47BD7C
		mov	edi, 1
		push	ebx		; ps
		call	Scan
		pop	ecx
		jmp	short loc_47BD7E
; ---------------------------------------------------------------------------

loc_47BD7C:				; CODE XREF: .text:0047BD66j
					; .text:0047BD6Cj
		xor	edi, edi

loc_47BD7E:				; CODE XREF: .text:0047BD7Aj
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47BD9E
		cmp	eax, 3
		jz	short loc_47BD9E
		push	offset aReturnTypeExpe ; "Return type expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BD9E:				; CODE XREF: .text:0047BD87j
					; .text:0047BD8Cj
		push	offset dword_5E9E38 ; a2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_47BDFF
		push	offset dword_5E9E58 ; a2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	loc_478D08
		add	esp, 8
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_47BDE2
		push	offset aUndefinedRetur ; "Undefined return type	or structure"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BDE2:				; CODE XREF: .text:0047BDD0j
		test	edi, edi
		jnz	short loc_47BDF6
		push	offset aCanTReturnStru ; src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BDF6:				; CODE XREF: .text:0047BDE4j
		mov	dword ptr [ebp-24h], 43h
		jmp	short loc_47BE13
; ---------------------------------------------------------------------------

loc_47BDFF:				; CODE XREF: .text:0047BDB6j
		test	edi, edi
		jz	short loc_47BE0C
		mov	dword ptr [ebp-24h], 41h
		jmp	short loc_47BE13
; ---------------------------------------------------------------------------

loc_47BE0C:				; CODE XREF: .text:0047BE01j
		mov	dword ptr [ebp-24h], 40h

loc_47BE13:				; CODE XREF: .text:0047BDFDj
					; .text:0047BE0Aj
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_47C181
; ---------------------------------------------------------------------------

loc_47BE1F:				; CODE XREF: .text:0047BD3Cj
		push	offset aPreserves_1 ; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_47BEFF
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_47BE4E
		push	offset aDuplicatedPres ; src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BE4E:				; CODE XREF: .text:0047BE3Cj
					; .text:0047BEDDj
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jz	short loc_47BE6E
		push	offset aRegisterNameEx ; "Register _name	expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BE6E:				; CODE XREF: .text:0047BE5Cj
		lea	edx, [ebx+2Ah]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		xor	esi, esi
		mov	edi, offset off_52FC84

loc_47BE7F:				; CODE XREF: .text:0047BE99j
		mov	eax, [edi]
		push	eax		; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47BE9B
		inc	esi
		add	edi, 4
		cmp	esi, 8
		jl	short loc_47BE7F

loc_47BE9B:				; CODE XREF: .text:0047BE90j
		cmp	esi, 8
		jl	short loc_47BEB0
		push	offset aRegisterNameEx ; "Register _name	expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BEB0:				; CODE XREF: .text:0047BE9Ej
		mov	ecx, esi
		mov	eax, 100h
		shl	eax, cl
		or	[ebp+0Ch], eax
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		test	eax, eax
		jz	short loc_47BEF3
		dec	eax
		jz	short loc_47BEF3
		cmp	dword ptr [ebx+42Eh], 6
		jnz	short loc_47BEE3
		cmp	dword ptr [ebx+18h], 2Ch
		jz	loc_47BE4E

loc_47BEE3:				; CODE XREF: .text:0047BED7j
		push	offset aCommaBetweenRe ; "Comma	between	register names expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BEF3:				; CODE XREF: .text:0047BECBj
					; .text:0047BECEj
		mov	dword ptr [ebp-10h], 1
		jmp	loc_47C181
; ---------------------------------------------------------------------------

loc_47BEFF:				; CODE XREF: .text:0047BE32j
		test	byte ptr [ebp+0Ch], 8
		jz	short loc_47BF15
		push	offset aEllipsis___Mus ; "Ellipsis (...) must be last in the list"...
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BF15:				; CODE XREF: .text:0047BF03j
		cmp	dword ptr [ebp-8], 18h
		jl	short loc_47BF2B
		push	offset aTooManyArgumen ; "Too many arguments"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BF2B:				; CODE XREF: .text:0047BF19j
		mov	edx, [ebp-2Ch]
		mov	dword ptr [edx+4], 40h
		push	offset aMark	; "MARK"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47BF58
		mov	eax, [ebp-2Ch]
		or	dword ptr [eax+4], 10h
		push	ebx		; ps
		call	Scan
		pop	ecx

loc_47BF58:				; CODE XREF: .text:0047BF48j
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47BF78
		cmp	eax, 3
		jz	short loc_47BF78
		push	offset aKeywordOrNameO ; "Keyword or _name of type expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BF78:				; CODE XREF: .text:0047BF61j
					; .text:0047BF66j
		push	offset aOut_0	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47BFF2
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jz	short loc_47BFB6
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_47BFB6
		push	offset aTypeNameExpect ; "Type _name expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47BFB6:				; CODE XREF: .text:0047BF9Bj
					; .text:0047BFA4j
		push	offset aAscii_2	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47BFE4
		push	offset aUnicode_7 ; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47BFE4
		xor	edi, edi
		jmp	short loc_47BFE9
; ---------------------------------------------------------------------------

loc_47BFE4:				; CODE XREF: .text:0047BFC9j
					; .text:0047BFDEj
		mov	edi, 1

loc_47BFE9:				; CODE XREF: .text:0047BFE2j
		mov	eax, [ebp-2Ch]
		or	dword ptr [eax+4], 8
		jmp	short loc_47BFF4
; ---------------------------------------------------------------------------

loc_47BFF2:				; CODE XREF: .text:0047BF8Bj
		xor	edi, edi

loc_47BFF4:				; CODE XREF: .text:0047BFF0j
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47C014
		cmp	eax, 3
		jz	short loc_47C014
		push	offset aTypeNameExpect ; "Type _name expected"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47C014:				; CODE XREF: .text:0047BFFDj
					; .text:0047C002j
		push	offset dword_5E9E38 ; a2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_47C032
		xor	eax, eax
		mov	[ebp-14h], eax
		jmp	short loc_47C04C
; ---------------------------------------------------------------------------

loc_47C032:				; CODE XREF: .text:0047C029j
		push	offset dword_5E9E58 ; a2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	esi, eax
		mov	dword ptr [ebp-14h], 1

loc_47C04C:				; CODE XREF: .text:0047C030j
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jnz	short loc_47C096
		cmp	dword ptr [ebx+18h], 2Ah
		jnz	short loc_47C096
		test	esi, esi
		jnz	short loc_47C076
		push	offset aPointerToUndef ; "Pointer to undefined type or structure"
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47C076:				; CODE XREF: .text:0047C064j
		cmp	dword ptr [ebp-14h], 0
		mov	eax, 1
		jz	short loc_47C084
		add	eax, 2

loc_47C084:				; CODE XREF: .text:0047C07Fj
		mov	edx, [ebp-2Ch]
		or	[edx+4], eax
		push	ebx		; ps
		call	Scan
		pop	ecx
		jmp	loc_47C132
; ---------------------------------------------------------------------------

loc_47C096:				; CODE XREF: .text:0047C05Aj
					; .text:0047C060j
		test	esi, esi
		jnz	short loc_47C0AA
		push	offset aUndefinedType ;	src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47C0AA:				; CODE XREF: .text:0047C098j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_47C0C0
		push	offset aStructureIsNot ; "Structure is not allowed, only pointer "...
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47C0C0:				; CODE XREF: .text:0047C0AEj
		mov	ecx, [ebp-2Ch]
		test	byte ptr [ecx+4], 8
		jz	short loc_47C0DD
		test	edi, edi
		jnz	short loc_47C0DD
		push	offset aOutAppliesOnly ; src
		call	_T
		pop	ecx
		jmp	loc_47C1AD
; ---------------------------------------------------------------------------

loc_47C0DD:				; CODE XREF: .text:0047C0C7j
					; .text:0047C0CBj
		push	offset aFormat	; "FORMAT"
		lea	edi, [ebx+2Ah]
		push	edi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47C128
		push	offset aWformat	; "WFORMAT"
		push	edi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47C128
		push	offset aScan	; s2
		push	edi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47C128
		push	offset off_542940 ; s2
		push	edi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47C12B

loc_47C128:				; CODE XREF: .text:0047C0F0j
					; .text:0047C102j ...
		inc	dword ptr [ebp-1Ch]

loc_47C12B:				; CODE XREF: .text:0047C126j
		mov	eax, [ebp-2Ch]
		or	dword ptr [eax+4], 0

loc_47C132:				; CODE XREF: .text:0047C091j
		cmp	dword ptr [ebx+42Eh], 2
		jz	short loc_47C151
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_47C151
		push	offset aBadParameterNa ; src
		call	_T
		pop	ecx
		jmp	short loc_47C1AD
; ---------------------------------------------------------------------------

loc_47C151:				; CODE XREF: .text:0047C139j
					; .text:0047C142j
		lea	edx, [ebx+2Ah]
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp-8]
		shl	ecx, 9
		lea	eax, [ebp-32F8h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, [ebp-38h]
		mov	[edx], esi
		inc	dword ptr [ebp-8]
		add	dword ptr [ebp-38h], 4
		add	dword ptr [ebp-2Ch], 4

loc_47C181:				; CODE XREF: .text:0047BAB3j
					; .text:0047BE1Aj ...
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 0
		pop	ecx
		jz	loc_47BA4B
		cmp	dword ptr [ebx+42Eh], 1
		jz	loc_47BA4B
		push	offset aExtraCharact_1 ; "Extra	characters on line"
		call	_T
		pop	ecx

loc_47C1AD:				; CODE XREF: .text:0047B910j
					; .text:0047B929j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_47C1B4:				; CODE XREF: .text:00483093p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF90h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jz	short loc_47C1E9
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_47C1E9
		push	offset aBadNameOfDataB ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C1E9:				; CODE XREF: .text:0047C1CEj
					; .text:0047C1D7j
		cmp	dword ptr [ebx+22Ah], 1Fh
		jl	short loc_47C202
		push	offset aLengthOfDataNa ; "Length of data _name is limited to 30 ch"...
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C202:				; CODE XREF: .text:0047C1F0j
		lea	eax, [ebx+2Ah]
		lea	edx, [ebp-64h]
		push	eax		; src
		push	1Fh		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	dword ptr [ebp-8], 1000h
		mov	ecx, [ebp-8]
		add	ecx, ecx
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_47C243
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C243:				; CODE XREF: .text:0047C231j
		mov	eax, [ebp-20h]
		xor	edx, edx
		add	eax, [ebp-8]
		xor	ecx, ecx
		mov	[ebp-24h], eax
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	[ebp-10h], edx
		mov	[ebp-14h], ecx
		xor	esi, esi
		or	dword ptr [ebx], 1000h

loc_47C263:				; CODE XREF: .text:0047C271j
					; .text:0047C791j
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 1
		pop	ecx
		jz	short loc_47C263
		mov	dword ptr [ebp-0Ch], 1
		xor	edi, edi

loc_47C27C:				; CODE XREF: .text:0047C338j
					; .text:0047C5C6j ...
		cmp	dword ptr [ebx+42Eh], 3
		jnz	loc_47C33D
		test	edi, edi
		jz	short loc_47C2A3
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aDataExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C2A3:				; CODE XREF: .text:0047C28Bj
		mov	eax, [ebx+22Ah]
		add	eax, esi
		inc	eax
		cmp	eax, [ebp-8]
		jle	short loc_47C2C7
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aSizeOfRawDataE ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C2C7:				; CODE XREF: .text:0047C2AFj
		mov	eax, [ebx+22Ah]
		test	eax, eax
		jle	short loc_47C305
		mov	edx, [ebp-8]
		sub	edx, esi
		push	edx		; ns
		mov	ecx, [ebp-20h]
		add	ecx, esi
		push	ecx		; s
		inc	eax
		push	eax		; nw
		lea	eax, [ebx+2Ah]
		push	eax		; w
		call	Unicodetoascii
		add	esp, 10h
		mov	edx, [ebx+22Ah]
		push	edx		; n
		push	0FFh		; c
		mov	ecx, [ebp-24h]
		add	ecx, esi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_47C305:				; CODE XREF: .text:0047C2CFj
		add	esi, [ebx+22Ah]
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jz	short loc_47C321
		cmp	dword ptr [ebx+18h], 2Ch
		jnz	short loc_47C32F

loc_47C321:				; CODE XREF: .text:0047C319j
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	edi, 1
		jmp	short loc_47C331
; ---------------------------------------------------------------------------

loc_47C32F:				; CODE XREF: .text:0047C31Fj
		xor	edi, edi

loc_47C331:				; CODE XREF: .text:0047C32Dj
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_47C27C
; ---------------------------------------------------------------------------

loc_47C33D:				; CODE XREF: .text:0047C283j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	loc_47C539
		push	(offset	aExpectingConst+26h) ; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_47C539
		and	dword ptr [ebx], 0FFFFEFFFh
		test	edi, edi
		jz	short loc_47C37D
		push	offset aDataExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C37D:				; CODE XREF: .text:0047C36Bj
		test	esi, esi
		jnz	short loc_47C391
		push	offset aEmptyRawDataBl ; "Empty	raw data block"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C391:				; CODE XREF: .text:0047C37Fj
		mov	edx, dword_5E9E80 ; int
		cmp	edx, dword_5E9E7C
		jl	short loc_47C3DE
		push	1		; flags
		push	offset failed	; failed
		push	4		; itemsize
		push	offset dword_5E9E7C ; pcount
		mov	ecx, dword_5E9E78 ; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E78, eax
		mov	eax, dword_5E9E80
		cmp	eax, dword_5E9E7C
		jl	short loc_47C3DE
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C3DE:				; CODE XREF: .text:0047C39Dj
					; .text:0047C3CCj
		mov	ebx, esi
		add	ebx, ebx
		mov	eax, ebx
		add	eax, dword_5E9E34
		add	eax, 0Ch	; int
		cmp	eax, dword_5E9E30
		jle	short loc_47C438
		push	1		; flags
		push	offset failed	; failed
		push	1		; itemsize
		push	offset dword_5E9E30 ; pcount
		mov	edx, dword_5E9E2C ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E2C, eax
		add	ebx, dword_5E9E34
		add	ebx, 0Ch
		cmp	ebx, dword_5E9E30
		jle	short loc_47C438
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C438:				; CODE XREF: .text:0047C3F3j
					; .text:0047C426j
		push	offset dword_5E9E78 ; a2
		lea	ecx, [ebp-64h]
		push	ecx		; s1
		call	loc_478D08
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_47C47C
		lea	eax, [ebp-64h]
		push	eax		; arglist
		push	offset aRedefinedDataB ; "  Redefined data block '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		mov	edx, dword_5E9E20
		mov	ecx, dword_5E9E34
		mov	[edx+ebx], ecx
		jmp	short loc_47C4B2
; ---------------------------------------------------------------------------

loc_47C47C:				; CODE XREF: .text:0047C44Dj
		mov	eax, [ebp-4]
		push	eax		; int
		lea	edx, [ebp-64h]
		push	edx		; src
		mov	ecx, dword_5E9E34
		push	ecx		; int
		call	loc_478C44
		add	esp, 0Ch
		mov	edx, dword_5E9E80
		inc	dword_5E9E80
		mov	ecx, dword_5E9E78
		mov	[ecx+edx*4], eax
		mov	dword_5E9E84, 1

loc_47C4B2:				; CODE XREF: .text:0047C47Aj
		mov	ebx, esi
		lea	ecx, [ebp-70h]
		mov	[ebp-70h], ebx
		inc	dword_5EBC8C
		mov	eax, [ebp-14h]
		mov	[ebp-6Ch], eax
		mov	eax, dword_5E9E2C
		mov	edx, [ebp-1Ch]
		add	eax, dword_5E9E34
		mov	[ebp-68h], edx
		push	0Ch		; n
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, dword_5E9E34
		add	eax, 0Ch
		mov	dword_5E9E34, eax
		push	ebx		; n
		mov	edx, [ebp-20h]
		mov	ecx, dword_5E9E2C
		add	ecx, eax
		push	edx		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword_5E9E34, esi
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_47C532
		push	ebx		; n
		mov	edx, dword_5E9E2C
		add	edx, dword_5E9E34
		mov	eax, [ebp-24h]
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword_5E9E34, esi

loc_47C532:				; CODE XREF: .text:0047C510j
		xor	eax, eax
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C539:				; CODE XREF: .text:0047C344j
					; .text:0047C35Dj
		cmp	dword ptr [ebx+42Eh], 2
		jnz	loc_47C5CB
		push	offset aFeatures ; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47C5CB
		test	edi, edi
		jz	short loc_47C575
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aDataExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C575:				; CODE XREF: .text:0047C55Dj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_47C591
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aDuplicatedFeat ; "Duplicated FEATURES"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C591:				; CODE XREF: .text:0047C579j
		lea	ecx, [ebp-1Ch]
		push	ecx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_47C5B8
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C5B8:				; CODE XREF: .text:0047C5A0j
		mov	dword ptr [ebp-10h], 1
		push	ebx		; ps
		call	Scan
		pop	ecx
		jmp	loc_47C27C
; ---------------------------------------------------------------------------

loc_47C5CB:				; CODE XREF: .text:0047C540j
					; .text:0047C559j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_47C61B
		push	offset aByte_2	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47C61B
		test	edi, edi
		jz	short loc_47C603
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aDataExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C603:				; CODE XREF: .text:0047C5EBj
		mov	dword ptr [ebp-0Ch], 1
		mov	edi, 1
		push	ebx		; ps
		call	Scan
		pop	ecx
		jmp	loc_47C27C
; ---------------------------------------------------------------------------

loc_47C61B:				; CODE XREF: .text:0047C5D2j
					; .text:0047C5E7j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_47C66B
		push	offset aDword_2	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47C66B
		test	edi, edi
		jz	short loc_47C653
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aDataExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C653:				; CODE XREF: .text:0047C63Bj
		mov	dword ptr [ebp-0Ch], 4
		mov	edi, 1
		push	ebx		; ps
		call	Scan
		pop	ecx
		jmp	loc_47C27C
; ---------------------------------------------------------------------------

loc_47C66B:				; CODE XREF: .text:0047C622j
					; .text:0047C637j
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47C67F
		cmp	eax, 4
		jnz	loc_47C782

loc_47C67F:				; CODE XREF: .text:0047C674j
		cmp	eax, 2
		jnz	short loc_47C6B3
		lea	edx, [ebp-18h]
		push	edx		; value
		lea	ecx, [ebx+2Ah]
		push	ecx		; _name
		call	Getconstantbyname
		add	esp, 8
		test	eax, eax
		jz	short loc_47C6AE
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aUnrecognizedCo ; "Unrecognized constant	or keyword"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C6AE:				; CODE XREF: .text:0047C696j
		or	eax, 0FFFFFFFFh
		jmp	short loc_47C6BC
; ---------------------------------------------------------------------------

loc_47C6B3:				; CODE XREF: .text:0047C682j
		mov	edx, [ebx+18h]
		mov	[ebp-18h], edx
		mov	eax, [ebx+1Ch]

loc_47C6BC:				; CODE XREF: .text:0047C6B1j
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_47C6F1
		test	dword ptr [ebp-18h], 0FFFFFF00h
		jnz	short loc_47C6DB
		mov	edx, eax
		and	edx, 0FFFFFF00h
		cmp	edx, 0FFFFFF00h
		jz	short loc_47C6F1

loc_47C6DB:				; CODE XREF: .text:0047C6C9j
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aByteDataExpect ; "Byte data expected"
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C6F1:				; CODE XREF: .text:0047C6C0j
					; .text:0047C6D9j
		mov	ecx, [ebp-0Ch]
		add	ecx, esi
		cmp	ecx, [ebp-8]
		jle	short loc_47C711
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aSizeOfRawDataE ; src
		call	_T
		pop	ecx
		jmp	loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C711:				; CODE XREF: .text:0047C6F9j
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_47C736
		mov	ecx, [ebp-20h]
		mov	dl, [ebp-18h]
		mov	[ecx+esi], dl
		mov	edx, eax
		mov	ecx, [ebp-24h]
		cmp	dl, 0FFh
		mov	[ecx+esi], dl
		jz	short loc_47C751
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_47C751
; ---------------------------------------------------------------------------

loc_47C736:				; CODE XREF: .text:0047C715j
		mov	edx, [ebp-20h]
		mov	ecx, [ebp-18h]
		cmp	eax, 0FFFFFFFFh
		mov	[edx+esi], ecx
		mov	edx, [ebp-24h]
		mov	[edx+esi], eax
		jz	short loc_47C751
		mov	dword ptr [ebp-14h], 1

loc_47C751:				; CODE XREF: .text:0047C72Bj
					; .text:0047C734j ...
		add	esi, [ebp-0Ch]
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jz	short loc_47C76A
		cmp	dword ptr [ebx+18h], 2Ch
		jnz	short loc_47C77B

loc_47C76A:				; CODE XREF: .text:0047C762j
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	edi, 1
		jmp	loc_47C27C
; ---------------------------------------------------------------------------

loc_47C77B:				; CODE XREF: .text:0047C768j
		xor	edi, edi
		jmp	loc_47C27C
; ---------------------------------------------------------------------------

loc_47C782:				; CODE XREF: .text:0047C679j
		mov	eax, [ebx+42Eh]
		test	eax, eax
		jz	short loc_47C78F
		dec	eax
		jnz	short loc_47C7AA

loc_47C78F:				; CODE XREF: .text:0047C78Aj
		test	edi, edi
		jz	loc_47C263
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aDataExpected ; src
		call	_T
		pop	ecx
		jmp	short loc_47C7BB
; ---------------------------------------------------------------------------

loc_47C7AA:				; CODE XREF: .text:0047C78Dj
		and	dword ptr [ebx], 0FFFFEFFFh
		push	offset aSyntaxErrorInR ; "Syntax error in raw data description"
		call	_T
		pop	ecx

loc_47C7BB:				; CODE XREF: .text:0047C1E4j
					; .text:0047C1FDj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_47C7C4:				; CODE XREF: .text:0047EAEDp
					; .text:0047EBC5p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDECh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_47C7F2
		test	esi, esi
		jbe	short loc_47C7F2
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_47C7F2
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_47C7F2
		mov	eax, [ebp+1Ch]
		cmp	dword ptr [eax], 1
		jge	short loc_47C7F9

loc_47C7F2:				; CODE XREF: .text:0047C7D8j
					; .text:0047C7DCj ...
		xor	eax, eax
		jmp	loc_47D987
; ---------------------------------------------------------------------------

loc_47C7F9:				; CODE XREF: .text:0047C7F0j
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		test	byte ptr [edx+ecx*4-440h], 20h
		jnz	short loc_47C81F
		xor	eax, eax
		jmp	loc_47D987
; ---------------------------------------------------------------------------

loc_47C81F:				; CODE XREF: .text:0047C816j
		xor	edx, edx
		mov	[ebp-8], edx
		mov	dword ptr [ebp-0Ch], 1

loc_47C82B:				; CODE XREF: .text:0047C84Fj
					; .text:0047C871j
		test	esi, esi
		jbe	loc_47D867

loc_47C833:				; CODE XREF: .text:0047D861j
		mov	ax, [ebx]
		test	ax, ax
		jnz	short loc_47C845
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	loc_47D867
; ---------------------------------------------------------------------------

loc_47C845:				; CODE XREF: .text:0047C839j
		cmp	ax, 25h
		jz	short loc_47C851
		add	ebx, 2
		dec	esi
		jmp	short loc_47C82B
; ---------------------------------------------------------------------------

loc_47C851:				; CODE XREF: .text:0047C849j
		add	ebx, 2
		dec	esi
		test	esi, esi
		jz	loc_47D867
		cmp	word ptr [ebx],	0
		jz	loc_47D867
		cmp	word ptr [ebx],	25h
		jnz	short loc_47C873
		add	ebx, 2
		dec	esi
		jmp	short loc_47C82B
; ---------------------------------------------------------------------------

loc_47C873:				; CODE XREF: .text:0047C86Bj
		push	offset asc_543F18 ; "<%"
		push	100h		; n
		lea	ecx, [ebp-214h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		xor	eax, eax
		mov	[ebp-4], eax
		lea	eax, [ebp+edi*2-214h]
		jmp	short loc_47C8B2
; ---------------------------------------------------------------------------

loc_47C89C:				; CODE XREF: .text:0047C8BDj
					; .text:0047C8C3j ...
		cmp	edi, 0FFh
		jge	short loc_47C8AE
		mov	dx, [ebx]
		inc	edi
		mov	[eax], dx
		add	eax, 2

loc_47C8AE:				; CODE XREF: .text:0047C8A2j
		add	ebx, 2
		dec	esi

loc_47C8B2:				; CODE XREF: .text:0047C89Aj
		test	esi, esi
		jbe	short loc_47C8D1
		mov	dx, [ebx]
		cmp	dx, 20h
		jz	short loc_47C89C
		cmp	dx, 2Dh
		jz	short loc_47C89C
		cmp	dx, 2Bh
		jz	short loc_47C89C
		cmp	dx, 23h
		jz	short loc_47C89C

loc_47C8D1:				; CODE XREF: .text:0047C8B4j
		test	esi, esi
		jbe	loc_47C9BC
		cmp	word ptr [ebx],	2Ah
		jnz	loc_47C9BC
		mov	eax, [ebp+1Ch]
		mov	eax, [eax]
		cmp	eax, 18h
		jge	loc_47D867
		mov	edx, eax
		shl	edx, 4
		add	edx, eax
		lea	edx, [eax+edx*8]
		lea	edx, [eax+edx*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+edx*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		xor	ecx, ecx
		mov	[eax+edx*4], ecx
		mov	edx, [ebp+1Ch]
		mov	eax, [edx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		mov	word ptr [ecx+eax*4+0Ch], 60h
		push	offset aInt_0	; "INT"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset asc_543F1E ; "<*>"
		push	100h		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]
		cmp	edi, 0FFh
		jge	short loc_47C9B6
		mov	dx, [ebx]
		mov	[ebp+edi*2-214h], dx
		inc	edi

loc_47C9B6:				; CODE XREF: .text:0047C9A8j
		add	ebx, 2
		dec	esi
		jmp	short loc_47C9F4
; ---------------------------------------------------------------------------

loc_47C9BC:				; CODE XREF: .text:0047C8D3j
					; .text:0047C8DDj
		lea	ecx, [ebp+edi*2-214h]
		mov	[ebp-10h], ecx
		jmp	short loc_47C9E2
; ---------------------------------------------------------------------------

loc_47C9C8:				; CODE XREF: .text:0047C9F2j
		cmp	edi, 0FFh
		jge	short loc_47C9DE
		mov	eax, [ebp-10h]
		mov	dx, [ebx]
		mov	[eax], dx
		inc	edi
		add	dword ptr [ebp-10h], 2

loc_47C9DE:				; CODE XREF: .text:0047C9CEj
		add	ebx, 2
		dec	esi

loc_47C9E2:				; CODE XREF: .text:0047C9C6j
		test	esi, esi
		jbe	short loc_47C9F4
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_47C9C8

loc_47C9F4:				; CODE XREF: .text:0047C9BAj
					; .text:0047C9E4j
		test	esi, esi
		jbe	loc_47CB41
		cmp	word ptr [ebx],	2Eh
		jnz	loc_47CB41
		cmp	edi, 0FFh
		jge	short loc_47CA1A
		mov	ax, [ebx]
		mov	[ebp+edi*2-214h], ax
		inc	edi

loc_47CA1A:				; CODE XREF: .text:0047CA0Cj
		add	ebx, 2
		dec	esi
		test	esi, esi
		jbe	loc_47CB09
		cmp	word ptr [ebx],	2Ah
		jnz	loc_47CB09
		mov	edx, [ebp+1Ch]
		mov	eax, [edx]
		cmp	eax, 18h
		jge	loc_47D867
		mov	edx, eax
		shl	edx, 4
		add	edx, eax
		lea	edx, [eax+edx*8]
		lea	edx, [eax+edx*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+edx*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		xor	ecx, ecx
		mov	[eax+edx*4], ecx
		mov	edx, [ebp+1Ch]
		mov	eax, [edx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		mov	word ptr [ecx+eax*4+0Ch], 60h
		push	offset aInt_0	; "INT"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset a__3	; "<.*>"
		push	100h		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]
		cmp	edi, 0FFh
		jge	short loc_47CB03
		mov	dx, [ebx]
		mov	[ebp+edi*2-214h], dx
		inc	edi

loc_47CB03:				; CODE XREF: .text:0047CAF5j
		add	ebx, 2
		dec	esi
		jmp	short loc_47CB41
; ---------------------------------------------------------------------------

loc_47CB09:				; CODE XREF: .text:0047CA20j
					; .text:0047CA2Aj
		lea	ecx, [ebp+edi*2-214h]
		mov	[ebp-14h], ecx
		jmp	short loc_47CB2F
; ---------------------------------------------------------------------------

loc_47CB15:				; CODE XREF: .text:0047CB3Fj
		cmp	edi, 0FFh
		jge	short loc_47CB2B
		mov	eax, [ebp-14h]
		mov	dx, [ebx]
		mov	[eax], dx
		inc	edi
		add	dword ptr [ebp-14h], 2

loc_47CB2B:				; CODE XREF: .text:0047CB1Bj
		add	ebx, 2
		dec	esi

loc_47CB2F:				; CODE XREF: .text:0047CB13j
		test	esi, esi
		jbe	short loc_47CB41
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_47CB15

loc_47CB41:				; CODE XREF: .text:0047C9F6j
					; .text:0047CA00j ...
		test	esi, esi
		jbe	short loc_47CB7E
		mov	ax, [ebx]
		cmp	ax, 68h
		jz	short loc_47CB60
		cmp	ax, 6Ch
		jz	short loc_47CB60
		cmp	ax, 4Ch
		jz	short loc_47CB60
		cmp	ax, 77h
		jnz	short loc_47CB7E

loc_47CB60:				; CODE XREF: .text:0047CB4Cj
					; .text:0047CB52j ...
		mov	ax, [ebx]
		movzx	edx, ax
		mov	[ebp-4], edx
		cmp	edi, 0FFh
		jge	short loc_47CB7A
		mov	[ebp+edi*2-214h], ax
		inc	edi

loc_47CB7A:				; CODE XREF: .text:0047CB6Fj
		add	ebx, 2
		dec	esi

loc_47CB7E:				; CODE XREF: .text:0047CB43j
					; .text:0047CB5Ej
		test	esi, esi
		jz	loc_47D867
		cmp	word ptr [ebx],	0
		jz	loc_47D867
		mov	ecx, [ebp+1Ch]
		cmp	dword ptr [ecx], 18h
		jge	loc_47D867
		cmp	edi, 0FFh
		jge	short loc_47CBB0
		mov	ax, [ebx]
		mov	[ebp+edi*2-214h], ax
		inc	edi

loc_47CBB0:				; CODE XREF: .text:0047CBA2j
		mov	edx, 100h
		lea	ecx, [ebp-214h]
		sub	edx, edi
		add	edi, edi
		push	(offset	asc_543F1E+4) ;	src
		push	edx		; n
		add	edi, ecx
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		xor	ecx, ecx
		mov	[eax+edx*4], ecx
		mov	edx, [ebp+1Ch]
		mov	eax, [edx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		mov	word ptr [ecx+eax*4+0Ch], 60h
		lea	eax, [ebp-214h]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 4Ch
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	edi, edi
		movzx	eax, word ptr [ebx]
		add	eax, 0FFFFFFBDh	; switch 54 cases
		cmp	eax, 35h
		ja	loc_47D82B	; jumptable 0047CC4D default case
		mov	al, ds:byte_47CC54[eax]
		jmp	ds:off_47CC8A[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_47CC54	db	8,     0,     7,     0 ; DATA XREF: .text:0047CC47r
		db	7,     0,     0,     0 ; indirect table	for switch statement
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	3,     0,     0,     0
		db	0,     1,     0,     9
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	8,     6,     7,     7
		db	7,     0,     6,     0
		db	0,     0,     0,     5
		db	1,     4,     0,     0
		db	3,     0,     2,     0
		db	0,     1
off_47CC8A	dd offset loc_47D82B, offset loc_47D090, offset	loc_47CEA1
					; DATA XREF: .text:0047CC4Dr
		dd offset loc_47D300, offset loc_47D2AF, offset	loc_47D447 ; jump table	for switch statement
		dd offset loc_47CCB2, offset loc_47D492, offset	loc_47D396
		dd offset loc_47D27F
; ---------------------------------------------------------------------------

loc_47CCB2:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		cmp	dword ptr [ebp+10h], 0 ; jumptable 0047CC4D cases 100,105
		jz	loc_47CD3D
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		or	word ptr [edx+ecx*4+0Ch], 1
		cmp	dword ptr [ebp-4], 4Ch
		jnz	short loc_47CD0D
		push	offset aQuad_0	; "QUAD"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CD0D:				; CODE XREF: .text:0047CCDBj
		push	offset aInt_0	; "INT"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CD3D:				; CODE XREF: .text:0047CCB6j
		cmp	dword ptr [ebp-4], 4Ch
		jnz	loc_47CE71
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		add	edx, 2
		cmp	edx, 18h
		jle	short loc_47CD60
		mov	edi, 1
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CD60:				; CODE XREF: .text:0047CD54j
		mov	edx, eax
		push	offset a____9	; "..."
		shl	eax, 4
		push	100h		; n
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aQuad_lo	; "QUAD_LO"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+eax*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		xor	eax, eax
		mov	[edx+ecx*4], eax
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		mov	word ptr [edx+ecx*4+0Ch], 60h
		lea	ecx, [ebp-214h]
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aQuad_hi	; "QUAD_HI"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CE71:				; CODE XREF: .text:0047CD41j
		push	offset aInt_0	; "INT"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CEA1:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		cmp	dword ptr [ebp+10h], 0 ; jumptable 0047CC4D case 117
		jz	loc_47CF2C
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		or	word ptr [eax+edx*4+0Ch], 1
		cmp	dword ptr [ebp-4], 4Ch
		jnz	short loc_47CEFC
		push	offset aQuad_0	; "QUAD"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CEFC:				; CODE XREF: .text:0047CECAj
		push	offset aUint_1	; "UINT"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CF2C:				; CODE XREF: .text:0047CEA5j
		cmp	dword ptr [ebp-4], 4Ch
		jnz	loc_47D060
		mov	edx, [ebp+1Ch]
		mov	eax, [edx]
		mov	edx, eax
		add	edx, 2
		cmp	edx, 18h
		jle	short loc_47CF4F
		mov	edi, 1
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47CF4F:				; CODE XREF: .text:0047CF43j
		mov	edx, eax
		push	offset a____9	; "..."
		shl	eax, 4
		push	100h		; n
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aQuad_lo	; "QUAD_LO"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+eax*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		xor	eax, eax
		mov	[edx+ecx*4], eax
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		mov	word ptr [edx+ecx*4+0Ch], 60h
		lea	ecx, [ebp-214h]
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aQuad_hi	; "QUAD_HI"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D060:				; CODE XREF: .text:0047CF30j
		push	offset aUint_1	; "UINT"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D090:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		cmp	dword ptr [ebp+10h], 0 ; jumptable 0047CC4D cases 88,111,120
		jz	loc_47D11B
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		or	word ptr [eax+edx*4+0Ch], 1
		cmp	dword ptr [ebp-4], 4Ch
		jnz	short loc_47D0EB
		push	offset aQuad_0	; "QUAD"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D0EB:				; CODE XREF: .text:0047D0B9j
		push	offset aHexdata	; "HEXDATA"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D11B:				; CODE XREF: .text:0047D094j
		cmp	dword ptr [ebp-4], 4Ch
		jnz	loc_47D24F
		mov	edx, [ebp+1Ch]
		mov	eax, [edx]
		mov	edx, eax
		add	edx, 2
		cmp	edx, 18h
		jle	short loc_47D13E
		mov	edi, 1
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D13E:				; CODE XREF: .text:0047D132j
		mov	edx, eax
		push	offset a____9	; "..."
		shl	eax, 4
		push	100h		; n
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aQuad_lo	; "QUAD_LO"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+eax*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		xor	eax, eax
		mov	[edx+ecx*4], eax
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		mov	word ptr [edx+ecx*4+0Ch], 60h
		lea	ecx, [ebp-214h]
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aQuad_hi	; "QUAD_HI"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D24F:				; CODE XREF: .text:0047D11Fj
		push	offset aHexdata	; "HEXDATA"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D27F:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		push	offset aHex	; jumptable 0047CC4D case 90
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D2AF:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		cmp	dword ptr [ebp+10h], 0 ; jumptable 0047CC4D case 112
		jz	short loc_47D2D0
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		or	word ptr [eax+edx*4+0Ch], 1

loc_47D2D0:				; CODE XREF: .text:0047D2B3j
		push	offset aHex	; "HEX"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D300:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		cmp	dword ptr [ebp-4], 68h ; jumptable 0047CC4D cases 83,115
		jnz	short loc_47D30A
		xor	eax, eax
		jmp	short loc_47D332
; ---------------------------------------------------------------------------

loc_47D30A:				; CODE XREF: .text:0047D304j
		cmp	dword ptr [ebp-4], 6Ch
		jz	short loc_47D316
		cmp	dword ptr [ebp-4], 77h
		jnz	short loc_47D31D

loc_47D316:				; CODE XREF: .text:0047D30Ej
		mov	eax, 1
		jmp	short loc_47D332
; ---------------------------------------------------------------------------

loc_47D31D:				; CODE XREF: .text:0047D314j
		cmp	word ptr [ebx],	73h
		jnz	short loc_47D328
		mov	eax, [ebp+14h]
		jmp	short loc_47D332
; ---------------------------------------------------------------------------

loc_47D328:				; CODE XREF: .text:0047D321j
		cmp	dword ptr [ebp+14h], 0
		setz	al
		and	eax, 1

loc_47D332:				; CODE XREF: .text:0047D308j
					; .text:0047D31Bj ...
		test	eax, eax
		jz	short loc_47D366
		push	offset aUnicode_7 ; "UNICODE"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D366:				; CODE XREF: .text:0047D334j
		push	offset aAscii_2	; "ASCII"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D396:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		cmp	dword ptr [ebp+10h], 0 ; jumptable 0047CC4D cases 67,99
		jz	short loc_47D3B7
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		or	word ptr [edx+ecx*4+0Ch], 1

loc_47D3B7:				; CODE XREF: .text:0047D39Aj
		cmp	dword ptr [ebp-4], 68h
		jnz	short loc_47D3C1
		xor	eax, eax
		jmp	short loc_47D3E3
; ---------------------------------------------------------------------------

loc_47D3C1:				; CODE XREF: .text:0047D3BBj
		cmp	dword ptr [ebp-4], 6Ch
		jnz	short loc_47D3CE
		mov	eax, 1
		jmp	short loc_47D3E3
; ---------------------------------------------------------------------------

loc_47D3CE:				; CODE XREF: .text:0047D3C5j
		cmp	word ptr [ebx],	63h
		jnz	short loc_47D3D9
		mov	eax, [ebp+14h]
		jmp	short loc_47D3E3
; ---------------------------------------------------------------------------

loc_47D3D9:				; CODE XREF: .text:0047D3D2j
		cmp	dword ptr [ebp+14h], 0
		setz	al
		and	eax, 1

loc_47D3E3:				; CODE XREF: .text:0047D3BFj
					; .text:0047D3CCj ...
		test	eax, eax
		jz	short loc_47D417
		push	offset aWchar	; "WCHAR"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D417:				; CODE XREF: .text:0047D3E5j
		push	offset aChar	; "CHAR"
		push	1Fh		; n
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+18h]
		add	ecx, 0Eh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D447:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		mov	edx, [ebp+1Ch]	; jumptable 0047CC4D case 110
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		or	word ptr [edx+ecx*4+0Ch], 1
		push	offset aInt_0	; "INT"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D492:				; CODE XREF: .text:0047CC4Dj
					; DATA XREF: .text:off_47CC8Ao
		cmp	dword ptr [ebp+10h], 0 ; jumptable 0047CC4D cases 69,71,101-103
		jz	loc_47D553
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		or	word ptr [ecx+eax*4+0Ch], 1
		cmp	dword ptr [ebp-4], 4Ch
		jnz	short loc_47D4ED
		push	offset aLdouble	; "LDOUBLE"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D4ED:				; CODE XREF: .text:0047D4BBj
		cmp	dword ptr [ebp-4], 6Ch
		jnz	short loc_47D523
		push	offset aDouble_3 ; "DOUBLE"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D523:				; CODE XREF: .text:0047D4F1j
		push	offset aFloat_0	; "FLOAT"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D553:				; CODE XREF: .text:0047D496j
		cmp	dword ptr [ebp-4], 4Ch
		jnz	loc_47D704
		mov	eax, [ebp+1Ch]
		mov	eax, [eax]
		mov	edx, eax
		add	edx, 3
		cmp	edx, 18h
		jle	short loc_47D576
		mov	edi, 1
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D576:				; CODE XREF: .text:0047D56Aj
		mov	edx, eax
		push	offset a____9	; "..."
		shl	eax, 4
		push	100h		; n
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aLdouble_lo ; "LDOUBLE_LO"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+eax*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		xor	eax, eax
		mov	[edx+ecx*4], eax
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		mov	word ptr [edx+ecx*4+0Ch], 40h
		push	offset a____9	; "..."
		push	100h		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset asc_542996 ; "L"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+1Ch]
		inc	dword ptr [ecx]
		inc	dword ptr [ebp-8]
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		mov	word ptr [eax+edx*4+0Ch], 60h
		lea	edx, [ebp-214h]
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aLdouble_hi ; "LDOUBLE_HI"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D704:				; CODE XREF: .text:0047D557j
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		add	edx, 2
		cmp	edx, 18h
		jle	short loc_47D71D
		mov	edi, 1
		jmp	loc_47D830
; ---------------------------------------------------------------------------

loc_47D71D:				; CODE XREF: .text:0047D711j
		mov	edx, eax
		push	offset a____9	; "..."
		shl	eax, 4
		push	100h		; n
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aDouble_lo ; "DOUBLE_LO"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+eax*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		xor	eax, eax
		mov	[edx+ecx*4], eax
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	edx, [ebp+18h]
		mov	word ptr [edx+ecx*4+0Ch], 60h
		lea	ecx, [ebp-214h]
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 4Ch
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aDouble_hi ; "DOUBLE_HI"
		push	1Fh		; n
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, [ebp+18h]
		add	edx, 0Eh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_47D830
; ---------------------------------------------------------------------------

loc_47D82B:				; CODE XREF: .text:0047CC41j
					; .text:0047CC4Dj
					; DATA XREF: ...
		mov	edi, 1		; jumptable 0047CC4D default case

loc_47D830:				; CODE XREF: .text:0047CD08j
					; .text:0047CD38j ...
		add	ebx, 2
		dec	esi
		test	edi, edi
		jnz	short loc_47D867
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		and	word ptr [eax+edx*4-440h], 0FFDFh
		mov	edx, [ebp+1Ch]
		inc	dword ptr [edx]
		inc	dword ptr [ebp-8]
		test	esi, esi
		ja	loc_47C833

loc_47D867:				; CODE XREF: .text:0047C82Dj
					; .text:0047C840j ...
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_47D95F
		mov	ecx, [ebp+20h]
		cmp	ecx, [ebp-8]
		jle	loc_47D95F
		jmp	loc_47D93E
; ---------------------------------------------------------------------------

loc_47D882:				; CODE XREF: .text:0047D94Cj
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	eax, [ebp+18h]
		xor	ecx, ecx
		mov	[eax+edx*4], ecx
		mov	edx, [ebp+1Ch]
		mov	eax, [edx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		mov	word ptr [ecx+eax*4+0Ch], 60h
		mov	eax, [ebp-8]
		mov	edx, off_5417C4[eax*4]
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 4Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aHex	; "HEX"
		push	1Fh		; n
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, [ebp+18h]
		add	eax, 0Eh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+eax*4-440h], 0FFDFh
		mov	eax, [ebp+1Ch]
		inc	dword ptr [eax]
		inc	dword ptr [ebp-8]

loc_47D93E:				; CODE XREF: .text:0047D87Dj
		mov	edx, [ebp-8]
		cmp	edx, [ebp+20h]
		jge	short loc_47D952
		mov	ecx, [ebp+1Ch]
		cmp	dword ptr [ecx], 18h
		jl	loc_47D882

loc_47D952:				; CODE XREF: .text:0047D944j
		mov	eax, [ebp-8]
		cmp	eax, [ebp+20h]
		jnz	short loc_47D95F
		xor	edx, edx
		mov	[ebp-0Ch], edx

loc_47D95F:				; CODE XREF: .text:0047D86Bj
					; .text:0047D877j ...
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_47D984
		mov	ecx, [ebp+1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		mov	ecx, [ebp+18h]
		and	word ptr [ecx+eax*4-440h], 0FFDFh

loc_47D984:				; CODE XREF: .text:0047D963j
		mov	eax, [ebp-8]

loc_47D987:				; CODE XREF: .text:0047C7F4j
					; .text:0047C81Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
