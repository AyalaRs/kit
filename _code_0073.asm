.code

; int __cdecl loc_489A88(wchar_t *dst)
loc_489A88:				; CODE XREF: .text:0048A829p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF70h
		xor	eax, eax
		mov	dword_5EC0D0, eax
		mov	value, eax
		push	ebx
		push	esi
		push	edi
		mov	edi, offset ps
		cmp	dword ptr [edi+42Eh], 2
		jnz	loc_48A34B
		xor	esi, esi
		mov	ebx, offset g_REG

loc_489AB9:				; CODE XREF: .text:00489C1Aj
		mov	eax, [ebx]
		push	eax		; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_489C13
		mov	ecx, [ebx+8]
		mov	dword_5EC0C8, ecx
		mov	eax, [ebx+4]
		push	edi		; ps
		mov	value, eax
		call	Scan
		pop	ecx
		cmp	dword_5EC0C8, 10h
		jnz	short loc_489B18
		cmp	dword ptr [edi+42Eh], 6
		jnz	short loc_489B18
		cmp	dword ptr [edi+18h], 3Ah
		jnz	short loc_489B18
		mov	dword_5EC0C8, 20h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489B18:				; CODE XREF: .text:00489AEFj
					; .text:00489AF8j ...
		cmp	dword ptr [edi+42Eh], 6
		jnz	loc_489C0C
		cmp	dword ptr [edi+18h], 2Ah
		jnz	loc_489C0C
		push	edi		; ps
		call	Scan
		pop	ecx
		cmp	dword_5EC0C8, 2
		jz	short loc_489B69
		push	offset aOnly32BitRegis ; "Only 32-bit registers	can be scaled"
		call	_T
		pop	ecx
		mov	[ebp-4], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_489B61
		mov	edx, [ebp-4]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489B61:				; CODE XREF: .text:00489B52j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489B69:				; CODE XREF: .text:00489B3Dj
		cmp	dword ptr [edi+42Eh], 4
		jz	short loc_489B9C
		push	offset aExpectingInteg ; "Expecting integer scale"
		call	_T
		pop	ecx
		mov	[ebp-8], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_489B94
		mov	edx, [ebp-8]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489B94:				; CODE XREF: .text:00489B85j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489B9C:				; CODE XREF: .text:00489B70j
		cmp	dword ptr [edi+18h], 0
		jnz	short loc_489BCC
		push	offset aZeroScaleIsNot ; "Zero scale is	not allowed"
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_489BC4
		mov	edx, [ebp-0Ch]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489BC4:				; CODE XREF: .text:00489BB5j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489BCC:				; CODE XREF: .text:00489BA0j
		cmp	dword ptr [edi+18h], 9
		jbe	short loc_489BFC
		push	offset aInvalidScale ; "Invalid	scale"
		call	_T
		pop	ecx
		mov	[ebp-10h], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_489BF4
		mov	edx, [ebp-10h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489BF4:				; CODE XREF: .text:00489BE5j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489BFC:				; CODE XREF: .text:00489BD0j
		mov	edx, [edi+18h]
		push	edi		; ps
		mov	dword_5EC0D0, edx
		call	Scan
		pop	ecx

loc_489C0C:				; CODE XREF: .text:00489B1Fj
					; .text:00489B29j
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489C13:				; CODE XREF: .text:00489ACAj
		inc	esi
		add	ebx, 0Ch
		cmp	esi, 61h
		jl	loc_489AB9
		push	offset aSt_2	; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_489D81
		push	edi		; ps
		call	Scan
		pop	ecx
		mov	dword_5EC0C8, 40h
		cmp	dword ptr [edi+42Eh], 6
		jnz	short loc_489C8B
		cmp	dword ptr [edi+18h], 5Bh
		jnz	short loc_489C8B
		push	offset aUseRoundParent ; src
		call	_T
		pop	ecx
		mov	[ebp-14h], eax
		mov	ecx, [ebp+8]
		mov	[ebp-18h], ecx
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_489C83
		mov	eax, [ebp-14h]
		push	eax		; src
		mov	edx, [ebp-18h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_489C83:				; CODE XREF: .text:00489C71j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489C8B:				; CODE XREF: .text:00489C51j
					; .text:00489C57j
		cmp	dword ptr [edi+42Eh], 6
		jnz	loc_489D7A
		cmp	dword ptr [edi+18h], 28h
		jnz	loc_489D7A
		push	edi		; ps
		call	Scan
		cmp	dword ptr [edi+42Eh], 4
		pop	ecx
		jz	short loc_489CE4
		push	offset aExpectingInd_0 ; src
		call	_T
		pop	ecx
		mov	[ebp-1Ch], eax
		mov	edx, [ebp+8]
		mov	[ebp-20h], edx
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_489CDC
		mov	ecx, [ebp-1Ch]
		push	ecx		; src
		mov	eax, [ebp-20h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489CDC:				; CODE XREF: .text:00489CCAj
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489CE4:				; CODE XREF: .text:00489CB0j
		cmp	dword ptr [edi+18h], 0
		jl	short loc_489CF0
		cmp	dword ptr [edi+18h], 8
		jl	short loc_489D22

loc_489CF0:				; CODE XREF: .text:00489CE8j
		push	offset aFpuRegisterI_0 ; src
		call	_T
		pop	ecx
		mov	[ebp-24h], eax
		mov	edx, [ebp+8]
		mov	[ebp-28h], edx
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_489D1A
		mov	ecx, [ebp-24h]
		push	ecx		; src
		mov	eax, [ebp-28h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489D1A:				; CODE XREF: .text:00489D08j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489D22:				; CODE XREF: .text:00489CEEj
		mov	edx, [edi+18h]
		push	edi		; ps
		mov	value, edx
		call	Scan
		cmp	dword ptr [edi+42Eh], 6
		pop	ecx
		jnz	short loc_489D41
		cmp	dword ptr [edi+18h], 29h
		jz	short loc_489D73

loc_489D41:				; CODE XREF: .text:00489D39j
		push	offset aExpectingRig_0 ; src
		call	_T
		pop	ecx
		mov	[ebp-2Ch], eax
		mov	ecx, [ebp+8]
		mov	[ebp-30h], ecx
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_489D6B
		mov	eax, [ebp-2Ch]
		push	eax		; src
		mov	edx, [ebp-30h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_489D6B:				; CODE XREF: .text:00489D59j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489D73:				; CODE XREF: .text:00489D3Fj
		push	edi		; ps
		call	Scan
		pop	ecx

loc_489D7A:				; CODE XREF: .text:00489C92j
					; .text:00489C9Cj
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489D81:				; CODE XREF: .text:00489C33j
		mov	esi, 1
		mov	ebx, offset off_52FF08

loc_489D8B:				; CODE XREF: .text:00489DA5j
		mov	eax, [ebx]
		push	eax		; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_489DA7
		inc	esi
		add	ebx, 4
		cmp	esi, 21h
		jl	short loc_489D8B

loc_489DA7:				; CODE XREF: .text:00489D9Cj
		cmp	esi, 21h
		jl	short loc_489DC8
		push	offset aXmmword_0 ; s2
		lea	ecx, [edi+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489DC8
		mov	esi, 10h
		jmp	short loc_489DE7
; ---------------------------------------------------------------------------

loc_489DC8:				; CODE XREF: .text:00489DAAj
					; .text:00489DBFj
		cmp	esi, 21h
		jl	short loc_489DE7
		push	offset aYmmword_0 ; s2
		lea	eax, [edi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489DE7
		mov	esi, 20h

loc_489DE7:				; CODE XREF: .text:00489DC6j
					; .text:00489DCBj ...
		cmp	esi, 21h
		jge	short loc_489E3B
		mov	value, esi
		push	edi		; ps
		call	Scan
		cmp	dword ptr [edi+42Eh], 2
		pop	ecx
		jnz	short loc_489E2A
		push	offset aPtr_0	; s2
		lea	eax, [edi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489E2A
		mov	dword_5EC0C8, 4000h
		push	edi		; ps
		call	Scan
		pop	ecx
		jmp	short loc_489E34
; ---------------------------------------------------------------------------

loc_489E2A:				; CODE XREF: .text:00489E00j
					; .text:00489E15j
		mov	dword_5EC0C8, 1000h

loc_489E34:				; CODE XREF: .text:00489E28j
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489E3B:				; CODE XREF: .text:00489DEAj
		push	offset aSmall_0	; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489E72
		mov	value, 2
		push	edi		; ps
		call	Scan
		pop	ecx
		mov	dword_5EC0C8, 2000h
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489E72:				; CODE XREF: .text:00489E4Ej
		push	offset aLarge	; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489EA9
		mov	value, 4
		push	edi		; ps
		call	Scan
		pop	ecx
		mov	dword_5EC0C8, 2000h
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489EA9:				; CODE XREF: .text:00489E85j
		push	offset aShort_2	; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_489F01
		push	offset aLong_0	; s2
		lea	ecx, [edi+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_489F01
		push	offset aNear_0	; "NEAR"
		lea	eax, [edi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_489F01
		push	offset aFar_0	; "FAR"
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_48A130

loc_489F01:				; CODE XREF: .text:00489EBCj
					; .text:00489ED1j ...
		cmp	dword ptr [edi+42Eh], 2
		jnz	loc_48A052
		push	offset aShort_2	; s2
		lea	ecx, [edi+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489F5E
		test	byte ptr value,	1
		jz	short loc_489F52
		push	offset aDuplicateShort ; src
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_489F4A
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489F4A:				; CODE XREF: .text:00489F3Ej
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489F52:				; CODE XREF: .text:00489F2Aj
		or	value, 1
		jmp	loc_48A046
; ---------------------------------------------------------------------------

loc_489F5E:				; CODE XREF: .text:00489F21j
		push	offset aLong_0	; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489FAE
		test	byte ptr value,	2
		jz	short loc_489FA2
		push	offset aDuplicateLongS ; src
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_489F9A
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489F9A:				; CODE XREF: .text:00489F8Ej
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489FA2:				; CODE XREF: .text:00489F7Aj
		or	value, 2
		jmp	loc_48A046
; ---------------------------------------------------------------------------

loc_489FAE:				; CODE XREF: .text:00489F71j
		push	offset aNear_0	; "NEAR"
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_489FFB
		test	byte ptr value,	4
		jz	short loc_489FF2
		push	offset aDuplicateNearS ; "Duplicate NEAR specifier"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_489FEA
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_489FEA:				; CODE XREF: .text:00489FDEj
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_489FF2:				; CODE XREF: .text:00489FCAj
		or	value, 4
		jmp	short loc_48A046
; ---------------------------------------------------------------------------

loc_489FFB:				; CODE XREF: .text:00489FC1j
		push	offset aFar_0	; "FAR"
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48A052
		test	byte ptr value,	8
		jz	short loc_48A03F
		push	offset aDuplicateFarSp ; "Duplicate FAR	specifier"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A037
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A037:				; CODE XREF: .text:0048A02Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A03F:				; CODE XREF: .text:0048A017j
		or	value, 8

loc_48A046:				; CODE XREF: .text:00489F59j
					; .text:00489FA9j ...
		push	edi		; ps
		call	Scan
		pop	ecx
		jmp	loc_489F01
; ---------------------------------------------------------------------------

loc_48A052:				; CODE XREF: .text:00489F08j
					; .text:0048A00Ej
		cmp	dword ptr [edi+42Eh], 2
		jnz	short loc_48A077
		push	offset aPtr_0	; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48A077
		push	edi		; ps
		call	Scan
		pop	ecx

loc_48A077:				; CODE XREF: .text:0048A059j
					; .text:0048A06Ej
		mov	ecx, value
		and	ecx, 3
		cmp	ecx, 3
		jnz	short loc_48A0AF
		push	offset aConflictingS_0 ; "Conflicting SHORT and	LONG specifiers"
		call	_T
		pop	ecx
		mov	[ebp-34h], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A0A7
		mov	edx, [ebp-34h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A0A7:				; CODE XREF: .text:0048A098j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A0AF:				; CODE XREF: .text:0048A083j
		mov	edx, value
		and	edx, 0Ch
		cmp	edx, 0Ch
		jnz	short loc_48A0E7
		push	offset aConflictingNea ; "Conflicting NEAR and FAR specifiers"
		call	_T
		pop	ecx
		mov	[ebp-38h], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A0DF
		mov	edx, [ebp-38h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A0DF:				; CODE XREF: .text:0048A0D0j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A0E7:				; CODE XREF: .text:0048A0BBj
		mov	edx, value
		and	edx, 9
		cmp	edx, 9
		jnz	short loc_48A11F
		push	offset aConflictingS_1 ; "Conflicting SHORT and	FAR specifiers"
		call	_T
		pop	ecx
		mov	[ebp-3Ch], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A117
		mov	edx, [ebp-3Ch]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A117:				; CODE XREF: .text:0048A108j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A11F:				; CODE XREF: .text:0048A0F3j
		mov	dword_5EC0C8, 8000h
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A130:				; CODE XREF: .text:00489EFBj
		push	offset aOffset_0 ; "OFFSET"
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48A15D
		mov	dword_5EC0C8, 10000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A15D:				; CODE XREF: .text:0048A143j
		push	offset aConst_2	; "CONST"
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48A18A
		mov	dword_5EC0C8, 40000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A18A:				; CODE XREF: .text:0048A170j
		push	offset aAny	; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48A1B7
		mov	dword_5EC0C8, 80000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A1B7:				; CODE XREF: .text:0048A19Dj
		mov	edx, [ebp+8]
		push	edx		; errtxt
		push	offset value	; _addr
		push	0		; pmod
		lea	ecx, [edi+2Ah]
		push	ecx		; _name
		call	FindaddressW
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jge	short loc_48A1DC
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A1DC:				; CODE XREF: .text:0048A1D2j
		test	esi, esi
		jnz	short loc_48A1F8
		mov	dword_5EC0C8, 20000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A1F8:				; CODE XREF: .text:0048A1DEj
		push	offset value	; value
		lea	edx, [edi+2Ah]
		push	edx		; _name
		call	Getconstantbyname
		add	esp, 8
		test	eax, eax
		jnz	short loc_48A225
		mov	dword_5EC0C8, 20000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A225:				; CODE XREF: .text:0048A20Bj
		xor	edx, edx
		mov	value, edx
		xor	esi, esi
		lea	ebx, [edi+2Ah]
		jmp	short loc_48A298
; ---------------------------------------------------------------------------

loc_48A234:				; CODE XREF: .text:0048A29Ej
		mov	ax, [ebx]
		push	eax		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_48A2A0
		mov	dx, [ebx]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_48A269
		mov	ecx, value
		shl	ecx, 4
		movzx	eax, word ptr [ebx]
		add	ecx, eax
		sub	ecx, 30h
		mov	value, ecx
		jmp	short loc_48A294
; ---------------------------------------------------------------------------

loc_48A269:				; CODE XREF: .text:0048A24Ej
		mov	dx, [ebx]
		mov	[ebp-3Eh], dx
		mov	cx, [ebp-3Eh]
		push	ecx		; ch
		call	__ltowupper
		movzx	eax, ax
		mov	edx, value
		pop	ecx
		shl	edx, 4
		add	eax, edx
		sub	eax, 41h
		add	eax, 0Ah
		mov	value, eax

loc_48A294:				; CODE XREF: .text:0048A267j
		inc	esi
		add	ebx, 2

loc_48A298:				; CODE XREF: .text:0048A232j
		cmp	esi, [edi+22Ah]
		jl	short loc_48A234

loc_48A2A0:				; CODE XREF: .text:0048A240j
		cmp	esi, [edi+22Ah]
		jnz	short loc_48A325
		push	edi		; ps
		call	Scan
		cmp	dword ptr [edi+42Eh], 6
		pop	ecx
		jnz	short loc_48A314
		cmp	dword ptr [edi+18h], 3Ah
		jnz	short loc_48A314
		test	value, 0FFFF0000h
		jz	short loc_48A2FC
		push	offset aImmediateSelec ; src
		call	_T
		pop	ecx
		mov	[ebp-44h], eax
		mov	ecx, [ebp+8]
		mov	[ebp-48h], ecx
		cmp	dword ptr [ebp-48h], 0
		jz	short loc_48A2F4
		mov	eax, [ebp-44h]
		push	eax		; src
		mov	edx, [ebp-48h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48A2F4:				; CODE XREF: .text:0048A2E2j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A2FC:				; CODE XREF: .text:0048A2C8j
		mov	dword_5EC0C8, 100000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A314:				; CODE XREF: .text:0048A2B6j
					; .text:0048A2BCj
		mov	dword_5EC0C8, 20000h
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A325:				; CODE XREF: .text:0048A2A6j
		push	offset aUnrecognized_0 ; src
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A343
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A343:				; CODE XREF: .text:0048A337j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A34B:				; CODE XREF: .text:00489AACj
		cmp	dword ptr [edi+42Eh], 3
		jnz	short loc_48A3C7
		mov	edx, [ebp+8]
		push	edx		; errtxt
		push	offset value	; _addr
		push	0		; pmod
		lea	ecx, [edi+2Ah]
		push	ecx		; _name
		call	FindaddressW
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jge	short loc_48A379
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A379:				; CODE XREF: .text:0048A36Fj
		test	esi, esi
		jle	short loc_48A3AF
		push	offset aUnrecognizedLa ; src
		call	_T
		pop	ecx
		mov	[ebp-4Ch], eax
		mov	edx, [ebp+8]
		mov	[ebp-50h], edx
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_48A3A7
		mov	ecx, [ebp-4Ch]
		push	ecx		; src
		mov	eax, [ebp-50h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A3A7:				; CODE XREF: .text:0048A395j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A3AF:				; CODE XREF: .text:0048A37Bj
		mov	dword_5EC0C8, 20000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A3C7:				; CODE XREF: .text:0048A352j
		cmp	dword ptr [edi+42Eh], 4
		jnz	loc_48A630
		mov	edx, [edi+18h]
		push	edi		; ps
		mov	value, edx
		call	Scan
		cmp	dword ptr [edi+42Eh], 6
		pop	ecx
		jnz	loc_48A5AB
		cmp	dword ptr [edi+18h], 2Ah
		jnz	loc_48A5AB
		push	edi		; ps
		call	Scan
		cmp	dword ptr [edi+42Eh], 2
		pop	ecx
		jz	short loc_48A43D
		push	offset aExpectingRegis ; "Expecting register _name"
		call	_T
		pop	ecx
		mov	[ebp-54h], eax
		mov	ecx, [ebp+8]
		mov	[ebp-58h], ecx
		cmp	dword ptr [ebp-58h], 0
		jz	short loc_48A435
		mov	eax, [ebp-54h]
		push	eax		; src
		mov	edx, [ebp-58h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48A435:				; CODE XREF: .text:0048A423j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A43D:				; CODE XREF: .text:0048A409j
		xor	esi, esi
		mov	ebx, offset g_REG

loc_48A444:				; CODE XREF: .text:0048A573j
		mov	eax, [ebx]
		push	eax		; s2
		lea	edx, [edi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_48A56C
		cmp	dword ptr [ebx+8], 4
		jnz	short loc_48A493
		push	offset aOnly32BitRegis ; "Only 32-bit registers	can be scaled"
		call	_T
		pop	ecx
		mov	[ebp-5Ch], eax
		mov	ecx, [ebp+8]
		mov	[ebp-60h], ecx
		cmp	dword ptr [ebp-60h], 0
		jz	short loc_48A48B
		mov	eax, [ebp-5Ch]
		push	eax		; src
		mov	edx, [ebp-60h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48A48B:				; CODE XREF: .text:0048A479j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A493:				; CODE XREF: .text:0048A45Fj
		cmp	dword ptr [ebx+8], 2
		jz	short loc_48A4CB
		push	offset aInvalidIndexRe ; "Invalid index	register"
		call	_T
		pop	ecx
		mov	[ebp-64h], eax
		mov	edx, [ebp+8]
		mov	[ebp-68h], edx
		cmp	dword ptr [ebp-68h], 0
		jz	short loc_48A4C3
		mov	ecx, [ebp-64h]
		push	ecx		; src
		mov	eax, [ebp-68h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A4C3:				; CODE XREF: .text:0048A4B1j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A4CB:				; CODE XREF: .text:0048A497j
		cmp	value, 0
		jnz	short loc_48A506
		push	offset aZeroScaleIsNot ; "Zero scale is	not allowed"
		call	_T
		pop	ecx
		mov	[ebp-6Ch], eax
		mov	edx, [ebp+8]
		mov	[ebp-70h], edx
		cmp	dword ptr [ebp-70h], 0
		jz	short loc_48A4FE
		mov	ecx, [ebp-6Ch]
		push	ecx		; src
		mov	eax, [ebp-70h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A4FE:				; CODE XREF: .text:0048A4ECj
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A506:				; CODE XREF: .text:0048A4D2j
		cmp	value, 9
		jbe	short loc_48A541
		push	offset aInvalidScale ; "Invalid	scale"
		call	_T
		pop	ecx
		mov	[ebp-74h], eax
		mov	edx, [ebp+8]
		mov	[ebp-78h], edx
		cmp	dword ptr [ebp-78h], 0
		jz	short loc_48A539
		mov	ecx, [ebp-74h]
		push	ecx		; src
		mov	eax, [ebp-78h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A539:				; CODE XREF: .text:0048A527j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A541:				; CODE XREF: .text:0048A50Dj
		mov	edx, value
		mov	dword_5EC0D0, edx
		mov	ecx, [ebx+8]
		mov	dword_5EC0C8, ecx
		mov	eax, [ebx+4]
		push	edi		; ps
		mov	value, eax
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A56C:				; CODE XREF: .text:0048A455j
		inc	esi
		add	ebx, 0Ch
		cmp	esi, 61h
		jl	loc_48A444
		push	offset aExpecting32Bit ; "Expecting 32-bit register"
		call	_T
		pop	ecx
		mov	[ebp-7Ch], eax
		mov	edx, [ebp+8]
		mov	[ebp-80h], edx
		cmp	dword ptr [ebp-80h], 0
		jz	short loc_48A5A3
		mov	ecx, [ebp-7Ch]
		push	ecx		; src
		mov	eax, [ebp-80h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A5A3:				; CODE XREF: .text:0048A591j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A5AB:				; CODE XREF: .text:0048A3EBj
					; .text:0048A3F5j
		cmp	dword ptr [edi+42Eh], 6
		jnz	short loc_48A61F
		cmp	dword ptr [edi+18h], 3Ah
		jnz	short loc_48A61F
		test	value, 0FFFF0000h
		jz	short loc_48A607
		push	offset aImmediateSelec ; src
		call	_T
		pop	ecx
		mov	[ebp-84h], eax
		mov	edx, [ebp+8]
		mov	[ebp-88h], edx
		cmp	dword ptr [ebp-88h], 0
		jz	short loc_48A5FF
		mov	ecx, [ebp-84h]
		push	ecx		; src
		mov	eax, [ebp-88h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A5FF:				; CODE XREF: .text:0048A5E7j
		or	eax, 0FFFFFFFFh
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A607:				; CODE XREF: .text:0048A5C4j
		mov	dword_5EC0C8, 100000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A61F:				; CODE XREF: .text:0048A5B2j
					; .text:0048A5B8j
		mov	dword_5EC0C8, 20000h
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A630:				; CODE XREF: .text:0048A3CEj
		cmp	dword ptr [edi+42Eh], 6
		jnz	loc_48A6E4
		cmp	dword ptr [edi+18h], 5Bh
		jnz	short loc_48A65B
		mov	dword_5EC0C8, 200000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A65B:				; CODE XREF: .text:0048A641j
		cmp	dword ptr [edi+18h], 5Dh
		jnz	short loc_48A679
		mov	dword_5EC0C8, 400000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A679:				; CODE XREF: .text:0048A65Fj
		cmp	dword ptr [edi+18h], 2Bh
		jnz	short loc_48A697
		mov	dword_5EC0C8, 800000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A697:				; CODE XREF: .text:0048A67Dj
		cmp	dword ptr [edi+18h], 2Dh
		jnz	short loc_48A6B5
		mov	dword_5EC0C8, 1000000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A6B5:				; CODE XREF: .text:0048A69Bj
		cmp	dword ptr [edi+18h], 7Ch
		jnz	short loc_48A6D3
		mov	dword_5EC0C8, 2000000h
		push	edi		; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A6D3:				; CODE XREF: .text:0048A6B9j
		mov	dword_5EC0C8, 1
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A6E4:				; CODE XREF: .text:0048A637j
		mov	eax, [edi+42Eh]
		test	eax, eax
		jz	short loc_48A709
		dec	eax
		jz	short loc_48A709
		cmp	dword_5EC0C4, 0
		jz	short loc_48A71A
		cmp	dword ptr [edi+42Eh], 6
		jnz	short loc_48A71A
		cmp	dword ptr [edi+18h], 3Bh
		jnz	short loc_48A71A

loc_48A709:				; CODE XREF: .text:0048A6ECj
					; .text:0048A6EFj
		mov	dword_5EC0C8, 1
		xor	eax, eax
		jmp	loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A71A:				; CODE XREF: .text:0048A6F8j
					; .text:0048A701j ...
		cmp	dword ptr [edi+42Eh], 5
		jnz	short loc_48A750
		push	offset aFloatingPoin_1 ; "Floating-point numbers are not allowed"
		call	_T
		pop	ecx
		mov	[ebp-8Ch], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A74B
		mov	edx, [ebp-8Ch]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A74B:				; CODE XREF: .text:0048A739j
		or	eax, 0FFFFFFFFh
		jmp	short loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A750:				; CODE XREF: .text:0048A721j
		cmp	dword ptr [edi+42Eh], 7
		jnz	short loc_48A786
		push	offset aInvalidCharact ; "Invalid character"
		call	_T
		pop	ecx
		mov	[ebp-90h], eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A781
		mov	edx, [ebp-90h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A781:				; CODE XREF: .text:0048A76Fj
		or	eax, 0FFFFFFFFh
		jmp	short loc_48A7A7
; ---------------------------------------------------------------------------

loc_48A786:				; CODE XREF: .text:0048A757j
		push	offset aSyntaxError ; "Syntax error"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_48A7A4
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A7A4:				; CODE XREF: .text:0048A798j
		or	eax, 0FFFFFFFFh

loc_48A7A7:				; CODE XREF: .text:00489B13j
					; .text:00489B64j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_48A7B0(void *s, wchar_t *dst,	int)
loc_48A7B0:				; CODE XREF: .text:0048D8D0p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDBCh
		push	ebx
		push	esi
		push	edi
		push	58h		; n
		push	0		; c
		mov	eax, [ebp+8]
		push	eax		; s
		call	_memset
		mov	edx, [ebp+8]
		add	esp, 0Ch
		xor	ebx, ebx
		mov	esi, 800000h
		mov	dword ptr [edx+0Ch], 0FFFFFFFFh
		mov	ecx, [ebp+8]
		xor	edx, edx
		mov	edi, 1
		mov	dword ptr [ecx+10h], 0FFFFFFFFh
		mov	eax, [ebp+8]
		xor	ecx, ecx
		mov	dword ptr [eax+54h], 0FFFFFFFFh
		mov	[ebp-4], edx
		mov	[ebp-8], ecx
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-0Ch], eax
		mov	[ebp-10h], edx
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-14h], ecx
		mov	[ebp-18h], eax
		mov	dword ptr [ebp-1Ch], 1
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-20h], edx
		mov	[ebp-24h], ecx

loc_48A825:				; CODE XREF: .text:0048B097j
					; .text:0048B358j ...
		mov	eax, [ebp+0Ch]
		push	eax		; dst
		call	loc_489A88
		pop	ecx
		test	eax, eax
		jz	short loc_48A83B
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48A83B:				; CODE XREF: .text:0048A831j
		mov	edx, dword_5EC0C8
		cmp	edx, 2000h
		jg	loc_48A8F0
		jz	loc_48B896
		cmp	edx, 40h
		jg	short loc_48A89C
		jz	loc_48B5CE
		cmp	edx, 8
		jg	short loc_48A885
		jz	loc_48B09C
		dec	edx
		jz	loc_48A99A
		dec	edx
		jz	loc_48ADD1
		sub	edx, 2
		jz	loc_48ADD1
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A885:				; CODE XREF: .text:0048A861j
		sub	edx, 10h
		jz	loc_48B35D
		sub	edx, 10h
		jz	loc_48B485
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A89C:				; CODE XREF: .text:0048A856j
		cmp	edx, 400h
		jg	short loc_48A8D3
		jz	loc_48B5CE
		sub	edx, 80h
		jz	loc_48B5CE
		sub	edx, 80h
		jz	loc_48B5CE
		sub	edx, 100h
		jz	loc_48B5CE
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A8D3:				; CODE XREF: .text:0048A8A2j
		sub	edx, 800h
		jz	loc_48B5CE
		sub	edx, 800h
		jz	loc_48B7E4
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A8F0:				; CODE XREF: .text:0048A847j
		cmp	edx, 100000h
		jg	short loc_48A952
		jz	loc_48BF5F
		cmp	edx, 20000h
		jg	short loc_48A935
		jz	loc_48BC55
		sub	edx, 4000h
		jz	loc_48B93A
		sub	edx, 4000h
		jz	loc_48BA3A
		sub	edx, 8000h
		jz	loc_48BB49
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A935:				; CODE XREF: .text:0048A904j
		sub	edx, 40000h
		jz	loc_48BD3B
		sub	edx, 40000h
		jz	loc_48BE4D
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A952:				; CODE XREF: .text:0048A8F6j
		cmp	edx, 800000h
		jg	short loc_48A97D
		jz	loc_48C381
		sub	edx, 200000h
		jz	loc_48C154
		sub	edx, 200000h
		jz	loc_48C290
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A97D:				; CODE XREF: .text:0048A958j
		sub	edx, 1000000h
		jz	loc_48C381
		sub	edx, 1000000h
		jz	loc_48C3D3
		jmp	loc_48C428
; ---------------------------------------------------------------------------

loc_48A99A:				; CODE XREF: .text:0048A86Aj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_48A9CA
		push	offset aExpectingRig_1 ; "Expecting right bracket"
		call	_T
		pop	ecx
		mov	[ebp-28h], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48A9C2
		mov	edx, [ebp-28h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A9C2:				; CODE XREF: .text:0048A9B3j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48A9CA:				; CODE XREF: .text:0048A99Ej
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_48A9FA
		push	offset aMissingOrIncom ; "Missing or incomplete	operand"
		call	_T
		pop	ecx
		mov	[ebp-2Ch], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48A9F2
		mov	edx, [ebp-2Ch]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48A9F2:				; CODE XREF: .text:0048A9E3j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48A9FA:				; CODE XREF: .text:0048A9CEj
		test	ebx, ebx
		jz	short loc_48AA28
		push	offset aIncompleteOper ; "Incomplete operand"
		call	_T
		pop	ecx
		mov	[ebp-30h], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AA20
		mov	edx, [ebp-30h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AA20:				; CODE XREF: .text:0048AA11j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AA28:				; CODE XREF: .text:0048A9FCj
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_48AA5E
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48AA5E
		push	offset aPtrAppliesOnly ; src
		call	_T
		pop	ecx
		mov	[ebp-34h], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AA56
		mov	edx, [ebp-34h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AA56:				; CODE XREF: .text:0048AA47j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AA5E:				; CODE XREF: .text:0048AA2Cj
					; .text:0048AA32j
		cmp	dword ptr [ebp-8], 0
		jnz	loc_48AB1D
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_48AAC1
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 0
		jz	short loc_48AAA9
		push	offset aCanTDeclareSiz ; src
		call	_T
		pop	ecx
		mov	[ebp-38h], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-3Ch], ecx
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_48AAA1
		mov	eax, [ebp-38h]
		push	eax		; src
		mov	edx, [ebp-3Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48AAA1:				; CODE XREF: .text:0048AA8Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AAA9:				; CODE XREF: .text:0048AA75j
		mov	edx, [ebp+8]
		mov	dword ptr [edx+0Ch], 8
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx], 80001000h
		jmp	loc_48ADCA
; ---------------------------------------------------------------------------

loc_48AAC1:				; CODE XREF: .text:0048AA6Cj
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+4], 4
		jle	short loc_48AAFC
		push	offset aInvalidSizeOfC ; src
		call	_T
		pop	ecx
		mov	[ebp-40h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-44h], edx
		cmp	dword ptr [ebp-44h], 0
		jz	short loc_48AAF4
		mov	ecx, [ebp-40h]
		push	ecx		; src
		mov	eax, [ebp-44h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AAF4:				; CODE XREF: .text:0048AAE2j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AAFC:				; CODE XREF: .text:0048AAC8j
		mov	edx, [ebp+8]
		or	dword ptr [edx], 600h
		cmp	dword ptr [ebp-20h], 0
		jz	loc_48ADCA
		mov	ecx, [ebp+8]
		or	dword ptr [ecx], 1000h
		jmp	loc_48ADCA
; ---------------------------------------------------------------------------

loc_48AB1D:				; CODE XREF: .text:0048AA62j
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_48ABA2
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+40h], 0
		jnz	short loc_48AB3B
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+48h], 0
		jnz	short loc_48AB3B
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_48AB6D

loc_48AB3B:				; CODE XREF: .text:0048AB2Aj
					; .text:0048AB33j
		push	offset aCanTIndexAnyAd ; src
		call	_T
		pop	ecx
		mov	[ebp-48h], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-4Ch], ecx
		cmp	dword ptr [ebp-4Ch], 0
		jz	short loc_48AB65
		mov	eax, [ebp-48h]
		push	eax		; src
		mov	edx, [ebp-4Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48AB65:				; CODE XREF: .text:0048AB53j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AB6D:				; CODE XREF: .text:0048AB39j
		mov	edx, [ebp+8]
		or	dword ptr [edx], 40001100h
		cmp	dword ptr [ebp-10h], 2
		jnz	short loc_48AB8A
		mov	ecx, [ebp+8]
		or	dword ptr [ecx], 200000h
		jmp	loc_48ADCA
; ---------------------------------------------------------------------------

loc_48AB8A:				; CODE XREF: .text:0048AB7Aj
		cmp	dword ptr [ebp-10h], 4
		jnz	loc_48ADCA
		mov	eax, [ebp+8]
		or	dword ptr [eax], 400000h
		jmp	loc_48ADCA
; ---------------------------------------------------------------------------

loc_48ABA2:				; CODE XREF: .text:0048AB21j
		mov	edx, [ebp+8]
		or	dword ptr [edx], 100h
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+48h], 0
		jz	short loc_48ABBD
		mov	eax, [ebp+8]
		or	dword ptr [eax], 100000h

loc_48ABBD:				; CODE XREF: .text:0048ABB2j
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_48ABCC
		mov	edx, [ebp+8]
		or	dword ptr [edx], 101000h

loc_48ABCC:				; CODE XREF: .text:0048ABC1j
		cmp	dword ptr [ebp-10h], 2
		jnz	loc_48ACC5
		mov	ecx, [ebp+8]
		or	dword ptr [ecx], 200000h
		mov	eax, [ebp+8]
		test	dword ptr [eax+48h], 0FFFF0000h
		jz	short loc_48AC31
		mov	edx, [ebp+8]
		mov	ecx, [edx+48h]
		and	ecx, 0FFFF8000h
		cmp	ecx, 0FFFF8000h
		jz	short loc_48AC31
		push	offset aOffsetOutOfAll ; "Offset out of	allowed	range"
		call	_T
		pop	ecx
		mov	[ebp-50h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jz	short loc_48AC29
		mov	edx, [ebp-50h]
		push	edx		; src
		mov	ecx, [ebp-54h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48AC29:				; CODE XREF: .text:0048AC17j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AC31:				; CODE XREF: .text:0048ABE9j
					; .text:0048ABFDj
		xor	eax, eax

loc_48AC33:				; CODE XREF: .text:0048AC67j
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+eax*4+14h], 1
		jle	short loc_48AC63
		push	offset aCanTScale16Bit ; src
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AC5B
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AC5B:				; CODE XREF: .text:0048AC4Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AC63:				; CODE XREF: .text:0048AC3Bj
		inc	eax
		cmp	eax, 0Bh
		jl	short loc_48AC33
		mov	dword ptr [ebp-23Ch], offset tmpcmdinfo.immfixup
		xor	ebx, ebx

loc_48AC75:				; CODE XREF: .text:0048ACBEj
		xor	eax, eax
		mov	edx, [ebp-23Ch]
		mov	ecx, edx
		mov	[ebp-238h], ecx

loc_48AC85:				; CODE XREF: .text:0048ACA2j
		mov	edx, [ebp-238h]
		xor	ecx, ecx
		mov	cl, [edx]
		mov	edx, [ebp+8]
		cmp	ecx, [edx+eax*4+14h]
		jnz	short loc_48ACA4
		inc	eax
		inc	dword ptr [ebp-238h]
		cmp	eax, 8
		jl	short loc_48AC85

loc_48ACA4:				; CODE XREF: .text:0048AC96j
		cmp	eax, 8
		jge	loc_48AD98
		inc	ebx
		add	dword ptr [ebp-23Ch], 0A8h
		cmp	ebx, 100h
		jl	short loc_48AC75
		jmp	loc_48AD98
; ---------------------------------------------------------------------------

loc_48ACC5:				; CODE XREF: .text:0048ABD0j
		cmp	dword ptr [ebp-10h], 4
		jnz	short loc_48ACD4
		mov	eax, [ebp+8]
		or	dword ptr [eax], 400000h

loc_48ACD4:				; CODE XREF: .text:0048ACC9j
		mov	dword ptr [ebp-23Ch], offset stru_593CC6._size
		xor	ebx, ebx

loc_48ACE0:				; CODE XREF: .text:0048AD92j
		mov	eax, [ebp-23Ch]
		cmp	dword ptr [eax], 0
		jnz	short loc_48AD22
		xor	eax, eax
		mov	edx, [ebp-23Ch]
		lea	ecx, [edx+14h]
		mov	[ebp-240h], ecx

loc_48ACFC:				; CODE XREF: .text:0048AD19j
		mov	edx, [ebp-240h]
		xor	ecx, ecx
		mov	cl, [edx]
		mov	edx, [ebp+8]
		cmp	ecx, [edx+eax*4+14h]
		jnz	short loc_48AD1B
		inc	eax
		inc	dword ptr [ebp-240h]
		cmp	eax, 8
		jl	short loc_48ACFC

loc_48AD1B:				; CODE XREF: .text:0048AD0Dj
		cmp	eax, 8
		jge	short loc_48AD98
		jmp	short loc_48AD81
; ---------------------------------------------------------------------------

loc_48AD22:				; CODE XREF: .text:0048ACE9j
		mov	eax, [ebp-23Ch]
		mov	eax, [eax]
		xor	edx, edx
		lea	ecx, [eax+18h]
		mov	[ebp-240h], ecx

loc_48AD35:				; CODE XREF: .text:0048AD77j
		xor	eax, eax
		mov	ecx, [ebp-240h]
		mov	[ebp-244h], ecx

loc_48AD43:				; CODE XREF: .text:0048AD5Fj
		mov	ecx, [ebp-244h]
		mov	esi, [ebp+8]
		movzx	ecx, byte ptr [ecx]
		cmp	ecx, [esi+eax*4+14h]
		jnz	short loc_48AD61
		inc	eax
		inc	dword ptr [ebp-244h]
		cmp	eax, 8
		jl	short loc_48AD43

loc_48AD61:				; CODE XREF: .text:0048AD53j
		cmp	eax, 8
		jge	short loc_48AD79
		inc	edx
		add	dword ptr [ebp-240h], 0A8h
		cmp	edx, 100h
		jl	short loc_48AD35

loc_48AD79:				; CODE XREF: .text:0048AD64j
		cmp	edx, 100h
		jl	short loc_48AD98

loc_48AD81:				; CODE XREF: .text:0048AD20j
		inc	ebx
		add	dword ptr [ebp-23Ch], 0A8h
		cmp	ebx, 100h
		jl	loc_48ACE0

loc_48AD98:				; CODE XREF: .text:0048ACA7j
					; .text:0048ACC0j ...
		cmp	ebx, 100h
		jl	short loc_48ADCA
		push	offset aInvalidIndexin ; "Invalid indexing mode"
		call	_T
		pop	ecx
		mov	[ebp-58h], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48ADC2
		mov	edx, [ebp-58h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48ADC2:				; CODE XREF: .text:0048ADB3j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48ADCA:				; CODE XREF: .text:0048AABCj
					; .text:0048AB09j ...
		xor	eax, eax
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48ADD1:				; CODE XREF: .text:0048A871j
					; .text:0048A87Aj
		cmp	value, 8
		jb	short loc_48AE0A
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_48AE0A
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-5Ch], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AE02
		mov	edx, [ebp-5Ch]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AE02:				; CODE XREF: .text:0048ADF3j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AE0A:				; CODE XREF: .text:0048ADD8j
					; .text:0048ADDEj
		test	edi, edi
		jz	short loc_48AE4A
		cmp	dword_5EC0D0, 0
		jnz	short loc_48AE4A
		mov	edx, [ebp+8]
		mov	dword ptr [edx], 1
		mov	ecx, 4
		cmp	dword_5EC0C8, 2
		jz	short loc_48AE31
		add	ecx, 0FFFFFFFEh

loc_48AE31:				; CODE XREF: .text:0048AE2Cj
		mov	eax, [ebp+8]
		mov	[eax+4], ecx
		xor	eax, eax
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+0Ch], ecx
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AE4A:				; CODE XREF: .text:0048AE0Cj
					; .text:0048AE15j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48AE7A
		push	offset aCanTGetOffsetO ; src
		call	_T
		pop	ecx
		mov	[ebp-60h], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AE72
		mov	edx, [ebp-60h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AE72:				; CODE XREF: .text:0048AE63j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AE7A:				; CODE XREF: .text:0048AE4Ej
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_48AED3
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 0
		jz	short loc_48AEAD
		push	offset aDonTDeclareSiz ; "Don't declare size of register"
		call	_T
		pop	ecx
		mov	[ebp-64h], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AECB
		mov	edx, [ebp-64h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_48AECB
; ---------------------------------------------------------------------------

loc_48AEAD:				; CODE XREF: .text:0048AE87j
		push	offset aPlaceIndexRegi ; "Place	index registers	into brackets"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AECB
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AECB:				; CODE XREF: .text:0048AE9Cj
					; .text:0048AEABj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AED3:				; CODE XREF: .text:0048AE7Ej
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_48AF03
		push	offset aCanTIndexAnyAd ; src
		call	_T
		pop	ecx
		mov	[ebp-68h], eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48AEFB
		mov	edx, [ebp-68h]
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AEFB:				; CODE XREF: .text:0048AEECj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AF03:				; CODE XREF: .text:0048AED7j
		cmp	dword_5EC0C8, 2
		jnz	short loc_48AF12
		cmp	dword ptr [ebp-10h], 2
		jz	short loc_48AF21

loc_48AF12:				; CODE XREF: .text:0048AF0Aj
		cmp	dword_5EC0C8, 4
		jnz	short loc_48AF53
		cmp	dword ptr [ebp-10h], 4
		jnz	short loc_48AF53

loc_48AF21:				; CODE XREF: .text:0048AF10j
		push	offset aMixed16And32Bi ; "Mixed	16 and 32-bit registers"
		call	_T
		pop	ecx
		mov	[ebp-6Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-70h], edx
		cmp	dword ptr [ebp-70h], 0
		jz	short loc_48AF4B
		mov	ecx, [ebp-6Ch]
		push	ecx		; src
		mov	eax, [ebp-70h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AF4B:				; CODE XREF: .text:0048AF39j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AF53:				; CODE XREF: .text:0048AF19j
					; .text:0048AF1Fj
		test	ebx, 1000000h
		jz	short loc_48AF8D
		push	offset aCanTSubtractOr ; src
		call	_T
		pop	ecx
		mov	[ebp-74h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-78h], edx
		cmp	dword ptr [ebp-78h], 0
		jz	short loc_48AF85
		mov	ecx, [ebp-74h]
		push	ecx		; src
		mov	eax, [ebp-78h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AF85:				; CODE XREF: .text:0048AF73j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AF8D:				; CODE XREF: .text:0048AF59j
		test	ebx, 2000000h
		jz	short loc_48AFC7
		push	offset aCanTOrRegister ; src
		call	_T
		pop	ecx
		mov	[ebp-7Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-80h], edx
		cmp	dword ptr [ebp-80h], 0
		jz	short loc_48AFBF
		mov	ecx, [ebp-7Ch]
		push	ecx		; src
		mov	eax, [ebp-80h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48AFBF:				; CODE XREF: .text:0048AFADj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48AFC7:				; CODE XREF: .text:0048AF93j
		or	ebx, esi
		jnz	short loc_48B00C
		push	offset aMissingCommaOr ; src
		call	_T
		pop	ecx
		mov	[ebp-84h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-88h], edx
		cmp	dword ptr [ebp-88h], 0
		jz	short loc_48B004
		mov	ecx, [ebp-84h]
		push	ecx		; src
		mov	eax, [ebp-88h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B004:				; CODE XREF: .text:0048AFECj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B00C:				; CODE XREF: .text:0048AFC9j
		cmp	dword_5EC0D0, 0
		jnz	short loc_48B01F
		mov	dword_5EC0D0, 1

loc_48B01F:				; CODE XREF: .text:0048B013j
		cmp	dword_5EC0D0, 1
		jnz	short loc_48B034
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+54h], ecx

loc_48B034:				; CODE XREF: .text:0048B026j
		mov	eax, [ebp+8]
		mov	edx, value
		mov	ecx, [eax+edx*4+14h]
		mov	eax, [ebp+8]
		mov	edx, value
		add	ecx, dword_5EC0D0
		mov	[eax+edx*4+14h], ecx
		mov	ecx, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [ecx+40h]
		add	eax, dword_5EC0D0
		mov	[edx+40h], eax
		xor	eax, eax
		mov	ecx, [ebp+8]
		mov	esi, eax
		mov	ebx, eax
		mov	eax, 4
		or	dword ptr [ecx], 80000h
		cmp	dword_5EC0C8, 2
		jz	short loc_48B086
		add	eax, 0FFFFFFFEh

loc_48B086:				; CODE XREF: .text:0048B081j
		mov	[ebp-10h], eax
		xor	edi, edi
		mov	dword ptr [ebp-18h], 1
		xor	eax, eax
		mov	[ebp-1Ch], eax
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48B09C:				; CODE XREF: .text:0048A863j
		cmp	value, 8
		jb	short loc_48B0EC
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_48B0EC
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-8Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-90h], edx
		cmp	dword ptr [ebp-90h], 0
		jz	short loc_48B0E4
		mov	ecx, [ebp-8Ch]
		push	ecx		; src
		mov	eax, [ebp-90h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B0E4:				; CODE XREF: .text:0048B0CCj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B0EC:				; CODE XREF: .text:0048B0A3j
					; .text:0048B0A9j
		test	edi, edi
		jz	short loc_48B116
		mov	edx, [ebp+8]
		mov	dword ptr [edx], 1
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx+4], 1
		mov	eax, [ebp+8]
		mov	edx, value
		mov	[eax+0Ch], edx
		xor	eax, eax
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B116:				; CODE XREF: .text:0048B0EEj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48B15D
		push	offset aCanTGetOffsetO ; src
		call	_T
		pop	ecx
		mov	[ebp-94h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-98h], edx
		cmp	dword ptr [ebp-98h], 0
		jz	short loc_48B155
		mov	ecx, [ebp-94h]
		push	ecx		; src
		mov	eax, [ebp-98h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B155:				; CODE XREF: .text:0048B13Dj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B15D:				; CODE XREF: .text:0048B11Aj
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_48B1CD
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 0
		jz	short loc_48B1A7
		push	offset aDonTDeclareSiz ; "Don't declare size of register"
		call	_T
		pop	ecx
		mov	[ebp-9Ch], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-0A0h], ecx
		cmp	dword ptr [ebp-0A0h], 0
		jz	short loc_48B1C5
		mov	eax, [ebp-9Ch]
		push	eax		; src
		mov	edx, [ebp-0A0h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_48B1C5
; ---------------------------------------------------------------------------

loc_48B1A7:				; CODE XREF: .text:0048B16Aj
		push	offset aPlaceIndexRegi ; "Place	index registers	into brackets"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48B1C5
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B1C5:				; CODE XREF: .text:0048B18Dj
					; .text:0048B1A5j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B1CD:				; CODE XREF: .text:0048B161j
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_48B214
		push	offset aCanTIndexAnyAd ; src
		call	_T
		pop	ecx
		mov	[ebp-0A4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0A8h], edx
		cmp	dword ptr [ebp-0A8h], 0
		jz	short loc_48B20C
		mov	ecx, [ebp-0A4h]
		push	ecx		; src
		mov	eax, [ebp-0A8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B20C:				; CODE XREF: .text:0048B1F4j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B214:				; CODE XREF: .text:0048B1D1j
		cmp	value, 0
		jz	short loc_48B25E
		push	offset aIllegalIndexin ; "Illegal indexing register"
		call	_T
		pop	ecx
		mov	[ebp-0ACh], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0B0h], edx
		cmp	dword ptr [ebp-0B0h], 0
		jz	short loc_48B256
		mov	ecx, [ebp-0ACh]
		push	ecx		; src
		mov	eax, [ebp-0B0h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B256:				; CODE XREF: .text:0048B23Ej
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B25E:				; CODE XREF: .text:0048B21Bj
		test	ebx, 1000000h
		jz	short loc_48B2A7
		push	offset aCanTSubtractOr ; src
		call	_T
		pop	ecx
		mov	[ebp-0B4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0B8h], edx
		cmp	dword ptr [ebp-0B8h], 0
		jz	short loc_48B29F
		mov	ecx, [ebp-0B4h]
		push	ecx		; src
		mov	eax, [ebp-0B8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B29F:				; CODE XREF: .text:0048B287j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B2A7:				; CODE XREF: .text:0048B264j
		test	ebx, 2000000h
		jz	short loc_48B2F0
		push	offset aCanTOrRegister ; src
		call	_T
		pop	ecx
		mov	[ebp-0BCh], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0C0h], edx
		cmp	dword ptr [ebp-0C0h], 0
		jz	short loc_48B2E8
		mov	ecx, [ebp-0BCh]
		push	ecx		; src
		mov	eax, [ebp-0C0h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B2E8:				; CODE XREF: .text:0048B2D0j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B2F0:				; CODE XREF: .text:0048B2ADj
		or	ebx, esi
		jnz	short loc_48B335
		push	offset aMissingCommaOr ; src
		call	_T
		pop	ecx
		mov	[ebp-0C4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0C8h], edx
		cmp	dword ptr [ebp-0C8h], 0
		jz	short loc_48B32D
		mov	ecx, [ebp-0C4h]
		push	ecx		; src
		mov	eax, [ebp-0C8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B32D:				; CODE XREF: .text:0048B315j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B335:				; CODE XREF: .text:0048B2F2j
		mov	edx, [ebp+8]
		xor	eax, eax
		mov	esi, eax
		mov	ebx, eax
		inc	dword ptr [edx+44h]
		xor	edi, edi
		mov	ecx, [ebp+8]
		or	dword ptr [ecx], 80000h
		xor	eax, eax
		mov	dword ptr [ebp-18h], 1
		mov	[ebp-1Ch], eax
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48B35D:				; CODE XREF: .text:0048A888j
		cmp	value, 8
		jb	short loc_48B3AD
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_48B3AD
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-0CCh], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0D0h], edx
		cmp	dword ptr [ebp-0D0h], 0
		jz	short loc_48B3A5
		mov	ecx, [ebp-0CCh]
		push	ecx		; src
		mov	eax, [ebp-0D0h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B3A5:				; CODE XREF: .text:0048B38Dj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B3AD:				; CODE XREF: .text:0048B364j
					; .text:0048B36Aj
		test	edi, edi
		jz	short loc_48B3D7
		mov	edx, [ebp+8]
		mov	dword ptr [edx], 2
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx+4], 2
		mov	eax, [ebp+8]
		mov	edx, value
		mov	[eax+0Ch], edx
		xor	eax, eax
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B3D7:				; CODE XREF: .text:0048B3AFj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48B418
		push	offset aCanTGetOffsetO ; src
		call	_T
		pop	ecx
		mov	[ebp-0D4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0D8h], edx
		cmp	dword ptr [ebp-0D8h], 0
		jz	short loc_48B47D
		mov	ecx, [ebp-0D4h]
		push	ecx		; src
		mov	eax, [ebp-0D8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_48B47D
; ---------------------------------------------------------------------------

loc_48B418:				; CODE XREF: .text:0048B3DBj
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48B45F
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48B45F
		push	offset aExpectingColon ; "Expecting colon after	segment	register"
		call	_T
		pop	ecx
		mov	[ebp-0DCh], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0E0h], edx
		cmp	dword ptr [ebp-0E0h], 0
		jz	short loc_48B47D
		mov	ecx, [ebp-0DCh]
		push	ecx		; src
		mov	eax, [ebp-0E0h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_48B47D
; ---------------------------------------------------------------------------

loc_48B45F:				; CODE XREF: .text:0048B41Cj
					; .text:0048B422j
		push	offset aIllegalIndexin ; "Illegal indexing register"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48B47D
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B47D:				; CODE XREF: .text:0048B3FEj
					; .text:0048B416j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B485:				; CODE XREF: .text:0048A891j
		cmp	value, 8
		jb	short loc_48B4D5
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_48B4D5
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-0E4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0E8h], edx
		cmp	dword ptr [ebp-0E8h], 0
		jz	short loc_48B4CD
		mov	ecx, [ebp-0E4h]
		push	ecx		; src
		mov	eax, [ebp-0E8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B4CD:				; CODE XREF: .text:0048B4B5j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B4D5:				; CODE XREF: .text:0048B48Cj
					; .text:0048B492j
		test	ebx, ebx
		jnz	short loc_48B4E9
		test	esi, esi
		jz	short loc_48B4E9
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48B4E9
		cmp	dword ptr [ebp-8], 0
		jz	short loc_48B52A

loc_48B4E9:				; CODE XREF: .text:0048B4D7j
					; .text:0048B4DBj ...
		push	offset aMisplacedSegme ; "Misplaced segment override"
		call	_T
		pop	ecx
		mov	[ebp-0ECh], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0F0h], edx
		cmp	dword ptr [ebp-0F0h], 0
		jz	short loc_48B522
		mov	ecx, [ebp-0ECh]
		push	ecx		; src
		mov	eax, [ebp-0F0h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B522:				; CODE XREF: .text:0048B50Aj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B52A:				; CODE XREF: .text:0048B4E7j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48B571
		push	offset aCanTGetOffse_0 ; src
		call	_T
		pop	ecx
		mov	[ebp-0F4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-0F8h], edx
		cmp	dword ptr [ebp-0F8h], 0
		jz	short loc_48B569
		mov	ecx, [ebp-0F4h]
		push	ecx		; src
		mov	eax, [ebp-0F8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B569:				; CODE XREF: .text:0048B551j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B571:				; CODE XREF: .text:0048B52Ej
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+10h], 0FFFFFFFFh
		jz	short loc_48B5BB
		push	offset aDuplicateSegme ; "Duplicate segment override"
		call	_T
		pop	ecx
		mov	[ebp-0FCh], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-100h], ecx
		cmp	dword ptr [ebp-100h], 0
		jz	short loc_48B5B3
		mov	eax, [ebp-0FCh]
		push	eax		; src
		mov	edx, [ebp-100h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48B5B3:				; CODE XREF: .text:0048B59Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B5BB:				; CODE XREF: .text:0048B578j
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+10h], ecx
		xor	edi, edi
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48B5CE:				; CODE XREF: .text:0048A858j
					; .text:0048A8A4j ...
		cmp	value, 8
		jb	short loc_48B61E
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_48B61E
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-104h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-108h], eax
		cmp	dword ptr [ebp-108h], 0
		jz	short loc_48B616
		mov	edx, [ebp-104h]
		push	edx		; src
		mov	ecx, [ebp-108h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48B616:				; CODE XREF: .text:0048B5FEj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B61E:				; CODE XREF: .text:0048B5D5j
					; .text:0048B5DBj
		test	edi, edi
		jz	loc_48B6F1
		cmp	dword_5EC0C8, 40h
		jnz	short loc_48B647
		mov	edx, [ebp+8]
		mov	dword ptr [edx], 4
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx+4], 0Ah
		jmp	loc_48B6DE
; ---------------------------------------------------------------------------

loc_48B647:				; CODE XREF: .text:0048B62Dj
		cmp	dword_5EC0C8, 80h
		jnz	short loc_48B668
		mov	eax, [ebp+8]
		mov	dword ptr [eax], 8
		mov	edx, [ebp+8]
		mov	dword ptr [edx+4], 8
		jmp	short loc_48B6DE
; ---------------------------------------------------------------------------

loc_48B668:				; CODE XREF: .text:0048B651j
		cmp	dword_5EC0C8, 100h
		jnz	short loc_48B689
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx], 20h
		mov	eax, [ebp+8]
		mov	dword ptr [eax+4], 10h
		jmp	short loc_48B6DE
; ---------------------------------------------------------------------------

loc_48B689:				; CODE XREF: .text:0048B672j
		cmp	dword_5EC0C8, 200h
		jnz	short loc_48B6AA
		mov	edx, [ebp+8]
		mov	dword ptr [edx], 20h
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx+4], 20h
		jmp	short loc_48B6DE
; ---------------------------------------------------------------------------

loc_48B6AA:				; CODE XREF: .text:0048B693j
		cmp	dword_5EC0C8, 400h
		jnz	short loc_48B6CB
		mov	eax, [ebp+8]
		mov	dword ptr [eax], 40h
		mov	edx, [ebp+8]
		mov	dword ptr [edx+4], 4
		jmp	short loc_48B6DE
; ---------------------------------------------------------------------------

loc_48B6CB:				; CODE XREF: .text:0048B6B4j
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx], 80h
		mov	eax, [ebp+8]
		mov	dword ptr [eax+4], 4

loc_48B6DE:				; CODE XREF: .text:0048B642j
					; .text:0048B666j ...
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+0Ch], ecx
		xor	eax, eax
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B6F1:				; CODE XREF: .text:0048B620j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48B739
		push	offset aCanTGetOffsetO ; src
		call	_T
		pop	ecx
		mov	[ebp-10Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-110h], edx
		cmp	dword ptr [ebp-110h], 0
		jz	loc_48B7DC
		mov	ecx, [ebp-10Ch]
		push	ecx		; src
		mov	eax, [ebp-110h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_48B7DC
; ---------------------------------------------------------------------------

loc_48B739:				; CODE XREF: .text:0048B6F5j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_48B77A
		push	offset aIllegalIndexin ; "Illegal indexing register"
		call	_T
		pop	ecx
		mov	[ebp-114h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-118h], edx
		cmp	dword ptr [ebp-118h], 0
		jz	short loc_48B7DC
		mov	ecx, [ebp-114h]
		push	ecx		; src
		mov	eax, [ebp-118h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_48B7DC
; ---------------------------------------------------------------------------

loc_48B77A:				; CODE XREF: .text:0048B73Dj
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 0
		jz	short loc_48B7BE
		push	offset aDonTDeclareSiz ; "Don't declare size of register"
		call	_T
		pop	ecx
		mov	[ebp-11Ch], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-120h], ecx
		cmp	dword ptr [ebp-120h], 0
		jz	short loc_48B7DC
		mov	eax, [ebp-11Ch]
		push	eax		; src
		mov	edx, [ebp-120h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_48B7DC
; ---------------------------------------------------------------------------

loc_48B7BE:				; CODE XREF: .text:0048B781j
		push	offset aIllegalRegiste ; "Illegal register"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_48B7DC
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B7DC:				; CODE XREF: .text:0048B718j
					; .text:0048B734j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B7E4:				; CODE XREF: .text:0048A8E5j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48B7F8
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48B7F8
		test	ebx, ebx
		jnz	short loc_48B7F8
		test	esi, esi
		jnz	short loc_48B839

loc_48B7F8:				; CODE XREF: .text:0048B7E8j
					; .text:0048B7EEj ...
		push	offset aMisplacedDataS ; "Misplaced data size declaration"
		call	_T
		pop	ecx
		mov	[ebp-124h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-128h], edx
		cmp	dword ptr [ebp-128h], 0
		jz	short loc_48B831
		mov	ecx, [ebp-124h]
		push	ecx		; src
		mov	eax, [ebp-128h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B831:				; CODE XREF: .text:0048B819j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B839:				; CODE XREF: .text:0048B7F6j
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 0
		jz	short loc_48B883
		push	offset aDuplicateDataS ; "Duplicate data size declaration"
		call	_T
		pop	ecx
		mov	[ebp-12Ch], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-130h], ecx
		cmp	dword ptr [ebp-130h], 0
		jz	short loc_48B87B
		mov	eax, [ebp-12Ch]
		push	eax		; src
		mov	edx, [ebp-130h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48B87B:				; CODE XREF: .text:0048B863j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B883:				; CODE XREF: .text:0048B840j
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+4], ecx
		xor	edi, edi
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48B896:				; CODE XREF: .text:0048A84Dj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_48B8A4
		test	ebx, ebx
		jnz	short loc_48B8A4
		test	esi, esi
		jnz	short loc_48B8E5

loc_48B8A4:				; CODE XREF: .text:0048B89Aj
					; .text:0048B89Ej
		push	offset aMisplacedAddre ; "Misplaced address size declaration"
		call	_T
		pop	ecx
		mov	[ebp-134h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-138h], eax
		cmp	dword ptr [ebp-138h], 0
		jz	short loc_48B8DD
		mov	edx, [ebp-134h]
		push	edx		; src
		mov	ecx, [ebp-138h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48B8DD:				; CODE XREF: .text:0048B8C5j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B8E5:				; CODE XREF: .text:0048B8A2j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_48B92C
		push	offset aConflictingAdd ; "Conflicting address size declaration"
		call	_T
		pop	ecx
		mov	[ebp-13Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-140h], edx
		cmp	dword ptr [ebp-140h], 0
		jz	short loc_48B924
		mov	ecx, [ebp-13Ch]
		push	ecx		; src
		mov	eax, [ebp-140h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B924:				; CODE XREF: .text:0048B90Cj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B92C:				; CODE XREF: .text:0048B8E9j
		mov	edx, value
		mov	[ebp-10h], edx
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48B93A:				; CODE XREF: .text:0048A912j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48B94E
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48B94E
		test	ebx, ebx
		jnz	short loc_48B94E
		test	esi, esi
		jnz	short loc_48B98F

loc_48B94E:				; CODE XREF: .text:0048B93Ej
					; .text:0048B944j ...
		push	offset aMisplacedDataS ; "Misplaced data size declaration"
		call	_T
		pop	ecx
		mov	[ebp-144h], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-148h], ecx
		cmp	dword ptr [ebp-148h], 0
		jz	short loc_48B987
		mov	eax, [ebp-144h]
		push	eax		; src
		mov	edx, [ebp-148h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48B987:				; CODE XREF: .text:0048B96Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B98F:				; CODE XREF: .text:0048B94Cj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48B9D6
		push	offset aConflictingOff ; "Conflicting OFFSET and PTR"
		call	_T
		pop	ecx
		mov	[ebp-14Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-150h], edx
		cmp	dword ptr [ebp-150h], 0
		jz	short loc_48B9CE
		mov	ecx, [ebp-14Ch]
		push	ecx		; src
		mov	eax, [ebp-150h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48B9CE:				; CODE XREF: .text:0048B9B6j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48B9D6:				; CODE XREF: .text:0048B993j
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 0
		jz	short loc_48BA20
		push	offset aDuplicateDataS ; "Duplicate data size declaration"
		call	_T
		pop	ecx
		mov	[ebp-154h], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-158h], ecx
		cmp	dword ptr [ebp-158h], 0
		jz	short loc_48BA18
		mov	eax, [ebp-154h]
		push	eax		; src
		mov	edx, [ebp-158h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BA18:				; CODE XREF: .text:0048BA00j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BA20:				; CODE XREF: .text:0048B9DDj
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+4], ecx
		mov	dword ptr [ebp-14h], 1
		xor	edi, edi
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48BA3A:				; CODE XREF: .text:0048A91Ej
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+4], 0
		jnz	short loc_48BA66
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48BA66
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_48BA66
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48BA66
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+10h], 0FFFFFFFFh
		jnz	short loc_48BA66
		test	ebx, ebx
		jnz	short loc_48BA66
		test	esi, esi
		jnz	short loc_48BAA7

loc_48BA66:				; CODE XREF: .text:0048BA41j
					; .text:0048BA47j ...
		push	offset aMisplacedJumpS ; "Misplaced jump size declaration"
		call	_T
		pop	ecx
		mov	[ebp-15Ch], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-160h], ecx
		cmp	dword ptr [ebp-160h], 0
		jz	short loc_48BA9F
		mov	eax, [ebp-15Ch]
		push	eax		; src
		mov	edx, [ebp-160h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BA9F:				; CODE XREF: .text:0048BA87j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BAA7:				; CODE XREF: .text:0048BA64j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48BAEE
		push	offset aConflictingO_0 ; "Conflicting OFFSET and jump size"
		call	_T
		pop	ecx
		mov	[ebp-164h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-168h], edx
		cmp	dword ptr [ebp-168h], 0
		jz	short loc_48BAE6
		mov	ecx, [ebp-164h]
		push	ecx		; src
		mov	eax, [ebp-168h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48BAE6:				; CODE XREF: .text:0048BACEj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BAEE:				; CODE XREF: .text:0048BAABj
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+8], 0
		jz	short loc_48BB38
		push	offset aDuplicateJumpS ; "Duplicate jump size declaration"
		call	_T
		pop	ecx
		mov	[ebp-16Ch], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-170h], ecx
		cmp	dword ptr [ebp-170h], 0
		jz	short loc_48BB30
		mov	eax, [ebp-16Ch]
		push	eax		; src
		mov	edx, [ebp-170h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BB30:				; CODE XREF: .text:0048BB18j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BB38:				; CODE XREF: .text:0048BAF5j
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+8], ecx
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48BB49:				; CODE XREF: .text:0048A92Aj
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+4], 0
		jnz	short loc_48BB75
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48BB75
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_48BB75
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48BB75
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+10h], 0FFFFFFFFh
		jnz	short loc_48BB75
		test	ebx, ebx
		jnz	short loc_48BB75
		test	esi, esi
		jnz	short loc_48BBB6

loc_48BB75:				; CODE XREF: .text:0048BB50j
					; .text:0048BB56j ...
		push	offset aMisplacedOffse ; "Misplaced OFFSET"
		call	_T
		pop	ecx
		mov	[ebp-174h], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-178h], ecx
		cmp	dword ptr [ebp-178h], 0
		jz	short loc_48BBAE
		mov	eax, [ebp-174h]
		push	eax		; src
		mov	edx, [ebp-178h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BBAE:				; CODE XREF: .text:0048BB96j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BBB6:				; CODE XREF: .text:0048BB73j
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+8], 0
		jz	short loc_48BC00
		push	offset aConflictingO_0 ; "Conflicting OFFSET and jump size"
		call	_T
		pop	ecx
		mov	[ebp-17Ch], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-180h], ecx
		cmp	dword ptr [ebp-180h], 0
		jz	short loc_48BBF8
		mov	eax, [ebp-17Ch]
		push	eax		; src
		mov	edx, [ebp-180h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BBF8:				; CODE XREF: .text:0048BBE0j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BC00:				; CODE XREF: .text:0048BBBDj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48BC47
		push	offset aDuplicateOffse ; "Duplicate OFFSET"
		call	_T
		pop	ecx
		mov	[ebp-184h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-188h], edx
		cmp	dword ptr [ebp-188h], 0
		jz	short loc_48BC3F
		mov	ecx, [ebp-184h]
		push	ecx		; src
		mov	eax, [ebp-188h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48BC3F:				; CODE XREF: .text:0048BC27j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BC47:				; CODE XREF: .text:0048BC04j
		mov	dword ptr [ebp-0Ch], 1
		xor	edi, edi
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48BC55:				; CODE XREF: .text:0048A906j
		test	ebx, ebx
		jnz	short loc_48BC9E
		test	esi, esi
		jnz	short loc_48BC9E
		push	offset aMissingCommaOr ; src
		call	_T
		pop	ecx
		mov	[ebp-18Ch], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-190h], eax
		cmp	dword ptr [ebp-190h], 0
		jz	short loc_48BC96
		mov	edx, [ebp-18Ch]
		push	edx		; src
		mov	ecx, [ebp-190h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BC96:				; CODE XREF: .text:0048BC7Ej
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BC9E:				; CODE XREF: .text:0048BC57j
					; .text:0048BC5Bj
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_48BCAA
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_48BCEB

loc_48BCAA:				; CODE XREF: .text:0048BCA2j
		push	offset aArithmeticWith ; "Arithmetic with undefined operand is me"...
		call	_T
		pop	ecx
		mov	[ebp-194h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-198h], edx
		cmp	dword ptr [ebp-198h], 0
		jz	short loc_48BCE3
		mov	ecx, [ebp-194h]
		push	ecx		; src
		mov	eax, [ebp-198h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48BCE3:				; CODE XREF: .text:0048BCCBj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BCEB:				; CODE XREF: .text:0048BCA8j
		cmp	ebx, 1000000h
		jnz	short loc_48BD01
		mov	edx, [ebp+8]
		mov	ecx, value
		sub	[edx+48h], ecx
		jmp	short loc_48BD22
; ---------------------------------------------------------------------------

loc_48BD01:				; CODE XREF: .text:0048BCF1j
		cmp	ebx, 2000000h
		jnz	short loc_48BD17
		mov	eax, [ebp+8]
		mov	edx, value
		or	[eax+48h], edx
		jmp	short loc_48BD22
; ---------------------------------------------------------------------------

loc_48BD17:				; CODE XREF: .text:0048BD07j
		mov	ecx, [ebp+8]
		mov	eax, value
		add	[ecx+48h], eax

loc_48BD22:				; CODE XREF: .text:0048BCFFj
					; .text:0048BD15j
		xor	edx, edx
		xor	edi, edi
		mov	dword ptr [ebp-18h], 1
		xor	eax, eax
		mov	esi, edx
		mov	[ebp-1Ch], eax
		mov	ebx, edx
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48BD3B:				; CODE XREF: .text:0048A93Bj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_48BD82
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-19Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-1A0h], edx
		cmp	dword ptr [ebp-1A0h], 0
		jz	short loc_48BD7A
		mov	ecx, [ebp-19Ch]
		push	ecx		; src
		mov	eax, [ebp-1A0h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48BD7A:				; CODE XREF: .text:0048BD62j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BD82:				; CODE XREF: .text:0048BD3Fj
		test	ebx, ebx
		jnz	short loc_48BDCB
		test	esi, esi
		jnz	short loc_48BDCB
		push	offset aMissingCommaOr ; src
		call	_T
		pop	ecx
		mov	[ebp-1A4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-1A8h], edx
		cmp	dword ptr [ebp-1A8h], 0
		jz	short loc_48BDC3
		mov	ecx, [ebp-1A4h]
		push	ecx		; src
		mov	eax, [ebp-1A8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48BDC3:				; CODE XREF: .text:0048BDABj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BDCB:				; CODE XREF: .text:0048BD84j
					; .text:0048BD88j
		test	ebx, ebx
		jz	short loc_48BE25
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+48h], 0
		jnz	short loc_48BDE4
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_48BDE4
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_48BE25

loc_48BDE4:				; CODE XREF: .text:0048BDD6j
					; .text:0048BDDCj
		push	offset aArithmeticWith ; "Arithmetic with undefined operand is me"...
		call	_T
		pop	ecx
		mov	[ebp-1ACh], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-1B0h], ecx
		cmp	dword ptr [ebp-1B0h], 0
		jz	short loc_48BE1D
		mov	eax, [ebp-1ACh]
		push	eax		; src
		mov	edx, [ebp-1B0h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BE1D:				; CODE XREF: .text:0048BE05j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BE25:				; CODE XREF: .text:0048BDCDj
					; .text:0048BDE2j
		mov	edx, [ebp+8]
		xor	ecx, ecx
		xor	eax, eax
		xor	edi, edi
		mov	[edx+48h], ecx
		mov	esi, eax
		mov	dword ptr [ebp-20h], 1
		mov	dword ptr [ebp-18h], 1
		mov	ebx, eax
		xor	eax, eax
		mov	[ebp-1Ch], eax
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48BE4D:				; CODE XREF: .text:0048A947j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_48BE94
		push	offset aImpreciseFormI ; "Imprecise form is not	allowed"
		call	_T
		pop	ecx
		mov	[ebp-1B4h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-1B8h], edx
		cmp	dword ptr [ebp-1B8h], 0
		jz	short loc_48BE8C
		mov	ecx, [ebp-1B4h]
		push	ecx		; src
		mov	eax, [ebp-1B8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48BE8C:				; CODE XREF: .text:0048BE74j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BE94:				; CODE XREF: .text:0048BE51j
		test	ebx, ebx
		jnz	short loc_48BEDD
		test	esi, esi
		jnz	short loc_48BEDD
		push	offset aMissingCommaOr ; src
		call	_T
		pop	ecx
		mov	[ebp-1BCh], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-1C0h], edx
		cmp	dword ptr [ebp-1C0h], 0
		jz	short loc_48BED5
		mov	ecx, [ebp-1BCh]
		push	ecx		; src
		mov	eax, [ebp-1C0h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48BED5:				; CODE XREF: .text:0048BEBDj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BEDD:				; CODE XREF: .text:0048BE96j
					; .text:0048BE9Aj
		test	ebx, ebx
		jz	short loc_48BF37
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+48h], 0
		jnz	short loc_48BEF6
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_48BEF6
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_48BF37

loc_48BEF6:				; CODE XREF: .text:0048BEE8j
					; .text:0048BEEEj
		push	offset aArithmeticWith ; "Arithmetic with undefined operand is me"...
		call	_T
		pop	ecx
		mov	[ebp-1C4h], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-1C8h], ecx
		cmp	dword ptr [ebp-1C8h], 0
		jz	short loc_48BF2F
		mov	eax, [ebp-1C4h]
		push	eax		; src
		mov	edx, [ebp-1C8h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BF2F:				; CODE XREF: .text:0048BF17j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BF37:				; CODE XREF: .text:0048BEDFj
					; .text:0048BEF4j
		mov	edx, [ebp+8]
		xor	ecx, ecx
		xor	eax, eax
		xor	edi, edi
		mov	[edx+48h], ecx
		mov	esi, eax
		mov	dword ptr [ebp-24h], 1
		mov	dword ptr [ebp-18h], 1
		mov	ebx, eax
		xor	eax, eax
		mov	[ebp-1Ch], eax
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48BF5F:				; CODE XREF: .text:0048A8F8j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48BF82
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_48BF82
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_48BF82
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+10h], 0FFFFFFFFh
		jnz	short loc_48BF82
		test	ebx, ebx
		jnz	short loc_48BF82
		test	esi, esi
		jnz	short loc_48BFC3

loc_48BF82:				; CODE XREF: .text:0048BF63j
					; .text:0048BF69j ...
		push	offset aImmediateFarAd ; "Immediate far	address	is not allowed"
		call	_T
		pop	ecx
		mov	[ebp-1CCh], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-1D0h], ecx
		cmp	dword ptr [ebp-1D0h], 0
		jz	short loc_48BFBB
		mov	eax, [ebp-1CCh]
		push	eax		; src
		mov	edx, [ebp-1D0h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48BFBB:				; CODE XREF: .text:0048BFA3j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48BFC3:				; CODE XREF: .text:0048BF80j
		mov	edx, [ebp+8]
		test	byte ptr [edx+8], 5
		jz	short loc_48C00D
		push	offset aConflictingJum ; "Conflicting jump size	specifier"
		call	_T
		pop	ecx
		mov	[ebp-1D4h], eax
		mov	ecx, [ebp+0Ch]
		mov	[ebp-1D8h], ecx
		cmp	dword ptr [ebp-1D8h], 0
		jz	short loc_48C005
		mov	eax, [ebp-1D4h]
		push	eax		; src
		mov	edx, [ebp-1D8h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_48C005:				; CODE XREF: .text:0048BFEDj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C00D:				; CODE XREF: .text:0048BFCAj
		mov	edx, [ebp+8]
		mov	ecx, value
		mov	[edx+4Ch], ecx
		cmp	dword_5EC0BE, 2
		jnz	loc_48C0E3
		xor	eax, eax
		xor	ebx, ebx
		mov	dword ptr [ebp-23Ch], (offset ps.text+4)
		mov	ps._mask, eax
		jmp	loc_48C0C5
; ---------------------------------------------------------------------------

loc_48C03E:				; CODE XREF: .text:0048C0CBj
		mov	eax, [ebp-23Ch]
		mov	dx, [eax]
		push	edx		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_48C0D1
		mov	ecx, [ebp-23Ch]
		mov	ax, [ecx]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_48C085
		mov	ecx, [ebp-23Ch]
		mov	edx, ps._mask
		shl	edx, 4
		movzx	eax, word ptr [ecx]
		add	edx, eax
		sub	edx, 30h
		mov	ps._mask, edx
		jmp	short loc_48C0BD
; ---------------------------------------------------------------------------

loc_48C085:				; CODE XREF: .text:0048C064j
		mov	edx, [ebp-23Ch]
		mov	cx, [edx]
		mov	[ebp-1DAh], cx
		mov	ax, [ebp-1DAh]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		movzx	edx, ax
		mov	ecx, ps._mask
		shl	ecx, 4
		add	edx, ecx
		sub	edx, 41h
		add	edx, 0Ah
		mov	ps._mask, edx

loc_48C0BD:				; CODE XREF: .text:0048C083j
		inc	ebx
		add	dword ptr [ebp-23Ch], 2

loc_48C0C5:				; CODE XREF: .text:0048C039j
		cmp	ebx, dword ptr ps.errmsg
		jl	loc_48C03E

loc_48C0D1:				; CODE XREF: .text:0048C050j
		cmp	ebx, dword ptr ps.errmsg
		jnz	short loc_48C0E3
		mov	dword_5EC0BE, 4

loc_48C0E3:				; CODE XREF: .text:0048C020j
					; .text:0048C0D7j
		cmp	dword_5EC0BE, 4
		jz	short loc_48C12D
		push	offset aExpectingImmed ; "Expecting immediate constant"
		call	_T
		pop	ecx
		mov	[ebp-1E0h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-1E4h], eax
		cmp	dword ptr [ebp-1E4h], 0
		jz	short loc_48C125
		mov	edx, [ebp-1E0h]
		push	edx		; src
		mov	ecx, [ebp-1E4h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48C125:				; CODE XREF: .text:0048C10Dj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C12D:				; CODE XREF: .text:0048C0EAj
		mov	edx, [ebp+8]
		mov	ecx, ps._mask
		mov	[edx+48h], ecx
		mov	eax, [ebp+8]
		mov	dword ptr [eax], 40200h
		push	offset ps	; ps
		call	Scan
		pop	ecx
		xor	eax, eax
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C154:				; CODE XREF: .text:0048A966j
		test	ebx, 1000000h
		jz	short loc_48C19D
		push	offset aCanTSubtractEx ; src
		call	_T
		pop	ecx
		mov	[ebp-1E8h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-1ECh], edx
		cmp	dword ptr [ebp-1ECh], 0
		jz	short loc_48C195
		mov	ecx, [ebp-1E8h]
		push	ecx		; src
		mov	eax, [ebp-1ECh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48C195:				; CODE XREF: .text:0048C17Dj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C19D:				; CODE XREF: .text:0048C15Aj
		test	ebx, 2000000h
		jz	short loc_48C1E6
		push	offset aCanTOrExpressi ; src
		call	_T
		pop	ecx
		mov	[ebp-1F0h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-1F4h], edx
		cmp	dword ptr [ebp-1F4h], 0
		jz	short loc_48C1DE
		mov	ecx, [ebp-1F0h]
		push	ecx		; src
		mov	eax, [ebp-1F4h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48C1DE:				; CODE XREF: .text:0048C1C6j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C1E6:				; CODE XREF: .text:0048C1A3j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_48C22D
		push	offset aNestedBrackets ; src
		call	_T
		pop	ecx
		mov	[ebp-1F8h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-1FCh], edx
		cmp	dword ptr [ebp-1FCh], 0
		jz	short loc_48C225
		mov	ecx, [ebp-1F8h]
		push	ecx		; src
		mov	eax, [ebp-1FCh]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48C225:				; CODE XREF: .text:0048C20Dj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C22D:				; CODE XREF: .text:0048C1EAj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_48C274
		push	offset aConflictingO_1 ; src
		call	_T
		pop	ecx
		mov	[ebp-200h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-204h], edx
		cmp	dword ptr [ebp-204h], 0
		jz	short loc_48C26C
		mov	ecx, [ebp-200h]
		push	ecx		; src
		mov	eax, [ebp-204h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48C26C:				; CODE XREF: .text:0048C254j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C274:				; CODE XREF: .text:0048C231j
		mov	dword ptr [ebp-4], 1
		xor	ebx, ebx
		xor	edi, edi
		mov	dword ptr [ebp-1Ch], 1
		mov	esi, 800000h
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48C290:				; CODE XREF: .text:0048A972j
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_48C2D7
		push	offset aUnmatchedRight ; src
		call	_T
		pop	ecx
		mov	[ebp-208h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-20Ch], eax
		cmp	dword ptr [ebp-20Ch], 0
		jz	short loc_48C2CF
		mov	edx, [ebp-208h]
		push	edx		; src
		mov	ecx, [ebp-20Ch]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48C2CF:				; CODE XREF: .text:0048C2B7j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C2D7:				; CODE XREF: .text:0048C294j
		test	ebx, ebx
		jz	short loc_48C31C
		push	offset aExpectingReg_1 ; src
		call	_T
		pop	ecx
		mov	[ebp-210h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-214h], edx
		cmp	dword ptr [ebp-214h], 0
		jz	short loc_48C314
		mov	ecx, [ebp-210h]
		push	ecx		; src
		mov	eax, [ebp-214h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48C314:				; CODE XREF: .text:0048C2FCj
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C31C:				; CODE XREF: .text:0048C2D9j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48C363
		push	offset aBracketsMustCo ; "Brackets must	contain	register or const"...
		call	_T
		pop	ecx
		mov	[ebp-218h], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-21Ch], edx
		cmp	dword ptr [ebp-21Ch], 0
		jz	short loc_48C35B
		mov	ecx, [ebp-218h]
		push	ecx		; src
		mov	eax, [ebp-21Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_48C35B:				; CODE XREF: .text:0048C343j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C363:				; CODE XREF: .text:0048C320j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-4], edx
		mov	esi, ecx
		mov	dword ptr [ebp-8], 1
		mov	dword ptr [ebp-1Ch], 1
		mov	ebx, ecx
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48C381:				; CODE XREF: .text:0048A95Aj
					; .text:0048A983j
		test	ebx, ebx
		jz	short loc_48C3C6
		push	offset aSyntaxError ; "Syntax error"
		call	_T
		pop	ecx
		mov	[ebp-220h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-224h], eax
		cmp	dword ptr [ebp-224h], 0
		jz	short loc_48C3BE
		mov	edx, [ebp-220h]
		push	edx		; src
		mov	ecx, [ebp-224h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48C3BE:				; CODE XREF: .text:0048C3A6j
		or	eax, 0FFFFFFFFh
		jmp	loc_48C464
; ---------------------------------------------------------------------------

loc_48C3C6:				; CODE XREF: .text:0048C383j
		mov	ebx, dword_5EC0C8
		xor	edi, edi
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48C3D3:				; CODE XREF: .text:0048A98Fj
		test	ebx, ebx
		jnz	short loc_48C3DD
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48C41B

loc_48C3DD:				; CODE XREF: .text:0048C3D5j
		push	offset aSyntaxError ; "Syntax error"
		call	_T
		pop	ecx
		mov	[ebp-228h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-22Ch], eax
		cmp	dword ptr [ebp-22Ch], 0
		jz	short loc_48C416
		mov	edx, [ebp-228h]
		push	edx		; src
		mov	ecx, [ebp-22Ch]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48C416:				; CODE XREF: .text:0048C3FEj
		or	eax, 0FFFFFFFFh
		jmp	short loc_48C464
; ---------------------------------------------------------------------------

loc_48C41B:				; CODE XREF: .text:0048C3DBj
		mov	ebx, dword_5EC0C8
		xor	edi, edi
		jmp	loc_48A825
; ---------------------------------------------------------------------------

loc_48C428:				; CODE XREF: .text:0048A880j
					; .text:0048A897j ...
		push	offset aSyntaxError ; "Syntax error"
		call	_T
		pop	ecx
		mov	[ebp-230h], eax
		mov	eax, [ebp+0Ch]
		mov	[ebp-234h], eax
		cmp	dword ptr [ebp-234h], 0
		jz	short loc_48C461
		mov	edx, [ebp-230h]
		push	edx		; src
		mov	ecx, [ebp-234h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_48C461:				; CODE XREF: .text:0048C449j
		or	eax, 0FFFFFFFFh

loc_48C464:				; CODE XREF: .text:0048A836j
					; .text:0048A9C5j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_48C46C:				; DATA XREF: .data:004F600Eo
		push	ebp
		mov	ebp, esp
		mov	eax, offset regname
		push	ebx
		mov	ecx, offset g_REG
		push	esi
		push	edi
		mov	ebx, offset fpuname
		mov	edi, [eax+40h]
		mov	esi, offset mmxname
		mov	[ecx], edi
		mov	edx, offset ssename
		mov	edi, [eax+44h]
		mov	[ecx+0Ch], edi
		mov	edi, [eax+48h]
		mov	[ecx+18h], edi
		mov	edi, [eax+4Ch]
		mov	[ecx+24h], edi
		mov	edi, [eax+50h]
		mov	[ecx+30h], edi
		mov	edi, [eax+54h]
		mov	[ecx+3Ch], edi
		mov	edi, [eax+58h]
		mov	[ecx+48h], edi
		mov	edi, [eax+5Ch]
		mov	[ecx+54h], edi
		mov	edi, [eax]
		mov	[ecx+60h], edi
		mov	edi, [eax+4]
		mov	[ecx+6Ch], edi
		mov	edi, [eax+8]
		mov	[ecx+78h], edi
		mov	edi, [eax+0Ch]
		mov	[ecx+84h], edi
		mov	edi, [eax+10h]
		mov	[ecx+90h], edi
		mov	edi, [eax+14h]
		mov	[ecx+9Ch], edi
		mov	edi, [eax+18h]
		mov	[ecx+0A8h], edi
		mov	edi, [eax+1Ch]
		mov	[ecx+0B4h], edi
		mov	edi, segname
		mov	[ecx+0C0h], edi
		mov	edi, off_52FDA8
		mov	[ecx+0CCh], edi
		mov	edi, off_52FDAC
		mov	[ecx+0D8h], edi
		mov	edi, off_52FDB0
		mov	[ecx+0E4h], edi
		mov	edi, off_52FDB4
		mov	[ecx+0F0h], edi
		mov	edi, off_52FDB8
		mov	[ecx+0FCh], edi
		mov	edi, [eax+20h]
		mov	[ecx+108h], edi
		mov	edi, [eax+24h]
		mov	[ecx+114h], edi
		mov	edi, [eax+28h]
		mov	[ecx+120h], edi
		mov	edi, [eax+2Ch]
		mov	[ecx+12Ch], edi
		mov	edi, [eax+30h]
		mov	[ecx+138h], edi
		mov	edi, [eax+34h]
		mov	[ecx+144h], edi
		mov	edi, [eax+38h]
		mov	[ecx+150h], edi
		mov	eax, [eax+3Ch]
		mov	[ecx+15Ch], eax
		mov	eax, [ebx+20h]
		mov	[ecx+168h], eax
		mov	eax, [ebx+24h]
		mov	[ecx+174h], eax
		mov	eax, [ebx+28h]
		mov	[ecx+180h], eax
		mov	eax, [ebx+2Ch]
		mov	[ecx+18Ch], eax
		mov	eax, [ebx+30h]
		mov	[ecx+198h], eax
		mov	eax, [ebx+34h]
		mov	[ecx+1A4h], eax
		mov	eax, [ebx+38h]
		mov	[ecx+1B0h], eax
		mov	eax, [ebx+3Ch]
		mov	[ecx+1BCh], eax
		mov	eax, [esi]
		mov	[ecx+1C8h], eax
		mov	eax, [esi+4]
		mov	[ecx+1D4h], eax
		mov	eax, [esi+8]
		mov	[ecx+1E0h], eax
		mov	eax, [esi+0Ch]
		mov	[ecx+1ECh], eax
		mov	eax, [esi+10h]
		mov	[ecx+1F8h], eax
		mov	eax, [esi+14h]
		mov	[ecx+204h], eax
		mov	eax, [esi+18h]
		mov	[ecx+210h], eax
		mov	eax, [esi+1Ch]
		mov	[ecx+21Ch], eax
		mov	eax, [edx]
		mov	[ecx+228h], eax
		mov	eax, [edx+4]
		mov	[ecx+234h], eax
		mov	eax, [edx+8]
		mov	[ecx+240h], eax
		mov	eax, [edx+0Ch]
		mov	[ecx+24Ch], eax
		mov	eax, [edx+10h]
		mov	[ecx+258h], eax
		mov	eax, [edx+14h]
		mov	[ecx+264h], eax
		mov	eax, [edx+18h]
		mov	[ecx+270h], eax
		mov	eax, [edx+1Ch]
		mov	[ecx+27Ch], eax
		mov	eax, [edx+40h]
		mov	[ecx+288h], eax
		mov	eax, [edx+44h]
		mov	[ecx+294h], eax
		mov	eax, [edx+48h]
		mov	[ecx+2A0h], eax
		mov	eax, [edx+4Ch]
		mov	[ecx+2ACh], eax
		mov	eax, [edx+50h]
		mov	[ecx+2B8h], eax
		mov	eax, [edx+54h]
		mov	[ecx+2C4h], eax
		mov	eax, [edx+58h]
		mov	[ecx+2D0h], eax
		mov	edx, [edx+5Ch]
		mov	[ecx+2DCh], edx
		mov	eax, crname
		mov	[ecx+2E8h], eax
		mov	edx, off_52FEA8
		mov	[ecx+2F4h], edx
		mov	eax, off_52FEAC
		mov	[ecx+300h], eax
		mov	edx, off_52FEB0
		mov	[ecx+30Ch], edx
		mov	eax, off_52FEB4
		mov	[ecx+318h], eax
		mov	edx, off_52FEB8
		mov	[ecx+324h], edx
		mov	eax, off_52FEBC
		mov	[ecx+330h], eax
		mov	edx, off_52FEC0
		mov	[ecx+33Ch], edx
		mov	eax, drname
		mov	[ecx+348h], eax
		mov	edx, off_52FEE8
		mov	[ecx+354h], edx
		mov	eax, off_52FEEC
		mov	[ecx+360h], eax
		mov	edx, off_52FEF0
		mov	[ecx+36Ch], edx
		mov	eax, off_52FEF4
		mov	[ecx+378h], eax
		mov	edx, off_52FEF8
		mov	[ecx+384h], edx
		mov	eax, off_52FEFC
		mov	[ecx+390h], eax
		mov	edx, off_52FF00
		mov	[ecx+39Ch], edx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		