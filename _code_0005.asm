.code

; Exported entry   5. _Stringfromini
; Exported entry 729. Stringfromini

; int __cdecl Stringfromini(wchar_t *section, wchar_t *key, wchar_t *s,	int length)
		public Stringfromini
Stringfromini:				; CODE XREF: .text:00404E2Ep
					; .text:00404EF9p ...
		push	ebp		; _Stringfromini
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_402635
		test	edx, edx
		jz	short loc_402635
		test	ecx, ecx
		jnz	short loc_40263A

loc_402635:				; CODE XREF: .text:0040262Bj
					; .text:0040262Fj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40263A:				; CODE XREF: .text:00402633j
		push	offset FileName	; lpFileName
		mov	ebx, [ebp+14h]
		push	ebx		; int
		push	ecx		; int
		push	$CTW0("") ; lpDefault
		push	edx		; lpKeyName
		push	eax		; lpAppName
		call	loc_401608
		add	esp, 18h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_402658(LPCWSTR lpFileName, LPCWSTR lpAppName,	LPCWSTR	lpKeyName, int,	int)
loc_402658:				; CODE XREF: .text:0040D5A4p
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+14h]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edx, edx
		jz	short loc_402674
		test	ecx, ecx
		jz	short loc_402674
		test	esi, esi
		jnz	short loc_402679

loc_402674:				; CODE XREF: .text:0040266Aj
					; .text:0040266Ej
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_402679:				; CODE XREF: .text:00402672j
		test	eax, eax
		jz	short loc_402683
		cmp	word ptr [eax],	0
		jnz	short loc_402688

loc_402683:				; CODE XREF: .text:0040267Bj
		mov	eax, offset FileName

loc_402688:				; CODE XREF: .text:00402681j
		push	eax		; lpFileName
		mov	eax, [ebp+18h]
		push	eax		; int
		push	esi		; int
		push	$CTW0("") ; lpDefault
		push	ecx		; lpKeyName
		push	edx		; lpAppName
		call	loc_401608
		add	esp, 18h
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry   6. _Filefromini
; Exported entry 495. Filefromini

; int __cdecl Filefromini(wchar_t *key,	wchar_t	*_name, wchar_t *defname)
		public Filefromini
Filefromini:				; CODE XREF: .text:00408C67p
					; .text:0040ACDDp ...
		push	ebp		; _Filefromini
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4026B1
		test	edx, edx
		jnz	short loc_4026B5

loc_4026B1:				; CODE XREF: .text:004026ABj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4026B5:				; CODE XREF: .text:004026AFj
		push	offset FileName	; lpFileName
		push	104h		; int
		push	edx		; int
		mov	edx, [ebp+10h]
		push	edx		; lpDefault
		push	eax		; lpKeyName
		push	offset aHistory_0 ; "History"
		call	loc_401608
		add	esp, 18h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4026D4(LPCWSTR lpFileName, LPCWSTR lpKeyName,	int, LPCWSTR lpDefault)
loc_4026D4:				; CODE XREF: .text:0040D2AEp
					; .text:0040D383p
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edx, edx
		jz	short loc_4026E8
		test	ecx, ecx
		jnz	short loc_4026EC

loc_4026E8:				; CODE XREF: .text:004026E2j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4026EC:				; CODE XREF: .text:004026E6j
		test	eax, eax
		jz	short loc_4026F6
		cmp	word ptr [eax],	0
		jnz	short loc_4026FB

loc_4026F6:				; CODE XREF: .text:004026EEj
		mov	eax, offset FileName

loc_4026FB:				; CODE XREF: .text:004026F4j
		push	eax		; lpFileName
		push	104h		; int
		push	ecx		; int
		mov	ecx, [ebp+14h]
		push	ecx		; lpDefault
		push	edx		; lpKeyName
		push	offset aHistory_0 ; "History"
		call	loc_401608
		add	esp, 18h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry   7. _Getfromini
; Exported entry 380. Getfromini

; int Getfromini(wchar_t *file,	wchar_t	*section, wchar_t *key,	wchar_t	*format, ...)
		public Getfromini
Getfromini:				; CODE XREF: .text:0040298Fp
					; .text:0040D3FDp ...
		push	ebp		; _Getfromini
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edx, edx
		jz	short loc_402738
		test	ecx, ecx
		jz	short loc_402738
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_40273C

loc_402738:				; CODE XREF: .text:0040272Cj
					; .text:00402730j
		xor	eax, eax
		jmp	short loc_40278C
; ---------------------------------------------------------------------------

loc_40273C:				; CODE XREF: .text:00402736j
		test	eax, eax
		jz	short loc_402746
		cmp	word ptr [eax],	0
		jnz	short loc_40274B

loc_402746:				; CODE XREF: .text:0040273Ej
		mov	eax, offset FileName

loc_40274B:				; CODE XREF: .text:00402744j
		push	eax		; lpFileName
		lea	eax, [ebp-200h]
		push	100h		; int
		push	eax		; int
		push	$CTW0("") ; lpDefault
		push	ecx		; lpKeyName
		push	edx		; lpAppName
		call	loc_401608
		add	esp, 18h
		test	eax, eax
		jnz	short loc_40276F
		xor	eax, eax
		jmp	short loc_40278C
; ---------------------------------------------------------------------------

loc_40276F:				; CODE XREF: .text:00402769j
		lea	eax, [ebp+18h]
		push	eax		; arglist
		mov	edx, [ebp+14h]
		push	edx		; format
		lea	ecx, [ebp-200h]
		push	ecx		; buffer
		call	_vswscanf
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_40278C
		xor	eax, eax

loc_40278C:				; CODE XREF: .text:0040273Aj
					; .text:0040276Dj ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry   8. _Writetoini
; Exported entry 381. Writetoini

; int Writetoini(wchar_t *file,	wchar_t	*section, wchar_t *key,	wchar_t	*format, ...)
		public Writetoini
Writetoini:				; CODE XREF: .text:00402895p
					; .text:00402906p ...
		push	ebp		; _Writetoini
		mov	ebp, esp
		add	esp, 0FFFFF5FCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	edi, edi
		jz	short loc_4027B2
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4027B2
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4027B9

loc_4027B2:				; CODE XREF: .text:004027A4j
					; .text:004027AAj
		xor	eax, eax
		jmp	loc_40284C
; ---------------------------------------------------------------------------

loc_4027B9:				; CODE XREF: .text:004027B0j
		test	ebx, ebx
		jz	short loc_4027C3
		cmp	word ptr [ebx],	0
		jnz	short loc_4027D5

loc_4027C3:				; CODE XREF: .text:004027BBj
		cmp	ischild, 0
		jz	short loc_4027D0
		xor	eax, eax
		jmp	short loc_40284C
; ---------------------------------------------------------------------------

loc_4027D0:				; CODE XREF: .text:004027CAj
		mov	ebx, offset FileName

loc_4027D5:				; CODE XREF: .text:004027C1j
		lea	eax, [ebp+18h]
		push	eax		; arglist
		mov	edx, [ebp+14h]
		push	edx		; format
		lea	ecx, [ebp-0A02h]
		push	ecx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		mov	esi, eax
		mov	ax, [ebp-0A02h]
		cmp	ax, 22h
		jz	short loc_402801
		cmp	ax, 27h
		jnz	short loc_402835

loc_402801:				; CODE XREF: .text:004027F9j
		mov	word ptr [ebp-0A04h], 22h
		mov	word ptr [ebp+esi*2-0A02h], 22h
		mov	word ptr [ebp+esi*2-0A00h], 0
		push	ebx		; lpFileName
		lea	edx, [ebp-0A04h]
		push	edx		; int
		mov	ecx, [ebp+10h]
		push	ecx		; lpKeyName
		push	edi		; lpAppName
		call	loc_401564
		add	esp, 10h
		jmp	short loc_40284A
; ---------------------------------------------------------------------------

loc_402835:				; CODE XREF: .text:004027FFj
		push	ebx		; lpFileName
		lea	eax, [ebp-0A02h]
		push	eax		; int
		mov	edx, [ebp+10h]
		push	edx		; lpKeyName
		push	edi		; lpAppName
		call	loc_401564
		add	esp, 10h

loc_40284A:				; CODE XREF: .text:00402833j
		mov	eax, esi

loc_40284C:				; CODE XREF: .text:004027B4j
					; .text:004027CEj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry   9. _Filetoini
; Exported entry 497. Filetoini

; int __cdecl Filetoini(wchar_t	*key, wchar_t *_name)
		public Filetoini
Filetoini:				; CODE XREF: .text:00449C88p
					; .text:00449D03p
		push	ebp		; _Filetoini
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_402867
		test	ebx, ebx
		jnz	short loc_40286B

loc_402867:				; CODE XREF: .text:00402861j
		xor	eax, eax
		jmp	short loc_4028BB
; ---------------------------------------------------------------------------

loc_40286B:				; CODE XREF: .text:00402865j
		cmp	ischild, 0
		jz	short loc_402878
		xor	eax, eax
		jmp	short loc_4028BB
; ---------------------------------------------------------------------------

loc_402878:				; CODE XREF: .text:00402872j
		mov	ax, [ebx]
		cmp	ax, 22h
		jz	short loc_402887
		cmp	ax, 27h
		jnz	short loc_4028A7

loc_402887:				; CODE XREF: .text:0040287Fj
		push	ebx		; arglist
		push	offset aS_32	; format
		push	esi		; key
		push	offset aHistory_0 ; "History"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		test	eax, eax
		setnz	al
		and	eax, 1
		jmp	short loc_4028BB
; ---------------------------------------------------------------------------

loc_4028A7:				; CODE XREF: .text:00402885j
		push	offset FileName	; lpFileName
		push	ebx		; int
		push	esi		; lpKeyName
		push	offset aHistory_0 ; "History"
		call	loc_401564
		add	esp, 10h

loc_4028BB:				; CODE XREF: .text:00402869j
					; .text:00402876j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4028C0(LPCWSTR lpFileName, LPCWSTR lpKeyName,	char arglist)
loc_4028C0:				; CODE XREF: .text:0040CE6Ep
					; .text:0040CEEBp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	edi, edi
		jz	short loc_4028D7
		test	ebx, ebx
		jnz	short loc_4028DB

loc_4028D7:				; CODE XREF: .text:004028D1j
		xor	eax, eax
		jmp	short loc_402928
; ---------------------------------------------------------------------------

loc_4028DB:				; CODE XREF: .text:004028D5j
		test	esi, esi
		jz	short loc_4028E5
		cmp	word ptr [esi],	0
		jnz	short loc_4028EA

loc_4028E5:				; CODE XREF: .text:004028DDj
		mov	esi, offset FileName

loc_4028EA:				; CODE XREF: .text:004028E3j
		mov	ax, [ebx]
		cmp	ax, 22h
		jz	short loc_4028F9
		cmp	ax, 27h
		jnz	short loc_402918

loc_4028F9:				; CODE XREF: .text:004028F1j
		push	ebx		; arglist
		push	offset aS_32	; format
		push	edi		; key
		push	offset aHistory_0 ; "History"
		push	esi		; file
		call	Writetoini
		add	esp, 14h
		test	eax, eax
		setnz	al
		and	eax, 1
		jmp	short loc_402928
; ---------------------------------------------------------------------------

loc_402918:				; CODE XREF: .text:004028F7j
		push	esi		; lpFileName
		push	ebx		; int
		push	edi		; lpKeyName
		push	offset aHistory_0 ; "History"
		call	loc_401564
		add	esp, 10h

loc_402928:				; CODE XREF: .text:004028D9j
					; .text:00402916j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  10. _Deleteinisection
; Exported entry 466. Deleteinisection

; void __cdecl Deleteinisection(wchar_t	*file, wchar_t *section)
		public Deleteinisection
Deleteinisection:			; CODE XREF: .text:0040CE14p
					; .text:0040CF0Ap ...
		push	ebp		; _Deleteinisection
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	esi, esi
		jz	short loc_402951
		push	offset aSettings ; "Settings"
		push	esi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_402974

loc_402951:				; CODE XREF: .text:0040293Dj
		test	ebx, ebx
		jz	short loc_40295B
		cmp	word ptr [ebx],	0
		jnz	short loc_402969

loc_40295B:				; CODE XREF: .text:00402953j
		cmp	ischild, 0
		jnz	short loc_402974
		mov	ebx, offset FileName

loc_402969:				; CODE XREF: .text:00402959j
		push	ebx		; lpFileName
		push	0		; lpString
		push	0		; lpKeyName
		push	esi		; lpAppName
		call	WritePrivateProfileStringW

loc_402974:				; CODE XREF: .text:0040294Fj
					; .text:00402962j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  11. _Getfromsettings
; Exported entry 571. Getfromsettings

; int __cdecl Getfromsettings(wchar_t *key, int	defvalue)
		public Getfromsettings
Getfromsettings:			; CODE XREF: .text:0040FD3Dp
		push	ebp		; _Getfromsettings
		mov	ebp, esp
		lea	eax, [ebp+0Ch]
		push	eax		; arglist
		push	offset aI_32	; "%i"
		mov	edx, [ebp+8]
		push	edx		; key
		push	offset aSettings ; "Settings"
		push	0		; file
		call	Getfromini
		add	esp, 14h
		mov	eax, [ebp+0Ch]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  12. _Addtosettings
; Exported entry 399. Addtosettings

; int __cdecl Addtosettings(wchar_t *key, int value)
		public Addtosettings
Addtosettings:				; CODE XREF: .text:0040FD74p
		push	ebp		; _Addtosettings
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		push	eax		; arglist
		push	offset aI_32	; "%i"
		mov	edx, [ebp+8]
		push	edx		; key
		push	offset aSettings ; "Settings"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		