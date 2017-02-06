.code

; int __cdecl loc_478B9C(const void *, const void *)
loc_478B9C:				; DATA XREF: .text:00478D4Ao
					; .text:004837E3o ...
		push	ebp
		mov	ebp, esp
		mov	edx, dword_5E9E20
		mov	eax, [ebp+8]
		mov	ecx, [ebp+0Ch]
		mov	eax, [eax]
		add	eax, edx
		add	eax, 4
		mov	ecx, [ecx]
		add	ecx, edx
		add	ecx, 4
		mov	edx, ecx
		push	edx
		push	eax
		call	loc_410B90
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_478BC8:				; DATA XREF: .text:004836C1o
					; .text:00483806o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	ecx, dword_5E9E20
		mov	eax, [ecx+edx]
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		mov	edx, dword_5E9E20
		mov	edx, [edx+ecx]
		cmp	edx, eax
		jbe	short loc_478BF0
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_478BF0:				; CODE XREF: .text:00478BE9j
		cmp	edx, eax
		jnb	short loc_478BFB
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_478BFB:				; CODE XREF: .text:00478BF2j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_478C00:				; CODE XREF: .text:00479776p
					; .text:00479986p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 4
		pop	ecx
		jnz	short loc_478C24
		mov	eax, [ebx+18h]
		mov	[esi], eax
		xor	eax, eax
		jmp	short loc_478C3F
; ---------------------------------------------------------------------------

loc_478C24:				; CODE XREF: .text:00478C19j
		cmp	dword ptr [ebx+42Eh], 2
		jz	short loc_478C32
		or	eax, 0FFFFFFFFh
		jmp	short loc_478C3F
; ---------------------------------------------------------------------------

loc_478C32:				; CODE XREF: .text:00478C2Bj
		push	esi		; value
		add	ebx, 2Ah
		push	ebx		; _name
		call	Getconstantbyname
		add	esp, 8

loc_478C3F:				; CODE XREF: .text:00478C22j
					; .text:00478C30j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_478C44(int, void *src, int)
loc_478C44:				; CODE XREF: .text:00478E76p
					; .text:0047912Bp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		test	ebx, ebx
		jnz	short loc_478C68
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_478C68
		xor	eax, eax
		jmp	loc_478D01
; ---------------------------------------------------------------------------

loc_478C68:				; CODE XREF: .text:00478C4Fj
					; .text:00478C5Fj
		add	ebx, ebx
		mov	edx, dword_5E9E28
		mov	esi, ebx
		add	edx, esi
		add	edx, 6		; int
		cmp	edx, dword_5E9E24
		jle	short loc_478CB7
		push	1		; flags
		push	offset failed	; failed
		push	1		; itemsize
		push	offset dword_5E9E24 ; pcount
		mov	eax, dword_5E9E20 ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E20, eax
		mov	edx, dword_5E9E28
		add	edx, esi
		add	edx, 6
		cmp	edx, dword_5E9E24
		jle	short loc_478CB7
		xor	eax, eax
		jmp	short loc_478D01
; ---------------------------------------------------------------------------

loc_478CB7:				; CODE XREF: .text:00478C7Dj
					; .text:00478CB1j
		mov	eax, dword_5E9E20
		mov	edx, dword_5E9E28
		mov	edi, dword_5E9E28
		mov	ecx, [ebp+8]
		mov	[eax+edx], ecx
		mov	eax, esi
		add	eax, 2
		mov	ecx, dword_5E9E20
		push	eax		; n
		add	ecx, dword_5E9E28
		mov	edx, [ebp+0Ch]
		add	ecx, 4
		push	edx		; src
		push	ecx		; dest
		call	_memcpy
		add	esi, dword_5E9E28
		add	esp, 0Ch
		add	esi, 6
		mov	eax, edi
		mov	dword_5E9E28, esi

loc_478D01:				; CODE XREF: .text:00478C63j
					; .text:00478CB5j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_478D08(wchar_t *s1, struct_0 *a2)
loc_478D08:				; CODE XREF: .text:0047AB69p
					; .text:0047ADF6p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+0Ch]
		jz	short loc_478D2A
		mov	eax, [ebp+8]
		cmp	word ptr [eax],	0
		jz	short loc_478D2A
		test	esi, esi
		jz	short loc_478D2A
		cmp	dword ptr [esi], 0
		jnz	short loc_478D31

loc_478D2A:				; CODE XREF: .text:00478D16j
					; .text:00478D1Fj ...
		xor	eax, eax
		jmp	loc_478DB4
; ---------------------------------------------------------------------------

loc_478D31:				; CODE XREF: .text:00478D28j
		cmp	dword_5E9E20, 0
		jz	short loc_478D40
		cmp	dword ptr [esi+8], 0
		jnz	short loc_478D44

loc_478D40:				; CODE XREF: .text:00478D38j
		xor	eax, eax
		jmp	short loc_478DB4
; ---------------------------------------------------------------------------

loc_478D44:				; CODE XREF: .text:00478D3Ej
		cmp	dword ptr [esi+0Ch], 0
		jz	short loc_478D65
		push	offset loc_478B9C ; _DWORD
		push	4		; size
		mov	edx, [esi+8]
		push	edx		; count
		mov	ecx, [esi]
		push	ecx		; data
		call	Heapsort
		add	esp, 10h
		xor	eax, eax
		mov	[esi+0Ch], eax

loc_478D65:				; CODE XREF: .text:00478D48j
		xor	edx, edx
		mov	[ebp-4], edx
		mov	edi, [esi+8]

loc_478D6D:				; CODE XREF: .text:00478DB0j
		mov	ebx, [ebp-4]
		add	ebx, edi
		sar	ebx, 1
		jns	short loc_478D79
		adc	ebx, 0

loc_478D79:				; CODE XREF: .text:00478D74j
		mov	eax, [esi]
		mov	eax, [eax+ebx*4]
		add	eax, dword_5E9E20
		add	eax, 4
		push	eax		; s2
		mov	edx, [ebp+8]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jge	short loc_478D9C
		mov	edi, ebx
		jmp	short loc_478DAD
; ---------------------------------------------------------------------------

loc_478D9C:				; CODE XREF: .text:00478D96j
		test	eax, eax
		jle	short loc_478DA6
		inc	ebx
		mov	[ebp-4], ebx
		jmp	short loc_478DAD
; ---------------------------------------------------------------------------

loc_478DA6:				; CODE XREF: .text:00478D9Ej
		mov	eax, [esi]
		mov	eax, [eax+ebx*4]
		jmp	short loc_478DB4
; ---------------------------------------------------------------------------

loc_478DAD:				; CODE XREF: .text:00478D9Aj
					; .text:00478DA4j
		cmp	edi, [ebp-4]
		jg	short loc_478D6D
		xor	eax, eax

loc_478DB4:				; CODE XREF: .text:00478D2Cj
					; .text:00478D42j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_478DBC:				; CODE XREF: .text:00482E2Ep
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	edi, offset dword_5E9E68
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 4
		pop	ecx
		jz	short loc_478DEA
		push	offset aIntegerConst_0 ; "Integer constant expected"
		call	_T
		pop	ecx
		jmp	loc_478E98
; ---------------------------------------------------------------------------

loc_478DEA:				; CODE XREF: .text:00478DD8j
		mov	esi, [ebx+18h]
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_478E14
		cmp	eax, 3
		jz	short loc_478E14
		push	offset aBadConstantNam ; src
		call	_T
		pop	ecx
		jmp	loc_478E98
; ---------------------------------------------------------------------------

loc_478E14:				; CODE XREF: .text:00478DFDj
					; .text:00478E02j
		mov	eax, [ebx+22Ah]
		test	eax, eax
		jle	short loc_478E33
		cmp	word ptr [ebx+eax*2+28h], 7Ch
		jnz	short loc_478E33
		push	offset aConstantEndsWi ; src
		call	_T
		pop	ecx
		jmp	short loc_478E98
; ---------------------------------------------------------------------------

loc_478E33:				; CODE XREF: .text:00478E1Cj
					; .text:00478E24j
		mov	edx, [edi+8]	; int
		cmp	edx, [edi+4]
		jl	short loc_478E6A
		push	1		; flags
		push	offset failed	; failed
		push	4		; itemsize
		lea	ecx, [edi+4]	; int
		push	ecx		; pcount
		mov	eax, [edi]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[edi], eax
		mov	edx, [edi+8]
		cmp	edx, [edi+4]
		jl	short loc_478E6A
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	short loc_478E98
; ---------------------------------------------------------------------------

loc_478E6A:				; CODE XREF: .text:00478E39j
					; .text:00478E5Bj
		mov	ecx, [ebx+22Ah]
		add	ebx, 2Ah
		push	ecx		; int
		push	ebx		; src
		push	esi		; int
		call	loc_478C44
		mov	edx, [edi+8]
		add	esp, 0Ch
		inc	dword ptr [edi+8]
		mov	ecx, [edi]
		mov	[ecx+edx*4], eax
		inc	dword_5EBC74
		xor	eax, eax
		mov	dword ptr [edi+0Ch], 1

loc_478E98:				; CODE XREF: .text:00478DE5j
					; .text:00478E0Fj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_478EA0:				; CODE XREF: .text:00482E74p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	edi, offset dword_5E9E68
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_478ED8
		cmp	eax, 3
		jz	short loc_478ED8
		push	offset aBadGroupName ; src
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_478ED8:				; CODE XREF: .text:00478EC1j
					; .text:00478EC6j
		cmp	dword ptr [ebx+22Ah], 20h
		jl	short loc_478EF1
		push	offset aLengthOfGroupN ; "Length of group _name is limited to 31	c"...
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_478EF1:				; CODE XREF: .text:00478EDFj
		lea	edx, [ebx+2Ah]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		mov	esi, offset word_5E9E88
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_478F05:				; CODE XREF: .text:00478F26j
		cmp	dword ptr [esi+40h], 0
		jz	short loc_478F28
		lea	eax, [ebx+2Ah]
		push	eax		; s2
		push	esi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_478F28
		inc	dword ptr [ebp-4]
		add	esi, 50h
		cmp	dword ptr [ebp-4], 18h
		jl	short loc_478F05

loc_478F28:				; CODE XREF: .text:00478F09j
					; .text:00478F1Aj
		cmp	dword ptr [ebp-4], 18h
		jl	short loc_478F3E
		push	offset aTooManyGroups ;	"Too many groups"
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_478F3E:				; CODE XREF: .text:00478F2Cj
		mov	edx, [ebp-4]
		cmp	edx, dword_5EBC78
		jge	short loc_478F65
		lea	ecx, [ebx+2Ah]
		push	ecx		; arglist
		push	offset aRedefinedGroup ; "  Redefined group '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_478F65:				; CODE XREF: .text:00478F47j
		cmp	dword ptr [esi+40h], 0
		jnz	short loc_478FA2
		mov	eax, 400h	; int
		mov	[esi+44h], eax
		push	1		; flags
		mov	edx, [esi+44h]
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[esi+40h], eax
		cmp	dword ptr [esi+40h], 0
		jnz	short loc_478F9D
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_478F9D:				; CODE XREF: .text:00478F8Bj
		xor	ecx, ecx
		mov	[esi+48h], ecx

loc_478FA2:				; CODE XREF: .text:00478F69j
		lea	eax, [ebx+2Ah]
		push	eax		; src
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		test	eax, eax
		jz	short loc_478FD5
		dec	eax
		jz	short loc_478FD5
		push	offset aExtraCharact_1 ; "Extra	characters on line"
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_478FD5:				; CODE XREF: .text:00478FC0j
					; .text:00478FC3j ...
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 1
		jz	short loc_478FD5
		cmp	eax, 2
		jz	short loc_478FFC
		push	offset aExpectingConst ; "Expecting CONST or END"
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_478FFC:				; CODE XREF: .text:00478FEAj
		push	(offset	aExpectingConst+26h) ; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	loc_47917F
		push	offset aConst_0	; "CONST"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47903A
		push	offset aExpectingConst ; "Expecting CONST or END"
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_47903A:				; CODE XREF: .text:00479028j
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 4
		pop	ecx
		jz	short loc_47905A
		push	offset aIntegerConst_0 ; "Integer constant expected"
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_47905A:				; CODE XREF: .text:00479048j
		mov	eax, [ebx+18h]
		mov	[ebp-8], eax
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_479087
		cmp	eax, 3
		jz	short loc_479087
		push	offset aBadConstantNam ; src
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_479087:				; CODE XREF: .text:00479070j
					; .text:00479075j
		mov	eax, [ebx+22Ah]
		test	eax, eax
		jle	short loc_4790A9
		cmp	word ptr [ebx+eax*2+28h], 7Ch
		jnz	short loc_4790A9
		push	offset aConstantEndsWi ; src
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_4790A9:				; CODE XREF: .text:0047908Fj
					; .text:00479097j
		mov	edx, [edi+8]	; int
		cmp	edx, [edi+4]
		jl	short loc_4790E3
		push	1		; flags
		push	offset failed	; failed
		push	4		; itemsize
		lea	ecx, [edi+4]	; int
		push	ecx		; pcount
		mov	eax, [edi]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[edi], eax
		mov	edx, [edi+8]
		cmp	edx, [edi+4]
		jl	short loc_4790E3
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_479192
; ---------------------------------------------------------------------------

loc_4790E3:				; CODE XREF: .text:004790AFj
					; .text:004790D1j
		mov	ecx, [esi+48h]	; int
		cmp	ecx, [esi+44h]
		jl	short loc_47911C
		push	1		; flags
		push	offset failed	; failed
		push	4		; itemsize
		lea	eax, [esi+44h]	; int
		push	eax		; pcount
		mov	edx, [esi+40h]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[esi+40h], eax
		mov	ecx, [esi+48h]
		cmp	ecx, [esi+44h]
		jl	short loc_47911C
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	short loc_479192
; ---------------------------------------------------------------------------

loc_47911C:				; CODE XREF: .text:004790E9j
					; .text:0047910Dj
		mov	eax, [ebx+22Ah]
		lea	edx, [ebx+2Ah]
		push	eax		; int
		push	edx		; src
		mov	ecx, [ebp-8]
		push	ecx		; int
		call	loc_478C44
		add	esp, 0Ch
		mov	edx, [edi+8]
		inc	dword ptr [edi+8]
		mov	ecx, [edi]
		mov	[ecx+edx*4], eax
		inc	dword_5EBC74
		mov	dword ptr [edi+0Ch], 1
		mov	edx, [esi+48h]
		inc	dword ptr [esi+48h]
		mov	ecx, [esi+40h]
		mov	[ecx+edx*4], eax
		mov	dword ptr [esi+4Ch], 1
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 1
		pop	ecx
		jz	loc_478FD5
		push	offset aExtraCharact_1 ; "Extra	characters on line"
		call	_T
		pop	ecx
		jmp	short loc_479192
; ---------------------------------------------------------------------------

loc_47917F:				; CODE XREF: .text:0047900Fj
		mov	eax, [ebp-4]
		cmp	eax, dword_5EBC78
		jnz	short loc_479190
		inc	dword_5EBC78

loc_479190:				; CODE XREF: .text:00479188j
		xor	eax, eax

loc_479192:				; CODE XREF: .text:00478ED3j
					; .text:00478EECj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_47919C:				; DATA XREF: .text:loc_47942Co
		push	ebp
		mov	ebp, esp
		mov	edx, dword_5E9E20
		mov	eax, [ebp+8]
		mov	ecx, [ebp+0Ch]
		mov	eax, [eax]
		add	eax, edx
		add	eax, 4
		mov	ecx, [ecx]
		add	ecx, edx
		add	ecx, 4
		mov	edx, ecx
		push	edx
		push	eax
		call	loc_410B90
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4791C8:				; CODE XREF: .text:00482EBAp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_4791F9
		cmp	eax, 3
		jz	short loc_4791F9
		push	offset aBadNameOfTrans ; src
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_4791F9:				; CODE XREF: .text:004791E2j
					; .text:004791E7j
		cmp	dword ptr [ebx+22Ah], 1Fh
		jl	short loc_479212
		push	offset aLengthOfTransl ; "Length of translator _name is limited to"...
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_479212:				; CODE XREF: .text:00479200j
		lea	edx, [ebx+2Ah]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		xor	edi, edi
		mov	esi, offset word_5EA608

loc_479223:				; CODE XREF: .text:00479241j
		cmp	dword ptr [esi+40h], 0
		jz	short loc_479243
		lea	eax, [ebx+2Ah]
		push	eax		; s2
		push	esi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_479243
		inc	edi
		add	esi, 48h
		cmp	edi, 8
		jl	short loc_479223

loc_479243:				; CODE XREF: .text:00479227j
					; .text:00479238j
		cmp	edi, 8
		jl	short loc_479258
		push	offset aTooManyTransla ; "Too many translators"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_479258:				; CODE XREF: .text:00479246j
		cmp	edi, dword_5EBC7C
		jge	short loc_47928B
		lea	edx, [ebx+2Ah]
		push	edx		; arglist
		push	offset aRedefinedTrans ; "  Redefined translator '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		mov	ecx, [esi+40h]
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		mov	[esi+40h], eax

loc_47928B:				; CODE XREF: .text:0047925Ej
		lea	edx, [ebx+2Ah]
		push	edx		; src
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	ebx		; ps
		call	Scan
		pop	ecx		; int
		mov	eax, [ebx+42Eh]	; int
		test	eax, eax
		jz	short loc_4792BE
		dec	eax
		jz	short loc_4792BE
		push	offset aExtraCharact_1 ; "Extra	characters on line"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_4792BE:				; CODE XREF: .text:004792A9j
					; .text:004792ACj
		push	3		; flags
		push	10000h		; size
		call	Memalloc
		add	esp, 8
		mov	[esi+40h], eax
		cmp	dword ptr [esi+40h], 0
		jnz	short loc_4792E6
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_4792E6:				; CODE XREF: .text:004792D4j
		xor	edx, edx
		mov	[esi+44h], edx

loc_4792EB:				; CODE XREF: .text:004792F9j
					; .text:00479411j
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 1
		pop	ecx
		jz	short loc_4792EB
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47931B
		cmp	eax, 3
		jz	short loc_47931B
		push	offset aExpectingTrans ; "Expecting translation	record or END"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_47931B:				; CODE XREF: .text:00479304j
					; .text:00479309j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_47933D
		push	(offset	aExpectingConst+26h) ; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	loc_479416

loc_47933D:				; CODE XREF: .text:00479322j
		cmp	dword ptr [esi+44h], 2000h
		jl	short loc_479356
		push	offset aTooManyTrans_0 ; "Too many translation records"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_479356:				; CODE XREF: .text:00479344j
		lea	ecx, [ebx+2Ah]
		push	ecx		; s
		call	__lwcsupr
		pop	ecx
		mov	eax, [ebx+22Ah]
		push	eax		; int
		lea	edx, [ebx+2Ah]
		push	edx		; src
		push	0		; int
		call	loc_478C44
		add	esp, 0Ch
		mov	ecx, [esi+40h]
		mov	edx, [esi+44h]
		mov	[ecx+edx*8], eax
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jnz	short loc_479394
		cmp	dword ptr [ebx+18h], 3Dh
		jz	short loc_4793A4

loc_479394:				; CODE XREF: .text:0047938Cj
		push	offset aMissingEqualSi ; "Missing equal	sign between names"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_4793A4:				; CODE XREF: .text:00479392j
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_4793CB
		cmp	eax, 3
		jz	short loc_4793CB
		push	offset aExpectingOutpu ; "Expecting output _name"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_4793CB:				; CODE XREF: .text:004793B4j
					; .text:004793B9j
		mov	ecx, [ebx+22Ah]
		lea	eax, [ebx+2Ah]
		push	ecx		; int
		push	eax		; src
		push	0		; int
		call	loc_478C44
		add	esp, 0Ch
		mov	edx, [esi+40h]
		mov	ecx, [esi+44h]
		mov	[edx+ecx*8+4], eax
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		test	eax, eax
		jz	short loc_47940E
		dec	eax
		jz	short loc_47940E
		push	offset aExtraCharact_1 ; "Extra	characters on line"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_47940E:				; CODE XREF: .text:004793F9j
					; .text:004793FCj
		inc	dword ptr [esi+44h]
		jmp	loc_4792EB
; ---------------------------------------------------------------------------

loc_479416:				; CODE XREF: .text:00479337j
		cmp	dword ptr [esi+44h], 0
		jnz	short loc_47942C
		push	offset aEmptyTranslato ; "Empty	translator"
		call	_T
		pop	ecx
		jmp	loc_4794AE
; ---------------------------------------------------------------------------

loc_47942C:				; CODE XREF: .text:0047941Aj
		push	offset loc_47919C ; _DWORD
		push	8		; size
		mov	edx, [esi+44h]
		push	edx		; count
		mov	ecx, [esi+40h]
		push	ecx		; data
		call	Heapsort
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_479496
; ---------------------------------------------------------------------------

loc_479447:				; CODE XREF: .text:0047949Cj
		mov	edx, [esi+40h]
		mov	ecx, [edx+ebx*8]
		mov	eax, dword_5E9E20
		add	ecx, eax
		add	ecx, 4
		mov	[ebp-4], ecx
		mov	edx, [esi+40h]
		mov	ecx, [edx+ebx*8+8]
		add	ecx, eax
		add	ecx, 4
		mov	eax, ecx
		push	eax
		mov	eax, [ebp-4]
		push	eax
		call	loc_410B90
		add	esp, 8
		test	eax, eax
		jnz	short loc_479495
		mov	eax, [ebp-4]
		push	eax		; arglist
		push	offset aRepeatingInput ; "  Repeating input _name '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_479495:				; CODE XREF: .text:00479477j
		inc	ebx

loc_479496:				; CODE XREF: .text:00479445j
		mov	edx, [esi+44h]
		dec	edx
		cmp	ebx, edx
		jl	short loc_479447
		cmp	edi, dword_5EBC7C
		jnz	short loc_4794AC
		inc	dword_5EBC7C

loc_4794AC:				; CODE XREF: .text:004794A4j
		xor	eax, eax

loc_4794AE:				; CODE XREF: .text:004791F4j
					; .text:0047920Dj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4794B4:				; CODE XREF: .text:00482F00p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_4794BD:				; CODE XREF: .text:004794C5j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4794BD
		mov	eax, [ebp-4]
		add	esp, 0FFFFFED8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jz	short loc_4794FF
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_4794FF
		push	offset aBadTypeName ; src
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4794FF:				; CODE XREF: .text:004794E4j
					; .text:004794EDj
		cmp	dword ptr [ebx+22Ah], 1Fh
		jl	short loc_479518
		push	offset aLengthOfTypeNa ; "Length of type _name is limited to 30 ch"...
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479518:				; CODE XREF: .text:00479506j
		lea	eax, [ebx+2Ah]
		lea	edx, [ebp-206Ch]
		push	eax		; src
		push	1Fh		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		push	10000h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_479551
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479551:				; CODE XREF: .text:0047953Fj
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-8], eax
		xor	ecx, ecx
		mov	[ebp-0Ch], edx
		mov	[ebp-10h], ecx
		xor	esi, esi

loc_479562:				; CODE XREF: .text:00479582j
					; .text:004795DBj
		mov	eax, [ebp-0Ch]
		lea	eax, [eax+eax*2]
		lea	edx, [ebp+eax*4-2138h]
		mov	[ebp-28h], edx

loc_479572:				; CODE XREF: .text:004797B1j
					; .text:00479811j ...
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 1
		jz	short loc_479562
		cmp	eax, 3
		jnz	short loc_4795DD
		lea	edx, [esi+1]
		mov	ecx, [ebx+22Ah]
		inc	ecx
		add	ecx, ecx
		add	edx, ecx
		cmp	edx, 10000h
		jbe	short loc_4795AF
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4795AF:				; CODE XREF: .text:0047959Dj
		mov	byte ptr [edi+esi], 10h
		inc	esi
		mov	eax, [ebx+22Ah]
		lea	edx, [ebx+2Ah]
		inc	eax
		lea	ecx, [esi+edi]
		add	eax, eax
		push	eax		; n
		push	edx		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx+22Ah]
		inc	eax
		add	eax, eax
		add	eax, esi
		mov	esi, eax
		jmp	short loc_479562
; ---------------------------------------------------------------------------

loc_4795DD:				; CODE XREF: .text:00479587j
		cmp	dword ptr [ebx+42Eh], 2
		jz	short loc_4795F6
		push	offset aKeywordExpecte ; "Keyword expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4795F6:				; CODE XREF: .text:004795E4j
		lea	edx, [ebx+2Ah]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		push	(offset	aExpectingConst+26h) ; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479673
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_479633
		mov	eax, [ebp-28h]
		cmp	dword ptr [eax], 0
		jnz	short loc_479633
		push	offset aEndselExpected ; "ENDSEL expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479633:				; CODE XREF: .text:00479619j
					; .text:00479621j
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_479651
		mov	edx, [ebp-28h]
		cmp	dword ptr [edx], 0
		jz	short loc_479651
		push	offset aEndifExpected ;	"ENDIF expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479651:				; CODE XREF: .text:00479637j
					; .text:0047963Fj
		cmp	esi, 10000h
		jl	short loc_479669
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479669:				; CODE XREF: .text:00479657j
		mov	byte ptr [edi+esi], 0
		inc	esi
		jmp	loc_47AABF
; ---------------------------------------------------------------------------

loc_479673:				; CODE XREF: .text:00479613j
		cmp	esi, 10000h
		jl	short loc_47968B
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47968B:				; CODE XREF: .text:00479679j
		push	offset aSelect	; "SELECT"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_4797B6
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4796BA
		push	offset aNestingOfSelec ; "Nesting of SELECT blocks is not allowed"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4796BA:				; CODE XREF: .text:004796A8j
		cmp	dword ptr [ebp-0Ch], 10h
		jl	short loc_4796D0
		push	offset aTooDeepBlockNe ; "Too deep block nesting"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4796D0:				; CODE XREF: .text:004796BEj
		lea	eax, [esi+1]
		add	eax, 4
		cmp	eax, 10000h
		jbe	short loc_4796ED
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4796ED:				; CODE XREF: .text:004796DBj
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jnz	short loc_479718
		push	offset aMask	; "MASK"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479718
		mov	byte ptr [edi+esi], 1
		jmp	short loc_479770
; ---------------------------------------------------------------------------

loc_479718:				; CODE XREF: .text:004796FBj
					; .text:00479710j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_47973C
		push	offset aField	; "FIELD"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47973C
		mov	byte ptr [edi+esi], 2
		jmp	short loc_479770
; ---------------------------------------------------------------------------

loc_47973C:				; CODE XREF: .text:0047971Fj
					; .text:00479734j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479760
		push	offset aSigfield ; "SIGFIELD"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479760
		mov	byte ptr [edi+esi], 3
		jmp	short loc_479770
; ---------------------------------------------------------------------------

loc_479760:				; CODE XREF: .text:00479743j
					; .text:00479758j
		push	offset aExpectingMaskF ; "Expecting MASK, FIELD	or SIGFIELD"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479770:				; CODE XREF: .text:00479716j
					; .text:0047973Aj ...
		inc	esi
		lea	edx, [ebp-1Ch]
		push	edx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_479792
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479792:				; CODE XREF: .text:00479780j
		mov	ecx, [ebp-1Ch]
		mov	[edi+esi], ecx
		add	esi, 4
		mov	dword ptr [ebp-8], 1
		mov	eax, [ebp-28h]
		xor	edx, edx
		mov	[eax+0Ch], edx
		inc	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-28h], 0Ch
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_4797B6:				; CODE XREF: .text:0047969Ej
		push	offset aEndsel	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479816
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4797D7
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4797E7

loc_4797D7:				; CODE XREF: .text:004797CFj
		push	offset aEndselWithoutC ; "ENDSEL without corresponding SELECT"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4797E7:				; CODE XREF: .text:004797D5j
		dec	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-28h], 0FFFFFFF4h
		mov	eax, [ebp-28h]
		cmp	dword ptr [eax+0Ch], 0
		jz	short loc_479807
		push	offset aEndselWhereEnd ; "ENDSEL where ENDIF is	expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479807:				; CODE XREF: .text:004797F5j
		mov	byte ptr [edi+esi], 4
		inc	esi
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_479816:				; CODE XREF: .text:004797C9j
		push	offset aIf	; "IF"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_479859
		push	offset aElseif	; "ELSEIF"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_479859
		push	offset aElif	; "ELIF"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_479D3A

loc_479859:				; CODE XREF: .text:00479829j
					; .text:0047983Ej
		cmp	word ptr [ebx+2Ah], 49h
		setz	al
		and	eax, 1
		test	eax, eax
		jz	short loc_47989D
		cmp	dword ptr [ebp-0Ch], 10h
		jl	short loc_47987E
		push	offset aTooDeepNesting ; "Too deep nesting"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47987E:				; CODE XREF: .text:0047986Cj
		mov	edx, [ebp-28h]
		mov	dword ptr [edx+0Ch], 1
		mov	ecx, [ebp-28h]
		mov	eax, [ebp-10h]
		mov	[ecx+14h], eax
		inc	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-28h], 0Ch
		jmp	loc_47993C
; ---------------------------------------------------------------------------

loc_47989D:				; CODE XREF: .text:00479866j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4798B3
		push	offset aElseifWithoutC ; "ELSEIF without corresponding IF"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4798B3:				; CODE XREF: .text:004798A1j
		mov	edx, [ebp-28h]
		cmp	dword ptr [edx], 0
		jnz	short loc_4798CB
		push	offset aElseifWhereEnd ; "ELSEIF where ENDSEL is expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4798CB:				; CODE XREF: .text:004798B9j
		mov	ecx, [ebp-28h]
		cmp	dword ptr [ecx], 2
		jnz	short loc_4798E3
		push	offset aElseifAfterEls ; "ELSEIF after ELSE"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4798E3:				; CODE XREF: .text:004798D1j
		lea	eax, [esi+3]
		cmp	eax, 10000h
		jle	short loc_4798FD
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4798FD:				; CODE XREF: .text:004798EBj
		mov	byte ptr [edi+esi], 0Fh
		inc	esi
		cmp	dword ptr [ebp-10h], 800h
		jl	short loc_47991B
		push	offset aTooManyElseifS ; "Too many ELSEIF statements"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47991B:				; CODE XREF: .text:00479909j
		mov	edx, [ebp-10h]
		mov	[ebp+edx*4-202Ch], esi
		inc	dword ptr [ebp-10h]
		mov	byte ptr [edi+esi], 0
		inc	esi
		mov	byte ptr [edi+esi], 0
		inc	esi
		mov	ecx, [ebp-28h]
		mov	eax, [ecx+4]
		mov	[edi+eax], si

loc_47993C:				; CODE XREF: .text:00479898j
		lea	edx, [esi+7]
		cmp	edx, 10000h
		jle	short loc_479957
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479957:				; CODE XREF: .text:00479945j
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jnz	short loc_4799A6
		push	offset aEq_1	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4799A6
		mov	byte ptr [edi+esi], 5
		inc	esi
		lea	eax, [esi+edi]
		push	eax
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4799A6:				; CODE XREF: .text:00479965j
					; .text:0047997Aj
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_4799EE
		push	offset aNe_0	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4799EE
		mov	byte ptr [edi+esi], 6
		inc	esi
		lea	ecx, [esi+edi]
		push	ecx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_4799EE:				; CODE XREF: .text:004799ADj
					; .text:004799C2j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479A4B
		push	offset aSet	; "SET"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_479A21
		push	offset aBit	; "BIT"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479A4B

loc_479A21:				; CODE XREF: .text:00479A0Aj
		mov	byte ptr [edi+esi], 7
		inc	esi
		lea	ecx, [esi+edi]
		push	ecx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479A4B:				; CODE XREF: .text:004799F5j
					; .text:00479A1Fj
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479AA8
		push	offset aZero	; "ZERO"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_479A7E
		push	offset aClr	; "CLR"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479AA8

loc_479A7E:				; CODE XREF: .text:00479A67j
		mov	byte ptr [edi+esi], 8
		inc	esi
		lea	ecx, [esi+edi]
		push	ecx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479AA8:				; CODE XREF: .text:00479A52j
					; .text:00479A7Cj
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479AF0
		push	offset aLe_1	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479AF0
		mov	byte ptr [edi+esi], 9
		inc	esi
		lea	edx, [esi+edi]
		push	edx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479AF0:				; CODE XREF: .text:00479AAFj
					; .text:00479AC4j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479B38
		push	offset aGe	; "GE"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479B38
		mov	byte ptr [edi+esi], 0Ah
		inc	esi
		lea	eax, [esi+edi]
		push	eax
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479B38:				; CODE XREF: .text:00479AF7j
					; .text:00479B0Cj
		cmp	dword ptr [ebx+42Eh], 2
		jnz	loc_479C07
		push	offset aMask	; "MASK"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_479C07
		lea	ecx, [esi+edi+1]
		push	ecx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_479B80
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479B80:				; CODE XREF: .text:00479B6Ej
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jnz	short loc_479BAB
		push	offset aEq_1	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479BAB
		mov	byte ptr [edi+esi], 0Bh
		jmp	short loc_479BDF
; ---------------------------------------------------------------------------

loc_479BAB:				; CODE XREF: .text:00479B8Ej
					; .text:00479BA3j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479BCF
		push	offset aNe_0	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479BCF
		mov	byte ptr [edi+esi], 0Ch
		jmp	short loc_479BDF
; ---------------------------------------------------------------------------

loc_479BCF:				; CODE XREF: .text:00479BB2j
					; .text:00479BC7j
		push	offset asc_54262A ; "'"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479BDF:				; CODE XREF: .text:00479BA9j
					; .text:00479BCDj
		add	esi, 5
		lea	ecx, [esi+edi]
		push	ecx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479C07:				; CODE XREF: .text:00479B3Fj
					; .text:00479B58j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	loc_479CD2
		push	offset aField	; "FIELD"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_479CD2
		lea	edx, [esi+edi+1]
		push	edx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_479C4F
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479C4F:				; CODE XREF: .text:00479C3Dj
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jnz	short loc_479C7A
		push	offset aEq_1	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479C7A
		mov	byte ptr [edi+esi], 0Dh
		jmp	short loc_479CAE
; ---------------------------------------------------------------------------

loc_479C7A:				; CODE XREF: .text:00479C5Dj
					; .text:00479C72j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479C9E
		push	offset aNe_0	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479C9E
		mov	byte ptr [edi+esi], 0Eh
		jmp	short loc_479CAE
; ---------------------------------------------------------------------------

loc_479C9E:				; CODE XREF: .text:00479C81j
					; .text:00479C96j
		push	offset asc_54262A ; "'"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479CAE:				; CODE XREF: .text:00479C78j
					; .text:00479C9Cj
		add	esi, 5
		lea	edx, [esi+edi]
		push	edx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_479D22
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479CD2:				; CODE XREF: .text:00479C0Ej
					; .text:00479C27j
		cmp	dword ptr [ebx+42Eh], 2
		jnz	short loc_479CFC
		lea	ecx, [ebp-1Ch]
		push	ecx		; value
		lea	eax, [ebx+2Ah]
		push	eax		; _name
		call	Getconstantbyname
		add	esp, 8
		test	eax, eax
		jnz	short loc_479CFC
		mov	byte ptr [edi+esi], 5
		inc	esi
		mov	edx, [ebp-1Ch]
		mov	[edi+esi], edx
		jmp	short loc_479D22
; ---------------------------------------------------------------------------

loc_479CFC:				; CODE XREF: .text:00479CD9j
					; .text:00479CEDj
		cmp	dword ptr [ebx+42Eh], 4
		jnz	short loc_479D12
		mov	byte ptr [edi+esi], 5
		inc	esi
		mov	ecx, [ebx+18h]
		mov	[edi+esi], ecx
		jmp	short loc_479D22
; ---------------------------------------------------------------------------

loc_479D12:				; CODE XREF: .text:00479D03j
		push	offset aOperationOrCon ; "Operation or constant	expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479D22:				; CODE XREF: .text:00479990j
					; .text:004799D8j ...
		add	esi, 4
		mov	eax, [ebp-28h]
		mov	[eax+4], esi
		mov	byte ptr [edi+esi], 0
		inc	esi
		mov	byte ptr [edi+esi], 0
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_479D3A:				; CODE XREF: .text:00479853j
		push	(offset	aElseifAfterEls+1Ah) ; "ELSE"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_479E01
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_479D69
		push	offset aElseWithoutCor ; "ELSE without corresponding IF"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479D69:				; CODE XREF: .text:00479D57j
		mov	ecx, [ebp-28h]
		cmp	dword ptr [ecx], 0
		jnz	short loc_479D81
		push	offset aElseWhereEndse ; "ELSE where ENDSEL is expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479D81:				; CODE XREF: .text:00479D6Fj
		mov	eax, [ebp-28h]
		cmp	dword ptr [eax], 2
		jnz	short loc_479D99
		push	offset aElseAfterElse ;	"ELSE after ELSE"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479D99:				; CODE XREF: .text:00479D87j
		lea	edx, [esi+3]
		cmp	edx, 10000h
		jle	short loc_479DB4
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479DB4:				; CODE XREF: .text:00479DA2j
		mov	byte ptr [edi+esi], 0Fh
		inc	esi
		cmp	dword ptr [ebp-10h], 800h
		jl	short loc_479DD2
		push	offset aTooManyElseifS ; "Too many ELSEIF statements"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479DD2:				; CODE XREF: .text:00479DC0j
		mov	ecx, [ebp-10h]
		mov	[ebp+ecx*4-202Ch], esi
		inc	dword ptr [ebp-10h]
		mov	byte ptr [edi+esi], 0
		inc	esi
		mov	byte ptr [edi+esi], 0
		inc	esi
		mov	eax, [ebp-28h]
		mov	edx, [eax+4]
		mov	[edi+edx], si
		mov	ecx, [ebp-28h]
		mov	dword ptr [ecx], 2
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_479E01:				; CODE XREF: .text:00479D4Dj
		push	offset aEndif	; "ENDIF"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479E8F
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_479E2C
		push	offset aEndifWithoutCo ; "ENDIF	without	corresponding IF"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479E2C:				; CODE XREF: .text:00479E1Aj
		dec	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-28h], 0FFFFFFF4h
		mov	edx, [ebp-28h]
		cmp	dword ptr [edx+0Ch], 0
		jnz	short loc_479E4C
		push	offset aEndifWhereEnds ; "ENDIF	where ENDSEL is	expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479E4C:				; CODE XREF: .text:00479E3Aj
		mov	ecx, [ebp-28h]
		cmp	dword ptr [ecx+0Ch], 1
		jnz	short loc_479E5F
		mov	eax, [ebp-28h]
		mov	edx, [eax+10h]
		mov	[edi+edx], si

loc_479E5F:				; CODE XREF: .text:00479E53j
		mov	ecx, [ebp-10h]
		mov	edx, [ebp-28h]
		lea	eax, [ebp+ecx*4-202Ch]
		lea	ecx, [edx+14h]
		mov	[ebp-2Ch], ecx
		jmp	short loc_479E80
; ---------------------------------------------------------------------------

loc_479E74:				; CODE XREF: .text:00479E88j
		dec	dword ptr [ebp-10h]
		add	eax, 0FFFFFFFCh
		mov	edx, [eax]
		mov	[edi+edx], si

loc_479E80:				; CODE XREF: .text:00479E72j
		mov	ecx, [ebp-2Ch]
		mov	edx, [ecx]
		cmp	edx, [ebp-10h]
		jl	short loc_479E74
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_479E8F:				; CODE XREF: .text:00479E14j
		push	offset aBit	; "BIT"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_479F82
		lea	ecx, [esi+7]
		cmp	ecx, 10000h
		jle	short loc_479EC3
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479EC3:				; CODE XREF: .text:00479EB1j
		mov	byte ptr [edi+esi], 7
		inc	esi
		lea	eax, [esi+edi]
		push	eax
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_479EE9
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479EE9:				; CODE XREF: .text:00479ED7j
		add	esi, 4
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_479F13
		cmp	eax, 3
		jz	short loc_479F13
		push	offset aTextExpected ; "Text expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479F13:				; CODE XREF: .text:00479EFCj
					; .text:00479F01j
		lea	edx, [esi+3]
		mov	ecx, [ebx+22Ah]
		inc	ecx
		add	ecx, ecx
		add	edx, ecx
		cmp	edx, 10000h
		jbe	short loc_479F39
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479F39:				; CODE XREF: .text:00479F27j
		mov	ax, [ebx+22Ah]
		lea	ecx, [ebx+2Ah]
		inc	eax
		add	eax, eax
		add	ax, si
		add	ax, 3
		mov	[edi+esi], ax
		add	esi, 2
		mov	byte ptr [edi+esi], 11h
		inc	esi
		mov	edx, [ebx+22Ah]
		inc	edx
		lea	eax, [esi+edi]
		add	edx, edx
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebx+22Ah]
		inc	edx
		add	edx, edx
		add	edx, esi
		mov	esi, edx
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_479F82:				; CODE XREF: .text:00479EA2j
		push	offset aHexbits	; "HEXBITS"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_479FDF
		lea	eax, [esi+5]
		cmp	eax, 10000h
		jle	short loc_479FB1
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479FB1:				; CODE XREF: .text:00479F9Fj
		mov	byte ptr [edi+esi], 12h
		inc	esi
		lea	edx, [esi+edi]
		push	edx
		push	ebx
		call	loc_478C00
		add	esp, 8
		test	eax, eax
		jz	short loc_479FD7
		push	offset aConstantExpect ; "Constant expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_479FD7:				; CODE XREF: .text:00479FC5j
		add	esi, 4
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_479FDF:				; CODE XREF: .text:00479F95j
		push	offset aText	; "TEXT"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A072
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47A01B
		cmp	eax, 3
		jz	short loc_47A01B
		push	offset aTextExpected ; "Text expected"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A01B:				; CODE XREF: .text:0047A004j
					; .text:0047A009j
		lea	edx, [esi+1]
		mov	ecx, [ebx+22Ah]
		inc	ecx
		add	ecx, ecx
		add	edx, ecx
		cmp	edx, 10000h
		jbe	short loc_47A041
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A041:				; CODE XREF: .text:0047A02Fj
		mov	byte ptr [edi+esi], 10h
		inc	esi
		mov	eax, [ebx+22Ah]
		lea	edx, [ebx+2Ah]
		inc	eax
		lea	ecx, [esi+edi]
		add	eax, eax
		push	eax		; n
		push	edx		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx+22Ah]
		inc	eax
		add	eax, eax
		add	eax, esi
		mov	esi, eax
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A072:				; CODE XREF: .text:00479FF2j
		push	offset aPurge	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A091
		mov	byte ptr [edi+esi], 13h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A091:				; CODE XREF: .text:0047A085j
		push	offset aSet	; "SET"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_47A2D9
		push	ebx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47A0D1
		cmp	eax, 3
		jz	short loc_47A0D1
		push	offset aNameExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A0D1:				; CODE XREF: .text:0047A0BAj
					; .text:0047A0BFj
		lea	edx, [esi+2]
		mov	ecx, [ebx+22Ah]
		inc	ecx
		add	ecx, ecx
		add	edx, ecx
		cmp	edx, 10000h
		jbe	short loc_47A0F7
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A0F7:				; CODE XREF: .text:0047A0E5j
		mov	byte ptr [edi+esi], 14h
		inc	esi
		mov	[ebp-14h], esi
		inc	esi
		mov	eax, [ebp-14h]
		lea	ecx, [ebx+2Ah]
		mov	byte ptr [edi+eax], 40h
		lea	eax, [esi+edi]
		mov	edx, [ebx+22Ah]
		inc	edx
		add	edx, edx
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		mov	edx, [ebx+22Ah]
		add	esp, 0Ch
		inc	edx
		add	edx, edx
		push	ebx		; ps
		add	edx, esi
		mov	esi, edx
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jnz	short loc_47A199
		push	offset aOut_0	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A199
		mov	eax, [ebp-14h]
		or	byte ptr [edi+eax], 8
		push	ebx		; ps
		call	Scan
		pop	ecx
		push	offset aAscii_2	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47A18F
		push	offset aUnicode_7 ; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_47A18F
		xor	eax, eax
		jmp	short loc_47A194
; ---------------------------------------------------------------------------

loc_47A18F:				; CODE XREF: .text:0047A174j
					; .text:0047A189j
		mov	eax, 1

loc_47A194:				; CODE XREF: .text:0047A18Dj
		mov	[ebp-18h], eax
		jmp	short loc_47A19E
; ---------------------------------------------------------------------------

loc_47A199:				; CODE XREF: .text:0047A13Cj
					; .text:0047A151j
		xor	edx, edx
		mov	[ebp-18h], edx

loc_47A19E:				; CODE XREF: .text:0047A197j
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47A1BE
		cmp	eax, 3
		jz	short loc_47A1BE
		push	offset aNameExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A1BE:				; CODE XREF: .text:0047A1A7j
					; .text:0047A1ACj
		mov	edx, [ebx+22Ah]
		inc	edx
		add	edx, edx
		add	edx, esi
		cmp	edx, 10000h
		jbe	short loc_47A1E1
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A1E1:				; CODE XREF: .text:0047A1CFj
		mov	ecx, [ebx+22Ah]
		lea	eax, [ebx+2Ah]
		inc	ecx
		lea	edx, [esi+edi]
		add	ecx, ecx
		push	ecx		; n
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		mov	ecx, [ebx+22Ah]
		add	esp, 0Ch
		inc	ecx
		add	ecx, ecx
		push	ebx		; ps
		add	ecx, esi
		mov	esi, ecx
		call	Scan
		cmp	dword ptr [ebx+42Eh], 6
		pop	ecx
		jnz	short loc_47A22E
		cmp	dword ptr [ebx+18h], 2Ah
		jnz	short loc_47A22E
		mov	eax, [ebp-14h]
		or	byte ptr [edi+eax], 1
		push	ebx		; ps
		call	Scan
		pop	ecx
		jmp	short loc_47A24D
; ---------------------------------------------------------------------------

loc_47A22E:				; CODE XREF: .text:0047A216j
					; .text:0047A21Cj
		mov	edx, [ebp-14h]
		test	byte ptr [edi+edx], 8
		jz	short loc_47A24D
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_47A24D
		push	offset aOutAppliesOnly ; src
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A24D:				; CODE XREF: .text:0047A22Cj
					; .text:0047A235j ...
		mov	eax, [ebx+42Eh]
		test	eax, eax
		jz	short loc_47A25A
		dec	eax
		jnz	short loc_47A26A

loc_47A25A:				; CODE XREF: .text:0047A255j
		mov	word ptr [ebx+2Ah], 0
		xor	edx, edx
		mov	[ebx+22Ah], edx
		jmp	short loc_47A28A
; ---------------------------------------------------------------------------

loc_47A26A:				; CODE XREF: .text:0047A258j
		mov	eax, [ebx+42Eh]
		cmp	eax, 2
		jz	short loc_47A28A
		cmp	eax, 3
		jz	short loc_47A28A
		push	offset aNameExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A28A:				; CODE XREF: .text:0047A268j
					; .text:0047A273j ...
		mov	edx, [ebx+22Ah]
		inc	edx
		add	edx, edx
		add	edx, esi
		cmp	edx, 10000h
		jbe	short loc_47A2AD
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A2AD:				; CODE XREF: .text:0047A29Bj
		mov	ecx, [ebx+22Ah]
		lea	eax, [ebx+2Ah]
		inc	ecx
		lea	edx, [esi+edi]
		add	ecx, ecx
		push	ecx		; n
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx+22Ah]
		inc	ecx
		add	ecx, ecx
		add	ecx, esi
		mov	esi, ecx
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A2D9:				; CODE XREF: .text:0047A0A4j
		push	offset aHex	; "HEX"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A2F8
		mov	byte ptr [edi+esi], 20h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A2F8:				; CODE XREF: .text:0047A2ECj
		push	offset aHexdata	; "HEXDATA"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A317
		mov	byte ptr [edi+esi], 21h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A317:				; CODE XREF: .text:0047A30Bj
		push	offset aHex8	; "HEX8"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A336
		mov	byte ptr [edi+esi], 22h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A336:				; CODE XREF: .text:0047A32Aj
		push	offset aQuad_lo	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A355
		mov	byte ptr [edi+esi], 23h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A355:				; CODE XREF: .text:0047A349j
		push	offset aQuad_hi	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A374
		mov	byte ptr [edi+esi], 24h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A374:				; CODE XREF: .text:0047A368j
		push	offset aInt_0	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A393
		mov	byte ptr [edi+esi], 25h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A393:				; CODE XREF: .text:0047A387j
		push	offset aUint_1	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A3B2
		mov	byte ptr [edi+esi], 26h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A3B2:				; CODE XREF: .text:0047A3A6j
		push	offset aBool	; "BOOL"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A3D1
		mov	byte ptr [edi+esi], 27h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A3D1:				; CODE XREF: .text:0047A3C5j
		push	offset aByte_2	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A3F0
		mov	byte ptr [edi+esi], 28h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A3F0:				; CODE XREF: .text:0047A3E4j
		push	offset aChar	; "CHAR"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A40F
		mov	byte ptr [edi+esi], 29h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A40F:				; CODE XREF: .text:0047A403j
		push	offset aWchar	; "WCHAR"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A42E
		mov	byte ptr [edi+esi], 2Ah
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A42E:				; CODE XREF: .text:0047A422j
		push	offset aWord_1	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A44D
		mov	byte ptr [edi+esi], 2Bh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A44D:				; CODE XREF: .text:0047A441j
		push	offset aAscii_2	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A46C
		mov	byte ptr [edi+esi], 2Ch
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A46C:				; CODE XREF: .text:0047A460j
		push	offset aUnicode_7 ; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A48B
		mov	byte ptr [edi+esi], 2Dh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A48B:				; CODE XREF: .text:0047A47Fj
		push	offset aMascii	; "MASCII"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A4AA
		mov	byte ptr [edi+esi], 2Eh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A4AA:				; CODE XREF: .text:0047A49Ej
		push	offset aMunicode ; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A4C9
		mov	byte ptr [edi+esi], 2Fh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A4C9:				; CODE XREF: .text:0047A4BDj
		push	offset aFormat	; "FORMAT"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A4E8
		mov	byte ptr [edi+esi], 30h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A4E8:				; CODE XREF: .text:0047A4DCj
		push	offset aWformat	; "WFORMAT"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A507
		mov	byte ptr [edi+esi], 31h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A507:				; CODE XREF: .text:0047A4FBj
		push	offset aScan	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A526
		mov	byte ptr [edi+esi], 32h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A526:				; CODE XREF: .text:0047A51Aj
		push	offset off_542940 ; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A545
		mov	byte ptr [edi+esi], 33h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A545:				; CODE XREF: .text:0047A539j
		push	offset aFloat_0	; "FLOAT"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A564
		mov	byte ptr [edi+esi], 34h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A564:				; CODE XREF: .text:0047A558j
		push	offset aDouble_lo ; "DOUBLE_LO"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A583
		mov	byte ptr [edi+esi], 35h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A583:				; CODE XREF: .text:0047A577j
		push	offset aDouble_hi ; "DOUBLE_HI"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A5A2
		mov	byte ptr [edi+esi], 36h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A5A2:				; CODE XREF: .text:0047A596j
		push	offset aLdouble_lo ; "LDOUBLE_LO"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A5C1
		mov	byte ptr [edi+esi], 37h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A5C1:				; CODE XREF: .text:0047A5B5j
		push	offset asc_542996 ; "L"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A5E0
		mov	byte ptr [edi+esi], 38h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A5E0:				; CODE XREF: .text:0047A5D4j
		push	offset aLdouble_hi ; "LDOUBLE_HI"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A5FF
		mov	byte ptr [edi+esi], 39h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A5FF:				; CODE XREF: .text:0047A5F3j
		push	offset aRsrc_string ; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A61E
		mov	byte ptr [edi+esi], 3Ah
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A61E:				; CODE XREF: .text:0047A612j
		push	offset word_5429DA ; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A63D
		mov	byte ptr [edi+esi], 3Bh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A63D:				; CODE XREF: .text:0047A631j
		push	offset aGroup_0	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_47A6D6
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jz	short loc_47A67F
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_47A67F
		push	offset aNameExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A67F:				; CODE XREF: .text:0047A664j
					; .text:0047A66Dj
		lea	ecx, [esi+1]
		mov	eax, [ebx+22Ah]
		inc	eax
		add	eax, eax
		add	ecx, eax
		cmp	ecx, 10000h
		jbe	short loc_47A6A5
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A6A5:				; CODE XREF: .text:0047A693j
		mov	byte ptr [edi+esi], 3Dh
		inc	esi
		mov	edx, [ebx+22Ah]
		lea	ecx, [ebx+2Ah]
		inc	edx
		lea	eax, [esi+edi]
		add	edx, edx
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebx+22Ah]
		inc	edx
		add	edx, edx
		add	edx, esi
		mov	esi, edx
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A6D6:				; CODE XREF: .text:0047A650j
		push	offset aStruct	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A76A
		push	ebx		; ps
		call	Scan
		cmp	dword ptr [ebx+42Eh], 2
		pop	ecx
		jz	short loc_47A714
		cmp	dword ptr [ebx+42Eh], 3
		jz	short loc_47A714
		push	offset aNameExpected ; src
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A714:				; CODE XREF: .text:0047A6F9j
					; .text:0047A702j
		lea	eax, [esi+1]
		mov	edx, [ebx+22Ah]
		inc	edx
		add	edx, edx
		add	eax, edx
		cmp	eax, 10000h
		jbe	short loc_47A739
		push	offset aTypeDescriptio ; "Type description is too long"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47A739:				; CODE XREF: .text:0047A727j
		mov	byte ptr [edi+esi], 3Eh
		inc	esi
		mov	ecx, [ebx+22Ah]
		lea	eax, [ebx+2Ah]
		inc	ecx
		lea	edx, [esi+edi]
		add	ecx, ecx
		push	ecx		; n
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx+22Ah]
		inc	ecx
		add	ecx, ecx
		add	ecx, esi
		mov	esi, ecx
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A76A:				; CODE XREF: .text:0047A6E9j
		push	offset aHandle	; "HANDLE"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A789
		mov	byte ptr [edi+esi], 3Fh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A789:				; CODE XREF: .text:0047A77Dj
		push	offset aHwnd_0	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A7A8
		mov	byte ptr [edi+esi], 40h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A7A8:				; CODE XREF: .text:0047A79Cj
		push	offset aHmodule	; "HMODULE"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A7C7
		mov	byte ptr [edi+esi], 41h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A7C7:				; CODE XREF: .text:0047A7BBj
		push	offset aHdc	; "HDC"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A7E6
		mov	byte ptr [edi+esi], 42h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A7E6:				; CODE XREF: .text:0047A7DAj
		push	offset aHgdi	; "HGDI"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A805
		mov	byte ptr [edi+esi], 43h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A805:				; CODE XREF: .text:0047A7F9j
		push	offset aHmem	; "HMEM"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A824
		mov	byte ptr [edi+esi], 44h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A824:				; CODE XREF: .text:0047A818j
		push	offset aHkey	; "HKEY"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A843
		mov	byte ptr [edi+esi], 45h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A843:				; CODE XREF: .text:0047A837j
		push	offset aCallback_1 ; "CALLBACK"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A862
		mov	byte ptr [edi+esi], 46h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A862:				; CODE XREF: .text:0047A856j
		push	offset aWinproca_0 ; "WINPROCA"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A881
		mov	byte ptr [edi+esi], 47h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A881:				; CODE XREF: .text:0047A875j
		push	offset aWinprocw_1 ; "WINPROCW"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A8A0
		mov	byte ptr [edi+esi], 48h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A8A0:				; CODE XREF: .text:0047A894j
		push	offset aProcid	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A8BF
		mov	byte ptr [edi+esi], 4Ah
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A8BF:				; CODE XREF: .text:0047A8B3j
		push	offset aVoid_1	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A8DE
		mov	byte ptr [edi+esi], 49h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A8DE:				; CODE XREF: .text:0047A8D2j
		push	offset aQuad_0	; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A8FD
		mov	byte ptr [edi+esi], 50h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A8FD:				; CODE XREF: .text:0047A8F1j
		push	offset aAtext_1	; s2
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A91C
		mov	byte ptr [edi+esi], 51h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A91C:				; CODE XREF: .text:0047A910j
		push	offset aWtext_0	; s2
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A93B
		mov	byte ptr [edi+esi], 52h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A93B:				; CODE XREF: .text:0047A92Fj
		push	offset aDouble_3 ; s2
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A95A
		mov	byte ptr [edi+esi], 53h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A95A:				; CODE XREF: .text:0047A94Ej
		push	offset aLdouble	; "LDOUBLE"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A979
		mov	byte ptr [edi+esi], 54h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A979:				; CODE XREF: .text:0047A96Dj
		push	offset aNetsw_0	; "NETSW"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A998
		mov	byte ptr [edi+esi], 5Ah
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A998:				; CODE XREF: .text:0047A98Cj
		push	offset aNetsd_0	; "NETSD"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A9B7
		mov	byte ptr [edi+esi], 5Bh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A9B7:				; CODE XREF: .text:0047A9ABj
		push	offset aNetgw_0	; "NETGW"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A9D6
		mov	byte ptr [edi+esi], 5Ch
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A9D6:				; CODE XREF: .text:0047A9CAj
		push	offset aNetgd_0	; "NETGD"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47A9F5
		mov	byte ptr [edi+esi], 5Dh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47A9F5:				; CODE XREF: .text:0047A9E9j
		push	offset aNetbw_0	; "NETBW"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AA14
		mov	byte ptr [edi+esi], 5Eh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47AA14:				; CODE XREF: .text:0047AA08j
		push	offset aNetbd_0	; "NETBD"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AA33
		mov	byte ptr [edi+esi], 5Fh
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47AA33:				; CODE XREF: .text:0047AA27j
		push	offset aNetci	; "NETCI"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AA52
		mov	byte ptr [edi+esi], 60h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47AA52:				; CODE XREF: .text:0047AA46j
		push	offset aNetch	; "NETCH"
		lea	eax, [ebx+2Ah]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AA71
		mov	byte ptr [edi+esi], 61h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47AA71:				; CODE XREF: .text:0047AA65j
		push	offset aNetcf	; "NETCF"
		lea	edx, [ebx+2Ah]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AA90
		mov	byte ptr [edi+esi], 62h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47AA90:				; CODE XREF: .text:0047AA84j
		push	offset aNetcu	; "NETCU"
		lea	ecx, [ebx+2Ah]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_47AAAF
		mov	byte ptr [edi+esi], 63h
		inc	esi
		jmp	loc_479572
; ---------------------------------------------------------------------------

loc_47AAAF:				; CODE XREF: .text:0047AAA3j
		push	offset aInvalidOrUnexp ; "Invalid or unexpected	keyword"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47AABF:				; CODE XREF: .text:0047966Ej
		mov	eax, dword_5E9E40 ; int
		cmp	eax, dword_5E9E3C
		jl	short loc_47AB0C
		push	1		; flags
		push	offset failed	; failed
		push	4		; itemsize
		push	offset dword_5E9E3C ; pcount
		mov	edx, dword_5E9E38 ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E38, eax
		mov	ecx, dword_5E9E40
		cmp	ecx, dword_5E9E3C
		jl	short loc_47AB0C
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47AB0C:				; CODE XREF: .text:0047AACAj
					; .text:0047AAFAj
		mov	eax, dword_5E9E34
		add	eax, esi	; int
		cmp	eax, dword_5E9E30
		jle	short loc_47AB5D
		push	1		; flags
		push	offset failed	; failed
		push	1		; itemsize
		push	offset dword_5E9E30 ; pcount
		mov	edx, dword_5E9E2C ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E9E2C, eax
		mov	ecx, dword_5E9E34
		add	ecx, esi
		cmp	ecx, dword_5E9E30
		jle	short loc_47AB5D
		push	offset aLowMemoryProce ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		jmp	loc_47AC10
; ---------------------------------------------------------------------------

loc_47AB5D:				; CODE XREF: .text:0047AB19j
					; .text:0047AB4Bj
		push	offset dword_5E9E38 ; a2
		lea	eax, [ebp-206Ch]
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_47ABAD
		lea	edx, [ebp-206Ch]
		push	edx		; arglist
		push	offset aRedefinedTypeS ; "  Redefined type '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		mov	ecx, dword_5E9E20
		mov	eax, [ebp-24h]
		mov	edx, dword_5E9E34
		add	esp, 10h
		mov	[ecx+eax], edx
		jmp	short loc_47ABEB
; ---------------------------------------------------------------------------

loc_47ABAD:				; CODE XREF: .text:0047AB78j
		mov	ecx, [ebp-4]
		push	ecx		; int
		lea	eax, [ebp-206Ch]
		push	eax		; src
		mov	edx, dword_5E9E34
		push	edx		; int
		call	loc_478C44
		add	esp, 0Ch
		mov	[ebp-20h], eax
		mov	ecx, dword_5E9E40
		inc	dword_5E9E40
		mov	eax, dword_5E9E38
		mov	edx, [ebp-20h]
		mov	[eax+ecx*4], edx
		mov	dword_5E9E44, 1

loc_47ABEB:				; CODE XREF: .text:0047ABABj
		mov	ecx, dword_5E9E2C
		push	esi		; n
		add	ecx, dword_5E9E34
		push	edi		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword_5E9E34, esi
		inc	dword_5EBC84
		xor	eax, eax

loc_47AC10:				; CODE XREF: .text:004794FAj
					; .text:00479513j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
