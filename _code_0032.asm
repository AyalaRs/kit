.code

; int __stdcall	loc_428FF8(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM)
loc_428FF8:				; DATA XREF: .text:00429F7Bo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	edi, 2
		jnz	loc_4290BA
		push	ebx		; hWnd
		call	Findcontrol
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	loc_4290BA
		cmp	dword ptr [esi], 20h
		jb	loc_4290BA
		cmp	dword ptr [esi], 27h
		ja	loc_4290BA
		push	1Eh		; nIndex
		push	ebx		; hWnd
		call	GetParent
		push	eax		; hWnd
		call	GetWindowLongW
		test	eax, eax
		jz	short loc_4290BA
		mov	edx, [esi]
		mov	eax, [eax+edx*4-40h]
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4290BA
		xor	esi, esi

loc_429059:				; CODE XREF: .text:004290A9j
		push	0		; lParam
		push	esi		; wParam
		push	149h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		cmp	eax, 0FFFFFFFFh
		jz	short loc_429088
		cmp	eax, 100h
		jge	short loc_429088
		lea	eax, [ebp-204h]
		push	eax		; lParam
		push	esi		; wParam
		push	148h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		jmp	short loc_429091
; ---------------------------------------------------------------------------

loc_429088:				; CODE XREF: .text:0042906Aj
					; .text:00429071j
		mov	word ptr [ebp-204h], 0

loc_429091:				; CODE XREF: .text:00429086j
		lea	edx, [ebp-204h]
		push	edx		; s
		mov	ecx, [ebp-4]
		push	ecx		; type
		push	esi		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		inc	esi
		cmp	esi, 10h
		jl	short loc_429059
		call	Mergequickdata
		mov	dword_5D5614, 1

loc_4290BA:				; CODE XREF: .text:0042900Dj
					; .text:0042901Ej ...
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		push	ebx		; hWnd
		mov	ecx, dword_5DA59C
		push	ecx		; lpPrevWndFunc
		call	CallWindowProcW
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 116. _Preparedialog
; Exported entry 672. Preparedialog

; int __cdecl Preparedialog(HWND hw, t_dialog *pdlg)
		public Preparedialog
Preparedialog:				; CODE XREF: .text:00424C26p
					; .text:0042A9A1p ...
		push	ebp		; _Preparedialog
		mov	ebp, esp
		add	esp, 0FFFFFCA4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+0Ch]
		jz	short loc_4290FA
		test	esi, esi
		jz	short loc_4290FA
		cmp	dword ptr [esi], 0
		jnz	short loc_429102

loc_4290FA:				; CODE XREF: .text:004290EFj
					; .text:004290F3j
		or	eax, 0FFFFFFFFh
		jmp	loc_42A89D
; ---------------------------------------------------------------------------

loc_429102:				; CODE XREF: .text:004290F8j
		push	esi		; dwNewLong
		push	1Eh		; nIndex
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	SetWindowLongW
		xor	ecx, ecx
		mov	[esi+78h], ecx
		mov	ebx, [esi]
		cmp	dword_5BE218, 0
		jnz	short loc_429194
		mov	eax, fixfont.hfont
		mov	edx, sysfont.hfont
		mov	[ebp-54h], eax
		mov	eax, fixfont._width
		mov	[ebp-5Ch], edx
		mov	[ebp-58h], edx
		cmp	eax, sysfont._width
		jle	short loc_429146
		mov	ecx, offset fixfont._width
		jmp	short loc_42914B
; ---------------------------------------------------------------------------

loc_429146:				; CODE XREF: .text:0042913Dj
		mov	ecx, offset sysfont._width

loc_42914B:				; CODE XREF: .text:00429144j
		mov	eax, [ecx]
		mov	[ebp-0Ch], eax
		mov	edx, fixfont.height
		cmp	edx, sysfont.height
		jle	short loc_429165
		mov	eax, offset fixfont.height
		jmp	short loc_42916A
; ---------------------------------------------------------------------------

loc_429165:				; CODE XREF: .text:0042915Cj
		mov	eax, offset sysfont.height

loc_42916A:				; CODE XREF: .text:00429163j
		mov	edx, [eax]
		mov	[ebp-10h], edx
		mov	ecx, [ebp-54h]
		mov	[esi+60h], ecx
		mov	eax, fixfont.isfullunicode
		mov	[esi+64h], eax
		mov	edx, fixfont._width
		mov	[esi+68h], edx
		mov	ecx, fixfont.height
		mov	[esi+6Ch], ecx
		jmp	loc_4292DC
; ---------------------------------------------------------------------------

loc_429194:				; CODE XREF: .text:0042911Cj
		cmp	dword_5BE218, 3
		jnz	loc_429226
		mov	ecx, dword_5BE21C
		test	ecx, ecx
		jl	short loc_4291B0
		cmp	ecx, 8
		jl	short loc_4291B6

loc_4291B0:				; CODE XREF: .text:004291A9j
		mov	ecx, fi

loc_4291B6:				; CODE XREF: .text:004291AEj
		lea	eax, [ecx+ecx*4]
		mov	edi, 3
		shl	eax, 5
		sub	eax, ecx
		mov	edx, font.hfont[eax*4]
		lea	eax, [ecx+ecx*4]
		shl	eax, 5
		mov	[ebp-5Ch], edx
		sub	eax, ecx
		mov	[ebp-58h], edx
		mov	[ebp-54h], edx
		mov	eax, font._width[eax*4]
		shl	eax, 2
		cdq
		idiv	edi
		mov	[ebp-0Ch], eax
		lea	eax, [ecx+ecx*4]
		shl	eax, 5
		sub	eax, ecx
		mov	edx, font.height[eax*4]
		mov	[ebp-10h], edx
		lea	edx, [ecx+ecx*4]
		shl	edx, 5
		mov	eax, [ebp-54h]
		sub	edx, ecx
		mov	[esi+60h], eax
		mov	ecx, font.isfullunicode[edx*4]
		mov	[esi+64h], ecx
		mov	eax, [ebp-0Ch]
		mov	[esi+68h], eax
		mov	edx, [ebp-10h]
		mov	[esi+6Ch], edx
		jmp	loc_4292DC
; ---------------------------------------------------------------------------

loc_429226:				; CODE XREF: .text:0042919Bj
		cmp	dword_5BE218, 2
		jnz	short loc_429237
		mov	ecx, dword_5BE21C
		jmp	short loc_42923A
; ---------------------------------------------------------------------------

loc_429237:				; CODE XREF: .text:0042922Dj
		mov	ecx, [esi+38h]

loc_42923A:				; CODE XREF: .text:00429235j
		test	ecx, ecx
		jl	short loc_429243
		cmp	ecx, 8
		jl	short loc_429249

loc_429243:				; CODE XREF: .text:0042923Cj
		mov	ecx, fi

loc_429249:				; CODE XREF: .text:00429241j
		lea	eax, [ecx+ecx*4]
		shl	eax, 5
		sub	eax, ecx
		mov	edx, font.hfont[eax*4]
		mov	eax, sysfont.hfont
		mov	[ebp-58h], edx
		mov	[ebp-54h], edx
		mov	[ebp-5Ch], eax
		lea	eax, [ecx+ecx*4]
		shl	eax, 5
		sub	eax, ecx
		shl	eax, 2
		add	eax, offset font._width
		mov	edx, [eax]
		cmp	edx, sysfont._width
		jg	short loc_429286
		mov	eax, offset sysfont._width

loc_429286:				; CODE XREF: .text:0042927Fj
		mov	edx, [eax]
		lea	eax, [ecx+ecx*4]
		shl	eax, 5
		mov	[ebp-0Ch], edx
		sub	eax, ecx
		shl	eax, 2
		add	eax, offset font.height
		mov	edx, [eax]
		cmp	edx, sysfont.height
		jg	short loc_4292AB
		mov	eax, offset sysfont.height

loc_4292AB:				; CODE XREF: .text:004292A4j
		mov	edx, [eax]
		mov	[ebp-10h], edx
		mov	eax, [ebp-54h]
		mov	[esi+60h], eax
		lea	eax, [ecx+ecx*4]
		shl	eax, 5
		sub	eax, ecx
		mov	edx, font.isfullunicode[eax*4]
		mov	[esi+64h], edx
		mov	edx, font._width[eax*4]
		mov	[esi+68h], edx
		mov	eax, font.height[eax*4]
		mov	[esi+6Ch], eax

loc_4292DC:				; CODE XREF: .text:0042918Fj
					; .text:00429221j
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	GetDC
		mov	[ebp-60h], eax
		cmp	dword ptr [ebp-60h], 0
		jnz	short loc_4292F5
		xor	eax, eax
		mov	[ebp-3Ch], eax
		jmp	short loc_429327
; ---------------------------------------------------------------------------

loc_4292F5:				; CODE XREF: .text:004292ECj
		lea	edx, [ebp-35Ch]
		push	edx		; LPVOID
		push	18h		; int
		push	7FF8h		; lpBitmapName
		push	0		; hInstance
		call	LoadBitmapW
		push	eax		; HGDIOBJ
		call	GetObjectW
		test	eax, eax
		jz	short loc_429322
		mov	ecx, [ebp-358h]
		add	ecx, 0Ah
		mov	[ebp-3Ch], ecx
		jmp	short loc_429327
; ---------------------------------------------------------------------------

loc_429322:				; CODE XREF: .text:00429312j
		xor	eax, eax
		mov	[ebp-3Ch], eax

loc_429327:				; CODE XREF: .text:004292F3j
					; .text:00429320j
		xor	edx, edx
		mov	[ebp-34h], edx
		xor	ecx, ecx
		mov	[esi+70h], ecx
		xor	eax, eax
		mov	[esi+74h], eax
		jmp	loc_42A4CF
; ---------------------------------------------------------------------------

loc_42933B:				; CODE XREF: .text:0042A4D2j
		mov	eax, [ebx+4]
		cmp	eax, 0FFFFFFFFh
		jz	short loc_429355
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		test	eax, eax
		jnz	loc_42A4CC

loc_429355:				; CODE XREF: .text:00429341j
		cmp	dword ptr [ebx+1Ch], 0
		jnz	short loc_429362
		mov	dword ptr [ebx+1Ch], (offset aOd_empty+0Fh) ; ""

loc_429362:				; CODE XREF: .text:00429359j
		push	4		; nDenominator
		mov	ecx, [ebp-0Ch]
		push	ecx		; nNumerator
		mov	eax, [ebx+8]
		push	eax		; nNumber
		call	MulDiv
		mov	[ebp-14h], eax
		push	4		; nDenominator
		mov	edx, [ebp-0Ch]
		push	edx		; nNumerator
		mov	ecx, [ebx+10h]
		push	ecx		; nNumber
		call	MulDiv
		mov	[ebp-1Ch], eax
		push	8		; nDenominator
		mov	eax, [ebp-10h]
		push	eax		; nNumerator
		mov	edx, [ebx+0Ch]
		push	edx		; nNumber
		call	MulDiv
		mov	[ebp-18h], eax
		push	8		; nDenominator
		mov	ecx, [ebp-10h]
		push	ecx		; nNumerator
		mov	eax, [ebx+14h]
		push	eax		; nNumber
		call	MulDiv
		mov	[ebp-20h], eax
		cmp	dword_5BE248, 0
		jz	short loc_4293C2
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_4293C2
		mov	edx, [ebx+20h]
		cmp	word ptr [edx],	0
		jnz	short loc_4293C6

loc_4293C2:				; CODE XREF: .text:004293B1j
					; .text:004293B7j
		xor	ecx, ecx
		jmp	short loc_4293CB
; ---------------------------------------------------------------------------

loc_4293C6:				; CODE XREF: .text:004293C0j
		mov	ecx, 1

loc_4293CB:				; CODE XREF: .text:004293C4j
		mov	[ebp-38h], ecx
		mov	eax, [ebx]
		cmp	eax, 1Fh
		jg	short loc_429447
		jz	loc_429648
		cmp	eax, 16h	; switch 23 cases
		ja	loc_42A374	; jumptable 004293E4 default case
		jmp	ds:off_4293EB[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4293EB	dd offset loc_42A374	; DATA XREF: .text:004293E4r
		dd offset loc_4294AB	; jump table for switch	statement
		dd offset loc_4294BA
		dd offset loc_42A374
		dd offset loc_4294BA
		dd offset loc_4294BA
		dd offset loc_4294BA
		dd offset loc_4294BA
		dd offset loc_4294BA
		dd offset loc_4295D5
		dd offset loc_4295D5
		dd offset loc_42968C
		dd offset loc_4296EC
		dd offset loc_4296EC
		dd offset loc_4296EC
		dd offset loc_4296EC
		dd offset loc_4297EE
		dd offset loc_42989C
		dd offset loc_42989C
		dd offset loc_429921
		dd offset loc_429921
		dd offset loc_429921
		dd offset loc_429921
; ---------------------------------------------------------------------------

loc_429447:				; CODE XREF: .text:004293D3j
		cmp	eax, 7Ch
		jge	short loc_42947E
		add	eax, 0FFFFFFE0h
		sub	eax, 8
		jb	loc_429EA5
		add	eax, 0FFFFFFF8h
		sub	eax, 2
		jb	loc_429F95
		add	eax, 0FFFFFFF4h
		sub	eax, 22h
		jb	loc_42A0E0
		sub	eax, 10h
		jb	loc_42A20B
		jmp	loc_42A374	; jumptable 004293E4 default case
; ---------------------------------------------------------------------------

loc_42947E:				; CODE XREF: .text:0042944Aj
		add	eax, 0FFFFFF84h
		sub	eax, 2
		jb	loc_42A2F2
		sub	eax, 3
		jz	loc_4296EC	; jumptable 004293E4 cases 12-15
		dec	eax
		sub	eax, 2
		jb	loc_42989C	; jumptable 004293E4 cases 17,18
		sub	eax, 7
		jb	loc_429921	; jumptable 004293E4 cases 19-22
		jmp	loc_42A374	; jumptable 004293E4 default case
; ---------------------------------------------------------------------------

loc_4294AB:				; CODE XREF: .text:004293E4j
					; DATA XREF: .text:off_4293EBo
		xor	edx, edx	; jumptable 004293E4 case 1
		mov	[ebp-50h], edx
		xor	ecx, ecx
		mov	[ebp-38h], ecx
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_4294BA:				; CODE XREF: .text:004293E4j
					; DATA XREF: .text:off_4293EBo
		mov	eax, [ebx+1Ch]	; jumptable 004293E4 cases 2,4-8
		push	eax		; src
		call	_T
		pop	ecx
		mov	edi, eax
		cmp	dword ptr [ebx], 2
		jnz	short loc_42950D
		cmp	dword ptr [ebx+4], 0
		jge	short loc_42950D
		cmp	dword ptr [ebp-1Ch], 0
		jl	short loc_42950D
		cmp	word ptr [edi],	0
		jz	short loc_42950D
		mov	eax, [ebp-5Ch]
		push	eax		; HGDIOBJ
		mov	edx, [ebp-60h]
		push	edx		; HDC
		call	SelectObject
		lea	ecx, [ebp-4Ch]
		push	ecx		; LPSIZE
		push	edi		; s
		call	_wcslen
		pop	ecx
		push	eax		; int
		push	edi		; LPCWSTR
		mov	eax, [ebp-60h]
		push	eax		; HDC
		call	GetTextExtentPoint32W
		test	eax, eax
		jz	short loc_42950D
		mov	edx, [ebp-4Ch]
		add	edx, 2
		mov	[ebp-1Ch], edx

loc_42950D:				; CODE XREF: .text:004294C9j
					; .text:004294CFj ...
		mov	dword ptr [ebp-40h], 54000000h
		xor	ecx, ecx
		mov	[ebp-44h], ecx
		cmp	dword ptr [ebx], 4
		jz	short loc_429523
		cmp	dword ptr [ebx], 8
		jnz	short loc_429529

loc_429523:				; CODE XREF: .text:0042951Cj
		or	dword ptr [ebp-40h], 1
		jmp	short loc_429538
; ---------------------------------------------------------------------------

loc_429529:				; CODE XREF: .text:00429521j
		cmp	dword ptr [ebx], 5
		jnz	short loc_429534
		or	dword ptr [ebp-40h], 2
		jmp	short loc_429538
; ---------------------------------------------------------------------------

loc_429534:				; CODE XREF: .text:0042952Cj
		or	dword ptr [ebp-40h], 0

loc_429538:				; CODE XREF: .text:00429527j
					; .text:00429532j
		cmp	dword ptr [ebx], 7
		jnz	short loc_429544
		mov	dword ptr [ebp-44h], 200h

loc_429544:				; CODE XREF: .text:0042953Bj
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		mov	edx, [ebx+4]
		push	edx		; hMenu
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		mov	eax, [ebp-20h]
		push	eax		; nHeight
		mov	edx, [ebp-1Ch]
		mov	[ebp-64h], edx
		mov	eax, [ebp-64h]
		cdq
		xor	eax, edx
		sub	eax, edx
		push	eax		; nWidth
		mov	ecx, [ebp-18h]
		push	ecx		; Y
		mov	eax, [ebp-14h]
		push	eax		; X
		mov	edx, [ebp-40h]
		push	edx		; dwStyle
		push	edi		; lpWindowName
		push	offset aStatic_0 ; lpClassName
		mov	ecx, [ebp-44h]
		push	ecx		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_4295CB
		cmp	dword ptr [ebx], 8
		jnz	short loc_42959A
		mov	eax, titlefont.height
		cmp	eax, [ebp-20h]
		jle	short loc_4295AD

loc_42959A:				; CODE XREF: .text:0042958Ej
		push	0		; lParam
		mov	edx, [ebp-5Ch]
		push	edx		; wParam
		push	30h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	short loc_4295C0
; ---------------------------------------------------------------------------

loc_4295AD:				; CODE XREF: .text:00429598j
		push	0		; lParam
		mov	eax, titlefont.hfont
		push	eax		; wParam
		push	30h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW

loc_4295C0:				; CODE XREF: .text:004295ABj
		cmp	dword ptr [ebx], 6
		jnz	short loc_4295CB
		mov	ecx, [ebp-50h]
		mov	[esi+74h], ecx

loc_4295CB:				; CODE XREF: .text:00429589j
					; .text:004295C3j
		xor	eax, eax
		mov	[ebp-38h], eax
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_4295D5:				; CODE XREF: .text:004293E4j
					; DATA XREF: .text:off_4293EBo
		mov	edx, 12h	; jumptable 004293E4 cases 9,10
		cmp	dword ptr [ebx], 9
		jz	short loc_4295E5
		add	edx, 0FEEh

loc_4295E5:				; CODE XREF: .text:004295DDj
		or	edx, 54000000h
		mov	ecx, g_hInstance
		mov	[ebp-40h], edx
		push	0		; lpParam
		push	ecx		; hInstance
		mov	eax, [ebx+4]
		push	eax		; hMenu
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		mov	ecx, [ebp-20h]
		push	ecx		; nHeight
		mov	eax, [ebp-1Ch]
		push	eax		; nWidth
		mov	edx, [ebp-18h]
		push	edx		; Y
		mov	ecx, [ebp-14h]
		push	ecx		; X
		mov	eax, [ebp-40h]
		push	eax		; dwStyle
		push	(offset	aOd_empty+0Fh) ; lpWindowName
		push	offset aStatic_0 ; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_42963E
		push	0		; lParam
		mov	edx, [ebp-5Ch]
		push	edx		; wParam
		push	30h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW

loc_42963E:				; CODE XREF: .text:0042962Bj
		xor	eax, eax
		mov	[ebp-38h], eax
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_429648:				; CODE XREF: .text:004293D5j
		push	0		; lpParam
		mov	edx, g_hInstance
		push	edx		; hInstance
		mov	ecx, [ebx+4]
		push	ecx		; hMenu
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		mov	edx, [ebp-20h]
		push	edx		; nHeight
		mov	ecx, [ebp-1Ch]
		push	ecx		; nWidth
		mov	eax, [ebp-18h]
		push	eax		; Y
		mov	edx, [ebp-14h]
		push	edx		; X
		push	44000008h	; dwStyle
		push	(offset	aOd_empty+0Fh) ; lpWindowName
		push	offset aStatic_0 ; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		xor	ecx, ecx
		mov	[ebp-38h], ecx
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_42968C:				; CODE XREF: .text:004293E4j
					; DATA XREF: .text:off_4293EBo
		push	0		; jumptable 004293E4 case 11
		mov	eax, g_hInstance
		push	eax		; hInstance
		mov	edx, [ebx+4]
		push	edx		; hMenu
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		mov	eax, [ebp-20h]
		push	eax		; nHeight
		mov	edx, [ebp-1Ch]
		push	edx		; nWidth
		mov	ecx, [ebp-18h]
		push	ecx		; Y
		mov	eax, [ebp-14h]
		push	eax		; X
		push	54000007h	; dwStyle
		mov	edx, [ebx+1Ch]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpWindowName
		push	offset aButton	; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_4296E2
		push	0		; lParam
		mov	ecx, [ebp-5Ch]
		push	ecx		; wParam
		push	30h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW

loc_4296E2:				; CODE XREF: .text:004296CFj
		xor	edx, edx
		mov	[ebp-38h], edx
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_4296EC:				; CODE XREF: .text:004293E4j
					; .text:0042948Dj
					; DATA XREF: ...
		push	0		; jumptable 004293E4 cases 12-15
		mov	ecx, g_hInstance
		push	ecx		; hInstance
		mov	eax, [ebx+4]
		push	eax		; hMenu
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		mov	ecx, [ebp-20h]
		push	ecx		; nHeight
		mov	eax, [ebp-1Ch]
		push	eax		; nWidth
		mov	edx, [ebp-18h]
		push	edx		; Y
		mov	ecx, [ebp-14h]
		push	ecx		; X
		mov	eax, 800h
		cmp	dword ptr [ebx], 0Dh
		jz	short loc_42971C
		add	eax, 0FFFFF800h

loc_42971C:				; CODE XREF: .text:00429715j
		or	eax, 50010000h
		mov	edx, 8
		cmp	dword ptr [ebx], 0Eh
		jz	short loc_42972E
		add	edx, 0FFFFFFF8h

loc_42972E:				; CODE XREF: .text:00429729j
		or	eax, edx
		mov	ecx, 2010C4h
		cmp	dword ptr [ebx], 0Fh
		jz	short loc_429740
		add	ecx, 0FFDFEF3Ch

loc_429740:				; CODE XREF: .text:00429738j
		or	eax, ecx
		mov	edx, 80h
		cmp	dword ptr [ebx], 81h
		jz	short loc_429752
		add	edx, 0FFFFFF80h

loc_429752:				; CODE XREF: .text:0042974Dj
		or	eax, edx
		push	eax		; dwStyle
		mov	eax, [ebx+1Ch]
		push	eax		; lpWindowName
		push	offset aEdit_3	; lpClassName
		push	200h		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		push	0		; lParam
		cmp	dword ptr [ebx], 0Fh
		jnz	short loc_429783
		mov	ecx, 0FFFh
		jmp	short loc_429793
; ---------------------------------------------------------------------------

loc_429783:				; CODE XREF: .text:0042977Aj
		mov	ecx, 103h
		cmp	dword ptr [ebx], 81h
		jz	short loc_429793
		add	ecx, 0FFFFFFFCh

loc_429793:				; CODE XREF: .text:00429781j
					; .text:0042978Ej
		push	ecx		; wParam
		push	0C5h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		cmp	dword ptr [ebx], 0Fh
		jnz	short loc_4297BA
		push	0		; lParam
		mov	edx, [ebp-54h]
		push	edx		; wParam
		push	30h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	short loc_4297CB
; ---------------------------------------------------------------------------

loc_4297BA:				; CODE XREF: .text:004297A5j
		push	0		; lParam
		mov	edx, [ebp-58h]
		push	edx		; wParam
		push	30h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW

loc_4297CB:				; CODE XREF: .text:004297B8j
		cmp	dword ptr [ebx], 0Eh
		jnz	loc_42A37E
		push	offset loc_428ECC ; dwNewLong
		push	0FFFFFFFCh	; nIndex
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SetWindowLongW
		mov	dword_5DA598, eax
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_4297EE:				; CODE XREF: .text:004293E4j
					; DATA XREF: .text:off_4293EBo
		cmp	g_RICHED20, 0	; jumptable 004293E4 case 16
		jz	short loc_429835
		push	0		; lpParam
		mov	edx, g_hInstance
		push	edx		; hInstance
		mov	ecx, [ebx+4]
		push	ecx		; hMenu
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		mov	edx, [ebp-20h]
		push	edx		; nHeight
		mov	ecx, [ebp-1Ch]
		push	ecx		; nWidth
		mov	eax, [ebp-18h]
		push	eax		; Y
		mov	edx, [ebp-14h]
		push	edx		; X
		push	50210804h	; dwStyle
		mov	ecx, [ebx+1Ch]
		push	ecx		; lpWindowName
		push	offset aRichedit20w ; "RichEdit20W"
		push	200h		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		jmp	short loc_42983A
; ---------------------------------------------------------------------------

loc_429835:				; CODE XREF: .text:004297F5j
		xor	eax, eax
		mov	[ebp-50h], eax

loc_42983A:				; CODE XREF: .text:00429833j
		cmp	dword ptr [ebp-50h], 0
		jnz	short loc_42987C
		push	0		; lpParam
		mov	edx, g_hInstance
		push	edx		; hInstance
		mov	ecx, [ebx+4]
		push	ecx		; hMenu
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		mov	edx, [ebp-20h]
		push	edx		; nHeight
		mov	ecx, [ebp-1Ch]
		push	ecx		; nWidth
		mov	eax, [ebp-18h]
		push	eax		; Y
		mov	edx, [ebp-14h]
		push	edx		; X
		push	50000000h	; dwStyle
		mov	ecx, [ebx+1Ch]
		push	ecx		; lpWindowName
		push	offset aStatic_0 ; lpClassName
		push	200h		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax

loc_42987C:				; CODE XREF: .text:0042983Ej
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		push	0		; lParam
		mov	eax, [ebp-58h]
		push	eax		; wParam
		push	30h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_42989C:				; CODE XREF: .text:004293E4j
					; .text:00429497j
					; DATA XREF: ...
		push	0		; jumptable 004293E4 cases 17,18
		mov	ecx, g_hInstance
		push	ecx		; hInstance
		mov	eax, [ebx+4]
		push	eax		; hMenu
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		mov	ecx, [ebp-20h]
		push	ecx		; nHeight
		mov	eax, [ebp-1Ch]
		push	eax		; nWidth
		mov	edx, [ebp-18h]
		push	edx		; Y
		mov	ecx, [ebp-14h]
		push	ecx		; X
		mov	eax, 1
		cmp	dword ptr [ebx], 12h
		jz	short loc_4298C8
		dec	eax

loc_4298C8:				; CODE XREF: .text:004298C5j
		or	eax, 50010000h
		push	eax		; dwStyle
		cmp	dword ptr [ebx], 82h
		jz	short loc_4298DE
		cmp	dword ptr [ebx], 83h
		jnz	short loc_4298E5

loc_4298DE:				; CODE XREF: .text:004298D4j
		mov	edx, offset a____1 ; "..."
		jmp	short loc_4298F1
; ---------------------------------------------------------------------------

loc_4298E5:				; CODE XREF: .text:004298DCj
		mov	ecx, [ebx+1Ch]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	edx, eax

loc_4298F1:				; CODE XREF: .text:004298E3j
		push	edx		; lpWindowName
		push	offset aButton	; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		push	0		; lParam
		mov	eax, [ebp-5Ch]
		push	eax		; wParam
		push	30h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_429921:				; CODE XREF: .text:004293E4j
					; .text:004294A0j
					; DATA XREF: ...
		push	0		; jumptable 004293E4 cases 19-22
		mov	eax, g_hInstance
		push	eax		; hInstance
		mov	edx, [ebx+4]
		push	edx		; hMenu
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		mov	eax, [ebp-20h]
		push	eax		; nHeight
		mov	edx, [ebp-1Ch]
		push	edx		; nWidth
		mov	ecx, [ebp-18h]
		push	ecx		; Y
		mov	eax, [ebp-14h]
		push	eax		; X
		mov	edx, 2
		cmp	dword ptr [ebx], 15h
		jz	short loc_429951
		cmp	dword ptr [ebx], 16h
		jz	short loc_429951
		inc	edx

loc_429951:				; CODE XREF: .text:00429949j
					; .text:0042994Ej
		or	edx, 50210040h
		push	edx		; dwStyle
		push	(offset	aOd_empty+0Fh) ; lpWindowName
		push	offset aCombobox ; "COMBOBOX"
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		push	0		; lParam
		push	1		; wParam
		push	155h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		push	0		; lParam
		push	0FFh		; wParam
		push	141h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		cmp	dword ptr [ebx], 84h
		jnz	short loc_4299D6
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_4299B2
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_4299BA
; ---------------------------------------------------------------------------

loc_4299B2:				; CODE XREF: .text:004299A9j
		mov	ecx, [ebx+18h]
		mov	eax, [ecx]
		mov	[ebp-4], eax

loc_4299BA:				; CODE XREF: .text:004299B0j
		mov	edx, [ebp-4]
		push	edx		; a4
		push	1		; a3
		push	offset aLangname ; "LANGNAME"
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	Fillcombowithgroup
		add	esp, 10h
		jmp	loc_429E04
; ---------------------------------------------------------------------------

loc_4299D6:				; CODE XREF: .text:004299A3j
		cmp	dword ptr [ebx], 85h
		jnz	loc_429A7B
		xor	eax, eax
		mov	[ebp-4], eax

loc_4299E7:				; CODE XREF: .text:00429A15j
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		shl	edx, 2
		add	edx, offset font._name
		push	edx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_4299E7
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_429A24
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_429A62
; ---------------------------------------------------------------------------

loc_429A24:				; CODE XREF: .text:00429A1Bj
		mov	dword ptr [ebp-68h], 7
		mov	ecx, [ebx+18h]
		mov	[ebp-6Ch], ecx
		mov	eax, [ebp-6Ch]
		mov	edx, [eax]
		cmp	edx, [ebp-68h]
		jge	short loc_429A40
		mov	ecx, [ebp-6Ch]
		jmp	short loc_429A43
; ---------------------------------------------------------------------------

loc_429A40:				; CODE XREF: .text:00429A39j
		lea	ecx, [ebp-68h]

loc_429A43:				; CODE XREF: .text:00429A3Ej
		mov	[ebp-70h], ecx
		xor	eax, eax
		mov	[ebp-74h], eax
		mov	edx, [ebp-70h]
		mov	eax, [edx]
		cmp	eax, [ebp-74h]
		jge	short loc_429A5A
		lea	edx, [ebp-74h]
		jmp	short loc_429A5D
; ---------------------------------------------------------------------------

loc_429A5A:				; CODE XREF: .text:00429A53j
		mov	edx, [ebp-70h]

loc_429A5D:				; CODE XREF: .text:00429A58j
		mov	eax, [edx]
		mov	[ebp-4], eax

loc_429A62:				; CODE XREF: .text:00429A22j
		push	0		; lParam
		mov	ecx, [ebp-4]
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_429E04
; ---------------------------------------------------------------------------

loc_429A7B:				; CODE XREF: .text:004299DCj
		cmp	dword ptr [ebx], 88h
		jnz	loc_429B2A
		xor	edx, edx
		mov	[ebp-4], edx

loc_429A8C:				; CODE XREF: .text:00429ABBj
		mov	ecx, [ebp-4]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		shl	ecx, 3
		add	ecx, offset scheme
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_429A8C
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_429ACA
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_429B11
; ---------------------------------------------------------------------------

loc_429ACA:				; CODE XREF: .text:00429AC1j
		mov	dword ptr [ebp-78h], 7
		mov	eax, [ebx+18h]
		mov	[ebp-7Ch], eax
		mov	edx, [ebp-7Ch]
		mov	ecx, [edx]
		cmp	ecx, [ebp-78h]
		jge	short loc_429AE6
		mov	eax, [ebp-7Ch]
		jmp	short loc_429AE9
; ---------------------------------------------------------------------------

loc_429AE6:				; CODE XREF: .text:00429ADFj
		lea	eax, [ebp-78h]

loc_429AE9:				; CODE XREF: .text:00429AE4j
		mov	[ebp-80h], eax
		xor	edx, edx
		mov	[ebp-84h], edx
		mov	ecx, [ebp-80h]
		mov	eax, [ecx]
		cmp	eax, [ebp-84h]
		jge	short loc_429B09
		lea	edx, [ebp-84h]
		jmp	short loc_429B0C
; ---------------------------------------------------------------------------

loc_429B09:				; CODE XREF: .text:00429AFFj
		mov	edx, [ebp-80h]

loc_429B0C:				; CODE XREF: .text:00429B07j
		mov	eax, [edx]
		mov	[ebp-4], eax

loc_429B11:				; CODE XREF: .text:00429AC8j
		push	0		; lParam
		mov	ecx, [ebp-4]
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_429E04
; ---------------------------------------------------------------------------

loc_429B2A:				; CODE XREF: .text:00429A81j
		cmp	dword ptr [ebx], 89h
		jnz	loc_429BF4
		xor	edx, edx
		mov	[ebp-4], edx

loc_429B3B:				; CODE XREF: .text:00429B6Aj
		mov	ecx, [ebp-4]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		shl	ecx, 3
		add	ecx, offset hilite
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_429B3B
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_429B79
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_429BDB
; ---------------------------------------------------------------------------

loc_429B79:				; CODE XREF: .text:00429B70j
		mov	dword ptr [ebp-88h], 7
		mov	eax, [ebx+18h]
		mov	[ebp-8Ch], eax
		mov	edx, [ebp-8Ch]
		mov	ecx, [edx]
		cmp	ecx, [ebp-88h]
		jge	short loc_429BA4
		mov	eax, [ebp-8Ch]
		jmp	short loc_429BAA
; ---------------------------------------------------------------------------

loc_429BA4:				; CODE XREF: .text:00429B9Aj
		lea	eax, [ebp-88h]

loc_429BAA:				; CODE XREF: .text:00429BA2j
		mov	[ebp-90h], eax
		xor	edx, edx
		mov	[ebp-94h], edx
		mov	ecx, [ebp-90h]
		mov	eax, [ecx]
		cmp	eax, [ebp-94h]
		jge	short loc_429BD0
		lea	edx, [ebp-94h]
		jmp	short loc_429BD6
; ---------------------------------------------------------------------------

loc_429BD0:				; CODE XREF: .text:00429BC6j
		mov	edx, [ebp-90h]

loc_429BD6:				; CODE XREF: .text:00429BCEj
		mov	eax, [edx]
		mov	[ebp-4], eax

loc_429BDB:				; CODE XREF: .text:00429B77j
		push	0		; lParam
		mov	ecx, [ebp-4]
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_429E04
; ---------------------------------------------------------------------------

loc_429BF4:				; CODE XREF: .text:00429B30j
		cmp	dword ptr [ebx], 8Ah
		jnz	loc_429CC1
		mov	dword ptr [ebp-4], 1

loc_429C07:				; CODE XREF: .text:00429C36j
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		add	edx, offset hilite
		push	edx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_429C07
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_429C45
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_429CA8
; ---------------------------------------------------------------------------

loc_429C45:				; CODE XREF: .text:00429C3Cj
		mov	dword ptr [ebp-98h], 6
		mov	ecx, [ebx+18h]
		mov	eax, [ecx]
		dec	eax
		mov	[ebp-9Ch], eax
		mov	edx, [ebp-9Ch]
		cmp	edx, [ebp-98h]
		jge	short loc_429C71
		lea	ecx, [ebp-9Ch]
		jmp	short loc_429C77
; ---------------------------------------------------------------------------

loc_429C71:				; CODE XREF: .text:00429C67j
		lea	ecx, [ebp-98h]

loc_429C77:				; CODE XREF: .text:00429C6Fj
		mov	[ebp-0A0h], ecx
		xor	eax, eax
		mov	[ebp-0A4h], eax
		mov	edx, [ebp-0A0h]
		mov	eax, [edx]
		cmp	eax, [ebp-0A4h]
		jge	short loc_429C9D
		lea	edx, [ebp-0A4h]
		jmp	short loc_429CA3
; ---------------------------------------------------------------------------

loc_429C9D:				; CODE XREF: .text:00429C93j
		mov	edx, [ebp-0A0h]

loc_429CA3:				; CODE XREF: .text:00429C9Bj
		mov	eax, [edx]
		mov	[ebp-4], eax

loc_429CA8:				; CODE XREF: .text:00429C43j
		push	0		; lParam
		mov	ecx, [ebp-4]
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_429E04
; ---------------------------------------------------------------------------

loc_429CC1:				; CODE XREF: .text:00429BFAj
		cmp	dword ptr [ebx], 15h
		jz	short loc_429CCB
		cmp	dword ptr [ebx], 16h
		jnz	short loc_429CE7

loc_429CCB:				; CODE XREF: .text:00429CC4j
		cmp	dword ptr [ebx+1Ch], 0
		jz	loc_429E04
		mov	edx, [ebx+1Ch]
		push	edx		; lpString
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SetWindowTextW
		jmp	loc_429E04
; ---------------------------------------------------------------------------

loc_429CE7:				; CODE XREF: .text:00429CC9j
		cmp	dword ptr [ebx+1Ch], 0
		jz	loc_429E04
		mov	eax, [ebx+1Ch]
		cmp	word ptr [eax],	0
		jz	loc_429E04
		xor	edx, edx
		mov	[ebp-8], edx
		mov	ecx, [ebx+1Ch]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	edi, eax

loc_429D0F:				; CODE XREF: .text:00429D7Fj
		xor	eax, eax
		mov	[ebp-4], eax
		lea	edx, [ebp-2C4h]
		mov	[ebp-0C0h], edx
		jmp	short loc_429D38
; ---------------------------------------------------------------------------

loc_429D22:				; CODE XREF: .text:00429D4Dj
		mov	ecx, [ebp-0C0h]
		mov	[ecx], ax
		add	dword ptr [ebp-0C0h], 2
		inc	dword ptr [ebp-4]
		add	edi, 2

loc_429D38:				; CODE XREF: .text:00429D20j
		mov	ax, [edi]
		cmp	ax, 7Ch
		jz	short loc_429D4F
		test	ax, ax
		jz	short loc_429D4F
		cmp	dword ptr [ebp-4], 0FFh
		jl	short loc_429D22

loc_429D4F:				; CODE XREF: .text:00429D3Fj
					; .text:00429D44j
		mov	edx, [ebp-4]
		lea	ecx, [ebp-2C4h]
		mov	word ptr [ebp+edx*2-2C4h], 0
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		inc	dword ptr [ebp-8]
		cmp	word ptr [edi],	0
		jz	short loc_429D81
		add	edi, 2
		jmp	short loc_429D0F
; ---------------------------------------------------------------------------

loc_429D81:				; CODE XREF: .text:00429D7Aj
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_429D8E
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_429DF0
; ---------------------------------------------------------------------------

loc_429D8E:				; CODE XREF: .text:00429D85j
		mov	ecx, [ebp-8]
		dec	ecx
		mov	[ebp-0A8h], ecx
		mov	eax, [ebx+18h]
		mov	[ebp-0ACh], eax
		mov	edx, [ebp-0ACh]
		mov	ecx, [edx]
		cmp	ecx, [ebp-0A8h]
		jge	short loc_429DB9
		mov	eax, [ebp-0ACh]
		jmp	short loc_429DBF
; ---------------------------------------------------------------------------

loc_429DB9:				; CODE XREF: .text:00429DAFj
		lea	eax, [ebp-0A8h]

loc_429DBF:				; CODE XREF: .text:00429DB7j
		mov	[ebp-0B0h], eax
		xor	edx, edx
		mov	[ebp-0B4h], edx
		mov	ecx, [ebp-0B0h]
		mov	eax, [ecx]
		cmp	eax, [ebp-0B4h]
		jge	short loc_429DE5
		lea	edx, [ebp-0B4h]
		jmp	short loc_429DEB
; ---------------------------------------------------------------------------

loc_429DE5:				; CODE XREF: .text:00429DDBj
		mov	edx, [ebp-0B0h]

loc_429DEB:				; CODE XREF: .text:00429DE3j
		mov	eax, [edx]
		mov	[ebp-4], eax

loc_429DF0:				; CODE XREF: .text:00429D8Cj
		push	0		; lParam
		mov	ecx, [ebp-4]
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW

loc_429E04:				; CODE XREF: .text:004299D1j
					; .text:00429A76j ...
		cmp	dword ptr [ebx], 14h
		jz	short loc_429E0E
		cmp	dword ptr [ebx], 16h
		jnz	short loc_429E21

loc_429E0E:				; CODE XREF: .text:00429E07j
		push	0		; lParam
		mov	edx, [ebp-54h]
		push	edx		; wParam
		push	30h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	short loc_429E32
; ---------------------------------------------------------------------------

loc_429E21:				; CODE XREF: .text:00429E0Cj
		push	0		; lParam
		mov	eax, [ebp-58h]
		push	eax		; wParam
		push	30h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW

loc_429E32:				; CODE XREF: .text:00429E1Fj
		cmp	dword ptr [ebx], 86h
		jnz	short loc_429E6A
		push	0		; lParam
		mov	ecx, dword_5BE258
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	edx, font.hadjtop[ecx*4]
		add	edx, 5
		push	edx		; wParam
		push	14Eh		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_429E6A:				; CODE XREF: .text:00429E38j
		cmp	dword ptr [ebx], 87h
		jnz	loc_42A37E
		push	0		; lParam
		mov	eax, dword_5BE258
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.hadjbot[eax*4]
		add	ecx, 5
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_429EA5:				; CODE XREF: .text:00429452j
		push	0		; lpParam
		mov	edx, g_hInstance
		push	edx		; hInstance
		mov	ecx, [ebx+4]
		push	ecx		; hMenu
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		mov	edx, [ebp-20h]
		push	edx		; nHeight
		mov	ecx, [ebp-1Ch]
		push	ecx		; nWidth
		mov	eax, [ebp-18h]
		push	eax		; Y
		mov	edx, [ebp-14h]
		push	edx		; X
		push	50210042h	; dwStyle
		push	(offset	aOd_empty+0Fh) ; lpWindowName
		push	offset aCombobox ; "COMBOBOX"
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		push	0		; lParam
		push	1		; wParam
		push	155h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		push	0		; lParam
		push	0FFh		; wParam
		push	141h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		xor	edx, edx
		mov	[ebp-4], edx

loc_429F15:				; CODE XREF: .text:00429F56j
		push	100h		; nname
		lea	ecx, [ebp-2C4h]
		push	ecx		; _name
		mov	eax, [ebx]
		mov	edx, [esi+eax*4-40h]
		push	edx		; type
		mov	ecx, [ebp-4]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_429F4F
		lea	eax, [ebp-2C4h]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW

loc_429F4F:				; CODE XREF: .text:00429F36j
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 10h
		jl	short loc_429F15
		push	0		; lParam
		push	0		; wParam
		push	14Eh		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		push	0		; lParam
		mov	eax, [ebp-58h]
		push	eax		; wParam
		push	30h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW
		push	offset loc_428FF8 ; dwNewLong
		push	0FFFFFFFCh	; nIndex
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SetWindowLongW
		mov	dword_5DA59C, eax
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_429F95:				; CODE XREF: .text:0042945Ej
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		mov	edx, [ebx+4]
		push	edx		; hMenu
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		mov	eax, [ebp-20h]
		push	eax		; nHeight
		mov	edx, [ebp-1Ch]
		push	edx		; nWidth
		mov	ecx, [ebp-18h]
		push	ecx		; Y
		mov	eax, [ebp-14h]
		push	eax		; X
		push	50210181h	; dwStyle
		push	(offset	aOd_empty+0Fh) ; lpWindowName
		push	offset aListbox	; "LISTBOX"
		push	200h		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		cmp	dword ptr [ebx], 31h
		jnz	short loc_429FF3
		push	0		; lParam
		mov	edx, [ebp-54h]
		push	edx		; wParam
		push	30h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	short loc_42A004
; ---------------------------------------------------------------------------

loc_429FF3:				; CODE XREF: .text:00429FDEj
		push	0		; lParam
		mov	eax, [ebp-58h]
		push	eax		; wParam
		push	30h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW

loc_42A004:				; CODE XREF: .text:00429FF1j
		cmp	dword ptr [ebx+1Ch], 0
		jz	loc_42A092
		mov	ecx, [ebx+1Ch]
		cmp	word ptr [ecx],	0
		jz	short loc_42A092
		mov	eax, [ebx+1Ch]
		push	eax		; src
		call	_T
		pop	ecx
		mov	edi, eax

loc_42A023:				; CODE XREF: .text:0042A090j
		xor	eax, eax
		mov	[ebp-4], eax
		lea	edx, [ebp-2C4h]
		mov	[ebp-0C4h], edx
		jmp	short loc_42A04C
; ---------------------------------------------------------------------------

loc_42A036:				; CODE XREF: .text:0042A061j
		mov	ecx, [ebp-0C4h]
		mov	[ecx], ax
		add	dword ptr [ebp-0C4h], 2
		inc	dword ptr [ebp-4]
		add	edi, 2

loc_42A04C:				; CODE XREF: .text:0042A034j
		mov	ax, [edi]
		cmp	ax, 7Ch
		jz	short loc_42A063
		test	ax, ax
		jz	short loc_42A063
		cmp	dword ptr [ebp-4], 0FFh
		jl	short loc_42A036

loc_42A063:				; CODE XREF: .text:0042A053j
					; .text:0042A058j
		mov	edx, [ebp-4]
		lea	ecx, [ebp-2C4h]
		mov	word ptr [ebp+edx*2-2C4h], 0
		push	ecx		; lParam
		push	0		; wParam
		push	180h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		cmp	word ptr [edi],	0
		jz	short loc_42A092
		add	edi, 2
		jmp	short loc_42A023
; ---------------------------------------------------------------------------

loc_42A092:				; CODE XREF: .text:0042A008j
					; .text:0042A015j ...
		cmp	dword ptr [ebx+18h], 0
		jz	short loc_42A0AE
		push	0		; lParam
		mov	edx, [ebx+18h]
		mov	ecx, [edx]
		push	ecx		; wParam
		push	186h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW

loc_42A0AE:				; CODE XREF: .text:0042A096j
		push	0		; lParam
		push	0		; wParam
		push	197h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW
		mov	dword ptr [ebp-4], 0Ch
		lea	ecx, [ebp-4]
		push	ecx		; lParam
		push	1		; wParam
		push	192h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_42A0E0:				; CODE XREF: .text:0042946Aj
		mov	edx, [ebx+1Ch]
		push	edx		; src
		call	_T
		pop	ecx
		mov	edi, eax
		cmp	dword ptr [ebp-3Ch], 0
		jle	short loc_42A13C
		cmp	dword ptr [ebp-1Ch], 0
		jl	short loc_42A13C
		mov	eax, [ebp-5Ch]
		push	eax		; HGDIOBJ
		mov	edx, [ebp-60h]
		push	edx		; HDC
		call	SelectObject
		lea	ecx, [ebp-4Ch]
		push	ecx		; LPSIZE
		push	edi		; s
		call	_wcslen
		pop	ecx
		push	eax		; int
		push	edi		; LPCWSTR
		mov	eax, [ebp-60h]
		push	eax		; HDC
		call	GetTextExtentPoint32W
		test	eax, eax
		jz	short loc_42A13C
		cmp	dword ptr [ebx], 3Fh
		jnz	short loc_42A133
		mov	edx, [ebp-14h]
		add	edx, [ebp-1Ch]
		sub	edx, [ebp-4Ch]
		sub	edx, [ebp-3Ch]
		mov	[ebp-14h], edx

loc_42A133:				; CODE XREF: .text:0042A122j
		mov	ecx, [ebp-4Ch]
		add	ecx, [ebp-3Ch]
		mov	[ebp-1Ch], ecx

loc_42A13C:				; CODE XREF: .text:0042A0F0j
					; .text:0042A0F6j ...
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		mov	edx, [ebx+4]
		push	edx		; hMenu
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		mov	eax, [ebp-20h]
		push	eax		; nHeight
		mov	edx, [ebp-1Ch]
		mov	[ebp-0B8h], edx
		mov	eax, [ebp-0B8h]
		cdq
		xor	eax, edx
		sub	eax, edx
		push	eax		; nWidth
		mov	ecx, [ebp-18h]
		push	ecx		; Y
		mov	eax, [ebp-14h]
		push	eax		; X
		mov	edx, 220h
		cmp	dword ptr [ebx], 3Fh
		jz	short loc_42A17D
		add	edx, 0FFFFFDE0h

loc_42A17D:				; CODE XREF: .text:0042A175j
		or	edx, 50010003h
		push	edx		; dwStyle
		push	edi		; lpWindowName
		push	offset aButton	; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		cmp	dword ptr [ebx+18h], 0
		jz	short loc_42A1F5
		cmp	dword ptr [ebx], 3Eh
		jz	short loc_42A1AE
		cmp	dword ptr [ebx], 3Fh
		jnz	short loc_42A1CD

loc_42A1AE:				; CODE XREF: .text:0042A1A7j
		push	0		; lParam
		mov	ecx, [ebx+18h]
		cmp	dword ptr [ecx], 0
		setnz	al
		and	eax, 1
		push	eax		; wParam
		push	0F1h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW
		jmp	short loc_42A1F5
; ---------------------------------------------------------------------------

loc_42A1CD:				; CODE XREF: .text:0042A1ACj
		push	0		; lParam
		mov	eax, 1
		mov	ecx, [ebx]
		mov	edx, [ebx+18h]
		sub	ecx, 40h
		shl	eax, cl
		and	eax, [edx]
		setnz	cl
		and	ecx, 1
		push	ecx		; wParam
		push	0F1h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW

loc_42A1F5:				; CODE XREF: .text:0042A1A2j
					; .text:0042A1CBj
		push	0		; lParam
		mov	edx, [ebp-5Ch]
		push	edx		; wParam
		push	30h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_42A20B:				; CODE XREF: .text:00429473j
		mov	eax, [ebx+1Ch]
		push	eax		; src
		call	_T
		pop	ecx
		mov	edi, eax
		cmp	dword ptr [ebp-3Ch], 0
		jle	short loc_42A253
		cmp	dword ptr [ebp-1Ch], 0
		jl	short loc_42A253
		mov	eax, [ebp-5Ch]
		push	eax		; HGDIOBJ
		mov	edx, [ebp-60h]
		push	edx		; HDC
		call	SelectObject
		lea	ecx, [ebp-4Ch]
		push	ecx		; LPSIZE
		push	edi		; s
		call	_wcslen
		pop	ecx
		push	eax		; int
		push	edi		; LPCWSTR
		mov	eax, [ebp-60h]
		push	eax		; HDC
		call	GetTextExtentPoint32W
		test	eax, eax
		jz	short loc_42A253
		mov	edx, [ebp-4Ch]
		add	edx, [ebp-3Ch]
		mov	[ebp-1Ch], edx

loc_42A253:				; CODE XREF: .text:0042A21Bj
					; .text:0042A221j ...
		push	0		; lpParam
		mov	ecx, g_hInstance
		push	ecx		; hInstance
		mov	eax, [ebx+4]
		push	eax		; hMenu
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		mov	ecx, [ebp-20h]
		push	ecx		; nHeight
		mov	eax, [ebp-1Ch]
		mov	[ebp-0BCh], eax
		mov	eax, [ebp-0BCh]
		cdq
		xor	eax, edx
		sub	eax, edx
		push	eax		; nWidth
		mov	ecx, [ebp-18h]
		push	ecx		; Y
		mov	eax, [ebp-14h]
		push	eax		; X
		mov	edx, 20000h
		cmp	dword ptr [ebx], 60h
		jz	short loc_42A295
		add	edx, 0FFFE0000h

loc_42A295:				; CODE XREF: .text:0042A28Dj
		or	edx, 50010009h
		push	edx		; dwStyle
		push	edi		; lpWindowName
		push	offset aButton	; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A37E
		cmp	dword ptr [ebx+18h], 0
		jz	short loc_42A2DC
		mov	ecx, [ebx+18h]
		mov	edx, [ebx]
		sub	edx, 60h
		mov	eax, [ecx]
		cmp	eax, edx
		jnz	short loc_42A2DC
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		mov	ecx, [ebp-50h]
		push	ecx		; hWnd
		call	SendMessageW

loc_42A2DC:				; CODE XREF: .text:0042A2BAj
					; .text:0042A2C8j
		push	0		; lParam
		mov	eax, [ebp-5Ch]
		push	eax		; wParam
		push	30h		; Msg
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SendMessageW
		jmp	loc_42A37E
; ---------------------------------------------------------------------------

loc_42A2F2:				; CODE XREF: .text:00429484j
		cmp	dword ptr [ebx+1Ch], 0
		jz	loc_42A37E
		mov	ecx, [ebx+1Ch]
		cmp	word ptr [ecx],	0
		jz	short loc_42A37E
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		mov	edx, [ebx+4]
		push	edx		; hMenu
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		mov	eax, [ebp-20h]
		push	eax		; nHeight
		mov	edx, [ebp-1Ch]
		push	edx		; nWidth
		mov	ecx, [ebp-18h]
		push	ecx		; Y
		mov	eax, [ebp-14h]
		push	eax		; X
		push	50010000h	; dwStyle
		push	0		; lpWindowName
		mov	edx, [ebx+1Ch]
		push	edx		; lpClassName
		xor	ecx, ecx
		cmp	dword ptr [ebx], 7Ch
		jz	short loc_42A33D
		add	ecx, 200h

loc_42A33D:				; CODE XREF: .text:0042A335j
		push	ecx		; dwExStyle
		call	CreateWindowExW
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_42A37E
		cmp	dword ptr [ebx+18h], 0
		jz	short loc_42A361
		mov	eax, [ebx+18h]
		push	eax		; dwNewLong
		push	0		; nIndex
		mov	edx, [ebp-50h]
		push	edx		; hWnd
		call	SetWindowLongW

loc_42A361:				; CODE XREF: .text:0042A350j
		push	0		; lParam
		mov	ecx, [ebp-54h]
		push	ecx		; wParam
		push	30h		; Msg
		mov	eax, [ebp-50h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	short loc_42A37E
; ---------------------------------------------------------------------------

loc_42A374:				; CODE XREF: .text:004293DEj
					; .text:004293E4j ...
		xor	edx, edx	; jumptable 004293E4 default case
		xor	ecx, ecx
		mov	[ebp-50h], edx
		mov	[ebp-38h], ecx

loc_42A37E:				; CODE XREF: .text:004294B5j
					; .text:004295D0j ...
		cmp	dword ptr [ebp-50h], 0
		jz	loc_42A4CC
		cmp	dword ptr [ebp-38h], 0
		jz	loc_42A4CC
		cmp	dword ptr [ebp-34h], 0
		jnz	short loc_42A3CD
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		push	0		; hMenu
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		push	80000000h	; nHeight
		push	80000000h	; nWidth
		push	80000000h	; Y
		push	80000000h	; X
		push	3		; dwStyle
		push	0		; lpWindowName
		push	offset aTooltips_class ; "tooltips_class32"
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[esi+70h], eax

loc_42A3CD:				; CODE XREF: .text:0042A396j
		cmp	dword ptr [esi+70h], 0
		jz	loc_42A4C9
		mov	dword ptr [ebp-310h], 2Ch
		mov	ecx, [ebp+8]
		mov	[ebp-308h], ecx
		mov	dword ptr [ebp-30Ch], 11h
		mov	eax, [ebx]
		cmp	eax, 15h
		jz	short loc_42A40C
		cmp	eax, 16h
		jz	short loc_42A40C
		mov	eax, [ebx]
		cmp	eax, 20h
		jb	short loc_42A45B
		cmp	eax, 27h
		ja	short loc_42A45B

loc_42A40C:				; CODE XREF: .text:0042A3F9j
					; .text:0042A3FEj
		cmp	_imp__GetComboBoxInfo, 0
		jz	short loc_42A45B
		mov	dword ptr [ebp-344h], 34h
		xor	edx, edx
		lea	ecx, [ebp-344h]
		mov	[ebp-318h], edx
		push	ecx		; _DWORD
		mov	eax, [ebp-50h]
		push	eax		; _DWORD
		call	_imp__GetComboBoxInfo
		mov	edx, [ebp-318h]
		lea	edi, [ebp-300h]
		mov	[ebp-304h], edx
		push	esi
		lea	esi, [ebp-340h]
		mov	ecx, 4
		rep movsd
		pop	esi
		jmp	short loc_42A48E
; ---------------------------------------------------------------------------

loc_42A45B:				; CODE XREF: .text:0042A405j
					; .text:0042A40Aj ...
		mov	eax, [ebp-50h]
		mov	[ebp-304h], eax
		mov	edx, [ebp-14h]
		mov	[ebp-300h], edx
		mov	ecx, [ebp-18h]
		mov	[ebp-2FCh], ecx
		mov	eax, [ebp-14h]
		add	eax, [ebp-1Ch]
		mov	[ebp-2F8h], eax
		mov	edx, [ebp-18h]
		add	edx, [ebp-20h]
		mov	[ebp-2F4h], edx

loc_42A48E:				; CODE XREF: .text:0042A459j
		mov	ecx, g_hInstance
		xor	eax, eax
		mov	[ebp-2F0h], ecx
		mov	[ebp-2E8h], eax
		mov	edx, [ebx+20h]
		push	edx		; src
		call	_T
		pop	ecx
		mov	[ebp-2ECh], eax
		lea	ecx, [ebp-310h]
		push	ecx		; lParam
		push	0		; wParam
		push	432h		; Msg
		mov	eax, [esi+70h]
		push	eax		; hWnd
		call	SendMessageW

loc_42A4C9:				; CODE XREF: .text:0042A3D1j
		inc	dword ptr [ebp-34h]

loc_42A4CC:				; CODE XREF: .text:0042934Fj
					; .text:0042A382j ...
		add	ebx, 28h

loc_42A4CF:				; CODE XREF: .text:00429336j
		cmp	dword ptr [ebx], 0
		jnz	loc_42933B
		cmp	dword ptr [esi+4], 0
		jnz	short loc_42A4EB
		mov	edx, [ebx+1Ch]
		push	edx		; src
		call	_T
		pop	ecx
		mov	[esi+4], eax

loc_42A4EB:				; CODE XREF: .text:0042A4DCj
		cmp	dword ptr [esi+4], 0
		jz	short loc_42A507
		mov	ecx, [esi+4]
		cmp	word ptr [ecx],	0
		jz	short loc_42A507
		mov	eax, [esi+4]
		push	eax		; lpString
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	SetWindowTextW

loc_42A507:				; CODE XREF: .text:0042A4EFj
					; .text:0042A4F8j
		mov	ecx, [ebp-60h]
		push	ecx		; hDC
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	ReleaseDC
		lea	edx, [ebp-2D4h]
		push	edx		; lpRect
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	GetClientRect
		push	4		; nDenominator
		mov	eax, [ebp-0Ch]
		push	eax		; nNumerator
		mov	edx, [ebx+10h]
		push	edx		; nNumber
		call	MulDiv
		mov	ecx, [ebp-2CCh]
		sub	ecx, [ebp-2D4h]
		sub	eax, ecx
		mov	[ebp-1Ch], eax
		push	8		; nDenominator
		mov	eax, [ebp-10h]
		push	eax		; nNumerator
		mov	edx, [ebx+14h]
		push	edx		; nNumber
		call	MulDiv
		mov	ecx, [ebp-2C8h]
		sub	ecx, [ebp-2D0h]
		sub	eax, ecx
		mov	[ebp-20h], eax
		lea	eax, [ebp-2D4h]
		push	eax		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-1Ch]
		lea	edx, [ebp-2E4h]
		add	[ebp-2CCh], ecx
		mov	eax, [ebp-20h]
		add	[ebp-2C8h], eax
		push	edx		; rc
		mov	ecx, [esi+34h]
		push	ecx		; y
		mov	eax, [esi+30h]
		push	eax		; x
		call	Getmonitorrect
		add	esp, 0Ch
		test	byte ptr [esi+3Fh], 10h
		jz	loc_42A66C
		mov	edx, [esi+30h]
		mov	[ebp-2Ch], edx
		mov	ecx, [ebp-2Ch]
		add	ecx, [ebp-2CCh]
		sub	ecx, [ebp-2D4h]
		cmp	ecx, [ebp-2DCh]
		jle	short loc_42A5DB
		mov	eax, [ebp-2CCh]
		sub	eax, [ebp-2D4h]
		mov	edx, [ebp-2DCh]
		sub	edx, eax
		mov	[ebp-2Ch], edx

loc_42A5DB:				; CODE XREF: .text:0042A5C2j
		mov	ecx, [ebp-2E4h]
		cmp	ecx, [ebp-2Ch]
		jle	short loc_42A5EF
		mov	eax, [ebp-2E4h]
		mov	[ebp-2Ch], eax

loc_42A5EF:				; CODE XREF: .text:0042A5E4j
		mov	edx, [esi+34h]
		mov	[ebp-30h], edx
		mov	ecx, [ebp-30h]
		add	ecx, [ebp-2C8h]
		sub	ecx, [ebp-2D0h]
		cmp	ecx, [ebp-2D8h]
		jle	short loc_42A623
		mov	eax, [ebp-2C8h]
		sub	eax, [ebp-2D0h]
		mov	edx, [ebp-2D8h]
		sub	edx, eax
		mov	[ebp-30h], edx

loc_42A623:				; CODE XREF: .text:0042A60Aj
		mov	ecx, [ebp-2E0h]
		cmp	ecx, [ebp-30h]
		jle	short loc_42A637
		mov	eax, [ebp-2E0h]
		mov	[ebp-30h], eax

loc_42A637:				; CODE XREF: .text:0042A62Cj
		mov	edx, [ebp-2Ch]
		sub	edx, [ebp-2D4h]
		add	[ebp-2CCh], edx
		mov	ecx, [ebp-2Ch]
		mov	[ebp-2D4h], ecx
		mov	eax, [ebp-30h]
		sub	eax, [ebp-2D0h]
		add	[ebp-2C8h], eax
		mov	edx, [ebp-30h]
		mov	[ebp-2D0h], edx
		jmp	loc_42A84E
; ---------------------------------------------------------------------------

loc_42A66C:				; CODE XREF: .text:0042A5A1j
		cmp	dword_5BE220, 0
		jz	loc_42A7D4
		cmp	dword ptr [esi+30h], 0
		jge	short loc_42A689
		cmp	dword ptr [esi+34h], 0
		jl	loc_42A7D4

loc_42A689:				; CODE XREF: .text:0042A67Dj
		cmp	dword ptr [esi+38h], 0
		jl	short loc_42A695
		cmp	dword ptr [esi+38h], 8
		jl	short loc_42A69E

loc_42A695:				; CODE XREF: .text:0042A68Dj
		mov	ecx, fi
		mov	[esi+38h], ecx

loc_42A69E:				; CODE XREF: .text:0042A693j
		mov	eax, [esi+38h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font._width[eax*4]
		mov	[ebp-24h], ecx
		mov	eax, [esi+38h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		mov	[ebp-28h], ecx
		mov	eax, [esi+30h]
		inc	eax
		mov	[ebp-2Ch], eax
		mov	edx, [ebp-2Ch]
		add	edx, [ebp-2CCh]
		sub	edx, [ebp-2D4h]
		add	edx, [ebp-24h]
		cmp	edx, [ebp-2DCh]
		jle	short loc_42A707
		mov	ecx, [ebp-2CCh]
		sub	ecx, [ebp-2D4h]
		mov	eax, [ebp-2DCh]
		sub	eax, ecx
		sub	eax, [ebp-24h]
		mov	[ebp-2Ch], eax

loc_42A707:				; CODE XREF: .text:0042A6EBj
		mov	edx, [ebp-2E4h]
		add	edx, [ebp-24h]
		cmp	edx, [ebp-2Ch]
		jle	short loc_42A721
		mov	ecx, [ebp-2E4h]
		add	ecx, [ebp-24h]
		mov	[ebp-2Ch], ecx

loc_42A721:				; CODE XREF: .text:0042A713j
		mov	eax, [ebp-2C8h]
		sub	eax, [ebp-2D0h]
		mov	edx, [esi+34h]
		sub	edx, eax
		dec	edx
		mov	[ebp-30h], edx
		mov	ecx, [ebp-2E0h]
		add	ecx, [ebp-28h]
		cmp	ecx, [ebp-30h]
		jle	short loc_42A754
		mov	eax, [esi+34h]
		add	eax, [ebp-2E0h]
		add	eax, [ebp-28h]
		inc	eax
		mov	[ebp-30h], eax

loc_42A754:				; CODE XREF: .text:0042A742j
		mov	edx, [ebp-30h]
		add	edx, [ebp-2C8h]
		sub	edx, [ebp-2D0h]
		add	edx, [ebp-28h]
		cmp	edx, [ebp-2D8h]
		jle	short loc_42A7A2
		mov	ecx, [ebp-2C8h]
		sub	ecx, [ebp-2D0h]
		mov	eax, [ebp-2D8h]
		sub	eax, ecx
		sub	eax, [ebp-28h]
		mov	[ebp-30h], eax
		mov	edx, [ebp-2E0h]
		add	edx, [ebp-28h]
		cmp	edx, [ebp-30h]
		jle	short loc_42A7A2
		mov	ecx, [ebp-2E0h]
		add	ecx, [ebp-28h]
		mov	[ebp-30h], ecx

loc_42A7A2:				; CODE XREF: .text:0042A76Cj
					; .text:0042A794j
		mov	eax, [ebp-2Ch]
		sub	eax, [ebp-2D4h]
		add	[ebp-2CCh], eax
		mov	edx, [ebp-2Ch]
		mov	[ebp-2D4h], edx
		mov	ecx, [ebp-30h]
		sub	ecx, [ebp-2D0h]
		add	[ebp-2C8h], ecx
		mov	eax, [ebp-30h]
		mov	[ebp-2D0h], eax
		jmp	short loc_42A84E
; ---------------------------------------------------------------------------

loc_42A7D4:				; CODE XREF: .text:0042A673j
					; .text:0042A683j
		test	byte ptr [esi+3Fh], 20h
		jz	short loc_42A84E
		cmp	dword ptr [ebx+1Ch], 0
		jz	short loc_42A84E
		mov	edx, [ebx+1Ch]
		cmp	word ptr [edx],	0
		jz	short loc_42A84E
		or	ecx, 0FFFFFFFFh
		lea	eax, [ebp-30h]
		mov	[ebp-30h], ecx
		mov	[ebp-2Ch], ecx
		push	eax
		lea	edx, [ebp-2Ch]
		push	edx		; arglist
		push	offset aII	; "%i,%i"
		mov	eax, [ebx+1Ch]
		push	eax		; key
		push	offset aDialogPlacemen ; "Dialog placement"
		push	0		; file
		call	Getfromini
		add	esp, 18h
		cmp	dword ptr [ebp-2Ch], 0
		jl	short loc_42A84E
		cmp	dword ptr [ebp-30h], 0
		jl	short loc_42A84E
		mov	edx, [ebp-2Ch]
		sub	edx, [ebp-2D4h]
		add	[ebp-2CCh], edx
		mov	ecx, [ebp-2Ch]
		mov	[ebp-2D4h], ecx
		mov	eax, [ebp-30h]
		sub	eax, [ebp-2D0h]
		add	[ebp-2C8h], eax
		mov	edx, [ebp-30h]
		mov	[ebp-2D0h], edx

loc_42A84E:				; CODE XREF: .text:0042A667j
					; .text:0042A7D2j ...
		push	0		; uFlags
		mov	ecx, [ebp-2C8h]
		sub	ecx, [ebp-2D0h]
		push	ecx		; cy
		mov	eax, [ebp-2CCh]
		sub	eax, [ebp-2D4h]
		push	eax		; cx
		mov	edx, [ebp-2D0h]
		push	edx		; Y
		mov	ecx, [ebp-2D4h]
		push	ecx		; X
		push	0FFFFFFFFh	; hWndInsertAfter
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	SetWindowPos
		cmp	dword ptr [esi+70h], 0
		jz	short loc_42A89B
		push	0		; lParam
		push	1		; wParam
		push	401h		; Msg
		mov	edx, [esi+70h]
		push	edx		; hWnd
		call	SendMessageW

loc_42A89B:				; CODE XREF: .text:0042A887j
		xor	eax, eax

loc_42A89D:				; CODE XREF: .text:004290FDj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 117. _Endotdialog
; Exported entry 489. Endotdialog

; int __cdecl Endotdialog(HWND hw, int result)
		public Endotdialog
Endotdialog:				; CODE XREF: .text:00425043p
					; .text:00425055p ...
		push	ebp		; _Endotdialog
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_42A8BA
		xor	eax, eax
		jmp	loc_42A964
; ---------------------------------------------------------------------------

loc_42A8BA:				; CODE XREF: .text:0042A8B1j
		push	1Eh		; nIndex
		push	esi		; hWnd
		call	GetWindowLongW
		test	eax, eax
		jz	loc_42A95A
		cmp	dword ptr [eax], 0
		jz	loc_42A95A
		mov	ebx, [eax]
		jmp	short loc_42A8DA
; ---------------------------------------------------------------------------

loc_42A8D7:				; CODE XREF: .text:0042A8DDj
		add	ebx, 28h

loc_42A8DA:				; CODE XREF: .text:0042A8D5j
		cmp	dword ptr [ebx], 0
		jnz	short loc_42A8D7
		mov	eax, [ebx+1Ch]
		test	eax, eax
		jz	short loc_42A95A
		cmp	word ptr [eax],	0
		jz	short loc_42A95A
		lea	edx, [ebp-10h]
		push	edx		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		lea	ecx, [ebp-20h]
		push	ecx		; rc
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		call	Getmonitorrect
		add	esp, 0Ch
		mov	edx, [ebp-18h]
		mov	eax, [ebp-8]
		cmp	edx, eax
		jge	short loc_42A915
		sub	eax, edx
		sub	[ebp-10h], eax

loc_42A915:				; CODE XREF: .text:0042A90Ej
		cmp	dword ptr [ebp-10h], 0
		jge	short loc_42A920
		xor	ecx, ecx
		mov	[ebp-10h], ecx

loc_42A920:				; CODE XREF: .text:0042A919j
		mov	edx, [ebp-14h]
		mov	eax, [ebp-4]
		cmp	edx, eax
		jge	short loc_42A92F
		sub	eax, edx
		sub	[ebp-0Ch], eax

loc_42A92F:				; CODE XREF: .text:0042A928j
		cmp	dword ptr [ebp-0Ch], 0
		jge	short loc_42A93A
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_42A93A:				; CODE XREF: .text:0042A933j
		mov	eax, [ebp-0Ch]
		push	eax
		mov	edx, [ebp-10h]
		push	edx		; arglist
		push	offset aII	; "%i,%i"
		mov	ecx, [ebx+1Ch]
		push	ecx		; key
		push	offset aDialogPlacemen ; "Dialog placement"
		push	0		; file
		call	Writetoini
		add	esp, 18h

loc_42A95A:				; CODE XREF: .text:0042A8C4j
					; .text:0042A8CDj ...
		mov	eax, [ebp+0Ch]
		push	eax		; nResult
		push	esi		; hDlg
		call	EndDialog

loc_42A964:				; CODE XREF: .text:0042A8B5j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_42A96C(HWND, UINT, WPARAM, LPARAM)
loc_42A96C:				; DATA XREF: .text:0042AE3Do
					; .text:0042AF2Do ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42A99B
		dec	eax
		jz	loc_42ABCC
		dec	eax
		jz	loc_42AD56
		jmp	loc_42AD73
; ---------------------------------------------------------------------------

loc_42A99B:				; CODE XREF: .text:0042A986j
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		push	3E9h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		mov	eax, g_dialog.item
		test	eax, eax
		jl	short loc_42A9D6
		cmp	eax, 8
		jge	short loc_42A9D6
		test	ebx, ebx
		jz	short loc_42A9D6
		mov	edx, off_52FC84[eax*4]
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42A9D6:				; CODE XREF: .text:0042A9BDj
					; .text:0042A9C2j ...
		push	3EAh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		mov	eax, g_dialog.item
		test	eax, eax
		jl	short loc_42AA03
		cmp	eax, 8
		jge	short loc_42AA03
		test	ebx, ebx
		jz	short loc_42AA03
		mov	edx, off_52FC64[eax*4]
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42AA03:				; CODE XREF: .text:0042A9EAj
					; .text:0042A9EFj ...
		push	3EBh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		mov	eax, g_dialog.item
		test	eax, eax
		jl	short loc_42AA30
		cmp	eax, 4
		jge	short loc_42AA30
		test	ebx, ebx
		jz	short loc_42AA30
		mov	edx, off_52FC54[eax*4]
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42AA30:				; CODE XREF: .text:0042AA17j
					; .text:0042AA1Cj ...
		push	3ECh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		mov	eax, g_dialog.item
		test	eax, eax
		jl	short loc_42AA5D
		cmp	eax, 4
		jge	short loc_42AA5D
		test	ebx, ebx
		jz	short loc_42AA5D
		mov	edx, regname[eax*4]
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42AA5D:				; CODE XREF: .text:0042AA44j
					; .text:0042AA49j ...
		push	401h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42AA89
		mov	eax, g_dialog.u
		push	eax		; a4
		mov	edx, a3
		push	edx		; a3
		push	offset groupname ; s2
		push	ebx		; hWnd
		call	Fillcombowithgroup
		add	esp, 10h

loc_42AA89:				; CODE XREF: .text:0042AA6Cj
		mov	ecx, g_dialog.mode
		and	ecx, 0F00h
		cmp	ecx, 200h
		jnz	short loc_42AABD
		push	3F6h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_42AB10
		push	3F7h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		jmp	short loc_42AB10
; ---------------------------------------------------------------------------

loc_42AABD:				; CODE XREF: .text:0042AA9Bj
		mov	eax, g_dialog.mode
		and	eax, 0F00h
		cmp	eax, 300h
		jnz	short loc_42AAEE
		push	3FAh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_42AB10
		push	3FBh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		jmp	short loc_42AB10
; ---------------------------------------------------------------------------

loc_42AAEE:				; CODE XREF: .text:0042AACCj
		mov	eax, g_dialog.mode
		and	eax, 0F00h
		cmp	eax, 700h
		jnz	short loc_42AB0E
		push	3FCh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		jmp	short loc_42AB10
; ---------------------------------------------------------------------------

loc_42AB0E:				; CODE XREF: .text:0042AAFDj
		xor	ebx, ebx

loc_42AB10:				; CODE XREF: .text:0042AAACj
					; .text:0042AABBj ...
		test	ebx, ebx
		jnz	short loc_42AB21
		push	3F2h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax

loc_42AB21:				; CODE XREF: .text:0042AB12j
		test	ebx, ebx
		jnz	short loc_42AB32
		push	3F3h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax

loc_42AB32:				; CODE XREF: .text:0042AB23j
		test	ebx, ebx
		jnz	short loc_42AB43
		push	3F5h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax

loc_42AB43:				; CODE XREF: .text:0042AB34j
		push	ebx		; hWnd
		call	GetDlgCtrlID
		mov	g_dialog.focus,	eax
		push	ebx		; hWnd
		call	SetFocus
		cmp	g_dialog.letter, 0
		jz	short loc_42ABA1
		mov	ax, word ptr g_dialog.letter
		lea	edx, [ebp-200h]
		mov	[ebp-200h], ax
		mov	word ptr [ebp-1FEh], 0
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW
		push	1		; lParam
		push	1		; wParam
		push	0B1h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		mov	ecx, g_dialog.focus
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	loc_425CD0
		add	esp, 8
		jmp	short loc_42ABBB
; ---------------------------------------------------------------------------

loc_42ABA1:				; CODE XREF: .text:0042AB5Bj
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_425CD0
		add	esp, 8
		push	0FFFFFFFFh	; lParam
		push	0		; wParam
		push	0B1h		; Msg
		push	ebx		; hWnd
		call	SendMessageW

loc_42ABBB:				; CODE XREF: .text:0042AB9Fj
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42AD7C
; ---------------------------------------------------------------------------

loc_42ABCC:				; CODE XREF: .text:0042A989j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	loc_42AD77
		mov	eax, [ebp+14h]
		push	eax		; lp
		push	ebx		; wp
		push	edi		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, [edi]
		cmp	eax, 0Ch
		jz	short loc_42ABFB
		cmp	eax, 0Eh
		jnz	short loc_42AC73

loc_42ABFB:				; CODE XREF: .text:0042ABF4j
		mov	edx, ebx
		shr	edx, 10h
		cmp	dx, 100h
		jnz	short loc_42AC2E
		cmp	g_dialog.initdone, 0
		jz	short loc_42AC1B
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_425CD0
		add	esp, 8

loc_42AC1B:				; CODE XREF: .text:0042AC0Ej
		and	bx, 0FFFFh
		movzx	ecx, bx
		mov	g_dialog.focus,	ecx
		jmp	loc_42AD77
; ---------------------------------------------------------------------------

loc_42AC2E:				; CODE XREF: .text:0042AC05j
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 300h
		jnz	loc_42AD77
		and	bx, 0FFFFh
		movzx	edx, bx
		cmp	edx, g_dialog.focus
		jnz	loc_42AD77
		cmp	g_dialog.initdone, 0
		jz	loc_42AD77
		mov	ecx, g_dialog.focus
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	loc_425CD0
		add	esp, 8
		jmp	loc_42AD77
; ---------------------------------------------------------------------------

loc_42AC73:				; CODE XREF: .text:0042ABF9j
		mov	eax, [edi]
		cmp	eax, 13h
		jz	short loc_42AC7F
		cmp	eax, 14h
		jnz	short loc_42ACF6

loc_42AC7F:				; CODE XREF: .text:0042AC78j
		mov	edx, ebx
		shr	edx, 10h
		cmp	dx, 3
		jnz	short loc_42ACB1
		cmp	g_dialog.initdone, 0
		jz	short loc_42AC9E
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_425CD0
		add	esp, 8

loc_42AC9E:				; CODE XREF: .text:0042AC91j
		and	bx, 0FFFFh
		movzx	ecx, bx
		mov	g_dialog.focus,	ecx
		jmp	loc_42AD77
; ---------------------------------------------------------------------------

loc_42ACB1:				; CODE XREF: .text:0042AC88j
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 1
		jnz	loc_42AD77
		and	bx, 0FFFFh
		movzx	edx, bx
		cmp	edx, g_dialog.focus
		jnz	loc_42AD77
		cmp	g_dialog.initdone, 0
		jz	loc_42AD77
		mov	ecx, g_dialog.focus
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	loc_425CD0
		add	esp, 8
		jmp	loc_42AD77
; ---------------------------------------------------------------------------

loc_42ACF6:				; CODE XREF: .text:0042AC7Dj
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 402h
		jnz	short loc_42AD30
		push	401h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42AD77
		mov	eax, g_dialog.u
		push	eax		; a4
		mov	edx, a3
		push	edx		; a3
		push	offset groupname ; s2
		push	ebx		; hWnd
		call	Fillcombowithgroup
		add	esp, 10h
		jmp	short loc_42AD77
; ---------------------------------------------------------------------------

loc_42AD30:				; CODE XREF: .text:0042AD00j
		cmp	ax, 1
		jnz	short loc_42AD43
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42AD77
; ---------------------------------------------------------------------------

loc_42AD43:				; CODE XREF: .text:0042AD34j
		cmp	ax, 2
		jnz	short loc_42AD77
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42AD77
; ---------------------------------------------------------------------------

loc_42AD56:				; CODE XREF: .text:0042A990j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42AD6F
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_42AD6F:				; CODE XREF: .text:0042AD62j
		xor	eax, eax
		jmp	short loc_42AD7C
; ---------------------------------------------------------------------------

loc_42AD73:				; CODE XREF: .text:0042A996j
		xor	eax, eax
		jmp	short loc_42AD7C
; ---------------------------------------------------------------------------

loc_42AD77:				; CODE XREF: .text:0042ABDAj
					; .text:0042AC29j ...
		mov	eax, 1

loc_42AD7C:				; CODE XREF: .text:0042ABC7j
					; .text:0042AD71j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 118. _Getregister
; Exported entry 598. Getregister

; int __cdecl Getregister(HWND hparent,	int reg, ulong *data, int letter, int x, int y,	int fi,	int mode)
		public Getregister
Getregister:				; CODE XREF: .text:00474EEEp
					; .text:00492F50p ...
		push	ebp		; _Getregister
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	esi, offset g_dialog
		mov	ebx, [ebp+0Ch]
		mov	edi, [ebp+10h]
		test	ebx, ebx
		jl	short loc_42ADAC
		cmp	ebx, 8
		jge	short loc_42ADAC
		test	edi, edi
		jnz	short loc_42ADB4

loc_42ADAC:				; CODE XREF: .text:0042ADA1j
					; .text:0042ADA6j
		or	eax, 0FFFFFFFFh
		jmp	loc_42AE6F
; ---------------------------------------------------------------------------

loc_42ADB4:				; CODE XREF: .text:0042ADAAj
		mov	edx, off_52FC84[ebx*4]
		push	edx
		push	offset aModifyS_0 ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-200h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		mov	[esi+4], eax
		mov	[esi+0Ch], ebx
		mov	edx, [edi]
		mov	[esi+10h], edx
		mov	ecx, [ebp+14h]
		push	ecx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_42ADFE
		mov	eax, [ebp+14h]
		mov	[esi+2Ch], eax
		jmp	short loc_42AE03
; ---------------------------------------------------------------------------

loc_42ADFE:				; CODE XREF: .text:0042ADF4j
		xor	edx, edx
		mov	[esi+2Ch], edx

loc_42AE03:				; CODE XREF: .text:0042ADFCj
		mov	ecx, [ebp+18h]
		cmp	ebx, 4
		mov	[esi+30h], ecx
		mov	eax, [ebp+1Ch]
		mov	[esi+34h], eax
		mov	edx, [ebp+20h]
		mov	[esi+38h], edx
		mov	ecx, [ebp+24h]
		mov	[esi+3Ch], ecx
		jge	short loc_42AE28
		mov	dword ptr [esi], offset	stru_520568
		jmp	short loc_42AE3B
; ---------------------------------------------------------------------------

loc_42AE28:				; CODE XREF: .text:0042AE1Ej
		cmp	ebx, 4
		jz	short loc_42AE35
		mov	dword ptr [esi], offset	stru_520950
		jmp	short loc_42AE3B
; ---------------------------------------------------------------------------

loc_42AE35:				; CODE XREF: .text:0042AE2Bj
		mov	dword ptr [esi], offset	stru_520B80

loc_42AE3B:				; CODE XREF: .text:0042AE26j
					; .text:0042AE33j
		push	0		; dwInitParam
		push	offset loc_42A96C ; lpDialogFunc
		mov	eax, [ebp+8]
		mov	edx, g_hInstance
		push	eax		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		xor	ecx, ecx
		test	eax, eax
		mov	[esi], ecx
		jnz	short loc_42AE6F
		mov	ecx, [edi]
		mov	edx, [esi+10h]
		cmp	ecx, edx
		jz	short loc_42AE6F
		mov	[edi], edx
		mov	eax, 1

loc_42AE6F:				; CODE XREF: .text:0042ADAFj
					; .text:0042AE5Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 119. _Getinteger
; Exported entry 575. Getinteger

; int __cdecl Getinteger(HWND hparent, wchar_t *_title, ulong *data, int	letter,	int x, int y, int fi, int mode)
		public Getinteger
Getinteger:				; CODE XREF: .text:00474F75p
					; .text:0047554Ap ...
		push	ebp		; _Getinteger
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, offset g_dialog
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+14h]
		test	ebx, ebx
		jnz	short loc_42AE95
		or	eax, 0FFFFFFFFh
		jmp	loc_42AF5D
; ---------------------------------------------------------------------------

loc_42AE95:				; CODE XREF: .text:0042AE8Bj
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	[esi+4], edx
		mov	[esi+0Ch], ecx
		mov	eax, [ebx]
		mov	[esi+10h], eax
		push	edi		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_42AEB5
		cmp	edi, 2Dh
		jnz	short loc_42AEBA

loc_42AEB5:				; CODE XREF: .text:0042AEAEj
		mov	[esi+2Ch], edi
		jmp	short loc_42AEBF
; ---------------------------------------------------------------------------

loc_42AEBA:				; CODE XREF: .text:0042AEB3j
		xor	edx, edx
		mov	[esi+2Ch], edx

loc_42AEBF:				; CODE XREF: .text:0042AEB8j
		mov	ecx, [ebp+18h]
		mov	[esi+30h], ecx
		mov	eax, [ebp+1Ch]
		mov	[esi+34h], eax
		mov	edx, [ebp+20h]
		mov	[esi+38h], edx
		mov	ecx, [ebp+24h]
		mov	[esi+3Ch], ecx
		mov	eax, [ebp+24h]
		and	eax, 3Fh
		cmp	eax, 21h
		jg	short loc_42AEF1
		jz	short loc_42AF05
		dec	eax
		jz	short loc_42AEFD
		dec	eax
		jz	short loc_42AF0D
		sub	eax, 1Eh
		jz	short loc_42AF1D
		jmp	short loc_42AF25
; ---------------------------------------------------------------------------

loc_42AEF1:				; CODE XREF: .text:0042AEE0j
		sub	eax, 22h
		jz	short loc_42AF15
		sub	eax, 2
		jz	short loc_42AF1D
		jmp	short loc_42AF25
; ---------------------------------------------------------------------------

loc_42AEFD:				; CODE XREF: .text:0042AEE5j
		mov	dword ptr [esi], offset	stru_521288
		jmp	short loc_42AF2B
; ---------------------------------------------------------------------------

loc_42AF05:				; CODE XREF: .text:0042AEE2j
		mov	dword ptr [esi], offset	stru_521440
		jmp	short loc_42AF2B
; ---------------------------------------------------------------------------

loc_42AF0D:				; CODE XREF: .text:0042AEE8j
		mov	dword ptr [esi], offset	stru_521058
		jmp	short loc_42AF2B
; ---------------------------------------------------------------------------

loc_42AF15:				; CODE XREF: .text:0042AEF4j
		mov	dword ptr [esi], offset	stru_5211C0
		jmp	short loc_42AF2B
; ---------------------------------------------------------------------------

loc_42AF1D:				; CODE XREF: .text:0042AEEDj
					; .text:0042AEF9j
		mov	dword ptr [esi], offset	stru_520F90
		jmp	short loc_42AF2B
; ---------------------------------------------------------------------------

loc_42AF25:				; CODE XREF: .text:0042AEEFj
					; .text:0042AEFBj
		mov	dword ptr [esi], offset	stru_520C70

loc_42AF2B:				; CODE XREF: .text:0042AF03j
					; .text:0042AF0Bj ...
		push	0		; dwInitParam
		push	offset loc_42A96C ; lpDialogFunc
		mov	edx, [ebp+8]
		mov	ecx, g_hInstance
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		test	eax, eax
		mov	[esi], edx
		jnz	short loc_42AF5D
		mov	edx, [esi+10h]
		cmp	edx, [ebx]
		jz	short loc_42AF5D
		mov	[ebx], edx
		mov	eax, 1

loc_42AF5D:				; CODE XREF: .text:0042AE90j
					; .text:0042AF4Dj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 120. _Getdword
; Exported entry 563. Getdword

; int __cdecl Getdword(HWND hparent, wchar_t *_title, ulong *data, int letter, int x, int y, int	fi, int	mode)
		public Getdword
Getdword:				; CODE XREF: .text:00475513p
					; .text:004B22F3p ...
		push	ebp		; _Getdword
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset g_dialog
		cmp	dword ptr [ebp+10h], 0
		mov	esi, [ebp+24h]
		mov	ebx, [ebp+14h]
		jnz	short loc_42AF83
		or	eax, 0FFFFFFFFh
		jmp	loc_42B02B
; ---------------------------------------------------------------------------

loc_42AF83:				; CODE XREF: .text:0042AF79j
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	[edi+4], edx
		mov	[edi+0Ch], ecx
		mov	eax, [ebp+10h]
		mov	ecx, esi
		and	ecx, 0F00h
		cmp	ecx, 100h
		mov	edx, [eax]
		mov	[edi+10h], edx
		jnz	short loc_42AFB6
		push	ebx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_42AFB6
		mov	[edi+2Ch], ebx
		jmp	short loc_42AFD0
; ---------------------------------------------------------------------------

loc_42AFB6:				; CODE XREF: .text:0042AFA4j
					; .text:0042AFAFj
		push	ebx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_42AFC6
		cmp	ebx, 2Dh
		jnz	short loc_42AFCB

loc_42AFC6:				; CODE XREF: .text:0042AFBFj
		mov	[edi+2Ch], ebx
		jmp	short loc_42AFD0
; ---------------------------------------------------------------------------

loc_42AFCB:				; CODE XREF: .text:0042AFC4j
		xor	eax, eax
		mov	[edi+2Ch], eax

loc_42AFD0:				; CODE XREF: .text:0042AFB4j
					; .text:0042AFC9j
		mov	edx, [ebp+18h]
		and	esi, 0FFFFFFE0h
		mov	[edi+30h], edx
		or	esi, 4
		mov	ecx, [ebp+1Ch]
		mov	[edi+34h], ecx
		mov	eax, [ebp+20h]
		mov	[edi+38h], eax
		mov	[edi+3Ch], esi
		mov	dword ptr [edi], offset	stru_520DD8
		push	0		; dwInitParam
		push	offset loc_42A96C ; lpDialogFunc
		mov	ecx, g_hInstance
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		test	eax, eax
		mov	[edi], edx
		jnz	short loc_42B02B
		mov	ecx, [ebp+10h]
		mov	ecx, [ecx]
		mov	edx, [edi+10h]
		cmp	ecx, edx
		jz	short loc_42B02B
		mov	eax, [ebp+10h]
		mov	[eax], edx
		mov	eax, 1

loc_42B02B:				; CODE XREF: .text:0042AF7Ej
					; .text:0042B013j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 121. _Getlasterrorcode
; Exported entry 578. Getlasterrorcode

; int __cdecl Getlasterrorcode(HWND hparent, wchar_t *_title, ulong *data, int letter, int x, int y, int	fi)
		public Getlasterrorcode
Getlasterrorcode:			; CODE XREF: .text:0049310Dp
		push	ebp		; _Getlasterrorcode
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, offset g_dialog
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+14h]
		test	ebx, ebx
		jnz	short loc_42B04A
		or	eax, 0FFFFFFFFh
		jmp	short loc_42B0BE
; ---------------------------------------------------------------------------

loc_42B04A:				; CODE XREF: .text:0042B043j
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	[esi+4], edx
		mov	[esi+0Ch], ecx
		mov	eax, [ebx]
		mov	[esi+10h], eax
		push	edi		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_42B06A
		mov	[esi+2Ch], edi
		jmp	short loc_42B06F
; ---------------------------------------------------------------------------

loc_42B06A:				; CODE XREF: .text:0042B063j
		xor	edx, edx
		mov	[esi+2Ch], edx

loc_42B06F:				; CODE XREF: .text:0042B068j
		mov	ecx, [ebp+18h]
		mov	[esi+30h], ecx
		xor	ecx, ecx
		mov	eax, [ebp+1Ch]
		mov	[esi+34h], eax
		mov	edx, [ebp+20h]
		mov	[esi+38h], edx
		mov	[esi+3Ch], ecx
		mov	dword ptr [esi], offset	stru_521508
		push	0		; dwInitParam
		push	offset loc_42A96C ; lpDialogFunc
		mov	edx, g_hInstance
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		xor	ecx, ecx
		test	eax, eax
		mov	[esi], ecx
		jnz	short loc_42B0BE
		mov	edx, [esi+10h]
		cmp	edx, [ebx]
		jz	short loc_42B0BE
		mov	[ebx], edx
		mov	eax, 1

loc_42B0BE:				; CODE XREF: .text:0042B048j
					; .text:0042B0AEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
