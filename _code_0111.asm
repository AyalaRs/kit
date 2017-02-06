.code

; Exported entry 375. _T

; void *__cdecl	T(void *src)
		public _T
_T:					; CODE XREF: .text:00401758p
					; .text:0040178Fp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF7F0h
		cmp	g_GuiLuguage, 0
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		jz	short loc_4DE7E6
		test	edi, edi
		jz	short loc_4DE7E6
		cmp	word ptr [edi],	0
		jnz	short loc_4DE7ED

loc_4DE7E6:				; CODE XREF: .text:004DE7DAj
					; .text:004DE7DEj
		mov	eax, edi
		jmp	loc_4DEA5B
; ---------------------------------------------------------------------------

loc_4DE7ED:				; CODE XREF: .text:004DE7E4j
		push	0		; int
		push	0		; int
		push	edi		; s2
		push	offset byte_61A7A8 ; int
		call	loc_4DE6F4
		add	esp, 10h
		test	eax, eax
		jnz	loc_4DEA5B
		xor	edx, edx
		mov	[ebp-0Ch], edx
		mov	ebx, edi
		mov	edx, edi
		jmp	short loc_4DE84E
; ---------------------------------------------------------------------------

loc_4DE812:				; CODE XREF: .text:004DE852j
		mov	ax, [ebx]
		cmp	ax, 20h
		jz	short loc_4DE845
		cmp	ax, 21h
		jz	short loc_4DE845
		cmp	ax, 2Ah
		jz	short loc_4DE845
		cmp	ax, 3Eh
		jz	short loc_4DE845
		cmp	ax, 7Ch
		jz	short loc_4DE845
		cmp	ax, 24h
		jz	short loc_4DE845
		cmp	ax, 0Ah
		jz	short loc_4DE845
		cmp	ax, 9
		jnz	short loc_4DE854

loc_4DE845:				; CODE XREF: .text:004DE819j
					; .text:004DE81Fj ...
		add	edx, 2
		inc	dword ptr [ebp-0Ch]
		add	ebx, 2

loc_4DE84E:				; CODE XREF: .text:004DE810j
		cmp	word ptr [edx],	0
		jnz	short loc_4DE812

loc_4DE854:				; CODE XREF: .text:004DE843j
		push	ebx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-8], eax
		mov	esi, eax
		lea	eax, [ebx+esi*2-2]
		jmp	short loc_4DE86A
; ---------------------------------------------------------------------------

loc_4DE866:				; CODE XREF: .text:004DE875j
					; .text:004DE87Bj ...
		dec	esi
		add	eax, 0FFFFFFFEh

loc_4DE86A:				; CODE XREF: .text:004DE864j
		test	esi, esi
		jle	short loc_4DE883
		mov	dx, [eax]
		cmp	dx, 20h
		jz	short loc_4DE866
		cmp	dx, 0Ah
		jz	short loc_4DE866
		cmp	dx, 9
		jz	short loc_4DE866

loc_4DE883:				; CODE XREF: .text:004DE86Cj
		test	esi, esi
		jnz	short loc_4DE8B4
		push	edi		; s
		call	_wcslen
		pop	ecx
		add	eax, eax
		add	eax, 2
		push	eax		; n
		push	edi		; void *
		push	0		; int
		push	edi		; src
		push	offset byte_61A7A8 ; int
		call	loc_4DE4CC
		add	esp, 14h
		test	eax, eax
		jnz	loc_4DEA5B
		mov	eax, edi
		jmp	loc_4DEA5B
; ---------------------------------------------------------------------------

loc_4DE8B4:				; CODE XREF: .text:004DE885j
		cmp	dword ptr [ebp-0Ch], 0
		jle	loc_4DE955
		cmp	esi, [ebp-8]
		jnz	loc_4DE955
		push	0		; int
		push	0		; int
		push	ebx		; s2
		push	offset byte_61A7A8 ; int
		call	loc_4DE6F4
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4DE94E
		mov	edx, [ebp-0Ch]
		lea	ecx, [ebp-810h]
		add	edx, edx
		push	edx		; n
		push	edi		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp-10h]
		push	eax		; src
		mov	edx, 400h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-810h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	eax, [ebp-0Ch]
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	ecx, [ebp-810h]
		mov	edx, [ebp-4]
		inc	edx
		add	edx, edx
		push	edx		; n
		push	ecx		; void *
		push	0		; int
		push	edi		; src
		push	offset byte_61A7A8 ; int
		call	loc_4DE4CC
		add	esp, 14h
		test	eax, eax
		jnz	loc_4DEA5B
		mov	eax, edi
		jmp	loc_4DEA5B
; ---------------------------------------------------------------------------

loc_4DE94E:				; CODE XREF: .text:004DE8E0j
		mov	eax, edi
		jmp	loc_4DEA5B
; ---------------------------------------------------------------------------

loc_4DE955:				; CODE XREF: .text:004DE8B8j
					; .text:004DE8C1j
		cmp	esi, [ebp-8]
		jge	loc_4DEA37
		mov	edx, esi
		lea	ecx, [ebp-810h]
		add	edx, edx
		push	edx		; n
		push	ebx		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	word ptr [ebp+esi*2-810h], 0
		push	0		; int
		push	0		; int
		lea	eax, [ebp-810h]
		push	eax		; s2
		push	offset byte_61A7A8 ; int
		call	loc_4DE6F4
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4DEA33
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_4DE9BE
		mov	edx, [ebp-0Ch]
		lea	ecx, [ebp-810h]
		add	edx, edx
		push	edx		; n
		push	edi		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4DE9BE:				; CODE XREF: .text:004DE9A6j
		mov	eax, [ebp-10h]
		push	eax		; src
		mov	edx, 400h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-810h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	eax, [ebp-0Ch]
		mov	[ebp-4], eax
		lea	ebx, [ebx+esi*2]
		push	ebx		; src
		mov	eax, 400h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-810h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	[ebp-4], eax
		add	esp, 0Ch
		mov	eax, [ebp-4]
		lea	edx, [ebp-810h]
		inc	eax
		add	eax, eax
		push	eax		; n
		push	edx		; void *
		push	0		; int
		push	edi		; src
		push	offset byte_61A7A8 ; int
		call	loc_4DE4CC
		add	esp, 14h
		test	eax, eax
		jnz	short loc_4DEA5B
		mov	eax, edi
		jmp	short loc_4DEA5B
; ---------------------------------------------------------------------------

loc_4DEA33:				; CODE XREF: .text:004DE99Cj
		mov	eax, edi
		jmp	short loc_4DEA5B
; ---------------------------------------------------------------------------

loc_4DEA37:				; CODE XREF: .text:004DE958j
		push	edi		; s
		call	_wcslen
		pop	ecx
		add	eax, eax
		add	eax, 2
		push	eax		; n
		push	edi		; void *
		push	0		; int
		push	edi		; src
		push	offset byte_61A7A8 ; int
		call	loc_4DE4CC
		add	esp, 14h
		test	eax, eax
		jnz	short loc_4DEA5B
		mov	eax, edi

loc_4DEA5B:				; CODE XREF: .text:004DE7E8j
					; .text:004DE801j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DEA64:				; CODE XREF: .text:loc_40E2EBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF3ECh
		push	ebx
		push	esi
		push	edi
		mov	esi, (offset word_57E468+1F8h)
		lea	edi, [ebp-0Ch]
		xor	eax, eax
		mov	[esi], eax
		push	offset ollydir	; src
		push	104h		; n
		lea	edx, [ebp-214h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 104h
		sub	eax, ebx
		lea	ecx, [ebp-214h]
		add	edx, edx
		push	offset aOllydbg_lng ; "\\ollydbg.lng"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	0		; int
		push	2		; psize
		push	1200h		; fixsize
		lea	eax, [ebp-214h]
		push	eax		; path
		call	Readfile
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	loc_4DEB8A
		mov	ecx, ebx
		mov	edx, 104h
		sub	edx, ebx
		lea	eax, [ebp-214h]
		add	ecx, ecx
		push	offset asc_57984E ; "\\"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	0		; ext
		lea	edx, [ebp-414h]
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		push	offset ollyfile	; path
		call	__wfnsplit
		add	esp, 14h
		lea	ecx, [ebp-414h]
		mov	edx, ebx
		mov	eax, 104h
		push	ecx		; src
		sub	eax, ebx
		lea	ecx, [ebp-214h]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, 104h
		lea	edx, [ebp-214h]
		sub	eax, ebx
		add	ebx, ebx
		push	(offset	aOllydbg_lng+10h) ; src
		push	eax		; n
		add	ebx, edx
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	0		; int
		push	2		; psize
		push	1200h		; fixsize
		lea	ecx, [ebp-214h]
		push	ecx		; path
		call	Readfile
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4DEB8A
		xor	eax, eax
		jmp	loc_4DEC4E
; ---------------------------------------------------------------------------

loc_4DEB8A:				; CODE XREF: .text:004DEAD8j
					; .text:004DEB81j
		mov	ebx, [ebp-4]
		cmp	word ptr [ebx],	0FEFFh
		jnz	short loc_4DEB97
		add	ebx, 2

loc_4DEB97:				; CODE XREF: .text:004DEB92j
					; .text:004DEBC0j
		lea	eax, [ebp-0C14h]
		push	eax
		push	edi
		push	ebx
		call	loc_4DE2CC
		add	esp, 0Ch
		mov	ebx, eax
		cmp	word ptr [edi],	0
		jz	short loc_4DEBC2
		push	offset aEn	; "EN"
		push	edi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DEB97

loc_4DEBC2:				; CODE XREF: .text:004DEBAEj
		cmp	word ptr [edi],	0
		jz	short loc_4DEC42
		jmp	short loc_4DEC3D
; ---------------------------------------------------------------------------

loc_4DEBCA:				; CODE XREF: .text:004DEC40j
		lea	edx, [ebp-0C14h]
		push	edx
		push	edi
		push	ebx
		call	loc_4DE2CC
		add	esp, 0Ch
		mov	ebx, eax
		mov	ax, [edi]
		test	ax, ax
		jz	short loc_4DEC42
		cmp	ax, 20h
		jz	short loc_4DEC42
		push	offset aEn	; "EN"
		push	edi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4DEC42
		cmp	word ptr [ebp-0C14h], 0
		jz	short loc_4DEC42
		push	edi		; src
		push	4		; n
		mov	edx, [esi]
		shl	edx, 7
		add	edx, offset word_57DE60
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-0C14h]
		push	ecx		; src
		push	3Ch		; n
		mov	eax, [esi]
		shl	eax, 7
		add	eax, offset word_57DE68
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	dword ptr [esi]

loc_4DEC3D:				; CODE XREF: .text:004DEBC8j
		cmp	dword ptr [esi], 10h
		jl	short loc_4DEBCA

loc_4DEC42:				; CODE XREF: .text:004DEBC6j
					; .text:004DEBE3j ...
		mov	edx, [ebp-4]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, [esi]

loc_4DEC4E:				; CODE XREF: .text:004DEB85j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4DEC58(wchar_t *path,	int)
loc_4DEC58:				; CODE XREF: .text:004D8858p
					; .text:004DEE23p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	ecx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4DEC78
		cmp	word ptr [esi],	0
		jnz	short loc_4DEC80

loc_4DEC78:				; CODE XREF: .text:004DEC70j
		or	eax, 0FFFFFFFFh
		jmp	loc_4DEDB4
; ---------------------------------------------------------------------------

loc_4DEC80:				; CODE XREF: .text:004DEC76j
		test	ecx, ecx
		jnz	short loc_4DEC8B
		xor	eax, eax
		jmp	loc_4DEDB4
; ---------------------------------------------------------------------------

loc_4DEC8B:				; CODE XREF: .text:004DEC82j
		xor	edx, edx
		mov	eax, offset word_57DE60
		jmp	short loc_4DECAA
; ---------------------------------------------------------------------------

loc_4DEC94:				; CODE XREF: .text:004DECB0j
		movzx	ebx, word ptr [eax]
		movzx	edi, word ptr [eax+2]
		shl	edi, 8
		add	ebx, edi
		cmp	ecx, ebx
		jz	short loc_4DECB2
		inc	edx
		add	eax, 80h

loc_4DECAA:				; CODE XREF: .text:004DEC92j
		cmp	edx, dword ptr word_57E468+1F8h
		jl	short loc_4DEC94

loc_4DECB2:				; CODE XREF: .text:004DECA2j
		cmp	edx, dword ptr word_57E468+1F8h
		jl	short loc_4DECC2
		or	eax, 0FFFFFFFFh
		jmp	loc_4DEDB4
; ---------------------------------------------------------------------------

loc_4DECC2:				; CODE XREF: .text:004DECB8j
		shl	edx, 7
		add	edx, offset word_57DE60
		mov	[ebp-8], edx
		push	0		; int
		push	2		; psize
		push	0		; fixsize
		push	esi		; path
		call	Readfile
		add	esp, 10h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4DECEE
		or	eax, 0FFFFFFFFh
		jmp	loc_4DEDB4
; ---------------------------------------------------------------------------

loc_4DECEE:				; CODE XREF: .text:004DECE4j
		xor	ebx, ebx
		lea	eax, [ebp-818h]
		mov	[ebp-18h], eax
		lea	edi, [ebp-1018h]
		mov	dword ptr [ebp-4], 1
		mov	esi, [ebp-0Ch]
		cmp	word ptr [esi],	0FEFFh
		jnz	short loc_4DED13
		add	esi, 2

loc_4DED13:				; CODE XREF: .text:004DED0Ej
					; .text:004DED54j ...
		test	ebx, ebx
		jnz	short loc_4DED1C
		mov	eax, [ebp-18h]
		jmp	short loc_4DED1E
; ---------------------------------------------------------------------------

loc_4DED1C:				; CODE XREF: .text:004DED15j
		mov	eax, edi

loc_4DED1E:				; CODE XREF: .text:004DED1Aj
		push	eax
		lea	edx, [ebp-14h]
		push	edx
		push	esi
		call	loc_4DE2CC
		add	esp, 0Ch
		mov	esi, eax
		cmp	word ptr [ebp-14h], 0
		jz	short loc_4DEDA8
		cmp	word ptr [ebp-14h], 45h
		jnz	short loc_4DED56
		cmp	word ptr [ebp-12h], 4Eh
		jnz	short loc_4DED56
		test	ebx, ebx
		jz	short loc_4DED4F
		mov	eax, [ebp-18h]
		mov	[ebp-18h], edi
		mov	edi, eax

loc_4DED4F:				; CODE XREF: .text:004DED45j
		mov	ebx, 1
		jmp	short loc_4DED13
; ---------------------------------------------------------------------------

loc_4DED56:				; CODE XREF: .text:004DED3Aj
					; .text:004DED41j
		mov	eax, [ebp-8]
		mov	dx, [eax]
		cmp	dx, [ebp-14h]
		jnz	short loc_4DED13
		mov	ecx, [ebp-8]
		mov	ax, [ecx+2]
		cmp	ax, [ebp-12h]
		jnz	short loc_4DED13
		test	ebx, ebx
		jz	short loc_4DED13
		xor	ebx, ebx
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4DED82
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_4DED13
; ---------------------------------------------------------------------------

loc_4DED82:				; CODE XREF: .text:004DED79j
		push	edi		; s
		call	_wcslen
		pop	ecx
		add	eax, eax
		add	eax, 2
		push	eax		; n
		push	edi		; void *
		push	0		; int
		mov	edx, [ebp-18h]
		push	edx		; src
		push	offset byte_61A7A8 ; int
		call	loc_4DE4CC
		add	esp, 14h
		jmp	loc_4DED13
; ---------------------------------------------------------------------------

loc_4DEDA8:				; CODE XREF: .text:004DED33j
		mov	ecx, [ebp-0Ch]
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax

loc_4DEDB4:				; CODE XREF: .text:004DEC7Bj
					; .text:004DEC86j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DEDBC:				; CODE XREF: .text:0040B8E3p
					; .text:0040D433p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF9F0h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		push	offset byte_61A7A8
		call	loc_4DE498
		pop	ecx
		test	esi, esi
		jz	loc_4DEF37
		push	offset ollydir	; src
		push	104h		; n
		lea	eax, [ebp-210h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, ebx
		mov	edi, 104h
		sub	edi, ebx
		lea	edx, [ebp-210h]
		add	eax, eax
		push	offset aOllydbg_lng ; "\\ollydbg.lng"
		push	edi		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	esi		; int
		lea	ecx, [ebp-210h]
		push	ecx		; path
		call	loc_4DEC58
		add	esp, 8
		test	eax, eax
		jge	loc_4DEEC0
		mov	eax, ebx
		lea	edx, [ebp-210h]
		add	eax, eax
		push	offset asc_57984E ; "\\"
		push	edi		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	0		; ext
		lea	ecx, [ebp-610h]
		push	ecx		; _name
		push	0		; dir
		push	0		; drive
		push	offset ollyfile	; path
		call	__wfnsplit
		add	esp, 14h
		lea	eax, [ebp-610h]
		mov	ecx, ebx
		mov	edx, 104h
		push	eax		; src
		sub	edx, ebx
		lea	eax, [ebp-210h]
		add	ecx, ecx
		add	ecx, eax
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, 104h
		lea	ecx, [ebp-210h]
		sub	edx, ebx
		add	ebx, ebx
		push	(offset	aOllydbg_lng+10h) ; src
		push	edx		; n
		add	ebx, ecx
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	esi		; int
		lea	eax, [ebp-210h]
		push	eax		; path
		call	loc_4DEC58
		add	esp, 8

loc_4DEEC0:				; CODE XREF: .text:004DEE2Dj
		xor	ebx, ebx
		jmp	short loc_4DEF2F
; ---------------------------------------------------------------------------

loc_4DEEC4:				; CODE XREF: .text:004DEF35j
		push	ebx		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4DEF2E
		push	0		; ext
		lea	edx, [ebp-610h]
		push	edx		; _name
		lea	ecx, [ebp-410h]
		push	ecx		; dir
		lea	edx, [ebp-8]
		push	edx		; drive
		add	eax, 8Ch
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		lea	ecx, [ebp-610h]
		lea	eax, [ebp-410h]
		lea	edx, [ebp-8]
		push	(offset	aOllydbg_lng+10h) ; ext
		push	ecx		; _name
		push	eax		; dir
		push	edx		; drive
		lea	ecx, [ebp-210h]
		push	ecx		; path
		call	__wfnmerge
		add	esp, 14h
		push	esi		; int
		lea	eax, [ebp-210h]
		push	eax		; path
		call	loc_4DEC58
		add	esp, 8

loc_4DEF2E:				; CODE XREF: .text:004DEED4j
		inc	ebx

loc_4DEF2F:				; CODE XREF: .text:004DEEC2j
		cmp	ebx, pluginlist.sorted.n
		jl	short loc_4DEEC4

loc_4DEF37:				; CODE XREF: .text:004DEDD8j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
_str_False	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .data:off_579858o
		dd 5			; Len
		db 'False',0            ; Text
		align 10h
_str_True	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .data:0057985Co
		dd 4			; Len
		db 'True',0             ; Text
		align 10h
_str__	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .data:off_579860o
		dd 1			; Len
		db '.',0                ; Text
		align 4

loc_4DEF6C:				; DATA XREF: .data:004F6158o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4DEFB2
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		inc	dword_61AFB8
		jnz	short loc_4DEFA4
		mov	eax, offset off_579860
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset off_579858
		mov	ecx, 2
		mov	edx, ds:@$xp$13System@String ; `__DPdsc__'[System::String]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)

loc_4DEFA4:				; CODE XREF: .text:004DEF83j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4DEFB9

loc_4DEFB1:				; CODE XREF: .text:004DEFB7j
		retn
; ---------------------------------------------------------------------------

loc_4DEFB2:				; DATA XREF: .text:004DEF72o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4DEFB1
; ---------------------------------------------------------------------------

loc_4DEFB9:				; CODE XREF: .text:loc_4DEFB1j
					; DATA XREF: .text:004DEFACo
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DEFBC:				; DATA XREF: .data:004F60E0o
		sub	dword_61AFB8, 1
		retn
; ---------------------------------------------------------------------------

loc_4DEFC4:				; DATA XREF: .data:004F6140o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4DEFE9
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		inc	dword_61AFBC
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4DEFF0

loc_4DEFE8:				; CODE XREF: .text:004DEFEEj
		retn
; ---------------------------------------------------------------------------

loc_4DEFE9:				; DATA XREF: .text:004DEFCAo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4DEFE8
; ---------------------------------------------------------------------------

loc_4DEFF0:				; CODE XREF: .text:loc_4DEFE8j
					; DATA XREF: .text:004DEFE3o
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DEFF4:				; DATA XREF: .data:004F60C8o
		sub	dword_61AFBC, 1
		retn
; ---------------------------------------------------------------------------

loc_4DEFFC:				; DATA XREF: .data:004F614Co
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4DF021
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		inc	dword_61AFC0
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4DF028

loc_4DF020:				; CODE XREF: .text:004DF026j
		retn
; ---------------------------------------------------------------------------

loc_4DF021:				; DATA XREF: .text:004DF002o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4DF020
; ---------------------------------------------------------------------------

loc_4DF028:				; CODE XREF: .text:loc_4DF020j
					; DATA XREF: .text:004DF01Bo
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DF02C:				; DATA XREF: .data:004F60D4o
		sub	dword_61AFC0, 1
		retn
; ---------------------------------------------------------------------------
 off_4DF034      dd offset hModule       ; DATA XREF: .data:off_57D814o
                 dd 0FFF0h
 off_4DF03C      dd offset hModule       ; DATA XREF: .data:off_57D7F0o
                 dd 0FFF1h
 off_4DF044      dd offset hModule       ; DATA XREF: .data:off_57D89Co
                 dd 0FFF2h
 off_4DF04C      dd offset hModule       ; DATA XREF: .data:off_57D898o
                 dd 0FFF3h
 off_4DF054      dd offset hModule       ; DATA XREF: .data:off_57D894o
                 dd 0FFF4h
 off_4DF05C      dd offset hModule       ; DATA XREF: .data:off_57D890o
                 dd 0FFF5h
 off_4DF064      dd offset hModule       ; DATA XREF: .data:off_57D88Co
                 dd 0FFF6h
 off_4DF06C      dd offset hModule       ; DATA XREF: .data:off_57D888o
                 dd 0FFF7h
 off_4DF074      dd offset hModule       ; DATA XREF: .data:off_57D884o
                 dd 0FFF8h
 off_4DF07C      dd offset hModule       ; DATA XREF: .data:off_57D880o
                 dd 0FFF9h
 off_4DF084      dd offset hModule       ; DATA XREF: .data:off_57D87Co
                 dd 0FFFAh
 off_4DF08C      dd offset hModule       ; DATA XREF: .data:off_57D878o
                 dd 0FFFBh
 off_4DF094      dd offset hModule       ; DATA XREF: .data:off_57D874o
                 dd 0FFFCh
 off_4DF09C      dd offset hModule       ; DATA XREF: .data:off_57D870o
                 dd 0FFFDh
 off_4DF0A4      dd offset hModule       ; DATA XREF: .data:off_57D86Co
                 dd 0FFFEh
 off_4DF0AC      dd offset hModule       ; DATA XREF: .data:off_57D868o
                 dd 0FFFFh
 off_4DF0B4      dd offset hModule       ; DATA XREF: .data:off_57D818o
                 dd 0FFE0h
 off_4DF0BC      dd offset hModule       ; DATA XREF: .data:off_57D864o
                 dd 0FFE1h
 off_4DF0C4      dd offset hModule       ; DATA XREF: .data:off_57D80Co
                 dd 0FFE2h
 off_4DF0CC      dd offset hModule       ; DATA XREF: .data:off_57D858o
                 dd 0FFE3h
 off_4DF0D4      dd offset hModule       ; DATA XREF: .data:off_57D85Co
                 dd 0FFE4h
 off_4DF0DC      dd offset hModule       ; DATA XREF: .data:off_57D860o
                 dd 0FFE5h
 off_4DF0E4      dd offset hModule       ; DATA XREF: .data:off_57D7E4o
                 dd 0FFE6h
 off_4DF0EC      dd offset hModule       ; DATA XREF: .data:off_57D7ECo
                 dd 0FFE7h
 off_4DF0F4      dd offset hModule       ; DATA XREF: .data:off_57D93Co
                 dd 0FFE8h
 off_4DF0FC      dd offset hModule       ; DATA XREF: .data:off_57D938o
                 dd 0FFE9h
 off_4DF104      dd offset hModule       ; DATA XREF: .data:off_57D854o
                 dd 0FFEAh
 off_4DF10C      dd offset hModule       ; DATA XREF: .data:off_57D850o
                 dd 0FFEBh
 off_4DF114      dd offset hModule       ; DATA XREF: .data:off_57D84Co
                 dd 0FFECh
 off_4DF11C      dd offset hModule       ; DATA XREF: .data:off_57D800o
                 dd 0FFEDh
 off_4DF124      dd offset hModule       ; DATA XREF: .data:off_57D804o
                 dd 0FFEEh
 off_4DF12C      dd offset hModule       ; DATA XREF: .data:off_57D848o
                 dd 0FFEFh
 off_4DF134      dd offset hModule       ; DATA XREF: .data:off_57D844o
                 dd 0FFD0h
 off_4DF13C      dd offset hModule       ; DATA XREF: .data:off_57D840o
                 dd 0FFD1h
 off_4DF144      dd offset hModule       ; DATA XREF: .data:off_57D810o
                 dd 0FFD2h
 off_4DF14C      dd offset hModule       ; DATA XREF: .data:off_57D7F4o
                 dd 0FFD3h
 off_4DF154      dd offset hModule       ; DATA XREF: .data:off_57D83Co
                 dd 0FFD4h
 off_4DF15C      dd offset hModule       ; DATA XREF: .data:off_57D838o
                 dd 0FFD5h
 off_4DF164      dd offset hModule       ; DATA XREF: .data:off_57D7F8o
                 dd 0FFD6h
 off_4DF16C      dd offset hModule       ; DATA XREF: .data:off_57D7FCo
                 dd 0FFD7h
 off_4DF174      dd offset hModule       ; DATA XREF: .data:off_57D808o
                 dd 0FFD8h
 off_4DF17C      dd offset hModule       ; DATA XREF: .data:off_57D934o
                 dd 0FFD9h
 off_4DF184      dd offset hModule       ; DATA XREF: .data:off_57D930o
                 dd 0FFDAh
 off_4DF18C      dd offset hModule       ; DATA XREF: .data:off_57D92Co
                 dd 0FFDBh
 off_4DF194      dd offset hModule       ; DATA XREF: .data:off_57D928o
                 dd 0FFDCh
 off_4DF19C      dd offset hModule       ; DATA XREF: .data:off_57D924o
                 dd 0FFDDh
 off_4DF1A4      dd offset hModule       ; DATA XREF: .data:off_57D920o
                 dd 0FFDEh
 off_4DF1AC      dd offset hModule       ; DATA XREF: .data:off_57D91Co
                 dd 0FFDFh
 off_4DF1B4      dd offset hModule       ; DATA XREF: .data:off_57D918o
                 dd 0FFC0h
 off_4DF1BC      dd offset hModule       ; DATA XREF: .data:off_57D914o
                 dd 0FFC1h
 off_4DF1C4      dd offset hModule       ; DATA XREF: .data:off_57D910o
                 dd 0FFC2h
 off_4DF1CC      dd offset hModule       ; DATA XREF: .data:off_57D90Co
                 dd 0FFC3h
 off_4DF1D4      dd offset hModule       ; DATA XREF: .data:off_57D908o
                 dd 0FFC4h
 off_4DF1DC      dd offset hModule       ; DATA XREF: .data:off_57D904o
                 dd 0FFC5h
 off_4DF1E4      dd offset hModule       ; DATA XREF: .data:off_57D900o
                 dd 0FFC6h
 off_4DF1EC      dd offset hModule       ; DATA XREF: .data:off_57D8FCo
                 dd 0FFC7h
 off_4DF1F4      dd offset hModule       ; DATA XREF: .data:off_57D8F8o
                 dd 0FFC8h
 off_4DF1FC      dd offset hModule       ; DATA XREF: .data:off_57D8F4o
                 dd 0FFC9h
 off_4DF204      dd offset hModule       ; DATA XREF: .data:off_57D8F0o
                 dd 0FFCAh
 off_4DF20C      dd offset hModule       ; DATA XREF: .data:off_57D8ECo
                 dd 0FFCBh
 off_4DF214      dd offset hModule       ; DATA XREF: .data:off_57D8E8o
                 dd 0FFCCh
 off_4DF21C      dd offset hModule       ; DATA XREF: .data:off_57D8E4o
                 dd 0FFCDh
 off_4DF224      dd offset hModule       ; DATA XREF: .data:off_57D8E0o
                 dd 0FFCEh
 off_4DF22C      dd offset hModule       ; DATA XREF: .data:off_57D8DCo
                 dd 0FFCFh
 off_4DF234      dd offset hModule       ; DATA XREF: .data:off_57D8D8o
                 dd 0FFB0h
 off_4DF23C      dd offset hModule       ; DATA XREF: .data:off_57D8D4o
                 dd 0FFB1h
 off_4DF244      dd offset hModule       ; DATA XREF: .data:off_57D8D0o
                 dd 0FFB2h
 off_4DF24C      dd offset hModule       ; DATA XREF: .data:off_57D8CCo
                 dd 0FFB3h
 off_4DF254      dd offset hModule       ; DATA XREF: .data:off_57D8C8o
                 dd 0FFB4h
 off_4DF25C      dd offset hModule       ; DATA XREF: .data:off_57D8C4o
                 dd 0FFB5h
 off_4DF264      dd offset hModule       ; DATA XREF: .data:off_57D8C0o
                 dd 0FFB6h
 off_4DF26C      dd offset hModule       ; DATA XREF: .data:off_57D8BCo
                 dd 0FFB7h
 off_4DF274      dd offset hModule       ; DATA XREF: .data:off_57D8B8o
                 dd 0FFB8h
 off_4DF27C      dd offset hModule       ; DATA XREF: .data:off_57D8B4o
                 dd 0FFB9h
 off_4DF284      dd offset hModule       ; DATA XREF: .data:off_57D8B0o
                 dd 0FFBAh
 off_4DF28C      dd offset hModule       ; DATA XREF: .data:off_57D8ACo
                 dd 0FFBBh
 off_4DF294      dd offset hModule       ; DATA XREF: .data:off_57D8A8o
                 dd 0FFBCh
 off_4DF29C      dd offset hModule       ; DATA XREF: .data:off_57D8A4o
                 dd 0FFBDh
 off_4DF2A4      dd offset hModule       ; DATA XREF: .data:off_57D8A0o
                 dd 0FFBEh
 ; ----------------------------------------------
; ---------------------------------------------------------------------------

loc_4DF2AC:				; DATA XREF: .data:004F6146o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4DF2D1
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		inc	dword_61AFC4
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4DF2D8

loc_4DF2D0:				; CODE XREF: .text:004DF2D6j
		retn
; ---------------------------------------------------------------------------

loc_4DF2D1:				; DATA XREF: .text:004DF2B2o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4DF2D0
; ---------------------------------------------------------------------------

loc_4DF2D8:				; CODE XREF: .text:loc_4DF2D0j
					; DATA XREF: .text:004DF2CBo
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DF2DC:				; DATA XREF: .data:004F60CEo
		sub	dword_61AFC4, 1
		retn
; ---------------------------------------------------------------------------
		dd offset byte_4DF2E8
byte_4DF2E8	db 6			; DATA XREF: .text:004DF2E4o
					; Set
		db 11,'TSysCharSet'
		db 6Eh
		dd offset @$xp$11System@Char ; `__DPdsc__'[System::Char]
		align 4
; `__DPdsc__'[Sysutils::TSearchRec]
@$xp$19Sysutils@TSearchRec dd offset byte_4DF300
byte_4DF300	db 0Eh			; DATA XREF: .text:`__DPdsc__'[Sysutils::TSearchRec]o
					; Record
		db 10,'TSearchRec'
		dd 158h, 1
		dd offset off_4DFCDC
		dd 0Ch
; `__DPdsc__'[Sysutils::TFloatFormat]
@$xp$21Sysutils@TFloatFormat dd	offset byte_4DF320 ; DATA XREF:	.text:004DF337o
byte_4DF320	db 3			; DATA XREF: .text:`__DPdsc__'[Sysutils::TFloatFormat]o
					; Enumeration
		db 12,'TFloatFormat'
		db 1			; uchar	- min/max
		dd 0, 4
		dd offset @$xp$21Sysutils@TFloatFormat ; `__DPdsc__'[Sysutils::TFloatFormat]
		db 9,'ffGeneral'
		db 10,'ffExponent'
		db 7,'ffFixed'
		db 8,'ffNumber'
		db 10,'ffCurrency'
; `__DPdsc__'[Sysutils::TMbcsByteType]
@$xp$22Sysutils@TMbcsByteType dd offset	byte_4DF370 ; DATA XREF: .text:004DF388o
byte_4DF370	db 3			; DATA XREF: .text:`__DPdsc__'[Sysutils::TMbcsByteType]o
					; Enumeration
		db 13,'TMbcsByteType'
		db 1			; uchar	- min/max
		dd 0, 2
		dd offset @$xp$22Sysutils@TMbcsByteType	; `__DPdsc__'[Sysutils::TMbcsByteType]
		db 12,'mbSingleByte'
		db 10,'mbLeadByte'
		db 11,'mbTrailByte'
; `__DPdsc__'[Sysutils::Exception]
@$xp$18Sysutils@Exception dd offset byte_4DF3B4
byte_4DF3B4	db 7			; DATA XREF: .text:`__DPdsc__'[Sysutils::Exception]o
					; Class
		db 9,'Exception'
		dd offset _cls_SysUtils_Exception
		dd offset @$xp$14System@TObject	; `__DPdsc__'[System::TObject]
		dw 0
		db 8,'SysUtils'
		dw 0			; PropCount
off_4DF3D4	dd offset byte_4DF3D8	; DATA XREF: .text:004DF3ECo
byte_4DF3D8	db 3			; DATA XREF: .text:off_4DF3D4o
					; Enumeration
		db 9,'TNameType'
		db 1			; uchar	- min/max
		dd 0, 1
		dd offset off_4DF3D4
		db 14,'ntContainsUnit'
asc_4DF3FF	db 17,'ntRequiresPackage'
		db 90h
		db  90h	; Ѝ
		db  90h	; Ѝ
dword_4DF414	dd 10,100,1000,10000	; 0 ; DATA XREF: .text:004DF5B4r
					; .text:004DFA70r ...
tbyte_4DF424	dt 1.0e18		; DATA XREF: .text:004DFA5Br
word_4DF42E	dw 4927			; DATA XREF: .text:004DFBEEr
word_4DF430	dw 20041		; DATA XREF: .text:004DF496o
		dw 20038
		dw 20033
; ---------------------------------------------------------------------------

loc_4DF436:				; CODE XREF: .text:004DF7A1p
					; .text:004E0D46p
		push	ebp
		mov	ebp, esp
		sub	esp, 1Ch
		push	edi
		push	esi
		push	ebx
		mov	[ebp-4], eax
		mov	eax, 13h
		cmp	cl, 0
		jnz	short loc_4DF463
		mov	eax, [ebp+0Ch]
		cmp	eax, 2
		jge	short loc_4DF459
		mov	eax, 2

loc_4DF459:				; CODE XREF: .text:004DF452j
		cmp	eax, 12h
		jle	short loc_4DF463
		mov	eax, 12h

loc_4DF463:				; CODE XREF: .text:004DF44Aj
					; .text:004DF45Cj
		mov	[ebp+0Ch], eax
		push	eax
		mov	eax, 270Fh
		cmp	byte ptr [ebp+10h], 2
		jb	short loc_4DF475
		mov	eax, [ebp+8]

loc_4DF475:				; CODE XREF: .text:004DF470j
		push	eax
		lea	eax, [ebp-1Ch]
		call	loc_4DF9D9
		mov	edi, [ebp-4]
		movzx	eax, word ptr [ebp-1Ch]
		sub	eax, 7FFFh
		cmp	eax, 2
		jnb	short loc_4DF4A6
		mov	ecx, eax
		call	loc_4DF4F4
		lea	esi, word_4DF430[ecx+ecx*2]
		mov	ecx, 3
		rep movsb
		jmp	short loc_4DF4C9
; ---------------------------------------------------------------------------

loc_4DF4A6:				; CODE XREF: .text:004DF48Dj
		lea	esi, [ebp-19h]
		movzx	ebx, byte ptr [ebp+10h]
		cmp	bl, 1
		jz	short loc_4DF4C2
		cmp	bl, 4
		ja	short loc_4DF4C0
		movsx	eax, word ptr [ebp-1Ch]
		cmp	eax, [ebp+0Ch]
		jle	short loc_4DF4C2

loc_4DF4C0:				; CODE XREF: .text:004DF4B5j
		mov	bl, 0

loc_4DF4C2:				; CODE XREF: .text:004DF4B0j
					; .text:004DF4BEj
		call	ds:off_4DF4D7[ebx*4]

loc_4DF4C9:				; CODE XREF: .text:004DF4A4j
		mov	eax, edi
		sub	eax, [ebp-4]
		pop	ebx
		pop	esi
		pop	edi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
off_4DF4D7	dd offset loc_4DF4FE	; DATA XREF: .text:loc_4DF4C2r
		dd offset loc_4DF560
		dd offset loc_4DF5D3
		dd offset loc_4DF5D3
		dd offset loc_4DF639
; ---------------------------------------------------------------------------

loc_4DF4EB:				; CODE XREF: .text:004DF565p
					; .text:loc_4DF576p ...
		lodsb
		or	al, al
		jnz	short locret_4DF4F3
		mov	al, 30h
		dec	esi

locret_4DF4F3:				; CODE XREF: .text:004DF4EEj
		retn
; ---------------------------------------------------------------------------

loc_4DF4F4:				; CODE XREF: .text:004DF491p
					; .text:loc_4DF4FEp ...
		cmp	byte ptr [ebp-1Ah], 0
		jz	short locret_4DF4FD
		mov	al, 2Dh
		stosb

locret_4DF4FD:				; CODE XREF: .text:004DF4F8j
		retn
; ---------------------------------------------------------------------------

loc_4DF4FE:				; CODE XREF: .text:loc_4DF4C2p
					; DATA XREF: .text:off_4DF4D7o
		call	loc_4DF4F4
		movsx	ecx, word ptr [ebp-1Ch]
		xor	edx, edx
		cmp	ecx, [ebp+0Ch]
		jg	short loc_4DF52D
		cmp	ecx, 0FFFFFFFDh
		jl	short loc_4DF52D
		or	ecx, ecx
		jg	short loc_4DF533
		mov	al, 30h
		stosb
		cmp	byte ptr [esi],	0
		jz	short locret_4DF55F
		mov	al, byte_61AFCF
		stosb
		neg	ecx
		mov	al, 30h
		rep stosb
		jmp	short loc_4DF549
; ---------------------------------------------------------------------------

loc_4DF52D:				; CODE XREF: .text:004DF50Cj
					; .text:004DF511j
		mov	ecx, 1
		inc	edx

loc_4DF533:				; CODE XREF: .text:004DF515j
					; .text:004DF539j
		lodsb
		or	al, al
		jz	short loc_4DF551
		stosb
		loop	loc_4DF533
		lodsb
		or	al, al
		jz	short loc_4DF555
		mov	ah, al
		mov	al, byte_61AFCF
		stosw

loc_4DF549:				; CODE XREF: .text:004DF52Bj
					; .text:004DF54Fj
		lodsb
		or	al, al
		jz	short loc_4DF555
		stosb
		jmp	short loc_4DF549
; ---------------------------------------------------------------------------

loc_4DF551:				; CODE XREF: .text:004DF536j
		mov	al, 30h
		rep stosb

loc_4DF555:				; CODE XREF: .text:004DF53Ej
					; .text:004DF54Cj
		or	edx, edx
		jz	short locret_4DF55F
		xor	eax, eax
		xor	ecx, ecx
		jmp	short loc_4DF58A
; ---------------------------------------------------------------------------

locret_4DF55F:				; CODE XREF: .text:004DF51Dj
					; .text:004DF557j
		retn
; ---------------------------------------------------------------------------

loc_4DF560:				; CODE XREF: .text:loc_4DF4C2p
					; DATA XREF: .text:004DF4DBo
		call	loc_4DF4F4
		call	loc_4DF4EB
		mov	ah, byte_61AFCF
		stosw
		mov	ecx, [ebp+0Ch]
		dec	ecx

loc_4DF576:				; CODE XREF: .text:004DF57Cj
		call	loc_4DF4EB
		stosb
		loop	loc_4DF576
		mov	ah, 2Bh
		mov	ecx, [ebp+8]
		cmp	ecx, 4
		jb	short loc_4DF58A
		xor	ecx, ecx

loc_4DF58A:				; CODE XREF: .text:004DF55Dj
					; .text:004DF586j
		mov	al, 45h
		mov	bl, [ebp-19h]
		movsx	edx, word ptr [ebp-1Ch]
		dec	edx

loc_4DF594:				; CODE XREF: .text:004DF965p
		stosb
		or	bl, bl
		jnz	short loc_4DF59D
		xor	edx, edx
		jmp	short loc_4DF5A7
; ---------------------------------------------------------------------------

loc_4DF59D:				; CODE XREF: .text:004DF597j
		or	edx, edx
		jge	short loc_4DF5A7
		mov	al, 2Dh
		neg	edx
		jmp	short loc_4DF5AD
; ---------------------------------------------------------------------------

loc_4DF5A7:				; CODE XREF: .text:004DF59Bj
					; .text:004DF59Fj
		or	ah, ah
		jz	short loc_4DF5AE
		mov	al, ah

loc_4DF5AD:				; CODE XREF: .text:004DF5A5j
		stosb

loc_4DF5AE:				; CODE XREF: .text:004DF5A9j
		xchg	eax, edx
		push	eax
		mov	ebx, esp

loc_4DF5B2:				; CODE XREF: .text:004DF5C3j
					; .text:004DF5C7j
		xor	edx, edx
		div	ds:dword_4DF414
		add	dl, 30h
		mov	[ebx], dl
		inc	ebx
		dec	ecx
		or	eax, eax
		jnz	short loc_4DF5B2
		or	ecx, ecx
		jg	short loc_4DF5B2

loc_4DF5C9:				; CODE XREF: .text:004DF5CFj
		dec	ebx
		mov	al, [ebx]
		stosb
		cmp	ebx, esp
		jnz	short loc_4DF5C9
		pop	eax
		retn
; ---------------------------------------------------------------------------

loc_4DF5D3:				; CODE XREF: .text:loc_4DF4C2p
					; DATA XREF: .text:004DF4DFo ...
		call	loc_4DF4F4

loc_4DF5D8:				; CODE XREF: .text:loc_4DF685p
		mov	edx, [ebp+8]
		cmp	edx, 12h
		jb	short loc_4DF5E5
		mov	edx, 12h

loc_4DF5E5:				; CODE XREF: .text:004DF5DEj
		movsx	ecx, word ptr [ebp-1Ch]
		or	ecx, ecx
		jg	short loc_4DF5F2
		mov	al, 30h
		stosb
		jmp	short loc_4DF61A
; ---------------------------------------------------------------------------

loc_4DF5F2:				; CODE XREF: .text:004DF5EBj
		xor	ebx, ebx
		cmp	byte ptr [ebp+10h], 2
		jz	short loc_4DF604
		mov	eax, ecx
		dec	eax
		mov	bl, 3
		div	bl
		mov	bl, ah
		inc	ebx

loc_4DF604:				; CODE XREF: .text:004DF5F8j
					; .text:004DF60Ej ...
		call	loc_4DF4EB
		stosb
		dec	ecx
		jz	short loc_4DF61A
		dec	ebx
		jnz	short loc_4DF604
		mov	al, byte_61AFCE
		stosb
		mov	bl, 3
		jmp	short loc_4DF604
; ---------------------------------------------------------------------------

loc_4DF61A:				; CODE XREF: .text:004DF5F0j
					; .text:004DF60Bj
		or	edx, edx
		jz	short locret_4DF638
		mov	al, byte_61AFCF
		stosb
		jecxz	short loc_4DF62F
		mov	al, 30h

loc_4DF628:				; CODE XREF: .text:004DF62Dj
		stosb
		dec	edx
		jz	short locret_4DF638
		inc	ecx
		jnz	short loc_4DF628

loc_4DF62F:				; CODE XREF: .text:004DF624j
					; .text:004DF636j
		call	loc_4DF4EB
		stosb
		dec	edx
		jnz	short loc_4DF62F

locret_4DF638:				; CODE XREF: .text:004DF61Cj
					; .text:004DF62Aj
		retn
; ---------------------------------------------------------------------------

loc_4DF639:				; CODE XREF: .text:loc_4DF4C2p
					; DATA XREF: .text:004DF4E7o
		xor	ebx, ebx
		mov	bl, byte_61AFCC
		mov	ecx, 3
		cmp	byte ptr [ebp-1Ah], 0
		jz	short loc_4DF657
		mov	bl, byte_61AFCD
		mov	ecx, 40Fh

loc_4DF657:				; CODE XREF: .text:004DF64Aj
		cmp	bl, cl
		jbe	short loc_4DF65D
		mov	bl, cl

loc_4DF65D:				; CODE XREF: .text:004DF659j
		add	bl, ch
		lea	ebx, stru_4DF6A2.anonymous_0[ebx+ebx*4]
		mov	ecx, 5

loc_4DF66B:				; CODE XREF: .text:004DF68Dj
		mov	al, [ebx]
		cmp	al, 40h
		jz	short locret_4DF68F
		push	ecx
		push	ebx
		cmp	al, 24h
		jz	short loc_4DF67E
		cmp	al, 2Ah
		jz	short loc_4DF685
		stosb
		jmp	short loc_4DF68A
; ---------------------------------------------------------------------------

loc_4DF67E:				; CODE XREF: .text:004DF675j
		call	loc_4DF690
		jmp	short loc_4DF68A
; ---------------------------------------------------------------------------

loc_4DF685:				; CODE XREF: .text:004DF679j
		call	loc_4DF5D8

loc_4DF68A:				; CODE XREF: .text:004DF67Cj
					; .text:004DF683j
		pop	ebx
		pop	ecx
		inc	ebx
		loop	loc_4DF66B

locret_4DF68F:				; CODE XREF: .text:004DF66Fj
		retn
; ---------------------------------------------------------------------------

loc_4DF690:				; CODE XREF: .text:loc_4DF67Ep
		push	esi
		mov	esi, dword_61AFC8
		test	esi, esi
		jz	short loc_4DF6A0
		mov	ecx, [esi-4]
		rep movsb

loc_4DF6A0:				; CODE XREF: .text:004DF699j
		pop	esi
		retn
; ---------------------------------------------------------------------------
stru_4DF6A2	struct_1 <24h, 2Ah, 40h, 40h, 40h>; 0 ;	DATA XREF: .text:004DF65Fo
		struct_1 <2Ah, 24h, 40h, 40h, 40h>; 1
		struct_1 <24h, 20h, 2Ah, 40h, 40h>; 2
		struct_1 <2Ah, 20h, 24h, 40h, 40h>; 3
		struct_1 <28h, 24h, 2Ah, 29h, 40h>; 4
		struct_1 <2Dh, 24h, 2Ah, 40h, 40h>; 5
		struct_1 <24h, 2Dh, 2Ah, 40h, 40h>; 6
		struct_1 <24h, 2Ah, 2Dh, 40h, 40h>; 7
		struct_1 <28h, 2Ah, 24h, 29h, 40h>; 8
		struct_1 <2Dh, 2Ah, 24h, 40h, 40h>; 9
		struct_1 <2Ah, 2Dh, 24h, 40h, 40h>; 10
		struct_1 <2Ah, 24h, 2Dh, 40h, 40h>; 11
		struct_1 <2Dh, 2Ah, 20h, 24h, 40h>; 12
		struct_1 <2Dh, 24h, 20h, 2Ah, 40h>; 13
		struct_1 <2Ah, 20h, 24h, 2Dh, 40h>; 14
		struct_1 <24h, 20h, 2Ah, 2Dh, 40h>; 15
		struct_1 <24h, 20h, 2Dh, 2Ah, 40h>; 16
		struct_1 <2Ah, 2Dh, 20h, 24h, 40h>; 17
		struct_1 <28h, 24h, 20h, 2Ah, 29h>; 18
		struct_1 <28h, 2Ah, 20h, 24h, 29h>; 19
; ---------------------------------------------------------------------------

loc_4DF706:
		push	ebp
		mov	ebp, esp
		sub	esp, 40h
		push	edi
		push	esi
		push	ebx
		mov	[ebp-4], eax
		mov	edi, edx
		mov	ebx, ecx
		mov	ecx, 2
		cmp	bl, 0
		jz	short loc_4DF72F
		mov	eax, [edi]
		or	eax, [edi+4]
		jz	short loc_4DF741
		mov	ecx, [edi+4]
		shr	ecx, 1Fh
		jmp	short loc_4DF741
; ---------------------------------------------------------------------------

loc_4DF72F:				; CODE XREF: .text:004DF71Ej
		movzx	eax, word ptr [edi+8]
		or	eax, [edi]
		or	eax, [edi+4]
		jz	short loc_4DF741
		movzx	ecx, word ptr [edi+8]
		shr	ecx, 0Fh

loc_4DF741:				; CODE XREF: .text:004DF725j
					; .text:004DF72Dj ...
		call	loc_4DF7D2
		jz	short loc_4DF794
		call	loc_4DF80D
		mov	eax, [ebp-14h]
		mov	edx, 270Fh
		cmp	byte ptr [ebp-0Ch], 0
		jnz	short loc_4DF765
		sub	eax, [ebp-18h]
		mov	edx, eax
		mov	eax, 12h

loc_4DF765:				; CODE XREF: .text:004DF759j
		push	eax
		push	edx
		lea	eax, [ebp-40h]
		mov	edx, edi
		mov	ecx, ebx
		call	loc_4DF9D9
		mov	ax, [ebp-40h]
		cmp	ax, 8000h
		jz	short loc_4DF794
		cmp	ax, 7FFFh
		jz	short loc_4DF794
		cmp	bl, 0
		jnz	short loc_4DF7A8
		cmp	ax, 12h
		jle	short loc_4DF7A8
		cmp	byte ptr [ebp-0Ch], 0
		jnz	short loc_4DF7A8

loc_4DF794:				; CODE XREF: .text:004DF746j
					; .text:004DF77Bj ...
		push	0
		push	0Fh
		push	0
		mov	eax, [ebp-4]
		mov	edx, edi
		mov	ecx, ebx
		call	loc_4DF436
		jmp	short loc_4DF7C9
; ---------------------------------------------------------------------------

loc_4DF7A8:				; CODE XREF: .text:004DF786j
					; .text:004DF78Cj ...
		cmp	byte ptr [ebp-3Dh], 0
		jnz	short loc_4DF7C4
		mov	ecx, 2
		call	loc_4DF7D2
		jz	short loc_4DF794
		cmp	esi, [ebp-10h]
		jz	short loc_4DF7C4
		call	loc_4DF80D

loc_4DF7C4:				; CODE XREF: .text:004DF7ACj
					; .text:004DF7BDj
		call	loc_4DF8B8

loc_4DF7C9:				; CODE XREF: .text:004DF7A6j
		pop	ebx
		pop	esi
		pop	edi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4DF7D2:				; CODE XREF: .text:loc_4DF741p
					; .text:004DF7B3p
		mov	esi, [ebp+8]
		jecxz	short loc_4DF7F4

loc_4DF7D7:				; CODE XREF: .text:004DF7E6j
					; .text:004DF7E8j ...
		lodsb
		cmp	al, 27h
		jz	short loc_4DF800
		cmp	al, 22h
		jz	short loc_4DF800
		or	al, al
		jz	short loc_4DF7F4
		cmp	al, 3Bh
		jnz	short loc_4DF7D7
		loop	loc_4DF7D7
		mov	al, [esi]
		or	al, al
		jz	short loc_4DF7F4
		cmp	al, 3Bh
		jnz	short locret_4DF7FF

loc_4DF7F4:				; CODE XREF: .text:004DF7D5j
					; .text:004DF7E2j ...
		mov	esi, [ebp+8]
		mov	al, [esi]
		or	al, al
		jz	short locret_4DF7FF
		cmp	al, 3Bh

locret_4DF7FF:				; CODE XREF: .text:004DF7F2j
					; .text:004DF7FBj
		retn
; ---------------------------------------------------------------------------

loc_4DF800:				; CODE XREF: .text:004DF7DAj
					; .text:004DF7DEj
		mov	ah, al

loc_4DF802:				; CODE XREF: .text:004DF809j
		lodsb
		cmp	al, ah
		jz	short loc_4DF7D7
		or	al, al
		jnz	short loc_4DF802
		jmp	short loc_4DF7F4
; ---------------------------------------------------------------------------

loc_4DF80D:				; CODE XREF: .text:004DF748p
					; .text:004DF7BFp
		push	ebx
		mov	[ebp-10h], esi
		mov	ebx, 7FFFh
		xor	ecx, ecx
		xor	edx, edx
		mov	dword ptr [ebp-18h], 0FFFFFFFFh
		mov	[ebp-8], dl
		mov	[ebp-0Ch], dl

loc_4DF827:				; CODE XREF: .text:004DF84Ej
					; .text:004DF853j ...
		lodsb

loc_4DF828:				; CODE XREF: .text:004DF885j
					; .text:004DF890j
		cmp	al, 23h
		jz	short loc_4DF852
		cmp	al, 30h
		jz	short loc_4DF855
		cmp	al, 2Eh
		jz	short loc_4DF860
		cmp	al, 2Ch
		jz	short loc_4DF86B
		cmp	al, 27h
		jz	short loc_4DF871
		cmp	al, 22h
		jz	short loc_4DF871
		cmp	al, 45h
		jz	short loc_4DF87E
		cmp	al, 65h
		jz	short loc_4DF87E
		cmp	al, 3Bh
		jz	short loc_4DF892
		or	al, al
		jnz	short loc_4DF827
		jmp	short loc_4DF892
; ---------------------------------------------------------------------------

loc_4DF852:				; CODE XREF: .text:004DF82Aj
		inc	edx
		jmp	short loc_4DF827
; ---------------------------------------------------------------------------

loc_4DF855:				; CODE XREF: .text:004DF82Ej
		cmp	edx, ebx
		jge	short loc_4DF85B
		mov	ebx, edx

loc_4DF85B:				; CODE XREF: .text:004DF857j
		inc	edx
		mov	ecx, edx
		jmp	short loc_4DF827
; ---------------------------------------------------------------------------

loc_4DF860:				; CODE XREF: .text:004DF832j
		cmp	dword ptr [ebp-18h], 0FFFFFFFFh
		jnz	short loc_4DF827
		mov	[ebp-18h], edx
		jmp	short loc_4DF827
; ---------------------------------------------------------------------------

loc_4DF86B:				; CODE XREF: .text:004DF836j
		mov	byte ptr [ebp-8], 1
		jmp	short loc_4DF827
; ---------------------------------------------------------------------------

loc_4DF871:				; CODE XREF: .text:004DF83Aj
					; .text:004DF83Ej
		mov	ah, al

loc_4DF873:				; CODE XREF: .text:004DF87Aj
		lodsb
		cmp	al, ah
		jz	short loc_4DF827
		or	al, al
		jnz	short loc_4DF873
		jmp	short loc_4DF892
; ---------------------------------------------------------------------------

loc_4DF87E:				; CODE XREF: .text:004DF842j
					; .text:004DF846j
		lodsb
		cmp	al, 2Dh
		jz	short loc_4DF887
		cmp	al, 2Bh
		jnz	short loc_4DF828

loc_4DF887:				; CODE XREF: .text:004DF881j
		mov	byte ptr [ebp-0Ch], 1

loc_4DF88B:				; CODE XREF: .text:004DF88Ej
		lodsb
		cmp	al, 30h
		jz	short loc_4DF88B
		jmp	short loc_4DF828
; ---------------------------------------------------------------------------

loc_4DF892:				; CODE XREF: .text:004DF84Aj
					; .text:004DF850j ...
		mov	[ebp-14h], edx
		cmp	dword ptr [ebp-18h], 0FFFFFFFFh
		jnz	short loc_4DF89E
		mov	[ebp-18h], edx

loc_4DF89E:				; CODE XREF: .text:004DF899j
		mov	eax, [ebp-18h]
		sub	eax, ecx
		jle	short loc_4DF8A7
		xor	eax, eax

loc_4DF8A7:				; CODE XREF: .text:004DF8A3j
		mov	[ebp-20h], eax
		mov	eax, [ebp-18h]
		sub	eax, ebx
		jge	short loc_4DF8B3
		xor	eax, eax

loc_4DF8B3:				; CODE XREF: .text:004DF8AFj
		mov	[ebp-1Ch], eax
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4DF8B8:				; CODE XREF: .text:loc_4DF7C4p
		cmp	byte ptr [ebp-0Ch], 0
		jz	short loc_4DF8C5
		mov	eax, [ebp-18h]
		xor	edx, edx
		jmp	short loc_4DF8D8
; ---------------------------------------------------------------------------

loc_4DF8C5:				; CODE XREF: .text:004DF8BCj
		movsx	eax, word ptr [ebp-40h]
		cmp	eax, [ebp-18h]
		jg	short loc_4DF8D1
		mov	eax, [ebp-18h]

loc_4DF8D1:				; CODE XREF: .text:004DF8CCj
		movsx	edx, word ptr [ebp-40h]
		sub	edx, [ebp-18h]

loc_4DF8D8:				; CODE XREF: .text:004DF8C3j
		mov	[ebp-24h], eax
		mov	[ebp-28h], edx
		mov	esi, [ebp-10h]
		mov	edi, [ebp-4]
		lea	ebx, [ebp-3Dh]
		cmp	byte ptr [ebp-3Eh], 0
		jz	short loc_4DF8F5
		cmp	esi, [ebp+8]
		jnz	short loc_4DF8F5
		mov	al, 2Dh
		stosb

loc_4DF8F5:				; CODE XREF: .text:004DF8EBj
					; .text:004DF8F0j ...
		lodsb
		cmp	al, 23h
		jz	short loc_4DF921
		cmp	al, 30h
		jz	short loc_4DF921
		cmp	al, 2Eh
		jz	short loc_4DF8F5
		cmp	al, 2Ch
		jz	short loc_4DF8F5
		cmp	al, 27h
		jz	short loc_4DF928
		cmp	al, 22h
		jz	short loc_4DF928
		cmp	al, 45h
		jz	short loc_4DF936
		cmp	al, 65h
		jz	short loc_4DF936
		cmp	al, 3Bh
		jz	short loc_4DF96D
		or	al, al
		jz	short loc_4DF96D

loc_4DF91E:				; CODE XREF: .text:004DF940j
		stosb
		jmp	short loc_4DF8F5
; ---------------------------------------------------------------------------

loc_4DF921:				; CODE XREF: .text:004DF8F8j
					; .text:004DF8FCj
		call	loc_4DF973
		jmp	short loc_4DF8F5
; ---------------------------------------------------------------------------

loc_4DF928:				; CODE XREF: .text:004DF908j
					; .text:004DF90Cj
		mov	ah, al

loc_4DF92A:				; CODE XREF: .text:004DF934j
		lodsb
		cmp	al, ah
		jz	short loc_4DF8F5
		or	al, al
		jz	short loc_4DF96D
		stosb
		jmp	short loc_4DF92A
; ---------------------------------------------------------------------------

loc_4DF936:				; CODE XREF: .text:004DF910j
					; .text:004DF914j
		mov	ah, [esi]
		cmp	ah, 2Bh
		jz	short loc_4DF944
		cmp	ah, 2Dh
		jnz	short loc_4DF91E
		xor	ah, ah

loc_4DF944:				; CODE XREF: .text:004DF93Bj
		mov	ecx, 0FFFFFFFFh

loc_4DF949:				; CODE XREF: .text:004DF94Ej
		inc	ecx
		inc	esi
		cmp	byte ptr [esi],	30h
		jz	short loc_4DF949
		cmp	ecx, 4
		jb	short loc_4DF95A
		mov	ecx, 4

loc_4DF95A:				; CODE XREF: .text:004DF953j
		push	ebx
		mov	bl, [ebp-3Dh]
		movsx	edx, word ptr [ebp-40h]
		sub	edx, [ebp-18h]
		call	loc_4DF594
		pop	ebx
		jmp	short loc_4DF8F5
; ---------------------------------------------------------------------------

loc_4DF96D:				; CODE XREF: .text:004DF918j
					; .text:004DF91Cj ...
		mov	eax, edi
		sub	eax, [ebp-4]
		retn
; ---------------------------------------------------------------------------

loc_4DF973:				; CODE XREF: .text:loc_4DF921p
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4DF994
		jl	short loc_4DF987

loc_4DF97B:				; CODE XREF: .text:004DF983j
		call	loc_4DF994
		dec	dword ptr [ebp-28h]
		jnz	short loc_4DF97B
		jmp	short loc_4DF994
; ---------------------------------------------------------------------------

loc_4DF987:				; CODE XREF: .text:004DF979j
		inc	dword ptr [ebp-28h]
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-1Ch]
		jle	short loc_4DF9A4
		jmp	short loc_4DF9D5
; ---------------------------------------------------------------------------

loc_4DF994:				; CODE XREF: .text:004DF977j
					; .text:loc_4DF97Bp ...
		mov	al, [ebx]
		inc	ebx
		or	al, al
		jnz	short loc_4DF9A6
		dec	ebx
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-20h]
		jle	short loc_4DF9D5

loc_4DF9A4:				; CODE XREF: .text:004DF990j
		mov	al, 30h

loc_4DF9A6:				; CODE XREF: .text:004DF999j
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_4DF9B7
		mov	ah, al
		mov	al, byte_61AFCF
		stosw
		jmp	short loc_4DF9D5
; ---------------------------------------------------------------------------

loc_4DF9B7:				; CODE XREF: .text:004DF9AAj
		stosb
		cmp	byte ptr [ebp-8], 0
		jz	short loc_4DF9D5
		mov	eax, [ebp-24h]
		cmp	eax, 1
		jle	short loc_4DF9D5
		mov	dl, 3
		div	dl
		cmp	ah, 1
		jnz	short loc_4DF9D5
		mov	al, byte_61AFCE
		stosb

loc_4DF9D5:				; CODE XREF: .text:004DF992j
					; .text:004DF9A2j ...
		dec	dword ptr [ebp-24h]
		retn
; ---------------------------------------------------------------------------

loc_4DF9D9:				; CODE XREF: .text:004DF479p
					; .text:004DF76Ep
		push	ebp
		mov	ebp, esp
		sub	esp, 1Ah
		push	edi
		push	esi
		push	ebx
		mov	ebx, eax
		mov	esi, edx
		cmp	cl, 0
		jz	short loc_4DF9F2
		call	loc_4DFB07
		jmp	short loc_4DF9F7
; ---------------------------------------------------------------------------

loc_4DF9F2:				; CODE XREF: .text:004DF9E9j
		call	loc_4DFA00

loc_4DF9F7:				; CODE XREF: .text:004DF9F0j
		pop	ebx
		pop	esi
		pop	edi
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4DFA00:				; CODE XREF: .text:loc_4DF9F2p
		mov	ax, [esi+8]
		mov	edx, eax
		and	eax, 7FFFh
		jz	short loc_4DFA2B
		cmp	eax, 7FFFh
		jnz	short loc_4DFA36
		test	word ptr [esi+6], 8000h
		jz	short loc_4DFA2D
		cmp	dword ptr [esi], 0
		jnz	short loc_4DFA2A
		cmp	dword ptr [esi+4], 80000000h
		jz	short loc_4DFA2D

loc_4DFA2A:				; CODE XREF: .text:004DFA1Fj
		inc	eax

loc_4DFA2B:				; CODE XREF: .text:004DFA0Bj
					; .text:004DFAA7j
		xor	edx, edx

loc_4DFA2D:				; CODE XREF: .text:004DFA1Aj
					; .text:004DFA28j
		mov	byte ptr [ebx+3], 0
		jmp	loc_4DFAF8
; ---------------------------------------------------------------------------

loc_4DFA36:				; CODE XREF: .text:004DFA12j
		fld	tbyte ptr [esi]
		sub	eax, 3FFFh
		imul	eax, 4D10h
		sar	eax, 10h
		inc	eax
		mov	[ebp-8], eax
		mov	eax, 12h
		sub	eax, [ebp-8]
		fabs
		call	@System@@Pow10$qqrv ; System::__linkproc__ Pow10(void)
		frndint
		fld	ds:tbyte_4DF424
		fcomp	st(1)
		fstsw	word ptr [ebp-4]
		wait
		test	word ptr [ebp-4], 4100h
		jz	short loc_4DFA79
		fidiv	ds:dword_4DF414
		inc	dword ptr [ebp-8]

loc_4DFA79:				; CODE XREF: .text:004DFA6Ej
		fbstp	tbyte ptr [ebp-1Ah]
		lea	edi, [ebx+3]
		mov	edx, 9
		wait

loc_4DFA85:				; CODE XREF: .text:004DFA98j
		mov	al, [ebp+edx-1Bh]
		mov	ah, al
		shr	al, 4
		and	ah, 0Fh
		add	ax, 3030h
		stosw
		dec	edx
		jnz	short loc_4DFA85
		xor	al, al
		stosb
		mov	edi, [ebp-8]
		add	edi, [ebp+8]
		jns	short loc_4DFAA9
		xor	eax, eax
		jmp	short loc_4DFA2B
; ---------------------------------------------------------------------------

loc_4DFAA9:				; CODE XREF: .text:004DFAA3j
		cmp	edi, [ebp+0Ch]
		jb	short loc_4DFAB1
		mov	edi, [ebp+0Ch]

loc_4DFAB1:				; CODE XREF: .text:004DFAACj
		cmp	edi, 12h
		jnb	short loc_4DFADD
		cmp	byte ptr [ebx+edi+3], 35h
		jb	short loc_4DFAE2

loc_4DFABD:				; CODE XREF: .text:004DFACEj
		mov	byte ptr [ebx+edi+3], 0
		dec	edi
		js	short loc_4DFAD2
		inc	byte ptr [ebx+edi+3]
		cmp	byte ptr [ebx+edi+3], 39h
		ja	short loc_4DFABD
		jmp	short loc_4DFAF1
; ---------------------------------------------------------------------------

loc_4DFAD2:				; CODE XREF: .text:004DFAC3j
		mov	word ptr [ebx+3], 31h
		inc	dword ptr [ebp-8]
		jmp	short loc_4DFAF1
; ---------------------------------------------------------------------------

loc_4DFADD:				; CODE XREF: .text:004DFAB4j
		mov	edi, 12h

loc_4DFAE2:				; CODE XREF: .text:004DFABBj
					; .text:004DFAEFj
		mov	byte ptr [ebx+edi+3], 0
		dec	edi
		js	short loc_4DFB03
		cmp	byte ptr [ebx+edi+3], 30h
		jz	short loc_4DFAE2

loc_4DFAF1:				; CODE XREF: .text:004DFAD0j
					; .text:004DFADBj
		mov	dx, [esi+8]

loc_4DFAF5:				; CODE XREF: .text:004DFB05j
		mov	eax, [ebp-8]

loc_4DFAF8:				; CODE XREF: .text:004DFA31j
		shr	dx, 0Fh
		mov	[ebx], ax
		mov	[ebx+2], dl
		retn
; ---------------------------------------------------------------------------

loc_4DFB03:				; CODE XREF: .text:004DFAE8j
		xor	edx, edx
		jmp	short loc_4DFAF5
; ---------------------------------------------------------------------------

loc_4DFB07:				; CODE XREF: .text:004DF9EBp
		mov	eax, [esi]
		mov	edx, [esi+4]
		mov	ecx, eax
		or	ecx, edx
		jz	loc_4DFBCA
		or	edx, edx
		jns	short loc_4DFB21
		neg	edx
		neg	eax
		sbb	edx, 0

loc_4DFB21:				; CODE XREF: .text:004DFB18j
		xor	ecx, ecx
		mov	edi, [ebp+8]
		or	edi, edi
		jge	short loc_4DFB2C
		xor	edi, edi

loc_4DFB2C:				; CODE XREF: .text:004DFB28j
		cmp	edi, 4
		jl	short loc_4DFB50
		mov	edi, 4

loc_4DFB36:				; CODE XREF: .text:004DFB42j
		inc	ecx
		sub	eax, 0A7640000h
		sbb	edx, 0DE0B6B3h
		jnb	short loc_4DFB36
		dec	ecx
		add	eax, 0A7640000h
		adc	edx, 0DE0B6B3h

loc_4DFB50:				; CODE XREF: .text:004DFB2Fj
		mov	[ebp-10h], eax
		mov	[ebp-0Ch], edx
		fild	qword ptr [ebp-10h]
		mov	edx, edi
		mov	eax, 4
		sub	eax, edx
		jz	short loc_4DFB6B
		fidiv	dword ptr ds:(asc_4DF3FF+11h)[eax*4]

loc_4DFB6B:				; CODE XREF: .text:004DFB62j
		fbstp	tbyte ptr [ebp-1Ah]
		lea	edi, [ebx+3]
		wait
		or	ecx, ecx
		jnz	short loc_4DFB91
		mov	ecx, 9

loc_4DFB7B:				; CODE XREF: .text:004DFB8Dj
		mov	al, [ebp+ecx-1Bh]
		mov	ah, al
		shr	al, 4
		jnz	short loc_4DFBA4
		mov	al, ah
		and	al, 0Fh
		jnz	short loc_4DFBAB
		dec	ecx
		jnz	short loc_4DFB7B
		jmp	short loc_4DFBCA
; ---------------------------------------------------------------------------

loc_4DFB91:				; CODE XREF: .text:004DFB74j
		mov	al, cl
		add	al, 30h
		stosb
		mov	ecx, 9

loc_4DFB9B:				; CODE XREF: .text:004DFBAFj
		mov	al, [ebp+ecx-1Bh]
		mov	ah, al
		shr	al, 4

loc_4DFBA4:				; CODE XREF: .text:004DFB84j
		add	al, 30h
		stosb
		mov	al, ah
		and	al, 0Fh

loc_4DFBAB:				; CODE XREF: .text:004DFB8Aj
		add	al, 30h
		stosb
		dec	ecx
		jnz	short loc_4DFB9B
		mov	eax, edi
		lea	ecx, [ebx+edx+3]
		sub	eax, ecx

loc_4DFBB9:				; CODE XREF: .text:004DFBC0j
		mov	byte ptr [edi],	0
		dec	edi
		cmp	byte ptr [edi],	30h
		jz	short loc_4DFBB9
		mov	edx, [esi+4]
		shr	edx, 1Fh
		jmp	short loc_4DFBD1
; ---------------------------------------------------------------------------

loc_4DFBCA:				; CODE XREF: .text:004DFB10j
					; .text:004DFB8Fj
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+3], al

loc_4DFBD1:				; CODE XREF: .text:004DFBC8j
		mov	[ebx], ax
		mov	[ebx+2], dl
		retn
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		sub	esp, 6
		push	edi
		push	esi
		push	ebx
		mov	esi, eax
		mov	edi, edx
		mov	ebx, ecx
		fstcw	word ptr [ebp-6]
		fclex
		fldcw	ds:word_4DF42E
		fldz
		call	loc_4DFC83
		mov	bh, [esi]
		cmp	bh, 2Bh
		jz	short loc_4DFC07
		cmp	bh, 2Dh
		jnz	short loc_4DFC08

loc_4DFC07:				; CODE XREF: .text:004DFC00j
		inc	esi

loc_4DFC08:				; CODE XREF: .text:004DFC05j
		mov	ecx, esi
		call	loc_4DFC8E
		xor	edx, edx
		mov	al, [esi]
		cmp	al, byte_61AFCF
		jnz	short loc_4DFC23
		inc	esi
		call	loc_4DFC8E
		neg	edx

loc_4DFC23:				; CODE XREF: .text:004DFC19j
		cmp	ecx, esi
		jz	short loc_4DFC71
		mov	al, [esi]
		and	al, 0DFh
		cmp	al, 45h
		jnz	short loc_4DFC39
		inc	esi
		push	edx
		call	loc_4DFCAA
		pop	eax
		add	edx, eax

loc_4DFC39:				; CODE XREF: .text:004DFC2Dj
		call	loc_4DFC83
		cmp	byte ptr [esi],	0
		jnz	short loc_4DFC71
		mov	eax, edx
		cmp	bl, 1
		jnz	short loc_4DFC4D
		add	eax, 4

loc_4DFC4D:				; CODE XREF: .text:004DFC48j
		call	@System@@Pow10$qqrv ; System::__linkproc__ Pow10(void)
		cmp	bh, 2Dh
		jnz	short loc_4DFC59
		fchs

loc_4DFC59:				; CODE XREF: .text:004DFC55j
		cmp	bl, 0
		jz	short loc_4DFC62
		fistp	qword ptr [edi]
		jmp	short loc_4DFC64
; ---------------------------------------------------------------------------

loc_4DFC62:				; CODE XREF: .text:004DFC5Cj
		fstp	tbyte ptr [edi]

loc_4DFC64:				; CODE XREF: .text:004DFC60j
		fstsw	ax
		test	ax, 9
		jnz	short loc_4DFC73
		mov	al, 1
		jmp	short loc_4DFC75
; ---------------------------------------------------------------------------

loc_4DFC71:				; CODE XREF: .text:004DFC25j
					; .text:004DFC41j
		fstp	st

loc_4DFC73:				; CODE XREF: .text:004DFC6Bj
		xor	eax, eax

loc_4DFC75:				; CODE XREF: .text:004DFC6Fj
		fclex
		fldcw	word ptr [ebp-6]
		wait
		pop	ebx
		pop	esi
		pop	edi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DFC83:				; CODE XREF: .text:004DFBF6p
					; .text:loc_4DFC39p ...
		lodsb
		or	al, al
		jz	short loc_4DFC8C
		cmp	al, 20h
		jz	short loc_4DFC83

loc_4DFC8C:				; CODE XREF: .text:004DFC86j
		dec	esi
		retn
; ---------------------------------------------------------------------------

loc_4DFC8E:				; CODE XREF: .text:004DFC0Ap
					; .text:004DFC1Cp
		xor	eax, eax
		xor	edx, edx

loc_4DFC92:				; CODE XREF: .text:004DFCA6j
		lodsb
		sub	al, 3Ah
		add	al, 0Ah
		jnb	short loc_4DFCA8
		fimul	ds:dword_4DF414
		mov	[ebp-4], eax
		fiadd	dword ptr [ebp-4]
		inc	edx
		jmp	short loc_4DFC92
; ---------------------------------------------------------------------------

loc_4DFCA8:				; CODE XREF: .text:004DFC97j
		dec	esi
		retn
; ---------------------------------------------------------------------------

loc_4DFCAA:				; CODE XREF: .text:004DFC31p
		xor	eax, eax
		xor	edx, edx
		mov	cl, [esi]
		cmp	cl, 2Bh
		jz	short loc_4DFCBA
		cmp	cl, 2Dh
		jnz	short loc_4DFCBB

loc_4DFCBA:				; CODE XREF: .text:004DFCB3j
		inc	esi

loc_4DFCBB:				; CODE XREF: .text:004DFCB8j
					; .text:004DFCCFj
		mov	al, [esi]
		sub	al, 3Ah
		add	al, 0Ah
		jnb	short loc_4DFCD1
		inc	esi
		imul	edx, 0Ah
		add	edx, eax
		cmp	edx, 1F4h
		jb	short loc_4DFCBB

loc_4DFCD1:				; CODE XREF: .text:004DFCC1j
		cmp	cl, 2Dh
		jnz	short locret_4DFCD8
		neg	edx

locret_4DFCD8:				; CODE XREF: .text:004DFCD4j
		retn
; ---------------------------------------------------------------------------
		align 4
off_4DFCDC	dd offset byte_4DFCE0	; DATA XREF: .text:004DF314o
					; Borland Visual Component Library & Packages
byte_4DFCE0	db 0Ah			; DATA XREF: .text:off_4DFCDCo
					; LString
		db 9,'TFileName'
		align 4
off_4DFCEC	dd offset _cls_SysUtils_Exception ; DATA XREF: .text:004DFD7Co
					; .text:004DFE34o ...
		dd 2 dup(0)
		dd offset _cls_SysUtils_Exception
		dd 4 dup(0)
		dd offset aException	; "Exception"
		dd 0Ch
		dd offset off_4E3904
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
_cls_SysUtils_Exception	dw 0Eh		; DATA XREF: .text:004DF3BFo
					; .text:off_4DFCECo ...
		dw 0
		dw 0
		dw 1
		dw 0
		dd offset @$xp$13System@String ; `__DPdsc__'[System::String]
		dw 4
		dw 0
aException	db 9,'Exception'        ; DATA XREF: .text:004DFD0Co
off_4DFD54	dd offset aEheapexception ; DATA XREF: .text:004DFDD8o
					; .text:004E0260o
					; "EHeapException"
		dd 7 dup(0)
		dd offset aEheapexception ; "EHeapException"
		dd 10h
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset loc_4E1730
		dd offset loc_4E5148
aEheapexception	db 14,'EHeapException'  ; DATA XREF: .text:off_4DFD54o
					; .text:004DFD74o
		align 10h
off_4DFDB0	dd offset aEoutofmemory	; DATA XREF: .text:004E1CB7r
					; "EOutOfMemory"
		dd 7 dup(0)
		dd offset aEoutofmemory	; "EOutOfMemory"
		dd 10h
		dd offset off_4DFD54
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset loc_4E1730
		dd offset loc_4E5148
aEoutofmemory	db 12,'EOutOfMemory'    ; DATA XREF: .text:off_4DFDB0o
					; .text:004DFDD0o
		align 4
off_4DFE0C	dd offset aEinouterror	; DATA XREF: .text:004E1789r
					; .text:004E17A8r
					; "EInOutError"
		dd 7 dup(0)
		dd offset aEinouterror	; "EInOutError"
		dd 10h
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEinouterror	db 11,'EInOutError'     ; DATA XREF: .text:off_4DFE0Co
					; .text:004DFE2Co
off_4DFE64	dd offset aEexternal	; DATA XREF: .text:004DFEE4o
					; .text:004DFF44o ...
					; "EExternal"
		dd 7 dup(0)
		dd offset aEexternal	; "EExternal"
		dd 10h
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEexternal	db 9,'EExternal'        ; DATA XREF: .text:off_4DFE64o
					; .text:004DFE84o
		align 4
off_4DFEBC	dd offset aEexternalexcep ; DATA XREF: .text:004E1C06r
					; "EExternalException"
		dd 7 dup(0)
		dd offset aEexternalexcep ; "EExternalException"
		dd 10h
		dd offset off_4DFE64
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEexternalexcep	db 18,'EExternalException' ; DATA XREF: .text:off_4DFEBCo
					; .text:004DFEDCo ...
		align 4
off_4DFF1C	dd offset aEinterror	; DATA XREF: .text:004DFF9Co
					; .text:004DFFF4o ...
					; "EIntError"
		dd 7 dup(0)
		dd offset aEinterror	; "EIntError"
		dd 10h
		dd offset off_4DFE64
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEinterror	db 9,'EIntError'        ; DATA XREF: .text:off_4DFF1Co
					; .text:004DFF3Co
		align 4
; Sysutils::EIntError *off_4DFF74
off_4DFF74	dd offset aEdivbyzero_0	; DATA XREF: .text:004F15BAr
					; "EDivByZero"
		dd 7 dup(0)
		dd offset aEdivbyzero_0	; "EDivByZero"
		dd 10h
		dd offset off_4DFF1C
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEdivbyzero_0	db 10,'EDivByZero'      ; DATA XREF: .text:off_4DFF74o
					; .text:004DFF94o ...
		align 4
; Sysutils::EIntError *off_4DFFCC
off_4DFFCC	dd offset aErangeerror_0 ; DATA	XREF: .text:004F15F6r
					; "ERangeError"
		dd 7 dup(0)
		dd offset aErangeerror_0 ; "ERangeError"
		dd 10h
		dd offset off_4DFF1C
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aErangeerror_0	db 11,'ERangeError'     ; DATA XREF: .text:off_4DFFCCo
					; .text:004DFFECo ...
; Sysutils::EIntError *off_4E0024
off_4E0024	dd offset aEintoverflow_0 ; DATA XREF: .text:004F1632r
					; "EIntOverflow"
dword_4E0028	dd 7 dup(0)
off_4E0044	dd offset aEintoverflow_0 ; "EIntOverflow"
dword_4E0048	dd 10h
off_4E004C	dd offset off_4DFF1C
off_4E0050	dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
off_4E0054	dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEintoverflow_0	db 12,'EIntOverflow'    ; DATA XREF: .text:off_4E0024o
					; .text:off_4E0044o ...
		db 3 dup(90h)
off_4E0080	dd offset aEmatherror	; DATA XREF: .text:004E0100o
					; .text:004E0158o ...
					; "EMathError"
		dd 7 dup(0)
		dd offset aEmatherror	; "EMathError"
		dd 10h
		dd offset off_4DFE64
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEmatherror	db 10,'EMathError'      ; DATA XREF: .text:off_4E0080o
					; .text:004E00A0o
		align 4
; Sysutils::EIntError *off_4E00D8
off_4E00D8	dd offset aEinvalidop_0	; DATA XREF: .text:004F166Er
					; "EInvalidOp"
		dd 7 dup(0)
		dd offset aEinvalidop_0	; "EInvalidOp"
		dd 10h
		dd offset off_4E0080
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEinvalidop_0	db 10,'EInvalidOp'      ; DATA XREF: .text:off_4E00D8o
					; .text:004E00F8o ...
		align 10h
; Sysutils::EIntError *off_4E0130
off_4E0130	dd offset aEzerodivide_0 ; DATA	XREF: .text:004F16AAr
					; "EZeroDivide"
		dd 7 dup(0)
		dd offset aEzerodivide_0 ; "EZeroDivide"
		dd 10h
		dd offset off_4E0080
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEzerodivide_0	db 11,'EZeroDivide'     ; DATA XREF: .text:off_4E0130o
					; .text:004E0150o ...
; Sysutils::EIntError *off_4E0188
off_4E0188	dd offset aEoverflow_0	; DATA XREF: .text:004F16E6r
					; "EOverflow"
		dd 7 dup(0)
		dd offset aEoverflow_0	; "EOverflow"
		dd 10h
		dd offset off_4E0080
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEoverflow_0	db 9,'EOverflow'        ; DATA XREF: .text:off_4E0188o
					; .text:004E01A8o ...
		align 10h
; Sysutils::EIntError *off_4E01E0
off_4E01E0	dd offset aEunderflow_0	; DATA XREF: .text:004F1722r
					; "EUnderflow"
		dd 7 dup(0)
		dd offset aEunderflow_0	; "EUnderflow"
		dd 10h
		dd offset off_4E0080
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEunderflow_0	db 10,'EUnderflow'      ; DATA XREF: .text:off_4E01E0o
					; .text:004E0200o ...
		align 4
off_4E0238	dd offset aEinvalidpointe ; DATA XREF: .text:004E1CD8r
					; "EInvalidPointer"
		dd 7 dup(0)
		dd offset aEinvalidpointe ; "EInvalidPointer"
		dd 10h
		dd offset off_4DFD54
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset loc_4E1730
		dd offset loc_4E5148
aEinvalidpointe	db 15,'EInvalidPointer' ; DATA XREF: .text:off_4E0238o
					; .text:004E0258o
		dd offset aEinvalidcast	; "EInvalidCast"
		dd 7 dup(0)
		dd offset aEinvalidcast	; "EInvalidCast"
		dd 0Ch
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEinvalidcast	db 12,'EInvalidCast'    ; DATA XREF: .text:004E0294o
					; .text:004E02B4o ...
		align 10h
off_4E02F0	dd offset aEconverterror ; DATA	XREF: .text:004E06C5r
					; "EConvertError"
		dd 7 dup(0)
		dd offset aEconverterror ; "EConvertError"
		dd 0Ch
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEconverterror	db 13,'EConvertError'   ; DATA XREF: .text:off_4E02F0o
					; .text:004E0310o
		align 4
; Sysutils::EExternal *off_4E034C
off_4E034C	dd offset aEaccessviola_0 ; DATA XREF: .text:004E1ADAr
					; .text:004E1B36r ...
					; "EAccessViolation"
		dd 7 dup(0)
		dd offset aEaccessviola_0 ; "EAccessViolation"
		dd 10h
		dd offset off_4DFE64
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEaccessviola_0	db 16,'EAccessViolation' ; DATA XREF: .text:off_4E034Co
					; .text:004E036Co ...
		align 4
; Sysutils::EExternal *off_4E03AC
off_4E03AC	dd offset aEprivilege_0	; DATA XREF: .text:004F179Ar
					; "EPrivilege"
		dd 7 dup(0)
		dd offset aEprivilege_0	; "EPrivilege"
		dd 10h
		dd offset off_4DFE64
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEprivilege_0	db 10,'EPrivilege'      ; DATA XREF: .text:off_4E03ACo
					; .text:004E03CCo ...
		align 4
; Sysutils::EExternal *off_4E0404
off_4E0404	dd offset aEstackoverfl_0 ; DATA XREF: .text:004F180Fr
					; "EStackOverflow"
		dd 7 dup(0)
		dd offset aEstackoverfl_0 ; "EStackOverflow"
		dd 10h
		dd offset off_4DFE64
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEstackoverfl_0	db 14,'EStackOverflow'  ; DATA XREF: .text:off_4E0404o
					; .text:004E0424o ...
		align 10h
; Sysutils::EExternal *off_4E0460
off_4E0460	dd offset aEcontrolc_0	; DATA XREF: .text:004F17D6r
					; "EControlC"
dd 7 dup(0)	; 
		dd offset aEcontrolc_0	; "EControlC"
		dd 10h
		dd offset off_4DFE64
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEcontrolc_0	db 9,'EControlC'        ; DATA XREF: .text:off_4E0460o
					; .text:004E0480o ...
		align 4
		dd offset aEvarianterror ; "EVariantError"
		dd 7 dup(0)
		dd offset aEvarianterror ; "EVariantError"
		dd 0Ch
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEvarianterror	db 13,'EVariantError'   ; DATA XREF: .text:004E04B8o
					; .text:004E04D8o ...
		align 4
off_4E0514	dd offset aEassertionfail ; DATA XREF: .text:004E1892r
					; "EAssertionFailed"
		dd 7 dup(0)
		dd offset aEassertionfail ; "EAssertionFailed"
		dd 0Ch
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEassertionfail	db 16,'EAssertionFailed' ; DATA XREF: .text:off_4E0514o
					; .text:004E0534o ...
		align 4
off_4E0574	dd offset aEabstracterror ; DATA XREF: .text:004E1910r
					; "EAbstractError"
		dd 7 dup(0)
		dd offset aEabstracterror ; "EAbstractError"
		dd 0Ch
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEabstracterror	db 14,'EAbstractError'  ; DATA XREF: .text:off_4E0574o
					; .text:004E0594o
		align 10h
		dd offset aEintfcasterror ; "EIntfCastError"
		dd 7 dup(0)
		dd offset aEintfcasterror ; "EIntfCastError"
		dd 0Ch
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEintfcasterror	db 14,'EIntfCastError'  ; DATA XREF: .text:004E05D0o
					; .text:004E05F0o ...
		align 4
		dd offset aEsafecallexcep ; "ESafecallException"
		dd 7 dup(0)
		dd offset aEsafecallexcep ; "ESafecallException"
		dd 0Ch
		dd offset off_4DFCEC
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
aEsafecallexcep	db 18,'ESafecallException' ; DATA XREF: .text:004E062Co
					; .text:004E064Co ...
		align 4
_str_$	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .data:off_5798A0o
		dd 1			; Len
		db '$',0                ; Text
		align 4

; SysUtils::_16482
@SysUtils@_16482:			; CODE XREF: .text:004E0948p
		push	ebp
		mov	ebp, esp
		push	0
		push	ebx
		push	esi
		push	edi
		mov	edi, ecx
		mov	esi, edx
		mov	ebx, eax
		xor	eax, eax
		push	ebp
		push	offset loc_4E06EA
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		push	esi
		push	edi
		lea	edx, [ebp-4]
		mov	eax, ebx
		call	@System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
		mov	ecx, [ebp-4]
		mov	dl, 1
		mov	eax, ds:off_4E02F0
		call	@Psock@TPowersock@$bctr$qqrp18Classes@TComponent ; Psock::TPowersock::TPowersock(Classes::TComponent *)
		call	@System@@RaiseExcept$qqrv ; System::__linkproc__ RaiseExcept(void)
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E06F1

loc_4E06E1:				; CODE XREF: .text:004E06EFj
		lea	eax, [ebp-4]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E06EA:				; DATA XREF: .text:004E06A9o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E06E1
; ---------------------------------------------------------------------------

loc_4E06F1:				; CODE XREF: .text:004E06E9j
					; DATA XREF: .text:004E06DCo
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E06F8:				; CODE XREF: .text:004E10CAp
					; .text:004E1138p ...
		push	ebx
		push	ecx
		mov	ebx, edx
		mov	edx, esp
		call	unknown_libname_60 ; Borland Visual Component Library &	Packages
		cmp	dword ptr [esp], 0
		jz	short loc_4E070B
		mov	eax, ebx

loc_4E070B:				; CODE XREF: .text:004E0707j
		pop	edx
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E0710:				; CODE XREF: .text:004E076Ep
		push	ebx
		push	esi
		push	edi
		push	ebp
		mov	esi, edx
		mov	ebx, eax
		mov	eax, esi
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		mov	edi, eax
		mov	eax, ebx
		call	unknown_libname_78 ; Borland Visual Component Library &	Packages
		mov	ebp, eax
		test	edi, edi
		jle	short loc_4E0756

loc_4E072E:				; CODE XREF: .text:004E0754j
		mov	bl, [esi+edi-1]
		test	bl, bl
		jz	short loc_4E0751
		mov	edx, ebx	; char
		mov	eax, ebp	; char *
		call	@Sysutils@StrScan$qqrpxcc ; Sysutils::StrScan(char *,char)
		test	eax, eax
		jz	short loc_4E0751
		mov	edx, edi
		mov	eax, esi
		call	loc_4E1E98
		cmp	al, 2
		jnz	short loc_4E0756
		dec	edi

loc_4E0751:				; CODE XREF: .text:004E0734j
					; .text:004E0741j
		dec	edi
		test	edi, edi
		jg	short loc_4E072E

loc_4E0756:				; CODE XREF: .text:004E072Cj
					; .text:004E074Ej
		mov	eax, edi
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __fastcall Sysutils::ExtractFileName(const int	System::AnsiString)
@Sysutils@ExtractFileName$qqrx17System@AnsiString: ; CODE XREF:	.text:004E1A84p
		push	ebx
		push	esi
		push	edi
		mov	edi, edx
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, offset _str___.Text
		call	loc_4E0710
		mov	esi, eax
		push	edi
		lea	edx, [esi+1]
		mov	ecx, 7FFFFFFFh
		mov	eax, ebx
		call	@System@@LStrCopy$qqrv ; System::__linkproc__ LStrCopy(void)
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4
_str___ label _strings		
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E0769o
		dd 2			; Len
		db '\:',0               ; Text
		align 4

; int __stdcall	SysUtils::_16645(LPCSTR	lpRootPathName,	int, int, int)
@SysUtils@_16645:			; DATA XREF: .text:004E23B6o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_4E07A8
		xor	eax, eax

loc_4E07A8:				; CODE XREF: .text:004E07A4j
		lea	edx, [ebp-10h]
		push	edx		; lpTotalNumberOfClusters
		lea	edx, [ebp-0Ch]
		push	edx		; lpNumberOfFreeClusters
		lea	edx, [ebp-8]
		push	edx		; lpBytesPerSector
		lea	edx, [ebp-4]
		push	edx		; lpSectorsPerCluster
		push	eax		; lpRootPathName
		call	GetDiskFreeSpaceA
		mov	ebx, eax
		mov	eax, [ebp-4]
		imul	dword ptr [ebp-8]
		xor	edx, edx
		mov	[ebp-18h], eax
		mov	[ebp-14h], edx
		mov	eax, [ebp-0Ch]
		xor	edx, edx
		push	edx
		push	eax
		mov	eax, [ebp-18h]
		mov	edx, [ebp-14h]
		call	@System@@_llmul$qqrv ; System::__linkproc__ _llmul(void)
		mov	ecx, [ebp+0Ch]
		mov	[ecx], eax
		mov	[ecx+4], edx
		mov	eax, [ebp-10h]
		xor	edx, edx
		push	edx
		push	eax
		mov	eax, [ebp-18h]
		mov	edx, [ebp-14h]
		call	@System@@_llmul$qqrv ; System::__linkproc__ _llmul(void)
		mov	ecx, [ebp+10h]
		mov	[ecx], eax
		mov	[ecx+4], edx
		mov	eax, ebx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::StrLen(const char	*)
@Sysutils@StrLen$qqrpxc:		; CODE XREF: .text:004E0D7Ap
					; .text:004E149Dp ...
		mov	edx, edi
		mov	edi, eax
		mov	ecx, 0FFFFFFFFh
		xor	al, al
		repne scasb
		mov	eax, 0FFFFFFFEh
		sub	eax, ecx
		mov	edi, edx
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::StrMove(char *, const char *, unsigned int)
@Sysutils@StrMove$qqrpcpxcui:		; CODE XREF: .text:004E0927p
		push	esi
		push	edi
		mov	esi, edx
		mov	edi, eax
		mov	edx, ecx
		cmp	edi, esi
		ja	short loc_4E0841
		jz	short loc_4E085D
		shr	ecx, 2
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_4E0841:				; CODE XREF: .text:004E082Ej
		lea	esi, [esi+ecx-1]
		lea	edi, [edi+ecx-1]
		and	ecx, 3
		std
		rep movsb
		sub	esi, 3
		sub	edi, 3
		mov	ecx, edx
		shr	ecx, 2
		rep movsd
		cld

loc_4E085D:				; CODE XREF: .text:004E0830j
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

; _DWORD __fastcall Sysutils::StrLCopy(char *, const char *, unsigned int)
@Sysutils@StrLCopy$qqrpcpxcui:		; CODE XREF: .text:004E1471p
		push	edi
		push	esi
		push	ebx
		mov	esi, eax
		mov	edi, edx
		mov	ebx, ecx
		xor	al, al
		test	ecx, ecx
		jz	short loc_4E0874
		repne scasb
		jnz	short loc_4E0874
		inc	ecx

loc_4E0874:				; CODE XREF: .text:004E086Dj
					; .text:004E0871j
		sub	ebx, ecx
		mov	edi, esi
		mov	esi, edx
		mov	edx, edi
		mov	ecx, ebx
		shr	ecx, 2
		rep movsd
		mov	ecx, ebx
		and	ecx, 3
		rep movsb
		stosb
		mov	eax, edx
		pop	ebx
		pop	esi
		pop	edi
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::StrLIComp(const char *, const char *, unsigned int)
@Sysutils@StrLIComp$qqrpxct1ui:		; CODE XREF: .text:004E12B5p
					; .text:004E12DBp ...
		push	edi
		push	esi
		push	ebx
		mov	edi, edx
		mov	esi, eax
		mov	ebx, ecx
		xor	eax, eax
		or	ecx, ecx
		jz	short loc_4E08D5
		repne scasb
		sub	ebx, ecx
		mov	ecx, ebx
		mov	edi, edx
		xor	edx, edx

loc_4E08AD:				; CODE XREF: .text:004E08D3j
		repe cmpsb
		jz	short loc_4E08D5
		mov	al, [esi-1]
		cmp	al, 61h
		jb	short loc_4E08C1
		cmp	al, 7Ah
		ja	short loc_4E08C1
		sub	al, 20h

loc_4E08C1:				; CODE XREF: .text:004E08B7j
					; .text:004E08BCj
		mov	dl, [edi-1]
		cmp	dl, 61h
		jb	short loc_4E08D1
		cmp	dl, 7Ah
		ja	short loc_4E08D1
		sub	dl, 20h

loc_4E08D1:				; CODE XREF: .text:004E08C7j
					; .text:004E08CCj
		sub	eax, edx
		jz	short loc_4E08AD

loc_4E08D5:				; CODE XREF: .text:004E08A1j
					; .text:004E08AFj
		pop	ebx
		pop	esi
		pop	edi
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::StrScan(const char *, char)
@Sysutils@StrScan$qqrpxcc:		; CODE XREF: .text:004E073Ap
					; .text:004E1F07p ...
		push	edi
		push	eax
		mov	edi, eax
		mov	ecx, 0FFFFFFFFh
		xor	al, al
		repne scasb
		not	ecx
		pop	edi
		mov	al, dl
		repne scasb
		mov	eax, 0
		jnz	short loc_4E08FA
		mov	eax, edi
		dec	eax

loc_4E08FA:				; CODE XREF: .text:004E08F5j
		pop	edi
		retn
; ---------------------------------------------------------------------------

; SysUtils::_16680
@SysUtils@_16680:			; CODE XREF: .text:004E0B19p
		push	ebx
		push	esi
		push	edi
		add	esp, 0FFFFFFD8h
		mov	ebx, ecx
		mov	esi, edx
		mov	edi, eax
		cmp	ebx, 1Fh
		jbe	short loc_4E0912
		mov	ebx, 1Fh

loc_4E0912:				; CODE XREF: .text:004E090Bj
		mov	edx, ebx
		dec	edx
		mov	eax, esi
		call	unknown_libname_45 ; Borland Visual Component Library &	Packages
		cmp	al, 1
		jnz	short loc_4E0921
		dec	ebx

loc_4E0921:				; CODE XREF: .text:004E091Ej
		mov	eax, esp	; char *
		mov	ecx, ebx	; unsigned int
		mov	edx, esi	; char *
		call	@Sysutils@StrMove$qqrpcpxcui ; Sysutils::StrMove(char *,char *,uint)
		mov	byte ptr [esp+ebx], 0
		mov	eax, esp
		mov	[esp+20h], eax
		mov	byte ptr [esp+24h], 6
		lea	edx, [esp+20h]
		mov	eax, off_5798A4[edi*4]
		xor	ecx, ecx
		call	@SysUtils@_16482 ; SysUtils::_16482
		add	esp, 28h
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E0954:				; CODE XREF: .text:004E0C44p
		push	ebx
		push	esi
		mov	esi, edx
		mov	ebx, eax
		mov	eax, ebx
		mov	edx, esi
		call	@System@@VarToLStr$qqrr17System@AnsiStringrx14System@Variant ; System::__linkproc__ VarToLStr(System::AnsiString &,System::Variant &)
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E0968:				; CODE XREF: .text:004E0A47p
		push	ebx
		mov	ebx, eax
		mov	eax, ebx
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; __fastcall Sysutils::FormatBuf(void *, unsigned int, void const *, unsigned int, System::TVarRec const *, const int)
@Sysutils@FormatBuf$qqrpvuipxvuipx14System@TVarRecxi: ;	CODE XREF: .text:004E0D8Ep
					; .text:004E0E09p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF8Ch
		push	ebx
		xor	ebx, ebx
		mov	[ebp-10h], ebx
		push	ebx
		push	esi
		push	edi
		mov	edi, eax
		mov	esi, ecx
		add	ecx, [ebp+10h]
		mov	[ebp-4], edi
		xor	eax, eax
		mov	[ebp-8], eax
		mov	[ebp-0Ch], eax
		mov	[ebp-10h], eax

loc_4E0998:				; CODE XREF: .text:004E0A51j
		or	edx, edx
		jz	short loc_4E09AA

loc_4E099C:				; CODE XREF: .text:004E09A8j
		cmp	esi, ecx
		jz	short loc_4E09AA
		lodsb
		cmp	al, 25h
		jz	short loc_4E09B4

loc_4E09A6:				; CODE XREF: .text:004E09BCj
		stosb
		dec	edx
		jnz	short loc_4E099C

loc_4E09AA:				; CODE XREF: .text:004E099Aj
					; .text:004E099Ej ...
		mov	eax, edi
		sub	eax, [ebp-4]
		jmp	loc_4E0D5C
; ---------------------------------------------------------------------------

loc_4E09B4:				; CODE XREF: .text:004E09A4j
		cmp	esi, ecx
		jz	short loc_4E09AA
		lodsb
		cmp	al, 25h
		jz	short loc_4E09A6
		lea	ebx, [esi-2]
		mov	[ebp-14h], ebx

loc_4E09C4:				; CODE XREF: .text:004E09E3j
		mov	[ebp-15h], al
		cmp	al, 2Dh
		jnz	short loc_4E09D1
		cmp	esi, ecx
		jz	short loc_4E09AA
		lodsb

loc_4E09D1:				; CODE XREF: .text:004E09CAj
		call	loc_4E0A56
		cmp	al, 3Ah
		jnz	short loc_4E09E5
		mov	[ebp-8], ebx
		cmp	esi, ecx
		jz	short loc_4E09AA
		lodsb
		jmp	short loc_4E09C4
; ---------------------------------------------------------------------------

loc_4E09E5:				; CODE XREF: .text:004E09D9j
		mov	[ebp-1Ch], ebx
		mov	ebx, 0FFFFFFFFh
		cmp	al, 2Eh
		jnz	short loc_4E09FC
		cmp	esi, ecx
		jz	short loc_4E09AA
		lodsb
		call	loc_4E0A56

loc_4E09FC:				; CODE XREF: .text:004E09F0j
		mov	[ebp-20h], ebx
		mov	[ebp-24h], esi
		push	ecx
		push	edx
		call	loc_4E0A9F
		pop	edx
		mov	ebx, [ebp-1Ch]
		sub	ebx, ecx
		jnb	short loc_4E0A13
		xor	ebx, ebx

loc_4E0A13:				; CODE XREF: .text:004E0A0Fj
		cmp	byte ptr [ebp-15h], 2Dh
		jnz	short loc_4E0A23
		sub	edx, ecx
		jnb	short loc_4E0A21
		add	ecx, edx
		xor	edx, edx

loc_4E0A21:				; CODE XREF: .text:004E0A1Bj
		rep movsb

loc_4E0A23:				; CODE XREF: .text:004E0A17j
		xchg	ecx, ebx
		sub	edx, ecx
		jnb	short loc_4E0A2D
		add	ecx, edx
		xor	edx, edx

loc_4E0A2D:				; CODE XREF: .text:004E0A27j
		mov	al, 20h
		rep stosb
		xchg	ecx, ebx
		sub	edx, ecx
		jnb	short loc_4E0A3B
		add	ecx, edx
		xor	edx, edx

loc_4E0A3B:				; CODE XREF: .text:004E0A35j
		rep movsb
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4E0A4D
		push	edx
		lea	eax, [ebp-0Ch]
		call	loc_4E0968
		pop	edx

loc_4E0A4D:				; CODE XREF: .text:004E0A41j
		pop	ecx
		mov	esi, [ebp-24h]
		jmp	loc_4E0998
; ---------------------------------------------------------------------------

loc_4E0A56:				; CODE XREF: .text:loc_4E09D1p
					; .text:004E09F7p
		xor	ebx, ebx
		cmp	al, 2Ah
		jz	short loc_4E0A7F

loc_4E0A5D:				; CODE XREF: .text:004E0A77j
		cmp	al, 30h
		jb	short locret_4E0A9E
		cmp	al, 39h
		ja	short locret_4E0A9E
		imul	ebx, 0Ah
		sub	al, 30h
		movzx	eax, al
		add	ebx, eax
		cmp	esi, ecx
		jz	short loc_4E0A79
		lodsb
		jmp	short loc_4E0A5D
; ---------------------------------------------------------------------------

loc_4E0A79:				; CODE XREF: .text:004E0A74j
					; .text:004E0A9Bj
		pop	eax
		jmp	loc_4E09AA
; ---------------------------------------------------------------------------

loc_4E0A7F:				; CODE XREF: .text:004E0A5Bj
		mov	eax, [ebp-8]
		cmp	eax, [ebp+8]
		ja	short loc_4E0A99
		inc	dword ptr [ebp-8]
		mov	ebx, [ebp+0Ch]
		cmp	byte ptr [ebx+eax*8+4],	0
		mov	ebx, [ebx+eax*8]
		jz	short loc_4E0A99
		xor	ebx, ebx

loc_4E0A99:				; CODE XREF: .text:004E0A85j
					; .text:004E0A95j
		cmp	esi, ecx
		jz	short loc_4E0A79
		lodsb

locret_4E0A9E:				; CODE XREF: .text:004E0A60j
					; .text:004E0A65j
		retn
; ---------------------------------------------------------------------------

loc_4E0A9F:				; CODE XREF: .text:004E0A04p
		and	al, 0DFh
		mov	cl, al
		mov	eax, 1
		mov	ebx, [ebp-8]
		cmp	ebx, [ebp+8]
		ja	short loc_4E0B0C
		inc	dword ptr [ebp-8]
		mov	esi, [ebp+0Ch]
		lea	esi, [esi+ebx*8]
		mov	eax, [esi]
		movzx	ebx, byte ptr [esi+4]
		jmp	ds:off_4E0AC6[ebx*4]
; ---------------------------------------------------------------------------
off_4E0AC6	dd offset loc_4E0BBA	; DATA XREF: .text:004E0ABFr
		dd offset loc_4E0B0A
		dd offset loc_4E0C21
		dd offset loc_4E0CDF
		dd offset loc_4E0C51
		dd offset loc_4E0CC1
		dd offset loc_4E0CA1
		dd offset loc_4E0B0A
		dd offset loc_4E0B0A
		dd offset loc_4E0B0A
		dd offset loc_4E0C62
		dd offset loc_4E0C85
		dd offset loc_4E0CDB
		dd offset loc_4E0C30
		dd offset loc_4E0B0A
		dd offset loc_4E0C69
		dd offset loc_4E0B1E
; ---------------------------------------------------------------------------

loc_4E0B0A:				; CODE XREF: .text:004E0ABFj
					; .text:004E0B38j ...
		xor	eax, eax

loc_4E0B0C:				; CODE XREF: .text:004E0AAEj
		call	loc_4E0D51
		mov	edx, [ebp-14h]
		mov	ecx, [ebp-24h]
		sub	ecx, edx
		call	@SysUtils@_16680 ; SysUtils::_16680

loc_4E0B1E:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0B06o
		lea	ebx, [ebp-30h]
		mov	edx, [eax]
		mov	[ebx], edx
		mov	edx, [eax+4]
		mov	[ebx+4], edx
		cmp	cl, 44h
		jz	short loc_4E0B41
		cmp	cl, 55h
		jz	short loc_4E0B5F
		cmp	cl, 58h
		jnz	short loc_4E0B0A
		mov	ecx, 10h
		jmp	short loc_4E0B64
; ---------------------------------------------------------------------------

loc_4E0B41:				; CODE XREF: .text:004E0B2Ej
		test	dword ptr [ebx+4], 80000000h
		jz	short loc_4E0B5F
		neg	dword ptr [ebx]
		adc	dword ptr [ebx+4], 0
		neg	dword ptr [ebx+4]
		call	loc_4E0B5F
		mov	al, 2Dh
		inc	ecx
		dec	esi
		mov	[esi], al
		retn
; ---------------------------------------------------------------------------

loc_4E0B5F:				; CODE XREF: .text:004E0B33j
					; .text:004E0B48j ...
		mov	ecx, 0Ah

loc_4E0B64:				; CODE XREF: .text:004E0B3Fj
		lea	esi, [ebp-51h]

loc_4E0B67:				; CODE XREF: .text:004E0B9Bj
		push	ecx
		push	0
		push	ecx
		mov	eax, [ebx]
		mov	edx, [ebx+4]
		call	@System@@_llumod$qqrv ;	System::__linkproc__ _llumod(void)
		pop	ecx
		xchg	eax, edx
		add	dl, 30h
		cmp	dl, 3Ah
		jb	short loc_4E0B82
		add	dl, 7

loc_4E0B82:				; CODE XREF: .text:004E0B7Dj
		dec	esi
		mov	[esi], dl
		push	ecx
		push	0
		push	ecx
		mov	eax, [ebx]
		mov	edx, [ebx+4]
		call	@System@@_lludiv$qqrv ;	System::__linkproc__ _lludiv(void)
		pop	ecx
		mov	[ebx], eax
		mov	[ebx+4], edx
		or	eax, edx
		jnz	short loc_4E0B67
		lea	ecx, [ebp-51h]
		sub	ecx, esi
		mov	edx, [ebp-20h]
		cmp	edx, 10h
		jbe	short loc_4E0BAB
		retn
; ---------------------------------------------------------------------------

loc_4E0BAB:				; CODE XREF: .text:004E0BA8j
		sub	edx, ecx
		jbe	short locret_4E0BB9
		add	ecx, edx
		mov	al, 30h

loc_4E0BB3:				; CODE XREF: .text:004E0BB7j
		dec	esi
		mov	[esi], al
		dec	edx
		jnz	short loc_4E0BB3

locret_4E0BB9:				; CODE XREF: .text:004E0BADj
		retn
; ---------------------------------------------------------------------------

loc_4E0BBA:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:off_4E0AC6o
		cmp	cl, 44h
		jz	short loc_4E0BD4
		cmp	cl, 55h
		jz	short loc_4E0BE6
		cmp	cl, 58h
		jnz	loc_4E0B0A
		mov	ecx, 10h
		jmp	short loc_4E0BEB
; ---------------------------------------------------------------------------

loc_4E0BD4:				; CODE XREF: .text:004E0BBDj
		or	eax, eax
		jns	short loc_4E0BE6
		neg	eax
		call	loc_4E0BE6
		mov	al, 2Dh
		inc	ecx
		dec	esi
		mov	[esi], al
		retn
; ---------------------------------------------------------------------------

loc_4E0BE6:				; CODE XREF: .text:004E0BC2j
					; .text:004E0BD6j ...
		mov	ecx, 0Ah

loc_4E0BEB:				; CODE XREF: .text:004E0BD2j
					; .text:004E0CD6j
		lea	esi, [ebp-61h]

loc_4E0BEE:				; CODE XREF: .text:004E0C02j
		xor	edx, edx
		div	ecx
		add	dl, 30h
		cmp	dl, 3Ah
		jb	short loc_4E0BFD
		add	dl, 7

loc_4E0BFD:				; CODE XREF: .text:004E0BF8j
		dec	esi
		mov	[esi], dl
		or	eax, eax
		jnz	short loc_4E0BEE
		lea	ecx, [ebp-61h]
		sub	ecx, esi
		mov	edx, [ebp-20h]
		cmp	edx, 10h
		jbe	short loc_4E0C12
		retn
; ---------------------------------------------------------------------------

loc_4E0C12:				; CODE XREF: .text:004E0C0Fj
		sub	edx, ecx
		jbe	short locret_4E0C20
		add	ecx, edx
		mov	al, 30h

loc_4E0C1A:				; CODE XREF: .text:004E0C1Ej
		dec	esi
		mov	[esi], al
		dec	edx
		jnz	short loc_4E0C1A

locret_4E0C20:				; CODE XREF: .text:004E0C14j
		retn
; ---------------------------------------------------------------------------

loc_4E0C21:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0ACEo
		cmp	cl, 53h
		jnz	loc_4E0B0A
		mov	ecx, 1
		retn
; ---------------------------------------------------------------------------

loc_4E0C30:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0AFAo
		cmp	cl, 53h
		jnz	loc_4E0B0A
		cmp	word ptr [eax],	1
		jbe	short loc_4E0C4E
		mov	edx, eax
		lea	eax, [ebp-0Ch]
		call	loc_4E0954
		mov	esi, [ebp-0Ch]
		jmp	short loc_4E0C90
; ---------------------------------------------------------------------------

loc_4E0C4E:				; CODE XREF: .text:004E0C3Dj
					; .text:004E0C92j
		xor	ecx, ecx
		retn
; ---------------------------------------------------------------------------

loc_4E0C51:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0AD6o
		cmp	cl, 53h
		jnz	loc_4E0B0A
		mov	esi, eax
		lodsb
		movzx	ecx, al
		jmp	short loc_4E0C97
; ---------------------------------------------------------------------------

loc_4E0C62:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0AEEo
		mov	esi, offset unknown_libname_75 ; Borland Visual	Component Library & Packages
		jmp	short loc_4E0C6E
; ---------------------------------------------------------------------------

loc_4E0C69:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0B02o
		mov	esi, offset unknown_libname_76 ; Borland Visual	Component Library & Packages

loc_4E0C6E:				; CODE XREF: .text:004E0C67j
		cmp	cl, 53h
		jnz	loc_4E0B0A
		mov	edx, eax
		lea	eax, [ebp-10h]
		call	esi ; unknown_libname_75 ; Borland Visual Component Library & Packages
		mov	esi, [ebp-10h]
		mov	eax, esi
		jmp	short loc_4E0C90
; ---------------------------------------------------------------------------

loc_4E0C85:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0AF2o
		cmp	cl, 53h
		jnz	loc_4E0B0A
		mov	esi, eax

loc_4E0C90:				; CODE XREF: .text:004E0C4Cj
					; .text:004E0C83j
		or	esi, esi
		jz	short loc_4E0C4E
		mov	ecx, [esi-4]

loc_4E0C97:				; CODE XREF: .text:004E0C60j
		cmp	ecx, [ebp-20h]
		ja	short loc_4E0C9D
		retn
; ---------------------------------------------------------------------------

loc_4E0C9D:				; CODE XREF: .text:004E0C9Aj
		mov	ecx, [ebp-20h]
		retn
; ---------------------------------------------------------------------------

loc_4E0CA1:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0ADEo
		cmp	cl, 53h
		jnz	loc_4E0B0A
		mov	esi, eax
		push	edi
		mov	edi, eax
		xor	al, al
		mov	ecx, [ebp-20h]
		jecxz	short loc_4E0CBB
		repne scasb
		jnz	short loc_4E0CBB
		dec	edi

loc_4E0CBB:				; CODE XREF: .text:004E0CB4j
					; .text:004E0CB8j
		mov	ecx, edi
		sub	ecx, esi
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_4E0CC1:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0ADAo
		cmp	cl, 50h
		jnz	loc_4E0B0A
		mov	dword ptr [ebp-20h], 8
		mov	ecx, 10h
		jmp	loc_4E0BEB
; ---------------------------------------------------------------------------

loc_4E0CDB:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0AF6o
		mov	bh, 1
		jmp	short loc_4E0CE1
; ---------------------------------------------------------------------------

loc_4E0CDF:				; CODE XREF: .text:004E0ABFj
					; DATA XREF: .text:004E0AD2o
		mov	bh, 0

loc_4E0CE1:				; CODE XREF: .text:004E0CDDj
		mov	esi, eax
		mov	bl, 0
		cmp	cl, 47h
		jz	short loc_4E0D29
		mov	bl, 1
		cmp	cl, 45h
		jz	short loc_4E0D29
		mov	bl, 2
		cmp	cl, 46h
		jz	short loc_4E0D0A
		mov	bl, 3
		cmp	cl, 4Eh
		jz	short loc_4E0D0A
		cmp	cl, 4Dh
		jnz	loc_4E0B0A
		mov	bl, 4

loc_4E0D0A:				; CODE XREF: .text:004E0CF6j
					; .text:004E0CFDj
		mov	eax, 12h
		mov	edx, [ebp-20h]
		cmp	edx, eax
		jbe	short loc_4E0D3B
		mov	edx, 2
		cmp	cl, 4Dh
		jnz	short loc_4E0D3B
		movzx	edx, byte_61AFD0
		jmp	short loc_4E0D3B
; ---------------------------------------------------------------------------

loc_4E0D29:				; CODE XREF: .text:004E0CE8j
					; .text:004E0CEFj
		mov	eax, [ebp-20h]
		mov	edx, 3
		cmp	eax, 12h
		jbe	short loc_4E0D3B
		mov	eax, 0Fh

loc_4E0D3B:				; CODE XREF: .text:004E0D14j
					; .text:004E0D1Ej ...
		push	ebx
		push	eax
		push	edx
		lea	eax, [ebp-71h]
		mov	edx, esi
		movzx	ecx, bh
		call	loc_4DF436
		mov	ecx, eax
		lea	esi, [ebp-71h]
		retn
; ---------------------------------------------------------------------------

loc_4E0D51:				; CODE XREF: .text:loc_4E0B0Cp
					; .text:loc_4E0D5Cp
		push	eax
		lea	eax, [ebp-10h]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		pop	eax
		retn
; ---------------------------------------------------------------------------

loc_4E0D5C:				; CODE XREF: .text:004E09AFj
		call	loc_4E0D51
		pop	edi
		pop	esi
		pop	ebx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

; int __fastcall Sysutils::StrLFmt(int,	int, char *, int, int)
@Sysutils@StrLFmt$qqrpcuit1px14System@TVarRecxi: ; CODE	XREF: .text:004E1549p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, ecx
		mov	edi, edx
		mov	ebx, eax
		mov	eax, esi	; char *
		call	@Sysutils@StrLen$qqrpxc	; Sysutils::StrLen(char	*)
		push	eax
		mov	eax, [ebp+0Ch]
		push	eax
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, esi
		mov	eax, ebx
		mov	edx, edi
		call	@Sysutils@FormatBuf$qqrpvuipxvuipx14System@TVarRecxi ; Sysutils::FormatBuf(void	*,uint,void *,uint,System::TVarRec *,int)
		mov	byte ptr [ebx+eax], 0
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

unknown_libname_41:			; CODE XREF: .text:004E1650p
					; .text:004E16DDp
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		push	ecx
		mov	ecx, [ebp+8]
		xchg	eax, ecx
		xchg	edx, ecx
		call	loc_4E0DB4
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

loc_4E0DB4:				; CODE XREF: .text:004E0DAAp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		mov	[ebp-8], ecx
		mov	[ebp-4], edx
		mov	esi, eax
		mov	ebx, 1002h
		mov	eax, [ebp-4]
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		mov	edx, ebx
		test	edx, edx
		jns	short loc_4E0DE1
		add	edx, 3

loc_4E0DE1:				; CODE XREF: .text:004E0DDCj
		sar	edx, 2
		mov	ecx, ebx
		sub	ecx, edx
		cmp	eax, ecx
		jge	short loc_4E0E10
		mov	eax, [ebp-4]
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		push	eax
		mov	eax, [ebp-8]
		push	eax
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [ebp-4]
		mov	edx, ebx
		dec	edx
		lea	eax, [ebp-100Ah]
		call	@Sysutils@FormatBuf$qqrpvuipxvuipx14System@TVarRecxi ; Sysutils::FormatBuf(void	*,uint,void *,uint,System::TVarRec *,int)
		jmp	short loc_4E0E1C
; ---------------------------------------------------------------------------

loc_4E0E10:				; CODE XREF: .text:004E0DEAj
		mov	eax, [ebp-4]
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		mov	ebx, eax
		mov	eax, ebx

loc_4E0E1C:				; CODE XREF: .text:004E0E0Ej
		mov	edx, ebx
		dec	edx
		cmp	eax, edx
		jl	short loc_4E0E66
		jmp	short loc_4E0E55
; ---------------------------------------------------------------------------

loc_4E0E25:				; CODE XREF: .text:004E0E5Aj
		add	ebx, ebx
		mov	eax, esi
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, esi
		mov	edx, ebx
		call	@System@@LStrSetLength$qqrv ; System::__linkproc__ LStrSetLength(void)
		mov	eax, [ebp-4]
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		push	eax
		mov	eax, [ebp-8]
		push	eax
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [ebp-4]
		mov	edx, ebx
		dec	edx
		mov	eax, [esi]
		call	@Sysutils@FormatBuf$qqrpvuipxvuipx14System@TVarRecxi ; Sysutils::FormatBuf(void	*,uint,void *,uint,System::TVarRec *,int)

loc_4E0E55:				; CODE XREF: .text:004E0E23j
		mov	edx, ebx
		dec	edx
		cmp	eax, edx
		jge	short loc_4E0E25
		mov	edx, esi
		xchg	eax, edx
		call	@System@@LStrSetLength$qqrv ; System::__linkproc__ LStrSetLength(void)
		jmp	short loc_4E0E74
; ---------------------------------------------------------------------------

loc_4E0E66:				; CODE XREF: .text:004E0E21j
		lea	edx, [ebp-100Ah]
		mov	ecx, esi
		xchg	eax, ecx
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)

loc_4E0E74:				; CODE XREF: .text:004E0E64j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

; _DWORD __fastcall GetLocaleStr(LCID Locale, LCTYPE LCType, const int AnsiString)
@GetLocaleStr$qqriix10AnsiString:	; CODE XREF: .text:004E0F0Cp
					; .text:004E112Bp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF00h
		push	ebx
		push	esi
		mov	esi, ecx
		mov	ebx, [ebp+8]
		push	100h		; cchData
		lea	ecx, [ebp-100h]
		push	ecx		; lpLCData
		push	edx		; LCType
		push	eax		; Locale
		call	GetLocaleInfoA
		test	eax, eax
		jle	short loc_4E0EB5
		mov	ecx, eax
		dec	ecx
		lea	edx, [ebp-100h]
		mov	eax, ebx
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		jmp	short loc_4E0EBE
; ---------------------------------------------------------------------------

loc_4E0EB5:				; CODE XREF: .text:004E0EA1j
		mov	eax, ebx
		mov	edx, esi
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages

loc_4E0EBE:				; CODE XREF: .text:004E0EB3j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::GetLocaleChar(LCID Locale, LCTYPE	LCType,	char)
@Sysutils@GetLocaleChar$qqriic:		; CODE XREF: .text:004E20A1p
					; .text:004E20B4p ...
		push	ebx
		push	esi
		push	edi
		push	ecx
		mov	ebx, ecx
		mov	esi, edx
		mov	edi, eax
		push	2		; cchData
		lea	eax, [esp+4]
		push	eax		; lpLCData
		push	esi		; LCType
		push	edi		; Locale
		call	GetLocaleInfoA
		test	eax, eax
		jle	short loc_4E0EE9
		mov	al, [esp]
		jmp	short loc_4E0EEB
; ---------------------------------------------------------------------------

loc_4E0EE9:				; CODE XREF: .text:004E0EE2j
		mov	eax, ebx

loc_4E0EEB:				; CODE XREF: .text:004E0EE7j
		pop	edx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; int __fastcall unknown_libname_42(LCTYPE LCType, int,	int, int, int)
unknown_libname_42:			; CODE XREF: .text:004E0F72p
					; .text:004E0F95p ...
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	[ebp-4], ecx
		mov	edi, edx
		mov	esi, eax
		mov	ebx, [ebp+8]
		push	ebx
		mov	eax, [ebp+10h]
		mov	eax, [eax-4]	; Locale
		xor	ecx, ecx	; AnsiString
		mov	edx, esi	; LCType
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		cmp	dword ptr [ebx], 0
		jnz	short loc_4E0F23
		mov	eax, [ebp-4]
		mov	eax, [eax+edi*4]
		mov	edx, ebx
		call	@System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)

loc_4E0F23:				; CODE XREF: .text:004E0F14j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

loc_4E0F2C:				; CODE XREF: .text:004E2017p
		push	ebp
		mov	ebp, esp
		xor	ecx, ecx
		push	ecx
		push	ecx
		push	ecx
		push	ecx
		push	ecx
		push	ecx
		push	ebx
		push	esi
		push	edi
		xor	eax, eax
		push	ebp
		push	offset loc_4E103F
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		call	GetThreadLocale
		mov	[ebp-4], eax
		mov	ebx, 1
		mov	esi, offset byte_61AFF0
		mov	edi, offset byte_61B020

loc_4E0F5F:				; CODE XREF: .text:004E0FAFj
		push	ebp
		push	0Bh		; int
		lea	eax, [ebp-0Ch]
		push	eax		; int
		mov	ecx, offset off_5798AC ; int
		mov	edx, ebx
		dec	edx		; int
		lea	eax, [ebx+44h]
		dec	eax		; LCType
		call	unknown_libname_42 ; Borland Visual Component Library &	Packages
		pop	ecx
		mov	edx, [ebp-0Ch]
		mov	eax, esi
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		push	ebp
		push	0Bh		; int
		lea	eax, [ebp-10h]
		push	eax		; int
		mov	ecx, offset off_5798DC ; int
		mov	edx, ebx
		dec	edx		; int
		lea	eax, [ebx+38h]
		dec	eax		; LCType
		call	unknown_libname_42 ; Borland Visual Component Library &	Packages
		pop	ecx
		mov	edx, [ebp-10h]
		mov	eax, edi
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		inc	ebx
		add	edi, 4
		add	esi, 4
		cmp	ebx, 0Dh
		jnz	short loc_4E0F5F
		mov	ebx, 1
		mov	esi, offset byte_61B050
		mov	edi, offset byte_61B06C

loc_4E0FC0:				; CODE XREF: .text:004E1022j
		lea	eax, [ebx+5]
		mov	ecx, 7
		cdq
		idiv	ecx
		mov	[ebp-8], edx
		push	ebp
		push	6		; int
		lea	eax, [ebp-14h]
		push	eax		; int
		mov	ecx, offset off_57990C ; int
		mov	edx, ebx
		dec	edx		; int
		mov	eax, [ebp-8]
		add	eax, 31h	; LCType
		call	unknown_libname_42 ; Borland Visual Component Library &	Packages
		pop	ecx
		mov	edx, [ebp-14h]
		mov	eax, esi
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		push	ebp
		push	6		; int
		lea	eax, [ebp-18h]
		push	eax		; int
		mov	ecx, offset off_579928 ; int
		mov	edx, ebx
		dec	edx		; int
		mov	eax, [ebp-8]
		add	eax, 2Ah	; LCType
		call	unknown_libname_42 ; Borland Visual Component Library &	Packages
		pop	ecx
		mov	edx, [ebp-18h]
		mov	eax, edi
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		inc	ebx
		add	edi, 4
		add	esi, 4
		cmp	ebx, 8
		jnz	short loc_4E0FC0
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E1046

loc_4E1031:				; CODE XREF: .text:004E1044j
		lea	eax, [ebp-18h]
		mov	edx, 4
		call	unknown_libname_70 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E103F:				; DATA XREF: .text:004E0F3Do
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E1031
; ---------------------------------------------------------------------------

loc_4E1046:				; CODE XREF: .text:004E103Ej
					; DATA XREF: .text:004E102Co
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; BOOL __stdcall unknown_libname_43(LPSTR)
unknown_libname_43:			; DATA XREF: .text:004E1152o
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		push	ebx
		push	esi
		xor	esi, esi
		mov	ebx, 1
		jmp	short loc_4E1064
; ---------------------------------------------------------------------------

loc_4E105E:				; CODE XREF: .text:004E106Cj
		cmp	ebx, 7
		jz	short loc_4E1082
		inc	ebx

loc_4E1064:				; CODE XREF: .text:004E105Cj
		cmp	dword_61B090[ebx*4], 0
		jnz	short loc_4E105E
		lea	eax, dword_61B090[ebx*4]
		mov	edx, [ebp+8]
		call	unknown_libname_74 ; Borland Visual Component Library &	Packages
		mov	esi, 1

loc_4E1082:				; CODE XREF: .text:004E1061j
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

; BOOL __stdcall loc_4E108C(LPSTR)
loc_4E108C:				; DATA XREF: .text:004E117Bo
		push	ebp
		mov	ebp, esp
		push	0
		push	ebx
		push	esi
		xor	eax, eax
		push	ebp
		push	offset loc_4E10F1
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		xor	esi, esi
		mov	ebx, 1
		jmp	short loc_4E10B0
; ---------------------------------------------------------------------------

loc_4E10AA:				; CODE XREF: .text:004E10B8j
		cmp	ebx, 7
		jz	short loc_4E10DB
		inc	ebx

loc_4E10B0:				; CODE XREF: .text:004E10A8j
		cmp	dword_61B0AC[ebx*4], 0FFFFFFFFh
		jnz	short loc_4E10AA
		lea	eax, [ebp-4]
		mov	edx, [ebp+8]
		call	unknown_libname_74 ; Borland Visual Component Library &	Packages
		mov	eax, [ebp-4]
		xor	edx, edx
		call	loc_4E06F8
		mov	dword_61B0AC[ebx*4], eax
		mov	esi, 1

loc_4E10DB:				; CODE XREF: .text:004E10ADj
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E10F8

loc_4E10E8:				; CODE XREF: .text:004E10F6j
		lea	eax, [ebp-4]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E10F1:				; DATA XREF: .text:004E1096o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E10E8
; ---------------------------------------------------------------------------

loc_4E10F8:				; CODE XREF: .text:004E10F0j
					; DATA XREF: .text:004E10E3o
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

loc_4E1104:				; CODE XREF: .text:004E2025p
		push	ebp
		mov	ebp, esp
		push	0
		push	esi
		xor	eax, eax
		push	ebp
		push	offset loc_4E119B
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		lea	eax, [ebp-4]
		push	eax
		call	GetThreadLocale
		mov	ecx, offset _str_1.Text	; AnsiString
		mov	edx, 100Bh	; LCType
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-4]
		mov	edx, 1
		call	loc_4E06F8
		mov	esi, eax
		mov	eax, esi
		add	eax, 0FFFFFFFDh
		sub	eax, 3
		jnb	short loc_4E1185
		push	4		; CalType
		push	esi		; Calendar
		call	GetThreadLocale
		push	eax		; Locale
		push	offset unknown_libname_43 ; lpCalInfoEnumProc
		call	EnumCalendarInfoA
		mov	edx, 7
		mov	eax, offset byte_61B0B0

loc_4E1166:				; CODE XREF: .text:004E1170j
		mov	dword ptr [eax], 0FFFFFFFFh
		add	eax, 4
		dec	edx
		jnz	short loc_4E1166
		push	3		; CalType
		push	esi		; Calendar
		call	GetThreadLocale
		push	eax		; Locale
		push	offset loc_4E108C ; lpCalInfoEnumProc
		call	EnumCalendarInfoA

loc_4E1185:				; CODE XREF: .text:004E1147j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E11A2

loc_4E1192:				; CODE XREF: .text:004E11A0j
		lea	eax, [ebp-4]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E119B:				; DATA XREF: .text:004E110Do
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E1192
; ---------------------------------------------------------------------------

loc_4E11A2:				; CODE XREF: .text:004E119Aj
					; DATA XREF: .text:004E118Do
		pop	esi
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
_str_1	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E1121o
		dd 1			; Len
		db '1',0                ; Text
		align 4

; SysUtils::_16684
@SysUtils@_16684:			; CODE XREF: .text:004E2110p
					; .text:004E213Dp
		push	ebp
		mov	ebp, esp
		xor	ecx, ecx
		push	ecx
		push	ecx
		push	ecx
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, edx
		mov	esi, eax
		xor	eax, eax
		push	ebp
		push	offset loc_4E1376
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		mov	ebx, 1
		mov	eax, edi
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		lea	eax, [ebp-4]
		push	eax
		call	GetThreadLocale
		mov	ecx, offset _str_1_0.Text ; AnsiString
		mov	edx, 1009h	; LCType
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-4]
		mov	edx, 1
		call	loc_4E06F8
		add	eax, 0FFFFFFFDh
		sub	eax, 3
		jb	loc_4E134C
		mov	ax, word ptr dword_61B08C
		sub	ax, 4
		jz	short loc_4E1228
		add	eax, 0FFFFFFF3h
		sub	ax, 2
		jb	short loc_4E1228
		xor	eax, eax
		jmp	short loc_4E122A
; ---------------------------------------------------------------------------

loc_4E1228:				; CODE XREF: .text:004E1219j
					; .text:004E1222j
		mov	al, 1

loc_4E122A:				; CODE XREF: .text:004E1226j
		test	al, al
		jz	short loc_4E1263
		jmp	short loc_4E1253
; ---------------------------------------------------------------------------

loc_4E1230:				; CODE XREF: .text:004E125Cj
		mov	al, [esi+ebx-1]
		sub	al, 47h
		jz	short loc_4E1252
		sub	al, 20h
		jz	short loc_4E1252
		lea	eax, [ebp-8]
		mov	dl, [esi+ebx-1]
		call	unknown_libname_73 ; Borland Visual Component Library &	Packages
		mov	edx, [ebp-8]
		mov	eax, edi
		call	@System@@LStrCat$qqrv ;	System::__linkproc__ LStrCat(void)

loc_4E1252:				; CODE XREF: .text:004E1236j
					; .text:004E123Aj
		inc	ebx

loc_4E1253:				; CODE XREF: .text:004E122Ej
		mov	eax, esi
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		cmp	ebx, eax
		jle	short loc_4E1230
		jmp	loc_4E135B
; ---------------------------------------------------------------------------

loc_4E1263:				; CODE XREF: .text:004E122Cj
		mov	eax, edi
		mov	edx, esi
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		jmp	loc_4E135B
; ---------------------------------------------------------------------------

loc_4E1271:				; CODE XREF: .text:004E1355j
		mov	al, [esi+ebx-1]
		and	eax, 0FFh
		bt	dword_579880, eax
		jnb	short loc_4E12A7
		lea	eax, [ebp-0Ch]
		push	eax
		mov	ecx, 2
		mov	edx, ebx
		mov	eax, esi
		call	@System@@LStrCopy$qqrv ; System::__linkproc__ LStrCopy(void)
		mov	edx, [ebp-0Ch]
		mov	eax, edi
		call	@System@@LStrCat$qqrv ;	System::__linkproc__ LStrCat(void)
		add	ebx, 2
		jmp	loc_4E134C
; ---------------------------------------------------------------------------

loc_4E12A7:				; CODE XREF: .text:004E1281j
		mov	edx, offset dword_4E1390 ; char	*
		lea	eax, [esi+ebx-1] ; char	*
		mov	ecx, 2		; unsigned int
		call	@Sysutils@StrLIComp$qqrpxct1ui ; Sysutils::StrLIComp(char *,char *,uint)
		test	eax, eax
		jnz	short loc_4E12CD
		mov	eax, edi
		mov	edx, offset dword_4E139C
		call	@System@@LStrCat$qqrv ;	System::__linkproc__ LStrCat(void)
		inc	ebx
		jmp	short loc_4E134B
; ---------------------------------------------------------------------------

loc_4E12CD:				; CODE XREF: .text:004E12BCj
		mov	edx, offset dword_4E13A0
		lea	eax, [esi+ebx-1] ; char	*
		mov	ecx, 4		; unsigned int
		call	@Sysutils@StrLIComp$qqrpxct1ui ; Sysutils::StrLIComp(char *,char *,uint)
		test	eax, eax
		jnz	short loc_4E12F5
		mov	eax, edi
		mov	edx, offset dword_4E13B0
		call	@System@@LStrCat$qqrv ;	System::__linkproc__ LStrCat(void)
		add	ebx, 3
		jmp	short loc_4E134B
; ---------------------------------------------------------------------------

loc_4E12F5:				; CODE XREF: .text:004E12E2j
		mov	edx, offset dword_4E13B8
		lea	eax, [esi+ebx-1] ; char	*
		mov	ecx, 2		; unsigned int
		call	@Sysutils@StrLIComp$qqrpxct1ui ; Sysutils::StrLIComp(char *,char *,uint)
		test	eax, eax
		jnz	short loc_4E131B
		mov	eax, edi
		mov	edx, offset dword_4E13C4
		call	@System@@LStrCat$qqrv ;	System::__linkproc__ LStrCat(void)
		inc	ebx
		jmp	short loc_4E134B
; ---------------------------------------------------------------------------

loc_4E131B:				; CODE XREF: .text:004E130Aj
		mov	al, [esi+ebx-1]
		sub	al, 59h
		jz	short loc_4E1327
		sub	al, 20h
		jnz	short loc_4E1335

loc_4E1327:				; CODE XREF: .text:004E1321j
		mov	eax, edi
		mov	edx, offset dword_4E13D0
		call	@System@@LStrCat$qqrv ;	System::__linkproc__ LStrCat(void)
		jmp	short loc_4E134B
; ---------------------------------------------------------------------------

loc_4E1335:				; CODE XREF: .text:004E1325j
		lea	eax, [ebp-10h]
		mov	dl, [esi+ebx-1]
		call	unknown_libname_73 ; Borland Visual Component Library &	Packages
		mov	edx, [ebp-10h]
		mov	eax, edi
		call	@System@@LStrCat$qqrv ;	System::__linkproc__ LStrCat(void)

loc_4E134B:				; CODE XREF: .text:004E12CBj
					; .text:004E12F3j ...
		inc	ebx

loc_4E134C:				; CODE XREF: .text:004E1209j
					; .text:004E12A2j
		mov	eax, esi
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		cmp	ebx, eax
		jle	loc_4E1271

loc_4E135B:				; CODE XREF: .text:004E125Ej
					; .text:004E126Cj
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E137D

loc_4E1368:				; CODE XREF: .text:004E137Bj
		lea	eax, [ebp-10h]
		mov	edx, 4
		call	unknown_libname_70 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E1376:				; DATA XREF: .text:004E11C7o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E1368
; ---------------------------------------------------------------------------

loc_4E137D:				; CODE XREF: .text:004E1375j
					; DATA XREF: .text:004E1363o
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
_str_1_0 label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E11E7o
		dd 1			; Len
		db '1',0                ; Text
		align 10h
; char dword_4E1390[]
dword_4E1390	dd 'gg'                 ; DATA XREF: .text:loc_4E12A7o
		dd -1
		dd 3
dword_4E139C	dd 'ggg'                ; DATA XREF: .text:004E12C0o
; char dword_4E13A0[]
dword_4E13A0	dd 'yyyy'               ; DATA XREF: .text:loc_4E12CDo
		dd 0
		dd 0FFFFFFFFh
		dd 4
dword_4E13B0	dd 'eeee'               ; DATA XREF: .text:004E12E6o
		dd 0
; char dword_4E13B8[]
dword_4E13B8	dd 'yy'                 ; DATA XREF: .text:loc_4E12F5o
		dd 0FFFFFFFFh
		dd 2
dword_4E13C4	dd 'ee'                 ; DATA XREF: .text:004E130Eo
		dd 0FFFFFFFFh
		dd 1
dword_4E13D0	dd 'e'                  ; DATA XREF: .text:004E1329o
; ---------------------------------------------------------------------------

; SysUtils::_16851
@SysUtils@_16851:			; CODE XREF: .text:004E1443p
		test	eax, eax
		jz	short locret_4E13DD
		sub	eax, 1000h

locret_4E13DD:				; CODE XREF: .text:004E13D6j
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __fastcall Sysutils::ExceptionErrorMessage(System::TObject *, LPCVOID lpAddress, char *, int)
@Sysutils@ExceptionErrorMessage$qqrp14System@TObjectpvpci: ; CODE XREF:	.text:004E1577p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBA8h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	esi, eax
		push	1Ch		; dwLength
		lea	eax, [ebp-330h]
		push	eax		; lpBuffer
		push	ebx		; lpAddress
		call	VirtualQuery
		cmp	dword ptr [ebp-320h], 1000h
		jnz	short loc_4E142A
		push	105h		; nSize
		lea	eax, [ebp-212h]
		push	eax		; lpFilename
		mov	eax, [ebp-32Ch]
		push	eax		; hModule
		call	GetModuleFileNameA
		test	eax, eax
		jnz	short loc_4E144D

loc_4E142A:				; CODE XREF: .text:004E140Cj
		push	105h		; nSize
		lea	eax, [ebp-212h]
		push	eax		; lpFilename
		mov	eax, hModule
		push	eax		; hModule
		call	GetModuleFileNameA
		mov	eax, ebx
		call	@SysUtils@_16851 ; SysUtils::_16851
		mov	[ebp-8], eax
		jmp	short loc_4E1456
; ---------------------------------------------------------------------------

loc_4E144D:				; CODE XREF: .text:004E1428j
		sub	ebx, [ebp-32Ch]
		mov	[ebp-8], ebx

loc_4E1456:				; CODE XREF: .text:004E144Bj
		lea	eax, [ebp-212h]	; char *
		mov	dl, 5Ch		; char
		call	@Sysutils@AnsiStrRScan$qqrpcc ;	Sysutils::AnsiStrRScan(char *,char)
		mov	edx, eax
		inc	edx		; char *
		lea	eax, [ebp-10Dh]	; char *
		mov	ecx, 104h	; unsigned int
		call	@Sysutils@StrLCopy$qqrpcpxcui ;	Sysutils::StrLCopy(char	*,char *,uint)
		mov	ebx, offset dword_4E1560
		mov	edi, offset dword_4E1560
		mov	eax, esi
		mov	edx, ds:off_4DFCEC
		call	@System@@IsClass$qqrv ;	System::__linkproc__ IsClass(void)
		test	al, al
		jz	short loc_4E14B2
		mov	eax, [esi+4]
		call	unknown_libname_78 ; Borland Visual Component Library &	Packages
		mov	ebx, eax
		mov	eax, ebx	; char *
		call	@Sysutils@StrLen$qqrpxc	; Sysutils::StrLen(char	*)
		test	eax, eax
		jz	short loc_4E14B2
		cmp	byte ptr [ebx+eax-1], 2Eh
		jz	short loc_4E14B2
		mov	edi, offset dword_4E1564

loc_4E14B2:
                                         ; .text:004E14A4j ...
                 push    100h            ; nBufferMax
                 lea     eax, [ebp-312h]
                 push    eax             ; lpBuffer
                 mov     eax, off_57D7E4
                 mov     eax, [eax+4]
                 push    eax             ; uID
                 mov     eax, hModule
                 call    unknown_libname_87 ; Borland Visual Component Library & Packages
                 push    eax             ; hInstance
                 call    LoadStringA
                 lea     edx, [ebp-458h]
                 mov     eax, [esi]
                 call    @System@TObject@ClassName$qqrp17System@TMetaClass ; System::TObject::ClassName(System::TMetaClass *)
                 lea     eax, [ebp-458h]
                 mov     [ebp-358h], eax
                 mov     byte ptr [ebp-354h], 4
                 lea     eax, [ebp-10Dh]
                 mov     [ebp-350h], eax
                 mov     byte ptr [ebp-34Ch], 6
                 mov     eax, [ebp-8]
                 mov     [ebp-348h], eax
                 mov     byte ptr [ebp-344h], 5
                 mov     [ebp-340h], ebx
                 mov     byte ptr [ebp-33Ch], 6
                 mov     [ebp-338h], edi
                 mov     byte ptr [ebp-334h], 6
                 lea     eax, [ebp-358h]
                 push    eax             ; int
                 push    4               ; int
                 lea     ecx, [ebp-312h] ; char *
                 mov     edx, [ebp+8]    ; int
                 mov     eax, [ebp-4]    ; int
                 call    @Sysutils@StrLFmt$qqrpcuit1px14System@TVarRecxi ; Sysutils::StrLFmt(char *,uint,char *,System::TVarRec *,int)
                 mov     eax, [ebp-4]    ; char *
                 call    @Sysutils@StrLen$qqrpxc ; Sysutils::StrLen(char *)
                 pop     edi
                 pop     esi
                 pop     ebx
                 mov     esp, ebp
                 pop     ebp
                 retn    4
 ; ---------------------------------------------------------------------------
                 align 10h
 dword_4E1560    dd 0                    ; DATA XREF: .text:004E1476o
                                         ; .text:004E147Bo
 dword_4E1564    dd 2Eh                  ; DATA XREF: .text:004E14ADo
 ; ---------------------------------------------------------------------------

 ; _DWORD __fastcall Sysutils::ShowException(System::TObject *, void *)
 @Sysutils@ShowException$qqrp14System@TObjectpv:
                                         ; CODE XREF: .text:loc_4E1C80p
                 add     esp, 0FFFFFBC0h
                 push    400h            ; int
                 lea     ecx, [esp+44h]  ; char *
                 call    @Sysutils@ExceptionErrorMessage$qqrp14System@TObjectpvpci ; Sysutils::ExceptionErrorMessage(System::TObject *,void *,char *,int)
                 mov     eax, off_57D7D0
                 cmp     byte ptr [eax], 0
                 jz      short loc_4E15A0
                 lea     edx, [esp+40h]
                 mov     eax, off_57D7E8
                 call    @System@@Write0CString$qqrv ; System::__linkproc__ Write0CString(void)
                 call    @System@@WriteLn$qqrv ; System::__linkproc__ WriteLn(void)
                 call    @@_IOTest$qqrv  ; __linkproc__ _IOTest(void)
                 jmp     short loc_4E15D6
 ; ---------------------------------------------------------------------------

 loc_4E15A0:                             ; CODE XREF: .text:004E1584j
                 push    40h             ; nBufferMax
                 lea     eax, [esp+4]
                 push    eax             ; lpBuffer
                 mov     eax, off_57D7EC
                 mov     eax, [eax+4]
                 push    eax             ; uID
                 mov     eax, hModule
                 call    unknown_libname_87 ; Borland Visual Component Library & Packages
                 push    eax             ; hInstance
                 call    LoadStringA
                 push    2010h           ; uType
                 lea     eax, [esp+4]
                 push    eax             ; lpCaption
                 lea     eax, [esp+48h]
                 push    eax             ; lpText
                 push    0               ; hWnd
                 call    MessageBoxA

 loc_4E15D6:                             ; CODE XREF: .text:004E159Ej
                 add     esp, 440h
                 retn
 ; ---------------------------------------------------------------------------
                 align 10h

 loc_4E15E0:                             ; CODE XREF: .text:004E178Ep
                                         ; .text:004E180Bp ...
                 push    ebx
                 push    esi
                 push    edi
                 test    dl, dl
                 jz      short loc_4E15EF
                 add     esp, 0FFFFFFF0h
                 call    unknown_libname_64 ; Borland Visual Component Library & Packages

 loc_4E15EF:                             ; CODE XREF: .text:004E15E5j
                 mov     esi, ecx
                 mov     ebx, edx
                 mov     edi, eax
                 lea     eax, [edi+4]
                 mov     edx, esi
                 call    unknown_libname_71 ; Borland Visual Component Library & Packages
                 mov     eax, edi
                 test    bl, bl
                 jz      short loc_4E1614
                 call    unknown_libname_65 ; Borland Visual Component Library & Packages
                 pop     fs:0
                 add     esp, 0Ch

 loc_4E1614:                             ; CODE XREF: .text:004E1603j
                 mov     eax, edi
                 pop     edi
                 pop     esi
                 pop     ebx
                 retn
 ; ---------------------------------------------------------------------------
                 align 4

 ; __fastcall Psock::TPowersock::TPowersock(Classes::TComponent *)
 @Psock@TPowersock@$bctr$qqrp18Classes@TComponent:
                                         ; CODE XREF: .text:004E06CAp
                                         ; .text:004E1897p ...
                 push    ebp
                 mov     ebp, esp
                 push    0
                 push    ebx
                 push    esi
                 push    edi
                 test    dl, dl
                 jz      short loc_4E1630
                 add     esp, 0FFFFFFF0h
                 call    unknown_libname_64 ; Borland Visual Component Library & Packages

 loc_4E1630:                             ; CODE XREF: .text:004E1626j
                 mov     esi, ecx
                 mov     ebx, edx
                 mov     edi, eax
                 xor     eax, eax
                 push    ebp
                 push    offset loc_4E1676
                 push    dword ptr fs:[eax]
                 mov     fs:[eax], esp
                 lea     eax, [ebp-4]
                 push    eax
                 mov     edx, [ebp+0Ch]
                 mov     ecx, [ebp+8]
                 mov     eax, esi
                 call    unknown_libname_41 ; Borland Visual Component Library & Packages
                 mov     edx, [ebp-4]
                 lea     eax, [edi+4]
                 call    unknown_libname_71 ; Borland Visual Component Library & Packages
                 xor     eax, eax
                 pop     edx
                 pop     ecx
                 pop     ecx
                 mov     fs:[eax], edx
                 push    offset loc_4E167D

 loc_4E166D:                             ; CODE XREF: .text:004E167Bj
                 lea     eax, [ebp-4]
                 call    unknown_libname_69 ; Borland Visual Component Library & Packages
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1676:                             ; DATA XREF: .text:004E1639o
                 jmp     unknown_libname_68 ; Borland Visual Component Library & Packages
 ; ---------------------------------------------------------------------------
                 jmp     short loc_4E166D
 ; ---------------------------------------------------------------------------

 loc_4E167D:                             ; CODE XREF: .text:004E1675j
                                         ; DATA XREF: .text:004E1668o
                 mov     eax, edi
                 test    bl, bl
                 jz      short loc_4E1692
                 call    unknown_libname_65 ; Borland Visual Component Library & Packages
                 pop     fs:0
                 add     esp, 0Ch

 loc_4E1692:                             ; CODE XREF: .text:004E1681j
                 mov     eax, edi
                 pop     edi
                 pop     esi
                 pop     ebx
                 pop     ecx
                 pop     ebp
                 retn    8
 ; ---------------------------------------------------------------------------

 loc_4E169C:                             ; CODE XREF: .text:004E17ADp
                                         ; .text:004E1915p
                 push    ebp
                 mov     ebp, esp
                 push    0
                 push    0
                 push    ebx
                 push    esi
                 push    edi
                 test    dl, dl
                 jz      short loc_4E16B2
                 add     esp, 0FFFFFFF0h
                 call    unknown_libname_64 ; Borland Visual Component Library & Packages

 loc_4E16B2:                             ; CODE XREF: .text:004E16A8j
                 mov     esi, ecx
                 mov     ebx, edx
                 mov     edi, eax
                 xor     eax, eax
                 push    ebp
                 push    offset loc_4E1708
                 push    dword ptr fs:[eax]
                 mov     fs:[eax], esp
                 lea     eax, [ebp-4]
                 push    eax
                 lea     edx, [ebp-8]
                 mov     eax, esi
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 mov     eax, [ebp-8]
                 mov     edx, [ebp+0Ch]
                 mov     ecx, [ebp+8]
                 call    unknown_libname_41 ; Borland Visual Component Library & Packages
                 mov     edx, [ebp-4]
                 lea     eax, [edi+4]
                 call    unknown_libname_71 ; Borland Visual Component Library & Packages
                 xor     eax, eax
                 pop     edx
                 pop     ecx
                 pop     ecx
                 mov     fs:[eax], edx
                 push    offset loc_4E170F

 loc_4E16FA:                             ; CODE XREF: .text:004E170Dj
                 lea     eax, [ebp-8]
                 mov     edx, 2
                 call    unknown_libname_70 ; Borland Visual Component Library & Packages
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1708:                             ; DATA XREF: .text:004E16BBo
                 jmp     unknown_libname_68 ; Borland Visual Component Library & Packages
 ; ---------------------------------------------------------------------------
                 jmp     short loc_4E16FA
 ; ---------------------------------------------------------------------------

 loc_4E170F:                             ; CODE XREF: .text:004E1707j
                                         ; DATA XREF: .text:004E16F5o
                 mov     eax, edi
                 test    bl, bl
                 jz      short loc_4E1724
                 call    unknown_libname_65 ; Borland Visual Component Library & Packages
                 pop     fs:0
                 add     esp, 0Ch

 loc_4E1724:                             ; CODE XREF: .text:004E1713j
                 mov     eax, edi
                 pop     edi
                 pop     esi
                 pop     ebx
                 pop     ecx
                 pop     ecx
                 pop     ebp
                 retn    8
 ; ---------------------------------------------------------------------------
                 align 10h

 loc_4E1730:                             ; DATA XREF: .text:004DFD98o
                                         ; .text:004DFDF4o ...
                 cmp     byte ptr [eax+0Ch], 0
                 jz      short locret_4E173B
                 call    @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)

 locret_4E173B:                          ; CODE XREF: .text:004E1734j
                 retn
 ; ---------------------------------------------------------------------------
 off_4E173C      dd offset byte_4E1740   ; DATA XREF: .text:004E2718r
 byte_4E1740     db 0Eh                  ; DATA XREF: .text:off_4E173Co
                                         ; Record
                 db 9,'TErrorRec'
                 dd 8, 1
                 dd offset @$xp$13System@String ; `__DPdsc__'[System::String]
                 dd 4
                 align 4

 loc_4E175C:                             ; CODE XREF: .text:loc_4E1812p
                 push    ebx
                 push    esi
                 add     esp, 0FFFFFFF8h
                 xor     ebx, ebx
                 call    @IOResult$qqrv  ; IOResult(void)
                 mov     esi, eax
                 jmp     short loc_4E176D
 ; ---------------------------------------------------------------------------

 loc_4E176C:                             ; CODE XREF: .text:004E1779j
                 inc     ebx

 loc_4E176D:                             ; CODE XREF: .text:004E176Aj
                 cmp     ebx, 6
                 jg      short loc_4E177B
                 cmp     esi, dword_579944[ebx*8]
                 jnz     short loc_4E176C

 loc_4E177B:                             ; CODE XREF: .text:004E1770j
                 cmp     ebx, 6
                 jg      short loc_4E1795
                 mov     ecx, dword_579948[ebx*8]
                 mov     dl, 1
                 mov     eax, ds:off_4DFE0C
                 call    loc_4E15E0
                 jmp     short loc_4E17B2
 ; ---------------------------------------------------------------------------

 loc_4E1795:                             ; CODE XREF: .text:004E177Ej
                 mov     [esp], esi
                 mov     byte ptr [esp+4], 0
                 push    esp
                 push    0
                 mov     ecx, off_57D7F0
                 mov     dl, 1
                 mov     eax, ds:off_4DFE0C
                 call    loc_4E169C

 loc_4E17B2:                             ; CODE XREF: .text:004E1793j
                 mov     [eax+0Ch], esi
                 pop     ecx
                 pop     edx
                 pop     esi
                 pop     ebx
                 retn
 ; ---------------------------------------------------------------------------
                 align 4
 off_4E17BC      dd offset byte_4E17C0   ; DATA XREF: .text:004E2703r
                                         ; Borland Visual Component Library & Packages
 byte_4E17C0     db 0Eh                  ; DATA XREF: .text:off_4E17BCo
                                         ; Borland Visual Component Library & Packages
                 db 10,'TExceptRec'
                 dd 8, 1
                 dd offset @$xp$13System@String ; `__DPdsc__'[System::String]
                 dd 4
 ; ---------------------------------------------------------------------------

 ; SysUtils::_16713
 @SysUtils@_16713:                       ; DATA XREF: .text:004E1CECo
                 push    ebx
                 mov     ebx, edx
                 mov     edx, eax
                 dec     edx
                 jz      short loc_4E17EF
                 dec     edx
                 jz      short loc_4E17F6
                 dec     edx
                 sub     edx, 16h
                 jb      short loc_4E17FD
                 jmp     short loc_4E1812
 ; ---------------------------------------------------------------------------

 loc_4E17EF:                             ; CODE XREF: .text:004E17E2j
                 mov     eax, dword_61B0D4
                 jmp     short loc_4E1817
 ; ---------------------------------------------------------------------------

 loc_4E17F6:                             ; CODE XREF: .text:004E17E5j
                 mov     eax, dword_61B0D8
                 jmp     short loc_4E1817
 ; ---------------------------------------------------------------------------

 loc_4E17FD:                             ; CODE XREF: .text:004E17EBj
                 lea     eax, dword_579964[eax*8]
                 mov     ecx, [eax+4]
                 mov     eax, [eax]
                 mov     dl, 1
                 call    loc_4E15E0
                 jmp     short loc_4E1817
 ; ---------------------------------------------------------------------------

 loc_4E1812:                             ; CODE XREF: .text:004E17EDj
                 call    loc_4E175C

 loc_4E1817:                             ; CODE XREF: .text:004E17F4j
                                         ; .text:004E17FBj ...
                 push    ebx
                 jmp     @System@@RaiseExcept$qqrv ; System::__linkproc__ RaiseExcept(void)
 ; ---------------------------------------------------------------------------
                 pop     ebx
                 retn
 ; ---------------------------------------------------------------------------
                 align 10h

 loc_4E1820:                             ; CODE XREF: .text:004E18DFp
                 push    ebp
                 mov     ebp, esp
                 add     esp, 0FFFFFFE0h
                 push    ebx
                 push    esi
                 push    edi
                 xor     ebx, ebx
                 mov     [ebp-20h], ebx
                 mov     [ebp-4], ebx
                 mov     edi, ecx
                 mov     esi, edx
                 mov     ebx, eax
                 xor     eax, eax
                 push    ebp
                 push    offset loc_4E18BC
                 push    dword ptr fs:[eax]
                 mov     fs:[eax], esp
                 test    ebx, ebx
                 jz      short loc_4E1855
                 lea     eax, [ebp-4]
                 mov     edx, ebx
                 call    unknown_libname_72 ; Borland Visual Component Library & Packages
                 jmp     short loc_4E1862
 ; ---------------------------------------------------------------------------

 loc_4E1855:                             ; CODE XREF: .text:004E1847j
                 lea     edx, [ebp-4]
                 mov     eax, off_57D7F4
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)

 loc_4E1862:                             ; CODE XREF: .text:004E1853j
                 mov     eax, [ebp-4]
                 mov     [ebp-1Ch], eax
                 mov     byte ptr [ebp-18h], 0Bh
                 mov     [ebp-14h], esi
                 mov     byte ptr [ebp-10h], 0Bh
                 mov     [ebp-0Ch], edi
                 mov     byte ptr [ebp-8], 0
                 lea     eax, [ebp-1Ch]
                 push    eax
                 push    2
                 lea     edx, [ebp-20h]
                 mov     eax, off_57D7F8
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 mov     ecx, [ebp-20h]
                 mov     dl, 1
                 mov     eax, ds:off_4E0514
                 call    @Psock@TPowersock@$bctr$qqrp18Classes@TComponent ; Psock::TPowersock::TPowersock(Classes::TComponent *)
                 mov     ebx, eax
                 xor     eax, eax
                 pop     edx
                 pop     ecx
                 pop     ecx
                 mov     fs:[eax], edx
                 push    offset loc_4E18C3

 loc_4E18AB:                             ; CODE XREF: .text:004E18C1j
                 lea     eax, [ebp-20h]
                 call    unknown_libname_69 ; Borland Visual Component Library & Packages
                 lea     eax, [ebp-4]
                 call    unknown_libname_69 ; Borland Visual Component Library & Packages
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E18BC:                             ; DATA XREF: .text:004E183Ao
                 jmp     unknown_libname_68 ; Borland Visual Component Library & Packages
 ; ---------------------------------------------------------------------------
                 jmp     short loc_4E18AB
 ; ---------------------------------------------------------------------------

 loc_4E18C3:                             ; CODE XREF: .text:004E18BBj
                                         ; DATA XREF: .text:004E18A6o
                 mov     eax, ebx
                 pop     edi
                 pop     esi
                 pop     ebx
                 mov     esp, ebp
                 pop     ebp
                 retn
 ; ---------------------------------------------------------------------------

 ; SysUtils::_16879
 @SysUtils@_16879:                       ; CODE XREF: .text:004E18EDp
                 mov     esp, ecx
                 mov     [esp], edx
                 mov     ebp, [ebp+0]
                 jmp     @System@@RaiseExcept$qqrv ; System::__linkproc__ RaiseExcept(void)
 ; ---------------------------------------------------------------------------
                 retn
 ; ---------------------------------------------------------------------------
                 align 4

 ; SysUtils::_16880
 @SysUtils@_16880:                       ; DATA XREF: .text:004E1D25o
                 push    ebp
                 mov     ebp, esp
                 call    loc_4E1820
                 lea     ecx, [ebp+8]
                 add     ecx, 4
                 mov     edx, [ebp+8]
                 call    @SysUtils@_16879 ; SysUtils::_16879
                 pop     ebp
                 retn    4
 ; ---------------------------------------------------------------------------
                 align 4

 ; SysUtils::_16717
 @SysUtils@_16717:                       ; DATA XREF: .text:004E1D30o
                 add     esp, 0FFFFFFF8h
                 xor     eax, eax
                 mov     [esp], eax
                 mov     byte ptr [esp+4], 0Bh
                 push    esp
                 push    0
                 mov     ecx, off_57D7FC
                 mov     dl, 1
                 mov     eax, ds:off_4E0574
                 call    loc_4E169C
                 call    @System@@RaiseExcept$qqrv ; System::__linkproc__ RaiseExcept(void)
                 pop     ecx
                 pop     edx
                 retn
 ; ---------------------------------------------------------------------------
                 align 4

 loc_4E1924:                             ; CODE XREF: .text:SysUtils::_16719p
                                         ; .text:004E1BA4p
                 mov     eax, [eax]
                 cmp     eax, 0C0000092h
                 jg      short loc_4E1959
                 jz      short loc_4E1988
                 cmp     eax, 0C000008Eh
                 jg      short loc_4E194B
                 jz      short loc_4E198B
                 sub     eax, 0C0000005h
                 jz      short loc_4E1994
                 sub     eax, 87h
                 jz      short loc_4E1982
                 dec     eax
                 jz      short loc_4E1991
                 jmp     short loc_4E19A0
 ; ---------------------------------------------------------------------------

 loc_4E194B:                             ; CODE XREF: .text:004E1934j
                 add     eax, 3FFFFF71h
                 sub     eax, 2
                 jb      short loc_4E1988
                 jz      short loc_4E198E
                 jmp     short loc_4E19A0
 ; ---------------------------------------------------------------------------

 loc_4E1959:                             ; CODE XREF: .text:004E192Bj
                 cmp     eax, 0C0000096h
                 jg      short loc_4E1971
                 jz      short loc_4E1997
                 sub     eax, 0C0000093h
                 jz      short loc_4E1991
                 dec     eax
                 jz      short loc_4E197F
                 dec     eax
                 jz      short loc_4E1985
                 jmp     short loc_4E19A0
 ; ---------------------------------------------------------------------------

 loc_4E1971:                             ; CODE XREF: .text:004E195Ej
                 sub     eax, 0C00000FDh
                 jz      short loc_4E199D
                 sub     eax, 3Dh
                 jz      short loc_4E199A
                 jmp     short loc_4E19A0
 ; ---------------------------------------------------------------------------

 loc_4E197F:                             ; CODE XREF: .text:004E196Aj
                 mov     al, 3
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1982:                             ; CODE XREF: .text:004E1944j
                 mov     al, 4
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1985:                             ; CODE XREF: .text:004E196Dj
                 mov     al, 5
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1988:                             ; CODE XREF: .text:004E192Dj
                                         ; .text:004E1953j
                 mov     al, 6
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E198B:                             ; CODE XREF: .text:004E1936j
                 mov     al, 7
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E198E:                             ; CODE XREF: .text:004E1955j
                 mov     al, 8
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1991:                             ; CODE XREF: .text:004E1947j
                                         ; .text:004E1967j
                 mov     al, 9
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1994:                             ; CODE XREF: .text:004E193Dj
                 mov     al, 0Bh
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1997:                             ; CODE XREF: .text:004E1960j
                 mov     al, 0Ch
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E199A:                             ; CODE XREF: .text:004E197Bj
                 mov     al, 0Dh
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E199D:                             ; CODE XREF: .text:004E1976j
                 mov     al, 0Eh
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E19A0:                             ; CODE XREF: .text:004E1949j
                                         ; .text:004E1957j ...
                 mov     al, 16h
                 retn
 ; ---------------------------------------------------------------------------
                 align 4

 ; SysUtils::_16719
 @SysUtils@_16719:                       ; DATA XREF: .text:004E1D0Fo
                 call    loc_4E1924
                 and     eax, 0FFh
                 mov     eax, dword_579964[eax*8]
                 retn
 ; ---------------------------------------------------------------------------
                 align 4

 loc_4E19B8:                             ; CODE XREF: .text:004E1BD8p
                 push    ebp
                 mov     ebp, esp
                 add     esp, 0FFFFFE90h
                 push    ebx
                 push    esi
                 xor     eax, eax
                 mov     [ebp-170h], eax
                 mov     [ebp-14Ch], eax
                 mov     [ebp-154h], eax
                 mov     [ebp-150h], eax
                 mov     [ebp-4], eax
                 xor     eax, eax
                 push    ebp
                 push    offset loc_4E1B73
                 push    dword ptr fs:[eax]
                 mov     fs:[eax], esp
                 mov     eax, [ebp+8]
                 mov     ebx, [eax-4]
                 cmp     dword ptr [ebx+14h], 0
                 jnz     short loc_4E1A09
                 lea     edx, [ebp-4]
                 mov     eax, off_57D800
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 jmp     short loc_4E1A16
 ; ---------------------------------------------------------------------------

 loc_4E1A09:                             ; CODE XREF: .text:004E19F8j
                 lea     edx, [ebp-4]
                 mov     eax, off_57D804
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)

 loc_4E1A16:                             ; CODE XREF: .text:004E1A07j
                 mov     esi, [ebx+18h]
                 push    1Ch             ; dwLength
                 lea     eax, [ebp-20h]
                 push    eax             ; lpBuffer
                 mov     eax, [ebx+0Ch]
                 push    eax             ; lpAddress
                 call    VirtualQuery
                 cmp     dword ptr [ebp-10h], 1000h
                 jnz     loc_4E1AE8
                 push    105h            ; nSize
                 lea     eax, [ebp-125h]
                 push    eax             ; lpFilename
                 mov     eax, [ebp-1Ch]
                 push    eax             ; hModule
                 call    GetModuleFileNameA
                 test    eax, eax
                 jz      loc_4E1AE8
                 mov     eax, [ebx+0Ch]
                 mov     [ebp-148h], eax
                 mov     byte ptr [ebp-144h], 5
                 lea     eax, [ebp-150h]
                 lea     edx, [ebp-125h]
                 mov     ecx, 105h
                 call    loc_4E5B4C      ; @@LStrFromArray$qqrr10AnsiStringpci
                                         ; doubtful name
                 mov     eax, [ebp-150h] ; System::AnsiString
                 lea     edx, [ebp-14Ch]
                 call    @Sysutils@ExtractFileName$qqrx17System@AnsiString ; Sysutils::ExtractFileName(System::AnsiString)
                 mov     eax, [ebp-14Ch]
                 mov     [ebp-140h], eax
                 mov     byte ptr [ebp-13Ch], 0Bh
                 mov     eax, [ebp-4]
                 mov     [ebp-138h], eax
                 mov     byte ptr [ebp-134h], 0Bh
                 mov     [ebp-130h], esi
                 mov     byte ptr [ebp-12Ch], 5
                 lea     eax, [ebp-148h]
                 push    eax
                 push    3
                 lea     edx, [ebp-154h]
                 mov     eax, off_57D808
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 mov     ecx, [ebp-154h]
                 mov     dl, 1
                 mov     eax, ds:off_4E034C
                 call    @Psock@TPowersock@$bctr$qqrp18Classes@TComponent ; Psock::TPowersock::TPowersock(Classes::TComponent *)
                 mov     ebx, eax
                 jmp     short loc_4E1B42
 ; ---------------------------------------------------------------------------

 loc_4E1AE8:                             ; CODE XREF: .text:004E1A2Fj
                                         ; .text:004E1A4Cj
                 mov     eax, [ebx+0Ch]
                 mov     [ebp-16Ch], eax
                 mov     byte ptr [ebp-168h], 5
                 mov     eax, [ebp-4]
                 mov     [ebp-164h], eax
                 mov     byte ptr [ebp-160h], 0Bh
                 mov     [ebp-15Ch], esi
                 mov     byte ptr [ebp-158h], 5
                 lea     eax, [ebp-16Ch]
                 push    eax
                 push    2
                 lea     edx, [ebp-170h]
                 mov     eax, off_57D80C
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 mov     ecx, [ebp-170h]
                 mov     dl, 1
                 mov     eax, ds:off_4E034C
                 call    @Psock@TPowersock@$bctr$qqrp18Classes@TComponent ; Psock::TPowersock::TPowersock(Classes::TComponent *)
                 mov     ebx, eax

 loc_4E1B42:                             ; CODE XREF: .text:004E1AE6j
                 xor     eax, eax
                 pop     edx
                 pop     ecx
                 pop     ecx
                 mov     fs:[eax], edx
                 push    offset loc_4E1B7A

 loc_4E1B4F:                             ; CODE XREF: .text:004E1B78j
                 lea     eax, [ebp-170h]
                 call    unknown_libname_69 ; Borland Visual Component Library & Packages
                 lea     eax, [ebp-154h]
                 mov     edx, 3
                 call    unknown_libname_70 ; Borland Visual Component Library & Packages
                 lea     eax, [ebp-4]
                 call    unknown_libname_69 ; Borland Visual Component Library & Packages
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1B73:                             ; DATA XREF: .text:004E19E3o
                 jmp     unknown_libname_68 ; Borland Visual Component Library & Packages
 ; ---------------------------------------------------------------------------
                 jmp     short loc_4E1B4F
 ; ---------------------------------------------------------------------------

 loc_4E1B7A:                             ; CODE XREF: .text:004E1B72j
                                         ; DATA XREF: .text:004E1B4Ao
                 mov     eax, ebx
                 pop     esi
                 pop     ebx
                 mov     esp, ebp
                 pop     ebp
                 retn
 ; ---------------------------------------------------------------------------
                 align 4

 loc_4E1B84:                             ; DATA XREF: .text:004E1D1Ao
                 push    ebp
                 mov     ebp, esp
                 add     esp, 0FFFFFFF0h
                 push    ebx
                 xor     edx, edx
                 mov     [ebp-10h], edx
                 mov     [ebp-4], eax
                 xor     eax, eax
                 push    ebp
                 push    offset loc_4E1C57
                 push    dword ptr fs:[eax]
                 mov     fs:[eax], esp
                 mov     eax, [ebp-4]
                 call    loc_4E1924
                 and     eax, 0FFh
                 mov     edx, eax
                 add     edx, 0FFFFFFFDh
                 sub     edx, 8
                 jb      short loc_4E1BC0
                 jz      short loc_4E1BD7
                 dec     edx
                 sub     edx, 0Ah
                 jnb     short loc_4E1BE2

 loc_4E1BC0:                             ; CODE XREF: .text:004E1BB6j
                 lea     eax, dword_579964[eax*8]
                 mov     ecx, [eax+4]
                 mov     eax, [eax]
                 mov     dl, 1
                 call    loc_4E15E0
                 mov     ebx, eax
                 jmp     short loc_4E1C12
 ; ---------------------------------------------------------------------------

 loc_4E1BD7:                             ; CODE XREF: .text:004E1BB8j
                 push    ebp
                 call    loc_4E19B8
                 pop     ecx
                 mov     ebx, eax
                 jmp     short loc_4E1C12
 ; ---------------------------------------------------------------------------

 loc_4E1BE2:                             ; CODE XREF: .text:004E1BBEj
                 mov     eax, [ebp-4]
                 mov     eax, [eax]
                 mov     [ebp-0Ch], eax
                 mov     byte ptr [ebp-8], 0
                 lea     eax, [ebp-0Ch]
                 push    eax
                 push    0
                 lea     edx, [ebp-10h]
                 mov     eax, off_57D810
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 mov     ecx, [ebp-10h]
                 mov     dl, 1
                 mov     eax, ds:off_4DFEBC
                 call    @Psock@TPowersock@$bctr$qqrp18Classes@TComponent ; Psock::TPowersock::TPowersock(Classes::TComponent *)
                 mov     ebx, eax

 loc_4E1C12:                             ; CODE XREF: .text:004E1BD5j
                                         ; .text:004E1BE0j
                 mov     eax, ebx
                 mov     edx, ds:off_4DFE64
                 call    @System@@IsClass$qqrv ; System::__linkproc__ IsClass(void)
                 test    al, al
                 jz      short loc_4E1C41
                 mov     eax, [ebp-4]
                 mov     [ebx+0Ch], eax
                 mov     eax, [ebp-4]
                 cmp     dword ptr [eax], 0EEFFACEh
                 jnz     short loc_4E1C41
                 lea     eax, [ebx+4]
                 mov     edx, offset _str_C___Exception.Text
                 call    unknown_libname_71 ; Borland Visual Component Library & Packages

 loc_4E1C41:                             ; CODE XREF: .text:004E1C21j
                                         ; .text:004E1C32j
                 xor     eax, eax
                 pop     edx
                 pop     ecx
                 pop     ecx
                 mov     fs:[eax], edx
                 push    offset loc_4E1C5E

 loc_4E1C4E:                             ; CODE XREF: .text:004E1C5Cj
                 lea     eax, [ebp-10h]
                 call    unknown_libname_69 ; Borland Visual Component Library & Packages
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1C57:                             ; DATA XREF: .text:004E1B96o
                 jmp     unknown_libname_68 ; Borland Visual Component Library & Packages
 ; ---------------------------------------------------------------------------
                 jmp     short loc_4E1C4E
 ; ---------------------------------------------------------------------------

 loc_4E1C5E:                             ; CODE XREF: .text:004E1C56j
                                         ; DATA XREF: .text:004E1C49o
                 mov     eax, ebx
                 pop     ebx
                 mov     esp, ebp
                 pop     ebp
                 retn
 ; ---------------------------------------------------------------------------
                 align 4
 _str_C___Exception label _strings
				 dd 0FFFFFFFFh           ; _top
                                         ; DATA XREF: .text:004E1C37o
                 dd 13                   ; Len
                 db 'C++ Exception',0    ; Text
                 align 10h

 loc_4E1C80:                             ; DATA XREF: .text:004E1CF7o
                 call    @Sysutils@ShowException$qqrp14System@TObjectpv ; Sysutils::ShowException(System::TObject *,void *)
                 mov     eax, 1
                 call    loc_4E5910
 ; ---------------------------------------------------------------------------
                 retn
 ; ---------------------------------------------------------------------------

 ; SysUtils::_16723
 @SysUtils@_16723:                       ; CODE XREF: .text:loc_4E284Ep
                 push    ebp
                 mov     ebp, esp
                 push    0
                 push    0
                 xor     eax, eax
                 push    ebp
                 push    offset loc_4E1D51
                 push    dword ptr fs:[eax]
                 mov     fs:[eax], esp
                 lea     edx, [ebp-4]
                 mov     eax, off_57D814
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 mov     ecx, [ebp-4]
                 mov     dl, 1
                 mov     eax, ds:off_4DFDB0
                 call    loc_4E15E0
                 mov     dword_61B0D4, eax
                 lea     edx, [ebp-8]
                 mov     eax, off_57D818
                 call    @System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
                 mov     ecx, [ebp-8]
                 mov     dl, 1
                 mov     eax, ds:off_4E0238
                 call    loc_4E15E0
                 mov     dword_61B0D8, eax
                 mov     eax, off_57D81C
                 mov     dword ptr [eax], offset @SysUtils@_16713 ; SysUtils::_16713
                 mov     eax, off_57D820
                 mov     dword ptr [eax], offset loc_4E1C80
                 mov     eax, off_57D824
                 mov     edx, ds:off_4DFCEC
                 mov     [eax], edx
                 mov     eax, off_57D828
                 mov     dword ptr [eax], offset @SysUtils@_16719 ; SysUtils::_16719
                 mov     eax, off_57D82C
                 mov     dword ptr [eax], offset loc_4E1B84
                 mov     eax, off_57D830
                 mov     dword ptr [eax], offset @SysUtils@_16880 ; SysUtils::_16880
                 mov     eax, off_57D834
                 mov     dword ptr [eax], offset @SysUtils@_16717 ; SysUtils::_16717
                 xor     eax, eax
                 pop     edx
                 pop     ecx
                 pop     ecx
                 mov     fs:[eax], edx
                 push    offset loc_4E1D58

 loc_4E1D43:                             ; CODE XREF: .text:004E1D56j
                 lea     eax, [ebp-8]
                 mov     edx, 2
                 call    unknown_libname_70 ; Borland Visual Component Library & Packages
                 retn
 ; ---------------------------------------------------------------------------

 loc_4E1D51:                             ; DATA XREF: .text:004E1C9Ao
                 jmp     unknown_libname_68 ; Borland Visual Component Library & Packages
 ; ---------------------------------------------------------------------------
                 jmp     short loc_4E1D43
 ; ---------------------------------------------------------------------------

 loc_4E1D58:                             ; CODE XREF: .text:004E1D50j
                                         ; DATA XREF: .text:004E1D3Eo
                 pop     ecx
                 pop     ecx
                 pop     ebp
                 retn
 ; ---------------------------------------------------------------------------

 unknown_libname_98:                     ; CODE XREF: .text:004E26F4p
                 mov     eax, dword_61B0D4 ; Borland Visual Component Library & Packages
                 mov     byte ptr [eax+0Ch], 1
                 mov     eax, dword_61B0D4
                 mov     edx, [eax]
                 call    dword ptr [edx-8]
                 xor     eax, eax
                 mov     dword_61B0D4, eax
                 mov     eax, dword_61B0D8
                 mov     byte ptr [eax+0Ch], 1
                 mov     eax, dword_61B0D8 ; this
                 call    @System@TObject@Free$qqrv ; System::TObject::Free(void)
                 xor     eax, eax
                 mov     dword_61B0D8, eax
                 mov     eax, off_57D81C
                 xor     edx, edx
                 mov     [eax], edx
                 mov     eax, off_57D820
                 xor     edx, edx
                 mov     [eax], edx
                 mov     eax, off_57D824
                 xor     edx, edx
                 mov     [eax], edx
                 mov     eax, off_57D828
                 xor     edx, edx
                 mov     [eax], edx
                 mov     eax, off_57D82C
                 xor     edx, edx
                 mov     [eax], edx
                 mov     eax, off_57D830
                 xor     edx, edx
                 mov     [eax], edx
                 retn
 ; ---------------------------------------------------------------------------
                 align 4

 loc_4E1DC8:                             ; CODE XREF: .text:004E2858p
                 add     esp, 0FFFFFF6Ch
                 mov     dword ptr [esp], 94h
                 push    esp             ; lpVersionInformation
                 call    GetVersionExA
                 test    eax, eax
                 jz      short loc_4E1E16
                 mov     eax, [esp+10h]
                 mov     dword_57986C, eax
                 mov     eax, [esp+4]
                 mov     dword_579870, eax
                 mov     eax, [esp+8]
                 mov     dword_579874, eax
                 mov     eax, [esp+0Ch]
                 mov     dword_579878, eax
                 mov     eax, offset dword_57987C
                 lea     edx, [esp+14h]
                 mov     ecx, 80h
                 call    loc_4E5B4C      ; @@LStrFromArray$qqrr10AnsiStringpci
                                         ; doubtful name

 loc_4E1E16:                             ; CODE XREF: .text:004E1DDDj
      
		add	esp, 94h
		retn
; ---------------------------------------------------------------------------
		align 10h
