.code

; INT_PTR __stdcall loc_42B0C4(HWND, UINT, WPARAM, LPARAM)
loc_42B0C4:				; DATA XREF: .text:0042B514o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBE4h
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42B0FB
		dec	eax
		jz	loc_42B1C4
		dec	eax
		jz	loc_42B48A
		sub	eax, 26h
		jz	loc_42B184
		jmp	loc_42B4A7
; ---------------------------------------------------------------------------

loc_42B0FB:				; CODE XREF: .text:0042B0DDj
		push	offset g_dialog	; pdlg
		push	ebx		; hw
		call	Preparedialog
		add	esp, 8
		test	byte ptr g_dialog.mode,	80h
		jz	short loc_42B162
		mov	edx, g_dialog.addr0
		push	edx		; u
		lea	ecx, [ebp-200h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	41Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	edx, g_dialog.addr1
		push	edx		; u
		lea	ecx, [ebp-200h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	41Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW

loc_42B162:				; CODE XREF: .text:0042B110j
		push	41Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42B4B0
; ---------------------------------------------------------------------------

loc_42B184:				; CODE XREF: .text:0042B0F0j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 41Ch
		jz	short loc_42B19B
		xor	eax, eax
		jmp	loc_42B4B0
; ---------------------------------------------------------------------------

loc_42B19B:				; CODE XREF: .text:0042B192j
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
		jmp	loc_42B4B0
; ---------------------------------------------------------------------------

loc_42B1C4:				; CODE XREF: .text:0042B0E0j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_42B4AB
		mov	edx, [ebp+14h]
		push	edx		; lp
		push	esi		; wp
		push	eax		; pctr
		push	ebx		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, esi
		and	ax, 0FFFFh
		cmp	ax, 41Ah
		jz	short loc_42B1F7
		cmp	ax, 41Bh
		jnz	short loc_42B217

loc_42B1F7:				; CODE XREF: .text:0042B1EFj
		mov	edx, esi
		shr	edx, 10h
		cmp	dx, 5
		jnz	short loc_42B217
		push	(offset	aOd_empty+0Fh) ; lpString
		push	41Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B217:				; CODE XREF: .text:0042B1F5j
					; .text:0042B200j
		cmp	ax, 1
		jnz	loc_42B477
		push	100h		; nMaxCount
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	41Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemTextW
		push	1		; mode
		push	0		; b
		push	0		; a
		call	Getcputhreadid
		push	eax		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		lea	eax, [ebp-200h]
		push	eax		; expression
		lea	edx, [ebp-41Ch]
		push	edx		; result
		call	Expression
		add	esp, 24h
		cmp	dword ptr [ebp-414h], 0
		jnz	short loc_42B2B3
		lea	ecx, [ebp-402h]
		push	ecx
		push	offset aFirstAddressS ;	"First address:	%s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-200h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-200h]
		push	edx		; lpString
		push	41Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	41Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B2B3:				; CODE XREF: .text:0042B267j
		mov	ecx, [ebp-414h]
		and	ecx, 0Fh
		cmp	ecx, 3
		jz	short loc_42B2EE
		push	offset aFirstAddress_1 ; "First	address: Integer expression expec"...
		call	_T
		pop	ecx
		push	eax		; lpString
		push	41Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	41Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B2EE:				; CODE XREF: .text:0042B2BFj
		mov	eax, [ebp-40Ch]
		lea	edx, [ebp-200h]
		push	100h		; nMaxCount
		push	edx		; lpString
		push	41Bh		; nIDDlgItem
		push	ebx		; hDlg
		mov	g_dialog.addr0,	eax
		call	GetDlgItemTextW
		push	1		; mode
		push	0		; b
		push	0		; a
		call	Getcputhreadid
		push	eax		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		lea	ecx, [ebp-200h]
		push	ecx		; expression
		lea	eax, [ebp-41Ch]
		push	eax		; result
		call	Expression
		add	esp, 24h
		cmp	dword ptr [ebp-414h], 0
		jnz	short loc_42B38B
		lea	edx, [ebp-402h]
		push	edx
		push	offset aLastAddressS ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-200h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	41Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	41Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B38B:				; CODE XREF: .text:0042B33Fj
		mov	edx, [ebp-414h]
		and	edx, 0Fh
		cmp	edx, 3
		jz	short loc_42B3C6
		push	offset aLastAddressInt ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	41Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	41Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B3C6:				; CODE XREF: .text:0042B397j
		mov	eax, [ebp-40Ch]
		mov	g_dialog.addr1,	eax
		cmp	eax, g_dialog.addr0
		jnb	short loc_42B406
		push	offset aFirstAddressEx ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	41Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	41Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B406:				; CODE XREF: .text:0042B3D7j
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpString
		push	41Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemTextW
		lea	ecx, [ebp-200h]
		push	ecx		; s
		push	41Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	100h		; nMaxCount
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	41Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemTextW
		lea	edx, [ebp-200h]
		push	edx		; s
		push	41Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	0		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B477:				; CODE XREF: .text:0042B21Bj
		cmp	ax, 2
		jnz	short loc_42B4AB
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42B4AB
; ---------------------------------------------------------------------------

loc_42B48A:				; CODE XREF: .text:0042B0E7j
		and	esi, 0FFF0h
		cmp	esi, 0F060h
		jnz	short loc_42B4A3
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8

loc_42B4A3:				; CODE XREF: .text:0042B496j
		xor	eax, eax
		jmp	short loc_42B4B0
; ---------------------------------------------------------------------------

loc_42B4A7:				; CODE XREF: .text:0042B0F6j
		xor	eax, eax
		jmp	short loc_42B4B0
; ---------------------------------------------------------------------------

loc_42B4AB:				; CODE XREF: .text:0042B1D0j
					; .text:0042B212j ...
		mov	eax, 1

loc_42B4B0:				; CODE XREF: .text:0042B17Fj
					; .text:0042B196j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
; Exported entry 122. _Getaddressrange
; Exported entry 549. Getaddressrange

; int __cdecl Getaddressrange(HWND hparent, wchar_t *_title, ulong *rmin, ulong *rmax, int x, int y, int	fi, int	mode)
		public Getaddressrange
Getaddressrange:			; CODE XREF: .text:004354EEp
					; .text:004355D4p
		push	ebp		; _Getaddressrange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, offset g_dialog
		mov	esi, [ebp+10h]
		mov	edi, [ebp+14h]
		test	esi, esi
		jz	short loc_42B4D1
		test	edi, edi
		jnz	short loc_42B4D6

loc_42B4D1:				; CODE XREF: .text:0042B4CBj
		or	eax, 0FFFFFFFFh
		jmp	short loc_42B53F
; ---------------------------------------------------------------------------

loc_42B4D6:				; CODE XREF: .text:0042B4CFj
		mov	edx, [ebp+0Ch]
		mov	[ebx+4], edx
		mov	ecx, [ebp+18h]
		mov	[ebx+30h], ecx
		mov	eax, [ebp+1Ch]
		mov	[ebx+34h], eax
		mov	edx, [ebp+20h]
		mov	[ebx+38h], edx
		mov	ecx, [ebp+24h]
		mov	[ebx+3Ch], ecx
		mov	eax, [esi]
		mov	[ebx+24h], eax
		mov	edx, [edi]
		mov	[ebx+28h], edx
		mov	dword ptr [ebx+40h], 76h
		mov	dword ptr [ebx+44h], 77h
		mov	dword ptr [ebx], offset	stru_521620
		push	0		; dwInitParam
		push	offset loc_42B0C4 ; lpDialogFunc
		mov	eax, g_hInstance
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		test	eax, eax
		mov	[ebx], edx
		jnz	short loc_42B53F
		mov	ecx, [ebx+24h]
		mov	[esi], ecx
		mov	edx, [ebx+28h]
		mov	[edi], edx

loc_42B53F:				; CODE XREF: .text:0042B4D4j
					; .text:0042B533j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; INT_PTR __stdcall loc_42B544(HWND, UINT, WPARAM, LPARAM)
loc_42B544:				; DATA XREF: .text:0042B76Bo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42B572
		dec	eax
		jz	loc_42B5FD
		dec	eax
		jz	loc_42B6F7
		jmp	loc_42B714
; ---------------------------------------------------------------------------

loc_42B572:				; CODE XREF: .text:0042B55Dj
		push	offset g_dialog	; pdlg
		push	ebx		; hw
		call	Preparedialog
		add	esp, 8
		push	424h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		push	0		; a4
		push	0		; a3
		push	offset aException_4 ; s2
		push	esi		; hWnd
		call	Fillcombowithgroup
		add	esp, 10h
		push	(offset	aOd_empty+0Fh) ; lpString
		push	esi		; hWnd
		call	SetWindowTextW
		push	425h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		push	0		; a4
		push	0		; a3
		push	offset aException_4 ; s2
		push	esi		; hWnd
		call	Fillcombowithgroup
		add	esp, 10h
		push	offset aSameAsAbove ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	esi		; hWnd
		call	SetWindowTextW
		push	424h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42B71D
; ---------------------------------------------------------------------------

loc_42B5FD:				; CODE XREF: .text:0042B560j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_42B718
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		push	esi		; wp
		push	eax		; pctr
		push	ebx		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, esi
		and	ax, 0FFFFh
		cmp	ax, 1
		jnz	loc_42B6DF
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpString
		push	424h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemTextW
		xor	ecx, ecx
		mov	g_dialog.addr0,	ecx
		push	offset g_dialog.addr0
		push	offset asc_52884A ; format
		lea	eax, [ebp-200h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpString
		push	425h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemTextW
		xor	ecx, ecx
		mov	g_dialog.addr1,	ecx
		push	offset g_dialog.addr1
		push	offset asc_52884A ; format
		lea	eax, [ebp-200h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		cmp	g_dialog.addr0,	0
		jnz	short loc_42B6BD
		cmp	g_dialog.addr1,	0
		jnz	short loc_42B6BD
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42B718
; ---------------------------------------------------------------------------

loc_42B6BD:				; CODE XREF: .text:0042B6A5j
					; .text:0042B6AEj
		cmp	g_dialog.addr1,	0
		jnz	short loc_42B6D2
		mov	edx, g_dialog.addr0
		mov	g_dialog.addr1,	edx

loc_42B6D2:				; CODE XREF: .text:0042B6C4j
		push	0		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42B718
; ---------------------------------------------------------------------------

loc_42B6DF:				; CODE XREF: .text:0042B628j
		and	si, 0FFFFh
		cmp	si, 2
		jnz	short loc_42B718
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42B718
; ---------------------------------------------------------------------------

loc_42B6F7:				; CODE XREF: .text:0042B567j
		and	esi, 0FFF0h
		cmp	esi, 0F060h
		jnz	short loc_42B710
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8

loc_42B710:				; CODE XREF: .text:0042B703j
		xor	eax, eax
		jmp	short loc_42B71D
; ---------------------------------------------------------------------------

loc_42B714:				; CODE XREF: .text:0042B56Dj
		xor	eax, eax
		jmp	short loc_42B71D
; ---------------------------------------------------------------------------

loc_42B718:				; CODE XREF: .text:0042B609j
					; .text:0042B6BBj ...
		mov	eax, 1

loc_42B71D:				; CODE XREF: .text:0042B5F8j
					; .text:0042B712j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 123. _Getexceptionrange
; Exported entry 565. Getexceptionrange

; int __cdecl Getexceptionrange(HWND hparent, wchar_t *_title, ulong *rmin, ulong *rmax,	int x, int y, int fi)
		public Getexceptionrange
Getexceptionrange:			; CODE XREF: .text:004CFDEEp
		push	ebp		; _Getexceptionrange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset g_dialog
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+14h]
		test	ebx, ebx
		jz	short loc_42B741
		test	esi, esi
		jnz	short loc_42B746

loc_42B741:				; CODE XREF: .text:0042B73Bj
		or	eax, 0FFFFFFFFh
		jmp	short loc_42B797
; ---------------------------------------------------------------------------

loc_42B746:				; CODE XREF: .text:0042B73Fj
		mov	edx, [ebp+0Ch]
		mov	[edi+4], edx
		mov	ecx, [ebp+18h]
		mov	[edi+30h], ecx
		xor	ecx, ecx
		mov	eax, [ebp+1Ch]
		mov	[edi+34h], eax
		mov	edx, [ebp+20h]
		mov	[edi+38h], edx
		mov	[edi+3Ch], ecx
		mov	dword ptr [edi], offset	stru_521760
		push	0		; dwInitParam
		push	offset loc_42B544 ; lpDialogFunc
		mov	edx, g_hInstance
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		xor	ecx, ecx
		test	eax, eax
		mov	[edi], ecx
		jnz	short loc_42B797
		mov	edx, [edi+24h]
		mov	[ebx], edx
		mov	ecx, [edi+28h]
		mov	[esi], ecx

loc_42B797:				; CODE XREF: .text:0042B744j
					; .text:0042B78Bj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; INT_PTR __stdcall loc_42B79C(HWND, UINT, WPARAM, LPARAM)
loc_42B79C:				; DATA XREF: .text:0042BAC6o
					; .text:0042BB6Ao
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42B7C8
		dec	eax
		jz	loc_42B903
		dec	eax
		jz	loc_42BA34
		jmp	loc_42BA54
; ---------------------------------------------------------------------------

loc_42B7C8:				; CODE XREF: .text:0042B7B3j
		push	offset g_dialog	; pdlg
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Preparedialog
		add	esp, 8
		mov	eax, dword_5DA5A4
		test	eax, eax
		jz	short loc_42B7F7
		cmp	word ptr [eax],	0
		jz	short loc_42B7F7
		push	eax		; lpString
		push	42Fh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	SetDlgItemTextW

loc_42B7F7:				; CODE XREF: .text:0042B7E0j
					; .text:0042B7E6j
		push	430h		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		mov	eax, dword_5DA5A0
		push	eax		; s2
		push	0		; int
		push	ebx		; hWnd
		call	Fillcombowithstruct
		add	esp, 0Ch
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		inc	eax
		jnz	short loc_42B839
		push	0		; lParam
		push	0		; wParam
		push	14Eh		; Msg
		push	ebx		; hWnd
		call	SendMessageW

loc_42B839:				; CODE XREF: .text:0042B828j
		push	434h		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_42B8DE
		xor	edi, edi
		mov	esi, offset dword_521BE8

loc_42B858:				; CODE XREF: .text:0042B88Aj
		mov	eax, [esi]
		lea	edx, [ebp-200h]
		push	eax
		push	(offset	aII+6)	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		inc	edi
		add	esi, 4
		cmp	edi, 11h
		jl	short loc_42B858
		cmp	dword_5DA5AC, 0
		jg	short loc_42B8A1
		mov	dword_5DA5AC, 1
		jmp	short loc_42B8B7
; ---------------------------------------------------------------------------

loc_42B8A1:				; CODE XREF: .text:0042B893j
		cmp	dword_5DA5AC, 0F423Fh
		jle	short loc_42B8B7
		mov	dword_5DA5AC, 0F423Fh

loc_42B8B7:				; CODE XREF: .text:0042B89Fj
					; .text:0042B8ABj
		mov	eax, dword_5DA5AC
		lea	edx, [ebp-200h]
		push	eax
		push	(offset	aII+6)	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42B8DE:				; CODE XREF: .text:0042B84Bj
		push	430h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42BA5D
; ---------------------------------------------------------------------------

loc_42B903:				; CODE XREF: .text:0042B7B6j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_42BA58
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		push	ebx		; wp
		push	eax		; pctr
		mov	eax, [ebp+8]
		push	eax		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	edx, ebx
		and	dx, 0FFFFh
		cmp	dx, 434h
		jnz	short loc_42B96D
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 5
		jz	short loc_42B946
		cmp	ax, 1
		jnz	short loc_42B96D

loc_42B946:				; CODE XREF: .text:0042B93Ej
		push	433h		; nIDCheckButton
		push	433h		; nIDLastButton
		push	431h		; nIDFirstButton
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	CheckRadioButton
		mov	dword_5DA5A8, 2
		jmp	loc_42BA58
; ---------------------------------------------------------------------------

loc_42B96D:				; CODE XREF: .text:0042B933j
					; .text:0042B944j
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 1
		jnz	loc_42BA1E
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpString
		push	430h		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	GetDlgItemTextW
		cmp	word ptr [ebp-200h], 0
		jz	short loc_42B9C7
		lea	eax, [ebp-200h]
		mov	edx, dword_5DA5A0
		push	eax		; src
		push	20h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	0		; result
		mov	ecx, [ebp+8]
		push	ecx		; hw
		call	Endotdialog
		add	esp, 8

loc_42B9C7:				; CODE XREF: .text:0042B99Fj
		push	100h		; nMaxCount
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	434h		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItemTextW
		lea	ecx, [ebp-200h]
		push	ecx		; s
		call	__wtoi
		pop	ecx
		mov	ebx, eax
		mov	dword_5DA5AC, ebx
		test	ebx, ebx
		jg	short loc_42BA06
		mov	dword_5DA5AC, 1
		jmp	short loc_42BA58
; ---------------------------------------------------------------------------

loc_42BA06:				; CODE XREF: .text:0042B9F8j
		cmp	dword_5DA5AC, 0F423Fh
		jle	short loc_42BA58
		mov	dword_5DA5AC, 0F423Fh
		jmp	short loc_42BA58
; ---------------------------------------------------------------------------

loc_42BA1E:				; CODE XREF: .text:0042B977j
		cmp	ax, 2
		jnz	short loc_42BA58
		push	0FFFFFFFFh	; result
		mov	eax, [ebp+8]
		push	eax		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42BA58
; ---------------------------------------------------------------------------

loc_42BA34:				; CODE XREF: .text:0042B7BDj
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42BA50
		push	0FFFFFFFFh	; result
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Endotdialog
		add	esp, 8

loc_42BA50:				; CODE XREF: .text:0042BA40j
		xor	eax, eax
		jmp	short loc_42BA5D
; ---------------------------------------------------------------------------

loc_42BA54:				; CODE XREF: .text:0042B7C3j
		xor	eax, eax
		jmp	short loc_42BA5D
; ---------------------------------------------------------------------------

loc_42BA58:				; CODE XREF: .text:0042B90Fj
					; .text:0042B968j ...
		mov	eax, 1

loc_42BA5D:				; CODE XREF: .text:0042B8FEj
					; .text:0042BA52j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 124. _Getstructuretype
; Exported entry 613. Getstructuretype

; int __cdecl Getstructuretype(HWND hparent, wchar_t *_title, wchar_t *text, wchar_t *strname, int x, int y, int	fi)
		public Getstructuretype
Getstructuretype:			; CODE XREF: .text:004B744Dp
		push	ebp		; _Getstructuretype
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+0Ch]
		mov	esi, offset g_dialog
		test	ebx, ebx
		jnz	short loc_42BA81
		or	eax, 0FFFFFFFFh
		jmp	short loc_42BAEA
; ---------------------------------------------------------------------------

loc_42BA81:				; CODE XREF: .text:0042BA7Aj
		test	eax, eax
		jz	short loc_42BA8B
		cmp	word ptr [eax],	0
		jnz	short loc_42BA9B

loc_42BA8B:				; CODE XREF: .text:0042BA83j
		push	offset aSelectStructur ; "Select structure"
		call	_T
		pop	ecx
		mov	[esi+4], eax
		jmp	short loc_42BA9E
; ---------------------------------------------------------------------------

loc_42BA9B:				; CODE XREF: .text:0042BA89j
		mov	[esi+4], eax

loc_42BA9E:				; CODE XREF: .text:0042BA99j
		mov	edx, [ebp+18h]
		mov	[esi+30h], edx
		xor	edx, edx
		mov	ecx, [ebp+1Ch]
		mov	[esi+34h], ecx
		mov	eax, [ebp+20h]
		mov	[esi+38h], eax
		mov	[esi+3Ch], edx
		mov	dword ptr [esi], offset	stru_521878
		mov	dword_5DA5A0, ebx
		mov	ecx, [ebp+10h]
		push	0		; dwInitParam
		push	offset loc_42B79C ; lpDialogFunc
		mov	dword_5DA5A4, ecx
		mov	eax, [ebp+8]
		mov	edx, g_hInstance
		push	eax		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		xor	ecx, ecx
		mov	[esi], ecx

loc_42BAEA:				; CODE XREF: .text:0042BA7Fj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 125. _Getrepstructuretype
; Exported entry 599. Getrepstructuretype

; int __cdecl Getrepstructuretype(HWND hWndParent, wchar_t *_title, int,	t_table	*pt, int x, int	y, int fi, int a8)
		public Getrepstructuretype
Getrepstructuretype:			; CODE XREF: .text:004B54AEp
		push	ebp		; _Getrepstructuretype
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+0Ch]
		mov	esi, offset g_dialog
		test	ebx, ebx
		jnz	short loc_42BB0C
		or	eax, 0FFFFFFFFh
		jmp	loc_42BBB4
; ---------------------------------------------------------------------------

loc_42BB0C:				; CODE XREF: .text:0042BB02j
		test	eax, eax
		jz	short loc_42BB16
		cmp	word ptr [eax],	0
		jnz	short loc_42BB26

loc_42BB16:				; CODE XREF: .text:0042BB0Ej
		push	offset aSelectStructur ; "Select structure"
		call	_T
		pop	ecx
		mov	[esi+4], eax
		jmp	short loc_42BB29
; ---------------------------------------------------------------------------

loc_42BB26:				; CODE XREF: .text:0042BB14j
		mov	[esi+4], eax

loc_42BB29:				; CODE XREF: .text:0042BB24j
		mov	edx, [ebp+18h]
		mov	[esi+30h], edx
		xor	edx, edx
		mov	ecx, [ebp+1Ch]
		mov	[esi+34h], ecx
		mov	eax, [ebp+20h]
		mov	[esi+38h], eax
		mov	[esi+3Ch], edx
		test	byte ptr [ebp+27h], 2
		jz	short loc_42BB4E
		mov	dword ptr [esi], offset	stru_521940
		jmp	short loc_42BB54
; ---------------------------------------------------------------------------

loc_42BB4E:				; CODE XREF: .text:0042BB44j
		mov	dword ptr [esi], offset	stru_521A80

loc_42BB54:				; CODE XREF: .text:0042BB4Cj
		mov	ecx, [ebp+10h]
		mov	dword_5DA5A0, ebx
		mov	dword_5DA5A4, ecx
		push	0		; dwInitParam
		mov	eax, dword_58620E
		push	offset loc_42B79C ; lpDialogFunc
		mov	dword_5DA5A8, eax
		mov	ecx, [ebp+8]
		mov	edx, dword_586212
		push	ecx		; hWndParent
		mov	dword_5DA5AC, edx
		push	offset aDia_empty_0 ; lpTemplateName
		mov	eax, g_hInstance
		push	eax		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		test	eax, eax
		mov	[esi], edx
		jnz	short loc_42BBB4
		mov	ecx, dword_5DA5A8
		mov	dword_58620E, ecx
		mov	edx, dword_5DA5AC
		mov	dword_586212, edx

loc_42BBB4:				; CODE XREF: .text:0042BB07j
					; .text:0042BB9Aj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; INT_PTR __stdcall loc_42BBB8(HWND, UINT, WPARAM, LPARAM)
loc_42BBB8:				; DATA XREF: .text:0042BE95o
					; .text:0042BF3Do ...
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
		jz	short loc_42BBE7
		dec	eax
		jz	loc_42BCE1
		dec	eax
		jz	loc_42BDBF
		jmp	loc_42BDDC
; ---------------------------------------------------------------------------

loc_42BBE7:				; CODE XREF: .text:0042BBD2j
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		mov	edx, g_dialog.mode
		and	edx, 0F0000h
		cmp	edx, 40000h
		jnz	short loc_42BC18
		push	456h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		jmp	short loc_42BC25
; ---------------------------------------------------------------------------

loc_42BC18:				; CODE XREF: .text:0042BC07j
		push	457h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax

loc_42BC25:				; CODE XREF: .text:0042BC16j
		test	ebx, ebx
		jnz	short loc_42BC36
		push	457h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax

loc_42BC36:				; CODE XREF: .text:0042BC27j
		test	ebx, ebx
		jnz	short loc_42BC47
		push	458h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax

loc_42BC47:				; CODE XREF: .text:0042BC38j
		test	ebx, ebx
		jnz	short loc_42BC58
		push	459h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax

loc_42BC58:				; CODE XREF: .text:0042BC49j
		push	ebx		; hWnd
		call	GetDlgCtrlID
		mov	g_dialog.focus,	eax
		push	ebx		; hWnd
		call	SetFocus
		cmp	g_dialog.letter, 0
		jz	short loc_42BCB6
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
		call	loc_4266D8
		add	esp, 8
		jmp	short loc_42BCD0
; ---------------------------------------------------------------------------

loc_42BCB6:				; CODE XREF: .text:0042BC70j
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_4266D8
		add	esp, 8
		push	0FFFFFFFFh	; lParam
		push	0		; wParam
		push	0B1h		; Msg
		push	ebx		; hWnd
		call	SendMessageW

loc_42BCD0:				; CODE XREF: .text:0042BCB4j
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42BDE5
; ---------------------------------------------------------------------------

loc_42BCE1:				; CODE XREF: .text:0042BBD5j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	loc_42BDE0
		mov	eax, [ebp+14h]
		push	eax		; lp
		push	ebx		; wp
		push	edi		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		test	eax, eax
		jnz	loc_42BDE0
		mov	eax, [edi]
		cmp	eax, 0Ch
		jz	short loc_42BD18
		cmp	eax, 0Eh
		jnz	short loc_42BD93

loc_42BD18:				; CODE XREF: .text:0042BD11j
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 100h
		jnz	short loc_42BD4A
		cmp	g_dialog.initdone, 0
		jz	short loc_42BD37
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_4266D8
		add	esp, 8

loc_42BD37:				; CODE XREF: .text:0042BD2Aj
		and	bx, 0FFFFh
		movzx	edx, bx
		mov	g_dialog.focus,	edx
		jmp	loc_42BDE0
; ---------------------------------------------------------------------------

loc_42BD4A:				; CODE XREF: .text:0042BD21j
		cmp	ax, 200h
		jnz	short loc_42BD5D
		xor	ecx, ecx
		mov	g_dialog.focus,	ecx
		jmp	loc_42BDE0
; ---------------------------------------------------------------------------

loc_42BD5D:				; CODE XREF: .text:0042BD4Ej
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 300h
		jnz	short loc_42BDE0
		and	bx, 0FFFFh
		movzx	edx, bx
		cmp	edx, g_dialog.focus
		jnz	short loc_42BDE0
		cmp	g_dialog.initdone, 0
		jz	short loc_42BDE0
		mov	ecx, g_dialog.focus
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	loc_4266D8
		add	esp, 8
		jmp	short loc_42BDE0
; ---------------------------------------------------------------------------

loc_42BD93:				; CODE XREF: .text:0042BD16j
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 1
		jnz	short loc_42BDAC
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42BDE0
; ---------------------------------------------------------------------------

loc_42BDAC:				; CODE XREF: .text:0042BD9Dj
		cmp	ax, 2
		jnz	short loc_42BDE0
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42BDE0
; ---------------------------------------------------------------------------

loc_42BDBF:				; CODE XREF: .text:0042BBDCj
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42BDD8
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_42BDD8:				; CODE XREF: .text:0042BDCBj
		xor	eax, eax
		jmp	short loc_42BDE5
; ---------------------------------------------------------------------------

loc_42BDDC:				; CODE XREF: .text:0042BBE2j
		xor	eax, eax
		jmp	short loc_42BDE5
; ---------------------------------------------------------------------------

loc_42BDE0:				; CODE XREF: .text:0042BCEFj
					; .text:0042BD06j ...
		mov	eax, 1

loc_42BDE5:				; CODE XREF: .text:0042BCDCj
					; .text:0042BDDAj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 126. _Getfpureg
; Exported entry 570. Getfpureg

; int __cdecl Getfpureg(HWND hparent, int reg, void *data, int letter, int x, int y, int fi)
		public Getfpureg
Getfpureg:				; CODE XREF: .text:00475009p
					; .text:004931A3p ...
		push	ebp		; _Getfpureg
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	edi, offset g_dialog
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+10h]
		test	ebx, ebx
		jl	short loc_42BE14
		cmp	ebx, 8
		jge	short loc_42BE14
		test	esi, esi
		jnz	short loc_42BE1C

loc_42BE14:				; CODE XREF: .text:0042BE09j
					; .text:0042BE0Ej
		or	eax, 0FFFFFFFFh
		jmp	loc_42BEE1
; ---------------------------------------------------------------------------

loc_42BE1C:				; CODE XREF: .text:0042BE12j
		mov	edx, 1
		cmp	dword_5BDCC8, 2
		jz	short loc_42BE2B
		dec	edx

loc_42BE2B:				; CODE XREF: .text:0042BE28j
		shl	edx, 5
		lea	ecx, fpuname[edx]
		mov	eax, [ecx+ebx*4]
		push	eax
		push	offset aModifyS_0 ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-200h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		mov	[edi+4], ecx
		mov	[edi+0Ch], ebx
		push	0Ah		; n
		push	esi		; src
		lea	eax, [edi+14h]
		push	eax		; dest
		call	_memcpy
		mov	edx, [ebp+14h]
		add	esp, 0Ch
		mov	[edi+2Ch], edx
		mov	ecx, [ebp+18h]
		mov	[edi+30h], ecx
		mov	eax, [ebp+1Ch]
		mov	[edi+34h], eax
		mov	edx, [ebp+20h]
		mov	[edi+38h], edx
		mov	dword ptr [edi+3Ch], 0Ah
		mov	dword ptr [edi], offset	stru_521C2C
		push	0		; dwInitParam
		push	offset loc_42BBB8 ; lpDialogFunc
		mov	eax, g_hInstance
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	[edi], eax
		test	ebx, ebx
		jnz	short loc_42BEDF
		push	0Ah		; n
		lea	edx, [edi+14h]
		push	edx		; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_42BEDF
		push	0Ah		; n
		lea	ecx, [edi+14h]
		push	ecx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ebx, 1

loc_42BEDF:				; CODE XREF: .text:0042BEB6j
					; .text:0042BEC9j
		mov	eax, ebx

loc_42BEE1:				; CODE XREF: .text:0042BE17j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 127. _Get3dnow
; Exported entry 546. Get3dnow

; int __cdecl Get3dnow(HWND hparent, wchar_t *_title, void *data, int letter, int x, int	y, int fi, int mode)
		public Get3dnow
Get3dnow:				; CODE XREF: .text:004751DBp
					; .text:0047583Cp ...
		push	ebp		; _Get3dnow
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, offset g_dialog
		test	esi, esi
		jnz	short loc_42BF02
		or	eax, 0FFFFFFFFh
		jmp	loc_42BF89
; ---------------------------------------------------------------------------

loc_42BF02:				; CODE XREF: .text:0042BEF8j
		mov	edx, [ebp+0Ch]
		mov	[edi+4], edx
		push	8		; n
		push	esi		; src
		lea	ecx, [edi+14h]
		push	ecx		; dest
		call	_memcpy
		mov	eax, [ebp+14h]
		add	esp, 0Ch
		mov	[edi+2Ch], eax
		mov	edx, [ebp+18h]
		mov	[edi+30h], edx
		mov	ecx, [ebp+1Ch]
		mov	[edi+34h], ecx
		mov	eax, [ebp+20h]
		mov	[edi+38h], eax
		mov	edx, [ebp+24h]
		mov	[edi+3Ch], edx
		mov	dword ptr [edi], offset	stru_521D6C
		push	0		; dwInitParam
		push	offset loc_42BBB8 ; lpDialogFunc
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	[edi], eax
		test	ebx, ebx
		jnz	short loc_42BF87
		push	8		; n
		lea	edx, [edi+14h]
		push	edx		; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_42BF87
		push	8		; n
		lea	ecx, [edi+14h]
		push	ecx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ebx, 1

loc_42BF87:				; CODE XREF: .text:0042BF5Ej
					; .text:0042BF71j
		mov	eax, ebx

loc_42BF89:				; CODE XREF: .text:0042BEFDj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 128. _Getfloat
; Exported entry 569. Getfloat

; int __cdecl Getfloat(HWND hparent, wchar_t *_title, void *data, int letter, int x, int	y, int fi, int mode)
		public Getfloat
Getfloat:				; CODE XREF: .text:004756BFp
					; .text:004A0405p ...
		push	ebp		; _Getfloat
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset g_dialog
		cmp	dword ptr [ebp+10h], 0
		mov	ebx, [ebp+24h]
		jnz	short loc_42BFAC
		or	eax, 0FFFFFFFFh
		jmp	loc_42C09B
; ---------------------------------------------------------------------------

loc_42BFAC:				; CODE XREF: .text:0042BFA2j
		mov	edx, [ebp+0Ch]
		test	bh, 10h
		mov	[edi+4], edx
		jz	short loc_42BFD6
		mov	ecx, ebx
		and	ecx, 1Fh
		cmp	ecx, 0Ah
		jz	short loc_42BFC9
		or	eax, 0FFFFFFFFh
		jmp	loc_42C09B
; ---------------------------------------------------------------------------

loc_42BFC9:				; CODE XREF: .text:0042BFBFj
		mov	esi, 0Ah
		mov	dword ptr [edi], offset	stru_52226C
		jmp	short loc_42C01C
; ---------------------------------------------------------------------------

loc_42BFD6:				; CODE XREF: .text:0042BFB5j
		mov	eax, ebx
		and	eax, 1Fh
		cmp	eax, 4
		jnz	short loc_42BFED
		mov	esi, 4
		mov	dword ptr [edi], offset	stru_521F24
		jmp	short loc_42C01C
; ---------------------------------------------------------------------------

loc_42BFED:				; CODE XREF: .text:0042BFDEj
		cmp	eax, 8
		jnz	short loc_42BFFF
		mov	esi, 8
		mov	dword ptr [edi], offset	stru_52203C
		jmp	short loc_42C01C
; ---------------------------------------------------------------------------

loc_42BFFF:				; CODE XREF: .text:0042BFF0j
		cmp	eax, 0Ah
		jnz	short loc_42C011
		mov	esi, 0Ah
		mov	dword ptr [edi], offset	stru_522154
		jmp	short loc_42C01C
; ---------------------------------------------------------------------------

loc_42C011:				; CODE XREF: .text:0042C002j
		mov	esi, 4
		mov	dword ptr [edi], offset	stru_521F24

loc_42C01C:				; CODE XREF: .text:0042BFD4j
					; .text:0042BFEBj ...
		push	esi		; n
		mov	eax, [ebp+10h]
		push	eax		; src
		lea	edx, [edi+14h]
		push	edx		; dest
		call	_memcpy
		mov	ecx, [ebp+14h]
		add	esp, 0Ch
		mov	[edi+2Ch], ecx
		mov	eax, [ebp+18h]
		mov	[edi+30h], eax
		mov	edx, [ebp+1Ch]
		mov	[edi+34h], edx
		mov	ecx, [ebp+20h]
		mov	[edi+38h], ecx
		mov	[edi+3Ch], ebx
		push	0		; dwInitParam
		push	offset loc_42BBB8 ; lpDialogFunc
		mov	eax, [ebp+8]
		mov	edx, g_hInstance
		push	eax		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	[edi], eax
		test	ebx, ebx
		jnz	short loc_42C099
		push	esi		; n
		lea	edx, [edi+14h]
		push	edx		; s2
		mov	ecx, [ebp+10h]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_42C099
		push	esi		; n
		lea	eax, [edi+14h]
		push	eax		; src
		mov	edx, [ebp+10h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ebx, 1

loc_42C099:				; CODE XREF: .text:0042C06Cj
					; .text:0042C081j
		mov	eax, ebx

loc_42C09B:				; CODE XREF: .text:0042BFA7j
					; .text:0042BFC4j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; INT_PTR __stdcall loc_42C0A0(HWND, UINT, WPARAM, LPARAM)
loc_42C0A0:				; DATA XREF: .text:0042C30Co
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
		jz	short loc_42C0CF
		dec	eax
		jz	loc_42C16E
		dec	eax
		jz	loc_42C26F
		jmp	loc_42C28C
; ---------------------------------------------------------------------------

loc_42C0CF:				; CODE XREF: .text:0042C0BAj
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		mov	eax, 4B2h
		mov	g_dialog.focus,	eax
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		push	ebx		; hWnd
		call	SetFocus
		cmp	g_dialog.letter, 0
		jz	short loc_42C143
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
		call	loc_426A44
		add	esp, 8
		jmp	short loc_42C15D
; ---------------------------------------------------------------------------

loc_42C143:				; CODE XREF: .text:0042C0FDj
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426A44
		add	esp, 8
		push	0FFFFFFFFh	; lParam
		push	0		; wParam
		push	0B1h		; Msg
		push	ebx		; hWnd
		call	SendMessageW

loc_42C15D:				; CODE XREF: .text:0042C141j
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42C295
; ---------------------------------------------------------------------------

loc_42C16E:				; CODE XREF: .text:0042C0BDj
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	loc_42C290
		mov	eax, [ebp+14h]
		push	eax		; lp
		push	ebx		; wp
		push	edi		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, [edi]
		cmp	eax, 0Ch
		jz	short loc_42C1A1
		cmp	eax, 0Eh
		jnz	loc_42C224

loc_42C1A1:				; CODE XREF: .text:0042C196j
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 100h
		jnz	short loc_42C1D3
		cmp	g_dialog.initdone, 0
		jz	short loc_42C1C0
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426A44
		add	esp, 8

loc_42C1C0:				; CODE XREF: .text:0042C1B3j
		and	bx, 0FFFFh
		movzx	edx, bx
		mov	g_dialog.focus,	edx
		jmp	loc_42C290
; ---------------------------------------------------------------------------

loc_42C1D3:				; CODE XREF: .text:0042C1AAj
		cmp	ax, 200h
		jnz	short loc_42C1E6
		xor	ecx, ecx
		mov	g_dialog.focus,	ecx
		jmp	loc_42C290
; ---------------------------------------------------------------------------

loc_42C1E6:				; CODE XREF: .text:0042C1D7j
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 300h
		jnz	loc_42C290
		and	bx, 0FFFFh
		movzx	edx, bx
		cmp	edx, g_dialog.focus
		jnz	loc_42C290
		cmp	g_dialog.initdone, 0
		jz	short loc_42C290
		mov	ecx, g_dialog.focus
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426A44
		add	esp, 8
		jmp	short loc_42C290
; ---------------------------------------------------------------------------

loc_42C224:				; CODE XREF: .text:0042C19Bj
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 4C5h
		jz	short loc_42C23C
		cmp	ax, 4C6h
		jz	short loc_42C23C
		cmp	ax, 4C7h
		jnz	short loc_42C249

loc_42C23C:				; CODE XREF: .text:0042C22Ej
					; .text:0042C234j
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426A44
		add	esp, 8
		jmp	short loc_42C290
; ---------------------------------------------------------------------------

loc_42C249:				; CODE XREF: .text:0042C23Aj
		cmp	ax, 1
		jnz	short loc_42C25C
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42C290
; ---------------------------------------------------------------------------

loc_42C25C:				; CODE XREF: .text:0042C24Dj
		cmp	ax, 2
		jnz	short loc_42C290
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42C290
; ---------------------------------------------------------------------------

loc_42C26F:				; CODE XREF: .text:0042C0C4j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42C288
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_42C288:				; CODE XREF: .text:0042C27Bj
		xor	eax, eax
		jmp	short loc_42C295
; ---------------------------------------------------------------------------

loc_42C28C:				; CODE XREF: .text:0042C0CAj
		xor	eax, eax
		jmp	short loc_42C295
; ---------------------------------------------------------------------------

loc_42C290:				; CODE XREF: .text:0042C17Cj
					; .text:0042C1CEj ...
		mov	eax, 1

loc_42C295:				; CODE XREF: .text:0042C169j
					; .text:0042C28Aj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 129. _Getmmx
; Exported entry 584. Getmmx

; int __cdecl Getmmx(HWND hparent, wchar_t *_title, void	*data, int letter, int x, int y, int fi)
		public Getmmx
Getmmx:					; CODE XREF: .text:0047512Ep
					; .text:0047577Bp ...
		push	ebp		; _Getmmx
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, offset g_dialog
		test	esi, esi
		jnz	short loc_42C2BA
		or	eax, 0FFFFFFFFh
		jmp	loc_42C358
; ---------------------------------------------------------------------------

loc_42C2BA:				; CODE XREF: .text:0042C2B0j
		mov	edx, [ebp+0Ch]
		mov	[edi+4], edx
		push	8		; n
		push	esi		; src
		lea	ecx, [edi+14h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp+14h]
		mov	[edi+2Ch], eax
		mov	edx, [ebp+18h]
		mov	[edi+30h], edx
		mov	ecx, [ebp+1Ch]
		mov	[edi+34h], ecx
		mov	eax, [ebp+20h]
		mov	[edi+38h], eax
		mov	dword ptr [edi+3Ch], 8
		mov	dword ptr [edi], offset	stru_522474
		mov	eax, dword_5BE244
		test	eax, eax
		jl	short loc_42C302
		cmp	eax, 2
		jle	short loc_42C30A

loc_42C302:				; CODE XREF: .text:0042C2FBj
		xor	edx, edx
		mov	dword_5BE244, edx

loc_42C30A:				; CODE XREF: .text:0042C300j
		push	0		; dwInitParam
		push	offset loc_42C0A0 ; lpDialogFunc
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	[edi], eax
		test	ebx, ebx
		jnz	short loc_42C356
		push	8		; n
		lea	edx, [edi+14h]
		push	edx		; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_42C356
		push	8		; n
		lea	ecx, [edi+14h]
		push	ecx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ebx, 1

loc_42C356:				; CODE XREF: .text:0042C32Dj
					; .text:0042C340j
		mov	eax, ebx

loc_42C358:				; CODE XREF: .text:0042C2B5j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; INT_PTR __stdcall loc_42C360(HWND, UINT, WPARAM, LPARAM)
loc_42C360:				; DATA XREF: .text:0042C64Fo
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
		jz	short loc_42C38F
		dec	eax
		jz	loc_42C4B2
		dec	eax
		jz	loc_42C5B3
		jmp	loc_42C5D0
; ---------------------------------------------------------------------------

loc_42C38F:				; CODE XREF: .text:0042C37Aj
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		mov	edx, g_dialog.mode
		add	esp, 8
		mov	eax, edx
		mov	ecx, edx
		and	eax, 0F0000h
		and	ecx, 0F00h
		sar	eax, 10h
		cmp	ecx, 700h
		jnz	short loc_42C3F1
		and	edx, 1Fh
		cmp	edx, 8
		jnz	short loc_42C3DB
		test	eax, eax
		jns	short loc_42C3CC
		add	eax, 7

loc_42C3CC:				; CODE XREF: .text:0042C3C7j
		sar	eax, 3
		add	eax, 515h
		mov	g_dialog.focus,	eax
		jmp	short loc_42C426
; ---------------------------------------------------------------------------

loc_42C3DB:				; CODE XREF: .text:0042C3C3j
		test	eax, eax
		jns	short loc_42C3E2
		add	eax, 3

loc_42C3E2:				; CODE XREF: .text:0042C3DDj
		sar	eax, 2
		add	eax, 517h
		mov	g_dialog.focus,	eax
		jmp	short loc_42C426
; ---------------------------------------------------------------------------

loc_42C3F1:				; CODE XREF: .text:0042C3BBj
		mov	edx, g_dialog.mode
		and	edx, 1Fh
		cmp	edx, 2
		jnz	short loc_42C412
		sar	eax, 1
		jns	short loc_42C406
		adc	eax, 0

loc_42C406:				; CODE XREF: .text:0042C401j
		add	eax, 51Fh
		mov	g_dialog.focus,	eax
		jmp	short loc_42C426
; ---------------------------------------------------------------------------

loc_42C412:				; CODE XREF: .text:0042C3FDj
		test	eax, eax
		jns	short loc_42C419
		add	eax, 3

loc_42C419:				; CODE XREF: .text:0042C414j
		sar	eax, 2
		add	eax, 51Bh
		mov	g_dialog.focus,	eax

loc_42C426:				; CODE XREF: .text:0042C3D9j
					; .text:0042C3EFj ...
		mov	eax, g_dialog.focus
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		push	ebx		; hWnd
		call	SetFocus
		cmp	g_dialog.letter, 0
		jz	short loc_42C487
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
		call	loc_426D70
		add	esp, 8
		jmp	short loc_42C4A1
; ---------------------------------------------------------------------------

loc_42C487:				; CODE XREF: .text:0042C441j
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426D70
		add	esp, 8
		push	0FFFFFFFFh	; lParam
		push	0		; wParam
		push	0B1h		; Msg
		push	ebx		; hWnd
		call	SendMessageW

loc_42C4A1:				; CODE XREF: .text:0042C485j
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42C5D9
; ---------------------------------------------------------------------------

loc_42C4B2:				; CODE XREF: .text:0042C37Dj
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	loc_42C5D4
		mov	eax, [ebp+14h]
		push	eax		; lp
		push	ebx		; wp
		push	edi		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, [edi]
		cmp	eax, 0Ch
		jz	short loc_42C4E5
		cmp	eax, 0Eh
		jnz	loc_42C568

loc_42C4E5:				; CODE XREF: .text:0042C4DAj
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 100h
		jnz	short loc_42C517
		cmp	g_dialog.initdone, 0
		jz	short loc_42C504
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426D70
		add	esp, 8

loc_42C504:				; CODE XREF: .text:0042C4F7j
		and	bx, 0FFFFh
		movzx	edx, bx
		mov	g_dialog.focus,	edx
		jmp	loc_42C5D4
; ---------------------------------------------------------------------------

loc_42C517:				; CODE XREF: .text:0042C4EEj
		cmp	ax, 200h
		jnz	short loc_42C52A
		xor	ecx, ecx
		mov	g_dialog.focus,	ecx
		jmp	loc_42C5D4
; ---------------------------------------------------------------------------

loc_42C52A:				; CODE XREF: .text:0042C51Bj
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 300h
		jnz	loc_42C5D4
		and	bx, 0FFFFh
		movzx	edx, bx
		cmp	edx, g_dialog.focus
		jnz	loc_42C5D4
		cmp	g_dialog.initdone, 0
		jz	short loc_42C5D4
		mov	ecx, g_dialog.focus
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426D70
		add	esp, 8
		jmp	short loc_42C5D4
; ---------------------------------------------------------------------------

loc_42C568:				; CODE XREF: .text:0042C4DFj
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 529h
		jz	short loc_42C580
		cmp	ax, 52Ah
		jz	short loc_42C580
		cmp	ax, 52Bh
		jnz	short loc_42C58D

loc_42C580:				; CODE XREF: .text:0042C572j
					; .text:0042C578j
		push	0		; nIDDlgItem
		push	esi		; hDlg
		call	loc_426D70
		add	esp, 8
		jmp	short loc_42C5D4
; ---------------------------------------------------------------------------

loc_42C58D:				; CODE XREF: .text:0042C57Ej
		cmp	ax, 1
		jnz	short loc_42C5A0
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42C5D4
; ---------------------------------------------------------------------------

loc_42C5A0:				; CODE XREF: .text:0042C591j
		cmp	ax, 2
		jnz	short loc_42C5D4
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42C5D4
; ---------------------------------------------------------------------------

loc_42C5B3:				; CODE XREF: .text:0042C384j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42C5CC
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_42C5CC:				; CODE XREF: .text:0042C5BFj
		xor	eax, eax
		jmp	short loc_42C5D9
; ---------------------------------------------------------------------------

loc_42C5D0:				; CODE XREF: .text:0042C38Aj
		xor	eax, eax
		jmp	short loc_42C5D9
; ---------------------------------------------------------------------------

loc_42C5D4:				; CODE XREF: .text:0042C4C0j
					; .text:0042C512j ...
		mov	eax, 1

loc_42C5D9:				; CODE XREF: .text:0042C4ADj
					; .text:0042C5CEj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 130. _Getsse
; Exported entry 609. Getsse

; int __cdecl Getsse(HWND hparent, wchar_t *_title, void	*data, int letter, int x, int y, int fi, int mode)
		public Getsse
Getsse:					; CODE XREF: .text:004752C2p
					; .text:00475938p ...
		push	ebp		; _Getsse
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, offset g_dialog
		test	esi, esi
		jnz	short loc_42C5FE
		or	eax, 0FFFFFFFFh
		jmp	loc_42C69B
; ---------------------------------------------------------------------------

loc_42C5FE:				; CODE XREF: .text:0042C5F4j
		mov	edx, [ebp+0Ch]
		mov	[edi+4], edx
		push	10h		; n
		push	esi		; src
		lea	ecx, [edi+14h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp+14h]
		mov	[edi+2Ch], eax
		mov	edx, [ebp+18h]
		mov	[edi+30h], edx
		mov	ecx, [ebp+1Ch]
		mov	[edi+34h], ecx
		mov	eax, [ebp+20h]
		mov	[edi+38h], eax
		mov	edx, [ebp+24h]
		mov	[edi+3Ch], edx
		mov	dword ptr [edi], offset	stru_52294C
		mov	eax, dword_5BE244
		test	eax, eax
		jl	short loc_42C645
		cmp	eax, 2
		jle	short loc_42C64D

loc_42C645:				; CODE XREF: .text:0042C63Ej
		xor	edx, edx
		mov	dword_5BE244, edx

loc_42C64D:				; CODE XREF: .text:0042C643j
		push	0		; dwInitParam
		push	offset loc_42C360 ; lpDialogFunc
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	[edi], eax
		test	ebx, ebx
		jnz	short loc_42C699
		push	10h		; n
		lea	edx, [edi+14h]
		push	edx		; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_42C699
		push	10h		; n
		lea	ecx, [edi+14h]
		push	ecx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ebx, 1

loc_42C699:				; CODE XREF: .text:0042C670j
					; .text:0042C683j
		mov	eax, ebx

loc_42C69B:				; CODE XREF: .text:0042C5F9j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; INT_PTR __cdecl loc_42C6A0(HWND hWnd,	UINT msg, WPARAM a3, LPARAM a4)
loc_42C6A0:				; DATA XREF: .text:0042D08Co
					; .text:0042D135o ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFF90h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		cmp	eax, 111h
		jg	short loc_42C6EB
		jz	loc_42CB41
		sub	eax, 24h
		jz	loc_42CB25
		sub	eax, 22h
		jz	loc_42CA51
		dec	eax
		jz	loc_42CA61
		sub	eax, 0C9h
		jz	short loc_42C70F
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42C6EB:				; CODE XREF: .text:0042C6BEj
		sub	eax, 112h
		jz	loc_42CFC6
		sub	eax, 26h
		jz	loc_42C9D8
		sub	eax, 33Bh
		jz	loc_42CA18
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42C70F:				; CODE XREF: .text:0042C6E4j
		push	offset g_dialog	; pdlg
		push	ebx		; hw
		call	Preparedialog
		add	esp, 8
		lea	edx, [ebp-1070h]
		push	edx		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-1068h]
		mov	eax, [ebp-1064h]
		sub	ecx, [ebp-1070h]
		sub	eax, [ebp-106Ch]
		mov	dword_5DA838, ecx
		push	583h		; nIDDlgItem
		push	ebx		; hDlg
		mov	dword_5DA83C, eax
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_42C76D
		test	byte ptr g_dialog.mode+1, 20h
		jnz	short loc_42C76D
		push	esi		; hWnd
		call	DestroyWindow

loc_42C76D:				; CODE XREF: .text:0042C75Cj
					; .text:0042C765j
		push	57Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_42C7C5
		push	0		; rpos
		push	offset stru_5DA5CC ; pt
		push	esi		; hparent
		call	Createottablewindow
		add	esp, 0Ch
		push	0		; wArrows
		push	1		; wSBflags
		push	esi		; hWnd
		call	EnableScrollBar
		push	100h		; nMaxCount
		lea	eax, [ebp-0A04h]
		push	eax		; lpString
		push	57Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemTextW
		lea	edx, [ebp-0A04h]
		push	edx
		push	0
		push	offset stru_5DA5CC.sorted
		call	loc_4C1570
		add	esp, 0Ch

loc_42C7C5:				; CODE XREF: .text:0042C77Cj
		push	57Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		mov	eax, stru_5DA5B4.anonymous_0
		dec	eax
		push	0		; lParam
		push	eax		; wParam
		push	141h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		test	byte ptr g_dialog.mode+2, 80h
		jz	short loc_42C811
		push	0		; lParam
		mov	edx, dword_582DF0
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font.hfont[edx*4]
		push	eax		; wParam
		push	30h		; Msg
		push	esi		; hWnd
		call	SendMessageW

loc_42C811:				; CODE XREF: .text:0042C7EDj
		push	esi		; hWnd
		call	SetFocus
		mov	g_dialog.focus,	57Ah
		push	ebx		; hDlg
		call	loc_4272B8
		pop	ecx
		cmp	stru_5DA5B4.anonymous_5, 1
		jnz	loc_42C95E
		xor	edi, edi

loc_42C837:				; CODE XREF: .text:0042C8CFj
		push	edi
		push	offset aExecutableI_0 ;	format
		lea	eax, [ebp-0A44h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0A04h]
		lea	ecx, [ebp-0A44h]
		push	104h		; length
		push	edx		; s
		push	ecx		; key
		push	offset aHistory	; "History"
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jz	short loc_42C8D5
		lea	eax, [ebp-0E44h]
		push	eax		; ext
		lea	edx, [ebp-0C44h]
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		lea	ecx, [ebp-0A04h]
		push	ecx		; path
		call	__wfnsplit
		add	esp, 14h
		lea	eax, [ebp-0E44h]
		lea	edx, [ebp-0C44h]
		lea	ecx, [ebp-0A04h]
		push	eax		; ext
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		push	ecx		; path
		call	__wfnmerge
		add	esp, 14h
		lea	eax, [ebp-0A04h]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	579h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		inc	edi
		cmp	edi, 6
		jl	loc_42C837

loc_42C8D5:				; CODE XREF: .text:0042C86Ej
		push	0		; lParam
		push	0		; wParam
		push	14Eh		; Msg
		push	579h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		push	400h		; length
		lea	edx, [ebp-0A04h]
		push	edx		; s
		push	offset aArguments0 ; "Arguments[0]"
		push	offset aHistory	; "History"
		call	Stringfromini
		add	esp, 10h
		lea	ecx, [ebp-0A04h]
		push	ecx		; lpString
		push	esi		; hWnd
		call	SetWindowTextW
		push	0FFFF0000h	; lParam
		push	0		; wParam
		push	142h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		push	104h		; length
		lea	eax, [ebp-0A04h]
		push	eax		; s
		push	offset aCurrentDir0_1 ;	"Current dir[0]"
		push	offset aHistory	; "History"
		call	Stringfromini
		add	esp, 10h
		lea	edx, [ebp-0A04h]
		push	edx		; lpString
		push	57Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetWindowTextW
		jmp	short loc_42C9C7
; ---------------------------------------------------------------------------

loc_42C95E:				; CODE XREF: .text:0042C82Fj
		cmp	g_dialog.letter, 0
		jz	short loc_42C99F
		mov	cx, word ptr g_dialog.letter
		lea	eax, [ebp-0A04h]
		mov	[ebp-0A04h], cx
		mov	word ptr [ebp-0A02h], 0
		push	eax		; lpString
		push	esi		; hWnd
		call	SetWindowTextW
		push	10001h		; lParam
		push	0		; wParam
		push	142h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		jmp	short loc_42C9C7
; ---------------------------------------------------------------------------

loc_42C99F:				; CODE XREF: .text:0042C965j
		mov	eax, s1
		test	eax, eax
		jz	short loc_42C9C7
		cmp	word ptr [eax],	0
		jz	short loc_42C9C7
		push	eax		; lpString
		push	esi		; hWnd
		call	SetWindowTextW
		push	0FFFF0000h	; lParam
		push	0		; wParam
		push	142h		; Msg
		push	esi		; hWnd
		call	SendMessageW

loc_42C9C7:				; CODE XREF: .text:0042C95Cj
					; .text:0042C99Dj ...
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42CFE1
; ---------------------------------------------------------------------------

loc_42C9D8:				; CODE XREF: .text:0042C6F9j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 57Eh
		jz	short loc_42C9EF
		xor	eax, eax
		jmp	loc_42CFE1
; ---------------------------------------------------------------------------

loc_42C9EF:				; CODE XREF: .text:0042C9E6j
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
		jmp	loc_42CFE1
; ---------------------------------------------------------------------------

loc_42CA18:				; CODE XREF: .text:0042C704j
		push	57Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		cmp	eax, [ebp+14h]
		jnz	loc_42CFDF
		mov	g_dialog.focus,	57Bh
		push	0		; force
		push	offset stru_5DA5CC ; pt
		call	Updatetable
		add	esp, 8
		push	ebx		; hDlg
		call	loc_4272B8
		pop	ecx
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CA51:				; CODE XREF: .text:0042C6D2j
		push	offset Rect	; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CA61:				; CODE XREF: .text:0042C6D9j
		push	57Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	loc_42CFDF
		lea	eax, [ebp-1070h]
		push	eax		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		mov	esi, [ebp-1068h]
		mov	eax, Rect.right
		sub	eax, Rect.left
		sub	esi, [ebp-1070h]
		sub	esi, eax
		mov	eax, Rect.bottom
		mov	edi, [ebp-1064h]
		sub	edi, [ebp-106Ch]
		sub	eax, Rect.top
		sub	edi, eax
		test	esi, esi
		jnz	short loc_42CAC1
		test	edi, edi
		jz	loc_42CFDF

loc_42CAC1:				; CODE XREF: .text:0042CAB7j
		push	0		; int
		push	esi		; int
		push	0		; int
		push	0		; int
		push	57Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	Movecontrol
		add	esp, 18h
		push	edi		; int
		push	esi		; int
		push	0		; int
		push	0		; int
		push	57Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	Movecontrol
		add	esp, 18h
		push	0		; int
		push	esi		; int
		push	edi		; int
		push	0		; int
		push	57Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	Movecontrol
		add	esp, 18h
		push	0		; int
		push	0		; int
		push	edi		; int
		push	esi		; int
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	Movecontrol
		add	esp, 18h
		push	0		; int
		push	0		; int
		push	edi		; int
		push	esi		; int
		push	2		; nIDDlgItem
		push	ebx		; hDlg
		call	Movecontrol
		add	esp, 18h
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CB25:				; CODE XREF: .text:0042C6C9j
		mov	eax, [ebp+14h]
		mov	edx, dword_5DA838
		mov	[eax+18h], edx
		mov	ecx, dword_5DA83C
		mov	[eax+1Ch], ecx
		xor	eax, eax
		jmp	loc_42CFE1
; ---------------------------------------------------------------------------

loc_42CB41:				; CODE XREF: .text:0042C6C0j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_42CFDF
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		push	esi		; wp
		push	eax		; pctr
		push	ebx		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, esi
		and	ax, 0FFFFh
		cmp	ax, 579h
		jnz	loc_42CC58
		mov	edx, esi
		shr	edx, 10h
		cmp	dx, 1
		jnz	loc_42CC58
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	579h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		mov	edi, eax
		test	edi, edi
		jl	loc_42CFDF
		push	edi
		push	offset aArgumentsI_0 ; "Arguments[%i]"
		lea	eax, [ebp-0A44h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0A04h]
		lea	ecx, [ebp-0A44h]
		push	400h		; length
		push	edx		; s
		push	ecx		; key
		push	offset aHistory	; "History"
		call	Stringfromini
		add	esp, 10h
		push	57Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-0A04h]
		push	eax		; lpString
		push	esi		; hWnd
		call	SetWindowTextW
		push	esi		; hWnd
		call	SetFocus
		push	0FFFF0000h	; lParam
		push	0		; wParam
		push	142h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		push	edi
		push	offset aCurrentDirI ; "Current dir[%i]"
		lea	edx, [ebp-0A44h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-0A04h]
		lea	eax, [ebp-0A44h]
		push	104h		; length
		push	ecx		; s
		push	eax		; key
		push	offset aHistory	; "History"
		call	Stringfromini
		add	esp, 10h
		lea	edx, [ebp-0A04h]
		push	edx		; lpString
		push	57Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetWindowTextW
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CC58:				; CODE XREF: .text:0042CB6Cj
					; .text:0042CB7Bj
		mov	ecx, esi
		and	cx, 0FFFFh
		cmp	cx, 57Ah
		jnz	short loc_42CCA1
		mov	eax, esi
		shr	eax, 10h
		cmp	ax, 3
		jnz	short loc_42CCA1
		mov	g_dialog.focus,	57Ah
		push	offset stru_5DA5CC ; pt
		call	Removetableselection
		pop	ecx
		push	0		; force
		push	offset stru_5DA5CC ; pt
		call	Updatetable
		add	esp, 8
		push	ebx		; hDlg
		call	loc_4272B8
		pop	ecx
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CCA1:				; CODE XREF: .text:0042CC64j
					; .text:0042CC6Fj
		mov	edx, esi
		and	dx, 0FFFFh
		cmp	dx, 57Ah
		jnz	short loc_42CD21
		mov	eax, esi
		shr	eax, 10h
		cmp	ax, 5
		jz	short loc_42CCC0
		cmp	ax, 9
		jnz	short loc_42CD21

loc_42CCC0:				; CODE XREF: .text:0042CCB8j
		push	(offset	aOd_empty+0Fh) ; lpString
		push	57Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	57Bh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	loc_42CFDF
		push	100h		; nMaxCount
		lea	eax, [ebp-0A04h]
		push	eax		; lpString
		push	57Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemTextW
		lea	edx, [ebp-0A04h]
		push	edx
		push	0
		push	offset stru_5DA5CC.sorted
		call	loc_4C1570
		add	esp, 0Ch
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CD21:				; CODE XREF: .text:0042CCADj
					; .text:0042CCBEj
		mov	eax, esi
		and	ax, 0FFFFh
		cmp	ax, 57Dh
		jnz	short loc_42CD71
		cmp	stru_5DA5B4.anonymous_4, 0
		jz	short loc_42CD71
		mov	edx, stru_5DA5B4.anonymous_4
		push	edx		; dir
		push	offset aSelectCurrentD ; "Select current directory for executable"
		call	_T
		pop	ecx
		push	eax		; comment
		push	ebx		; hw
		call	Browsedirectory
		add	esp, 0Ch
		mov	edi, eax
		dec	edi
		jnz	loc_42CFDF
		mov	eax, stru_5DA5B4.anonymous_4
		push	eax		; lpString
		push	57Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CD71:				; CODE XREF: .text:0042CD2Bj
					; .text:0042CD34j
		cmp	ax, 1
		jnz	loc_42CFAE
		push	57Ah		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		cmp	g_dialog.focus,	57Bh
		jnz	short loc_42CDA6
		lea	eax, [ebp-0A04h]
		push	eax
		call	loc_427220
		pop	ecx
		mov	[ebp-4], eax
		jmp	short loc_42CDCB
; ---------------------------------------------------------------------------

loc_42CDA6:				; CODE XREF: .text:0042CD92j
		mov	edx, 400h
		cmp	stru_5DA5B4.anonymous_5, 1
		jz	short loc_42CDBA
		add	edx, 0FFFFFD00h

loc_42CDBA:				; CODE XREF: .text:0042CDB2j
		push	edx		; nMaxCount
		lea	ecx, [ebp-0A04h]
		push	ecx		; lpString
		push	esi		; hWnd
		call	GetWindowTextW
		mov	[ebp-4], eax

loc_42CDCB:				; CODE XREF: .text:0042CDA4j
		cmp	stru_5DA5B4.anonymous_1, 0
		jz	loc_42CEA9
		mov	eax, stru_5DA5B4.mode
		mov	edx, stru_5DA5B4.threadid
		or	eax, 3
		lea	ecx, [ebp-0A04h]
		push	eax		; mode
		push	0		; b
		push	0		; a
		push	edx		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		push	ecx		; expression
		lea	eax, [ebp-1060h]
		push	eax		; result
		call	Expression
		add	esp, 24h
		test	byte ptr [ebp-1058h], 0Fh
		jnz	short loc_42CE28
		lea	edx, [ebp-1046h]
		push	edx		; lpString
		push	57Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CE28:				; CODE XREF: .text:0042CE0Fj
		mov	ecx, [ebp-1058h]
		and	ecx, 0Fh
		cmp	ecx, 3
		jz	short loc_42CE52
		push	(offset	aFirstAddress_1+1Eh) ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	57Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CE52:				; CODE XREF: .text:0042CE34j
		mov	eax, g_dialog.mode
		and	eax, 1Fh
		cmp	eax, 2
		jnz	short loc_42CE9B
		test	dword ptr [ebp-1050h], 0FFFF0000h
		jz	short loc_42CE9B
		mov	edx, [ebp-1050h]
		and	edx, 0FFFF0000h
		cmp	edx, 0FFFF0000h
		jz	short loc_42CE9B
		push	offset aResultDoesnTFi ; "Result doesn't fit into 16 bits"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	57Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CE9B:				; CODE XREF: .text:0042CE5Dj
					; .text:0042CE69j ...
		mov	ecx, stru_5DA5B4.anonymous_1
		mov	eax, [ebp-1050h]
		mov	[ecx], eax

loc_42CEA9:				; CODE XREF: .text:0042CDD2j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_42CEC8
		cmp	g_dialog.cesav,	0
		jz	short loc_42CEC8
		lea	edx, [ebp-0A04h]
		push	edx		; s
		push	esi		; hc
		call	Addstringtocombolist
		add	esp, 8

loc_42CEC8:				; CODE XREF: .text:0042CEADj
					; .text:0042CEB6j
		cmp	s1, 0
		jz	short loc_42CEF3
		cmp	stru_5DA5B4.anonymous_5, 0
		jnz	short loc_42CEF7
		lea	ecx, [ebp-0A04h]
		push	ecx		; s2
		mov	eax, s1
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_42CEF7

loc_42CEF3:				; CODE XREF: .text:0042CECFj
		xor	edi, edi
		jmp	short loc_42CF3A
; ---------------------------------------------------------------------------

loc_42CEF7:				; CODE XREF: .text:0042CED8j
					; .text:0042CEF1j
		lea	eax, [ebp-0A04h]
		push	eax		; src
		mov	edx, stru_5DA5B4.anonymous_0
		push	edx		; n
		mov	ecx, s1
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	stru_5DA5B4.anonymous_5, 0
		jnz	short loc_42CF24
		mov	edi, 1
		jmp	short loc_42CF3A
; ---------------------------------------------------------------------------

loc_42CF24:				; CODE XREF: .text:0042CF1Bj
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	579h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		mov	edi, eax

loc_42CF3A:				; CODE XREF: .text:0042CEF5j
					; .text:0042CF22j
		cmp	stru_5DA5B4.anonymous_5, 1
		jnz	short loc_42CFA2
		push	57Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-0A04h]
		push	104h		; nMaxCount
		push	eax		; lpString
		push	esi		; hWnd
		call	GetWindowTextW
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_42CF84
		cmp	g_dialog.cesav+4, 0
		jz	short loc_42CF84
		lea	edx, [ebp-0A04h]
		push	edx		; s
		push	esi		; hc
		call	Addstringtocombolist
		add	esp, 8

loc_42CF84:				; CODE XREF: .text:0042CF69j
					; .text:0042CF72j
		mov	eax, stru_5DA5B4.anonymous_4
		test	eax, eax
		jz	short loc_42CFA2
		lea	edx, [ebp-0A04h]
		push	edx		; src
		push	104h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_42CFA2:				; CODE XREF: .text:0042CF41j
					; .text:0042CF8Bj
		push	edi		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CFAE:				; CODE XREF: .text:0042CD75j
		and	si, 0FFFFh
		cmp	si, 2
		jnz	short loc_42CFDF
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42CFDF
; ---------------------------------------------------------------------------

loc_42CFC6:				; CODE XREF: .text:0042C6F0j
		and	esi, 0FFF0h
		cmp	esi, 0F060h
		jnz	short loc_42CFDF
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8

loc_42CFDF:				; CODE XREF: .text:0042C6E6j
					; .text:0042C70Aj ...
		xor	eax, eax

loc_42CFE1:				; CODE XREF: .text:0042C9D3j
					; .text:0042C9EAj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 131. _Getstring
; Exported entry 610. Getstring

; int __cdecl Getstring(HWND hparent, wchar_t *_title, wchar_t *s, int length, int savetype, int	letter,	int x, int y, int fi, int mode)
		public Getstring
Getstring:				; CODE XREF: .text:0045B43Ep
					; .text:0049FC91p ...
		push	ebp		; _Getstring
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	edx, [ebp+2Ch]
		mov	eax, [ebp+10h]
		mov	ebx, offset g_dialog
		test	eax, eax
		jz	short loc_42D006
		cmp	dword ptr [ebp+14h], 2
		jg	short loc_42D00E

loc_42D006:				; CODE XREF: .text:0042CFFEj
		or	eax, 0FFFFFFFFh
		jmp	loc_42D0A9
; ---------------------------------------------------------------------------

loc_42D00E:				; CODE XREF: .text:0042D004j
		mov	dword ptr [ebp-4], 100h
		mov	ecx, [ebp+14h]
		mov	s1, eax
		cmp	ecx, [ebp-4]
		jge	short loc_42D027
		lea	eax, [ebp+14h]
		jmp	short loc_42D02A
; ---------------------------------------------------------------------------

loc_42D027:				; CODE XREF: .text:0042D020j
		lea	eax, [ebp-4]

loc_42D02A:				; CODE XREF: .text:0042D025j
		mov	ecx, [eax]
		xor	eax, eax
		mov	stru_5DA5B4.anonymous_0, ecx
		xor	ecx, ecx
		mov	stru_5DA5B4.anonymous_1, eax
		xor	eax, eax
		mov	stru_5DA5B4.mode, ecx
		xor	ecx, ecx
		mov	stru_5DA5B4.threadid, eax
		mov	eax, [ebp+0Ch]
		mov	stru_5DA5B4.anonymous_5, ecx
		mov	[ebx+4], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebx+2Ch], ecx
		mov	eax, [ebp+20h]
		mov	[ebx+30h], eax
		mov	ecx, [ebp+24h]
		mov	[ebx+34h], ecx
		mov	eax, [ebp+28h]
		mov	[ebx+38h], eax
		mov	[ebx+3Ch], edx
		mov	ecx, [ebp+18h]
		test	dh, 10h
		mov	[ebx+40h], ecx
		jz	short loc_42D084
		mov	dword ptr [ebx], offset	stru_523054
		jmp	short loc_42D08A
; ---------------------------------------------------------------------------

loc_42D084:				; CODE XREF: .text:0042D07Aj
		mov	dword ptr [ebx], offset	stru_522EEC

loc_42D08A:				; CODE XREF: .text:0042D082j
		push	0		; dwInitParam
		push	offset loc_42C6A0 ; lpDialogFunc
		mov	edx, [ebp+8]
		mov	eax, g_hInstance
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		mov	[ebx], edx

loc_42D0A9:				; CODE XREF: .text:0042D009j
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 132. _Getdwordexpression
; Exported entry 564. Getdwordexpression

; int __cdecl Getdwordexpression(HWND hparent, wchar_t *_title, ulong *u, ulong threadid, int savetype, int x, int y, int fi, int mode)
		public Getdwordexpression
Getdwordexpression:			; CODE XREF: .text:004A60A7p
					; .text:004B4906p ...
		push	ebp		; _Getdwordexpression
		mov	ebp, esp
		push	ebx
		mov	ebx, offset g_dialog
		mov	eax, [ebp+10h]
		mov	edx, [ebp+28h]
		test	eax, eax
		jnz	short loc_42D0C9
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_42D0C9:				; CODE XREF: .text:0042D0C1j
		xor	ecx, ecx
		mov	s1, ecx
		xor	ecx, ecx
		mov	stru_5DA5B4.anonymous_0, ecx
		mov	stru_5DA5B4.anonymous_1, eax
		xor	eax, eax
		xor	ecx, ecx
		mov	stru_5DA5B4.mode, eax
		mov	eax, [ebp+14h]
		mov	stru_5DA5B4.threadid, eax
		mov	eax, [ebp+0Ch]
		mov	stru_5DA5B4.anonymous_5, ecx
		mov	[ebx+4], eax
		xor	ecx, ecx
		mov	[ebx+2Ch], ecx
		mov	eax, [ebp+1Ch]
		mov	[ebx+30h], eax
		mov	ecx, [ebp+20h]
		mov	[ebx+34h], ecx
		mov	ecx, edx
		mov	eax, [ebp+24h]
		and	ecx, 0FFFFFFE0h
		mov	[ebx+38h], eax
		mov	[ebx+3Ch], ecx
		mov	eax, [ebp+18h]
		test	dh, 10h
		mov	[ebx+40h], eax
		jz	short loc_42D12D
		mov	dword ptr [ebx], offset	stru_5231BC
		jmp	short loc_42D133
; ---------------------------------------------------------------------------

loc_42D12D:				; CODE XREF: .text:0042D123j
		mov	dword ptr [ebx], offset	stru_522F8C

loc_42D133:				; CODE XREF: .text:0042D12Bj
		push	0		; dwInitParam
		push	offset loc_42C6A0 ; lpDialogFunc
		mov	edx, [ebp+8]
		mov	ecx, g_hInstance
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		mov	[ebx], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 133. _Getintexpression
; Exported entry 576. Getintexpression

; int __cdecl Getintexpression(HWND hWndParent,	int a2,	int a3,	int a4,	int cesav, int x, int y, int fi, int mode)
		public Getintexpression
Getintexpression:			; CODE XREF: .text:004A49A6p
		push	ebp		; _Getintexpression
		mov	ebp, esp
		push	esi
		mov	esi, offset g_dialog
		mov	edx, [ebp+10h]
		mov	eax, [ebp+28h]
		test	edx, edx
		jz	short loc_42D17A
		mov	ecx, eax
		and	ecx, 1Fh
		cmp	ecx, 2
		jz	short loc_42D180
		cmp	ecx, 4
		jz	short loc_42D180

loc_42D17A:				; CODE XREF: .text:0042D169j
		or	eax, 0FFFFFFFFh
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_42D180:				; CODE XREF: .text:0042D173j
					; .text:0042D178j
		xor	ecx, ecx
		mov	s1, ecx
		xor	ecx, ecx
		mov	stru_5DA5B4.anonymous_0, ecx
		mov	stru_5DA5B4.anonymous_1, edx
		xor	edx, edx
		xor	ecx, ecx
		mov	stru_5DA5B4.mode, edx
		mov	edx, [ebp+14h]
		mov	stru_5DA5B4.threadid, edx
		mov	edx, [ebp+0Ch]
		mov	stru_5DA5B4.anonymous_5, ecx
		mov	[esi+4], edx
		xor	ecx, ecx
		or	eax, 1000h
		mov	[esi+2Ch], ecx
		mov	edx, [ebp+1Ch]
		mov	[esi+30h], edx
		mov	ecx, [ebp+20h]
		mov	[esi+34h], ecx
		mov	edx, [ebp+24h]
		mov	[esi+38h], edx
		mov	[esi+3Ch], eax
		mov	eax, [ebp+18h]
		mov	[esi+40h], eax
		mov	dword ptr [esi], offset	stru_523324
		push	0		; dwInitParam
		push	offset loc_42C6A0 ; lpDialogFunc
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		mov	[esi], edx
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_42D204(int, void *s, int, int, int, int)
loc_42D204:				; DATA XREF: .text:0042D4C5o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 5 cases
		cmp	eax, 4
		ja	loc_42D301	; jumptable 0042D21A default case
		jmp	ds:off_42D221[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_42D221	dd offset loc_42D235	; DATA XREF: .text:0042D21Ar
		dd offset loc_42D23C	; jump table for switch	statement
		dd offset loc_42D243
		dd offset loc_42D24A
		dd offset loc_42D251
; ---------------------------------------------------------------------------

loc_42D235:				; CODE XREF: .text:0042D21Aj
					; DATA XREF: .text:off_42D221o
		xor	eax, eax	; jumptable 0042D21A case -4
		jmp	loc_42D303
; ---------------------------------------------------------------------------

loc_42D23C:				; CODE XREF: .text:0042D21Aj
					; DATA XREF: .text:off_42D221o
		xor	eax, eax	; jumptable 0042D21A case -3
		jmp	loc_42D303
; ---------------------------------------------------------------------------

loc_42D243:				; CODE XREF: .text:0042D21Aj
					; DATA XREF: .text:off_42D221o
		xor	eax, eax	; jumptable 0042D21A case -2
		jmp	loc_42D303
; ---------------------------------------------------------------------------

loc_42D24A:				; CODE XREF: .text:0042D21Aj
					; DATA XREF: .text:off_42D221o
		xor	eax, eax	; jumptable 0042D21A case -1
		jmp	loc_42D303
; ---------------------------------------------------------------------------

loc_42D251:				; CODE XREF: .text:0042D21Aj
					; DATA XREF: .text:off_42D221o
		mov	esi, [ebp+18h]	; jumptable 0042D21A case 0
		test	esi, esi
		jz	loc_42D301	; jumptable 0042D21A default case
		mov	eax, [esi]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_42D2AE
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	(offset	a____1+4) ; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	ebx		; n
		push	2		; c
		mov	ecx, [ebp+0Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_42D2AE:				; CODE XREF: .text:0042D267j
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; nname
		add	edx, [ebp+8]
		push	edx		; _name
		mov	ecx, [esi+8]
		and	ecx, 0FFh
		push	ecx		; type
		mov	eax, [esi]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		xor	edx, edx
		mov	esi, eax
		cmp	g_dialog.focus,	57Bh
		push	esi		; n
		jz	short loc_42D2E7
		add	edx, 2

loc_42D2E7:				; CODE XREF: .text:0042D2E2j
		push	edx		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, esi
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 100h

loc_42D301:				; CODE XREF: .text:0042D214j
					; .text:0042D256j
		mov	eax, ebx	; jumptable 0042D21A default case

loc_42D303:				; CODE XREF: .text:0042D237j
					; .text:0042D23Ej ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_42D308(int, HWND hWnd, int)
loc_42D308:				; DATA XREF: .text:0042D4A9o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+0Ch]
		jnz	short loc_42D31F
		xor	eax, eax
		jmp	short loc_42D37C
; ---------------------------------------------------------------------------

loc_42D31F:				; CODE XREF: .text:0042D319j
		mov	edx, [ebp+10h]
		sub	edx, 471h
		jnz	short loc_42D37A
		lea	ecx, [ebp-200h]
		push	ecx
		call	loc_427220
		pop	ecx
		test	eax, eax
		jz	short loc_42D37A
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	57Ah		; nIDDlgItem
		push	ebx		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	SetDlgItemTextW
		lea	edx, [ebp-200h]
		push	edx
		push	0
		push	offset stru_5DA5CC.sorted
		call	loc_4C1570
		add	esp, 0Ch
		push	0		; bErase
		push	0		; lpRect
		push	ebx		; hWnd
		call	InvalidateRect
		mov	eax, 1
		jmp	short loc_42D37C
; ---------------------------------------------------------------------------

loc_42D37A:				; CODE XREF: .text:0042D328j
					; .text:0042D339j
		xor	eax, eax

loc_42D37C:				; CODE XREF: .text:0042D31Dj
					; .text:0042D378j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 134. _Getgotoexpression
; Exported entry 572. Getgotoexpression

; int __cdecl Getgotoexpression(HWND hparent, wchar_t *_title, ulong *u,	ulong threadid,	int savetype, int x, int y, int	fi, int	mode)
		public Getgotoexpression
Getgotoexpression:			; CODE XREF: .text:004B4942p
		push	ebp		; _Getgotoexpression
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset stru_5DA5CC
		mov	eax, [ebp+10h]
		mov	esi, offset g_dialog
		test	eax, eax
		jnz	short loc_42D3A3
		or	eax, 0FFFFFFFFh
		jmp	loc_42D507
; ---------------------------------------------------------------------------

loc_42D3A3:				; CODE XREF: .text:0042D399j
		xor	edx, edx
		mov	s1, edx
		xor	ecx, ecx
		mov	stru_5DA5B4.anonymous_0, ecx
		mov	stru_5DA5B4.anonymous_1, eax
		mov	stru_5DA5B4.mode, 10h
		mov	eax, [ebp+14h]
		mov	stru_5DA5B4.threadid, eax
		xor	edx, edx
		mov	stru_5DA5B4.anonymous_5, edx
		mov	ecx, [ebp+0Ch]
		mov	[esi+4], ecx
		xor	eax, eax
		mov	[esi+2Ch], eax
		mov	edx, [ebp+1Ch]
		mov	[esi+30h], edx
		mov	ecx, [ebp+20h]
		mov	[esi+34h], ecx
		mov	eax, [ebp+24h]
		mov	[esi+38h], eax
		mov	edx, [ebp+28h]
		mov	[esi+3Ch], edx
		mov	ecx, [ebp+18h]
		mov	[esi+40h], ecx
		mov	dword ptr [esi], offset	stru_52348C
		push	26Ch		; n
		push	0		; c
		push	edi		; s
		call	_memset
		add	esp, 0Ch
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	1000h		; nexp
		push	10h		; itemsize
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Createsorteddata
		add	esp, 18h
		push	offset aGoto	; "Goto"
		push	20h		; n
		push	edi		; dest
		call	StrcopyW
		mov	dword ptr [edi+40h], 10010000h
		xor	edx, edx
		add	esp, 0Ch
		mov	[edi+90h], edx
		xor	ecx, ecx
		mov	dword ptr [edi+94h], offset aName_0 ; "Name"
		mov	dword ptr [edi+0D8h], offset aName_0 ; "Name"
		mov	[edi+11Ch], ecx
		mov	dword ptr [edi+160h], 100h
		mov	dword ptr [edi+8Ch], 1
		push	edi		; pt
		call	Defaultbar
		pop	ecx
		mov	eax, fi
		mov	[edi+234h], eax
		xor	eax, eax
		mov	edx, g_Color_index
		mov	[edi+238h], edx
		xor	edx, edx
		mov	ecx, dword_58610C
		mov	[edi+240h], ecx
		xor	ecx, ecx
		mov	dword ptr [edi+208h], offset loc_42D308
		mov	[edi+21Ch], eax
		mov	[edi+220h], edx
		mov	[edi+20Ch], ecx
		mov	dword ptr [edi+210h], offset loc_42D204
		mov	dword ptr [edi+218h], offset stru_518C3C
		push	0		; dwInitParam
		push	offset loc_42C6A0 ; lpDialogFunc
		mov	eax, [ebp+8]
		mov	edx, g_hInstance
		push	eax		; hWndParent
		push	offset aDia_empty_resi ; "DIA_EMPTY_RESIZE"
		push	edx		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Destroysorteddata
		pop	ecx
		xor	edx, edx
		mov	[esi], edx
		mov	eax, ebx

loc_42D507:				; CODE XREF: .text:0042D39Ej
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_42D50C(HWND hWndParent, int, int, int, int, int, int)
loc_42D50C:				; CODE XREF: .text:0040ADC0p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset g_dialog
		mov	eax, [ebp+10h]
		mov	edx, [ebp+14h]
		test	eax, eax
		jz	short loc_42D523
		test	edx, edx
		jnz	short loc_42D529

loc_42D523:				; CODE XREF: .text:0042D51Dj
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_42D529:				; CODE XREF: .text:0042D521j
		mov	s1, eax
		xor	ecx, ecx
		mov	stru_5DA5B4.anonymous_0, 400h
		mov	stru_5DA5B4.anonymous_1, ecx
		xor	eax, eax
		xor	ecx, ecx
		mov	stru_5DA5B4.mode, eax
		mov	stru_5DA5B4.threadid, ecx
		mov	stru_5DA5B4.anonymous_4, edx
		mov	edx, [ebp+0Ch]
		mov	stru_5DA5B4.anonymous_5, 1
		mov	[ebx+4], edx
		xor	eax, eax
		mov	[ebx+2Ch], eax
		mov	edx, [ebp+18h]
		mov	[ebx+30h], edx
		mov	ecx, [ebp+1Ch]
		mov	[ebx+34h], ecx
		mov	eax, [ebp+20h]
		mov	[ebx+38h], eax
		mov	dword ptr [ebx+3Ch], 20000000h
		mov	dword ptr [ebx+40h], 69h
		mov	dword ptr [ebx+44h], 6Ah
		mov	dword ptr [ebx], offset	stru_5235CC
		push	0		; dwInitParam
		push	offset loc_42C6A0 ; lpDialogFunc
		mov	ecx, g_hInstance
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		mov	[ebx], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_42D5BC(HWND, UINT, WPARAM, LPARAM)
loc_42D5BC:				; DATA XREF: .text:0042DB9Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBD0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42D5F4
		dec	eax
		jz	loc_42D751
		dec	eax
		jz	loc_42DAE8
		sub	eax, 26h
		jz	loc_42D711
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42D5F4:				; CODE XREF: .text:0042D5D6j
		mov	word ptr [ebp-230h], 0
		push	offset g_dialog	; pdlg
		push	edi		; hw
		call	Preparedialog
		add	esp, 8
		push	641h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	loc_42D6D0
		xor	edx, edx
		mov	esi, 41h
		mov	[ebp-4], edx
		mov	dword ptr [ebp-8], 0FFFFFFFFh

loc_42D634:				; CODE XREF: .text:0042D6A4j
		mov	[ebp-1Ch], si
		lea	eax, [ebp-1Ch]
		mov	word ptr [ebp-1Ah], 3Ah
		mov	word ptr [ebp-18h], 0
		push	eax		; lpRootPathName
		call	GetDriveTypeW
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42D6A0
		cmp	ebx, 1
		jz	short loc_42D6A0
		cmp	ebx, 4
		jz	short loc_42D6A0
		lea	eax, [ebp-1Ch]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	edx, [ebp-20h]
		push	edx		; hWnd
		call	SendMessageW
		push	offset word_5DA850 ; s2
		lea	ecx, [ebp-1Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_42D68C
		mov	eax, [ebp-4]
		mov	[ebp-8], eax

loc_42D68C:				; CODE XREF: .text:0042D684j
		cmp	dword ptr [ebp-8], 0
		jge	short loc_42D69D
		cmp	ebx, 3
		jnz	short loc_42D69D
		mov	edx, [ebp-4]
		mov	[ebp-8], edx

loc_42D69D:				; CODE XREF: .text:0042D690j
					; .text:0042D695j
		inc	dword ptr [ebp-4]

loc_42D6A0:				; CODE XREF: .text:0042D651j
					; .text:0042D656j ...
		inc	esi
		cmp	esi, 5Ah
		jle	short loc_42D634
		push	0		; lParam
		mov	ebx, [ebp-8]
		push	ebx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-20h]
		push	eax		; hWnd
		call	SendMessageW
		lea	edx, [ebp-230h]
		push	edx		; lParam
		push	ebx		; wParam
		push	148h		; Msg
		mov	ecx, [ebp-20h]
		push	ecx		; hWnd
		call	SendMessageW

loc_42D6D0:				; CODE XREF: .text:0042D61Dj
		lea	eax, [ebp-230h]
		push	eax		; lpRootPathName
		push	edi		; hDlg
		call	loc_427308
		add	esp, 8
		cmp	dwBytes, 0
		jnz	short loc_42D6F5
		mov	edx, dword_5DA870
		mov	dwBytes, edx

loc_42D6F5:				; CODE XREF: .text:0042D6E7j
		push	0		; nIDDlgItem
		push	edi		; hDlg
		call	loc_427450
		add	esp, 8
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42DB03
; ---------------------------------------------------------------------------

loc_42D711:				; CODE XREF: .text:0042D5E9j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 64Ah
		jz	short loc_42D728
		xor	eax, eax
		jmp	loc_42DB03
; ---------------------------------------------------------------------------

loc_42D728:				; CODE XREF: .text:0042D71Fj
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
		jmp	loc_42DB03
; ---------------------------------------------------------------------------

loc_42D751:				; CODE XREF: .text:0042D5D9j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	loc_42DB01
		mov	eax, [ebp+14h]
		push	eax		; lp
		push	ebx		; wp
		push	esi		; pctr
		push	edi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	edx, ebx
		and	dx, 0FFFFh
		cmp	dx, 641h
		jnz	short loc_42D7F9
		mov	ecx, ebx
		shr	ecx, 10h
		cmp	cx, 1
		jnz	short loc_42D7F9
		mov	word ptr [ebp-230h], 0
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	641h		; nIDDlgItem
		push	edi		; hDlg
		call	SendDlgItemMessageW
		mov	[ebp-8], eax
		lea	eax, [ebp-230h]
		push	eax		; lParam
		mov	edx, [ebp-8]
		push	edx		; wParam
		push	148h		; Msg
		push	641h		; nIDDlgItem
		push	edi		; hDlg
		call	SendDlgItemMessageW
		lea	ecx, [ebp-230h]
		push	ecx		; lpRootPathName
		push	edi		; hDlg
		call	loc_427308
		add	esp, 8
		xor	eax, eax
		mov	g_dialog.initdone, eax
		push	0		; nIDDlgItem
		push	edi		; hDlg
		call	loc_427450
		add	esp, 8
		mov	g_dialog.initdone, 1
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42D7F9:				; CODE XREF: .text:0042D780j
					; .text:0042D78Bj
		cmp	dword ptr [esi], 0Ch
		jnz	short loc_42D876
		mov	edx, ebx
		shr	edx, 10h
		cmp	dx, 100h
		jnz	short loc_42D831
		cmp	g_dialog.initdone, 0
		jz	short loc_42D81E
		push	0		; nIDDlgItem
		push	edi		; hDlg
		call	loc_427450
		add	esp, 8

loc_42D81E:				; CODE XREF: .text:0042D811j
		and	bx, 0FFFFh
		movzx	ecx, bx
		mov	g_dialog.focus,	ecx
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42D831:				; CODE XREF: .text:0042D808j
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 300h
		jnz	loc_42DB01
		and	bx, 0FFFFh
		movzx	edx, bx
		cmp	edx, g_dialog.focus
		jnz	loc_42DB01
		cmp	g_dialog.initdone, 0
		jz	loc_42DB01
		mov	ecx, g_dialog.focus
		push	ecx		; nIDDlgItem
		push	edi		; hDlg
		call	loc_427450
		add	esp, 8
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42D876:				; CODE XREF: .text:0042D7FCj
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 1
		jnz	loc_42DAD0
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	641h		; nIDDlgItem
		push	edi		; hDlg
		call	SendDlgItemMessageW
		mov	[ebp-8], eax
		push	offset word_5DA850 ; lParam
		mov	edx, [ebp-8]
		push	edx		; wParam
		push	148h		; Msg
		push	641h		; nIDDlgItem
		push	edi		; hDlg
		call	SendDlgItemMessageW
		push	offset word_5DA850
		push	offset a_S_0	; format
		lea	ecx, [ebp-230h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-230h]
		push	0		; hTemplateFile
		push	0		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	3		; dwShareMode
		push	80000000h	; dwDesiredAccess
		push	eax		; lpFileName
		call	CreateFileW
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0FFFFFFFFh
		jnz	short loc_42D90F
		push	offset aUnableToOpenSp ; "Unable to open specified drive"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	64Ah		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42D90F:				; CODE XREF: .text:0042D8F1j
		push	1		; flags
		mov	edx, dwBytes	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_42D94E
		mov	ecx, [ebp-24h]
		push	ecx		; hObject
		call	CloseHandle
		push	offset aLowMemory_2 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	64Ah		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42D94E:				; CODE XREF: .text:0042D927j
		mov	eax, lDistanceToMove
		mov	ebx, eax
		mov	eax, dword_5DA85C
		mov	edx, eax
		sar	edx, 1Fh
		mov	[ebp-0Ch], eax
		push	0		; dwMoveMethod
		lea	edx, [ebp-0Ch]
		push	edx		; lpDistanceToMoveHigh
		push	ebx		; lDistanceToMove
		mov	ecx, [ebp-24h]
		push	ecx		; hFile
		call	SetFilePointer
		mov	ebx, eax
		inc	ebx
		jnz	short loc_42D9B1
		call	GetLastError
		test	eax, eax
		jz	short loc_42D9B1
		mov	eax, [ebp-24h]
		push	eax		; hObject
		call	CloseHandle
		mov	edx, [ebp-14h]
		push	edx		; data
		call	Memfree
		pop	ecx
		push	offset aUnableToReadDa ; "Unable to read data"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	64Ah		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42D9B1:				; CODE XREF: .text:0042D977j
					; .text:0042D980j
		mov	ecx, g_hCursor
		push	ecx		; hCursor
		call	SetCursor
		mov	[ebp-28h], eax
		xor	esi, esi
		jmp	short loc_42D9F8
; ---------------------------------------------------------------------------

loc_42D9C4:				; CODE XREF: .text:0042D9FFj
		mov	ebx, eax
		sub	ebx, esi
		cmp	ebx, 400000h
		jle	short loc_42D9D5
		mov	ebx, 400000h

loc_42D9D5:				; CODE XREF: .text:0042D9CEj
		push	0		; lpOverlapped
		lea	eax, [ebp-10h]
		push	eax		; lpNumberOfBytesRead
		push	ebx		; nNumberOfBytesToRead
		mov	edx, [ebp-14h]
		add	edx, esi
		push	edx		; lpBuffer
		mov	ecx, [ebp-24h]
		push	ecx		; hFile
		call	ReadFile
		test	eax, eax
		jz	short loc_42DA01
		mov	eax, [ebp-10h]
		cmp	eax, ebx
		jnz	short loc_42DA01
		add	esi, ebx

loc_42D9F8:				; CODE XREF: .text:0042D9C2j
		mov	eax, dwBytes
		cmp	esi, eax
		jl	short loc_42D9C4

loc_42DA01:				; CODE XREF: .text:0042D9EDj
					; .text:0042D9F4j
		mov	edx, [ebp-28h]
		push	edx		; hCursor
		call	SetCursor
		mov	ecx, [ebp-24h]
		push	ecx		; hObject
		call	CloseHandle
		cmp	esi, dwBytes
		jge	short loc_42DA41
		mov	eax, [ebp-14h]
		push	eax		; data
		call	Memfree
		pop	ecx
		push	offset aUnableToReadDa ; "Unable to read data"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	64Ah		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42DB01
; ---------------------------------------------------------------------------

loc_42DA41:				; CODE XREF: .text:0042DA19j
		mov	edx, dwBytes
		push	edx
		push	dword_5DA85C
		push	lDistanceToMove
		push	offset word_5DA850
		push	offset aDriveS08lx__08 ; "Drive	%s%08LX..%08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-430h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 18h
		push	0
		push	0
		push	11001h
		mov	edx, dwBytes
		push	edx
		mov	ecx, [ebp-14h]
		push	ecx
		lea	eax, [ebp-430h]
		push	eax
		call	Createdatadumpwindow
		add	esp, 18h
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_42DAC3
		mov	edx, [ebp-14h]
		push	edx		; data
		call	Memfree
		pop	ecx
		push	offset aUnableToCreate ; "Unable to create dump	window"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	64Ah		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		jmp	short loc_42DB01
; ---------------------------------------------------------------------------

loc_42DAC3:				; CODE XREF: .text:0042DA9Ej
		push	0		; result
		push	edi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42DB01
; ---------------------------------------------------------------------------

loc_42DAD0:				; CODE XREF: .text:0042D880j
		and	bx, 0FFFFh
		cmp	bx, 2
		jnz	short loc_42DB01
		push	0FFFFFFFFh	; result
		push	edi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42DB01
; ---------------------------------------------------------------------------

loc_42DAE8:				; CODE XREF: .text:0042D5E0j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42DB01
		push	0FFFFFFFFh	; result
		push	edi		; hw
		call	Endotdialog
		add	esp, 8

loc_42DB01:				; CODE XREF: .text:0042D5EFj
					; .text:0042D75Fj ...
		xor	eax, eax

loc_42DB03:				; CODE XREF: .text:0042D70Cj
					; .text:0042D723j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------

; int __cdecl loc_42DB0C(HWND hWndParent, int, int, int, int, int, int,	int)
loc_42DB0C:				; CODE XREF: .text:0040B185p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		test	esi, esi
		jz	short loc_42DB29
		test	edi, edi
		jz	short loc_42DB29
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_42DB31

loc_42DB29:				; CODE XREF: .text:0042DB1Dj
					; .text:0042DB21j
		or	eax, 0FFFFFFFFh
		jmp	loc_42DC09
; ---------------------------------------------------------------------------

loc_42DB31:				; CODE XREF: .text:0042DB27j
		push	esi		; src
		push	3		; n
		push	offset word_5DA850 ; dest
		call	StrcopyW
		mov	edx, [edi]
		mov	ecx, [ebp+18h]
		mov	lDistanceToMove, edx
		add	esp, 0Ch
		mov	edx, [edi+4]
		test	ebx, ebx
		mov	dword_5DA85C, edx
		mov	eax, [ecx]
		mov	dwBytes, eax
		jz	short loc_42DB66
		cmp	word ptr [ebx],	0
		jnz	short loc_42DB78

loc_42DB66:				; CODE XREF: .text:0042DB5Ej
		push	offset aSpecifyPhysica ; "Specify physical drive extent"
		call	_T
		pop	ecx
		mov	g_dialog._title,	eax
		jmp	short loc_42DB7E
; ---------------------------------------------------------------------------

loc_42DB78:				; CODE XREF: .text:0042DB64j
		mov	g_dialog._title,	ebx

loc_42DB7E:				; CODE XREF: .text:0042DB76j
		xor	edx, edx
		mov	ecx, [ebp+1Ch]
		mov	g_dialog.letter, edx
		mov	edx, [ebp+24h]
		mov	eax, [ebp+20h]
		mov	g_dialog.x, ecx
		mov	g_dialog.y, eax
		push	0		; dwInitParam
		push	offset loc_42D5BC ; lpDialogFunc
		mov	g_dialog.fi, edx
		mov	ecx, [ebp+8]
		mov	g_dialog.mode, 20000000h
		mov	g_dialog.controls, offset stru_52375C
		push	ecx		; hWndParent
		mov	eax, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	g_dialog.controls, eax
		test	ebx, ebx
		jnz	short loc_42DC07
		push	offset word_5DA850 ; src
		push	3		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, lDistanceToMove
		mov	[edi], edx
		mov	edx, dword_5DA85C
		mov	[edi+4], edx
		mov	ecx, [ebp+18h]
		mov	eax, dwBytes
		mov	[ecx], eax

loc_42DC07:				; CODE XREF: .text:0042DBDAj
		mov	eax, ebx

loc_42DC09:				; CODE XREF: .text:0042DB2Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; INT_PTR __stdcall loc_42DC10(HWND, UINT, WPARAM, LPARAM)
loc_42DC10:				; DATA XREF: .text:0042E0E2o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF2DCh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_42DC4C
		dec	eax
		jz	loc_42DD4B
		dec	eax
		jz	loc_42E039
		sub	eax, 26h
		jz	loc_42DD0B
		jmp	loc_42E05A
; ---------------------------------------------------------------------------

loc_42DC4C:				; CODE XREF: .text:0042DC2Ej
		push	offset g_dialog	; pdlg
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Preparedialog
		add	esp, 8
		mov	eax, 6A6h
		mov	g_dialog.focus,	eax
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		push	ebx		; hWnd
		call	SetFocus
		mov	eax, g_dialog.letter
		test	eax, eax
		jz	short loc_42DCF0
		cmp	eax, 20h
		jz	short loc_42DCF0
		xor	edx, edx
		lea	ecx, [ebp-214h]
		mov	dl, byte ptr g_dialog.letter
		mov	[ebp-214h], dx
		mov	word ptr [ebp-212h], 0
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW
		push	10001h		; lParam
		push	0		; wParam
		push	142h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		mov	eax, dword_5DA8F4
		mov	edx, [eax+288h]
		push	edx		; u
		lea	ecx, [ebp-214h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-214h]
		push	eax		; lpString
		push	6A5h		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	SetDlgItemTextW
		jmp	short loc_42DCFA
; ---------------------------------------------------------------------------

loc_42DCF0:				; CODE XREF: .text:0042DC80j
					; .text:0042DC85j
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	loc_427A74
		pop	ecx

loc_42DCFA:				; CODE XREF: .text:0042DCEEj
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_42E05C
; ---------------------------------------------------------------------------

loc_42DD0B:				; CODE XREF: .text:0042DC41j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 6A7h
		jz	short loc_42DD22
		xor	eax, eax
		jmp	loc_42E05C
; ---------------------------------------------------------------------------

loc_42DD22:				; CODE XREF: .text:0042DD19j
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
		jmp	loc_42E05C
; ---------------------------------------------------------------------------

loc_42DD4B:				; CODE XREF: .text:0042DC31j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_42E05A
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
		cmp	ax, 6A6h
		jnz	short loc_42DD9E
		mov	edx, ebx
		shr	edx, 10h
		cmp	dx, 5
		jnz	short loc_42DD9E
		push	(offset	aOd_empty+0Fh) ; lpString
		push	6A7h		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42E05A
; ---------------------------------------------------------------------------

loc_42DD9E:				; CODE XREF: .text:0042DD79j
					; .text:0042DD84j
		cmp	ax, 1
		jnz	loc_42E01A
		push	6A6h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		lea	eax, [ebp-214h]
		push	100h		; nMaxCount
		push	eax		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		test	eax, eax
		jz	loc_42E05A
		mov	edx, dword_5DA8F4
		lea	eax, [ebp-414h]
		lea	ecx, [ebp-0Ch]
		mov	esi, [edx+288h]
		push	eax		; errtxt
		lea	edx, [ebp-10h]
		push	1		; mode
		push	edx		; b
		push	ecx		; a
		lea	eax, [ebp-434h]
		push	20h		; nbuf
		push	eax		; buf
		push	esi		; ip
		lea	edx, [ebp-214h]
		push	edx		; src
		call	Assembleex
		add	esp, 20h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_42DE2B
		lea	ecx, [ebp-414h]
		push	ecx		; lpString
		push	6A7h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42E05A
; ---------------------------------------------------------------------------

loc_42DE2B:				; CODE XREF: .text:0042DE0Fj
		mov	eax, dword_5DA8F4
		mov	ecx, [ebp-4]
		add	ecx, esi
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	edx, ecx
		jb	short loc_42DE5A
		cmp	dword_5BE238, 0
		jz	short loc_42DE79
		mov	edx, dword_5DA8F4
		mov	eax, [ebp-4]
		add	eax, esi
		cmp	eax, [edx+28Ch]
		jbe	short loc_42DE79

loc_42DE5A:				; CODE XREF: .text:0042DE3Cj
		push	offset aNoRoomForThisC ; "No room for this command"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	6A7h		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_42E05A
; ---------------------------------------------------------------------------

loc_42DE79:				; CODE XREF: .text:0042DE45j
					; .text:0042DE58j
		mov	eax, dword_5DA8F4
		mov	edx, [ebp-4]
		lea	ecx, [ebp-214h]
		add	[eax+288h], edx
		mov	eax, dword_5DA8F4
		mov	edx, [eax+288h]
		mov	[eax+290h], edx
		push	ecx		; s
		push	ebx		; hc
		call	Addstringtocombolist
		add	esp, 8
		cmp	dword_5BE6B4, 0
		jnz	short loc_42DEB9
		mov	ebx, [ebp-4]
		jmp	loc_42DF83
; ---------------------------------------------------------------------------

loc_42DEB9:				; CODE XREF: .text:0042DEAFj
		mov	eax, dword_5DA8F4
		mov	edi, [eax]
		add	edi, [eax+4]
		sub	edi, esi
		cmp	edi, 20h
		jbe	short loc_42DECF
		mov	edi, 20h

loc_42DECF:				; CODE XREF: .text:0042DEC8j
		mov	edx, [eax+298h]
		test	edx, edx
		jz	short loc_42DEF3
		push	edi		; n
		add	edx, esi
		push	edx		; src
		lea	eax, [ebp-454h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_42DF22
; ---------------------------------------------------------------------------

loc_42DEF3:				; CODE XREF: .text:0042DED7j
		push	5		; mode
		push	edi		; size
		push	esi		; _addr
		lea	eax, [ebp-454h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		lea	edx, [ebp-8]
		push	edx		; psize
		push	esi		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	edi, [ebp-8]
		jbe	short loc_42DF22
		xor	ecx, ecx
		mov	[ebp-14h], ecx

loc_42DF22:				; CODE XREF: .text:0042DEF1j
					; .text:0042DF1Bj
		xor	ebx, ebx
		jmp	short loc_42DF63
; ---------------------------------------------------------------------------

loc_42DF26:				; CODE XREF: .text:0042DF6Aj
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	eax, [ebp-1D24h]
		push	eax		; da
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_42DF3D
		xor	edx, edx
		jmp	short loc_42DF42
; ---------------------------------------------------------------------------

loc_42DF3D:				; CODE XREF: .text:0042DF37j
		mov	edx, [ebp-14h]
		add	edx, ebx

loc_42DF42:				; CODE XREF: .text:0042DF3Bj
		push	edx		; dec
		lea	eax, [ebx+esi]
		push	eax		; ip
		mov	ecx, edi
		sub	ecx, ebx
		lea	eax, [ebp-454h]
		add	eax, ebx
		push	ecx		; cmdsize
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jz	short loc_42DF6C
		add	ebx, eax

loc_42DF63:				; CODE XREF: .text:0042DF24j
		cmp	ebx, [ebp-4]
		jnb	short loc_42DF6C
		cmp	edi, ebx
		ja	short loc_42DF26

loc_42DF6C:				; CODE XREF: .text:0042DF5Fj
					; .text:0042DF66j
		mov	eax, [ebp-4]
		lea	edx, [ebp+eax-434h]
		cmp	ebx, eax
		jbe	short loc_42DF83

loc_42DF7A:				; CODE XREF: .text:0042DF81j
		mov	byte ptr [edx],	90h
		inc	eax
		inc	edx
		cmp	ebx, eax
		ja	short loc_42DF7A

loc_42DF83:				; CODE XREF: .text:0042DEB4j
					; .text:0042DF78j
		push	0
		mov	ecx, dword_5DA8F4
		push	ecx
		call	loc_4BD294
		add	esp, 8
		mov	eax, dword_5DA8F4
		mov	eax, [eax+298h]
		test	eax, eax
		jz	short loc_42DFB8
		push	ebx		; n
		lea	edx, [ebp-434h]
		push	edx		; src
		add	eax, esi
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_42DFF0
; ---------------------------------------------------------------------------

loc_42DFB8:				; CODE XREF: .text:0042DFA1j
		call	Suspendallthreads
		push	20h		; mode
		push	ebx		; size
		push	esi		; _addr
		lea	ecx, [ebp-434h]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h
		call	Resumeallthreads
		push	0		; keephittrace
		push	ebx		; size
		push	esi		; base
		call	Removeanalysis
		add	esp, 0Ch
		mov	eax, [ebp-4]
		push	eax
		push	esi
		push	0
		call	loc_4D6D14
		add	esp, 0Ch

loc_42DFF0:				; CODE XREF: .text:0042DFB6j
		push	0		; force
		mov	edx, dword_5DA8F4
		add	edx, 18h
		push	edx		; pt
		call	Updatetable
		add	esp, 8
		mov	result,	1
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	loc_427A74
		pop	ecx
		jmp	short loc_42E05A
; ---------------------------------------------------------------------------

loc_42E01A:				; CODE XREF: .text:0042DDA2j
		and	bx, 0FFFFh
		cmp	bx, 2
		jnz	short loc_42E05A
		mov	eax, result
		push	eax		; result
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_42E05A
; ---------------------------------------------------------------------------

loc_42E039:				; CODE XREF: .text:0042DC38j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_42E05A
		mov	ecx, result
		push	ecx		; result
		mov	eax, [ebp+8]
		push	eax		; hw
		call	Endotdialog
		add	esp, 8

loc_42E05A:				; CODE XREF: .text:0042DC47j
					; .text:0042DD57j ...
		xor	eax, eax

loc_42E05C:				; CODE XREF: .text:0042DD06j
					; .text:0042DD1Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
		