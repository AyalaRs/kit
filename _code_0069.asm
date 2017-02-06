.code

; ---------------------------------------------------------------------------
; Exported entry 262. _Getconstantbyname
; Exported entry 553. Getconstantbyname

; int __cdecl Getconstantbyname(wchar_t	*_name, ulong *value)
		public Getconstantbyname
Getconstantbyname:			; CODE XREF: .text:00464277p
					; .text:004645EFp ...
		push	ebp		; _Getconstantbyname
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		push	offset dword_5E9E68 ; a2
		mov	eax, [ebp+8]
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_483646
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_483646:				; CODE XREF: .text:0048363Ej
		test	ebx, ebx
		jz	short loc_483655
		mov	edx, dword_5E9E20
		mov	ecx, [edx+eax]
		mov	[ebx], ecx

loc_483655:				; CODE XREF: .text:00483648j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 263. _Getconstantbyvalue
; Exported entry 554. Getconstantbyvalue

; unsigned int __cdecl Getconstantbyvalue(wchar_t *groupname, ulong value, wchar_t *_name)
		public Getconstantbyvalue
Getconstantbyvalue:			; CODE XREF: .text:004265E1p
					; .text:00436302p ...
		push	ebp		; _Getconstantbyvalue
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_483678
		cmp	word ptr [ebx],	0
		jz	short loc_483678
		cmp	dword_5E9E20, 0
		jnz	short loc_48368D

loc_483678:				; CODE XREF: .text:00483667j
					; .text:0048366Dj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_483686
		mov	eax, [ebp+10h]
		mov	word ptr [eax],	0

loc_483686:				; CODE XREF: .text:0048367Cj
		xor	eax, eax
		jmp	loc_483758
; ---------------------------------------------------------------------------

loc_48368D:				; CODE XREF: .text:00483676j
		xor	esi, esi
		mov	edi, offset word_5E9E88

loc_483694:				; CODE XREF: .text:00483742j
		cmp	dword ptr [edi+40h], 0
		jz	loc_483748
		push	ebx		; s2
		push	edi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_48373B
		mov	eax, [edi+48h]
		test	eax, eax
		jz	loc_483748
		cmp	dword ptr [edi+4Ch], 0
		jz	short loc_4836DA
		push	offset loc_478BC8 ; _DWORD
		push	4		; size
		push	eax		; count
		mov	edx, [edi+40h]
		push	edx		; data
		call	Heapsort
		add	esp, 10h
		xor	ecx, ecx
		mov	[edi+4Ch], ecx

loc_4836DA:				; CODE XREF: .text:004836BFj
		xor	eax, eax
		mov	edx, [edi+48h]

loc_4836DF:				; CODE XREF: .text:00483739j
		lea	esi, [edx+eax]
		sar	esi, 1
		jns	short loc_4836E9
		adc	esi, 0

loc_4836E9:				; CODE XREF: .text:004836E4j
		mov	ecx, [edi+40h]
		mov	ebx, [ecx+esi*4]
		add	ebx, dword_5E9E20
		mov	ecx, [ebx]
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_483700
		mov	edx, esi
		jmp	short loc_483735
; ---------------------------------------------------------------------------

loc_483700:				; CODE XREF: .text:004836FAj
		mov	eax, [ebx]
		cmp	eax, [ebp+0Ch]
		jnb	short loc_48370C
		lea	eax, [esi+1]
		jmp	short loc_483735
; ---------------------------------------------------------------------------

loc_48370C:				; CODE XREF: .text:00483705j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_483729
		add	ebx, 4
		push	ebx		; src
		push	100h		; n
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_483758
; ---------------------------------------------------------------------------

loc_483729:				; CODE XREF: .text:00483710j
		add	ebx, 4
		push	ebx		; s
		call	_wcslen
		pop	ecx
		jmp	short loc_483758
; ---------------------------------------------------------------------------

loc_483735:				; CODE XREF: .text:004836FEj
					; .text:0048370Aj
		cmp	edx, eax
		jle	short loc_483748
		jmp	short loc_4836DF
; ---------------------------------------------------------------------------

loc_48373B:				; CODE XREF: .text:004836AAj
		inc	esi
		add	edi, 50h
		cmp	esi, 18h
		jl	loc_483694

loc_483748:				; CODE XREF: .text:00483698j
					; .text:004836B5j ...
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_483756
		mov	eax, [ebp+10h]
		mov	word ptr [eax],	0

loc_483756:				; CODE XREF: .text:0048374Cj
		xor	eax, eax

loc_483758:				; CODE XREF: .text:00483688j
					; .text:00483727j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 264. _Fillcombowithgroup
; Exported entry 499. Fillcombowithgroup

; HGLOBAL __cdecl Fillcombowithgroup(HWND hWnd,	wchar_t	*s2, int a3, int a4)
		public Fillcombowithgroup
Fillcombowithgroup:			; CODE XREF: .text:004299C9p
					; .text:0042AA81p ...
		push	ebp		; _Fillcombowithgroup
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+0Ch]
		jz	short loc_48377F
		test	edi, edi
		jz	short loc_48377F
		cmp	word ptr [edi],	0
		jnz	short loc_483786

loc_48377F:				; CODE XREF: .text:00483773j
					; .text:00483777j
		xor	eax, eax
		jmp	loc_4838BD
; ---------------------------------------------------------------------------

loc_483786:				; CODE XREF: .text:0048377Dj
		push	0		; lParam
		push	0		; wParam
		push	14Bh		; Msg
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	SendMessageW
		xor	esi, esi
		mov	ebx, offset word_5E9E88

loc_48379F:				; CODE XREF: .text:004837C1j
		cmp	dword ptr [ebx+40h], 0
		jnz	short loc_4837AC
		xor	eax, eax
		jmp	loc_4838BD
; ---------------------------------------------------------------------------

loc_4837AC:				; CODE XREF: .text:004837A3j
		push	edi		; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4837C3
		inc	esi
		add	ebx, 50h
		cmp	esi, 18h
		jl	short loc_48379F

loc_4837C3:				; CODE XREF: .text:004837B8j
		cmp	esi, 18h
		jl	short loc_4837CF
		xor	eax, eax
		jmp	loc_4838BD
; ---------------------------------------------------------------------------

loc_4837CF:				; CODE XREF: .text:004837C6j
		mov	eax, [ebx+48h]
		test	eax, eax
		jnz	short loc_4837DD
		xor	eax, eax
		jmp	loc_4838BD
; ---------------------------------------------------------------------------

loc_4837DD:				; CODE XREF: .text:004837D4j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_483800
		push	offset loc_478B9C ; _DWORD
		push	4		; size
		push	eax		; count
		mov	edx, [ebx+40h]
		push	edx		; data
		call	Heapsort
		mov	dword ptr [ebx+4Ch], 1
		add	esp, 10h
		jmp	short loc_483822
; ---------------------------------------------------------------------------

loc_483800:				; CODE XREF: .text:004837E1j
		cmp	dword ptr [ebx+4Ch], 0
		jz	short loc_483822
		push	offset loc_478BC8 ; _DWORD
		push	4		; size
		mov	ecx, [ebx+48h]
		push	ecx		; count
		mov	eax, [ebx+40h]
		push	eax		; data
		call	Heapsort
		add	esp, 10h
		xor	edx, edx
		mov	[ebx+4Ch], edx

loc_483822:				; CODE XREF: .text:004837FEj
					; .text:00483804j
		xor	ecx, ecx
		mov	[ebp-4], ecx
		xor	esi, esi
		mov	edi, [ebx+40h]
		jmp	short loc_4838A1
; ---------------------------------------------------------------------------

loc_48382E:				; CODE XREF: .text:004838A4j
		mov	eax, [edi]
		add	eax, dword_5E9E20
		mov	edx, [eax]
		cmp	edx, [ebp+14h]
		jnz	short loc_483840
		mov	[ebp-4], esi

loc_483840:				; CODE XREF: .text:0048383Bj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_483866
		push	edx
		add	eax, 4
		push	eax
		push	0F3h
		push	offset a_S08x	; "%.*s	(%08X)"
		lea	edx, [ebp-204h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 14h
		jmp	short loc_483886
; ---------------------------------------------------------------------------

loc_483866:				; CODE XREF: .text:00483844j
		lea	ecx, [eax+4]
		lea	edx, [ebp-204h]
		push	ecx
		push	0F4h
		mov	eax, [eax]
		push	eax
		push	offset a08x_S	; "%08X	 %.*s"
		push	edx		; buffer
		call	_swprintf
		add	esp, 14h

loc_483886:				; CODE XREF: .text:00483864j
		lea	ecx, [ebp-204h]
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	SendMessageW
		inc	esi
		add	edi, 4

loc_4838A1:				; CODE XREF: .text:0048382Cj
		cmp	esi, [ebx+48h]
		jl	short loc_48382E
		push	0		; lParam
		mov	edx, [ebp-4]
		push	edx		; wParam
		push	14Eh		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	SendMessageW
		mov	eax, [ebx+48h]

loc_4838BD:				; CODE XREF: .text:00483781j
					; .text:004837A7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4838C4(wchar_t *s2, int)
loc_4838C4:				; CODE XREF: .text:00484119p
					; .text:004D2E70p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_4838E6
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4838E6
		mov	eax, [ebp+0Ch]
		cmp	word ptr [eax],	0
		jnz	short loc_4838ED

loc_4838E6:				; CODE XREF: .text:004838D5j
					; .text:004838DBj
		xor	eax, eax
		jmp	loc_4839B7
; ---------------------------------------------------------------------------

loc_4838ED:				; CODE XREF: .text:004838E4j
		xor	esi, esi
		mov	ebx, offset word_5EA608

loc_4838F4:				; CODE XREF: .text:0048390Fj
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_483908
		push	edi		; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_483911

loc_483908:				; CODE XREF: .text:004838F8j
		inc	esi
		add	ebx, 48h
		cmp	esi, 8
		jl	short loc_4838F4

loc_483911:				; CODE XREF: .text:00483906j
		cmp	esi, 8
		jl	short loc_48391D
		xor	eax, eax
		jmp	loc_4839B7
; ---------------------------------------------------------------------------

loc_48391D:				; CODE XREF: .text:00483914j
		mov	edx, [ebp+0Ch]
		lea	ecx, [ebp-204h]
		push	edx		; src
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-204h]
		push	eax		; s
		call	__lwcsupr
		pop	ecx
		xor	edx, edx
		mov	[ebp-4], edx
		mov	edi, [ebx+44h]

loc_48394A:				; CODE XREF: .text:004839B3j
		mov	esi, [ebp-4]
		add	esi, edi
		sar	esi, 1
		jns	short loc_483956
		adc	esi, 0

loc_483956:				; CODE XREF: .text:00483951j
		mov	eax, [ebx+40h]
		mov	eax, [eax+esi*8]
		add	eax, dword_5E9E20
		add	eax, 4
		push	eax
		lea	edx, [ebp-204h]
		push	edx
		call	loc_410B90
		add	esp, 8
		test	eax, eax
		jge	short loc_48397D
		mov	edi, esi
		jmp	short loc_4839B0
; ---------------------------------------------------------------------------

loc_48397D:				; CODE XREF: .text:00483977j
		test	eax, eax
		jle	short loc_483987
		inc	esi
		mov	[ebp-4], esi
		jmp	short loc_4839B0
; ---------------------------------------------------------------------------

loc_483987:				; CODE XREF: .text:0048397Fj
		mov	eax, [ebx+40h]
		mov	edx, [eax+esi*8+4]
		add	edx, dword_5E9E20
		add	edx, 4
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4839B7
; ---------------------------------------------------------------------------

loc_4839B0:				; CODE XREF: .text:0048397Bj
					; .text:00483985j
		cmp	edi, [ebp-4]
		jg	short loc_48394A
		xor	eax, eax

loc_4839B7:				; CODE XREF: .text:004838E8j
					; .text:00483918j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 265. _Getrawdata
; Exported entry 597. Getrawdata

; t_rawdata *__cdecl Getrawdata(wchar_t	*_name)
		public Getrawdata
Getrawdata:				; CODE XREF: .text:004642E9p
					; .text:004646FFp ...
		push	ebp		; _Getrawdata
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4839D0
		cmp	word ptr [eax],	0
		jnz	short loc_4839D4

loc_4839D0:				; CODE XREF: .text:004839C8j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4839D4:				; CODE XREF: .text:004839CEj
		push	offset dword_5E9E78 ; a2
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_4839EA
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4839EA:				; CODE XREF: .text:004839E4j
		mov	edx, dword_5E9E20
		mov	eax, [edx+eax]
		test	eax, eax
		jnz	short loc_4839FB
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4839FB:				; CODE XREF: .text:004839F5j
		mov	edx, dword_5E9E2C
		add	edx, eax
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_483A08:				; CODE XREF: .text:loc_40E2B4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBECh
		push	ebx
		push	esi
		push	edi
		xor	esi, esi
		mov	ebx, offset dword_53FF74

loc_483A1B:				; CODE XREF: .text:00483B50j
		mov	eax, esi
		shl	eax, 7
		add	eax, esi
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, offset aHkey_classes_r ; "HKEY_CLASSES_ROOT"
		push	eax		; s
		call	_wcslen
		mov	edx, esi
		pop	ecx
		shl	edx, 7
		mov	[ebx], eax
		add	edx, esi
		lea	edx, [esi+edx*2]
		shl	edx, 2
		add	edx, offset off_53FD74
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	[ebx+4], eax
		cmp	_imp__NtQueryKey, 0
		jz	loc_483B46
		push	105h		; cbName
		lea	ecx, [ebp-214h]
		push	ecx		; lpName
		push	0		; dwIndex
		mov	eax, [ebx-404h]
		push	eax		; hKey
		call	RegEnumKeyW
		test	eax, eax
		jnz	loc_483B46
		lea	edx, [ebp-8]
		lea	ecx, [ebp-214h]
		push	edx		; phkResult
		push	20019h		; samDesired
		push	0		; ulOptions
		push	ecx		; lpSubKey
		mov	eax, [ebx-404h]
		push	eax		; hKey
		call	RegOpenKeyExW
		test	eax, eax
		jnz	loc_483B46
		lea	edx, [ebp-4]
		lea	ecx, [ebp-414h]
		push	edx		; _DWORD
		push	200h		; _DWORD
		push	ecx		; _DWORD
		push	3		; _DWORD
		mov	eax, [ebp-8]
		push	eax		; _DWORD
		call	_imp__NtQueryKey
		mov	edi, eax
		mov	eax, [ebp-8]
		cmp	eax, [ebx-404h]
		jz	short loc_483ADB
		mov	edx, [ebp-8]
		push	edx		; hKey
		call	RegCloseKey

loc_483ADB:				; CODE XREF: .text:00483AD0j
		test	edi, edi
		jnz	short loc_483B46
		cmp	dword ptr [ebp-4], 4
		jbe	short loc_483B46
		mov	ecx, [ebp-4]
		xor	eax, eax
		mov	[ebp+ecx-413h],	al
		lea	ecx, [ebp-410h]
		mov	edx, [ebp-4]
		mov	[ebp+edx-414h],	al
		mov	eax, esi
		shl	eax, 7
		push	ecx		; src
		add	eax, esi
		push	100h		; n
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, offset off_53FD74
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jz	short loc_483B46
		lea	eax, [ebp-214h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		inc	eax
		sub	edi, eax
		mov	word ptr [ebx+edi*2-200h], 0
		mov	[ebx+4], edi

loc_483B46:				; CODE XREF: .text:00483A5Bj
					; .text:00483A7Dj ...
		inc	esi
		add	ebx, 40Ch
		cmp	esi, 7
		jl	loc_483A1B
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 266. _Substitutehkeyprefix
; Exported entry 731. Substitutehkeyprefix

; unsigned int __cdecl Substitutehkeyprefix(wchar_t *key)
		public Substitutehkeyprefix
Substitutehkeyprefix:			; CODE XREF: .text:00480185p
					; .text:004DD340p
		push	ebp		; _Substitutehkeyprefix
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_483B75
		xor	eax, eax
		jmp	loc_483C77
; ---------------------------------------------------------------------------

loc_483B75:				; CODE XREF: .text:00483B6Cj
		xor	edx, edx
		mov	ebx, offset dword_53FF78
		mov	[ebp-4], edx

loc_483B7F:				; CODE XREF: .text:00483C6Aj
		mov	eax, [ebx]
		test	eax, eax
		jz	loc_483C5D
		push	eax		; maxlen
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 7
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, offset off_53FD74
		push	edx		; s2
		push	esi		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_483C5D
		mov	edi, [ebx]
		mov	ax, [esi+edi*2]
		cmp	ax, 5Ch
		jz	short loc_483BC9
		mov	edx, [ebx]
		test	ax, ax
		jnz	loc_483C5D

loc_483BC9:				; CODE XREF: .text:00483BBCj
		add	edi, edi
		add	edi, esi
		push	edi		; s
		call	_wcslen
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_483C01
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 7
		add	ecx, eax
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, offset aHkey_classes_r ; "HKEY_CLASSES_ROOT"
		push	ecx		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_483C77
; ---------------------------------------------------------------------------

loc_483C01:				; CODE XREF: .text:00483BD8j
		mov	eax, [ebx-4]
		mov	edx, eax
		add	edx, edi
		cmp	edx, 100h
		jl	short loc_483C16
		mov	eax, [ebx]
		add	eax, edi
		jmp	short loc_483C77
; ---------------------------------------------------------------------------

loc_483C16:				; CODE XREF: .text:00483C0Ej
		lea	edx, [edi+1]
		add	eax, eax
		add	edx, edx
		push	edx		; n
		mov	ecx, [ebx]
		add	ecx, ecx
		add	ecx, esi
		add	eax, esi
		push	ecx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		mov	eax, [ebx-4]
		add	eax, eax
		push	eax		; n
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 7
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, offset aHkey_classes_r ; "HKEY_CLASSES_ROOT"
		push	edx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx-4]
		add	eax, edi
		jmp	short loc_483C77
; ---------------------------------------------------------------------------

loc_483C5D:				; CODE XREF: .text:00483B83j
					; .text:00483BACj ...
		inc	dword ptr [ebp-4]
		add	ebx, 40Ch
		cmp	dword ptr [ebp-4], 7
		jl	loc_483B7F
		push	esi		; s
		call	_wcslen
		pop	ecx

loc_483C77:				; CODE XREF: .text:00483B70j
					; .text:00483BFFj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_483C80:				; CODE XREF: .text:00469808p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		xor	edi, edi

loc_483C8F:				; CODE XREF: .text:00483CBEj
					; .text:00483CDEj
		test	esi, esi
		jbe	loc_483E69

loc_483C97:				; CODE XREF: .text:00483E63j
		mov	al, [ebx]
		test	al, al
		jnz	short loc_483CA4
		mov	eax, edi
		jmp	loc_483E6C
; ---------------------------------------------------------------------------

loc_483CA4:				; CODE XREF: .text:00483C9Bj
		push	eax		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	loc_483E69
		xor	edx, edx
		mov	dl, [ebx]
		cmp	edx, 25h
		jz	short loc_483CC0
		inc	ebx
		dec	esi
		jmp	short loc_483C8F
; ---------------------------------------------------------------------------

loc_483CC0:				; CODE XREF: .text:00483CBAj
		inc	ebx
		dec	esi
		test	esi, esi
		jz	loc_483E69
		cmp	byte ptr [ebx],	0
		jz	loc_483E69
		xor	ecx, ecx
		mov	cl, [ebx]
		cmp	ecx, 25h
		jnz	short loc_483CE0
		inc	ebx
		dec	esi
		jmp	short loc_483C8F
; ---------------------------------------------------------------------------

loc_483CE0:				; CODE XREF: .text:00483CDAj
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_483CE9
; ---------------------------------------------------------------------------

loc_483CE7:				; CODE XREF: .text:00483CF4j
					; .text:00483CF9j ...
		inc	ebx
		dec	esi

loc_483CE9:				; CODE XREF: .text:00483CE5j
		test	esi, esi
		jbe	short loc_483D05
		xor	eax, eax
		mov	al, [ebx]
		cmp	eax, 20h
		jz	short loc_483CE7
		cmp	eax, 2Dh
		jz	short loc_483CE7
		cmp	eax, 2Bh
		jz	short loc_483CE7
		cmp	eax, 23h
		jz	short loc_483CE7

loc_483D05:				; CODE XREF: .text:00483CEBj
		test	esi, esi
		jbe	short loc_483D19
		xor	edx, edx
		mov	dl, [ebx]
		cmp	edx, 2Ah
		jnz	short loc_483D19
		inc	edi
		inc	ebx
		dec	esi
		jmp	short loc_483D2C
; ---------------------------------------------------------------------------

loc_483D17:				; CODE XREF: .text:00483D2Aj
		inc	ebx
		dec	esi

loc_483D19:				; CODE XREF: .text:00483D07j
					; .text:00483D10j
		test	esi, esi
		jbe	short loc_483D2C
		xor	ecx, ecx
		mov	cl, [ebx]
		push	ecx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_483D17

loc_483D2C:				; CODE XREF: .text:00483D15j
					; .text:00483D1Bj
		test	esi, esi
		jbe	short loc_483D62
		xor	eax, eax
		mov	al, [ebx]
		cmp	eax, 2Eh
		jnz	short loc_483D62
		inc	ebx
		dec	esi
		test	esi, esi
		jbe	short loc_483D4F
		xor	edx, edx
		mov	dl, [ebx]
		cmp	edx, 2Ah
		jnz	short loc_483D4F
		inc	edi
		inc	ebx
		dec	esi
		jmp	short loc_483D62
; ---------------------------------------------------------------------------

loc_483D4D:				; CODE XREF: .text:00483D60j
		inc	ebx
		dec	esi

loc_483D4F:				; CODE XREF: .text:00483D3Dj
					; .text:00483D46j
		test	esi, esi
		jbe	short loc_483D62
		xor	ecx, ecx
		mov	cl, [ebx]
		push	ecx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_483D4D

loc_483D62:				; CODE XREF: .text:00483D2Ej
					; .text:00483D37j ...
		test	esi, esi
		jbe	short loc_483D89
		xor	eax, eax
		mov	al, [ebx]
		cmp	eax, 68h
		jz	short loc_483D7E
		cmp	eax, 6Ch
		jz	short loc_483D7E
		cmp	eax, 4Ch
		jz	short loc_483D7E
		cmp	eax, 77h
		jnz	short loc_483D89

loc_483D7E:				; CODE XREF: .text:00483D6Dj
					; .text:00483D72j ...
		xor	edx, edx
		mov	dl, [ebx]
		mov	[ebp-4], edx
		inc	ebx
		dec	esi
		jmp	short loc_483DC3
; ---------------------------------------------------------------------------

loc_483D89:				; CODE XREF: .text:00483D64j
					; .text:00483D7Cj
		cmp	esi, 3
		jbe	short loc_483DC3
		push	3		; n
		push	offset aI32	; "I32"
		push	ebx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_483DB6
		push	3		; n
		push	offset aI64	; "I64"
		push	ebx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_483DC3

loc_483DB6:				; CODE XREF: .text:00483DA0j
		mov	dword ptr [ebp-4], 49h
		add	ebx, 3
		sub	esi, 3

loc_483DC3:				; CODE XREF: .text:00483D87j
					; .text:00483D8Cj ...
		test	esi, esi
		jz	loc_483E69
		cmp	byte ptr [ebx],	0
		jz	loc_483E69
		xor	ecx, ecx
		mov	cl, [ebx]
		add	ecx, 0FFFFFFBDh	; switch 54 cases
		cmp	ecx, 35h
		ja	short loc_483E5A ; jumptable 00483DE6 default case
		mov	cl, ds:byte_483DED[ecx]
		jmp	ds:off_483E23[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_483DED	db	2,     0,     3,     0 ; DATA XREF: .text:00483DE0r
		db	3,     0,     0,     0 ; indirect table	for switch statement
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	2,     0,     0,     0
		db	0,     1,     0,     2
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	2,     1,     3,     3
		db	3,     0,     1,     0
		db	0,     0,     0,     2
		db	1,     2,     0,     0
		db	2,     0,     1,     0
		db	0,     1
off_483E23	dd offset loc_483E5A, offset loc_483E33, offset	loc_483E47
					; DATA XREF: .text:00483DE6r
		dd offset loc_483E4A	; jump table for switch	statement
; ---------------------------------------------------------------------------

loc_483E33:				; CODE XREF: .text:00483DE6j
					; DATA XREF: .text:off_483E23o
		cmp	dword ptr [ebp-4], 4Ch ; jumptable 00483DE6 cases 88,100,105,111,117,120
		jz	short loc_483E3F
		cmp	dword ptr [ebp-4], 49h
		jnz	short loc_483E44

loc_483E3F:				; CODE XREF: .text:00483E37j
		add	edi, 2
		jmp	short loc_483E5F
; ---------------------------------------------------------------------------

loc_483E44:				; CODE XREF: .text:00483E3Dj
		inc	edi
		jmp	short loc_483E5F
; ---------------------------------------------------------------------------

loc_483E47:				; CODE XREF: .text:00483DE6j
					; DATA XREF: .text:off_483E23o
		inc	edi		; jumptable 00483DE6 cases 67,83,90,99,110,112,115
		jmp	short loc_483E5F
; ---------------------------------------------------------------------------

loc_483E4A:				; CODE XREF: .text:00483DE6j
					; DATA XREF: .text:off_483E23o
		cmp	dword ptr [ebp-4], 4Ch ; jumptable 00483DE6 cases 69,71,101-103
		jnz	short loc_483E55
		add	edi, 3
		jmp	short loc_483E5F
; ---------------------------------------------------------------------------

loc_483E55:				; CODE XREF: .text:00483E4Ej
		add	edi, 2
		jmp	short loc_483E5F
; ---------------------------------------------------------------------------

loc_483E5A:				; CODE XREF: .text:00483DDEj
					; .text:00483DE6j
					; DATA XREF: ...
		or	eax, 0FFFFFFFFh	; jumptable 00483DE6 default case
		jmp	short loc_483E6C
; ---------------------------------------------------------------------------

loc_483E5F:				; CODE XREF: .text:00483E42j
					; .text:00483E45j ...
		inc	ebx
		dec	esi
		test	esi, esi
		ja	loc_483C97

loc_483E69:				; CODE XREF: .text:00483C91j
					; .text:00483CADj ...
		or	eax, 0FFFFFFFFh

loc_483E6C:				; CODE XREF: .text:00483C9Fj
					; .text:00483E5Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_483E74:				; CODE XREF: .text:00469828p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		xor	edi, edi

loc_483E83:				; CODE XREF: .text:00483EB3j
					; .text:00483ED5j
		test	esi, esi
		jbe	loc_48406A

loc_483E8B:				; CODE XREF: .text:00484064j
		mov	ax, [ebx]
		test	ax, ax
		jnz	short loc_483E9A
		mov	eax, edi
		jmp	loc_48406D
; ---------------------------------------------------------------------------

loc_483E9A:				; CODE XREF: .text:00483E91j
		push	eax		; a1
		call	IstextW
		pop	ecx
		test	eax, eax
		jz	loc_48406A
		cmp	word ptr [ebx],	25h
		jz	short loc_483EB5
		add	ebx, 2
		dec	esi
		jmp	short loc_483E83
; ---------------------------------------------------------------------------

loc_483EB5:				; CODE XREF: .text:00483EADj
		add	ebx, 2
		dec	esi
		test	esi, esi
		jz	loc_48406A
		cmp	word ptr [ebx],	0
		jz	loc_48406A
		cmp	word ptr [ebx],	25h
		jnz	short loc_483ED7
		add	ebx, 2
		dec	esi
		jmp	short loc_483E83
; ---------------------------------------------------------------------------

loc_483ED7:				; CODE XREF: .text:00483ECFj
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_483EE2
; ---------------------------------------------------------------------------

loc_483EDE:				; CODE XREF: .text:00483EEDj
					; .text:00483EF3j ...
		add	ebx, 2
		dec	esi

loc_483EE2:				; CODE XREF: .text:00483EDCj
		test	esi, esi
		jbe	short loc_483F01
		mov	ax, [ebx]
		cmp	ax, 20h
		jz	short loc_483EDE
		cmp	ax, 2Dh
		jz	short loc_483EDE
		cmp	ax, 2Bh
		jz	short loc_483EDE
		cmp	ax, 23h
		jz	short loc_483EDE

loc_483F01:				; CODE XREF: .text:00483EE4j
		test	esi, esi
		jbe	short loc_483F16
		cmp	word ptr [ebx],	2Ah
		jnz	short loc_483F16
		inc	edi
		add	ebx, 2
		dec	esi
		jmp	short loc_483F28
; ---------------------------------------------------------------------------

loc_483F12:				; CODE XREF: .text:00483F26j
		add	ebx, 2
		dec	esi

loc_483F16:				; CODE XREF: .text:00483F03j
					; .text:00483F09j
		test	esi, esi
		jbe	short loc_483F28
		mov	dx, [ebx]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_483F12

loc_483F28:				; CODE XREF: .text:00483F10j
					; .text:00483F18j
		test	esi, esi
		jbe	short loc_483F5D
		cmp	word ptr [ebx],	2Eh
		jnz	short loc_483F5D
		add	ebx, 2
		dec	esi
		test	esi, esi
		jbe	short loc_483F4B
		cmp	word ptr [ebx],	2Ah
		jnz	short loc_483F4B
		inc	edi
		add	ebx, 2
		dec	esi
		jmp	short loc_483F5D
; ---------------------------------------------------------------------------

loc_483F47:				; CODE XREF: .text:00483F5Bj
		add	ebx, 2
		dec	esi

loc_483F4B:				; CODE XREF: .text:00483F38j
					; .text:00483F3Ej
		test	esi, esi
		jbe	short loc_483F5D
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_483F47

loc_483F5D:				; CODE XREF: .text:00483F2Aj
					; .text:00483F30j ...
		test	esi, esi
		jbe	short loc_483F88
		mov	ax, [ebx]
		cmp	ax, 68h
		jz	short loc_483F7C
		cmp	ax, 6Ch
		jz	short loc_483F7C
		cmp	ax, 4Ch
		jz	short loc_483F7C
		cmp	ax, 77h
		jnz	short loc_483F88

loc_483F7C:				; CODE XREF: .text:00483F68j
					; .text:00483F6Ej ...
		movzx	edx, word ptr [ebx]
		mov	[ebp-4], edx
		add	ebx, 2
		dec	esi
		jmp	short loc_483FC2
; ---------------------------------------------------------------------------

loc_483F88:				; CODE XREF: .text:00483F5Fj
					; .text:00483F7Aj
		cmp	esi, 3
		jbe	short loc_483FC2
		push	6		; n
		push	offset aI_13	; "I"
		push	ebx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_483FB5
		push	6		; n
		push	offset aI64_1	; s2
		push	ebx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_483FC2

loc_483FB5:				; CODE XREF: .text:00483F9Fj
		mov	dword ptr [ebp-4], 49h
		add	ebx, 6
		sub	esi, 3

loc_483FC2:				; CODE XREF: .text:00483F86j
					; .text:00483F8Bj ...
		test	esi, esi
		jz	loc_48406A
		cmp	word ptr [ebx],	0
		jz	loc_48406A
		movzx	ecx, word ptr [ebx]
		add	ecx, 0FFFFFFBDh	; switch 54 cases
		cmp	ecx, 35h
		ja	short loc_484059 ; jumptable 00483FE5 default case
		mov	cl, ds:byte_483FEC[ecx]
		jmp	ds:off_484022[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_483FEC	db	2,     0,     3,     0 ; DATA XREF: .text:00483FDFr
		db	3,     0,     0,     0 ; indirect table	for switch statement
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	2,     0,     0,     0
		db	0,     1,     0,     2
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	2,     1,     3,     3
		db	3,     0,     1,     0
		db	0,     0,     0,     2
		db	1,     2,     0,     0
		db	2,     0,     1,     0
		db	0,     1
off_484022	dd offset loc_484059, offset loc_484032, offset	loc_484046
					; DATA XREF: .text:00483FE5r
		dd offset loc_484049	; jump table for switch	statement
; ---------------------------------------------------------------------------

loc_484032:				; CODE XREF: .text:00483FE5j
					; DATA XREF: .text:off_484022o
		cmp	dword ptr [ebp-4], 4Ch ; jumptable 00483FE5 cases 88,100,105,111,117,120
		jz	short loc_48403E
		cmp	dword ptr [ebp-4], 49h
		jnz	short loc_484043

loc_48403E:				; CODE XREF: .text:00484036j
		add	edi, 2
		jmp	short loc_48405E
; ---------------------------------------------------------------------------

loc_484043:				; CODE XREF: .text:0048403Cj
		inc	edi
		jmp	short loc_48405E
; ---------------------------------------------------------------------------

loc_484046:				; CODE XREF: .text:00483FE5j
					; DATA XREF: .text:off_484022o
		inc	edi		; jumptable 00483FE5 cases 67,83,90,99,110,112,115
		jmp	short loc_48405E
; ---------------------------------------------------------------------------

loc_484049:				; CODE XREF: .text:00483FE5j
					; DATA XREF: .text:off_484022o
		cmp	dword ptr [ebp-4], 4Ch ; jumptable 00483FE5 cases 69,71,101-103
		jnz	short loc_484054
		add	edi, 3
		jmp	short loc_48405E
; ---------------------------------------------------------------------------

loc_484054:				; CODE XREF: .text:0048404Dj
		add	edi, 2
		jmp	short loc_48405E
; ---------------------------------------------------------------------------

loc_484059:				; CODE XREF: .text:00483FDDj
					; .text:00483FE5j
					; DATA XREF: ...
		or	eax, 0FFFFFFFFh	; jumptable 00483FE5 default case
		jmp	short loc_48406D
; ---------------------------------------------------------------------------

loc_48405E:				; CODE XREF: .text:00484041j
					; .text:00484044j ...
		add	ebx, 2
		dec	esi
		test	esi, esi
		ja	loc_483E8B

loc_48406A:				; CODE XREF: .text:00483E85j
					; .text:00483EA3j ...
		or	eax, 0FFFFFFFFh

loc_48406D:				; CODE XREF: .text:00483E95j
					; .text:0048405Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 267. _Decodeknownbyname
; Exported entry 455. Decodeknownbyname

; int __cdecl Decodeknownbyname(wchar_t	*_name, t_procdata *pd, t_argdec	*adec, wchar_t *rettype, int nexp)
		public Decodeknownbyname
Decodeknownbyname:			; CODE XREF: .text:00415AA5p
					; .text:0044D204p ...
		push	ebp		; _Decodeknownbyname
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_48408C
		cmp	word ptr [esi],	0
		jnz	short loc_484094

loc_48408C:				; CODE XREF: .text:00484084j
		or	eax, 0FFFFFFFFh
		jmp	loc_4841C2
; ---------------------------------------------------------------------------

loc_484094:				; CODE XREF: .text:0048408Aj
		cmp	dword_5E9E20, 0
		jz	short loc_4840A6
		cmp	dword_5E9E48, 0
		jnz	short loc_4840AE

loc_4840A6:				; CODE XREF: .text:0048409Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_4841C2
; ---------------------------------------------------------------------------

loc_4840AE:				; CODE XREF: .text:004840A4j
		push	offset dword_5E9E48 ; a2
		push	esi		; s1
		call	loc_478D08
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_48416B
		xor	eax, eax
		lea	edx, [ebp-208h]
		mov	[ebp-4], eax
		mov	eax, esi
		mov	[ebp-8], edx
		jmp	short loc_4840E8
; ---------------------------------------------------------------------------

loc_4840D8:				; CODE XREF: .text:004840F4j
		mov	ecx, [ebp-8]
		mov	[ecx], dx
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8], 2
		add	eax, 2

loc_4840E8:				; CODE XREF: .text:004840D6j
		mov	dx, [eax]
		cmp	dx, 2Eh
		jz	short loc_4840F6
		test	dx, dx
		jnz	short loc_4840D8

loc_4840F6:				; CODE XREF: .text:004840EFj
		mov	eax, [ebp-4]
		cmp	word ptr [esi+eax*2], 2Eh
		jnz	short loc_48416B
		mov	edx, [ebp-4]
		lea	ecx, [ebp-208h]
		mov	word ptr [ebp+edx*2-208h], 0
		push	ecx		; int
		push	offset aDll	; "DLL"
		call	loc_4838C4
		add	esp, 8
		test	eax, eax
		jle	short loc_48416B
		lea	eax, [ebp-208h]
		push	eax		; s
		call	_wcslen
		mov	edx, [ebp-4]
		pop	ecx
		add	edx, edx
		mov	ecx, 100h
		add	edx, esi
		sub	ecx, eax
		push	edx		; src
		lea	edx, [ebp-208h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset dword_5E9E48 ; a2
		lea	eax, [ebp-208h]
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		mov	ebx, eax

loc_48416B:				; CODE XREF: .text:004840C0j
					; .text:004840FEj ...
		test	ebx, ebx
		jnz	short loc_484174
		or	eax, 0FFFFFFFFh
		jmp	short loc_4841C2
; ---------------------------------------------------------------------------

loc_484174:				; CODE XREF: .text:0048416Dj
		mov	edx, dword_5E9E20
		mov	ebx, [edx+ebx]
		test	ebx, ebx
		jnz	short loc_484186
		or	eax, 0FFFFFFFFh
		jmp	short loc_4841C2
; ---------------------------------------------------------------------------

loc_484186:				; CODE XREF: .text:0048417Fj
		mov	edx, dword_5E9E2C
		push	9		; maxlen
		add	edx, ebx
		push	offset a_intern___1 ; "_INTERN_."
		push	esi		; s1
		mov	ebx, edx
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		setz	al
		and	eax, 1
		mov	edx, [ebp+18h]
		push	edx
		mov	ecx, [ebp+14h]
		push	ecx
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	eax
		push	ebx
		call	loc_480D40
		add	esp, 18h

loc_4841C2:				; CODE XREF: .text:0048408Fj
					; .text:004840A9j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 268. _Decodeknownbyaddr
; Exported entry 453. Decodeknownbyaddr

; int __cdecl Decodeknownbyaddr(ulong _addr, t_procdata *pd, t_argdec *adec, wchar_t *rettype, wchar_t *_name, int nexp, int follow)
		public Decodeknownbyaddr
Decodeknownbyaddr:			; CODE XREF: .text:0044D1E4p
					; .text:00468DE4p ...
		push	ebp		; _Decodeknownbyaddr
		mov	ebp, esp
		add	esp, 0FFFFF9E4h
		cmp	dword_5E9E20, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		jz	short loc_4841E9
		cmp	dword_5E9E48, 0
		jnz	short loc_4841F1

loc_4841E9:				; CODE XREF: .text:004841DEj
		or	eax, 0FFFFFFFFh
		jmp	loc_484782
; ---------------------------------------------------------------------------

loc_4841F1:				; CODE XREF: .text:004841E7j
					; .text:00484745j
		test	esi, esi
		jnz	short loc_4841FD
		or	eax, 0FFFFFFFFh
		jmp	loc_484782
; ---------------------------------------------------------------------------

loc_4841FD:				; CODE XREF: .text:004841F3j
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_484236
		mov	edx, [ebp-18h]
		lea	ecx, [ebp-41Ch]
		add	edx, 0Ch
		push	edx		; src
		push	20h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-41Ch]
		push	eax		; s
		call	__lwcsupr
		pop	ecx
		jmp	short loc_484238
; ---------------------------------------------------------------------------

loc_484236:				; CODE XREF: .text:0048420Bj
		xor	ebx, ebx

loc_484238:				; CODE XREF: .text:00484234j
		mov	word ptr [ebp+ebx*2-41Ch], 2Eh
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4842C7
		push	100h		; nname
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-41Ah]
		add	eax, edx
		push	eax		; _name
		push	22h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_4842C7
		mov	ecx, [ebp+1Ch]
		push	ecx		; nexp
		mov	eax, [ebp+14h]
		push	eax		; rettype
		lea	eax, [ebp-41Ch]
		mov	edx, [ebp+10h]
		push	edx		; adec
		mov	ecx, [ebp+0Ch]
		push	ecx		; pd
		mov	[ebp-10h], eax
		push	eax		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jge	loc_48474A
		mov	eax, [ebp+1Ch]
		push	eax		; nexp
		mov	edx, [ebp+14h]
		push	edx		; rettype
		mov	edx, ebx
		mov	ecx, [ebp+10h]
		add	edx, edx
		push	ecx		; adec
		lea	ecx, [ebp-41Ch]
		mov	eax, [ebp+0Ch]
		add	edx, ecx
		push	eax		; pd
		mov	[ebp-10h], edx
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jge	loc_48474A

loc_4842C7:				; CODE XREF: .text:00484246j
					; .text:00484267j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_48432C
		push	4		; datasize
		lea	eax, [ebp-8]
		push	eax		; data
		push	24h		; type
		push	esi		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_48432C
		mov	edx, [ebp-8]
		mov	ecx, ebx
		push	edx
		lea	eax, [ebp-41Ah]
		add	ecx, ecx
		push	offset aU_17	; "#%u"
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, [ebp+1Ch]
		push	edx		; nexp
		mov	ecx, [ebp+14h]
		push	ecx		; rettype
		lea	ecx, [ebp-41Ch]
		mov	eax, [ebp+10h]
		push	eax		; adec
		mov	edx, [ebp+0Ch]
		push	edx		; pd
		mov	[ebp-10h], ecx
		push	ecx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jge	loc_48474A

loc_48432C:				; CODE XREF: .text:004842CBj
					; .text:004842E0j
		push	100h		; nname
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-41Ah]
		add	eax, edx
		push	eax		; _name
		push	29h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_4843AF
		test	ebx, ebx
		jz	short loc_48437D
		mov	ecx, [ebp+1Ch]
		push	ecx		; nexp
		mov	eax, [ebp+14h]
		push	eax		; rettype
		lea	eax, [ebp-41Ch]
		mov	edx, [ebp+10h]
		push	edx		; adec
		mov	ecx, [ebp+0Ch]
		push	ecx		; pd
		mov	[ebp-10h], eax
		push	eax		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jge	loc_48474A

loc_48437D:				; CODE XREF: .text:0048434Fj
		mov	eax, [ebp+1Ch]
		push	eax		; nexp
		mov	edx, [ebp+14h]
		push	edx		; rettype
		mov	edx, ebx
		mov	ecx, [ebp+10h]
		add	edx, edx
		push	ecx		; adec
		lea	ecx, [ebp-41Ch]
		mov	eax, [ebp+0Ch]
		add	edx, ecx
		push	eax		; pd
		mov	[ebp-10h], edx
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jge	loc_48474A

loc_4843AF:				; CODE XREF: .text:0048434Bj
		push	100h		; nname
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-41Ah]
		add	eax, edx
		push	eax		; _name
		push	21h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_484402
		mov	ecx, [ebp+1Ch]
		push	ecx		; nexp
		mov	eax, [ebp+14h]
		push	eax		; rettype
		mov	eax, ebx
		mov	edx, [ebp+10h]
		add	eax, eax
		push	edx		; adec
		lea	edx, [ebp-41Ch]
		mov	ecx, [ebp+0Ch]
		add	eax, edx
		push	ecx		; pd
		mov	[ebp-10h], eax
		push	eax		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jge	loc_48474A

loc_484402:				; CODE XREF: .text:004843CEj
		push	0		; datasize
		push	4Ah		; type
		push	esi		; _addr
		call	Finddataptr
		add	esp, 0Ch
		mov	edi, eax
		push	0		; subaddr
		push	esi		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-1Ch], eax
		test	edi, edi
		jz	loc_484560
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_484457
		push	100h		; nname
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-41Ah]
		add	eax, edx
		push	eax		; _name
		push	29h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	loc_484560

loc_484457:				; CODE XREF: .text:00484430j
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_48452E
		cmp	byte ptr [edi+4], 0
		jbe	loc_48452E
		mov	eax, [ebp-1Ch]
		xor	ecx, ecx
		mov	cl, [edi+4]
		cmp	ecx, [eax+28h]
		jnz	loc_48452E
		xor	edx, edx
		mov	dl, [edi+4]
		mov	ecx, [edi+edx*8+2]
		add	ecx, dword_5E9E20
		add	ecx, 4
		mov	[ebp-14h], ecx
		mov	eax, [ebp-1Ch]
		test	byte ptr [eax+0Ah], 40h
		jz	short loc_4844D4
		xor	edx, edx
		mov	dl, [edi+4]
		test	byte ptr [edi+edx*8+6],	7
		jnz	short loc_4844D4
		push	offset aAscii_2	; s2
		mov	ecx, [ebp-14h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4844D4
		push	offset dword_5E9E38 ; a2
		push	offset aFormat	; "FORMAT"
		call	loc_478D08
		add	esp, 8
		mov	[ebp-0Ch], eax
		test	eax, eax
		jnz	short loc_484517

loc_4844D4:				; CODE XREF: .text:00484498j
					; .text:004844A4j ...
		mov	edx, [ebp-1Ch]
		test	byte ptr [edx+0Ah], 80h
		jz	short loc_48452E
		xor	ecx, ecx
		mov	cl, [edi+4]
		test	byte ptr [edi+ecx*8+6],	7
		jnz	short loc_48452E
		push	offset aUnicode_7 ; s2
		mov	eax, [ebp-14h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_48452E
		push	offset dword_5E9E38 ; a2
		push	offset aWformat	; "WFORMAT"
		call	loc_478D08
		add	esp, 8
		mov	[ebp-0Ch], eax
		test	eax, eax
		jz	short loc_48452E

loc_484517:				; CODE XREF: .text:004844D2j
		xor	edx, edx
		mov	dl, [edi+4]
		mov	ecx, [ebp-0Ch]
		mov	[edi+edx*8+2], ecx
		xor	eax, eax
		mov	al, [edi+4]
		or	word ptr [edi+eax*8+6],	20h

loc_48452E:				; CODE XREF: .text:0048445Bj
					; .text:00484465j ...
		add	ebx, ebx
		lea	edx, [ebp-41Ch]
		add	ebx, edx
		mov	[ebp-10h], ebx
		mov	ecx, [ebp+1Ch]
		push	ecx
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	0
		push	edi
		call	loc_480D40
		add	esp, 18h
		mov	edi, eax
		test	edi, edi
		jge	loc_48474A

loc_484560:				; CODE XREF: .text:00484426j
					; .text:00484451j
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_484667
		mov	eax, [ebp-1Ch]
		cmp	esi, [eax]
		jnz	loc_484667
		mov	edx, [ebp-1Ch]
		cmp	byte ptr [edx+1Ch], 0
		jz	loc_484667
		push	offset aMsvcrt_	; "MSVCRT."
		push	100h		; n
		lea	ecx, [ebp-41Ch]
		push	ecx		; dest
		call	StrcopyW
		mov	ebx, eax
		add	esp, 0Ch
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-41Ch]
		add	edx, edx
		push	eax		; nname
		add	edx, ecx
		push	edx		; _name
		push	2Bh		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	loc_484667
		mov	eax, [ebp+1Ch]
		push	eax		; nexp
		mov	edx, [ebp+14h]
		push	edx		; rettype
		mov	ecx, [ebp+10h]
		push	ecx		; adec
		mov	eax, [ebp+0Ch]
		push	eax		; pd
		lea	edx, [ebp-41Ch]
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jl	short loc_4845F7
		mov	eax, [ebp-1Ch]
		cmp	edi, [eax+28h]
		jz	short loc_484651

loc_4845F7:				; CODE XREF: .text:004845EDj
		cmp	dword ptr [ebp-4], 1
		jle	short loc_484651
		cmp	word ptr [ebp+ebx*2-41Ch], 5Fh
		jnz	short loc_484651
		mov	edx, [ebp-4]
		mov	ecx, ebx
		add	ecx, ecx
		add	edx, edx
		lea	eax, [ebp-41Ah]
		push	edx		; n
		add	ecx, eax
		mov	edx, ebx
		push	ecx		; src
		lea	ecx, [ebp-41Ch]
		add	edx, edx
		add	edx, ecx
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch
		mov	eax, [ebp+1Ch]
		push	eax		; nexp
		mov	edx, [ebp+14h]
		push	edx		; rettype
		mov	ecx, [ebp+10h]
		push	ecx		; adec
		mov	eax, [ebp+0Ch]
		push	eax		; pd
		lea	edx, [ebp-41Ch]
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax

loc_484651:				; CODE XREF: .text:004845F5j
					; .text:004845FBj ...
		test	edi, edi
		jl	short loc_484667
		add	ebx, ebx
		lea	eax, [ebp-41Ch]
		add	ebx, eax
		mov	[ebp-10h], ebx
		jmp	loc_48474A
; ---------------------------------------------------------------------------

loc_484667:				; CODE XREF: .text:00484564j
					; .text:0048456Fj ...
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_484728
		mov	edx, [ebp-1Ch]
		cmp	esi, [edx]
		jnz	loc_484728
		mov	ecx, [ebp-1Ch]
		cmp	byte ptr [ecx+1Ch], 0
		jz	loc_484728
		push	offset a_intern___1 ; "_INTERN_."
		push	100h		; n
		lea	eax, [ebp-41Ch]
		push	eax		; dest
		call	StrcopyW
		mov	ebx, eax
		add	esp, 0Ch
		mov	eax, 100h
		lea	edx, [ebp-41Ch]
		sub	eax, ebx
		add	ebx, ebx
		add	ebx, edx
		push	eax		; nw
		push	ebx		; w
		push	0Ch		; ns
		mov	ecx, [ebp-1Ch]
		add	ecx, 1Ch
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	eax, [ebp+1Ch]
		push	eax		; nexp
		mov	edx, [ebp+14h]
		push	edx		; rettype
		mov	ecx, [ebp+10h]
		push	ecx		; adec
		mov	eax, [ebp+0Ch]
		push	eax		; pd
		lea	edx, [ebp-41Ch]
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		test	edi, edi
		jl	short loc_484728
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_48474A
		push	0		; comment
		lea	eax, [ebp-61Ch]
		push	100h		; nsymb
		push	eax		; symb
		push	26008h		; mode
		push	0		; amod
		push	esi		; _addr
		call	Decodeaddress
		add	esp, 18h
		test	eax, eax
		jnz	short loc_48471D
		lea	edx, [ebp-41Ch]
		jmp	short loc_484723
; ---------------------------------------------------------------------------

loc_48471D:				; CODE XREF: .text:00484713j
		lea	edx, [ebp-61Ch]

loc_484723:				; CODE XREF: .text:0048471Bj
		mov	[ebp-10h], edx
		jmp	short loc_48474A
; ---------------------------------------------------------------------------

loc_484728:				; CODE XREF: .text:0048466Bj
					; .text:00484676j ...
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_484733
		or	eax, 0FFFFFFFFh
		jmp	short loc_484782
; ---------------------------------------------------------------------------

loc_484733:				; CODE XREF: .text:0048472Cj
		push	esi		; _addr
		call	Followcall
		pop	ecx
		cmp	esi, eax
		jnz	short loc_484743
		or	eax, 0FFFFFFFFh
		jmp	short loc_484782
; ---------------------------------------------------------------------------

loc_484743:				; CODE XREF: .text:0048473Cj
		mov	esi, eax
		jmp	loc_4841F1
; ---------------------------------------------------------------------------

loc_48474A:				; CODE XREF: .text:0048428Fj
					; .text:004842C1j ...
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_484755
		mov	eax, [ebp+0Ch]
		mov	[eax], esi

loc_484755:				; CODE XREF: .text:0048474Ej
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_484780
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_484778
		mov	edx, [ebp-10h]
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+18h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_484780
; ---------------------------------------------------------------------------

loc_484778:				; CODE XREF: .text:0048475Fj
		mov	eax, [ebp+18h]
		mov	word ptr [eax],	0

loc_484780:				; CODE XREF: .text:00484759j
					; .text:00484776j
		mov	eax, edi

loc_484782:				; CODE XREF: .text:004841ECj
					; .text:004841F8j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 269. _Isnoreturn
; Exported entry 633. Isnoreturn

; bool __cdecl Isnoreturn(ulong	_addr)
		public Isnoreturn
Isnoreturn:				; CODE XREF: .text:00463C25p
					; .text:00469084p ...
		push	ebp		; _Isnoreturn
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4847A5
		xor	eax, eax
		jmp	loc_48487C
; ---------------------------------------------------------------------------

loc_4847A5:				; CODE XREF: .text:0048479Cj
		push	ebx		; _addr
		call	Followcall
		pop	ecx
		mov	ebx, eax
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4847C2
		xor	eax, eax
		jmp	loc_48487C
; ---------------------------------------------------------------------------

loc_4847C2:				; CODE XREF: .text:004847B9j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4847E6
		test	byte ptr [eax+0Ah], 4
		jz	short loc_4847E6
		mov	eax, 1
		jmp	loc_48487C
; ---------------------------------------------------------------------------

loc_4847E6:				; CODE XREF: .text:004847D4j
					; .text:004847DAj
		add	esi, 0Ch
		lea	eax, [ebp-400h]
		push	esi		; src
		push	20h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		lea	edx, [ebp-400h]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		mov	word ptr [ebp+esi*2-400h], 2Eh
		lea	ecx, [ebp-3FEh]
		add	esi, esi
		add	esi, ecx
		push	100h		; nname
		push	esi		; _name
		push	22h		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_484837
		xor	eax, eax
		jmp	short loc_48487C
; ---------------------------------------------------------------------------

loc_484837:				; CODE XREF: .text:00484831j
		push	offset dword_5E9E48 ; a2
		lea	edx, [ebp-400h]
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_484853
		xor	eax, eax
		jmp	short loc_48487C
; ---------------------------------------------------------------------------

loc_484853:				; CODE XREF: .text:0048484Dj
		mov	edx, dword_5E9E20
		mov	eax, [edx+eax]
		test	eax, eax
		jnz	short loc_484864
		xor	eax, eax
		jmp	short loc_48487C
; ---------------------------------------------------------------------------

loc_484864:				; CODE XREF: .text:0048485Ej
		mov	edx, dword_5E9E2C
		add	edx, eax
		mov	eax, edx
		test	byte ptr [eax],	4
		jz	short loc_48487A
		mov	eax, 1
		jmp	short loc_48487C
; ---------------------------------------------------------------------------

loc_48487A:				; CODE XREF: .text:00484871j
		xor	eax, eax

loc_48487C:				; CODE XREF: .text:004847A0j
					; .text:004847BDj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_484884:				; CODE XREF: .text:00414139p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		cmp	dword_5E9E20, 0
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		jz	short loc_4848AE
		cmp	dword_5E9E48, 0
		jz	short loc_4848AE
		cmp	dword_5E9E50, 0
		jnz	short loc_4848B5

loc_4848AE:				; CODE XREF: .text:0048489Aj
					; .text:004848A3j
		xor	eax, eax
		jmp	loc_484991
; ---------------------------------------------------------------------------

loc_4848B5:				; CODE XREF: .text:004848ACj
		test	ebx, ebx
		jz	short loc_4848BF
		cmp	word ptr [ebx],	0
		jnz	short loc_4848C6

loc_4848BF:				; CODE XREF: .text:004848B7j
		xor	eax, eax
		jmp	loc_484991
; ---------------------------------------------------------------------------

loc_4848C6:				; CODE XREF: .text:004848BDj
		cmp	dword_5E9E54, 0
		jz	short loc_4848F3
		push	offset loc_478B9C ; _DWORD
		push	4		; size
		mov	edx, dword_5E9E50
		push	edx		; count
		mov	ecx, dword_5E9E48
		push	ecx		; data
		call	Heapsort
		add	esp, 10h
		xor	eax, eax
		mov	dword_5E9E54, eax

loc_4848F3:				; CODE XREF: .text:004848CDj
		push	ebx		; src
		push	20h		; n
		lea	edx, [ebp-204h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	ecx, [ebp-204h]
		push	ecx		; s
		call	__lwcsupr
		pop	ecx
		push	offset a__1	; "."
		mov	eax, 100h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-204h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		xor	edi, edi
		mov	esi, dword_5E9E50

loc_484944:				; CODE XREF: .text:0048498Dj
		lea	ebx, [esi+edi]
		sar	ebx, 1
		jns	short loc_48494E
		adc	ebx, 0

loc_48494E:				; CODE XREF: .text:00484949j
		mov	eax, dword_5E9E48
		mov	eax, [eax+ebx*4]
		add	eax, dword_5E9E20
		mov	edx, [ebp-4]
		push	edx		; maxlen
		add	eax, 4
		push	eax		; s2
		lea	edx, [ebp-204h]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_48497B
		mov	esi, ebx
		jmp	short loc_48498B
; ---------------------------------------------------------------------------

loc_48497B:				; CODE XREF: .text:00484975j
		test	eax, eax
		jle	short loc_484984
		lea	edi, [ebx+1]
		jmp	short loc_48498B
; ---------------------------------------------------------------------------

loc_484984:				; CODE XREF: .text:0048497Dj
		mov	eax, 1
		jmp	short loc_484991
; ---------------------------------------------------------------------------

loc_48498B:				; CODE XREF: .text:00484979j
					; .text:00484982j
		cmp	esi, edi
		jg	short loc_484944
		xor	eax, eax

loc_484991:				; CODE XREF: .text:004848B0j
					; .text:004848C1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 270. _Decodeargument
; Exported entry 452. Decodeargument

; unsigned int __cdecl Decodeargument(t_module *pmod, wchar_t *prtype, void *data, int ndata, wchar_t *text, int ntext,	int *nontriv)
		public Decodeargument
Decodeargument:				; CODE XREF: .text:00412341p
					; .text:0044CF70p ...
		push	ebp		; _Decodeargument
		mov	ebp, esp
		push	eax
		mov	eax, 6

loc_4849A1:				; CODE XREF: .text:004849A9j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4849A1
		mov	eax, [ebp-4]
		add	esp, 0FFFFF620h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+1Ch]
		mov	edi, [ebp+18h]
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_4849CA
		mov	eax, [ebp+20h]
		xor	edx, edx
		mov	[eax], edx

loc_4849CA:				; CODE XREF: .text:004849C1j
		cmp	dword_5E9E20, 0
		jz	short loc_4849DC
		cmp	dword_5E9E38, 0
		jnz	short loc_4849E3

loc_4849DC:				; CODE XREF: .text:004849D1j
		xor	eax, eax
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_4849E3:				; CODE XREF: .text:004849DAj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4849FE
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4849FE
		cmp	dword ptr [ebp+14h], 0
		jle	short loc_4849FE
		test	edi, edi
		jz	short loc_4849FE
		cmp	esi, 4
		jg	short loc_484A05

loc_4849FE:				; CODE XREF: .text:004849E7j
					; .text:004849EDj ...
		xor	eax, eax
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484A05:				; CODE XREF: .text:004849FCj
		xor	edx, edx
		mov	eax, [ebp+0Ch]
		xor	ecx, ecx
		mov	dword_5EBC68, edx
		mov	dword_5EBC6C, ecx
		movzx	eax, word ptr [eax]
		test	al, 7
		jnz	loc_484B82
		mov	dword ptr [ebp-8], 1
		lea	edx, [ebp-262h]
		mov	[ebp-24h], edx
		mov	ecx, [ebp+0Ch]
		lea	eax, [ecx+2]

loc_484A39:				; CODE XREF: .text:00484A5Bj
		mov	dx, [eax]
		cmp	dx, 7Ch
		jz	short loc_484A5D
		test	dx, dx
		jz	short loc_484A5D
		mov	ecx, [ebp-24h]
		add	eax, 2
		mov	[ecx], dx
		inc	dword ptr [ebp-8]
		add	dword ptr [ebp-24h], 2
		cmp	dword ptr [ebp-8], 20h
		jl	short loc_484A39

loc_484A5D:				; CODE XREF: .text:00484A40j
					; .text:00484A45j
		mov	eax, [ebp-8]
		mov	word ptr [ebp+eax*2-264h], 0
		push	offset dword_5E9E38 ; a2
		lea	edx, [ebp-262h]
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_484A8E
		xor	eax, eax
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484A8E:				; CODE XREF: .text:00484A85j
		mov	edx, dword_5E9E20
		lea	ecx, [ebp-10h]
		add	edx, [ebp-18h]
		mov	[ebp-20h], edx
		push	0FFFFFFFFh	; int
		push	0		; int
		push	0		; int
		push	ecx		; int
		lea	edx, [ebp-1Ch]
		push	edx		; int
		push	esi		; int
		push	edi		; int
		mov	eax, [ebp+14h]
		push	eax		; int
		push	eax		; int
		mov	ecx, [ebp+10h]
		push	ecx		; src
		mov	eax, [ebp-20h]
		mov	edx, [eax]
		add	edx, dword_5E9E2C
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; int
		call	loc_47D990
		add	esp, 30h
		mov	ebx, eax
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_484ADE
		mov	eax, [ebp+20h]
		mov	edx, dword_5EBC6C
		mov	[eax], edx

loc_484ADE:				; CODE XREF: .text:00484AD1j
		cmp	ebx, 3
		jnz	short loc_484B01
		push	$CTW0("???")	; "???"
		push	edi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_484B01
		mov	word ptr [edi],	0
		xor	eax, eax
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484B01:				; CODE XREF: .text:00484AE1j
					; .text:00484AF3j
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp-8]
		cmp	word ptr [edx+ecx*2], 7Ch
		jnz	short loc_484B7B
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_484B7B
		mov	eax, [ebp+20h]
		lea	edx, [ebp-224h]
		push	eax		; nontriv
		push	100h		; ntext
		push	edx		; text
		lea	ecx, [ebp-1Ch]
		push	4		; ndata
		push	ecx		; data
		mov	eax, [ebp-8]
		add	eax, eax
		add	eax, [ebp+0Ch]
		add	eax, 2
		push	eax		; prtype
		mov	edx, [ebp+8]
		push	edx		; pmod
		call	Decodeargument
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_484B7B
		push	offset asc_543C58 ; ", "
		mov	ecx, esi
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-224h]
		push	edx		; src
		sub	esi, ebx
		push	esi		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_484B7B:				; CODE XREF: .text:00484B0Cj
					; .text:00484B12j ...
		mov	eax, ebx
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484B82:				; CODE XREF: .text:00484A1Dj
		mov	edx, eax
		and	edx, 7
		cmp	edx, 1
		jnz	loc_484CAF
		cmp	dword ptr [ebp+14h], 4
		jge	short loc_484B9D
		xor	eax, eax
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484B9D:				; CODE XREF: .text:00484B94j
		mov	edx, [ebp+10h]
		mov	ecx, [edx]
		mov	[ebp-14h], ecx
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_484BCE
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_484BBA
		mov	eax, [ebp+20h]
		mov	dword ptr [eax], 1

loc_484BBA:				; CODE XREF: .text:00484BAFj
		push	offset aNull_4	; "NULL"
		push	esi		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484BCE:				; CODE XREF: .text:00484BA9j
		push	0		; comment
		push	esi		; nsymb
		push	edi		; symb
		push	20000h		; mode
		push	0		; amod
		mov	edx, [ebp-14h]
		push	edx		; _addr
		call	Decodeaddress
		mov	ebx, eax
		mov	eax, esi
		sub	eax, ebx
		add	esp, 18h
		cmp	eax, 0Ah
		jge	short loc_484BF7
		mov	eax, ebx
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484BF7:				; CODE XREF: .text:00484BEEj
		push	offset dword_5E9E38 ; a2
		mov	edx, [ebp+0Ch]
		add	edx, 2
		push	edx		; s1
		call	loc_478D08
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_484C1B
		mov	eax, ebx
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484C1B:				; CODE XREF: .text:00484C12j
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-14h]
		push	edx		; _addr
		lea	ecx, [ebp-1Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_484C3B
		mov	eax, ebx
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484C3B:				; CODE XREF: .text:00484C32j
		push	offset asc_54430E ; " -> "
		mov	edx, esi
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, dword_5E9E20
		add	eax, [ebp-18h]
		add	esp, 0Ch
		mov	[ebp-20h], eax
		sub	esi, ebx
		push	0FFFFFFFFh	; int
		push	0		; int
		push	0		; int
		push	0		; int
		push	0		; int
		push	esi		; int
		lea	edi, [edi+ebx*2]
		lea	eax, [ebp-1Ch]
		push	edi		; int
		push	4		; int
		xor	edx, edx
		push	4		; int
		push	eax		; src
		mov	dword_5EBC68, edx
		mov	edx, [ebp-20h]
		mov	ecx, [edx]
		add	ecx, dword_5E9E2C
		push	ecx		; int
		mov	eax, [ebp+8]
		push	eax		; int
		call	loc_47D990
		add	esp, 30h
		add	ebx, eax
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_484CA8
		mov	edx, [ebp+20h]
		mov	dword ptr [edx], 1

loc_484CA8:				; CODE XREF: .text:00484C9Dj
		mov	eax, ebx
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484CAF:				; CODE XREF: .text:00484B8Aj
		cmp	edx, 3
		jnz	loc_484E4E
		cmp	dword ptr [ebp+14h], 4
		jge	short loc_484CC5
		xor	eax, eax
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484CC5:				; CODE XREF: .text:00484CBCj
		mov	edx, [ebp+10h]
		mov	ecx, [edx]
		mov	[ebp-14h], ecx
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_484CF6
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_484CE2
		mov	eax, [ebp+20h]
		mov	dword ptr [eax], 1

loc_484CE2:				; CODE XREF: .text:00484CD7j
		push	offset aNull_4	; "NULL"
		push	esi		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_484E6F
; ---------------------------------------------------------------------------

loc_484CF6:				; CODE XREF: .text:00484CD1j
		push	0		; comment
		push	esi		; nsymb
		push	edi		; symb
		push	20000h		; mode
		push	0		; amod
		mov	edx, [ebp-14h]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	ebx, eax
		push	18h		; nstr
		lea	eax, [ebp-69E4h]
		push	eax		; str
		push	0		; item0
		mov	edx, [ebp-14h]
		push	edx		; _addr
		mov	ecx, [ebp+0Ch]
		add	ecx, 2
		push	ecx		; _name
		call	Decodestructure
		add	esp, 14h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jle	loc_484E4A
		push	offset asc_544EE4 ; " -> {"
		mov	eax, esi
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		xor	ecx, ecx
		add	ebx, eax
		mov	[ebp-4], ecx
		add	esp, 0Ch
		mov	eax, [ebp-4]
		cmp	eax, [ebp-0Ch]
		jge	loc_484E07

loc_484D63:				; CODE XREF: .text:00484E01j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_484D81
		push	offset asc_544EF0 ; ","
		mov	edx, esi
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_484D81:				; CODE XREF: .text:00484D67j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*4]
		shl	eax, 4
		lea	ecx, [ebp-6994h]
		add	eax, ecx
		push	eax		; src
		mov	eax, esi
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, esi
		sub	ecx, ebx
		push	offset asc_544016 ; "="
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		mov	edx, [ebp-4]
		add	ebx, eax
		mov	ecx, edx
		add	esp, 0Ch
		shl	edx, 4
		lea	eax, [ebp-6794h]
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		lea	ecx, [edi+ebx*2]
		shl	edx, 4
		add	edx, eax
		push	edx		; src
		mov	edx, esi
		sub	edx, ebx
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	eax, [esi-1]
		cmp	ebx, eax
		jge	short loc_484E07
		inc	dword ptr [ebp-4]
		mov	edx, [ebp-4]
		cmp	edx, [ebp-0Ch]
		jl	loc_484D63

loc_484E07:				; CODE XREF: .text:00484D5Dj
					; .text:00484DF6j
		lea	ecx, [esi-1]
		cmp	ebx, ecx
		jge	short loc_484E26
		push	offset asc_54401A ; "}"
		sub	esi, ebx
		push	esi		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_484E3B
; ---------------------------------------------------------------------------

loc_484E26:				; CODE XREF: .text:00484E0Cj
		push	offset a____9	; "..."
		lea	edi, [edi+esi*2-8]
		push	edi		; dst
		call	_wcscpy
		add	esp, 8
		lea	ebx, [esi-1]

loc_484E3B:				; CODE XREF: .text:00484E24j
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_484E4A
		mov	eax, [ebp+20h]
		mov	dword ptr [eax], 1

loc_484E4A:				; CODE XREF: .text:00484D34j
					; .text:00484E3Fj
		mov	eax, ebx
		jmp	short loc_484E6F
; ---------------------------------------------------------------------------

loc_484E4E:				; CODE XREF: .text:00484CB2j
		and	eax, 7
		cmp	eax, 4
		jnz	short loc_484E6D
		mov	edx, [ebp+0Ch]
		add	edx, 2
		push	edx		; src
		push	esi		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, ebx
		jmp	short loc_484E6F
; ---------------------------------------------------------------------------

loc_484E6D:				; CODE XREF: .text:00484E54j
		xor	eax, eax

loc_484E6F:				; CODE XREF: .text:004849DEj
					; .text:00484A00j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 271. _Decodetype
; Exported entry 454. Decodetype

; int __cdecl Decodetype(ulong data, wchar_t *type, wchar_t *text, int ntext)
		public Decodetype
Decodetype:				; CODE XREF: .text:004D5FE1p
					; .text:004D601Ep ...
		push	ebp		; _Decodetype
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_484E99
		cmp	word ptr [eax],	0
		jz	short loc_484E99
		test	ebx, ebx
		jz	short loc_484E99
		cmp	esi, 2
		jge	short loc_484E9D

loc_484E99:				; CODE XREF: .text:00484E88j
					; .text:00484E8Ej ...
		xor	eax, eax
		jmp	short loc_484EFA
; ---------------------------------------------------------------------------

loc_484E9D:				; CODE XREF: .text:00484E97j
		push	offset dword_5E9E38 ; a2
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_484EB3
		xor	eax, eax
		jmp	short loc_484EFA
; ---------------------------------------------------------------------------

loc_484EB3:				; CODE XREF: .text:00484EADj
		mov	edx, dword_5E9E20
		add	edx, eax
		mov	eax, edx
		test	eax, eax
		jnz	short loc_484EC5
		xor	eax, eax
		jmp	short loc_484EFA
; ---------------------------------------------------------------------------

loc_484EC5:				; CODE XREF: .text:00484EBFj
		push	0FFFFFFFFh	; int
		push	0		; int
		push	0		; int
		push	0		; int
		push	0		; int
		push	esi		; int
		push	ebx		; int
		xor	edx, edx
		push	4		; int
		mov	dword_5EBC6C, edx
		lea	ecx, [ebp+8]
		push	4		; int
		push	ecx		; src
		mov	dword_5EBC68, edx
		mov	eax, [eax]
		add	eax, dword_5E9E2C
		push	eax		; int
		push	0		; int
		call	loc_47D990
		add	esp, 30h

loc_484EFA:				; CODE XREF: .text:00484E9Bj
					; .text:00484EB1j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 272. _Fillcombowithstruct
; Exported entry 500. Fillcombowithstruct

; int __cdecl Fillcombowithstruct(HWND hWnd, int, wchar_t *s2)
		public Fillcombowithstruct
Fillcombowithstruct:			; CODE XREF: .text:0042B810p
					; .text:00431112p ...
		push	ebp		; _Fillcombowithstruct
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+0Ch]
		jnz	short loc_484F1C
		xor	eax, eax
		jmp	loc_48500D
; ---------------------------------------------------------------------------

loc_484F1C:				; CODE XREF: .text:00484F13j
		cmp	dword_5E9E64, 0
		jz	short loc_484F49
		push	offset loc_478B9C ; _DWORD
		push	4		; size
		mov	edx, dword_5E9E60
		push	edx		; count
		mov	ecx, dword_5E9E58
		push	ecx		; data
		call	Heapsort
		add	esp, 10h
		xor	eax, eax
		mov	dword_5E9E64, eax

loc_484F49:				; CODE XREF: .text:00484F23j
		test	ebx, ebx
		jz	short loc_484F66
		push	ebx		; src
		push	100h		; n
		lea	edx, [ebp-204h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		jmp	short loc_484F68
; ---------------------------------------------------------------------------

loc_484F66:				; CODE XREF: .text:00484F4Bj
		xor	edi, edi

loc_484F68:				; CODE XREF: .text:00484F64j
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		xor	ebx, ebx
		jmp	short loc_484FE6
; ---------------------------------------------------------------------------

loc_484F73:				; CODE XREF: .text:00484FECj
		mov	eax, dword_5E9E58
		mov	esi, [eax+ebx*4]
		add	esi, dword_5E9E20
		add	esi, 4
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_484FB0
		mov	eax, [ebp+10h]
		push	eax		; s2
		push	esi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_484FB0
		push	0		; lParam
		push	0		; wParam
		push	146h		; Msg
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	SendMessageW
		mov	[ebp-4], eax

loc_484FB0:				; CODE XREF: .text:00484F88j
					; .text:00484F99j
		mov	eax, edi
		mov	ecx, 100h
		sub	ecx, edi
		push	esi		; src
		lea	edx, [ebp-204h]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	SendMessageW
		inc	ebx

loc_484FE6:				; CODE XREF: .text:00484F71j
		cmp	ebx, dword_5E9E60
		jl	short loc_484F73
		cmp	dword ptr [ebp-4], 0
		jl	short loc_485008
		push	0		; lParam
		mov	edx, [ebp-4]
		push	edx		; wParam
		push	14Eh		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	SendMessageW

loc_485008:				; CODE XREF: .text:00484FF2j
		mov	eax, dword_5E9E60

loc_48500D:				; CODE XREF: .text:00484F17j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 273. _Getstructureitemcount
; Exported entry 611. Getstructureitemcount

; int __cdecl Getstructureitemcount(wchar_t *_name, ulong *size)
		public Getstructureitemcount
Getstructureitemcount:			; CODE XREF: .text:0044CE89p
					; .text:0045C95Cp ...
		push	ebp		; _Getstructureitemcount
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	ebx, ebx
		jz	short loc_485026
		xor	edx, edx
		mov	[ebx], edx

loc_485026:				; CODE XREF: .text:00485020j
		cmp	dword_5E9E20, 0
		jz	short loc_48503C
		cmp	dword_5E9E58, 0
		jz	short loc_48503C
		test	eax, eax
		jnz	short loc_485041

loc_48503C:				; CODE XREF: .text:0048502Dj
					; .text:00485036j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_485041:				; CODE XREF: .text:0048503Aj
		push	offset dword_5E9E58 ; a2
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_485058
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_485058:				; CODE XREF: .text:00485051j
		mov	edx, dword_5E9E20
		mov	ecx, [edx+eax]
		add	ecx, dword_5E9E2C
		test	ebx, ebx
		mov	eax, ecx
		jz	short loc_485071
		mov	edx, [eax]
		mov	[ebx], edx

loc_485071:				; CODE XREF: .text:0048506Bj
		movzx	eax, word ptr [eax+4]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 274. _Findstructureitembyoffset
; Exported entry 537. Findstructureitembyoffset

; int __cdecl Findstructureitembyoffset(wchar_t	*_name, ulong offset)
		public Findstructureitembyoffset
Findstructureitembyoffset:		; CODE XREF: .text:004BCBA7p
		push	ebp		; _Findstructureitembyoffset
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	dword_5E9E20, 0
		jz	short loc_48509A
		cmp	dword_5E9E58, 0
		jz	short loc_48509A
		test	eax, eax
		jnz	short loc_48509E

loc_48509A:				; CODE XREF: .text:0048508Bj
					; .text:00485094j
		xor	eax, eax
		jmp	short loc_4850E9
; ---------------------------------------------------------------------------

loc_48509E:				; CODE XREF: .text:00485098j
		push	offset dword_5E9E58 ; a2
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_4850B4
		xor	eax, eax
		jmp	short loc_4850E9
; ---------------------------------------------------------------------------

loc_4850B4:				; CODE XREF: .text:004850AEj
		mov	edx, dword_5E9E20
		mov	ebx, [edx+eax]
		xor	eax, eax
		add	ebx, dword_5E9E2C
		xor	edx, edx
		lea	ecx, [ebx+6]
		jmp	short loc_4850DE
; ---------------------------------------------------------------------------

loc_4850CC:				; CODE XREF: .text:004850E4j
		cmp	esi, eax
		jnz	short loc_4850D4
		mov	eax, edx
		jmp	short loc_4850E9
; ---------------------------------------------------------------------------

loc_4850D4:				; CODE XREF: .text:004850CEj
		add	eax, [ecx]
		cmp	esi, eax
		jb	short loc_4850E6
		inc	edx
		add	ecx, 0Eh

loc_4850DE:				; CODE XREF: .text:004850CAj
		movzx	edi, word ptr [ebx+4]
		cmp	edx, edi
		jl	short loc_4850CC

loc_4850E6:				; CODE XREF: .text:004850D8j
		or	eax, 0FFFFFFFFh

loc_4850E9:				; CODE XREF: .text:0048509Cj
					; .text:004850B2j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 275. _Decodestructure
; Exported entry 458. Decodestructure

; int __usercall Decodestructure@<eax>(wchar_t *_name, ulong _addr, int item0, t_strdec *str, int	nstr)
		public Decodestructure
Decodestructure:			; CODE XREF: .text:0044CECBp
					; .text:0045C9AFp ...
		push	ebp		; _Decodestructure
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFFE4h
		cmp	dword_5E9E20, 0
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		jz	short loc_485115
		cmp	dword_5E9E58, 0
		jnz	short loc_48511C

loc_485115:				; CODE XREF: .text:0048510Aj
		xor	eax, eax
		jmp	loc_48553C
; ---------------------------------------------------------------------------

loc_48511C:				; CODE XREF: .text:00485113j
		test	eax, eax
		jz	short loc_48512C
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_48512C
		cmp	dword ptr [ebp+10h], 0
		jge	short loc_485133

loc_48512C:				; CODE XREF: .text:0048511Ej
					; .text:00485124j
		xor	eax, eax
		jmp	loc_48553C
; ---------------------------------------------------------------------------

loc_485133:				; CODE XREF: .text:0048512Aj
		push	offset dword_5E9E58 ; a2
		push	eax		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_48514C
		xor	eax, eax
		jmp	loc_48553C
; ---------------------------------------------------------------------------

loc_48514C:				; CODE XREF: .text:00485143j
		mov	edx, dword_5E9E20
		xor	esi, esi
		mov	ecx, [edx+eax]
		xor	eax, eax
		add	ecx, dword_5E9E2C
		mov	[ebp-1Ch], ecx
		mov	[ebp-0Ch], eax
		mov	eax, [ebp-1Ch]
		add	eax, 6
		jmp	short loc_485176
; ---------------------------------------------------------------------------

loc_48516D:				; CODE XREF: .text:00485184j
		mov	edx, [eax]
		inc	esi
		add	[ebp-0Ch], edx
		add	eax, 0Eh

loc_485176:				; CODE XREF: .text:0048516Bj
		cmp	esi, [ebp+10h]
		jge	short loc_485186
		mov	ecx, [ebp-1Ch]	; int
		movzx	edx, word ptr [ecx+4] ;	int
		cmp	esi, edx
		jl	short loc_48516D

loc_485186:				; CODE XREF: .text:00485179j
		mov	eax, [ebp-1Ch]
		mov	ebx, [eax]
		mov	eax, [ebp-0Ch]
		add	eax, 1000h	; int
		cmp	ebx, eax
		jb	short loc_48519D
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4851AD

loc_48519D:				; CODE XREF: .text:00485195j
		lea	edx, [ebp-101Ch]
		mov	[ebp-10h], edx
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_4851CE
; ---------------------------------------------------------------------------

loc_4851AD:				; CODE XREF: .text:0048519Bj
		push	1		; flags
		sub	ebx, [ebp-0Ch]
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4851CE
		xor	eax, eax
		jmp	loc_48553C
; ---------------------------------------------------------------------------

loc_4851CE:				; CODE XREF: .text:004851ABj
					; .text:004851C5j
		mov	edx, [ebp-1Ch]
		mov	ecx, [edx]
		cmp	ecx, [ebp-0Ch]
		jbe	short loc_4851DE
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4851E5

loc_4851DE:				; CODE XREF: .text:004851D6j
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_485210
; ---------------------------------------------------------------------------

loc_4851E5:				; CODE XREF: .text:004851DCj
		call	Suspendallthreads
		push	5		; mode
		mov	edx, [ebp-1Ch]
		mov	ecx, [edx]
		sub	ecx, [ebp-0Ch]
		push	ecx		; size
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-0Ch]
		push	eax		; _addr
		mov	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-4], eax
		call	Resumeallthreads

loc_485210:				; CODE XREF: .text:004851E3j
		mov	ecx, [ebp-0Ch]
		xor	eax, eax
		add	[ebp+0Ch], ecx
		mov	dword_5EBC68, eax
		mov	eax, [ebp+14h]
		xor	esi, esi
		mov	ebx, eax
		jmp	loc_485511
; ---------------------------------------------------------------------------

loc_485229:				; CODE XREF: .text:00485524j
		mov	edx, eax
		mov	ecx, [ebp-1Ch]
		shl	eax, 3
		sub	eax, edx
		mov	eax, [ecx+eax*2+6]
		mov	[ebp-8], eax
		xor	eax, eax
		mov	edx, [ebp-8]
		mov	[ebx], edx
		mov	ecx, [ebp+0Ch]
		mov	[ebx+4], ecx
		mov	[ebx+8], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jnb	short loc_485258
		mov	byte ptr [ebx+0Ch], 0
		jmp	short loc_48528C
; ---------------------------------------------------------------------------

loc_485258:				; CODE XREF: .text:00485250j
		cmp	dword ptr [ebp-8], 4
		jbe	short loc_485264
		mov	byte ptr [ebx+0Ch], 0
		jmp	short loc_48528C
; ---------------------------------------------------------------------------

loc_485264:				; CODE XREF: .text:0048525Cj
		mov	edx, esi
		mov	ecx, [ebp-8]
		shl	edx, 4
		push	ecx		; n
		add	edx, esi
		mov	eax, [ebp-10h]
		push	eax		; src
		lea	edx, [esi+edx*4]
		shl	edx, 4
		add	edx, [ebp+14h]
		add	edx, 8
		push	edx		; dest
		call	_memcpy
		mov	byte ptr [ebx+0Ch], 1
		add	esp, 0Ch

loc_48528C:				; CODE XREF: .text:00485256j
					; .text:00485262j
		mov	ecx, [ebp+10h]
		add	ecx, esi
		mov	eax, ecx
		shl	eax, 3
		sub	eax, ecx
		mov	edx, [ebp-1Ch]
		mov	cl, [edx+eax*2+10h]
		mov	[ebx+0Dh], cl
		mov	edx, [ebp-1Ch]
		mov	cl, [edx+eax*2+11h]
		mov	[ebx+0Eh], cl
		mov	byte ptr [ebx+0Fh], 0
		mov	edx, [ebp-1Ch]
		mov	ecx, [edx+eax*2+0Ah]
		add	ecx, dword_5E9E20
		mov	[ebp-18h], ecx
		mov	edx, [ebp-1Ch]
		cmp	word ptr [edx+eax*2+0Eh], 40h
		jz	short loc_4852D0
		or	edi, 0FFFFFFFFh
		jmp	short loc_485335
; ---------------------------------------------------------------------------

loc_4852D0:				; CODE XREF: .text:004852C9j
		mov	edi, dword_5EBC68
		dec	edi
		test	edi, edi
		jl	short loc_4852FF

loc_4852DB:				; CODE XREF: .text:004852FDj
		mov	edx, edi
		mov	eax, [ebp-18h]
		shl	edx, 6
		add	eax, 4
		push	eax		; s2
		add	edx, offset word_5EA848
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4852FF
		dec	edi
		test	edi, edi
		jge	short loc_4852DB

loc_4852FF:				; CODE XREF: .text:004852D9j
					; .text:004852F8j
		test	edi, edi
		jl	short loc_485335
		push	offset dword_5E9E38 ; a2
		mov	ecx, edi
		shl	ecx, 6
		add	ecx, offset word_5EAA48
		push	ecx		; s1
		call	loc_478D08
		add	esp, 8
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_48532A
		or	edi, 0FFFFFFFFh
		jmp	short loc_485335
; ---------------------------------------------------------------------------

loc_48532A:				; CODE XREF: .text:00485323j
		mov	eax, dword_5E9E20
		add	eax, [ebp-0Ch]
		mov	[ebp-18h], eax

loc_485335:				; CODE XREF: .text:004852CEj
					; .text:00485301j ...
		test	edi, edi
		jl	loc_485404
		mov	dx, word_5EBC48[edi*4]
		mov	eax, esi
		shl	eax, 4
		mov	ecx, edi
		add	eax, esi
		mov	[ebx+10h], dx
		shl	ecx, 6
		lea	eax, [esi+eax*4]
		add	ecx, offset word_5EAA48
		push	ecx		; src
		push	1Fh		; n
		shl	eax, 4
		add	eax, [ebp+14h]
		add	eax, 12h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword_5BDD48, 0
		jz	short loc_485399
		push	offset asc_544016 ; "="
		mov	edx, edi
		shl	edx, 9
		add	edx, offset word_5EAC48
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4853D7

loc_485399:				; CODE XREF: .text:0048537Aj
		mov	ecx, [ebp+10h]
		mov	edx, [ebp-1Ch]
		add	ecx, esi
		mov	eax, ecx
		shl	eax, 3
		sub	eax, ecx
		movzx	ecx, word ptr [edx+eax*2+12h]
		mov	eax, esi
		add	ecx, [ebp-1Ch]
		shl	eax, 4
		push	ecx		; src
		add	eax, esi
		push	100h		; n
		lea	eax, [esi+eax*4]
		shl	eax, 4
		add	eax, [ebp+14h]
		add	eax, 50h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_48546C
; ---------------------------------------------------------------------------

loc_4853D7:				; CODE XREF: .text:00485397j
		mov	edx, esi
		shl	edx, 4
		add	edx, esi
		shl	edi, 9
		add	edi, offset word_5EAC48
		lea	edx, [esi+edx*4]
		shl	edx, 4
		push	edi		; src
		push	100h		; n
		add	edx, [ebp+14h]
		add	edx, 50h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_48546C
; ---------------------------------------------------------------------------

loc_485404:				; CODE XREF: .text:00485337j
		mov	ecx, [ebp+10h]
		mov	edx, [ebp-1Ch]
		add	ecx, esi
		mov	edi, esi
		mov	eax, ecx
		shl	eax, 3
		sub	eax, ecx
		shl	edi, 4
		mov	cx, [edx+eax*2+0Eh]
		add	edi, esi
		mov	[ebx+10h], cx
		mov	eax, [ebp-18h]
		lea	edi, [esi+edi*4]
		add	eax, 4
		push	eax		; src
		push	1Fh		; n
		shl	edi, 4
		add	edi, [ebp+14h]
		mov	eax, edi
		add	eax, 12h
		push	eax		; dest
		call	StrcopyW
		mov	edx, [ebp+10h]
		mov	eax, [ebp-1Ch]
		add	edx, esi
		add	esp, 0Ch
		mov	ecx, edx
		shl	ecx, 3
		sub	ecx, edx
		movzx	edx, word ptr [eax+ecx*2+12h]
		add	edx, [ebp-1Ch]
		add	edi, 50h
		push	edx		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_48546C:				; CODE XREF: .text:004853D2j
					; .text:00485402j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jb	short loc_4854C1
		mov	eax, esi
		push	0FFFFFFFFh	; int
		shl	eax, 4
		push	0		; int
		add	eax, esi
		push	0		; int
		push	0		; int
		push	0		; int
		lea	eax, [esi+eax*4]
		push	100h		; int
		shl	eax, 4
		xor	edx, edx
		add	eax, [ebp+14h]
		add	eax, 250h
		push	eax		; int
		mov	dl, [ebx+0Eh]
		push	edx		; int
		mov	ecx, [ebp-8]
		push	ecx		; int
		mov	eax, [ebp-10h]
		push	eax		; src
		mov	edx, [ebp-18h]
		mov	ecx, [edx]
		add	ecx, dword_5E9E2C
		push	ecx		; int
		push	0		; int
		call	loc_47D990
		add	esp, 30h
		test	eax, eax
		jnz	short loc_4854E9

loc_4854C1:				; CODE XREF: .text:00485472j
		mov	eax, esi
		push	$CTW0("???")	; "???"
		shl	eax, 4
		push	100h		; n
		add	eax, esi
		lea	eax, [esi+eax*4]
		shl	eax, 4
		add	eax, [ebp+14h]
		add	eax, 250h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4854E9:				; CODE XREF: .text:004854BFj
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jb	short loc_4854F9
		mov	ecx, [ebp-8]
		sub	[ebp-4], ecx
		jmp	short loc_4854FE
; ---------------------------------------------------------------------------

loc_4854F9:				; CODE XREF: .text:004854EFj
		xor	eax, eax
		mov	[ebp-4], eax

loc_4854FE:				; CODE XREF: .text:004854F7j
		mov	edx, [ebp-8]
		inc	esi
		add	[ebp-10h], edx
		mov	ecx, [ebp-8]
		add	[ebp+0Ch], ecx
		add	ebx, 450h

loc_485511:				; CODE XREF: .text:00485224j
		mov	edx, [ebp-1Ch]
		mov	eax, [ebp+10h]
		add	eax, esi
		movzx	ecx, word ptr [edx+4]
		cmp	eax, ecx
		jge	short loc_48552A
		cmp	esi, [ebp+18h]
		jl	loc_485229

loc_48552A:				; CODE XREF: .text:0048551Fj
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_48553A
		mov	eax, [ebp-14h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_48553A:				; CODE XREF: .text:0048552Ej
		mov	eax, esi

loc_48553C:				; CODE XREF: .text:00485117j
					; .text:0048512Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 276. _Getstructureitemvalue
; Exported entry 612. Getstructureitemvalue

; unsigned int __cdecl Getstructureitemvalue(uchar *code, ulong	ncode, wchar_t *_name, wchar_t *itemname, void *value, ulong nvalue)
		public Getstructureitemvalue
Getstructureitemvalue:			; CODE XREF: .text:00452071p
					; .text:00452098p ...
		push	ebp		; _Getstructureitemvalue
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		cmp	dword_5E9E20, 0
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		jz	short loc_485562
		cmp	dword_5E9E58, 0
		jnz	short loc_485569

loc_485562:				; CODE XREF: .text:00485557j
		xor	eax, eax
		jmp	loc_485659
; ---------------------------------------------------------------------------

loc_485569:				; CODE XREF: .text:00485560j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_485575
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_48557C

loc_485575:				; CODE XREF: .text:0048556Dj
		xor	eax, eax
		jmp	loc_485659
; ---------------------------------------------------------------------------

loc_48557C:				; CODE XREF: .text:00485573j
		mov	edx, [ebp+1Ch]
		push	edx		; n
		push	0		; c
		mov	ecx, [ebp+18h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4855A4
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4855A4
		test	ebx, ebx
		jz	short loc_4855A4
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4855AB

loc_4855A4:				; CODE XREF: .text:00485592j
					; .text:00485598j ...
		xor	eax, eax
		jmp	loc_485659
; ---------------------------------------------------------------------------

loc_4855AB:				; CODE XREF: .text:004855A2j
		push	offset dword_5E9E58 ; a2
		push	ebx		; s1
		call	loc_478D08
		add	esp, 8
		test	eax, eax
		jnz	short loc_4855C4
		xor	eax, eax
		jmp	loc_485659
; ---------------------------------------------------------------------------

loc_4855C4:				; CODE XREF: .text:004855BBj
		mov	edx, dword_5E9E20
		mov	edi, [edx+eax]
		xor	eax, eax
		add	edi, dword_5E9E2C
		xor	edx, edx
		mov	[ebp-8], eax
		mov	[ebp-4], edx
		lea	esi, [edi+6]
		jmp	short loc_48564E
; ---------------------------------------------------------------------------

loc_4855E2:				; CODE XREF: .text:00485655j
		mov	ebx, [esi]
		mov	eax, [ebp+14h]
		push	eax		; s2
		movzx	edx, word ptr [esi+0Ch]
		add	edx, edi
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_485645
		mov	ecx, [ebp-8]
		add	ecx, ebx
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_485609
		xor	eax, eax
		jmp	short loc_485659
; ---------------------------------------------------------------------------

loc_485609:				; CODE XREF: .text:00485603j
		cmp	ebx, [ebp+1Ch]
		jbe	short loc_485612
		xor	eax, eax
		jmp	short loc_485659
; ---------------------------------------------------------------------------

loc_485612:				; CODE XREF: .text:0048560Cj
		push	ebx		; n
		mov	edx, [ebp+8]
		add	edx, [ebp-8]
		push	edx		; src
		mov	ecx, [ebp+18h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		cmp	ebx, [ebp+1Ch]
		jnb	short loc_485641
		mov	eax, [ebp+1Ch]
		sub	eax, ebx
		push	eax		; n
		push	0		; c
		mov	edx, [ebp+18h]
		add	edx, ebx
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_485641:				; CODE XREF: .text:00485629j
		mov	eax, ebx
		jmp	short loc_485659
; ---------------------------------------------------------------------------

loc_485645:				; CODE XREF: .text:004855F9j
		add	[ebp-8], ebx
		inc	dword ptr [ebp-4]
		add	esi, 0Eh

loc_48564E:				; CODE XREF: .text:004855E0j
		movzx	edx, word ptr [edi+4]
		cmp	edx, [ebp-4]
		jg	short loc_4855E2
		xor	eax, eax

loc_485659:				; CODE XREF: .text:00485564j
					; .text:00485577j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
		