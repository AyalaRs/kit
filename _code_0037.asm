.code

; INT_PTR __stdcall loc_432F5C(HWND, UINT, WPARAM, LPARAM)
loc_432F5C:				; DATA XREF: .text:00433CE2o
					; .text:00434164o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFAF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_432F94
		dec	eax
		jz	loc_433490
		dec	eax
		jz	loc_433A92
		sub	eax, 26h
		jz	loc_4333C0
		jmp	loc_433AAF
; ---------------------------------------------------------------------------

loc_432F94:				; CODE XREF: .text:00432F76j
		push	offset g_dialog	; pdlg
		push	esi		; hw
		call	Preparedialog
		add	esp, 8
		xor	ebx, ebx

loc_432FA4:				; CODE XREF: .text:00433122j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	edi, eax
		test	byte ptr g_dialog.mode,	80h
		jz	short loc_432FD6
		push	0		; bEnable
		lea	eax, [ebx+906h]
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		jmp	short loc_432FF5
; ---------------------------------------------------------------------------

loc_432FD6:				; CODE XREF: .text:00432FBDj
		test	edi, edi
		jz	short loc_432FF5
		test	byte ptr [edi+9], 10h
		jnz	short loc_432FF5
		push	0		; bEnable
		lea	edx, [ebx+906h]
		push	edx		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_432FF5:				; CODE XREF: .text:00432FD4j
					; .text:00432FD8j ...
		test	edi, edi
		jz	short loc_43301D
		test	byte ptr [edi+9], 10h
		jnz	short loc_43301D
		push	offset aInternal_0 ; "Internal"
		call	_T
		pop	ecx
		push	eax		; lpString
		lea	ecx, [ebx+90Ah]
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4330DA
; ---------------------------------------------------------------------------

loc_43301D:				; CODE XREF: .text:00432FF7j
					; .text:00432FFDj
		test	edi, edi
		jnz	short loc_433025
		xor	eax, eax
		jmp	short loc_43302D
; ---------------------------------------------------------------------------

loc_433025:				; CODE XREF: .text:0043301Fj
		mov	eax, [edi+8]
		and	eax, 0E00000h

loc_43302D:				; CODE XREF: .text:00433023j
		cmp	eax, 400000h
		jnz	short loc_433055
		mov	edx, [edi+10h]
		push	edx
		push	offset aWriteI	; "Write:%i"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4330C6
; ---------------------------------------------------------------------------

loc_433055:				; CODE XREF: .text:00433032j
		cmp	eax, (offset stru_5FF23C.text+0DC0h)
		jnz	short loc_43307D
		mov	eax, [edi+10h]
		push	eax
		push	offset aRWI	; "R/W:%i"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4330C6
; ---------------------------------------------------------------------------

loc_43307D:				; CODE XREF: .text:0043305Aj
		cmp	eax, 800000h
		jnz	short loc_4330A6
		push	offset aExec	; "Exec"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-208h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4330C6
; ---------------------------------------------------------------------------

loc_4330A6:				; CODE XREF: .text:00433082j
		push	offset aEmpty_1	; "Empty"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-208h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4330C6:				; CODE XREF: .text:00433053j
					; .text:0043307Bj ...
		lea	edx, [ebp-208h]
		lea	ecx, [ebx+90Ah]
		push	edx		; lpString
		push	ecx		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW

loc_4330DA:				; CODE XREF: .text:00433018j
		test	edi, edi
		jnz	short loc_4330E9
		mov	word ptr [ebp-208h], 0
		jmp	short loc_43310A
; ---------------------------------------------------------------------------

loc_4330E9:				; CODE XREF: .text:004330DCj
		push	0		; comment
		lea	eax, [ebp-208h]
		push	100h		; nsymb
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, [edi+0Ch]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_43310A:				; CODE XREF: .text:004330E7j
		lea	ecx, [ebp-208h]
		lea	eax, [ebx+90Eh]
		push	ecx		; lpString
		push	eax		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		inc	ebx
		cmp	ebx, 4
		jl	loc_432FA4
		test	byte ptr g_dialog.mode,	40h
		jz	loc_433331
		push	offset condition ; lpString
		push	91Ah		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset expression ; lpString
		push	91Bh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	91Ch		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		xor	ebx, ebx
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		mov	edi, offset off_524A24

loc_433171:				; CODE XREF: .text:004331A3j
		mov	eax, [edi]
		push	eax		; s2
		push	offset exprtype	; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_433188
		mov	[ebp-4], ebx

loc_433188:				; CODE XREF: .text:00433183j
		mov	edx, [edi+4]
		push	edx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		inc	ebx
		add	edi, 8
		cmp	ebx, 4
		jl	short loc_433171
		cmp	dword ptr [ebp-4], 0
		jl	short loc_4331BF
		push	0		; lParam
		mov	eax, [ebp-4]
		push	eax		; wParam
		push	14Eh		; Msg
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	SendMessageW

loc_4331BF:				; CODE XREF: .text:004331A9j
		cmp	exprtype, 2Ah
		jnz	short loc_4331D0
		mov	ecx, offset word_5DC14E
		jmp	short loc_4331D2
; ---------------------------------------------------------------------------

loc_4331D0:				; CODE XREF: .text:004331C7j
		xor	ecx, ecx

loc_4331D2:				; CODE XREF: .text:004331CEj
		push	ecx		; s2
		push	offset aPointerTo ; "Pointer to	"
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	Fillcombowithstruct
		add	esp, 0Ch
		push	91Dh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		xor	ebx, ebx
		mov	edi, offset off_524A48

loc_4331F9:				; CODE XREF: .text:00433213j
		mov	eax, [edi]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	SendMessageW
		inc	ebx
		add	edi, 8
		cmp	ebx, 15h
		jl	short loc_4331F9
		push	0		; lParam
		mov	ecx, fnindex
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SendMessageW
		mov	edx, dword_5DC394
		and	edx, 3000000h
		sub	edx, 1000000h
		jz	short loc_43324A
		sub	edx, 2000000h
		jz	short loc_433259
		jmp	short loc_433268
; ---------------------------------------------------------------------------

loc_43324A:				; CODE XREF: .text:0043323Ej
		push	1		; uCheck
		push	91Fh		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton
		jmp	short loc_433275
; ---------------------------------------------------------------------------

loc_433259:				; CODE XREF: .text:00433246j
		push	1		; uCheck
		push	920h		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton
		jmp	short loc_433275
; ---------------------------------------------------------------------------

loc_433268:				; CODE XREF: .text:00433248j
		push	1		; uCheck
		push	91Eh		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_433275:				; CODE XREF: .text:00433257j
					; .text:00433266j
		mov	ecx, dword_5DC394
		and	ecx, 0C000000h
		sub	ecx, 4000000h
		jz	short loc_433293
		sub	ecx, 8000000h
		jz	short loc_4332A2
		jmp	short loc_4332B1
; ---------------------------------------------------------------------------

loc_433293:				; CODE XREF: .text:00433287j
		push	1		; uCheck
		push	922h		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton
		jmp	short loc_4332BE
; ---------------------------------------------------------------------------

loc_4332A2:				; CODE XREF: .text:0043328Fj
		push	1		; uCheck
		push	923h		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton
		jmp	short loc_4332BE
; ---------------------------------------------------------------------------

loc_4332B1:				; CODE XREF: .text:00433291j
		push	1		; uCheck
		push	921h		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_4332BE:				; CODE XREF: .text:004332A0j
					; .text:004332AFj
		mov	eax, limit
		lea	edx, [ebp-208h]
		push	eax
		push	offset aI_	; "%i."
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	92Ah		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, g_DlgItemInt_92b
		lea	edx, [ebp-208h]
		push	eax
		push	offset aI_	; "%i."
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	92Bh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		test	byte ptr dword_5DC394+2, 8
		mov	eax, 1
		jnz	short loc_433325
		dec	eax

loc_433325:				; CODE XREF: .text:00433322j
		push	eax		; uCheck
		push	92Ch		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton

loc_433331:				; CODE XREF: .text:0043312Fj
		test	byte ptr dword_5DC394+2, 2
		mov	edx, 1
		jnz	short loc_433340
		dec	edx

loc_433340:				; CODE XREF: .text:0043333Dj
		push	edx		; uCheck
		push	92Dh		; nIDButton
		push	esi		; hDlg
		call	CheckDlgButton
		push	esi		; hDlg
		call	loc_428454
		pop	ecx
		mov	ecx, dword_5DC394
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		jnz	short loc_43337A
		push	8FCh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	short loc_4333AF
; ---------------------------------------------------------------------------

loc_43337A:				; CODE XREF: .text:00433365j
		mov	eax, dword_5DC394
		and	eax, 0E00000h
		cmp	eax, 400000h
		jnz	short loc_43339E
		push	8FEh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus
		jmp	short loc_4333AF
; ---------------------------------------------------------------------------

loc_43339E:				; CODE XREF: .text:00433389j
		push	8FDh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetFocus

loc_4333AF:				; CODE XREF: .text:00433378j
					; .text:0043339Cj
		mov	g_dialog.initdone, 1
		xor	eax, eax
		jmp	loc_433AB8
; ---------------------------------------------------------------------------

loc_4333C0:				; CODE XREF: .text:00432F89j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	GetDlgCtrlID
		mov	ebx, eax
		cmp	ebx, 90Ah
		jz	short loc_4333DB
		cmp	ebx, 90Eh
		jnz	short loc_4333E4

loc_4333DB:				; CODE XREF: .text:004333D1j
		cmp	index, 0
		jz	short loc_43342F

loc_4333E4:				; CODE XREF: .text:004333D9j
		cmp	ebx, 90Bh
		jz	short loc_4333F4
		cmp	ebx, 90Fh
		jnz	short loc_4333FD

loc_4333F4:				; CODE XREF: .text:004333EAj
		cmp	index, 1
		jz	short loc_43342F

loc_4333FD:				; CODE XREF: .text:004333F2j
		cmp	ebx, 90Ch
		jz	short loc_43340D
		cmp	ebx, 910h
		jnz	short loc_433416

loc_43340D:				; CODE XREF: .text:00433403j
		cmp	index, 2
		jz	short loc_43342F

loc_433416:				; CODE XREF: .text:0043340Bj
		cmp	ebx, 90Dh
		jz	short loc_433426
		cmp	ebx, 911h
		jnz	short loc_433459

loc_433426:				; CODE XREF: .text:0043341Cj
		cmp	index, 3
		jnz	short loc_433459

loc_43342F:				; CODE XREF: .text:004333E2j
					; .text:004333FBj ...
		push	8		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		mov	ebx, edi
		push	ebx		; HDC
		call	SetTextColor
		push	5		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	5		; nIndex
		call	GetSysColorBrush
		jmp	loc_433AB8
; ---------------------------------------------------------------------------

loc_433459:				; CODE XREF: .text:00433424j
					; .text:0043342Dj
		cmp	ebx, 92Eh
		jnz	short loc_433489
		mov	eax, color+30h
		push	eax		; COLORREF
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
		jmp	loc_433AB8
; ---------------------------------------------------------------------------

loc_433489:				; CODE XREF: .text:0043345Fj
		xor	eax, eax
		jmp	loc_433AB8
; ---------------------------------------------------------------------------

loc_433490:				; CODE XREF: .text:00432F79j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_433AB3
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		push	edi		; wp
		push	eax		; pctr
		push	esi		; hparent
		call	Defaultactions
		add	esp, 10h
		mov	eax, edi
		and	ax, 0FFFFh
		cmp	ax, 91Ah
		jz	short loc_4334C3
		cmp	ax, 91Bh
		jnz	short loc_4334DE

loc_4334C3:				; CODE XREF: .text:004334BBj
		mov	edx, edi
		shr	edx, 10h
		cmp	dx, 5
		jnz	short loc_4334DE
		push	(offset	aOd_empty+0Fh) ; lpString
		push	92Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW

loc_4334DE:				; CODE XREF: .text:004334C1j
					; .text:004334CCj
		cmp	g_dialog.initdone, 0
		jz	loc_433AB3
		test	byte ptr g_dialog.mode,	40h
		jz	loc_4335F6
		and	dword_5DC394, 0FFFFFFh
		push	91Fh		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_43351D
		or	dword_5DC394, 1000000h
		jmp	short loc_43353F
; ---------------------------------------------------------------------------

loc_43351D:				; CODE XREF: .text:0043350Fj
		push	920h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_433538
		or	dword_5DC394, 3000000h
		jmp	short loc_43353F
; ---------------------------------------------------------------------------

loc_433538:				; CODE XREF: .text:0043352Aj
		or	dword_5DC394, 0

loc_43353F:				; CODE XREF: .text:0043351Bj
					; .text:00433536j
		push	922h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_43355A
		or	dword_5DC394, 4000000h
		jmp	short loc_43357C
; ---------------------------------------------------------------------------

loc_43355A:				; CODE XREF: .text:0043354Cj
		push	923h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_433575
		or	dword_5DC394, 0C000000h
		jmp	short loc_43357C
; ---------------------------------------------------------------------------

loc_433575:				; CODE XREF: .text:00433567j
		or	dword_5DC394, 0

loc_43357C:				; CODE XREF: .text:00433558j
					; .text:00433573j
		push	925h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_433597
		or	dword_5DC394, 10000000h
		jmp	short loc_4335B9
; ---------------------------------------------------------------------------

loc_433597:				; CODE XREF: .text:00433589j
		push	926h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4335B2
		or	dword_5DC394, 30000000h
		jmp	short loc_4335B9
; ---------------------------------------------------------------------------

loc_4335B2:				; CODE XREF: .text:004335A4j
		or	dword_5DC394, 0

loc_4335B9:				; CODE XREF: .text:00433595j
					; .text:004335B0j
		push	928h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4335D4
		or	dword_5DC394, 40000000h
		jmp	short loc_4335F6
; ---------------------------------------------------------------------------

loc_4335D4:				; CODE XREF: .text:004335C6j
		push	929h		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4335EF
		or	dword_5DC394, 0C0000000h
		jmp	short loc_4335F6
; ---------------------------------------------------------------------------

loc_4335EF:				; CODE XREF: .text:004335E1j
		or	dword_5DC394, 0

loc_4335F6:				; CODE XREF: .text:004334F2j
					; .text:004335D2j ...
		mov	ecx, edi
		and	cx, 0FFFFh
		movzx	eax, cx
		cmp	eax, 8FFh
		jg	short loc_43363C
		jz	loc_4336E8
		cmp	eax, 8FCh
		jg	short loc_433629
		jz	short loc_433680
		dec	eax
		jz	loc_4337EC
		dec	eax
		jz	loc_433A85
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_433629:				; CODE XREF: .text:00433612j
		sub	eax, 8FDh
		jz	short loc_4336A4
		dec	eax
		jz	loc_4336C8
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_43363C:				; CODE XREF: .text:00433605j
		cmp	eax, 906h
		jge	short loc_43365A
		sub	eax, 900h
		jz	loc_4336FE
		dec	eax
		jz	loc_433731
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_43365A:				; CODE XREF: .text:00433641j
		add	eax, 0FFFFF6FAh
		sub	eax, 4
		jb	loc_433764
		sub	eax, 13h
		jz	loc_433782
		dec	eax
		sub	eax, 0Ch
		jb	loc_4337B2
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_433680:				; CODE XREF: .text:00433614j
		mov	edx, dword_5DC394
		push	esi		; hDlg
		and	edx, 0FF1FFFFFh
		or	edx, 800000h
		mov	dword_5DC394, edx
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4336A4:				; CODE XREF: .text:0043362Ej
		mov	ecx, dword_5DC394
		push	esi		; hDlg
		and	ecx, 0FF1FFFFFh
		or	ecx, (offset stru_5FF23C.text+0DC0h)
		mov	dword_5DC394, ecx
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4336C8:				; CODE XREF: .text:00433631j
		mov	eax, dword_5DC394
		push	esi		; hDlg
		and	eax, 0FF1FFFFFh
		or	eax, 400000h
		mov	dword_5DC394, eax
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4336E8:				; CODE XREF: .text:00433607j
		mov	dword_5DC39C, 1
		push	esi		; hDlg
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4336FE:				; CODE XREF: .text:00433648j
		mov	edx, dword_5DC394
		and	edx, 0E00000h
		cmp	edx, 800000h
		jz	short loc_433725
		test	byte ptr _addr, 1
		jnz	short loc_433725
		mov	dword_5DC39C, 2

loc_433725:				; CODE XREF: .text:00433710j
					; .text:00433719j
		push	esi		; hDlg
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_433731:				; CODE XREF: .text:0043364Fj
		mov	ecx, dword_5DC394
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		jz	short loc_433758
		test	byte ptr _addr, 3
		jnz	short loc_433758
		mov	dword_5DC39C, 4

loc_433758:				; CODE XREF: .text:00433743j
					; .text:0043374Cj
		push	esi		; hDlg
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_433764:				; CODE XREF: .text:00433662j
		and	di, 0FFFFh
		movzx	eax, di
		add	eax, 0FFFFF6FAh
		push	esi		; hDlg
		mov	index, eax
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_433782:				; CODE XREF: .text:0043366Bj
		shr	edi, 10h
		cmp	di, 9
		jnz	loc_433AB3
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	SendMessageW
		mov	fnindex, eax
		push	esi		; hDlg
		call	loc_428454
		pop	ecx
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4337B2:				; CODE XREF: .text:00433675j
		test	byte ptr dword_5DC394+3, 0FFh
		jnz	short loc_4337D7
		push	offset aBreakpointSpec ; "Breakpoint specifies no action and will"...
		call	_T
		pop	ecx
		push	eax		; lpString
		push	92Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4337D7:				; CODE XREF: .text:004337B9j
		push	(offset	aOd_empty+0Fh) ; lpString
		push	92Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4337EC:				; CODE XREF: .text:00433617j
		test	byte ptr g_dialog.mode,	40h
		jz	loc_433A60
		push	91Ah		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		push	offset condition ; lpString
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	GetWindowTextW
		cmp	condition, 0
		jz	loc_4338B5
		push	1		; mode
		lea	eax, [ebp-408h]
		push	eax		; err
		push	0		; explen
		push	100h		; nexpr
		lea	edx, [ebp-508h]
		push	edx		; cexpr
		push	offset condition ; expression
		call	Cexpression
		add	esp, 18h
		mov	ebx, eax
		cmp	word ptr [ebp-408h], 0
		jz	short loc_4338B5
		lea	eax, [ebp-408h]
		push	eax
		push	offset aConditionS ; "Condition: %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	92Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SetFocus
		movzx	eax, bx
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		push	edx		; lParam
		push	0		; wParam
		push	142h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_4338B5:				; CODE XREF: .text:00433822j
					; .text:00433856j
		push	offset condition ; s
		mov	eax, [ebp-8]
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	91Bh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		mov	[ebp-8], eax
		push	100h		; nMaxCount
		push	offset expression ; lpString
		mov	edx, [ebp-8]
		push	edx		; hWnd
		call	GetWindowTextW
		cmp	expression, 0
		jz	loc_433982
		push	9		; mode
		lea	ecx, [ebp-408h]
		push	ecx		; err
		push	0		; explen
		push	100h		; nexpr
		lea	eax, [ebp-508h]
		push	eax		; cexpr
		push	offset expression ; expression
		call	Cexpression
		add	esp, 18h
		mov	ebx, eax
		cmp	word ptr [ebp-408h], 0
		jz	short loc_433982
		lea	eax, [ebp-408h]
		push	eax
		push	offset aExpressionS ; "Expression: %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	92Eh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		mov	eax, [ebp-8]
		push	eax		; hWnd
		call	SetFocus
		movzx	eax, bx
		mov	edx, eax
		shl	eax, 10h
		or	edx, eax
		push	edx		; lParam
		push	0		; wParam
		push	142h		; Msg
		mov	ecx, [ebp-8]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_433AB3
; ---------------------------------------------------------------------------

loc_433982:				; CODE XREF: .text:004338EFj
					; .text:00433923j
		push	offset expression ; s
		mov	eax, [ebp-8]
		push	eax		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	91Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	ebx, eax
		cmp	ebx, 4
		jge	short loc_4339CA
		mov	eax, off_524A24[ebx*8]
		push	eax		; src
		push	100h		; n
		push	offset exprtype	; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_433A13
; ---------------------------------------------------------------------------

loc_4339CA:				; CODE XREF: .text:004339ACj
		lea	edx, [ebp-208h]
		push	edx		; lParam
		push	ebx		; wParam
		push	148h		; Msg
		push	91Ch		; nIDDlgItem
		push	esi		; hDlg
		call	SendDlgItemMessageW
		mov	exprtype, 2Ah
		push	offset aPointerTo ; "Pointer to	"
		call	_wcslen
		pop	ecx
		add	eax, eax
		lea	ecx, [ebp-208h]
		add	eax, ecx
		push	eax		; src
		push	0FFh		; n
		push	offset word_5DC14E ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_433A13:				; CODE XREF: .text:004339C8j
		push	92Ch		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_433A2E
		or	dword_5DC394, 80000h
		jmp	short loc_433A38
; ---------------------------------------------------------------------------

loc_433A2E:				; CODE XREF: .text:00433A20j
		and	dword_5DC394, 0FFF7FFFFh

loc_433A38:				; CODE XREF: .text:00433A2Cj
		push	0		; bSigned
		push	0		; lpTranslated
		push	92Ah		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemInt
		mov	limit, eax
		push	0		; bSigned
		push	0		; lpTranslated
		push	92Bh		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItemInt
		mov	g_DlgItemInt_92b, eax

loc_433A60:				; CODE XREF: .text:004337F3j
		push	92Dh		; nIDButton
		push	esi		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		push	1		; result
		setz	al
		and	eax, 1
		push	esi		; hw
		mov	enable,	eax
		call	Endotdialog
		add	esp, 8
		jmp	short loc_433AB3
; ---------------------------------------------------------------------------

loc_433A85:				; CODE XREF: .text:0043361Ej
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_433AB3
; ---------------------------------------------------------------------------

loc_433A92:				; CODE XREF: .text:00432F80j
		and	edi, 0FFF0h
		cmp	edi, 0F060h
		jnz	short loc_433AAB
		push	0		; result
		push	esi		; hw
		call	Endotdialog
		add	esp, 8

loc_433AAB:				; CODE XREF: .text:00433A9Ej
		xor	eax, eax
		jmp	short loc_433AB8
; ---------------------------------------------------------------------------

loc_433AAF:				; CODE XREF: .text:00432F8Fj
		xor	eax, eax
		jmp	short loc_433AB8
; ---------------------------------------------------------------------------

loc_433AB3:				; CODE XREF: .text:0043349Cj
					; .text:004334E5j ...
		mov	eax, 1

loc_433AB8:				; CODE XREF: .text:004333BBj
					; .text:00433454j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 145. _Hardbreakpoint
; Exported entry 622. Hardbreakpoint

; int __cdecl Hardbreakpoint(HWND hparent, ulong _addr, int x, int y, int fi, int mode)
		public Hardbreakpoint
Hardbreakpoint:				; CODE XREF: .text:004B39BAp
		push	ebp		; _Hardbreakpoint
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, offset index
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		test	byte ptr [ebp+1Ch], 80h
		jz	short loc_433B19
		push	0		; subaddr
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_433B01
		or	eax, 0FFFFFFFFh
		jmp	loc_433D91
; ---------------------------------------------------------------------------

loc_433B01:				; CODE XREF: .text:00433AF7j
		push	esi
		mov	edi, esi
		mov	esi, eax
		mov	ecx, 8Ch
		rep movsd
		pop	esi
		mov	eax, [esi+0Ch]
		mov	[ebp+0Ch], eax
		jmp	loc_433BB9
; ---------------------------------------------------------------------------

loc_433B19:				; CODE XREF: .text:00433AE0j
		push	230h		; n
		push	0		; c
		push	esi		; s
		call	_memset
		add	esp, 0Ch
		xor	ebx, ebx

loc_433B2B:				; CODE XREF: .text:00433BB3j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_433B4A
		cmp	dword ptr [ebp-4], 0
		jge	short loc_433BAF
		mov	[ebp-4], ebx
		jmp	short loc_433BAF
; ---------------------------------------------------------------------------

loc_433B4A:				; CODE XREF: .text:00433B3Dj
		mov	edx, [eax+0Ch]
		cmp	edx, [ebp+0Ch]
		jnz	short loc_433BAF
		cmp	dword ptr [esi+8], 0
		jz	short loc_433B92
		mov	ecx, [ebp+1Ch]
		and	ecx, 0F00h
		cmp	ecx, 600h
		jz	short loc_433B75
		test	byte ptr [eax+0Ah], 80h
		jnz	short loc_433B75
		test	byte ptr [esi+0Ah], 80h
		jnz	short loc_433B92

loc_433B75:				; CODE XREF: .text:00433B67j
					; .text:00433B6Dj
		mov	edx, [ebp+1Ch]
		and	edx, 0F00h
		cmp	edx, 600h
		jnz	short loc_433BAF
		test	byte ptr [eax+0Ah], 80h
		jz	short loc_433BAF
		test	byte ptr [esi+0Ah], 80h
		jnz	short loc_433BAF

loc_433B92:				; CODE XREF: .text:00433B56j
					; .text:00433B73j
		push	esi
		mov	edi, esi
		mov	esi, eax
		mov	ecx, 8Ch
		rep movsd
		pop	esi
		mov	eax, [esi+8]
		and	eax, 0F30FFFh
		or	eax, 3001000h
		mov	[esi+8], eax

loc_433BAF:				; CODE XREF: .text:00433B43j
					; .text:00433B48j ...
		inc	ebx
		cmp	ebx, 4
		jl	loc_433B2B

loc_433BB9:				; CODE XREF: .text:00433B14j
		cmp	dword ptr [esi+8], 0
		jnz	short loc_433C1E
		cmp	dword ptr [ebp-4], 0
		jge	short loc_433BCA
		xor	edx, edx
		mov	[ebp-4], edx

loc_433BCA:				; CODE XREF: .text:00433BC3j
		mov	ecx, [ebp-4]
		mov	[esi], ecx
		mov	eax, [ebp+1Ch]
		and	eax, 0F00h
		cmp	eax, 600h
		jnz	short loc_433BEE
		mov	dword ptr [esi+8], 3801000h
		mov	dword ptr [esi+10h], 1
		jmp	short loc_433C1E
; ---------------------------------------------------------------------------

loc_433BEE:				; CODE XREF: .text:00433BDCj
		mov	dword ptr [esi+8], 3601000h
		mov	eax, [ebp+1Ch]
		and	eax, 1Fh
		cmp	eax, 4
		jnz	short loc_433C09
		mov	dword ptr [esi+10h], 4
		jmp	short loc_433C1E
; ---------------------------------------------------------------------------

loc_433C09:				; CODE XREF: .text:00433BFEj
		cmp	eax, 2
		jnz	short loc_433C17
		mov	dword ptr [esi+10h], 2
		jmp	short loc_433C1E
; ---------------------------------------------------------------------------

loc_433C17:				; CODE XREF: .text:00433C0Cj
		mov	dword ptr [esi+10h], 1

loc_433C1E:				; CODE XREF: .text:00433BBDj
					; .text:00433BECj ...
		mov	dword ptr [esi+4], 1
		mov	condition, 0
		mov	edx, [ebp+0Ch]
		mov	expression, 0
		xor	ecx, ecx
		mov	exprtype, 0
		mov	[esi+0Ch], edx
		test	byte ptr [ebp+1Ch], 80h
		mov	dword_5DC34C, ecx
		jz	short loc_433C75
		mov	eax, [esi]
		inc	eax
		push	eax
		push	offset aHardwareBrea_0 ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-204h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_433C95
; ---------------------------------------------------------------------------

loc_433C75:				; CODE XREF: .text:00433C52j
		push	offset aHardwareBrea_2 ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-204h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_433C95:				; CODE XREF: .text:00433C73j
		mov	edx, 100h
		lea	ecx, [ebp-204h]
		sub	edx, eax
		add	eax, eax
		push	0		; comment
		push	edx		; nsymb
		add	eax, ecx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Decodeaddress
		lea	eax, [ebp-204h]
		mov	edx, [ebp+10h]
		mov	g_dialog._title,	eax
		add	esp, 18h
		mov	g_dialog.x, edx
		mov	edx, [ebp+1Ch]
		mov	eax, [ebp+18h]
		mov	ecx, [ebp+14h]
		mov	g_dialog.y, ecx
		push	0		; dwInitParam
		push	offset loc_432F5C ; lpDialogFunc
		mov	g_dialog.fi, eax
		and	edx, 0FFFFFFBFh
		mov	ecx, [ebp+8]
		mov	g_dialog.mode, edx
		mov	g_dialog.controls, offset stru_5258FC
		push	ecx		; hWndParent
		mov	eax, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	g_dialog.controls, eax
		cmp	ebx, 1
		jnz	short loc_433D8F
		or	dword ptr [esi+8], 1000h
		push	offset exprtype	; exprtype
		push	offset expression ; expression
		push	offset condition ; condition
		push	0		; actions
		mov	edx, [esi+1Ch]
		push	edx		; count
		mov	ecx, [esi+18h]
		push	ecx		; limit
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		push	0		; fnindex
		mov	edx, [esi+8]
		push	edx		; type
		mov	ecx, [esi+10h]
		push	ecx		; size
		mov	eax, [esi]
		push	eax		; index
		call	Sethardbreakpoint
		add	esp, 2Ch
		test	eax, eax
		jnz	short loc_433D7A
		mov	edx, enable
		push	edx		; enable
		mov	ecx, [esi]
		push	ecx		; index
		call	Enablehardbreakpoint
		add	esp, 8
		push	1
		call	loc_44F668
		pop	ecx
		jmp	short loc_433D8F
; ---------------------------------------------------------------------------

loc_433D7A:				; CODE XREF: .text:00433D5Cj
		push	offset aUnableToSetBre ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		or	ebx, 0FFFFFFFFh

loc_433D8F:				; CODE XREF: .text:00433D1Fj
					; .text:00433D78j
		mov	eax, ebx

loc_433D91:				; CODE XREF: .text:00433AFCj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 146. _Hardlogbreakpoint
; Exported entry 623. Hardlogbreakpoint

; int __cdecl Hardlogbreakpoint(HWND hparent, ulong _addr, int fnindex, int x, int y, int fi, int mode)
		public Hardlogbreakpoint
Hardlogbreakpoint:			; CODE XREF: .text:004B39E6p
					; .text:004C7B87p
		push	ebp		; _Hardlogbreakpoint
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF51Ch
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+0Ch]
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		test	byte ptr [ebp+20h], 80h
		jz	short loc_433DF0
		push	0		; subaddr
		push	esi		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_433DD7
		or	eax, 0FFFFFFFFh
		jmp	loc_434235
; ---------------------------------------------------------------------------

loc_433DD7:				; CODE XREF: .text:00433DCDj
		mov	esi, eax
		mov	edi, offset index
		mov	ecx, 8Ch
		rep movsd
		mov	esi, _addr
		jmp	loc_433E8D
; ---------------------------------------------------------------------------

loc_433DF0:				; CODE XREF: .text:00433DB9j
		push	230h		; n
		push	0		; c
		push	offset index	; s
		call	_memset
		add	esp, 0Ch
		xor	ebx, ebx

loc_433E06:				; CODE XREF: .text:00433E87j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_433E25
		cmp	dword ptr [ebp-4], 0
		jge	short loc_433E83
		mov	[ebp-4], ebx
		jmp	short loc_433E83
; ---------------------------------------------------------------------------

loc_433E25:				; CODE XREF: .text:00433E18j
		cmp	esi, [eax+0Ch]
		jnz	short loc_433E83
		cmp	dword_5DC394, 0
		jz	short loc_433E73
		mov	edx, [ebp+20h]
		and	edx, 0F00h
		cmp	edx, 600h
		jz	short loc_433E53
		test	byte ptr [eax+0Ah], 80h
		jnz	short loc_433E53
		test	byte ptr dword_5DC394+2, 80h
		jnz	short loc_433E73

loc_433E53:				; CODE XREF: .text:00433E42j
					; .text:00433E48j
		mov	ecx, [ebp+20h]
		and	ecx, 0F00h
		cmp	ecx, 600h
		jnz	short loc_433E83
		test	byte ptr [eax+0Ah], 80h
		jz	short loc_433E83
		test	byte ptr dword_5DC394+2, 80h
		jnz	short loc_433E83

loc_433E73:				; CODE XREF: .text:00433E31j
					; .text:00433E51j
		push	esi
		mov	esi, eax
		mov	edi, offset index
		mov	ecx, 8Ch
		rep movsd
		pop	esi

loc_433E83:				; CODE XREF: .text:00433E1Ej
					; .text:00433E23j ...
		inc	ebx
		cmp	ebx, 4
		jl	loc_433E06

loc_433E8D:				; CODE XREF: .text:00433DEBj
		cmp	dword_5DC394, 0
		jnz	short loc_433F10
		cmp	dword ptr [ebp-4], 0
		jl	short loc_433F10
		mov	edx, [ebp+20h]
		mov	eax, [ebp-4]
		and	edx, 0F00h
		mov	index, eax
		cmp	edx, 600h
		jnz	short loc_433ECB
		mov	dword_5DC394, 800000h
		mov	dword_5DC39C, 1
		jmp	short loc_433F07
; ---------------------------------------------------------------------------

loc_433ECB:				; CODE XREF: .text:00433EB3j
		mov	dword_5DC394, (offset stru_5FF23C.text+0DC0h)
		mov	eax, [ebp+20h]
		and	eax, 1Fh
		cmp	eax, 4
		jnz	short loc_433EEC
		mov	dword_5DC39C, 4
		jmp	short loc_433F07
; ---------------------------------------------------------------------------

loc_433EEC:				; CODE XREF: .text:00433EDEj
		cmp	eax, 2
		jnz	short loc_433EFD
		mov	dword_5DC39C, 2
		jmp	short loc_433F07
; ---------------------------------------------------------------------------

loc_433EFD:				; CODE XREF: .text:00433EEFj
		mov	dword_5DC39C, 1

loc_433F07:				; CODE XREF: .text:00433EC9j
					; .text:00433EEAj ...
		mov	edx, [ebp+10h]
		mov	fnindex, edx

loc_433F10:				; CODE XREF: .text:00433E94j
					; .text:00433E9Aj
		mov	dword_5DC390, 1
		cmp	esi, _addr
		jnz	short loc_433F74
		push	100h		; nname
		push	offset condition ; _name
		push	57h		; type
		mov	ecx, index
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		push	offset expression ; _name
		push	58h		; type
		mov	eax, index
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		push	100h		; nname
		push	offset exprtype	; _name
		push	59h		; type
		mov	edx, index
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		jmp	short loc_433F8F
; ---------------------------------------------------------------------------

loc_433F74:				; CODE XREF: .text:00433F20j
		mov	condition, 0
		mov	expression, 0
		mov	exprtype, 0

loc_433F8F:				; CODE XREF: .text:00433F72j
		mov	_addr, esi
		xor	ecx, ecx
		mov	dword_5DC34C, ecx
		push	0		; subaddr
		push	esi		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_433FDB
		cmp	esi, [eax]
		jnz	short loc_433FDB
		test	dword ptr [eax+8], 7E00000h
		jz	loc_434069
		cmp	dword ptr [eax+28h], 0
		jle	loc_434069
		mov	dword_5DC34C, 1
		jmp	loc_434069
; ---------------------------------------------------------------------------

loc_433FDB:				; CODE XREF: .text:00433FAFj
					; .text:00433FB3j
		push	5		; mode
		push	10h		; size
		push	esi		; _addr
		lea	eax, [ebp-214h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jbe	short loc_434069
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-1AE4h]
		push	edx		; da
		push	0		; dec
		push	esi		; ip
		push	eax		; cmdsize
		lea	ecx, [ebp-214h]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jbe	short loc_434069
		cmp	dword ptr [ebp-1AB8h], 0
		jnz	short loc_434069
		cmp	dword ptr [ebp-1AA4h], 0
		jz	short loc_434069
		mov	eax, [ebp-1AA4h]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	ebx, eax
		push	0		; subaddr
		push	ebx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_434069
		cmp	ebx, [eax]
		jnz	short loc_434069
		test	dword ptr [eax+8], 7E00000h
		jz	short loc_434069
		cmp	dword ptr [eax+28h], 0
		jle	short loc_434069
		mov	dword_5DC34C, 1

loc_434069:				; CODE XREF: .text:00433FBCj
					; .text:00433FC6j ...
		cmp	dword_5DC34C, 0
		jnz	short loc_434085
		cmp	fnindex, 0
		jnz	short loc_434085
		and	dword_5DC394, 0CFFFFFFFh

loc_434085:				; CODE XREF: .text:00434070j
					; .text:00434079j
		push	0		; nname
		push	0		; _name
		push	36h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		setnle	bl
		and	ebx, 1
		mov	dword_5DC350, ebx
		test	ebx, ebx
		jnz	short loc_4340B0
		and	dword_5DC394, 3FFFFFFFh

loc_4340B0:				; CODE XREF: .text:004340A4j
		test	byte ptr dword_5DC394+3, 0FFh
		jnz	short loc_4340C3
		or	dword_5DC394, 3000000h

loc_4340C3:				; CODE XREF: .text:004340B7j
		test	byte ptr [ebp+20h], 80h
		jz	short loc_4340ED
		mov	eax, index
		inc	eax
		push	eax
		push	offset aHardwareBrea_0 ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-204h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_43410D
; ---------------------------------------------------------------------------

loc_4340ED:				; CODE XREF: .text:004340C7j
		push	offset aHardwareBrea_2 ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-204h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_43410D:				; CODE XREF: .text:004340EBj
		mov	edx, 100h
		lea	ecx, [ebp-204h]
		sub	edx, eax
		add	eax, eax
		push	0		; comment
		push	edx		; nsymb
		add	eax, ecx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		push	esi		; _addr
		call	Decodeaddress
		lea	eax, [ebp-204h]
		mov	edx, [ebp+18h]
		mov	g_dialog._title,	eax
		mov	eax, [ebp+14h]
		mov	g_dialog.x, eax
		add	esp, 18h
		mov	eax, [ebp+20h]
		mov	ecx, [ebp+1Ch]
		mov	g_dialog.y, edx
		mov	g_dialog.fi, ecx
		or	eax, 40h
		push	0		; dwInitParam
		mov	g_dialog.mode, eax
		push	offset loc_432F5C ; lpDialogFunc
		mov	g_dialog.cesav,	51h
		mov	edx, [ebp+8]
		mov	g_dialog.cesav+4, 52h
		mov	g_dialog.controls, offset stru_525D5C
		push	edx		; hWndParent
		mov	ecx, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		xor	eax, eax
		mov	g_dialog.controls, eax
		cmp	ebx, 1
		jnz	loc_434233
		or	dword_5DC394, 1000h
		push	offset exprtype	; exprtype
		push	offset expression ; expression
		push	offset condition ; condition
		push	0		; actions
		mov	edx, g_DlgItemInt_92b
		push	edx		; count
		mov	ecx, limit
		push	ecx		; limit
		push	esi		; _addr
		mov	eax, fnindex
		push	eax		; fnindex
		mov	edx, dword_5DC394
		push	edx		; type
		mov	ecx, dword_5DC39C
		push	ecx		; size
		mov	eax, index
		push	eax		; index
		call	Sethardbreakpoint
		add	esp, 2Ch
		test	eax, eax
		jnz	short loc_43421E
		mov	edx, enable
		push	edx		; enable
		mov	ecx, index
		push	ecx		; index
		call	Enablehardbreakpoint
		add	esp, 8
		push	1
		call	loc_44F668
		pop	ecx
		jmp	short loc_434233
; ---------------------------------------------------------------------------

loc_43421E:				; CODE XREF: .text:004341FCj
		push	offset aUnableToSetBre ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		or	ebx, 0FFFFFFFFh

loc_434233:				; CODE XREF: .text:004341A8j
					; .text:0043421Cj
		mov	eax, ebx

loc_434235:				; CODE XREF: .text:00433DD2j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
