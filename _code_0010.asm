.code

; ---------------------------------------------------------------------------

; int __stdcall	loc_404D30(HWND	hDlg, int, HDC,	HWND)
loc_404D30:				; DATA XREF: .text:0040646Do
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 9

loc_404D39:				; CODE XREF: .text:00404D41j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_404D39
		mov	eax, [ebp-4]
		add	esp, 0FFFFF540h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		cmp	eax, 110h
		jg	short loc_404D75
		jz	short loc_404D8E
		sub	eax, 5
		jz	loc_405150
		sub	eax, 49h
		jz	loc_405409
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_404D75:				; CODE XREF: .text:00404D5Aj
		sub	eax, 111h
		jz	loc_405363
		sub	eax, 23h
		jz	loc_405320
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_404D8E:				; CODE XREF: .text:00404D5Cj
		mov	edx, dword_57D9C8
		and	edx, 0F0000000h
		cmp	edx, 20000000h
		jnz	loc_404F3B
		push	offset aArguments ; "Arguments:"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C95h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset aCurrentDir ; "Current dir:"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C96h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	0		; lParam
		push	1		; wParam
		push	155h		; Msg
		push	0C82h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		push	0		; lParam
		push	3FFh		; wParam
		push	141h		; Msg
		push	0C82h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		xor	ebx, ebx

loc_404E01:				; CODE XREF: .text:00404E57j
		push	ebx
		push	offset aArgumentsI_1 ; "Arguments[%i]"
		lea	eax, [ebp-204h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-7A04h]
		lea	ecx, [ebp-204h]
		push	400h		; length
		push	edx		; s
		push	ecx		; key
		push	offset aArguments_0 ; "Arguments"
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jz	short loc_404E53
		lea	eax, [ebp-7A04h]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	0C82h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW

loc_404E53:				; CODE XREF: .text:00404E38j
		inc	ebx
		cmp	ebx, 10h
		jl	short loc_404E01
		mov	edx, arglist
		push	edx		; lpString
		push	0C82h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		cmp	dir, 0
		jnz	short loc_404E9F
		push	0		; bEnable
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		push	0		; bEnable
		push	0C84h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_404E9F:				; CODE XREF: .text:00404E72j
		push	0		; lParam
		push	1		; wParam
		push	155h		; Msg
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		push	0		; lParam
		push	104h		; wParam
		push	141h		; Msg
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		xor	ebx, ebx

loc_404ECC:				; CODE XREF: .text:00404F22j
		push	ebx
		push	offset aCurrentDirI_0 ;	format
		lea	eax, [ebp-204h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-987Ch]
		lea	ecx, [ebp-204h]
		push	400h		; length
		push	edx		; s
		push	ecx		; key
		push	offset aArguments_0 ; "Arguments"
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jz	short loc_404F1E
		lea	eax, [ebp-987Ch]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW

loc_404F1E:				; CODE XREF: .text:00404F03j
		inc	ebx
		cmp	ebx, 10h
		jl	short loc_404ECC
		mov	edx, dir
		push	edx		; lpString
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_404F3B:				; CODE XREF: .text:00404DA0j
		mov	ecx, dword_57D9C8
		and	ecx, 0F0000000h
		cmp	ecx, 30000000h
		jnz	loc_404FFD
		push	offset aAppendToExisti ; "Append to existing file"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C85h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset aAddAvailableCo ; "Add available	contents"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C86h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset aSeparateColumn ; "Separate columns with	tabs"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C87h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		test	byte ptr dword_57D9C8+2, 8
		setnz	al
		and	eax, 1
		push	0		; lParam
		push	eax		; wParam
		push	0F1h		; Msg
		push	0C85h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	byte ptr dword_57D9C8+2, 4
		setnz	dl
		and	edx, 1
		push	0		; lParam
		push	edx		; wParam
		push	0F1h		; Msg
		push	0C86h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	byte ptr dword_57D9C8+2, 2
		setnz	cl
		and	ecx, 1
		push	0		; lParam
		push	ecx		; wParam
		push	0F1h		; Msg
		push	0C87h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_404FFD:				; CODE XREF: .text:00404F4Dj
		mov	eax, dword_57D9C8
		and	eax, 0F0000000h
		cmp	eax, 40000000h
		jnz	loc_40511C
		push	offset aAddTo	; "Add to:"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C95h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset aGroup1	; "Group 1"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C8Bh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset aGroup2	; "Group 2"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C8Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset aGroup3	; "Group 3"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C8Dh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset aGroup4	; "Group 4"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C8Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, dword_57D9C8
		test	al, 0FFh
		jz	short loc_405092
		test	al, 1
		jz	short loc_4050A6

loc_405092:				; CODE XREF: .text:0040508Cj
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		push	0C8Bh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW

loc_4050A6:				; CODE XREF: .text:00405090j
		test	byte ptr dword_57D9C8, 2
		jz	short loc_4050C3
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		push	0C8Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW

loc_4050C3:				; CODE XREF: .text:004050ADj
		test	byte ptr dword_57D9C8, 4
		jz	short loc_4050E0
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		push	0C8Dh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW

loc_4050E0:				; CODE XREF: .text:004050CAj
		test	byte ptr dword_57D9C8, 8
		jz	short loc_4050FD
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		push	0C8Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW

loc_4050FD:				; CODE XREF: .text:004050E7j
		push	offset aAdd_3	; "Add"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	1		; nIDDlgItem
		push	esi		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_40511C:				; CODE XREF: .text:0040500Cj
		mov	edx, dword_57D9C8
		and	edx, 0F0000000h
		cmp	edx, 10000000h
		jnz	loc_4058EE
		push	offset aStream	; "Stream:"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0C95h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_405150:				; CODE XREF: .text:00404D61j
		mov	ecx, dword_57D9C8
		and	ecx, 0F0000000h
		cmp	ecx, 10000000h
		jnz	short loc_4051DE
		push	480h		; nIDDlgItem
		push	esi		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	GetDlgItem
		mov	edi, eax
		push	0C81h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4058EE
		test	edi, edi
		jz	loc_4058EE
		lea	eax, [ebp-9AC4h]
		push	eax		; lpRect
		push	edi		; hWnd
		call	GetWindowRect
		lea	edx, [ebp-9A94h]
		push	edx		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		push	206h		; uFlags
		mov	ecx, [ebp-9A88h]
		sub	ecx, [ebp-9A90h]
		push	ecx		; cy
		mov	eax, [ebp-9ABCh]
		sub	eax, [ebp-9AC4h]
		push	eax		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	ebx		; hWnd
		call	SetWindowPos
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_4051DE:				; CODE XREF: .text:00405162j
		mov	edx, dword_57D9C8
		and	edx, 0F0000000h
		cmp	edx, 20000000h
		jnz	loc_4058EE
		push	0C82h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	edi, eax
		push	0C84h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-4], eax
		test	ebx, ebx
		jz	loc_4058EE
		test	edi, edi
		jz	loc_4058EE
		cmp	dword ptr [ebp-4], 0
		jz	loc_4058EE
		lea	eax, [ebp-9AC4h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		lea	edx, [ebp-9A94h]
		push	edx		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		lea	ecx, [ebp-9AA4h]
		push	ecx		; lpRect
		push	edi		; hWnd
		call	GetWindowRect
		lea	eax, [ebp-9AB4h]
		push	eax		; lpRect
		mov	edx, [ebp-4]
		push	edx		; hWnd
		call	GetWindowRect
		mov	esi, [ebp-9AA8h]
		sub	esi, [ebp-9AB0h]
		push	1		; bRepaint
		mov	ecx, [ebp-9A88h]
		mov	edx, [ebp-9A90h]
		sub	ecx, edx
		push	ecx		; nHeight
		mov	ecx, [ebp-9ABCh]
		mov	eax, [ebp-9A94h]
		sub	ecx, eax
		add	ecx, 0FFFFFFE8h
		push	ecx		; nWidth
		sub	edx, [ebp-9AC0h]
		push	edx		; Y
		sub	eax, [ebp-9AC4h]
		push	eax		; X
		push	ebx		; hWnd
		call	MoveWindow
		push	1		; bRepaint
		mov	edx, [ebp-9A98h]
		mov	eax, [ebp-9AA0h]
		sub	edx, eax
		push	edx		; nHeight
		mov	edx, [ebp-9ABCh]
		sub	edx, [ebp-9A94h]
		add	edx, 0FFFFFFE3h
		sub	edx, esi
		push	edx		; nWidth
		sub	eax, [ebp-9AC0h]
		push	eax		; Y
		mov	ecx, [ebp-9AA4h]
		sub	ecx, [ebp-9AC4h]
		push	ecx		; X
		push	edi		; hWnd
		call	MoveWindow
		push	1		; bRepaint
		push	esi		; nHeight
		push	esi		; nWidth
		mov	eax, [ebp-9AB0h]
		sub	eax, [ebp-9AC0h]
		push	eax		; Y
		mov	edx, [ebp-9ABCh]
		sub	edx, [ebp-9AC4h]
		add	edx, 0FFFFFFE8h
		sub	edx, esi
		push	edx		; X
		mov	ecx, [ebp-4]
		push	ecx		; hWnd
		call	MoveWindow
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_405320:				; CODE XREF: .text:00404D83j
		mov	ebx, [ebp+14h]
		push	ebx		; hWnd
		call	GetParent
		push	eax		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 0C81h
		jnz	loc_4058EE
		push	ebx		; hWnd
		call	IsWindowEnabled
		test	eax, eax
		jnz	loc_4058EE
		mov	eax, g_Color+10h
		push	eax		; COLORREF
		mov	edx, [ebp+10h]
		push	edx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_4058F0
; ---------------------------------------------------------------------------

loc_405363:				; CODE XREF: .text:00404D7Aj
		mov	cx, [ebp+10h]
		and	cx, 0FFFFh
		cmp	cx, 0C81h
		jnz	short loc_4053B0
		mov	eax, [ebp+10h]
		shr	eax, 10h
		cmp	ax, 9
		jnz	short loc_4053B0
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	0C81h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ebx, eax
		push	offset a6	; lParam
		push	ebx		; wParam
		push	148h		; Msg
		push	0C81h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_4053B0:				; CODE XREF: .text:00405371j
					; .text:0040537Dj
		mov	ax, [ebp+10h]
		and	ax, 0FFFFh
		cmp	ax, 0C84h
		jnz	loc_4058EE
		cmp	dir, 0
		jz	loc_4058EE
		mov	edx, dir
		push	edx		; dir
		push	offset aSelectCurren_1 ; "Select current directory for executable"
		call	_T
		pop	ecx
		push	eax		; comment
		push	esi		; hw
		call	Browsedirectory
		add	esp, 0Ch
		dec	eax
		jnz	loc_4058EE
		mov	ecx, dir
		push	ecx		; lpString
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_405409:				; CODE XREF: .text:00404D6Aj
		mov	eax, [ebp+14h]
		cmp	dword ptr [eax+8], 0FFFFFDA6h
		jnz	short loc_405473
		mov	edx, dword_57D9C8
		and	edx, 0F0000000h
		cmp	edx, 10000000h
		jnz	loc_4058EE
		mov	word ptr [ebp-9A84h], 0
		lea	ecx, [ebp-9A84h]
		push	ecx		; lParam
		push	104h		; wParam
		push	465h		; Msg
		push	esi		; hWnd
		call	GetParent
		push	eax		; hWnd
		call	SendMessageW
		lea	eax, [ebp-9A84h]
		push	eax		; int
		push	0C81h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	loc_401908
		add	esp, 8
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_405473:				; CODE XREF: .text:00405413j
		cmp	dword ptr [eax+8], 0FFFFFDA2h
		jnz	loc_4058EE
		mov	edx, dword_57D9C8
		and	edx, 0F0000000h
		cmp	edx, 10000000h
		jnz	short loc_4054B0
		push	offset a6	; lParam
		push	104h		; wParam
		push	0Dh		; Msg
		push	0C81h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_4054B0:				; CODE XREF: .text:00405492j
		mov	ecx, dword_57D9C8
		and	ecx, 0F0000000h
		cmp	ecx, 20000000h
		jnz	loc_4057C6
		mov	eax, arglist
		push	eax		; lParam
		push	400h		; wParam
		push	0Dh		; Msg
		push	0C82h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	edi, eax
		jmp	short loc_4054F0
; ---------------------------------------------------------------------------

loc_4054E4:				; CODE XREF: .text:00405500j
		dec	edi
		mov	eax, arglist
		mov	word ptr [eax+edi*2], 0

loc_4054F0:				; CODE XREF: .text:004054E2j
		test	edi, edi
		jle	short loc_405502
		mov	edx, arglist
		cmp	word ptr [edx+edi*2-2],	20h
		jz	short loc_4054E4

loc_405502:				; CODE XREF: .text:004054F2j
		test	edi, edi
		jle	short loc_405538
		xor	ebx, ebx
		mov	eax, arglist
		jmp	short loc_405513
; ---------------------------------------------------------------------------

loc_40550F:				; CODE XREF: .text:00405517j
		inc	ebx
		add	eax, 2

loc_405513:				; CODE XREF: .text:0040550Dj
		cmp	word ptr [eax],	20h
		jz	short loc_40550F
		test	ebx, ebx
		jle	short loc_405538
		mov	edx, edi
		mov	eax, arglist
		sub	edx, ebx
		add	ebx, ebx
		inc	edx
		add	edx, edx
		add	ebx, eax
		push	edx		; n
		push	ebx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_405538:				; CODE XREF: .text:00405504j
					; .text:0040551Bj
		test	edi, edi
		jle	loc_405636
		xor	ebx, ebx
		lea	eax, [ebp-7A04h]

loc_405548:				; CODE XREF: .text:00405556j
		mov	word ptr [eax],	0
		inc	ebx
		add	eax, 800h
		cmp	ebx, 0Fh
		jl	short loc_405548
		xor	edx, edx
		mov	edi, edx
		mov	ebx, edx
		jmp	short loc_4055C3
; ---------------------------------------------------------------------------

loc_405560:				; CODE XREF: .text:004055CBj
		push	ebx
		push	offset aArgumentsI_1 ; "Arguments[%i]"
		lea	eax, [ebp-204h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, edi
		shl	edx, 0Bh
		lea	ecx, [ebp-7A04h]
		add	edx, ecx
		push	400h		; length
		push	edx		; s
		lea	eax, [ebp-204h]
		push	eax		; key
		push	offset aArguments_0 ; "Arguments"
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jz	short loc_4055C2
		mov	ecx, edi
		mov	edx, arglist
		shl	ecx, 0Bh
		lea	eax, [ebp-7A04h]
		add	ecx, eax
		push	edx		; s2
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4055C2
		inc	edi

loc_4055C2:				; CODE XREF: .text:0040559Ej
					; .text:004055BFj
		inc	ebx

loc_4055C3:				; CODE XREF: .text:0040555Ej
		cmp	ebx, 10h
		jge	short loc_4055CD
		cmp	edi, 0Fh
		jl	short loc_405560

loc_4055CD:				; CODE XREF: .text:004055C6j
		mov	edx, arglist
		push	edx		; arglist
		push	offset aS_32	; format
		push	offset aArguments0_1 ; "Arguments[0]"
		push	offset aArguments_0 ; "Arguments"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		xor	ebx, ebx

loc_4055EF:				; CODE XREF: .text:00405634j
		lea	eax, [ebx+1]
		lea	edx, [ebp-204h]
		push	eax
		push	offset aArgumentsI_1 ; "Arguments[%i]"
		push	edx		; buffer
		call	_swprintf
		mov	ecx, ebx
		add	esp, 0Ch
		shl	ecx, 0Bh
		lea	eax, [ebp-7A04h]
		add	ecx, eax
		lea	edx, [ebp-204h]
		push	ecx		; arglist
		push	offset aS_32	; format
		push	edx		; key
		push	offset aArguments_0 ; "Arguments"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		inc	ebx
		cmp	ebx, 0Fh
		jl	short loc_4055EF

loc_405636:				; CODE XREF: .text:0040553Aj
		cmp	dir, 0
		jz	loc_4058EE
		mov	ecx, dir
		push	ecx		; lParam
		push	104h		; wParam
		push	0Dh		; Msg
		push	0C83h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	edi, eax
		jmp	short loc_40566C
; ---------------------------------------------------------------------------

loc_405660:				; CODE XREF: .text:0040567Cj
		dec	edi
		mov	eax, dir
		mov	word ptr [eax+edi*2], 0

loc_40566C:				; CODE XREF: .text:0040565Ej
		test	edi, edi
		jle	short loc_40567E
		mov	edx, dir
		cmp	word ptr [edx+edi*2-2],	20h
		jz	short loc_405660

loc_40567E:				; CODE XREF: .text:0040566Ej
		test	edi, edi
		jle	short loc_4056B4
		xor	ebx, ebx
		mov	eax, dir
		jmp	short loc_40568F
; ---------------------------------------------------------------------------

loc_40568B:				; CODE XREF: .text:00405693j
		inc	ebx
		add	eax, 2

loc_40568F:				; CODE XREF: .text:00405689j
		cmp	word ptr [eax],	20h
		jz	short loc_40568B
		test	ebx, ebx
		jle	short loc_4056B4
		mov	edx, edi
		mov	eax, dir
		sub	edx, ebx
		add	ebx, ebx
		inc	edx
		add	edx, edx
		add	ebx, eax
		push	edx		; n
		push	ebx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_4056B4:				; CODE XREF: .text:00405680j
					; .text:00405697j
		test	edi, edi
		jle	loc_4058EE
		xor	ebx, ebx
		lea	eax, [ebp-987Ch]

loc_4056C4:				; CODE XREF: .text:004056D2j
		mov	word ptr [eax],	0
		inc	ebx
		add	eax, 208h
		cmp	ebx, 0Fh
		jl	short loc_4056C4
		xor	edx, edx
		mov	edi, edx
		mov	ebx, edx
		jmp	short loc_405749
; ---------------------------------------------------------------------------

loc_4056DC:				; CODE XREF: .text:00405751j
		push	ebx
		push	offset aCurrentDirI_0 ;	format
		lea	eax, [ebp-204h]
		push	eax		; buffer
		call	_swprintf
		mov	edx, edi
		add	esp, 0Ch
		shl	edx, 6
		lea	ecx, [ebp-987Ch]
		add	edx, edi
		push	400h		; length
		shl	edx, 3
		lea	eax, [ebp-204h]
		add	edx, ecx
		push	edx		; s
		push	eax		; key
		push	offset aArguments_0 ; "Arguments"
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jz	short loc_405748
		mov	ecx, edi
		mov	edx, dir
		shl	ecx, 6
		lea	eax, [ebp-987Ch]
		add	ecx, edi
		push	edx		; s2
		shl	ecx, 3
		add	ecx, eax
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_405748
		inc	edi

loc_405748:				; CODE XREF: .text:0040571Fj
					; .text:00405745j
		inc	ebx

loc_405749:				; CODE XREF: .text:004056DAj
		cmp	ebx, 10h
		jge	short loc_405753
		cmp	edi, 0Fh
		jl	short loc_4056DC

loc_405753:				; CODE XREF: .text:0040574Cj
		mov	edx, dir
		push	edx		; arglist
		push	offset aS_32	; format
		push	offset aCurrentDir0 ; "Current dir[0]"
		push	offset aArguments_0 ; "Arguments"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		xor	ebx, ebx

loc_405775:				; CODE XREF: .text:004057BFj
		lea	eax, [ebx+1]
		lea	edx, [ebp-204h]
		push	eax
		push	offset aCurrentDirI_0 ;	format
		push	edx		; buffer
		call	_swprintf
		mov	ecx, ebx
		add	esp, 0Ch
		shl	ecx, 6
		lea	eax, [ebp-987Ch]
		add	ecx, ebx
		lea	edx, [ebp-204h]
		shl	ecx, 3
		add	ecx, eax
		push	ecx		; arglist
		push	offset aS_32	; format
		push	edx		; key
		push	offset aArguments_0 ; "Arguments"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		inc	ebx
		cmp	ebx, 0Fh
		jl	short loc_405775
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_4057C6:				; CODE XREF: .text:004054C2j
		mov	ecx, dword_57D9C8
		and	ecx, 0F0000000h
		cmp	ecx, 30000000h
		jnz	short loc_405853
		and	dword_57D9C8, 0FFF1FFFFh
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0C85h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jz	short loc_405806
		or	dword_57D9C8, 80000h

loc_405806:				; CODE XREF: .text:004057FAj
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0C86h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jz	short loc_405828
		or	dword_57D9C8, 40000h

loc_405828:				; CODE XREF: .text:0040581Cj
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0C87h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jz	loc_4058EE
		or	dword_57D9C8, 20000h
		jmp	loc_4058EE
; ---------------------------------------------------------------------------

loc_405853:				; CODE XREF: .text:004057D8j
		mov	eax, dword_57D9C8
		and	eax, 0F0000000h
		cmp	eax, 40000000h
		jnz	loc_4058EE
		and	dword_57D9C8, 0FFFFFF00h
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0C8Bh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jz	short loc_405891
		or	dword_57D9C8, 1

loc_405891:				; CODE XREF: .text:00405888j
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0C8Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jz	short loc_4058B0
		or	dword_57D9C8, 2

loc_4058B0:				; CODE XREF: .text:004058A7j
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0C8Dh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jz	short loc_4058CF
		or	dword_57D9C8, 4

loc_4058CF:				; CODE XREF: .text:004058C6j
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0C8Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jz	short loc_4058EE
		or	dword_57D9C8, 8

loc_4058EE:				; CODE XREF: .text:00404D70j
					; .text:00404D89j ...
		xor	eax, eax

loc_4058F0:				; CODE XREF: .text:0040535Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
		