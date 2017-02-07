.code

; int __cdecl loc_4CD97C(HWND hDlg, WPARAM wParam)
loc_4CD97C:				; CODE XREF: .text:004CF4D7p
					; .text:004CFBB4p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		push	23F7h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		mov	edi, eax
		push	0		; lParam
		push	0		; wParam
		push	184h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		xor	ebx, ebx
		mov	esi, offset word_5C8AA4
		jmp	short loc_4CD9CF
; ---------------------------------------------------------------------------

loc_4CD9AA:				; CODE XREF: .text:004CD9D8j
		mov	eax, ebx
		shl	eax, 6
		add	eax, ebx
		shl	eax, 3
		add	eax, offset word_5C8AA4
		push	eax		; lParam
		push	0		; wParam
		push	180h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		inc	ebx
		add	esi, 208h

loc_4CD9CF:				; CODE XREF: .text:004CD9A8j
		cmp	ebx, 18h
		jge	short loc_4CD9DA
		cmp	word ptr [esi],	0
		jnz	short loc_4CD9AA

loc_4CD9DA:				; CODE XREF: .text:004CD9D2j
		push	0		; lParam
		mov	edx, [ebp+0Ch]
		push	edx		; wParam
		push	186h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		cmp	dword_5C8AA0, 0
		setnz	cl
		and	ecx, 1
		push	ecx		; bEnable
		push	edi		; hWnd
		call	EnableWindow
		cmp	dword_5C8AA0, 0
		jz	short loc_4CDA0D
		cmp	ebx, 18h
		jl	short loc_4CDA11

loc_4CDA0D:				; CODE XREF: .text:004CDA06j
		xor	eax, eax
		jmp	short loc_4CDA16
; ---------------------------------------------------------------------------

loc_4CDA11:				; CODE XREF: .text:004CDA0Bj
		mov	eax, 1

loc_4CDA16:				; CODE XREF: .text:004CDA0Fj
		push	eax		; bEnable
		push	23F8h		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		mov	[ebp+0Ch], eax
		cmp	dword_5C8AA0, 0
		jz	short loc_4CDA51
		cmp	dword ptr [ebp+0Ch], 0
		jl	short loc_4CDA51
		cmp	ebx, [ebp+0Ch]
		jg	short loc_4CDA55

loc_4CDA51:				; CODE XREF: .text:004CDA44j
					; .text:004CDA4Aj
		xor	ecx, ecx
		jmp	short loc_4CDA5A
; ---------------------------------------------------------------------------

loc_4CDA55:				; CODE XREF: .text:004CDA4Fj
		mov	ecx, 1

loc_4CDA5A:				; CODE XREF: .text:004CDA53j
		push	ecx		; bEnable
		push	23F9h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4CDA74(HWND hDlg, int)
loc_4CDA74:				; CODE XREF: .text:004CF4F1p
					; .text:004CFD63p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF4h
		push	ebx
		push	esi
		push	edi
		push	23FDh		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		mov	edi, eax
		push	0		; lParam
		push	0		; wParam
		push	184h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		xor	eax, eax
		mov	[ebp-4], eax
		mov	esi, eax

loc_4CDAA6:				; CODE XREF: .text:004CDB8Ej
		lea	eax, [ebp-0Ch]
		push	eax		; rmax
		lea	edx, [ebp-8]
		push	edx		; rmin
		push	esi		; index
		push	offset set	; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	loc_4CDB93
		mov	ecx, [ebp+0Ch]
		cmp	ecx, [ebp-8]
		jb	short loc_4CDACF
		mov	[ebp-4], esi

loc_4CDACF:				; CODE XREF: .text:004CDACAj
		mov	eax, [ebp-8]
		cmp	eax, [ebp-0Ch]
		jnz	short loc_4CDB29
		mov	edx, [ebp-8]
		push	edx		; u
		lea	ecx, [ebp-20Ch]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		lea	eax, [ebp-40Ch]
		push	eax		; _name
		mov	edx, [ebp-8]
		push	edx		; value
		push	offset aException_6 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4CDB79
		lea	ecx, [ebp-40Ch]
		lea	eax, [ebp-20Ch]
		push	ecx
		add	ebx, ebx
		add	ebx, eax
		push	offset aS_20	; " (%s)"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4CDB79
; ---------------------------------------------------------------------------

loc_4CDB29:				; CODE XREF: .text:004CDAD5j
		mov	edx, [ebp-8]
		push	edx		; u
		lea	ecx, [ebp-20Ch]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-20Ch]
		add	edx, edx
		push	(offset	aPushaPushadMov+32h) ; src
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp-0Ch]
		lea	edx, [ebp-20Ch]
		add	ebx, ebx
		push	eax		; u
		add	ebx, edx
		push	ebx		; s
		call	Hexprint8W
		add	esp, 8

loc_4CDB79:				; CODE XREF: .text:004CDB06j
					; .text:004CDB27j
		lea	ecx, [ebp-20Ch]
		push	ecx		; lParam
		push	0		; wParam
		push	180h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		inc	esi
		jmp	loc_4CDAA6
; ---------------------------------------------------------------------------

loc_4CDB93:				; CODE XREF: .text:004CDABEj
		test	esi, esi
		jle	short loc_4CDBA8
		push	0		; lParam
		mov	eax, [ebp-4]
		push	eax		; wParam
		push	186h		; Msg
		push	edi		; hWnd
		call	SendMessageW

loc_4CDBA8:				; CODE XREF: .text:004CDB95j
		cmp	dword_5C898C, 0
		setnz	dl
		and	edx, 1
		push	edx		; bEnable
		push	edi		; hWnd
		call	EnableWindow
		cmp	dword_5C898C, 0
		jz	short loc_4CDBCE
		cmp	run.lastexception, 0
		jnz	short loc_4CDBD2

loc_4CDBCE:				; CODE XREF: .text:004CDBC3j
		xor	ecx, ecx
		jmp	short loc_4CDBD7
; ---------------------------------------------------------------------------

loc_4CDBD2:				; CODE XREF: .text:004CDBCCj
		mov	ecx, 1

loc_4CDBD7:				; CODE XREF: .text:004CDBD0j
		push	ecx		; bEnable
		push	23FEh		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword_5C898C, 0
		jz	short loc_4CDBFA
		cmp	esi, 1Fh
		jl	short loc_4CDBFE

loc_4CDBFA:				; CODE XREF: .text:004CDBF3j
		xor	edx, edx
		jmp	short loc_4CDC03
; ---------------------------------------------------------------------------

loc_4CDBFE:				; CODE XREF: .text:004CDBF8j
		mov	edx, 1

loc_4CDC03:				; CODE XREF: .text:004CDBFCj
		push	edx		; bEnable
		push	23FFh		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword_5C898C, 0
		jz	short loc_4CDC25
		test	esi, esi
		jg	short loc_4CDC29

loc_4CDC25:				; CODE XREF: .text:004CDC1Fj
		xor	eax, eax
		jmp	short loc_4CDC2E
; ---------------------------------------------------------------------------

loc_4CDC29:				; CODE XREF: .text:004CDC23j
		mov	eax, 1

loc_4CDC2E:				; CODE XREF: .text:004CDC27j
		push	eax		; bEnable
		push	2400h		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	VersionInformation.dwPlatformId, 1
		setnz	cl
		and	ecx, 1
		push	ecx		; bEnable
		push	2401h		; nIDDlgItem
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

loc_4CDC6C:				; CODE XREF: .text:004CF524p
					; .text:004CFEDBp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF7E8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	esi, esi
		jnz	short loc_4CDC8A
		or	eax, 0FFFFFFFFh
		jmp	loc_4CDE1D
; ---------------------------------------------------------------------------

loc_4CDC8A:				; CODE XREF: .text:004CDC80j
		test	ebx, ebx
		jz	short loc_4CDC93
		mov	word ptr [ebx],	0

loc_4CDC93:				; CODE XREF: .text:004CDC8Cj
		mov	word ptr [esi],	0
		lea	edx, [ebp-8]
		push	edx		; phkResult
		push	20019h		; samDesired
		push	0		; ulOptions
		push	offset aSoftwareMicros ; "SOFTWARE\\Microsoft\\Windows NT\\Curren"...
		push	80000002h	; hKey
		call	RegOpenKeyExW
		test	eax, eax
		jz	short loc_4CDCBE
		or	eax, 0FFFFFFFFh
		jmp	loc_4CDE1D
; ---------------------------------------------------------------------------

loc_4CDCBE:				; CODE XREF: .text:004CDCB4j
		mov	dword ptr [ebp-4], 408h
		lea	edx, [ebp-4]
		push	edx		; lpcbData
		lea	ecx, [ebp-410h]
		push	ecx		; lpData
		push	0		; lpType
		push	0		; lpReserved
		push	offset aDebugger ; "Debugger"
		mov	eax, [ebp-8]
		push	eax		; hKey
		call	RegQueryValueExW
		cmp	dword ptr [ebp+10h], 0
		mov	edi, eax
		jz	short loc_4CDD2A
		mov	word ptr [ebp-818h], 0
		mov	dword ptr [ebp-4], 408h
		lea	eax, [ebp-4]
		push	eax		; lpcbData
		lea	edx, [ebp-818h]
		push	edx		; lpData
		push	0		; lpType
		push	0		; lpReserved
		push	offset aAuto	; "Auto"
		mov	ecx, [ebp-8]
		push	ecx		; hKey
		call	RegQueryValueExW
		cmp	word ptr [ebp-818h], 30h
		setz	al
		and	eax, 1
		mov	edx, [ebp+10h]
		mov	[edx], eax

loc_4CDD2A:				; CODE XREF: .text:004CDCE8j
		mov	ecx, [ebp-8]
		push	ecx		; hKey
		call	RegCloseKey
		test	edi, edi
		jz	short loc_4CDD3F
		or	eax, 0FFFFFFFFh
		jmp	loc_4CDE1D
; ---------------------------------------------------------------------------

loc_4CDD3F:				; CODE XREF: .text:004CDD35j
		lea	edx, [ebp-410h]
		push	edx		; src
		push	204h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		test	ebx, ebx
		jnz	short loc_4CDD5F
		xor	eax, eax
		jmp	loc_4CDE1D
; ---------------------------------------------------------------------------

loc_4CDD5F:				; CODE XREF: .text:004CDD56j
		push	offset aAedebugLdLd ; "-AEDEBUG	%ld %ld"
		push	offset ollyfile
		push	offset aSS_4	; "\"%s\" %s"
		lea	edx, [ebp-818h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	ecx, [ebp-818h]
		push	ecx		; s2
		lea	eax, [ebp-410h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4CDDB8
		push	offset aThisCopyOfOlly ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4CDE1D
; ---------------------------------------------------------------------------

loc_4CDDB8:				; CODE XREF: .text:004CDD95j
		cmp	word ptr [ebp-410h], 22h
		jnz	short loc_4CDDEE
		cmp	_imp__PathRemoveArgsW, 0
		jz	short loc_4CDDD8
		lea	edx, [ebp-410h]	; _DWORD
		push	edx
		call	_imp__PathRemoveArgsW

loc_4CDDD8:				; CODE XREF: .text:004CDDC9j
		cmp	_imp__PathUnquoteSpacesW, 0
		jz	short loc_4CDDEE
		lea	ecx, [ebp-410h]
		push	ecx
		call	_imp__PathUnquoteSpacesW

loc_4CDDEE:				; CODE XREF: .text:004CDDC0j
					; .text:004CDDDFj
		cmp	_imp__PathFindFileNameW, 0
		jz	short loc_4CDE06
		lea	eax, [ebp-410h]
		push	eax
		call	_imp__PathFindFileNameW
		jmp	short loc_4CDE0C
; ---------------------------------------------------------------------------

loc_4CDE06:				; CODE XREF: .text:004CDDF5j
		lea	eax, [ebp-410h]

loc_4CDE0C:				; CODE XREF: .text:004CDE04j
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax

loc_4CDE1D:				; CODE XREF: .text:004CDC85j
					; .text:004CDCB9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4CDE24(BYTE *lpData, int)
loc_4CDE24:				; CODE XREF: .text:004CFF0Ap
					; .text:004CFF1Dp ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		lea	eax, [ebp-4]
		push	eax		; phkResult
		push	20006h		; samDesired
		push	0		; ulOptions
		push	offset aSoftwareMicros ; "SOFTWARE\\Microsoft\\Windows NT\\Curren"...
		push	80000002h	; hKey
		call	RegOpenKeyExW
		test	eax, eax
		jz	short loc_4CDE57
		or	eax, 0FFFFFFFFh
		jmp	loc_4CDED7
; ---------------------------------------------------------------------------

loc_4CDE57:				; CODE XREF: .text:004CDE4Dj
		xor	ebx, ebx
		test	esi, esi
		jz	short loc_4CDE86
		push	esi		; s
		call	_wcslen
		pop	ecx
		add	eax, eax
		add	eax, 2
		push	eax		; cbData
		push	esi		; lpData
		push	1		; dwType
		push	0		; Reserved
		push	offset aDebugger ; "Debugger"
		mov	eax, [ebp-4]
		push	eax		; hKey
		call	RegSetValueExW
		test	eax, eax
		jz	short loc_4CDE86
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4CDE90
; ---------------------------------------------------------------------------

loc_4CDE86:				; CODE XREF: .text:004CDE5Bj
					; .text:004CDE7Fj
		mov	dword_5FF224, 1

loc_4CDE90:				; CODE XREF: .text:004CDE84j
		test	edi, edi
		jl	short loc_4CDEC2
		push	4		; cbData
		test	edi, edi
		jnz	short loc_4CDEA1
		mov	eax, offset a1_0 ; "1"
		jmp	short loc_4CDEA6
; ---------------------------------------------------------------------------

loc_4CDEA1:				; CODE XREF: .text:004CDE98j
		mov	eax, (offset aIntegerDivis_0+28h) ; "0"

loc_4CDEA6:				; CODE XREF: .text:004CDE9Fj
		push	eax		; lpData
		push	1		; dwType
		push	0		; Reserved
		push	offset aAuto	; "Auto"
		mov	edx, [ebp-4]
		push	edx		; hKey
		call	RegSetValueExW
		test	eax, eax
		jz	short loc_4CDEC2
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4CDECC
; ---------------------------------------------------------------------------

loc_4CDEC2:				; CODE XREF: .text:004CDE92j
					; .text:004CDEBBj
		mov	dword_5FF224, 1

loc_4CDECC:				; CODE XREF: .text:004CDEC0j
		mov	eax, [ebp-4]
		push	eax		; hKey
		call	RegCloseKey
		mov	eax, ebx

loc_4CDED7:				; CODE XREF: .text:004CDE52j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4CDEE0:				; CODE XREF: .text:004CF56Fp
					; .text:004CFFCBp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4CDEF9
		or	eax, 0FFFFFFFFh
		jmp	loc_4CDFA5
; ---------------------------------------------------------------------------

loc_4CDEF9:				; CODE XREF: .text:004CDEEFj
		cmp	word_57FA28, 0
		jnz	short loc_4CDF24
		push	offset aNone_1	; "<none>"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_4CDFA5
; ---------------------------------------------------------------------------

loc_4CDF24:				; CODE XREF: .text:004CDF01j
		push	offset word_57FA28 ; src
		push	204h		; n
		lea	edx, [ebp-408h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	word ptr [ebp-408h], 22h
		jnz	short loc_4CDF73
		cmp	_imp__PathRemoveArgsW, 0
		jz	short loc_4CDF5D
		lea	ecx, [ebp-408h]
		push	ecx
		call	_imp__PathRemoveArgsW

loc_4CDF5D:				; CODE XREF: .text:004CDF4Ej
		cmp	_imp__PathUnquoteSpacesW, 0
		jz	short loc_4CDF73
		lea	eax, [ebp-408h]
		push	eax
		call	_imp__PathUnquoteSpacesW

loc_4CDF73:				; CODE XREF: .text:004CDF45j
					; .text:004CDF64j
		cmp	_imp__PathFindFileNameW, 0
		jz	short loc_4CDF8B
		lea	edx, [ebp-408h]
		push	edx
		call	_imp__PathFindFileNameW
		jmp	short loc_4CDF91
; ---------------------------------------------------------------------------

loc_4CDF8B:				; CODE XREF: .text:004CDF7Aj
		lea	eax, [ebp-408h]

loc_4CDF91:				; CODE XREF: .text:004CDF89j
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1

loc_4CDFA5:				; CODE XREF: .text:004CDEF4j
					; .text:004CDF1Fj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CDFAC:				; CODE XREF: .text:004D0DA7p
					; .text:004D135Dp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	edi, offset aAcolorpick	; "ACOLORPICK"
 ;__DebugBreak
		mov	esi, offset g_hInstance
		lea	ebx, [ebp-28h]
		push	ebx		; lpWndClass
		lea	eax, aAfontinfo
		push	eax		; lpClassName
		mov	edx, [esi]
		push	edx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_4CE022
		mov	dword ptr [ebx], 20h
		xor	ecx, ecx
		mov	dword ptr [ebx+4], offset loc_4CEC9C
		mov	[ebx+8], ecx
		xor	eax, eax
		mov	[ebx+0Ch], eax
		xor	ecx, ecx
		mov	edx, [esi]
		mov	[ebx+10h], edx
		mov	[ebx+14h], ecx
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	[ebx+18h], eax
		xor	edx, edx
		mov	eax, g_Brush+4
		lea	ecx, aAfontinfo
		mov	[ebx+1Ch], eax
		mov	[ebx+20h], edx
		mov	[ebx+24h], ecx
		push	ebx		; lpWndClass
		call	RegisterClassW

loc_4CE022:				; CODE XREF: .text:004CDFD4j
		push	ebx		; lpWndClass
		push	edi		; lpClassName
		mov	eax, [esi]
		push	eax		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_4CE073
		mov	dword ptr [ebx], 28h
		xor	edx, edx
		mov	dword ptr [ebx+4], offset loc_4CE134
		mov	[ebx+8], edx
		xor	ecx, ecx
		mov	[ebx+0Ch], ecx
		xor	edx, edx
		mov	eax, [esi]
		mov	[ebx+10h], eax
		mov	[ebx+14h], edx
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	[ebx+18h], eax
		xor	ecx, ecx
		mov	[ebx+1Ch], ecx
		xor	eax, eax
		mov	[ebx+20h], eax
		mov	[ebx+24h], edi
		push	ebx		; lpWndClass
		call	RegisterClassW

loc_4CE073:				; CODE XREF: .text:004CE02Ej
		push	ebx		; lpWndClass
		lea	edx, aAhilitepick
		push	edx		; lpClassName
		mov	ecx, [esi]
		push	ecx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_4CE0D0
		mov	dword ptr [ebx], 28h
		xor	eax, eax
		mov	dword ptr [ebx+4], offset loc_4CE134
		mov	[ebx+8], eax
		xor	edx, edx
		mov	[ebx+0Ch], edx
		xor	eax, eax
		mov	ecx, [esi]
		mov	[ebx+10h], ecx
		mov	[ebx+14h], eax
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	[ebx+18h], eax
		xor	edx, edx
		mov	[ebx+1Ch], edx
		xor	ecx, ecx
		mov	[ebx+20h], ecx
		lea	eax, aAhilitepick
		mov	[ebx+24h], eax
		push	ebx		; lpWndClass
		call	RegisterClassW

loc_4CE0D0:				; CODE XREF: .text:004CE085j
		push	ebx		; lpWndClass
		lea	edx, aAcolorsample
		push	edx		; lpClassName
		mov	ecx, [esi]
		push	ecx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_4CE12D
		mov	dword ptr [ebx], 20h
		xor	eax, eax
		mov	dword ptr [ebx+4], offset loc_4CEB70
		mov	[ebx+8], eax
		xor	edx, edx
		mov	[ebx+0Ch], edx
		xor	eax, eax
		mov	ecx, [esi]
		mov	[ebx+10h], ecx
		mov	[ebx+14h], eax
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	[ebx+18h], eax
		xor	edx, edx
		mov	[ebx+1Ch], edx
		xor	ecx, ecx
		mov	[ebx+20h], ecx
		lea	eax, aAcolorsample
		mov	[ebx+24h], eax
		push	ebx		; lpWndClass
		call	RegisterClassW

loc_4CE12D:				; CODE XREF: .text:004CE0E2j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __stdcall	loc_4CE134(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_4CE134:				; DATA XREF: .text:004CE038o
					; .text:004CE08Fo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD50h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	edx, [ebp+0Ch]
		sub	edx, 0Fh
		jz	loc_4CE3ED
		sub	edx, 1F2h
		jz	short loc_4CE167
		add	edx, 0FFFFFFFEh
		sub	edx, 2
		jb	short loc_4CE167
		dec	edx
		jz	short loc_4CE167
		jmp	loc_4CE89D
; ---------------------------------------------------------------------------

loc_4CE167:				; CODE XREF: .text:004CE155j
					; .text:004CE15Dj ...
		or	ebx, 0FFFFFFFFh
		mov	esi, sysfont.height
		test	esi, esi
		jns	short loc_4CE177
		add	esi, 7

loc_4CE177:				; CODE XREF: .text:004CE172j
		sar	esi, 3
		add	esi, sysfont.height
		mov	edx, eax
		and	dx, 0FFFFh
		movzx	ecx, dx
		mov	[ebp-10h], ecx
		shr	eax, 10h
		movzx	eax, ax
		mov	[ebp-14h], eax
		lea	eax, [ebp-24Ch]
		push	eax		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetClientRect
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_4CE29E
; ---------------------------------------------------------------------------

loc_4CE1B0:				; CODE XREF: .text:004CE2A6j
		xor	edi, edi
		jmp	loc_4CE28E
; ---------------------------------------------------------------------------

loc_4CE1B7:				; CODE XREF: .text:004CE295j
		mov	eax, [ebp-244h]
		mov	edx, eax
		imul	edx, edi
		test	edx, edx
		jns	short loc_4CE1C9
		add	edx, 3

loc_4CE1C9:				; CODE XREF: .text:004CE1C4j
		sar	edx, 2
		mov	[ebp-23Ch], edx
		lea	ecx, [edi+1]
		imul	ecx, eax
		test	ecx, ecx
		jns	short loc_4CE1DF
		add	ecx, 3

loc_4CE1DF:				; CODE XREF: .text:004CE1DAj
		sar	ecx, 2
		mov	eax, esi
		add	ecx, 0FFFFFFFEh
		add	eax, eax
		mov	[ebp-234h], ecx
		mov	ecx, [ebp-240h]
		sub	ecx, eax
		mov	eax, ecx
		imul	dword ptr [ebp-4]
		cdq
		push	ecx
		mov	ecx, 9
		idiv	ecx
		add	eax, esi
		pop	ecx
		mov	[ebp-238h], eax
		mov	eax, ecx
		mov	edx, [ebp-4]
		mov	ecx, 9
		inc	edx
		imul	edx
		cdq
		idiv	ecx
		add	eax, esi
		add	eax, 0FFFFFFFEh
		mov	[ebp-230h], eax
		cmp	dword ptr [ebp-4], 5
		jl	short loc_4CE23B
		add	[ebp-238h], esi
		add	[ebp-230h], esi

loc_4CE23B:				; CODE XREF: .text:004CE22Dj
		add	dword ptr [ebp-23Ch], 2
		sub	dword ptr [ebp-234h], 2
		add	dword ptr [ebp-238h], 2
		sub	dword ptr [ebp-230h], 2
		mov	eax, [ebp-10h]
		cmp	eax, [ebp-23Ch]
		jl	short loc_4CE28D
		mov	eax, [ebp-10h]
		cmp	eax, [ebp-234h]
		jge	short loc_4CE28D
		mov	edx, [ebp-14h]
		cmp	edx, [ebp-238h]
		jl	short loc_4CE28D
		mov	ecx, [ebp-14h]
		cmp	ecx, [ebp-230h]
		jge	short loc_4CE28D
		mov	ebx, [ebp-4]
		shl	ebx, 2
		add	ebx, edi
		jmp	short loc_4CE29B
; ---------------------------------------------------------------------------

loc_4CE28D:				; CODE XREF: .text:004CE260j
					; .text:004CE26Bj ...
		inc	edi

loc_4CE28E:				; CODE XREF: .text:004CE1B2j
		cmp	edi, 4
		jge	short loc_4CE29B
		test	ebx, ebx
		jl	loc_4CE1B7

loc_4CE29B:				; CODE XREF: .text:004CE28Bj
					; .text:004CE291j
		inc	dword ptr [ebp-4]

loc_4CE29E:				; CODE XREF: .text:004CE1ABj
		cmp	dword ptr [ebp-4], 9
		jge	short loc_4CE2AC
		test	ebx, ebx
		jl	loc_4CE1B0

loc_4CE2AC:				; CODE XREF: .text:004CE2A2j
		test	ebx, ebx
		jl	loc_4CE8B1
		cmp	dword ptr [ebp+0Ch], 203h
		jz	short loc_4CE2CA
		cmp	dword ptr [ebp+0Ch], 206h
		jnz	loc_4CE37C

loc_4CE2CA:				; CODE XREF: .text:004CE2BBj
		cmp	ebx, 14h
		jl	loc_4CE37C
		push	100h		; nMaxCount
		lea	eax, [ebp-22Ch]
		push	eax		; lpClassName
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetClassNameW
		push	offset aAcolorpick ; "ACOLORPICK"
		lea	ecx, [ebp-22Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4CE305
		cmp	ebx, 23h
		jz	short loc_4CE37C

loc_4CE305:				; CODE XREF: .text:004CE2FEj
		mov	dword ptr [ebp-270h], 24h
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetParent
		mov	[ebp-26Ch], eax
		xor	edx, edx
		mov	[ebp-268h], edx
		xor	eax, eax
		mov	ecx, color[ebx*4]
		xor	edx, edx
		mov	[ebp-264h], ecx
		xor	ecx, ecx
		mov	dword ptr [ebp-260h], (offset color+50h)
		mov	dword ptr [ebp-25Ch], 3
		mov	[ebp-258h], eax
		mov	[ebp-254h], edx
		mov	[ebp-250h], ecx
		lea	eax, [ebp-270h]
		push	eax		; LPCHOOSECOLORW
		call	ChooseColorW
		test	eax, eax
		jz	short loc_4CE37C
		mov	edx, [ebp-264h]
		mov	color[ebx*4], edx

loc_4CE37C:				; CODE XREF: .text:004CE2C4j
					; .text:004CE2CDj ...
		cmp	dword ptr [ebp+0Ch], 201h
		jz	short loc_4CE38E
		cmp	dword ptr [ebp+0Ch], 203h
		jnz	short loc_4CE396

loc_4CE38E:				; CODE XREF: .text:004CE383j
		or	ebx, 100h
		jmp	short loc_4CE3AE
; ---------------------------------------------------------------------------

loc_4CE396:				; CODE XREF: .text:004CE38Cj
		cmp	dword ptr [ebp+0Ch], 204h
		jz	short loc_4CE3A8
		cmp	dword ptr [ebp+0Ch], 206h
		jnz	short loc_4CE3AE

loc_4CE3A8:				; CODE XREF: .text:004CE39Dj
		or	ebx, 200h

loc_4CE3AE:				; CODE XREF: .text:004CE394j
					; .text:004CE3A6j
		mov	ecx, [ebp+8]
		push	ecx		; lParam
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetDlgCtrlID
		movzx	edx, ax
		movzx	ecx, bx
		shl	ecx, 10h
		or	edx, ecx
		push	edx		; wParam
		push	111h		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetParent
		push	eax		; hWnd
		call	SendMessageW
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	InvalidateRect
		jmp	loc_4CE8B1
; ---------------------------------------------------------------------------

loc_4CE3ED:				; CODE XREF: .text:004CE149j
		push	100h		; nMaxCount
		lea	ecx, [ebp-22Ch]
		push	ecx		; lpClassName
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetClassNameW
		push	offset aAcolorpick ; "ACOLORPICK"
		lea	edx, [ebp-22Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4CE425
		mov	dword ptr [ebp-18h], 1
		xor	ebx, ebx
		jmp	short loc_4CE447
; ---------------------------------------------------------------------------

loc_4CE425:				; CODE XREF: .text:004CE418j
		cmp	dword_5BE268, 0Ah
		jge	short loc_4CE439
		mov	ebx, dword_5BE268
		add	ebx, 0Ch
		jmp	short loc_4CE442
; ---------------------------------------------------------------------------

loc_4CE439:				; CODE XREF: .text:004CE42Cj
		mov	ebx, dword_5BE268
		add	ebx, 0Eh

loc_4CE442:				; CODE XREF: .text:004CE437j
		xor	eax, eax
		mov	[ebp-18h], eax

loc_4CE447:				; CODE XREF: .text:004CE423j
		lea	edx, [ebp-2B0h]
		push	edx		; lpPaint
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	BeginPaint
		mov	[ebp-20h], eax
		mov	esi, sysfont.height
		test	esi, esi
		jns	short loc_4CE467
		add	esi, 7

loc_4CE467:				; CODE XREF: .text:004CE462j
		lea	eax, [ebp-24Ch]
		sar	esi, 3
		push	eax		; lpRect
		mov	edx, [ebp+8]
		add	esi, sysfont.height
		push	edx		; hWnd
		call	GetClientRect
		mov	ecx, sysfont.hfont
		push	ecx		; HGDIOBJ
		mov	eax, [ebp-20h]
		push	eax		; HDC
		call	SelectObject
		push	0Eh		; UINT
		mov	edx, [ebp-20h]
		push	edx		; HDC
		call	SetTextAlign
		mov	dword ptr [ebp-0Ch], 3
		xor	ecx, ecx
		lea	eax, hilite._name[ebx*4]
		mov	[ebp-4], ecx
		mov	[ebp-2Ch], eax

loc_4CE4B1:				; CODE XREF: .text:004CE7D3j
		xor	edi, edi
		mov	eax, [ebp-2Ch]
		mov	edx, eax
		mov	[ebp-28h], edx

loc_4CE4BB:				; CODE XREF: .text:004CE7C6j
		mov	ebx, [ebp-4]
		shl	ebx, 2
		add	ebx, edi
		mov	eax, [ebp-244h]
		mov	edx, eax
		imul	edx, edi
		test	edx, edx
		jns	short loc_4CE4D5
		add	edx, 3

loc_4CE4D5:				; CODE XREF: .text:004CE4D0j
		sar	edx, 2
		mov	[ebp-23Ch], edx
		lea	ecx, [edi+1]
		imul	ecx, eax
		test	ecx, ecx
		jns	short loc_4CE4EB
		add	ecx, 3

loc_4CE4EB:				; CODE XREF: .text:004CE4E6j
		sar	ecx, 2
		mov	eax, esi
		add	ecx, 0FFFFFFFEh
		add	eax, eax
		mov	[ebp-234h], ecx
		mov	ecx, [ebp-240h]
		sub	ecx, eax
		mov	eax, ecx
		imul	dword ptr [ebp-4]
		cdq
		push	ecx
		mov	ecx, 9
		idiv	ecx
		add	eax, esi
		pop	ecx
		mov	[ebp-238h], eax
		mov	eax, ecx
		mov	edx, [ebp-4]
		mov	ecx, 9
		inc	edx
		imul	edx
		cdq
		idiv	ecx
		add	eax, esi
		add	eax, 0FFFFFFFEh
		mov	[ebp-230h], eax
		cmp	dword ptr [ebp-4], 5
		jl	short loc_4CE547
		add	[ebp-238h], esi
		add	[ebp-230h], esi

loc_4CE547:				; CODE XREF: .text:004CE539j
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4CE552
		cmp	ebx, 23h
		jz	short loc_4CE5B1

loc_4CE552:				; CODE XREF: .text:004CE54Bj
		push	0Fh		; grfFlags
		lea	eax, [ebp-23Ch]
		push	0Ah		; edge
		push	eax		; qrc
		mov	eax, [ebp-20h]
		push	eax		; hdc
		call	DrawEdge
		add	dword ptr [ebp-23Ch], 2
		sub	dword ptr [ebp-234h], 2
		add	dword ptr [ebp-238h], 2
		sub	dword ptr [ebp-230h], 2
		mov	edx, color[ebx*4]
		push	edx		; COLORREF
		call	CreateSolidBrush
		mov	[ebp-24h], eax
		lea	eax, [ebp-23Ch]
		mov	ecx, [ebp-24h]
		push	ecx		; hbr
		push	eax		; lprc
		mov	edx, [ebp-20h]
		push	edx		; hDC
		call	FillRect
		mov	ecx, [ebp-24h]
		push	ecx		; HGDIOBJ
		call	DeleteObject
		jmp	short loc_4CE5F8
; ---------------------------------------------------------------------------

loc_4CE5B1:				; CODE XREF: .text:004CE550j
		push	0Fh		; grfFlags
		lea	eax, [ebp-23Ch]
		push	6		; edge
		push	eax		; qrc
		mov	edx, [ebp-20h]
		push	edx		; hdc
		call	DrawEdge
		add	dword ptr [ebp-23Ch], 2
		sub	dword ptr [ebp-234h], 2
		add	dword ptr [ebp-238h], 2
		sub	dword ptr [ebp-230h], 2
		mov	ecx, g_Brush+4
		lea	eax, [ebp-23Ch]
		push	ecx		; hbr
		push	eax		; lprc
		mov	edx, [ebp-20h]
		push	edx		; hDC
		call	FillRect

loc_4CE5F8:				; CODE XREF: .text:004CE5AFj
		xor	ecx, ecx
		mov	[ebp-8], ecx
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4CE664
		mov	edx, dword_5BE25C
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		lea	edx, scheme._name[edx*8]
		mov	ecx, dword_5BE260
		mov	edx, [edx+ecx*4+200h]
		mov	eax, color[ebx*4]
		cmp	edx, eax
		jnz	short loc_4CE637
		or	dword ptr [ebp-8], 1

loc_4CE637:				; CODE XREF: .text:004CE631j
		mov	ecx, dword_5BE25C
		mov	edx, ecx
		lea	ecx, [edx+ecx*2]
		lea	ecx, [edx+ecx*8]
		lea	ecx, [edx+ecx*4]
		lea	ecx, scheme._name[ecx*8]
		mov	edx, dword_5BE260
		cmp	eax, [ecx+edx*4+280h]
		jnz	short loc_4CE6B7
		or	dword ptr [ebp-8], 2
		jmp	short loc_4CE6B7
; ---------------------------------------------------------------------------

loc_4CE664:				; CODE XREF: .text:004CE601j
		cmp	ebx, 23h
		jnz	short loc_4CE66E
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CE675
; ---------------------------------------------------------------------------

loc_4CE66E:				; CODE XREF: .text:004CE667j
		mov	eax, color[ebx*4]

loc_4CE675:				; CODE XREF: .text:004CE66Cj
		mov	edx, dword_5BE264
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		mov	ecx, [ebp-28h]
		cmp	eax, [ecx+edx*8+200h]
		jnz	short loc_4CE696
		or	dword ptr [ebp-8], 1

loc_4CE696:				; CODE XREF: .text:004CE690j
		mov	edx, dword_5BE264
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		mov	ecx, [ebp-28h]
		cmp	eax, [ecx+edx*8+280h]
		jnz	short loc_4CE6B7
		or	dword ptr [ebp-8], 2

loc_4CE6B7:				; CODE XREF: .text:004CE65Cj
					; .text:004CE662j ...
		mov	eax, [ebp-0Ch]
		and	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	loc_4CE7C2
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_4CE6D6
		mov	dword ptr [ebp-1Ch], offset asc_568122 ; "F"
		jmp	short loc_4CE6EC
; ---------------------------------------------------------------------------

loc_4CE6D6:				; CODE XREF: .text:004CE6CBj
		cmp	dword ptr [ebp-8], 2
		jnz	short loc_4CE6E5
		mov	dword ptr [ebp-1Ch], offset aB_4 ; "B"
		jmp	short loc_4CE6EC
; ---------------------------------------------------------------------------

loc_4CE6E5:				; CODE XREF: .text:004CE6DAj
		mov	dword ptr [ebp-1Ch], offset aFb	; "FB"

loc_4CE6EC:				; CODE XREF: .text:004CE6D4j
					; .text:004CE6E3j
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4CE719
		cmp	ebx, 23h
		jnz	short loc_4CE719
		mov	edx, g_Color
		push	edx		; COLORREF
		mov	eax, [ebp-20h]
		push	eax		; HDC
		call	SetTextColor
		mov	edx, g_Color+10h
		push	edx		; COLORREF
		mov	ecx, [ebp-20h]
		push	ecx		; HDC
		call	SetBkColor
		jmp	short loc_4CE779
; ---------------------------------------------------------------------------

loc_4CE719:				; CODE XREF: .text:004CE6F0j
					; .text:004CE6F5j
		mov	eax, color[ebx*4]
		mov	ecx, eax
		mov	edx, eax
		shr	ecx, 8
		and	edx, 0FFh
		shr	eax, 10h
		and	ecx, 0FFh
		add	edx, ecx
		and	eax, 0FFh
		add	edx, eax
		cmp	edx, 180h
		jnb	short loc_4CE758
		mov	eax, color+3Ch
		push	eax		; COLORREF
		mov	edx, [ebp-20h]
		push	edx		; HDC
		call	SetTextColor
		jmp	short loc_4CE768
; ---------------------------------------------------------------------------

loc_4CE758:				; CODE XREF: .text:004CE745j
		mov	ecx, color
		push	ecx		; COLORREF
		mov	eax, [ebp-20h]
		push	eax		; HDC
		call	SetTextColor

loc_4CE768:				; CODE XREF: .text:004CE756j
		mov	edx, color[ebx*4]
		push	edx		; COLORREF
		mov	ecx, [ebp-20h]
		push	ecx		; HDC
		call	SetBkColor

loc_4CE779:				; CODE XREF: .text:004CE717j
		push	0		; INT *
		mov	eax, [ebp-1Ch]
		push	eax		; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		mov	edx, [ebp-1Ch]
		push	edx		; LPCWSTR
		lea	ecx, [ebp-23Ch]
		push	ecx		; RECT *
		push	4		; UINT
		mov	eax, [ebp-230h]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		mov	edx, [ebp-23Ch]
		add	edx, [ebp-234h]
		sar	edx, 1
		jns	short loc_4CE7B0
		adc	edx, 0

loc_4CE7B0:				; CODE XREF: .text:004CE7ABj
		push	edx		; int
		mov	ecx, [ebp-20h]
		push	ecx		; HDC
		call	ExtTextOutW
		mov	eax, [ebp-8]
		not	eax
		and	[ebp-0Ch], eax

loc_4CE7C2:				; CODE XREF: .text:004CE6C1j
		inc	edi
		cmp	edi, 4
		jl	loc_4CE4BB
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 9
		jl	loc_4CE4B1
		mov	edx, sysfont.hfont
		push	edx		; HGDIOBJ
		mov	ecx, [ebp-20h]
		push	ecx		; HDC
		call	SelectObject
		mov	eax, g_Color
		push	eax		; COLORREF
		mov	edx, [ebp-20h]
		push	edx		; HDC
		call	SetTextColor
		mov	ecx, g_Color+10h
		push	ecx		; COLORREF
		mov	eax, [ebp-20h]
		push	eax		; HDC
		call	SetBkColor
		push	0		; UINT
		mov	edx, [ebp-20h]
		push	edx		; HDC
		call	SetTextAlign
		push	offset aSystemColours ;	"System	colours:"
		call	_T
		pop	ecx
		mov	[ebp-1Ch], eax
		push	0		; INT *
		mov	ecx, [ebp-1Ch]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		mov	eax, [ebp-1Ch]
		push	eax		; LPCWSTR
		push	0		; RECT *
		push	0		; UINT
		push	0		; int
		push	1		; int
		mov	edx, [ebp-20h]
		push	edx		; HDC
		call	ExtTextOutW
		push	offset aCustomizableCo ; "Customizable colours:"
		call	_T
		pop	ecx
		mov	[ebp-1Ch], eax
		push	0		; INT *
		mov	ecx, [ebp-1Ch]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		mov	eax, [ebp-1Ch]
		push	eax		; LPCWSTR
		push	0		; RECT *
		push	0		; UINT
		mov	edx, esi
		add	edx, edx
		mov	ecx, [ebp-240h]
		sub	ecx, edx
		lea	eax, [ecx+ecx*4]
		mov	ecx, 9
		cdq
		idiv	ecx
		add	esi, eax
		push	esi		; int
		push	1		; int
		mov	eax, [ebp-20h]
		push	eax		; HDC
		call	ExtTextOutW
		lea	edx, [ebp-2B0h]
		push	edx		; lpPaint
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	EndPaint
		jmp	short loc_4CE8B1
; ---------------------------------------------------------------------------

loc_4CE89D:				; CODE XREF: .text:004CE162j
		push	eax		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		mov	edx, [ebp+0Ch]
		push	edx		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	DefWindowProcW
		jmp	short loc_4CE8B3
; ---------------------------------------------------------------------------

loc_4CE8B1:				; CODE XREF: .text:004CE2AEj
					; .text:004CE3E8j ...
		xor	eax, eax

loc_4CE8B3:				; CODE XREF: .text:004CE8AFj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------

loc_4CE8BC:				; DATA XREF: .text:004CEC0Do
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+18h]
		mov	esi, [ebp+8]
		mov	eax, [ebp+1Ch]
		sub	eax, 1
		jb	short loc_4CE8DC
		dec	eax
		jz	loc_4CE971
		jmp	loc_4CEB68
; ---------------------------------------------------------------------------

loc_4CE8DC:				; CODE XREF: .text:004CE8CEj
		mov	edx, [ebx]
		push	edx		; u
		push	esi		; s
		call	Hexprint8W
		add	esp, 8
		mov	edi, eax
		mov	word ptr [esi+edi*2], 20h
		inc	edi
		cmp	dword ptr [ebx], 0
		jnz	short loc_4CE901
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 80h
		jmp	short loc_4CE96A
; ---------------------------------------------------------------------------

loc_4CE901:				; CODE XREF: .text:004CE8F4j
		cmp	dword ptr [ebx], 1
		jnz	short loc_4CE911
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 82h
		jmp	short loc_4CE96A
; ---------------------------------------------------------------------------

loc_4CE911:				; CODE XREF: .text:004CE904j
		cmp	dword ptr [ebx], 2
		jnz	short loc_4CE921
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 3
		jmp	short loc_4CE96A
; ---------------------------------------------------------------------------

loc_4CE921:				; CODE XREF: .text:004CE914j
		cmp	dword ptr [ebx], 3
		jnz	short loc_4CE931
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 4
		jmp	short loc_4CE96A
; ---------------------------------------------------------------------------

loc_4CE931:				; CODE XREF: .text:004CE924j
		cmp	dword ptr [ebx], 4
		jnz	short loc_4CE941
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 5
		jmp	short loc_4CE96A
; ---------------------------------------------------------------------------

loc_4CE941:				; CODE XREF: .text:004CE934j
		cmp	dword ptr [ebx], 5
		jnz	short loc_4CE951
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 6
		jmp	short loc_4CE96A
; ---------------------------------------------------------------------------

loc_4CE951:				; CODE XREF: .text:004CE944j
		cmp	dword ptr [ebx], 6
		jnz	short loc_4CE961
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 7
		jmp	short loc_4CE96A
; ---------------------------------------------------------------------------

loc_4CE961:				; CODE XREF: .text:004CE954j
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 2

loc_4CE96A:				; CODE XREF: .text:004CE8FFj
					; .text:004CE90Fj ...
		mov	eax, edi
		jmp	loc_4CEB6A
; ---------------------------------------------------------------------------

loc_4CE971:				; CODE XREF: .text:004CE8D1j
		cmp	dword ptr [ebx], 0
		jnz	short loc_4CE9A5
		mov	word ptr [esi],	18h
		push	offset aHighlightedTex ; "Highlighted text"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		mov	eax, 1
		jmp	loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CE9A5:				; CODE XREF: .text:004CE974j
		cmp	dword ptr [ebx], 1
		jnz	short loc_4CE9D6
		mov	word ptr [esi],	19h
		push	offset aSelectedLine ; "Selected line"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		xor	eax, eax
		jmp	loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CE9D6:				; CODE XREF: .text:004CE9A8j
		cmp	dword ptr [ebx], 2
		jnz	short loc_4CEA0A
		mov	word ptr [esi],	19h
		push	offset aCurrentEip_1 ; "Current	EIP"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		mov	eax, 20h
		jmp	loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CEA0A:				; CODE XREF: .text:004CE9D9j
		cmp	dword ptr [ebx], 3
		jnz	short loc_4CEA3E
		mov	word ptr [esi],	1Ch
		push	offset aBreakpoint_5 ; "Breakpoint"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		mov	eax, 1
		jmp	loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CEA3E:				; CODE XREF: .text:004CEA0Dj
		cmp	dword ptr [ebx], 4
		jnz	short loc_4CEA6F
		mov	word ptr [esi],	18h
		push	offset aConditional_11 ; "Conditional breakpoint"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		xor	eax, eax
		jmp	loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CEA6F:				; CODE XREF: .text:004CEA41j
		cmp	dword ptr [ebx], 5
		jnz	short loc_4CEAA0
		mov	word ptr [esi],	19h
		push	offset aDisabledBrea_1 ; "Disabled breakpoint"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		xor	eax, eax
		jmp	loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CEAA0:				; CODE XREF: .text:004CEA72j
		cmp	dword ptr [ebx], 6
		jnz	short loc_4CEACE
		mov	word ptr [esi],	19h
		push	offset aEipAtBreakpoin ; "EIP at breakpoint"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		xor	eax, eax
		jmp	short loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CEACE:				; CODE XREF: .text:004CEAA3j
		cmp	dword ptr [ebx], 7
		jnz	short loc_4CEAFF
		mov	word ptr [esi],	1Ch
		push	offset aGrayedText ; "Grayed text"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		mov	eax, 2
		jmp	short loc_4CEB26
; ---------------------------------------------------------------------------

loc_4CEAFF:				; CODE XREF: .text:004CEAD1j
		mov	word ptr [esi],	1
		push	offset aNormalText ; "Normal text"
		call	_T
		pop	ecx
		push	eax		; src
		push	0FFh		; n
		add	esi, 2
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		inc	edi
		xor	eax, eax

loc_4CEB26:				; CODE XREF: .text:004CE9A0j
					; .text:004CE9D1j ...
		cmp	dword ptr [ebx], 4
		jge	short loc_4CEB33
		mov	edx, [ebp+0Ch]
		mov	byte ptr [edx],	60h
		jmp	short loc_4CEB39
; ---------------------------------------------------------------------------

loc_4CEB33:				; CODE XREF: .text:004CEB29j
		mov	ecx, [ebp+0Ch]
		mov	byte ptr [ecx],	62h

loc_4CEB39:				; CODE XREF: .text:004CEB31j
		lea	edx, [edi-1]
		push	edx		; n
		push	eax		; c
		mov	eax, [ebp+0Ch]
		inc	eax
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword ptr [ebx], 2
		jge	short loc_4CEB5B
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 180h
		jmp	short loc_4CEB64
; ---------------------------------------------------------------------------

loc_4CEB5B:				; CODE XREF: .text:004CEB4Ej
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 100h

loc_4CEB64:				; CODE XREF: .text:004CEB59j
		mov	eax, edi
		jmp	short loc_4CEB6A
; ---------------------------------------------------------------------------

loc_4CEB68:				; CODE XREF: .text:004CE8D7j
		xor	eax, eax

loc_4CEB6A:				; CODE XREF: .text:004CE96Cj
					; .text:004CEB66j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __stdcall	loc_4CEB70(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_4CEB70:				; DATA XREF: .text:004CE0ECo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD44h
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	edx, eax
		sub	edx, 0Fh
		jnz	loc_4CEC80
		push	26Ch		; n
		push	0		; c
		lea	eax, [ebp-26Ch]
		push	eax		; s
		call	_memset
		mov	eax, dword_5BE258
		add	esp, 0Ch
		mov	dword ptr [ebp-22Ch], 1
		lea	edx, [eax+eax*4]
		mov	[ebp-38h], eax
		shl	edx, 5
		sub	edx, eax
		mov	ecx, font._width[edx*4]
		lea	ecx, [ecx+ecx*8]
		mov	[ebp-0C8h], ecx
		mov	dword ptr [ebp-0C4h], 3
		mov	eax, [ebp-38h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	edx, dword_5BE25C
		mov	ecx, font._width[eax*4]
		mov	eax, ecx
		shl	ecx, 8
		sub	ecx, eax
		mov	[ebp-0C0h], ecx
		lea	ecx, [ebp-27Ch]
		mov	dword ptr [ebp-1E0h], 3
		mov	dword ptr [ebp-5Ch], offset loc_4CE8BC
		mov	[ebp-34h], edx
		push	ecx		; lpRect
		push	ebx		; hWnd
		call	GetClientRect
		lea	eax, [ebp-2BCh]
		push	eax		; lpPaint
		push	ebx		; hWnd
		call	BeginPaint
		mov	esi, eax
		push	0Fh		; grfFlags
		push	0Ah		; edge
		lea	eax, [ebp-27Ch]
		push	eax		; qrc
		push	esi		; hdc
		call	DrawEdge
		add	dword ptr [ebp-27Ch], 2
		sub	dword ptr [ebp-274h], 2
		add	dword ptr [ebp-278h], 2
		sub	dword ptr [ebp-270h], 2
		lea	edx, [ebp-26Ch]	; int
		lea	ecx, [ebp-27Ch]	; int
		push	edx		; int
		push	ecx		; int
		push	esi		; hDC
		call	loc_41A8CC
		add	esp, 0Ch
		lea	eax, [ebp-2BCh]
		push	eax		; lpPaint
		push	ebx		; hWnd
		call	EndPaint
		jmp	short loc_4CEC91
; ---------------------------------------------------------------------------

loc_4CEC80:				; CODE XREF: .text:004CEB86j
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	eax		; Msg
		push	ebx		; hWnd
		call	DefWindowProcW
		jmp	short loc_4CEC93
; ---------------------------------------------------------------------------

loc_4CEC91:				; CODE XREF: .text:004CEC7Ej
		xor	eax, eax

loc_4CEC93:				; CODE XREF: .text:004CEC8Fj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	loc_4CEC9C(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_4CEC9C:				; DATA XREF: .text:004CDFDEo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD38h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	edx, eax
		sub	edx, 0Fh
		jnz	loc_4CF160
		lea	eax, [ebp-2C8h]
		push	eax		; lpPaint
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	BeginPaint
		mov	esi, eax
		lea	eax, [ebp-22Ch]
		push	eax		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetClientRect
		mov	ecx, g_Brush+4
		lea	eax, [ebp-22Ch]
		push	ecx		; hbr
		push	eax		; lprc
		push	esi		; hDC
		call	FillRect
		mov	edx, sysfont.hfont
		push	edx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		mov	ecx, g_Color
		push	ecx		; COLORREF
		push	esi		; HDC
		call	SetTextColor
		mov	eax, g_Color+10h
		push	eax		; COLORREF
		push	esi		; HDC
		call	SetBkColor
		push	0		; UINT
		push	esi		; HDC
		call	SetTextAlign
		push	offset aFontParameters ; "Font parameters:"
		call	_T
		pop	ecx
		mov	edi, eax
		push	0		; INT *
		push	edi		; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		push	edi		; LPCWSTR
		push	0		; RECT *
		push	0		; UINT
		mov	eax, [ebp-228h]
		push	eax		; int
		push	0		; int
		push	esi		; HDC
		call	ExtTextOutW
		push	esi
		push	edi
		lea	edi, [ebp-21Ch]
		lea	esi, [ebp-22Ch]
		mov	ecx, 4
		rep movsd
		mov	eax, sysfont.height
		pop	edi
		mov	edx, eax
		pop	esi
		test	edx, edx
		jns	short loc_4CED6A
		add	edx, 7

loc_4CED6A:				; CODE XREF: .text:004CED65j
		sar	edx, 3
		lea	ecx, [ebp-21Ch]
		add	edx, eax
		inc	edx
		add	[ebp-218h], edx
		push	0Fh		; grfFlags
		push	0Ah		; edge
		push	ecx		; qrc
		push	esi		; hdc
		call	DrawEdge
		add	dword ptr [ebp-21Ch], 2
		sub	dword ptr [ebp-214h], 2
		add	dword ptr [ebp-218h], 2
		sub	dword ptr [ebp-210h], 2
		mov	eax, [ebp-21Ch]
		mov	edx, sysfont.height
		add	eax, sysfont._width
		test	edx, edx
		mov	[ebp-8], eax
		jns	short loc_4CEDBF
		add	edx, 3

loc_4CEDBF:				; CODE XREF: .text:004CEDBAj
		sar	edx, 2
		mov	eax, dword_5BE258
		add	edx, [ebp-218h]
		lea	ecx, [ebp-288h]
		mov	[ebp-0Ch], edx
		mov	edx, eax
		push	ecx		; LPVOID
		push	5Ch		; int
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.hfont[eax*4]
		push	ecx		; HGDIOBJ
		call	GetObjectW
		xor	eax, eax
		mov	[ebp-4], eax

loc_4CEDF5:				; CODE XREF: .text:004CF148j
		xor	ebx, ebx
		mov	eax, [ebp-4]
		cmp	eax, 4		; switch 5 cases
		ja	loc_4CF0F2	; jumptable 004CEE03 default case
		jmp	ds:off_4CEE0A[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4CEE0A	dd offset loc_4CEE1E	; DATA XREF: .text:004CEE03r
		dd offset loc_4CEE64	; jump table for switch	statement
		dd offset loc_4CEEAA
		dd offset loc_4CEFE0
		dd offset loc_4CF0CB
; ---------------------------------------------------------------------------

loc_4CEE1E:				; CODE XREF: .text:004CEE03j
					; DATA XREF: .text:off_4CEE0Ao
		push	offset aHeight	; jumptable 004CEE03 case 0
		call	_T
		mov	edi, eax
		mov	eax, dword_5BE258
		mov	edx, eax
		pop	ecx
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		push	ecx
		push	offset aIPixels	; "%i pixels"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4CF0F2	; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CEE64:				; CODE XREF: .text:004CEE03j
					; DATA XREF: .text:off_4CEE0Ao
		push	offset aWidth	; jumptable 004CEE03 case 1
		call	_T
		mov	edi, eax
		mov	eax, dword_5BE258
		mov	edx, eax
		pop	ecx
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font._width[eax*4]
		push	ecx
		push	offset aIPixels	; "%i pixels"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4CF0F2	; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CEEAA:				; CODE XREF: .text:004CEE03j
					; DATA XREF: .text:off_4CEE0Ao
		push	offset aStyle_0	; jumptable 004CEE03 case 2
		call	_T
		pop	ecx
		mov	edi, eax
		cmp	dword ptr [ebp-278h], 190h
		jnz	short loc_4CEEE7
		push	offset aNormal	; "Normal"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4CEF3B
; ---------------------------------------------------------------------------

loc_4CEEE7:				; CODE XREF: .text:004CEEC1j
		cmp	dword ptr [ebp-278h], 2BCh
		jnz	short loc_4CEF17
		push	offset aBold	; "Bold"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4CEF3B
; ---------------------------------------------------------------------------

loc_4CEF17:				; CODE XREF: .text:004CEEF1j
		mov	eax, [ebp-278h]
		push	eax
		push	offset aWeightI	; "Weight=%i"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-20Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax

loc_4CEF3B:				; CODE XREF: .text:004CEEE5j
					; .text:004CEF15j
		cmp	byte ptr [ebp-274h], 0
		jz	short loc_4CEF6F
		push	offset aItalic	; ", Italic"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-20Ch]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4CEF6F:				; CODE XREF: .text:004CEF42j
		cmp	byte ptr [ebp-273h], 0
		jz	short loc_4CEFA3
		push	offset aUnderline ; ", Underline"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-20Ch]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4CEFA3:				; CODE XREF: .text:004CEF76j
		cmp	byte ptr [ebp-272h], 0
		jz	loc_4CF0F2	; jumptable 004CEE03 default case
		push	offset aStrikeout ; ", Strikeout"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-20Ch]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4CF0F2	; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CEFE0:				; CODE XREF: .text:004CEE03j
					; DATA XREF: .text:off_4CEE0Ao
		push	offset aCharset	; jumptable 004CEE03 case 3
		call	_T
		pop	ecx
		mov	edi, eax
		cmp	byte ptr [ebp-271h], 0
		jnz	short loc_4CF01D
		push	offset aAnsi	; "ANSI"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4CF0F2	; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CF01D:				; CODE XREF: .text:004CEFF4j
		cmp	byte ptr [ebp-271h], 1
		jnz	short loc_4CF04D
		push	offset aDefault	; "Default"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4CF0F2	; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CF04D:				; CODE XREF: .text:004CF024j
		cmp	byte ptr [ebp-271h], 2
		jnz	short loc_4CF07A
		push	offset aSymbol	; "Symbol"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4CF0F2 ; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CF07A:				; CODE XREF: .text:004CF054j
		cmp	byte ptr [ebp-271h], 0FFh
		jnz	short loc_4CF0A7
		push	offset aOem	; "OEM"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4CF0F2 ; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CF0A7:				; CODE XREF: .text:004CF081j
		push	offset aOther	; "Other"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4CF0F2 ; jumptable 004CEE03 default case
; ---------------------------------------------------------------------------

loc_4CF0CB:				; CODE XREF: .text:004CEE03j
					; DATA XREF: .text:off_4CEE0Ao
		push	offset aFace	; jumptable 004CEE03 case 4
		call	_T
		mov	edi, eax
		lea	eax, [ebp-26Ch]
		pop	ecx
		push	eax		; src
		lea	edx, [ebp-20Ch]
		push	20h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4CF0F2:				; CODE XREF: .text:004CEDFDj
					; .text:004CEE5Fj ...
		push	0		; jumptable 004CEE03 default case
		push	edi		; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		push	edi		; LPCWSTR
		push	0		; RECT *
		push	0		; UINT
		mov	eax, [ebp-0Ch]
		push	eax		; int
		mov	edx, [ebp-8]
		push	edx		; int
		push	esi		; HDC
		call	ExtTextOutW
		push	0		; INT *
		push	ebx		; UINT
		lea	ecx, [ebp-20Ch]
		mov	edx, sysfont._width
		shl	edx, 2
		push	ecx		; LPCWSTR
		push	0		; RECT *
		push	0		; UINT
		mov	eax, [ebp-0Ch]
		lea	edx, [edx+edx*2]
		push	eax		; int
		add	edx, [ebp-8]
		push	edx		; int
		push	esi		; HDC
		call	ExtTextOutW
		mov	ecx, sysfont.height
		inc	ecx
		add	[ebp-0Ch], ecx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 5
		jl	loc_4CEDF5
		lea	eax, [ebp-2C8h]
		push	eax		; lpPaint
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	EndPaint
		jmp	short loc_4CF174
; ---------------------------------------------------------------------------

loc_4CF160:				; CODE XREF: .text:004CECB0j
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	eax		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	DefWindowProcW
		jmp	short loc_4CF176
; ---------------------------------------------------------------------------

loc_4CF174:				; CODE XREF: .text:004CF15Ej
		xor	eax, eax

loc_4CF176:				; CODE XREF: .text:004CF172j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

; BOOL __stdcall loc_4CF180(HWND, LPARAM)
loc_4CF180:				; DATA XREF: .text:004D0A27o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	ebx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 232Ah
		jz	short loc_4CF19A
		push	ebx		; hWnd
		call	DestroyWindow

loc_4CF19A:				; CODE XREF: .text:004CF192j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

; int __stdcall	loc_4CF1A4(HWND	hWnd, int, __int16, int)
loc_4CF1A4:				; DATA XREF: .text:004D0247o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFA4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 111h
		jnz	loc_4CF276
		mov	ax, [ebp+10h]
		and	ax, 0FFFFh
		cmp	ax, 402h
		jnz	loc_4CF276
		lea	edx, [ebp-5Ch]
		push	edx		; lParam
		push	0		; wParam
		push	401h		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	SendMessageW
		lea	eax, [ebp-5Ch]
		push	eax		; LOGFONTW *
		call	CreateFontIndirectW
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4CF276
		mov	eax, dword_5BE258
		lea	esi, [ebp-5Ch]
		mov	edx, eax
		mov	ecx, 17h
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		lea	edi, font.logfont.lfHeight[eax*4]
		rep movsd
		xor	edx, edx
		mov	font.stockindex[eax*4],	edx
		mov	eax, dword_5BE258
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		shl	eax, 2
		add	eax, offset font
		push	eax		; LOGFONTW *
		call	loc_4113D0
		pop	ecx
		push	ebx		; HGDIOBJ
		call	DeleteObject
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetParent
		mov	ebx, eax
		push	1		; bErase
		push	0		; lpRect
		push	240Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		push	0		; lpRect
		push	240Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect

loc_4CF276:				; CODE XREF: .text:004CF1B4j
					; .text:004CF1C6j ...
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_4CF284(HWND, UINT, WPARAM, LPARAM)
loc_4CF284:				; DATA XREF: .text:004D1061o
_DlgOption:					; .text:004D159Do
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF694h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		cmp	eax, 112h
		jg	short loc_4CF2B6
		jz	loc_4D0D33
		sub	eax, 110h
		jz	short loc_4CF2CF
		dec	eax
		jz	loc_4CF80F
		jmp	loc_4D0D74
; ---------------------------------------------------------------------------

loc_4CF2B6:				; CODE XREF: .text:004CF29Bj
		sub	eax, 134h
		jz	loc_4CF7BB
		sub	eax, 4
		jz	loc_4CF662
		jmp	loc_4D0D74
; ---------------------------------------------------------------------------

loc_4CF2CF:				; CODE XREF: .text:004CF2A8j
		push	offset stru_5FF1A8 ; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		lea	edx, [ebp-8C4h]
		push	edx		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		lea	ecx, [ebp-8D4h]
		push	ecx		; rc
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		call	Getmonitorrect
		add	esp, 0Ch
		mov	eax, X
		cmp	eax, [ebp-8D4h]
		jl	short loc_4CF361
		mov	edx, [ebp-8BCh]
		sub	edx, [ebp-8C4h]
		add	edx, eax
		cmp	edx, [ebp-8CCh]
		jg	short loc_4CF361
		mov	ecx, Y
		cmp	ecx, [ebp-8D0h]
		jl	short loc_4CF361
		mov	edx, [ebp-8B8h]
		sub	edx, [ebp-8C0h]
		add	edx, Y
		cmp	edx, [ebp-8C8h]
		jg	short loc_4CF361
		push	205h		; uFlags
		push	0		; cy
		push	0		; cx
		mov	ecx, Y
		push	ecx		; Y
		push	eax		; X
		push	0		; hWndInsertAfter
		push	esi		; hWnd
		call	SetWindowPos

loc_4CF361:				; CODE XREF: .text:004CF308j
					; .text:004CF31Ej ...
		push	232Ah		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF3CB
		mov	eax, [ebp-28h]
		push	eax		; hWnd
		call	SetFocus
		mov	ebx, dword_5FF228
		xor	edi, edi
		jmp	short loc_4CF3AC
; ---------------------------------------------------------------------------

loc_4CF388:				; CODE XREF: .text:004CF3B2j
		cmp	dword ptr [ebx], 1
		jnz	short loc_4CF3A8
		mov	eax, [ebx+1Ch]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; lParam
		push	0		; wParam
		push	180h		; Msg
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	SendMessageW

loc_4CF3A8:				; CODE XREF: .text:004CF38Bj
		inc	edi
		add	ebx, 28h

loc_4CF3AC:				; CODE XREF: .text:004CF386j
		cmp	edi, dword_5FF22C
		jl	short loc_4CF388
		push	0		; lParam
		mov	ecx, dword_5BE254
		push	ecx		; wParam
		push	186h		; Msg
		mov	eax, [ebp-28h]
		push	eax		; hWnd
		call	SendMessageW

loc_4CF3CB:				; CODE XREF: .text:004CF373j
		cmp	_imp__DebugBreakProcess, 0
		jnz	short loc_4CF42B
		push	23F3h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF3F1
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	DestroyWindow

loc_4CF3F1:				; CODE XREF: .text:004CF3E6j
		push	23F4h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF40E
		mov	ecx, [ebp-28h]
		push	ecx		; hWnd
		call	DestroyWindow

loc_4CF40E:				; CODE XREF: .text:004CF403j
		push	23F5h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF42B
		mov	eax, [ebp-28h]
		push	eax		; hWnd
		call	DestroyWindow

loc_4CF42B:				; CODE XREF: .text:004CF3D2j
					; .text:004CF420j
		cmp	_imp__DebugActiveProcessStop, 0
		jnz	short loc_4CF46E
		push	23FAh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF451
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	DestroyWindow

loc_4CF451:				; CODE XREF: .text:004CF446j
		push	23FBh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF46E
		mov	ecx, [ebp-28h]
		push	ecx		; hWnd
		call	DestroyWindow

loc_4CF46E:				; CODE XREF: .text:004CF432j
					; .text:004CF463j
		push	23F0h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4CF499
		mov	eax, asciicodepage
		push	eax		; a3
		push	0		; a2
		push	23F0h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	Fillcombowithcplist
		add	esp, 0Ch

loc_4CF499:				; CODE XREF: .text:004CF47Bj
		push	23F1h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4CF4C5
		mov	edx, mbcscodepage
		push	edx		; a3
		push	1		; a2
		push	23F1h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	Fillcombowithcplist
		add	esp, 0Ch

loc_4CF4C5:				; CODE XREF: .text:004CF4A6j
		push	23F7h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4CF4DF
		push	0		; wParam
		push	esi		; hDlg
		call	loc_4CD97C
		add	esp, 8

loc_4CF4DF:				; CODE XREF: .text:004CF4D2j
		push	23FDh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4CF4F9
		push	0		; int
		push	esi		; hDlg
		call	loc_4CDA74
		add	esp, 8

loc_4CF4F9:				; CODE XREF: .text:004CF4ECj
		xor	ecx, ecx
		mov	[ebp-18h], ecx
		push	2402h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF554
		lea	eax, [ebp-18h]
		push	eax
		lea	edx, [ebp-838h]
		push	edx
		lea	ecx, [ebp-430h]
		push	ecx
		call	loc_4CDC6C
		add	esp, 0Ch
		mov	edi, eax
		lea	eax, [ebp-430h]
		push	eax		; lpString
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	SetWindowTextW
		dec	edi
		jnz	short loc_4CF554
		push	0		; bEnable
		push	2404h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4CF554:				; CODE XREF: .text:004CF510j
					; .text:004CF53Fj
		push	2403h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF59D
		lea	ecx, [ebp-430h]
		push	ecx
		call	loc_4CDEE0
		mov	edi, eax
		lea	eax, [ebp-430h]
		pop	ecx
		push	eax		; lpString
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	SetWindowTextW
		dec	edi
		jz	short loc_4CF59D
		push	0		; bEnable
		push	2405h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4CF59D:				; CODE XREF: .text:004CF566j
					; .text:004CF588j
		push	2406h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CF5C0
		mov	ecx, [ebp-18h]
		push	ecx		; uCheck
		push	2406h		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_4CF5C0:				; CODE XREF: .text:004CF5AFj
		mov	eax, dword_5BE264
		cmp	eax, 1
		jl	short loc_4CF5CF
		cmp	eax, 8
		jl	short loc_4CF5D9

loc_4CF5CF:				; CODE XREF: .text:004CF5C8j
		mov	dword_5BE264, 1

loc_4CF5D9:				; CODE XREF: .text:004CF5CDj
		push	241Ch		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4CF615
		mov	edx, 1
		mov	ecx, dword_5BE264
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		cmp	hilite.hiliteoperands[ecx*8], 0
		jnz	short loc_4CF609
		dec	edx

loc_4CF609:				; CODE XREF: .text:004CF606j
		push	edx		; uCheck
		push	241Ch		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_4CF615:				; CODE XREF: .text:004CF5E6j
		push	241Dh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4CF651
		mov	edx, 1
		mov	ecx, dword_5BE264
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		cmp	hilite.hilitemodified[ecx*8], 0
		jnz	short loc_4CF645
		dec	edx

loc_4CF645:				; CODE XREF: .text:004CF642j
		push	edx		; uCheck
		push	241Dh		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_4CF651:				; CODE XREF: .text:004CF622j
		mov	stru_5FF1A8.initdone, 1
		xor	eax, eax
		jmp	loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4CF662:				; CODE XREF: .text:004CF2C4j
		mov	edx, [ebp+14h]
		cmp	edx, stru_5FF1A8.hwwarn
		jnz	loc_4CF7B4
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	232Ah		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SendMessageW
		mov	ebx, eax
		mov	dword_5BE254, ebx
		push	ebx
		call	loc_4CD940
		pop	ecx
		mov	edi, eax
		mov	ebx, edi
		shl	ebx, 3
		lea	ebx, [ebx+ebx*4]
		add	ebx, dword_5FF228
		jmp	loc_4CF748
; ---------------------------------------------------------------------------

loc_4CF6BB:				; CODE XREF: .text:004CF74Ej
		cmp	dword ptr [ebx], 0
		jz	loc_4CF754
		cmp	dword ptr [ebx+18h], 0
		jz	short loc_4CF744
		mov	eax, [ebx+4]
		cmp	eax, 23B5h
		jl	short loc_4CF6F9
		cmp	eax, 23C0h
		jg	short loc_4CF6F9
		mov	edx, [ebx+18h]
		cmp	dword ptr [edx], 0
		jnz	short loc_4CF6EA
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_4CF744
; ---------------------------------------------------------------------------

loc_4CF6EA:				; CODE XREF: .text:004CF6E1j
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4CF744
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4CF744
; ---------------------------------------------------------------------------

loc_4CF6F9:				; CODE XREF: .text:004CF6D2j
					; .text:004CF6D9j
		mov	eax, [ebx+4]
		cmp	eax, 238Dh
		jl	short loc_4CF719
		cmp	eax, 2398h
		jg	short loc_4CF719
		mov	edx, [ebx+18h]
		mov	ecx, [edx]
		cmp	ecx, [ebx+24h]
		jz	short loc_4CF744
		inc	dword ptr [ebp-4]
		jmp	short loc_4CF744
; ---------------------------------------------------------------------------

loc_4CF719:				; CODE XREF: .text:004CF701j
					; .text:004CF708j
		mov	eax, [ebx+4]
		cmp	eax, 23A1h
		jl	short loc_4CF72A
		cmp	eax, 23ACh
		jle	short loc_4CF731

loc_4CF72A:				; CODE XREF: .text:004CF721j
		cmp	eax, 23FAh
		jnz	short loc_4CF744

loc_4CF731:				; CODE XREF: .text:004CF728j
		mov	edx, [ebx+18h]
		mov	ecx, [edx]
		mov	eax, [ebx+24h]
		cmp	ecx, eax
		jz	short loc_4CF744
		test	eax, eax
		jnz	short loc_4CF744
		inc	dword ptr [ebp-4]

loc_4CF744:				; CODE XREF: .text:004CF6C8j
					; .text:004CF6E8j ...
		inc	edi
		add	ebx, 28h

loc_4CF748:				; CODE XREF: .text:004CF6B6j
		cmp	edi, dword_5FF22C
		jl	loc_4CF6BB

loc_4CF754:				; CODE XREF: .text:004CF6BEj
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4CF760
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_4CF789

loc_4CF760:				; CODE XREF: .text:004CF758j
		mov	edx, g_Color+20h
		push	edx		; COLORREF
		mov	ecx, [ebp+10h]
		push	ecx		; HDC
		call	SetTextColor
		mov	eax, g_Color+1Ch
		push	eax		; COLORREF
		mov	edx, [ebp+10h]
		push	edx		; HDC
		call	SetBkColor
		mov	eax, g_Brush+8
		jmp	loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4CF789:				; CODE XREF: .text:004CF75Ej
		push	12h		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		mov	ebx, [ebp+10h]
		push	ebx		; HDC
		call	SetTextColor
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4CF7B4:				; CODE XREF: .text:004CF66Bj
		xor	eax, eax
		jmp	loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4CF7BB:				; CODE XREF: .text:004CF2BBj
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 23F7h
		jnz	short loc_4CF7D4
		cmp	dword_5C8AA0, 0
		jz	short loc_4CF7ED

loc_4CF7D4:				; CODE XREF: .text:004CF7C9j
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 23FDh
		jnz	short loc_4CF808
		cmp	dword_5C898C, 0
		jnz	short loc_4CF808

loc_4CF7ED:				; CODE XREF: .text:004CF7D2j
		mov	eax, g_Color+10h
		push	eax		; COLORREF
		mov	edx, [ebp+10h]
		push	edx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4CF808:				; CODE XREF: .text:004CF7E2j
					; .text:004CF7EBj
		xor	eax, eax
		jmp	loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4CF80F:				; CODE XREF: .text:004CF2ABj
		lea	edx, [ebp-14h]
		push	edx		; int
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	loc_428C58
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4D0D78
		mov	eax, [ebp+14h]
		push	eax		; lp
		mov	edx, [ebp+10h]
		push	edx		; wp
		push	ebx		; pctr
		push	esi		; hparent
		call	Defaultactions
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-4], ecx
		mov	[ebp-0Ch], eax
		mov	di, [ebp+10h]
		mov	eax, [ebp+10h]
		and	di, 0FFFFh
		movzx	edi, di
		shr	eax, 10h
		add	esp, 10h
		movzx	edx, ax
		cmp	dword_5FF230, 0
		mov	[ebp-10h], edx
		jz	short loc_4CF8CB
		cmp	dword ptr [ebp-14h], 0
		jl	short loc_4CF8CB
		mov	ecx, [ebp-14h]
		cmp	ecx, pluginlist.sorted.n
		jge	short loc_4CF8CB
		test	edi, edi
		jl	short loc_4CF8CB
		cmp	edi, 232Ah
		jz	short loc_4CF8CB
		cmp	edi, 1
		jz	short loc_4CF8CB
		cmp	edi, 2
		jz	short loc_4CF8CB
		mov	eax, [ebp-14h]
		push	eax		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_4CF8CB
		mov	edx, [ebp-24h]
		cmp	dword ptr [edx+2A0h], 0
		jz	short loc_4CF8CB
		mov	ecx, [ebp+14h]
		push	ecx
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp-24h]
		call	dword ptr [ecx+2A0h]
		add	esp, 0Ch

loc_4CF8CB:				; CODE XREF: .text:004CF864j
					; .text:004CF86Aj ...
		cmp	dword ptr [ebx], 81h
		jnz	short loc_4CF8F9
		cmp	dword ptr [ebp-10h], 300h
		jnz	short loc_4CF8F9
		cmp	dword ptr [ebx+1Ch], 0
		jz	short loc_4CF8F9
		push	104h		; nMaxCount
		mov	eax, [ebx+1Ch]
		push	eax		; lpString
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetWindowTextW
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CF8F9:				; CODE XREF: .text:004CF8D1j
					; .text:004CF8DAj ...
		mov	eax, [ebx]
		cmp	eax, 82h
		jz	short loc_4CF90D
		cmp	eax, 83h
		jnz	loc_4CF9D8

loc_4CF90D:				; CODE XREF: .text:004CF900j
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4CF9D8
		cmp	dword ptr [ebx+1Ch], 0
		jz	loc_4CF9D8
		mov	edx, [ebx+1Ch]
		cmp	word ptr [edx],	0
		jnz	short loc_4CF930
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_4CF94A

loc_4CF930:				; CODE XREF: .text:004CF928j
		mov	ecx, [ebx+1Ch]
		lea	eax, [ebp-430h]
		push	ecx		; src
		push	104h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4CF962
; ---------------------------------------------------------------------------

loc_4CF94A:				; CODE XREF: .text:004CF92Ej
		mov	edx, [ebx+18h]
		lea	ecx, [ebp-430h]
		push	edx		; src
		push	104h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CF962:				; CODE XREF: .text:004CF948j
		cmp	dword ptr [ebx], 82h
		jnz	short loc_4CF996
		push	0		; mode
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	GetParent
		push	eax		; hwnd
		push	offset a_hlp_chm ; "*.hlp;*.chm"
		push	0		; currdir
		lea	edx, [ebp-430h]
		push	0		; args
		push	edx		; _name
		mov	ecx, [ebx+20h]
		push	ecx		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	edi, eax
		jmp	short loc_4CF9AC
; ---------------------------------------------------------------------------

loc_4CF996:				; CODE XREF: .text:004CF968j
		lea	eax, [ebp-430h]
		push	eax		; dir
		mov	edx, [ebx+20h]
		push	edx		; comment
		push	esi		; hw
		call	Browsedirectory
		add	esp, 0Ch
		mov	edi, eax

loc_4CF9AC:				; CODE XREF: .text:004CF994j
		test	edi, edi
		jz	loc_4D0A1B
		lea	eax, [ebp-430h]
		push	eax		; src
		push	104h		; n
		mov	edx, [ebx+1Ch]
		push	edx		; dest
		call	StrcopyW
		mov	dword ptr [ebp-0Ch], 1
		add	esp, 0Ch
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CF9D8:				; CODE XREF: .text:004CF907j
					; .text:004CF911j ...
		cmp	edi, 232Ah
		jnz	short loc_4CFA09
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_4CFA09
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	SendMessageW
		mov	dword ptr [ebp-0Ch], 1
		mov	dword_5BE254, eax
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFA09:				; CODE XREF: .text:004CF9DEj
					; .text:004CF9E4j
		cmp	edi, 23C8h
		jnz	loc_4CFAA4
		xor	eax, eax
		mov	dword_57E66C, eax
		xor	edx, edx
		mov	dword_57E670, edx
		xor	ecx, ecx
		mov	dword_57E678, ecx
		xor	eax, eax
		mov	dword_57E67C, eax
		xor	edx, edx
		mov	dword_57E6B0, edx
		xor	ecx, ecx
		mov	dword_57E688, ecx
		xor	eax, eax
		mov	dword_57E68C, eax
		xor	edx, edx
		mov	dword_57E698, edx
		xor	ecx, ecx
		mov	dword_57E69C, ecx
		xor	eax, eax
		mov	dword_57E6A8, eax
		xor	edx, edx
		mov	dword_57E6B4, edx
		xor	ecx, ecx
		mov	dword_57E6B8, ecx
		xor	eax, eax
		mov	dword_57E6BC, eax
		xor	edx, edx
		mov	dword_57E6C0, edx
		xor	ecx, ecx
		mov	dword_57E6C4, ecx
		xor	eax, eax
		mov	dword_57E6C8, eax
		xor	edx, edx
		mov	dword_57E6CC, edx
		xor	ecx, ecx
		mov	dword_57E6D0, ecx
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFAA4:				; CODE XREF: .text:004CFA0Fj
		cmp	edi, 23C9h
		jnz	short loc_4CFAEE
		xor	eax, eax
		mov	dword_57E674, eax
		xor	edx, edx
		mov	g_Cond,	edx
		xor	ecx, ecx
		mov	dword_57E684, ecx
		xor	eax, eax
		mov	dword_57E690, eax
		xor	edx, edx
		mov	dword_57E694, edx
		xor	ecx, ecx
		mov	dword_57E6A0, ecx
		xor	eax, eax
		mov	dword_57E6A4, eax
		xor	edx, edx
		mov	dword_57E6AC, edx
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFAEE:				; CODE XREF: .text:004CFAAAj
		cmp	edi, 23F0h
		jnz	short loc_4CFB3C
		push	204h		; nMaxCount
		lea	ecx, [ebp-430h]
		push	ecx		; lpString
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	GetWindowTextW
		lea	edx, [ebp-430h]
		push	edx		; s
		call	__wtoi
		pop	ecx
		mov	asciicodepage, eax
		cmp	asciicodepage, 0
		jnz	short loc_4CFB30
		mov	asciicodepage, 4E4h

loc_4CFB30:				; CODE XREF: .text:004CFB24j
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFB3C:				; CODE XREF: .text:004CFAF4j
		cmp	edi, 23F1h
		jnz	short loc_4CFB8A
		push	204h		; nMaxCount
		lea	ecx, [ebp-430h]
		push	ecx		; lpString
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	GetWindowTextW
		lea	edx, [ebp-430h]
		push	edx		; s
		call	__wtoi
		pop	ecx
		mov	mbcscodepage, eax
		cmp	mbcscodepage, 0
		jnz	short loc_4CFB7E
		mov	mbcscodepage, 0FDE9h

loc_4CFB7E:				; CODE XREF: .text:004CFB72j
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFB8A:				; CODE XREF: .text:004CFB42j
		cmp	edi, 23F2h
		jnz	short loc_4CFBA9
		push	offset aFlashTest ; "Flash test"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFBA9:				; CODE XREF: .text:004CFB90j
		cmp	edi, 23F6h
		jnz	short loc_4CFBC1
		push	0		; wParam
		push	esi		; hDlg
		call	loc_4CD97C
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFBC1:				; CODE XREF: .text:004CFBAFj
		cmp	edi, 23F8h
		jnz	loc_4CFCC0
		mov	word ptr [ebp-430h], 0
		push	esi
		lea	edi, [ebp-8B4h]
		mov	esi, offset stru_5FF1A8
		mov	ecx, 1Fh
		rep movsd
		pop	esi
		mov	eax, fi
		push	0		; mode
		push	eax		; fi
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		push	0		; letter
		push	0		; savetype
		lea	edx, [ebp-430h]
		push	104h		; length
		push	edx		; s
		push	offset aSpecifyModuleN ; "Specify module _name"
		call	_T
		pop	ecx
		push	eax		; _title
		push	esi		; hparent
		call	Getstring
		add	esp, 28h
		mov	edi, eax
		push	esi
		push	edi
		lea	esi, [ebp-8B4h]
		mov	edi, offset stru_5FF1A8
		mov	ecx, 1Fh
		rep movsd
		pop	edi
		pop	esi
		push	esi		; hWnd
		call	SetFocus
		dec	edi
		jnz	loc_4D0A1B
		xor	edi, edi
		mov	eax, offset word_5C8AA4

loc_4CFC47:				; CODE XREF: .text:004CFC56j
		cmp	word ptr [eax],	0
		jz	short loc_4CFC58
		inc	edi
		add	eax, 208h
		cmp	edi, 18h
		jl	short loc_4CFC47

loc_4CFC58:				; CODE XREF: .text:004CFC4Bj
		cmp	edi, 18h
		jge	loc_4D0A1B
		cmp	_imp__PathCanonicalizeW, 0
		jz	short loc_4CFC8C
		mov	ecx, edi
		lea	edx, [ebp-430h]
		shl	ecx, 6
		push	edx		; _DWORD
		add	ecx, edi
		shl	ecx, 3
		add	ecx, offset word_5C8AA4
		push	ecx		; _DWORD
		call	_imp__PathCanonicalizeW
		test	eax, eax
		jnz	short loc_4CFCB1

loc_4CFC8C:				; CODE XREF: .text:004CFC68j
		mov	edx, edi
		lea	eax, [ebp-430h]
		shl	edx, 6
		push	eax		; src
		add	edx, edi
		push	104h		; n
		shl	edx, 3
		add	edx, offset word_5C8AA4
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CFCB1:				; CODE XREF: .text:004CFC8Aj
		push	edi		; wParam
		push	esi		; hDlg
		call	loc_4CD97C
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFCC0:				; CODE XREF: .text:004CFBC7j
		cmp	edi, 23F9h
		jnz	loc_4CFD58
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	23F7h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	edi, eax
		test	edi, edi
		jl	loc_4D0A1B
		cmp	edi, 18h
		jge	loc_4D0A1B
		cmp	edi, 17h
		jge	short loc_4CFD35
		mov	eax, 18h
		mov	ecx, edi
		sub	eax, edi
		dec	eax
		mov	edx, eax
		shl	edx, 6
		add	edx, eax
		mov	eax, edi
		shl	ecx, 6
		shl	eax, 6
		add	ecx, edi
		add	eax, edi
		shl	edx, 3
		shl	ecx, 3
		push	edx		; n
		shl	eax, 3
		add	ecx, (offset word_5C8AA4+208h)
		push	ecx		; src
		add	eax, offset word_5C8AA4
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_4CFD35:				; CODE XREF: .text:004CFCF6j
		mov	word_5C8AA4+2EB8h, 0
		test	edi, edi
		jle	short loc_4CFD47
		lea	edx, [edi-1]
		jmp	short loc_4CFD49
; ---------------------------------------------------------------------------

loc_4CFD47:				; CODE XREF: .text:004CFD40j
		mov	edx, edi

loc_4CFD49:				; CODE XREF: .text:004CFD45j
		push	edx		; wParam
		push	esi		; hDlg
		call	loc_4CD97C
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFD58:				; CODE XREF: .text:004CFCC6j
		cmp	edi, 23FCh
		jnz	short loc_4CFD70
		push	0		; int
		push	esi		; hDlg
		call	loc_4CDA74
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFD70:				; CODE XREF: .text:004CFD5Ej
		cmp	edi, 23FEh
		jnz	short loc_4CFDAF
		cmp	run.lastexception, 0
		jz	short loc_4CFDAF
		mov	eax, run.lastexception
		mov	ecx, run.lastexception
		push	eax		; rmax
		push	ecx		; rmin
		push	offset set	; set
		call	Addrange
		add	esp, 0Ch
		mov	eax, run.lastexception
		push	eax		; int
		push	esi		; hDlg
		call	loc_4CDA74
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFDAF:				; CODE XREF: .text:004CFD76j
					; .text:004CFD7Fj
		cmp	edi, 23FFh
		jnz	loc_4CFE43
		push	esi
		mov	esi, offset stru_5FF1A8
		lea	edi, [ebp-8B4h]
		mov	ecx, 1Fh
		rep movsd
		pop	esi
		mov	eax, fi
		push	eax		; fi
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		lea	edx, [ebp-20h]
		push	edx		; rmax
		lea	ecx, [ebp-1Ch]
		push	ecx		; rmin
		push	offset aSelectRangeO_0 ; "Select range of exceptions"
		call	_T
		pop	ecx
		push	eax		; _title
		push	esi		; hparent
		call	Getexceptionrange
		add	esp, 1Ch
		mov	edi, eax
		push	esi
		push	edi
		lea	esi, [ebp-8B4h]
		mov	edi, offset stru_5FF1A8
		mov	ecx, 1Fh
		rep movsd
		pop	edi
		pop	esi
		push	esi		; hWnd
		call	SetFocus
		test	edi, edi
		jnz	loc_4D0A1B
		mov	eax, [ebp-20h]
		push	eax		; rmax
		mov	edx, [ebp-1Ch]
		push	edx		; rmin
		push	offset set	; set
		call	Addrange
		add	esp, 0Ch
		mov	ecx, [ebp-1Ch]
		push	ecx		; int
		push	esi		; hDlg
		call	loc_4CDA74
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFE43:				; CODE XREF: .text:004CFDB5j
		cmp	edi, 2400h
		jnz	short loc_4CFEAF
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	23FDh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jz	loc_4D0A1B
		lea	eax, [ebp-20h]
		push	eax		; rmax
		lea	edx, [ebp-1Ch]
		push	edx		; rmin
		push	edi		; index
		push	offset set	; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	loc_4D0A1B
		mov	ecx, [ebp-20h]
		push	ecx		; rmax
		mov	eax, [ebp-1Ch]
		push	eax		; rmin
		push	offset set	; set
		call	Removerange
		add	esp, 0Ch
		mov	edx, [ebp-20h]
		push	edx		; int
		push	esi		; hDlg
		call	loc_4CDA74
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4CFEAF:				; CODE XREF: .text:004CFE49j
		cmp	edi, 2404h
		jz	short loc_4CFEC3
		cmp	edi, 2405h
		jnz	loc_4D0003

loc_4CFEC3:				; CODE XREF: .text:004CFEB5j
		cmp	edi, 2404h
		jnz	short loc_4CFF16
		push	0
		lea	ecx, [ebp-838h]
		push	ecx
		lea	eax, [ebp-430h]
		push	eax
		call	loc_4CDC6C
		add	esp, 0Ch
		push	offset aAedebugLdLd ; "-AEDEBUG	%ld %ld"
		push	offset ollyfile
		push	offset aSS_4	; "\"%s\" %s"
		lea	edx, [ebp-430h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		push	0FFFFFFFFh	; int
		lea	ecx, [ebp-430h]
		push	ecx		; lpData
		call	loc_4CDE24
		add	esp, 8
		mov	edi, eax
		jmp	short loc_4CFF30
; ---------------------------------------------------------------------------

loc_4CFF16:				; CODE XREF: .text:004CFEC9j
		push	0FFFFFFFFh	; int
		push	offset word_57FA28 ; lpData
		call	loc_4CDE24
		add	esp, 8
		mov	edi, eax
		mov	word ptr [ebp-838h], 0

loc_4CFF30:				; CODE XREF: .text:004CFF14j
		test	edi, edi
		jnz	loc_4D0A1B
		xor	eax, eax
		mov	[ebp-18h], eax
		lea	edx, [ebp-838h]
		push	edx		; src
		push	204h		; n
		push	offset word_57FA28 ; dest
		call	StrcopyW
		add	esp, 0Ch
		push	2402h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4CFFAC
		push	0
		lea	ecx, [ebp-838h]
		push	ecx
		lea	eax, [ebp-430h]
		push	eax
		call	loc_4CDC6C
		add	esp, 0Ch
		mov	edi, eax
		lea	eax, [ebp-430h]
		push	eax		; lpString
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	SetWindowTextW
		xor	ecx, ecx
		dec	edi
		jz	short loc_4CFF9A
		inc	ecx

loc_4CFF9A:				; CODE XREF: .text:004CFF97j
		push	ecx		; bEnable
		push	2404h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4CFFAC:				; CODE XREF: .text:004CFF68j
		push	2403h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	loc_4D0A1B
		lea	eax, [ebp-430h]
		push	eax
		call	loc_4CDEE0
		mov	edi, eax
		lea	eax, [ebp-430h]
		pop	ecx
		push	eax		; lpString
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	SetWindowTextW
		mov	ecx, 1
		dec	edi
		jz	short loc_4CFFEC
		dec	ecx

loc_4CFFEC:				; CODE XREF: .text:004CFFE9j
		push	ecx		; bEnable
		push	2405h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4CFFFE:
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0003:				; CODE XREF: .text:004CFEBDj
		cmp	edi, 2406h
		jnz	short loc_4D0026
		push	2406h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		push	eax		; int
		push	0		; lpData
		call	loc_4CDE24

loc_4D001E:
		add	esp, 8
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0026:				; CODE XREF: .text:004D0009j
		cmp	edi, 2407h
		jnz	short loc_4D0051
		call	loc_4115B4
		call	loc_411400
		push	81h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	eax, hwollymain
		push	eax		; hWnd
		call	RedrawWindow

loc_4D004C:
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0051:				; CODE XREF: .text:004D002Cj
		cmp	edi, 2408h

loc_4D0057:
		jnz	loc_4D00F0
		cmp	dword ptr [ebp-10h], 9
		jnz	loc_4D00F0
		push	0		; lParam
		mov	edx, dword_5BE258
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font.hadjtop[edx*4]
		add	eax, 5
		push	eax		; wParam
		push	14Eh		; Msg
		push	240Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		push	0		; lParam
		mov	edx, dword_5BE258
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font.hadjbot[edx*4]
		add	eax, 5
		push	eax		; wParam
		push	14Eh		; Msg
		push	240Dh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		push	1		; bErase
		push	0		; lpRect
		push	240Bh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		push	0		; lpRect
		push	240Eh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D00F0:				; CODE XREF: .text:loc_4D0057j
					; .text:004D0061j
		cmp	edi, 2409h
		jnz	loc_4D01A1
		push	esi
		mov	esi, offset stru_5FF1A8
		lea	edi, [ebp-8B4h]
		mov	ecx, 1Fh
		rep movsd
		pop	esi
		mov	eax, dword_5BE258
		push	eax
		push	offset aEnterNewNameFo ; "Enter	new _name for font %i"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-430h]
		push	edx		; buffer
		call	_swprintf
		mov	eax, dword_5BE258
		add	esp, 0Ch
		mov	edx, eax
		mov	ecx, fi
		push	0		; mode
		push	ecx		; fi
		lea	eax, [edx+eax*4]
		push	0FFFFFFFFh	; y
		shl	eax, 5
		push	0FFFFFFFFh	; x
		sub	eax, edx
		push	0		; letter
		shl	eax, 2
		push	0		; savetype
		add	eax, offset font._name
		push	100h		; length
		push	eax		; s
		lea	ecx, [ebp-430h]
		push	ecx		; _title
		push	esi		; hparent
		call	Getstring
		add	esp, 28h
		mov	edi, eax
		push	esi
		push	edi
		lea	esi, [ebp-8B4h]
		mov	edi, offset stru_5FF1A8
		mov	ecx, 1Fh
		rep movsd
		pop	edi
		pop	esi
		push	esi		; hWnd
		call	SetFocus
		dec	edi
		jnz	loc_4D0A1B
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D01A1:				; CODE XREF: .text:004D00F6j
		cmp	edi, 240Ah
		jnz	loc_4D031E
		mov	eax, dword_5BE258
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		cmp	font.stockindex[eax*4],	0
		jnz	short loc_4D01DE
		push	esi
		lea	esi, font.logfont.lfHeight[eax*4]
		lea	edi, [ebp-930h]
		mov	ecx, 17h
		rep movsd
		pop	esi
		jmp	short loc_4D01F4
; ---------------------------------------------------------------------------

loc_4D01DE:				; CODE XREF: .text:004D01C4j
		lea	edx, [ebp-930h]
		push	edx		; LPVOID
		push	5Ch		; int
		mov	eax, font.hfont[eax*4]
		push	eax		; HGDIOBJ
		call	GetObjectW

loc_4D01F4:				; CODE XREF: .text:004D01DCj
		push	3Ch		; n
		push	0		; c
		lea	ecx, [ebp-96Ch]
		push	ecx		; s
		call	_memset
		mov	dword ptr [ebp-96Ch], 3Ch
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebp-968h], esi
		mov	[ebp-964h], eax
		lea	edx, [ebp-930h]
		mov	ecx, color
		mov	[ebp-960h], edx
		lea	eax, [ebp-96Ch]
		mov	dword ptr [ebp-958h], 1016249h
		mov	[ebp-954h], ecx
		mov	dword ptr [ebp-94Ch], offset loc_4CF1A4
		mov	dword ptr [ebp-938h], 1
		mov	dword ptr [ebp-934h], 18h
		push	eax		; LPCHOOSEFONTW
		call	ChooseFontW
		test	eax, eax
		jz	loc_4D0D78
		lea	edx, [ebp-930h]
		push	edx		; LOGFONTW *
		call	CreateFontIndirectW
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4D029C
		push	offset aUnableToCrea_7 ; "Unable to create specified font"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4D0D78
; ---------------------------------------------------------------------------

loc_4D029C:				; CODE XREF: .text:004D0283j
		mov	eax, dword_5BE258
		push	esi
		mov	edx, eax
		lea	esi, [ebp-930h]
		mov	ecx, 17h
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		lea	edi, font.logfont.lfHeight[eax*4]
		rep movsd
		pop	esi
		xor	edx, edx
		mov	font.stockindex[eax*4],	edx
		mov	eax, dword_5BE258
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		shl	eax, 2
		add	eax, offset font
		push	eax		; LOGFONTW *
		call	loc_4113D0
		pop	ecx
		push	ebx		; HGDIOBJ
		call	DeleteObject
		push	1		; bErase
		push	0		; lpRect
		push	240Bh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		push	0		; lpRect
		push	240Eh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D031E:				; CODE XREF: .text:004D01A7j
		cmp	edi, 240Ch
		jnz	loc_4D03AA
		cmp	dword ptr [ebp-10h], 9
		jnz	short loc_4D03AA
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	SendMessageW
		add	eax, 0FFFFFFFBh
		mov	edx, dword_5BE258
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	font.hadjtop[edx*4], eax
		mov	eax, dword_5BE258
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		shl	eax, 2
		add	eax, offset font
		push	eax		; LOGFONTW *
		call	loc_4113D0
		pop	ecx
		push	1		; bErase
		push	0		; lpRect
		push	240Bh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		push	0		; lpRect
		push	240Eh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D03AA:				; CODE XREF: .text:004D0324j
					; .text:004D032Ej
		cmp	edi, 240Dh
		jnz	loc_4D0436
		cmp	dword ptr [ebp-10h], 9
		jnz	short loc_4D0436
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	SendMessageW
		add	eax, 0FFFFFFFBh
		mov	edx, dword_5BE258
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	font.hadjbot[edx*4], eax
		mov	eax, dword_5BE258
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		shl	eax, 2
		add	eax, offset font
		push	eax		; LOGFONTW *
		call	loc_4113D0
		pop	ecx
		push	1		; bErase
		push	0		; lpRect
		push	240Bh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		push	0		; lpRect
		push	240Eh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0436:				; CODE XREF: .text:004D03B0j
					; .text:004D03BAj
		cmp	edi, 240Fh
		jnz	short loc_4D04A9
		push	268h		; n
		mov	eax, dword_5BE258
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		shl	eax, 2
		add	eax, offset tmpfont
		push	eax		; src
		mov	eax, dword_5BE258
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		shl	eax, 2
		add	eax, offset font
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, dword_5BE258
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		shl	ecx, 2
		add	ecx, offset font
		push	ecx		; LOGFONTW *
		call	loc_4113D0
		pop	ecx
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D04A9:				; CODE XREF: .text:004D043Cj
		cmp	edi, 2410h
		jnz	short loc_4D04E6
		cmp	dword ptr [ebp-10h], 9
		jnz	short loc_4D04E6
		push	1		; bErase
		push	0		; lpRect
		push	2413h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		push	0		; lpRect
		push	2414h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D04E6:				; CODE XREF: .text:004D04AFj
					; .text:004D04B5j
		cmp	edi, 2411h
		jnz	loc_4D0598
		push	esi
		mov	esi, offset stru_5FF1A8
		lea	edi, [ebp-8B4h]
		mov	ecx, 1Fh
		rep movsd
		pop	esi
		mov	eax, dword_5BE25C
		push	eax
		push	offset aEnterNewName_0 ; "Enter	new _name for colour scheme %i"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-430h]
		push	edx		; buffer
		call	_swprintf
		mov	eax, dword_5BE25C
		add	esp, 0Ch
		mov	edx, eax
		mov	ecx, fi
		push	0		; mode
		push	ecx		; fi
		lea	eax, [edx+eax*2]
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		push	0		; letter
		lea	eax, [edx+eax*8]
		push	0		; savetype
		push	100h		; length
		lea	ecx, [ebp-430h]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset scheme
		push	eax		; s
		push	ecx		; _title
		push	esi		; hparent
		call	Getstring
		add	esp, 28h
		mov	edi, eax
		push	esi
		push	edi
		lea	esi, [ebp-8B4h]
		mov	edi, offset stru_5FF1A8
		mov	ecx, 1Fh
		rep movsd
		pop	edi
		pop	esi
		push	esi		; hWnd
		call	SetFocus
		dec	edi
		jnz	loc_4D0A1B
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0598:				; CODE XREF: .text:004D04ECj
		cmp	edi, 2412h
		jnz	short loc_4D05C0
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_4D05C0
		push	1		; bErase
		push	0		; lpRect
		push	2414h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D05C0:				; CODE XREF: .text:004D059Ej
					; .text:004D05A4j
		cmp	edi, 2414h
		jnz	loc_4D0688
		test	byte ptr [ebp-0Fh], 1
		jz	short loc_4D0603
		mov	eax, dword_5BE25C
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		mov	edx, [ebp-10h]
		and	edx, 0FFh
		lea	ecx, scheme.textcolor[eax*8]
		mov	eax, dword_5BE260
		mov	edx, color[edx*4]
		mov	[ecx+eax*4], edx
		jmp	short loc_4D0639
; ---------------------------------------------------------------------------

loc_4D0603:				; CODE XREF: .text:004D05D0j
		test	byte ptr [ebp-0Fh], 2
		jz	short loc_4D0639
		mov	eax, dword_5BE25C
		mov	edx, dword_5BE260
		mov	ecx, eax
		lea	eax, [ecx+eax*2]
		lea	eax, [ecx+eax*8]
		lea	eax, [ecx+eax*4]
		mov	ecx, [ebp-10h]
		and	ecx, 0FFh
		lea	eax, scheme.bkcolor[eax*8]
		mov	ecx, color[ecx*4]
		mov	[eax+edx*4], ecx

loc_4D0639:				; CODE XREF: .text:004D0601j
					; .text:004D0607j
		mov	eax, dword_5BE25C
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset scheme
		push	eax
		call	loc_412048
		pop	ecx
		push	1		; bErase
		push	0		; lpRect
		push	2413h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	1		; bErase
		push	0		; lpRect
		push	2414h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0688:				; CODE XREF: .text:004D05C6j
		cmp	edi, 2415h
		jnz	short loc_4D06FF
		mov	eax, dword_5BE25C
		push	308h		; n
		mov	edx, eax
		mov	ecx, dword_5BE25C
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset tmpscheme
		push	eax		; src
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		shl	ecx, 3
		add	ecx, offset scheme
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, dword_5BE25C
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		add	edx, offset scheme
		push	edx
		call	loc_412048
		pop	ecx
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D06FF:				; CODE XREF: .text:004D068Ej
		cmp	edi, 2419h
		jnz	short loc_4D072E
		cmp	dword ptr [ebp-10h], 9
		jnz	short loc_4D072E
		push	1		; bErase
		push	0		; lpRect
		push	241Eh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D072E:				; CODE XREF: .text:004D0705j
					; .text:004D070Bj
		cmp	edi, 241Ah
		jnz	loc_4D07E0
		push	esi
		mov	esi, offset stru_5FF1A8
		lea	edi, [ebp-8B4h]
		mov	ecx, 1Fh
		rep movsd
		pop	esi
		mov	eax, dword_5BE264
		push	eax
		push	offset aEnterNewName_1 ; "Enter	new _name for highlighting scheme "...
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-430h]
		push	edx		; buffer
		call	_swprintf
		mov	eax, dword_5BE264
		add	esp, 0Ch
		mov	edx, eax
		mov	ecx, fi
		push	0		; mode
		push	ecx		; fi
		lea	eax, [edx+eax*2]
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		push	0		; letter
		lea	eax, [edx+eax*8]
		push	0		; savetype
		push	100h		; length
		lea	ecx, [ebp-430h]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset hilite
		push	eax		; s
		push	ecx		; _title
		push	esi		; hparent
		call	Getstring
		add	esp, 28h
		mov	edi, eax
		push	esi
		push	edi
		lea	esi, [ebp-8B4h]
		mov	edi, offset stru_5FF1A8
		mov	ecx, 1Fh
		rep movsd
		pop	edi
		pop	esi
		push	esi		; hWnd
		call	SetFocus
		dec	edi
		jnz	loc_4D0A1B
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D07E0:				; CODE XREF: .text:004D0734j
		cmp	edi, 241Bh
		jnz	short loc_4D0808
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_4D0808
		push	1		; bErase
		push	0		; lpRect
		push	241Eh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0808:				; CODE XREF: .text:004D07E6j
					; .text:004D07ECj
		cmp	edi, 241Ch
		jnz	short loc_4D0849
		push	241Ch		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		mov	edx, dword_5BE264
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		mov	hilite.hiliteoperands[edx*8], eax
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0849:				; CODE XREF: .text:004D080Ej
		cmp	edi, 241Dh
		jnz	short loc_4D088A
		push	241Dh		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		mov	edx, dword_5BE264
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		mov	hilite.hilitemodified[edx*8], eax
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D088A:				; CODE XREF: .text:004D084Fj
		cmp	edi, 241Eh
		jnz	loc_4D0931
		mov	eax, dword_5BE268
		cmp	eax, 0Ah
		jge	short loc_4D08A5
		add	eax, 0Ch
		jmp	short loc_4D08A8
; ---------------------------------------------------------------------------

loc_4D08A5:				; CODE XREF: .text:004D089Ej
		add	eax, 0Eh

loc_4D08A8:				; CODE XREF: .text:004D08A3j
		mov	edx, [ebp-10h]
		and	edx, 0FFh
		cmp	edx, 23h
		jnz	short loc_4D08BB
		or	edx, 0FFFFFFFFh
		jmp	short loc_4D08C2
; ---------------------------------------------------------------------------

loc_4D08BB:				; CODE XREF: .text:004D08B4j
		mov	edx, color[edx*4]

loc_4D08C2:				; CODE XREF: .text:004D08B9j
		test	byte ptr [ebp-0Fh], 1
		jz	short loc_4D08E5
		mov	ecx, dword_5BE264
		mov	ebx, ecx
		lea	ecx, [ebx+ecx*2]
		lea	ecx, [ebx+ecx*8]
		lea	ecx, [ebx+ecx*4]
		lea	ecx, hilite.textcolor[ecx*8]
		mov	[ecx+eax*4], edx
		jmp	short loc_4D0906
; ---------------------------------------------------------------------------

loc_4D08E5:				; CODE XREF: .text:004D08C6j
		test	byte ptr [ebp-0Fh], 2
		jz	short loc_4D0906
		mov	ecx, dword_5BE264
		mov	ebx, ecx
		lea	ecx, [ebx+ecx*2]
		lea	ecx, [ebx+ecx*8]
		lea	ecx, [ebx+ecx*4]
		lea	ecx, hilite.bkcolor[ecx*8]
		mov	[ecx+eax*4], edx

loc_4D0906:				; CODE XREF: .text:004D08E3j
					; .text:004D08E9j
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		push	1		; bErase
		push	0		; lpRect
		push	241Eh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0931:				; CODE XREF: .text:004D0890j
		cmp	edi, 241Fh
		jnz	short loc_4D0997
		push	308h		; n
		mov	eax, dword_5BE264
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset tmphilite
		push	eax		; src
		mov	eax, dword_5BE264
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset hilite
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		mov	dword ptr [ebp-0Ch], 1
		add	esp, 0Ch
		jmp	loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D0997:				; CODE XREF: .text:004D0937j
		cmp	edi, 1
		jnz	short loc_4D09CA
		lea	ecx, [ebp-8C4h]
		push	ecx		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-8C4h]
		mov	X, eax
		mov	edx, [ebp-8C0h]
		mov	Y, edx
		push	0		; nResult
		push	esi		; hDlg
		call	EndDialog
		jmp	short loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D09CA:				; CODE XREF: .text:004D099Aj
		cmp	edi, 2
		jnz	short loc_4D09FD
		lea	ecx, [ebp-8C4h]
		push	ecx		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-8C4h]
		mov	X, eax
		mov	edx, [ebp-8C0h]
		mov	Y, edx
		push	0FFFFFFFFh	; nResult
		push	esi		; hDlg
		call	EndDialog
		jmp	short loc_4D0A1B
; ---------------------------------------------------------------------------

loc_4D09FD:				; CODE XREF: .text:004D09CDj
		cmp	dword ptr [ebx], 3Eh
		jz	short loc_4D0A0E
		mov	eax, [ebx]
		cmp	eax, 60h
		jb	short loc_4D0A1B
		cmp	eax, 6Fh
		ja	short loc_4D0A1B

loc_4D0A0E:				; CODE XREF: .text:004D0A00j
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4D0A1B
		mov	dword ptr [ebp-4], 1

loc_4D0A1B:				; CODE XREF: .text:004CF8F4j
					; .text:004CF9AEj ...
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4D0D1A
		push	0		; lParam
		push	offset loc_4CF180 ; lpEnumFunc
		push	esi		; hWndParent
		call	EnumChildWindows
		mov	edx, dword_5BE254
		push	edx
		call	loc_4CD940
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4D0A6B
		xor	eax, eax
		mov	dword_5BE254, eax
		push	0		; lParam
		mov	edx, dword_5BE254
		push	edx		; wParam
		push	186h		; Msg
		push	232Ah		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SendMessageW

loc_4D0A6B:				; CODE XREF: .text:004D0A43j
		mov	ecx, edi
		push	offset stru_5FF1A8 ; pdlg
		shl	ecx, 3
		push	esi		; hw
		lea	ecx, [ecx+ecx*4]
		add	ecx, dword_5FF228
		mov	stru_5FF1A8.controls, ecx
		call	Preparedialog
		add	esp, 8
		cmp	_imp__DebugBreakProcess, 0
		jnz	short loc_4D0AED
		push	23F3h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0AB3
		mov	eax, [ebp-28h]
		push	eax		; hWnd
		call	DestroyWindow

loc_4D0AB3:				; CODE XREF: .text:004D0AA8j
		push	23F4h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0AD0
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	DestroyWindow

loc_4D0AD0:				; CODE XREF: .text:004D0AC5j
		push	23F5h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0AED
		mov	ecx, [ebp-28h]
		push	ecx		; hWnd
		call	DestroyWindow

loc_4D0AED:				; CODE XREF: .text:004D0A94j
					; .text:004D0AE2j
		cmp	_imp__DebugActiveProcessStop, 0
		jnz	short loc_4D0B30
		push	23FAh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0B13
		mov	eax, [ebp-28h]
		push	eax		; hWnd
		call	DestroyWindow

loc_4D0B13:				; CODE XREF: .text:004D0B08j
		push	23FBh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0B30
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	DestroyWindow

loc_4D0B30:				; CODE XREF: .text:004D0AF4j
					; .text:004D0B25j
		push	23F0h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4D0B5C
		mov	ecx, asciicodepage
		push	ecx		; a3
		push	0		; a2
		push	23F0h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	Fillcombowithcplist
		add	esp, 0Ch

loc_4D0B5C:				; CODE XREF: .text:004D0B3Dj
		push	23F1h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4D0B87
		mov	eax, mbcscodepage
		push	eax		; a3
		push	1		; a2
		push	23F1h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	Fillcombowithcplist
		add	esp, 0Ch

loc_4D0B87:				; CODE XREF: .text:004D0B69j
		push	23F7h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4D0BA1
		push	0		; wParam
		push	esi		; hDlg
		call	loc_4CD97C
		add	esp, 8

loc_4D0BA1:				; CODE XREF: .text:004D0B94j
		push	23FDh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4D0BBB
		push	0		; int
		push	esi		; hDlg
		call	loc_4CDA74
		add	esp, 8

loc_4D0BBB:				; CODE XREF: .text:004D0BAEj
		xor	edx, edx
		mov	[ebp-18h], edx
		push	2402h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0C18
		lea	ecx, [ebp-18h]
		push	ecx
		lea	eax, [ebp-838h]
		push	eax
		lea	edx, [ebp-430h]
		push	edx
		call	loc_4CDC6C
		add	esp, 0Ch
		mov	edi, eax
		lea	eax, [ebp-430h]
		push	eax		; lpString
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	SetWindowTextW
		xor	ecx, ecx
		dec	edi
		jz	short loc_4D0C06
		inc	ecx

loc_4D0C06:				; CODE XREF: .text:004D0C03j
		push	ecx		; bEnable
		push	2404h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4D0C18:				; CODE XREF: .text:004D0BD2j
		push	2403h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0C66
		lea	eax, [ebp-430h]
		push	eax
		call	loc_4CDEE0
		mov	edi, eax
		lea	eax, [ebp-430h]
		pop	ecx
		push	eax		; lpString
		mov	edx, [ebp-28h]
		push	edx		; hWnd
		call	SetWindowTextW
		mov	ecx, 1
		dec	edi
		jz	short loc_4D0C54
		dec	ecx

loc_4D0C54:				; CODE XREF: .text:004D0C51j
		push	ecx		; bEnable
		push	2405h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4D0C66:				; CODE XREF: .text:004D0C2Aj
		push	2406h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4D0C89
		mov	eax, [ebp-18h]
		push	eax		; uCheck
		push	2406h		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_4D0C89:				; CODE XREF: .text:004D0C78j
		push	241Ch		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4D0CC5
		mov	edx, 1
		mov	ecx, dword_5BE264
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		cmp	hilite.hiliteoperands[ecx*8], 0
		jnz	short loc_4D0CB9
		dec	edx

loc_4D0CB9:				; CODE XREF: .text:004D0CB6j
		push	edx		; uCheck
		push	241Ch		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_4D0CC5:				; CODE XREF: .text:004D0C96j
		push	241Dh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_4D0D01
		mov	edx, 1
		mov	ecx, dword_5BE264
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		cmp	hilite.hilitemodified[ecx*8], 0
		jnz	short loc_4D0CF5
		dec	edx

loc_4D0CF5:				; CODE XREF: .text:004D0CF2j
		push	edx		; uCheck
		push	241Dh		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_4D0D01:				; CODE XREF: .text:004D0CD2j
		push	380h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		push	esi		; hWnd
		call	RedrawWindow
		mov	stru_5FF1A8.initdone, 1

loc_4D0D1A:				; CODE XREF: .text:004D0A1Fj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4D0D78
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4D0D78
; ---------------------------------------------------------------------------

loc_4D0D33:				; CODE XREF: .text:004CF29Dj
		mov	edx, [ebp+10h]
		and	edx, 0FFF0h
		cmp	edx, 0F060h
		jnz	short loc_4D0D70
		lea	ecx, [ebp-8C4h]
		push	ecx		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-8C4h]
		mov	X, eax
		mov	edx, [ebp-8C0h]
		mov	Y, edx
		push	0FFFFFFFFh	; nResult
		push	esi		; hDlg
		call	EndDialog

loc_4D0D70:				; CODE XREF: .text:004D0D42j
		xor	eax, eax
		jmp	short loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4D0D74:				; CODE XREF: .text:004CF2B1j
					; .text:004CF2CAj
		xor	eax, eax
		jmp	short loc_4D0D7D
; ---------------------------------------------------------------------------

loc_4D0D78:				; CODE XREF: .text:004CF823j
					; .text:004D026Dj ...
		mov	eax, 1

loc_4D0D7D:				; CODE XREF: .text:004CF65Dj
					; .text:004CF784j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
