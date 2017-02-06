.code

; ---------------------------------------------------------------------------
; Exported entry 241. _Createframewindow
; Exported entry 441. Createframewindow

; int __cdecl Createframewindow(t_frame	*pf, wchar_t *icon, wchar_t *_title)
		public Createframewindow
Createframewindow:			; CODE XREF: .text:00477A47p
		push	ebp		; _Createframewindow
		mov	ebp, esp
		add	esp, 0FFFFFFCCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_47387E
		xor	eax, eax
		jmp	loc_473BE2
; ---------------------------------------------------------------------------

loc_47387E:				; CODE XREF: .text:00473875j
		xor	edx, edx
		mov	[ebx+64h], edx
		mov	[ebx+58h], edx
		mov	[ebx+54h], edx
		cmp	restorewinpos, 0
		jz	short loc_4738F0
		test	byte ptr [ebx+46h], 2
		jz	short loc_4738F0
		cmp	word ptr [ebx],	0
		jz	short loc_4738F0
		lea	eax, [ebp-14h]
		push	eax
		lea	ecx, [ebp-10h]
		push	ecx
		lea	eax, [ebp-0Ch]
		push	eax
		lea	edx, [ebp-8]
		push	edx
		lea	ecx, [ebp-4]
		push	ecx		; arglist
		push	offset aIIIII_1	; "%i,%i,%i,%i,%i"
		push	offset aPlacement_1 ; "Placement"
		push	ebx		; section
		push	0		; file
		call	Getfromini
		add	esp, 24h
		cmp	eax, 5
		jnz	short loc_4738F0
		cmp	dword ptr [ebp-0Ch], 0
		jl	short loc_4738F0
		push	0		; nIndex
		call	GetSystemMetrics
		cmp	eax, [ebp-0Ch]
		jl	short loc_4738F0
		cmp	dword ptr [ebp-10h], 0
		jl	short loc_4738F0
		push	1		; nIndex
		call	GetSystemMetrics
		cmp	eax, [ebp-10h]
		jge	short loc_47395C

loc_4738F0:				; CODE XREF: .text:00473890j
					; .text:00473896j ...
		xor	eax, eax
		mov	esi, 12CF0000h
		mov	[ebp-20h], eax
		mov	[ebp-24h], eax
		mov	eax, fi
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font._width[eax*4]
		shl	ecx, 6
		mov	[ebp-1Ch], ecx
		mov	eax, font.height[eax*4]
		shl	eax, 5
		mov	[ebp-18h], eax
		push	0		; bMenu
		push	esi		; dwStyle
		lea	eax, [ebp-24h]
		push	eax		; lpRect
		call	AdjustWindowRect
		mov	dword ptr [ebp-4], 80000000h
		mov	dword ptr [ebp-8], 80000000h
		mov	edx, [ebp-1Ch]
		sub	edx, [ebp-24h]
		mov	[ebp-0Ch], edx
		mov	ecx, [ebp-18h]
		sub	ecx, [ebp-20h]
		mov	[ebp-10h], ecx
		xor	eax, eax
		mov	[ebp-14h], eax
		jmp	loc_473A17
; ---------------------------------------------------------------------------

loc_47395C:				; CODE XREF: .text:004738EEj
		mov	eax, hwclient
		test	eax, eax
		jz	loc_4739FA
		cmp	dword_57FE64, 0
		jnz	loc_4739FA
		lea	edx, [ebp-24h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetClientRect
		push	1Eh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-1Ch]
		push	20h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		cmp	esi, [ebp-4]
		jge	short loc_4739B2
		push	1Eh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-1Ch]
		push	20h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		mov	[ebp-4], esi

loc_4739B2:				; CODE XREF: .text:00473998j
		cmp	dword ptr [ebp-4], 0
		jge	short loc_4739BD
		xor	eax, eax
		mov	[ebp-4], eax

loc_4739BD:				; CODE XREF: .text:004739B6j
		push	1Fh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-18h]
		push	21h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		cmp	esi, [ebp-8]
		jge	short loc_4739EF
		push	1Fh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-18h]
		push	21h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		mov	[ebp-8], esi

loc_4739EF:				; CODE XREF: .text:004739D5j
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4739FA
		xor	eax, eax
		mov	[ebp-8], eax

loc_4739FA:				; CODE XREF: .text:00473963j
					; .text:00473970j ...
		cmp	dword ptr [ebp-14h], 2
		mov	esi, 2CF0000h
		jnz	short loc_473A0B
		or	esi, 20000000h

loc_473A0B:				; CODE XREF: .text:00473A03j
		cmp	dword ptr [ebp-14h], 3
		jz	short loc_473A17
		or	esi, 10000000h

loc_473A17:				; CODE XREF: .text:00473957j
					; .text:00473A0Fj
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+68h], eax
		mov	[ebx+6Ch], edx
		test	edi, edi
		jnz	short loc_473A29
		mov	ecx, ebx
		jmp	short loc_473A2B
; ---------------------------------------------------------------------------

loc_473A29:				; CODE XREF: .text:00473A23j
		mov	ecx, edi

loc_473A2B:				; CODE XREF: .text:00473A27j
		push	ecx		; src
		push	100h		; n
		lea	eax, [ebx+7Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	hwclient, 0
		jnz	short loc_473A7D
		mov	edx, g_hInstance
		push	0		; lpParam
		push	edx		; hInstance
		mov	eax, hwollymain
		push	0		; hMenu
		push	eax		; hWndParent
		mov	edx, [ebp-10h]
		push	edx		; nHeight
		mov	ecx, [ebp-0Ch]
		push	ecx		; nWidth
		lea	ecx, [ebx+7Ch]
		mov	eax, [ebp-8]
		push	eax		; Y
		mov	edx, [ebp-4]
		push	edx		; X
		push	esi		; dwStyle
		push	ecx		; lpWindowName
		push	offset word_5D54C8 ; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebx+54h], eax
		jmp	short loc_473AAE
; ---------------------------------------------------------------------------

loc_473A7D:				; CODE XREF: .text:00473A44j
		mov	eax, g_hInstance
		push	0		; lParam
		push	eax		; hInstance
		mov	edx, hwclient
		push	edx		; hWndParent
		mov	ecx, [ebp-10h]
		push	ecx		; nHeight
		mov	eax, [ebp-0Ch]
		push	eax		; nWidth
		lea	eax, [ebx+7Ch]
		mov	edx, [ebp-8]
		push	edx		; Y
		mov	ecx, [ebp-4]
		push	ecx		; X
		push	esi		; dwStyle
		push	eax		; lpWindowName
		push	offset word_5D54C8 ; lpClassName
		call	CreateMDIWindowW
		mov	[ebx+54h], eax

loc_473AAE:				; CODE XREF: .text:00473A7Bj
		cmp	dword ptr [ebx+54h], 0
		jnz	short loc_473ABB
		xor	eax, eax
		jmp	loc_473BE2
; ---------------------------------------------------------------------------

loc_473ABB:				; CODE XREF: .text:00473AB2j
		mov	eax, dword_57FE6C
		test	eax, eax
		jz	short loc_473AD6
		push	13h		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	eax		; hWnd
		call	SetWindowPos

loc_473AD6:				; CODE XREF: .text:00473AC2j
		push	ebx		; dwNewLong
		push	0		; nIndex
		mov	edx, [ebx+54h]
		push	edx		; hWnd
		call	SetWindowLongW
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_473AF9
		mov	ecx, [ebp+0Ch]
		push	ecx		; lpIconName
		mov	eax, g_hInstance
		push	eax		; hInstance
		call	LoadIconW
		jmp	short loc_473AFB
; ---------------------------------------------------------------------------

loc_473AF9:				; CODE XREF: .text:00473AE6j
		xor	eax, eax

loc_473AFB:				; CODE XREF: .text:00473AF7j
		test	eax, eax
		jnz	short loc_473B10
		push	offset aIco_aaamain_0 ;	"ICO_AAAMAIN"
		mov	edx, g_hInstance
		push	edx		; hInstance
		call	LoadIconW

loc_473B10:				; CODE XREF: .text:00473AFDj
		push	eax		; lParam
		push	1		; wParam
		push	80h		; Msg
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	SendMessageW
		test	byte ptr [ebx+45h], 10h
		jz	short loc_473B69
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		push	0		; hMenu
		mov	edx, [ebx+54h]
		push	edx		; hWndParent
		push	0		; nHeight
		push	0		; nWidth
		push	0		; Y
		push	0		; X
		push	50000000h	; dwStyle
		push	0		; lpWindowName
		push	offset aMsctls_statu_0 ; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	esi, eax
		mov	[ebx+64h], esi
		test	esi, esi
		jz	short loc_473B69
		push	0		; lParam
		mov	eax, sysfont.hfont
		push	eax		; wParam
		push	30h		; Msg
		push	esi		; hWnd
		call	SendMessageW

loc_473B69:				; CODE XREF: .text:00473B25j
					; .text:00473B57j
		lea	edx, [ebp-24h]
		push	edx		; lpRect
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_473B90
		lea	edx, [ebp-34h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-28h]
		sub	ecx, [ebp-30h]
		sub	[ebp-18h], ecx

loc_473B90:				; CODE XREF: .text:00473B7Bj
		inc	dword ptr [ebp-24h]
		dec	dword ptr [ebp-1Ch]
		inc	dword ptr [ebp-20h]
		dec	dword ptr [ebp-18h]
		lea	eax, [ebp-24h]
		push	eax		; int
		mov	edx, [ebx+48h]
		push	edx		; int
		push	ebx		; lpAppName
		call	loc_472B68
		add	esp, 0Ch
		cmp	dword ptr [ebp-14h], 3
		jnz	short loc_473BC9
		push	3		; nCmdShow
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	ShowWindow
		push	5		; nCmdShow
		mov	eax, [ebx+54h]
		push	eax		; hWnd
		call	ShowWindow

loc_473BC9:				; CODE XREF: .text:00473BB1j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebx+54h]
		push	edx		; hWnd
		call	InvalidateRect
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	UpdateWindow
		mov	eax, [ebx+54h]

loc_473BE2:				; CODE XREF: .text:00473879j
					; .text:00473AB6j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 242. _Updateframe
; Exported entry 742. Updateframe

; BOOL __cdecl Updateframe(t_frame *pf,	int redrawnow)
		public Updateframe
Updateframe:				; CODE XREF: .text:00477FADp
					; .text:00478A91p
		push	ebp		; _Updateframe
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_473C22
		cmp	dword ptr [ebx+54h], 0
		jz	short loc_473C22
		mov	eax, [ebx+48h]
		push	eax
		push	ebx
		call	loc_47241C
		add	esp, 8
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_473C22
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, [ebx+54h]
		push	edx		; hWnd
		call	RedrawWindow

loc_473C22:				; CODE XREF: .text:00473BF5j
					; .text:00473BFBj ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 243. _Getactiveframe
; Exported entry 547. Getactiveframe

; t_table *__cdecl Getactiveframe(t_frame *pf)
		public Getactiveframe
Getactiveframe:				; CODE XREF: .text:0047739Bp
		push	ebp		; _Getactiveframe
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_473C41
		cmp	dword ptr [eax+68h], 0
		jz	short loc_473C41
		mov	edx, [eax+68h]
		cmp	dword ptr [edx+4], 3
		jz	short loc_473C45

loc_473C41:				; CODE XREF: .text:00473C30j
					; .text:00473C36j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_473C45:				; CODE XREF: .text:00473C3Fj
		mov	ecx, [eax+68h]
		mov	eax, [ecx+28h]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 244. _Gettabcount
; Exported entry 615. Gettabcount

; signed int __cdecl Gettabcount(t_frame *pf, int *index)
		public Gettabcount
Gettabcount:				; CODE XREF: .text:00474515p
					; .text:0047454Cp ...
		push	ebp		; _Gettabcount
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+8]
		test	ecx, ecx
		jz	short loc_473C61
		cmp	dword ptr [ecx+58h], 0
		jnz	short loc_473C66

loc_473C61:				; CODE XREF: .text:00473C59j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_473C66:				; CODE XREF: .text:00473C5Fj
		xor	edx, edx
		or	ebx, 0FFFFFFFFh
		mov	eax, [ecx+48h]
		test	eax, eax
		jz	short loc_473C93

loc_473C72:				; CODE XREF: .text:00473C91j
		cmp	dword ptr [eax+4], 3
		jnz	short loc_473C93
		cmp	dword ptr [eax+1Ch], 0
		jnz	short loc_473C93
		cmp	dword ptr [eax+28h], 0
		jz	short loc_473C93
		cmp	eax, [ecx+68h]
		jnz	short loc_473C8B
		mov	ebx, edx

loc_473C8B:				; CODE XREF: .text:00473C87j
		inc	edx
		mov	eax, [eax+10h]
		test	eax, eax
		jnz	short loc_473C72

loc_473C93:				; CODE XREF: .text:00473C70j
					; .text:00473C76j ...
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_473C9E
		mov	eax, [ebp+0Ch]
		mov	[eax], ebx

loc_473C9E:				; CODE XREF: .text:00473C97j
		mov	eax, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 245. _Setactivetab
; Exported entry 706. Setactivetab

; int __cdecl Setactivetab(t_frame *pf,	int index)
		public Setactivetab
Setactivetab:				; CODE XREF: .text:004741BDp
					; .text:0047452Fp ...
		push	ebp		; _Setactivetab
		mov	ebp, esp
		add	esp, 0FFFFFDECh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_473CBF
		or	eax, 0FFFFFFFFh
		jmp	loc_473EBC
; ---------------------------------------------------------------------------

loc_473CBF:				; CODE XREF: .text:00473CB5j
		cmp	dword ptr [ebp+0Ch], 0
		jge	short loc_473CE7
		mov	eax, [esi+68h]
		test	eax, eax
		jz	short loc_473CDB
		mov	edx, [eax+28h]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	DestroyWindow

loc_473CDB:				; CODE XREF: .text:00473CCAj
		xor	eax, eax
		mov	[esi+68h], eax
		xor	eax, eax
		jmp	loc_473EBC
; ---------------------------------------------------------------------------

loc_473CE7:				; CODE XREF: .text:00473CC3j
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		xor	edi, edi
		mov	eax, [esi+54h]
		test	eax, eax
		jz	short loc_473D03
		push	0		; lParam
		push	0		; wParam
		push	0Bh		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_473D03:				; CODE XREF: .text:00473CF5j
		mov	ebx, [esi+48h]
		test	ebx, ebx
		jz	loc_473E94

loc_473D0E:				; CODE XREF: .text:00473E8Ej
		cmp	dword ptr [ebx+4], 3
		jnz	loc_473E94
		cmp	dword ptr [ebx+1Ch], 0
		jnz	loc_473E94
		cmp	dword ptr [ebx+28h], 0
		jz	loc_473E94
		cmp	edi, [ebp+0Ch]
		jnz	loc_473E88
		cmp	ebx, [esi+68h]
		jz	loc_473E48
		push	0		; lParam
		push	0		; wParam
		push	130Bh		; Msg
		mov	eax, [esi+58h]
		push	eax		; hWnd
		call	SendMessageW
		cmp	eax, [ebp+0Ch]
		jz	short loc_473D69
		push	0		; lParam
		mov	edx, [ebp+0Ch]
		push	edx		; wParam
		push	130Ch		; Msg
		mov	ecx, [esi+58h]
		push	ecx		; hWnd
		call	SendMessageW

loc_473D69:				; CODE XREF: .text:00473D53j
		mov	eax, [esi+68h]
		test	eax, eax
		jz	short loc_473D7F
		mov	edx, [eax+28h]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	DestroyWindow

loc_473D7F:				; CODE XREF: .text:00473D6Ej
		mov	[esi+68h], ebx
		lea	ecx, [ebp-214h]
		mov	eax, [ebx+28h]
		mov	edx, [esi+54h]
		mov	[eax+224h], edx
		push	ecx		; lpRect
		push	esi		; int
		call	loc_472DFC
		add	esp, 8
		lea	eax, [ebp-214h]
		push	eax		; rpos
		mov	edx, [ebx+28h]
		push	edx		; pt
		mov	ecx, [esi+58h]
		push	ecx		; hparent
		call	Createottablewindow
		add	esp, 0Ch
		lea	eax, [esi+7Ch]
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-204h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		lea	eax, [ebx+6Ch]
		test	eax, eax
		jz	short loc_473E24
		cmp	word ptr [ebx+6Ch], 0
		jz	short loc_473E24
		test	edi, edi
		jle	short loc_473E05
		mov	ecx, edi
		mov	edx, 100h
		sub	edx, edi
		lea	eax, [ebp-204h]
		add	ecx, ecx
		push	offset asc_53C868 ; " -	"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_473E05:				; CODE XREF: .text:00473DDFj
		mov	ecx, 100h
		lea	edx, [ebx+6Ch]
		sub	ecx, edi
		push	edx		; src
		lea	eax, [ebp-204h]
		add	edi, edi
		add	edi, eax
		push	ecx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_473E24:				; CODE XREF: .text:00473DD4j
					; .text:00473DDBj
		lea	edx, [ebp-204h]
		push	edx		; lpString
		mov	ecx, [esi+54h]
		push	ecx		; hWnd
		call	SetWindowTextW
		mov	eax, [esi+64h]
		test	eax, eax
		jz	short loc_473E48
		add	ebx, 26Ch
		push	ebx		; lpString
		push	eax		; hWnd
		call	SetWindowTextW

loc_473E48:				; CODE XREF: .text:00473D38j
					; .text:00473E39j
		mov	eax, [esi+68h]
		test	eax, eax
		jz	short loc_473E81
		mov	edx, [eax+28h]
		cmp	dword ptr [edx+22Ch], 0
		jz	short loc_473E81
		call	GetFocus
		cmp	eax, [esi+54h]
		jz	short loc_473E6F
		call	GetFocus
		cmp	eax, [esi+58h]
		jnz	short loc_473E81

loc_473E6F:				; CODE XREF: .text:00473E63j
		mov	ecx, [esi+68h]
		mov	eax, [ecx+28h]
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	SetFocus

loc_473E81:				; CODE XREF: .text:00473E4Dj
					; .text:00473E59j ...
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_473E94
; ---------------------------------------------------------------------------

loc_473E88:				; CODE XREF: .text:00473D2Fj
		inc	edi
		mov	ebx, [ebx+10h]
		test	ebx, ebx
		jnz	loc_473D0E

loc_473E94:				; CODE XREF: .text:00473D08j
					; .text:00473D12j ...
		mov	eax, [esi+54h]
		test	eax, eax
		jz	short loc_473EB9
		push	0		; lParam
		push	1		; wParam
		push	0Bh		; Msg
		push	eax		; hWnd
		call	SendMessageW
		push	81h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, [esi+54h]
		push	edx		; hWnd
		call	RedrawWindow

loc_473EB9:				; CODE XREF: .text:00473E99j
		mov	eax, [ebp-4]

loc_473EBC:				; CODE XREF: .text:00473CBAj
					; .text:00473CE2j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	loc_473EC4(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_473EC4:				; CODE XREF: .text:004741E6p
					; DATA XREF: .text:00474634o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	0		; nIndex
		push	esi		; hWnd
		call	GetWindowLongW
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_473F15
		cmp	hwclient, 0
		jnz	short loc_473F01
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_4745FD
; ---------------------------------------------------------------------------

loc_473F01:				; CODE XREF: .text:00473EEBj
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4745FD
; ---------------------------------------------------------------------------

loc_473F15:				; CODE XREF: .text:00473EE2j
		mov	edx, edi
		cmp	edx, 47h
		jg	short loc_473F6B
		jz	loc_4743C7
		cmp	edx, 7
		jg	short loc_473F4B
		jz	loc_4741F0
		sub	edx, 2
		jz	loc_473FC5
		dec	edx
		jz	loc_4745A5
		sub	edx, 2
		jz	loc_47441C
		jmp	loc_4745D0
; ---------------------------------------------------------------------------

loc_473F4B:				; CODE XREF: .text:00473F25j
		sub	edx, 0Fh
		jz	loc_47421F
		sub	edx, 13h
		jz	loc_4745A5
		sub	edx, 2
		jz	loc_474286
		jmp	loc_4745D0
; ---------------------------------------------------------------------------

loc_473F6B:				; CODE XREF: .text:00473F1Aj
		cmp	edx, 112h
		jg	short loc_473F9C
		jz	loc_4745A5
		sub	edx, 4Eh
		jz	loc_474060
		sub	edx, 0B2h
		jz	loc_4744F8
		sub	edx, 4
		jz	loc_4744F8
		jmp	loc_4745D0
; ---------------------------------------------------------------------------

loc_473F9C:				; CODE XREF: .text:00473F71j
		sub	edx, 120h
		jz	loc_4745A5
		add	edx, 0FFFFFC9Ch
		sub	edx, 4
		jb	loc_474573
		sub	edx, 4
		jz	loc_474598
		jmp	loc_4745D0
; ---------------------------------------------------------------------------

loc_473FC5:				; CODE XREF: .text:00473F30j
		cmp	esi, dword_57FE6C
		jnz	short loc_473FD5
		xor	ecx, ecx
		mov	dword_57FE6C, ecx

loc_473FD5:				; CODE XREF: .text:00473FCBj
		test	byte ptr [ebx+46h], 2
		jz	short loc_474034
		cmp	word ptr [ebx],	0
		jz	short loc_474034
		mov	dword ptr [ebp-2C4h], 2Ch
		lea	eax, [ebp-2C4h]
		push	eax		; lpwndpl
		push	esi		; hWnd
		call	GetWindowPlacement
		mov	ecx, [ebp-2BCh]
		push	ecx
		mov	ecx, [ebp-29Ch]
		mov	edx, [ebp-2A4h]
		sub	ecx, edx
		push	ecx
		mov	ecx, [ebp-2A0h]
		mov	eax, [ebp-2A8h]
		sub	ecx, eax
		push	ecx
		push	edx
		push	eax		; arglist
		push	offset aIIIII_1	; "%i,%i,%i,%i,%i"
		push	offset aPlacement_1 ; "Placement"
		push	ebx		; section
		push	0		; file
		call	Writetoini
		add	esp, 24h

loc_474034:				; CODE XREF: .text:00473FD9j
					; .text:00473FDFj
		xor	edx, edx
		mov	[ebx+64h], edx
		mov	[ebx+58h], edx
		mov	[ebx+54h], edx
		cmp	hwclient, 0
		jz	loc_4745FB
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4745FD
; ---------------------------------------------------------------------------

loc_474060:				; CODE XREF: .text:00473F7Cj
		mov	eax, [ebp+14h]
		cmp	dword ptr [eax+8], 0FFFFFDEEh
		jnz	short loc_4740B9
		mov	eax, [ebx+48h]
		xor	edi, edi
		test	eax, eax
		jz	loc_4745FB

loc_474079:				; CODE XREF: .text:004740B2j
		cmp	dword ptr [eax+4], 3
		jnz	loc_4745FB
		cmp	dword ptr [eax+1Ch], 0
		jnz	loc_4745FB
		cmp	dword ptr [eax+28h], 0
		jz	loc_4745FB
		mov	edx, [ebp+14h]
		mov	ecx, [edx+4]
		cmp	ecx, edi
		jnz	short loc_4740AC
		add	eax, 6Ch
		mov	[edx+0Ch], eax
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_4740AC:				; CODE XREF: .text:0047409Fj
		inc	edi
		mov	eax, [eax+10h]
		test	eax, eax
		jnz	short loc_474079
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_4740B9:				; CODE XREF: .text:0047406Aj
		mov	edi, [ebp+14h]
		cmp	dword ptr [edi+8], 0FFFFFFFBh
		jnz	loc_47419B
		cmp	dword ptr [ebx+4Ch], 0
		jz	loc_47419B
		lea	eax, [ebp-0Ch]
		push	eax		; lpPoint
		call	GetCursorPos
		mov	edx, [ebp-0Ch]
		lea	ecx, [ebp-310h]
		mov	[ebp-310h], edx
		mov	edx, [ebp-8]
		mov	[ebp-30Ch], edx
		push	ecx		; lpPoint
		mov	eax, [edi]
		push	eax		; hWnd
		call	ScreenToClient
		lea	edx, [ebp-310h]
		push	edx		; lParam
		push	0		; wParam
		push	130Dh		; Msg
		mov	ecx, [edi]
		push	ecx		; hWnd
		call	SendMessageW
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	loc_4745FB
		push	26Ch		; n
		push	0		; c
		lea	eax, [ebp-278h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	[ebp-4Ch], esi
		mov	eax, [ebx+48h]
		xor	edi, edi
		test	eax, eax
		jz	short loc_47415E

loc_47413F:				; CODE XREF: .text:0047415Cj
		cmp	dword ptr [eax+4], 3
		jnz	short loc_47415E
		cmp	dword ptr [eax+1Ch], 0
		jnz	short loc_47415E
		cmp	dword ptr [eax+28h], 0
		jz	short loc_47415E
		cmp	edi, [ebp-4]
		jz	short loc_47415E
		mov	eax, [eax+10h]
		inc	edi
		test	eax, eax
		jnz	short loc_47413F

loc_47415E:				; CODE XREF: .text:0047413Dj
					; .text:00474143j ...
		mov	edx, [ebp-4]
		mov	[ebp-5Ch], edx
		mov	[ebp-58h], eax
		mov	eax, [ebx+4Ch]
		push	eax		; int
		mov	ecx, [ebp-8]	; int
		push	ecx		; y
		mov	eax, [ebp-0Ch]	; int
		push	eax		; x
		lea	edx, [ebp-278h]	; int
		push	edx		; int
		call	loc_4252B0
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jz	loc_4745FB
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_47419B:				; CODE XREF: .text:004740C0j
					; .text:004740CAj
		mov	eax, [ebp+14h]
		cmp	dword ptr [eax+8], 0FFFFFDD9h
		jnz	short loc_4741CA
		push	0		; lParam
		push	0		; wParam
		push	130Bh		; Msg
		mov	edx, [ebx+58h]
		push	edx		; hWnd
		call	SendMessageW
		mov	edi, eax
		push	edi		; index
		push	ebx		; pf
		call	Setactivetab
		add	esp, 8
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_4741CA:				; CODE XREF: .text:004741A5j
		cmp	dword ptr [eax+8], 0FFFFFDDAh
		jnz	loc_4745FB
		mov	edx, [eax+0Eh]
		push	edx		; lParam
		movzx	eax, word ptr [eax+0Ch]
		push	eax		; wParam
		push	100h		; Msg
		push	esi		; hWnd
		call	loc_473EC4
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_4741F0:				; CODE XREF: .text:00473F27j
		mov	eax, [ebx+68h]
		test	eax, eax
		jz	loc_4745FB
		mov	edx, [eax+28h]
		cmp	dword ptr [edx+22Ch], 0
		jz	loc_4745FB
		mov	ecx, [eax+28h]
		mov	eax, [ecx+22Ch]
		push	eax		; hWnd
		call	SetFocus
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_47421F:				; CODE XREF: .text:00473F4Ej
		lea	edx, [ebp-304h]
		push	edx		; lpPaint
		push	esi		; hWnd
		call	BeginPaint
		mov	edi, eax
		lea	eax, [ebp-288h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_474261
		lea	edx, [ebp-298h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-28Ch]
		sub	ecx, [ebp-294h]
		sub	[ebp-27Ch], ecx

loc_474261:				; CODE XREF: .text:00474240j
		mov	eax, g_Brush+4
		lea	edx, [ebp-288h]
		push	eax		; hbr
		push	edx		; lprc
		push	edi		; hDC
		call	FillRect
		lea	ecx, [ebp-304h]
		push	ecx		; lpPaint
		push	esi		; hWnd
		call	EndPaint
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_474286:				; CODE XREF: .text:00473F60j
		xor	eax, eax
		mov	[ebp-284h], eax
		mov	[ebp-288h], eax
		mov	eax, fi
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font._width[eax*4]
		shl	ecx, 3
		lea	ecx, [ecx+ecx*2]
		mov	[ebp-280h], ecx
		mov	eax, font.height[eax*4]
		shl	eax, 2
		lea	eax, [eax+eax*2]
		mov	[ebp-27Ch], eax
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_4742EF
		lea	edx, [ebp-298h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-28Ch]
		sub	ecx, [ebp-294h]
		add	[ebp-27Ch], ecx

loc_4742EF:				; CODE XREF: .text:004742CEj
		push	0		; bMenu
		push	0CF0000h	; dwStyle
		lea	eax, [ebp-288h]
		push	eax		; lpRect
		call	AdjustWindowRect
		mov	edx, [ebp-280h]
		mov	ebx, [ebp+14h]
		sub	edx, [ebp-288h]
		mov	[ebx+18h], edx
		mov	eax, [ebp-27Ch]
		sub	eax, [ebp-284h]
		mov	[ebx+1Ch], eax
		cmp	dword_57FE64, 2
		jnz	short loc_4743A6
		push	20h		; nIndex
		call	GetSystemMetrics
		neg	eax
		mov	[ebx+10h], eax
		push	21h		; nIndex
		call	GetSystemMetrics
		neg	eax
		mov	[ebx+14h], eax
		push	0		; nIndex
		call	GetSystemMetrics
		push	eax
		push	20h		; nIndex
		call	GetSystemMetrics
		add	eax, eax
		pop	edx
		add	edx, eax
		mov	[ebx+8], edx
		push	1		; nIndex
		call	GetSystemMetrics
		push	eax
		push	21h		; nIndex
		call	GetSystemMetrics
		add	eax, eax
		pop	ecx
		add	ecx, eax
		mov	[ebx+0Ch], ecx
		mov	eax, hwollymain
		push	eax		; hWnd
		call	IsZoomed
		test	eax, eax
		jz	short loc_4743A6
		lea	edx, [ebp-298h]
		push	edx		; lpRect
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-28Ch]
		add	[ebx+14h], eax
		mov	edx, [ebp-28Ch]
		sub	[ebx+0Ch], edx

loc_4743A6:				; CODE XREF: .text:0047432Aj
					; .text:0047437Fj
		cmp	hwclient, 0
		jz	loc_4745FB
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4745FD
; ---------------------------------------------------------------------------

loc_4743C7:				; CODE XREF: .text:00473F1Cj
		mov	edx, [ebp+14h]
		mov	ecx, [edx]
		mov	eax, dword_57FE6C
		cmp	ecx, eax
		jz	short loc_4743EB
		test	eax, eax
		jz	short loc_4743EB
		push	13h		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	eax		; hWnd
		call	SetWindowPos

loc_4743EB:				; CODE XREF: .text:004743D3j
					; .text:004743D7j
		cmp	hwclient, 0
		jnz	short loc_474408
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_4745FD
; ---------------------------------------------------------------------------

loc_474408:				; CODE XREF: .text:004743F2j
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4745FD
; ---------------------------------------------------------------------------

loc_47441C:				; CODE XREF: .text:00473F40j
		lea	ecx, [ebp-288h]
		push	ecx		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_474462
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	5		; Msg
		push	eax		; hWnd
		call	SendMessageW
		lea	eax, [ebp-298h]
		push	eax		; lpRect
		mov	edx, [ebx+64h]
		push	edx		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-28Ch]
		sub	ecx, [ebp-294h]
		sub	[ebp-27Ch], ecx

loc_474462:				; CODE XREF: .text:0047442Ej
		push	1		; bRepaint
		mov	ecx, [ebp-27Ch]
		mov	edx, [ebp-284h]
		sub	ecx, edx
		push	ecx		; nHeight
		mov	ecx, [ebp-280h]
		mov	eax, [ebp-288h]
		sub	ecx, eax
		push	ecx		; nWidth
		push	edx		; Y
		push	eax		; X
		mov	edx, [ebx+58h]
		push	edx		; hWnd
		call	MoveWindow
		cmp	dword ptr [ebx+68h], 0
		jz	short loc_4744D7
		lea	eax, [ebp-288h]
		push	eax		; lpRect
		push	ebx		; int
		call	loc_472DFC
		add	esp, 8
		push	1		; bRepaint
		mov	ecx, [ebp-27Ch]
		mov	edx, [ebp-284h]
		sub	ecx, edx
		push	ecx		; nHeight
		mov	ecx, [ebp-280h]
		mov	eax, [ebp-288h]
		sub	ecx, eax
		push	ecx		; nWidth
		push	edx		; Y
		push	eax		; X
		mov	edx, [ebx+68h]
		mov	eax, [edx+28h]
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	MoveWindow

loc_4744D7:				; CODE XREF: .text:00474491j
		cmp	hwclient, 0
		jz	loc_4745FB
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_4745FD
; ---------------------------------------------------------------------------

loc_4744F8:				; CODE XREF: .text:00473F88j
					; .text:00473F91j
		mov	edx, [ebp+14h]
		push	edx		; __int16
		mov	ecx, [ebp+10h]
		push	ecx		; uVirtKey
		push	edi		; int
		call	loc_4249DC
		add	esp, 0Ch
		cmp	eax, 0C8h
		jnz	short loc_47453C
		lea	eax, [ebp-4]
		push	eax		; index
		push	ebx		; pf
		call	Gettabcount
		add	esp, 8
		dec	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0
		jge	short loc_47452A
		dec	eax
		mov	[ebp-4], eax

loc_47452A:				; CODE XREF: .text:00474524j
		mov	edx, [ebp-4]
		push	edx		; index
		push	ebx		; pf
		call	Setactivetab
		add	esp, 8
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_47453C:				; CODE XREF: .text:0047450Ej
		cmp	eax, 0C9h
		jnz	loc_4745FB
		lea	ecx, [ebp-4]
		push	ecx		; index
		push	ebx		; pf
		call	Gettabcount
		add	esp, 8
		inc	dword ptr [ebp-4]
		cmp	eax, [ebp-4]
		jg	short loc_474561
		xor	eax, eax
		mov	[ebp-4], eax

loc_474561:				; CODE XREF: .text:0047455Aj
		mov	edx, [ebp-4]
		push	edx		; index
		push	ebx		; pf
		call	Setactivetab
		add	esp, 8
		jmp	loc_4745FB
; ---------------------------------------------------------------------------

loc_474573:				; CODE XREF: .text:00473FB1j
		mov	eax, [ebx+68h]
		test	eax, eax
		jnz	short loc_47457E
		xor	eax, eax
		jmp	short loc_4745FD
; ---------------------------------------------------------------------------

loc_47457E:				; CODE XREF: .text:00474578j
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; Msg
		mov	eax, [eax+28h]
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	SendMessageW
		jmp	short loc_4745FD
; ---------------------------------------------------------------------------

loc_474598:				; CODE XREF: .text:00473FBAj
		mov	ecx, [ebx+40h]
		or	dword_57FE7C, ecx
		xor	eax, eax
		jmp	short loc_4745FD
; ---------------------------------------------------------------------------

loc_4745A5:				; CODE XREF: .text:00473F37j
					; .text:00473F57j ...
		cmp	hwclient, 0
		jnz	short loc_4745BF
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	short loc_4745FD
; ---------------------------------------------------------------------------

loc_4745BF:				; CODE XREF: .text:004745ACj
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	short loc_4745FD
; ---------------------------------------------------------------------------

loc_4745D0:				; CODE XREF: .text:00473F46j
					; .text:00473F66j ...
		cmp	hwclient, 0
		jnz	short loc_4745EA
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	short loc_4745FD
; ---------------------------------------------------------------------------

loc_4745EA:				; CODE XREF: .text:004745D7j
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	short loc_4745FD
; ---------------------------------------------------------------------------

loc_4745FB:				; CODE XREF: .text:00474046j
					; .text:00474073j ...
		xor	eax, eax

loc_4745FD:				; CODE XREF: .text:00473EFCj
					; .text:00473F10j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_474608:				; CODE XREF: .text:0040FCCDp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	edx, g_hInstance
		lea	eax, [ebp-28h]
		push	eax		; lpWndClass
		push	offset word_5D5488 ; lpClassName
		push	edx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_474680
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-28h], ecx
		mov	edx, g_hInstance
		mov	dword ptr [ebp-24h], offset loc_473EC4
		mov	[ebp-20h], eax
		xor	ecx, ecx
		mov	dword ptr [ebp-1Ch], 20h
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
		mov	dword ptr [ebp-4], offset word_5D5488
		push	ecx		; lpWndClass
		call	RegisterClassW
		test	ax, ax
		jnz	short loc_474680
		or	eax, 0FFFFFFFFh
		jmp	short loc_474682
; ---------------------------------------------------------------------------

loc_474680:				; CODE XREF: .text:00474625j
					; .text:00474679j
		xor	eax, eax

loc_474682:				; CODE XREF: .text:0047467Ej
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 246. _Updatetabs
; Exported entry 744. Updatetabs

; signed int __cdecl Updatetabs(t_frame	*pf)
		public Updatetabs
Updatetabs:				; CODE XREF: .text:00474C76p
					; .text:004A126Ap ...
		push	ebp		; _Updatetabs
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_47469E
		cmp	dword ptr [edi+58h], 0
		jnz	short loc_4746A6

loc_47469E:				; CODE XREF: .text:00474696j
		or	eax, 0FFFFFFFFh
		jmp	loc_474769
; ---------------------------------------------------------------------------

loc_4746A6:				; CODE XREF: .text:0047469Cj
		push	0		; lParam
		push	0		; wParam
		push	1309h		; Msg
		mov	edx, [edi+58h]
		push	edx		; hWnd
		call	SendMessageW
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		mov	ebx, [edi+48h]
		test	ebx, ebx
		jz	short loc_4746FA

loc_4746CB:				; CODE XREF: .text:004746F8j
		cmp	dword ptr [ebx+4], 3
		jnz	short loc_4746FA
		cmp	dword ptr [ebx+1Ch], 0
		jnz	short loc_4746FA
		mov	eax, [ebx+28h]
		test	eax, eax
		jz	short loc_4746FA
		or	dword ptr [eax+40h], 10000000h
		cmp	ebx, [edi+68h]
		jnz	short loc_4746F0
		mov	edx, [ebp-4]
		mov	[ebp-8], edx

loc_4746F0:				; CODE XREF: .text:004746E8j
		inc	dword ptr [ebp-4]
		mov	ebx, [ebx+10h]
		test	ebx, ebx
		jnz	short loc_4746CB

loc_4746FA:				; CODE XREF: .text:004746C9j
					; .text:004746CFj ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_474705
		or	eax, 0FFFFFFFFh
		jmp	short loc_474769
; ---------------------------------------------------------------------------

loc_474705:				; CODE XREF: .text:004746FEj
		cmp	dword ptr [ebp-8], 0
		jge	short loc_474710
		xor	edx, edx
		mov	[ebp-8], edx

loc_474710:				; CODE XREF: .text:00474709j
		xor	esi, esi
		mov	ebx, [edi+48h]
		cmp	esi, [ebp-4]
		jge	short loc_47475A

loc_47471A:				; CODE XREF: .text:00474758j
		mov	dword ptr [ebp-24h], 1
		xor	eax, eax
		lea	edx, [ebx+2Ch]
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[ebp-18h], edx
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		lea	eax, [ebp-24h]
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		mov	[ebp-0Ch], esi
		push	eax		; lParam
		push	esi		; wParam
		push	133Eh		; Msg
		mov	edx, [edi+58h]
		push	edx		; hWnd
		call	SendMessageW
		inc	esi
		mov	ebx, [ebx+10h]
		cmp	esi, [ebp-4]
		jl	short loc_47471A

loc_47475A:				; CODE XREF: .text:00474718j
		mov	ecx, [ebp-8]
		push	ecx		; index
		push	edi		; pf
		call	Setactivetab
		add	esp, 8
		xor	eax, eax

loc_474769:				; CODE XREF: .text:004746A1j
					; .text:00474703j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __stdcall	loc_474770(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_474770:				; DATA XREF: .text:00474C62o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	esi		; hWnd
		call	GetParent
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_474792
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_47479D
; ---------------------------------------------------------------------------

loc_474792:				; CODE XREF: .text:00474789j
		push	0		; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	[ebp-4], eax

loc_47479D:				; CODE XREF: .text:00474790j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4747AC
		mov	edx, [ebp-4]
		cmp	dword ptr [edx+5Ch], 0
		jnz	short loc_4747C0

loc_4747AC:				; CODE XREF: .text:004747A1j
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_4748A9
; ---------------------------------------------------------------------------

loc_4747C0:				; CODE XREF: .text:004747AAj
		cmp	edi, 207h
		jz	short loc_4747D4
		cmp	edi, 208h
		jnz	loc_474893

loc_4747D4:				; CODE XREF: .text:004747C6j
		lea	edx, [ebp-0Ch]
		push	edx		; lpPoint
		call	GetCursorPos
		mov	ecx, [ebp-0Ch]
		lea	eax, [ebp-18h]
		mov	[ebp-18h], ecx
		mov	ecx, [ebp-8]
		mov	[ebp-14h], ecx
		push	eax		; lpPoint
		push	esi		; hWnd
		call	ScreenToClient
		lea	edx, [ebp-18h]
		push	edx		; lParam
		push	0		; wParam
		push	130Dh		; Msg
		push	esi		; hWnd
		call	SendMessageW
		mov	ebx, eax
		cmp	edi, 207h
		jnz	short loc_47481C
		push	esi		; hWnd
		call	SetCapture
		mov	eax, [ebp-4]
		mov	[eax+60h], ebx
		jmp	short loc_47488F
; ---------------------------------------------------------------------------

loc_47481C:				; CODE XREF: .text:0047480Cj
		call	GetCapture
		test	eax, eax
		jz	short loc_47488F
		call	ReleaseCapture
		test	ebx, ebx
		jl	short loc_474885
		mov	edx, [ebp-4]
		cmp	ebx, [edx+60h]
		jnz	short loc_474885
		mov	ecx, [ebp-4]
		mov	eax, [ecx+48h]
		xor	edx, edx
		test	eax, eax
		jz	short loc_474885

loc_474842:				; CODE XREF: .text:00474883j
		cmp	dword ptr [eax+4], 3
		jnz	short loc_474885
		cmp	dword ptr [eax+1Ch], 0
		jnz	short loc_474885
		mov	esi, [eax+28h]
		test	esi, esi
		jz	short loc_474885
		cmp	ebx, edx
		jnz	short loc_47487D
		cmp	dword ptr [esi+208h], 0
		jz	short loc_474885
		push	0
		push	ebx
		push	475h
		mov	edx, [esi+22Ch]
		push	edx
		push	esi
		call	dword ptr [esi+208h]
		add	esp, 14h
		jmp	short loc_474885
; ---------------------------------------------------------------------------

loc_47487D:				; CODE XREF: .text:00474857j
		inc	edx
		mov	eax, [eax+10h]
		test	eax, eax
		jnz	short loc_474842

loc_474885:				; CODE XREF: .text:0047482Cj
					; .text:00474834j ...
		mov	eax, [ebp-4]
		mov	dword ptr [eax+60h], 0FFFFFFFFh

loc_47488F:				; CODE XREF: .text:0047481Aj
					; .text:00474823j
		xor	eax, eax
		jmp	short loc_4748A9
; ---------------------------------------------------------------------------

loc_474893:				; CODE XREF: .text:004747CEj
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		mov	eax, [ebp-4]
		mov	edx, [eax+5Ch]
		push	edx		; lpPrevWndFunc
		call	CallWindowProcW

loc_4748A9:				; CODE XREF: .text:004747BBj
					; .text:00474891j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry 247. _Createtabwindow
; Exported entry 448. Createtabwindow

; int __cdecl Createtabwindow(t_frame *pf, wchar_t *icon, wchar_t *_title)
		public Createtabwindow
Createtabwindow:			; CODE XREF: .text:004A897Ap
		push	ebp		; _Createtabwindow
		mov	ebp, esp
		add	esp, 0FFFFFFCCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4748CD
		cmp	dword ptr [ebx+48h], 0
		jnz	short loc_4748D4

loc_4748CD:				; CODE XREF: .text:004748C5j
		xor	eax, eax
		jmp	loc_474CB1
; ---------------------------------------------------------------------------

loc_4748D4:				; CODE XREF: .text:004748CBj
		mov	eax, [ebx+54h]
		test	eax, eax
		jnz	loc_474CB1
		xor	edx, edx
		xor	eax, eax
		mov	[ebx+64h], edx
		mov	[ebx+58h], edx
		mov	[ebx+54h], edx
		mov	[ebx+68h], eax
		cmp	restorewinpos, 0
		jz	short loc_474956
		test	byte ptr [ebx+46h], 2
		jz	short loc_474956
		cmp	word ptr [ebx],	0
		jz	short loc_474956
		lea	ecx, [ebp-14h]
		push	ecx
		lea	eax, [ebp-10h]
		push	eax
		lea	edx, [ebp-0Ch]
		push	edx
		lea	ecx, [ebp-8]
		push	ecx
		lea	eax, [ebp-4]
		push	eax		; arglist
		push	offset aIIIII_1	; "%i,%i,%i,%i,%i"
		push	offset aPlacement_1 ; "Placement"
		push	ebx		; section
		push	0		; file
		call	Getfromini
		add	esp, 24h
		cmp	eax, 5
		jnz	short loc_474956
		cmp	dword ptr [ebp-0Ch], 0
		jl	short loc_474956
		push	0		; nIndex
		call	GetSystemMetrics
		cmp	eax, [ebp-0Ch]
		jl	short loc_474956
		cmp	dword ptr [ebp-10h], 0
		jl	short loc_474956
		push	1		; nIndex
		call	GetSystemMetrics
		cmp	eax, [ebp-10h]
		jge	short loc_4749C5

loc_474956:				; CODE XREF: .text:004748F6j
					; .text:004748FCj ...
		mov	eax, fi
		xor	edx, edx
		mov	ecx, eax
		mov	[ebp-20h], edx
		mov	[ebp-24h], edx
		mov	esi, 12CF0000h
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		mov	edx, font._width[eax*4]
		shl	edx, 6
		mov	[ebp-1Ch], edx
		mov	eax, font.height[eax*4]
		shl	eax, 3
		lea	eax, [eax+eax*2]
		mov	[ebp-18h], eax
		push	0		; bMenu
		push	esi		; dwStyle
		lea	eax, [ebp-24h]
		push	eax		; lpRect
		call	AdjustWindowRect
		mov	dword ptr [ebp-4], 80000000h
		mov	dword ptr [ebp-8], 80000000h
		mov	edx, [ebp-1Ch]
		sub	edx, [ebp-24h]
		mov	[ebp-0Ch], edx
		mov	ecx, [ebp-18h]
		sub	ecx, [ebp-20h]
		mov	[ebp-10h], ecx
		xor	eax, eax
		mov	[ebp-14h], eax
		jmp	loc_474A80
; ---------------------------------------------------------------------------

loc_4749C5:				; CODE XREF: .text:00474954j
		mov	eax, hwclient
		test	eax, eax
		jz	loc_474A63
		cmp	dword_57FE64, 0
		jnz	loc_474A63
		lea	edx, [ebp-24h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetClientRect
		push	1Eh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-1Ch]
		push	20h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		cmp	esi, [ebp-4]
		jge	short loc_474A1B
		push	1Eh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-1Ch]
		push	20h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		mov	[ebp-4], esi

loc_474A1B:				; CODE XREF: .text:00474A01j
		cmp	dword ptr [ebp-4], 0
		jge	short loc_474A26
		xor	eax, eax
		mov	[ebp-4], eax

loc_474A26:				; CODE XREF: .text:00474A1Fj
		push	1Fh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-18h]
		push	21h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		cmp	esi, [ebp-8]
		jge	short loc_474A58
		push	1Fh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-18h]
		push	21h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		mov	[ebp-8], esi

loc_474A58:				; CODE XREF: .text:00474A3Ej
		cmp	dword ptr [ebp-8], 0
		jge	short loc_474A63
		xor	eax, eax
		mov	[ebp-8], eax

loc_474A63:				; CODE XREF: .text:004749CCj
					; .text:004749D9j ...
		cmp	dword ptr [ebp-14h], 2
		mov	esi, 2CF0000h
		jnz	short loc_474A74
		or	esi, 20000000h

loc_474A74:				; CODE XREF: .text:00474A6Cj
		cmp	dword ptr [ebp-14h], 3
		jz	short loc_474A80
		or	esi, 10000000h

loc_474A80:				; CODE XREF: .text:004749C0j
					; .text:00474A78j
		xor	eax, eax
		test	edi, edi
		mov	[ebx+6Ch], eax
		jnz	short loc_474A8D
		mov	edx, ebx
		jmp	short loc_474A8F
; ---------------------------------------------------------------------------

loc_474A8D:				; CODE XREF: .text:00474A87j
		mov	edx, edi

loc_474A8F:				; CODE XREF: .text:00474A8Bj
		push	edx		; src
		push	100h		; n
		lea	eax, [ebx+7Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	hwclient, 0
		jnz	short loc_474AE1
		mov	ecx, g_hInstance
		push	0		; lpParam
		push	ecx		; hInstance
		mov	eax, hwollymain
		push	0		; hMenu
		push	eax		; hWndParent
		mov	edx, [ebp-10h]
		push	edx		; nHeight
		mov	ecx, [ebp-0Ch]
		push	ecx		; nWidth
		lea	ecx, [ebx+7Ch]
		mov	eax, [ebp-8]
		push	eax		; Y
		mov	edx, [ebp-4]
		push	edx		; X
		push	esi		; dwStyle
		push	ecx		; lpWindowName
		push	offset word_5D5488 ; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebx+54h], eax
		jmp	short loc_474B12
; ---------------------------------------------------------------------------

loc_474AE1:				; CODE XREF: .text:00474AA8j
		mov	eax, g_hInstance
		push	0		; lParam
		push	eax		; hInstance
		mov	edx, hwclient
		push	edx		; hWndParent
		mov	ecx, [ebp-10h]
		push	ecx		; nHeight
		mov	eax, [ebp-0Ch]
		push	eax		; nWidth
		lea	eax, [ebx+7Ch]
		mov	edx, [ebp-8]
		push	edx		; Y
		mov	ecx, [ebp-4]
		push	ecx		; X
		push	esi		; dwStyle
		push	eax		; lpWindowName
		push	offset word_5D5488 ; lpClassName
		call	CreateMDIWindowW
		mov	[ebx+54h], eax

loc_474B12:				; CODE XREF: .text:00474ADFj
		cmp	dword ptr [ebx+54h], 0
		jnz	short loc_474B1F
		xor	eax, eax
		jmp	loc_474CB1
; ---------------------------------------------------------------------------

loc_474B1F:				; CODE XREF: .text:00474B16j
		mov	eax, dword_57FE6C
		test	eax, eax
		jz	short loc_474B3A
		push	13h		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	eax		; hWnd
		call	SetWindowPos

loc_474B3A:				; CODE XREF: .text:00474B26j
		push	ebx		; dwNewLong
		push	0		; nIndex
		mov	edx, [ebx+54h]
		push	edx		; hWnd
		call	SetWindowLongW
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_474B5D
		mov	ecx, [ebp+0Ch]
		push	ecx		; lpIconName
		mov	eax, g_hInstance
		push	eax		; hInstance
		call	LoadIconW
		jmp	short loc_474B5F
; ---------------------------------------------------------------------------

loc_474B5D:				; CODE XREF: .text:00474B4Aj
		xor	eax, eax

loc_474B5F:				; CODE XREF: .text:00474B5Bj
		test	eax, eax
		jnz	short loc_474B74
		push	offset aIco_aaamain_0 ;	"ICO_AAAMAIN"
		mov	edx, g_hInstance
		push	edx		; hInstance
		call	LoadIconW

loc_474B74:				; CODE XREF: .text:00474B61j
		push	eax		; lParam
		push	1		; wParam
		push	80h		; Msg
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	SendMessageW
		test	byte ptr [ebx+45h], 10h
		jz	short loc_474BCD
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		push	0		; hMenu
		mov	edx, [ebx+54h]
		push	edx		; hWndParent
		push	0		; nHeight
		push	0		; nWidth
		push	0		; Y
		push	0		; X
		push	50000000h	; dwStyle
		push	0		; lpWindowName
		push	offset aMsctls_statu_0 ; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	esi, eax
		mov	[ebx+64h], esi
		test	esi, esi
		jz	short loc_474BCD
		push	0		; lParam
		mov	eax, sysfont.hfont
		push	eax		; wParam
		push	30h		; Msg
		push	esi		; hWnd
		call	SendMessageW

loc_474BCD:				; CODE XREF: .text:00474B89j
					; .text:00474BBBj
		lea	edx, [ebp-24h]
		push	edx		; lpRect
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	GetClientRect
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_474BF4
		lea	edx, [ebp-34h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-28h]
		sub	ecx, [ebp-30h]
		sub	[ebp-18h], ecx

loc_474BF4:				; CODE XREF: .text:00474BDFj
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		push	0		; hMenu
		mov	edx, [ebx+54h]
		push	edx		; hWndParent
		mov	ecx, [ebp-18h]
		mov	edi, [ebp-20h]
		sub	ecx, edi
		push	ecx		; nHeight
		mov	eax, [ebp-1Ch]
		mov	esi, [ebp-24h]
		sub	eax, esi
		push	eax		; nWidth
		push	edi		; Y
		push	esi		; X
		push	52004000h	; dwStyle
		push	(offset	aOffsetI+13h) ;	lpWindowName
		push	offset aSystabcontrol3 ; "SysTabControl32"
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebx+58h], eax
		cmp	dword ptr [ebx+58h], 0
		jnz	short loc_474C47
		mov	eax, [ebx+54h]
		push	eax		; hWnd
		call	DestroyWindow
		xor	edx, edx
		xor	eax, eax
		mov	[ebx+54h], edx
		jmp	short loc_474CB1
; ---------------------------------------------------------------------------

loc_474C47:				; CODE XREF: .text:00474C33j
		push	0		; lParam
		mov	edx, sysfont.hfont
		push	edx		; wParam
		push	30h		; Msg
		mov	ecx, [ebx+58h]
		push	ecx		; hWnd
		call	SendMessageW
		mov	dword ptr [ebx+60h], 0FFFFFFFFh
		push	offset loc_474770 ; dwNewLong
		push	0FFFFFFFCh	; nIndex
		mov	eax, [ebx+58h]
		push	eax		; hWnd
		call	SetWindowLongW
		mov	[ebx+5Ch], eax
		push	ebx		; pf
		call	Updatetabs
		cmp	dword ptr [ebp-14h], 3
		pop	ecx
		jnz	short loc_474C98
		push	3		; nCmdShow
		mov	edx, [ebx+54h]
		push	edx		; hWnd
		call	ShowWindow
		push	5		; nCmdShow
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	ShowWindow

loc_474C98:				; CODE XREF: .text:00474C80j
		push	0		; bErase
		push	0		; lpRect
		mov	eax, [ebx+54h]
		push	eax		; hWnd
		call	InvalidateRect
		mov	edx, [ebx+54h]
		push	edx		; hWnd
		call	UpdateWindow
		mov	eax, [ebx+54h]

loc_474CB1:				; CODE XREF: .text:004748CFj
					; .text:004748D9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 248. _Getactivetab
; Exported entry 548. Getactivetab

; t_table *__cdecl Getactivetab(t_frame	*pf)
		public Getactivetab
Getactivetab:				; CODE XREF: .text:004A7B0Dp
					; .text:004A8A14p
		push	ebp		; _Getactivetab
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_474CD1
		cmp	dword ptr [eax+68h], 0
		jz	short loc_474CD1
		mov	edx, [eax+68h]
		cmp	dword ptr [edx+4], 3
		jz	short loc_474CD5

loc_474CD1:				; CODE XREF: .text:00474CC0j
					; .text:00474CC6j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_474CD5:				; CODE XREF: .text:00474CCFj
		mov	ecx, [eax+68h]
		mov	eax, [ecx+28h]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_474CE0:				; DATA XREF: .data:stru_53F05Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		test	edx, edx
		jl	short loc_474D30
		cmp	edx, 5
		jge	short loc_474D30
		mov	ecx, [eax+68h]
		mov	edx, ecx
		lea	ecx, [edx+ecx*2]
		lea	ecx, [edx+ecx*4]
		shl	ecx, 3
		sub	ecx, edx
		shl	ecx, 2
		sub	ecx, edx
		mov	edx, dword ptr stru_5E7DA8.block.index[ecx*4]
		and	edx, 0Fh
		cmp	edx, 4
		jz	short loc_474D39
		mov	eax, [eax+68h]
		mov	ecx, eax
		lea	eax, [ecx+eax*2]
		lea	eax, [ecx+eax*4]
		shl	eax, 3
		sub	eax, ecx
		shl	eax, 2
		sub	eax, ecx
		cmp	edx, 5
		jz	short loc_474D39

loc_474D30:				; CODE XREF: .text:00474CEBj
					; .text:00474CF0j
		xor	eax, eax
		mov	dword_5E9E1C, eax
		jmp	short loc_474D54
; ---------------------------------------------------------------------------

loc_474D39:				; CODE XREF: .text:00474D14j
					; .text:00474D2Ej
		push	0Bh		; njmpcall
		push	offset stru_5E9DC4 ; jmpcall
		mov	edx, g_disasmdump.sel0
		push	edx		; dest
		call	Findlocaljumpscallsto
		add	esp, 0Ch
		mov	dword_5E9E1C, eax

loc_474D54:				; CODE XREF: .text:00474D37j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
