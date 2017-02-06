.code

; INT_PTR __stdcall loc_432354(HWND, UINT, WPARAM, LPARAM)
loc_432354:				; DATA XREF: .text:00432C42o
					; .text:00432EB5o
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
		jz	short loc_43238C
		dec	eax
		jz	loc_432640
		dec	eax
		jz	loc_432A98
		sub	eax, 26h
		jz	loc_432600
		jmp	loc_432AB5
; ---------------------------------------------------------------------------

loc_43238C:				; CODE XREF: .text:0043236Ej
		push	offset g_dialog	; pdlg
		push	ebx		; hw
		call	Preparedialog
		add	esp, 8
		mov	edx, 1
		test	byte ptr dword_5DC380+2, 20h
		jnz	short loc_4323A9
		dec	edx

loc_4323A9:				; CODE XREF: .text:004323A6j
		push	edx		; uCheck
		push	834h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		test	byte ptr dword_5DC380+2, 40h
		mov	ecx, 1
		jnz	short loc_4323C4
		dec	ecx

loc_4323C4:				; CODE XREF: .text:004323C1j
		push	ecx		; uCheck
		push	835h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		test	byte ptr dword_5DC380+2, 80h
		mov	eax, 1
		jnz	short loc_4323DF
		dec	eax

loc_4323DF:				; CODE XREF: .text:004323DCj
		push	eax		; uCheck
		push	836h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		test	byte ptr g_dialog.mode,	40h
		jz	loc_4325AA
		push	offset condition ; lpString
		push	83Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	offset expression ; lpString
		push	83Fh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	840h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		xor	edi, edi
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		mov	esi, offset off_524A24

loc_432434:				; CODE XREF: .text:00432466j
		mov	eax, [esi]
		push	eax		; s2
		push	offset exprtype	; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_43244B
		mov	[ebp-4], edi

loc_43244B:				; CODE XREF: .text:00432446j
		mov	edx, [esi+4]
		push	edx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		inc	edi
		add	esi, 8
		cmp	edi, 4
		jl	short loc_432434
		cmp	dword ptr [ebp-4], 0
		jl	short loc_432482
		push	0		; lParam
		mov	eax, [ebp-4]
		push	eax		; wParam
		push	14Eh		; Msg
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	SendMessageW

loc_432482:				; CODE XREF: .text:0043246Cj
		cmp	exprtype, 2Ah
		jnz	short loc_432493
		mov	ecx, offset word_5DC14E
		jmp	short loc_432495
; ---------------------------------------------------------------------------

loc_432493:				; CODE XREF: .text:0043248Aj
		xor	ecx, ecx

loc_432495:				; CODE XREF: .text:00432491j
		push	ecx		; s2
		push	offset aPointerTo ; "Pointer to	"
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	Fillcombowithstruct
		add	esp, 0Ch
		mov	edx, dword_5DC380
		and	edx, 3000000h
		sub	edx, 1000000h
		jz	short loc_4324C5
		sub	edx, 2000000h
		jz	short loc_4324D4
		jmp	short loc_4324E3
; ---------------------------------------------------------------------------

loc_4324C5:				; CODE XREF: .text:004324B9j
		push	1		; uCheck
		push	842h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_4324F0
; ---------------------------------------------------------------------------

loc_4324D4:				; CODE XREF: .text:004324C1j
		push	1		; uCheck
		push	843h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_4324F0
; ---------------------------------------------------------------------------

loc_4324E3:				; CODE XREF: .text:004324C3j
		push	1		; uCheck
		push	841h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton

loc_4324F0:				; CODE XREF: .text:004324D2j
					; .text:004324E1j
		mov	eax, dword_5DC380
		and	eax, 0C000000h
		sub	eax, 4000000h
		jz	short loc_43250A
		sub	eax, 8000000h
		jz	short loc_432519
		jmp	short loc_432528
; ---------------------------------------------------------------------------

loc_43250A:				; CODE XREF: .text:004324FFj
		push	1		; uCheck
		push	845h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_432535
; ---------------------------------------------------------------------------

loc_432519:				; CODE XREF: .text:00432506j
		push	1		; uCheck
		push	846h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		jmp	short loc_432535
; ---------------------------------------------------------------------------

loc_432528:				; CODE XREF: .text:00432508j
		push	1		; uCheck
		push	844h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton

loc_432535:				; CODE XREF: .text:00432517j
					; .text:00432526j
		mov	edx, dword_5DC384
		lea	ecx, [ebp-408h]
		push	edx
		push	offset aI_	; "%i."
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-408h]
		push	eax		; lpString
		push	848h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	edx, dword_5DC388
		lea	ecx, [ebp-408h]
		push	edx
		push	offset aI_	; "%i."
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-408h]
		push	eax		; lpString
		push	849h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		test	byte ptr dword_5DC380+2, 8
		mov	edx, 1
		jnz	short loc_43259E
		dec	edx

loc_43259E:				; CODE XREF: .text:0043259Bj
		push	edx		; uCheck
		push	84Ah		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton

loc_4325AA:				; CODE XREF: .text:004323F2j
		test	byte ptr dword_5DC380+2, 2
		mov	ecx, 1
		jnz	short loc_4325B9
		dec	ecx

loc_4325B9:				; CODE XREF: .text:004325B6j
		push	ecx		; uCheck
		push	84Bh		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		test	byte ptr g_dialog.mode,	40h
		jz	short loc_4325E1
		push	83Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	short loc_4325EF
; ---------------------------------------------------------------------------

loc_4325E1:				; CODE XREF: .text:004325CCj
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus

loc_4325EF:				; CODE XREF: .text:004325DFj
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_432ABE
; ---------------------------------------------------------------------------

loc_432600:				; CODE XREF: .text:00432381j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 84Ch
		jz	short loc_432617
		xor	eax, eax
		jmp	loc_432ABE
; ---------------------------------------------------------------------------

loc_432617:				; CODE XREF: .text:0043260Ej
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
		jmp	loc_432ABE
; ---------------------------------------------------------------------------

loc_432640:				; CODE XREF: .text:00432371j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_432AB9
		mov	edx, [ebp+14h]
		push	edx		; lp
		push	esi		; wp
		push	eax		; pctr
		push	ebx		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, esi
		and	ax, 0FFFFh
		cmp	ax, 83Eh
		jz	short loc_432673
		cmp	ax, 83Fh
		jnz	short loc_43268E

loc_432673:				; CODE XREF: .text:0043266Bj
		mov	edx, esi
		shr	edx, 10h
		cmp	dx, 5
		jnz	short loc_43268E
		push	(offset	aOd_empty+0Fh) ; lpString
		push	84Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW

loc_43268E:				; CODE XREF: .text:00432671j
					; .text:0043267Cj
		cmp	g_dialog.initdone, 0
		jz	loc_432AB9
		and	dword_5DC380, 0FF1FFFFFh
		push	834h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4326BE
		or	dword_5DC380, 200000h

loc_4326BE:				; CODE XREF: .text:004326B2j
		push	835h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4326D7
		or	dword_5DC380, 400000h

loc_4326D7:				; CODE XREF: .text:004326CBj
		push	836h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4326F0
		or	dword_5DC380, 800000h

loc_4326F0:				; CODE XREF: .text:004326E4j
		test	byte ptr g_dialog.mode,	40h
		jz	loc_432781
		and	dword_5DC380, 0FFFFFFh
		push	842h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_432722
		or	dword_5DC380, 1000000h
		jmp	short loc_432744
; ---------------------------------------------------------------------------

loc_432722:				; CODE XREF: .text:00432714j
		push	843h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_43273D
		or	dword_5DC380, 3000000h
		jmp	short loc_432744
; ---------------------------------------------------------------------------

loc_43273D:				; CODE XREF: .text:0043272Fj
		or	dword_5DC380, 0

loc_432744:				; CODE XREF: .text:00432720j
					; .text:0043273Bj
		push	845h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_43275F
		or	dword_5DC380, 4000000h
		jmp	short loc_432781
; ---------------------------------------------------------------------------

loc_43275F:				; CODE XREF: .text:00432751j
		push	846h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_43277A
		or	dword_5DC380, 0C000000h
		jmp	short loc_432781
; ---------------------------------------------------------------------------

loc_43277A:				; CODE XREF: .text:0043276Cj
		or	dword_5DC380, 0

loc_432781:				; CODE XREF: .text:004326F7j
					; .text:0043275Dj ...
		and	si, 0FFFFh
		dec	si
		jz	short loc_4327F2
		dec	si
		jz	loc_432A8B
		add	esi, 0FFFFF7CEh
		sub	si, 3
		jb	short loc_4327AE
		add	esi, 0FFFFFFF6h
		sub	si, 6
		jb	short loc_4327AE
		jmp	loc_432AB9
; ---------------------------------------------------------------------------

loc_4327AE:				; CODE XREF: .text:0043279Ej
					; .text:004327A7j
		mov	eax, dword_5DC380
		test	eax, 0F000000h
		jz	short loc_4327C1
		test	eax, 0E00000h
		jnz	short loc_4327DD

loc_4327C1:				; CODE XREF: .text:004327B8j
		push	offset aBreakpointSpec ; "Breakpoint specifies no action and will"...
		call	_T
		pop	ecx
		push	eax		; lpString
		push	84Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_432AB9
; ---------------------------------------------------------------------------

loc_4327DD:				; CODE XREF: .text:004327BFj
		push	(offset	aOd_empty+0Fh) ; lpString
		push	84Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_432AB9
; ---------------------------------------------------------------------------

loc_4327F2:				; CODE XREF: .text:00432789j
		test	byte ptr g_dialog.mode,	40h
		jz	loc_432A66
		push	83Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		push	offset condition ; lpString
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	GetWindowTextW
		cmp	condition, 0
		jz	loc_4328BB
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
		mov	edi, eax
		cmp	word ptr [ebp-608h], 0
		jz	short loc_4328BB
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
		push	84Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SetFocus
		movzx	eax, di
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		push	edx		; lParam
		push	0		; wParam
		push	142h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_432AB9
; ---------------------------------------------------------------------------

loc_4328BB:				; CODE XREF: .text:00432828j
					; .text:0043285Cj
		push	offset condition ; s
		mov	eax, [ebp-8]
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	83Fh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		push	offset expression ; lpString
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	GetWindowTextW
		cmp	expression, 0
		jz	loc_432988
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
		mov	edi, eax
		cmp	word ptr [ebp-608h], 0
		jz	short loc_432988
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
		push	84Ch		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SetFocus
		movzx	eax, di
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		push	edx		; lParam
		push	0		; wParam
		push	142h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_432AB9
; ---------------------------------------------------------------------------

loc_432988:				; CODE XREF: .text:004328F5j
					; .text:00432929j
		push	offset expression ; s
		mov	eax, [ebp-8]
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	840h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		mov	edi, eax
		cmp	edi, 4
		jge	short loc_4329D0
		mov	eax, off_524A24[edi*8]
		push	eax		; src
		push	100h		; n
		push	offset exprtype	; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_432A19
; ---------------------------------------------------------------------------

loc_4329D0:				; CODE XREF: .text:004329B2j
		lea	edx, [ebp-408h]
		push	edx		; lParam
		push	edi		; wParam
		push	148h		; Msg
		push	840h		; nIDDlgItem
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

loc_432A19:				; CODE XREF: .text:004329CEj
		push	84Ah		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_432A34
		or	dword_5DC380, 80000h
		jmp	short loc_432A3E
; ---------------------------------------------------------------------------

loc_432A34:				; CODE XREF: .text:00432A26j
		and	dword_5DC380, 0FFF7FFFFh

loc_432A3E:				; CODE XREF: .text:00432A32j
		push	0		; bSigned
		push	0		; lpTranslated
		push	848h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemInt
		mov	dword_5DC384, eax
		push	0		; bSigned
		push	0		; lpTranslated
		push	849h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItemInt
		mov	dword_5DC388, eax

loc_432A66:				; CODE XREF: .text:004327F9j
		push	84Bh		; nIDButton
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
		jmp	short loc_432AB9
; ---------------------------------------------------------------------------

loc_432A8B:				; CODE XREF: .text:0043278Ej
		push	0		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_432AB9
; ---------------------------------------------------------------------------

loc_432A98:				; CODE XREF: .text:00432378j
		and	esi, 0FFF0h
		cmp	esi, 0F060h
		jnz	short loc_432AB1
		push	0		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8

loc_432AB1:				; CODE XREF: .text:00432AA4j
		xor	eax, eax
		jmp	short loc_432ABE
; ---------------------------------------------------------------------------

loc_432AB5:				; CODE XREF: .text:00432387j
		xor	eax, eax
		jmp	short loc_432ABE
; ---------------------------------------------------------------------------

loc_432AB9:				; CODE XREF: .text:0043264Cj
					; .text:00432695j ...
		mov	eax, 1

loc_432ABE:				; CODE XREF: .text:004325FBj
					; .text:00432612j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 143. _Membreakpoint
; Exported entry 649. Membreakpoint

; int __cdecl Membreakpoint(HWND hparent, ulong	_addr, ulong size, int x, int y,	int fi,	int mode)
		public Membreakpoint
Membreakpoint:				; CODE XREF: .text:004B3796p
		push	ebp		; _Membreakpoint
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		test	edi, edi
		jnz	short loc_432AE6
		or	eax, 0FFFFFFFFh
		jmp	loc_432CDA
; ---------------------------------------------------------------------------

loc_432AE6:				; CODE XREF: .text:00432ADCj
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_432AFD
		mov	edx, [eax]
		add	edx, [eax+4]
		lea	ecx, [edi+ebx]
		cmp	edx, ecx
		jnb	short loc_432B05

loc_432AFD:				; CODE XREF: .text:00432AEFj
		or	eax, 0FFFFFFFFh
		jmp	loc_432CDA
; ---------------------------------------------------------------------------

loc_432B05:				; CODE XREF: .text:00432AFBj
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bpmem.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_432B2B
		cmp	ebx, [esi]
		jnz	short loc_432B2B
		mov	eax, [esi]
		add	eax, [esi+4]
		lea	edx, [edi+ebx]
		cmp	eax, edx
		jz	short loc_432B71

loc_432B2B:				; CODE XREF: .text:00432B19j
					; .text:00432B1Dj
		xor	esi, esi
		push	14h		; n
		push	0		; c
		push	offset dword_5DC378 ; s
		call	_memset
		add	esp, 0Ch
		mov	dword_5DC378, ebx
		mov	dword_5DC37C, edi
		mov	eax, [ebp+20h]
		and	eax, 0F00h
		cmp	eax, 600h
		jnz	short loc_432B65
		mov	dword_5DC380, 3801000h
		jmp	short loc_432B95
; ---------------------------------------------------------------------------

loc_432B65:				; CODE XREF: .text:00432B57j
		mov	dword_5DC380, 3601000h
		jmp	short loc_432B95
; ---------------------------------------------------------------------------

loc_432B71:				; CODE XREF: .text:00432B29j
		push	esi
		push	edi
		mov	edi, offset dword_5DC378
		mov	ecx, 5
		rep movsd
		mov	eax, dword_5DC380
		pop	edi
		and	eax, 0E00000h
		pop	esi
		or	eax, 3001000h
		mov	dword_5DC380, eax

loc_432B95:				; CODE XREF: .text:00432B63j
					; .text:00432B6Fj
		test	byte ptr dword_5DC380+2, 0E0h
		jnz	short loc_432BA8
		or	dword_5DC380, (offset stru_5FF23C.text+0DC0h)

loc_432BA8:				; CODE XREF: .text:00432B9Cj
		mov	condition, 0
		test	esi, esi
		mov	expression, 0
		mov	exprtype, 0
		jnz	short loc_432BE9
		push	offset aSetMemoryBreak ; "Set memory breakpoint	at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-400h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_432C09
; ---------------------------------------------------------------------------

loc_432BE9:				; CODE XREF: .text:00432BC5j
		push	offset aEditMemoryBrea ; "Edit memory breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-400h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_432C09:				; CODE XREF: .text:00432BE7j
		push	edi		; size
		push	ebx		; _addr
		add	eax, eax
		lea	edx, [ebp-400h]
		add	eax, edx
		push	eax		; s
		call	Decoderange
		lea	eax, [ebp-400h]
		mov	ecx, [ebp+14h]
		mov	g_dialog._title,	eax
		add	esp, 0Ch
		mov	g_dialog.x, ecx
		mov	ecx, [ebp+20h]
		mov	eax, [ebp+18h]
		mov	edx, [ebp+1Ch]
		mov	g_dialog.y, eax
		push	0		; dwInitParam
		push	offset loc_432354 ; lpDialogFunc
		mov	g_dialog.fi, edx
		mov	g_dialog.mode, ecx
		mov	eax, [ebp+8]
		push	eax		; hWndParent
		mov	g_dialog.controls, offset stru_52521C
		mov	edx, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	edx		; hInstance
		call	DialogBoxParamW
		mov	esi, eax
		xor	eax, eax
		mov	g_dialog.controls, eax
		cmp	esi, 1
		jnz	short loc_432CD8
		push	offset exprtype	; exprtype
		push	offset expression ; expression
		push	offset condition ; condition
		mov	edx, dword_5DC388 ; int
		push	edx		; count
		mov	ecx, dword_5DC384 ; int
		push	ecx		; limit
		mov	eax, dword_5DC380 ; int
		push	eax		; type
		push	edi		; size
		push	ebx		; _addr
		call	Setmembreakpoint
		add	esp, 20h
		test	eax, eax
		jnz	short loc_432CC3
		mov	edx, enable
		push	edx		; enable
		push	ebx		; _addr
		call	Enablemembreakpoint
		add	esp, 8
		jmp	short loc_432CD8
; ---------------------------------------------------------------------------

loc_432CC3:				; CODE XREF: .text:00432CAFj
		push	offset aUnableToSetBre ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		or	esi, 0FFFFFFFFh

loc_432CD8:				; CODE XREF: .text:00432C7Ej
					; .text:00432CC1j
		mov	eax, esi

loc_432CDA:				; CODE XREF: .text:00432AE1j
					; .text:00432B00j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 144. _Memlogbreakpoint
; Exported entry 652. Memlogbreakpoint

; int __cdecl Memlogbreakpoint(HWND hparent, ulong _addr, ulong size, int x, int	y, int fi, int mode)
		public Memlogbreakpoint
Memlogbreakpoint:			; CODE XREF: .text:004B37C0p
					; .text:004C6C2Bp
		push	ebp		; _Memlogbreakpoint
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		test	edi, edi
		jnz	short loc_432D02
		or	eax, 0FFFFFFFFh
		jmp	loc_432F54
; ---------------------------------------------------------------------------

loc_432D02:				; CODE XREF: .text:00432CF8j
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_432D19
		mov	edx, [eax]
		add	edx, [eax+4]
		lea	ecx, [edi+ebx]
		cmp	edx, ecx
		jnb	short loc_432D21

loc_432D19:				; CODE XREF: .text:00432D0Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_432F54
; ---------------------------------------------------------------------------

loc_432D21:				; CODE XREF: .text:00432D17j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bpmem.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_432D47
		cmp	ebx, [esi]
		jnz	short loc_432D47
		mov	eax, [esi]
		add	eax, [esi+4]
		lea	edx, [edi+ebx]
		cmp	eax, edx
		jz	short loc_432DA8

loc_432D47:				; CODE XREF: .text:00432D35j
					; .text:00432D39j
		xor	esi, esi
		push	14h		; n
		push	0		; c
		push	offset dword_5DC378 ; s
		call	_memset
		add	esp, 0Ch
		mov	dword_5DC378, ebx
		mov	dword_5DC37C, edi
		mov	eax, [ebp+20h]
		and	eax, 0F00h
		cmp	eax, 600h
		jnz	short loc_432D81
		mov	dword_5DC380, 3801000h
		jmp	short loc_432D8B
; ---------------------------------------------------------------------------

loc_432D81:				; CODE XREF: .text:00432D73j
		mov	dword_5DC380, 3601000h

loc_432D8B:				; CODE XREF: .text:00432D7Fj
		mov	condition, 0
		mov	expression, 0
		mov	exprtype, 0
		jmp	short loc_432E01
; ---------------------------------------------------------------------------

loc_432DA8:				; CODE XREF: .text:00432D45j
		push	esi
		push	edi
		mov	edi, offset dword_5DC378
		mov	ecx, 5
		rep movsd
		pop	edi
		pop	esi
		and	dword_5DC380, 0FFFFFFFh
		push	100h		; nname
		push	offset condition ; _name
		push	54h		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		push	offset expression ; _name
		push	55h		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		push	offset exprtype	; _name
		push	56h		; type
		push	ebx		; _addr
		call	FindnameW
		add	esp, 10h

loc_432E01:				; CODE XREF: .text:00432DA6j
		test	byte ptr dword_5DC380+3, 0Fh
		jnz	short loc_432E14
		or	dword_5DC380, 3000000h

loc_432E14:				; CODE XREF: .text:00432E08j
		test	byte ptr dword_5DC380+2, 0E0h
		jnz	short loc_432E27
		or	dword_5DC380, (offset stru_5FF23C.text+0DC0h)

loc_432E27:				; CODE XREF: .text:00432E1Bj
		test	esi, esi
		jnz	short loc_432E4D
		push	offset aSetMemoryBreak ; "Set memory breakpoint	at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-400h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_432E6D
; ---------------------------------------------------------------------------

loc_432E4D:				; CODE XREF: .text:00432E29j
		push	offset aEditMemoryBrea ; "Edit memory breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-400h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_432E6D:				; CODE XREF: .text:00432E4Bj
		push	edi		; size
		push	ebx		; _addr
		add	eax, eax
		lea	ecx, [ebp-400h]
		add	eax, ecx
		push	eax		; s
		call	Decoderange
		lea	eax, [ebp-400h]
		mov	edx, [ebp+14h]
		mov	g_dialog._title,	eax
		mov	ecx, [ebp+18h]
		mov	g_dialog.x, edx
		add	esp, 0Ch
		mov	edx, [ebp+20h]
		mov	eax, [ebp+1Ch]
		mov	g_dialog.y, ecx
		mov	g_dialog.fi, eax
		or	edx, 40h
		push	0		; dwInitParam
		mov	g_dialog.mode, edx
		push	offset loc_432354 ; lpDialogFunc
		mov	g_dialog.cesav,	54h
		mov	ecx, [ebp+8]
		mov	g_dialog.cesav+4, 55h
		mov	g_dialog.controls, offset stru_5253AC
		push	ecx		; hWndParent
		mov	eax, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	esi, eax
		xor	eax, eax
		mov	g_dialog.controls, eax
		cmp	esi, 1
		jnz	short loc_432F52
		push	offset exprtype	; exprtype
		push	offset expression ; expression
		push	offset condition ; condition
		mov	edx, dword_5DC388 ; int
		push	edx		; count
		mov	ecx, dword_5DC384 ; int
		push	ecx		; limit
		mov	eax, dword_5DC380 ; int
		push	eax		; type
		push	edi		; size
		push	ebx		; _addr
		call	Setmembreakpoint
		add	esp, 20h
		test	eax, eax
		jnz	short loc_432F3D
		mov	edx, enable
		push	edx		; enable
		push	ebx		; _addr
		call	Enablemembreakpoint
		add	esp, 8
		jmp	short loc_432F52
; ---------------------------------------------------------------------------

loc_432F3D:				; CODE XREF: .text:00432F29j
		push	offset aUnableToSetBre ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		or	esi, 0FFFFFFFFh

loc_432F52:				; CODE XREF: .text:00432EF8j
					; .text:00432F3Bj
		mov	eax, esi

loc_432F54:				; CODE XREF: .text:00432CFDj
					; .text:00432D1Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
