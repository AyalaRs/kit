.code

; Exported entry 140. _Getindexbypredefinedtype
; Exported entry 574. Getindexbypredefinedtype

; unsigned int __cdecl Getindexbypredefinedtype(wchar_t	*type)
		public Getindexbypredefinedtype
Getindexbypredefinedtype:		; CODE XREF: .text:004D53F0p
					; .text:004D53FDp ...
		push	ebp		; _Getindexbypredefinedtype
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jnz	short loc_430FED
		xor	eax, eax
		jmp	short loc_431013
; ---------------------------------------------------------------------------

loc_430FED:				; CODE XREF: .text:00430FE7j
		xor	ebx, ebx
		mov	esi, offset off_524A44

loc_430FF4:				; CODE XREF: .text:0043100Fj
		mov	eax, [esi]
		push	eax		; s2
		push	edi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_431008
		mov	eax, ebx
		jmp	short loc_431013
; ---------------------------------------------------------------------------

loc_431008:				; CODE XREF: .text:00431002j
		inc	ebx
		add	esi, 8
		cmp	ebx, 15h
		jb	short loc_430FF4
		xor	eax, eax

loc_431013:				; CODE XREF: .text:00430FEBj
					; .text:00431006j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; INT_PTR __stdcall loc_431018(HWND, UINT, WPARAM, LPARAM)
loc_431018:				; DATA XREF: .text:00431BCCo
					; .text:004320EFo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF8F8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_431050
		dec	eax
		jz	loc_431443
		dec	eax
		jz	loc_431984
		sub	eax, 26h
		jz	loc_431403
		jmp	loc_4319A1
; ---------------------------------------------------------------------------

loc_431050:				; CODE XREF: .text:00431032j
		push	offset g_dialog	; pdlg
		push	ebx		; hw
		call	Preparedialog
		add	esp, 8
		push	offset condition ; lpString
		push	834h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		test	byte ptr g_dialog.mode,	40h
		jz	loc_4313E1
		push	offset expression ; lpString
		push	835h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	836h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		xor	esi, esi
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		mov	edi, offset off_524A24

loc_4310A7:				; CODE XREF: .text:004310D9j
		mov	eax, [edi]
		push	eax		; s2
		push	offset exprtype	; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4310BE
		mov	[ebp-4], esi

loc_4310BE:				; CODE XREF: .text:004310B9j
		mov	edx, [edi+4]
		push	edx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		inc	esi
		add	edi, 8
		cmp	esi, 4
		jl	short loc_4310A7
		cmp	dword ptr [ebp-4], 0
		jl	short loc_4310F5
		push	0		; lParam
		mov	eax, [ebp-4]
		push	eax		; wParam
		push	14Eh		; Msg
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	SendMessageW

loc_4310F5:				; CODE XREF: .text:004310DFj
		cmp	exprtype, 2Ah
		jnz	short loc_431106
		mov	ecx, offset word_5DC14E
		jmp	short loc_431108
; ---------------------------------------------------------------------------

loc_431106:				; CODE XREF: .text:004310FDj
		xor	ecx, ecx

loc_431108:				; CODE XREF: .text:00431104j
		push	ecx		; s2
		push	offset aPointerTo ; "Pointer to	"
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	Fillcombowithstruct
		add	esp, 0Ch
		push	837h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		xor	esi, esi
		mov	edi, offset off_524A48

loc_43112F:				; CODE XREF: .text:00431149j
		mov	eax, [edi]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	SendMessageW
		inc	esi
		add	edi, 8
		cmp	esi, 15h
		jl	short loc_43112F
		push	0		; lParam
		movzx	ecx, word_5DC364
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SendMessageW
		mov	edx, dword_5DC360
		and	edx, 3000000h
		sub	edx, 1000000h
		jz	short loc_431181
		sub	edx, 2000000h
		jz	short loc_431190
		jmp	short loc_43119F
; ---------------------------------------------------------------------------

loc_431181:				; CODE XREF: .text:00431175j
		push	1		; uCheck
		push	839h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_4311AC
; ---------------------------------------------------------------------------

loc_431190:				; CODE XREF: .text:0043117Dj
		push	1		; uCheck
		push	83Ah		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_4311AC
; ---------------------------------------------------------------------------

loc_43119F:				; CODE XREF: .text:0043117Fj
		push	1		; uCheck
		push	838h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton

loc_4311AC:				; CODE XREF: .text:0043118Ej
					; .text:0043119Dj
		mov	ecx, dword_5DC360
		and	ecx, 0C000000h
		sub	ecx, 4000000h
		jz	short loc_4311CA
		sub	ecx, 8000000h
		jz	short loc_4311D9
		jmp	short loc_4311E8
; ---------------------------------------------------------------------------

loc_4311CA:				; CODE XREF: .text:004311BEj
		push	1		; uCheck
		push	83Ch		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_4311F5
; ---------------------------------------------------------------------------

loc_4311D9:				; CODE XREF: .text:004311C6j
		push	1		; uCheck
		push	83Dh		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_4311F5
; ---------------------------------------------------------------------------

loc_4311E8:				; CODE XREF: .text:004311C8j
		push	1		; uCheck
		push	83Bh		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton

loc_4311F5:				; CODE XREF: .text:004311D7j
					; .text:004311E6j
		mov	eax, dword_5DC360
		and	eax, 30000000h
		sub	eax, 10000000h
		jz	short loc_43120F
		sub	eax, 20000000h
		jz	short loc_43121E
		jmp	short loc_43122D
; ---------------------------------------------------------------------------

loc_43120F:				; CODE XREF: .text:00431204j
		push	1		; uCheck
		push	83Fh		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_43123A
; ---------------------------------------------------------------------------

loc_43121E:				; CODE XREF: .text:0043120Bj
		push	1		; uCheck
		push	840h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_43123A
; ---------------------------------------------------------------------------

loc_43122D:				; CODE XREF: .text:0043120Dj
		push	1		; uCheck
		push	83Eh		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton

loc_43123A:				; CODE XREF: .text:0043121Cj
					; .text:0043122Bj
		mov	edx, dword_5DC360
		and	edx, 0C0000000h
		sub	edx, 0C0000000h
		jz	short loc_431265
		sub	edx, 80000000h
		jnz	short loc_431274
		push	1		; uCheck
		push	842h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_431281
; ---------------------------------------------------------------------------

loc_431265:				; CODE XREF: .text:0043124Cj
		push	1		; uCheck
		push	843h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_431281
; ---------------------------------------------------------------------------

loc_431274:				; CODE XREF: .text:00431254j
		push	1		; uCheck
		push	841h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton

loc_431281:				; CODE XREF: .text:00431263j
					; .text:00431272j
		cmp	dword_5DC374, 0
		jz	short loc_4312FF
		test	byte ptr dword_5DC360+2, 8
		mov	ecx, 1
		jnz	short loc_431299
		dec	ecx

loc_431299:				; CODE XREF: .text:00431296j
		push	ecx		; uCheck
		push	846h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		mov	eax, dword_5DC368
		lea	edx, [ebp-408h]
		push	eax
		push	offset aI_	; "%i."
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-408h]
		push	ecx		; lpString
		push	844h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	eax, dword_5DC36C
		lea	edx, [ebp-408h]
		push	eax
		push	offset aI_	; "%i."
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-408h]
		push	ecx		; lpString
		push	845h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	short loc_431338
; ---------------------------------------------------------------------------

loc_4312FF:				; CODE XREF: .text:00431288j
		push	0		; bEnable
		push	846h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	844h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	845h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_431338:				; CODE XREF: .text:004312FDj
		test	byte ptr dword_5DC360+2, 2
		mov	eax, 1
		jnz	short loc_431347
		dec	eax

loc_431347:				; CODE XREF: .text:00431344j
		push	eax		; uCheck
		push	847h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		cmp	dword_5DC34C, 0
		jnz	short loc_43139F
		cmp	word_5DC364, 0
		jnz	short loc_43139F
		push	0		; bEnable
		push	83Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	83Fh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	840h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_43139F:				; CODE XREF: .text:0043135Aj
					; .text:00431364j
		cmp	dword_5DC350, 0
		jnz	short loc_4313E1
		push	0		; bEnable
		push	841h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	842h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	843h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4313E1:				; CODE XREF: .text:00431075j
					; .text:004313A6j
		push	834h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_4319AA
; ---------------------------------------------------------------------------

loc_431403:				; CODE XREF: .text:00431045j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 848h
		jz	short loc_43141A
		xor	eax, eax
		jmp	loc_4319AA
; ---------------------------------------------------------------------------

loc_43141A:				; CODE XREF: .text:00431411j
		mov	edx, color+30h
		push	edx		; COLORREF
		mov	ebx, esi
		push	ebx		; HDC
		call	SetTextColor
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_4319AA
; ---------------------------------------------------------------------------

loc_431443:				; CODE XREF: .text:00431035j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_4319A5
		mov	edx, [ebp+14h]
		push	edx		; lp
		push	esi		; wp
		push	eax		; pctr
		push	ebx		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, esi
		and	ax, 0FFFFh
		cmp	ax, 834h
		jz	short loc_431476
		cmp	ax, 835h
		jnz	short loc_431491

loc_431476:				; CODE XREF: .text:0043146Ej
		mov	edx, esi
		shr	edx, 10h
		cmp	dx, 5
		jnz	short loc_431491
		push	(offset	aOd_empty+0Fh) ; lpString
		push	848h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW

loc_431491:				; CODE XREF: .text:00431474j
					; .text:0043147Fj
		cmp	g_dialog.initdone, 0
		jz	loc_4319A5
		test	byte ptr g_dialog.mode,	40h
		jz	loc_4315A9
		and	dword_5DC360, 0FFFFFFh
		push	839h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4314D0
		or	dword_5DC360, 1000000h
		jmp	short loc_4314F2
; ---------------------------------------------------------------------------

loc_4314D0:				; CODE XREF: .text:004314C2j
		push	83Ah		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4314EB
		or	dword_5DC360, 3000000h
		jmp	short loc_4314F2
; ---------------------------------------------------------------------------

loc_4314EB:				; CODE XREF: .text:004314DDj
		or	dword_5DC360, 0

loc_4314F2:				; CODE XREF: .text:004314CEj
					; .text:004314E9j
		push	83Ch		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_43150D
		or	dword_5DC360, 4000000h
		jmp	short loc_43152F
; ---------------------------------------------------------------------------

loc_43150D:				; CODE XREF: .text:004314FFj
		push	83Dh		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_431528
		or	dword_5DC360, 0C000000h
		jmp	short loc_43152F
; ---------------------------------------------------------------------------

loc_431528:				; CODE XREF: .text:0043151Aj
		or	dword_5DC360, 0

loc_43152F:				; CODE XREF: .text:0043150Bj
					; .text:00431526j
		push	83Fh		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_43154A
		or	dword_5DC360, 10000000h
		jmp	short loc_43156C
; ---------------------------------------------------------------------------

loc_43154A:				; CODE XREF: .text:0043153Cj
		push	840h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_431565
		or	dword_5DC360, 30000000h
		jmp	short loc_43156C
; ---------------------------------------------------------------------------

loc_431565:				; CODE XREF: .text:00431557j
		or	dword_5DC360, 0

loc_43156C:				; CODE XREF: .text:00431548j
					; .text:00431563j
		push	842h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_431587
		or	dword_5DC360, 40000000h
		jmp	short loc_4315A9
; ---------------------------------------------------------------------------

loc_431587:				; CODE XREF: .text:00431579j
		push	843h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4315A2
		or	dword_5DC360, 0C0000000h
		jmp	short loc_4315A9
; ---------------------------------------------------------------------------

loc_4315A2:				; CODE XREF: .text:00431594j
		or	dword_5DC360, 0

loc_4315A9:				; CODE XREF: .text:004314A5j
					; .text:00431585j ...
		mov	ecx, esi
		and	cx, 0FFFFh
		dec	cx
		jz	loc_4316DE
		dec	cx
		jz	loc_431977
		sub	cx, 835h
		jz	short loc_4315D9
		dec	ecx
		sub	cx, 0Ch
		jb	loc_4316A4
		jmp	loc_4319A5
; ---------------------------------------------------------------------------

loc_4315D9:				; CODE XREF: .text:004315C7j
		shr	esi, 10h
		cmp	si, 9
		jnz	loc_4319A5
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	SendMessageW
		mov	word_5DC364, ax
		cmp	dword_5DC34C, 0
		jnz	short loc_43166B
		cmp	word_5DC364, 0
		jnz	short loc_43166B
		push	0		; bEnable
		push	83Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	83Fh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	840h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		and	dword_5DC360, 0CFFFFFFFh
		push	83Eh		; nIDCheckButton
		push	840h		; nIDLastButton
		push	83Eh		; nIDFirstButton
		push	ebx		; hDlg
		call	CheckRadioButton
		jmp	short loc_4316A4
; ---------------------------------------------------------------------------

loc_43166B:				; CODE XREF: .text:00431605j
					; .text:0043160Fj
		push	1		; bEnable
		push	83Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	1		; bEnable
		push	83Fh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	1		; bEnable
		push	840h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_4316A4:				; CODE XREF: .text:004315CEj
					; .text:00431669j
		test	byte ptr dword_5DC360+3, 0FFh
		jnz	short loc_4316C9
		push	offset aBreakpointSpec ; "Breakpoint specifies no action and will"...
		call	_T
		pop	ecx
		push	eax		; lpString
		push	848h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4319A5
; ---------------------------------------------------------------------------

loc_4316C9:				; CODE XREF: .text:004316ABj
		push	(offset	aOd_empty+0Fh) ; lpString
		push	848h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4319A5
; ---------------------------------------------------------------------------

loc_4316DE:				; CODE XREF: .text:004315B3j
		push	834h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		push	offset condition ; lpString
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	GetWindowTextW
		cmp	condition, 0
		jz	loc_43179A
		push	1		; mode
		lea	ecx, [ebp-608h]
		push	ecx		; err
		push	0		; explen
		push	100h		; nexpr
		lea	eax, [ebp-708h]
		push	eax		; cexpr
		push	offset condition ; expression
		call	Cexpression
		add	esp, 18h
		mov	esi, eax
		cmp	word ptr [ebp-608h], 0
		jz	short loc_43179A
		lea	eax, [ebp-608h]
		push	eax
		push	offset aConditionS ; "Condition: %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-408h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-408h]
		push	ecx		; lpString
		push	848h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SetFocus
		movzx	eax, si
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		push	edx		; lParam
		push	0		; wParam
		push	142h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_4319A5
; ---------------------------------------------------------------------------

loc_43179A:				; CODE XREF: .text:00431707j
					; .text:0043173Bj
		push	offset condition ; s
		mov	eax, [ebp-8]
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		test	byte ptr g_dialog.mode,	40h
		jz	loc_431952
		push	835h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		push	offset expression ; lpString
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	GetWindowTextW
		cmp	expression, 0
		jz	loc_431874
		push	9		; mode
		lea	ecx, [ebp-608h]
		push	ecx		; err
		push	0		; explen
		push	100h		; nexpr
		lea	eax, [ebp-708h]
		push	eax		; cexpr
		push	offset expression ; expression
		call	Cexpression
		add	esp, 18h
		mov	esi, eax
		cmp	word ptr [ebp-608h], 0
		jz	short loc_431874
		lea	eax, [ebp-608h]
		push	eax
		push	offset aExpressionS ; "Expression: %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-408h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-408h]
		push	ecx		; lpString
		push	848h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SetFocus
		movzx	eax, si
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		push	edx		; lParam
		push	0		; wParam
		push	142h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_4319A5
; ---------------------------------------------------------------------------

loc_431874:				; CODE XREF: .text:004317E1j
					; .text:00431815j
		push	offset expression ; s
		mov	eax, [ebp-8]
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	836h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		mov	esi, eax
		cmp	esi, 4
		jge	short loc_4318BC
		mov	eax, off_524A24[esi*8]
		push	eax		; src
		push	100h		; n
		push	offset exprtype	; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_431905
; ---------------------------------------------------------------------------

loc_4318BC:				; CODE XREF: .text:0043189Ej
		lea	edx, [ebp-408h]
		push	edx		; lParam
		push	esi		; wParam
		push	148h		; Msg
		push	836h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		mov	exprtype, 2Ah
		push	offset aPointerTo ; "Pointer to	"
		call	_wcslen
		pop	ecx
		add	eax, eax
		lea	ecx, [ebp-408h]
		add	eax, ecx
		push	eax		; src
		push	0FFh		; n
		push	offset word_5DC14E ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_431905:				; CODE XREF: .text:004318BAj
		push	846h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_431920
		or	dword_5DC360, 80000h
		jmp	short loc_43192A
; ---------------------------------------------------------------------------

loc_431920:				; CODE XREF: .text:00431912j
		and	dword_5DC360, 0FFF7FFFFh

loc_43192A:				; CODE XREF: .text:0043191Ej
		push	0		; bSigned
		push	0		; lpTranslated
		push	844h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemInt
		mov	dword_5DC368, eax
		push	0		; bSigned
		push	0		; lpTranslated
		push	845h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemInt
		mov	dword_5DC36C, eax

loc_431952:				; CODE XREF: .text:004317B2j
		push	847h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		push	1		; result
		setz	al
		and	eax, 1
		push	ebx		; hw
		mov	enable,	eax
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4319A5
; ---------------------------------------------------------------------------

loc_431977:				; CODE XREF: .text:004315BCj
		push	0		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4319A5
; ---------------------------------------------------------------------------

loc_431984:				; CODE XREF: .text:0043103Cj
		and	esi, 0FFF0h
		cmp	esi, 0F060h
		jnz	short loc_43199D
		push	0		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8

loc_43199D:				; CODE XREF: .text:00431990j
		xor	eax, eax
		jmp	short loc_4319AA
; ---------------------------------------------------------------------------

loc_4319A1:				; CODE XREF: .text:0043104Bj
		xor	eax, eax
		jmp	short loc_4319AA
; ---------------------------------------------------------------------------

loc_4319A5:				; CODE XREF: .text:0043144Fj
					; .text:00431498j ...
		mov	eax, 1

loc_4319AA:				; CODE XREF: .text:004313FEj
					; .text:00431415j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 141. _Condbreakpoint
; Exported entry 427. Condbreakpoint

; int __cdecl Condbreakpoint(HWND hparent, ulong *_addr,	int naddr, wchar_t *_title, int x, int y, int fi)
		public Condbreakpoint
Condbreakpoint:				; CODE XREF: .text:004970ACp
					; .text:004A1C6Cp ...
		push	ebp		; _Condbreakpoint
		mov	ebp, esp
		add	esp, 0FFFFFDF0h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		test	esi, esi
		jz	short loc_4319CE
		test	edi, edi
		jg	short loc_4319D6

loc_4319CE:				; CODE XREF: .text:004319C8j
		or	eax, 0FFFFFFFFh
		jmp	loc_431CEB
; ---------------------------------------------------------------------------

loc_4319D6:				; CODE XREF: .text:004319CCj
		mov	edx, [esi]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4319EB
		or	eax, 0FFFFFFFFh
		jmp	loc_431CEB
; ---------------------------------------------------------------------------

loc_4319EB:				; CODE XREF: .text:004319E1j
		push	0		; subaddr
		mov	edx, [esi]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_431A16
		push	1Ch		; n
		push	0		; c
		push	offset dword_5DC358 ; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_431A28
; ---------------------------------------------------------------------------

loc_431A16:				; CODE XREF: .text:00431A01j
		push	esi
		push	edi
		mov	esi, ebx
		mov	edi, offset dword_5DC358
		mov	ecx, 7
		rep movsd
		pop	edi
		pop	esi

loc_431A28:				; CODE XREF: .text:00431A14j
		mov	dword_5DC360, 1001000h
		push	100h		; nname
		push	offset condition ; _name
		push	51h		; type
		mov	eax, [esi]
		push	eax		; _addr
		call	FindnameW
		mov	expression, 0
		xor	edx, edx
		add	esp, 10h
		mov	exprtype, 0
		mov	dword_5DC34C, edx
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_431A77
		mov	ecx, [ebp+14h]
		mov	g_dialog._title,	ecx
		jmp	loc_431BAE
; ---------------------------------------------------------------------------

loc_431A77:				; CODE XREF: .text:00431A67j
		cmp	edi, 1
		jnz	short loc_431AFA
		test	ebx, ebx
		jnz	short loc_431AA2
		push	offset aSetBreakpointA ; "Set breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-210h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_431AC2
; ---------------------------------------------------------------------------

loc_431AA2:				; CODE XREF: .text:00431A7Ej
		push	offset aEditBreakpoint ; "Edit breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-210h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_431AC2:				; CODE XREF: .text:00431AA0j
		mov	ecx, 100h
		lea	edx, [ebp-210h]
		sub	ecx, eax
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [esi]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	ecx, [ebp-210h]
		mov	g_dialog._title,	ecx
		jmp	loc_431BAE
; ---------------------------------------------------------------------------

loc_431AFA:				; CODE XREF: .text:00431A7Aj
		test	ebx, ebx
		jnz	short loc_431B20
		push	offset aSetBreakpoints ; "Set breakpoints at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-210h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_431B40
; ---------------------------------------------------------------------------

loc_431B20:				; CODE XREF: .text:00431AFCj
		push	offset aEditBreakpoi_1 ; "Edit breakpoints at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-210h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_431B40:				; CODE XREF: .text:00431B1Ej
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		xor	ebx, ebx
		cmp	edi, ebx
		jle	short loc_431B83

loc_431B52:				; CODE XREF: .text:00431B81j
		lea	edx, [esi+ebx*4]
		mov	ecx, [edx]
		cmp	ecx, [ebp-8]
		jbe	short loc_431B61
		lea	ecx, [ebp-8]
		jmp	short loc_431B63
; ---------------------------------------------------------------------------

loc_431B61:				; CODE XREF: .text:00431B5Aj
		mov	ecx, edx

loc_431B63:				; CODE XREF: .text:00431B5Fj
		mov	edx, [ecx]
		mov	[ebp-8], edx
		lea	edx, [esi+ebx*4]
		mov	ecx, [edx]
		cmp	ecx, [ebp-0Ch]
		jnb	short loc_431B77
		lea	ecx, [ebp-0Ch]
		jmp	short loc_431B79
; ---------------------------------------------------------------------------

loc_431B77:				; CODE XREF: .text:00431B70j
		mov	ecx, edx

loc_431B79:				; CODE XREF: .text:00431B75j
		mov	edx, [ecx]
		mov	[ebp-0Ch], edx
		inc	ebx
		cmp	edi, ebx
		jg	short loc_431B52

loc_431B83:				; CODE XREF: .text:00431B50j
		mov	edx, [ebp-0Ch]
		add	eax, eax
		push	edx
		lea	edx, [ebp-210h]
		mov	ecx, [ebp-8]
		add	eax, edx
		push	ecx
		push	offset a08x__08x ; "%08X..%08X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		lea	eax, [ebp-210h]
		mov	g_dialog._title,	eax

loc_431BAE:				; CODE XREF: .text:00431A72j
					; .text:00431AF5j
		mov	ecx, [ebp+18h]
		mov	eax, [ebp+1Ch]
		mov	g_dialog.x, ecx
		mov	edx, [ebp+20h]
		mov	g_dialog.y, eax
		mov	g_dialog.fi, edx
		xor	ecx, ecx
		push	0		; dwInitParam
		push	offset loc_431018 ; lpDialogFunc
		mov	g_dialog.mode, ecx
		mov	eax, [ebp+8]
		mov	g_dialog.cesav,	51h
		mov	g_dialog.controls, offset stru_524AEC
		push	eax		; hWndParent
		mov	edx, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		xor	ecx, ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 1
		mov	g_dialog.controls, ecx
		jnz	loc_431CE8
		cmp	condition, 0
		jnz	short loc_431C2B
		mov	dword_5DC360, 3001000h
		jmp	short loc_431C35
; ---------------------------------------------------------------------------

loc_431C2B:				; CODE XREF: .text:00431C1Dj
		mov	dword_5DC360, 1001000h

loc_431C35:				; CODE XREF: .text:00431C29j
		cmp	edi, 32h
		jle	short loc_431C5F
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	eax, hwollymain
		push	eax		; hWnd
		call	RedrawWindow
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-10h], eax
		jmp	short loc_431C64
; ---------------------------------------------------------------------------

loc_431C5F:				; CODE XREF: .text:00431C38j
		xor	ecx, ecx
		mov	[ebp-10h], ecx

loc_431C64:				; CODE XREF: .text:00431C5Dj
		call	Suspendallthreads
		xor	ebx, ebx
		mov	eax, esi
		mov	esi, eax
		cmp	edi, ebx
		jle	short loc_431CD4

loc_431C73:				; CODE XREF: .text:00431CD2j
		push	(offset	aOd_empty+0Fh) ; exprtype
		push	(offset	aOd_empty+0Fh) ; expression
		push	offset condition ; condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		mov	edx, dword_5DC360
		push	edx		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		test	eax, eax
		jnz	short loc_431CB3
		mov	eax, enable
		push	eax		; enable
		mov	edx, [esi]
		push	edx		; _addr
		call	Enableint3breakpoint
		add	esp, 8
		jmp	short loc_431CCC
; ---------------------------------------------------------------------------

loc_431CB3:				; CODE XREF: .text:00431C9Ej
		push	offset aUnableToSetBre ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-4], 0FFFFFFFFh

loc_431CCC:				; CODE XREF: .text:00431CB1j
		inc	ebx
		add	esi, 4
		cmp	edi, ebx
		jg	short loc_431C73

loc_431CD4:				; CODE XREF: .text:00431C71j
		call	Resumeallthreads
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_431CE8
		mov	ecx, [ebp-10h]
		push	ecx		; hCursor
		call	SetCursor

loc_431CE8:				; CODE XREF: .text:00431C0Fj
					; .text:00431CDDj
		mov	eax, [ebp-4]

loc_431CEB:				; CODE XREF: .text:004319D1j
					; .text:004319E6j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 142. _Condlogbreakpoint
; Exported entry 428. Condlogbreakpoint

; int __cdecl Condlogbreakpoint(HWND hparent, ulong *_addr, int naddr, int fnindex, wchar_t *_title, int x, int y, int fi)
		public Condlogbreakpoint
Condlogbreakpoint:			; CODE XREF: .text:004970D8p
					; .text:004A1C9Ap ...
		push	ebp		; _Condlogbreakpoint
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF508h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_431D13
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_431D1B

loc_431D13:				; CODE XREF: .text:00431D0Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_43234B
; ---------------------------------------------------------------------------

loc_431D1B:				; CODE XREF: .text:00431D11j
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_431D33
		or	eax, 0FFFFFFFFh
		jmp	loc_43234B
; ---------------------------------------------------------------------------

loc_431D33:				; CODE XREF: .text:00431D29j
		push	0		; subaddr
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		push	ecx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_431D6E
		push	1Ch		; n
		push	0		; c
		push	offset dword_5DC358 ; s
		call	_memset
		mov	ax, [ebp+14h]
		add	esp, 0Ch
		mov	word_5DC364, ax
		jmp	short loc_431D7F
; ---------------------------------------------------------------------------

loc_431D6E:				; CODE XREF: .text:00431D4Fj
		mov	edx, [ebp-14h]
		mov	edi, offset dword_5DC358
		mov	esi, edx
		mov	ecx, 7
		rep movsd

loc_431D7F:				; CODE XREF: .text:00431D6Cj
		push	100h		; nname
		push	offset condition ; _name
		push	51h		; type
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		push	offset expression ; _name
		push	52h		; type
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		push	offset exprtype	; _name
		push	53h		; type
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	FindnameW
		xor	eax, eax
		xor	edx, edx
		mov	dword_5DC34C, eax
		add	esp, 10h
		xor	esi, esi
		mov	eax, [ebp+0Ch]
		cmp	esi, [ebp+10h]
		mov	ebx, eax
		mov	dword_5DC350, edx
		jge	loc_431EF3

loc_431DEC:				; CODE XREF: .text:00431EEDj
		push	0		; subaddr
		mov	eax, [ebx]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_431E2E
		mov	edx, [ebx]
		cmp	edx, [eax]
		jnz	short loc_431E2E
		test	dword ptr [eax+8], 7E00000h
		jz	loc_431EC7
		cmp	dword ptr [eax+28h], 0
		jle	loc_431EC7
		mov	dword_5DC34C, 1
		jmp	loc_431EC7
; ---------------------------------------------------------------------------

loc_431E2E:				; CODE XREF: .text:00431E00j
					; .text:00431E06j
		push	5		; mode
		push	10h		; size
		mov	ecx, [ebx]
		push	ecx		; _addr
		lea	eax, [ebp-228h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jbe	short loc_431EC7
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-1AF8h]
		push	edx		; da
		push	0		; dec
		mov	ecx, [ebx]
		push	ecx		; ip
		push	eax		; cmdsize
		lea	eax, [ebp-228h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jbe	short loc_431EC7
		cmp	dword ptr [ebp-1ACCh], 0
		jnz	short loc_431EC7
		cmp	dword ptr [ebp-1AB8h], 0
		jz	short loc_431EC7
		mov	edx, [ebp-1AB8h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-8], eax
		push	0		; subaddr
		mov	ecx, [ebp-8]
		push	ecx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_431EC7
		mov	edx, [ebp-8]
		cmp	edx, [eax]
		jnz	short loc_431EC7
		test	dword ptr [eax+8], 7E00000h
		jz	short loc_431EC7
		cmp	dword ptr [eax+28h], 0
		jle	short loc_431EC7
		mov	dword_5DC34C, 1

loc_431EC7:				; CODE XREF: .text:00431E0Fj
					; .text:00431E19j ...
		push	0		; nname
		push	0		; _name
		push	36h		; type
		mov	eax, [ebx]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_431EE6
		mov	dword_5DC350, 1

loc_431EE6:				; CODE XREF: .text:00431EDAj
		inc	esi
		add	ebx, 4
		cmp	esi, [ebp+10h]
		jl	loc_431DEC

loc_431EF3:				; CODE XREF: .text:00431DE6j
		cmp	dword_5DC34C, 0
		jnz	short loc_431F10
		cmp	word_5DC364, 0
		jnz	short loc_431F10
		and	dword_5DC360, 0CFFFFFFFh

loc_431F10:				; CODE XREF: .text:00431EFAj
					; .text:00431F04j
		cmp	dword_5DC350, 0
		jnz	short loc_431F23
		and	dword_5DC360, 3FFFFFFFh

loc_431F23:				; CODE XREF: .text:00431F17j
		cmp	dword ptr [ebp+10h], 1
		jle	short loc_431F4A
		xor	ecx, ecx
		mov	dword_5DC36C, ecx
		mov	dword_5DC368, ecx
		and	dword_5DC360, 0FFF7FFFFh
		xor	eax, eax
		mov	dword_5DC374, eax
		jmp	short loc_431F54
; ---------------------------------------------------------------------------

loc_431F4A:				; CODE XREF: .text:00431F27j
		mov	dword_5DC374, 1

loc_431F54:				; CODE XREF: .text:00431F48j
		test	byte ptr dword_5DC360+3, 0FFh
		jnz	short loc_431F67
		or	dword_5DC360, 3000000h

loc_431F67:				; CODE XREF: .text:00431F5Bj
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_431F7B
		mov	edx, [ebp+18h]
		mov	g_dialog._title,	edx
		jmp	loc_4320C9
; ---------------------------------------------------------------------------

loc_431F7B:				; CODE XREF: .text:00431F6Bj
		cmp	dword ptr [ebp+10h], 1
		jnz	loc_432007
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_431FAD
		push	offset aSetBreakpointA ; "Set breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-218h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_431FCD
; ---------------------------------------------------------------------------

loc_431FAD:				; CODE XREF: .text:00431F89j
		push	offset aEditBreakpoint ; "Edit breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-218h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_431FCD:				; CODE XREF: .text:00431FABj
		mov	ecx, 100h
		lea	edx, [ebp-218h]
		sub	ecx, eax
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp+0Ch]
		mov	ecx, [eax]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	eax, [ebp-218h]
		mov	g_dialog._title,	eax
		jmp	loc_4320C9
; ---------------------------------------------------------------------------

loc_432007:				; CODE XREF: .text:00431F7Fj
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_43202F
		push	offset aSetBreakpoints ; "Set breakpoints at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-218h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_43204F
; ---------------------------------------------------------------------------

loc_43202F:				; CODE XREF: .text:0043200Bj
		push	offset aEditBreakpoi_1 ; "Edit breakpoints at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-218h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43204F:				; CODE XREF: .text:0043202Dj
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		xor	edx, edx
		mov	[ebp-10h], edx
		xor	esi, esi
		cmp	esi, [ebp+10h]
		jge	short loc_43209E

loc_432062:				; CODE XREF: .text:0043209Cj
		mov	edx, esi
		shl	edx, 2
		add	edx, [ebp+0Ch]
		mov	ecx, [edx]
		cmp	ecx, [ebp-0Ch]
		jbe	short loc_432076
		lea	ecx, [ebp-0Ch]
		jmp	short loc_432078
; ---------------------------------------------------------------------------

loc_432076:				; CODE XREF: .text:0043206Fj
		mov	ecx, edx

loc_432078:				; CODE XREF: .text:00432074j
		mov	edx, [ecx]
		mov	[ebp-0Ch], edx
		mov	edx, esi
		shl	edx, 2
		add	edx, [ebp+0Ch]
		mov	ecx, [edx]
		cmp	ecx, [ebp-10h]
		jnb	short loc_432091
		lea	ecx, [ebp-10h]
		jmp	short loc_432093
; ---------------------------------------------------------------------------

loc_432091:				; CODE XREF: .text:0043208Aj
		mov	ecx, edx

loc_432093:				; CODE XREF: .text:0043208Fj
		mov	edx, [ecx]
		mov	[ebp-10h], edx
		inc	esi
		cmp	esi, [ebp+10h]
		jl	short loc_432062

loc_43209E:				; CODE XREF: .text:00432060j
		mov	edx, [ebp-10h]
		add	eax, eax
		push	edx
		lea	edx, [ebp-218h]
		mov	ecx, [ebp-0Ch]
		add	eax, edx
		push	ecx
		push	offset a08x__08x ; "%08X..%08X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		lea	eax, [ebp-218h]
		mov	g_dialog._title,	eax

loc_4320C9:				; CODE XREF: .text:00431F76j
					; .text:00432002j
		mov	ecx, [ebp+1Ch]
		mov	eax, [ebp+20h]
		mov	g_dialog.x, ecx
		mov	edx, [ebp+24h]
		mov	g_dialog.y, eax
		mov	g_dialog.fi, edx
		mov	g_dialog.mode, 40h
		push	0		; dwInitParam
		push	offset loc_431018 ; lpDialogFunc
		mov	g_dialog.cesav,	51h
		mov	ecx, [ebp+8]
		mov	g_dialog.cesav+4, 52h
		mov	g_dialog.controls, offset stru_524C04
		push	ecx		; hWndParent
		mov	eax, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 1
		mov	g_dialog.controls, edx
		jnz	loc_432348
		cmp	dword ptr [ebp+10h], 32h
		jle	short loc_432166
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	RedrawWindow
		mov	eax, g_hCursor
		push	eax		; hCursor
		call	SetCursor
		mov	[ebp-18h], eax
		jmp	short loc_43216B
; ---------------------------------------------------------------------------

loc_432166:				; CODE XREF: .text:0043213Fj
		xor	edx, edx
		mov	[ebp-18h], edx

loc_43216B:				; CODE XREF: .text:00432164j
		call	Suspendallthreads
		xor	esi, esi
		mov	eax, [ebp+0Ch]
		mov	ebx, eax
		cmp	esi, [ebp+10h]
		jge	loc_432334

loc_432180:				; CODE XREF: .text:0043232Ej
		mov	edi, dword_5DC360
		xor	eax, eax
		and	edi, 0FF080000h
		mov	dword_5DC34C, eax
		or	edi, 1000h
		xor	edx, edx
		mov	dword_5DC350, edx
		push	0		; subaddr
		mov	ecx, [ebx]
		push	ecx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4321E3
		mov	edx, [ebx]
		cmp	edx, [eax]
		jnz	short loc_4321E3
		test	dword ptr [eax+8], 7E00000h
		jz	loc_43227C
		cmp	dword ptr [eax+28h], 0
		jle	loc_43227C
		mov	dword_5DC34C, 1
		jmp	loc_43227C
; ---------------------------------------------------------------------------

loc_4321E3:				; CODE XREF: .text:004321B5j
					; .text:004321BBj
		push	5		; mode
		push	10h		; size
		mov	eax, [ebx]
		push	eax		; _addr
		lea	ecx, [ebp-228h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jbe	short loc_43227C
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-1AF8h]
		push	edx		; da
		push	0		; dec
		mov	ecx, [ebx]
		push	ecx		; ip
		push	eax		; cmdsize
		lea	eax, [ebp-228h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jbe	short loc_43227C
		cmp	dword ptr [ebp-1ACCh], 0
		jnz	short loc_43227C
		cmp	dword ptr [ebp-1AB8h], 0
		jz	short loc_43227C
		mov	eax, [ebp-1AB8h]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-8], eax
		push	0		; subaddr
		mov	edx, [ebp-8]
		push	edx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_43227C
		mov	ecx, [ebp-8]
		cmp	ecx, [eax]
		jnz	short loc_43227C
		test	dword ptr [eax+8], 7E00000h
		jz	short loc_43227C
		cmp	dword ptr [eax+28h], 0
		jle	short loc_43227C
		mov	dword_5DC34C, 1

loc_43227C:				; CODE XREF: .text:004321C4j
					; .text:004321CEj ...
		push	0		; nname
		push	0		; _name
		push	36h		; type
		mov	eax, [ebx]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_43229B
		mov	dword_5DC350, 1

loc_43229B:				; CODE XREF: .text:0043228Fj
		cmp	dword_5DC34C, 0
		jnz	short loc_4322B4
		cmp	word_5DC364, 0
		jnz	short loc_4322B4
		and	edi, 0CFFFFFFFh

loc_4322B4:				; CODE XREF: .text:004322A2j
					; .text:004322ACj
		cmp	dword_5DC350, 0
		jnz	short loc_4322C3
		and	edi, 3FFFFFFFh

loc_4322C3:				; CODE XREF: .text:004322BBj
		push	offset exprtype	; exprtype
		push	offset expression ; expression
		push	offset condition ; condition
		push	0		; actions
		mov	edx, dword_5DC36C
		push	edx		; count
		mov	ecx, dword_5DC368
		push	ecx		; limit
		movzx	eax, word_5DC364
		push	eax		; fnindex
		push	edi		; type
		mov	edx, [ebx]
		push	edx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		test	eax, eax
		jnz	short loc_43230E
		mov	ecx, enable
		push	ecx		; enable
		mov	eax, [ebx]
		push	eax		; _addr
		call	Enableint3breakpoint
		add	esp, 8
		jmp	short loc_432327
; ---------------------------------------------------------------------------

loc_43230E:				; CODE XREF: .text:004322F8j
		push	offset aUnableToSetBre ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-4], 0FFFFFFFFh

loc_432327:				; CODE XREF: .text:0043230Cj
		inc	esi
		add	ebx, 4
		cmp	esi, [ebp+10h]
		jl	loc_432180

loc_432334:				; CODE XREF: .text:0043217Aj
		call	Resumeallthreads
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_432348
		mov	edx, [ebp-18h]
		push	edx		; hCursor
		call	SetCursor

loc_432348:				; CODE XREF: .text:00432135j
					; .text:0043233Dj
		mov	eax, [ebp-4]

loc_43234B:				; CODE XREF: .text:00431D16j
					; .text:00431D2Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
