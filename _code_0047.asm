.code

; SORTFUNC loc_44B584
loc_44B584:				; DATA XREF: .text:0044BC25o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		xor	eax, eax
		cmp	edx, 1
		jnz	short loc_44B5B1
		lea	edx, [esi+214h]
		push	edx		; s2
		lea	ecx, [ebx+214h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		jmp	short loc_44B5E3
; ---------------------------------------------------------------------------

loc_44B5B1:				; CODE XREF: .text:0044B597j
		cmp	edx, 2
		jnz	short loc_44B5CE
		lea	eax, [esi+414h]
		push	eax		; s2
		lea	edx, [ebx+414h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		jmp	short loc_44B5E3
; ---------------------------------------------------------------------------

loc_44B5CE:				; CODE XREF: .text:0044B5B4j
		cmp	edx, 3
		jnz	short loc_44B5E3
		lea	ecx, [esi+0Ch]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8

loc_44B5E3:				; CODE XREF: .text:0044B5AFj
					; .text:0044B5CCj ...
		test	eax, eax
		jnz	short loc_44B5FD
		mov	ecx, [esi]
		mov	edx, [ebx]
		cmp	ecx, edx
		jbe	short loc_44B5F4
		or	eax, 0FFFFFFFFh
		jmp	short loc_44B5FD
; ---------------------------------------------------------------------------

loc_44B5F4:				; CODE XREF: .text:0044B5EDj
		cmp	ecx, edx
		jnb	short loc_44B5FD
		mov	eax, 1

loc_44B5FD:				; CODE XREF: .text:0044B5E5j
					; .text:0044B5F2j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44B604:				; DATA XREF: .text:0044BD54o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		cmp	eax, 1
		jz	short loc_44B614
		cmp	eax, 2
		jnz	short loc_44B62C

loc_44B614:				; CODE XREF: .text:0044B60Dj
		push	0		; lParam
		push	1Bh		; wParam
		push	102h		; Msg
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	SendMessageW

loc_44B62C:				; CODE XREF: .text:0044B612j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_44B630(int, HWND hWnd, int, wint_t c)
loc_44B630:				; DATA XREF: .text:0044BD29o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+10h]
		sub	eax, 102h
		jz	short loc_44B659
		sub	eax, 36Fh
		jz	loc_44B815
		jmp	loc_44B839
; ---------------------------------------------------------------------------

loc_44B659:				; CODE XREF: .text:0044B647j
		mov	dword ptr [ebp-8], offset word_5E09B8
		push	100h		; n
		mov	edx, [ebp-8]
		push	edx		; src
		call	StrlenW
		add	esp, 8
		mov	esi, eax
		cmp	ebx, 1Bh
		jnz	short loc_44B687
		xor	eax, eax
		mov	edx, [ebp-8]
		mov	esi, eax
		mov	word ptr [edx+eax*2], 0
		jmp	short loc_44B6EC
; ---------------------------------------------------------------------------

loc_44B687:				; CODE XREF: .text:0044B676j
		cmp	ebx, 8
		jnz	short loc_44B69C
		test	esi, esi
		jle	short loc_44B69C
		dec	esi
		mov	ecx, [ebp-8]
		mov	word ptr [ecx+esi*2], 0
		jmp	short loc_44B6EC
; ---------------------------------------------------------------------------

loc_44B69C:				; CODE XREF: .text:0044B68Aj
					; .text:0044B68Ej
		cmp	ebx, 9
		jz	loc_44B839
		cmp	ebx, 0Ah
		jz	loc_44B839
		cmp	ebx, 0Dh
		jz	loc_44B839
		push	ebx		; c
		call	_iswprint
		pop	ecx
		test	eax, eax
		jz	loc_44B839
		cmp	esi, 0FFh
		jge	loc_44B839
		mov	edi, ebx
		push	edi		; ch
		call	__ltowupper
		pop	ecx
		mov	edx, [ebp-8]
		mov	[edx+esi*2], ax
		inc	esi
		mov	eax, [ebp-8]
		mov	word ptr [eax+esi*2], 0

loc_44B6EC:				; CODE XREF: .text:0044B685j
					; .text:0044B69Aj
		xor	ecx, ecx
		test	esi, esi
		mov	[ebp-4], ecx
		jle	short loc_44B76F
		xor	ebx, ebx
		jmp	short loc_44B73E
; ---------------------------------------------------------------------------

loc_44B6F9:				; CODE XREF: .text:0044B744j
		push	ebx		; index
		push	offset stru_5E074C.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	short loc_44B746
		push	100h		; n
		lea	eax, [edi+214h]
		push	eax		; src
		call	StrlenW
		add	esp, 8
		cmp	esi, eax
		jg	short loc_44B73D
		push	esi		; maxlen
		mov	edx, [ebp-8]
		push	edx		; s2
		add	edi, 214h
		push	edi		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_44B746

loc_44B73D:				; CODE XREF: .text:0044B723j
		inc	ebx

loc_44B73E:				; CODE XREF: .text:0044B6F7j
		cmp	ebx, stru_5E074C.sorted.n
		jl	short loc_44B6F9

loc_44B746:				; CODE XREF: .text:0044B70Bj
					; .text:0044B73Bj
		cmp	ebx, stru_5E074C.sorted.n
		jge	short loc_44B75E
		push	ebx		; selected
		push	offset stru_5E074C ; pt
		call	Settableselection
		add	esp, 8
		jmp	short loc_44B76F
; ---------------------------------------------------------------------------

loc_44B75E:				; CODE XREF: .text:0044B74Cj
		dec	esi
		mov	eax, [ebp-8]
		mov	word ptr [eax+esi*2], 0
		mov	dword ptr [ebp-4], 1

loc_44B76F:				; CODE XREF: .text:0044B6F3j
					; .text:0044B75Cj
		test	esi, esi
		jnz	short loc_44B784
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_44B784
		mov	word ptr [ebp-408h], 0
		jmp	short loc_44B7F3
; ---------------------------------------------------------------------------

loc_44B784:				; CODE XREF: .text:0044B771j
					; .text:0044B777j
		push	offset aSearch_4 ; "Search - "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-408h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp-8]
		mov	edx, ebx
		push	eax		; src
		lea	ecx, [ebp-408h]
		add	edx, edx
		push	100h		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_44B7F3
		push	offset asc_532AC6 ; " "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 200h
		lea	edx, [ebp-408h]
		sub	eax, ebx
		add	ebx, ebx
		add	ebx, edx
		push	eax		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44B7F3:				; CODE XREF: .text:0044B782j
					; .text:0044B7CAj
		lea	ecx, [ebp-408h]
		push	ecx		; lpString
		push	0CE5h		; nIDDlgItem
		mov	eax, [ebp+0Ch]
		push	eax		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	SetDlgItemTextW
		mov	eax, 1
		jmp	short loc_44B83B
; ---------------------------------------------------------------------------

loc_44B815:				; CODE XREF: .text:0044B64Ej
		push	0		; index
		push	offset loc_449AB0 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		jmp	short loc_44B83B
; ---------------------------------------------------------------------------

loc_44B839:				; CODE XREF: .text:0044B654j
					; .text:0044B69Fj ...
		xor	eax, eax

loc_44B83B:				; CODE XREF: .text:0044B813j
					; .text:0044B837j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_44B844(HWND, UINT, WPARAM, LPARAM)
loc_44B844:				; DATA XREF: .text:0044BD6Fo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		cmp	eax, 111h
		jg	short loc_44B885
		jz	loc_44BB53
		sub	eax, 24h
		jz	loc_44BB3B
		sub	eax, 22h
		jz	loc_44B9D6
		dec	eax
		jz	loc_44B9E6
		sub	eax, 0C9h
		jz	short loc_44B8A9
		jmp	loc_44BC0E
; ---------------------------------------------------------------------------

loc_44B885:				; CODE XREF: .text:0044B858j
		sub	eax, 112h
		jz	loc_44BBF5
		sub	eax, 26h
		jz	loc_44B973
		sub	eax, 0D2h
		jz	loc_44B9BE
		jmp	loc_44BC0E
; ---------------------------------------------------------------------------

loc_44B8A9:				; CODE XREF: .text:0044B87Ej
		push	offset aSelectProcessT ; "Select process to attach"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW
		push	offset aAttach	; "Attach"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	offset aCancel_2 ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	2		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		lea	edx, [ebp-20h]
		push	edx		; lpRect
		push	ebx		; hWnd
		call	GetClientRect
		lea	ecx, [ebp-10h]
		push	ecx		; lpRect
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	GetWindowRect
		lea	eax, [ebp-10h]
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		lea	edx, [ebp-8]
		push	edx		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		mov	ecx, [ebp-4]
		mov	eax, [ebp-0Ch]
		sub	ecx, eax
		test	ecx, ecx
		jns	short loc_44B922
		add	ecx, 3

loc_44B922:				; CODE XREF: .text:0044B91Dj
		sar	ecx, 2
		sub	eax, ecx
		mov	[ebp-14h], eax
		lea	edx, [ebp-20h]
		push	edx		; rpos
		push	offset stru_5E074C ; pt
		push	ebx		; hparent
		call	Createottablewindow
		add	esp, 0Ch
		mov	ecx, stru_5E074C.hw
		push	ecx		; hWnd
		call	SetFocus
		mov	stru_5E074C.hparent, ebx
		push	offset aToFindProcessS ; "To find process, start typing	its _name"
		mov	word_5E09B8, 0
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0CE5h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_44BC0E
; ---------------------------------------------------------------------------

loc_44B973:				; CODE XREF: .text:0044B893j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 0CE5h
		jnz	short loc_44B98D
		cmp	word_5E09B8, 0
		jz	short loc_44B994

loc_44B98D:				; CODE XREF: .text:0044B981j
		xor	eax, eax
		jmp	loc_44BC10
; ---------------------------------------------------------------------------

loc_44B994:				; CODE XREF: .text:0044B98Bj
		mov	edx, color+20h
		push	edx		; COLORREF
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
		jmp	loc_44BC10
; ---------------------------------------------------------------------------

loc_44B9BE:				; CODE XREF: .text:0044B89Ej
		mov	eax, [ebp+10h]
		push	eax		; wp
		mov	edx, stru_5E074C.hw
		push	edx		; hw
		call	Processwmmousewheel
		add	esp, 8
		jmp	loc_44BC0E
; ---------------------------------------------------------------------------

loc_44B9D6:				; CODE XREF: .text:0044B86Cj
		push	offset stru_5E074C.rcprev ; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		jmp	loc_44BC0E
; ---------------------------------------------------------------------------

loc_44B9E6:				; CODE XREF: .text:0044B873j
		lea	ecx, [ebp-20h]
		push	ecx		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		mov	esi, [ebp-18h]
		mov	eax, stru_5E074C.rcprev.right
		sub	eax, stru_5E074C.rcprev.left
		sub	esi, [ebp-20h]
		sub	esi, eax
		mov	eax, stru_5E074C.rcprev.bottom
		mov	edi, [ebp-14h]
		sub	edi, [ebp-1Ch]
		sub	eax, stru_5E074C.rcprev.top
		sub	edi, eax
		test	esi, esi
		jnz	short loc_44BA22
		test	edi, edi
		jz	loc_44BC0E

loc_44BA22:				; CODE XREF: .text:0044BA18j
		lea	edx, [ebp-10h]
		push	edx		; lpRect
		mov	ecx, stru_5E074C.hw
		push	ecx		; hWnd
		call	GetWindowRect
		lea	eax, [ebp-8]
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	202h		; uFlags
		mov	eax, stru_5E074C.hw
		mov	edx, [ebp-4]
		add	edx, edi
		push	edx		; cy
		mov	ecx, [ebp-8]
		add	ecx, esi
		push	ecx		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	eax		; hWnd
		call	SetWindowPos
		lea	edx, [ebp-10h]
		push	edx		; lpRect
		push	0CE5h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-8]
		lea	edx, [ebp-10h]
		sub	ecx, [ebp-10h]
		add	ecx, esi
		mov	[ebp-8], ecx
		mov	eax, [ebp-0Ch]
		sub	[ebp-4], eax
		push	edx		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	300h		; uFlags
		mov	ecx, [ebp-4]
		push	ecx		; cy
		mov	eax, [ebp-8]
		push	eax		; cx
		mov	edx, [ebp-0Ch]
		add	edx, edi
		push	edx		; Y
		mov	ecx, [ebp-10h]
		push	ecx		; X
		push	0		; hWndInsertAfter
		push	0CE5h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetWindowPos
		lea	eax, [ebp-10h]
		push	eax		; lpRect
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	GetWindowRect
		lea	edx, [ebp-10h]
		push	edx		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	301h		; uFlags
		push	0		; cy
		push	0		; cx
		mov	ecx, [ebp-0Ch]
		add	ecx, edi
		push	ecx		; Y
		mov	eax, [ebp-10h]
		add	eax, esi
		push	eax		; X
		push	0		; hWndInsertAfter
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetWindowPos
		lea	edx, [ebp-10h]
		push	edx		; lpRect
		push	2		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	GetWindowRect
		lea	ecx, [ebp-10h]
		push	ecx		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	301h		; uFlags
		push	0		; cy
		push	0		; cx
		add	edi, [ebp-0Ch]
		push	edi		; Y
		add	esi, [ebp-10h]
		push	esi		; X
		push	0		; hWndInsertAfter
		push	2		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetWindowPos
		jmp	loc_44BC0E
; ---------------------------------------------------------------------------

loc_44BB3B:				; CODE XREF: .text:0044B863j
		mov	eax, [ebp+14h]
		mov	dword ptr [eax+18h], 0C8h
		mov	dword ptr [eax+1Ch], 96h
		xor	eax, eax
		jmp	loc_44BC10
; ---------------------------------------------------------------------------

loc_44BB53:				; CODE XREF: .text:0044B85Aj
		mov	dx, [ebp+10h]
		and	dx, 0FFFFh
		cmp	dx, 1
		jnz	short loc_44BBD7
		mov	eax, stru_5E074C.sorted.selected
		test	eax, eax
		jl	loc_44BC0E
		cmp	eax, stru_5E074C.sorted.n
		jge	loc_44BC0E
		push	eax		; index
		push	offset stru_5E074C.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44BC0E
		test	byte ptr [esi+0Ah], 1
		jz	short loc_44BBA9
		push	offset aYouCanTDebugTh ; "You can't debug the instance of the Oll"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		jmp	short loc_44BC0E
; ---------------------------------------------------------------------------

loc_44BBA9:				; CODE XREF: .text:0044BB93j
		test	byte ptr [esi+0Ah], 2
		jz	short loc_44BBCC
		add	esi, 214h
		push	esi		; arglist
		push	offset aTheProcessSIsO ; "The process '%s' is one you are current"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	short loc_44BC0E
; ---------------------------------------------------------------------------

loc_44BBCC:				; CODE XREF: .text:0044BBADj
		mov	eax, [esi]
		push	eax		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_44BBEE
; ---------------------------------------------------------------------------

loc_44BBD7:				; CODE XREF: .text:0044BB60j
		mov	dx, [ebp+10h]
		and	dx, 0FFFFh
		cmp	dx, 2
		jnz	short loc_44BBEE
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog

loc_44BBEE:				; CODE XREF: .text:0044BBD5j
					; .text:0044BBE4j
		mov	eax, 1
		jmp	short loc_44BC10
; ---------------------------------------------------------------------------

loc_44BBF5:				; CODE XREF: .text:0044B88Aj
		mov	edx, [ebp+10h]
		and	edx, 0FFF0h
		cmp	edx, 0F060h
		jnz	short loc_44BC0E
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog

loc_44BC0E:				; CODE XREF: .text:0044B880j
					; .text:0044B8A4j ...
		xor	eax, eax

loc_44BC10:				; CODE XREF: .text:0044B98Fj
					; .text:0044B9B9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_44BC1C:				; CODE XREF: .text:loc_40AE4Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	0		; mode
		push	0		; destfunc
		push	offset loc_44B584 ; sortfunc
		push	80h		; nexp
		push	614h		; itemsize
		push	offset stru_5E074C.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	offset stru_5E074C.sorted ; lParam
		call	loc_4495A8
		pop	ecx
		cmp	stru_5E074C.bar.nbar, 0
		jnz	loc_44BD68
		push	offset aAttach	; "Attach"
		push	offset stru_5E074C ; dst
		call	_wcscpy
		add	esp, 8
		mov	stru_5E074C.mode, 300F8080h
		mov	stru_5E074C.bar.visible, 1
		mov	stru_5E074C.bar._name, offset aPidDecimal ; "PID$     (Decimal)"
		mov	stru_5E074C.bar.expl, offset aProcessIdentif ; "Process	identifier (hex	and decimal for"...
		mov	stru_5E074C.bar.mode, 2
		mov	stru_5E074C.bar.defdx, 9
		mov	stru_5E074C.bar._name+4,	offset aName_1 ; "Name"
		mov	stru_5E074C.bar.expl+4,	offset aProcessName ; "Process _name"
		mov	stru_5E074C.bar.mode+4,	2
		mov	stru_5E074C.bar.defdx+4, 0Ch
		mov	stru_5E074C.bar._name+8,	offset aWindow ; "Window"
		mov	stru_5E074C.bar.expl+8,	offset aTitleOfSomeTop ; "Title	of some	top-level window belongin"...
		mov	stru_5E074C.bar.mode+8,	2
		mov	stru_5E074C.bar.defdx+8, 1Ch
		mov	stru_5E074C.bar._name+0Ch, offset aPath_1 ; "Path"
		mov	stru_5E074C.bar.expl+0Ch, offset aNameOfExecutab ; "Name of executable file"
		mov	stru_5E074C.bar.mode+0Ch, 2
		mov	stru_5E074C.bar.defdx+0Ch, 100h
		mov	stru_5E074C.bar.nbar, 4
		mov	stru_5E074C.tabfunc, offset loc_44B630
		xor	eax, eax
		mov	stru_5E074C.custommode,	eax
		xor	edx, edx
		mov	stru_5E074C.customdata,	edx
		xor	ecx, ecx
		mov	stru_5E074C.updatefunc,	ecx
		mov	stru_5E074C.drawfunc, offset loc_44B42C
		mov	stru_5E074C.tableselfunc, offset loc_44B604
		mov	stru_5E074C.menu, offset stru_532074

loc_44BD68:				; CODE XREF: .text:0044BC53j
		push	0		; dwInitParam
		mov	eax, hwollymain
		push	offset loc_44B844 ; lpDialogFunc
		push	eax		; hWndParent
		mov	edx, g_hInstance
		push	offset aDia_attach ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	stru_5E074C.hparent, eax
		push	offset stru_5E074C.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		test	ebx, ebx
		jnz	short loc_44BDA3
		or	eax, 0FFFFFFFFh
		jmp	short loc_44BE05
; ---------------------------------------------------------------------------

loc_44BDA3:				; CODE XREF: .text:0044BD9Cj
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow
		mov	ecx, g_hCursor
		push	ecx		; hCursor
		call	SetCursor
		mov	esi, eax
		push	ebx		; dwProcessId
		call	loc_44B108
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_44BDDB
		push	2		; newstatus
		call	Setstatus
		pop	ecx

loc_44BDDB:				; CODE XREF: .text:0044BDD1j
		push	esi		; hCursor
		call	SetCursor
		test	ebx, ebx
		jz	short loc_44BDED
		push	0
		call	loc_44A0BC
		pop	ecx

loc_44BDED:				; CODE XREF: .text:0044BDE3j
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		call	loc_40A170
		mov	eax, ebx

loc_44BE05:				; CODE XREF: .text:0044BDA1j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44BE0C:				; CODE XREF: .text:0044C7E8p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_44BE1D
		cmp	dword ptr [eax+54h], 0
		jnz	short loc_44BE23

loc_44BE1D:				; CODE XREF: .text:0044BE15j
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44BE23:				; CODE XREF: .text:0044BE1Bj
		mov	edx, VersionInformation.dwPlatformId
		cmp	edx, 2
		jnz	short loc_44BE36
		mov	ebx, [eax+54h]
		add	ebx, 34h
		jmp	short loc_44BE49
; ---------------------------------------------------------------------------

loc_44BE36:				; CODE XREF: .text:0044BE2Cj
		cmp	edx, 1
		jnz	short loc_44BE43
		mov	ebx, [eax+54h]
		add	ebx, 60h
		jmp	short loc_44BE49
; ---------------------------------------------------------------------------

loc_44BE43:				; CODE XREF: .text:0044BE39j
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44BE49:				; CODE XREF: .text:0044BE34j
					; .text:0044BE41j
		push	10h		; mode
		push	4		; size
		push	ebx		; _addr
		lea	edx, [ebp+0Ch]
		push	edx		; buf
		call	Writememory
		add	esp, 10h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_44BE60:				; CODE XREF: .text:0044C6B1p
					; .text:0044EC44p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_44BE75
		xor	eax, eax
		jmp	loc_44BF6F
; ---------------------------------------------------------------------------

loc_44BE75:				; CODE XREF: .text:0044BE6Cj
		xor	edx, edx
		xor	ebx, ebx
		mov	[ebp-4], edx
		mov	dword ptr [esi+1Ch], 2100h

loc_44BE83:				; CODE XREF: .text:0044BF66j
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		and	eax, [ebp+0Ch]
		jnz	loc_44BF62
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	loc_44BF62
		test	byte ptr [eax+0Ah], 2
		jnz	loc_44BF62
		mov	edx, [eax+8]
		and	edx, 0E00000h
		cmp	edx, 800000h
		jnz	short loc_44BECC
		xor	edi, edi
		jmp	short loc_44BEE8
; ---------------------------------------------------------------------------

loc_44BECC:				; CODE XREF: .text:0044BEC6j
		cmp	edx, (offset stru_5FF23C.text+0DC0h)
		jnz	short loc_44BEDB
		mov	edi, 3
		jmp	short loc_44BEE8
; ---------------------------------------------------------------------------

loc_44BEDB:				; CODE XREF: .text:0044BED2j
		cmp	edx, 400000h
		jnz	short loc_44BF62
		mov	edi, 1

loc_44BEE8:				; CODE XREF: .text:0044BECAj
					; .text:0044BED9j
		mov	edx, [eax+8]
		and	edx, 0E00000h
		cmp	edx, 800000h
		jz	short loc_44BF0E
		mov	edx, [eax+10h]
		cmp	edx, 2
		jnz	short loc_44BF06
		or	edi, 4
		jmp	short loc_44BF0E
; ---------------------------------------------------------------------------

loc_44BF06:				; CODE XREF: .text:0044BEFFj
		cmp	edx, 4
		jnz	short loc_44BF0E
		or	edi, 0Ch

loc_44BF0E:				; CODE XREF: .text:0044BEF7j
					; .text:0044BF04j ...
		mov	ecx, ebx
		shl	ecx, 2
		add	ecx, 10h
		mov	edx, edi
		shl	edx, cl
		or	[esi+1Ch], edx
		mov	ecx, ebx
		add	ecx, ecx
		mov	edx, 1
		shl	edx, cl
		or	[esi+1Ch], edx
		test	ebx, ebx
		jnz	short loc_44BF36
		mov	eax, [eax+0Ch]
		mov	[esi], eax
		jmp	short loc_44BF56
; ---------------------------------------------------------------------------

loc_44BF36:				; CODE XREF: .text:0044BF2Dj
		cmp	ebx, 1
		jnz	short loc_44BF43
		mov	ecx, [eax+0Ch]
		mov	[esi+4], ecx
		jmp	short loc_44BF56
; ---------------------------------------------------------------------------

loc_44BF43:				; CODE XREF: .text:0044BF39j
		cmp	ebx, 2
		jnz	short loc_44BF50
		mov	eax, [eax+0Ch]
		mov	[esi+8], eax
		jmp	short loc_44BF56
; ---------------------------------------------------------------------------

loc_44BF50:				; CODE XREF: .text:0044BF46j
		mov	edx, [eax+0Ch]
		mov	[esi+0Ch], edx

loc_44BF56:				; CODE XREF: .text:0044BF34j
					; .text:0044BF41j ...
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		or	[ebp-4], eax

loc_44BF62:				; CODE XREF: .text:0044BE8Fj
					; .text:0044BEA7j ...
		inc	ebx
		cmp	ebx, 4
		jl	loc_44BE83
		mov	eax, [ebp-4]

loc_44BF6F:				; CODE XREF: .text:0044BE70j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; t_reg	*__usercall loc_44BF78@<eax>(t_thread *a1, int@<edx>, int@<ecx>, t_thread *a4)
loc_44BF78:				; CODE XREF: .text:0044C82Cp
					; .text:004572B2p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBE0h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_44BF91
		xor	eax, eax
		jmp	loc_44C4DF
; ---------------------------------------------------------------------------

loc_44BF91:				; CODE XREF: .text:0044BF88j
		mov	esi, [ebp+8]
		add	esi, 328h
		xor	eax, eax
		mov	[esi], eax
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		mov	[esi+4], ecx
		mov	eax, [ebp+8]
		add	eax, 5Ch
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0Ch]
		mov	dword ptr [edx], 1001Fh
		cmp	dword_5CBBC4, 0
		jz	short loc_44BFD3
		cmp	dword_5CBBC8, 0
		jz	short loc_44BFD3
		mov	ecx, [ebp-0Ch]
		or	dword ptr [ecx], 10020h

loc_44BFD3:				; CODE XREF: .text:0044BFBFj
					; .text:0044BFC8j
		cmp	netdbg,	0
		jz	short loc_44C015
		cmp	dword_5D40B8, 0
		jz	short loc_44C015
		mov	eax, [ebp-0Ch]
		push	eax
		push	2CCh
		mov	edx, [ebp+8]
		mov	eax, dword_5D40B8
		mov	ecx, [edx]
		push	ecx
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+4Ch]
		test	eax, eax
		jz	short loc_44C03B
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	[ecx+4ECh], eax
		xor	eax, eax
		jmp	loc_44C4DF
; ---------------------------------------------------------------------------

loc_44C015:				; CODE XREF: .text:0044BFDAj
					; .text:0044BFE3j
		mov	edx, [ebp-0Ch]
		push	edx		; lpContext
		mov	ecx, [ebp+8]
		mov	eax, [ecx+50h]
		push	eax		; hThread
		call	GetThreadContext
		test	eax, eax
		jnz	short loc_44C03B
		mov	edx, [ebp+8]
		xor	ecx, ecx
		mov	[edx+4ECh], ecx
		xor	eax, eax
		jmp	loc_44C4DF
; ---------------------------------------------------------------------------

loc_44C03B:				; CODE XREF: .text:0044C001j
					; .text:0044C027j
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+0B8h]
		mov	[esi+8], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+0B0h]
		mov	[esi+0Ch], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+0ACh]
		mov	[esi+10h], eax
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+0A8h]
		mov	[esi+14h], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+0A4h]
		mov	[esi+18h], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+0C4h]
		mov	[esi+1Ch], eax
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+0B4h]
		mov	[esi+20h], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+0A0h]
		mov	[esi+24h], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+9Ch]
		mov	[esi+28h], eax
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+0C0h]
		mov	[esi+2Ch], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+20h]
		lea	eax, [esi+0D4h]
		shr	edx, 0Bh
		and	edx, 7
		xor	ebx, ebx
		mov	[esi+80h], edx
		mov	[ebp-18h], eax
		lea	eax, [esi+84h]

loc_44C0D6:				; CODE XREF: .text:0044C12Cj
		lea	edx, [ebx+8]
		sub	edx, [esi+80h]
		and	edx, 80000007h
		jns	short loc_44C0EC
		dec	edx
		or	edx, 0FFFFFFF8h
		inc	edx

loc_44C0EC:				; CODE XREF: .text:0044C0E5j
		mov	[ebp-4], edx
		mov	ecx, [ebp-4]
		lea	ecx, [ecx+ecx*4]
		mov	edx, [ebp-0Ch]
		mov	edi, [edx+ecx*2+38h]
		mov	[eax], edi
		mov	edi, [edx+ecx*2+3Ch]
		mov	[eax+4], edi
		mov	di, [edx+ecx*2+40h]
		mov	[eax+8], di
		mov	ecx, ebx
		add	ecx, ecx
		mov	edx, [ebp-0Ch]
		mov	edx, [edx+24h]
		shr	edx, cl
		and	dl, 3
		mov	ecx, [ebp-18h]
		mov	[ecx], dl
		inc	ebx
		inc	dword ptr [ebp-18h]
		add	eax, 0Ah
		cmp	ebx, 8
		jl	short loc_44C0D6
		mov	eax, [ebp-0Ch]
		lea	edi, [esi+60h]
		mov	eax, [eax+20h]
		and	eax, 0FFFFh
		mov	[esi+0DCh], eax
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+1Ch]
		and	ecx, 0FFFFh
		mov	[esi+0E0h], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+2Ch]
		and	edx, 0FFFFh
		xor	ebx, ebx
		mov	[esi+0E4h], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+28h]
		mov	[esi+0E8h], eax
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+94h]
		mov	[esi+30h], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+0BCh]
		mov	[esi+34h], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+0C8h]
		mov	[esi+38h], eax
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+98h]
		mov	[esi+3Ch], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+90h]
		mov	[esi+40h], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+8Ch]
		mov	[esi+44h], eax
		lea	eax, [esi+78h]
		mov	[ebp-1Ch], eax

loc_44C1C2:				; CODE XREF: .text:0044C27Ej
		cmp	dword_5C8950, 0
		jz	short loc_44C1E2
		cmp	ebx, 4
		jge	short loc_44C1E2
		xor	eax, eax
		mov	[edi], eax
		mov	[edi-18h], eax
		mov	edx, [ebp-1Ch]
		mov	byte ptr [edx],	1
		jmp	loc_44C274
; ---------------------------------------------------------------------------

loc_44C1E2:				; CODE XREF: .text:0044C1C9j
					; .text:0044C1CEj
		lea	ecx, [ebp-14h]
		push	ecx		; lpSelectorEntry
		mov	eax, [edi-30h]
		push	eax		; dwSelector
		mov	edx, [ebp+8]
		mov	ecx, [edx+50h]
		push	ecx		; hThread
		call	GetThreadSelectorEntry
		test	eax, eax
		jz	short loc_44C267
		movzx	edx, word ptr [ebp-12h]
		mov	al, [ebp-10h]
		mov	cl, [ebp-0Dh]
		and	eax, 0FFh
		and	ecx, 0FFh
		shl	eax, 10h
		and	edx, 0FFFFh
		shl	ecx, 18h
		and	eax, 0FF0000h
		add	eax, edx
		and	ecx, 0FF000000h
		add	eax, ecx
		mov	[edi-18h], eax
		movzx	edx, word ptr [ebp-14h]
		mov	al, [ebp-0Eh]
		and	edx, 0FFFFh
		and	eax, 0Fh
		shl	eax, 10h
		and	eax, 0F0000h
		add	eax, edx
		test	byte ptr [ebp-0Eh], 80h
		jz	short loc_44C255
		shl	eax, 0Ch
		add	eax, 0FFFh

loc_44C255:				; CODE XREF: .text:0044C24Bj
		mov	[edi], eax
		mov	cl, [ebp-0Eh]
		mov	eax, [ebp-1Ch]
		shr	ecx, 6
		and	ecx, 1
		mov	[eax], cl
		jmp	short loc_44C274
; ---------------------------------------------------------------------------

loc_44C267:				; CODE XREF: .text:0044C1F8j
		xor	edx, edx
		mov	[edi], edx
		mov	[edi-18h], edx
		mov	eax, [ebp-1Ch]
		mov	byte ptr [eax],	1

loc_44C274:				; CODE XREF: .text:0044C1DDj
					; .text:0044C265j
		inc	ebx
		inc	dword ptr [ebp-1Ch]
		add	edi, 4
		cmp	ebx, 6
		jl	loc_44C1C2
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+4]
		mov	[esi+0ECh], eax
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+8]
		mov	[esi+0F0h], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+0Ch]
		mov	[esi+0F4h], edx
		xor	edx, edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+10h]
		xor	ecx, ecx
		mov	[esi+0F8h], eax
		mov	[esi+0FCh], edx
		mov	[esi+100h], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+14h]
		mov	[esi+104h], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+18h]
		mov	[esi+108h], eax
		cmp	g_IsWinxp, 0
		jz	loc_44C434
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+6D4h], 0
		jz	loc_44C434
		mov	ecx, [ebp+8]
		mov	eax, [ecx+6F4h]
		xor	eax, [esi+108h]
		test	al, 0FFh
		jz	short loc_44C315
		mov	dword ptr [ebp-8], 1
		jmp	short loc_44C359
; ---------------------------------------------------------------------------

loc_44C315:				; CODE XREF: .text:0044C30Aj
		xor	edx, edx
		mov	[ebp-8], edx
		xor	ebx, ebx
		mov	eax, [ebp+8]
		lea	edx, [eax+6D8h]
		lea	eax, [esi+0ECh]

loc_44C32B:				; CODE XREF: .text:0044C357j
		mov	ecx, ebx
		add	ecx, ecx
		mov	edi, 3
		shl	edi, cl
		and	edi, [esi+108h]
		jz	short loc_44C34D
		mov	ecx, [eax]
		cmp	ecx, [edx]
		jz	short loc_44C34D
		mov	dword ptr [ebp-8], 1
		jmp	short loc_44C359
; ---------------------------------------------------------------------------

loc_44C34D:				; CODE XREF: .text:0044C33Cj
					; .text:0044C342j
		inc	ebx
		add	edx, 4
		add	eax, 4
		cmp	ebx, 4
		jl	short loc_44C32B

loc_44C359:				; CODE XREF: .text:0044C313j
					; .text:0044C34Bj
		cmp	dword ptr [ebp-8], 0
		jz	loc_44C434
		push	offset aModifiedDebugR ; "Modified debug registers of "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-420h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-420h]
		add	eax, eax
		add	eax, ecx
		push	8400h		; mode
		mov	edx, [ebp+8]
		mov	edx, [edx]
		push	edx		; threadid
		push	eax		; s
		call	Decodethreadname
		add	esp, 0Ch
		cmp	run.indebugevent, 1
		jnz	short loc_44C3BA
		cmp	run.de.dwDebugEventCode, 1
		jnz	short loc_44C3BA
		mov	eax, dword ptr run.de.u+0Ch
		jmp	short loc_44C3BD
; ---------------------------------------------------------------------------

loc_44C3BA:				; CODE XREF: .text:0044C3A8j
					; .text:0044C3B1j
		mov	eax, [esi+8]

loc_44C3BD:				; CODE XREF: .text:0044C3B8j
		lea	edx, [ebp-420h]
		push	edx		; format
		push	1		; color
		push	eax		; _addr
		call	Addtolist
		mov	eax, [ebp+8]
		add	esp, 0Ch
		xor	ebx, ebx
		lea	edi, [esi+0ECh]
		lea	edx, [eax+6D8h]
		mov	[ebp-20h], edx

loc_44C3E3:				; CODE XREF: .text:0044C428j
		cmp	ebx, 4
		jz	short loc_44C41D
		cmp	ebx, 5
		jz	short loc_44C41D
		cmp	ebx, 6
		jz	short loc_44C41D
		mov	eax, [edi]
		mov	edx, [ebp-20h]
		cmp	eax, [edx]
		jz	short loc_44C41D
		mov	ecx, [edi]
		push	ecx
		mov	eax, [ebp-20h]
		mov	edx, [eax]
		push	edx
		push	ebx		; arglist
		push	offset aDrIOld08xNew08 ; "  DR%i: old %08X, new	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 18h

loc_44C41D:				; CODE XREF: .text:0044C3E6j
					; .text:0044C3EBj ...
		add	dword ptr [ebp-20h], 4
		inc	ebx
		add	edi, 4
		cmp	ebx, 8
		jl	short loc_44C3E3
		mov	run.dregmodified, 1

loc_44C434:				; CODE XREF: .text:0044C2E3j
					; .text:0044C2F3j ...
		push	0		; s
		lea	ecx, [esi+10Ch]
		push	ecx		; error
		mov	eax, [ebp+8]
		push	eax		; pthr
		call	Getlasterror
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44C457
		xor	edx, edx
		mov	[esi+10Ch], edx
		jmp	short loc_44C45A
; ---------------------------------------------------------------------------

loc_44C457:				; CODE XREF: .text:0044C44Bj
		or	dword ptr [esi], 10h

loc_44C45A:				; CODE XREF: .text:0044C455j
		cmp	dword_5CBBC4, 0
		jz	short loc_44C49C
		cmp	dword_5CBBC8, 0
		jz	short loc_44C49C
		push	80h		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, 16Ch
		push	ecx		; src
		lea	eax, [esi+110h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+0E4h]
		mov	[esi+190h], ecx
		or	dword ptr [esi], 4

loc_44C49C:				; CODE XREF: .text:0044C461j
					; .text:0044C46Aj
		mov	eax, [ebp+8]
		mov	dword ptr [eax+4ECh], 1
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+6B4h], 0
		jnz	short loc_44C4DD
		mov	ecx, [ebp+8]
		mov	eax, [ebp+8]
		push	esi
		lea	esi, [ecx+328h]
		lea	edi, [eax+4F0h]
		mov	ecx, 71h
		rep movsd
		pop	esi
		mov	eax, [ebp+8]
		mov	dword ptr [eax+6B4h], 1

loc_44C4DD:				; CODE XREF: .text:0044C4B3j
		mov	eax, esi

loc_44C4DF:				; CODE XREF: .text:0044BF8Cj
					; .text:0044C010j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44C4E8:				; CODE XREF: .text:0044C86Dp
					; .text:00451E39p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_44C503
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+4ECh], 0
		jnz	short loc_44C50B

loc_44C503:				; CODE XREF: .text:0044C4F5j
		or	eax, 0FFFFFFFFh
		jmp	loc_44C7FC
; ---------------------------------------------------------------------------

loc_44C50B:				; CODE XREF: .text:0044C501j
		xor	edx, edx
		mov	[ebp-8], edx
		mov	esi, [ebp+8]
		add	esi, 328h
		test	byte ptr [esi],	1
		jnz	short loc_44C52B
		cmp	run.updatedebugreg, 0
		jz	loc_44C7D3

loc_44C52B:				; CODE XREF: .text:0044C51Cj
		mov	ebx, [ebp+8]
		mov	eax, [esi+8]
		add	ebx, 5Ch
		mov	[ebx+0B8h], eax
		mov	edx, [esi+0Ch]
		mov	[ebx+0B0h], edx
		mov	ecx, [esi+10h]
		mov	[ebx+0ACh], ecx
		mov	eax, [esi+14h]
		mov	[ebx+0A8h], eax
		mov	edx, [esi+18h]
		mov	[ebx+0A4h], edx
		mov	ecx, [esi+1Ch]
		mov	[ebx+0C4h], ecx
		mov	eax, [esi+20h]
		mov	[ebx+0B4h], eax
		mov	edx, [esi+24h]
		mov	[ebx+0A0h], edx
		lea	edx, [esi+84h]
		mov	ecx, [esi+28h]
		mov	[ebx+9Ch], ecx
		lea	ecx, [esi+0D4h]
		mov	eax, [esi+2Ch]
		mov	[ebx+0C0h], eax
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], ecx
		xor	eax, eax

loc_44C59F:				; CODE XREF: .text:0044C606j
		lea	edx, [eax+8]
		sub	edx, [esi+80h]
		and	edx, 80000007h
		jns	short loc_44C5B5
		dec	edx
		or	edx, 0FFFFFFF8h
		inc	edx

loc_44C5B5:				; CODE XREF: .text:0044C5AEj
		mov	[ebp-4], edx
		mov	ecx, eax
		mov	edi, [ebp-0Ch]
		add	ecx, ecx
		mov	edx, 3
		shl	edx, cl
		movzx	edi, byte ptr [edi]
		mov	ecx, eax
		and	edi, 3
		add	ecx, ecx
		inc	eax
		shl	edi, cl
		not	edx
		and	edx, [ebx+24h]
		or	edx, edi
		mov	[ebx+24h], edx
		mov	edx, [ebp-4]
		mov	ecx, [ebp-10h]
		lea	edx, [edx+edx*4]
		mov	edi, [ecx]
		mov	[ebx+edx*2+38h], edi
		mov	edi, [ecx+4]
		mov	[ebx+edx*2+3Ch], edi
		mov	di, [ecx+8]
		mov	[ebx+edx*2+40h], di
		add	dword ptr [ebp-10h], 0Ah
		inc	dword ptr [ebp-0Ch]
		cmp	eax, 8
		jl	short loc_44C59F
		mov	eax, [esi+0DCh]
		and	eax, 0FFFFh
		mov	[ebx+20h], eax
		mov	edx, [esi+0E0h]
		and	edx, 0FFFFh
		mov	[ebx+1Ch], edx
		mov	ecx, [esi+30h]
		mov	[ebx+94h], ecx
		mov	eax, [esi+34h]
		mov	[ebx+0BCh], eax
		mov	edx, [esi+38h]
		mov	[ebx+0C8h], edx
		mov	ecx, [esi+3Ch]
		mov	[ebx+98h], ecx
		mov	eax, [esi+40h]
		mov	[ebx+90h], eax
		mov	edx, [esi+44h]
		mov	[ebx+8Ch], edx
		test	byte ptr [esi],	80h
		jz	short loc_44C696
		mov	ecx, [esi+0ECh]
		mov	[ebx+4], ecx
		mov	eax, [esi+0F0h]
		mov	[ebx+8], eax
		mov	edx, [esi+0F4h]
		mov	[ebx+0Ch], edx
		mov	ecx, [esi+0F8h]
		mov	[ebx+10h], ecx
		mov	eax, [esi+104h]
		mov	[ebx+14h], eax
		mov	edx, [esi+108h]
		mov	[ebx+18h], edx

loc_44C696:				; CODE XREF: .text:0044C65Ej
		cmp	run.updatedebugreg, 0
		jle	loc_44C72F
		mov	ecx, [ebp+8]
		mov	eax, [ecx+6F8h]
		push	eax
		lea	edx, [ebp-30h]
		push	edx
		call	loc_44BE60
		add	esp, 8
		test	al, 1
		jz	short loc_44C6C3
		mov	ecx, [ebp-30h]
		mov	[ebx+4], ecx

loc_44C6C3:				; CODE XREF: .text:0044C6BBj
		test	al, 2
		jz	short loc_44C6CD
		mov	edx, [ebp-2Ch]
		mov	[ebx+8], edx

loc_44C6CD:				; CODE XREF: .text:0044C6C5j
		test	al, 4
		jz	short loc_44C6D7
		mov	ecx, [ebp-28h]
		mov	[ebx+0Ch], ecx

loc_44C6D7:				; CODE XREF: .text:0044C6CFj
		test	al, 8
		jz	short loc_44C6E1
		mov	eax, [ebp-24h]
		mov	[ebx+10h], eax

loc_44C6E1:				; CODE XREF: .text:0044C6D9j
		mov	eax, [ebp+8]
		mov	edx, [ebx+4]
		mov	[eax+6D8h], edx
		mov	ecx, [ebp+8]
		mov	eax, [ebx+8]
		mov	[ecx+6DCh], eax
		mov	edx, [ebp+8]
		mov	ecx, [ebx+0Ch]
		mov	[edx+6E0h], ecx
		mov	eax, [ebp+8]
		mov	edx, [ebx+10h]
		mov	[eax+6E4h], edx
		mov	ecx, [ebp-14h]
		mov	[ebx+18h], ecx
		mov	eax, [ebp+8]
		mov	[eax+6F4h], ecx
		mov	edx, [ebp+8]
		mov	dword ptr [edx+6D4h], 1
		jmp	short loc_44C74A
; ---------------------------------------------------------------------------

loc_44C72F:				; CODE XREF: .text:0044C69Dj
		cmp	run.updatedebugreg, 0
		jge	short loc_44C74A
		mov	dword ptr [ebx+18h], 2100h
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	[eax+6D4h], edx

loc_44C74A:				; CODE XREF: .text:0044C72Dj
					; .text:0044C736j
		cmp	dword_5CBBC4, 0
		jz	short loc_44C784
		mov	ecx, [esi]
		and	ecx, 0Ch
		cmp	ecx, 0Ch
		jnz	short loc_44C784
		push	80h		; n
		lea	eax, [esi+110h]
		push	eax		; src
		lea	edx, [ebx+16Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [esi+190h]
		mov	[ebx+0E4h], ecx

loc_44C784:				; CODE XREF: .text:0044C751j
					; .text:0044C75Bj
		cmp	netdbg,	0
		jz	short loc_44C7BB
		cmp	dword_5D40B8, 0
		jz	short loc_44C7BB
		push	ebx
		push	2CCh
		mov	eax, [ebp+8]
		mov	ecx, dword_5D40B8
		mov	edx, [eax]
		push	edx
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+50h]
		test	eax, eax
		jz	short loc_44C7D3
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		jmp	short loc_44C7D3
; ---------------------------------------------------------------------------

loc_44C7BB:				; CODE XREF: .text:0044C78Bj
					; .text:0044C794j
		push	ebx		; lpContext
		mov	edx, [ebp+8]
		mov	ecx, [edx+50h]
		push	ecx		; hThread
		call	SetThreadContext
		test	eax, eax
		jnz	short loc_44C7D3
		mov	dword ptr [ebp-8], 0FFFFFFFFh

loc_44C7D3:				; CODE XREF: .text:0044C525j
					; .text:0044C7B0j ...
		mov	eax, [esi]
		and	eax, 30h
		cmp	eax, 30h
		jnz	short loc_44C7F3
		mov	edx, [esi+10Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_44BE0C
		add	esp, 8
		or	[ebp-8], eax

loc_44C7F3:				; CODE XREF: .text:0044C7DBj
		and	dword ptr [esi], 0FFFFFF54h
		mov	eax, [ebp-8]

loc_44C7FC:				; CODE XREF: .text:0044C506j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; t_reg	*__cdecl GetThreadReg(int threadid)
GetThreadReg:				; CODE XREF: .text:0044F6B9p
					; .text:00451966p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	eax, eax
		mov	run.dregmodified, eax
		xor	edi, edi
		xor	ebx, ebx
		jmp	short loc_44C83C
; ---------------------------------------------------------------------------

loc_44C817:				; CODE XREF: .text:0044C842j
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44C83B
		push	esi		; a1
		call	loc_44BF78
		pop	ecx
		mov	edx, [esi]
		cmp	edx, [ebp+8]
		jnz	short loc_44C83B
		mov	edi, eax

loc_44C83B:				; CODE XREF: .text:0044C829j
					; .text:0044C837j
		inc	ebx

loc_44C83C:				; CODE XREF: .text:0044C815j
		cmp	ebx, thread.sorted.n
		jl	short loc_44C817
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44C84C:				; CODE XREF: .text:0044EB9Ep
					; .text:0044F6C1p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		xor	ebx, ebx
		jmp	short loc_44C884
; ---------------------------------------------------------------------------

loc_44C858:				; CODE XREF: .text:0044C88Aj
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44C883
		push	esi
		call	loc_44C4E8
		pop	ecx
		or	edi, eax
		cmp	dword ptr [ebp+8], 0
		jz	short loc_44C883
		xor	eax, eax
		mov	[esi+4ECh], eax

loc_44C883:				; CODE XREF: .text:0044C86Aj
					; .text:0044C879j
		inc	ebx

loc_44C884:				; CODE XREF: .text:0044C856j
		cmp	ebx, thread.sorted.n
		jl	short loc_44C858
		xor	edx, edx
		mov	eax, edi
		mov	run.updatedebugreg, edx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44C89C:				; CODE XREF: .text:0044F9F4p
					; .text:0044FA93p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_44C8A5:				; CODE XREF: .text:0044C8ADj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_44C8A5
		mov	eax, [ebp-4]
		add	esp, 0FFFFFDCCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_44C8C9
		or	eax, 0FFFFFFFFh
		jmp	loc_44CA45
; ---------------------------------------------------------------------------

loc_44C8C9:				; CODE XREF: .text:0044C8BFj
		or	edi, 0FFFFFFFFh
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_44C99A
		cmp	_imp__EnumProcessModules, 0
		jz	loc_44C99A
		cmp	_imp__GetModuleInformation, 0
		jz	loc_44C99A
		cmp	_imp__GetModuleFileNameExW, 0
		jz	loc_44C99A
		lea	eax, [ebp-8]
		lea	edx, [ebp-2238h]
		push	eax		; _DWORD
		push	2000h		; _DWORD
		push	edx		; _DWORD
		mov	ecx, process
		push	ecx		; _DWORD
		call	_imp__EnumProcessModules
		test	eax, eax
		jz	short loc_44C99A
		mov	eax, [ebp-8]
		shr	eax, 2
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 800h
		jle	short loc_44C93A
		mov	dword ptr [ebp-4], 800h

loc_44C93A:				; CODE XREF: .text:0044C931j
		xor	ebx, ebx
		lea	esi, [ebp-2238h]
		cmp	ebx, [ebp-4]
		jge	loc_44CA43

loc_44C94B:				; CODE XREF: .text:0044C993j
		lea	eax, [ebp-14h]
		push	0Ch		; _DWORD
		push	eax		; _DWORD
		mov	ecx, process
		mov	edx, [esi]
		push	edx		; _DWORD
		push	ecx		; _DWORD
		call	_imp__GetModuleInformation
		test	eax, eax
		jz	short loc_44C98C
		mov	eax, [ebp-14h]
		cmp	eax, [ebp+8]
		jnz	short loc_44C98C
		push	104h		; _DWORD
		mov	eax, process
		mov	edx, [ebp+0Ch]
		push	edx		; _DWORD
		mov	ecx, [esi]
		push	ecx		; _DWORD
		push	eax		; _DWORD
		call	_imp__GetModuleFileNameExW
		xor	edi, edi
		jmp	loc_44CA43
; ---------------------------------------------------------------------------

loc_44C98C:				; CODE XREF: .text:0044C963j
					; .text:0044C96Bj
		inc	ebx
		add	esi, 4
		cmp	ebx, [ebp-4]
		jl	short loc_44C94B
		jmp	loc_44CA43
; ---------------------------------------------------------------------------

loc_44C99A:				; CODE XREF: .text:0044C8D3j
					; .text:0044C8E0j ...
		cmp	VersionInformation.dwPlatformId, 1
		jnz	loc_44CA43
		cmp	_imp__CreateToolhelp32Snapshot,	0
		jz	loc_44CA43
		cmp	_imp__Module32First, 0
		jz	loc_44CA43
		cmp	_imp__Module32Next, 0
		jz	short loc_44CA43
		mov	eax, processid
		push	eax		; _DWORD
		push	8		; _DWORD
		call	_imp__CreateToolhelp32Snapshot
		mov	esi, eax
		cmp	esi, 0FFFFFFFFh
		jz	short loc_44CA43
		mov	dword ptr [ebp-238h], 224h
		lea	eax, [ebp-238h]
		push	eax		; _DWORD
		push	esi		; _DWORD
		call	_imp__Module32First
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44CA3D

loc_44C9FD:				; CODE XREF: .text:0044CA3Bj
		mov	eax, [ebp-224h]
		cmp	eax, [ebp+8]
		jnz	short loc_44CA29
		push	104h		; nw
		lea	ecx, [ebp-118h]
		mov	edx, [ebp+0Ch]
		push	edx		; w
		push	104h		; ns
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		xor	edi, edi
		jmp	short loc_44CA3D
; ---------------------------------------------------------------------------

loc_44CA29:				; CODE XREF: .text:0044CA06j
		lea	eax, [ebp-238h]
		push	eax		; _DWORD
		push	esi		; _DWORD
		call	_imp__Module32Next
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_44C9FD

loc_44CA3D:				; CODE XREF: .text:0044C9FBj
					; .text:0044CA27j
		push	esi		; hObject
		call	CloseHandle

loc_44CA43:				; CODE XREF: .text:0044C945j
					; .text:0044C987j ...
		mov	eax, edi

loc_44CA45:				; CODE XREF: .text:0044C8C4j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_44CA4C(int arglist, uchar *src, t_disasm *da,	t_reg *reg)
loc_44CA4C:				; CODE XREF: .text:0044D081p
					; .text:0044D0FFp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	edi, edi
		jz	short loc_44CA63
		test	ebx, ebx
		jnz	short loc_44CA67

loc_44CA63:				; CODE XREF: .text:0044CA5Dj
		xor	eax, eax
		jmp	short loc_44CAA4
; ---------------------------------------------------------------------------

loc_44CA67:				; CODE XREF: .text:0044CA61j
		mov	eax, [ebx+10h]
		test	eax, eax
		jz	short loc_44CA73
		cmp	esi, [ebx+0Ch]
		jz	short loc_44CAA4

loc_44CA73:				; CODE XREF: .text:0044CA6Cj
		push	5		; mode
		push	10h		; size
		push	esi		; _addr
		push	edi		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_44CA8E
		xor	edx, edx
		xor	eax, eax
		mov	[ebx+10h], edx
		jmp	short loc_44CAA4
; ---------------------------------------------------------------------------

loc_44CA8E:				; CODE XREF: .text:0044CA83j
		push	0		; predict
		mov	edx, [ebp+14h]
		push	edx		; reg
		push	10h		; mode
		push	ebx		; da
		push	0		; dec
		push	esi		; ip
		push	eax		; cmdsize
		push	edi		; cmd
		call	Disasm
		add	esp, 20h

loc_44CAA4:				; CODE XREF: .text:0044CA65j
					; .text:0044CA71j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44CAAC:				; CODE XREF: .text:00450CC6p
					; .text:00450DF9p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBE4h
		push	ebx
		mov	eax, [ebp+0Ch]
		mov	edx, eax
		and	edx, 3000000h
		cmp	edx, 1000000h
		jz	short loc_44CAFF
		mov	ecx, eax
		and	ecx, 0C000000h
		cmp	ecx, 4000000h
		jz	short loc_44CAFF
		mov	edx, eax
		and	edx, 30000000h
		cmp	edx, 10000000h
		jz	short loc_44CAFF
		and	eax, 0C0000000h
		cmp	eax, 40000000h
		jz	short loc_44CAFF
		mov	eax, 1
		jmp	loc_44CC1C
; ---------------------------------------------------------------------------

loc_44CAFF:				; CODE XREF: .text:0044CAC7j
					; .text:0044CAD7j ...
		mov	ecx, [ebp+18h]
		push	ecx		; threadid
		mov	eax, [ebp+8]
		push	eax		; type
		mov	edx, [ebp+10h]
		push	edx		; _addr
		lea	ecx, [ebp-41Ch]
		push	ecx		; result
		call	Fastexpression
		add	esp, 10h
		test	eax, eax
		jz	short loc_44CB28
		mov	eax, 1
		jmp	loc_44CC1C
; ---------------------------------------------------------------------------

loc_44CB28:				; CODE XREF: .text:0044CB1Cj
		mov	edx, [ebp-414h]
		and	edx, 0Fh
		cmp	edx, 0Ah	; switch 11 cases
		ja	loc_44CC1A	; jumptable 0044CB40 default case
		mov	dl, ds:byte_44CB47[edx]
		jmp	ds:off_44CB52[edx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_44CB47	db	4,     0,     0,     2 ; DATA XREF: .text:0044CB3Ar
		db	0,     0,     3,     0 ; indirect table	for switch statement
		db	2,     2,     1
off_44CB52	dd offset loc_44CC1A	; DATA XREF: .text:0044CB40r
		dd offset loc_44CBA0	; jump table for switch	statement
		dd offset loc_44CB66
		dd offset loc_44CB7D
		dd offset loc_44CBC0
; ---------------------------------------------------------------------------

loc_44CB66:				; CODE XREF: .text:0044CB40j
					; DATA XREF: .text:off_44CB52o
		xor	ebx, ebx	; jumptable 0044CB40 cases 3,8,9
		cmp	dword ptr [ebp-40Ch], 0
		jz	loc_44CC1A	; jumptable 0044CB40 default case
		add	ebx, 2
		jmp	loc_44CC1A	; jumptable 0044CB40 default case
; ---------------------------------------------------------------------------

loc_44CB7D:				; CODE XREF: .text:0044CB40j
					; DATA XREF: .text:off_44CB52o
		xor	eax, eax	; jumptable 0044CB40 case 6
		lea	edx, [ebp-40Ch]

loc_44CB85:				; CODE XREF: .text:0044CB8Fj
		cmp	byte ptr [edx],	0
		jnz	short loc_44CB91
		inc	eax
		inc	edx
		cmp	eax, 0Ah
		jl	short loc_44CB85

loc_44CB91:				; CODE XREF: .text:0044CB88j
		mov	ebx, 2
		cmp	eax, 0Ah
		jl	short loc_44CC1A ; jumptable 0044CB40 default case
		add	ebx, 0FFFFFFFEh
		jmp	short loc_44CC1A ; jumptable 0044CB40 default case
; ---------------------------------------------------------------------------

loc_44CBA0:				; CODE XREF: .text:0044CB40j
					; DATA XREF: .text:off_44CB52o
		push	offset aImmediateStrin ; jumptable 0044CB40 case 10
		call	_T
		pop	ecx
		push	eax		; src
		push	200h		; n
		lea	eax, [ebp-402h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44CBC0:				; CODE XREF: .text:0044CB40j
					; DATA XREF: .text:off_44CB52o
		lea	edx, [ebp-200h]	; jumptable 0044CB40 case 0
		push	edx		; arglist
		push	offset aInvalidExpress ; "Invalid expression in	conditional break"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	ecx, [ebp+14h]
		push	ecx		; _addr
		call	Addtolist
		add	esp, 10h
		lea	eax, [ebp-402h]
		push	eax		; arglist
		push	offset aS_9	; "  %s"
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_44CC17
		lea	edx, [ebp-402h]
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44CC17:				; CODE XREF: .text:0044CBFDj
		or	ebx, 0FFFFFFFFh

loc_44CC1A:				; CODE XREF: .text:0044CB34j
					; .text:0044CB40j ...
		mov	eax, ebx	; jumptable 0044CB40 default case

loc_44CC1C:				; CODE XREF: .text:0044CAFAj
					; .text:0044CB23j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_44CC24@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_44CC24:				; CODE XREF: .text:00450D06p
					; .text:00450E35p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 8

loc_44CC2D:				; CODE XREF: .text:0044CC35j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_44CC2D
		mov	eax, [ebp-4]
		add	esp, 0FFFFFE5Ch
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		push	100h		; nname
		lea	eax, [ebp-1208h]
		push	eax		; _name
		lea	edx, [ebx+1]
		push	edx		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	loc_44CFCC
		push	100h		; nname
		lea	ecx, [ebp-160Ah]
		push	ecx		; _name
		lea	eax, [ebx+2]
		push	eax		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		cmp	ebx, 51h
		jnz	short loc_44CC97
		push	offset aInt3	; "INT3:"
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	short loc_44CCCC
; ---------------------------------------------------------------------------

loc_44CC97:				; CODE XREF: .text:0044CC86j
		cmp	ebx, 54h
		jnz	short loc_44CCAB
		push	offset aMem	; "MEM:	"
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	short loc_44CCCC
; ---------------------------------------------------------------------------

loc_44CCAB:				; CODE XREF: .text:0044CC9Aj
		cmp	ebx, 57h
		jnz	short loc_44CCBF
		push	offset aHard	; "HARD:"
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	short loc_44CCCC
; ---------------------------------------------------------------------------

loc_44CCBF:				; CODE XREF: .text:0044CCAEj
		push	offset aCond	; "COND:"
		call	_T
		pop	ecx
		mov	edi, eax

loc_44CCCC:				; CODE XREF: .text:0044CC95j
					; .text:0044CCA9j ...
		push	9		; mode
		lea	eax, [ebp-180Ch]
		push	eax		; err
		push	0		; explen
		push	1000h		; nexpr
		lea	edx, [ebp-1008h]
		push	edx		; cexpr
		lea	ecx, [ebp-1208h]
		push	ecx		; expression
		call	Cexpression
		add	esp, 18h
		cmp	word ptr [ebp-180Ch], 0
		jz	short loc_44CD1C
		lea	eax, [ebp-180Ch]
		push	eax
		push	edi		; arglist
		push	offset aSS_0	; "%s %s"
		push	1		; color
		mov	edx, [ebp+10h]
		push	edx		; _addr
		call	Addtolist
		add	esp, 14h
		jmp	loc_44CFCC
; ---------------------------------------------------------------------------

loc_44CD1C:				; CODE XREF: .text:0044CCFAj
		lea	ecx, [ebp-1008h]
		push	ecx		; cexpr
		call	Exprcount
		pop	ecx
		mov	[ebp-8], eax
		xor	esi, esi
		cmp	esi, [ebp-8]
		jge	loc_44CFCC

loc_44CD37:				; CODE XREF: .text:0044CFC6j
		test	esi, esi
		jle	short loc_44CD45
		xor	eax, eax
		mov	edi, offset asc_532FB0 ; "     "
		mov	[ebp+10h], eax

loc_44CD45:				; CODE XREF: .text:0044CD39j
		cmp	word ptr [ebp-160Ah], 0
		mov	eax, 1
		jz	short loc_44CD57
		add	eax, 2

loc_44CD57:				; CODE XREF: .text:0044CD52j
		push	eax		; mode
		push	0		; b
		push	0		; a
		lea	ecx, [ebp-1008h]
		mov	edx, [ebp+14h]
		lea	eax, [ebp-1408h]
		push	edx		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		push	esi		; index
		push	ecx		; cexpr
		push	eax		; expl
		lea	edx, [ebp-1A28h]
		push	edx		; result
		call	Eexpression
		add	esp, 2Ch
		lea	ecx, [ebp-1408h]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_44CDB9
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-1408h]
		add	edx, edx
		push	offset asc_532FBC ; " =	"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44CDB9:				; CODE XREF: .text:0044CD95j
		cmp	word ptr [ebp-160Ah], 0
		jz	short loc_44CDD1
		mov	eax, [ebp-1A20h]
		and	eax, 0Fh
		cmp	eax, 3
		jz	short loc_44CDF8

loc_44CDD1:				; CODE XREF: .text:0044CDC1j
		lea	edx, [ebp-1A0Eh]
		push	edx
		lea	ecx, [ebp-1408h]
		push	ecx
		push	edi		; arglist
		push	offset aSSS	; "%s %s%s"
		push	1		; color
		mov	eax, [ebp+10h]
		push	eax		; _addr
		call	Addtolist
		add	esp, 18h
		jmp	loc_44CFC2
; ---------------------------------------------------------------------------

loc_44CDF8:				; CODE XREF: .text:0044CDCFj
		cmp	word ptr [ebp-160Ah], 2Ah
		jnz	loc_44CF47
		test	ebx, ebx
		jnz	short loc_44CE2A
		push	offset aStructure ; "Structure "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-1408h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44CE2A:				; CODE XREF: .text:0044CE08j
		mov	ecx, [ebp-1A18h]
		push	ecx
		lea	eax, [ebp-1608h]
		push	eax
		lea	edx, [ebp-1408h]
		push	edx
		push	edi		; arglist
		push	offset aSSSAtAddress08 ; "%s %s%s at address %08X:"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	ecx, [ebp+10h]
		push	ecx		; _addr
		call	Addtolist
		add	esp, 1Ch
		cmp	dword ptr [ebp-1A18h], 0
		jnz	short loc_44CE80
		push	offset aNullPointer ; "	       NULL pointer"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_44CFC2
; ---------------------------------------------------------------------------

loc_44CE80:				; CODE XREF: .text:0044CE61j
		push	0		; size
		lea	eax, [ebp-1608h]
		push	eax		; _name
		call	Getstructureitemcount
		add	esp, 8
		test	eax, eax
		jnz	short loc_44CEB2
		push	offset aUnknownStructu ; "	  Unknown structure"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_44CFC2
; ---------------------------------------------------------------------------

loc_44CEB2:				; CODE XREF: .text:0044CE93j
		push	18h		; nstr
		lea	edx, [ebp-81A8h]
		push	edx		; str
		push	0		; item0
		mov	ecx, [ebp-1A18h]
		push	ecx		; _addr
		lea	eax, [ebp-1608h]
		push	eax		; _name
		call	Decodestructure
		add	esp, 14h
		mov	[ebp-4], eax
		test	eax, eax
		jnz	short loc_44CEF7
		push	offset aUnableToDecode ; "	  Unable to decode"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_44CFC2
; ---------------------------------------------------------------------------

loc_44CEF7:				; CODE XREF: .text:0044CED8j
		xor	ebx, ebx
		cmp	ebx, [ebp-4]
		jge	loc_44CFC2

loc_44CF02:				; CODE XREF: .text:0044CF43j
		mov	eax, ebx
		mov	ecx, ebx
		shl	eax, 4
		lea	edx, [ebp-7F58h]
		add	eax, ebx
		shl	ecx, 4
		add	ecx, ebx
		lea	eax, [ebx+eax*4]
		shl	eax, 4
		add	eax, edx
		lea	ecx, [ebx+ecx*4]
		push	eax
		lea	eax, [ebp-8158h]
		shl	ecx, 4
		add	ecx, eax
		push	ecx		; arglist
		push	offset aSS_1	; "	   %s =	%s"
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		inc	ebx
		cmp	ebx, [ebp-4]
		jl	short loc_44CF02
		jmp	short loc_44CFC2
; ---------------------------------------------------------------------------

loc_44CF47:				; CODE XREF: .text:0044CE00j
		mov	word ptr [ebp-160Ch], 40h
		push	0		; nontriv
		lea	edx, [ebp-180Ch]
		push	100h		; ntext
		push	edx		; text
		lea	ecx, [ebp-1A18h]
		push	4		; ndata
		push	ecx		; data
		lea	eax, [ebp-160Ch]
		push	eax		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_44CFA0
		mov	eax, [ebp-1A18h]
		push	eax
		push	offset a08xConversionA ; "%08X (conversion according to	type is	n"...
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-180Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_44CFA0:				; CODE XREF: .text:0044CF7Cj
		lea	ecx, [ebp-180Ch]
		push	ecx
		lea	eax, [ebp-1408h]
		push	eax
		push	edi		; arglist
		push	offset aSSS	; "%s %s%s"
		push	1		; color
		mov	edx, [ebp+10h]
		push	edx		; _addr
		call	Addtolist
		add	esp, 18h

loc_44CFC2:				; CODE XREF: .text:0044CDF3j
					; .text:0044CE7Bj ...
		inc	esi
		cmp	esi, [ebp-8]
		jl	loc_44CD37

loc_44CFCC:				; CODE XREF: .text:0044CC64j
					; .text:0044CD17j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_44CFD4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, void *src,	int, int)
loc_44CFD4:				; CODE XREF: .text:00450E85p
					; .text:00452A87p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 6

loc_44CFDD:				; CODE XREF: .text:0044CFE5j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_44CFDD
		mov	eax, [ebp-4]
		add	esp, 0FFFFF478h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		test	esi, esi
		jz	loc_44D416
		test	ebx, ebx
		jz	loc_44D416
		cmp	dword ptr [ebp+18h], 0
		jz	loc_44D416
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_44D035
		lea	eax, [ebp-26Ch]
		push	eax		; type
		mov	edx, [ebp+0Ch]
		push	edx		; fnindex
		call	Getpredefinedtypebyindex
		add	esp, 8
		test	eax, eax
		jnz	short loc_44D035
		xor	ecx, ecx
		mov	[ebp+0Ch], ecx

loc_44D035:				; CODE XREF: .text:0044D017j
					; .text:0044D02Ej
		mov	eax, [ebp+8]
		mov	[ebp-4], eax
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_44D0D0
		push	0		; psize
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_44D077
		xor	edx, edx
		mov	dl, [eax]
		mov	ecx, edx
		and	ecx, 1Fh
		cmp	ecx, 1Eh
		jz	short loc_44D06D
		and	edx, 60h
		cmp	edx, 20h
		jnz	short loc_44D077

loc_44D06D:				; CODE XREF: .text:0044D063j
		mov	esi, 1
		jmp	loc_44D159
; ---------------------------------------------------------------------------

loc_44D077:				; CODE XREF: .text:0044D055j
					; .text:0044D06Bj
		mov	eax, [ebp+18h]
		push	eax		; t_reg	*
		push	ebx		; int
		push	esi		; src
		mov	edx, [ebp+8]
		push	edx		; int
		call	loc_44CA4C
		add	esp, 10h
		test	eax, eax
		jz	short loc_44D093
		cmp	dword ptr [ebx+2Ch], 0
		jz	short loc_44D09B

loc_44D093:				; CODE XREF: .text:0044D08Bj
		or	esi, 0FFFFFFFFh
		jmp	loc_44D159
; ---------------------------------------------------------------------------

loc_44D09B:				; CODE XREF: .text:0044D091j
		mov	eax, [ebx+14h]
		and	eax, 1Fh
		cmp	eax, 0Ch
		jnz	short loc_44D0C6
		mov	eax, [ebx+40h]
		test	eax, eax
		jnz	short loc_44D0B5
		or	esi, 0FFFFFFFFh
		jmp	loc_44D159
; ---------------------------------------------------------------------------

loc_44D0B5:				; CODE XREF: .text:0044D0ABj
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-4], eax
		xor	esi, esi
		jmp	loc_44D159
; ---------------------------------------------------------------------------

loc_44D0C6:				; CODE XREF: .text:0044D0A4j
		mov	esi, 1
		jmp	loc_44D159
; ---------------------------------------------------------------------------

loc_44D0D0:				; CODE XREF: .text:0044D03Fj
		push	0		; subaddr
		mov	eax, [ebp-4]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_44D0F5
		mov	edx, [eax]
		cmp	edx, [ebp-4]
		jnz	short loc_44D0F5
		mov	esi, 1
		jmp	short loc_44D159
; ---------------------------------------------------------------------------

loc_44D0F5:				; CODE XREF: .text:0044D0E5j
					; .text:0044D0ECj
		mov	eax, [ebp+18h]
		push	eax		; t_reg	*
		push	ebx		; int
		push	esi		; src
		mov	edx, [ebp+8]
		push	edx		; int
		call	loc_44CA4C
		add	esp, 10h
		test	eax, eax
		jz	short loc_44D122
		cmp	dword ptr [ebx+2Ch], 0
		jnz	short loc_44D122
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_44D122
		mov	ecx, [ebx+14h]
		and	ecx, 1Fh
		cmp	ecx, 0Ch
		jz	short loc_44D127

loc_44D122:				; CODE XREF: .text:0044D109j
					; .text:0044D10Fj ...
		or	esi, 0FFFFFFFFh
		jmp	short loc_44D159
; ---------------------------------------------------------------------------

loc_44D127:				; CODE XREF: .text:0044D120j
		mov	eax, [ebx+40h]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-4], eax
		push	0		; subaddr
		mov	edx, [ebp-4]
		push	edx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_44D152
		mov	ecx, [eax]
		cmp	ecx, [ebp-4]
		jz	short loc_44D157

loc_44D152:				; CODE XREF: .text:0044D149j
		or	esi, 0FFFFFFFFh
		jmp	short loc_44D159
; ---------------------------------------------------------------------------

loc_44D157:				; CODE XREF: .text:0044D150j
		xor	esi, esi

loc_44D159:				; CODE XREF: .text:0044D072j
					; .text:0044D096j ...
		test	esi, esi
		jl	loc_44D215
		push	5		; mode
		push	64h		; size
		mov	eax, [ebp+18h]
		mov	edx, [eax+1Ch]
		push	edx		; _addr
		lea	ecx, [ebp-6Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		shr	edi, 2
		cmp	esi, edi
		jl	short loc_44D189
		or	esi, 0FFFFFFFFh
		jmp	loc_44D215
; ---------------------------------------------------------------------------

loc_44D189:				; CODE XREF: .text:0044D17Fj
		xor	ebx, ebx
		lea	eax, [ebp-6B8Ch]

loc_44D191:				; CODE XREF: .text:0044D1C2j
		mov	edx, edi
		sub	edx, esi
		cmp	ebx, edx
		jge	short loc_44D1AB
		mov	dword ptr [eax], 5
		lea	ecx, [esi+ebx]
		mov	edx, [ebp+ecx*4-6Ch]
		mov	[eax+4], edx
		jmp	short loc_44D1B4
; ---------------------------------------------------------------------------

loc_44D1AB:				; CODE XREF: .text:0044D197j
		xor	ecx, ecx
		xor	edx, edx
		mov	[eax], ecx
		mov	[eax+4], edx

loc_44D1B4:				; CODE XREF: .text:0044D1A9j
		xor	ecx, ecx
		inc	ebx
		mov	[eax+8], ecx
		add	eax, 44Ch
		cmp	ebx, 18h
		jl	short loc_44D191
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_44D1F0
		push	1		; follow
		lea	eax, [ebp-26Ch]
		push	0		; nexp
		push	eax		; _name
		lea	eax, [ebp-6B8Ch]
		push	0		; rettype
		push	eax		; adec
		push	0		; pd
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	edi, eax
		jmp	short loc_44D20E
; ---------------------------------------------------------------------------

loc_44D1F0:				; CODE XREF: .text:0044D1C8j
		push	0		; nexp
		lea	eax, [ebp-6B8Ch]
		push	0		; rettype
		push	eax		; adec
		lea	edx, [ebp-26Ch]
		push	0		; pd
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax

loc_44D20E:				; CODE XREF: .text:0044D1EEj
		test	edi, edi
		jge	short loc_44D215
		or	esi, 0FFFFFFFFh

loc_44D215:				; CODE XREF: .text:0044D15Bj
					; .text:0044D184j ...
		test	esi, esi
		jge	short loc_44D238
		push	offset aUnableToProtoc ; "Unable to protocol function arguments"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_44D416
; ---------------------------------------------------------------------------

loc_44D238:				; CODE XREF: .text:0044D217j
		push	9		; maxlen
		push	offset a_intern__ ; "_INTERN_."
		lea	edx, [ebp-26Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44D273
		push	0		; comment
		lea	ecx, [ebp-26Ch]
		push	100h		; nsymb
		push	ecx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp-4]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_44D273:				; CODE XREF: .text:0044D250j
		lea	edx, [ebp-26Ch]
		push	edx
		push	offset aCallToS	; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-46Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		test	esi, esi
		jz	loc_44D32A
		mov	eax, [ebp-6Ch]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_44D32A
		push	1		; decode
		push	1		; n
		mov	edx, [ebp-6Ch]
		push	edx		; ip
		mov	ecx, [eax+4]
		push	ecx		; size
		mov	eax, [eax]
		push	eax		; base
		push	0		; copy
		call	Disassembleback
		add	esp, 18h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44D32A
		mov	edx, [ebp-8]
		cmp	edx, [ebp-6Ch]
		jz	short loc_44D32A
		push	offset aFrom_0	; " from "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, ebx
		mov	ecx, 100h
		sub	ecx, ebx
		lea	edx, [ebp-46Ch]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, 100h
		lea	eax, [ebp-46Ch]
		sub	ecx, ebx
		add	ebx, ebx
		push	0		; comment
		push	ecx		; nsymb
		add	ebx, eax
		push	ebx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, [ebp-8]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_44D32A:				; CODE XREF: .text:0044D299j
					; .text:0044D2ABj ...
		lea	ecx, [ebp-46Ch]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		push	1		; color
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Addtolist
		add	esp, 10h
		push	100h		; nname
		lea	edx, [ebp-46Ch]
		push	edx		; _name
		push	30h		; type
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_44D37A
		lea	eax, [ebp-46Ch]
		push	eax		; arglist
		push	offset aS_18	; "  ; %s"
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_44D37A:				; CODE XREF: .text:0044D360j
		xor	ebx, ebx
		lea	esi, [ebp-6B40h]
		cmp	edi, ebx
		jle	loc_44D416

loc_44D38A:				; CODE XREF: .text:0044D410j
		cmp	word ptr [esi],	3Dh
		jnz	short loc_44D3C0
		mov	eax, ebx
		shl	eax, 4
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		lea	edx, [ebp-6940h]
		add	eax, edx
		push	eax
		mov	ecx, [esi-48h]
		push	ecx		; arglist
		push	offset a08xS	; "  %08X  %s"
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		jmp	short loc_44D407
; ---------------------------------------------------------------------------

loc_44D3C0:				; CODE XREF: .text:0044D38Ej
		mov	eax, ebx
		mov	ecx, ebx
		shl	eax, 4
		lea	edx, [ebp-6940h]
		add	eax, ebx
		shl	ecx, 4
		add	ecx, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		lea	ecx, [ebx+ecx*8]
		shl	eax, 2
		add	eax, edx
		lea	ecx, [ebx+ecx*2]
		push	eax
		lea	eax, [ebp-6B40h]
		shl	ecx, 2
		add	ecx, eax
		push	ecx
		mov	edx, [esi-48h]
		push	edx		; arglist
		push	offset a08xSS	; "  %08X  %s =	%s"
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 18h

loc_44D407:				; CODE XREF: .text:0044D3BEj
		inc	ebx
		add	esi, 44Ch
		cmp	edi, ebx
		jg	loc_44D38A

loc_44D416:				; CODE XREF: .text:0044CFFBj
					; .text:0044D003j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_44D420@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	char)
loc_44D420:				; CODE XREF: .text:00450EC4p
					; .text:00452AC3p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFA00h
		push	ebx		; arglist
		mov	ebx, [ebp+8]
		push	100h		; nname
		lea	eax, [ebp-200h]
		push	eax		; _name
		push	36h		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	loc_44D520
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	loc_44D520
		push	1		; decode
		push	1		; n
		push	ebx		; ip
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [eax]
		push	ecx		; base
		push	0		; copy
		call	Disassembleback
		add	esp, 18h
		push	100h		; nname
		lea	edx, [ebp-400h]
		push	edx		; _name
		push	33h		; type
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_44D4AC
		lea	eax, [ebp-400h]
		push	eax		; arglist
		push	offset aReturnFromS ; "Return from %s"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	ebx		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_44D4C3
; ---------------------------------------------------------------------------

loc_44D4AC:				; CODE XREF: .text:0044D48Aj
		push	offset aReturnFromCa_0 ; "Return from call"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	ebx		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_44D4C3:				; CODE XREF: .text:0044D4AAj
		push	0		; nontriv
		lea	ecx, [ebp-600h]
		push	100h		; ntext
		push	ecx		; text
		lea	eax, [ebp+0Ch]
		push	4		; ndata
		push	eax		; data
		lea	edx, [ebp-200h]
		push	edx		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		test	eax, eax
		jnz	short loc_44D504
		mov	ecx, [ebp+0Ch]
		lea	eax, [ebp-600h]
		push	ecx
		push	(offset	aDrIOld08xNew08+2Ch) ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_44D504:				; CODE XREF: .text:0044D4EAj
		lea	edx, [ebp-600h]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx		; arglist
		push	offset a08xEaxS	; "  %08X  EAX = %s"
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_44D520:				; CODE XREF: .text:0044D446j
					; .text:0044D455j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44D528:				; CODE XREF: .text:loc_44FEBFp
					; .text:00450207p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		call	Suspendallthreads
		call	Listmemory
		xor	ebx, ebx
		jmp	short loc_44D577
; ---------------------------------------------------------------------------

loc_44D53E:				; CODE XREF: .text:0044D57Dj
		push	ebx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44D576
		test	byte ptr [esi+0Bh], 8
		jnz	short loc_44D576
		test	byte ptr [esi+0Bh], 0C0h
		jz	short loc_44D576
		push	0		; guard
		mov	eax, [esi+4]
		push	eax		; size
		mov	edx, [esi]
		push	edx		; base
		call	Guardmemory
		add	esp, 0Ch
		and	dword ptr [esi+8], 3FFFFFFFh

loc_44D576:				; CODE XREF: .text:0044D550j
					; .text:0044D556j ...
		inc	ebx

loc_44D577:				; CODE XREF: .text:0044D53Cj
		cmp	ebx, memory.sorted.n
		jl	short loc_44D53E
		xor	ebx, ebx
		jmp	short loc_44D5A8
; ---------------------------------------------------------------------------

loc_44D583:				; CODE XREF: .text:0044D5AEj
		push	ebx		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_44D5A7
		push	0FFFFFFFFh
		push	eax
		call	loc_497418
		add	esp, 8
		test	eax, eax
		jz	short loc_44D5A7
		or	edi, 0FFFFFFFFh

loc_44D5A7:				; CODE XREF: .text:0044D593j
					; .text:0044D5A2j
		inc	ebx

loc_44D5A8:				; CODE XREF: .text:0044D581j
		cmp	ebx, stru_5D6528.sorted.n
		jl	short loc_44D583
		call	Flushmemorycache
		push	0
		call	loc_4C6E78
		pop	ecx
		push	0
		call	loc_44F668
		pop	ecx
		test	eax, eax
		jz	short loc_44D5CC
		or	edi, 0FFFFFFFFh

loc_44D5CC:				; CODE XREF: .text:0044D5C7j
		call	loc_4585F4
		call	Resumeallthreads
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_44D5E0:				; CODE XREF: .text:0044D7A1p
					; .text:0044D7ADp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	0		; psize
		push	ebx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_44D62F
		mov	dl, [eax]
		test	dl, 80h
		jz	short loc_44D602
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44D602:				; CODE XREF: .text:0044D5FBj
		cmp	dword_5CBBA4, 0
		jz	short loc_44D62F
		xor	ecx, ecx
		mov	cl, dl
		and	ecx, 1Fh
		mov	eax, ecx
		test	eax, eax
		jz	short loc_44D62F
		cmp	eax, 1Ch
		jz	short loc_44D62F
		cmp	eax, 1Dh
		jz	short loc_44D62F
		cmp	eax, 1Eh
		jz	short loc_44D62F
		mov	eax, 2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44D62F:				; CODE XREF: .text:0044D5F4j
					; .text:0044D609j ...
		cmp	dword_5CBBA8, 0
		jz	short loc_44D670
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_44D65B
		call	Listmemory
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_44D65B
		mov	eax, 4
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44D65B:				; CODE XREF: .text:0044D641j
					; .text:0044D651j
		test	eax, eax
		jz	short loc_44D670
		test	dword ptr [eax+8], 2005000h
		jnz	short loc_44D670
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44D670:				; CODE XREF: .text:0044D636j
					; .text:0044D65Dj ...
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	0		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	8000h		; type
		push	ebx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		test	eax, eax
		jz	short loc_44D698
		mov	eax, 4
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44D698:				; CODE XREF: .text:0044D68Ej
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_44D6A0(int, void *src, int, int)
loc_44D6A0:				; CODE XREF: .text:0044EB3Dp
					; .text:0044F0E9p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF718h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		push	0		; psize
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44D708
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmemory
		pop	ecx		; int
		mov	edi, eax
		test	edi, edi
		jz	short loc_44D6F7
		cmp	dword ptr [edi+64h], 0
		jnz	short loc_44D6F7
		push	3		; flags
		mov	eax, [edi+4]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[edi+64h], eax

loc_44D6F7:				; CODE XREF: .text:0044D6DEj
					; .text:0044D6E4j
		push	0		; psize
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebp-8], eax

loc_44D708:				; CODE XREF: .text:0044D6CEj
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44D744
		cmp	dword_5CBBAC, 0
		jz	short loc_44D73E
		mov	ecx, [ebp-8]
		test	byte ptr [ecx],	80h
		jnz	short loc_44D73E
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_44D73E
		or	dword ptr [eax+8], 10000000h
		mov	dword ptr [eax+9A8h], 1

loc_44D73E:				; CODE XREF: .text:0044D715j
					; .text:0044D71Dj ...
		mov	edx, [ebp-8]
		or	byte ptr [edx],	80h

loc_44D744:				; CODE XREF: .text:0044D70Cj
		test	esi, esi
		jz	short loc_44D74C
		test	ebx, ebx
		jnz	short loc_44D76B

loc_44D74C:				; CODE XREF: .text:0044D746j
		push	18D0h		; n
		push	0		; c
		lea	ecx, [ebp-18E8h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		lea	esi, [ebp-18h]
		lea	ebx, [ebp-18E8h]

loc_44D76B:				; CODE XREF: .text:0044D74Aj
		mov	eax, [ebp+14h]
		push	eax		; t_reg	*
		push	ebx		; int
		push	esi		; src
		mov	edx, [ebp+8]
		push	edx		; int
		call	loc_44CA4C
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_44D78D
		mov	eax, 1
		jmp	loc_44DA6E
; ---------------------------------------------------------------------------

loc_44D78D:				; CODE XREF: .text:0044D781j
		mov	eax, [ebx+14h]
		and	eax, 1Fh
		cmp	eax, 8
		jz	short loc_44D79D
		cmp	eax, 9
		jnz	short loc_44D7BA

loc_44D79D:				; CODE XREF: .text:0044D796j
		mov	edx, [ebx+40h]
		push	edx
		call	loc_44D5E0
		pop	ecx
		mov	esi, eax
		add	edi, [ebp+8]
		push	edi
		call	loc_44D5E0
		pop	ecx
		or	esi, eax
		jmp	loc_44DA41
; ---------------------------------------------------------------------------

loc_44D7BA:				; CODE XREF: .text:0044D79Bj
		cmp	eax, 6
		jnz	loc_44D88C
		mov	eax, [ebx+40h]
		push	eax
		call	loc_44D5E0
		pop	ecx
		mov	esi, eax
		cmp	dword_5CBBA0, 0
		jz	short loc_44D7F6
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44D7F6
		mov	eax, [ebp-8]
		movzx	eax, byte ptr [eax]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_44D808
		cmp	eax, 1Dh
		jz	short loc_44D808
		cmp	eax, 1Eh
		jz	short loc_44D808

loc_44D7F6:				; CODE XREF: .text:0044D7D6j
					; .text:0044D7DCj
		test	byte ptr [ebx+4Dh], 2
		jnz	loc_44DA41
		or	esi, 10h
		jmp	loc_44DA41
; ---------------------------------------------------------------------------

loc_44D808:				; CODE XREF: .text:0044D7EAj
					; .text:0044D7EFj ...
		mov	edx, [ebx+4Ch]
		and	edx, 1000100h
		cmp	edx, 1000100h
		jnz	short loc_44D83C
		cmp	dword ptr [ebx+78h], 0
		jnz	short loc_44D83C
		push	28h		; type3
		push	27h		; type2
		push	26h		; type1
		mov	ecx, [ebx+88h]
		push	ecx		; _addr
		call	Isdataavailable
		add	esp, 10h
		test	eax, eax
		jnz	loc_44DA41

loc_44D83C:				; CODE XREF: .text:0044D817j
					; .text:0044D81Dj
		mov	eax, [ebp+8]
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44D853
		mov	eax, [ebx]
		cmp	eax, [ebp+8]
		jz	short loc_44D876

loc_44D853:				; CODE XREF: .text:0044D84Aj
		or	esi, 10h
		jmp	loc_44DA41
; ---------------------------------------------------------------------------

loc_44D85B:				; CODE XREF: .text:0044D885j
		mov	edi, [ebx+4]
		test	edi, edi
		jnz	short loc_44D86A
		or	esi, 10h
		jmp	loc_44DA41
; ---------------------------------------------------------------------------

loc_44D86A:				; CODE XREF: .text:0044D860j
		push	edi
		call	loc_44D5E0
		pop	ecx
		or	esi, eax
		add	ebx, 9

loc_44D876:				; CODE XREF: .text:0044D851j
		mov	eax, [ebx]
		cmp	eax, [ebp+8]
		jnz	loc_44DA41
		cmp	byte ptr [ebx+8], 0
		jnz	short loc_44D85B
		jmp	loc_44DA41
; ---------------------------------------------------------------------------

loc_44D88C:				; CODE XREF: .text:0044D7BDj
		cmp	eax, 0Ch
		jnz	loc_44DA0C
		add	edi, [ebp+8]
		push	edi
		call	loc_44D5E0
		mov	esi, eax
		xor	eax, eax
		pop	ecx
		mov	[ebp-4], eax
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_44D8DC
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_44D8DC
		mov	edx, [ebx+40h]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	short loc_44D8DC
		mov	eax, [edi+14h]
		and	eax, 0FFh
		cmp	eax, 2
		jnz	short loc_44D8DC
		mov	dword ptr [ebp-4], 1

loc_44D8DC:				; CODE XREF: .text:0044D8ADj
					; .text:0044D8B6j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_44D907
		cmp	dword_5CBB78, 0
		jz	short loc_44D907
		mov	edx, [ebx+40h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Issystem
		pop	ecx
		test	eax, eax
		jz	short loc_44D907
		mov	dword ptr [ebp-4], 1

loc_44D907:				; CODE XREF: .text:0044D8E0j
					; .text:0044D8E9j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_44D919
		mov	ecx, [ebx+40h]
		push	ecx
		call	loc_44D5E0
		pop	ecx
		or	esi, eax

loc_44D919:				; CODE XREF: .text:0044D90Bj
		test	byte ptr [ebx+4Dh], 2
		jnz	loc_44DA41
		cmp	dword_5CBBA0, 0
		jz	short loc_44D94A
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44D94A
		mov	eax, [ebp-8]
		movzx	eax, byte ptr [eax]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_44D952
		cmp	eax, 1Dh
		jz	short loc_44D952
		cmp	eax, 1Eh
		jz	short loc_44D952

loc_44D94A:				; CODE XREF: .text:0044D92Aj
					; .text:0044D930j
		or	esi, 10h
		jmp	loc_44DA41
; ---------------------------------------------------------------------------

loc_44D952:				; CODE XREF: .text:0044D93Ej
					; .text:0044D943j ...
		mov	edx, [ebx+4Ch]
		and	edx, 1000100h
		cmp	edx, 1000100h
		jnz	short loc_44D986
		cmp	dword ptr [ebx+78h], 0
		jnz	short loc_44D986
		push	28h		; type3
		push	27h		; type2
		push	26h		; type1
		mov	ecx, [ebx+88h]
		push	ecx		; _addr
		call	Isdataavailable
		add	esp, 10h
		test	eax, eax
		jnz	loc_44DA41

loc_44D986:				; CODE XREF: .text:0044D961j
					; .text:0044D967j
		mov	eax, [ebp+8]
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44D99D
		mov	eax, [ebx]
		cmp	eax, [ebp+8]
		jz	short loc_44D9FD

loc_44D99D:				; CODE XREF: .text:0044D994j
		or	esi, 10h
		jmp	loc_44DA41
; ---------------------------------------------------------------------------
		jmp	short loc_44D9FD
; ---------------------------------------------------------------------------

loc_44D9A7:				; CODE XREF: .text:0044DA08j
		mov	eax, [ebx+4]
		test	eax, eax
		jnz	short loc_44D9B6
		or	esi, 10h
		jmp	loc_44DA41
; ---------------------------------------------------------------------------

loc_44D9B6:				; CODE XREF: .text:0044D9ACj
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	short loc_44D9D0
		mov	eax, [edi+14h]
		and	eax, 0FFh
		cmp	eax, 2
		jz	short loc_44D9FD

loc_44D9D0:				; CODE XREF: .text:0044D9C1j
		cmp	dword_5CBB78, 0
		jz	short loc_44D9EE
		mov	edx, [ebx+4]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Issystem
		pop	ecx
		test	eax, eax
		jnz	short loc_44D9FD

loc_44D9EE:				; CODE XREF: .text:0044D9D7j
		mov	ecx, [ebx+4]
		push	ecx
		call	loc_44D5E0
		pop	ecx
		or	esi, eax
		add	ebx, 9

loc_44D9FD:				; CODE XREF: .text:0044D99Bj
					; .text:0044D9A5j ...
		mov	eax, [ebx]
		cmp	eax, [ebp+8]
		jnz	short loc_44DA41
		cmp	byte ptr [ebx+8], 0
		jnz	short loc_44D9A7
		jmp	short loc_44DA41
; ---------------------------------------------------------------------------

loc_44DA0C:				; CODE XREF: .text:0044D88Fj
		cmp	eax, 0Fh
		jnz	short loc_44DA1F
		mov	edx, [ebx+40h]
		push	edx
		call	loc_44D5E0
		pop	ecx
		mov	esi, eax
		jmp	short loc_44DA41
; ---------------------------------------------------------------------------

loc_44DA1F:				; CODE XREF: .text:0044DA0Fj
		cmp	eax, 7
		jz	short loc_44DA2E
		cmp	eax, 0Dh
		jz	short loc_44DA2E
		cmp	eax, 10h
		jnz	short loc_44DA35

loc_44DA2E:				; CODE XREF: .text:0044DA22j
					; .text:0044DA27j
		mov	esi, 10h
		jmp	short loc_44DA41
; ---------------------------------------------------------------------------

loc_44DA35:				; CODE XREF: .text:0044DA2Cj
		add	edi, [ebp+8]
		push	edi
		call	loc_44D5E0
		pop	ecx
		mov	esi, eax

loc_44DA41:				; CODE XREF: .text:0044D7B5j
					; .text:0044D7FAj ...
		test	esi, 1
		jz	short loc_44DA50
		mov	eax, 0FFFFFFFEh
		jmp	short loc_44DA6E
; ---------------------------------------------------------------------------

loc_44DA50:				; CODE XREF: .text:0044DA47j
		test	esi, 2
		jz	short loc_44DA5D
		or	eax, 0FFFFFFFFh
		jmp	short loc_44DA6E
; ---------------------------------------------------------------------------

loc_44DA5D:				; CODE XREF: .text:0044DA56j
		test	esi, 14h
		jz	short loc_44DA6C
		mov	eax, 1
		jmp	short loc_44DA6E
; ---------------------------------------------------------------------------

loc_44DA6C:				; CODE XREF: .text:0044DA63j
		xor	eax, eax

loc_44DA6E:				; CODE XREF: .text:0044D788j
					; .text:0044DA4Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_44DA78(int, void *src, t_disasm *, int, t_reg	*)
loc_44DA78:				; CODE XREF: .text:00451170p
					; .text:00451A82p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		cmp	dword_5CBB94, 0
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		jz	short loc_44DAA3
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_44DAA3
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_44DAA3
		test	ebx, ebx
		jz	short loc_44DAA3
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_44DAAB

loc_44DAA3:				; CODE XREF: .text:0044DA8Bj
					; .text:0044DA91j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_44DD4E
; ---------------------------------------------------------------------------

loc_44DAAB:				; CODE XREF: .text:0044DAA1j
		cmp	rtprot.tracelogtype, 0
		jnz	short loc_44DAC0
		mov	dword ptr [ebp-4], 1
		jmp	loc_44DC0E
; ---------------------------------------------------------------------------

loc_44DAC0:				; CODE XREF: .text:0044DAB2j
		mov	edx, [ebx+6CCh]
		cmp	edx, [ebp+8]
		setz	cl
		and	ecx, 1
		xor	eax, eax
		mov	[ebp-4], ecx
		mov	[ebx+6CCh], eax
		mov	edx, [ebp+18h]
		push	edx		; t_reg	*
		mov	ecx, [ebp+10h]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		push	eax		; src
		mov	edx, [ebp+8]
		push	edx		; int
		call	loc_44CA4C
		add	esp, 10h
		mov	ecx, [ebp+10h]
		mov	eax, [ecx+14h]
		and	eax, 1Fh
		mov	edx, rtprot.tracelogtype
		dec	edx
		jz	short loc_44DB0F
		dec	edx
		jz	short loc_44DB56
		dec	edx
		jz	short loc_44DB70
		jmp	loc_44DC0E
; ---------------------------------------------------------------------------

loc_44DB0F:				; CODE XREF: .text:0044DB02j
		cmp	eax, 6
		jz	short loc_44DB3E
		cmp	eax, 0Ch
		jz	short loc_44DB3E
		cmp	eax, 0Fh
		jz	short loc_44DB3E
		cmp	eax, 0Eh
		jz	short loc_44DB3E
		cmp	eax, 8
		jz	short loc_44DB31
		cmp	eax, 9
		jnz	loc_44DC0E

loc_44DB31:				; CODE XREF: .text:0044DB26j
		mov	ecx, [ebp+10h]
		cmp	dword ptr [ecx+3Ch], 2
		jz	loc_44DC0E

loc_44DB3E:				; CODE XREF: .text:0044DB12j
					; .text:0044DB17j ...
		mov	dword ptr [ebp-4], 1
		mov	eax, [ebp+10h]
		mov	edx, [eax+40h]
		mov	[ebx+6CCh], edx
		jmp	loc_44DC0E
; ---------------------------------------------------------------------------

loc_44DB56:				; CODE XREF: .text:0044DB05j
		cmp	eax, 0Ch
		jnz	loc_44DC0E
		mov	ecx, [ebp+10h]
		mov	eax, [ecx+40h]
		mov	[ebx+6CCh], eax
		jmp	loc_44DC0E
; ---------------------------------------------------------------------------

loc_44DB70:				; CODE XREF: .text:0044DB08j
		mov	dword ptr [ebp-8], offset rtprot.memaccess
		xor	edi, edi

loc_44DB79:				; CODE XREF: .text:0044DC08j
		mov	ecx, edi
		mov	eax, 1
		shl	eax, cl
		and	eax, rtprot.memranges
		jz	short loc_44DC00
		mov	edx, [ebp-8]
		mov	ebx, [ebp+10h]
		xor	esi, esi
		add	ebx, 4Ch
		mov	eax, [edx]
		mov	edx, [ebp-8]
		lea	ecx, [edx+10h]
		mov	[ebp-0Ch], ecx
		jmp	short loc_44DBF5
; ---------------------------------------------------------------------------

loc_44DBA2:				; CODE XREF: .text:0044DBFEj
		test	byte ptr [ebx+1], 1
		jz	short loc_44DBEE
		test	byte ptr [ebx+7], 30h
		jz	short loc_44DBB8
		cmp	eax, 1
		jz	short loc_44DBC7
		cmp	eax, 2
		jz	short loc_44DBC7

loc_44DBB8:				; CODE XREF: .text:0044DBACj
		test	byte ptr [ebx+7], 10h
		jnz	short loc_44DBEE
		test	eax, eax
		jz	short loc_44DBC7
		cmp	eax, 2
		jnz	short loc_44DBEE

loc_44DBC7:				; CODE XREF: .text:0044DBB1j
					; .text:0044DBB6j ...
		test	byte ptr [ebx+3], 1
		jz	short loc_44DBEE
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx]
		cmp	ecx, [ebx+3Ch]
		jbe	short loc_44DBEE
		mov	edx, [ebx+3Ch]
		mov	ecx, [ebp-0Ch]
		add	edx, [ebx+0Ch]
		cmp	edx, [ecx-8]
		jbe	short loc_44DBEE
		mov	dword ptr [ebp-4], 1
		jmp	short loc_44DC00
; ---------------------------------------------------------------------------

loc_44DBEE:				; CODE XREF: .text:0044DBA6j
					; .text:0044DBBCj ...
		inc	esi
		add	ebx, 460h

loc_44DBF5:				; CODE XREF: .text:0044DBA0j
		cmp	esi, 4
		jge	short loc_44DC00
		cmp	dword ptr [ebp-4], 0
		jz	short loc_44DBA2

loc_44DC00:				; CODE XREF: .text:0044DB88j
					; .text:0044DBECj ...
		inc	edi
		add	dword ptr [ebp-8], 4
		cmp	edi, 2
		jl	loc_44DB79

loc_44DC0E:				; CODE XREF: .text:0044DABBj
					; .text:0044DB0Aj ...
		cmp	rtprot.rangeactive, 0
		jz	short loc_44DC31
		mov	eax, [ebp+8]
		push	eax		; value
		push	offset rtprot.range ; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jnz	short loc_44DC31
		xor	eax, eax
		mov	[ebp-4], eax

loc_44DC31:				; CODE XREF: .text:0044DC15j
					; .text:0044DC2Aj
		cmp	dword ptr [ebp-4], 0
		jz	loc_44DD4C
		xor	esi, esi
		mov	eax, [ebp+18h]
		add	eax, 198h

loc_44DC45:				; CODE XREF: .text:0044DC50j
		xor	edx, edx
		inc	esi
		mov	[eax], edx
		add	eax, 18h
		cmp	esi, 2
		jl	short loc_44DC45
		cmp	dword_5CBB84, 0
		jnz	short loc_44DC66
		mov	ecx, [ebp+18h]
		and	dword ptr [ecx], 0FFFFFFBFh
		jmp	loc_44DD00
; ---------------------------------------------------------------------------

loc_44DC66:				; CODE XREF: .text:0044DC59j
		mov	eax, [ebp+18h]
		push	eax		; t_reg	*
		mov	edx, [ebp+10h]
		push	edx		; int
		mov	ecx, [ebp+0Ch]
		push	ecx		; src
		mov	eax, [ebp+8]
		push	eax		; int
		call	loc_44CA4C
		mov	eax, [ebp+18h]
		mov	ebx, [ebp+10h]
		add	esp, 10h
		xor	esi, esi
		lea	edx, [eax+194h]
		xor	edi, edi
		add	ebx, 4Ch
		mov	[ebp-10h], edx
		jmp	short loc_44DCE4
; ---------------------------------------------------------------------------

loc_44DC96:				; CODE XREF: .text:0044DCECj
		mov	ecx, [ebx]
		and	ecx, 3000100h
		cmp	ecx, 3000100h
		jnz	short loc_44DCDD
		mov	eax, [ebp-10h]
		mov	edx, [ebx+3Ch]
		mov	[eax], edx
		mov	ecx, [ebp-10h]
		mov	eax, [ebx+0Ch]
		mov	[ecx+4], eax
		mov	eax, esi
		shl	eax, 3
		mov	edx, [ebx+0Ch]
		push	edx		; n
		lea	ecx, [ebx+40h]
		push	ecx		; src
		lea	eax, [eax+eax*2]
		add	eax, [ebp+18h]
		add	eax, 19Ch
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	esi
		add	dword ptr [ebp-10h], 18h

loc_44DCDD:				; CODE XREF: .text:0044DCA4j
		inc	edi
		add	ebx, 460h

loc_44DCE4:				; CODE XREF: .text:0044DC94j
		cmp	edi, 4
		jge	short loc_44DCEE
		cmp	esi, 2
		jl	short loc_44DC96

loc_44DCEE:				; CODE XREF: .text:0044DCE7j
		test	esi, esi
		jnz	short loc_44DCFA
		mov	edx, [ebp+18h]
		and	dword ptr [edx], 0FFFFFFBFh
		jmp	short loc_44DD00
; ---------------------------------------------------------------------------

loc_44DCFA:				; CODE XREF: .text:0044DCF0j
		mov	ecx, [ebp+18h]
		or	dword ptr [ecx], 40h

loc_44DD00:				; CODE XREF: .text:0044DC61j
					; .text:0044DCF8j
		cmp	dword_5CBB80, 0
		jnz	short loc_44DD1F
		push	0		; n
		push	0		; src
		mov	eax, [ebp+8]
		push	eax		; int
		mov	edx, [ebp+18h]
		push	edx		; t_reg	*
		call	loc_4C44CC
		add	esp, 10h
		jmp	short loc_44DD4C
; ---------------------------------------------------------------------------

loc_44DD1F:				; CODE XREF: .text:0044DD07j
		mov	ecx, [ebp+18h]
		push	ecx		; t_reg	*
		mov	eax, [ebp+10h]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		push	edx		; src
		mov	ecx, [ebp+8]
		push	ecx		; int
		call	loc_44CA4C
		add	esp, 10h
		push	eax		; n
		mov	eax, [ebp+0Ch]
		push	eax		; src
		mov	edx, [ebp+8]
		push	edx		; int
		mov	ecx, [ebp+18h]
		push	ecx		; t_reg	*
		call	loc_4C44CC
		add	esp, 10h

loc_44DD4C:				; CODE XREF: .text:0044DC35j
					; .text:0044DD1Dj
		xor	eax, eax

loc_44DD4E:				; CODE XREF: .text:0044DAA6j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44DD58:				; CODE XREF: .text:00452702p
					; .text:00453251p ...
		push	ebp
		mov	ebp, esp
		cmp	run.status, 14h
		jnz	short loc_44DD6B
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44DD6B:				; CODE XREF: .text:0044DD62j
		cmp	dwProcessId, 0
		jz	short loc_44DD78
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44DD78:				; CODE XREF: .text:0044DD72j
		mov	eax, run.status
		cmp	eax, 0Bh
		jz	short loc_44DD8C
		cmp	eax, 0Ch
		jz	short loc_44DD8C
		cmp	eax, 0Dh
		jnz	short loc_44DD9C

loc_44DD8C:				; CODE XREF: .text:0044DD80j
					; .text:0044DD85j
		cmp	dword_5CBBC0, 0
		jz	short loc_44DD9C
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44DD9C:				; CODE XREF: .text:0044DD8Aj
					; .text:0044DD93j
		cmp	dword_5C898C, 0
		jnz	short loc_44DDA9
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44DDA9:				; CODE XREF: .text:0044DDA3j
		mov	edx, [ebp+8]
		push	edx		; value
		push	offset set	; set
		call	Isinset
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_44DDBC(int a1, t_reg *a2, int	arglist)
loc_44DDBC:				; CODE XREF: .text:0045274Fp
					; .text:00453298p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF31Ch
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword_5C8A94, 0
		jz	loc_44DEE6
		test	esi, esi
		jz	loc_44DECD
		cmp	dword_5D553C, 0
		jz	loc_44DECD
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	loc_44DECD
		push	1		; decode
		push	1		; n
		push	ebx		; ip
		mov	edx, [eax+4]
		push	edx		; size
		mov	eax, [eax]
		push	eax		; base
		push	0		; copy
		call	Disassembleback
		add	esp, 18h
		mov	edi, eax
		cmp	ebx, edi
		jz	loc_44DECD
		push	5		; mode
		push	10h		; size
		push	edi		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jbe	short loc_44DE58
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-18E0h]
		push	edx		; da
		push	0		; dec
		push	edi		; ip
		push	eax		; cmdsize
		lea	ecx, [ebp-10h]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h

loc_44DE58:				; CODE XREF: .text:0044DE39j
		test	eax, eax
		jbe	short loc_44DECD
		mov	eax, [ebp-18A0h]
		cmp	eax, dword_5D553C
		jnz	short loc_44DECD
		mov	edx, [esi+1Ch]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_44DECD
		mov	ecx, [esi+8]
		mov	[ebp-1CE4h], ecx
		mov	edx, [esi+1Ch]
		mov	[ebp-1CE0h], edx
		xor	edx, edx
		mov	ecx, [esi+20h]
		mov	[ebp-1CDCh], ecx
		xor	ecx, ecx
		mov	dword ptr [ebp-1CD8h], 1
		mov	[ebp-1CD4h], edx
		mov	[ebp-1A04h], ecx
		mov	edx, [eax+4]
		lea	ecx, [ebp-1CE4h]
		push	edx		; size
		mov	eax, [eax]
		push	eax		; base
		push	ecx		; pf
		call	Findretaddrdata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44DECD
		mov	ebx, [ebp-19FCh]

loc_44DECD:				; CODE XREF: .text:0044DDE4j
					; .text:0044DDF1j ...
		mov	eax, [ebp+10h]
		push	eax		; arglist
		push	offset aSPassedToAppli ; "%s - passed to application"
		call	_T
		pop	ecx
		push	eax		; format
		push	ebx		; _addr
		call	Message
		add	esp, 0Ch

loc_44DEE6:				; CODE XREF: .text:0044DDDCj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_44DEF0(int, char arglist)
loc_44DEF0:				; CODE XREF: .text:004527A5p
					; .text:004532E9p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	run.isappexception, 2
		jnz	short loc_44DF15
		push	esi		; arglist
		push	(offset	aS_9+4)	; format
		push	ebx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_44DF6D
; ---------------------------------------------------------------------------

loc_44DF15:				; CODE XREF: .text:0044DF02j
		cmp	dword ptr run.de.u+50h,	0
		jnz	short loc_44DF36
		push	esi		; arglist
		push	offset aSApplicationWa ; "%s - application was unable to process "...
		call	_T
		pop	ecx
		push	eax		; format
		push	ebx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_44DF6D
; ---------------------------------------------------------------------------

loc_44DF36:				; CODE XREF: .text:0044DF1Cj
		test	byte ptr run.de.u+4, 1
		jz	short loc_44DF57
		push	esi		; arglist
		push	offset aSExceptionIsNo ; "%s - exception is non-continuable"
		call	_T
		pop	ecx
		push	eax		; format
		push	ebx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_44DF6D
; ---------------------------------------------------------------------------

loc_44DF57:				; CODE XREF: .text:0044DF3Dj
		push	esi		; arglist
		push	offset aSShiftRunStepT ; "%s - Shift+Run/Step to pass exception	t"...
		call	_T
		pop	ecx
		push	eax		; format
		push	ebx		; _addr
		call	Message
		add	esp, 0Ch

loc_44DF6D:				; CODE XREF: .text:0044DF13j
					; .text:0044DF34j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_44DF74(int, void *s1,	int, int, wchar_t *buffer)
loc_44DF74:				; CODE XREF: .text:00455984p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBD0h
		test	byte ptr rtcond.options+1, 1
		push	ebx
		push	esi
		push	edi
		jz	short loc_44DFC6
		mov	eax, [ebp+8]
		cmp	eax, rtcond.inrange0
		jb	short loc_44DFC6
		mov	edx, [ebp+8]
		cmp	edx, rtcond.inrange1
		jnb	short loc_44DFC6
		push	offset aEipIsInTheRang ; "EIP is in the	range"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+18h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44DFC6:				; CODE XREF: .text:0044DF87j
					; .text:0044DF92j ...
		test	byte ptr rtcond.options+1, 2
		jz	short loc_44E00C
		mov	edx, [ebp+8]
		cmp	edx, rtcond.outrange0
		jb	short loc_44DFE5
		mov	ecx, [ebp+8]
		cmp	ecx, rtcond.outrange1
		jb	short loc_44E00C

loc_44DFE5:				; CODE XREF: .text:0044DFD8j
		push	offset aEipIsOutsideTh ; "EIP is outside the range"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E00C:				; CODE XREF: .text:0044DFCDj
					; .text:0044DFE3j
		test	byte ptr rtcond.options+1, 80h
		jnz	short loc_44E02B
		cmp	run.status, 0Bh
		jz	short loc_44E02B
		cmp	run.status, 0Ch
		jnz	loc_44E211

loc_44E02B:				; CODE XREF: .text:0044E013j
					; .text:0044E01Cj
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	loc_44E211
		cmp	dword ptr [esi+60h], 0
		jz	loc_44E211
		mov	eax, [ebp+14h]
		push	eax		; t_reg	*
		mov	edx, [ebp+10h]
		push	edx		; int
		mov	ecx, [ebp+0Ch]
		push	ecx		; src
		mov	eax, [ebp+8]
		push	eax		; int
		call	loc_44CA4C
		mov	edi, eax
		mov	ebx, [esi]
		mov	eax, ebx
		mov	edx, [ebp+8]
		add	eax, [esi+4]
		add	edx, edi
		add	esp, 10h
		cmp	eax, edx
		jnb	short loc_44E078
		mov	edi, eax
		sub	edi, [ebp+8]

loc_44E078:				; CODE XREF: .text:0044E071j
		push	edi		; n
		mov	eax, [ebp+8]
		sub	eax, ebx
		add	eax, [esi+60h]
		push	eax		; s2
		mov	edx, [ebp+0Ch]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	loc_44E211
		mov	eax, run.status
		cmp	eax, 0Bh
		jz	short loc_44E0A9
		cmp	eax, 0Ch
		jnz	loc_44E1EA

loc_44E0A9:				; CODE XREF: .text:0044E09Ej
		push	offset aPossibleEntryP ; "possible entry point of packed file"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+18h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	run.status, 0Ch
		jnz	short loc_44E124
		xor	ecx, ecx
		mov	dword_5CBB98, ecx
		call	Suspendallthreads
		xor	ebx, ebx
		jmp	short loc_44E112
; ---------------------------------------------------------------------------

loc_44E0E0:				; CODE XREF: .text:0044E118j
		push	ebx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44E111
		test	byte ptr [esi+0Bh], 8
		jnz	short loc_44E111
		cmp	dword ptr [esi+64h], 0
		jz	short loc_44E111
		xor	eax, eax
		jmp	short loc_44E10C
; ---------------------------------------------------------------------------

loc_44E104:				; CODE XREF: .text:0044E10Fj
		mov	edx, [esi+64h]
		and	byte ptr [edx+eax], 7Fh
		inc	eax

loc_44E10C:				; CODE XREF: .text:0044E102j
		cmp	eax, [esi+4]
		jb	short loc_44E104

loc_44E111:				; CODE XREF: .text:0044E0F2j
					; .text:0044E0F8j ...
		inc	ebx

loc_44E112:				; CODE XREF: .text:0044E0DEj
		cmp	ebx, memory.sorted.n
		jl	short loc_44E0E0
		call	loc_497C20
		call	Resumeallthreads

loc_44E124:				; CODE XREF: .text:0044E0CDj
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44E1AC
		or	dword ptr [ebx+8], 40000h
		mov	eax, [ebx+464h]
		cmp	eax, [ebp+8]
		jz	short loc_44E159
		mov	edx, [ebp+8]
		mov	[ebx+464h], edx
		mov	dword ptr [ebx+9A8h], 1

loc_44E159:				; CODE XREF: .text:0044E144j
		push	1		; force
		push	ebx		; pm
		call	Backupusercode
		add	esp, 8
		push	0
		push	ebx
		call	loc_4AB264
		add	esp, 8
		mov	eax, [ebx+8]
		test	eax, 800000h
		jnz	short loc_44E1A4
		mov	edx, [ebx]
		mov	[ebp-430h], edx
		mov	ecx, [ebx+4]
		mov	[ebp-42Ch], ecx
		mov	[ebp-428h], eax
		lea	eax, [ebp-430h]
		push	eax		; item
		push	offset aqueue	; sd
		call	Addsorteddata
		add	esp, 8

loc_44E1A4:				; CODE XREF: .text:0044E177j
		push	0		; int
		call	loc_46FADC
		pop	ecx

loc_44E1AC:				; CODE XREF: .text:0044E132j
		cmp	dword_5C8944, 2
		jz	short loc_44E1D9
		cmp	dword_5C8944, 1
		jnz	short loc_44E1C7
		cmp	dword ptr [ebx+49Ch], 0
		jz	short loc_44E1D9

loc_44E1C7:				; CODE XREF: .text:0044E1BCj
		cmp	dword_5C8944, 3
		jnz	short loc_44E1E3
		cmp	dword ptr [ebx+468h], 0
		jnz	short loc_44E1E3

loc_44E1D9:				; CODE XREF: .text:0044E1B3j
					; .text:0044E1C5j
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E1E3:				; CODE XREF: .text:0044E1CEj
					; .text:0044E1D7j
		xor	eax, eax
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E1EA:				; CODE XREF: .text:0044E0A3j
		push	offset aEipPointsToM_0 ; "EIP points to	modified command"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+18h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E211:				; CODE XREF: .text:0044E025j
					; .text:0044E039j ...
		test	byte ptr rtcond.options+1, 4
		jz	short loc_44E24F
		mov	edx, rtcond.count
		cmp	edx, rtcond.currcount
		ja	short loc_44E24F
		push	offset aCommandCountRe ; "command count	reached"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+18h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E24F:				; CODE XREF: .text:0044E218j
					; .text:0044E226j
		mov	dword ptr [ebp-4], offset rtcond.memaccess
		xor	ebx, ebx

loc_44E258:				; CODE XREF: .text:0044E36Ej
		mov	ecx, ebx
		mov	eax, 1000h
		shl	eax, cl
		and	eax, rtcond.options
		jz	loc_44E366
		mov	edx, [ebp+14h]
		push	edx		; t_reg	*
		mov	eax, [ebp+10h]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		push	edx		; src
		mov	ecx, [ebp+8]
		push	ecx		; int
		call	loc_44CA4C
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_44E2B2
		push	offset aInvalidCommand ; "invalid command"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E2B2:				; CODE XREF: .text:0044E289j
		mov	edx, [ebp-4]
		mov	eax, [ebp+10h]
		mov	esi, [ebp-4]
		add	eax, 4Ch
		xor	ecx, ecx
		add	esi, 10h
		mov	edx, [edx]
		mov	[ebp-8], esi

loc_44E2C8:				; CODE XREF: .text:0044E360j
		test	byte ptr [eax+1], 1
		jz	loc_44E357
		test	byte ptr [eax+7], 30h
		jz	short loc_44E2E2
		cmp	edx, 1
		jz	short loc_44E2F1
		cmp	edx, 2
		jz	short loc_44E2F1

loc_44E2E2:				; CODE XREF: .text:0044E2D6j
		test	byte ptr [eax+7], 10h
		jnz	short loc_44E357
		test	edx, edx
		jz	short loc_44E2F1
		cmp	edx, 2
		jnz	short loc_44E357

loc_44E2F1:				; CODE XREF: .text:0044E2DBj
					; .text:0044E2E0j ...
		test	byte ptr [eax+3], 1
		jnz	short loc_44E31B
		inc	ebx
		push	ebx
		push	offset aMemoryRangeIUn ; "memory range %i - unable to calculate	a"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+18h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E31B:				; CODE XREF: .text:0044E2F5j
		mov	esi, [ebp-8]
		mov	esi, [esi]
		cmp	esi, [eax+3Ch]
		jbe	short loc_44E357
		mov	esi, [eax+3Ch]
		mov	edi, [ebp-8]
		add	esi, [eax+0Ch]
		cmp	esi, [edi-8]
		jbe	short loc_44E357
		inc	ebx
		push	ebx
		push	offset aMemoryRangeIAc ; "memory range %i accessed"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+18h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E357:				; CODE XREF: .text:0044E2CCj
					; .text:0044E2E6j ...
		inc	ecx
		add	eax, 460h
		cmp	ecx, 4
		jl	loc_44E2C8

loc_44E366:				; CODE XREF: .text:0044E267j
		inc	ebx
		add	dword ptr [ebp-4], 4
		cmp	ebx, 2
		jl	loc_44E258
		xor	ebx, ebx
		mov	esi, offset rtcond.ccomp

loc_44E37B:				; CODE XREF: .text:0044E4EDj
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		and	eax, rtcond.options
		jz	loc_44E4E3
		cmp	byte ptr [esi],	0
		jnz	short loc_44E3FA
		lea	edx, [ebp-40Ah]
		push	3		; mode
		push	edx		; err
		mov	eax, ebx
		shl	eax, 8
		mov	edx, ebx
		shl	edx, 9
		push	0		; explen
		add	eax, offset rtcond.ccomp
		push	100h		; nexpr
		push	eax		; cexpr
		add	edx, offset rtcond.cond
		push	edx		; expression
		call	Cexpression
		add	esp, 18h
		cmp	word ptr [ebp-40Ah], 0
		jz	short loc_44E3FA
		lea	ecx, [ebp-40Ah]
		inc	ebx
		push	ecx
		push	ebx
		push	offset aInvalidConditi ; "invalid condition %i - %s"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+18h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E3FA:				; CODE XREF: .text:0044E393j
					; .text:0044E3CDj
		push	3		; mode
		push	0		; b
		push	0		; a
		mov	eax, ebx
		mov	edx, [ebp+14h]
		shl	eax, 8
		add	eax, offset rtcond.ccomp
		mov	ecx, [edx+4]
		push	ecx		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		push	0		; index
		push	eax		; cexpr
		lea	edx, [ebp-424h]
		push	0		; expl
		push	edx		; result
		call	Eexpression
		add	esp, 2Ch
		cmp	dword ptr [ebp-41Ch], 0
		jnz	short loc_44E460
		lea	ecx, [ebp-40Ah]
		inc	ebx
		push	ecx
		push	ebx
		push	offset aInvalidConditi ; "invalid condition %i - %s"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+18h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E460:				; CODE XREF: .text:0044E433j
		mov	eax, [ebp-41Ch]
		cmp	eax, 3
		jz	short loc_44E494
		cmp	eax, 23h
		jz	short loc_44E494
		inc	ebx
		push	ebx
		push	offset aConditionIIsOf ; "condition %i is of non-integer type"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+18h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E494:				; CODE XREF: .text:0044E469j
					; .text:0044E46Ej
		cmp	dword ptr [ebp-414h], 0
		jz	short loc_44E4E3
		lea	edx, [ebx+1]
		push	edx
		push	offset aConditionIMet ;	"condition %i met - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp+18h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, 100h
		shl	ebx, 9
		sub	edx, eax
		add	ebx, offset rtcond.cond
		add	eax, eax
		push	ebx		; src
		push	edx		; n
		add	eax, [ebp+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E4E3:				; CODE XREF: .text:0044E38Aj
					; .text:0044E49Bj
		inc	ebx
		add	esi, 100h
		cmp	ebx, 4
		jl	loc_44E37B
		xor	ebx, ebx
		mov	esi, offset rtcond.nmodel

loc_44E4FA:				; CODE XREF: .text:0044E666j
		mov	ecx, ebx
		mov	edi, 10h
		shl	edi, cl
		mov	eax, edi
		and	eax, rtcond.options
		jz	loc_44E65F
		mov	edx, edi
		and	edx, rtcond.validmodels
		jnz	loc_44E5A5
		mov	eax, ebx
		lea	ecx, [ebp-208h]
		shl	eax, 9
		push	ecx		; errtxt
		mov	edx, ebx
		push	7		; mode
		lea	eax, [eax+eax*2]
		push	80h		; maxmodel
		shl	edx, 9
		lea	eax, [eax+eax*8]
		add	eax, offset rtcond._model
		add	edx, offset rtcond.cmd
		push	eax		; model
		push	0		; ip
		push	edx		; src
		call	Assembleallforms
		add	esp, 18h
		mov	[esi], eax
		cmp	dword ptr [esi], 0
		jle	short loc_44E564
		or	rtcond.validmodels, edi
		jmp	short loc_44E5A5
; ---------------------------------------------------------------------------

loc_44E564:				; CODE XREF: .text:0044E55Aj
		inc	ebx
		push	ebx
		push	offset aInvalidComma_3 ; "invalid command %i - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+18h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-208h]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E5A5:				; CODE XREF: .text:0044E519j
					; .text:0044E562j
		mov	edx, [ebp+14h]
		push	edx		; t_reg	*
		mov	ecx, [ebp+10h]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		push	eax		; src
		mov	edx, [ebp+8]
		push	edx		; int
		call	loc_44CA4C
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_44E5EA
		push	offset aInvalidCommand ; "invalid command"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_44E66E
; ---------------------------------------------------------------------------

loc_44E5EA:				; CODE XREF: .text:0044E5C1j
		mov	ecx, ebx
		push	0		; da
		shl	ecx, 9
		push	0		; pb
		push	0		; pa
		mov	edx, [esi]
		lea	ecx, [ecx+ecx*2]
		push	edx		; nmodel
		lea	ecx, [ecx+ecx*8]
		add	ecx, offset rtcond._model
		push	ecx		; model
		mov	eax, [ebp+8]
		push	eax		; cmdip
		push	edi		; cmdsize
		mov	edx, [ebp+0Ch]
		push	edx		; cmd
		call	Comparecommand
		add	esp, 20h
		mov	edi, eax
		test	edi, edi
		jz	short loc_44E65F
		lea	ecx, [ebx+1]
		push	ecx
		push	offset aCommandIMatche ; "command %i matched - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+18h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, 100h
		shl	ebx, 9
		sub	edx, eax
		add	ebx, offset rtcond.cmd
		add	eax, eax
		push	ebx		; src
		push	edx		; n
		add	eax, [ebp+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_44E66E
; ---------------------------------------------------------------------------

loc_44E65F:				; CODE XREF: .text:0044E50Bj
					; .text:0044E61Aj
		inc	ebx
		add	esi, 4
		cmp	ebx, 2
		jl	loc_44E4FA
		xor	eax, eax

loc_44E66E:				; CODE XREF: .text:0044DFC1j
					; .text:0044E007j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_44E678(int, wchar_t *s2)
loc_44E678:				; CODE XREF: .text:0044F14Bp
					; .text:0044F1F4p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF7ECh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword_5C8AA0, 0
		jnz	short loc_44E69D
		mov	eax, 1
		jmp	loc_44E7E3
; ---------------------------------------------------------------------------

loc_44E69D:				; CODE XREF: .text:0044E691j
		test	ebx, ebx
		jz	short loc_44E6A7
		cmp	word ptr [ebx],	0
		jnz	short loc_44E6AE

loc_44E6A7:				; CODE XREF: .text:0044E69Fj
		xor	eax, eax
		jmp	loc_44E7E3
; ---------------------------------------------------------------------------

loc_44E6AE:				; CODE XREF: .text:0044E6A5j
		cmp	_imp__PathCanonicalizeW, 0
		jz	short loc_44E6C9
		push	ebx		; _DWORD
		lea	edx, [ebp-20Ch]
		push	edx		; _DWORD
		call	_imp__PathCanonicalizeW
		test	eax, eax
		jnz	short loc_44E6CE

loc_44E6C9:				; CODE XREF: .text:0044E6B5j
		mov	[ebp-4], ebx
		jmp	short loc_44E6D7
; ---------------------------------------------------------------------------

loc_44E6CE:				; CODE XREF: .text:0044E6C7j
		lea	ecx, [ebp-20Ch]
		mov	[ebp-4], ecx

loc_44E6D7:				; CODE XREF: .text:0044E6CCj
		lea	eax, [ebp-60Ch]
		lea	edx, [ebp-40Ch]
		push	eax		; ext
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		mov	ecx, [ebp-4]
		push	ecx		; path
		call	__wfnsplit
		add	esp, 14h
		lea	eax, [ebp-60Ch]
		lea	edx, [ebp-40Ch]
		lea	ecx, [ebp-814h]
		push	eax		; ext
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		push	ecx		; path
		call	__wfnmerge
		add	esp, 14h
		xor	ebx, ebx
		mov	esi, offset word_5C8AA4

loc_44E71D:				; CODE XREF: .text:0044E7DBj
		cmp	word ptr [esi],	0
		jz	loc_44E7E1
		test	edi, edi
		jz	short loc_44E753
		push	edi		; s2
		mov	eax, ebx
		shl	eax, 6
		add	eax, ebx
		shl	eax, 3
		add	eax, offset word_5C8AA4
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_44E753
		mov	eax, 1
		jmp	loc_44E7E3
; ---------------------------------------------------------------------------

loc_44E753:				; CODE XREF: .text:0044E729j
					; .text:0044E747j
		mov	ecx, ebx
		mov	edx, [ebp-4]
		shl	ecx, 6
		push	edx		; s2
		add	ecx, ebx
		shl	ecx, 3
		add	ecx, offset word_5C8AA4
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_44E77B
		mov	eax, 1
		jmp	short loc_44E7E3
; ---------------------------------------------------------------------------

loc_44E77B:				; CODE XREF: .text:0044E772j
		mov	ecx, ebx
		lea	edx, [ebp-814h]
		shl	ecx, 6
		push	edx		; s2
		add	ecx, ebx
		shl	ecx, 3
		add	ecx, offset word_5C8AA4
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_44E7A6
		mov	eax, 1
		jmp	short loc_44E7E3
; ---------------------------------------------------------------------------

loc_44E7A6:				; CODE XREF: .text:0044E79Dj
		mov	ecx, ebx
		lea	edx, [ebp-40Ch]
		shl	ecx, 6
		push	edx		; s2
		add	ecx, ebx
		shl	ecx, 3
		add	ecx, offset word_5C8AA4
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_44E7D1
		mov	eax, 1
		jmp	short loc_44E7E3
; ---------------------------------------------------------------------------

loc_44E7D1:				; CODE XREF: .text:0044E7C8j
		inc	ebx
		add	esi, 208h
		cmp	ebx, 18h
		jl	loc_44E71D

loc_44E7E1:				; CODE XREF: .text:0044E721j
		xor	eax, eax

loc_44E7E3:				; CODE XREF: .text:0044E698j
					; .text:0044E6A9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_44E7EC(t_thread *a1, t_reg *reg, void	*src, t_disasm *da)
loc_44E7EC:				; CODE XREF: .text:00452731p
					; .text:0045327Ap ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, offset run
		mov	esi, [ebp+8]
		mov	edx, [ebp+0Ch]
		test	esi, esi
		jz	short loc_44E808
		test	edx, edx
		jnz	short loc_44E810

loc_44E808:				; CODE XREF: .text:0044E802j
		or	eax, 0FFFFFFFFh
		jmp	loc_44EBED
; ---------------------------------------------------------------------------

loc_44E810:				; CODE XREF: .text:0044E806j
		cmp	dword ptr [ebx+80h], 0
		jnz	short loc_44E821
		or	eax, 0FFFFFFFFh
		jmp	loc_44EBED
; ---------------------------------------------------------------------------

loc_44E821:				; CODE XREF: .text:0044E817j
		mov	eax, [ebx]
		cmp	eax, 3
		jz	short loc_44E871
		cmp	eax, 4
		jz	short loc_44E871
		cmp	eax, 5
		jz	short loc_44E871
		cmp	eax, 6
		jz	short loc_44E871
		cmp	eax, 7
		jz	short loc_44E871
		cmp	eax, 8
		jz	short loc_44E871
		cmp	eax, 9
		jz	short loc_44E871
		cmp	eax, 0Ah
		jz	short loc_44E871
		cmp	eax, 0Eh
		jz	short loc_44E871
		cmp	eax, 10h
		jz	short loc_44E871
		cmp	eax, 0Bh
		jz	short loc_44E871
		cmp	eax, 0Ch
		jz	short loc_44E871
		cmp	eax, 0Dh
		jz	short loc_44E871
		cmp	eax, 14h
		jz	short loc_44E871
		or	eax, 0FFFFFFFFh
		jmp	loc_44EBED
; ---------------------------------------------------------------------------

loc_44E871:				; CODE XREF: .text:0044E826j
					; .text:0044E82Bj ...
		cmp	dword ptr [esi+6C4h], 0
		mov	edi, [ebx+3Ch]
		jnz	short loc_44E887
		xor	eax, eax
		mov	[esi+6C8h], eax
		jmp	short loc_44E8A3
; ---------------------------------------------------------------------------

loc_44E887:				; CODE XREF: .text:0044E87Bj
		and	dword ptr [edx+2Ch], 0FFFFFEFFh
		or	dword ptr [edx], 1
		xor	ecx, ecx
		mov	[esi+6C4h], ecx
		mov	dword ptr [esi+6C8h], 1

loc_44E8A3:				; CODE XREF: .text:0044E885j
		cmp	dword ptr [ebx], 3
		jnz	short loc_44E8AF
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_44E8B4
; ---------------------------------------------------------------------------

loc_44E8AF:				; CODE XREF: .text:0044E8A6j
		mov	ecx, [esi]
		mov	[ebp-8], ecx

loc_44E8B4:				; CODE XREF: .text:0044E8ADj
		push	edx		; reg
		mov	edx, [ebp+14h]
		push	edx		; da
		mov	eax, [ebp+10h]
		push	eax		; src
		push	edi		; arglist
		call	loc_44CA4C
		add	esp, 10h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jbe	short loc_44E91D
		mov	edx, [ebp+14h]
		test	byte ptr [edx+1Ah], 80h
		jz	short loc_44E91D
		push	edi		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	loc_44E9C8
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_44E9C8
		cmp	VersionInformation.dwMajorVersion, 5
		jb	loc_44E9C8
		mov	ecx, [eax+14h]
		and	ecx, 0FFh
		cmp	ecx, 2
		jnz	loc_44E9C8
		xor	eax, eax
		mov	[ebp-0Ch], eax
		jmp	loc_44E9C8
; ---------------------------------------------------------------------------

loc_44E91D:				; CODE XREF: .text:0044E8CDj
					; .text:0044E8D6j
		mov	eax, [ebx]
		cmp	eax, 6
		jz	short loc_44E94C
		cmp	eax, 8
		jz	short loc_44E94C
		cmp	eax, 9
		jz	short loc_44E94C
		cmp	eax, 0Ah
		jz	short loc_44E94C
		cmp	eax, 0Eh
		jz	short loc_44E94C
		cmp	eax, 10h
		jz	short loc_44E94C
		cmp	eax, 7
		jz	short loc_44E94C
		cmp	eax, 0Bh
		jz	short loc_44E94C
		cmp	eax, 0Dh
		jnz	short loc_44E9C3

loc_44E94C:				; CODE XREF: .text:0044E922j
					; .text:0044E927j ...
		mov	edx, [ebp+14h]
		mov	ecx, [edx+14h]
		and	ecx, 1Fh
		mov	[ebp-10h], ecx
		mov	eax, [ebp+14h]
		cmp	dword ptr [eax+2Ch], 0
		jz	short loc_44E968
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	short loc_44E9C8
; ---------------------------------------------------------------------------

loc_44E968:				; CODE XREF: .text:0044E95Fj
		mov	eax, [ebx]
		cmp	eax, 7
		jz	short loc_44E97E
		cmp	eax, 9
		jz	short loc_44E97E
		cmp	eax, 0Bh
		jz	short loc_44E97E
		cmp	eax, 0Dh
		jnz	short loc_44E9C8

loc_44E97E:				; CODE XREF: .text:0044E96Dj
					; .text:0044E972j ...
		cmp	dword_5CBB78, 0
		jz	short loc_44E9A5
		cmp	dword ptr [ebp-10h], 0Ch
		jnz	short loc_44E9A5
		mov	edx, [ebp+14h]
		mov	ecx, [edx+40h]
		push	ecx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Issystem
		pop	ecx
		test	eax, eax
		jnz	short loc_44E9C8

loc_44E9A5:				; CODE XREF: .text:0044E985j
					; .text:0044E98Bj
		cmp	dword ptr [ebp-10h], 5
		jnz	short loc_44E9BC
		cmp	dword_5CBB7C, 0
		jz	short loc_44E9BC
		cmp	edi, userspacelimit
		jb	short loc_44E9C8

loc_44E9BC:				; CODE XREF: .text:0044E9A9j
					; .text:0044E9B2j
		xor	eax, eax
		mov	[ebp-0Ch], eax
		jmp	short loc_44E9C8
; ---------------------------------------------------------------------------

loc_44E9C3:				; CODE XREF: .text:0044E94Aj
		xor	edx, edx
		mov	[ebp-0Ch], edx

loc_44E9C8:				; CODE XREF: .text:0044E8E1j
					; .text:0044E8EEj ...
		push	0		; subaddr
		push	edi		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_44EA21
		mov	ecx, [ebp-14h]
		test	byte ptr [ecx+0Ah], 1
		jz	short loc_44EA21
		cmp	dword ptr [ebx+18h], 0
		jz	short loc_44EA02
		push	offset aTemporarilyRem ; "Temporarily removed INT3 already pendin"...
		call	_T
		pop	ecx
		push	eax		; format
		call	loc_401D68
		pop	ecx

loc_44EA02:				; CODE XREF: .text:0044E9EEj
		push	0FFFFFFFFh
		mov	eax, [ebp-14h]
		push	eax
		call	loc_497418
		add	esp, 8
		mov	[ebx+18h], edi
		mov	edx, [esi]
		mov	[ebp-8], edx
		mov	dword ptr [ebp-4], 1
		jmp	short loc_44EA26
; ---------------------------------------------------------------------------

loc_44EA21:				; CODE XREF: .text:0044E9DFj
					; .text:0044E9E8j
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_44EA26:				; CODE XREF: .text:0044EA1Fj
		cmp	dword ptr [ebp-0Ch], 0
		jbe	short loc_44EA6B
		push	0
		push	0
		push	0
		push	4000h
		mov	eax, [ebp-0Ch]
		add	eax, edi
		push	eax
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_44EA66
		push	edi		; arglist
		push	offset aOllydbgIsUna_5 ; "OllyDbg is unable to step over the comm"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_44EBED
; ---------------------------------------------------------------------------

loc_44EA66:				; CODE XREF: .text:0044EA47j
		mov	edx, [esi]
		mov	[ebp-8], edx

loc_44EA6B:				; CODE XREF: .text:0044EA2Aj
		mov	eax, kiuserexcept
		test	eax, eax
		jz	short loc_44EAB0
		cmp	dword ptr [esi+6C8h], 0
		jz	short loc_44EAB0
		push	0
		push	0
		push	0
		push	4000h
		push	eax
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_44EAB0
		mov	edx, kiuserexcept
		push	edx		; arglist
		push	offset aOllydbgIsUnabl ; "OllyDbg is unable to set temporary brea"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8

loc_44EAB0:				; CODE XREF: .text:0044EA72j
					; .text:0044EA7Bj ...
		cmp	dword_5C8A90, 0
		jz	short loc_44EB03
		cmp	ntqueryinfo, 0
		jz	short loc_44EB03
		cmp	VersionInformation.dwPlatformId, 1
		jz	short loc_44EB03
		push	0
		push	0
		push	0
		push	4000h
		mov	ecx, ntqueryinfo
		push	ecx
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_44EB03
		mov	eax, ntqueryinfo
		push	eax		; arglist
		push	offset aOllydbgIsUn_10 ; "OllyDbg is unable to set temporary brea"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8

loc_44EB03:				; CODE XREF: .text:0044EAB7j
					; .text:0044EAC0j ...
		cmp	dword_5CBB98, 0
		jz	short loc_44EB4E
		xor	edi, edi
		jmp	short loc_44EB46
; ---------------------------------------------------------------------------

loc_44EB10:				; CODE XREF: .text:0044EB4Cj
		push	edi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_44EB45
		cmp	dword ptr [eax+4ECh], 0
		jz	short loc_44EB45
		lea	edx, [eax+328h]
		push	edx		; int
		push	0		; int
		push	0		; src
		mov	eax, [eax+330h]
		push	eax		; int
		call	loc_44D6A0
		add	esp, 10h

loc_44EB45:				; CODE XREF: .text:0044EB20j
					; .text:0044EB29j
		inc	edi

loc_44EB46:				; CODE XREF: .text:0044EB0Ej
		cmp	edi, thread.sorted.n
		jl	short loc_44EB10

loc_44EB4E:				; CODE XREF: .text:0044EB0Aj
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_44EB83
		cmp	dword ptr [ebp-4], 1
		jz	short loc_44EB5F
		cmp	dword ptr [ebx], 3
		jz	short loc_44EB83

loc_44EB5F:				; CODE XREF: .text:0044EB58j
		test	byte ptr [esi+355h], 1
		jnz	short loc_44EB83
		or	dword ptr [esi+354h], 100h
		or	dword ptr [esi+328h], 1
		mov	dword ptr [esi+6C4h], 1

loc_44EB83:				; CODE XREF: .text:0044EB52j
					; .text:0044EB5Dj ...
		mov	ecx, [ebp-8]
		push	ecx		; arglist
		call	loc_4503B8
		pop	ecx
		test	eax, eax
		jz	short loc_44EB96
		or	eax, 0FFFFFFFFh
		jmp	short loc_44EBED
; ---------------------------------------------------------------------------

loc_44EB96:				; CODE XREF: .text:0044EB8Fj
		mov	edx, [ebp-8]
		mov	[ebx+4], edx
		push	1
		call	loc_44C84C
		pop	ecx
		call	Flushmemorycache
		push	0		; dwSize
		push	0		; lpBaseAddress
		mov	ecx, process
		push	ecx		; hProcess
		call	FlushInstructionCache
		cmp	dword ptr [ebx+88h], 103h
		jnz	short loc_44EBD1
		mov	dword ptr [ebx+88h], 80010001h
		jmp	short loc_44EBE3
; ---------------------------------------------------------------------------

loc_44EBD1:				; CODE XREF: .text:0044EBC3j
		push	80010001h	; dwContinueStatus
		mov	eax, [ebx+2Ch]
		push	eax		; dwThreadId
		mov	edx, [ebx+28h]
		push	edx		; dwProcessId
		call	ContinueDebugEvent

loc_44EBE3:				; CODE XREF: .text:0044EBCFj
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+84h], ecx

loc_44EBED:				; CODE XREF: .text:0044E80Bj
					; .text:0044E81Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44EBF4:				; CODE XREF: .text:00452847p
					; .text:00452D49p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB4h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		cmp	esi, zwcontinue
		jnz	loc_44ECD5
		cmp	bphard.sorted.n, 0
		jle	loc_44ECD5
		push	1		; mode
		push	4		; size
		mov	eax, [edi+1Ch]
		add	eax, 4
		push	eax		; _addr
		lea	edx, [ebp-4]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	loc_44ECD5
		push	0
		lea	eax, [ebp-34h]
		push	eax
		call	loc_44BE60
		add	esp, 8
		mov	ebx, eax
		test	bl, 1
		jz	short loc_44EC6A
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-4]
		add	eax, 4
		push	eax		; _addr
		lea	edx, [ebp-34h]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_44EC6A:				; CODE XREF: .text:0044EC51j
		test	bl, 2
		jz	short loc_44EC86
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-4]
		add	ecx, 8
		push	ecx		; _addr
		lea	eax, [ebp-30h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h

loc_44EC86:				; CODE XREF: .text:0044EC6Dj
		test	bl, 4
		jz	short loc_44ECA2
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-4]
		add	edx, 0Ch
		push	edx		; _addr
		lea	ecx, [ebp-2Ch]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h

loc_44ECA2:				; CODE XREF: .text:0044EC89j
		test	bl, 8
		jz	short loc_44ECBE
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-4]
		add	eax, 10h
		push	eax		; _addr
		lea	edx, [ebp-28h]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_44ECBE:				; CODE XREF: .text:0044ECA5j
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-4]
		add	ecx, 18h
		push	ecx		; _addr
		lea	eax, [ebp-18h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h

loc_44ECD5:				; CODE XREF: .text:0044EC09j
					; .text:0044EC16j ...
		cmp	esi, kiuserexcept
		jnz	short loc_44ED38
		push	1		; mode
		push	4		; size
		mov	edx, [edi+1Ch]
		add	edx, 4
		push	edx		; _addr
		lea	ecx, [ebp-4]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	short loc_44ED38
		add	dword ptr [ebp-4], 0C0h
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-4]
		push	eax		; _addr
		lea	edx, [ebp-8]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	short loc_44ED38
		and	dword ptr [ebp-8], 0FFFFFEFFh
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-4]
		push	eax		; _addr
		lea	edx, [ebp-8]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_44ED38:				; CODE XREF: .text:0044ECDBj
					; .text:0044ECF9j ...
		cmp	esi, ntqueryinfo
		jnz	loc_44EDCC
		cmp	dword_5C8A90, 0
		jz	short loc_44EDCC
		push	1		; mode
		push	18h		; size
		mov	ecx, [edi+1Ch]
		push	ecx		; _addr
		lea	eax, [ebp-4Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 18h
		jnz	short loc_44EDCC
		cmp	dword ptr [ebp-48h], 0FFFFFFFFh
		jnz	short loc_44EDCC
		cmp	dword ptr [ebp-44h], 7
		jnz	short loc_44EDCC
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_44EDCC
		cmp	dword ptr [ebp-3Ch], 4
		jnz	short loc_44EDCC
		xor	eax, eax
		mov	[ebp-0Ch], eax
		push	3		; mode
		push	4		; size
		mov	edx, [ebp-40h]
		push	edx		; _addr
		lea	ecx, [ebp-0Ch]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	short loc_44EDCC
		mov	eax, [ebp-38h]
		test	eax, eax
		jz	short loc_44EDBF
		mov	dword ptr [ebp-0Ch], 4
		push	3		; mode
		push	4		; size
		push	eax		; _addr
		lea	edx, [ebp-0Ch]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_44EDBF:				; CODE XREF: .text:0044EDA5j
		add	dword ptr [edi+1Ch], 18h
		mov	esi, [ebp-4Ch]
		mov	[edi+8], esi
		or	dword ptr [edi], 1

loc_44EDCC:				; CODE XREF: .text:0044ED3Ej
					; .text:0044ED4Bj ...
		cmp	esi, dword_5D5530
		jnz	short loc_44EE09
		push	1		; mode
		push	4		; size
		mov	ecx, [edi+1Ch]
		add	ecx, 4
		push	ecx		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	short loc_44EE09
		mov	eax, [edi+0Ch]
		lea	edx, [ebp-14h]
		mov	[ebp-14h], eax
		push	edx		; item
		push	offset encaddr	; sd
		call	Addsorteddata
		add	esp, 8

loc_44EE09:				; CODE XREF: .text:0044EDD2j
					; .text:0044EDF0j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
