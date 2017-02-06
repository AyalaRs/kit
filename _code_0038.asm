.code

; INT_PTR __stdcall loc_43423C(HWND, UINT, WPARAM, LPARAM)
loc_43423C:				; DATA XREF: .text:0043512Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		cmp	eax, 112h
		jg	short loc_434271
		jz	loc_435066
		sub	eax, 110h
		jz	short loc_43428A
		dec	eax
		jz	loc_4344C2
		jmp	loc_435083
; ---------------------------------------------------------------------------

loc_434271:				; CODE XREF: .text:00434256j
		sub	eax, 133h
		jz	loc_434491
		sub	eax, 5
		jz	loc_434451
		jmp	loc_435083
; ---------------------------------------------------------------------------

loc_43428A:				; CODE XREF: .text:00434263j
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		mov	edx, rtcond.inrange0
		push	edx		; u
		lea	ecx, [ebp-210h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	962h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	edx, rtcond.inrange1
		push	edx		; u
		lea	ecx, [ebp-210h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	963h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	edx, rtcond.outrange0
		push	edx		; u
		lea	ecx, [ebp-210h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	965h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	edx, rtcond.outrange1
		push	edx		; u
		lea	ecx, [ebp-210h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	966h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		xor	ebx, ebx
		mov	edi, offset rtcond.memrange0

loc_43433F:				; CODE XREF: .text:0043439Cj
		mov	eax, [edi]
		push	eax		; u
		lea	edx, [ebp-210h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		mov	eax, ebx
		shl	eax, 2
		lea	ecx, [ebp-210h]
		push	ecx		; lpString
		add	eax, 96Bh
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	edx, [edi+8]
		push	edx		; u
		lea	ecx, [ebp-210h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	edx, ebx
		shl	edx, 2
		lea	eax, [ebp-210h]
		push	eax		; lpString
		add	edx, 96Ch
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		inc	ebx
		add	edi, 4
		cmp	ebx, 2
		jl	short loc_43433F
		xor	ebx, ebx

loc_4343A0:				; CODE XREF: .text:004343C1j
		mov	eax, ebx
		mov	edx, ebx
		shl	eax, 9
		add	edx, edx
		add	eax, offset rtcond.cond
		add	edx, 97Fh
		push	eax		; lpString
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		inc	ebx
		cmp	ebx, 4
		jl	short loc_4343A0
		mov	ecx, rtcond.count
		lea	eax, [ebp-210h]
		push	ecx
		push	offset aU__0	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	989h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	ecx, rtcond.currcount
		lea	eax, [ebp-210h]
		push	ecx
		push	offset aU__0	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	98Ah		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		xor	ebx, ebx

loc_43441F:				; CODE XREF: .text:00434440j
		mov	eax, ebx
		mov	edx, ebx
		shl	eax, 9
		add	edx, edx
		add	eax, offset rtcond.cmd
		add	edx, 994h
		push	eax		; lpString
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		inc	ebx
		cmp	ebx, 2
		jl	short loc_43441F
		mov	g_dialog.initdone, 1
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434451:				; CODE XREF: .text:0043427Fj
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 99Ch
		jz	short loc_434468
		xor	eax, eax
		jmp	loc_43508C
; ---------------------------------------------------------------------------

loc_434468:				; CODE XREF: .text:0043445Fj
		mov	edx, color+30h
		push	edx		; COLORREF
		mov	ebx, edi
		push	ebx		; HDC
		call	SetTextColor
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_43508C
; ---------------------------------------------------------------------------

loc_434491:				; CODE XREF: .text:00434276j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 98Ah
		jz	short loc_4344A8
		xor	eax, eax
		jmp	loc_43508C
; ---------------------------------------------------------------------------

loc_4344A8:				; CODE XREF: .text:0043449Fj
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	edi		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_43508C
; ---------------------------------------------------------------------------

loc_4344C2:				; CODE XREF: .text:00434266j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_435087
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		push	edi		; wp
		push	eax		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, edi
		shr	eax, 10h
		cmp	ax, 300h
		jnz	loc_434651
		cmp	g_dialog.initdone, 0
		jz	loc_434651
		push	(offset	aOd_empty+0Fh) ; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, edi
		and	ax, 0FFFFh
		cmp	ax, 962h
		jz	short loc_434521
		cmp	ax, 963h
		jnz	short loc_434544

loc_434521:				; CODE XREF: .text:00434519j
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		push	961h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		or	rtcond.options,	100h
		jmp	loc_4345F4
; ---------------------------------------------------------------------------

loc_434544:				; CODE XREF: .text:0043451Fj
		mov	eax, edi
		and	ax, 0FFFFh
		cmp	ax, 965h
		jz	short loc_434556
		cmp	ax, 966h
		jnz	short loc_434576

loc_434556:				; CODE XREF: .text:0043454Ej
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		push	964h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		or	rtcond.options,	200h
		jmp	short loc_4345F4
; ---------------------------------------------------------------------------

loc_434576:				; CODE XREF: .text:00434554j
		cmp	ax, 989h
		jnz	short loc_4345F4
		push	100h		; nMaxCount
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	989h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		xor	ecx, ecx
		lea	eax, [ebp-4]
		mov	[ebp-4], ecx
		push	eax
		lea	edx, [ebp-210h]
		push	(offset	aII+6)	; format
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4345D6
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		push	988h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		or	rtcond.options,	400h
		jmp	short loc_4345F4
; ---------------------------------------------------------------------------

loc_4345D6:				; CODE XREF: .text:004345B4j
		push	0		; lParam
		push	0		; wParam
		push	0F1h		; Msg
		push	988h		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		and	rtcond.options,	0FFFFFBFFh

loc_4345F4:				; CODE XREF: .text:0043453Fj
					; .text:00434574j ...
		xor	ebx, ebx

loc_4345F6:				; CODE XREF: .text:0043464Fj
		mov	edx, edi
		mov	eax, ebx
		and	dx, 0FFFFh
		movzx	ecx, dx
		shl	eax, 2
		mov	edx, eax
		add	edx, 96Bh
		cmp	ecx, edx
		jz	short loc_434627
		mov	ecx, edi
		and	cx, 0FFFFh
		movzx	edx, cx
		mov	ecx, eax
		add	ecx, 96Ch
		cmp	edx, ecx
		jnz	short loc_43464B

loc_434627:				; CODE XREF: .text:0043460Fj
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		add	eax, 96Ah
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 1000h
		shl	eax, cl
		or	rtcond.options,	eax

loc_43464B:				; CODE XREF: .text:00434625j
		inc	ebx
		cmp	ebx, 2
		jl	short loc_4345F6

loc_434651:				; CODE XREF: .text:004344ECj
					; .text:004344F9j
		mov	eax, edi
		shr	eax, 10h
		cmp	ax, 5
		jz	short loc_434666
		cmp	ax, 9
		jnz	loc_4347FA

loc_434666:				; CODE XREF: .text:0043465Aj
		cmp	g_dialog.initdone, 0
		jz	loc_4347FA
		push	(offset	aOd_empty+0Fh) ; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		xor	ebx, ebx

loc_434685:				; CODE XREF: .text:004346CAj
		mov	edx, edi
		mov	eax, ebx
		and	dx, 0FFFFh
		movzx	ecx, dx
		shl	eax, 2
		mov	edx, eax
		add	edx, 96Dh
		cmp	ecx, edx
		jnz	short loc_4346C6
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		add	eax, 96Ah
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 1000h
		shl	eax, cl
		or	rtcond.options,	eax
		jmp	short loc_4346CC
; ---------------------------------------------------------------------------

loc_4346C6:				; CODE XREF: .text:0043469Ej
		inc	ebx
		cmp	ebx, 2
		jl	short loc_434685

loc_4346CC:				; CODE XREF: .text:004346C4j
		xor	ebx, ebx

loc_4346CE:				; CODE XREF: .text:0043475Dj
		mov	eax, ebx
		add	eax, eax
		add	eax, 97Fh
		mov	edx, edi
		and	dx, 0FFFFh
		movzx	ecx, dx
		cmp	eax, ecx
		jnz	short loc_434759
		push	100h		; nMaxCount
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		cmp	word ptr [ebp-210h], 0
		jnz	short loc_43472E
		mov	eax, ebx
		push	0		; lParam
		push	0		; wParam
		add	eax, eax
		add	eax, 97Eh
		push	0F1h		; Msg
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		not	eax
		and	rtcond.options,	eax
		jmp	short loc_434763
; ---------------------------------------------------------------------------

loc_43472E:				; CODE XREF: .text:00434700j
		mov	edx, ebx
		push	0		; lParam
		push	1		; wParam
		add	edx, edx
		add	edx, 97Eh
		push	0F1h		; Msg
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		or	rtcond.options,	eax
		jmp	short loc_434763
; ---------------------------------------------------------------------------

loc_434759:				; CODE XREF: .text:004346E3j
		inc	ebx
		cmp	ebx, 4
		jl	loc_4346CE

loc_434763:				; CODE XREF: .text:0043472Cj
					; .text:00434757j
		xor	ebx, ebx

loc_434765:				; CODE XREF: .text:004347F4j
		mov	eax, ebx
		add	eax, eax
		add	eax, 994h
		mov	edx, edi
		and	dx, 0FFFFh
		movzx	ecx, dx
		cmp	eax, ecx
		jnz	short loc_4347F0
		push	100h		; nMaxCount
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		cmp	word ptr [ebp-210h], 0
		jnz	short loc_4347C5
		mov	eax, ebx
		push	0		; lParam
		push	0		; wParam
		add	eax, eax
		add	eax, 993h
		push	0F1h		; Msg
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		not	eax
		and	rtcond.options,	eax
		jmp	short loc_4347FA
; ---------------------------------------------------------------------------

loc_4347C5:				; CODE XREF: .text:00434797j
		mov	edx, ebx
		push	0		; lParam
		push	1		; wParam
		add	edx, edx
		add	edx, 993h
		push	0F1h		; Msg
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		or	rtcond.options,	eax
		jmp	short loc_4347FA
; ---------------------------------------------------------------------------

loc_4347F0:				; CODE XREF: .text:0043477Aj
		inc	ebx
		cmp	ebx, 2
		jl	loc_434765

loc_4347FA:				; CODE XREF: .text:00434660j
					; .text:0043466Dj ...
		and	di, 0FFFFh
		dec	di
		jz	short loc_43484B
		dec	di
		jz	loc_435059
		sub	di, 989h
		jnz	loc_435087
		xor	eax, eax
		mov	rtcond.currcount, eax
		push	eax
		push	offset aU__0	; format
		lea	edx, [ebp-210h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-210h]
		push	ecx		; lpString
		push	98Ah		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_43484B:				; CODE XREF: .text:00434802j
		push	100h		; nMaxCount
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	962h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		xor	edx, edx
		mov	rtcond.inrange0, edx
		push	offset rtcond.inrange0
		push	offset asc_52884A ; format
		lea	ecx, [ebp-210h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	963h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		xor	edx, edx
		mov	rtcond.inrange1, edx
		push	offset rtcond.inrange1
		push	offset asc_52884A ; format
		lea	ecx, [ebp-210h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		test	byte ptr rtcond.options+1, 1
		jz	loc_434997
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_4348EB
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_4348EB
		mov	eax, rtcond.inrange0
		cmp	eax, rtcond.inrange1
		jb	loc_434997

loc_4348EB:				; CODE XREF: .text:004348D2j
					; .text:004348D8j
		cmp	dword ptr [ebp-8], 1
		jz	short loc_43491E
		push	offset aInvalidLowInRa ; "Invalid low in range limit"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	962h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_43491E:				; CODE XREF: .text:004348EFj
		cmp	dword ptr [ebp-0Ch], 1
		jz	short loc_434951
		push	offset aInvalidHighInR ; "Invalid high in range	limit"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	963h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434951:				; CODE XREF: .text:00434922j
		mov	edx, rtcond.inrange0
		cmp	edx, rtcond.inrange1
		jnz	short loc_43497B
		push	offset aEmptyInRange ; "Empty in range"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_43497B:				; CODE XREF: .text:0043495Dj
		push	offset aLowInLimitExce ; "Low in limit exceeds high limit"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434997:				; CODE XREF: .text:004348C8j
					; .text:004348E5j
		push	100h		; nMaxCount
		lea	ecx, [ebp-210h]
		push	ecx		; lpString
		push	965h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		xor	eax, eax
		mov	rtcond.outrange0, eax
		push	offset rtcond.outrange0
		push	offset asc_52884A ; format
		lea	edx, [ebp-210h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		lea	ecx, [ebp-210h]
		push	ecx		; lpString
		push	966h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		xor	eax, eax
		mov	rtcond.outrange1, eax
		push	offset rtcond.outrange1
		push	offset asc_52884A ; format
		lea	edx, [ebp-210h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		test	byte ptr rtcond.options+1, 2
		jz	loc_434AE1
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_434A36
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_434A36
		mov	ecx, rtcond.outrange0
		cmp	ecx, rtcond.outrange1
		jb	loc_434AE1

loc_434A36:				; CODE XREF: .text:00434A1Cj
					; .text:00434A22j
		cmp	dword ptr [ebp-8], 1
		jz	short loc_434A69
		push	offset aInvalidLowOutR ; "Invalid low out range	limit"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	965h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434A69:				; CODE XREF: .text:00434A3Aj
		cmp	dword ptr [ebp-0Ch], 1
		jz	short loc_434A9C
		push	offset aInvalidHighOut ; "Invalid high out range limit"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	966h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434A9C:				; CODE XREF: .text:00434A6Dj
		mov	eax, rtcond.outrange0
		cmp	eax, rtcond.outrange1
		jnz	short loc_434AC5
		push	offset aEmptyOutRange ;	"Empty out range"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434AC5:				; CODE XREF: .text:00434AA7j
		push	offset aLowOutLimitExc ; "Low out limit	exceeds	high limit"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434AE1:				; CODE XREF: .text:00434A12j
					; .text:00434A30j
		xor	ebx, ebx
		mov	edi, offset rtcond.memrange0

loc_434AE8:				; CODE XREF: .text:00434CB3j
		mov	edx, ebx
		lea	eax, [ebp-210h]
		shl	edx, 2
		push	100h		; nMaxCount
		push	eax		; lpString
		add	edx, 96Bh
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		mov	eax, ebx
		xor	ecx, ecx
		shl	eax, 2
		mov	[edi], ecx
		add	eax, offset rtcond.memrange0
		lea	edx, [ebp-210h]
		push	eax
		push	offset asc_52884A ; format
		push	edx		; buffer
		call	_swscanf
		mov	[ebp-8], eax
		add	esp, 0Ch
		mov	eax, ebx
		lea	ecx, [ebp-210h]
		shl	eax, 2
		push	100h		; nMaxCount
		push	ecx		; lpString
		add	eax, 96Ch
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		mov	ecx, ebx
		xor	edx, edx
		shl	ecx, 2
		mov	[edi+8], edx
		add	ecx, offset rtcond.memrange1
		lea	eax, [ebp-210h]
		push	ecx
		push	offset asc_52884A ; format
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	ecx, ebx
		mov	edx, 1000h
		shl	edx, cl
		and	edx, rtcond.options
		jz	loc_434CAC
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_434B9E
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_434B9E
		mov	eax, [edi]
		cmp	eax, [edi+8]
		jb	loc_434CAC

loc_434B9E:				; CODE XREF: .text:00434B8Bj
					; .text:00434B91j
		lea	edx, [ebx+1]
		push	edx
		push	offset aMemoryRangeI ; "Memory range %i: "
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-210h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-8], 1
		jz	short loc_434C03
		push	offset aInvalidLowLimi ; "Invalid low limit"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-210h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		shl	ebx, 2
		add	ebx, 96Bh
		push	ebx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_434C90
; ---------------------------------------------------------------------------

loc_434C03:				; CODE XREF: .text:00434BC4j
		cmp	dword ptr [ebp-0Ch], 1
		jz	short loc_434C43
		push	offset aInvalidHighLim ; "Invalid high limit"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-210h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		shl	ebx, 2
		add	ebx, 96Ch
		push	ebx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	short loc_434C90
; ---------------------------------------------------------------------------

loc_434C43:				; CODE XREF: .text:00434C07j
		mov	edx, [edi]
		cmp	edx, [edi+8]
		jnz	short loc_434C6E
		push	offset aEmptyRange_0 ; "Empty range"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-210h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		jmp	short loc_434C90
; ---------------------------------------------------------------------------

loc_434C6E:				; CODE XREF: .text:00434C48j
		push	offset aLowLimitExceed ; "Low limit exceeds high limit"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-210h]
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 8

loc_434C90:				; CODE XREF: .text:00434BFEj
					; .text:00434C41j ...
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, 1
		jmp	loc_43508C
; ---------------------------------------------------------------------------

loc_434CAC:				; CODE XREF: .text:00434B81j
					; .text:00434B98j
		inc	ebx
		add	edi, 4
		cmp	ebx, 2
		jl	loc_434AE8
		xor	ebx, ebx
		mov	edi, offset rtcond.ccomp

loc_434CC0:				; CODE XREF: .text:00434DBDj
		mov	eax, ebx
		mov	edx, ebx
		shl	eax, 9
		add	edx, edx
		add	eax, offset rtcond.cond
		push	100h		; nMaxCount
		push	eax		; lpString
		add	edx, 97Fh
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	GetWindowTextW
		mov	byte ptr [edi],	0
		lea	ecx, [ebp-410h]
		mov	eax, ebx
		push	1		; mode
		push	ecx		; err
		mov	edx, ebx
		shl	eax, 8
		push	0		; explen
		shl	edx, 9
		add	eax, offset rtcond.ccomp
		push	100h		; nexpr
		push	eax		; cexpr
		add	edx, offset rtcond.cond
		push	edx		; expression
		call	Cexpression
		add	esp, 18h
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		and	eax, rtcond.options
		jz	loc_434DB3
		cmp	word ptr [ebp-410h], 0
		jz	short loc_434DB3
		lea	edx, [ebx+1]
		push	edx
		push	offset aConditionI ; "Condition	%i: "
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-210h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	eax, [ebp-410h]
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-4]
		push	edx		; n
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-210h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		add	ebx, ebx
		add	ebx, 97Fh
		push	ebx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		mov	eax, 1
		jmp	loc_43508C
; ---------------------------------------------------------------------------

loc_434DB3:				; CODE XREF: .text:00434D2Aj
					; .text:00434D38j
		inc	ebx
		add	edi, 100h
		cmp	ebx, 4
		jl	loc_434CC0
		push	100h		; nMaxCount
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	989h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		xor	ecx, ecx
		mov	rtcond.count, ecx
		push	offset rtcond.count
		push	(offset	aII+6)	; format
		lea	eax, [ebp-210h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	[ebp-8], eax
		test	byte ptr rtcond.options+1, 4
		jz	loc_434EB1
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_434E2C
		cmp	rtcond.count, 0
		jz	short loc_434E2C
		mov	edx, rtcond.count
		cmp	edx, rtcond.currcount
		ja	loc_434EB1

loc_434E2C:				; CODE XREF: .text:00434E0Fj
					; .text:00434E18j
		cmp	dword ptr [ebp-8], 1
		jz	short loc_434E5F
		push	offset aInvalidCount ; "Invalid	count"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	989h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434E5F:				; CODE XREF: .text:00434E30j
		cmp	rtcond.count, 0
		jnz	short loc_434E95
		push	offset aCountIsZero ; "Count is	zero"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	989h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434E95:				; CODE XREF: .text:00434E66j
		push	offset aCountIsSameAsO ; "Count	is same	as or lower than actual	c"...
		call	_T
		pop	ecx
		push	eax		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_435087
; ---------------------------------------------------------------------------

loc_434EB1:				; CODE XREF: .text:00434E05j
					; .text:00434E26j
		xor	ebx, ebx
		mov	edi, offset rtcond.nmodel

loc_434EB8:				; CODE XREF: .text:00434FD7j
		mov	eax, ebx
		add	eax, eax
		add	eax, 994h
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	edx, ebx
		mov	[ebp-10h], eax
		shl	edx, 9
		push	100h		; nMaxCount
		add	edx, offset rtcond.cmd
		push	edx		; lpString
		mov	ecx, [ebp-10h]
		push	ecx		; hWnd
		call	GetWindowTextW
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		and	eax, rtcond.options
		jnz	short loc_434F0C
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		not	eax
		and	rtcond.validmodels, eax
		jmp	loc_434FD0
; ---------------------------------------------------------------------------

loc_434F0C:				; CODE XREF: .text:00434EF4j
		mov	eax, ebx
		lea	edx, [ebp-410h]
		shl	eax, 9
		push	edx		; errtxt
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
		mov	[edi], eax
		cmp	dword ptr [edi], 0
		jle	short loc_434F5A
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		or	rtcond.validmodels, eax
		jmp	short loc_434FD0
; ---------------------------------------------------------------------------

loc_434F5A:				; CODE XREF: .text:00434F47j
		lea	edx, [ebx+1]
		push	edx
		push	offset aCommandI ; "Command %i:	"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-210h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		lea	eax, [ebp-410h]
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-210h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	99Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		not	eax
		and	rtcond.validmodels, eax
		mov	edx, [ebp-10h]
		push	edx		; hWnd
		call	SetFocus
		jmp	short loc_434FDD
; ---------------------------------------------------------------------------

loc_434FD0:				; CODE XREF: .text:00434F07j
					; .text:00434F58j
		inc	ebx
		add	edi, 4
		cmp	ebx, 2
		jl	loc_434EB8

loc_434FDD:				; CODE XREF: .text:00434FCEj
		cmp	ebx, 2
		jl	loc_435087
		xor	ebx, ebx

loc_434FE8:				; CODE XREF: .text:00435017j
		mov	eax, ebx
		add	eax, eax
		add	eax, 97Fh
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-10h], eax
		mov	edx, ebx
		shl	edx, 9
		add	edx, offset rtcond.cond
		push	edx		; s
		mov	ecx, [ebp-10h]
		push	ecx		; hc
		call	Addstringtocombolist
		add	esp, 8
		inc	ebx
		cmp	ebx, 4
		jl	short loc_434FE8
		xor	ebx, ebx

loc_43501B:				; CODE XREF: .text:0043504Aj
		mov	eax, ebx
		add	eax, eax
		add	eax, 994h
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-10h], eax
		mov	edx, ebx
		shl	edx, 9
		add	edx, offset rtcond.cmd
		push	edx		; s
		mov	ecx, [ebp-10h]
		push	ecx		; hc
		call	Addstringtocombolist
		add	esp, 8
		inc	ebx
		cmp	ebx, 2
		jl	short loc_43501B
		push	1		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_435087
; ---------------------------------------------------------------------------

loc_435059:				; CODE XREF: .text:00434807j
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_435087
; ---------------------------------------------------------------------------

loc_435066:				; CODE XREF: .text:00434258j
		and	edi, 0FFF0h
		cmp	edi, 0F060h
		jnz	short loc_43507F
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_43507F:				; CODE XREF: .text:00435072j
		xor	eax, eax
		jmp	short loc_43508C
; ---------------------------------------------------------------------------

loc_435083:				; CODE XREF: .text:0043426Cj
					; .text:00434285j
		xor	eax, eax
		jmp	short loc_43508C
; ---------------------------------------------------------------------------

loc_435087:				; CODE XREF: .text:0043444Cj
					; .text:004344CEj ...
		mov	eax, 1

loc_43508C:				; CODE XREF: .text:00434463j
					; .text:0043448Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 147. _Setrtcond
; Exported entry 715. Setrtcond

; void *__cdecl	Setrtcond(HWND hparent,	int x, int y, int fi)
		public Setrtcond
Setrtcond:				; CODE XREF: .text:0040B46Bp
		push	ebp		; _Setrtcond
		mov	ebp, esp
		push	eax
		mov	eax, 7

loc_4350A1:				; CODE XREF: .text:004350A9j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4350A1
		mov	eax, [ebp-4]
		add	esp, 0FFFFF3C4h
		push	ebx
		mov	ebx, offset g_dialog
		push	7C40h		; n
		push	offset rtcond	; src
		lea	eax, [ebp-7C40h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	offset aConditionToPau ; "Condition to pause run or hit	trace"
		call	_T
		pop	ecx
		mov	[ebx+4], eax
		mov	edx, [ebp+0Ch]
		mov	[ebx+30h], edx
		mov	ecx, [ebp+10h]
		mov	[ebx+34h], ecx
		mov	eax, [ebp+14h]
		mov	[ebx+38h], eax
		mov	dword ptr [ebx+3Ch], 20000000h
		mov	dword ptr [ebx+40h], 70h
		mov	dword ptr [ebx+44h], 71h
		mov	dword ptr [ebx+48h], 72h
		mov	dword ptr [ebx+4Ch], 73h
		mov	dword ptr [ebx+50h], 74h
		mov	dword ptr [ebx+54h], 75h
		mov	dword ptr [ebx], offset	stru_526734
		push	0		; dwInitParam
		push	offset loc_43423C ; lpDialogFunc
		mov	ecx, g_hInstance
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		test	eax, eax
		jnz	short loc_435165
		push	7C40h		; n
		lea	eax, [ebp-7C40h]
		push	eax		; src
		push	offset rtcond	; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_43518C
; ---------------------------------------------------------------------------

loc_435165:				; CODE XREF: .text:00435148j
		push	1034h		; n
		lea	edx, [ebp-7C40h]
		push	edx		; s2
		push	offset rtcond	; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_43518C
		mov	dword_5D5614, 1

loc_43518C:				; CODE XREF: .text:00435163j
					; .text:00435180j
		xor	ecx, ecx
		mov	[ebx], ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_435198(HWND, UINT, WPARAM, LPARAM)
loc_435198:				; DATA XREF: .text:00435A53o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD6Ch
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_4351D0
		dec	eax
		jz	loc_43529E
		dec	eax
		jz	loc_4359CB
		sub	eax, 26h
		jz	loc_43525E
		jmp	loc_4359E8
; ---------------------------------------------------------------------------

loc_4351D0:				; CODE XREF: .text:004351B2j
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		xor	ebx, ebx
		mov	edi, offset rtprot.memrange0

loc_4351E5:				; CODE XREF: .text:00435242j
		mov	eax, [edi]
		push	eax		; u
		lea	edx, [ebp-218h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		mov	eax, ebx
		shl	eax, 2
		lea	ecx, [ebp-218h]
		push	ecx		; lpString
		add	eax, 9CFh
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	edx, [edi+8]
		push	edx		; u
		lea	ecx, [ebp-218h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	edx, ebx
		shl	edx, 2
		lea	eax, [ebp-218h]
		push	eax		; lpString
		add	edx, 9D0h
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		inc	ebx
		add	edi, 4
		cmp	ebx, 2
		jl	short loc_4351E5
		push	0		; int
		push	esi		; hDlg
		call	loc_4287FC
		add	esp, 8
		mov	g_dialog.initdone, 1
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_43525E:				; CODE XREF: .text:004351C5j
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 9DFh
		jz	short loc_435275
		xor	eax, eax
		jmp	loc_4359F1
; ---------------------------------------------------------------------------

loc_435275:				; CODE XREF: .text:0043526Cj
		mov	edx, color+30h
		push	edx		; COLORREF
		mov	ebx, edi
		push	ebx		; HDC
		call	SetTextColor
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_4359F1
; ---------------------------------------------------------------------------

loc_43529E:				; CODE XREF: .text:004351B5j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_4359EC
		mov	edx, [ebp+14h]
		push	edx		; lp
		push	edi		; wp
		push	eax		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	ecx, edi
		shr	ecx, 10h
		cmp	cx, 300h
		jnz	loc_43536A
		cmp	g_dialog.initdone, 0
		jz	loc_43536A
		push	(offset	aOd_empty+0Fh) ; lpString
		push	9DFh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		xor	ebx, ebx

loc_4352EE:				; CODE XREF: .text:00435368j
		mov	edx, edi
		mov	eax, ebx
		and	dx, 0FFFFh
		movzx	ecx, dx
		shl	eax, 2
		mov	edx, eax
		add	edx, 9CFh
		cmp	ecx, edx
		jz	short loc_43531F
		mov	ecx, edi
		and	cx, 0FFFFh
		movzx	edx, cx
		mov	ecx, eax
		add	ecx, 9D0h
		cmp	edx, ecx
		jnz	short loc_435364

loc_43531F:				; CODE XREF: .text:00435307j
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		add	eax, 9CEh
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		or	rtprot.memranges, eax
		push	9C8h		; nIDCheckButton
		push	9C8h		; nIDLastButton
		push	9C5h		; nIDFirstButton
		push	esi		; hDlg
		call	CheckRadioButton
		mov	rtprot.tracelogtype, 3
		jmp	short loc_43536A
; ---------------------------------------------------------------------------

loc_435364:				; CODE XREF: .text:0043531Dj
		inc	ebx
		cmp	ebx, 2
		jl	short loc_4352EE

loc_43536A:				; CODE XREF: .text:004352C9j
					; .text:004352D6j ...
		mov	eax, edi
		shr	eax, 10h
		cmp	ax, 5
		jz	short loc_43537F
		cmp	ax, 9
		jnz	loc_435400

loc_43537F:				; CODE XREF: .text:00435373j
		cmp	g_dialog.initdone, 0
		jz	short loc_435400
		push	(offset	aOd_empty+0Fh) ; lpString
		push	9DFh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		xor	ebx, ebx

loc_43539A:				; CODE XREF: .text:004353FEj
		mov	edx, edi
		mov	eax, ebx
		and	dx, 0FFFFh
		movzx	ecx, dx
		shl	eax, 2
		mov	edx, eax
		add	edx, 9D1h
		cmp	ecx, edx
		jnz	short loc_4353FA
		push	0		; lParam
		push	1		; wParam
		push	0F1h		; Msg
		add	eax, 9CEh
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		or	rtprot.memranges, eax
		push	9C8h		; nIDCheckButton
		push	9C8h		; nIDLastButton
		push	9C5h		; nIDFirstButton
		push	esi		; hDlg
		call	CheckRadioButton
		mov	rtprot.tracelogtype, 3
		jmp	short loc_435400
; ---------------------------------------------------------------------------

loc_4353FA:				; CODE XREF: .text:004353B3j
		inc	ebx
		cmp	ebx, 2
		jl	short loc_43539A

loc_435400:				; CODE XREF: .text:00435379j
					; .text:00435386j ...
		mov	eax, edi
		shr	eax, 10h
		test	ax, ax
		jnz	short loc_435450
		mov	eax, edi
		and	ax, 0FFFFh
		cmp	ax, 9CEh
		jz	short loc_43541C
		cmp	ax, 9D2h
		jnz	short loc_435450

loc_43541C:				; CODE XREF: .text:00435414j
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	SendMessageW
		dec	eax
		jnz	short loc_435450
		push	9C8h		; nIDCheckButton
		push	9C8h		; nIDLastButton
		push	9C5h		; nIDFirstButton
		push	esi		; hDlg
		call	CheckRadioButton
		mov	rtprot.tracelogtype, 3

loc_435450:				; CODE XREF: .text:00435408j
					; .text:0043541Aj ...
		mov	ecx, edi
		and	cx, 0FFFFh
		movzx	eax, cx
		cmp	eax, 9DAh
		jg	short loc_435484
		jz	short loc_4354B9
		dec	eax
		jz	loc_435761
		dec	eax
		jz	loc_4359BE
		sub	eax, 9D6h
		jz	short loc_4354A9
		dec	eax
		jz	loc_43554B
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_435484:				; CODE XREF: .text:0043545Fj
		sub	eax, 9DBh
		jz	loc_435645
		dec	eax
		jz	loc_4356D9
		dec	eax
		jz	loc_435736
		dec	eax
		jz	loc_435751
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_4354A9:				; CODE XREF: .text:00435476j
		push	0		; int
		push	esi		; hDlg
		call	loc_4287FC
		add	esp, 8
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_4354B9:				; CODE XREF: .text:00435461j
		push	esi
		mov	esi, offset g_dialog
		lea	edi, [ebp-294h]
		mov	ecx, 1Fh
		rep movsd
		pop	esi
		push	0		; mode
		mov	eax, fi
		push	eax		; fi
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		lea	edx, [ebp-14h]
		push	edx		; rmax
		lea	ecx, [ebp-10h]
		push	ecx		; rmin
		push	offset aAddAddressRang ; "Add address range to protocol"
		call	_T
		pop	ecx
		push	eax		; _title
		push	esi		; hparent
		call	Getaddressrange
		add	esp, 20h
		mov	edi, offset g_dialog
		mov	ecx, 1Fh
		mov	ebx, eax
		push	esi
		lea	esi, [ebp-294h]
		rep movsd
		pop	esi
		push	esi		; hWnd
		call	SetFocus
		test	ebx, ebx
		jnz	loc_4359EC
		mov	eax, [ebp-14h]
		push	eax		; rmax
		mov	edx, [ebp-10h]
		push	edx		; rmin
		push	offset rtprot.range ; set
		call	Addrange
		add	esp, 0Ch
		mov	rtprot.rangeactive, 1
		mov	ecx, [ebp-10h]
		push	ecx		; int
		push	esi		; hDlg
		call	loc_4287FC
		add	esp, 8
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_43554B:				; CODE XREF: .text:00435479j
		shr	edi, 10h
		cmp	di, 2
		jnz	loc_4359EC
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	9D9h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SendMessageW
		mov	ebx, eax
		lea	eax, [ebp-14h]
		push	eax		; rmax
		lea	edx, [ebp-10h]
		push	edx		; rmin
		push	ebx		; index
		push	offset rtprot.range ; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	loc_4359EC
		push	esi
		lea	edi, [ebp-294h]
		mov	esi, offset g_dialog
		mov	ecx, 1Fh
		rep movsd
		pop	esi
		mov	edi, [ebp-10h]
		mov	eax, [ebp-14h]
		mov	edx, fi
		mov	[ebp-18h], eax
		push	80h		; mode
		push	edx		; fi
		push	0FFFFFFFFh	; y
		lea	ecx, [ebp-14h]
		push	0FFFFFFFFh	; x
		push	ecx		; rmax
		lea	eax, [ebp-10h]
		push	eax		; rmin
		push	offset aEditAddressRan ; "Edit address range to	protocol"
		call	_T
		pop	ecx
		push	eax		; _title
		push	esi		; hparent
		call	Getaddressrange
		add	esp, 20h
		mov	ebx, eax
		push	esi
		push	edi
		lea	esi, [ebp-294h]
		mov	edi, offset g_dialog
		mov	ecx, 1Fh
		rep movsd
		pop	edi
		pop	esi
		push	esi		; hWnd
		call	SetFocus
		test	ebx, ebx
		jnz	loc_4359EC
		mov	eax, [ebp-18h]
		push	eax		; rmax
		push	edi		; rmin
		push	offset rtprot.range ; set
		call	Removerange
		add	esp, 0Ch
		mov	edx, [ebp-14h]
		push	edx		; rmax
		mov	ecx, [ebp-10h]
		push	ecx		; rmin
		push	offset rtprot.range ; set
		call	Addrange
		add	esp, 0Ch
		mov	rtprot.rangeactive, 1
		mov	eax, [ebp-10h]
		push	eax		; int
		push	esi		; hDlg
		call	loc_4287FC
		add	esp, 8
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_435645:				; CODE XREF: .text:00435489j
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	9D9h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SendMessageW
		mov	ebx, eax
		lea	eax, [ebp-14h]
		push	eax		; rmax
		lea	edx, [ebp-10h]
		push	edx		; rmin
		push	ebx		; index
		push	offset rtprot.range ; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	loc_4359EC
		mov	ecx, [ebp-10h]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	loc_4359EC
		mov	edx, [eax+458h]
		cmp	edx, [ebp-10h]
		ja	loc_4359EC
		mov	ecx, [eax+458h]
		add	ecx, [eax+45Ch]
		cmp	ecx, [ebp-10h]
		jbe	loc_4359EC
		push	4009h		; mode
		push	0		; stackaddr
		mov	eax, [ebp-14h]
		sub	eax, [ebp-10h]
		inc	eax
		push	eax		; selsize
		push	0		; dumpaddr
		mov	eax, [ebp-10h]
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_4356D9:				; CODE XREF: .text:00435490j
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	9D9h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SendMessageW
		mov	ebx, eax
		lea	eax, [ebp-14h]
		push	eax		; rmax
		lea	edx, [ebp-10h]
		push	edx		; rmin
		push	ebx		; index
		push	offset rtprot.range ; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	short loc_435724
		mov	ecx, [ebp-14h]
		push	ecx		; rmax
		mov	eax, [ebp-10h]
		push	eax		; rmin
		push	offset rtprot.range ; set
		call	Removerange
		add	esp, 0Ch

loc_435724:				; CODE XREF: .text:0043570Dj
		mov	edx, [ebp-10h]
		push	edx		; int
		push	esi		; hDlg
		call	loc_4287FC
		add	esp, 8
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_435736:				; CODE XREF: .text:00435497j
		push	offset rtprot.range ; set
		call	Emptyrange
		pop	ecx
		push	0		; int
		push	esi		; hDlg
		call	loc_4287FC
		add	esp, 8
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_435751:				; CODE XREF: .text:0043549Ej
		push	0		; int
		push	esi		; hDlg
		call	loc_4287FC
		add	esp, 8
		jmp	loc_4359EC
; ---------------------------------------------------------------------------

loc_435761:				; CODE XREF: .text:00435464j
		xor	ebx, ebx
		mov	edi, offset rtprot.memrange0

loc_435768:				; CODE XREF: .text:00435964j
		mov	edx, ebx
		lea	eax, [ebp-218h]
		shl	edx, 2
		push	100h		; nMaxCount
		push	eax		; lpString
		add	edx, 9CFh
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		mov	eax, ebx
		xor	ecx, ecx
		shl	eax, 2
		mov	[edi], ecx
		add	eax, offset rtprot.memrange0
		lea	edx, [ebp-218h]
		push	eax
		push	offset asc_52884A ; format
		push	edx		; buffer
		call	_swscanf
		mov	[ebp-8], eax
		add	esp, 0Ch
		mov	eax, ebx
		lea	ecx, [ebp-218h]
		shl	eax, 2
		push	100h		; nMaxCount
		push	ecx		; lpString
		add	eax, 9D0h
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemTextW
		mov	ecx, ebx
		xor	edx, edx
		shl	ecx, 2
		mov	[edi+8], edx
		add	ecx, offset rtprot.memrange1
		lea	eax, [ebp-218h]
		push	ecx
		push	offset asc_52884A ; format
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		cmp	rtprot.tracelogtype, 3
		jnz	loc_43595D
		mov	ecx, ebx
		mov	edx, 1
		shl	edx, cl
		and	edx, rtprot.memranges
		jz	loc_43595D
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_43582B
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_43582B
		mov	eax, [edi]
		cmp	eax, [edi+8]
		jb	loc_43595D

loc_43582B:				; CODE XREF: .text:00435818j
					; .text:0043581Ej
		lea	edx, [ebx+1]
		push	edx
		push	offset aMemoryRangeI ; "Memory range %i: "
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-218h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-8], 1
		jz	short loc_435899
		push	offset aInvalidLowLimi ; "Invalid low limit"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-218h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		shl	ebx, 2
		add	ebx, 9CFh
		push	ebx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_435941
; ---------------------------------------------------------------------------

loc_435899:				; CODE XREF: .text:00435851j
		cmp	dword ptr [ebp-0Ch], 1
		jz	short loc_4358E2
		push	offset aInvalidHighLim ; "Invalid high limit"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-218h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		shl	ebx, 2
		add	ebx, 9D0h
		push	ebx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	short loc_435941
; ---------------------------------------------------------------------------

loc_4358E2:				; CODE XREF: .text:0043589Dj
		mov	eax, [edi]
		cmp	eax, [edi+8]
		jnz	short loc_435916
		push	offset aEmptyRange_0 ; "Empty range"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-4]
		push	edx		; n
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-218h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_435941
; ---------------------------------------------------------------------------

loc_435916:				; CODE XREF: .text:004358E7j
		push	offset aLowLimitExceed ; "Low limit exceeds high limit"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-4]
		push	edx		; n
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-218h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_435941:				; CODE XREF: .text:00435894j
					; .text:004358E0j ...
		lea	edx, [ebp-218h]
		push	edx		; lpString
		push	9DFh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, 1
		jmp	loc_4359F1
; ---------------------------------------------------------------------------

loc_43595D:				; CODE XREF: .text:004357F9j
					; .text:0043580Ej ...
		inc	ebx
		add	edi, 4
		cmp	ebx, 2
		jl	loc_435768
		cmp	rtprot.tracelogtype, 3
		jnz	short loc_43599A
		cmp	rtprot.memranges, 0
		jnz	short loc_43599A
		push	offset aAllMemoryRange ; "All memory ranges are	disabled"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	9DFh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, 1
		jmp	short loc_4359F1
; ---------------------------------------------------------------------------

loc_43599A:				; CODE XREF: .text:00435971j
					; .text:0043597Aj
		push	offset rtprot.range ; set
		call	Getrangecount
		pop	ecx
		test	eax, eax
		jnz	short loc_4359B1
		xor	edx, edx
		mov	rtprot.rangeactive, edx

loc_4359B1:				; CODE XREF: .text:004359A7j
		push	1		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4359EC
; ---------------------------------------------------------------------------

loc_4359BE:				; CODE XREF: .text:0043546Bj
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4359EC
; ---------------------------------------------------------------------------

loc_4359CB:				; CODE XREF: .text:004351BCj
		and	edi, 0FFF0h
		cmp	edi, 0F060h
		jnz	short loc_4359E4
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_4359E4:				; CODE XREF: .text:004359D7j
		xor	eax, eax
		jmp	short loc_4359F1
; ---------------------------------------------------------------------------

loc_4359E8:				; CODE XREF: .text:004351CBj
		xor	eax, eax
		jmp	short loc_4359F1
; ---------------------------------------------------------------------------

loc_4359EC:				; CODE XREF: .text:00435259j
					; .text:004352AAj ...
		mov	eax, 1

loc_4359F1:				; CODE XREF: .text:00435270j
					; .text:00435299j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 148. _Setrtprot
; Exported entry 716. Setrtprot

; int __cdecl Setrtprot(HWND hparent, int x, int y, int	fi)
		public Setrtprot
Setrtprot:				; CODE XREF: .text:0040B487p
		push	ebp		; _Setrtprot
		mov	ebp, esp
		add	esp, 0FFFFFDDCh
		push	ebx
		mov	ebx, offset g_dialog
		push	224h		; n
		push	offset rtprot	; src
		lea	eax, [ebp-224h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	offset aCommandsProtoc ; "Commands protocolled by run trace"
		call	_T
		pop	ecx
		mov	[ebx+4], eax
		mov	edx, [ebp+0Ch]
		mov	[ebx+30h], edx
		mov	ecx, [ebp+10h]
		mov	[ebx+34h], ecx
		mov	eax, [ebp+14h]
		mov	[ebx+38h], eax
		mov	dword ptr [ebx+3Ch], 20000000h
		mov	dword ptr [ebx], offset	stru_526E14
		push	0		; dwInitParam
		push	offset loc_435198 ; lpDialogFunc
		mov	ecx, g_hInstance
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		test	eax, eax
		jnz	short loc_435A8C
		push	224h		; n
		lea	eax, [ebp-224h]
		push	eax		; src
		push	offset rtprot	; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_435AB3
; ---------------------------------------------------------------------------

loc_435A8C:				; CODE XREF: .text:00435A6Fj
		push	224h		; n
		lea	edx, [ebp-224h]
		push	edx		; s2
		push	offset rtprot	; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_435AB3
		mov	dword_5D5614, 1

loc_435AB3:				; CODE XREF: .text:00435A8Aj
					; .text:00435AA7j
		xor	ecx, ecx
		mov	[ebx], ecx
		call	loc_4C599C
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_435AC4(HWND, UINT, WPARAM, LPARAM)
loc_435AC4:				; DATA XREF: .text:00435C3Co
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
		jz	short loc_435AEF
		dec	eax
		jz	short loc_435B61
		dec	eax
		jz	loc_435BBF
		jmp	loc_435BDC
; ---------------------------------------------------------------------------

loc_435AEF:				; CODE XREF: .text:00435ADEj
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		xor	ebx, ebx

loc_435AFF:				; CODE XREF: .text:00435B53j
		push	ebx
		push	offset aCpuI	; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-200h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-200h]
		push	edx		; lpString
		lea	edi, [ebx+0BB8h]
		push	edi		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		and	eax, _SystemAffinityMask
		jnz	short loc_435B4F
		push	0		; bEnable
		push	edi		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_435B4F:				; CODE XREF: .text:00435B3Ej
		inc	ebx
		cmp	ebx, 20h
		jl	short loc_435AFF
		mov	g_dialog.initdone, 1
		jmp	short loc_435BE0
; ---------------------------------------------------------------------------

loc_435B61:				; CODE XREF: .text:00435AE1j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	short loc_435BE0
		mov	edx, [ebp+14h]
		push	edx		; lp
		push	ebx		; wp
		push	eax		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 1
		jnz	short loc_435BAC
		cmp	g_dialog.u, 0
		jnz	short loc_435B9F
		mov	ecx, _SystemAffinityMask
		mov	g_dialog.u, ecx

loc_435B9F:				; CODE XREF: .text:00435B91j
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_435BE0
; ---------------------------------------------------------------------------

loc_435BAC:				; CODE XREF: .text:00435B88j
		cmp	ax, 2
		jnz	short loc_435BE0
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_435BE0
; ---------------------------------------------------------------------------

loc_435BBF:				; CODE XREF: .text:00435AE4j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_435BD8
		push	0FFFFFFFFh	; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_435BD8:				; CODE XREF: .text:00435BCBj
		xor	eax, eax
		jmp	short loc_435BE5
; ---------------------------------------------------------------------------

loc_435BDC:				; CODE XREF: .text:00435AEAj
		xor	eax, eax
		jmp	short loc_435BE5
; ---------------------------------------------------------------------------

loc_435BE0:				; CODE XREF: .text:00435B5Fj
					; .text:00435B6Dj ...
		mov	eax, 1

loc_435BE5:				; CODE XREF: .text:00435BDAj
					; .text:00435BDEj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_435BF0(HWND hWndParent, int, int, int, int, int)
loc_435BF0:				; CODE XREF: .text:0040B2AEp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		mov	esi, offset g_dialog
		test	eax, eax
		jnz	short loc_435C14
		push	offset aSetAffinityMas ; "Set affinity mask"
		call	_T
		pop	ecx
		mov	[esi+4], eax
		jmp	short loc_435C17
; ---------------------------------------------------------------------------

loc_435C14:				; CODE XREF: .text:00435C02j
		mov	[esi+4], eax

loc_435C17:				; CODE XREF: .text:00435C12j
		mov	eax, [ebp+14h]
		mov	[esi+30h], eax
		xor	eax, eax
		mov	edx, [ebp+18h]
		mov	[esi+34h], edx
		mov	ecx, [ebp+1Ch]
		mov	[esi+38h], ecx
		mov	dword_5DC5BC, ebx
		mov	[esi+3Ch], eax
		mov	dword ptr [esi], offset	stru_527274
		push	0		; dwInitParam
		push	offset loc_435AC4 ; lpDialogFunc
		mov	edx, [ebp+8]
		mov	ecx, g_hInstance
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		test	eax, eax
		mov	[esi], edx
		jz	short loc_435C62
		mov	eax, ebx
		jmp	short loc_435C67
; ---------------------------------------------------------------------------

loc_435C62:				; CODE XREF: .text:00435C5Cj
		mov	eax, dword_5DC5BC

loc_435C67:				; CODE XREF: .text:00435C60j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_435C6C(HWND, UINT, WPARAM, LPARAM)
loc_435C6C:				; DATA XREF: .text:00436984o
					; .text:00436B72o
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_435C75:				; CODE XREF: .text:00435C7Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_435C75
		mov	eax, [ebp-4]
		add	esp, 0FFFFFF04h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_435CAE
		dec	eax
		jz	loc_4364CB
		dec	eax
		jz	loc_4365BA
		jmp	loc_4365D7
; ---------------------------------------------------------------------------

loc_435CAE:				; CODE XREF: .text:00435C99j
		push	offset g_dialog	; pdlg
		push	edi		; hw
		call	Preparedialog
		add	esp, 8
		push	0C1Dh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	[ebp-10h], eax
		mov	edx, g_dialog.addr0
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_436477
; ---------------------------------------------------------------------------

loc_435CE4:				; CODE XREF: .text:00436480j
		mov	eax, dword_5DC5C0
		mov	edx, [ebp-4]
		mov	edi, [eax+edx*8]
		cmp	dword_5DC5CC, 0
		jz	short loc_435D3A
		push	100h		; nname
		lea	eax, [ebp-414h]
		push	eax		; _name
		push	7Fh		; type
		mov	edx, [ebp-4]
		add	edx, 0FF000000h
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_435D30
		push	edi		; u
		lea	eax, [ebp-414h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		mov	esi, eax

loc_435D30:				; CODE XREF: .text:00435D1Cj
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	loc_43605C
; ---------------------------------------------------------------------------

loc_435D3A:				; CODE XREF: .text:00435CF6j
		test	byte ptr g_dialog.mode+2, 30h
		jnz	loc_435DD6
		mov	edx, dword_5DC5C0
		mov	ecx, [ebp-4]
		mov	eax, [edx+ecx*8+4]
		cmp	eax, 1
		jl	short loc_435D67
		mov	edx, dword_5DC5C0
		mov	ecx, [ebp-4]
		cmp	eax, 4
		jle	short loc_435D86

loc_435D67:				; CODE XREF: .text:00435D57j
		mov	eax, dword_5DC5C0
		mov	edx, [ebp-4]
		mov	eax, [eax+edx*8+4]
		cmp	eax, 8
		jl	short loc_435DAA
		mov	edx, dword_5DC5C0
		mov	ecx, [ebp-4]
		cmp	eax, 0Ah
		jg	short loc_435DAA

loc_435D86:				; CODE XREF: .text:00435D65j
		push	offset aJumpTo_0 ; "Jump to "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_435DCC
; ---------------------------------------------------------------------------

loc_435DAA:				; CODE XREF: .text:00435D76j
					; .text:00435D84j
		push	offset aCallTo	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_435DCC:				; CODE XREF: .text:00435DA8j
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	loc_43605C
; ---------------------------------------------------------------------------

loc_435DD6:				; CODE XREF: .text:00435D41j
		mov	edx, g_dialog.mode
		and	edx, 300000h
		cmp	edx, 100000h
		jnz	loc_43603F
		mov	ecx, dword_5DC5C0
		mov	eax, [ebp-4]
		mov	edx, [ecx+eax*8+4]
		cmp	edx, 6		; switch 7 cases
		ja	loc_435FB4	; jumptable 00435E04 default case
		jmp	ds:off_435E0B[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_435E0B	dd offset loc_435FB4	; DATA XREF: .text:00435E04r
		dd offset loc_435FB4	; jump table for switch	statement
		dd offset loc_435E27
		dd offset loc_435F21
		dd offset loc_435F48
		dd offset loc_435F6C
		dd offset loc_435F90
; ---------------------------------------------------------------------------

loc_435E27:				; CODE XREF: .text:00435E04j
					; DATA XREF: .text:off_435E0Bo
		push	5		; jumptable 00435E04 case 2
		push	10h		; size
		push	edi		; _addr
		lea	ecx, [ebp-624h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jbe	short loc_435E61
		push	0		; predict
		push	0		; reg
		push	11h		; mode
		lea	eax, [ebp-1EF4h]
		push	eax		; da
		push	0		; dec
		push	edi		; ip
		push	ebx		; cmdsize
		lea	edx, [ebp-624h]
		push	edx		; cmd
		call	Disasm
		add	esp, 20h

loc_435E61:				; CODE XREF: .text:00435E3Fj
		test	ebx, ebx
		jbe	short loc_435EA7
		cmp	dword ptr [ebp-1EC8h], 0
		jnz	short loc_435EA7
		cmp	dword ptr [ebp-1ED4h], 0
		jbe	short loc_435EA7
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-1EF4h]
		push	11h		; mode
		push	ecx		; da
		push	0		; dec
		mov	eax, [ebp-1ED4h]
		mov	ecx, ebx
		mov	edx, eax
		sub	ecx, eax
		add	edx, edi
		push	edx		; ip
		lea	edx, [ebp-624h]
		add	edx, eax
		push	ecx		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h

loc_435EA7:				; CODE XREF: .text:00435E63j
					; .text:00435E6Cj ...
		test	ebx, ebx
		jbe	short loc_435EFA
		cmp	dword ptr [ebp-1EC8h], 0
		jnz	short loc_435EFA
		xor	esi, esi
		lea	ebx, [ebp-414h]
		lea	eax, [ebp-0B28h]
		mov	[ebp-14h], eax
		jmp	short loc_435ED8
; ---------------------------------------------------------------------------

loc_435EC7:				; CODE XREF: .text:00435EF3j
		mov	edx, [ebp-14h]
		inc	esi
		mov	cx, [edx]
		mov	[ebx], cx
		add	ebx, 2
		add	dword ptr [ebp-14h], 2

loc_435ED8:				; CODE XREF: .text:00435EC5j
		cmp	esi, 100h
		jge	loc_435FD6
		mov	eax, [ebp-14h]
		mov	dx, [eax]
		push	edx		; c
		call	_iswalnum
		pop	ecx
		test	eax, eax
		jnz	short loc_435EC7
		jmp	loc_435FD6
; ---------------------------------------------------------------------------

loc_435EFA:				; CODE XREF: .text:00435EA9j
					; .text:00435EB2j
		push	offset aJump	; "Jump"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-414h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_435FD6
; ---------------------------------------------------------------------------

loc_435F21:				; CODE XREF: .text:00435E04j
					; DATA XREF: .text:off_435E0Bo
		push	offset aTableJump ; jumptable 00435E04 case 3
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_435FD6
; ---------------------------------------------------------------------------

loc_435F48:				; CODE XREF: .text:00435E04j
					; DATA XREF: .text:off_435E0Bo
		push	offset aRet_1	; jumptable 00435E04 case 4
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_435FD6
; ---------------------------------------------------------------------------

loc_435F6C:				; CODE XREF: .text:00435E04j
					; DATA XREF: .text:off_435E0Bo
		push	offset aCall_0	; jumptable 00435E04 case 5
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_435FD6
; ---------------------------------------------------------------------------

loc_435F90:				; CODE XREF: .text:00435E04j
					; DATA XREF: .text:off_435E0Bo
		push	offset aTableCall ; jumptable 00435E04 case 6
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_435FD6
; ---------------------------------------------------------------------------

loc_435FB4:				; CODE XREF: .text:00435DFEj
					; .text:00435E04j
					; DATA XREF: ...
		push	offset aJump	; jumptable 00435E04 default case
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_435FD6:				; CODE XREF: .text:00435EDEj
					; .text:00435EF5j ...
		push	offset aFrom	; " from "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 100h
		sub	eax, esi
		lea	ecx, [ebp-414h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		test	byte ptr g_dialog.mode+2, 40h
		jz	short loc_436013
		mov	dword ptr [ebp-8], 20000h
		jmp	short loc_43605C
; ---------------------------------------------------------------------------

loc_436013:				; CODE XREF: .text:00436008j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_436036
		mov	eax, [ebp-0Ch]
		cmp	edi, [eax]
		jb	short loc_436036
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-0Ch]
		mov	ecx, [edx]
		add	ecx, [eax+4]
		cmp	edi, ecx
		jnb	short loc_436036
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_43605C
; ---------------------------------------------------------------------------

loc_436036:				; CODE XREF: .text:00436017j
					; .text:0043601Ej ...
		mov	dword ptr [ebp-8], 20000h
		jmp	short loc_43605C
; ---------------------------------------------------------------------------

loc_43603F:				; CODE XREF: .text:00435DE8j
		mov	ecx, g_dialog.mode
		and	ecx, 300000h
		cmp	ecx, 200000h
		jnz	short loc_43605C
		mov	dword ptr [ebp-8], 20000h
		xor	esi, esi

loc_43605C:				; CODE XREF: .text:00435D35j
					; .text:00435DD1j ...
		cmp	dword_5DC5CC, 0
		jnz	short loc_4360CD
		mov	eax, g_dialog.mode
		and	eax, 300000h
		test	eax, eax
		jz	short loc_43607A
		cmp	eax, 100000h
		jnz	short loc_4360CD

loc_43607A:				; CODE XREF: .text:00436071j
		mov	eax, esi
		mov	ebx, 100h
		sub	ebx, esi
		add	eax, eax
		lea	edx, [ebp-414h]
		push	ebx		; nsymb
		add	eax, edx
		push	eax		; symb
		mov	ecx, [ebp-8]
		or	ecx, 408h
		push	ecx		; addrmode
		push	edi		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4360CB
		mov	eax, esi
		lea	edx, [ebp-414h]
		add	eax, eax
		push	0		; comment
		add	eax, edx
		push	ebx		; nsymb
		push	eax		; symb
		mov	ecx, [ebp-8]
		or	ecx, 400h
		push	ecx		; mode
		push	0		; amod
		push	edi		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_4360CB:				; CODE XREF: .text:004360A4j
		add	esi, eax

loc_4360CD:				; CODE XREF: .text:00436063j
					; .text:00436078j
		cmp	dword_5DC5CC, 0
		jnz	loc_43645D
		mov	eax, g_dialog.mode
		and	eax, 300000h
		test	eax, eax
		jz	short loc_4360F3
		cmp	eax, 200000h
		jnz	loc_43645D

loc_4360F3:				; CODE XREF: .text:004360E6j
		mov	edx, g_dialog.mode
		and	edx, 300000h
		cmp	edx, 200000h
		setz	bl
		and	ebx, 1
		test	ebx, ebx
		jz	short loc_43613C
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_43613C
		push	offset aSwitchOrigin ; "Switch origin"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_43644C
; ---------------------------------------------------------------------------

loc_43613C:				; CODE XREF: .text:0043610Dj
					; .text:00436113j
		push	20Ch		; datasize
		lea	eax, [ebp-2100h]
		push	eax		; data
		push	41h		; type
		push	edi		; _addr
		call	Finddata
		add	esp, 10h
		cmp	eax, 0Ch
		jl	loc_43644C
		mov	edx, [ebp-20F8h]
		shl	edx, 2
		add	edx, 0Ch
		cmp	eax, edx
		jl	loc_43644C
		test	esi, esi
		jle	short loc_436198
		mov	eax, esi
		mov	ecx, 100h
		sub	ecx, esi
		lea	edx, [ebp-414h]
		add	eax, eax
		push	offset asc_52EDF0 ; ", "
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_436198:				; CODE XREF: .text:00436172j
		test	byte ptr [ebp-20FCh], 4
		jz	short loc_4361E2
		test	ebx, ebx
		jz	short loc_4361B2
		push	offset aDefaultCase_1 ;	"Default case"
		call	_T
		pop	ecx
		jmp	short loc_4361BD
; ---------------------------------------------------------------------------

loc_4361B2:				; CODE XREF: .text:004361A3j
		push	offset aDefaultCase ; "default case"
		call	_T
		pop	ecx

loc_4361BD:				; CODE XREF: .text:004361B0j
		push	eax		; src
		mov	eax, esi
		mov	ecx, 100h
		lea	edx, [ebp-414h]
		sub	ecx, esi
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_43644C
; ---------------------------------------------------------------------------

loc_4361E2:				; CODE XREF: .text:0043619Fj
		cmp	dword ptr [ebp-20F8h], 1
		jnz	short loc_436229
		test	ebx, ebx
		jz	short loc_4361FC
		push	offset aCase_0	; src
		call	_T
		pop	ecx
		jmp	short loc_436207
; ---------------------------------------------------------------------------

loc_4361FC:				; CODE XREF: .text:004361EDj
		push	offset aCase_1	; src
		call	_T
		pop	ecx

loc_436207:				; CODE XREF: .text:004361FAj
		push	eax		; src
		mov	eax, esi
		mov	ecx, 100h
		lea	edx, [ebp-414h]
		sub	ecx, esi
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_436265
; ---------------------------------------------------------------------------

loc_436229:				; CODE XREF: .text:004361E9j
		test	ebx, ebx
		jz	short loc_43623A
		push	offset aCases_0	; src
		call	_T
		pop	ecx
		jmp	short loc_436245
; ---------------------------------------------------------------------------

loc_43623A:				; CODE XREF: .text:0043622Bj
		push	offset aCases_1	; src
		call	_T
		pop	ecx

loc_436245:				; CODE XREF: .text:00436238j
		push	eax		; src
		mov	eax, esi
		mov	ecx, 100h
		lea	edx, [ebp-414h]
		sub	ecx, esi
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_436265:				; CODE XREF: .text:00436227j
		xor	edi, edi
		lea	ebx, [ebp-20F4h]
		jmp	loc_436404
; ---------------------------------------------------------------------------

loc_436272:				; CODE XREF: .text:00436412j
		test	edi, edi
		jle	short loc_43629A
		mov	edx, esi
		mov	eax, 100h
		sub	eax, esi
		lea	ecx, [ebp-414h]
		add	edx, edx
		push	offset asc_52EDF0 ; ", "
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_43629A:				; CODE XREF: .text:00436274j
		test	byte ptr [ebp-20FCh], 80h
		jz	short loc_4362A8
		cmp	dword ptr [ebx], 0
		jl	short loc_4362C9

loc_4362A8:				; CODE XREF: .text:004362A1j
		mov	eax, [ebx]
		mov	edx, esi
		push	eax
		lea	ecx, [ebp-414h]
		add	edx, edx
		push	offset asc_52884A ; format
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_4362EA
; ---------------------------------------------------------------------------

loc_4362C9:				; CODE XREF: .text:004362A6j
		mov	eax, [ebx]
		mov	edx, esi
		neg	eax
		push	eax
		lea	ecx, [ebp-414h]
		add	edx, edx
		push	offset asc_52EE5E ; format
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax

loc_4362EA:				; CODE XREF: .text:004362C7j
		test	byte ptr [ebp-20FCh], 40h
		jz	short loc_43633A
		lea	eax, [ebp-614h]
		push	eax		; _name
		mov	edx, [ebx]
		push	edx		; value
		push	offset aException_4 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	loc_436400
		lea	ecx, [ebp-614h]
		mov	eax, esi
		push	ecx
		lea	edx, [ebp-414h]
		add	eax, eax
		push	offset aS_4	; format
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_436400
; ---------------------------------------------------------------------------

loc_43633A:				; CODE XREF: .text:004362F1j
		test	byte ptr [ebp-20FCh], 20h
		jz	short loc_436387
		lea	ecx, [ebp-614h]
		push	ecx		; _name
		mov	eax, [ebx]
		push	eax		; value
		push	offset aMessage_2 ; "MESSAGE"
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	loc_436400
		lea	edx, [ebp-614h]
		mov	ecx, esi
		push	edx
		lea	eax, [ebp-414h]
		add	ecx, ecx
		push	offset aS_4	; format
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_436400
; ---------------------------------------------------------------------------

loc_436387:				; CODE XREF: .text:00436341j
		test	byte ptr [ebp-20FCh], 10h
		jz	short loc_4363CD
		push	0		; mode
		mov	edx, [ebx]
		push	edx		; c
		lea	ecx, [ebp-614h]
		push	ecx		; s
		call	Commentcharacter
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_436400
		lea	eax, [ebp-614h]
		mov	edx, esi
		push	eax
		lea	ecx, [ebp-414h]
		add	edx, edx
		push	offset aS_4	; format
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_436400
; ---------------------------------------------------------------------------

loc_4363CD:				; CODE XREF: .text:0043638Ej
		cmp	dword ptr [ebp-20F8h], 1
		jnz	short loc_436400
		mov	eax, [ebx]
		test	eax, eax
		jl	short loc_4363E1
		cmp	eax, 0Ah
		jl	short loc_436400

loc_4363E1:				; CODE XREF: .text:004363DAj
		mov	edx, [ebx]
		mov	ecx, esi
		push	edx
		lea	eax, [ebp-414h]
		add	ecx, ecx
		push	offset aLi__1	; format
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax

loc_436400:				; CODE XREF: .text:0043630Cj
					; .text:00436335j ...
		inc	edi
		add	ebx, 4

loc_436404:				; CODE XREF: .text:0043626Dj
		cmp	edi, [ebp-20F8h]
		jge	short loc_436418
		cmp	esi, 100h
		jl	loc_436272

loc_436418:				; CODE XREF: .text:0043640Aj
		test	byte ptr [ebp-20FCh], 2
		jz	short loc_43644C
		push	offset aAndOthers ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-414h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_43644C:				; CODE XREF: .text:00436137j
					; .text:00436156j ...
		cmp	esi, 0FFh
		jle	short loc_43645D
		mov	word ptr [ebp-216h], 0

loc_43645D:				; CODE XREF: .text:004360D4j
					; .text:004360EDj ...
		lea	edx, [ebp-414h]
		push	edx		; lParam
		push	0		; wParam
		push	180h		; Msg
		mov	ecx, [ebp-10h]
		push	ecx		; hWnd
		call	SendMessageW
		inc	dword ptr [ebp-4]

loc_436477:				; CODE XREF: .text:00435CDFj
		mov	eax, [ebp-4]
		cmp	eax, dword_5DC5C8
		jl	loc_435CE4
		cmp	dword_5DC5CC, 0
		jz	short loc_4364BC
		push	0		; lParam
		push	0		; wParam
		push	186h		; Msg
		mov	edx, [ebp-10h]
		push	edx		; hWnd
		call	SendMessageW
		push	0Ch		; mode
		mov	ecx, dword_5DC5C0
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	eax, [ecx]
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4364BC:				; CODE XREF: .text:0043648Dj
		mov	g_dialog.initdone, 1
		jmp	loc_4365DB
; ---------------------------------------------------------------------------

loc_4364CB:				; CODE XREF: .text:00435C9Cj
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_4365DB
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		push	ebx		; wp
		push	eax		; pctr
		push	edi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 0C1Dh
		jnz	short loc_43656F
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 1
		jz	short loc_436509
		cmp	ax, 2
		jnz	short loc_43656F

loc_436509:				; CODE XREF: .text:00436501j
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	SendMessageW
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	loc_4365DB
		mov	ecx, [ebp-4]
		cmp	ecx, dword_5DC5C8
		jge	loc_4365DB
		shr	ebx, 10h
		cmp	bx, 1
		jnz	short loc_436560
		push	0Ch		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	eax, dword_5DC5C0
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*8]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4365DB
; ---------------------------------------------------------------------------

loc_436560:				; CODE XREF: .text:0043653Ej
		mov	eax, [ebp-4]
		push	eax		; result
		push	edi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4365DB
; ---------------------------------------------------------------------------

loc_43656F:				; CODE XREF: .text:004364F6j
					; .text:00436507j
		mov	eax, ebx
		and	ax, 0FFFFh
		cmp	ax, 1
		jnz	short loc_4365A7
		push	0		; lParam
		push	0		; wParam
		push	188h		; Msg
		push	0C1Dh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SendMessageW
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		push	edx		; result
		push	edi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4365DB
; ---------------------------------------------------------------------------

loc_4365A7:				; CODE XREF: .text:00436579j
		cmp	ax, 2
		jnz	short loc_4365DB
		push	0FFFFFFFFh	; result
		push	edi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4365DB
; ---------------------------------------------------------------------------

loc_4365BA:				; CODE XREF: .text:00435CA3j
		and	ebx, 0FFF0h
		cmp	ebx, 0F060h
		jnz	short loc_4365D3
		push	0FFFFFFFFh	; result
		push	edi		; hw
		call	Endotdialog
		add	esp, 8

loc_4365D3:				; CODE XREF: .text:004365C6j
		xor	eax, eax
		jmp	short loc_4365E0
; ---------------------------------------------------------------------------

loc_4365D7:				; CODE XREF: .text:00435CA9j
		xor	eax, eax
		jmp	short loc_4365E0
; ---------------------------------------------------------------------------

loc_4365DB:				; CODE XREF: .text:004364C6j
					; .text:004364D7j ...
		mov	eax, 1

loc_4365E0:				; CODE XREF: .text:004365D5j
					; .text:004365D9j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
