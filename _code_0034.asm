.code

; Exported entry 135. _Asmindump
; Exported entry 403. Asmindump

; int __cdecl Asmindump(HWND hparent, wchar_t *_title, struct t_dump *pd, int letter, int x, int	y, int fi, int mode)
		public Asmindump
Asmindump:				; CODE XREF: .text:004B4010p
		push	ebp		; _Asmindump
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+10h]
		mov	ebx, offset g_dialog
		test	eax, eax
		jz	short loc_42E09D
		mov	edx, [eax+288h]
		cmp	edx, [eax+28Ch]
		jnb	short loc_42E09D
		mov	ecx, [eax+288h]
		cmp	ecx, [eax]
		jb	short loc_42E09D
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	edx, [eax+288h]
		ja	short loc_42E0A3

loc_42E09D:				; CODE XREF: .text:0042E076j
					; .text:0042E084j ...
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_42E0A3:				; CODE XREF: .text:0042E09Bj
		mov	ecx, [ebp+0Ch]
		mov	[ebx+4], ecx
		mov	dword_5DA8F4, eax
		xor	eax, eax
		mov	edx, [ebp+14h]
		mov	result,	eax
		mov	[ebx+2Ch], edx
		mov	ecx, [ebp+18h]
		mov	[ebx+30h], ecx
		mov	eax, [ebp+1Ch]
		mov	[ebx+34h], eax
		mov	edx, [ebp+20h]
		mov	[ebx+38h], edx
		mov	ecx, [ebp+24h]
		mov	[ebx+3Ch], ecx
		mov	dword ptr [ebx+40h], 61h
		mov	dword ptr [ebx], offset	stru_523AA4
		push	0		; dwInitParam
		push	offset loc_42DC10 ; lpDialogFunc
		mov	edx, g_hInstance
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		xor	ecx, ecx
		mov	[ebx], ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_42E104(HWND, UINT, WPARAM, LPARAM)
loc_42E104:				; DATA XREF: .text:0042E365o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42E138
		dec	eax
		jz	loc_42E1B0
		dec	eax
		jz	loc_42E29E
		sub	eax, 26h
		jz	short loc_42E170
		jmp	loc_42E2B7
; ---------------------------------------------------------------------------

loc_42E138:				; CODE XREF: .text:0042E11Ej
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		mov	eax, 709h
		mov	g_dialog.focus,	eax
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		push	ebx		; hWnd
		call	SetFocus
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42E2B9
; ---------------------------------------------------------------------------

loc_42E170:				; CODE XREF: .text:0042E131j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 70Dh
		jz	short loc_42E187
		xor	eax, eax
		jmp	loc_42E2B9
; ---------------------------------------------------------------------------

loc_42E187:				; CODE XREF: .text:0042E17Ej
		mov	edx, color+30h
		push	edx		; COLORREF
		mov	esi, ebx
		push	esi		; HDC
		call	SetTextColor
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	esi		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_42E2B9
; ---------------------------------------------------------------------------

loc_42E1B0:				; CODE XREF: .text:0042E121j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_42E2B7
		mov	edx, [ebp+14h]
		push	edx		; lp
		push	ebx		; wp
		push	eax		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 709h
		jnz	short loc_42E1FD
		mov	edx, ebx
		shr	edx, 10h
		cmp	dx, 5
		jnz	short loc_42E1FD
		push	(offset	aOd_empty+0Fh) ; lpString
		push	70Dh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42E2B7
; ---------------------------------------------------------------------------

loc_42E1FD:				; CODE XREF: .text:0042E1DBj
					; .text:0042E1E6j
		cmp	ax, 1
		jnz	loc_42E28B
		push	709h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		lea	eax, [ebp-200h]
		push	100h		; nMaxCount
		push	eax		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		test	eax, eax
		jz	loc_42E2B7
		lea	edx, [ebp-400h]
		mov	ecx, maxmodel
		push	edx		; errtxt
		push	7		; mode
		push	ecx		; maxmodel
		mov	eax, model
		push	eax		; model
		lea	edx, [ebp-200h]
		push	0		; ip
		push	edx		; src
		call	Assembleallforms
		add	esp, 18h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_42E26F
		lea	eax, [ebp-400h]
		push	eax		; lpString
		push	70Dh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	short loc_42E2B7
; ---------------------------------------------------------------------------

loc_42E26F:				; CODE XREF: .text:0042E259j
		lea	edx, [ebp-200h]
		push	edx		; s
		push	ebx		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	edi		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42E2B7
; ---------------------------------------------------------------------------

loc_42E28B:				; CODE XREF: .text:0042E201j
		cmp	ax, 2
		jnz	short loc_42E2B7
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42E2B7
; ---------------------------------------------------------------------------

loc_42E29E:				; CODE XREF: .text:0042E128j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42E2B7
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_42E2B7:				; CODE XREF: .text:0042E133j
					; .text:0042E1BCj ...
		xor	eax, eax

loc_42E2B9:				; CODE XREF: .text:0042E16Bj
					; .text:0042E182j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 136. _Getasmsearchmodel
; Exported entry 551. Getasmsearchmodel

; int __cdecl Getasmsearchmodel(HWND hparent, wchar_t *_title, t_asmmod *model, int nmodel, int x, int y, int fi, int mode)
		public Getasmsearchmodel
Getasmsearchmodel:			; CODE XREF: .text:004A5653p
					; .text:004A5D1Fp
		push	ebp		; _Getasmsearchmodel
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+24h]
		mov	ebx, [ebp+14h]
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_42E2DA
		test	ebx, ebx
		jg	short loc_42E2E2

loc_42E2DA:				; CODE XREF: .text:0042E2D4j
		or	eax, 0FFFFFFFFh	; int
		jmp	loc_42E3B9
; ---------------------------------------------------------------------------

loc_42E2E2:				; CODE XREF: .text:0042E2D8j
		push	0		; flags
		mov	edx, ebx
		shl	edx, 2
		lea	edx, [edx+edx*2]
		lea	edx, [edx+edx*8] ; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	model, edi
		test	edi, edi
		jnz	short loc_42E30C
		or	eax, 0FFFFFFFFh
		jmp	loc_42E3B9
; ---------------------------------------------------------------------------

loc_42E30C:				; CODE XREF: .text:0042E302j
		mov	maxmodel, ebx
		mov	edx, [ebp+0Ch]
		mov	g_dialog._title,	edx
		mov	ecx, [ebp+18h]
		mov	g_dialog.x, ecx
		mov	eax, [ebp+1Ch]
		mov	g_dialog.y, eax
		mov	edx, [ebp+20h]
		mov	g_dialog.fi, edx
		mov	g_dialog.mode, esi
		test	esi, 4000h
		mov	g_dialog.cesav,	62h
		jnz	short loc_42E359
		mov	g_dialog.controls, offset stru_523BE4
		jmp	short loc_42E363
; ---------------------------------------------------------------------------

loc_42E359:				; CODE XREF: .text:0042E34Bj
		mov	g_dialog.controls, offset stru_523CAC

loc_42E363:				; CODE XREF: .text:0042E357j
		push	0		; dwInitParam
		push	offset loc_42E104 ; lpDialogFunc
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_42E3A3
		mov	eax, ebx
		mov	edx, model
		shl	eax, 2
		lea	eax, [eax+eax*2]
		lea	eax, [eax+eax*8]
		push	eax		; n
		push	edx		; src
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_42E3A3:				; CODE XREF: .text:0042E382j
		mov	eax, model
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	g_dialog.controls, edx
		mov	eax, ebx

loc_42E3B9:				; CODE XREF: .text:0042E2DDj
					; .text:0042E307j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; INT_PTR __stdcall loc_42E3C0(HWND, UINT, WPARAM, LPARAM)
loc_42E3C0:				; DATA XREF: .text:0042E853o
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_42E3C9:				; CODE XREF: .text:0042E3D1j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_42E3C9
		mov	eax, [ebp-4]
		add	esp, 0FFFFFBF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42E404
		dec	eax
		jz	loc_42E4A6
		dec	eax
		jz	loc_42E793
		sub	eax, 26h
		jz	short loc_42E466
		jmp	loc_42E7AF
; ---------------------------------------------------------------------------

loc_42E404:				; CODE XREF: .text:0042E3EAj
		push	offset g_dialog	; pdlg
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Preparedialog
		add	esp, 8
		push	0		; int
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	loc_427C54
		add	esp, 8
		mov	eax, 76Dh
		mov	g_dialog.focus,	eax
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	[ebp-0Ch], eax
		mov	ecx, [ebp-0Ch]
		push	ecx		; hWnd
		call	SetFocus
		push	0FFFFFFFFh	; lParam
		push	0		; wParam
		push	0B1h		; Msg
		mov	eax, [ebp-0Ch]
		push	eax		; hWnd
		call	SendMessageW
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42E7B1
; ---------------------------------------------------------------------------

loc_42E466:				; CODE XREF: .text:0042E3FDj
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 76Eh
		jz	short loc_42E47D
		xor	eax, eax
		jmp	loc_42E7B1
; ---------------------------------------------------------------------------

loc_42E47D:				; CODE XREF: .text:0042E474j
		mov	edx, color+30h
		push	edx		; COLORREF
		mov	esi, ebx
		push	esi		; HDC
		call	SetTextColor
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	esi		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_42E7B1
; ---------------------------------------------------------------------------

loc_42E4A6:				; CODE XREF: .text:0042E3EDj
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_42E7AF
		mov	edx, [ebp+14h]
		push	edx		; lp
		push	ebx		; wp
		push	eax		; pctr
		mov	ecx, [ebp+8]
		push	ecx		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 76Dh
		jnz	short loc_42E4FA
		mov	edx, ebx
		shr	edx, 10h
		cmp	dx, 300h
		jnz	short loc_42E4FA
		push	(offset	aOd_empty+0Fh) ; lpString
		push	76Eh		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42E7AF
; ---------------------------------------------------------------------------

loc_42E4FA:				; CODE XREF: .text:0042E4D4j
					; .text:0042E4E0j
		cmp	ax, 774h
		jnz	short loc_42E518
		mov	eax, dword_5DA90C
		inc	eax
		push	eax		; int
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	loc_427C54
		add	esp, 8
		jmp	loc_42E7AF
; ---------------------------------------------------------------------------

loc_42E518:				; CODE XREF: .text:0042E4FEj
		cmp	ax, 775h
		jnz	short loc_42E537
		mov	ecx, dword_5DA90C
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_427C54
		add	esp, 8
		jmp	loc_42E7AF
; ---------------------------------------------------------------------------

loc_42E537:				; CODE XREF: .text:0042E51Cj
		cmp	ax, 1
		jnz	loc_42E778
		push	76Dh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	[ebp-0Ch], eax
		lea	ecx, [ebp-220Ch]
		push	1000h		; nMaxCount
		push	ecx		; lpString
		mov	eax, [ebp-0Ch]
		push	eax		; hWnd
		call	GetWindowTextW
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-8], eax

loc_42E56E:				; CODE XREF: .text:0042E5D7j
					; .text:0042E659j
		lea	eax, [ebp+esi*2-220Ch]
		jmp	short loc_42E57B
; ---------------------------------------------------------------------------

loc_42E577:				; CODE XREF: .text:0042E582j
					; .text:0042E588j
		inc	esi
		add	eax, 2

loc_42E57B:				; CODE XREF: .text:0042E575j
		mov	dx, [eax]
		cmp	dx, 0Ah
		jz	short loc_42E577
		cmp	dx, 0Dh
		jz	short loc_42E577
		cmp	word ptr [ebp+esi*2-220Ch], 0
		jz	loc_42E65E
		mov	[ebp-4], esi
		xor	ebx, ebx
		lea	edx, [ebp-20Ch]
		lea	eax, [ebp+esi*2-220Ch]
		jmp	short loc_42E5BB
; ---------------------------------------------------------------------------

loc_42E5AD:				; CODE XREF: .text:0042E5D3j
		mov	cx, [eax]
		inc	ebx
		mov	[edx], cx
		add	edx, 2
		inc	esi
		add	eax, 2

loc_42E5BB:				; CODE XREF: .text:0042E5ABj
		cmp	ebx, 0FFh
		jge	short loc_42E5D5
		cmp	word ptr [eax],	0Ah
		jz	short loc_42E5D5
		cmp	word ptr [eax],	0Dh
		jz	short loc_42E5D5
		cmp	word ptr [eax],	0
		jnz	short loc_42E5AD

loc_42E5D5:				; CODE XREF: .text:0042E5C1j
					; .text:0042E5C7j ...
		test	ebx, ebx
		jz	short loc_42E56E
		mov	word ptr [ebp+ebx*2-20Ch], 0
		lea	eax, [ebp-240Ch]
		mov	edx, dword_5DA908
		push	eax		; errtxt
		push	7		; mode
		sub	edx, [ebp-8]
		lea	eax, [ebp-20Ch]
		push	edx		; maxmodel
		mov	ecx, [ebp-8]
		shl	ecx, 2
		lea	ecx, [ecx+ecx*2]
		lea	ecx, [ecx+ecx*8]
		add	ecx, dword_5DA904
		push	ecx		; model
		push	0		; ip
		push	eax		; src
		call	Assembleallforms
		add	esp, 18h
		test	eax, eax
		jnz	short loc_42E656
		lea	edx, [ebp-240Ch]
		push	edx		; lpString
		push	76Eh		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		mov	eax, [ebp-0Ch]
		push	eax		; hWnd
		call	SetFocus
		mov	edx, [ebp-4]
		push	edx		; lParam
		push	esi		; wParam
		push	0B1h		; Msg
		mov	ecx, [ebp-0Ch]
		push	ecx		; hWnd
		call	SendMessageW
		xor	eax, eax
		jmp	loc_42E7B1
; ---------------------------------------------------------------------------

loc_42E656:				; CODE XREF: .text:0042E61Cj
		add	[ebp-8], eax
		jmp	loc_42E56E
; ---------------------------------------------------------------------------

loc_42E65E:				; CODE XREF: .text:0042E593j
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_42E69E
		push	offset aNoCommands ; "No commands"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	76Eh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	SetDlgItemTextW
		mov	ecx, [ebp-0Ch]
		push	ecx		; hWnd
		call	SetFocus
		push	0		; lParam
		push	0		; wParam
		push	0B1h		; Msg
		mov	eax, [ebp-0Ch]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_42E7AF
; ---------------------------------------------------------------------------

loc_42E69E:				; CODE XREF: .text:0042E662j
		push	2000h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	loc_42E749
		lea	eax, [ebp-220Ch]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	edx, eax
		lea	eax, [ebp+edx*2-220Ch]
		jmp	short loc_42E6CF
; ---------------------------------------------------------------------------

loc_42E6CB:				; CODE XREF: .text:0042E6DAj
					; .text:0042E6E0j
		dec	edx
		add	eax, 0FFFFFFFEh

loc_42E6CF:				; CODE XREF: .text:0042E6C9j
		test	edx, edx
		jle	short loc_42E6E2
		mov	cx, [eax]
		cmp	cx, 0Ah
		jz	short loc_42E6CB
		cmp	cx, 0Dh
		jz	short loc_42E6CB

loc_42E6E2:				; CODE XREF: .text:0042E6D1j
		mov	word ptr [ebp+edx*2-220Ch], 0
		xor	ebx, ebx

loc_42E6EE:				; CODE XREF: .text:0042E71Dj
		push	1000h		; nname
		push	edi		; _name
		push	6Fh		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jz	short loc_42E71F
		lea	eax, [ebp-220Ch]
		push	eax		; s2
		push	edi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_42E71F
		inc	ebx
		cmp	ebx, 0Fh
		jl	short loc_42E6EE

loc_42E71F:				; CODE XREF: .text:0042E703j
					; .text:0042E717j
		dec	ebx
		test	ebx, ebx
		jl	short loc_42E749

loc_42E724:				; CODE XREF: .text:0042E747j
		push	1000h		; nname
		push	edi		; _name
		push	6Fh		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h
		lea	eax, [ebx+1]
		push	edi		; s
		push	6Fh		; type
		push	eax		; _addr
		call	InsertnameW
		add	esp, 0Ch
		dec	ebx
		test	ebx, ebx
		jge	short loc_42E724

loc_42E749:				; CODE XREF: .text:0042E6ADj
					; .text:0042E722j
		lea	edx, [ebp-220Ch]
		push	edx		; s
		push	6Fh		; type
		push	0		; _addr
		call	InsertnameW
		add	esp, 0Ch
		mov	dword_5D5614, 1
		mov	ecx, [ebp-8]
		push	ecx		; result
		mov	eax, [ebp+8]
		push	eax		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42E7AF
; ---------------------------------------------------------------------------

loc_42E778:				; CODE XREF: .text:0042E53Bj
		and	bx, 0FFFFh
		cmp	bx, 2
		jnz	short loc_42E7AF
		push	0		; result
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42E7AF
; ---------------------------------------------------------------------------

loc_42E793:				; CODE XREF: .text:0042E3F4j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42E7AF
		push	0		; result
		mov	ecx, [ebp+8]
		push	ecx		; hw
		call	Endotdialog
		add	esp, 8

loc_42E7AF:				; CODE XREF: .text:0042E3FFj
					; .text:0042E4B2j ...
		xor	eax, eax

loc_42E7B1:				; CODE XREF: .text:0042E461j
					; .text:0042E478j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 137. _Getseqsearchmodel
; Exported entry 601. Getseqsearchmodel

; int __cdecl Getseqsearchmodel(HWND hparent, wchar_t *_title, t_asmmod *model, int nmodel, int x, int y, int fi, int mode)
		public Getseqsearchmodel
Getseqsearchmodel:			; CODE XREF: .text:004A5687p
					; .text:004A5D5Ap
		push	ebp		; _Getseqsearchmodel
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+24h]
		mov	ebx, [ebp+14h]
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_42E7D2
		test	ebx, ebx
		jg	short loc_42E7DA

loc_42E7D2:				; CODE XREF: .text:0042E7CCj
		or	eax, 0FFFFFFFFh	; int
		jmp	loc_42E8A7
; ---------------------------------------------------------------------------

loc_42E7DA:				; CODE XREF: .text:0042E7D0j
		push	0		; flags
		mov	edx, ebx
		shl	edx, 2
		lea	edx, [edx+edx*2]
		lea	edx, [edx+edx*8] ; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5DA904, edi
		test	edi, edi
		jnz	short loc_42E804
		or	eax, 0FFFFFFFFh
		jmp	loc_42E8A7
; ---------------------------------------------------------------------------

loc_42E804:				; CODE XREF: .text:0042E7FAj
		mov	dword_5DA908, ebx
		mov	edx, [ebp+0Ch]
		mov	g_dialog._title,	edx
		mov	ecx, [ebp+18h]
		mov	g_dialog.x, ecx
		mov	eax, [ebp+1Ch]
		mov	g_dialog.y, eax
		mov	edx, [ebp+20h]
		mov	g_dialog.fi, edx
		mov	g_dialog.mode, esi
		test	esi, 4000h
		jnz	short loc_42E847
		mov	g_dialog.controls, offset stru_523E14
		jmp	short loc_42E851
; ---------------------------------------------------------------------------

loc_42E847:				; CODE XREF: .text:0042E839j
		mov	g_dialog.controls, offset stru_523FCC

loc_42E851:				; CODE XREF: .text:0042E845j
		push	0		; dwInitParam
		push	offset loc_42E3C0 ; lpDialogFunc
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_42E891
		mov	eax, ebx
		mov	edx, dword_5DA904
		shl	eax, 2
		lea	eax, [eax+eax*2]
		lea	eax, [eax+eax*8]
		push	eax		; n
		push	edx		; src
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_42E891:				; CODE XREF: .text:0042E870j
		mov	eax, dword_5DA904
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	g_dialog.controls, edx
		mov	eax, ebx

loc_42E8A7:				; CODE XREF: .text:0042E7D5j
					; .text:0042E7FFj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __stdcall	loc_42E8AC(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_42E8AC:				; CODE XREF: .text:0042F134p
					; .text:0042F151p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF6C0h
		push	ebx
		push	esi
		push	edi
		push	0FFFFFFF4h	; nIndex
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetWindowLongW
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 7D2h
		jnz	short loc_42E90D
		mov	edx, dword_582DF0
		mov	ecx, edx
		mov	dword ptr [ebp-10h], 2
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font._width[edx*4]
		mov	edx, g_dialog.fixdx
		mov	[ebp-14h], eax
		cmp	edx, [ebp-14h]
		jle	loc_42E98E
		mov	ecx, g_dialog.fixdx
		mov	[ebp-14h], ecx
		jmp	loc_42E98E
; ---------------------------------------------------------------------------

loc_42E90D:				; CODE XREF: .text:0042E8CDj
		cmp	dword ptr [ebp-0Ch], 7D4h
		jz	short loc_42E91F
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42E974

loc_42E91F:				; CODE XREF: .text:0042E914j
		cmp	dword ptr [ebp-0Ch], 7D4h
		mov	eax, 2
		jz	short loc_42E930
		add	eax, 2

loc_42E930:				; CODE XREF: .text:0042E92Bj
		mov	[ebp-10h], eax
		mov	edx, dword_582DF0
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font._width[edx*4]
		mov	[ebp-14h], eax
		mov	edx, g_dialog.fixdx
		cmp	edx, [ebp-14h]
		jle	short loc_42E961
		mov	ecx, g_dialog.fixdx
		mov	[ebp-14h], ecx

loc_42E961:				; CODE XREF: .text:0042E956j
		cmp	dword_5BE6BC, 0
		jz	short loc_42E98E
		mov	eax, [ebp-14h]
		add	eax, eax
		mov	[ebp-14h], eax
		jmp	short loc_42E98E
; ---------------------------------------------------------------------------

loc_42E974:				; CODE XREF: .text:0042E91Dj
		mov	dword ptr [ebp-10h], 1
		mov	eax, g_dialog.fixdx
		mov	edx, eax
		sar	edx, 1
		jns	short loc_42E989
		adc	edx, 0

loc_42E989:				; CODE XREF: .text:0042E984j
		add	edx, eax
		mov	[ebp-14h], edx

loc_42E98E:				; CODE XREF: .text:0042E8F9j
					; .text:0042E908j ...
		lea	ecx, [ebp-900h]
		push	ecx		; lpRect
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetClientRect
		mov	eax, [ebp-8F8h]
		mov	edx, [ebp-14h]
		sub	eax, [ebp-900h]
		shl	edx, 2
		add	eax, 0FFFFFFFEh
		mov	ecx, edx
		cdq
		idiv	ecx
		shl	eax, 2
		mov	[ebp-18h], eax
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetParent
		mov	[ebp-54h], eax
		xor	eax, eax
		mov	dword_5DBD48, eax
		mov	edx, [ebp+0Ch]
		cmp	edx, 104h
		jg	short loc_42EA24
		jz	loc_42EE95
		cmp	edx, 87h
		jg	short loc_42EA0A
		jz	loc_42EE8B
		sub	edx, 7
		jz	short loc_42EA6B
		dec	edx
		jz	loc_42EBE0
		sub	edx, 7
		jz	loc_42FC3D
		jmp	loc_430683
; ---------------------------------------------------------------------------

loc_42EA0A:				; CODE XREF: .text:0042E9E8j
		sub	edx, 100h
		jz	loc_42EF11
		sub	edx, 2
		jz	loc_42F3AA
		jmp	loc_430683
; ---------------------------------------------------------------------------

loc_42EA24:				; CODE XREF: .text:0042E9DAj
		cmp	edx, 204h
		jg	short loc_42EA51
		jz	loc_42EE18
		sub	edx, 200h
		jz	loc_42EC06
		dec	edx
		jz	loc_42EC14
		dec	edx
		jz	loc_42EDF3
		jmp	loc_430683
; ---------------------------------------------------------------------------

loc_42EA51:				; CODE XREF: .text:0042EA2Aj
		add	edx, 0FFFFFD00h
		sub	edx, 2
		jb	loc_42F767
		jz	loc_42FB60
		jmp	loc_430683
; ---------------------------------------------------------------------------

loc_42EA6B:				; CODE XREF: .text:0042E9F3j
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42EADB
		mov	ecx, dword_5DBD24
		push	ecx
		call	loc_428248
		pop	ecx
		mov	dword_5DBD24, eax
		mov	eax, dword_5DBD2C
		push	eax
		call	loc_428248
		pop	ecx
		mov	dword_5DBD2C, eax
		mov	edx, dword_5DBD2C
		cmp	edx, dword_5DBD30
		jl	short loc_42EAB3
		mov	ecx, dword_5DBD2C
		mov	dword_5DBD30, ecx
		jmp	short loc_42EAC4
; ---------------------------------------------------------------------------

loc_42EAB3:				; CODE XREF: .text:0042EAA3j
		mov	eax, dword_5DBD30
		push	eax
		call	loc_428248
		pop	ecx
		mov	dword_5DBD30, eax

loc_42EAC4:				; CODE XREF: .text:0042EAB1j
		mov	edx, dword_5DBD28
		push	edx
		call	loc_428248
		pop	ecx
		mov	dword_5DBD28, eax
		jmp	loc_42EBB8
; ---------------------------------------------------------------------------

loc_42EADB:				; CODE XREF: .text:0042EA72j
		mov	eax, [ebp-10h]
		mov	edx, dword_5DBD2C
		dec	eax
		not	eax
		cmp	edx, dword_5DBD30
		jl	short loc_42EB2D
		and	dword_5DBD2C, eax
		jmp	short loc_42EB00
; ---------------------------------------------------------------------------

loc_42EAF7:				; CODE XREF: .text:0042EB0Cj
		mov	ecx, [ebp-10h]
		sub	dword_5DBD2C, ecx

loc_42EB00:				; CODE XREF: .text:0042EAF5j
		mov	edx, dword_5DBD2C
		cmp	edx, dword_5DBD38
		jg	short loc_42EAF7
		cmp	dword_5DBD2C, 0
		jge	short loc_42EB1F
		xor	ecx, ecx
		mov	dword_5DBD2C, ecx

loc_42EB1F:				; CODE XREF: .text:0042EB15j
		mov	edx, dword_5DBD2C
		mov	dword_5DBD30, edx
		jmp	short loc_42EB89
; ---------------------------------------------------------------------------

loc_42EB2D:				; CODE XREF: .text:0042EAEDj
		mov	ecx, dword_5DBD30
		add	ecx, [ebp-10h]
		dec	ecx
		and	ecx, eax
		mov	dword_5DBD30, ecx
		jmp	short loc_42EB4A
; ---------------------------------------------------------------------------

loc_42EB41:				; CODE XREF: .text:0042EB56j
		mov	edx, [ebp-10h]
		sub	dword_5DBD30, edx

loc_42EB4A:				; CODE XREF: .text:0042EB3Fj
		mov	ecx, dword_5DBD30
		cmp	ecx, dword_5DBD38
		jg	short loc_42EB41
		cmp	dword_5DBD30, 0
		jge	short loc_42EB69
		xor	edx, edx
		mov	dword_5DBD30, edx

loc_42EB69:				; CODE XREF: .text:0042EB5Fj
		and	dword_5DBD2C, eax
		mov	ecx, dword_5DBD30
		cmp	ecx, dword_5DBD2C
		jge	short loc_42EB89
		mov	edx, dword_5DBD30
		mov	dword_5DBD2C, edx

loc_42EB89:				; CODE XREF: .text:0042EB2Bj
					; .text:0042EB7Bj
		and	dword_5DBD28, eax
		jmp	short loc_42EB9A
; ---------------------------------------------------------------------------

loc_42EB91:				; CODE XREF: .text:0042EBA6j
		mov	eax, [ebp-10h]
		sub	dword_5DBD28, eax

loc_42EB9A:				; CODE XREF: .text:0042EB8Fj
		mov	ecx, dword_5DBD28
		cmp	ecx, dword_5DBD38
		jg	short loc_42EB91
		cmp	dword_5DBD28, 0
		jge	short loc_42EBB8
		xor	eax, eax
		mov	dword_5DBD28, eax

loc_42EBB8:				; CODE XREF: .text:0042EAD6j
					; .text:0042EBAFj
		mov	dword_5DBD34, 0FFFFFFFFh
		mov	edx, [ebp-0Ch]
		mov	g_dialog.focus,	edx
		mov	dword_5DBD20, edx
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42EBE0:				; CODE XREF: .text:0042E9F6j
		mov	ecx, dword_5DBD20
		cmp	ecx, [ebp-0Ch]
		jnz	short loc_42EBF7
		call	DestroyCaret
		xor	eax, eax
		mov	g_dialog.focus,	eax

loc_42EBF7:				; CODE XREF: .text:0042EBE9j
		mov	edx, [ebp-54h]
		push	edx		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42EC06:				; CODE XREF: .text:0042EA38j
		call	GetCapture
		cmp	eax, [ebp+8]
		jnz	loc_43069A

loc_42EC14:				; CODE XREF: .text:0042EA3Fj
		cmp	dword ptr [ebp-0Ch], 7D2h
		jz	short loc_42EC26
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42EC65

loc_42EC26:				; CODE XREF: .text:0042EC1Bj
		movsx	eax, word ptr [ebp+14h]
		mov	edx, g_dialog.fixdx
		sar	edx, 1
		jns	short loc_42EC37
		adc	edx, 0

loc_42EC37:				; CODE XREF: .text:0042EC32j
		add	eax, edx
		mov	ecx, [ebp-14h]
		shl	ecx, 0Ah
		add	eax, ecx
		add	eax, 0FFFFFFFDh
		cdq
		idiv	dword ptr [ebp-14h]
		mov	ebx, eax
		add	ebx, 0FFFFFC00h
		imul	ebx, [ebp-10h]
		add	ebx, dword_5DBD24
		mov	dword_5DBD28, ebx
		jmp	loc_42ED30
; ---------------------------------------------------------------------------

loc_42EC65:				; CODE XREF: .text:0042EC24j
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42ECB4
		movsx	eax, word ptr [ebp+14h]
		mov	edx, g_dialog.fixdx
		sar	edx, 1
		jns	short loc_42EC7F
		adc	edx, 0

loc_42EC7F:				; CODE XREF: .text:0042EC7Aj
		add	eax, edx
		mov	ecx, [ebp-14h]
		shl	ecx, 0Ah
		add	eax, ecx
		add	eax, 0FFFFFFFDh
		cdq
		idiv	dword ptr [ebp-14h]
		mov	ebx, eax
		add	ebx, 0FFFFFC00h
		mov	eax, dword_5DBD24
		push	eax
		call	loc_428208
		pop	ecx
		add	ebx, eax
		push	ebx
		call	loc_4281CC
		pop	ecx
		mov	dword_5DBD28, eax
		jmp	short loc_42ED30
; ---------------------------------------------------------------------------

loc_42ECB4:				; CODE XREF: .text:0042EC6Cj
		movsx	eax, word ptr [ebp+14h]
		mov	edx, g_dialog.fixdx
		lea	edx, [edx+edx*2]
		test	edx, edx
		jns	short loc_42ECC8
		add	edx, 3

loc_42ECC8:				; CODE XREF: .text:0042ECC3j
		sar	edx, 2
		mov	ecx, [ebp-14h]
		shl	ecx, 0Ah
		add	eax, edx
		add	eax, ecx
		add	eax, 0FFFFFFFDh
		cdq
		idiv	dword ptr [ebp-14h]
		mov	ebx, eax
		add	ebx, 0FFFFFC00h
		test	ebx, ebx
		jge	short loc_42ECEC
		xor	ebx, ebx
		jmp	short loc_42ECF4
; ---------------------------------------------------------------------------

loc_42ECEC:				; CODE XREF: .text:0042ECE6j
		cmp	ebx, [ebp-18h]
		jle	short loc_42ECF4
		mov	ebx, [ebp-18h]

loc_42ECF4:				; CODE XREF: .text:0042ECEAj
					; .text:0042ECEFj
		mov	eax, [ebp+14h]
		mov	edx, g_dialog.fixdy
		shr	eax, 10h
		and	ax, 0FFFFh
		add	ebx, dword_5DBD24
		movsx	eax, ax
		shl	edx, 0Ah
		add	eax, edx
		add	eax, 0FFFFFFFDh
		cdq
		idiv	g_dialog.fixdy
		mov	esi, eax
		add	esi, 0FFFFFC00h
		imul	esi, [ebp-18h]
		add	ebx, esi
		mov	dword_5DBD28, ebx

loc_42ED30:				; CODE XREF: .text:0042EC60j
					; .text:0042ECB2j
		cmp	dword_5DBD28, 0
		jge	short loc_42ED42
		xor	eax, eax
		mov	dword_5DBD28, eax
		jmp	short loc_42ED62
; ---------------------------------------------------------------------------

loc_42ED42:				; CODE XREF: .text:0042ED37j
		mov	edx, dword_5DBD38
		cmp	edx, dword_5DBD28
		jge	short loc_42ED62
		mov	ecx, [ebp-10h]
		dec	ecx
		not	ecx
		and	ecx, dword_5DBD38
		mov	dword_5DBD28, ecx

loc_42ED62:				; CODE XREF: .text:0042ED40j
					; .text:0042ED4Ej
		cmp	dword ptr [ebp+0Ch], 201h
		jnz	short loc_42ED93
		mov	eax, dword_5DBD28
		mov	dword_5DBD34, eax
		mov	dword_5DBD30, eax
		mov	dword_5DBD2C, eax
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	SetFocus
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	SetCapture
		jmp	short loc_42EDE4
; ---------------------------------------------------------------------------

loc_42ED93:				; CODE XREF: .text:0042ED69j
		cmp	dword_5DBD34, 0FFFFFFFFh
		jnz	short loc_42EDA6
		mov	eax, dword_5DBD28
		mov	dword_5DBD34, eax

loc_42EDA6:				; CODE XREF: .text:0042ED9Aj
		mov	edx, dword_5DBD34
		cmp	edx, dword_5DBD28
		jle	short loc_42EDCC
		mov	ecx, dword_5DBD28
		mov	dword_5DBD2C, ecx
		mov	eax, dword_5DBD34
		mov	dword_5DBD30, eax
		jmp	short loc_42EDE4
; ---------------------------------------------------------------------------

loc_42EDCC:				; CODE XREF: .text:0042EDB2j
		mov	edx, dword_5DBD34
		mov	dword_5DBD2C, edx
		mov	ecx, dword_5DBD28
		mov	dword_5DBD30, ecx

loc_42EDE4:				; CODE XREF: .text:0042ED91j
					; .text:0042EDCAj
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42EDF3:				; CODE XREF: .text:0042EA46j
		call	GetCapture
		cmp	eax, [ebp+8]
		jnz	loc_43069A
		call	ReleaseCapture
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	InvalidateRect
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42EE18:				; CODE XREF: .text:0042EA2Cj
		call	GetCapture
		cmp	eax, [ebp+8]
		jnz	short loc_42EE27
		call	ReleaseCapture

loc_42EE27:				; CODE XREF: .text:0042EE20j
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	SetFocus
		lea	eax, [ebp-4Ch]
		push	eax		; lpPoint
		call	GetCursorPos
		push	26Ch		; n
		push	0		; c
		lea	edx, [ebp-8E0h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [ebp+8]
		mov	[ebp-6B4h], ecx
		push	offset stru_52497C ; int
		mov	eax, [ebp-48h]	; int
		push	eax		; y
		mov	edx, [ebp-4Ch]	; int
		push	edx		; x
		lea	ecx, [ebp-8E0h]	; int
		push	ecx		; int
		call	loc_4252B0
		add	esp, 10h
		test	eax, eax
		jz	loc_43069A
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42EE8B:				; CODE XREF: .text:0042E9EAj
		mov	eax, 81h
		jmp	loc_4306CC
; ---------------------------------------------------------------------------

loc_42EE95:				; CODE XREF: .text:0042E9DCj
		cmp	dword ptr [ebp+10h], 60h
		jb	short loc_42EEBB
		cmp	dword ptr [ebp+10h], 69h
		ja	short loc_42EEBB
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		mov	eax, [ebp+0Ch]
		push	eax		; Msg
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	DefWindowProcW
		jmp	loc_4306CC
; ---------------------------------------------------------------------------

loc_42EEBB:				; CODE XREF: .text:0042EE99j
					; .text:0042EE9Fj
		push	26Ch		; n
		push	0		; c
		lea	ecx, [ebp-8E0h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebp+8]
		mov	[ebp-6B4h], eax
		mov	edx, [ebp+14h]
		push	edx		; __int16
		lea	edx, [ebp-8E0h]
		mov	ecx, [ebp+10h]
		push	ecx		; uVirtKey
		mov	eax, [ebp+0Ch]
		push	eax		; int
		push	offset stru_52497C ; int
		push	edx		; int
		call	loc_424850
		add	esp, 14h
		test	eax, eax
		jz	loc_43069A
		mov	ecx, [ebp-54h]
		push	ecx		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42EF11:				; CODE XREF: .text:0042EA10j
		push	10h		; nVirtKey
		call	GetKeyState
		movsx	eax, ax
		and	eax, 8000h
		mov	[ebp-1Ch], eax
		push	11h		; nVirtKey
		call	GetKeyState
		movsx	edx, ax
		and	edx, 8000h
		mov	[ebp-20h], edx
		xor	esi, esi
		cmp	dword ptr [ebp-0Ch], 7D6h
		jnz	short loc_42EF76
		mov	eax, [ebp-8F4h]
		sub	eax, [ebp-8FCh]
		cdq
		idiv	g_dialog.fixdy
		mov	[ebp-60h], eax
		mov	dword ptr [ebp-64h], 1
		mov	ecx, [ebp-64h]
		cmp	ecx, [ebp-60h]
		jle	short loc_42EF6B
		lea	eax, [ebp-64h]
		jmp	short loc_42EF6E
; ---------------------------------------------------------------------------

loc_42EF6B:				; CODE XREF: .text:0042EF64j
		lea	eax, [ebp-60h]

loc_42EF6E:				; CODE XREF: .text:0042EF69j
		mov	edi, [eax]
		imul	edi, [ebp-18h]
		jmp	short loc_42EF78
; ---------------------------------------------------------------------------

loc_42EF76:				; CODE XREF: .text:0042EF3Fj
		xor	edi, edi

loc_42EF78:				; CODE XREF: .text:0042EF74j
		cmp	dword ptr [ebp+10h], 26h
		jnz	short loc_42EFCE
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_42EFCE
		cmp	dword ptr [ebp-0Ch], 7D2h
		jnz	short loc_42EF94
		mov	ebx, 7D6h
		jmp	short loc_42EFB9
; ---------------------------------------------------------------------------

loc_42EF94:				; CODE XREF: .text:0042EF8Bj
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42EFA4
		mov	ebx, 7D2h
		jmp	short loc_42EFB9
; ---------------------------------------------------------------------------

loc_42EFA4:				; CODE XREF: .text:0042EF9Bj
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42EFB4
		mov	ebx, 7D4h
		jmp	short loc_42EFB9
; ---------------------------------------------------------------------------

loc_42EFB4:				; CODE XREF: .text:0042EFABj
		mov	ebx, 7D5h

loc_42EFB9:				; CODE XREF: .text:0042EF92j
					; .text:0042EFA2j ...
		push	ebx		; nIDDlgItem
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42EFCE:				; CODE XREF: .text:0042EF7Cj
					; .text:0042EF82j
		cmp	dword ptr [ebp+10h], 28h
		jnz	short loc_42F024
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_42F024
		cmp	dword ptr [ebp-0Ch], 7D2h
		jnz	short loc_42EFEA
		mov	ebx, 7D4h
		jmp	short loc_42F00F
; ---------------------------------------------------------------------------

loc_42EFEA:				; CODE XREF: .text:0042EFE1j
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42EFFA
		mov	ebx, 7D5h
		jmp	short loc_42F00F
; ---------------------------------------------------------------------------

loc_42EFFA:				; CODE XREF: .text:0042EFF1j
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42F00A
		mov	ebx, 7D6h
		jmp	short loc_42F00F
; ---------------------------------------------------------------------------

loc_42F00A:				; CODE XREF: .text:0042F001j
		mov	ebx, 7D2h

loc_42F00F:				; CODE XREF: .text:0042EFE8j
					; .text:0042EFF8j ...
		push	ebx		; nIDDlgItem
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F024:				; CODE XREF: .text:0042EFD2j
					; .text:0042EFD8j
		cmp	dword ptr [ebp+10h], 25h
		jnz	short loc_42F032
		or	esi, 0FFFFFFFFh
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F032:				; CODE XREF: .text:0042F028j
		cmp	dword ptr [ebp+10h], 27h
		jnz	short loc_42F042
		mov	esi, 1
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F042:				; CODE XREF: .text:0042F036j
		cmp	dword ptr [ebp+10h], 26h
		jnz	short loc_42F069
		cmp	dword ptr [ebp-0Ch], 7D6h
		jnz	short loc_42F069
		mov	eax, dword_5DBD28
		cmp	eax, [ebp-18h]
		jl	loc_43069A
		mov	esi, [ebp-18h]
		neg	esi
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F069:				; CODE XREF: .text:0042F046j
					; .text:0042F04Fj
		cmp	dword ptr [ebp+10h], 28h
		jnz	short loc_42F098
		cmp	dword ptr [ebp-0Ch], 7D6h
		jnz	short loc_42F098
		mov	eax, dword_5DBD38
		cdq
		idiv	dword ptr [ebp-18h]
		imul	dword ptr [ebp-18h]
		cmp	eax, dword_5DBD28
		jle	loc_43069A
		mov	esi, [ebp-18h]
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F098:				; CODE XREF: .text:0042F06Dj
					; .text:0042F076j
		cmp	dword ptr [ebp+10h], 24h
		jnz	short loc_42F0AA
		xor	eax, eax
		mov	dword_5DBD28, eax
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F0AA:				; CODE XREF: .text:0042F09Cj
		cmp	dword ptr [ebp+10h], 23h
		jnz	short loc_42F0C1
		mov	edx, dword_5DBD38
		mov	dword_5DBD28, edx
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F0C1:				; CODE XREF: .text:0042F0AEj
		cmp	dword ptr [ebp+10h], 21h
		jnz	short loc_42F0D4
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_42F0D4
		sub	esi, edi
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F0D4:				; CODE XREF: .text:0042F0C5j
					; .text:0042F0CBj
		cmp	dword ptr [ebp+10h], 22h
		jnz	short loc_42F0E7
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_42F0E7
		add	esi, edi
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F0E7:				; CODE XREF: .text:0042F0D8j
					; .text:0042F0DEj
		cmp	dword ptr [ebp+10h], 21h
		jnz	short loc_42F100
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_42F100
		xor	ecx, ecx
		mov	dword_5DBD28, ecx
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F100:				; CODE XREF: .text:0042F0EBj
					; .text:0042F0F1j
		cmp	dword ptr [ebp+10h], 22h
		jnz	short loc_42F11B
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_42F11B
		mov	eax, dword_5DBD38
		mov	dword_5DBD28, eax
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F11B:				; CODE XREF: .text:0042F104j
					; .text:0042F10Aj
		cmp	dword ptr [ebp+10h], 2Dh
		jnz	short loc_42F172
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_42F13E
		push	0		; lParam
		push	0		; wParam
		push	301h		; Msg
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	loc_42E8AC
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F13E:				; CODE XREF: .text:0042F125j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_42F15B
		push	0		; lParam
		push	0		; wParam
		push	302h		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	loc_42E8AC
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F15B:				; CODE XREF: .text:0042F142j
		cmp	dword_5DBD3C, 0
		setz	al
		and	eax, 1
		mov	dword_5DBD3C, eax
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F172:				; CODE XREF: .text:0042F11Fj
		cmp	dword ptr [ebp+10h], 2Eh
		jz	short loc_42F182
		cmp	dword ptr [ebp+10h], 8
		jnz	loc_42F264

loc_42F182:				; CODE XREF: .text:0042F176j
		cmp	dword_5DBD3C, 0
		jnz	short loc_42F19E
		or	esi, 0FFFFFFFFh
		cmp	dword ptr [ebp+10h], 8
		jz	loc_42F2BA
		inc	esi
		jmp	loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F19E:				; CODE XREF: .text:0042F189j
		mov	eax, dword_5DBD30
		cmp	eax, dword_5DBD2C
		jg	short loc_42F20F
		cmp	dword ptr [ebp+10h], 2Eh
		jnz	short loc_42F1DD
		mov	edx, dword_5DBD38
		sub	edx, [ebp-10h]
		cmp	edx, dword_5DBD28
		jl	short loc_42F1DD
		mov	ecx, dword_5DBD28
		mov	dword_5DBD2C, ecx
		mov	eax, dword_5DBD28
		add	eax, [ebp-10h]
		mov	dword_5DBD30, eax
		jmp	short loc_42F20F
; ---------------------------------------------------------------------------

loc_42F1DD:				; CODE XREF: .text:0042F1AFj
					; .text:0042F1C0j
		cmp	dword ptr [ebp+10h], 8
		jnz	loc_43069A
		mov	edx, dword_5DBD28
		cmp	edx, [ebp-10h]
		jl	loc_43069A
		mov	ecx, dword_5DBD28
		sub	ecx, [ebp-10h]
		mov	dword_5DBD2C, ecx
		mov	eax, dword_5DBD28
		mov	dword_5DBD30, eax

loc_42F20F:				; CODE XREF: .text:0042F1A9j
					; .text:0042F1DBj
		mov	edx, dword_5DBD38
		mov	ecx, dword_5DBD30
		sub	edx, dword_5DBD30
		mov	eax, dword_5DBD2C
		push	edx
		push	ecx
		push	eax
		call	loc_428090
		mov	edx, dword_5DBD30
		add	esp, 0Ch
		sub	edx, dword_5DBD2C
		xor	esi, esi
		sub	dword_5DBD38, edx
		xor	eax, eax
		mov	ecx, dword_5DBD2C
		mov	[ebp-1Ch], eax
		mov	dword_5DBD28, ecx
		mov	dword_5DBD34, ecx
		mov	dword_5DBD30, ecx
		jmp	short loc_42F2BA
; ---------------------------------------------------------------------------

loc_42F264:				; CODE XREF: .text:0042F17Cj
		push	26Ch		; n
		push	0		; c
		lea	edx, [ebp-8E0h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [ebp+8]
		mov	[ebp-6B4h], ecx
		mov	eax, [ebp+14h]
		push	eax		; __int16
		lea	eax, [ebp-8E0h]
		mov	edx, [ebp+10h]
		push	edx		; uVirtKey
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		push	offset stru_52497C ; int
		push	eax		; int
		call	loc_424850
		add	esp, 14h
		test	eax, eax
		jz	loc_43069A
		mov	edx, [ebp-54h]
		push	edx		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F2BA:				; CODE XREF: .text:0042F02Dj
					; .text:0042F03Dj ...
		cmp	dword_5DBD34, 0FFFFFFFFh
		jnz	short loc_42F2CF
		mov	ecx, dword_5DBD28
		mov	dword_5DBD34, ecx

loc_42F2CF:				; CODE XREF: .text:0042F2C1j
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42F2F4
		mov	eax, dword_5DBD28
		push	eax
		call	loc_428208
		pop	ecx
		add	esi, eax
		push	esi
		call	loc_4281CC
		pop	ecx
		mov	dword_5DBD28, eax
		jmp	short loc_42F30C
; ---------------------------------------------------------------------------

loc_42F2F4:				; CODE XREF: .text:0042F2D6j
		imul	esi, [ebp-10h]
		add	esi, dword_5DBD28
		mov	edx, [ebp-10h]
		dec	edx
		not	edx
		and	esi, edx
		mov	dword_5DBD28, esi

loc_42F30C:				; CODE XREF: .text:0042F2F2j
		cmp	dword_5DBD28, 0
		jge	short loc_42F31F
		xor	ecx, ecx
		mov	dword_5DBD28, ecx
		jmp	short loc_42F33E
; ---------------------------------------------------------------------------

loc_42F31F:				; CODE XREF: .text:0042F313j
		mov	eax, dword_5DBD38
		cmp	eax, dword_5DBD28
		jge	short loc_42F33E
		mov	edx, [ebp-10h]
		dec	edx
		not	edx
		and	edx, dword_5DBD38
		mov	dword_5DBD28, edx

loc_42F33E:				; CODE XREF: .text:0042F31Dj
					; .text:0042F32Aj
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_42F35E
		mov	ecx, dword_5DBD28
		mov	dword_5DBD30, ecx
		mov	dword_5DBD2C, ecx
		mov	dword_5DBD34, ecx
		jmp	short loc_42F39B
; ---------------------------------------------------------------------------

loc_42F35E:				; CODE XREF: .text:0042F342j
		mov	eax, dword_5DBD34
		cmp	eax, dword_5DBD28
		jle	short loc_42F383
		mov	edx, dword_5DBD28
		mov	dword_5DBD2C, edx
		mov	eax, dword_5DBD34
		mov	dword_5DBD30, eax
		jmp	short loc_42F39B
; ---------------------------------------------------------------------------

loc_42F383:				; CODE XREF: .text:0042F369j
		mov	edx, dword_5DBD34
		mov	dword_5DBD2C, edx
		mov	ecx, dword_5DBD28
		mov	dword_5DBD30, ecx

loc_42F39B:				; CODE XREF: .text:0042F35Cj
					; .text:0042F381j
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F3AA:				; CODE XREF: .text:0042EA19j
		push	11h		; nVirtKey
		call	GetKeyState
		test	ah, 80h
		jnz	loc_43069A
		cmp	dword ptr [ebp+10h], 8
		jz	loc_43069A
		cmp	dword ptr [ebp-0Ch], 7D2h
		jnz	short loc_42F3FE
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		lea	edx, [ebp-474h]
		push	400h		; cbMultiByte
		push	edx		; lpMultiByteStr
		lea	ecx, [ebp+10h]
		push	1		; cchWideChar
		push	ecx		; lpWideCharStr
		mov	eax, asciicodepage
		push	0		; dwFlags
		push	eax		; CodePage
		call	WideCharToMultiByte
		mov	edi, eax
		dec	edi
		jnz	loc_43069A
		jmp	loc_42F490
; ---------------------------------------------------------------------------

loc_42F3FE:				; CODE XREF: .text:0042F3CBj
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42F43C
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		lea	eax, [ebp-474h]
		push	400h		; cbMultiByte
		push	eax		; lpMultiByteStr
		lea	edx, [ebp+10h]
		push	1		; cchWideChar
		push	edx		; lpWideCharStr
		mov	ecx, mbcscodepage
		push	0		; dwFlags
		push	ecx		; CodePage
		call	WideCharToMultiByte
		add	eax, eax
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jz	loc_43069A
		jmp	short loc_42F490
; ---------------------------------------------------------------------------

loc_42F43C:				; CODE XREF: .text:0042F405j
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42F45C
		push	2		; n
		lea	eax, [ebp+10h]
		push	eax		; src
		lea	edx, [ebp-474h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_42F490
; ---------------------------------------------------------------------------

loc_42F45C:				; CODE XREF: .text:0042F443j
		cmp	dword ptr [ebp-0Ch], 7D6h
		jnz	short loc_42F490
		test	byte ptr g_dialog.mode+3, 1
		jz	short loc_42F478
		cmp	dword ptr [ebp+10h], 3Fh
		jz	loc_43069A

loc_42F478:				; CODE XREF: .text:0042F46Cj
		mov	ecx, [ebp+10h]
		push	ecx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_42F490
		cmp	dword ptr [ebp+10h], 3Fh
		jnz	loc_43069A

loc_42F490:				; CODE XREF: .text:0042F3F9j
					; .text:0042F43Aj ...
		cmp	dword_5DBD3C, 0
		jz	short loc_42F4F2
		mov	eax, dword_5DBD30
		cmp	eax, dword_5DBD2C
		jle	short loc_42F4F2
		mov	edx, dword_5DBD38
		mov	ecx, dword_5DBD30
		sub	edx, dword_5DBD30
		mov	eax, dword_5DBD2C
		push	edx
		push	ecx
		push	eax
		call	loc_428090
		add	esp, 0Ch
		mov	edx, dword_5DBD30
		sub	edx, dword_5DBD2C
		sub	dword_5DBD38, edx
		mov	ecx, dword_5DBD2C
		mov	dword_5DBD28, ecx
		mov	dword_5DBD34, ecx
		mov	dword_5DBD30, ecx

loc_42F4F2:				; CODE XREF: .text:0042F497j
					; .text:0042F4A4j
		mov	edi, 800h
		mov	eax, dword_5DA918
		add	eax, eax
		cmp	edi, eax
		jle	short loc_42F50A
		mov	edi, dword_5DA918
		add	edi, edi

loc_42F50A:				; CODE XREF: .text:0042F500j
		cmp	dword_5BE238, 0
		jz	short loc_42F52F
		test	byte ptr g_dialog.mode+1, 10h
		jnz	short loc_42F52F
		mov	eax, dword_5DA914
		add	eax, eax
		cmp	edi, eax
		jle	short loc_42F52F
		mov	edi, dword_5DA914
		add	edi, edi

loc_42F52F:				; CODE XREF: .text:0042F511j
					; .text:0042F51Aj ...
		mov	eax, dword_5DBD28
		add	eax, [ebp-10h]
		cmp	edi, eax
		jl	loc_43069A
		cmp	dword_5DBD3C, 0
		jz	short loc_42F58C
		mov	edx, dword_5DBD38
		add	edx, [ebp-10h]
		cmp	edi, edx
		jge	short loc_42F55E
		sub	edi, [ebp-10h]
		mov	dword_5DBD38, edi

loc_42F55E:				; CODE XREF: .text:0042F553j
		mov	ecx, dword_5DBD38
		mov	eax, dword_5DBD28
		sub	ecx, dword_5DBD28
		mov	edx, dword_5DBD28
		push	ecx
		push	eax
		add	edx, [ebp-10h]
		push	edx
		call	loc_428090
		add	esp, 0Ch
		mov	ecx, [ebp-10h]
		add	dword_5DBD38, ecx

loc_42F58C:				; CODE XREF: .text:0042F546j
		cmp	dword ptr [ebp-0Ch], 7D6h
		jnz	loc_42F6D5
		cmp	dword ptr [ebp+10h], 30h
		jb	short loc_42F5AD
		cmp	dword ptr [ebp+10h], 39h
		ja	short loc_42F5AD
		mov	esi, [ebp+10h]
		sub	esi, 30h
		jmp	short loc_42F5E7
; ---------------------------------------------------------------------------

loc_42F5AD:				; CODE XREF: .text:0042F59Dj
					; .text:0042F5A3j
		cmp	dword ptr [ebp+10h], 41h
		jb	short loc_42F5C4
		cmp	dword ptr [ebp+10h], 46h
		ja	short loc_42F5C4
		mov	esi, [ebp+10h]
		sub	esi, 41h
		add	esi, 0Ah
		jmp	short loc_42F5E7
; ---------------------------------------------------------------------------

loc_42F5C4:				; CODE XREF: .text:0042F5B1j
					; .text:0042F5B7j
		cmp	dword ptr [ebp+10h], 61h
		jb	short loc_42F5DB
		cmp	dword ptr [ebp+10h], 66h
		ja	short loc_42F5DB
		mov	esi, [ebp+10h]
		sub	esi, 61h
		add	esi, 0Ah
		jmp	short loc_42F5E7
; ---------------------------------------------------------------------------

loc_42F5DB:				; CODE XREF: .text:0042F5C8j
					; .text:0042F5CEj
		xor	esi, esi
		test	byte ptr g_dialog.mode+3, 1
		jnz	short loc_42F5E7
		dec	esi

loc_42F5E7:				; CODE XREF: .text:0042F5ABj
					; .text:0042F5C2j ...
		test	byte ptr dword_5DBD28, 1
		jnz	short loc_42F661
		mov	eax, dword_5DBD28
		sar	eax, 1
		jns	short loc_42F5FC
		adc	eax, 0

loc_42F5FC:				; CODE XREF: .text:0042F5F7j
		mov	dl, byte ptr sel0[eax]
		and	dl, 0Fh
		test	esi, esi
		jl	short loc_42F610
		mov	ecx, esi
		shl	ecx, 4
		jmp	short loc_42F612
; ---------------------------------------------------------------------------

loc_42F610:				; CODE XREF: .text:0042F607j
		xor	ecx, ecx

loc_42F612:				; CODE XREF: .text:0042F60Ej
		and	cl, 0F0h
		or	dl, cl
		mov	eax, dword_5DBD28
		sar	eax, 1
		jns	short loc_42F623
		adc	eax, 0

loc_42F623:				; CODE XREF: .text:0042F61Ej
		mov	byte ptr sel0[eax], dl
		mov	edx, dword_5DBD28
		sar	edx, 1
		jns	short loc_42F636
		adc	edx, 0

loc_42F636:				; CODE XREF: .text:0042F631j
		mov	al, byte_5DAD1C[edx]
		and	al, 0Fh
		mov	dl, 0F0h
		test	esi, esi
		jge	short loc_42F64A
		add	edx, 0FFFFFF10h

loc_42F64A:				; CODE XREF: .text:0042F642j
		or	al, dl
		mov	ecx, dword_5DBD28
		sar	ecx, 1
		jns	short loc_42F659
		adc	ecx, 0

loc_42F659:				; CODE XREF: .text:0042F654j
		mov	byte_5DAD1C[ecx], al
		jmp	short loc_42F6CA
; ---------------------------------------------------------------------------

loc_42F661:				; CODE XREF: .text:0042F5EEj
		mov	eax, dword_5DBD28
		sar	eax, 1
		jns	short loc_42F66D
		adc	eax, 0

loc_42F66D:				; CODE XREF: .text:0042F668j
		mov	dl, byte ptr sel0[eax]
		and	dl, 0F0h
		test	esi, esi
		jl	short loc_42F67E
		mov	ecx, esi
		jmp	short loc_42F680
; ---------------------------------------------------------------------------

loc_42F67E:				; CODE XREF: .text:0042F678j
		xor	ecx, ecx

loc_42F680:				; CODE XREF: .text:0042F67Cj
		and	cl, 0Fh
		or	dl, cl
		mov	eax, dword_5DBD28
		sar	eax, 1
		jns	short loc_42F691
		adc	eax, 0

loc_42F691:				; CODE XREF: .text:0042F68Cj
		mov	byte ptr sel0[eax], dl
		mov	edx, dword_5DBD28
		sar	edx, 1
		jns	short loc_42F6A4
		adc	edx, 0

loc_42F6A4:				; CODE XREF: .text:0042F69Fj
		mov	al, byte_5DAD1C[edx]
		and	al, 0F0h
		mov	dl, 0Fh
		test	esi, esi
		jge	short loc_42F6B5
		add	edx, 0FFFFFFF1h

loc_42F6B5:				; CODE XREF: .text:0042F6B0j
		or	al, dl
		mov	ecx, dword_5DBD28
		sar	ecx, 1
		jns	short loc_42F6C4
		adc	ecx, 0

loc_42F6C4:				; CODE XREF: .text:0042F6BFj
		mov	byte_5DAD1C[ecx], al

loc_42F6CA:				; CODE XREF: .text:0042F65Fj
		mov	eax, [ebp-10h]
		add	dword_5DBD28, eax
		jmp	short loc_42F719
; ---------------------------------------------------------------------------

loc_42F6D5:				; CODE XREF: .text:0042F593j
		xor	ebx, ebx
		lea	eax, [ebp-474h]
		mov	[ebp-70h], eax
		jmp	short loc_42F70B
; ---------------------------------------------------------------------------

loc_42F6E2:				; CODE XREF: .text:0042F717j
		mov	edx, [ebp-70h]
		mov	cl, [edx]
		mov	eax, dword_5DBD28
		sar	eax, 1
		jns	short loc_42F6F3
		adc	eax, 0

loc_42F6F3:				; CODE XREF: .text:0042F6EEj
		mov	byte ptr sel0[eax], cl
		mov	byte_5DAD1C[eax], 0FFh
		add	dword_5DBD28, 2
		inc	ebx
		inc	dword ptr [ebp-70h]

loc_42F70B:				; CODE XREF: .text:0042F6E0j
		mov	edx, [ebp-10h]
		sar	edx, 1
		jns	short loc_42F715
		adc	edx, 0

loc_42F715:				; CODE XREF: .text:0042F710j
		cmp	ebx, edx
		jl	short loc_42F6E2

loc_42F719:				; CODE XREF: .text:0042F6D3j
		mov	ecx, dword_5DBD28
		cmp	ecx, dword_5DBD38
		jle	short loc_42F731
		mov	eax, dword_5DBD28
		mov	dword_5DBD38, eax

loc_42F731:				; CODE XREF: .text:0042F725j
		mov	edx, dword_5DBD28
		mov	dword_5DBD34, edx
		mov	dword_5DBD30, edx
		mov	dword_5DBD2C, edx
		mov	dword_5DBD48, 1
		call	loc_427D58
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F767:				; CODE XREF: .text:0042EA5Aj
		mov	ecx, dword_5DBD30
		cmp	ecx, dword_5DBD2C
		jle	loc_43069A
		mov	eax, dword_5DBD30
		sub	eax, dword_5DBD2C
		shl	eax, 2
		inc	eax
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		add	edx, edx
		push	edx		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	[ebp-58h], eax
		cmp	dword ptr [ebp-58h], 0
		jnz	short loc_42F7D4
		mov	ecx, [ebp-8]
		add	ecx, ecx
		push	ecx		; arglist
		push	offset aUnableToAllo_3 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_2 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F7D4:				; CODE XREF: .text:0042F7A2j
		mov	eax, [ebp-58h]
		push	eax		; hMem
		call	GlobalLock
		mov	[ebp-44h], eax
		cmp	dword ptr [ebp-44h], 0
		jnz	short loc_42F81F
		mov	edx, [ebp-8]
		add	edx, edx
		push	edx		; arglist
		push	offset aUnableToAllo_3 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_2 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		mov	ecx, [ebp-58h]
		push	ecx		; hMem
		call	GlobalFree
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42F81F:				; CODE XREF: .text:0042F7E4j
		xor	edi, edi
		cmp	dword ptr [ebp-0Ch], 7D2h
		jnz	loc_42F8C1
		mov	ebx, dword_5DBD2C
		lea	eax, [ebp+edi-474h]
		mov	[ebp-70h], eax
		jmp	short loc_42F894
; ---------------------------------------------------------------------------

loc_42F840:				; CODE XREF: .text:0042F89Aj
		mov	edx, [ebp-10h]
		add	edx, ebx
		cmp	edx, dword_5DBD38
		jle	short loc_42F854
		mov	esi, 3Fh
		jmp	short loc_42F886
; ---------------------------------------------------------------------------

loc_42F854:				; CODE XREF: .text:0042F84Bj
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42F85D
		adc	eax, 0

loc_42F85D:				; CODE XREF: .text:0042F858j
		cmp	byte_5DAD1C[eax], 0FFh
		jz	short loc_42F86D
		mov	esi, 3Fh
		jmp	short loc_42F886
; ---------------------------------------------------------------------------

loc_42F86D:				; CODE XREF: .text:0042F864j
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42F876
		adc	eax, 0

loc_42F876:				; CODE XREF: .text:0042F871j
		movzx	esi, byte ptr sel0[eax]
		test	esi, esi
		jnz	short loc_42F886
		mov	esi, 2Eh

loc_42F886:				; CODE XREF: .text:0042F852j
					; .text:0042F86Bj ...
		mov	eax, esi
		mov	edx, [ebp-70h]
		mov	[edx], al
		inc	edi
		inc	dword ptr [ebp-70h]
		add	ebx, [ebp-10h]

loc_42F894:				; CODE XREF: .text:0042F83Ej
		cmp	ebx, dword_5DBD30
		jl	short loc_42F840
		mov	ecx, [ebp-8]
		lea	edx, [ebp-474h]
		push	ecx		; cchWideChar
		mov	ecx, asciicodepage
		mov	eax, [ebp-44h]
		push	eax		; lpWideCharStr
		push	edi		; cbMultiByte
		push	edx		; lpMultiByteStr
		push	0		; dwFlags
		push	ecx		; CodePage
		call	MultiByteToWideChar
		mov	edi, eax
		jmp	loc_42FABF
; ---------------------------------------------------------------------------

loc_42F8C1:				; CODE XREF: .text:0042F828j
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42F917
		mov	eax, [ebp-8]
		push	eax		; cchWideChar
		mov	edx, [ebp-44h]
		push	edx		; lpWideCharStr
		mov	ecx, dword_5DBD30
		sar	ecx, 1
		jns	short loc_42F8DF
		adc	ecx, 0

loc_42F8DF:				; CODE XREF: .text:0042F8DAj
		mov	eax, dword_5DBD2C
		sar	eax, 1
		jns	short loc_42F8EB
		adc	eax, 0

loc_42F8EB:				; CODE XREF: .text:0042F8E6j
		sub	ecx, eax
		push	ecx		; cbMultiByte
		mov	edx, dword_5DBD2C
		sar	edx, 1
		jns	short loc_42F8FB
		adc	edx, 0

loc_42F8FB:				; CODE XREF: .text:0042F8F6j
		add	edx, offset sel0
		mov	ecx, mbcscodepage
		push	edx		; lpMultiByteStr
		push	0		; dwFlags
		push	ecx		; CodePage
		call	MultiByteToWideChar
		mov	edi, eax
		jmp	loc_42FABF
; ---------------------------------------------------------------------------

loc_42F917:				; CODE XREF: .text:0042F8C8j
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	loc_42F9C4
		mov	ebx, dword_5DBD2C
		mov	eax, [ebp-44h]
		lea	edx, [eax+edi*2]
		mov	[ebp-70h], edx
		jmp	short loc_42F9B3
; ---------------------------------------------------------------------------

loc_42F935:				; CODE XREF: .text:0042F9B9j
		mov	ecx, [ebp-10h]
		add	ecx, ebx
		cmp	ecx, dword_5DBD38
		jle	short loc_42F949
		mov	esi, 3Fh
		jmp	short loc_42F9A5
; ---------------------------------------------------------------------------

loc_42F949:				; CODE XREF: .text:0042F940j
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42F952
		adc	eax, 0

loc_42F952:				; CODE XREF: .text:0042F94Dj
		cmp	byte_5DAD1C[eax], 0FFh
		jnz	short loc_42F96D
		mov	edx, ebx
		sar	edx, 1
		jns	short loc_42F964
		adc	edx, 0

loc_42F964:				; CODE XREF: .text:0042F95Fj
		cmp	(byte_5DAD1C+1)[edx], 0FFh
		jz	short loc_42F974

loc_42F96D:				; CODE XREF: .text:0042F959j
		mov	esi, 3Fh
		jmp	short loc_42F9A5
; ---------------------------------------------------------------------------

loc_42F974:				; CODE XREF: .text:0042F96Bj
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42F97D
		adc	eax, 0

loc_42F97D:				; CODE XREF: .text:0042F978j
		movzx	esi, sel0[eax]
		test	esi, esi
		jz	short loc_42F9A0
		cmp	esi, 0FFFFh
		jz	short loc_42F9A0
		cmp	esi, 0FEFFh
		jz	short loc_42F9A0
		cmp	esi, 0FFFEh
		jnz	short loc_42F9A5

loc_42F9A0:				; CODE XREF: .text:0042F986j
					; .text:0042F98Ej ...
		mov	esi, 2Eh

loc_42F9A5:				; CODE XREF: .text:0042F947j
					; .text:0042F972j ...
		mov	eax, [ebp-70h]
		mov	[eax], si
		inc	edi
		add	dword ptr [ebp-70h], 2
		add	ebx, [ebp-10h]

loc_42F9B3:				; CODE XREF: .text:0042F933j
		cmp	ebx, dword_5DBD30
		jl	loc_42F935
		jmp	loc_42FABF
; ---------------------------------------------------------------------------

loc_42F9C4:				; CODE XREF: .text:0042F91Ej
		mov	ebx, dword_5DBD2C
		mov	eax, [ebp-44h]
		lea	edx, [eax+edi*2]
		mov	[ebp-70h], edx
		jmp	loc_42FAB3
; ---------------------------------------------------------------------------

loc_42F9D8:				; CODE XREF: .text:0042FAB9j
		test	bl, 1
		jnz	short loc_42FA47
		test	edi, edi
		jle	short loc_42FA14
		mov	eax, ebx
		cdq
		idiv	dword ptr [ebp-18h]
		test	edx, edx
		jnz	short loc_42FA07
		mov	ecx, [ebp-70h]
		mov	word ptr [ecx],	0Dh
		inc	edi
		add	dword ptr [ebp-70h], 2
		mov	eax, [ebp-70h]
		mov	word ptr [eax],	0Ah
		inc	edi
		add	dword ptr [ebp-70h], 2
		jmp	short loc_42FA14
; ---------------------------------------------------------------------------

loc_42FA07:				; CODE XREF: .text:0042F9E9j
		mov	edx, [ebp-70h]
		mov	word ptr [edx],	20h
		inc	edi
		add	dword ptr [ebp-70h], 2

loc_42FA14:				; CODE XREF: .text:0042F9DFj
					; .text:0042FA05j
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42FA1D
		adc	eax, 0

loc_42FA1D:				; CODE XREF: .text:0042FA18j
		xor	edx, edx
		mov	dl, byte_5DAD1C[eax]
		and	edx, 0F0h
		cmp	edx, 0F0h
		jz	short loc_42FA38
		or	esi, 0FFFFFFFFh
		jmp	short loc_42FA78
; ---------------------------------------------------------------------------

loc_42FA38:				; CODE XREF: .text:0042FA31j
		movzx	esi, byte ptr sel0[eax]
		sar	esi, 4
		and	esi, 0Fh
		jmp	short loc_42FA78
; ---------------------------------------------------------------------------

loc_42FA47:				; CODE XREF: .text:0042F9DBj
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42FA50
		adc	eax, 0

loc_42FA50:				; CODE XREF: .text:0042FA4Bj
		xor	edx, edx
		mov	dl, byte_5DAD1C[eax]
		and	edx, 0Fh
		cmp	edx, 0Fh
		jz	short loc_42FA65
		or	esi, 0FFFFFFFFh
		jmp	short loc_42FA78
; ---------------------------------------------------------------------------

loc_42FA65:				; CODE XREF: .text:0042FA5Ej
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_42FA6E
		adc	eax, 0

loc_42FA6E:				; CODE XREF: .text:0042FA69j
		movzx	esi, byte ptr sel0[eax]
		and	esi, 0Fh

loc_42FA78:				; CODE XREF: .text:0042FA36j
					; .text:0042FA45j ...
		test	esi, esi
		jge	short loc_42FA8B
		mov	eax, [ebp-70h]
		mov	word ptr [eax],	3Fh
		inc	edi
		add	dword ptr [ebp-70h], 2
		jmp	short loc_42FAB0
; ---------------------------------------------------------------------------

loc_42FA8B:				; CODE XREF: .text:0042FA7Aj
		cmp	esi, 0Ah
		jge	short loc_42FAA1
		add	si, 30h
		mov	edx, [ebp-70h]
		mov	[edx], si
		inc	edi
		add	dword ptr [ebp-70h], 2
		jmp	short loc_42FAB0
; ---------------------------------------------------------------------------

loc_42FAA1:				; CODE XREF: .text:0042FA8Ej
		add	si, 37h
		mov	ecx, [ebp-70h]
		mov	[ecx], si
		inc	edi
		add	dword ptr [ebp-70h], 2

loc_42FAB0:				; CODE XREF: .text:0042FA89j
					; .text:0042FA9Fj
		add	ebx, [ebp-10h]

loc_42FAB3:				; CODE XREF: .text:0042F9D3j
		cmp	ebx, dword_5DBD30
		jl	loc_42F9D8

loc_42FABF:				; CODE XREF: .text:0042F8BCj
					; .text:0042F912j ...
		mov	eax, [ebp-44h]
		mov	word ptr [eax+edi*2], 0
		inc	edi
		mov	edx, [ebp-58h]
		push	edx		; hMem
		call	GlobalUnlock
		push	2		; uFlags
		add	edi, edi
		push	edi		; dwBytes
		mov	ecx, [ebp-58h]
		push	ecx		; hMem
		call	GlobalReAlloc
		mov	[ebp-58h], eax
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_42FB00
		mov	edx, [ebp-58h]
		push	edx		; hMem
		call	GlobalFree
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42FB00:				; CODE XREF: .text:0042FAF0j
		call	EmptyClipboard
		mov	ecx, [ebp-58h]
		push	ecx		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_42FB37
		mov	eax, [ebp-58h]
		push	eax		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		mov	[ebp-5Ch], eax
		cmp	dword ptr [ebp-5Ch], 0
		jz	short loc_42FB37
		mov	edx, [ebp-5Ch]
		push	edx		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_42FB37:				; CODE XREF: .text:0042FB17j
					; .text:0042FB2Aj
		call	CloseClipboard
		cmp	dword ptr [ebp+0Ch], 300h
		jnz	loc_43069A
		push	0		; lParam
		push	2Eh		; wParam
		push	100h		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	loc_42E8AC
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42FB60:				; CODE XREF: .text:0042EA60j
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jz	loc_43069A
		cmp	dword ptr [ebp-0Ch], 7D4h
		jz	short loc_42FB85
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42FBD8

loc_42FB85:				; CODE XREF: .text:0042FB7Aj
		push	0Dh		; uFormat
		call	GetClipboardData
		mov	[ebp-58h], eax
		cmp	dword ptr [ebp-58h], 0
		jz	short loc_42FBDD
		mov	edx, [ebp-58h]
		push	edx		; hMem
		call	GlobalLock
		mov	[ebp-44h], eax
		cmp	dword ptr [ebp-44h], 0
		jz	short loc_42FBDD
		jmp	short loc_42FBC4
; ---------------------------------------------------------------------------

loc_42FBA9:				; CODE XREF: .text:0042FBCBj
		push	0		; lParam
		mov	ecx, [ebp-44h]
		add	dword ptr [ebp-44h], 2
		movzx	eax, word ptr [ecx]
		push	eax		; wParam
		push	102h		; Msg
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	loc_42E8AC

loc_42FBC4:				; CODE XREF: .text:0042FBA7j
		mov	ecx, [ebp-44h]
		cmp	word ptr [ecx],	0
		jnz	short loc_42FBA9
		mov	eax, [ebp-58h]
		push	eax		; hMem
		call	GlobalUnlock
		jmp	short loc_42FBDD
; ---------------------------------------------------------------------------

loc_42FBD8:				; CODE XREF: .text:0042FB83j
		xor	edx, edx
		mov	[ebp-58h], edx

loc_42FBDD:				; CODE XREF: .text:0042FB93j
					; .text:0042FBA5j ...
		cmp	dword ptr [ebp-58h], 0
		jnz	short loc_42FC33
		push	1		; uFormat
		call	GetClipboardData
		mov	[ebp-58h], eax
		cmp	dword ptr [ebp-58h], 0
		jz	short loc_42FC33
		mov	ecx, [ebp-58h]
		push	ecx		; hMem
		call	GlobalLock
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_42FC33
		jmp	short loc_42FC22
; ---------------------------------------------------------------------------

loc_42FC07:				; CODE XREF: .text:0042FC28j
		push	0		; lParam
		mov	eax, [ebp-3Ch]
		inc	dword ptr [ebp-3Ch]
		xor	edx, edx
		mov	dl, [eax]
		push	edx		; wParam
		push	102h		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	loc_42E8AC

loc_42FC22:				; CODE XREF: .text:0042FC05j
		mov	eax, [ebp-3Ch]
		cmp	byte ptr [eax],	0
		jnz	short loc_42FC07
		mov	edx, [ebp-58h]
		push	edx		; hMem
		call	GlobalUnlock

loc_42FC33:				; CODE XREF: .text:0042FBE1j
					; .text:0042FBF1j ...
		call	CloseClipboard
		jmp	loc_43069A
; ---------------------------------------------------------------------------

loc_42FC3D:				; CODE XREF: .text:0042E9FFj
		mov	ecx, [ebp-0Ch]
		cmp	ecx, g_dialog.focus
		jnz	loc_42FD82
		cmp	dword ptr [ebp-0Ch], 7D4h
		mov	ebx, dword_5DBD24
		jnz	short loc_42FCCF
		push	ebx
		call	loc_428208
		pop	ecx
		mov	esi, eax
		mov	eax, dword_5DBD28
		push	eax
		call	loc_428208
		pop	ecx
		mov	[ebp-4], eax
		mov	eax, [ebp-8F8h]
		sub	eax, [ebp-900h]
		add	eax, 0FFFFFFFEh
		cdq
		idiv	dword ptr [ebp-14h]
		mov	edi, eax

loc_42FC88:				; CODE XREF: .text:0042FCAAj
					; .text:0042FCCDj
		cmp	esi, [ebp-4]
		jle	short loc_42FCAC
		test	esi, esi
		jz	loc_42FD6A
		mov	eax, [ebp-18h]
		sar	eax, 1
		jns	short loc_42FC9F
		adc	eax, 0

loc_42FC9F:				; CODE XREF: .text:0042FC9Aj
		sub	esi, eax
		push	esi
		call	loc_4281CC
		pop	ecx
		mov	ebx, eax
		jmp	short loc_42FC88
; ---------------------------------------------------------------------------

loc_42FCAC:				; CODE XREF: .text:0042FC8Bj
		lea	eax, [edi+esi]
		cmp	eax, [ebp-4]
		jg	loc_42FD6A
		mov	edx, [ebp-18h]
		sar	edx, 1
		jns	short loc_42FCC2
		adc	edx, 0

loc_42FCC2:				; CODE XREF: .text:0042FCBDj
		add	esi, edx
		push	esi
		call	loc_4281CC
		pop	ecx
		mov	ebx, eax
		jmp	short loc_42FC88
; ---------------------------------------------------------------------------

loc_42FCCF:				; CODE XREF: .text:0042FC59j
		cmp	dword ptr [ebp-0Ch], 7D2h
		jnz	short loc_42FCF1
		mov	eax, [ebp-8F8h]
		sub	eax, [ebp-900h]
		add	eax, 0FFFFFFFEh
		cdq
		idiv	dword ptr [ebp-14h]
		mov	edi, eax
		add	edi, edi
		jmp	short loc_42FD4C
; ---------------------------------------------------------------------------

loc_42FCF1:				; CODE XREF: .text:0042FCD6j
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42FD14
		mov	eax, [ebp-8F8h]
		sub	eax, [ebp-900h]
		add	eax, 0FFFFFFFEh
		cdq
		idiv	dword ptr [ebp-14h]
		mov	edi, eax
		shl	edi, 2
		jmp	short loc_42FD4C
; ---------------------------------------------------------------------------

loc_42FD14:				; CODE XREF: .text:0042FCF8j
		mov	eax, [ebp-8F4h]
		sub	eax, [ebp-8FCh]
		cdq
		idiv	g_dialog.fixdy
		mov	[ebp-68h], eax
		mov	dword ptr [ebp-6Ch], 1
		mov	ecx, [ebp-6Ch]
		cmp	ecx, [ebp-68h]
		jle	short loc_42FD3E
		lea	eax, [ebp-6Ch]
		jmp	short loc_42FD41
; ---------------------------------------------------------------------------

loc_42FD3E:				; CODE XREF: .text:0042FD37j
		lea	eax, [ebp-68h]

loc_42FD41:				; CODE XREF: .text:0042FD3Cj
		mov	edi, [eax]
		imul	edi, [ebp-18h]
		jmp	short loc_42FD4C
; ---------------------------------------------------------------------------

loc_42FD49:				; CODE XREF: .text:0042FD55j
		add	ebx, [ebp-18h]

loc_42FD4C:				; CODE XREF: .text:0042FCEFj
					; .text:0042FD12j ...
		lea	eax, [edi+ebx]
		cmp	eax, dword_5DBD28
		jle	short loc_42FD49
		jmp	short loc_42FD5C
; ---------------------------------------------------------------------------

loc_42FD59:				; CODE XREF: .text:0042FD62j
		sub	ebx, [ebp-18h]

loc_42FD5C:				; CODE XREF: .text:0042FD57j
		cmp	ebx, dword_5DBD28
		jg	short loc_42FD59
		test	ebx, ebx
		jge	short loc_42FD6A
		xor	ebx, ebx

loc_42FD6A:				; CODE XREF: .text:0042FC8Fj
					; .text:0042FCB2j ...
		cmp	ebx, dword_5DBD24
		jz	short loc_42FD82
		mov	dword_5DBD24, ebx
		mov	eax, [ebp-54h]
		push	eax		; hDlg
		call	loc_427CF8
		pop	ecx

loc_42FD82:				; CODE XREF: .text:0042FC46j
					; .text:0042FD70j
		lea	edx, [ebp-940h]
		push	edx		; lpPaint
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	BeginPaint
		mov	[ebp-50h], eax
		push	8		; UINT
		mov	eax, [ebp-50h]
		push	eax		; HDC
		call	SetTextAlign
		cmp	dword ptr [ebp-0Ch], 7D2h
		jz	short loc_42FDBB
		cmp	dword ptr [ebp-0Ch], 7D4h
		jz	short loc_42FDBB
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_42FDE7

loc_42FDBB:				; CODE XREF: .text:0042FDA7j
					; .text:0042FDB0j
		cmp	g_dialog.isfullunicode,	0
		jnz	short loc_42FDE7
		mov	edx, dword_582DF0
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font.hfont[edx*4]
		push	eax		; HGDIOBJ
		mov	edx, [ebp-50h]
		push	edx		; HDC
		call	SelectObject
		jmp	short loc_42FDF7
; ---------------------------------------------------------------------------

loc_42FDE7:				; CODE XREF: .text:0042FDB9j
					; .text:0042FDC2j
		mov	ecx, g_dialog.fixfont
		push	ecx		; HGDIOBJ
		mov	eax, [ebp-50h]
		push	eax		; HDC
		call	SelectObject

loc_42FDF7:				; CODE XREF: .text:0042FDE5j
		xor	edx, edx
		mov	ecx, [ebp-0Ch]
		cmp	ecx, g_dialog.focus
		jz	short loc_42FE07
		add	edx, 8

loc_42FE07:				; CODE XREF: .text:0042FE02j
		mov	[ebp-24h], edx
		mov	dword ptr [ebp-28h], 0Fh
		mov	dword ptr [ebp-2Ch], 0Ch
		mov	dword ptr [ebp-30h], 7
		push	0		; int
		call	GetStockObject
		push	eax		; hbr
		lea	eax, [ebp-900h]
		push	eax		; lprc
		mov	edx, [ebp-50h]
		push	edx		; hDC
		call	FrameRect
		inc	dword ptr [ebp-900h]
		inc	dword ptr [ebp-8FCh]
		dec	dword ptr [ebp-8F8h]
		dec	dword ptr [ebp-8F4h]
		lea	esi, [ebp-900h]
		lea	edi, [ebp-8F0h]
		mov	ecx, 4
		rep movsd
		cmp	dword ptr [ebp-0Ch], 7D2h
		mov	ebx, dword_5DBD24
		jz	short loc_42FE87
		cmp	dword ptr [ebp-0Ch], 7D4h
		jz	short loc_42FE87
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	loc_430510

loc_42FE87:				; CODE XREF: .text:0042FE6Fj
					; .text:0042FE78j
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_42FEAB
		push	ebx
		call	loc_428208
		pop	ecx
		mov	esi, eax
		push	esi
		call	loc_4281CC
		pop	ecx
		mov	edi, eax
		sar	edi, 1
		jns	short loc_42FEAF
		adc	edi, 0
		jmp	short loc_42FEAF
; ---------------------------------------------------------------------------

loc_42FEAB:				; CODE XREF: .text:0042FE8Ej
		xor	esi, esi
		xor	edi, edi

loc_42FEAF:				; CODE XREF: .text:0042FEA4j
					; .text:0042FEA9j
		lea	eax, byte_5DB51C[esi*2]
		mov	[ebp-74h], eax
		lea	edx, sel1[esi]
		mov	[ebp-70h], edx
		jmp	loc_4302C1
; ---------------------------------------------------------------------------

loc_42FEC7:				; CODE XREF: .text:004302CDj
		mov	ecx, [ebp-8F0h]
		add	ecx, [ebp-14h]
		cmp	ebx, dword_5DBD38
		mov	[ebp-8E8h], ecx
		jl	short loc_42FEF2
		mov	word ptr [ebp-3Eh], 20h
		mov	eax, [ebp-28h]
		mov	[ebp-38h], eax
		mov	[ebp-34h], eax
		jmp	loc_430211
; ---------------------------------------------------------------------------

loc_42FEF2:				; CODE XREF: .text:0042FEDCj
		cmp	dword ptr [ebp-0Ch], 7D2h
		jnz	loc_430024
		mov	edx, dword_5DBD2C
		cmp	edx, dword_5DBD30
		jge	short loc_42FF23
		mov	ecx, [ebp-10h]
		add	ecx, ebx
		dec	ecx
		cmp	ecx, dword_5DBD2C
		jl	short loc_42FF23
		cmp	ebx, dword_5DBD30
		jl	short loc_42FF27

loc_42FF23:				; CODE XREF: .text:0042FF0Bj
					; .text:0042FF19j
		xor	esi, esi
		jmp	short loc_42FF2C
; ---------------------------------------------------------------------------

loc_42FF27:				; CODE XREF: .text:0042FF21j
		mov	esi, 1

loc_42FF2C:				; CODE XREF: .text:0042FF25j
		mov	eax, dword_5DBD38
		dec	eax
		cmp	ebx, eax
		jge	short loc_42FF48
		mov	edx, ebx
		sar	edx, 1
		jns	short loc_42FF3F
		adc	edx, 0

loc_42FF3F:				; CODE XREF: .text:0042FF3Aj
		cmp	byte_5DAD1C[edx], 0FFh
		jz	short loc_42FF68

loc_42FF48:				; CODE XREF: .text:0042FF34j
		mov	word ptr [ebp-3Eh], 3Fh
		mov	ecx, [ebp-2Ch]
		test	esi, esi
		mov	[ebp-34h], ecx
		jz	short loc_42FF5D
		mov	eax, [ebp-24h]
		jmp	short loc_42FF60
; ---------------------------------------------------------------------------

loc_42FF5D:				; CODE XREF: .text:0042FF56j
		mov	eax, [ebp-28h]

loc_42FF60:				; CODE XREF: .text:0042FF5Bj
		mov	[ebp-38h], eax
		jmp	loc_43001C
; ---------------------------------------------------------------------------

loc_42FF68:				; CODE XREF: .text:0042FF46j
		push	100h		; cchWideChar
		lea	edx, [ebp-674h]
		push	edx		; lpWideCharStr
		push	1		; cbMultiByte
		mov	ecx, ebx
		sar	ecx, 1
		jns	short loc_42FF7F
		adc	ecx, 0

loc_42FF7F:				; CODE XREF: .text:0042FF7Aj
		add	ecx, offset sel0
		mov	eax, asciicodepage
		push	ecx		; lpMultiByteStr
		push	0		; dwFlags
		push	eax		; CodePage
		call	MultiByteToWideChar
		dec	eax
		jnz	short loc_42FFA3
		mov	dx, [ebp-674h]
		mov	[ebp-3Eh], dx
		jmp	short loc_42FFB8
; ---------------------------------------------------------------------------

loc_42FFA3:				; CODE XREF: .text:0042FF94j
		mov	ecx, ebx
		sar	ecx, 1
		jns	short loc_42FFAC
		adc	ecx, 0

loc_42FFAC:				; CODE XREF: .text:0042FFA7j
		xor	eax, eax
		mov	al, byte ptr sel0[ecx]
		mov	[ebp-3Eh], ax

loc_42FFB8:				; CODE XREF: .text:0042FFA1j
		test	esi, esi
		jz	short loc_42FFCA
		mov	edx, [ebp-28h]
		mov	[ebp-34h], edx
		mov	ecx, [ebp-24h]
		mov	[ebp-38h], ecx
		jmp	short loc_42FFD6
; ---------------------------------------------------------------------------

loc_42FFCA:				; CODE XREF: .text:0042FFBAj
		mov	eax, [ebp-24h]
		mov	[ebp-34h], eax
		mov	edx, [ebp-28h]
		mov	[ebp-38h], edx

loc_42FFD6:				; CODE XREF: .text:0042FFC8j
		cmp	dword_5BE698, 0
		jz	short loc_42FFED
		mov	cl, [ebp-3Eh]
		push	ecx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_430010

loc_42FFED:				; CODE XREF: .text:0042FFDDj
		cmp	word ptr [ebp-3Eh], 0
		jz	short loc_430010
		cmp	word ptr [ebp-3Eh], 0Ah
		jz	short loc_430010
		cmp	word ptr [ebp-3Eh], 0Dh
		jz	short loc_430010
		cmp	word ptr [ebp-3Eh], 0Ch
		jz	short loc_430010
		cmp	word ptr [ebp-3Eh], 9
		jnz	short loc_43001C

loc_430010:				; CODE XREF: .text:0042FFEBj
					; .text:0042FFF2j ...
		mov	word ptr [ebp-3Eh], 2Eh
		mov	eax, [ebp-30h]
		mov	[ebp-34h], eax

loc_43001C:				; CODE XREF: .text:0042FF63j
					; .text:0043000Ej
		add	ebx, [ebp-10h]

loc_43001F:
		jmp	loc_430211
; ---------------------------------------------------------------------------

loc_430024:				; CODE XREF: .text:0042FEF9j
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	loc_43011C
		mov	edx, [ebp-70h]
		mov	eax, dword_5DBD2C
		cmp	eax, dword_5DBD30

loc_43003F:
		movzx	edx, byte ptr [edx]
		jge	short loc_43005D

loc_430044:
		lea	ecx, [edx+edi]
		add	ecx, ecx
		cmp	ecx, dword_5DBD2C
		jle	short loc_43005D

loc_430051:
		mov	eax, edi
		add	eax, eax

loc_430055:
		cmp	eax, dword_5DBD30
		jl	short loc_430061

loc_43005D:				; CODE XREF: .text:00430042j
					; .text:0043004Fj
		xor	esi, esi
		jmp	short loc_430066
; ---------------------------------------------------------------------------

loc_430061:				; CODE XREF: .text:0043005Bj
		mov	esi, 1

loc_430066:				; CODE XREF: .text:0043005Fj
		xor	eax, eax
		mov	[ebp-4], eax
		lea	eax, byte_5DAD1C[edi]
		cmp	edx, [ebp-4]
		jle	short loc_430084

loc_430076:				; CODE XREF: .text:00430082j
		cmp	byte ptr [eax],	0FFh
		jnz	short loc_430084
		inc	dword ptr [ebp-4]
		inc	eax
		cmp	edx, [ebp-4]
		jg	short loc_430076

loc_430084:				; CODE XREF: .text:00430074j
					; .text:00430079j
		lea	ecx, [edx+edi]
		add	ecx, ecx
		cmp	ecx, dword_5DBD38
		jg	short loc_430096
		cmp	edx, [ebp-4]
		jle	short loc_4300B3

loc_430096:				; CODE XREF: .text:0043008Fj
		mov	word ptr [ebp-3Eh], 3Fh
		mov	eax, [ebp-2Ch]
		test	esi, esi
		mov	[ebp-34h], eax
		jz	short loc_4300AB
		mov	ecx, [ebp-24h]
		jmp	short loc_4300AE
; ---------------------------------------------------------------------------

loc_4300AB:				; CODE XREF: .text:004300A4j
		mov	ecx, [ebp-28h]

loc_4300AE:				; CODE XREF: .text:004300A9j
		mov	[ebp-38h], ecx
		jmp	short loc_43010A
; ---------------------------------------------------------------------------

loc_4300B3:				; CODE XREF: .text:00430094j
		mov	eax, [ebp-74h]
		test	esi, esi
		mov	ax, [eax]
		mov	[ebp-3Eh], ax
		jz	short loc_4300CF
		mov	ecx, [ebp-28h]
		mov	[ebp-34h], ecx
		mov	eax, [ebp-24h]
		mov	[ebp-38h], eax
		jmp	short loc_4300DB
; ---------------------------------------------------------------------------

loc_4300CF:				; CODE XREF: .text:004300BFj
		mov	ecx, [ebp-24h]
		mov	[ebp-34h], ecx
		mov	eax, [ebp-28h]
		mov	[ebp-38h], eax

loc_4300DB:				; CODE XREF: .text:004300CDj
		cmp	word ptr [ebp-3Eh], 0
		jz	short loc_4300FE
		cmp	word ptr [ebp-3Eh], 0Ah
		jz	short loc_4300FE
		cmp	word ptr [ebp-3Eh], 0Dh
		jz	short loc_4300FE
		cmp	word ptr [ebp-3Eh], 0Ch
		jz	short loc_4300FE
		cmp	word ptr [ebp-3Eh], 9
		jnz	short loc_43010A

loc_4300FE:				; CODE XREF: .text:004300E0j
					; .text:004300E7j ...
		mov	word ptr [ebp-3Eh], 2Eh
		mov	ecx, [ebp-30h]
		mov	[ebp-34h], ecx

loc_43010A:				; CODE XREF: .text:004300B1j
					; .text:004300FCj
		add	edi, edx
		add	dword ptr [ebp-74h], 2
		inc	dword ptr [ebp-70h]
		mov	ebx, edi
		add	ebx, ebx
		jmp	loc_430211
; ---------------------------------------------------------------------------

loc_43011C:				; CODE XREF: .text:0043002Bj
		mov	eax, dword_5DBD2C
		cmp	eax, dword_5DBD30
		jge	short loc_43013F
		mov	edx, [ebp-10h]
		add	edx, ebx
		dec	edx
		cmp	edx, dword_5DBD2C
		jl	short loc_43013F
		cmp	ebx, dword_5DBD30
		jl	short loc_430143

loc_43013F:				; CODE XREF: .text:00430127j
					; .text:00430135j
		xor	esi, esi
		jmp	short loc_430148
; ---------------------------------------------------------------------------

loc_430143:				; CODE XREF: .text:0043013Dj
		mov	esi, 1

loc_430148:				; CODE XREF: .text:00430141j
		mov	eax, dword_5DBD38
		add	eax, 0FFFFFFFDh
		cmp	ebx, eax
		jge	short loc_430178
		mov	edx, ebx
		sar	edx, 1
		jns	short loc_43015D
		adc	edx, 0

loc_43015D:				; CODE XREF: .text:00430158j
		cmp	byte_5DAD1C[edx], 0FFh
		jnz	short loc_430178
		mov	ecx, ebx
		sar	ecx, 1
		jns	short loc_43016F
		adc	ecx, 0

loc_43016F:				; CODE XREF: .text:0043016Aj
		cmp	(byte_5DAD1C+1)[ecx], 0FFh
		jz	short loc_430195

loc_430178:				; CODE XREF: .text:00430152j
					; .text:00430164j
		mov	word ptr [ebp-3Eh], 3Fh
		mov	eax, [ebp-2Ch]
		test	esi, esi
		mov	[ebp-34h], eax
		jz	short loc_43018D
		mov	edx, [ebp-24h]
		jmp	short loc_430190
; ---------------------------------------------------------------------------

loc_43018D:				; CODE XREF: .text:00430186j
		mov	edx, [ebp-28h]

loc_430190:				; CODE XREF: .text:0043018Bj
		mov	[ebp-38h], edx
		jmp	short loc_43020E
; ---------------------------------------------------------------------------

loc_430195:				; CODE XREF: .text:00430176j
		mov	eax, ebx
		sar	eax, 1
		jns	short loc_43019E
		adc	eax, 0

loc_43019E:				; CODE XREF: .text:00430199j
		mov	cx, sel0[eax]
		test	esi, esi
		mov	[ebp-3Eh], cx
		jz	short loc_4301BB
		mov	eax, [ebp-28h]
		mov	[ebp-34h], eax
		mov	edx, [ebp-24h]
		mov	[ebp-38h], edx
		jmp	short loc_4301C7
; ---------------------------------------------------------------------------

loc_4301BB:				; CODE XREF: .text:004301ABj
		mov	ecx, [ebp-24h]
		mov	[ebp-34h], ecx
		mov	eax, [ebp-28h]
		mov	[ebp-38h], eax

loc_4301C7:				; CODE XREF: .text:004301B9j
		cmp	word ptr [ebp-3Eh], 0
		jz	short loc_430202
		cmp	word ptr [ebp-3Eh], 0Ah
		jz	short loc_430202
		cmp	word ptr [ebp-3Eh], 0Dh
		jz	short loc_430202
		cmp	word ptr [ebp-3Eh], 0Ch
		jz	short loc_430202
		cmp	word ptr [ebp-3Eh], 9
		jz	short loc_430202
		cmp	word ptr [ebp-3Eh], 0FFFFh
		jz	short loc_430202
		cmp	word ptr [ebp-3Eh], 0FEFFh
		jz	short loc_430202
		cmp	word ptr [ebp-3Eh], 0FFFEh
		jnz	short loc_43020E

loc_430202:				; CODE XREF: .text:004301CCj
					; .text:004301D3j ...
		mov	word ptr [ebp-3Eh], 2Eh
		mov	edx, [ebp-30h]
		mov	[ebp-34h], edx

loc_43020E:				; CODE XREF: .text:00430193j
					; .text:00430200j
		add	ebx, [ebp-10h]

loc_430211:				; CODE XREF: .text:0042FEEDj
					; .text:loc_43001Fj ...
		mov	ecx, [ebp-34h]
		mov	eax, color[ecx*4]
		push	eax		; COLORREF
		mov	edx, [ebp-50h]
		push	edx		; HDC
		call	SetTextColor
		mov	ecx, [ebp-38h]
		mov	eax, color[ecx*4]
		push	eax		; COLORREF
		mov	edx, [ebp-50h]
		push	edx		; HDC
		call	SetBkColor
		mov	ecx, [ebp-8F8h]
		cmp	ecx, [ebp-8E8h]
		jge	short loc_430253
		mov	eax, [ebp-8F8h]
		mov	[ebp-8E8h], eax

loc_430253:				; CODE XREF: .text:00430245j
		push	0		; INT *
		push	1		; UINT
		lea	edx, [ebp-3Eh]
		push	edx		; LPCWSTR
		lea	ecx, [ebp-8F0h]
		push	ecx		; RECT *
		push	6		; UINT
		mov	eax, [ebp-8E4h]
		sub	eax, [ebp-8ECh]
		sub	eax, g_dialog.fixdy
		sar	eax, 1
		jns	short loc_43027D
		adc	eax, 0

loc_43027D:				; CODE XREF: .text:00430278j
		mov	edx, [ebp-8E4h]
		sub	edx, eax
		push	edx		; int
		mov	ecx, [ebp-8F0h]
		push	ecx		; int
		mov	eax, [ebp-50h]
		push	eax		; HDC
		call	ExtTextOutW
		mov	edx, color+1Ch
		push	edx		; COLORREF
		mov	ecx, [ebp-8F4h]
		push	ecx		; int
		mov	eax, [ebp-8E8h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-50h]
		push	edx		; HDC
		call	SetPixel
		mov	ecx, [ebp-8E8h]
		mov	[ebp-8F0h], ecx

loc_4302C1:				; CODE XREF: .text:0042FEC2j
		mov	eax, [ebp-8F0h]
		cmp	eax, [ebp-8F8h]
		jl	loc_42FEC7
		jmp	loc_430522
; ---------------------------------------------------------------------------

loc_4302D8:				; CODE XREF: .text:0043051Cj
		mov	edx, [ebp-8ECh]
		add	edx, g_dialog.fixdy
		mov	[ebp-8E4h], edx
		mov	ecx, [ebp-900h]
		mov	[ebp-8F0h], ecx
		xor	esi, esi
		cmp	esi, [ebp-18h]
		jge	loc_4304D2

loc_430301:				; CODE XREF: .text:004304CCj
		mov	eax, [ebp-8F0h]
		add	eax, [ebp-14h]
		mov	[ebp-8E8h], eax
		mov	eax, 0Fh
		test	bl, 1
		jnz	short loc_43031F
		add	eax, 0E1h

loc_43031F:				; CODE XREF: .text:00430318j
		cmp	ebx, dword_5DBD38
		jl	short loc_43033B
		mov	word ptr [ebp-3Eh], 20h
		mov	edx, [ebp-28h]
		mov	[ebp-38h], edx
		mov	[ebp-34h], edx
		jmp	loc_430450
; ---------------------------------------------------------------------------

loc_43033B:				; CODE XREF: .text:00430325j
		mov	ecx, ebx
		sar	ecx, 1
		jns	short loc_430344
		adc	ecx, 0

loc_430344:				; CODE XREF: .text:0043033Fj
		xor	edx, edx
		mov	dl, byte_5DAD1C[ecx]
		and	edx, eax
		cmp	eax, edx
		jz	short loc_43037E
		mov	word ptr [ebp-3Eh], 3Fh
		mov	eax, [ebp-2Ch]
		cmp	ebx, dword_5DBD2C
		mov	[ebp-34h], eax
		jl	short loc_430373
		cmp	ebx, dword_5DBD30
		jge	short loc_430373
		mov	ecx, [ebp-24h]
		jmp	short loc_430376
; ---------------------------------------------------------------------------

loc_430373:				; CODE XREF: .text:00430364j
					; .text:0043036Cj
		mov	ecx, [ebp-28h]

loc_430376:				; CODE XREF: .text:00430371j
		mov	[ebp-38h], ecx
		jmp	loc_430450
; ---------------------------------------------------------------------------

loc_43037E:				; CODE XREF: .text:00430350j
		test	bl, 1
		jnz	short loc_43039B
		mov	edx, ebx
		sar	edx, 1
		jns	short loc_43038C
		adc	edx, 0

loc_43038C:				; CODE XREF: .text:00430387j
		movzx	edi, byte ptr sel0[edx]
		sar	edi, 4
		and	edi, 0Fh
		jmp	short loc_4303AE
; ---------------------------------------------------------------------------

loc_43039B:				; CODE XREF: .text:00430381j
		mov	edx, ebx
		sar	edx, 1
		jns	short loc_4303A4
		adc	edx, 0

loc_4303A4:				; CODE XREF: .text:0043039Fj
		movzx	edi, byte ptr sel0[edx]
		and	edi, 0Fh

loc_4303AE:				; CODE XREF: .text:00430399j
		cmp	edi, 0Ah
		jge	short loc_4303BD
		add	di, 30h
		mov	[ebp-3Eh], di
		jmp	short loc_4303C5
; ---------------------------------------------------------------------------

loc_4303BD:				; CODE XREF: .text:004303B1j
		add	di, 37h
		mov	[ebp-3Eh], di

loc_4303C5:				; CODE XREF: .text:004303BBj
		cmp	ebx, dword_5DBD2C
		jl	short loc_4303E3
		cmp	ebx, dword_5DBD30
		jge	short loc_4303E3
		mov	edx, [ebp-28h]
		mov	[ebp-34h], edx
		mov	ecx, [ebp-24h]
		mov	[ebp-38h], ecx
		jmp	short loc_4303EF
; ---------------------------------------------------------------------------

loc_4303E3:				; CODE XREF: .text:004303CBj
					; .text:004303D3j
		mov	edx, [ebp-24h]
		mov	[ebp-34h], edx
		mov	ecx, [ebp-28h]
		mov	[ebp-38h], ecx

loc_4303EF:				; CODE XREF: .text:004303E1j
		cmp	dword_5DBD3C, 0
		jnz	short loc_430450
		mov	edx, dword_5DA910
		mov	ecx, [edx]
		add	ecx, ecx
		cmp	ebx, ecx
		jge	short loc_430450
		mov	edx, ebx
		sar	edx, 1
		jns	short loc_43040F
		adc	edx, 0

loc_43040F:				; CODE XREF: .text:0043040Aj
		mov	ecx, dword_5DA910
		mov	cl, [ecx+edx+408h]
		xor	cl, byte_5DAD1C[edx]
		and	ecx, 0FFh
		test	ecx, eax
		jz	short loc_430432
		mov	ecx, [ebp-2Ch]
		mov	[ebp-34h], ecx

loc_430432:				; CODE XREF: .text:0043042Aj
		mov	ecx, dword_5DA910
		mov	cl, [ecx+edx+8]
		xor	cl, byte ptr sel0[edx]
		xor	edx, edx
		mov	dl, cl
		test	edx, eax
		jz	short loc_430450
		mov	eax, [ebp-2Ch]
		mov	[ebp-34h], eax

loc_430450:				; CODE XREF: .text:00430336j
					; .text:00430379j ...
		mov	eax, [ebp-34h]
		mov	edx, color[eax*4]
		push	edx		; COLORREF
		mov	ecx, [ebp-50h]
		push	ecx		; HDC
		call	SetTextColor
		mov	eax, [ebp-38h]
		mov	edx, color[eax*4]
		push	edx		; COLORREF
		mov	ecx, [ebp-50h]
		push	ecx		; HDC
		call	SetBkColor
		push	0		; INT *
		lea	eax, [ebp-3Eh]
		push	1		; UINT
		push	eax		; LPCWSTR
		lea	edx, [ebp-8F0h]
		push	edx		; RECT *
		push	6		; UINT
		mov	ecx, [ebp-8E4h]
		test	esi, 1
		push	ecx		; int
		jz	short loc_43049F
		mov	eax, 1
		jmp	short loc_4304AB
; ---------------------------------------------------------------------------

loc_43049F:				; CODE XREF: .text:00430496j
		mov	eax, g_dialog.fixdx
		sar	eax, 1
		jns	short loc_4304AB
		adc	eax, 0

loc_4304AB:				; CODE XREF: .text:0043049Dj
					; .text:004304A6j
		add	eax, [ebp-8F0h]
		push	eax		; int
		mov	edx, [ebp-50h]
		push	edx		; HDC
		call	ExtTextOutW
		mov	ecx, [ebp-8E8h]
		inc	ebx
		mov	[ebp-8F0h], ecx
		inc	esi
		cmp	esi, [ebp-18h]
		jl	loc_430301

loc_4304D2:				; CODE XREF: .text:004302FBj
		mov	eax, [ebp-8F8h]
		cmp	eax, [ebp-8F0h]
		jle	short loc_430504
		mov	edx, [ebp-8F8h]
		mov	[ebp-8E8h], edx
		push	0		; int
		call	GetStockObject
		push	eax		; hbr
		lea	ecx, [ebp-8F0h]
		push	ecx		; lprc
		mov	eax, [ebp-50h]
		push	eax		; hDC
		call	FillRect

loc_430504:				; CODE XREF: .text:004304DEj
		mov	edx, [ebp-8E4h]
		mov	[ebp-8ECh], edx

loc_430510:				; CODE XREF: .text:0042FE81j
		mov	ecx, [ebp-8ECh]
		cmp	ecx, [ebp-8F4h]
		jl	loc_4302D8

loc_430522:				; CODE XREF: .text:004302D3j
		lea	eax, [ebp-940h]
		push	eax		; lpPaint
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	EndPaint
		mov	ecx, [ebp-0Ch]
		cmp	ecx, g_dialog.focus
		jnz	loc_430651
		call	DestroyCaret
		cmp	dword ptr [ebp-0Ch], 7D2h
		jz	short loc_430561
		cmp	dword ptr [ebp-0Ch], 7D4h
		jz	short loc_430561
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_4305C2

loc_430561:				; CODE XREF: .text:0043054Dj
					; .text:00430556j
		mov	eax, [ebp-8F4h]
		sub	eax, [ebp-8FCh]
		push	eax		; nHeight
		push	2		; nWidth
		push	0		; hBitmap
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	CreateCaret
		cmp	dword ptr [ebp-0Ch], 7D4h
		jnz	short loc_4305A3
		mov	ecx, dword_5DBD28
		push	ecx
		call	loc_428208
		pop	ecx
		mov	ebx, eax
		mov	eax, dword_5DBD24
		push	eax
		call	loc_428208
		pop	ecx
		sub	ebx, eax
		jmp	short loc_4305B4
; ---------------------------------------------------------------------------

loc_4305A3:				; CODE XREF: .text:00430582j
		mov	eax, dword_5DBD28
		sub	eax, dword_5DBD24
		cdq
		idiv	dword ptr [ebp-10h]
		mov	ebx, eax

loc_4305B4:				; CODE XREF: .text:004305A1j
		push	1		; Y
		imul	ebx, [ebp-14h]
		push	ebx		; X
		call	SetCaretPos
		jmp	short loc_43060A
; ---------------------------------------------------------------------------

loc_4305C2:				; CODE XREF: .text:0043055Fj
		mov	eax, g_dialog.fixdy
		push	eax		; nHeight
		push	2		; nWidth
		push	0		; hBitmap
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	CreateCaret
		mov	eax, dword_5DBD28
		sub	eax, dword_5DBD24
		cdq
		idiv	dword ptr [ebp-18h]
		mov	ebx, edx
		mov	eax, dword_5DBD28
		sub	eax, dword_5DBD24
		cdq
		idiv	dword ptr [ebp-18h]
		mov	esi, eax
		imul	esi, g_dialog.fixdy
		inc	esi
		push	esi		; Y
		imul	ebx, [ebp-14h]
		push	ebx		; X
		call	SetCaretPos

loc_43060A:				; CODE XREF: .text:004305C0j
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	ShowCaret
		mov	edx, dword_5DBD28
		sar	edx, 1
		jns	short loc_430620
		adc	edx, 0

loc_430620:				; CODE XREF: .text:0043061Bj
		push	edx
		push	offset aHex02x	; "HEX +%02X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-674h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-674h]
		push	eax		; lpString
		push	7D7h		; nIDDlgItem
		mov	edx, [ebp-54h]
		push	edx		; hDlg
		call	SetDlgItemTextW

loc_430651:				; CODE XREF: .text:0043053Bj
		cmp	dword_5DBD3C, 0
		jz	short loc_430667
		push	offset aIns_1	; "INS"
		call	_T
		pop	ecx
		jmp	short loc_430672
; ---------------------------------------------------------------------------

loc_430667:				; CODE XREF: .text:00430658j
		push	offset aOvr	; src
		call	_T
		pop	ecx

loc_430672:				; CODE XREF: .text:00430665j
		push	eax		; lpString
		push	7D9h		; nIDDlgItem
		mov	ecx, [ebp-54h]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		jmp	short loc_43069A
; ---------------------------------------------------------------------------

loc_430683:				; CODE XREF: .text:0042EA05j
					; .text:0042EA1Fj ...
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		mov	ecx, [ebp+0Ch]
		push	ecx		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	DefWindowProcW
		jmp	short loc_4306CC
; ---------------------------------------------------------------------------

loc_43069A:				; CODE XREF: .text:0042EBDBj
					; .text:0042EC01j ...
		cmp	dword ptr [ebp-54h], 0
		jz	short loc_4306CA
		cmp	dword_5DBD48, 0
		jz	short loc_4306CA
		cmp	dword ptr [ebp-0Ch], 7D5h
		jnz	short loc_4306CA
		push	0		; uCheck
		push	7DEh		; nIDButton
		mov	ecx, [ebp-54h]
		xor	edx, edx
		mov	dword_5BE230, edx
		push	ecx		; hDlg
		call	CheckDlgButton

loc_4306CA:				; CODE XREF: .text:0043069Ej
					; .text:004306A7j ...
		xor	eax, eax

loc_4306CC:				; CODE XREF: .text:0042EE90j
					; .text:0042EEB6j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_4306D8(HWND, UINT, WPARAM, LPARAM)
loc_4306D8:				; DATA XREF: .text:00430EF9o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_430704
		dec	eax
		jz	loc_430914
		dec	eax
		jz	loc_430B77
		jmp	loc_430B95
; ---------------------------------------------------------------------------

loc_430704:				; CODE XREF: .text:004306EFj
		mov	edi, dword_5DBD28
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		push	7D1h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_430781
		push	offset aAscii_1	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-200h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	asciicodepage, 4E4h
		jz	short loc_430774
		mov	edx, asciicodepage
		lea	ecx, [ebp-200h]
		push	edx
		add	eax, eax
		add	eax, ecx
		push	offset aI_34	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_430774:				; CODE XREF: .text:00430753j
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_430781:				; CODE XREF: .text:00430727j
		push	7D3h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_43080C
		cmp	mbcscodepage, 0FDE9h
		jnz	short loc_4307C0
		push	offset aUtf8_0	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-200h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4307FF
; ---------------------------------------------------------------------------

loc_4307C0:				; CODE XREF: .text:0043079Cj
		push	offset aMbcs	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, mbcscodepage
		lea	edx, [ebp-200h]
		add	eax, eax
		push	ecx
		add	eax, edx
		push	offset aI_34	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4307FF:				; CODE XREF: .text:004307BEj
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_43080C:				; CODE XREF: .text:00430790j
		push	7E0h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_430825
		push	0		; bEnable
		push	ebx		; hWnd
		call	EnableWindow

loc_430825:				; CODE XREF: .text:0043081Bj
		cmp	dword_5DBD40, 2
		jge	short loc_430847
		push	7DFh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_430847
		push	0		; bEnable
		push	ebx		; hWnd
		call	EnableWindow

loc_430847:				; CODE XREF: .text:0043082Cj
					; .text:0043083Dj
		mov	eax, g_dialog.mode
		test	ah, 10h
		jz	short loc_430867
		test	ah, 20h
		jnz	short loc_430867
		push	7DEh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	DestroyWindow

loc_430867:				; CODE XREF: .text:0043084Fj
					; .text:00430854j
		mov	eax, g_dialog.mode
		and	eax, 0F00h
		cmp	eax, 400h
		jnz	short loc_430884
		mov	dword_5DBD20, 7D2h
		jmp	short loc_4308E1
; ---------------------------------------------------------------------------

loc_430884:				; CODE XREF: .text:00430876j
		cmp	eax, 800h
		jnz	short loc_430897
		mov	dword_5DBD20, 7D4h
		jmp	short loc_4308E1
; ---------------------------------------------------------------------------

loc_430897:				; CODE XREF: .text:00430889j
		cmp	eax, 500h
		jnz	short loc_4308AA
		mov	dword_5DBD20, 7D5h
		jmp	short loc_4308E1
; ---------------------------------------------------------------------------

loc_4308AA:				; CODE XREF: .text:0043089Cj
		cmp	eax, 100h
		jnz	short loc_4308BD
		mov	dword_5DBD20, 7D6h
		jmp	short loc_4308E1
; ---------------------------------------------------------------------------

loc_4308BD:				; CODE XREF: .text:004308AFj
		mov	eax, dword_5DBD20
		cmp	eax, 7D2h
		jz	short loc_4308E1
		cmp	eax, 7D5h
		jz	short loc_4308E1
		cmp	eax, 7D6h
		jz	short loc_4308E1
		mov	dword_5DBD20, 7D6h

loc_4308E1:				; CODE XREF: .text:00430882j
					; .text:00430895j ...
		mov	edx, dword_5DBD20
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		push	ebx		; hWnd
		call	SetFocus
		mov	dword_5DBD28, edi
		push	esi		; hDlg
		call	loc_427CF8
		pop	ecx
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_430B9E
; ---------------------------------------------------------------------------

loc_430914:				; CODE XREF: .text:004306F2j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_430B99
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		mov	edx, [ebp+10h]
		push	edx		; wp
		push	eax		; pctr
		push	esi		; hparent
		call	Defaultactions
		mov	ax, [ebp+10h]
		add	esp, 10h
		and	ax, 0FFFFh
		movzx	ecx, ax
		cmp	ecx, 7DAh
		jg	short loc_430968
		jz	short loc_4309B0
		dec	ecx
		jz	loc_430B24
		dec	ecx
		jz	loc_430B6A
		sub	ecx, 7D7h
		jz	short loc_430986
		jmp	loc_430B99
; ---------------------------------------------------------------------------

loc_430968:				; CODE XREF: .text:00430949j
		add	ecx, 0FFFFF825h
		sub	ecx, 3
		jb	loc_430A28
		dec	ecx
		sub	ecx, 2
		jb	loc_430A40
		jmp	loc_430B99
; ---------------------------------------------------------------------------

loc_430986:				; CODE XREF: .text:00430961j
		cmp	dword_5DBD3C, 0
		setz	al
		and	eax, 1
		mov	dword_5DBD3C, eax
		mov	edx, dword_5DBD20
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_430B99
; ---------------------------------------------------------------------------

loc_4309B0:				; CODE XREF: .text:0043094Bj
		cmp	dword_5BE238, 0
		jz	short loc_430A10
		mov	ecx, dword_5DA914
		add	ecx, ecx
		cmp	ecx, dword_5DBD38
		jge	short loc_430A10
		mov	eax, dword_5DA914
		add	eax, eax
		mov	dword_5DBD38, eax
		cmp	eax, dword_5DBD28
		jge	short loc_4309E2
		mov	dword_5DBD28, eax

loc_4309E2:				; CODE XREF: .text:004309DBj
		cmp	eax, dword_5DBD2C
		jge	short loc_4309EF
		mov	dword_5DBD2C, eax

loc_4309EF:				; CODE XREF: .text:004309E8j
		cmp	eax, dword_5DBD30
		jge	short loc_4309FC
		mov	dword_5DBD30, eax

loc_4309FC:				; CODE XREF: .text:004309F5j
		cmp	eax, dword_5DBD34
		jge	short loc_430A09
		mov	dword_5DBD34, eax

loc_430A09:				; CODE XREF: .text:00430A02j
		push	esi		; hDlg
		call	loc_427CF8
		pop	ecx

loc_430A10:				; CODE XREF: .text:004309B7j
					; .text:004309C7j
		mov	edx, dword_5DBD20
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_430B99
; ---------------------------------------------------------------------------

loc_430A28:				; CODE XREF: .text:00430971j
		mov	ecx, dword_5DBD20
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_430B99
; ---------------------------------------------------------------------------

loc_430A40:				; CODE XREF: .text:0043097Bj
		mov	eax, dword_5DBD20
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		mov	dx, [ebp+10h]
		and	dx, 0FFFFh
		cmp	dx, 7DFh
		jnz	short loc_430A7D
		mov	ecx, dword_5DBD40
		dec	ecx
		cmp	ecx, dword_5DBD44
		jle	loc_430B99
		inc	dword_5DBD44
		jmp	short loc_430A90
; ---------------------------------------------------------------------------

loc_430A7D:				; CODE XREF: .text:00430A60j
		cmp	dword_5DBD44, 0
		jle	loc_430B99
		dec	dword_5DBD44

loc_430A90:				; CODE XREF: .text:00430A7Bj
		push	offset dword_5DA914
		mov	eax, dword_5DBD44
		push	eax
		call	loc_42828C
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_5DBD24, edx
		xor	eax, eax
		mov	dword_5DBD28, ecx
		mov	dword_5DBD30, eax
		mov	dword_5DBD2C, eax
		mov	dword_5DBD34, 0FFFFFFFFh
		mov	edx, dword_5DA914
		add	esp, 8
		add	edx, edx
		mov	dword_5DBD38, edx
		mov	ecx, dword_5DBD40
		dec	ecx
		cmp	ecx, dword_5DBD44
		setnle	al
		and	eax, 1
		push	eax		; bEnable
		push	7DFh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword_5DBD44, 0
		setnle	dl
		and	edx, 1
		push	edx		; bEnable
		push	7E0h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	esi		; hDlg
		call	loc_427CF8
		pop	ecx
		jmp	short loc_430B99
; ---------------------------------------------------------------------------

loc_430B24:				; CODE XREF: .text:0043094Ej
		mov	eax, dword_5DBD38
		test	al, 1
		jz	short loc_430B4A
		mov	edx, eax
		sar	edx, 1
		jns	short loc_430B36
		adc	edx, 0

loc_430B36:				; CODE XREF: .text:00430B31j
		and	byte ptr sel0[edx], 0F0h
		and	byte_5DAD1C[edx], 0F0h
		inc	dword_5DBD38

loc_430B4A:				; CODE XREF: .text:00430B2Bj
		mov	ecx, dword_5DBD38
		sar	ecx, 1
		jns	short loc_430B57
		adc	ecx, 0

loc_430B57:				; CODE XREF: .text:00430B52j
		mov	dword_5DA914, ecx
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_430B99
; ---------------------------------------------------------------------------

loc_430B6A:				; CODE XREF: .text:00430955j
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_430B99
; ---------------------------------------------------------------------------

loc_430B77:				; CODE XREF: .text:004306F9j
		mov	eax, [ebp+10h]
		and	eax, 0FFF0h
		cmp	eax, 0F060h
		jnz	short loc_430B91
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_430B91:				; CODE XREF: .text:00430B84j
		xor	eax, eax
		jmp	short loc_430B9E
; ---------------------------------------------------------------------------

loc_430B95:				; CODE XREF: .text:004306FFj
		xor	eax, eax
		jmp	short loc_430B9E
; ---------------------------------------------------------------------------

loc_430B99:				; CODE XREF: .text:00430920j
					; .text:00430963j ...
		mov	eax, 1

loc_430B9E:				; CODE XREF: .text:0043090Fj
					; .text:00430B93j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 138. _Binaryedit
; Exported entry 406. Binaryedit

; int __cdecl Binaryedit(HWND hparent, wchar_t *_title, t_hexstr	*hstr, int letter, int x, int y, int fi, int mode)
		public Binaryedit
Binaryedit:				; CODE XREF: .text:0045A055p
					; .text:004A04AFp ...
		push	ebp		; _Binaryedit
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	esi, offset dword_5DA914
		cmp	dword ptr [ebp+10h], 0
		mov	ebx, [ebp+14h]
		jz	short loc_430BC8
		mov	eax, [ebp+10h]
		cmp	dword ptr [eax+4], 0
		jnz	short loc_430BD0

loc_430BC8:				; CODE XREF: .text:00430BBDj
		or	eax, 0FFFFFFFFh
		jmp	loc_430F96
; ---------------------------------------------------------------------------

loc_430BD0:				; CODE XREF: .text:00430BC6j
		lea	edx, [ebp-28h]
		mov	ecx, g_hInstance
		push	edx		; lpWndClass
		push	offset aAstring	; lpClassName
		push	ecx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_430C47
		mov	dword ptr [ebp-28h], 20h
		mov	dword ptr [ebp-24h], offset loc_42E8AC
		xor	eax, eax
		mov	edx, g_hInstance
		mov	[ebp-20h], eax
		xor	ecx, ecx
		mov	dword ptr [ebp-1Ch], 8
		mov	[ebp-18h], edx
		mov	[ebp-14h], ecx
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	[ebp-10h], eax
		xor	eax, eax
		mov	[ebp-0Ch], eax
		xor	edx, edx
		mov	[ebp-8], edx
		lea	ecx, [ebp-28h]
		mov	dword ptr [ebp-4], offset aAstring ; "ASTRING"
		push	ecx		; lpWndClass
		call	RegisterClassW
		test	ax, ax
		jnz	short loc_430C47
		or	eax, 0FFFFFFFFh
		jmp	loc_430F96
; ---------------------------------------------------------------------------

loc_430C47:				; CODE XREF: .text:00430BE7j
					; .text:00430C3Dj
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp+18h]
		mov	g_dialog._title,	edx
		mov	g_dialog.letter, ebx
		mov	eax, [ebp+1Ch]
		mov	g_dialog.x, ecx
		mov	edx, [ebp+20h]
		mov	g_dialog.y, eax
		mov	g_dialog.fi, edx
		mov	edx, [ebp+10h]
		mov	eax, [ebp+10h]
		mov	ecx, [ebp+24h]
		push	esi
		mov	g_dialog.mode, ecx
		mov	edi, esi
		mov	esi, edx
		mov	dword_5DA910, eax
		mov	ecx, 202h
		rep movsd
		test	byte ptr [ebp+27h], 1
		pop	esi
		jz	short loc_430CB3
		cmp	dword ptr [esi], 0
		jbe	short loc_430CB3
		mov	eax, [esi]
		lea	edx, [esi+408h]
		push	eax		; n
		push	0FFh		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_430CB3:				; CODE XREF: .text:00430C95j
					; .text:00430C9Aj
		cmp	dword ptr [esi+4], 400h
		jbe	short loc_430CC3
		mov	dword ptr [esi+4], 400h

loc_430CC3:				; CODE XREF: .text:00430CBAj
		mov	eax, [esi+4]
		cmp	eax, [esi]
		jnb	short loc_430CCC
		mov	[esi], eax

loc_430CCC:				; CODE XREF: .text:00430CC8j
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_5DBD24, edx
		mov	dword_5DBD28, ecx
		mov	eax, [esi]
		add	eax, eax
		test	ebx, ebx
		mov	dword_5DBD38, eax
		jz	loc_430E27
		cmp	dword ptr [esi], 0
		jbe	loc_430E27
		mov	eax, [ebp+24h]
		and	eax, 0F00h
		cmp	eax, 400h
		jnz	short loc_430D48
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		mov	edx, [esi]
		lea	ecx, [esi+8]
		push	edx		; cbMultiByte
		push	ecx		; lpMultiByteStr
		push	1		; cchWideChar
		push	ebx		; lpWideCharStr
		mov	eax, asciicodepage
		push	0		; dwFlags
		push	eax		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_430D3B
		push	ebx		; n
		push	0FFh		; c
		lea	edx, [esi+408h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_430D3B:				; CODE XREF: .text:00430D24j
		add	ebx, ebx
		mov	dword_5DBD28, ebx
		jmp	loc_430E27
; ---------------------------------------------------------------------------

loc_430D48:				; CODE XREF: .text:00430D03j
		cmp	eax, 800h
		jnz	short loc_430D93
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		mov	ecx, [esi]
		lea	eax, [esi+8]
		push	ecx		; cbMultiByte
		push	eax		; lpMultiByteStr
		push	1		; cchWideChar
		push	ebx		; lpWideCharStr
		mov	edx, mbcscodepage
		push	0		; dwFlags
		push	edx		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_430D86
		push	ebx		; n
		push	0FFh		; c
		lea	ecx, [esi+408h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_430D86:				; CODE XREF: .text:00430D6Fj
		add	ebx, ebx
		mov	dword_5DBD28, ebx
		jmp	loc_430E27
; ---------------------------------------------------------------------------

loc_430D93:				; CODE XREF: .text:00430D4Dj
		mov	eax, [ebp+24h]
		and	eax, 0F00h
		cmp	eax, 500h
		jnz	short loc_430DC5
		cmp	dword ptr [esi], 2
		jb	short loc_430DC5
		mov	[esi+8], bx
		mov	dl, 0FFh
		mov	[esi+409h], dl
		mov	[esi+408h], dl
		mov	dword_5DBD28, 4
		jmp	short loc_430E27
; ---------------------------------------------------------------------------

loc_430DC5:				; CODE XREF: .text:00430DA0j
					; .text:00430DA5j
		mov	eax, [ebp+24h]
		and	eax, 0F00h
		cmp	eax, 100h
		jnz	short loc_430E27
		push	ebx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_430E27
		and	byte ptr [esi+8], 0Fh
		cmp	ebx, 30h
		jl	short loc_430DF8
		cmp	ebx, 39h
		jg	short loc_430DF8
		add	bl, 0D0h
		shl	ebx, 4
		or	[esi+8], bl
		jmp	short loc_430E16
; ---------------------------------------------------------------------------

loc_430DF8:				; CODE XREF: .text:00430DE6j
					; .text:00430DEBj
		cmp	ebx, 41h
		jl	short loc_430E0D
		cmp	ebx, 46h
		jg	short loc_430E0D
		add	bl, 0C9h
		shl	ebx, 4
		or	[esi+8], bl
		jmp	short loc_430E16
; ---------------------------------------------------------------------------

loc_430E0D:				; CODE XREF: .text:00430DFBj
					; .text:00430E00j
		add	bl, 0A9h
		shl	ebx, 4
		or	[esi+8], bl

loc_430E16:				; CODE XREF: .text:00430DF6j
					; .text:00430E0Bj
		or	byte ptr [esi+408h], 0F0h
		mov	dword_5DBD28, 1

loc_430E27:				; CODE XREF: .text:00430CE7j
					; .text:00430CF0j ...
		test	byte ptr [ebp+25h], 10h
		mov	edi, dword_5BE6DC
		jz	loc_430EBB
		test	byte ptr [ebp+25h], 40h
		jz	short loc_430E49
		mov	g_dialog.controls, offset stru_524224
		jmp	short loc_430E5D
; ---------------------------------------------------------------------------

loc_430E49:				; CODE XREF: .text:00430E3Bj
		mov	g_dialog.controls, offset stru_52451C
		mov	dword_5BE6DC, 1

loc_430E5D:				; CODE XREF: .text:00430E47j
		mov	dword_5DBD3C, 1
		xor	eax, eax
		mov	[esi], eax
		xor	edx, edx
		mov	dword_5DBD40, edx
		jmp	short loc_430E93
; ---------------------------------------------------------------------------

loc_430E75:				; CODE XREF: .text:00430E9Bj
		test	eax, eax
		jnz	short loc_430E7D
		mov	ecx, esi
		jmp	short loc_430E7F
; ---------------------------------------------------------------------------

loc_430E7D:				; CODE XREF: .text:00430E77j
		xor	ecx, ecx

loc_430E7F:				; CODE XREF: .text:00430E7Bj
		push	ecx
		push	eax
		call	loc_42828C
		add	esp, 8
		test	eax, eax
		jz	short loc_430E9D
		inc	dword_5DBD40

loc_430E93:				; CODE XREF: .text:00430E73j
		mov	eax, dword_5DBD40
		cmp	eax, 10h
		jl	short loc_430E75

loc_430E9D:				; CODE XREF: .text:00430E8Bj
		mov	eax, [esi]
		add	eax, eax
		mov	dword_5DBD38, eax
		xor	edx, edx
		mov	dword_5DBD34, edx
		mov	dword_5DBD2C, edx
		mov	dword_5DBD30, eax
		jmp	short loc_430EEA
; ---------------------------------------------------------------------------

loc_430EBB:				; CODE XREF: .text:00430E31j
		mov	g_dialog.controls, offset stru_524774
		xor	eax, eax
		mov	dword_5DBD40, eax
		xor	ecx, ecx
		mov	dword_5DBD3C, ecx
		xor	eax, eax
		mov	dword_5DBD30, eax
		mov	dword_5DBD2C, eax
		mov	dword_5DBD34, 0FFFFFFFFh

loc_430EEA:				; CODE XREF: .text:00430EB9j
		xor	edx, edx
		mov	dword_5DBD44, edx
		call	loc_427D58
		push	0		; dwInitParam
		push	offset loc_4306D8 ; lpDialogFunc
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	g_dialog.controls, eax
		test	ebx, ebx
		jnz	short loc_430F88
		test	byte ptr [ebp+25h], 10h
		jz	short loc_430F2C
		push	esi
		call	loc_428318
		pop	ecx

loc_430F2C:				; CODE XREF: .text:00430F23j
		mov	edx, [ebp+10h]
		mov	ecx, [edx]
		mov	eax, [esi]
		cmp	ecx, eax
		jnz	short loc_430F6F
		push	eax		; n
		mov	edx, [ebp+10h]
		add	edx, 8
		push	edx		; s2
		lea	ecx, [esi+8]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_430F6F
		mov	eax, [esi]
		push	eax		; n
		mov	edx, [ebp+10h]
		add	edx, 408h
		push	edx		; s2
		lea	ecx, [esi+408h]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_430F94

loc_430F6F:				; CODE XREF: .text:00430F35j
					; .text:00430F4Dj
		push	808h		; n
		push	esi		; src
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ebx, 1
		jmp	short loc_430F94
; ---------------------------------------------------------------------------

loc_430F88:				; CODE XREF: .text:00430F1Dj
		test	byte ptr [ebp+25h], 40h
		jnz	short loc_430F94
		mov	dword_5BE6DC, edi

loc_430F94:				; CODE XREF: .text:00430F6Dj
					; .text:00430F86j ...
		mov	eax, ebx

loc_430F96:				; CODE XREF: .text:00430BCBj
					; .text:00430C42j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 139. _Getpredefinedtypebyindex
; Exported entry 591. Getpredefinedtypebyindex

; unsigned int __cdecl Getpredefinedtypebyindex(int fnindex, wchar_t *type)
		public Getpredefinedtypebyindex
Getpredefinedtypebyindex:		; CODE XREF: .text:0044D024p
		push	ebp		; _Getpredefinedtypebyindex
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edx, edx
		jnz	short loc_430FB1
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_430FB1:				; CODE XREF: .text:00430FABj
		test	eax, eax
		jle	short loc_430FBA
		cmp	eax, 15h
		jl	short loc_430FC3

loc_430FBA:				; CODE XREF: .text:00430FB3j
		mov	word ptr [edx],	0
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_430FC3:				; CODE XREF: .text:00430FB8j
		mov	ecx, off_524A44[eax*8]
		push	ecx		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		