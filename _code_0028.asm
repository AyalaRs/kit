.code

; Exported entry 102. _Processwmmousewheel
; Exported entry 677. Processwmmousewheel

; __int16 __cdecl Processwmmousewheel(HWND hw, WPARAM wp)
		public Processwmmousewheel
Processwmmousewheel:			; CODE XREF: .text:0041049Ep
					; .text:00424D17p ...
		push	ebp		; _Processwmmousewheel
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_420AF5
		mov	eax, edi
		mov	ecx, 78h
		shr	eax, 10h
		and	ax, 0FFFFh
		movsx	eax, ax
		cdq
		idiv	ecx
		mov	ebx, eax
		cmp	ebx, 0FFFFFFF8h
		jge	short loc_420A66
		mov	ebx, 0FFFFFFF8h
		jmp	short loc_420A70
; ---------------------------------------------------------------------------

loc_420A66:				; CODE XREF: .text:00420A5Dj
		cmp	ebx, 8
		jle	short loc_420A70
		mov	ebx, 8

loc_420A70:				; CODE XREF: .text:00420A64j
					; .text:00420A69j
		push	12h		; nVirtKey
		call	GetKeyState
		test	ah, 80h
		jz	short loc_420AAC
		test	ebx, ebx
		jz	short loc_420AF5

loc_420A80:				; CODE XREF: .text:00420AA8j
		test	ebx, ebx
		jge	short loc_420A96
		push	0		; lParam
		push	3		; wParam
		push	115h		; Msg
		push	esi		; hWnd
		call	PostMessageW
		inc	ebx
		jmp	short loc_420AA6
; ---------------------------------------------------------------------------

loc_420A96:				; CODE XREF: .text:00420A82j
		push	0		; lParam
		push	2		; wParam
		push	115h		; Msg
		push	esi		; hWnd
		call	PostMessageW
		dec	ebx

loc_420AA6:				; CODE XREF: .text:00420A94j
		test	ebx, ebx
		jnz	short loc_420A80
		jmp	short loc_420AF5
; ---------------------------------------------------------------------------

loc_420AAC:				; CODE XREF: .text:00420A7Aj
		test	edi, 8
		jnz	short loc_420ABA
		mov	eax, ebx
		add	eax, eax
		mov	ebx, eax

loc_420ABA:				; CODE XREF: .text:00420AB2j
		test	edi, 10h
		jz	short loc_420AC7
		lea	edx, [ebx+ebx*2]
		mov	ebx, edx

loc_420AC7:				; CODE XREF: .text:00420AC0j
		test	ebx, ebx
		jz	short loc_420AF5

loc_420ACB:				; CODE XREF: .text:00420AF3j
		test	ebx, ebx
		jge	short loc_420AE1
		push	0		; lParam
		push	1		; wParam
		push	115h		; Msg
		push	esi		; hWnd
		call	PostMessageW
		inc	ebx
		jmp	short loc_420AF1
; ---------------------------------------------------------------------------

loc_420AE1:				; CODE XREF: .text:00420ACDj
		push	0		; lParam
		push	0		; wParam
		push	115h		; Msg
		push	esi		; hWnd
		call	PostMessageW
		dec	ebx

loc_420AF1:				; CODE XREF: .text:00420ADFj
		test	ebx, ebx
		jnz	short loc_420ACB

loc_420AF5:				; CODE XREF: .text:00420A3Ej
					; .text:00420A7Ej ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_420AFC:				; CODE XREF: .text:0040FCBBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	edx, g_hInstance
		lea	eax, [ebp-28h]
		push	eax		; lpWndClass
		push	offset ottable	; lpClassName
		push	edx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_420B6B
		mov	dword ptr [ebp-28h], 0Bh
		mov	dword ptr [ebp-24h], offset loc_41E500
		xor	ecx, ecx
		mov	eax, g_hInstance
		mov	[ebp-20h], ecx
		xor	edx, edx
		mov	dword ptr [ebp-1Ch], 20h
		mov	[ebp-18h], eax
		mov	[ebp-14h], edx
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-10h], ecx
		mov	[ebp-0Ch], eax
		xor	edx, edx
		lea	ecx, [ebp-28h]
		mov	[ebp-8], edx
		mov	dword ptr [ebp-4], offset ottable
		push	ecx		; lpWndClass
		call	RegisterClassW
		test	ax, ax
		jnz	short loc_420B6B
		or	eax, 0FFFFFFFFh
		jmp	short loc_420B6D
; ---------------------------------------------------------------------------

loc_420B6B:				; CODE XREF: .text:00420B19j
					; .text:00420B64j
		xor	eax, eax

loc_420B6D:				; CODE XREF: .text:00420B69j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 103. _Createottablewindow
; Exported entry 443. Createottablewindow

; int __cdecl Createottablewindow(HWND hparent,	t_table	*pt, RECT *rpos)
		public Createottablewindow
Createottablewindow:			; CODE XREF: .text:004229B9p
					; .text:00424C45p ...
		push	ebp		; _Createottablewindow
		mov	ebp, esp
		add	esp, 0FFFFFD8Ch
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+0Ch]
		jz	short loc_420B96
		test	esi, esi
		jz	short loc_420B96
		cmp	dword ptr [esi+210h], 0
		jnz	short loc_420B9D

loc_420B96:				; CODE XREF: .text:00420B87j
					; .text:00420B8Bj
		xor	eax, eax
		jmp	loc_42107D
; ---------------------------------------------------------------------------

loc_420B9D:				; CODE XREF: .text:00420B94j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_420BC5
		lea	edx, [ebp-274h]
		push	edx		; lpRect
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	GetClientRect
		lea	eax, [ebp-274h]
		mov	[ebp+10h], eax
		mov	dword ptr [ebp-20h], 1
		jmp	short loc_420BCA
; ---------------------------------------------------------------------------

loc_420BC5:				; CODE XREF: .text:00420BA1j
		xor	edx, edx
		mov	[ebp-20h], edx

loc_420BCA:				; CODE XREF: .text:00420BC3j
		xor	ecx, ecx
		mov	[esi+230h], ecx
		mov	[esi+22Ch], ecx
		test	byte ptr [esi+43h], 80h
		jnz	short loc_420BFD
		xor	eax, eax
		xor	edx, edx
		mov	[esi+244h], eax
		xor	eax, eax
		mov	[esi+248h], edx
		mov	[esi+24Ch], eax
		or	dword ptr [esi+40h], 80000000h

loc_420BFD:				; CODE XREF: .text:00420BDCj
		xor	edx, edx
		mov	[esi+1E8h], edx
		test	byte ptr [esi+40h], 5
		jnz	short loc_420C15
		lea	ecx, [esi+44h]
		push	ecx		; sd
		call	Unmarknewsorteddata
		pop	ecx

loc_420C15:				; CODE XREF: .text:00420C09j
		cmp	dword ptr [esi+20Ch], 0
		jz	short loc_420C43
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jz	short loc_420C43
		cmp	dword ptr [esi+44h], 0
		jle	short loc_420C43
		push	esi
		call	dword ptr [esi+20Ch]
		pop	ecx
		mov	edx, [esi+60h]
		mov	[esi+250h], edx

loc_420C43:				; CODE XREF: .text:00420C1Cj
					; .text:00420C2Aj ...
		xor	ecx, ecx
		lea	eax, [esi+11Ch]
		mov	[ebp-4], ecx
		jmp	short loc_420C5C
; ---------------------------------------------------------------------------

loc_420C50:				; CODE XREF: .text:00420C6Bj
		and	dword ptr [eax], 0FFFFFEFFh
		inc	dword ptr [ebp-4]
		add	eax, 4

loc_420C5C:				; CODE XREF: .text:00420C4Ej
		mov	edx, [ebp-4]
		cmp	edx, [esi+8Ch]
		jge	short loc_420C6D
		cmp	dword ptr [ebp-4], 11h
		jl	short loc_420C50

loc_420C6D:				; CODE XREF: .text:00420C65j
		mov	ecx, dword_586108
		mov	[ebp-18h], ecx
		cmp	dword ptr [esi+88h], 0
		jnz	short loc_420C97
		push	offset aAppearance ; "Appearance"
		push	20h		; n
		lea	eax, [ebp-264h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_420CB2
; ---------------------------------------------------------------------------

loc_420C97:				; CODE XREF: .text:00420C7Dj
		mov	edx, [esi+88h]
		lea	ecx, [ebp-264h]
		push	edx
		push	offset aAppearanceI ; "Appearance[%i]"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_420CB2:				; CODE XREF: .text:00420C95j
		cmp	restorewinpos, 0
		jz	short loc_420D0F
		test	byte ptr [esi+42h], 1
		jz	short loc_420D0F
		cmp	word ptr [esi],	0
		jz	short loc_420D0F
		lea	eax, [ebp-18h]
		lea	edx, [ebp-14h]
		push	eax
		push	edx
		lea	ecx, [ebp-10h]
		lea	eax, [ebp-0Ch]
		push	ecx
		push	eax
		lea	edx, [ebp-8]
		lea	ecx, [ebp-264h]
		push	edx		; arglist
		push	offset aIIIII_0	; "%i,%i,%i,%i,%i"
		push	ecx		; key
		push	esi		; section
		push	0		; file
		call	Getfromini
		add	esp, 24h
		cmp	eax, 4
		jl	short loc_420D0F
		cmp	dword ptr [ebp-8], 0
		jl	short loc_420D0F
		cmp	dword ptr [ebp-8], 8
		jge	short loc_420D0F
		cmp	dword ptr [ebp-0Ch], 0
		jl	short loc_420D0F
		cmp	dword ptr [ebp-0Ch], 8
		jl	short loc_420D3F

loc_420D0F:				; CODE XREF: .text:00420CB9j
					; .text:00420CBFj ...
		mov	eax, fi
		mov	[esi+234h], eax
		mov	edx, g_Color_index
		mov	[esi+238h], edx
		mov	ecx, dword_586108
		mov	[esi+23Ch], ecx
		mov	eax, dword_58610C
		mov	[esi+240h], eax
		jmp	short loc_420D6C
; ---------------------------------------------------------------------------

loc_420D3F:				; CODE XREF: .text:00420D0Dj
		mov	edx, [ebp-8]
		mov	[esi+234h], edx
		mov	ecx, [ebp-0Ch]
		mov	[esi+238h], ecx
		mov	eax, [ebp-18h]
		mov	[esi+23Ch], eax
		mov	edx, [ebp-14h]
		mov	[esi+240h], edx
		mov	ecx, [ebp-10h]
		mov	[esi+90h], ecx

loc_420D6C:				; CODE XREF: .text:00420D3Dj
		test	byte ptr [esi+41h], 8
		jz	short loc_420D7A
		xor	eax, eax
		mov	[esi+90h], eax

loc_420D7A:				; CODE XREF: .text:00420D70j
		test	byte ptr [esi+43h], 4
		jnz	loc_420E7C
		push	esi		; pt
		call	Defaultbar
		pop	ecx
		cmp	dword_57FEA0, 0
		jz	loc_420E7C
		test	byte ptr [esi+42h], 4
		jz	loc_420E7C
		cmp	word ptr [esi],	0
		jz	loc_420E7C
		cmp	dword ptr [esi+88h], 0
		jnz	short loc_420DCD
		push	offset aColumns_0 ; "Columns"
		push	20h		; n
		lea	edx, [ebp-264h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_420DE8
; ---------------------------------------------------------------------------

loc_420DCD:				; CODE XREF: .text:00420DB3j
		mov	ecx, [esi+88h]
		lea	eax, [ebp-264h]
		push	ecx
		push	offset aColumnsI ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_420DE8:				; CODE XREF: .text:00420DCBj
		push	100h		; length
		lea	edx, [ebp-224h]
		push	edx		; s
		lea	ecx, [ebp-264h]
		push	ecx		; key
		push	esi		; section
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jle	short loc_420E7C
		lea	ebx, [ebp-224h]
		xor	eax, eax
		mov	[ebp-4], eax
		lea	edx, [esi+1A4h]
		mov	[ebp-24h], edx
		jmp	short loc_420E71
; ---------------------------------------------------------------------------
		jmp	short loc_420E23
; ---------------------------------------------------------------------------

loc_420E20:				; CODE XREF: .text:00420E27j
		add	ebx, 2

loc_420E23:				; CODE XREF: .text:00420E1Ej
					; .text:00420E7Aj
		cmp	word ptr [ebx],	20h
		jz	short loc_420E20
		xor	edi, edi
		jmp	short loc_420E41
; ---------------------------------------------------------------------------

loc_420E2D:				; CODE XREF: .text:00420E4Dj
		movzx	edx, word ptr [ebx]
		mov	eax, edi
		add	eax, eax
		lea	eax, [eax+eax*4]
		add	eax, edx
		add	eax, 0FFFFFFD0h
		add	ebx, 2
		mov	edi, eax

loc_420E41:				; CODE XREF: .text:00420E2Bj
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_420E2D
		cmp	edi, 3
		jl	short loc_420E7C
		cmp	edi, 8000h
		jg	short loc_420E7C
		mov	eax, [ebp-24h]
		mov	[eax], edi
		cmp	word ptr [ebx],	2Ch
		jnz	short loc_420E7C
		add	ebx, 2
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-24h], 4

loc_420E71:				; CODE XREF: .text:00420E1Cj
		mov	edx, [ebp-4]
		cmp	edx, [esi+8Ch]
		jl	short loc_420E23

loc_420E7C:				; CODE XREF: .text:00420D7Ej
					; .text:00420D92j ...
		cmp	dword_57FEA4, 0
		jz	loc_420F25
		test	byte ptr [esi+42h], 8
		jz	loc_420F25
		cmp	word ptr [esi],	0
		jz	loc_420F25
		cmp	dword ptr [esi+88h], 0
		jnz	short loc_420EBE
		push	offset aSort	; "Sort"
		push	20h		; n
		lea	ecx, [ebp-264h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_420ED9
; ---------------------------------------------------------------------------

loc_420EBE:				; CODE XREF: .text:00420EA4j
		mov	eax, [esi+88h]
		lea	edx, [ebp-264h]
		push	eax
		push	offset aSortI	; "Sort[%i]"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_420ED9:				; CODE XREF: .text:00420EBCj
		lea	ecx, [ebp-1Ch]
		lea	eax, [ebp-264h]
		push	ecx		; arglist
		push	(offset	aIIIII_0+18h) ;	format
		push	eax		; key
		push	esi		; section
		push	0		; file
		call	Getfromini
		add	esp, 14h
		dec	eax
		jl	short loc_420F25
		cmp	dword ptr [ebp-1Ch], 0
		jl	short loc_420F25
		mov	edx, [ebp-1Ch]
		cmp	edx, [esi+8Ch]
		jge	short loc_420F25
		mov	ecx, [ebp-1Ch]
		test	byte ptr [esi+ecx*4+11Ch], 2
		jz	short loc_420F25
		mov	eax, [ebp-1Ch]
		push	eax		; sort
		lea	edx, [esi+44h]
		push	edx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_420F25:				; CODE XREF: .text:00420E83j
					; .text:00420E8Dj ...
		cmp	dword ptr [ebp-20h], 0
		jnz	loc_420FEC
		mov	ebx, 50000000h
		mov	eax, [esi+40h]
		test	ah, 2
		jnz	short loc_420F42
		or	ebx, 100000h

loc_420F42:				; CODE XREF: .text:00420F3Aj
		test	ah, 4
		jnz	short loc_420F4D
		or	ebx, 200000h

loc_420F4D:				; CODE XREF: .text:00420F45j
		and	eax, 20000000h
		test	eax, eax
		jz	short loc_420F5C
		or	ebx, 10000h

loc_420F5C:				; CODE XREF: .text:00420F54j
		mov	edx, g_hInstance
		push	0		; lpParam
		push	edx		; hInstance
		push	0		; hMenu
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		mov	eax, [ebp+10h]
		mov	ecx, [ebp+10h]
		mov	edx, [eax+0Ch]
		sub	edx, [ecx+4]
		push	edx		; nHeight
		mov	eax, [ebp+10h]
		mov	ecx, [ebp+10h]
		mov	edx, [eax+8]
		sub	edx, [ecx]
		push	edx		; nWidth
		mov	eax, [ebp+10h]
		mov	edx, [eax+4]
		push	edx		; Y
		mov	edx, 200h
		mov	ecx, [ebp+10h]
		mov	eax, [ecx]
		push	eax		; X
		push	ebx		; dwStyle
		push	offset word_518C6C ; lpWindowName
		push	offset ottable	; lpClassName
		mov	ecx, [esi+40h]
		and	ecx, 20000000h
		test	ecx, ecx
		jnz	short loc_420FB4
		add	edx, 0FFFFFE00h

loc_420FB4:				; CODE XREF: .text:00420FACj
		push	edx		; dwExStyle
		call	CreateWindowExW
		mov	edi, eax
		mov	[esi+22Ch], edi
		test	edi, edi
		jnz	short loc_420FCD
		xor	eax, eax
		jmp	loc_42107D
; ---------------------------------------------------------------------------

loc_420FCD:				; CODE XREF: .text:00420FC4j
		cmp	dword ptr [esi+208h], 0
		jz	short loc_420FFF
		push	0
		push	0
		push	464h
		push	edi
		push	esi
		call	dword ptr [esi+208h]
		add	esp, 14h
		jmp	short loc_420FFF
; ---------------------------------------------------------------------------

loc_420FEC:				; CODE XREF: .text:00420F29j
		mov	eax, [ebp+8]
		mov	[esi+22Ch], eax
		push	1		; bShow
		push	1		; wBar
		push	eax		; hWnd
		call	ShowScrollBar

loc_420FFF:				; CODE XREF: .text:00420FD4j
					; .text:00420FEAj
		push	esi		; dwNewLong
		push	0		; nIndex
		mov	edx, [esi+22Ch]
		push	edx		; hWnd
		call	SetWindowLongW
		test	byte ptr [esi+43h], 4
		jz	short loc_42101B
		push	esi		; pt
		call	Defaultbar
		pop	ecx

loc_42101B:				; CODE XREF: .text:00421012j
		xor	ecx, ecx
		mov	[esi+254h], ecx
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		push	0		; hMenu
		mov	edx, [esi+22Ch]
		push	edx		; hWndParent
		push	80000000h	; nHeight
		push	80000000h	; nWidth
		push	80000000h	; Y
		push	80000000h	; X
		push	3		; dwStyle
		push	0		; lpWindowName
		push	offset aTooltips_cla_0 ; "tooltips_class32"
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	ebx, eax
		mov	[esi+230h], ebx
		test	ebx, ebx
		jz	short loc_42106B
		push	esi
		call	loc_41A554
		pop	ecx

loc_42106B:				; CODE XREF: .text:00421062j
		mov	eax, [esi+22Ch]
		push	eax		; hWnd
		call	UpdateWindow
		mov	eax, [esi+22Ch]

loc_42107D:				; CODE XREF: .text:00420B98j
					; .text:00420FC8j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 104. _Copytableselection
; Exported entry 437. Copytableselection

; HGLOBAL __cdecl Copytableselection(t_table *pt, int column)
		public Copytableselection
Copytableselection:			; CODE XREF: .text:00419C29p
					; .text:00419DEEp
		push	ebp		; _Copytableselection
		mov	ebp, esp
		add	esp, 0FFFFF6C0h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4210B7
		mov	eax, [esi+40h]
		and	eax, 3
		dec	eax
		jz	short loc_4210B7
		cmp	dword ptr [esi+210h], 0
		jz	short loc_4210B7
		cmp	dword ptr [esi+68h], 0
		jl	short loc_4210B7
		mov	edx, [esi+68h]
		cmp	edx, [esi+44h]
		jl	short loc_4210BE

loc_4210B7:				; CODE XREF: .text:00421095j
					; .text:0042109Ej ...
		xor	eax, eax
		jmp	loc_42147A
; ---------------------------------------------------------------------------

loc_4210BE:				; CODE XREF: .text:004210B5j
		cmp	dword ptr [ebp+0Ch], 0
		jl	short loc_4210CB
		mov	eax, 200h
		jmp	short loc_4210E3
; ---------------------------------------------------------------------------

loc_4210CB:				; CODE XREF: .text:004210C2j
		mov	eax, [esi+8Ch]
		mov	edx, eax
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		add	eax, eax
		add	eax, 240h

loc_4210E3:				; CODE XREF: .text:004210C9j
		add	eax, eax
		push	eax		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_421100
		xor	eax, eax
		jmp	loc_42147A
; ---------------------------------------------------------------------------

loc_421100:				; CODE XREF: .text:004210F7j
		mov	edx, [ebp-2Ch]
		push	edx		; hMem
		call	GlobalLock
		mov	edi, eax
		test	edi, edi
		jnz	short loc_42111F
		mov	eax, [ebp-2Ch]
		push	eax		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_42147A
; ---------------------------------------------------------------------------

loc_42111F:				; CODE XREF: .text:0042110Dj
		xor	ebx, ebx
		cmp	dword ptr [ebp+0Ch], 0
		jge	loc_4211AC
		cmp	dword ptr [esi+224h], 0
		jz	short loc_421148
		push	80h		; nMaxCount
		push	edi		; lpString
		mov	eax, [esi+224h]
		push	eax		; hWnd
		call	GetWindowTextW
		mov	ebx, eax

loc_421148:				; CODE XREF: .text:00421132j
		test	ebx, ebx
		jnz	short loc_42115D
		push	esi		; src
		push	80h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_42115D:				; CODE XREF: .text:0042114Aj
		test	ebx, ebx
		jnz	short loc_42117D
		push	offset aUnnamedTable ; "Unnamed	table"
		call	_T
		pop	ecx
		push	eax		; src
		push	80h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_42117D:				; CODE XREF: .text:0042115Fj
		mov	eax, [esi+68h]
		push	eax
		push	offset aItemI	; ", item %i"
		call	_T
		mov	edx, ebx
		pop	ecx
		add	edx, edx
		push	eax		; format
		add	edx, edi
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		mov	word ptr [edi+ebx*2], 0Dh
		inc	ebx
		mov	word ptr [edi+ebx*2], 0Ah
		inc	ebx

loc_4211AC:				; CODE XREF: .text:00421125j
		mov	ecx, [esi+248h]
		mov	[ebp-10h], ecx
		test	byte ptr [esi+40h], 5
		jz	short loc_4211E1
		mov	eax, [esi+68h]
		xor	edx, edx
		mov	[esi+248h], eax
		mov	[ebp-940h], edx
		mov	dword ptr [ebp-93Ch], 1
		lea	ecx, [ebp-940h]
		mov	[ebp-28h], ecx
		jmp	short loc_4211E6
; ---------------------------------------------------------------------------

loc_4211E1:				; CODE XREF: .text:004211B9j
		xor	eax, eax
		mov	[ebp-28h], eax

loc_4211E6:				; CODE XREF: .text:004211DFj
		push	0
		push	0FFFFFFFCh
		mov	edx, [ebp-28h]
		lea	ecx, [ebp-0Ch]
		push	edx
		push	esi
		push	ecx
		lea	eax, [ebp-630h]
		push	eax
		lea	edx, [ebp-830h]
		push	edx
		call	dword ptr [esi+210h]
		add	esp, 1Ch
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 400h
		jbe	short loc_421249
		push	1		; flags
		mov	ecx, [ebp-18h]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_421257
		mov	edx, [ebp-2Ch]
		push	edx		; hMem
		call	GlobalFree
		mov	ecx, [ebp-10h]
		xor	eax, eax
		mov	[esi+248h], ecx
		jmp	loc_42147A
; ---------------------------------------------------------------------------

loc_421249:				; CODE XREF: .text:00421214j
		xor	edx, edx
		lea	ecx, [ebp-430h]
		mov	[ebp-1Ch], edx
		mov	[ebp-20h], ecx

loc_421257:				; CODE XREF: .text:0042122Ej
		cmp	dword ptr [ebp-18h], 0
		jbe	short loc_421283
		mov	eax, [ebp-20h]
		lea	ecx, [ebp-0Ch]
		push	eax
		push	0FFFFFFFDh
		mov	edx, [ebp-28h]
		lea	eax, [ebp-630h]
		push	edx
		push	esi
		push	ecx
		push	eax
		lea	edx, [ebp-830h]
		push	edx
		call	dword ptr [esi+210h]
		add	esp, 1Ch

loc_421283:				; CODE XREF: .text:0042125Bj
		test	byte ptr [esi+40h], 5
		jnz	short loc_42129C
		mov	ecx, [esi+68h]
		push	ecx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	[ebp-28h], eax

loc_42129C:				; CODE XREF: .text:00421287j
		mov	edx, [ebp-20h]
		lea	eax, [ebp-0Ch]
		push	edx
		push	0FFFFFFFFh
		mov	ecx, [ebp-28h]
		lea	edx, [ebp-630h]
		push	ecx
		push	esi
		push	eax
		push	edx
		lea	ecx, [ebp-830h]
		push	ecx
		call	dword ptr [esi+210h]
		add	esp, 1Ch
		xor	eax, eax
		mov	[ebp-14h], eax
		lea	edx, [esi+94h]
		mov	[ebp-30h], edx
		jmp	loc_4213FC
; ---------------------------------------------------------------------------

loc_4212D5:				; CODE XREF: .text:0042140Bj
		cmp	dword ptr [ebp+0Ch], 0
		jl	short loc_4212E7
		mov	ecx, [ebp+0Ch]
		cmp	ecx, [ebp-14h]
		jnz	loc_4213F5

loc_4212E7:				; CODE XREF: .text:004212D9j
		cmp	dword ptr [ebp+0Ch], 0
		jge	short loc_42135D
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx
		mov	eax, [ebp-30h]
		mov	edx, [eax]
		push	edx		; src
		call	_T
		pop	ecx
		mov	[ebp-24h], eax
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebp-24h]
		jmp	short loc_42131A
; ---------------------------------------------------------------------------

loc_421314:				; CODE XREF: .text:00421326j
		inc	dword ptr [ebp-4]
		add	eax, 2

loc_42131A:				; CODE XREF: .text:00421312j
		mov	dx, [eax]
		test	dx, dx
		jz	short loc_421328
		cmp	dx, 24h
		jnz	short loc_421314

loc_421328:				; CODE XREF: .text:00421320j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_421348
		mov	ecx, [ebp-24h]
		mov	edx, ebx
		push	ecx		; src
		add	edx, edx
		mov	eax, [ebp-4]
		inc	eax
		add	edx, edi
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_421348:				; CODE XREF: .text:0042132Cj
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx
		mov	word ptr [edi+ebx*2], 3Dh
		inc	ebx
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx

loc_42135D:				; CODE XREF: .text:004212EBj
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp-20h]
		push	eax
		lea	eax, [ebp-0Ch]
		mov	edx, [ebp-14h]
		push	edx
		lea	edx, [ebp-630h]
		mov	ecx, [ebp-28h]
		push	ecx
		mov	ecx, ebx
		push	esi
		push	eax
		add	ecx, ecx
		push	edx
		add	ecx, edi
		push	ecx
		call	dword ptr [esi+210h]
		add	esp, 1Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jge	short loc_42139A
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_4213AA
; ---------------------------------------------------------------------------

loc_42139A:				; CODE XREF: .text:00421391j
		cmp	dword ptr [ebp-8], 100h
		jl	short loc_4213AA
		mov	dword ptr [ebp-8], 0FFh

loc_4213AA:				; CODE XREF: .text:00421398j
					; .text:004213A1j
		mov	edx, [ebp-8]
		lea	eax, [ebp-630h]
		push	edx		; n
		mov	edx, ebx
		mov	ecx, [ebp-0Ch]
		add	edx, edx
		push	ecx		; select
		push	eax		; mask
		add	edx, edi
		push	edx		; s
		push	0		; mode
		call	Replacegraphs
		add	esp, 14h
		add	ebx, [ebp-8]
		lea	eax, [edi+ebx*2-2]
		jmp	short loc_4213D7
; ---------------------------------------------------------------------------

loc_4213D3:				; CODE XREF: .text:004213DFj
		dec	ebx
		add	eax, 0FFFFFFFEh

loc_4213D7:				; CODE XREF: .text:004213D1j
		test	ebx, ebx
		jbe	short loc_4213E1
		cmp	word ptr [eax],	20h
		jz	short loc_4213D3

loc_4213E1:				; CODE XREF: .text:004213D9j
		cmp	dword ptr [ebp+0Ch], 0
		jge	short loc_4213F5
		mov	word ptr [edi+ebx*2], 0Dh
		inc	ebx
		mov	word ptr [edi+ebx*2], 0Ah
		inc	ebx

loc_4213F5:				; CODE XREF: .text:004212E1j
					; .text:004213E5j
		inc	dword ptr [ebp-14h]
		add	dword ptr [ebp-30h], 4

loc_4213FC:				; CODE XREF: .text:004212D0j
		mov	edx, [esi+8Ch]
		cmp	edx, [ebp-14h]
		jle	short loc_421411
		cmp	dword ptr [ebp-14h], 11h
		jl	loc_4212D5

loc_421411:				; CODE XREF: .text:00421405j
		mov	word ptr [edi+ebx*2], 0
		inc	ebx
		cmp	dword ptr [ebp-18h], 0
		jbe	short loc_421444
		mov	ecx, [ebp-20h]
		lea	edx, [ebp-0Ch]
		push	ecx
		push	0FFFFFFFEh
		mov	eax, [ebp-28h]
		lea	ecx, [ebp-630h]
		push	eax
		push	esi
		push	edx
		push	ecx
		lea	eax, [ebp-830h]
		push	eax
		call	dword ptr [esi+210h]
		add	esp, 1Ch

loc_421444:				; CODE XREF: .text:0042141Cj
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_421454
		mov	edx, [ebp-1Ch]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_421454:				; CODE XREF: .text:00421448j
		mov	ecx, [ebp-10h]
		mov	[esi+248h], ecx
		mov	eax, [ebp-2Ch]
		push	eax		; hMem
		call	GlobalUnlock
		push	2		; uFlags
		add	ebx, ebx
		push	ebx		; dwBytes
		mov	edx, [ebp-2Ch]
		push	edx		; hMem
		call	GlobalReAlloc
		mov	[ebp-2Ch], eax
		mov	eax, [ebp-2Ch]

loc_42147A:				; CODE XREF: .text:004210B9j
					; .text:004210FBj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 105. _Copywholetable
; Exported entry 438. Copywholetable

; HGLOBAL __cdecl Copywholetable(t_table *pt, int compatible)
		public Copywholetable
Copywholetable:				; CODE XREF: .text:00419CE8p
					; .text:00494174p
		push	ebp		; _Copywholetable
		mov	ebp, esp
		add	esp, 0FFFFF468h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4214BD
		mov	eax, [ebp+8]
		mov	edx, [eax+40h]
		and	edx, 3
		dec	edx
		jnz	short loc_4214A8
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4214BD

loc_4214A8:				; CODE XREF: .text:004214A0j
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+210h], 0
		jz	short loc_4214BD
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+44h], 0
		jnz	short loc_4214C4

loc_4214BD:				; CODE XREF: .text:00421494j
					; .text:004214A6j ...
		xor	eax, eax
		jmp	loc_421AC8
; ---------------------------------------------------------------------------

loc_4214C4:				; CODE XREF: .text:004214BBj
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-4], edx
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp+8]
		lea	ebx, [ebp-88h]
		lea	esi, [eax+1A4h]
		jmp	short loc_421522
; ---------------------------------------------------------------------------

loc_4214DF:				; CODE XREF: .text:00421534j
		cmp	dword ptr [esi], 3
		jg	short loc_4214EA
		xor	eax, eax
		mov	[ebx], eax
		jmp	short loc_421519
; ---------------------------------------------------------------------------

loc_4214EA:				; CODE XREF: .text:004214E2j
		mov	edx, [ebp-0Ch]
		push	edx		; column
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Getcharacterwidth
		mov	ecx, eax
		mov	eax, [esi]
		cdq
		idiv	ecx
		mov	edi, eax
		add	esp, 8
		cmp	edi, 100h
		mov	[ebx], edi
		jl	short loc_421513
		mov	dword ptr [ebx], 0FFh

loc_421513:				; CODE XREF: .text:0042150Bj
		mov	eax, [ebx]
		inc	eax
		add	[ebp-4], eax

loc_421519:				; CODE XREF: .text:004214E8j
		inc	dword ptr [ebp-0Ch]
		add	ebx, 4
		add	esi, 4

loc_421522:				; CODE XREF: .text:004214DDj
		mov	edx, [ebp+8]
		mov	ecx, [edx+8Ch]
		cmp	ecx, [ebp-0Ch]
		jle	short loc_421536
		cmp	dword ptr [ebp-0Ch], 11h
		jl	short loc_4214DF

loc_421536:				; CODE XREF: .text:0042152Ej
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_421543
		xor	eax, eax
		jmp	loc_421AC8
; ---------------------------------------------------------------------------

loc_421543:				; CODE XREF: .text:0042153Aj
		mov	ecx, [ebp+8]
		mov	edx, [ebp-4]
		add	edx, 2
		mov	eax, [ecx+44h]
		inc	eax
		imul	edx, eax
		add	edx, 140h
		mov	[ebp-18h], edx
		mov	edx, [ebp-18h]
		add	edx, edx
		push	edx		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jnz	short loc_42157C
		xor	eax, eax
		jmp	loc_421AC8
; ---------------------------------------------------------------------------

loc_42157C:				; CODE XREF: .text:00421573j
		mov	edx, [ebp-34h]
		push	edx		; hMem
		call	GlobalLock
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_42159E
		mov	ecx, [ebp-34h]
		push	ecx		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_421AC8
; ---------------------------------------------------------------------------

loc_42159E:				; CODE XREF: .text:0042158Cj
		xor	ebx, ebx
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+224h], 0
		jz	short loc_4215C6
		push	80h		; nMaxCount
		mov	edx, [ebp-28h]
		push	edx		; lpString
		mov	ecx, [ebp+8]
		mov	eax, [ecx+224h]
		push	eax		; hWnd
		call	GetWindowTextW
		mov	ebx, eax

loc_4215C6:				; CODE XREF: .text:004215AAj
		test	ebx, ebx
		jnz	short loc_4215E1
		mov	eax, [ebp+8]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp-28h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4215E1:				; CODE XREF: .text:004215C8j
		test	ebx, ebx
		jnz	short loc_421604
		push	offset aUnnamedTable ; "Unnamed	table"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp-28h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_421604:				; CODE XREF: .text:004215E3j
		mov	eax, [ebp-28h]
		mov	word ptr [eax+ebx*2], 0Dh
		inc	ebx
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 0Ah
		inc	ebx
		mov	ecx, [ebp+8]
		mov	eax, [ecx+248h]
		mov	[ebp-14h], eax
		mov	edx, [ebp+8]
		test	byte ptr [edx+40h], 5
		jz	short loc_421657
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	[ecx+248h], eax
		xor	edx, edx
		mov	[ebp-0B98h], edx
		mov	ecx, [ebp+8]
		mov	eax, [ecx+44h]
		mov	[ebp-0B94h], eax
		lea	edx, [ebp-0B98h]
		mov	[ebp-30h], edx
		jmp	short loc_42165C
; ---------------------------------------------------------------------------

loc_421657:				; CODE XREF: .text:0042162Bj
		xor	ecx, ecx
		mov	[ebp-30h], ecx

loc_42165C:				; CODE XREF: .text:00421655j
		push	0
		push	0FFFFFFFCh
		mov	eax, [ebp-30h]
		lea	ecx, [ebp-10h]
		push	eax
		lea	eax, [ebp-688h]
		mov	edx, [ebp+8]
		push	edx
		push	ecx
		push	eax
		lea	edx, [ebp-0A88h]
		push	edx
		mov	ecx, [ebp+8]
		call	dword ptr [ecx+210h]
		add	esp, 1Ch
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 400h
		jbe	short loc_4216C8
		push	1		; flags
		mov	eax, [ebp-1Ch]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-20h], eax
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_4216D6
		mov	edx, [ebp-34h]
		push	edx		; hMem
		call	GlobalFree
		mov	ecx, [ebp+8]
		mov	eax, [ebp-14h]
		mov	[ecx+248h], eax
		xor	eax, eax
		jmp	loc_421AC8
; ---------------------------------------------------------------------------

loc_4216C8:				; CODE XREF: .text:00421690j
		xor	edx, edx
		lea	ecx, [ebp-488h]
		mov	[ebp-20h], edx
		mov	[ebp-24h], ecx

loc_4216D6:				; CODE XREF: .text:004216AAj
		cmp	dword ptr [ebp-1Ch], 0
		jbe	short loc_421708
		mov	eax, [ebp-24h]
		push	eax
		push	0FFFFFFFDh
		mov	edx, [ebp-30h]
		lea	eax, [ebp-10h]
		push	edx
		lea	edx, [ebp-688h]
		mov	ecx, [ebp+8]
		push	ecx
		push	eax
		push	edx
		lea	ecx, [ebp-0A88h]
		push	ecx
		mov	eax, [ebp+8]
		call	dword ptr [eax+210h]
		add	esp, 1Ch

loc_421708:				; CODE XREF: .text:004216DAj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_42171E
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+8Ch], 1
		jle	loc_42183E

loc_42171E:				; CODE XREF: .text:0042170Cj
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp+8]
		lea	edx, [eax+94h]
		mov	[ebp-3Ch], edx
		lea	ecx, [ebp-88h]
		mov	[ebp-38h], ecx
		jmp	loc_4217EE
; ---------------------------------------------------------------------------

loc_42173D:				; CODE XREF: .text:00421800j
		mov	eax, [ebp-38h]
		cmp	dword ptr [eax], 0
		jz	loc_4217E3
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx]
		push	ecx		; src
		call	_T
		pop	ecx
		mov	[ebp-2Ch], eax
		mov	eax, [ebp-28h]
		xor	esi, esi
		lea	edx, [eax+ebx*2]
		mov	[ebp-44h], edx
		mov	ecx, [ebp-2Ch]
		mov	edx, [ebp-38h]
		mov	eax, ecx
		mov	ecx, edx
		mov	[ebp-40h], ecx
		jmp	short loc_42178F
; ---------------------------------------------------------------------------

loc_421772:				; CODE XREF: .text:00421794j
		mov	dx, [eax]
		test	dx, dx
		jz	short loc_421796
		cmp	dx, 24h
		jz	short loc_421796
		mov	ecx, [ebp-44h]
		inc	ebx
		inc	esi
		mov	[ecx], dx
		add	dword ptr [ebp-44h], 2
		add	eax, 2

loc_42178F:				; CODE XREF: .text:00421770j
		mov	edx, [ebp-40h]
		cmp	esi, [edx]
		jl	short loc_421772

loc_421796:				; CODE XREF: .text:00421778j
					; .text:0042177Ej
		mov	eax, [ebp-38h]
		cmp	esi, [eax]
		jl	short loc_4217BD
		mov	ecx, [ebp-2Ch]
		cmp	word ptr [ecx+esi*2], 0
		jz	short loc_4217BD
		mov	eax, [ebp-2Ch]
		cmp	word ptr [eax+esi*2], 24h
		jz	short loc_4217BD
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 3Eh
		inc	ebx
		jmp	short loc_4217E3
; ---------------------------------------------------------------------------

loc_4217BD:				; CODE XREF: .text:0042179Bj
					; .text:004217A5j ...
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8Ch]
		dec	eax
		cmp	eax, [ebp-0Ch]
		jz	short loc_4217E3
		jmp	short loc_4217D9
; ---------------------------------------------------------------------------

loc_4217CE:				; CODE XREF: .text:004217E1j
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 20h
		inc	ebx
		inc	esi

loc_4217D9:				; CODE XREF: .text:004217CCj
		mov	ecx, [ebp-38h]
		mov	eax, [ecx]
		inc	eax
		cmp	esi, eax
		jl	short loc_4217CE

loc_4217E3:				; CODE XREF: .text:00421743j
					; .text:004217BBj ...
		inc	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-3Ch], 4
		add	dword ptr [ebp-38h], 4

loc_4217EE:				; CODE XREF: .text:00421738j
		mov	edx, [ebp+8]
		mov	ecx, [edx+8Ch]
		cmp	ecx, [ebp-0Ch]
		jle	short loc_421806
		cmp	dword ptr [ebp-0Ch], 11h
		jl	loc_42173D

loc_421806:				; CODE XREF: .text:004217FAj
		mov	eax, [ebp-28h]
		lea	edx, [eax+ebx*2-2]
		mov	[ebp-3Ch], edx
		jmp	short loc_421817
; ---------------------------------------------------------------------------

loc_421812:				; CODE XREF: .text:00421822j
		dec	ebx
		add	dword ptr [ebp-3Ch], 0FFFFFFFEh

loc_421817:				; CODE XREF: .text:00421810j
		test	ebx, ebx
		jbe	short loc_421824
		mov	ecx, [ebp-3Ch]
		cmp	word ptr [ecx],	20h
		jz	short loc_421812

loc_421824:				; CODE XREF: .text:00421819j
		test	ebx, ebx
		jbe	short loc_421856
		mov	eax, [ebp-28h]
		mov	word ptr [eax+ebx*2], 0Dh
		inc	ebx
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 0Ah
		inc	ebx
		jmp	short loc_421856
; ---------------------------------------------------------------------------

loc_42183E:				; CODE XREF: .text:00421718j
		test	ebx, ebx
		jbe	short loc_421856
		mov	ecx, [ebp-28h]
		mov	word ptr [ecx+ebx*2], 0Dh
		inc	ebx
		mov	eax, [ebp-28h]
		mov	word ptr [eax+ebx*2], 0Ah
		inc	ebx

loc_421856:				; CODE XREF: .text:00421826j
					; .text:0042183Cj ...
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_421A44
; ---------------------------------------------------------------------------

loc_421860:				; CODE XREF: .text:00421A4Dj
		mov	ecx, [ebp+8]
		mov	eax, [ecx+40h]
		mov	edx, eax
		and	edx, 3
		cmp	edx, 3
		jnz	short loc_421888
		mov	ecx, [ebp+8]
		mov	edx, [ecx+248h]
		mov	ecx, [ebp+8]
		add	edx, [ebp-8]
		cmp	edx, [ecx+44h]
		jge	loc_421A53

loc_421888:				; CODE XREF: .text:0042186Ej
		test	al, 5
		jz	short loc_4218C2
		test	al, 8
		jz	short loc_4218A2
		mov	eax, [ebp+8]
		mov	eax, [eax+44h]
		sub	eax, [ebp-8]
		dec	eax
		mov	[ebp-0B98h], eax
		jmp	short loc_4218AB
; ---------------------------------------------------------------------------

loc_4218A2:				; CODE XREF: .text:0042188Ej
		mov	edx, [ebp-8]
		mov	[ebp-0B98h], edx

loc_4218AB:				; CODE XREF: .text:004218A0j
		mov	ecx, [ebp+8]
		mov	eax, [ecx+44h]
		mov	[ebp-0B94h], eax
		lea	edx, [ebp-0B98h]
		mov	[ebp-30h], edx
		jmp	short loc_4218D8
; ---------------------------------------------------------------------------

loc_4218C2:				; CODE XREF: .text:0042188Aj
		mov	ecx, [ebp-8]
		push	ecx		; index
		mov	eax, [ebp+8]
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	[ebp-30h], eax

loc_4218D8:				; CODE XREF: .text:004218C0j
		mov	edx, [ebp-24h]
		push	edx
		push	0FFFFFFFFh
		mov	ecx, [ebp-30h]
		lea	edx, [ebp-10h]
		push	ecx
		lea	ecx, [ebp-688h]
		mov	eax, [ebp+8]
		push	eax
		push	edx
		push	ecx
		lea	eax, [ebp-0A88h]
		push	eax
		mov	edx, [ebp+8]
		call	dword ptr [edx+210h]
		add	esp, 1Ch
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		lea	edi, [ebp-88h]
		jmp	loc_4219FE
; ---------------------------------------------------------------------------

loc_421914:				; CODE XREF: .text:00421A10j
		cmp	dword ptr [edi], 0
		jz	loc_4219F8
		xor	eax, eax
		mov	[ebp-10h], eax
		mov	edx, [ebp-24h]
		push	edx
		mov	ecx, [ebp-0Ch]
		push	ecx
		lea	ecx, [ebp-10h]
		mov	eax, [ebp-30h]
		push	eax
		lea	eax, [ebp-688h]
		mov	edx, [ebp+8]
		push	edx
		mov	edx, ebx
		push	ecx
		push	eax
		add	edx, edx
		add	edx, [ebp-28h]
		push	edx
		mov	ecx, [ebp+8]
		call	dword ptr [ecx+210h]
		add	esp, 1Ch
		mov	[ebp-4], eax
		test	byte ptr [ebp-0Fh], 20h
		jz	short loc_421961
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_42197E
; ---------------------------------------------------------------------------

loc_421961:				; CODE XREF: .text:00421958j
		cmp	dword ptr [ebp-4], 0
		jge	short loc_42196E
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_42197E
; ---------------------------------------------------------------------------

loc_42196E:				; CODE XREF: .text:00421965j
		cmp	dword ptr [ebp-4], 100h
		jl	short loc_42197E
		mov	dword ptr [ebp-4], 0FFh

loc_42197E:				; CODE XREF: .text:0042195Fj
					; .text:0042196Cj ...
		mov	eax, [ebp-0Ch]
		shl	eax, 2
		lea	edx, [ebp-88h]
		add	eax, edx
		mov	ecx, [eax]
		cmp	ecx, [ebp-4]
		jle	short loc_421998
		lea	edx, [ebp-4]
		jmp	short loc_42199A
; ---------------------------------------------------------------------------

loc_421998:				; CODE XREF: .text:00421991j
		mov	edx, eax

loc_42199A:				; CODE XREF: .text:00421996j
		mov	esi, [edx]
		lea	edx, [ebp-688h]
		push	esi		; n
		mov	ecx, ebx
		mov	eax, [ebp-10h]
		add	ecx, ecx
		push	eax		; select
		push	edx		; mask
		add	ecx, [ebp-28h]
		mov	eax, dword_57DE4C
		push	ecx		; s
		push	eax		; mode
		call	Replacegraphs
		add	esp, 14h
		add	ebx, esi
		cmp	esi, [edi]
		jl	short loc_4219D5
		cmp	esi, [ebp-4]
		jge	short loc_4219D5
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 3Eh
		inc	ebx
		jmp	short loc_4219F8
; ---------------------------------------------------------------------------

loc_4219D5:				; CODE XREF: .text:004219C2j
					; .text:004219C7j
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8Ch]
		dec	eax
		cmp	eax, [ebp-0Ch]
		jz	short loc_4219F8
		jmp	short loc_4219F1
; ---------------------------------------------------------------------------

loc_4219E6:				; CODE XREF: .text:004219F6j
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 20h
		inc	ebx
		inc	esi

loc_4219F1:				; CODE XREF: .text:004219E4j
		mov	ecx, [edi]
		inc	ecx
		cmp	esi, ecx
		jl	short loc_4219E6

loc_4219F8:				; CODE XREF: .text:00421917j
					; .text:004219D3j ...
		inc	dword ptr [ebp-0Ch]
		add	edi, 4

loc_4219FE:				; CODE XREF: .text:0042190Fj
		mov	eax, [ebp+8]
		mov	edx, [eax+8Ch]
		cmp	edx, [ebp-0Ch]
		jle	short loc_421A16
		cmp	dword ptr [ebp-0Ch], 11h
		jl	loc_421914

loc_421A16:				; CODE XREF: .text:00421A0Aj
		mov	ecx, [ebp-28h]
		lea	edi, [ecx+ebx*2-2]
		jmp	short loc_421A23
; ---------------------------------------------------------------------------

loc_421A1F:				; CODE XREF: .text:00421A2Bj
		dec	ebx
		add	edi, 0FFFFFFFEh

loc_421A23:				; CODE XREF: .text:00421A1Dj
		test	ebx, ebx
		jbe	short loc_421A2D
		cmp	word ptr [edi],	20h
		jz	short loc_421A1F

loc_421A2D:				; CODE XREF: .text:00421A25j
		mov	eax, [ebp-28h]
		mov	word ptr [eax+ebx*2], 0Dh
		inc	ebx
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 0Ah
		inc	ebx
		inc	dword ptr [ebp-8]

loc_421A44:				; CODE XREF: .text:0042185Bj
		mov	ecx, [ebp+8]
		mov	eax, [ecx+44h]
		cmp	eax, [ebp-8]
		jg	loc_421860

loc_421A53:				; CODE XREF: .text:00421882j
		mov	edx, [ebp-28h]
		mov	word ptr [edx+ebx*2], 0
		inc	ebx
		cmp	dword ptr [ebp-1Ch], 0
		jbe	short loc_421A8F
		mov	ecx, [ebp-24h]
		push	ecx
		push	0FFFFFFFEh
		mov	eax, [ebp-30h]
		lea	ecx, [ebp-10h]
		push	eax
		lea	eax, [ebp-688h]
		mov	edx, [ebp+8]
		push	edx
		push	ecx
		push	eax
		lea	edx, [ebp-0A88h]
		push	edx
		mov	ecx, [ebp+8]
		call	dword ptr [ecx+210h]
		add	esp, 1Ch

loc_421A8F:				; CODE XREF: .text:00421A61j
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_421A9F
		mov	eax, [ebp-20h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_421A9F:				; CODE XREF: .text:00421A93j
		mov	edx, [ebp+8]
		mov	ecx, [ebp-14h]
		mov	[edx+248h], ecx
		mov	eax, [ebp-34h]
		push	eax		; hMem
		call	GlobalUnlock
		push	2		; uFlags
		add	ebx, ebx
		push	ebx		; dwBytes
		mov	edx, [ebp-34h]
		push	edx		; hMem
		call	GlobalReAlloc
		mov	[ebp-34h], eax
		mov	eax, [ebp-34h]

loc_421AC8:				; CODE XREF: .text:004214BFj
					; .text:0042153Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; BOOL __stdcall loc_421AD0(HWND, LPARAM)
loc_421AD0:				; DATA XREF: .text:00422140o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jnz	short loc_421AEA
		xor	eax, eax
		jmp	loc_421B9F
; ---------------------------------------------------------------------------

loc_421AEA:				; CODE XREF: .text:00421AE1j
		push	edi		; hWnd
		call	GetDlgCtrlID
		mov	esi, eax
		test	esi, esi
		jnz	short loc_421B00
		mov	eax, 1
		jmp	loc_421B9F
; ---------------------------------------------------------------------------

loc_421B00:				; CODE XREF: .text:00421AF4j
		and	esi, 0C000h
		lea	edx, [ebp-28h]
		push	edx		; lpRect
		push	edi		; hWnd
		call	GetWindowRect
		lea	ecx, [ebp-28h]
		push	ecx		; lpPoint
		mov	eax, [ebx+224h]
		push	eax		; hWnd
		call	ScreenToClient
		lea	edx, [ebp-20h]
		push	edx		; lpPoint
		mov	ecx, [ebx+224h]
		push	ecx		; hWnd
		call	ScreenToClient
		lea	eax, [ebp-18h]
		push	eax		; lpRect
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-1Ch]
		mov	edx, [ebp-20h]
		sub	ecx, [ebp-24h]
		mov	eax, [ebp-28h]
		mov	[ebp-8], ecx
		sub	edx, eax
		mov	ecx, [ebp-24h]
		add	ecx, [ebp-0Ch]
		sub	ecx, [ebx+264h]
		cmp	esi, 4000h
		mov	[ebp-4], ecx
		jnz	short loc_421B75
		mov	ecx, [ebp-10h]
		sub	ecx, [ebx+260h]
		add	eax, ecx
		jmp	short loc_421B88
; ---------------------------------------------------------------------------

loc_421B75:				; CODE XREF: .text:00421B66j
		cmp	esi, 8000h
		jnz	short loc_421B88
		mov	ecx, [ebp-10h]
		sub	ecx, [ebx+260h]
		add	edx, ecx

loc_421B88:				; CODE XREF: .text:00421B73j
					; .text:00421B7Bj
		push	1		; bRepaint
		mov	ecx, [ebp-8]
		push	ecx		; nHeight
		push	edx		; nWidth
		mov	edx, [ebp-4]
		push	edx		; Y
		push	eax		; X
		push	edi		; hWnd
		call	MoveWindow
		mov	eax, 1

loc_421B9F:				; CODE XREF: .text:00421AE5j
					; .text:00421AFBj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

; int __stdcall	loc_421BA8(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_421BA8:				; DATA XREF: .text:00422388o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD74h
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
		jnz	short loc_421BF9
		cmp	hwclient, 0
		jnz	short loc_421BE5
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_421BE5:				; CODE XREF: .text:00421BCFj
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_421BF9:				; CODE XREF: .text:00421BC6j
		mov	edx, edi
		cmp	edx, 47h
		jg	short loc_421C61
		jz	loc_4220E9
		cmp	edx, 0Fh
		jg	short loc_421C38
		jz	loc_421DFC
		sub	edx, 2
		jz	loc_421CCB
		dec	edx
		jz	loc_422239
		sub	edx, 2
		jz	loc_42217C
		sub	edx, 2
		jz	loc_4222B5
		jmp	loc_422324
; ---------------------------------------------------------------------------

loc_421C38:				; CODE XREF: .text:00421C09j
		sub	edx, 10h
		jz	loc_421DA4
		sub	edx, 12h
		jz	loc_422239
		sub	edx, 2
		jz	loc_421F05
		sub	edx, 22h
		jz	loc_42208C
		jmp	loc_422324
; ---------------------------------------------------------------------------

loc_421C61:				; CODE XREF: .text:00421BFEj
		cmp	edx, 111h
		jg	short loc_421C9B
		jz	loc_42226A
		sub	edx, 100h
		jz	loc_42221F
		sub	edx, 2
		jz	loc_42221F
		sub	edx, 2
		jz	loc_42221F
		sub	edx, 2
		jz	loc_42221F
		jmp	loc_422324
; ---------------------------------------------------------------------------

loc_421C9B:				; CODE XREF: .text:00421C67j
		sub	edx, 112h
		jz	loc_422239
		sub	edx, 0Eh
		jz	loc_422239
		add	edx, 0FFFFFC9Ch
		sub	edx, 9
		jb	loc_42230D
		dec	edx
		jz	loc_42230D
		jmp	loc_422324
; ---------------------------------------------------------------------------

loc_421CCB:				; CODE XREF: .text:00421C14j
		cmp	esi, dword_57FE6C
		jnz	short loc_421CDB
		xor	ecx, ecx
		mov	dword_57FE6C, ecx

loc_421CDB:				; CODE XREF: .text:00421CD1j
		test	byte ptr [ebx+42h], 2
		jz	loc_421D6F
		cmp	word ptr [ebx],	0
		jz	loc_421D6F
		mov	dword ptr [ebp-24Ch], 2Ch
		lea	eax, [ebp-24Ch]
		push	eax		; lpwndpl
		push	esi		; hWnd
		call	GetWindowPlacement
		mov	eax, [ebx+228h]
		test	eax, eax
		jz	short loc_421D2B
		lea	edx, [ebp-220h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-214h]
		sub	eax, [ebp-21Ch]
		jmp	short loc_421D2D
; ---------------------------------------------------------------------------

loc_421D2B:				; CODE XREF: .text:00421D0Ej
		xor	eax, eax

loc_421D2D:				; CODE XREF: .text:00421D29j
		mov	ecx, [ebp-244h]
		push	ecx
		mov	ecx, [ebp-224h]
		sub	ecx, [ebp-22Ch]
		sub	ecx, eax
		push	ecx
		mov	eax, [ebp-228h]
		mov	edx, [ebp-230h]
		sub	eax, edx
		push	eax
		mov	eax, [ebp-22Ch]
		push	eax
		push	edx		; arglist
		push	offset aIIIII_0	; "%i,%i,%i,%i,%i"
		push	offset aPlacement_0 ; "Placement"
		push	ebx		; section
		push	0		; file
		call	Writetoini
		add	esp, 24h

loc_421D6F:				; CODE XREF: .text:00421CDFj
					; .text:00421CE9j
		xor	edx, edx
		mov	[ebx+230h], edx
		mov	[ebx+228h], edx
		mov	[ebx+224h], edx
		cmp	hwclient, 0
		jz	loc_42234F
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_421DA4:				; CODE XREF: .text:00421C3Bj
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_421DCB
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		push	edi
		push	esi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		inc	eax
		jnz	short loc_421DCB
		xor	eax, eax
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_421DCB:				; CODE XREF: .text:00421DABj
					; .text:00421DC2j
		cmp	hwclient, 0
		jnz	short loc_421DE8
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_421DE8:				; CODE XREF: .text:00421DD2j
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_421DFC:				; CODE XREF: .text:00421C0Bj
		lea	ecx, [ebp-28Ch]
		push	ecx		; lpPaint
		push	esi		; hWnd
		call	BeginPaint
		cmp	dword ptr [ebx+200h], 0
		mov	edi, eax
		jle	loc_421EF3
		lea	eax, [ebp-210h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	edx, [ebp-204h]
		sub	edx, [ebx+200h]
		mov	[ebp-20Ch], edx
		mov	eax, [ebx+228h]
		test	eax, eax
		jz	short loc_421E66
		lea	edx, [ebp-220h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-214h]
		sub	eax, [ebp-21Ch]
		sub	[ebp-20Ch], eax
		sub	[ebp-204h], eax

loc_421E66:				; CODE XREF: .text:00421E3Fj
		mov	edx, g_Pen+10h
		push	edx		; HGDIOBJ
		push	edi		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [ebp-20Ch]
		push	ecx		; int
		mov	eax, [ebp-210h]
		push	eax		; int
		push	edi		; HDC
		call	MoveToEx
		mov	edx, [ebp-20Ch]
		push	edx		; int
		mov	ecx, [ebp-208h]
		push	ecx		; int
		push	edi		; HDC
		call	LineTo
		inc	dword ptr [ebp-20Ch]
		mov	eax, g_Pen+14h
		push	eax		; HGDIOBJ
		push	edi		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	edx, [ebp-20Ch]
		push	edx		; int
		mov	ecx, [ebp-210h]
		push	ecx		; int
		push	edi		; HDC
		call	MoveToEx
		mov	eax, [ebp-20Ch]
		push	eax		; int
		mov	edx, [ebp-208h]
		push	edx		; int
		push	edi		; HDC
		call	LineTo
		inc	dword ptr [ebp-20Ch]
		mov	ecx, g_Brush+4
		push	ecx		; hbr
		lea	eax, [ebp-210h]
		push	eax		; lprc
		push	edi		; hDC
		call	FillRect

loc_421EF3:				; CODE XREF: .text:00421E12j
		lea	edx, [ebp-28Ch]
		push	edx		; lpPaint
		push	esi		; hWnd
		call	EndPaint
		jmp	loc_42234F
; ---------------------------------------------------------------------------

loc_421F05:				; CODE XREF: .text:00421C4Dj
		xor	ecx, ecx
		mov	[ebp-20Ch], ecx
		mov	[ebp-210h], ecx
		push	2		; nIndex
		call	GetSystemMetrics
		mov	edx, [ebx+234h]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	edx, font._width[edx*4]
		shl	edx, 3
		add	eax, edx
		mov	[ebp-208h], eax
		mov	eax, [ebx+204h]
		cmp	eax, [ebp-208h]
		jle	short loc_421F50
		mov	[ebp-208h], eax

loc_421F50:				; CODE XREF: .text:00421F48j
		push	3		; nIndex
		call	GetSystemMetrics
		mov	edx, [ebx+234h]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	edx, font.height[edx*4]
		add	edx, edx
		add	eax, edx
		add	eax, 4
		mov	[ebp-204h], eax
		mov	eax, [ebx+200h]
		test	eax, eax
		jle	short loc_421F8B
		add	[ebp-204h], eax

loc_421F8B:				; CODE XREF: .text:00421F83j
		mov	eax, [ebx+228h]
		test	eax, eax
		jz	short loc_421FB4
		lea	edx, [ebp-220h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-214h]
		sub	ecx, [ebp-21Ch]
		add	[ebp-204h], ecx

loc_421FB4:				; CODE XREF: .text:00421F93j
		push	0		; bMenu
		push	0CF0000h	; dwStyle
		lea	eax, [ebp-210h]
		push	eax		; lpRect
		call	AdjustWindowRect
		mov	edx, [ebp-208h]
		mov	ebx, [ebp+14h]
		sub	edx, [ebp-210h]
		mov	[ebx+18h], edx
		mov	eax, [ebp-204h]
		sub	eax, [ebp-20Ch]
		mov	[ebx+1Ch], eax
		cmp	dword_57FE64, 2
		jnz	short loc_42206B
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
		jz	short loc_42206B
		lea	edx, [ebp-220h]
		push	edx		; lpRect
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-214h]
		add	[ebx+14h], eax
		mov	edx, [ebp-214h]
		sub	[ebx+0Ch], edx

loc_42206B:				; CODE XREF: .text:00421FEFj
					; .text:00422044j
		cmp	hwclient, 0
		jz	loc_42234F
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_42208C:				; CODE XREF: .text:00421C56j
		lea	edx, [ebp-210h]
		push	edx		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp+14h]
		test	byte ptr [ecx+18h], 1
		jnz	short loc_4220D1
		mov	edx, [ebp-208h]
		mov	eax, [ebp+14h]
		sub	edx, [ebp-210h]
		cmp	edx, [eax+10h]
		jnz	short loc_4220C7
		mov	ecx, [ebp-204h]
		sub	ecx, [ebp-20Ch]
		cmp	ecx, [eax+14h]
		jz	short loc_4220D1

loc_4220C7:				; CODE XREF: .text:004220B4j
		mov	eax, [ebp+14h]
		or	dword ptr [eax+18h], 100h

loc_4220D1:				; CODE XREF: .text:004220A0j
					; .text:004220C5j
		lea	esi, [ebp-210h]
		lea	edi, [ebx+258h]
		mov	ecx, 4
		rep movsd
		jmp	loc_42234F
; ---------------------------------------------------------------------------

loc_4220E9:				; CODE XREF: .text:00421C00j
		mov	edx, [ebp+14h]
		mov	ecx, [edx]
		mov	eax, dword_57FE6C
		cmp	ecx, eax
		jz	short loc_42210D
		test	eax, eax
		jz	short loc_42210D
		push	13h		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	eax		; hWnd
		call	SetWindowPos

loc_42210D:				; CODE XREF: .text:004220F5j
					; .text:004220F9j
		cmp	dword ptr [ebx+200h], 0
		jle	short loc_42214B
		mov	eax, [ebp+14h]
		mov	ecx, [ebx+260h]
		sub	ecx, [ebx+258h]
		mov	edx, [eax+10h]
		cmp	edx, ecx
		jnz	short loc_42213F
		mov	eax, [eax+14h]
		mov	edx, [ebx+264h]
		sub	edx, [ebx+25Ch]
		cmp	eax, edx
		jz	short loc_42214B

loc_42213F:				; CODE XREF: .text:0042212Aj
		push	ebx		; lParam
		push	offset loc_421AD0 ; lpEnumFunc
		push	esi		; hWndParent
		call	EnumChildWindows

loc_42214B:				; CODE XREF: .text:00422114j
					; .text:0042213Dj
		cmp	hwclient, 0
		jnz	short loc_422168
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_422168:				; CODE XREF: .text:00422152j
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_42217C:				; CODE XREF: .text:00421C24j
		lea	eax, [ebp-210h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetClientRect
		mov	eax, [ebx+228h]
		test	eax, eax
		jz	short loc_4221B2
		lea	edx, [ebp-220h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-214h]
		sub	ecx, [ebp-21Ch]
		sub	[ebp-204h], ecx

loc_4221B2:				; CODE XREF: .text:00422191j
		mov	eax, [ebx+200h]
		test	eax, eax
		jle	short loc_4221C2
		sub	[ebp-204h], eax

loc_4221C2:				; CODE XREF: .text:004221BAj
		push	6		; uFlags
		mov	edx, [ebp-204h]
		push	edx		; cy
		mov	ecx, [ebp-208h]
		push	ecx		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		mov	eax, [ebx+22Ch]
		push	eax		; hWnd
		call	SetWindowPos
		mov	eax, [ebx+228h]
		test	eax, eax
		jz	short loc_4221FE
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	5		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4221FE:				; CODE XREF: .text:004221ECj
		cmp	hwclient, 0
		jz	loc_42234F
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_42221F:				; CODE XREF: .text:00421C75j
					; .text:00421C7Ej ...
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; Msg
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	loc_41E500
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_422239:				; CODE XREF: .text:00421C1Bj
					; .text:00421C44j ...
		cmp	hwclient, 0
		jnz	short loc_422256
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_422256:				; CODE XREF: .text:00422240j
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_42226A:				; CODE XREF: .text:00421C69j
		test	word ptr [ebp+10h], 0FFFFh
		jz	loc_42234F
		cmp	dword ptr [ebx+208h], 0
		jz	loc_42234F
		cmp	dword ptr [ebx+200h], 0
		jle	loc_42234F
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		and	edx, 0FFFF0FFFh
		push	edx
		push	edi
		mov	ecx, [ebx+22Ch]
		push	ecx
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		jmp	loc_422351
; ---------------------------------------------------------------------------

loc_4222B5:				; CODE XREF: .text:00421C2Dj
		cmp	dword_57FE88, 0
		jz	short loc_4222E3
		push	100h		; nMaxCount
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	esi		; hWnd
		call	GetWindowTextW
		push	0
		lea	edx, [ebp-200h]
		push	edx
		push	0
		call	loc_4D21C8
		add	esp, 0Ch

loc_4222E3:				; CODE XREF: .text:004222BCj
		mov	eax, [ebx+22Ch]
		test	eax, eax
		jz	short loc_4222F3
		push	eax		; hWnd
		call	SetFocus

loc_4222F3:				; CODE XREF: .text:004222EBj
		cmp	hwclient, 0
		jz	short loc_42234F
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	short loc_422351
; ---------------------------------------------------------------------------

loc_42230D:				; CODE XREF: .text:00421CB9j
					; .text:00421CC0j
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		mov	ecx, [ebx+22Ch]
		push	ecx		; hWnd
		call	loc_41E500
		jmp	short loc_422351
; ---------------------------------------------------------------------------

loc_422324:				; CODE XREF: .text:00421C33j
					; .text:00421C5Cj ...
		cmp	hwclient, 0
		jnz	short loc_42233E
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	edi		; Msg
		push	esi		; hWnd
		call	DefWindowProcW
		jmp	short loc_422351
; ---------------------------------------------------------------------------

loc_42233E:				; CODE XREF: .text:0042232Bj
		mov	ecx, [ebp+14h]
		push	ecx		; lParam
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	edi		; uMsg
		push	esi		; hWnd
		call	DefMDIChildProcW
		jmp	short loc_422351
; ---------------------------------------------------------------------------

loc_42234F:				; CODE XREF: .text:00421D8Aj
					; .text:00421F00j ...
		xor	eax, eax

loc_422351:				; CODE XREF: .text:00421BE0j
					; .text:00421BF4j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_42235C:				; CODE XREF: .text:0040FCD6p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	edx, g_hInstance
		lea	eax, [ebp-28h]
		push	eax		; lpWndClass
		push	offset word_5D5448 ; lpClassName
		push	edx		; hInstance
		call	GetClassInfoW
		test	eax, eax
		jnz	short loc_4223CA
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-28h], ecx
		mov	edx, g_hInstance
		mov	dword ptr [ebp-24h], offset loc_421BA8
		mov	[ebp-20h], eax
		xor	ecx, ecx
		mov	dword ptr [ebp-1Ch], 20h
		mov	[ebp-18h], edx
		mov	[ebp-14h], ecx
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-10h], eax
		mov	[ebp-0Ch], edx
		xor	ecx, ecx
		lea	eax, [ebp-28h]
		mov	[ebp-8], ecx
		mov	dword ptr [ebp-4], offset word_5D5448
		push	eax		; lpWndClass
		call	RegisterClassW
		test	ax, ax
		jnz	short loc_4223CA
		or	eax, 0FFFFFFFFh
		jmp	short loc_4223CC
; ---------------------------------------------------------------------------

loc_4223CA:				; CODE XREF: .text:00422379j
					; .text:004223C3j
		xor	eax, eax

loc_4223CC:				; CODE XREF: .text:004223C8j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 106. _Createtablewindow
; Exported entry 447. Createtablewindow

; int __cdecl Createtablewindow(t_table	*pt, int nrow, int ncolumn, HINSTANCE hi, wchar_t *icon, wchar_t *_title)
		public Createtablewindow
Createtablewindow:			; CODE XREF: .text:0041700Ap
					; .text:00419685p ...
		push	ebp		; _Createtablewindow
		mov	ebp, esp
		add	esp, 0FFFFFD70h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4223F2
		cmp	dword ptr [ebx+210h], 0
		jnz	short loc_4223F9

loc_4223F2:				; CODE XREF: .text:004223E7j
		xor	eax, eax
		jmp	loc_422A29
; ---------------------------------------------------------------------------

loc_4223F9:				; CODE XREF: .text:004223F0j
		xor	edx, edx
		mov	[ebx+228h], edx
		mov	[ebx+224h], edx
		cmp	restorewinpos, 0
		jz	short loc_422472
		test	byte ptr [ebx+42h], 2
		jz	short loc_422472
		cmp	word ptr [ebx],	0
		jz	short loc_422472
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
		push	offset aIIIII_0	; "%i,%i,%i,%i,%i"
		push	offset aPlacement_0 ; "Placement"
		push	ebx		; section
		push	0		; file
		call	Getfromini
		add	esp, 24h
		cmp	eax, 5
		jnz	short loc_422472
		cmp	dword ptr [ebp-0Ch], 0
		jl	short loc_422472
		push	0		; nIndex
		call	GetSystemMetrics
		cmp	eax, [ebp-0Ch]
		jl	short loc_422472
		cmp	dword ptr [ebp-10h], 0
		jl	short loc_422472
		push	1		; nIndex
		call	GetSystemMetrics
		cmp	eax, [ebp-10h]
		jge	loc_42268F

loc_422472:				; CODE XREF: .text:0042240Ej
					; .text:00422414j ...
		cmp	dword ptr [ebx+88h], 0
		jnz	short loc_422493
		push	offset aAppearance ; "Appearance"
		push	20h		; n
		lea	eax, [ebp-260h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4224AE
; ---------------------------------------------------------------------------

loc_422493:				; CODE XREF: .text:00422479j
		mov	edx, [ebx+88h]
		lea	ecx, [ebp-260h]
		push	edx
		push	offset aAppearanceI ; "Appearance[%i]"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4224AE:				; CODE XREF: .text:00422491j
		cmp	restorewinpos, 0
		jz	short loc_422517
		test	byte ptr [ebx+42h], 1
		jz	short loc_422517
		cmp	word ptr [ebx],	0
		jz	short loc_422517
		lea	eax, [ebp-20h]
		lea	edx, [ebx+240h]
		push	eax
		push	edx
		lea	ecx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	ecx
		push	eax
		lea	edx, [ebx+234h]
		lea	ecx, [ebp-260h]
		push	edx		; arglist
		push	offset aIIIII_0	; "%i,%i,%i,%i,%i"
		push	ecx		; key
		push	ebx		; section
		push	0		; file
		call	Getfromini
		add	esp, 24h
		cmp	eax, 4
		jl	short loc_422517
		cmp	dword ptr [ebx+234h], 0
		jl	short loc_422517
		cmp	dword ptr [ebx+234h], 8
		jge	short loc_422517
		cmp	dword ptr [ebp-18h], 0
		jl	short loc_422517
		cmp	dword ptr [ebp-18h], 8
		jl	short loc_42252E

loc_422517:				; CODE XREF: .text:004224B5j
					; .text:004224BBj ...
		mov	eax, fi
		mov	[ebx+234h], eax
		mov	edx, dword_58610C
		mov	[ebx+240h], edx

loc_42252E:				; CODE XREF: .text:00422515j
		push	ebx		; pt
		call	Defaultbar
		pop	ecx
		cmp	edi, 1
		jge	short loc_42253F
		mov	edi, 1

loc_42253F:				; CODE XREF: .text:00422538j
		xor	eax, eax
		mov	[ebp-26Ch], eax
		mov	[ebp-270h], eax
		push	2		; nIndex
		call	GetSystemMetrics
		mov	[ebp-268h], eax
		xor	edx, edx
		lea	eax, [ebx+160h]
		jmp	short loc_4225A5
; ---------------------------------------------------------------------------

loc_422564:				; CODE XREF: .text:004225AFj
		mov	ecx, [ebx+8Ch]
		dec	ecx
		cmp	edx, ecx
		jnz	short loc_422598
		cmp	dword ptr [eax], 100h
		jnz	short loc_422598
		imul	ecx, [ebx+234h], 9Fh
		mov	ecx, font._width[ecx*4]
		add	ecx, ecx
		lea	ecx, [ecx+ecx*4]
		lea	ecx, [ecx+ecx*4]
		add	[ebp-268h], ecx
		jmp	short loc_4225A1
; ---------------------------------------------------------------------------

loc_422598:				; CODE XREF: .text:0042256Dj
					; .text:00422575j
		mov	ecx, [eax+44h]
		add	[ebp-268h], ecx

loc_4225A1:				; CODE XREF: .text:00422596j
		inc	edx
		add	eax, 4

loc_4225A5:				; CODE XREF: .text:00422562j
		cmp	edx, [ebx+8Ch]
		jge	short loc_4225B1
		cmp	edi, edx
		jg	short loc_422564

loc_4225B1:				; CODE XREF: .text:004225ABj
		mov	eax, [ebx+204h]
		cmp	eax, [ebp-268h]
		jle	short loc_4225C5
		mov	[ebp-268h], eax

loc_4225C5:				; CODE XREF: .text:004225BDj
		test	esi, esi
		jg	short loc_4225D0
		mov	esi, 0Fh
		jmp	short loc_4225DA
; ---------------------------------------------------------------------------

loc_4225D0:				; CODE XREF: .text:004225C7j
		cmp	esi, 28h
		jl	short loc_4225DA
		mov	esi, 20h

loc_4225DA:				; CODE XREF: .text:004225CEj
					; .text:004225D3j
		mov	eax, [ebx+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		imul	ecx, esi
		mov	[ebp-264h], ecx
		test	byte ptr [ebx+41h], 2
		jnz	short loc_422616
		cmp	dword ptr [ebx+240h], 0
		jz	short loc_422616
		push	3		; nIndex
		call	GetSystemMetrics
		add	[ebp-264h], eax

loc_422616:				; CODE XREF: .text:004225FEj
					; .text:00422607j
		cmp	dword ptr [ebx+90h], 0
		jz	short loc_422645
		test	byte ptr [ebx+41h], 8
		jnz	short loc_422645
		mov	eax, [ebx+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		add	ecx, 4
		add	[ebp-264h], ecx

loc_422645:				; CODE XREF: .text:0042261Dj
					; .text:00422623j
		mov	edi, 12CF0000h
		push	0		; bMenu
		push	edi		; dwStyle
		lea	eax, [ebp-270h]
		push	eax		; lpRect
		call	AdjustWindowRect
		mov	dword ptr [ebp-4], 80000000h
		mov	dword ptr [ebp-8], 80000000h
		mov	edx, [ebp-268h]
		sub	edx, [ebp-270h]
		mov	[ebp-0Ch], edx
		mov	ecx, [ebp-264h]
		sub	ecx, [ebp-26Ch]
		mov	[ebp-10h], ecx
		xor	eax, eax
		mov	[ebp-14h], eax
		jmp	loc_422770
; ---------------------------------------------------------------------------

loc_42268F:				; CODE XREF: .text:0042246Cj
		push	20h		; nIndex
		call	GetSystemMetrics
		add	eax, eax
		add	eax, [ebx+204h]
		cmp	eax, [ebp-0Ch]
		jle	short loc_4226A6
		mov	[ebp-0Ch], eax

loc_4226A6:				; CODE XREF: .text:004226A1j
		mov	eax, hwclient
		test	eax, eax
		jz	loc_422753
		cmp	dword_57FE64, 0
		jnz	loc_422753
		lea	edx, [ebp-270h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetClientRect
		push	1Eh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-268h]
		push	20h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		cmp	esi, [ebp-4]
		jge	short loc_422705
		push	1Eh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-268h]
		push	20h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		mov	[ebp-4], esi

loc_422705:				; CODE XREF: .text:004226E8j
		cmp	dword ptr [ebp-4], 0
		jge	short loc_422710
		xor	eax, eax
		mov	[ebp-4], eax

loc_422710:				; CODE XREF: .text:00422709j
		push	1Fh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-264h]
		push	21h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		cmp	esi, [ebp-8]
		jge	short loc_422748
		push	1Fh		; nIndex
		call	GetSystemMetrics
		mov	esi, [ebp-264h]
		push	21h		; nIndex
		sub	esi, eax
		call	GetSystemMetrics
		sub	esi, eax
		mov	[ebp-8], esi

loc_422748:				; CODE XREF: .text:0042272Bj
		cmp	dword ptr [ebp-8], 0
		jge	short loc_422753
		xor	eax, eax
		mov	[ebp-8], eax

loc_422753:				; CODE XREF: .text:004226ADj
					; .text:004226BAj ...
		cmp	dword ptr [ebp-14h], 2
		mov	edi, 2CF0000h
		jnz	short loc_422764
		or	edi, 20000000h

loc_422764:				; CODE XREF: .text:0042275Cj
		cmp	dword ptr [ebp-14h], 3
		jz	short loc_422770
		or	edi, 10000000h

loc_422770:				; CODE XREF: .text:0042268Aj
					; .text:00422768j
		cmp	hwclient, 0
		jnz	short loc_4227BD
		mov	eax, g_hInstance
		push	0		; lpParam
		push	eax		; hInstance
		mov	edx, hwollymain
		push	0		; hMenu
		push	edx		; hWndParent
		mov	ecx, [ebp-10h]
		push	ecx		; nHeight
		mov	eax, [ebp-0Ch]
		push	eax		; nWidth
		mov	edx, [ebp-8]
		push	edx		; Y
		mov	ecx, [ebp-4]
		push	ecx		; X
		push	edi		; dwStyle
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_4227A5
		mov	eax, ebx
		jmp	short loc_4227A8
; ---------------------------------------------------------------------------

loc_4227A5:				; CODE XREF: .text:0042279Fj
		mov	eax, [ebp+1Ch]

loc_4227A8:				; CODE XREF: .text:004227A3j
		push	eax		; lpWindowName
		push	offset word_5D5448 ; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	[ebx+224h], eax
		jmp	short loc_4227FC
; ---------------------------------------------------------------------------

loc_4227BD:				; CODE XREF: .text:00422777j
		push	0		; lParam
		mov	edx, g_hInstance
		push	edx		; hInstance
		mov	ecx, hwclient
		push	ecx		; hWndParent
		mov	eax, [ebp-10h]
		push	eax		; nHeight
		mov	edx, [ebp-0Ch]
		push	edx		; nWidth
		mov	ecx, [ebp-8]
		push	ecx		; Y
		mov	eax, [ebp-4]
		push	eax		; X
		push	edi		; dwStyle
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_4227E8
		mov	edx, ebx
		jmp	short loc_4227EB
; ---------------------------------------------------------------------------

loc_4227E8:				; CODE XREF: .text:004227E2j
		mov	edx, [ebp+1Ch]

loc_4227EB:				; CODE XREF: .text:004227E6j
		push	edx		; lpWindowName
		push	offset word_5D5448 ; lpClassName
		call	CreateMDIWindowW
		mov	[ebx+224h], eax

loc_4227FC:				; CODE XREF: .text:004227BBj
		cmp	dword ptr [ebx+224h], 0
		jnz	short loc_42280C
		xor	eax, eax
		jmp	loc_422A29
; ---------------------------------------------------------------------------

loc_42280C:				; CODE XREF: .text:00422803j
		mov	eax, dword_57FE6C
		test	eax, eax
		jz	short loc_422827
		push	13h		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	eax		; hWnd
		call	SetWindowPos

loc_422827:				; CODE XREF: .text:00422813j
		push	ebx		; dwNewLong
		push	0		; nIndex
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	SetWindowLongW
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_422858
		mov	ecx, [ebp+18h]
		push	ecx		; lpIconName
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_42284D
		mov	eax, g_hInstance
		jmp	short loc_422850
; ---------------------------------------------------------------------------

loc_42284D:				; CODE XREF: .text:00422844j
		mov	eax, [ebp+14h]

loc_422850:				; CODE XREF: .text:0042284Bj
		push	eax		; hInstance
		call	LoadIconW
		jmp	short loc_42285A
; ---------------------------------------------------------------------------

loc_422858:				; CODE XREF: .text:0042283Aj
		xor	eax, eax

loc_42285A:				; CODE XREF: .text:00422856j
		test	eax, eax
		jnz	short loc_42286F
		push	offset IconName	; "ICO_AAAMAIN"
		mov	edx, g_hInstance
		push	edx		; hInstance
		call	LoadIconW

loc_42286F:				; CODE XREF: .text:0042285Cj
		push	eax		; lParam
		push	1		; wParam
		push	80h		; Msg
		mov	ecx, [ebx+224h]
		push	ecx		; hWnd
		call	SendMessageW
		lea	eax, [ebp-270h]
		push	eax		; lpRect
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	GetClientRect
		test	byte ptr [ebx+41h], 10h
		jz	loc_422987
		push	0		; lpParam
		mov	ecx, g_hInstance
		push	ecx		; hInstance
		push	0		; hMenu
		mov	eax, [ebx+224h]
		push	eax		; hWndParent
		push	0		; nHeight
		push	0		; nWidth
		push	0		; Y
		push	0		; X
		push	50000000h	; dwStyle
		push	0		; lpWindowName
		push	offset aMsctls_statusb ; "msctls_statusbar32"
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	esi, eax
		mov	[ebx+228h], esi
		test	esi, esi
		jz	loc_422987
		push	0		; lParam
		mov	eax, sysfont.hfont
		push	eax		; wParam
		push	30h		; Msg
		push	esi		; hWnd
		call	SendMessageW
		lea	edx, [ebp-280h]
		push	edx		; lpRect
		mov	ecx, [ebx+228h]
		push	ecx		; hWnd
		call	GetWindowRect
		lea	eax, [ebp-290h]
		push	eax		; lpRect
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	GetWindowRect
		push	6		; uFlags
		mov	ecx, [ebp-284h]
		mov	edx, [ebp-28Ch]
		sub	ecx, edx
		add	ecx, [ebp-274h]
		sub	ecx, [ebp-27Ch]
		push	ecx		; cy
		mov	ecx, [ebp-288h]
		mov	eax, [ebp-290h]
		sub	ecx, eax
		push	ecx		; cx
		push	edx		; Y
		push	eax		; X
		push	0		; hWndInsertAfter
		mov	eax, [ebx+224h]
		push	eax		; hWnd
		call	SetWindowPos
		push	6		; uFlags
		mov	edx, [ebp-284h]
		sub	edx, [ebp-28Ch]
		push	edx		; cy
		mov	ecx, [ebp-288h]
		sub	ecx, [ebp-290h]
		push	ecx		; cx
		mov	eax, [ebp-274h]
		push	eax		; Y
		mov	edx, [ebp-280h]
		push	edx		; X
		push	0		; hWndInsertAfter
		mov	ecx, [ebx+228h]
		push	ecx		; hWnd
		call	SetWindowPos

loc_422987:				; CODE XREF: .text:0042289Aj
					; .text:004228D7j
		lea	esi, [ebp-270h]
		lea	edi, [ebp-280h]
		mov	ecx, 4
		rep movsd
		mov	eax, [ebx+200h]
		test	eax, eax
		jle	short loc_4229AA
		sub	[ebp-264h], eax

loc_4229AA:				; CODE XREF: .text:004229A2j
		lea	edx, [ebp-270h]
		push	edx		; rpos
		push	ebx		; pt
		mov	ecx, [ebx+224h]
		push	ecx		; hparent
		call	Createottablewindow
		add	esp, 0Ch
		cmp	dword ptr [ebp-14h], 3
		jnz	short loc_4229E3
		push	3		; nCmdShow
		mov	eax, [ebx+224h]
		push	eax		; hWnd
		call	ShowWindow
		push	5		; nCmdShow
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	ShowWindow

loc_4229E3:				; CODE XREF: .text:004229C5j
		mov	ecx, [ebx+224h]
		push	ecx		; hWnd
		call	UpdateWindow
		cmp	dword_57FE88, 0
		jz	short loc_422A23
		push	100h		; nMaxCount
		lea	eax, [ebp-220h]
		push	eax		; lpString
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	GetWindowTextW
		push	0
		lea	ecx, [ebp-220h]
		push	ecx
		push	0
		call	loc_4D21C8
		add	esp, 0Ch

loc_422A23:				; CODE XREF: .text:004229F6j
		mov	eax, [ebx+224h]

loc_422A29:				; CODE XREF: .text:004223F4j
					; .text:00422807j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 107. _Activatetablewindow
; Exported entry 390. Activatetablewindow

; int __cdecl Activatetablewindow(t_table *pt)
		public Activatetablewindow
Activatetablewindow:			; CODE XREF: .text:004B2D5Bp
					; .text:004B2FB5p
		push	ebp		; _Activatetablewindow
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_422A44
		cmp	dword ptr [ebx+224h], 0
		jnz	short loc_422A49

loc_422A44:				; CODE XREF: .text:00422A39j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_422A49:				; CODE XREF: .text:00422A42j
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_422A66
		push	0		; lParam
		mov	edx, [ebx+224h]
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_422A66:				; CODE XREF: .text:00422A50j
		mov	ecx, [ebx+224h]
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_422A84
		push	9		; nCmdShow
		mov	eax, [ebx+224h]
		push	eax		; hWnd
		call	ShowWindow

loc_422A84:				; CODE XREF: .text:00422A74j
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	SetFocus
		mov	eax, [ebx+224h]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 108. _Createtablechild
; Exported entry 446. Createtablechild

; HWND __cdecl Createtablechild(t_table	*pt, wchar_t *classname, wchar_t *_name,	wchar_t	*help, ulong style, int	x, int y, int dx, int dy, int idalign)
		public Createtablechild
Createtablechild:			; _Createtablechild
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_422AC8
		cmp	dword ptr [ebx+224h], 0
		jz	short loc_422AC8
		cmp	dword ptr [ebx+200h], 0
		jle	short loc_422AC8
		test	edi, edi
		jnz	short loc_422ACF

loc_422AC8:				; CODE XREF: .text:00422AB0j
					; .text:00422AB9j ...
		xor	eax, eax
		jmp	loc_422BFA
; ---------------------------------------------------------------------------

loc_422ACF:				; CODE XREF: .text:00422AC6j
		lea	edx, [ebp-10h]
		push	edx		; lpRect
		mov	ecx, [ebx+224h]
		push	ecx		; hWnd
		call	GetClientRect
		mov	eax, [ebx+228h]
		test	eax, eax
		jz	short loc_422AFC
		lea	edx, [ebp-20h]
		push	edx		; lpRect
		push	eax		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-14h]
		sub	ecx, [ebp-1Ch]
		sub	[ebp-4], ecx

loc_422AFC:				; CODE XREF: .text:00422AE7j
		mov	eax, [ebp-4]
		mov	edx, g_hInstance
		sub	eax, [ebx+200h]
		mov	[ebp-0Ch], eax
		push	0		; lpParam
		push	edx		; hInstance
		mov	ecx, [ebp+2Ch]
		push	ecx		; hMenu
		mov	edx, [ebx+224h]
		push	edx		; hWndParent
		mov	ecx, [ebp+28h]
		push	ecx		; nHeight
		mov	edx, [ebp+24h]
		push	edx		; nWidth
		mov	ecx, [ebp+20h]
		add	ecx, eax
		push	ecx		; Y
		mov	eax, [ebp+1Ch]
		push	eax		; X
		mov	eax, [ebp+18h]
		or	eax, 50000000h
		push	eax		; dwStyle
		mov	edx, [ebp+10h]
		push	edx		; lpWindowName
		push	edi		; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_422B50
		xor	eax, eax
		jmp	loc_422BFA
; ---------------------------------------------------------------------------

loc_422B50:				; CODE XREF: .text:00422B47j
		push	0		; lParam
		mov	edx, sysfont.hfont
		push	edx		; wParam
		push	30h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		test	esi, esi
		jz	loc_422BF8
		cmp	word ptr [esi],	0
		jz	loc_422BF8
		push	0		; lpParam
		mov	ecx, g_hInstance
		push	ecx		; hInstance
		push	0		; hMenu
		push	ebx		; hWndParent
		push	80000000h	; nHeight
		push	80000000h	; nWidth
		push	80000000h	; Y
		push	80000000h	; X
		push	80000003h	; dwStyle
		push	0		; lpWindowName
		push	offset aTooltips_cla_0 ; "tooltips_class32"
		push	8		; dwExStyle
		call	CreateWindowExW
		test	eax, eax
		jz	short loc_422BF8
		mov	dword ptr [ebp-4Ch], 2Ch
		mov	dword ptr [ebp-48h], 10h
		xor	edx, edx
		mov	[ebp-44h], ebx
		mov	[ebp-40h], edx
		xor	ecx, ecx
		mov	[ebp-3Ch], ecx
		xor	edx, edx
		mov	[ebp-38h], edx
		mov	ecx, [ebp+24h]
		mov	[ebp-34h], ecx
		mov	ecx, g_hInstance
		mov	edx, [ebp+28h]
		mov	[ebp-30h], edx
		mov	[ebp-2Ch], ecx
		mov	[ebp-28h], esi
		xor	edx, edx
		mov	[ebp-24h], edx
		lea	ecx, [ebp-4Ch]
		push	ecx		; lParam
		push	0		; wParam
		push	432h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_422BF8:				; CODE XREF: .text:00422B63j
					; .text:00422B6Dj ...
		mov	eax, ebx

loc_422BFA:				; CODE XREF: .text:00422ACAj
					; .text:00422B4Bj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 109. _Gettablebywindow

; LONG __cdecl Gettablebywindow(HWND hWnd)
		public _Gettablebywindow
_Gettablebywindow:			; CODE XREF: .text:0040B131p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_422C19
		xor	eax, eax
		jmp	short loc_422C53
; ---------------------------------------------------------------------------

loc_422C19:				; CODE XREF: .text:00422C13j
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpClassName
		push	ebx		; hWnd
		call	GetClassNameW
		test	eax, eax
		jz	short loc_422C47
		push	offset ottable	; s2
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_422C4B

loc_422C47:				; CODE XREF: .text:00422C2Dj
		xor	eax, eax
		jmp	short loc_422C53
; ---------------------------------------------------------------------------

loc_422C4B:				; CODE XREF: .text:00422C45j
		push	0		; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW

loc_422C53:				; CODE XREF: .text:00422C17j
					; .text:00422C49j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl addTabWindows(wchar_t *s)
addTabWindows:				; CODE XREF: .text:004C06DCp
					; .text:004C0811p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_422C6B
		cmp	word ptr [esi],	0
		jnz	short loc_422C72

loc_422C6B:				; CODE XREF: .text:00422C63j
		xor	eax, eax
		jmp	loc_422D12
; ---------------------------------------------------------------------------

loc_422C72:				; CODE XREF: .text:00422C69j
		push	28h		; n
		push	0		; c
		push	offset dword_5D9170 ; s
		call	_memset
		add	esp, 0Ch
		mov	dword_5D9198, esi
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_422CA1
		push	0		; lParam
		push	offset loc_41A2E8 ; lpEnumFunc
		push	eax		; hWndParent
		call	EnumChildWindows
		jmp	short loc_422CB3
; ---------------------------------------------------------------------------

loc_422CA1:				; CODE XREF: .text:00422C90j
		push	0		; lParam
		push	offset loc_41A2E8 ; lpfn
		call	GetCurrentThreadId
		push	eax		; dwThreadId
		call	EnumThreadWindows

loc_422CB3:				; CODE XREF: .text:00422C9Fj
		mov	ecx, 7FFFFFFFh
		xor	edx, edx
		mov	[ebp-4], edx
		xor	edx, edx
		mov	eax, offset dword_5D9170

loc_422CC4:				; CODE XREF: .text:00422CD6j
		mov	ebx, [eax]
		cmp	ecx, ebx
		jle	short loc_422CCF
		mov	ecx, ebx
		mov	[ebp-4], edx

loc_422CCF:				; CODE XREF: .text:00422CC8j
		inc	edx
		add	eax, 4
		cmp	edx, 0Ah
		jl	short loc_422CC4
		cmp	dword ptr [ebp-4], 0
		jle	short loc_422D0F
		push	esi		; s
		call	_wcslen
		pop	ecx
		cmp	eax, 1Dh
		jl	short loc_422CEE
		xor	eax, eax
		jmp	short loc_422D12
; ---------------------------------------------------------------------------

loc_422CEE:				; CODE XREF: .text:00422CE8j
		mov	word ptr [esi+eax*2], 5Bh
		mov	dx, [ebp-4]
		add	dx, 30h
		mov	[esi+eax*2+2], dx
		mov	word ptr [esi+eax*2+4],	5Dh
		mov	word ptr [esi+eax*2+6],	0

loc_422D0F:				; CODE XREF: .text:00422CDCj
		mov	eax, [ebp-4]

loc_422D12:				; CODE XREF: .text:00422C6Dj
					; .text:00422CECj
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_422D18:				; CODE XREF: .text:00423FE8p
					; .text:0042458Dp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edi, edi
		jnz	short loc_422D32
		xor	eax, eax
		jmp	loc_4233A7
; ---------------------------------------------------------------------------

loc_422D32:				; CODE XREF: .text:00422D29j
		mov	edx, eax
		test	edx, 80000000h
		jz	short loc_422D47
		and	edx, 3FFFFFh
		mov	[ebp-4], edx
		jmp	short loc_422D6C
; ---------------------------------------------------------------------------

loc_422D47:				; CODE XREF: .text:00422D3Aj
		test	eax, eax
		jz	short loc_422D56
		test	eax, eax
		jl	short loc_422D56
		cmp	eax, 400h
		jl	short loc_422D62

loc_422D56:				; CODE XREF: .text:00422D49j
					; .text:00422D4Dj
		mov	word ptr [edi],	0
		xor	eax, eax
		jmp	loc_4233A7
; ---------------------------------------------------------------------------

loc_422D62:				; CODE XREF: .text:00422D54j
		mov	edx, dword_5D919C[eax*4]
		mov	[ebp-4], edx

loc_422D6C:				; CODE XREF: .text:00422D45j
		test	dword ptr [ebp-4], 0FFFFh
		jnz	short loc_422D7C
		xor	eax, eax
		jmp	loc_4233A7
; ---------------------------------------------------------------------------

loc_422D7C:				; CODE XREF: .text:00422D73j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_422D8E
		mov	word ptr [edi],	9
		mov	ebx, 1
		jmp	short loc_422D90
; ---------------------------------------------------------------------------

loc_422D8E:				; CODE XREF: .text:00422D80j
		xor	ebx, ebx

loc_422D90:				; CODE XREF: .text:00422D8Cj
		test	byte ptr [ebp-2], 4
		jz	short loc_422DB0
		push	offset aCtrl	; "Ctrl+"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [edi+ebx*2]
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_422DB0:				; CODE XREF: .text:00422D94j
		test	byte ptr [ebp-2], 8
		jz	short loc_422DD0
		push	offset aAlt	; "Alt+"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [edi+ebx*2]
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_422DD0:				; CODE XREF: .text:00422DB4j
		test	byte ptr [ebp-2], 10h
		jz	short loc_422DF0
		push	offset aWin_0	; "Win+"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [edi+ebx*2]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_422DF0:				; CODE XREF: .text:00422DD4j
		mov	eax, [ebp-4]
		and	eax, 230000h
		cmp	eax, 20000h
		jnz	short loc_422E19
		push	offset aShift	; "Shift+"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [edi+ebx*2]
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_422E19:				; CODE XREF: .text:00422DFDj
		mov	esi, [ebp-4]
		and	esi, 0FFFFh
		test	byte ptr [ebp-2], 1
		jz	loc_422FD6
		cmp	esi, 30h
		jl	short loc_422E46
		cmp	esi, 39h
		jg	short loc_422E46
		mov	[edi+ebx*2], si
		inc	ebx
		mov	word ptr [edi+ebx*2], 0
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422E46:				; CODE XREF: .text:00422E2Fj
					; .text:00422E34j
		cmp	esi, 41h
		jl	short loc_422E60
		cmp	esi, 5Ah
		jg	short loc_422E60
		mov	[edi+ebx*2], si
		inc	ebx
		mov	word ptr [edi+ebx*2], 0
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422E60:				; CODE XREF: .text:00422E49j
					; .text:00422E4Ej
		cmp	esi, 61h
		jl	short loc_422E89
		cmp	esi, 7Ah
		jg	short loc_422E89
		mov	[ebp-6], si
		mov	ax, [ebp-6]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		mov	[edi+ebx*2], ax
		inc	ebx
		mov	word ptr [edi+ebx*2], 0
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422E89:				; CODE XREF: .text:00422E63j
					; .text:00422E68j
		cmp	esi, 20h
		jnz	short loc_422EB5
		push	offset aSpace	; "Space"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422EB5:				; CODE XREF: .text:00422E8Cj
		cmp	esi, 2Bh
		jnz	short loc_422EE1
		push	offset aPlus_0	; "Plus	(+)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422EE1:				; CODE XREF: .text:00422EB8j
		cmp	esi, 2Dh
		jnz	short loc_422F0D
		push	offset aMinus	; "Minus (-)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422F0D:				; CODE XREF: .text:00422EE4j
		cmp	esi, 3Ah
		jnz	short loc_422F39
		push	offset aColon	; "Colon (:)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422F39:				; CODE XREF: .text:00422F10j
		cmp	esi, 3Bh
		jnz	short loc_422F65
		push	offset aSemicolon ; "Semicolon (;)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422F65:				; CODE XREF: .text:00422F3Cj
		cmp	esi, 2Ch
		jnz	short loc_422F91
		push	offset aComma	; "Comma (,)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422F91:				; CODE XREF: .text:00422F68j
		cmp	esi, 2Eh
		jnz	short loc_422FBD
		push	offset aPoint_	; "Point (.)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422FBD:				; CODE XREF: .text:00422F94j
		push	esi
		push	offset aC	; "'%c'"
		lea	edi, [edi+ebx*2]
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422FD6:				; CODE XREF: .text:00422E26j
		cmp	esi, 30h
		jl	short loc_422FF0
		cmp	esi, 39h
		jg	short loc_422FF0
		mov	[edi+ebx*2], si
		inc	ebx
		mov	word ptr [edi+ebx*2], 0
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_422FF0:				; CODE XREF: .text:00422FD9j
					; .text:00422FDEj
		cmp	esi, 41h
		jl	short loc_42300A
		cmp	esi, 5Ah
		jg	short loc_42300A
		mov	[edi+ebx*2], si
		inc	ebx
		mov	word ptr [edi+ebx*2], 0
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_42300A:				; CODE XREF: .text:00422FF3j
					; .text:00422FF8j
		cmp	esi, 70h
		jl	short loc_423030
		cmp	esi, 7Bh
		jg	short loc_423030
		add	esi, 0FFFFFF91h
		lea	edi, [edi+ebx*2]
		push	esi
		push	offset aFI	; "F%i"
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423030:				; CODE XREF: .text:0042300Dj
					; .text:00423012j
		cmp	esi, 60h
		jl	short loc_423056
		cmp	esi, 69h
		jg	short loc_423056
		add	esi, 0FFFFFFA0h
		lea	edi, [edi+ebx*2]
		push	esi
		push	offset aNumericI ; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423056:				; CODE XREF: .text:00423033j
					; .text:00423038j
		cmp	esi, 6Eh
		jnz	short loc_423082
		push	offset aNumpoint ; "NumPoint"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423082:				; CODE XREF: .text:00423059j
		cmp	esi, 20h
		jnz	short loc_4230AE
		push	offset aSpace	; "Space"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_4230AE:				; CODE XREF: .text:00423085j
		cmp	esi, 8
		jnz	short loc_4230DA
		push	offset aBkspc	; "BkSpc"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_4230DA:				; CODE XREF: .text:004230B1j
		cmp	esi, 0Dh
		jnz	short loc_423106
		push	offset aEnter_1	; "Enter"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423106:				; CODE XREF: .text:004230DDj
		cmp	esi, 2Dh
		jnz	short loc_423132
		push	offset aInsert	; "Insert"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423132:				; CODE XREF: .text:00423109j
		cmp	esi, 6Ah
		jnz	short loc_42315E
		push	offset aGray	; "Gray	*"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_42315E:				; CODE XREF: .text:00423135j
		cmp	esi, 6Bh
		jnz	short loc_42318A
		push	offset aGray_1	; "Gray	+"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_42318A:				; CODE XREF: .text:00423161j
		cmp	esi, 6Dh
		jnz	short loc_4231B6
		push	offset aGray_0	; "Gray	-"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_4231B6:				; CODE XREF: .text:0042318Dj
		cmp	esi, 6Fh
		jnz	short loc_4231E2
		push	offset aGray_2	; "Gray	/"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_4231E2:				; CODE XREF: .text:004231B9j
		cmp	esi, 2Eh
		jnz	short loc_42320E
		push	offset aDel	; "Del"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_42320E:				; CODE XREF: .text:004231E5j
		cmp	esi, 9
		jnz	short loc_42323A
		push	offset aTab_1	; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_42323A:				; CODE XREF: .text:00423211j
		cmp	esi, 26h
		jnz	short loc_423266
		push	offset aUparrow	; "UpArrow"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423266:				; CODE XREF: .text:0042323Dj
		cmp	esi, 28h
		jnz	short loc_423292
		push	offset aDownarrow ; "DownArrow"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423292:				; CODE XREF: .text:00423269j
		cmp	esi, 25h
		jnz	short loc_4232BE
		push	offset aLeftarrow ; "LeftArrow"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_4232BE:				; CODE XREF: .text:00423295j
		cmp	esi, 27h
		jnz	short loc_4232EA
		push	offset aRightarrow ; "RightArrow"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_4232EA:				; CODE XREF: .text:004232C1j
		cmp	esi, 21h
		jnz	short loc_423316
		push	offset aPgup	; "PgUp"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4233A5
; ---------------------------------------------------------------------------

loc_423316:				; CODE XREF: .text:004232EDj
		cmp	esi, 22h
		jnz	short loc_42333F
		push	offset aPgdn	; "PgDn"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4233A5
; ---------------------------------------------------------------------------

loc_42333F:				; CODE XREF: .text:00423319j
		cmp	esi, 24h
		jnz	short loc_423368
		push	offset aHome	; "Home"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4233A5
; ---------------------------------------------------------------------------

loc_423368:				; CODE XREF: .text:00423342j
		cmp	esi, 23h
		jnz	short loc_423391
		push	offset aEnd	; "End"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4233A5
; ---------------------------------------------------------------------------

loc_423391:				; CODE XREF: .text:0042336Bj
		push	esi
		push	offset a0x02x	; "0x%02X"
		lea	edi, [edi+ebx*2]
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_4233A5:				; CODE XREF: .text:00422E41j
					; .text:00422E5Bj ...
		mov	eax, ebx

loc_4233A7:				; CODE XREF: .text:00422D2Dj
					; .text:00422D5Dj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4233B0:				; CODE XREF: .text:004234B9p
					; .text:0042354Ap ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+0Ch]
		jz	short loc_4233CC
		test	esi, esi
		jnz	loc_423610

loc_4233CC:				; CODE XREF: .text:004233C2j
		xor	eax, eax
		jmp	loc_42361C
; ---------------------------------------------------------------------------

loc_4233D3:				; CODE XREF: .text:00423614j
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		cmp	word ptr [ebx],	21h
		jnz	short loc_42340B
		cmp	dword ptr [esi+0Ch], 0
		jz	loc_42360D
		push	0
		lea	edx, [ebp-200h]
		mov	eax, [esi+14h]
		push	eax
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		jmp	loc_42360D
; ---------------------------------------------------------------------------

loc_423408:				; CODE XREF: .text:00423412j
					; .text:00423418j
		add	ebx, 2

loc_42340B:				; CODE XREF: .text:004233E0j
		mov	ax, [ebx]
		cmp	ax, 20h
		jz	short loc_423408
		cmp	ax, 7Ch
		jz	short loc_423408
		mov	ax, [ebx]
		test	ax, ax
		jnz	short loc_423435
		cmp	dword ptr [esi+10h], 0
		jz	short loc_423435
		mov	edx, [esi+10h]
		add	edx, 0FFFFFFE8h
		mov	esi, edx
		jmp	loc_42360D
; ---------------------------------------------------------------------------

loc_423435:				; CODE XREF: .text:00423420j
					; .text:00423426j
		cmp	ax, 2Ah
		jnz	loc_4234CE
		add	ebx, 2
		xor	eax, eax
		lea	edx, [ebp-200h]
		jmp	short loc_423459
; ---------------------------------------------------------------------------

loc_42344C:				; CODE XREF: .text:0042346Aj
		mov	cx, [ebx]
		add	ebx, 2
		mov	[edx], cx
		inc	eax
		add	edx, 2

loc_423459:				; CODE XREF: .text:0042344Aj
		cmp	eax, 0E0h
		jge	short loc_42346C
		cmp	word ptr [ebx],	9
		jz	short loc_42346C
		cmp	word ptr [ebx],	0
		jnz	short loc_42344C

loc_42346C:				; CODE XREF: .text:0042345Ej
					; .text:00423464j
		mov	word ptr [ebp+eax*2-200h], 0
		cmp	dword ptr [esi+0Ch], 0
		jz	short loc_42349B
		push	0
		lea	edx, [ebp-200h]
		mov	eax, [esi+14h]
		push	eax
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		test	eax, eax
		jz	loc_42360D

loc_42349B:				; CODE XREF: .text:0042347Aj
		lea	eax, [ebp-200h]
		push	eax
		call	loc_4D80C0
		pop	ecx
		test	eax, eax
		jz	loc_42360D
		mov	edx, [ebp+10h]
		push	edx
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4233B0
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_42361C
		jmp	loc_42360D
; ---------------------------------------------------------------------------

loc_4234CE:				; CODE XREF: .text:00423439j
		cmp	word ptr [ebx],	3Eh
		jnz	short loc_42353A
		add	ebx, 2
		jmp	short loc_4234DC
; ---------------------------------------------------------------------------

loc_4234D9:				; CODE XREF: .text:004234E0j
		add	ebx, 2

loc_4234DC:				; CODE XREF: .text:004234D7j
		cmp	word ptr [ebx],	20h
		jz	short loc_4234D9
		push	offset aStandard ; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4234FE
		mov	esi, (offset stru_518A74._name+108h)
		jmp	loc_42360D
; ---------------------------------------------------------------------------

loc_4234FE:				; CODE XREF: .text:004234F2j
		push	offset aFullcopy ; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_42351A
		mov	esi, (offset stru_518BDC)
		jmp	loc_42360D
; ---------------------------------------------------------------------------

loc_42351A:				; CODE XREF: .text:0042350Ej
		push	offset aAppearance_1 ; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_42361A
		mov	esi, (offset stru_518C24)
		jmp	loc_42360D
; ---------------------------------------------------------------------------

loc_42353A:				; CODE XREF: .text:004234D2j
		mov	eax, [esi+10h]
		test	eax, eax
		jz	short loc_42355F
		mov	edx, [ebp+10h]
		push	edx
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4233B0
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_42361C
		jmp	loc_42360D
; ---------------------------------------------------------------------------

loc_42355F:				; CODE XREF: .text:0042353Fj
		mov	eax, [esi+8]
		test	eax, 80000000h
		jz	short loc_423579
		and	eax, 7FDFFFFFh
		cmp	eax, [ebp+10h]
		jnz	loc_42360D
		jmp	short loc_4235A5
; ---------------------------------------------------------------------------

loc_423579:				; CODE XREF: .text:00423567j
		mov	eax, [esi+8]
		test	eax, eax
		jz	loc_42360D
		test	eax, eax
		jl	loc_42360D
		cmp	eax, 400h
		jge	short loc_42360D
		mov	edx, dword_5D919C[eax*4]
		and	edx, 0FFDFFFFFh
		cmp	edx, [ebp+10h]
		jnz	short loc_42360D

loc_4235A5:				; CODE XREF: .text:00423577j
		cmp	dword ptr [esi+0Ch], 0
		jz	short loc_42360D
		xor	eax, eax
		lea	edx, [ebp-200h]
		jmp	short loc_4235C2
; ---------------------------------------------------------------------------

loc_4235B5:				; CODE XREF: .text:004235D3j
		mov	cx, [ebx]
		add	ebx, 2
		mov	[edx], cx
		inc	eax
		add	edx, 2

loc_4235C2:				; CODE XREF: .text:004235B3j
		cmp	eax, 0E0h
		jge	short loc_4235D5
		cmp	word ptr [ebx],	9
		jz	short loc_4235D5
		cmp	word ptr [ebx],	0
		jnz	short loc_4235B5

loc_4235D5:				; CODE XREF: .text:004235C7j
					; .text:004235CDj
		mov	word ptr [ebp+eax*2-200h], 0
		push	0
		lea	edx, [ebp-200h]
		mov	eax, [esi+14h]
		push	eax
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		test	eax, eax
		jz	short loc_42360D
		cmp	eax, 4
		jz	short loc_42360D
		cmp	word ptr [ebp-200h], 0
		jz	short loc_42360D
		mov	eax, esi
		jmp	short loc_42361C
; ---------------------------------------------------------------------------

loc_42360D:				; CODE XREF: .text:004233E6j
					; .text:00423403j ...
		add	esi, 18h

loc_423610:				; CODE XREF: .text:004233C6j
		mov	eax, [esi]
		test	eax, eax
		jnz	loc_4233D3

loc_42361A:				; CODE XREF: .text:0042352Aj
		xor	eax, eax

loc_42361C:				; CODE XREF: .text:004233CEj
					; .text:004234C3j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
