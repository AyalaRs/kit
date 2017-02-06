.code

; int __cdecl loc_4365EC(HWND hWndParent, int, int, int, int, __int16)
loc_4365EC:				; CODE XREF: .text:0047605Ep
					; .text:004B4BB3p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF9ECh
		mov	eax, 200h	; int
		mov	pcount,	eax
		mov	edx, pcount
		push	ebx
		push	esi
		push	edi
		shl	edx, 3		; int
		push	0		; flags
		push	edx		; size
		mov	edi, offset dword_5DC5C0
		mov	ebx, offset dword_5DC5C8
		call	Memalloc
		add	esp, 8
		mov	[edi], eax
		cmp	dword ptr [edi], 0
		jnz	short loc_43662E
		xor	eax, eax
		jmp	loc_4369D5
; ---------------------------------------------------------------------------

loc_43662E:				; CODE XREF: .text:00436625j
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_5DC5CC, edx
		xor	eax, eax
		mov	[ebx], ecx
		mov	[ebp-4], eax
		test	byte ptr [ebp+1Eh], 30h
		jnz	loc_436714
		mov	edx, [ebp+0Ch]
		push	edx		; from
		call	Findjumpfrom
		pop	ecx
		mov	esi, eax
		jmp	short loc_4366A8
; ---------------------------------------------------------------------------

loc_436657:				; CODE XREF: .text:004366B0j
		mov	eax, [esi]
		cmp	eax, [ebp+0Ch]
		jnz	short loc_4366B2
		mov	edx, [ebx]	; int
		cmp	edx, pcount
		jl	short loc_43668C
		push	0		; flags
		lea	ecx, [ebp-4]	; int
		push	ecx		; failed
		push	8		; itemsize
		push	offset pcount	; pcount
		mov	eax, [edi]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[edi], eax
		mov	edx, [ebx]
		cmp	edx, pcount
		jge	short loc_4366B2

loc_43668C:				; CODE XREF: .text:00436666j
		mov	ecx, [edi]
		mov	eax, [ebx]
		mov	edx, [esi+4]
		mov	[ecx+eax*8], edx
		xor	edx, edx
		mov	eax, [ebx]
		mov	ecx, [edi]
		mov	dl, [esi+8]
		mov	[ecx+eax*8+4], edx
		inc	dword ptr [ebx]
		add	esi, 9

loc_4366A8:				; CODE XREF: .text:00436655j
		test	esi, esi
		jz	short loc_4366B2
		cmp	dword ptr [esi+4], 0FFFFFFFFh
		jnz	short loc_436657

loc_4366B2:				; CODE XREF: .text:0043665Cj
					; .text:0043668Aj ...
		cmp	dword ptr [ebx], 0
		jle	short loc_4366ED
		mov	ecx, [edi]
		mov	eax, [ecx+4]
		cmp	eax, 5
		jz	short loc_4366C6
		cmp	eax, 6
		jnz	short loc_4366ED

loc_4366C6:				; CODE XREF: .text:004366BFj
		push	offset aKnownCallsFrom ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-204h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_4368FE
; ---------------------------------------------------------------------------

loc_4366ED:				; CODE XREF: .text:004366B5j
					; .text:004366C4j
		push	offset aKnownJumpsFrom ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-204h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_4368FE
; ---------------------------------------------------------------------------

loc_436714:				; CODE XREF: .text:00436643j
		mov	eax, [ebp+1Ch]
		and	eax, 300000h
		cmp	eax, 100000h
		jnz	loc_4367E1

loc_436727:				; CODE XREF: .text:0043678Bj
		test	byte ptr [ebp+1Eh], 40h
		jz	short loc_436747
		mov	edx, pcount
		push	edx		; njmpcall
		mov	ecx, [edi]
		push	ecx		; jmpcall
		mov	eax, [ebp+0Ch]
		push	eax		; dest
		call	Findglobaljumpscallsto
		add	esp, 0Ch
		mov	[ebx], eax
		jmp	short loc_43675F
; ---------------------------------------------------------------------------

loc_436747:				; CODE XREF: .text:0043672Bj
		mov	edx, pcount
		push	edx		; njmpcall
		mov	ecx, [edi]
		push	ecx		; jmpcall
		mov	eax, [ebp+0Ch]
		push	eax		; dest
		call	Findlocaljumpscallsto
		add	esp, 0Ch
		mov	[ebx], eax

loc_43675F:				; CODE XREF: .text:00436745j
		mov	edx, [ebx]	; int
		cmp	edx, pcount
		jl	short loc_43678D
		push	0		; flags
		lea	ecx, [ebp-4]	; int
		push	ecx		; failed
		push	8		; itemsize
		push	offset pcount	; pcount
		mov	eax, [edi]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[edi], eax
		mov	edx, [ebx]
		cmp	edx, pcount
		jl	short loc_436727

loc_43678D:				; CODE XREF: .text:00436767j
		test	byte ptr [ebp+1Eh], 40h
		jz	short loc_4367BA
		push	offset aAllKnownJumpsA ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-204h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_4368FE
; ---------------------------------------------------------------------------

loc_4367BA:				; CODE XREF: .text:00436791j
		push	offset aLocalJumpsAndC ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-204h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_4368FE
; ---------------------------------------------------------------------------

loc_4367E1:				; CODE XREF: .text:00436721j
		mov	eax, [ebp+1Ch]
		and	eax, 300000h
		cmp	eax, 200000h
		jnz	loc_4368FE
		push	410h		; datasize
		lea	edx, [ebp-614h]
		push	edx		; data
		push	40h		; type
		mov	ecx, [ebp+0Ch]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jbe	loc_4368DC
		mov	eax, [edi]
		mov	edx, [ebp+0Ch]
		mov	[eax], edx
		xor	ecx, ecx
		mov	[eax+4], ecx
		mov	dword ptr [ebx], 1
		jmp	loc_4368B0
; ---------------------------------------------------------------------------

loc_43682D:				; CODE XREF: .text:004368B8j
		cmp	eax, pcount
		jl	short loc_436859
		push	0		; flags
		lea	eax, [ebp-4]	; int
		push	eax		; failed
		push	8		; itemsize
		push	offset pcount	; pcount
		mov	edx, [edi]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[edi], eax
		mov	ecx, [ebx]
		cmp	ecx, pcount
		jge	short loc_4368BE

loc_436859:				; CODE XREF: .text:00436833j
		mov	eax, [edi]
		mov	edx, [ebx]
		mov	ecx, [ebx]
		mov	ecx, [ebp+ecx*4-608h]
		mov	[eax+edx*8], ecx
		push	0		; datasize
		push	41h		; type
		mov	eax, [ebx]
		mov	edx, [ebp+eax*4-608h]
		push	edx		; _addr
		call	Finddataptr
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43688F
		mov	eax, [edi]
		mov	edx, [ebx]
		xor	ecx, ecx
		mov	[eax+edx*8+4], ecx
		jmp	short loc_4368AE
; ---------------------------------------------------------------------------

loc_43688F:				; CODE XREF: .text:00436881j
		test	byte ptr [eax+4], 4
		jz	short loc_4368A3
		mov	eax, [edi]
		mov	edx, [ebx]
		mov	dword ptr [eax+edx*8+4], 0FFFFFFFFh
		jmp	short loc_4368AE
; ---------------------------------------------------------------------------

loc_4368A3:				; CODE XREF: .text:00436893j
		mov	ecx, [edi]	; int
		mov	edx, [ebx]
		mov	eax, [eax+0Ch]
		mov	[ecx+edx*8+4], eax

loc_4368AE:				; CODE XREF: .text:0043688Dj
					; .text:004368A1j
		inc	dword ptr [ebx]

loc_4368B0:				; CODE XREF: .text:00436828j
		mov	eax, [ebx]
		cmp	eax, [ebp-608h]
		jle	loc_43682D

loc_4368BE:				; CODE XREF: .text:00436857j
		mov	eax, [ebx]
		cmp	eax, 2
		jle	short loc_4368DC
		push	offset loc_428A50 ; fcmp
		dec	eax
		push	8		; width
		push	eax		; nelem
		mov	edx, [edi]
		add	edx, 8
		push	edx		; base
		call	_qsort
		add	esp, 10h

loc_4368DC:				; CODE XREF: .text:00436810j
					; .text:004368C3j
		push	offset aCasesOfSwitch ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-204h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_4368FE:				; CODE XREF: .text:004366E8j
					; .text:0043670Fj ...
		mov	edx, esi
		mov	eax, 100h
		sub	eax, esi
		lea	ecx, [ebp-204h]
		add	edx, edx
		push	eax		; nsymb
		add	edx, ecx
		push	edx		; symb
		push	20408h		; addrmode
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		test	eax, eax
		jnz	short loc_436950
		mov	edx, 100h
		lea	ecx, [ebp-204h]
		sub	edx, esi
		add	esi, esi
		push	0		; comment
		push	edx		; nsymb
		add	esi, ecx
		push	esi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_436950:				; CODE XREF: .text:00436926j
		lea	edx, [ebp-204h]
		mov	ecx, [ebp+10h]
		mov	g_dialog._title,	edx
		mov	eax, [ebp+14h]
		mov	g_dialog.x, ecx
		mov	g_dialog.y, eax
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp+1Ch]
		mov	edx, [ebp+18h]
		push	0		; dwInitParam
		mov	g_dialog.fi, edx
		mov	g_dialog.mode, ecx
		push	offset loc_435C6C ; lpDialogFunc
		mov	g_dialog.addr0,	eax
		mov	edx, [ebp+8]
		mov	g_dialog.controls, offset stru_5277EC
		push	edx		; hWndParent
		mov	ecx, g_hInstance
		push	offset aDia_empty_0 ; lpTemplateName
		push	ecx		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		test	eax, eax
		mov	g_dialog.controls, edx
		jl	short loc_4369BD
		cmp	eax, [ebx]
		jl	short loc_4369C1

loc_4369BD:				; CODE XREF: .text:004369B7j
		xor	ebx, ebx
		jmp	short loc_4369C6
; ---------------------------------------------------------------------------

loc_4369C1:				; CODE XREF: .text:004369BBj
		mov	edx, [edi]
		mov	ebx, [edx+eax*8]

loc_4369C6:				; CODE XREF: .text:004369BFj
		mov	eax, [edi]
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[edi], edx
		mov	eax, ebx

loc_4369D5:				; CODE XREF: .text:00436629j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 149. _Browsecodelocations
; Exported entry 410. Browsecodelocations

; int __cdecl Browsecodelocations(HWND hparent,	wchar_t	*_title,	BROWSECODEFUNC *bccallback, void *data)
		public Browsecodelocations
Browsecodelocations:			; _Browsecodelocations
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDECh
		push	ebx
		push	esi
		push	edi
		mov	edi, offset dword_5DC5C8
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4369FA
		xor	eax, eax	; int
		jmp	loc_436BFF
; ---------------------------------------------------------------------------

loc_4369FA:				; CODE XREF: .text:004369F1j
		mov	ebx, 200h
		mov	pcount,	ebx
		push	0		; flags
		shl	ebx, 3
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5DC5C0, esi
		test	esi, esi
		jnz	short loc_436A26
		xor	eax, eax
		jmp	loc_436BFF
; ---------------------------------------------------------------------------

loc_436A26:				; CODE XREF: .text:00436A1Dj
		mov	dword_5DC5CC, 1
		xor	edx, edx
		mov	[edi], edx
		xor	ebx, ebx

loc_436A36:				; CODE XREF: .text:00436AC6j
		xor	eax, eax
		lea	edx, [ebp-204h]
		mov	[ebp-4], eax
		lea	ecx, [ebp-4]
		mov	word ptr [ebp-204h], 0
		push	edx
		push	ecx
		mov	eax, [ebp+14h]
		push	eax
		push	ebx
		call	dword ptr [ebp+10h]
		add	esp, 10h
		test	eax, eax
		jz	short loc_436ACB
		mov	edx, [edi]	; int
		cmp	edx, pcount
		jl	short loc_436A91
		push	0		; flags
		push	0		; failed
		push	8		; itemsize
		push	offset pcount	; pcount
		mov	ecx, dword_5DC5C0 ; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5DC5C0, eax
		mov	eax, [edi]
		cmp	eax, pcount
		jge	short loc_436ACB

loc_436A91:				; CODE XREF: .text:00436A66j
		lea	edx, [ebp-204h]
		mov	esi, ebx
		push	edx		; s
		add	esi, 0FF000000h
		push	7Fh		; type
		push	esi		; _addr
		call	InsertnameW
		mov	edx, [edi]
		mov	eax, dword_5DC5C0
		mov	ecx, [ebp-4]
		add	esp, 0Ch
		mov	[eax+edx*8], ecx
		mov	eax, dword_5DC5C0
		mov	edx, [edi]
		mov	[eax+edx*8+4], esi
		inc	dword ptr [edi]
		inc	ebx
		jmp	loc_436A36
; ---------------------------------------------------------------------------

loc_436ACB:				; CODE XREF: .text:00436A5Cj
					; .text:00436A8Fj
		push	1
		call	loc_4776D8
		cmp	dword ptr [ebp+0Ch], 0
		pop	ecx
		jz	short loc_436AEC
		mov	ecx, [ebp+0Ch]
		cmp	word ptr [ecx],	0
		jz	short loc_436AEC
		mov	eax, [ebp+0Ch]
		mov	g_dialog._title,	eax
		jmp	short loc_436AFC
; ---------------------------------------------------------------------------

loc_436AEC:				; CODE XREF: .text:00436AD7j
					; .text:00436AE0j
		push	offset aBrowseCodeLoca ; "Browse code locations"
		call	_T
		pop	ecx
		mov	g_dialog._title,	eax

loc_436AFC:				; CODE XREF: .text:00436AEAj
		call	Getcpudisasmtable
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_436B37
		lea	eax, [ebp-214h]
		push	eax		; lpRect
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	GetWindowRect
		test	eax, eax
		jz	short loc_436B37
		mov	ecx, [ebp-20Ch]
		mov	g_dialog.x, ecx
		mov	eax, [ebp-210h]
		mov	g_dialog.y, eax
		jmp	short loc_436B4B
; ---------------------------------------------------------------------------

loc_436B37:				; CODE XREF: .text:00436B05j
					; .text:00436B1Cj
		mov	g_dialog.x, 0FFFFFFFFh
		mov	g_dialog.y, 0FFFFFFFFh

loc_436B4B:				; CODE XREF: .text:00436B35j
		mov	edx, fi
		mov	g_dialog.fi, edx
		xor	ecx, ecx
		mov	g_dialog.mode, ecx
		xor	eax, eax
		mov	g_dialog.addr0,	eax
		mov	g_dialog.controls, offset stru_52788C
		push	0		; dwInitParam
		push	offset loc_435C6C ; lpDialogFunc
		test	ebx, ebx
		jnz	short loc_436B80
		mov	edx, [ebp+8]
		jmp	short loc_436B86
; ---------------------------------------------------------------------------

loc_436B80:				; CODE XREF: .text:00436B79j
		mov	edx, [ebx+22Ch]

loc_436B86:				; CODE XREF: .text:00436B7Ej
		push	edx		; hWndParent
		push	offset aDia_empty_0 ; lpTemplateName
		mov	eax, g_hInstance
		push	eax		; hInstance
		call	DialogBoxParamW
		xor	ecx, ecx
		test	eax, eax
		mov	g_dialog.controls, ecx
		jl	short loc_436BA7
		cmp	eax, [edi]
		jl	short loc_436BAB

loc_436BA7:				; CODE XREF: .text:00436BA1j
		xor	ebx, ebx
		jmp	short loc_436BB4
; ---------------------------------------------------------------------------

loc_436BAB:				; CODE XREF: .text:00436BA5j
		mov	edx, dword_5DC5C0
		mov	ebx, [edx+eax*8]

loc_436BB4:				; CODE XREF: .text:00436BA9j
		test	ebx, ebx
		jnz	short loc_436BCD
		push	3		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	SetWindowPos

loc_436BCD:				; CODE XREF: .text:00436BB6j
		push	0		; type3
		push	0		; type2
		push	7Fh		; type1
		mov	edx, [edi]
		add	edx, 0FF000000h
		push	edx		; addr1
		push	0FF000000h	; addr0
		call	Deletedatarange
		add	esp, 14h
		mov	ecx, dword_5DC5C0
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		mov	dword_5DC5C0, eax
		mov	eax, ebx

loc_436BFF:				; CODE XREF: .text:004369F5j
					; .text:00436A21j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; bool __stdcall CodePageEnumProc(LPWSTR lpCodePageString)
CodePageEnumProc:			; DATA XREF: .text:00436C93o
					; .text:00436E53o
		push	ebp
		mov	ebp, esp
		mov	eax, nelem
		cmp	eax, dword_5DC5D4
		jl	short loc_436C1C
		xor	eax, eax
		jmp	short loc_436C40
; ---------------------------------------------------------------------------

loc_436C1C:				; CODE XREF: .text:00436C16j
		mov	edx, [ebp+8]
		push	edx		; s
		call	__wtoi
		pop	ecx
		mov	edx, nelem
		mov	ecx, base
		mov	[ecx+edx*4], eax
		mov	eax, 1
		inc	nelem

loc_436C40:				; CODE XREF: .text:00436C1Aj
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
; Exported entry 150. _Fillcombowithcplist
; Exported entry 498. Fillcombowithcplist

; WPARAM __cdecl Fillcombowithcplist(HWND hWnd,	int a2,	int a3)
		public Fillcombowithcplist
Fillcombowithcplist:			; CODE XREF: .text:004CF491p
					; .text:004CF4BDp ...
		push	ebp		; _Fillcombowithcplist
		mov	ebp, esp
		add	esp, 0FFFFFBC8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jnz	short loc_436C5E
		xor	eax, eax
		jmp	loc_436DEF
; ---------------------------------------------------------------------------

loc_436C5E:				; CODE XREF: .text:00436C55j
		mov	ebx, 3E8h
		xor	eax, eax	; int
		mov	dword_5DC5D4, ebx
		push	1		; flags
		shl	ebx, 2
		mov	nelem, eax
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	base, esi
		test	esi, esi
		jnz	short loc_436C91
		xor	eax, eax
		jmp	loc_436DEF
; ---------------------------------------------------------------------------

loc_436C91:				; CODE XREF: .text:00436C88j
		push	2		; dwFlags
		push	offset CodePageEnumProc	; lpCodePageEnumProc
		call	EnumSystemCodePagesW
		mov	eax, nelem
		cmp	eax, 1
		jle	short loc_436CC8
		mov	dword_5DC5DC, 7FFFFFFFh
		push	offset loc_428A98 ; fcmp
		push	4		; width
		push	eax		; nelem
		mov	edx, base
		push	edx		; base
		call	_qsort
		add	esp, 10h

loc_436CC8:				; CODE XREF: .text:00436CA5j
		push	0		; lParam
		push	0		; wParam
		push	14Bh		; Msg
		push	edi		; hWnd
		call	SendMessageW
		xor	ecx, ecx
		mov	esi, ecx
		mov	[ebp-4], ecx
		xor	ebx, ebx
		jmp	loc_436DC3
; ---------------------------------------------------------------------------

loc_436CE5:				; CODE XREF: .text:00436DC9j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_436D16
		mov	edx, base
		lea	eax, [ebp-218h]
		push	eax		; lpCPInfo
		mov	ecx, [edx+ebx*4]
		push	ecx		; CodePage
		call	GetCPInfo
		test	eax, eax
		jz	loc_436DC2
		cmp	dword ptr [ebp-218h], 1
		jnz	loc_436DC2

loc_436D16:				; CODE XREF: .text:00436CE9j
		mov	eax, base
		mov	eax, [eax+ebx*4]
		cmp	eax, [ebp+10h]
		jnz	short loc_436D26
		mov	[ebp-4], esi

loc_436D26:				; CODE XREF: .text:00436D21j
		cmp	_imp__GetCPInfoExW, 0
		jnz	short loc_436D4C
		mov	edx, base
		push	eax
		push	offset aU_10	; "%u"
		lea	ecx, [ebp-204h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_436DAD
; ---------------------------------------------------------------------------

loc_436D4C:				; CODE XREF: .text:00436D2Dj
		lea	eax, [ebp-438h]
		mov	edx, base
		push	eax		; _DWORD
		push	0		; _DWORD
		mov	ecx, [edx+ebx*4]
		push	ecx		; _DWORD
		call	_imp__GetCPInfoExW
		test	eax, eax
		jz	short loc_436DC2
		cmp	word ptr [ebp-420h], 0
		jnz	short loc_436D92
		mov	eax, base
		lea	ecx, [ebp-204h]
		mov	edx, [eax+ebx*4]
		push	edx
		push	offset aU_10	; "%u"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_436DAD
; ---------------------------------------------------------------------------

loc_436D92:				; CODE XREF: .text:00436D71j
		lea	eax, [ebp-420h]
		lea	edx, [ebp-204h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_436DAD:				; CODE XREF: .text:00436D4Aj
					; .text:00436D90j
		lea	ecx, [ebp-204h]
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		inc	esi

loc_436DC2:				; CODE XREF: .text:00436D03j
					; .text:00436D10j ...
		inc	ebx

loc_436DC3:				; CODE XREF: .text:00436CE0j
		cmp	ebx, nelem
		jl	loc_436CE5
		push	0		; lParam
		mov	eax, [ebp-4]
		push	eax		; wParam
		push	14Eh		; Msg
		push	edi		; hWnd
		call	SendMessageW
		mov	edx, base
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, esi

loc_436DEF:				; CODE XREF: .text:00436C59j
					; .text:00436C8Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 151. _Fillmenuwithcplist
; Exported entry 501. Fillmenuwithcplist

; int __cdecl Fillmenuwithcplist(t_menu	*s, int	a2, int	a3, int	a4, MENUFUNC *a5, int a6)
		public Fillmenuwithcplist
Fillmenuwithcplist:			; CODE XREF: .text:0040FF2Bp
					; .text:0040FFA2p
		push	ebp		; _Fillmenuwithcplist
		mov	ebp, esp
		add	esp, 0FFFFFBC8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_436E17
		cmp	dword ptr [ebp+0Ch], 1
		jl	short loc_436E17
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_436E1E

loc_436E17:				; CODE XREF: .text:00436E09j
					; .text:00436E0Fj
		xor	eax, eax
		jmp	loc_4370B2
; ---------------------------------------------------------------------------

loc_436E1E:				; CODE XREF: .text:00436E15j
		mov	ebx, 3E8h
		xor	eax, eax	; int
		mov	dword_5DC5D4, ebx
		push	1		; flags
		shl	ebx, 2
		mov	nelem, eax
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	base, edi
		test	edi, edi
		jnz	short loc_436E51
		xor	eax, eax
		jmp	loc_4370B2
; ---------------------------------------------------------------------------

loc_436E51:				; CODE XREF: .text:00436E48j
		push	2		; dwFlags
		push	offset CodePageEnumProc	; lpCodePageEnumProc
		call	EnumSystemCodePagesW
		cmp	nelem, 1
		jle	short loc_436E99
		cmp	dword ptr [ebp+1Ch], 0
		mov	edx, 0FDE9h
		jnz	short loc_436E77
		add	edx, 0FFFF06FBh

loc_436E77:				; CODE XREF: .text:00436E6Fj
		mov	dword_5DC5DC, edx
		push	offset loc_428A98 ; fcmp
		push	4		; width
		mov	ecx, nelem
		push	ecx		; nelem
		mov	eax, base
		push	eax		; base
		call	_qsort
		add	esp, 10h

loc_436E99:				; CODE XREF: .text:00436E64j
		xor	edx, edx
		xor	edi, edi
		mov	[ebp-4], edx
		jmp	loc_437080
; ---------------------------------------------------------------------------

loc_436EA5:				; CODE XREF: .text:0043708Fj
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_436ED6
		mov	edx, base
		lea	eax, [ebp-218h]
		push	eax		; lpCPInfo
		mov	ecx, [edx+edi*4]
		push	ecx		; CodePage
		call	GetCPInfo
		test	eax, eax
		jz	loc_43707F
		cmp	dword ptr [ebp-218h], 1
		jnz	loc_43707F

loc_436ED6:				; CODE XREF: .text:00436EA9j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_436F30
		cmp	_imp__GetCPInfoExW, 0
		jz	short loc_436F06
		lea	eax, [ebp-438h]
		mov	edx, base
		push	eax		; _DWORD
		push	0		; _DWORD
		mov	ecx, [edx+edi*4]
		push	ecx		; _DWORD
		call	_imp__GetCPInfoExW
		test	eax, eax
		jz	loc_43707F

loc_436F06:				; CODE XREF: .text:00436EE3j
		cmp	edi, 1
		jnz	short loc_436F1A
		mov	eax, base
		mov	edx, [eax]
		cmp	edx, dword_5DC5DC
		jz	short loc_436F25

loc_436F1A:				; CODE XREF: .text:00436F09j
		mov	dword ptr [esi], offset	aCodePage_0 ; "Code page"
		jmp	loc_437047
; ---------------------------------------------------------------------------

loc_436F25:				; CODE XREF: .text:00436F18j
		mov	dword ptr [esi], offset	aCodePage ; "|Code page"
		jmp	loc_437047
; ---------------------------------------------------------------------------

loc_436F30:				; CODE XREF: .text:00436EDAj
		cmp	edi, 1
		jnz	short loc_436F45
		mov	ecx, base
		mov	eax, [ecx]
		cmp	eax, dword_5DC5DC
		jz	short loc_436F49

loc_436F45:				; CODE XREF: .text:00436F33j
		xor	ebx, ebx
		jmp	short loc_436F64
; ---------------------------------------------------------------------------

loc_436F49:				; CODE XREF: .text:00436F43j
		push	offset asc_52EFB4 ; "|"
		push	100h		; n
		lea	eax, [ebp-204h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_436F64:				; CODE XREF: .text:00436F47j
		cmp	_imp__GetCPInfoExW, 0
		jnz	short loc_436F95
		mov	eax, base
		mov	ecx, ebx
		add	ecx, ecx
		mov	edx, [eax+edi*4]
		lea	eax, [ebp-204h]
		push	edx
		add	ecx, eax
		push	offset aU_10	; "%u"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		inc	eax
		add	ebx, eax
		jmp	short loc_437010
; ---------------------------------------------------------------------------

loc_436F95:				; CODE XREF: .text:00436F6Bj
		lea	edx, [ebp-438h]
		mov	ecx, base
		push	edx		; _DWORD
		push	0		; _DWORD
		mov	eax, [ecx+edi*4]
		push	eax		; _DWORD
		call	_imp__GetCPInfoExW
		test	eax, eax
		jz	loc_43707F
		cmp	word ptr [ebp-420h], 0
		jnz	short loc_436FE9
		mov	edx, base
		mov	eax, ebx
		add	eax, eax
		mov	ecx, [edx+edi*4]
		push	ecx
		lea	edx, [ebp-204h]
		add	eax, edx
		push	offset aU_10	; "%u"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		inc	eax
		add	ebx, eax
		jmp	short loc_437010
; ---------------------------------------------------------------------------

loc_436FE9:				; CODE XREF: .text:00436FBEj
		lea	ecx, [ebp-420h]
		mov	edx, ebx
		push	ecx		; src
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-204h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	eax
		add	ebx, eax

loc_437010:				; CODE XREF: .text:00436F93j
					; .text:00436FE7j
		cmp	ebx, [ebp+14h]
		jle	short loc_43701D
		mov	dword ptr [esi], offset	aCodePage_0 ; "Code page"
		jmp	short loc_437047
; ---------------------------------------------------------------------------

loc_43701D:				; CODE XREF: .text:00437013j
		lea	eax, [ebp-204h]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		inc	ebx
		mov	eax, [ebp+10h]
		mov	[esi], eax
		mov	edx, ebx
		add	edx, edx
		add	[ebp+10h], edx
		sub	[ebp+14h], ebx

loc_437047:				; CODE XREF: .text:00436F20j
					; .text:00436F2Bj ...
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_437056
		mov	dword ptr [esi+4], offset aSelectMultibyt ; "Select multibyte code page"
		jmp	short loc_43705D
; ---------------------------------------------------------------------------

loc_437056:				; CODE XREF: .text:0043704Bj
		mov	dword ptr [esi+4], offset aSelectCodePa_0 ; "Select code page"

loc_43705D:				; CODE XREF: .text:00437054j
		xor	ecx, ecx
		xor	edx, edx
		mov	[esi+8], ecx
		mov	eax, [ebp+18h]
		mov	[esi+0Ch], eax
		mov	[esi+10h], edx
		mov	ecx, base
		mov	eax, [ecx+edi*4]
		mov	[esi+14h], eax
		add	esi, 18h
		inc	dword ptr [ebp-4]

loc_43707F:				; CODE XREF: .text:00436EC3j
					; .text:00436ED0j ...
		inc	edi

loc_437080:				; CODE XREF: .text:00436EA0j
		cmp	edi, nelem
		jge	short loc_437095
		mov	edx, [ebp+0Ch]
		dec	edx
		cmp	edx, [ebp-4]
		jg	loc_436EA5

loc_437095:				; CODE XREF: .text:00437086j
		push	18h		; n
		push	0		; c
		push	esi		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, base
		push	ecx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-4]

loc_4370B2:				; CODE XREF: .text:00436E19j
					; .text:00436E4Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4370BC:				; CODE XREF: .text:00438D2Cp
					; .text:00438F8Cp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	eax, dword_5DC5E8
		test	eax, eax
		jnz	short loc_4370D2
		xor	eax, eax
		jmp	short loc_43711D
; ---------------------------------------------------------------------------

loc_4370D2:				; CODE XREF: .text:004370CCj
		xor	ecx, ecx
		mov	esi, eax

loc_4370D6:				; CODE XREF: .text:00437119j
		lea	eax, [esi+ecx]
		sar	eax, 1
		jns	short loc_4370E0
		adc	eax, 0

loc_4370E0:				; CODE XREF: .text:004370DBj
		mov	edx, dword_5DC5E0
		mov	edx, [edx+eax*4]
		add	edx, dword_5E05F0
		cmp	edi, [edx]
		jnb	short loc_4370F7
		mov	esi, eax
		jmp	short loc_437117
; ---------------------------------------------------------------------------

loc_4370F7:				; CODE XREF: .text:004370F1j
		cmp	edi, [edx]
		jbe	short loc_437100
		lea	ecx, [eax+1]
		jmp	short loc_437117
; ---------------------------------------------------------------------------

loc_437100:				; CODE XREF: .text:004370F9j
		mov	bl, [ebp+0Ch]
		cmp	bl, [edx+4]
		jnb	short loc_43710C
		mov	esi, eax
		jmp	short loc_437117
; ---------------------------------------------------------------------------

loc_43710C:				; CODE XREF: .text:00437106j
		mov	cl, [ebp+0Ch]
		cmp	cl, [edx+4]
		jbe	short loc_43711D
		lea	ecx, [eax+1]

loc_437117:				; CODE XREF: .text:004370F5j
					; .text:004370FEj ...
		cmp	esi, ecx
		jg	short loc_4370D6
		mov	eax, ecx

loc_43711D:				; CODE XREF: .text:004370D0j
					; .text:00437112j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_437124(const void *, const void *)
loc_437124:				; DATA XREF: .text:004396B8o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	eax, [edi]
		mov	edx, dword_5E05F0
		add	eax, edx
		mov	ecx, [esi]
		add	ecx, edx
		mov	edx, ecx
		mov	ecx, [edx]
		mov	ebx, [eax]
		cmp	ecx, ebx
		jbe	short loc_43714D
		or	eax, 0FFFFFFFFh
		jmp	short loc_43718B
; ---------------------------------------------------------------------------

loc_43714D:				; CODE XREF: .text:00437146j
		cmp	ebx, [edx]
		jbe	short loc_437158
		mov	eax, 1
		jmp	short loc_43718B
; ---------------------------------------------------------------------------

loc_437158:				; CODE XREF: .text:0043714Fj
		mov	cl, [edx+4]
		cmp	cl, [eax+4]
		jbe	short loc_437165
		or	eax, 0FFFFFFFFh
		jmp	short loc_43718B
; ---------------------------------------------------------------------------

loc_437165:				; CODE XREF: .text:0043715Ej
		cmp	cl, [eax+4]
		jnb	short loc_437171
		mov	eax, 1
		jmp	short loc_43718B
; ---------------------------------------------------------------------------

loc_437171:				; CODE XREF: .text:00437168j
		mov	edx, esi
		mov	eax, edi
		cmp	edx, eax
		jbe	short loc_43717E
		or	eax, 0FFFFFFFFh
		jmp	short loc_43718B
; ---------------------------------------------------------------------------

loc_43717E:				; CODE XREF: .text:00437177j
		cmp	edx, eax
		jnb	short loc_437189
		mov	eax, 1
		jmp	short loc_43718B
; ---------------------------------------------------------------------------

loc_437189:				; CODE XREF: .text:00437180j
		xor	eax, eax

loc_43718B:				; CODE XREF: .text:0043714Bj
					; .text:00437156j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_437190:				; CODE XREF: .text:00437360p
					; .text:00437568p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	[ebp-4], edx
		xor	ebx, ebx
		mov	eax, [ebp-4]
		mov	dx, [eax]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_437226
		jmp	short loc_4371CF
; ---------------------------------------------------------------------------

loc_4371B7:				; CODE XREF: .text:004371DEj
		mov	eax, [ebp-4]
		mov	ecx, ebx
		add	ecx, ecx
		movzx	edx, word ptr [eax]
		lea	ecx, [ecx+ecx*4]
		add	ecx, edx
		add	ecx, 0FFFFFFD0h
		add	dword ptr [ebp-4], 2
		mov	ebx, ecx

loc_4371CF:				; CODE XREF: .text:004371B5j
		mov	ecx, [ebp-4]
		mov	ax, [ecx]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4371B7
		test	ebx, ebx
		jz	short loc_4371E9
		cmp	ebx, [ebp+10h]
		jl	short loc_4371F0

loc_4371E9:				; CODE XREF: .text:004371E2j
		xor	eax, eax
		jmp	loc_437422
; ---------------------------------------------------------------------------

loc_4371F0:				; CODE XREF: .text:004371E7j
		xor	esi, esi
		mov	eax, edi
		cmp	ebx, esi
		jle	loc_437412

loc_4371FC:				; CODE XREF: .text:0043721Fj
		mov	edx, [ebp-4]
		cmp	word ptr [edx],	0
		jnz	short loc_43720C
		xor	eax, eax
		jmp	loc_437422
; ---------------------------------------------------------------------------

loc_43720C:				; CODE XREF: .text:00437203j
		mov	edx, [ebp-4]
		inc	esi
		mov	cx, [edx]
		mov	[eax], cx
		add	eax, 2
		add	dword ptr [ebp-4], 2
		cmp	ebx, esi
		jg	short loc_4371FC
		jmp	loc_437412
; ---------------------------------------------------------------------------

loc_437226:				; CODE XREF: .text:004371B3j
		mov	eax, [ebp-4]
		cmp	word ptr [eax],	53h
		jnz	loc_437312
		mov	edx, [ebp-4]
		cmp	word ptr [edx+2], 74h
		jnz	short loc_437256
		push	offset aStd_0	; "std"
		mov	ecx, [ebp+10h]
		push	ecx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_437309
; ---------------------------------------------------------------------------

loc_437256:				; CODE XREF: .text:0043723Bj
		mov	eax, [ebp-4]
		cmp	word ptr [eax+2], 61h
		jnz	short loc_437279
		push	offset aStdAllocator ; "std::allocator"
		mov	edx, [ebp+10h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_437309
; ---------------------------------------------------------------------------

loc_437279:				; CODE XREF: .text:0043725Ej
		mov	eax, [ebp-4]
		mov	ax, [eax+2]
		cmp	ax, 62h
		jz	short loc_43728C
		cmp	ax, 73h
		jnz	short loc_4372A2

loc_43728C:				; CODE XREF: .text:00437284j
		push	offset aStdBasic_strin ; "std::basic_string"
		mov	edx, [ebp+10h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_437309
; ---------------------------------------------------------------------------

loc_4372A2:				; CODE XREF: .text:0043728Aj
		mov	eax, [ebp-4]
		cmp	word ptr [eax+2], 69h
		jnz	short loc_4372C2
		push	offset aStdBasic_istre ; "std::basic_istream"
		mov	edx, [ebp+10h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_437309
; ---------------------------------------------------------------------------

loc_4372C2:				; CODE XREF: .text:004372AAj
		mov	eax, [ebp-4]
		cmp	word ptr [eax+2], 6Fh
		jnz	short loc_4372E2
		push	offset aStdBasic_ostre ; "std::basic_ostream"
		mov	edx, [ebp+10h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_437309
; ---------------------------------------------------------------------------

loc_4372E2:				; CODE XREF: .text:004372CAj
		mov	eax, [ebp-4]
		cmp	word ptr [eax+2], 64h
		jnz	short loc_437302
		push	offset aStdBasic_iostr ; "std::basic_iostream"
		mov	edx, [ebp+10h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_437309
; ---------------------------------------------------------------------------

loc_437302:				; CODE XREF: .text:004372EAj
		xor	eax, eax
		jmp	loc_437422
; ---------------------------------------------------------------------------

loc_437309:				; CODE XREF: .text:00437251j
					; .text:00437274j ...
		add	dword ptr [ebp-4], 4
		jmp	loc_437412
; ---------------------------------------------------------------------------

loc_437312:				; CODE XREF: .text:0043722Dj
		mov	edx, [ebp-4]
		cmp	word ptr [edx],	63h
		jnz	loc_4373A8
		mov	ecx, [ebp-4]
		cmp	word ptr [ecx+2], 76h
		jnz	short loc_4373A8
		add	dword ptr [ebp-4], 4
		push	offset aOperator ; "operator "
		mov	eax, [ebp+10h]
		push	eax		; n
		push	edi		; dest
		call	StrcopyW
		mov	ebx, eax
		mov	eax, [ebp-4]
		add	esp, 0Ch
		mov	dx, [eax]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_43736A
		mov	ecx, [ebp+10h]
		lea	eax, [edi+ebx*2]
		sub	ecx, ebx
		lea	edx, [ebp-4]
		push	ecx
		push	eax
		push	edx
		call	loc_437190
		add	esp, 0Ch
		jmp	short loc_437380
; ---------------------------------------------------------------------------

loc_43736A:				; CODE XREF: .text:00437350j
		mov	ecx, [ebp+10h]
		lea	eax, [edi+ebx*2]
		sub	ecx, ebx
		lea	edx, [ebp-4]
		push	ecx
		push	eax
		push	edx
		call	loc_437428
		add	esp, 0Ch

loc_437380:				; CODE XREF: .text:00437368j
		test	eax, eax
		jnz	short loc_43738B
		xor	eax, eax
		jmp	loc_437422
; ---------------------------------------------------------------------------

loc_43738B:				; CODE XREF: .text:00437382j
		add	ebx, eax
		push	offset asc_52F40E ; "()"
		mov	edx, [ebp+10h]
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_437412
; ---------------------------------------------------------------------------

loc_4373A8:				; CODE XREF: .text:00437319j
					; .text:00437327j
		xor	esi, esi
		mov	eax, offset off_52F014

loc_4373AF:				; CODE XREF: .text:004373D0j
		mov	ecx, [ebp-4]
		mov	edx, [eax]
		mov	cx, [ecx]
		cmp	cx, [edx]
		jnz	short loc_4373C9
		mov	ecx, [ebp-4]
		mov	cx, [ecx+2]
		cmp	cx, [edx+2]
		jz	short loc_4373D2

loc_4373C9:				; CODE XREF: .text:004373BAj
		inc	esi
		add	eax, 0Ch
		cmp	esi, 2Fh
		jl	short loc_4373AF

loc_4373D2:				; CODE XREF: .text:004373C7j
		cmp	esi, 2Fh
		jl	short loc_4373DB
		xor	eax, eax
		jmp	short loc_437422
; ---------------------------------------------------------------------------

loc_4373DB:				; CODE XREF: .text:004373D5j
		add	dword ptr [ebp-4], 4
		push	offset aOperator ; "operator "
		mov	edx, [ebp+10h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [esi+esi*2]
		mov	edx, off_52F018[eax*4]
		push	edx		; src
		mov	ecx, [ebp+10h]
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_437412:				; CODE XREF: .text:004371F6j
					; .text:00437221j ...
		mov	word ptr [edi+ebx*2], 0
		mov	eax, ebx
		mov	edx, [ebp+8]
		mov	ecx, [ebp-4]
		mov	[edx], ecx

loc_437422:				; CODE XREF: .text:004371EBj
					; .text:00437207j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_437428:				; CODE XREF: .text:00437378p
					; .text:00437B30p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDECh
		xor	ecx, ecx
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-10h]
		mov	eax, [ebp+8]
		xor	ebx, ebx
		mov	edx, [eax]
		xor	eax, eax
		mov	[edi], edx
		mov	[ebp-8], ecx
		mov	[ebp-14h], eax
		mov	eax, [edi]
		cmp	word ptr [eax],	50h
		jnz	short loc_43745E
		mov	dword ptr [ebp-14h], (offset asc_52F3E4+4) ; "*"
		add	dword ptr [edi], 2
		jmp	short loc_437484
; ---------------------------------------------------------------------------

loc_43745E:				; CODE XREF: .text:00437450j
		mov	edx, [edi]
		cmp	word ptr [edx],	52h
		jnz	short loc_437472
		mov	dword ptr [ebp-14h], offset asc_52F3AC ; "&"
		add	dword ptr [edi], 2
		jmp	short loc_437484
; ---------------------------------------------------------------------------

loc_437472:				; CODE XREF: .text:00437464j
		mov	ecx, [edi]
		cmp	word ptr [ecx],	4Fh
		jnz	short loc_437484
		mov	dword ptr [ebp-14h], offset asc_52F514 ; "&&"
		add	dword ptr [edi], 2

loc_437484:				; CODE XREF: .text:0043745Cj
					; .text:00437470j ...
		mov	eax, [edi]
		cmp	word ptr [eax],	56h
		jnz	short loc_43748F
		add	dword ptr [edi], 2

loc_43748F:				; CODE XREF: .text:0043748Aj
		mov	edx, [edi]
		cmp	word ptr [edx],	4Bh
		jnz	loc_43753B
		add	dword ptr [edi], 2
		jmp	loc_43753B
; ---------------------------------------------------------------------------

loc_4374A3:				; CODE XREF: .text:00437541j
		add	dword ptr [edi], 2
		mov	eax, ebx
		mov	ecx, 100h
		lea	edx, [ebp-214h]
		sub	ecx, ebx
		add	eax, eax
		push	offset asc_52F964 ; "["
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		mov	ecx, [edi]
		add	esp, 0Ch
		add	ebx, eax
		cmp	word ptr [ecx],	30h
		jnz	short loc_4374D5
		add	dword ptr [edi], 2

loc_4374D5:				; CODE XREF: .text:004374D0j
		lea	esi, [ebp+ebx*2-214h]
		jmp	short loc_4374F5
; ---------------------------------------------------------------------------

loc_4374DE:				; CODE XREF: .text:00437503j
		cmp	ebx, 0FFh
		jge	short loc_4374F2
		mov	eax, [edi]
		inc	ebx
		mov	dx, [eax]
		mov	[esi], dx
		add	esi, 2

loc_4374F2:				; CODE XREF: .text:004374E4j
		add	dword ptr [edi], 2

loc_4374F5:				; CODE XREF: .text:004374DCj
		mov	ecx, [edi]
		mov	ax, [ecx]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4374DE
		mov	edx, [edi]
		cmp	word ptr [edx],	5Fh
		jz	short loc_437514
		xor	eax, eax
		jmp	loc_43764A
; ---------------------------------------------------------------------------

loc_437514:				; CODE XREF: .text:0043750Bj
		mov	ecx, ebx
		mov	edx, 100h
		sub	edx, ebx
		lea	eax, [ebp-214h]
		add	ecx, ecx
		push	(offset	aDelete+0Eh) ; src
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [edi], 2

loc_43753B:				; CODE XREF: .text:00437495j
					; .text:0043749Ej
		mov	edx, [edi]
		cmp	word ptr [edx],	41h
		jz	loc_4374A3
		mov	ecx, [edi]
		mov	ax, [ecx]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_437580
		mov	edx, [ebp+10h]
		sub	edx, [ebp-8]
		push	edx
		mov	ecx, [ebp-8]
		add	ecx, ecx
		add	ecx, [ebp+0Ch]
		push	ecx
		push	edi
		call	loc_437190
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43757B
		xor	eax, eax
		jmp	loc_43764A
; ---------------------------------------------------------------------------

loc_43757B:				; CODE XREF: .text:00437572j
		add	[ebp-8], eax
		jmp	short loc_4375F5
; ---------------------------------------------------------------------------

loc_437580:				; CODE XREF: .text:00437555j
		xor	edx, edx
		mov	esi, offset off_52F248
		mov	[ebp-4], edx

loc_43758A:				; CODE XREF: .text:004375B6j
		mov	eax, [esi]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0Ch]
		push	edx		; maxlen
		mov	ecx, [esi]
		push	ecx		; s2
		mov	eax, [edi]
		push	eax		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4375B8
		inc	dword ptr [ebp-4]
		add	esi, 0Ch
		cmp	dword ptr [ebp-4], 14h
		jl	short loc_43758A

loc_4375B8:				; CODE XREF: .text:004375AAj
		cmp	dword ptr [ebp-4], 14h
		jl	short loc_4375C5
		xor	eax, eax
		jmp	loc_43764A
; ---------------------------------------------------------------------------

loc_4375C5:				; CODE XREF: .text:004375BCj
		mov	edx, [ebp-4]
		lea	edx, [edx+edx*2]
		mov	ecx, off_52F24C[edx*4]
		push	ecx		; src
		mov	eax, [ebp+10h]
		sub	eax, [ebp-8]
		push	eax		; n
		mov	edx, [ebp-8]
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-8], eax
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	[edi], ecx

loc_4375F5:				; CODE XREF: .text:0043757Ej
		test	ebx, ebx
		jle	short loc_43761B
		lea	eax, [ebp-214h]
		push	eax		; src
		mov	edx, [ebp+10h]
		sub	edx, [ebp-8]
		push	edx		; n
		mov	ecx, [ebp-8]
		add	ecx, ecx
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-8], eax

loc_43761B:				; CODE XREF: .text:004375F7j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_437640
		mov	eax, [ebp-14h]
		push	eax		; src
		mov	edx, [ebp+10h]
		sub	edx, [ebp-8]
		push	edx		; n
		mov	ecx, [ebp-8]
		add	ecx, ecx
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-8], eax

loc_437640:				; CODE XREF: .text:0043761Fj
		mov	eax, [ebp+8]
		mov	edx, [edi]
		mov	[eax], edx
		mov	eax, [ebp-8]

loc_43764A:				; CODE XREF: .text:0043750Fj
					; .text:00437576j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_437654:				; CODE XREF: .text:004379C2p
					; .text:00437D3Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		mov	eax, [ebp+8]
		or	esi, 0FFFFFFFFh
		xor	ebx, ebx
		mov	edx, [eax]
		mov	[ebp-4], edx
		add	dword ptr [ebp-4], 2
		mov	eax, [ebp-4]
		cmp	word ptr [eax],	56h
		jnz	short loc_43767D
		add	dword ptr [ebp-4], 2

loc_43767D:				; CODE XREF: .text:00437677j
		mov	edx, [ebp-4]
		cmp	word ptr [edx],	4Bh
		jnz	short loc_43768A
		add	dword ptr [ebp-4], 2

loc_43768A:				; CODE XREF: .text:00437684j
					; .text:00437701j ...
		mov	ecx, [ebp-4]
		cmp	word ptr [ecx],	45h
		jnz	short loc_4376A7
		test	edi, edi
		jnz	short loc_43769E
		xor	eax, eax
		jmp	loc_4378DE
; ---------------------------------------------------------------------------

loc_43769E:				; CODE XREF: .text:00437695j
		add	dword ptr [ebp-4], 2
		jmp	loc_4378D4
; ---------------------------------------------------------------------------

loc_4376A7:				; CODE XREF: .text:00437691j
		mov	edx, [ebp-4]
		cmp	word ptr [edx],	53h
		jnz	short loc_437703
		mov	ecx, [ebp-4]
		cmp	word ptr [ecx+2], 74h
		jnz	short loc_437703
		test	edi, edi
		jle	short loc_4376DB
		push	offset asc_52F968 ; "::"
		mov	edx, ebx
		mov	eax, [ebp+10h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4376DB:				; CODE XREF: .text:004376BCj
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	offset aStd_0	; "std"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		mov	esi, ebx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-4], 4
		inc	edi
		jmp	short loc_43768A
; ---------------------------------------------------------------------------

loc_437703:				; CODE XREF: .text:004376AEj
					; .text:004376B8j
		mov	ecx, [ebp-4]
		cmp	word ptr [ecx],	43h
		jnz	loc_437797
		mov	eax, [ebp-4]
		mov	dx, [eax+2]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_437797
		test	edi, edi
		jle	short loc_437797
		test	esi, esi
		jl	short loc_437797
		test	edi, edi
		jle	short loc_43774B
		push	offset asc_52F968 ; "::"
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_43774B:				; CODE XREF: .text:0043772Cj
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+ebx*2]
		mov	[ebp-8], ecx
		mov	eax, [ebp+0Ch]
		lea	eax, [eax+esi*2]
		jmp	short loc_43776D
; ---------------------------------------------------------------------------

loc_43775C:				; CODE XREF: .text:0043777Fj
		mov	cx, [eax]
		mov	edx, [ebp-8]
		add	eax, 2
		inc	ebx
		mov	[edx], cx
		add	dword ptr [ebp-8], 2

loc_43776D:				; CODE XREF: .text:0043775Aj
		mov	edx, [ebp+10h]
		dec	edx
		cmp	ebx, edx
		jge	short loc_437781
		cmp	word ptr [eax],	3Ah
		jz	short loc_437781
		cmp	word ptr [eax],	3Ch
		jnz	short loc_43775C

loc_437781:				; CODE XREF: .text:00437773j
					; .text:00437779j
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax+ebx*2], 0
		or	esi, 0FFFFFFFFh
		add	dword ptr [ebp-4], 4
		inc	edi
		jmp	loc_43768A
; ---------------------------------------------------------------------------

loc_437797:				; CODE XREF: .text:0043770Aj
					; .text:00437720j ...
		mov	eax, [ebp-4]
		cmp	word ptr [eax],	44h
		jnz	loc_437854
		mov	edx, [ebp-4]
		mov	cx, [edx+2]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	loc_437854
		test	edi, edi
		jle	loc_437854
		test	esi, esi
		jl	loc_437854
		test	edi, edi
		jle	short loc_4377EB
		push	offset asc_52F968 ; "::"
		mov	edx, ebx
		mov	eax, [ebp+10h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4377EB:				; CODE XREF: .text:004377CCj
		push	offset asc_52F422 ; "~"
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+ebx*2]
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp+0Ch]
		lea	eax, [eax+esi*2]
		jmp	short loc_43782A
; ---------------------------------------------------------------------------

loc_437819:				; CODE XREF: .text:0043783Cj
		mov	dx, [eax]
		mov	ecx, [ebp-0Ch]
		add	eax, 2
		inc	ebx
		mov	[ecx], dx
		add	dword ptr [ebp-0Ch], 2

loc_43782A:				; CODE XREF: .text:00437817j
		mov	edx, [ebp+10h]
		dec	edx
		cmp	ebx, edx
		jge	short loc_43783E
		cmp	word ptr [eax],	3Ah
		jz	short loc_43783E
		cmp	word ptr [eax],	3Ch
		jnz	short loc_437819

loc_43783E:				; CODE XREF: .text:00437830j
					; .text:00437836j
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax+ebx*2], 0
		or	esi, 0FFFFFFFFh
		add	dword ptr [ebp-4], 4
		inc	edi
		jmp	loc_43768A
; ---------------------------------------------------------------------------

loc_437854:				; CODE XREF: .text:0043779Ej
					; .text:004377B4j ...
		mov	eax, [ebp-4]
		cmp	word ptr [eax],	49h
		jnz	short loc_437887
		mov	edx, [ebp+10h]
		mov	ecx, ebx
		sub	edx, ebx
		add	ecx, ecx
		push	edx
		lea	eax, [ebp-4]
		add	ecx, [ebp+0Ch]
		push	ecx
		push	eax
		call	loc_4378E8
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43787F
		xor	eax, eax
		jmp	short loc_4378DE
; ---------------------------------------------------------------------------

loc_43787F:				; CODE XREF: .text:00437879j
		add	ebx, eax
		inc	edi
		jmp	loc_43768A
; ---------------------------------------------------------------------------

loc_437887:				; CODE XREF: .text:0043785Bj
		test	edi, edi
		jle	short loc_4378A8
		push	offset asc_52F968 ; "::"
		mov	ecx, ebx
		mov	edx, [ebp+10h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4378A8:				; CODE XREF: .text:00437889j
		mov	eax, [ebp+10h]
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax
		lea	ecx, [ebp-4]
		add	edx, [ebp+0Ch]
		mov	esi, ebx
		push	edx
		push	ecx
		call	loc_437190
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4378CC
		xor	eax, eax
		jmp	short loc_4378DE
; ---------------------------------------------------------------------------

loc_4378CC:				; CODE XREF: .text:004378C6j
		add	ebx, eax
		inc	edi
		jmp	loc_43768A
; ---------------------------------------------------------------------------

loc_4378D4:				; CODE XREF: .text:004376A2j
		mov	edx, [ebp+8]
		mov	ecx, [ebp-4]
		mov	[edx], ecx
		mov	eax, ebx

loc_4378DE:				; CODE XREF: .text:00437699j
					; .text:0043787Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4378E8:				; CODE XREF: .text:0043786Fp
					; .text:0043798Fp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-8]
		mov	eax, [ebp+8]
		xor	ebx, ebx
		mov	ecx, ebx
		add	ecx, ecx
		mov	edx, [eax]
		mov	[esi], edx
		xor	eax, eax
		add	dword ptr [esi], 2
		mov	[ebp-4], eax
		mov	edx, 100h
		push	(offset	asc_52F54A+2) ;	src
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_437924:				; CODE XREF: .text:00437B6Aj
		mov	eax, [esi]
		cmp	word ptr [eax],	45h
		jnz	short loc_437953
		mov	edx, 100h
		mov	ecx, ebx
		sub	edx, ebx
		push	(offset	asc_52F3CE+2) ;	src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 2
		jmp	loc_437B6F
; ---------------------------------------------------------------------------

loc_437953:				; CODE XREF: .text:0043792Aj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_437978
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_52F436 ; ","
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_437978:				; CODE XREF: .text:00437957j
		mov	ecx, [esi]
		cmp	word ptr [ecx],	49h
		jnz	short loc_4379AB
		mov	eax, [ebp+10h]
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax
		add	edx, [ebp+0Ch]
		push	edx
		push	esi
		call	loc_4378E8
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4379A4
		xor	eax, eax
		jmp	loc_437B78
; ---------------------------------------------------------------------------

loc_4379A4:				; CODE XREF: .text:0043799Bj
		add	ebx, edi
		jmp	loc_437B67
; ---------------------------------------------------------------------------

loc_4379AB:				; CODE XREF: .text:0043797Ej
		mov	edx, [esi]
		cmp	word ptr [edx],	4Eh
		jnz	short loc_4379DE
		mov	ecx, [ebp+10h]
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx
		add	eax, [ebp+0Ch]
		push	eax
		push	esi
		call	loc_437654
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4379D7
		xor	eax, eax
		jmp	loc_437B78
; ---------------------------------------------------------------------------

loc_4379D7:				; CODE XREF: .text:004379CEj
		add	ebx, edi
		jmp	loc_437B67
; ---------------------------------------------------------------------------

loc_4379DE:				; CODE XREF: .text:004379B1j
		mov	edx, [esi]
		cmp	word ptr [edx],	4Ch
		jnz	short loc_437A28
		mov	ecx, [esi]
		cmp	word ptr [ecx+2], 62h
		jnz	short loc_437A28
		mov	eax, [esi]
		cmp	word ptr [eax+4], 30h
		jnz	short loc_437A28
		mov	edx, [esi]
		cmp	word ptr [edx+6], 45h
		jnz	short loc_437A28
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aFalse_2	; "false"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 8
		jmp	loc_437B67
; ---------------------------------------------------------------------------

loc_437A28:				; CODE XREF: .text:004379E4j
					; .text:004379EDj ...
		mov	edx, [esi]
		cmp	word ptr [edx],	4Ch
		jnz	short loc_437A72
		mov	ecx, [esi]
		cmp	word ptr [ecx+2], 62h
		jnz	short loc_437A72
		mov	eax, [esi]
		cmp	word ptr [eax+4], 31h
		jnz	short loc_437A72
		mov	edx, [esi]
		cmp	word ptr [edx+6], 45h
		jnz	short loc_437A72
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		push	offset aTrue_1	; "true"
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 8
		jmp	loc_437B67
; ---------------------------------------------------------------------------

loc_437A72:				; CODE XREF: .text:00437A2Ej
					; .text:00437A37j ...
		mov	edx, [esi]
		cmp	word ptr [edx],	4Ch
		jnz	loc_437B1F
		mov	ecx, [esi]
		mov	ax, [ecx+2]
		cmp	ax, 63h
		jz	short loc_437ACC
		cmp	ax, 61h
		jz	short loc_437ACC
		cmp	ax, 68h
		jz	short loc_437ACC
		cmp	ax, 73h
		jz	short loc_437ACC
		cmp	ax, 74h
		jz	short loc_437ACC
		cmp	ax, 69h
		jz	short loc_437ACC
		cmp	ax, 6Ah
		jz	short loc_437ACC
		cmp	ax, 6Ch
		jz	short loc_437ACC
		cmp	ax, 6Dh
		jz	short loc_437ACC
		cmp	ax, 78h
		jz	short loc_437ACC
		cmp	ax, 79h
		jz	short loc_437ACC
		cmp	ax, 77h
		jnz	short loc_437B1F

loc_437ACC:				; CODE XREF: .text:00437A88j
					; .text:00437A8Ej ...
		add	dword ptr [esi], 4
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+ebx*2]
		mov	[ebp-0Ch], ecx
		jmp	short loc_437AF5
; ---------------------------------------------------------------------------

loc_437ADA:				; CODE XREF: .text:00437B03j
		cmp	ebx, 0FFh
		jge	short loc_437AF2
		mov	eax, [esi]
		mov	ecx, [ebp-0Ch]
		inc	ebx
		mov	dx, [eax]
		mov	[ecx], dx
		add	dword ptr [ebp-0Ch], 2

loc_437AF2:				; CODE XREF: .text:00437AE0j
		add	dword ptr [esi], 2

loc_437AF5:				; CODE XREF: .text:00437AD8j
		mov	eax, [esi]
		mov	dx, [eax]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_437ADA
		mov	ecx, [ebp+0Ch]
		mov	word ptr [ecx+ebx*2], 0
		mov	eax, [esi]
		cmp	word ptr [eax],	45h
		jz	short loc_437B1A
		xor	eax, eax
		jmp	short loc_437B78
; ---------------------------------------------------------------------------

loc_437B1A:				; CODE XREF: .text:00437B14j
		add	dword ptr [esi], 2
		jmp	short loc_437B67
; ---------------------------------------------------------------------------

loc_437B1F:				; CODE XREF: .text:00437A78j
					; .text:00437ACAj
		mov	edx, 100h
		mov	ecx, ebx
		sub	edx, ebx
		add	ecx, ecx
		push	edx
		add	ecx, [ebp+0Ch]
		push	ecx
		push	esi
		call	loc_437428
		add	esp, 0Ch
		mov	edi, eax
		test	eax, eax
		jz	short loc_437B42
		add	ebx, edi
		jmp	short loc_437B67
; ---------------------------------------------------------------------------

loc_437B42:				; CODE XREF: .text:00437B3Cj
		mov	edx, 100h
		mov	ecx, ebx
		sub	edx, ebx
		add	ecx, ecx
		push	edx
		add	ecx, [ebp+0Ch]
		push	ecx
		push	esi
		call	loc_437190
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jnz	short loc_437B65
		xor	eax, eax
		jmp	short loc_437B78
; ---------------------------------------------------------------------------

loc_437B65:				; CODE XREF: .text:00437B5Fj
		add	ebx, edi

loc_437B67:				; CODE XREF: .text:004379A6j
					; .text:004379D9j ...
		inc	dword ptr [ebp-4]
		jmp	loc_437924
; ---------------------------------------------------------------------------

loc_437B6F:				; CODE XREF: .text:0043794Ej
		mov	edx, [ebp+8]
		mov	ecx, [esi]
		mov	[edx], ecx
		mov	eax, ebx

loc_437B78:				; CODE XREF: .text:0043799Fj
					; .text:004379D2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_437B80:				; CODE XREF: .text:00439F12p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		lea	esi, [ebp+8]
		push	edi
		xor	ebx, ebx
		mov	edi, [ebp+0Ch]
		mov	eax, [esi]
		cmp	word ptr [eax],	5Ah
		jnz	short loc_437B99
		add	dword ptr [esi], 2

loc_437B99:				; CODE XREF: .text:00437B94j
		mov	edx, [esi]
		cmp	word ptr [edx],	54h
		jnz	short loc_437BCD
		mov	ecx, [esi]
		cmp	word ptr [ecx+2], 49h
		jnz	short loc_437BCD
		push	offset aTypeinfo_ ; "typeinfo_"
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 4
		jmp	loc_437D29
; ---------------------------------------------------------------------------

loc_437BCD:				; CODE XREF: .text:00437B9Fj
					; .text:00437BA8j
		mov	ecx, [esi]
		cmp	word ptr [ecx],	54h
		jnz	short loc_437C01
		mov	eax, [esi]
		cmp	word ptr [eax+2], 53h
		jnz	short loc_437C01
		push	offset aTypename_ ; "typename_"
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 4
		jmp	loc_437D29
; ---------------------------------------------------------------------------

loc_437C01:				; CODE XREF: .text:00437BD3j
					; .text:00437BDCj
		mov	eax, [esi]
		cmp	word ptr [eax],	54h
		jnz	short loc_437C35
		mov	edx, [esi]
		cmp	word ptr [edx+2], 56h
		jnz	short loc_437C35
		push	offset aVtable_	; "vtable_"
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 4
		jmp	loc_437D29
; ---------------------------------------------------------------------------

loc_437C35:				; CODE XREF: .text:00437C07j
					; .text:00437C10j
		mov	edx, [esi]
		cmp	word ptr [edx],	54h
		jnz	short loc_437C69
		mov	ecx, [esi]
		cmp	word ptr [ecx+2], 43h
		jnz	short loc_437C69
		push	offset aCvtable_ ; "cvtable_"
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 4
		jmp	loc_437D29
; ---------------------------------------------------------------------------

loc_437C69:				; CODE XREF: .text:00437C3Bj
					; .text:00437C44j
		mov	ecx, [esi]
		cmp	word ptr [ecx],	54h
		jnz	short loc_437CBA
		mov	eax, [esi]
		cmp	word ptr [eax+2], 68h
		jnz	short loc_437CBA
		push	offset aThunk_	; "thunk_"
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 4
		jmp	short loc_437C9D
; ---------------------------------------------------------------------------

loc_437C9A:				; CODE XREF: .text:00437CABj
		add	dword ptr [esi], 2

loc_437C9D:				; CODE XREF: .text:00437C98j
		mov	eax, [esi]
		mov	ax, [eax]
		cmp	ax, 5Fh
		jz	short loc_437CAD
		test	ax, ax
		jnz	short loc_437C9A

loc_437CAD:				; CODE XREF: .text:00437CA6j
		mov	edx, [esi]
		cmp	word ptr [edx],	5Fh
		jnz	short loc_437D29
		add	dword ptr [esi], 2
		jmp	short loc_437D29
; ---------------------------------------------------------------------------

loc_437CBA:				; CODE XREF: .text:00437C6Fj
					; .text:00437C78j
		mov	ecx, [esi]
		cmp	word ptr [ecx],	54h
		jnz	short loc_437D29
		mov	eax, [esi]
		cmp	word ptr [eax+2], 76h
		jnz	short loc_437D29
		push	offset aVthunk_	; "vthunk_"
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [esi], 4
		jmp	short loc_437CEE
; ---------------------------------------------------------------------------

loc_437CEB:				; CODE XREF: .text:00437CFCj
		add	dword ptr [esi], 2

loc_437CEE:				; CODE XREF: .text:00437CE9j
		mov	eax, [esi]
		mov	ax, [eax]
		cmp	ax, 5Fh
		jz	short loc_437CFE
		test	ax, ax
		jnz	short loc_437CEB

loc_437CFE:				; CODE XREF: .text:00437CF7j
		mov	edx, [esi]
		cmp	word ptr [edx],	5Fh
		jnz	short loc_437D0E
		add	dword ptr [esi], 2
		jmp	short loc_437D0E
; ---------------------------------------------------------------------------

loc_437D0B:				; CODE XREF: .text:00437D1Cj
		add	dword ptr [esi], 2

loc_437D0E:				; CODE XREF: .text:00437D04j
					; .text:00437D09j
		mov	ecx, [esi]
		mov	ax, [ecx]
		cmp	ax, 5Fh
		jz	short loc_437D1E
		test	ax, ax
		jnz	short loc_437D0B

loc_437D1E:				; CODE XREF: .text:00437D17j
		mov	edx, [esi]
		cmp	word ptr [edx],	5Fh
		jnz	short loc_437D29
		add	dword ptr [esi], 2

loc_437D29:				; CODE XREF: .text:00437BC8j
					; .text:00437BFCj ...
		mov	ecx, [esi]
		cmp	word ptr [ecx],	4Eh
		jnz	short loc_437D48
		mov	eax, 100h
		lea	edi, [edi+ebx*2]
		sub	eax, ebx
		push	eax
		push	edi
		push	esi
		call	loc_437654
		add	esp, 0Ch
		jmp	short loc_437D5D
; ---------------------------------------------------------------------------

loc_437D48:				; CODE XREF: .text:00437D2Fj
		mov	eax, 100h
		lea	edi, [edi+ebx*2]
		sub	eax, ebx
		push	eax
		push	edi
		push	esi
		call	loc_437190
		add	esp, 0Ch

loc_437D5D:				; CODE XREF: .text:00437D46j
		test	eax, eax
		jnz	short loc_437D65
		xor	eax, eax
		jmp	short loc_437D69
; ---------------------------------------------------------------------------

loc_437D65:				; CODE XREF: .text:00437D5Fj
		add	ebx, eax
		mov	eax, ebx

loc_437D69:				; CODE XREF: .text:00437D63j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_437D70:				; CODE XREF: .text:00438263p
					; .text:00438729p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBECh
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		mov	ebx, [eax]
		xor	eax, eax
		mov	[ebp-0Ch], eax
		mov	[ebp-8], eax

loc_437D89:				; CODE XREF: .text:00437D92j
					; .text:00437D9Dj ...
		cmp	word ptr [ebx],	78h
		jnz	short loc_437D94
		add	ebx, 2
		jmp	short loc_437D89
; ---------------------------------------------------------------------------

loc_437D94:				; CODE XREF: .text:00437D8Dj
		cmp	word ptr [ebx],	77h
		jnz	short loc_437D9F
		add	ebx, 2
		jmp	short loc_437D89
; ---------------------------------------------------------------------------

loc_437D9F:				; CODE XREF: .text:00437D98j
		mov	ax, [ebx]
		cmp	ax, 70h
		jz	short loc_437DAE
		cmp	ax, 72h
		jnz	short loc_437DFB

loc_437DAE:				; CODE XREF: .text:00437DA6j
		cmp	dword ptr [ebp-8], 0FFh
		jl	short loc_437DBE
		xor	eax, eax
		jmp	loc_4380C9
; ---------------------------------------------------------------------------

loc_437DBE:				; CODE XREF: .text:00437DB5j
		mov	edx, [ebp-8]
		lea	ecx, [ebp-214h]
		add	edx, edx
		lea	eax, [ebp-212h]
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		mov	dx, 2Ah
		cmp	word ptr [ebx],	70h
		jz	short loc_437DE7
		add	edx, 0FFFFFFFCh

loc_437DE7:				; CODE XREF: .text:00437DE2j
		mov	[ebp-214h], dx
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		inc	dword ptr [ebp-8]
		add	ebx, 2
		jmp	short loc_437D89
; ---------------------------------------------------------------------------

loc_437DFB:				; CODE XREF: .text:00437DACj
		cmp	word ptr [ebx],	61h
		jnz	loc_437EDA
		add	ebx, 2
		cmp	word ptr [ebx],	30h
		jnz	short loc_437E11
		add	ebx, 2

loc_437E11:				; CODE XREF: .text:00437E0Cj
		xor	esi, esi
		mov	edi, ebx
		jmp	short loc_437E1B
; ---------------------------------------------------------------------------

loc_437E17:				; CODE XREF: .text:00437E27j
		inc	esi
		add	edi, 2

loc_437E1B:				; CODE XREF: .text:00437E15j
		mov	ax, [edi]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_437E17
		mov	edx, [ebp-8]
		add	edx, esi
		add	edx, 2
		cmp	edx, 100h
		jl	short loc_437E40
		xor	eax, eax
		jmp	loc_4380C9
; ---------------------------------------------------------------------------

loc_437E40:				; CODE XREF: .text:00437E37j
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-8]
		jge	short loc_437E7B
		mov	ecx, [ebp-8]
		lea	edx, [ebp-214h]
		sub	ecx, [ebp-0Ch]
		add	ecx, ecx
		push	ecx		; n
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	eax, edx
		lea	edx, [ebp-210h]
		push	eax		; src
		mov	eax, esi
		mov	ecx, [ebp-0Ch]
		add	eax, eax
		add	ecx, ecx
		add	ecx, eax
		add	ecx, edx
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch

loc_437E7B:				; CODE XREF: .text:00437E46j
		mov	ecx, [ebp-0Ch]
		xor	edi, edi
		mov	word ptr [ebp+ecx*2-214h], 5Bh
		inc	dword ptr [ebp-0Ch]
		cmp	esi, edi
		mov	eax, [ebp-0Ch]
		lea	eax, [ebp+eax*2-214h]
		jle	short loc_437EAF

loc_437E9B:				; CODE XREF: .text:00437EADj
		mov	dx, [ebx]
		add	ebx, 2
		mov	[eax], dx
		add	eax, 2
		inc	dword ptr [ebp-0Ch]
		inc	edi
		cmp	esi, edi
		jg	short loc_437E9B

loc_437EAF:				; CODE XREF: .text:00437E99j
		mov	ecx, [ebp-0Ch]
		mov	word ptr [ebp+ecx*2-214h], 5Dh
		inc	dword ptr [ebp-0Ch]
		cmp	word ptr [ebx],	24h
		jz	short loc_437ECC
		xor	eax, eax
		jmp	loc_4380C9
; ---------------------------------------------------------------------------

loc_437ECC:				; CODE XREF: .text:00437EC3j
		add	ebx, 2
		lea	edx, [esi+2]
		add	[ebp-8], edx
		jmp	loc_437D89
; ---------------------------------------------------------------------------

loc_437EDA:				; CODE XREF: .text:00437DFFj
		mov	ecx, [ebp-8]
		xor	eax, eax
		mov	word ptr [ebp+ecx*2-214h], 0
		mov	[ebp-4], eax
		cmp	word ptr [ebx],	74h
		jnz	short loc_437F04
		mov	dx, [ebx+2]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_437F04
		add	ebx, 2

loc_437F04:				; CODE XREF: .text:00437EF0j
					; .text:00437EFFj
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	loc_437FC6
		xor	esi, esi
		jmp	short loc_437F2E
; ---------------------------------------------------------------------------

loc_437F1A:				; CODE XREF: .text:00437F3Aj
		movzx	edx, word ptr [ebx]
		mov	eax, esi
		add	eax, eax
		lea	eax, [eax+eax*4]
		add	eax, edx
		add	eax, 0FFFFFFD0h
		add	ebx, 2
		mov	esi, eax

loc_437F2E:				; CODE XREF: .text:00437F18j
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_437F1A
		test	esi, esi
		jz	short loc_437F48
		cmp	esi, 100h
		jl	short loc_437F4F

loc_437F48:				; CODE XREF: .text:00437F3Ej
		xor	eax, eax
		jmp	loc_4380C9
; ---------------------------------------------------------------------------

loc_437F4F:				; CODE XREF: .text:00437F46j
		xor	edi, edi
		lea	eax, [ebp-414h]
		cmp	esi, edi
		jle	short loc_437F79

loc_437F5B:				; CODE XREF: .text:00437F77j
		cmp	word ptr [ebx],	0
		jnz	short loc_437F68
		xor	eax, eax
		jmp	loc_4380C9
; ---------------------------------------------------------------------------

loc_437F68:				; CODE XREF: .text:00437F5Fj
		mov	dx, [ebx]
		mov	[eax], dx
		add	ebx, 2
		inc	edi
		add	eax, 2
		cmp	esi, edi
		jg	short loc_437F5B

loc_437F79:				; CODE XREF: .text:00437F59j
		mov	word ptr [ebp+esi*2-414h], 0
		lea	ecx, [ebp-414h]
		mov	[ebp-10h], ecx
		mov	eax, [ebp+10h]
		sub	eax, [ebp-4]
		push	eax
		mov	edx, [ebp-4]
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx
		lea	ecx, [ebp-10h]
		push	ecx
		call	loc_438108
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_437FB5
		xor	eax, eax
		jmp	loc_4380C9
; ---------------------------------------------------------------------------

loc_437FB5:				; CODE XREF: .text:00437FACj
		add	[ebp-4], esi
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp-4]
		mov	word ptr [edx+ecx*2], 0
		jmp	short loc_438033
; ---------------------------------------------------------------------------

loc_437FC6:				; CODE XREF: .text:00437F10j
		mov	dword ptr [ebp-14h], offset off_52F244
		xor	edi, edi

loc_437FCF:				; CODE XREF: .text:00437FF9j
		mov	eax, [ebp-14h]
		mov	edx, [eax]
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		push	esi		; maxlen
		mov	eax, [ebp-14h]
		mov	edx, [eax]
		push	edx		; s2
		push	ebx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_437FFB
		inc	edi
		add	dword ptr [ebp-14h], 0Ch
		cmp	edi, 14h
		jl	short loc_437FCF

loc_437FFB:				; CODE XREF: .text:00437FEFj
		cmp	edi, 14h
		jge	short loc_43802C
		lea	ecx, [edi+edi*2]
		add	esi, esi
		add	ebx, esi
		mov	eax, off_52F24C[ecx*4]
		push	eax		; src
		mov	edx, [ebp+10h]
		sub	edx, [ebp-4]
		push	edx		; n
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		jmp	short loc_438033
; ---------------------------------------------------------------------------

loc_43802C:				; CODE XREF: .text:00437FFEj
		xor	eax, eax
		jmp	loc_4380C9
; ---------------------------------------------------------------------------

loc_438033:				; CODE XREF: .text:00437FC4j
					; .text:0043802Aj
		cmp	word ptr [ebx],	24h
		jnz	short loc_438099
		mov	ax, [ebx+2]
		cmp	ax, 69h
		jz	short loc_438049
		cmp	ax, 65h
		jnz	short loc_438099

loc_438049:				; CODE XREF: .text:00438041j
		add	ebx, 4
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp+0Ch]
		mov	edx, ecx
		jmp	short loc_43806D
; ---------------------------------------------------------------------------

loc_438058:				; CODE XREF: .text:00438079j
		mov	ecx, [ebp+10h]
		dec	ecx
		cmp	ecx, [ebp-4]
		jle	short loc_43806A
		mov	[edx], ax
		inc	dword ptr [ebp-4]
		add	edx, 2

loc_43806A:				; CODE XREF: .text:0043805Fj
		add	ebx, 2

loc_43806D:				; CODE XREF: .text:00438056j
		mov	ax, [ebx]
		cmp	ax, 24h
		jz	short loc_43807B
		test	ax, ax
		jnz	short loc_438058

loc_43807B:				; CODE XREF: .text:00438074j
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp-4]
		mov	word ptr [eax+edx*2], 0
		cmp	word ptr [ebx],	24h
		jz	short loc_438091
		xor	eax, eax
		jmp	short loc_4380C9
; ---------------------------------------------------------------------------

loc_438091:				; CODE XREF: .text:0043808Bj
		xor	edx, edx
		add	ebx, 2
		mov	[ebp-8], edx

loc_438099:				; CODE XREF: .text:00438037j
					; .text:00438047j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_4380C1
		lea	ecx, [ebp-214h]
		push	ecx		; src
		mov	eax, [ebp+10h]
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax

loc_4380C1:				; CODE XREF: .text:0043809Dj
		mov	ecx, [ebp+8]
		mov	[ecx], ebx
		mov	eax, [ebp-4]

loc_4380C9:				; CODE XREF: .text:00437DB9j
					; .text:00437E3Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4380D0:				; CODE XREF: .text:00438749p
					; .text:00438941p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	word ptr [eax],	24h
		jz	short loc_4380E0
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4380E0:				; CODE XREF: .text:004380DAj
		add	eax, 2
		cmp	word ptr [eax],	78h
		jnz	short loc_4380EC
		add	eax, 2

loc_4380EC:				; CODE XREF: .text:004380E7j
		cmp	word ptr [eax],	77h
		jnz	short loc_4380F5
		add	eax, 2

loc_4380F5:				; CODE XREF: .text:004380F0j
		mov	edx, 1
		cmp	word ptr [eax],	71h
		jz	short loc_438101
		dec	edx

loc_438101:				; CODE XREF: .text:004380FEj
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_438108:				; CODE XREF: .text:00437FA0p
					; .text:004381FFp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF0h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	[ebp-0Ch], edx
		xor	ebx, ebx
		mov	word ptr [ebp-410h], 0
		push	4		; maxlen
		push	offset aXp	; "$xp$"
		mov	eax, [ebp-0Ch]
		push	eax		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_43821B
		push	offset aTpdsc	; "tpdsc "
		mov	ecx, ebx
		mov	edx, [ebp+10h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 8
		xor	esi, esi
		jmp	short loc_43817F
; ---------------------------------------------------------------------------

loc_438167:				; CODE XREF: .text:0043818Ej
		mov	edx, [ebp-0Ch]
		mov	eax, esi
		add	eax, eax
		movzx	ecx, word ptr [edx]
		lea	eax, [eax+eax*4]
		add	eax, ecx
		add	eax, 0FFFFFFD0h
		add	dword ptr [ebp-0Ch], 2
		mov	esi, eax

loc_43817F:				; CODE XREF: .text:00438165j
		mov	eax, [ebp-0Ch]
		mov	dx, [eax]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_438167
		test	esi, esi
		jz	short loc_43819C
		cmp	esi, 100h
		jl	short loc_4381A3

loc_43819C:				; CODE XREF: .text:00438192j
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_4381A3:				; CODE XREF: .text:0043819Aj
		xor	edx, edx
		mov	[ebp-4], edx
		lea	eax, [ebp-210h]
		cmp	esi, [ebp-4]
		jle	short loc_4381D7

loc_4381B3:				; CODE XREF: .text:004381D5j
		mov	edx, [ebp-0Ch]
		mov	dx, [edx]
		test	dx, dx
		jnz	short loc_4381C5
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_4381C5:				; CODE XREF: .text:004381BCj
		mov	[eax], dx
		add	dword ptr [ebp-0Ch], 2
		inc	dword ptr [ebp-4]
		add	eax, 2
		cmp	esi, [ebp-4]
		jg	short loc_4381B3

loc_4381D7:				; CODE XREF: .text:004381B1j
		mov	ecx, [ebp-4]
		lea	eax, [ebp-210h]
		mov	word ptr [ebp+ecx*2-210h], 0
		mov	[ebp-10h], eax
		mov	ecx, ebx
		mov	edx, [ebp+10h]
		add	ecx, ecx
		sub	edx, ebx
		lea	eax, [ebp-10h]
		push	edx
		add	ecx, [ebp+0Ch]
		push	ecx
		push	eax
		call	loc_438108
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_438214
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_438214:				; CODE XREF: .text:0043820Bj
		add	ebx, esi
		jmp	loc_4384F0
; ---------------------------------------------------------------------------

loc_43821B:				; CODE XREF: .text:0043813Cj
		push	4		; maxlen
		push	offset aXt	; "$xt$"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43827C
		push	offset aTpdsc	; "tpdsc "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 8
		push	100h
		lea	edx, [ebp-410h]
		push	edx
		lea	ecx, [ebp-0Ch]
		push	ecx
		call	loc_437D70
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_4384F0
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_43827C:				; CODE XREF: .text:00438230j
		push	6		; maxlen
		push	offset a@Cf@	; "@$cf$@"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4382B9
		push	offset aVdflg	; "vdflg "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 0Ch
		jmp	loc_4384F0
; ---------------------------------------------------------------------------

loc_4382B9:				; CODE XREF: .text:00438291j
		push	4		; maxlen
		push	offset a_Dc	; "_$DC"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43832C
		push	offset aOdtbl	; "odtbl "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 8
		jmp	short loc_4382F7
; ---------------------------------------------------------------------------

loc_4382F3:				; CODE XREF: .text:00438307j
		add	dword ptr [ebp-0Ch], 2

loc_4382F7:				; CODE XREF: .text:004382F1j
		mov	edx, [ebp-0Ch]
		mov	ax, [edx]
		cmp	ax, 41h
		jb	short loc_438309
		cmp	ax, 5Ah
		jbe	short loc_4382F3

loc_438309:				; CODE XREF: .text:00438301j
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	24h
		jnz	short loc_43831C
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx+2], 40h
		jz	short loc_438323

loc_43831C:				; CODE XREF: .text:00438310j
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_438323:				; CODE XREF: .text:0043831Aj
		add	dword ptr [ebp-0Ch], 4
		jmp	loc_4384F0
; ---------------------------------------------------------------------------

loc_43832C:				; CODE XREF: .text:004382CEj
		push	4		; maxlen
		push	offset a_Ch	; "_$CH"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43839F
		push	offset aChtbl	; "chtbl "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 8
		jmp	short loc_43836A
; ---------------------------------------------------------------------------

loc_438366:				; CODE XREF: .text:0043837Aj
		add	dword ptr [ebp-0Ch], 2

loc_43836A:				; CODE XREF: .text:00438364j
		mov	edx, [ebp-0Ch]
		mov	ax, [edx]
		cmp	ax, 41h
		jb	short loc_43837C
		cmp	ax, 5Ah
		jbe	short loc_438366

loc_43837C:				; CODE XREF: .text:00438374j
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	24h
		jnz	short loc_43838F
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx+2], 40h
		jz	short loc_438396

loc_43838F:				; CODE XREF: .text:00438383j
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_438396:				; CODE XREF: .text:0043838Dj
		add	dword ptr [ebp-0Ch], 4
		jmp	loc_4384F0
; ---------------------------------------------------------------------------

loc_43839F:				; CODE XREF: .text:00438341j
		push	4		; maxlen
		push	offset a_Fl	; "_$FL"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_438412
		push	offset aFrndl	; "frndl "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 8
		jmp	short loc_4383DD
; ---------------------------------------------------------------------------

loc_4383D9:				; CODE XREF: .text:004383EDj
		add	dword ptr [ebp-0Ch], 2

loc_4383DD:				; CODE XREF: .text:004383D7j
		mov	edx, [ebp-0Ch]
		mov	ax, [edx]
		cmp	ax, 41h
		jb	short loc_4383EF
		cmp	ax, 5Ah
		jbe	short loc_4383D9

loc_4383EF:				; CODE XREF: .text:004383E7j
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	24h
		jnz	short loc_438402
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx+2], 40h
		jz	short loc_438409

loc_438402:				; CODE XREF: .text:004383F6j
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_438409:				; CODE XREF: .text:00438400j
		add	dword ptr [ebp-0Ch], 4
		jmp	loc_4384F0
; ---------------------------------------------------------------------------

loc_438412:				; CODE XREF: .text:004383B4j
		push	4		; maxlen
		push	offset a_Tl	; "_$TL"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_438482
		push	offset aThrwl	; "thrwl "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 8
		jmp	short loc_438450
; ---------------------------------------------------------------------------

loc_43844C:				; CODE XREF: .text:00438460j
		add	dword ptr [ebp-0Ch], 2

loc_438450:				; CODE XREF: .text:0043844Aj
		mov	edx, [ebp-0Ch]
		mov	ax, [edx]
		cmp	ax, 41h
		jb	short loc_438462
		cmp	ax, 5Ah
		jbe	short loc_43844C

loc_438462:				; CODE XREF: .text:0043845Aj
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	24h
		jnz	short loc_438475
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx+2], 40h
		jz	short loc_43847C

loc_438475:				; CODE XREF: .text:00438469j
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_43847C:				; CODE XREF: .text:00438473j
		add	dword ptr [ebp-0Ch], 4
		jmp	short loc_4384F0
; ---------------------------------------------------------------------------

loc_438482:				; CODE XREF: .text:00438427j
		push	5		; maxlen
		push	offset a_Ect	; "_$ECT"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4384F0
		push	offset aEctbl	; "ectbl "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 0Ah
		jmp	short loc_4384C0
; ---------------------------------------------------------------------------

loc_4384BC:				; CODE XREF: .text:004384D0j
		add	dword ptr [ebp-0Ch], 2

loc_4384C0:				; CODE XREF: .text:004384BAj
		mov	edx, [ebp-0Ch]
		mov	ax, [edx]
		cmp	ax, 41h
		jb	short loc_4384D2
		cmp	ax, 5Ah
		jbe	short loc_4384BC

loc_4384D2:				; CODE XREF: .text:004384CAj
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	24h
		jnz	short loc_4384E5
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx+2], 40h
		jz	short loc_4384EC

loc_4384E5:				; CODE XREF: .text:004384D9j
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_4384EC:				; CODE XREF: .text:004384E3j
		add	dword ptr [ebp-0Ch], 4

loc_4384F0:				; CODE XREF: .text:00438216j
					; .text:0043826Fj ...
		mov	dword ptr [ebp-8], 0FFFFFFFFh

loc_4384F7:				; CODE XREF: .text:0043897Dj
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	40h
		jnz	short loc_438521
		push	offset aLinkproc ; "linkproc "
		mov	eax, ebx
		mov	ecx, [ebp+10h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 2

loc_438521:				; CODE XREF: .text:004384FEj
		push	5		; maxlen
		push	offset aBctr	; "$bctr"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_438589
		cmp	dword ptr [ebp-8], 0
		jl	short loc_438589
		add	dword ptr [ebp-0Ch], 0Ah
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		lea	edx, [ecx+ebx*2]
		mov	ecx, [ebp-8]
		lea	eax, [eax+ecx*2]
		jmp	short loc_438560
; ---------------------------------------------------------------------------

loc_438553:				; CODE XREF: .text:00438572j
		mov	cx, [eax]
		add	eax, 2
		mov	[edx], cx
		inc	ebx
		add	edx, 2

loc_438560:				; CODE XREF: .text:00438551j
		mov	ecx, [ebp+10h]
		dec	ecx
		cmp	ebx, ecx
		jge	short loc_438574
		cmp	word ptr [eax],	3Ah
		jz	short loc_438574
		cmp	word ptr [eax],	3Ch
		jnz	short loc_438553

loc_438574:				; CODE XREF: .text:00438566j
					; .text:0043856Cj
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax+ebx*2], 0
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		jmp	loc_438930
; ---------------------------------------------------------------------------

loc_438589:				; CODE XREF: .text:00438536j
					; .text:0043853Cj
		push	5		; maxlen
		push	offset aBdtr	; "$bdtr"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43860E
		cmp	dword ptr [ebp-8], 0
		jl	short loc_43860E
		add	dword ptr [ebp-0Ch], 0Ah
		push	offset asc_52F422 ; "~"
		mov	edx, ebx
		mov	eax, [ebp+10h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		lea	edx, [ecx+ebx*2]
		mov	ecx, [ebp-8]
		lea	eax, [eax+ecx*2]
		jmp	short loc_4385E5
; ---------------------------------------------------------------------------

loc_4385D8:				; CODE XREF: .text:004385F7j
		mov	cx, [eax]
		add	eax, 2
		mov	[edx], cx
		inc	ebx
		add	edx, 2

loc_4385E5:				; CODE XREF: .text:004385D6j
		mov	ecx, [ebp+10h]
		dec	ecx
		cmp	ebx, ecx
		jge	short loc_4385F9
		cmp	word ptr [eax],	3Ah
		jz	short loc_4385F9
		cmp	word ptr [eax],	3Ch
		jnz	short loc_4385D8

loc_4385F9:				; CODE XREF: .text:004385EBj
					; .text:004385F1j
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax+ebx*2], 0
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		jmp	loc_438930
; ---------------------------------------------------------------------------

loc_43860E:				; CODE XREF: .text:0043859Ej
					; .text:004385A4j
		push	2		; maxlen
		push	offset aB_0	; "$b"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4386C8
		xor	eax, eax
		mov	edi, offset off_52F010
		mov	[ebp-4], eax

loc_438633:				; CODE XREF: .text:0043866Aj
		mov	eax, [edi]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		push	esi		; maxlen
		mov	eax, [edi]
		push	eax		; s2
		mov	edx, [ebp-0Ch]
		add	edx, 4
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_438660
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx+esi*2+4],	24h
		jz	short loc_43866C

loc_438660:				; CODE XREF: .text:00438653j
		inc	dword ptr [ebp-4]
		add	edi, 0Ch
		cmp	dword ptr [ebp-4], 2Fh
		jl	short loc_438633

loc_43866C:				; CODE XREF: .text:0043865Ej
		cmp	dword ptr [ebp-4], 2Fh
		jge	loc_438930
		mov	eax, esi
		mov	ecx, ebx
		add	eax, eax
		add	ecx, ecx
		add	eax, 4
		add	[ebp-0Ch], eax
		push	offset aOperator ; "operator "
		mov	edx, [ebp+10h]
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, [ebp-4]
		add	esp, 0Ch
		lea	eax, [eax+eax*2]
		mov	edx, off_52F018[eax*4]
		mov	eax, ebx
		push	edx		; src
		add	eax, eax
		mov	ecx, [ebp+10h]
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_438930
; ---------------------------------------------------------------------------

loc_4386C8:				; CODE XREF: .text:00438623j
		push	2		; maxlen
		push	offset aB_0	; "$b"
		mov	edx, [ebp-0Ch]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4386F6
		push	2		; maxlen
		push	offset aO	; "$o"
		mov	ecx, [ebp-0Ch]
		push	ecx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_438745

loc_4386F6:				; CODE XREF: .text:004386DDj
		add	dword ptr [ebp-0Ch], 4
		push	offset aOperator ; "operator "
		mov	edx, ebx
		mov	eax, [ebp+10h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, [ebp+10h]
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx
		lea	edx, [ebp-0Ch]
		add	eax, [ebp+0Ch]
		push	eax
		push	edx
		call	loc_437D70
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_43873E
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_43873E:				; CODE XREF: .text:00438735j
		add	ebx, esi
		jmp	loc_438930
; ---------------------------------------------------------------------------

loc_438745:				; CODE XREF: .text:004386F4j
		mov	edx, [ebp-0Ch]
		push	edx
		call	loc_4380D0
		pop	ecx
		test	eax, eax
		jz	short loc_43875A
		mov	eax, ebx
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_43875A:				; CODE XREF: .text:00438751j
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	25h
		jnz	loc_43885F
		add	dword ptr [ebp-0Ch], 2
		mov	[ebp-8], ebx
		mov	ecx, [ebp+0Ch]
		lea	edx, [ecx+ebx*2]
		jmp	short loc_438795
; ---------------------------------------------------------------------------

loc_438776:				; CODE XREF: .text:004387A5j
		test	ax, ax
		jnz	short loc_438782
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_438782:				; CODE XREF: .text:00438779j
		mov	ecx, [ebp+10h]
		dec	ecx
		cmp	ebx, ecx
		jge	short loc_438791
		mov	[edx], ax
		inc	ebx
		add	edx, 2

loc_438791:				; CODE XREF: .text:00438788j
		add	dword ptr [ebp-0Ch], 2

loc_438795:				; CODE XREF: .text:00438774j
		mov	eax, [ebp-0Ch]
		mov	ax, [eax]
		cmp	ax, 25h
		jz	short loc_4387A7
		cmp	ax, 24h
		jnz	short loc_438776

loc_4387A7:				; CODE XREF: .text:0043879Fj
		push	(offset	asc_52F54A+2) ;	src
		mov	ecx, ebx
		mov	edx, [ebp+10h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, [ebp-0Ch]
		add	esp, 0Ch
		cmp	word ptr [eax],	24h
		jnz	short loc_438829
		add	dword ptr [ebp-0Ch], 2
		xor	edi, edi
		jmp	short loc_438820
; ---------------------------------------------------------------------------

loc_4387D5:				; CODE XREF: .text:00438827j
		test	edi, edi
		jle	short loc_4387F6
		push	offset asc_52F436 ; ","
		mov	edx, ebx
		mov	eax, [ebp+10h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4387F6:				; CODE XREF: .text:004387D7j
		mov	ecx, [ebp+10h]
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx
		lea	edx, [ebp-0Ch]
		add	eax, [ebp+0Ch]
		push	eax
		push	edx
		call	loc_437D70
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_43881D
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_43881D:				; CODE XREF: .text:00438814j
		add	ebx, esi
		inc	edi

loc_438820:				; CODE XREF: .text:004387D3j
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	25h
		jnz	short loc_4387D5

loc_438829:				; CODE XREF: .text:004387CBj
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx],	25h
		jz	short loc_438839
		xor	eax, eax
		jmp	loc_438982
; ---------------------------------------------------------------------------

loc_438839:				; CODE XREF: .text:00438830j
		add	dword ptr [ebp-0Ch], 2
		push	(offset	asc_52F3CE+2) ;	src
		mov	ecx, ebx
		mov	edx, [ebp+10h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_438930
; ---------------------------------------------------------------------------

loc_43885F:				; CODE XREF: .text:00438761j
		mov	eax, [ebp-0Ch]
		mov	dx, [eax]
		push	edx		; c
		call	_iswalpha
		pop	ecx
		test	eax, eax
		jnz	short loc_438879
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx],	5Fh
		jnz	short loc_4388C2

loc_438879:				; CODE XREF: .text:0043886Ej
		mov	[ebp-8], ebx
		mov	eax, [ebp+0Ch]
		lea	edi, [eax+ebx*2]
		jmp	short loc_43889D
; ---------------------------------------------------------------------------

loc_438884:				; CODE XREF: .text:004388ACj
					; .text:004388B5j
		mov	eax, [ebp+10h]
		dec	eax
		cmp	ebx, eax
		jge	short loc_438899
		mov	edx, [ebp-0Ch]
		inc	ebx
		mov	cx, [edx]
		mov	[edi], cx
		add	edi, 2

loc_438899:				; CODE XREF: .text:0043888Aj
		add	dword ptr [ebp-0Ch], 2

loc_43889D:				; CODE XREF: .text:00438882j
		mov	eax, [ebp-0Ch]
		mov	dx, [eax]
		push	edx		; c
		call	_iswalnum
		pop	ecx
		test	eax, eax
		jnz	short loc_438884
		mov	ecx, [ebp-0Ch]
		cmp	word ptr [ecx],	5Fh
		jz	short loc_438884
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax+ebx*2], 0
		jmp	short loc_438930
; ---------------------------------------------------------------------------

loc_4388C2:				; CODE XREF: .text:00438877j
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	0
		jnz	short loc_43892C
		cmp	word ptr [ebp-410h], 0
		jz	short loc_438920
		test	ebx, ebx
		jz	short loc_4388E4
		mov	ecx, [ebp+0Ch]
		cmp	word ptr [ecx+ebx*2-2],	20h
		jz	short loc_438901

loc_4388E4:				; CODE XREF: .text:004388D7j
		push	(offset	aOperator+10h) ; src
		mov	edx, ebx
		mov	eax, [ebp+10h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_438901:				; CODE XREF: .text:004388E2j
		lea	ecx, [ebp-410h]
		mov	edx, ebx
		push	ecx		; src
		add	edx, edx
		mov	eax, [ebp+10h]
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_438920:				; CODE XREF: .text:004388D3j
		mov	ecx, [ebp+8]
		mov	eax, [ebp-0Ch]
		mov	[ecx], eax
		mov	eax, ebx
		jmp	short loc_438982
; ---------------------------------------------------------------------------

loc_43892C:				; CODE XREF: .text:004388C9j
		xor	eax, eax
		jmp	short loc_438982
; ---------------------------------------------------------------------------

loc_438930:				; CODE XREF: .text:00438584j
					; .text:00438609j ...
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	0
		jnz	short loc_43893D
		mov	eax, ebx
		jmp	short loc_438982
; ---------------------------------------------------------------------------

loc_43893D:				; CODE XREF: .text:00438937j
		mov	edx, [ebp-0Ch]
		push	edx
		call	loc_4380D0
		pop	ecx
		test	eax, eax
		jz	short loc_43894F
		mov	eax, ebx
		jmp	short loc_438982
; ---------------------------------------------------------------------------

loc_43894F:				; CODE XREF: .text:00438949j
		mov	edx, [ebp-0Ch]
		cmp	word ptr [edx],	40h
		jz	short loc_43895C
		xor	eax, eax
		jmp	short loc_438982
; ---------------------------------------------------------------------------

loc_43895C:				; CODE XREF: .text:00438956j
		push	offset asc_52F968 ; "::"
		mov	ecx, ebx
		mov	edx, [ebp+10h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		add	dword ptr [ebp-0Ch], 2
		jmp	loc_4384F7
; ---------------------------------------------------------------------------

loc_438982:				; CODE XREF: .text:0043819Ej
					; .text:004381C0j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43898C:				; DATA XREF: .text:loc_43ADC2o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_4389A4
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4389A4:				; CODE XREF: .text:0043899Cj
		cmp	ebx, ecx
		jnb	short loc_4389B0
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4389B0:				; CODE XREF: .text:004389A6j
		mov	ebx, edx
		mov	ecx, eax
		cmp	ebx, ecx
		jbe	short loc_4389BE
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4389BE:				; CODE XREF: .text:004389B6j
		cmp	ebx, ecx
		jnb	short loc_4389CA
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4389CA:				; CODE XREF: .text:004389C0j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4389D0:				; CODE XREF: .text:0043AECFp
					; .text:0043AF17p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		mov	eax, [eax+0Ch]
		test	eax, eax
		jnz	short loc_4389E3
		xor	eax, eax
		jmp	short loc_438A19
; ---------------------------------------------------------------------------

loc_4389E3:				; CODE XREF: .text:004389DDj
		xor	edx, edx
		mov	ebx, eax

loc_4389E7:				; CODE XREF: .text:00438A15j
		lea	eax, [ebx+edx]
		sar	eax, 1
		jns	short loc_4389F1
		adc	eax, 0

loc_4389F1:				; CODE XREF: .text:004389ECj
		mov	ecx, [ebp+8]
		mov	esi, [ebp+8]
		mov	ecx, [ecx+4]
		mov	esi, [esi]
		imul	ecx, eax
		mov	ecx, [esi+ecx]
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_438A0B
		mov	ebx, eax
		jmp	short loc_438A13
; ---------------------------------------------------------------------------

loc_438A0B:				; CODE XREF: .text:00438A05j
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_438A19
		lea	edx, [eax+1]

loc_438A13:				; CODE XREF: .text:00438A09j
		cmp	ebx, edx
		jg	short loc_4389E7
		mov	eax, edx

loc_438A19:				; CODE XREF: .text:004389E1j
					; .text:00438A0Ej
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_438A20:				; CODE XREF: .text:00438AA1p
					; .text:00449F64p
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5DC5E0
		test	eax, eax
		jz	short loc_438A3B
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	dword_5DC5E0, edx

loc_438A3B:				; CODE XREF: .text:00438A2Aj
		xor	ecx, ecx
		mov	dword_5E05EC, ecx
		mov	dword_5DC5E8, ecx
		mov	dword_5DC5E4, ecx
		mov	eax, dword_5E05F0
		test	eax, eax
		jz	short loc_438A67
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E05F0, edx

loc_438A67:				; CODE XREF: .text:00438A56j
		xor	eax, eax
		xor	edx, edx
		mov	dword_5E05F8, eax
		mov	dword_5E05F4, eax
		mov	dword_5E05FC, edx
		xor	ecx, ecx
		xor	eax, eax
		mov	dword_5E0604, ecx
		xor	edx, edx
		mov	dword_5E0608, eax
		mov	dword_5E060C, edx
		xor	ecx, ecx
		mov	dword_5E0710, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_438A9C:				; CODE XREF: .text:0044A152p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		call	loc_438A20
		mov	ebx, 20000h
		mov	dword_5DC5E4, ebx
		push	0		; flags
		shl	ebx, 2
		push	ebx		; size
		call	Virtalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5DC5E0, esi
		test	esi, esi
		jnz	short loc_438ADA
		xor	eax, eax
		mov	dword_5DC5E4, eax
		or	eax, 0FFFFFFFFh
		jmp	loc_438B6E
; ---------------------------------------------------------------------------

loc_438ADA:				; CODE XREF: .text:00438AC9j
		xor	edx, edx	; int
		mov	dword_5E05EC, edx
		mov	dword_5DC5E8, edx
		mov	ebx, dword_5DC5E4
		shl	ebx, 5
		mov	dword_5E05F4, ebx
		push	0		; flags
		push	ebx		; size
		call	Virtalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5E05F0, esi
		test	esi, esi
		jnz	short loc_438B36
		mov	eax, dword_5DC5E0
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	dword_5DC5E0, edx
		xor	ecx, ecx
		mov	dword_5DC5E4, ecx
		xor	eax, eax
		mov	dword_5E05F4, eax
		or	eax, 0FFFFFFFFh
		jmp	short loc_438B6E
; ---------------------------------------------------------------------------

loc_438B36:				; CODE XREF: .text:00438B0Cj
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_5E05F8, edx
		xor	eax, eax
		mov	dword_5E05FC, ecx
		xor	edx, edx
		mov	dword_5E0604, eax
		xor	ecx, ecx
		mov	dword_5E0608, edx
		mov	dword_5E060C, ecx
		xor	eax, eax
		xor	edx, edx
		mov	dword_5E0710, eax
		xor	eax, eax
		mov	dword_5E0600, edx

loc_438B6E:				; CODE XREF: .text:00438AD5j
					; .text:00438B34j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		