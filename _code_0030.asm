.code

; Exported entry 110. _Callmenufunction
; Exported entry 414. Callmenufunction

; signed int __cdecl Callmenufunction(struct t_table *pt, t_menu *pm, MENUFUNC *menufunc, ulong	index)
		public Callmenufunction
Callmenufunction:			; CODE XREF: .text:00416DD9p
					; .text:004194E5p ...
		push	ebp		; _Callmenufunction
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	eax, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_424955
		test	eax, eax
		jz	short loc_424955
		test	edi, edi
		jnz	short loc_42495A

loc_424955:				; CODE XREF: .text:0042494Bj
					; .text:0042494Fj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4249D2
; ---------------------------------------------------------------------------

loc_42495A:				; CODE XREF: .text:00424953j
		push	0FFFFFFFFh
		push	eax
		xor	edx, edx
		push	esi
		mov	dword_5DA19C, edx
		call	loc_4233B0
		add	esp, 0Ch
		mov	word ptr [ebp-200h], 0
		push	0
		mov	ecx, [ebp+14h]
		push	ecx
		lea	eax, [ebp-200h]
		push	eax
		push	esi
		call	edi
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 1
		jz	short loc_424996
		cmp	ebx, 2
		jnz	short loc_4249CD

loc_424996:				; CODE XREF: .text:0042498Fj
		call	Suspendallthreads
		push	1
		mov	eax, [ebp+14h]
		push	eax
		lea	edx, [ebp-200h]
		push	edx
		push	esi
		call	edi
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, 1
		jnz	short loc_4249D0
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4249D0
; ---------------------------------------------------------------------------

loc_4249CD:				; CODE XREF: .text:00424994j
		or	ebx, 0FFFFFFFFh

loc_4249D0:				; CODE XREF: .text:004249B8j
					; .text:004249CBj
		mov	eax, ebx

loc_4249D2:				; CODE XREF: .text:00424958j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4249DC(int, UINT uVirtKey, __int16)
loc_4249DC:				; CODE XREF: .text:0041FBFEp
					; .text:004201B3p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		mov	eax, [ebp+8]
		cmp	eax, 100h
		jz	short loc_4249F7
		cmp	eax, 104h
		jz	short loc_4249F7
		xor	eax, eax
		jmp	short loc_424A53
; ---------------------------------------------------------------------------

loc_4249F7:				; CODE XREF: .text:004249EAj
					; .text:004249F1j
		lea	edx, [ebp-8]
		lea	ecx, [ebp-4]
		push	edx		; int
		push	ecx		; int
		mov	edx, [ebp+10h]
		push	edx		; __int16
		mov	ecx, [ebp+0Ch]
		push	ecx		; uVirtKey
		push	eax		; int
		call	loc_423624
		add	esp, 14h
		xor	edx, edx
		mov	eax, offset dword_5D919C

loc_424A17:				; CODE XREF: .text:00424A4Fj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_424A2E
		mov	ecx, [eax]
		and	ecx, 0FFDFFFFFh
		cmp	ecx, [ebp-4]
		jnz	short loc_424A2E
		mov	eax, edx
		jmp	short loc_424A53
; ---------------------------------------------------------------------------

loc_424A2E:				; CODE XREF: .text:00424A1Bj
					; .text:00424A28j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_424A45
		mov	ecx, [eax]
		and	ecx, 0FFDFFFFFh
		cmp	ecx, [ebp-8]
		jnz	short loc_424A45
		mov	eax, edx
		jmp	short loc_424A53
; ---------------------------------------------------------------------------

loc_424A45:				; CODE XREF: .text:00424A32j
					; .text:00424A3Fj
		inc	edx
		add	eax, 4
		cmp	edx, 400h
		jl	short loc_424A17
		xor	eax, eax

loc_424A53:				; CODE XREF: .text:004249F5j
					; .text:00424A2Cj ...
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_424A58:				; DATA XREF: .text:00425142o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+1Ch]
		xor	ebx, ebx
		add	eax, 4
		mov	esi, [ebp+14h]
		cmp	eax, 5		; switch 6 cases
		ja	loc_424B5E	; jumptable 00424A71 default case
		jmp	ds:off_424A78[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_424A78	dd offset loc_424B5E	; DATA XREF: .text:00424A71r
		dd offset loc_424B5E	; jump table for switch	statement
		dd offset loc_424B5E
		dd offset loc_424B5E
		dd offset loc_424A95
		dd offset loc_424B20
; ---------------------------------------------------------------------------
		jmp	loc_424B5E	; jumptable 00424A71 default case
; ---------------------------------------------------------------------------

loc_424A95:				; CODE XREF: .text:00424A71j
					; DATA XREF: .text:off_424A78o
		mov	edx, [ebp+18h]	; jumptable 00424A71 case 4
		mov	ecx, [edx]
		add	ecx, [esi+248h]
		shl	ecx, 4
		cmp	dword_51945C[ecx], 0
		jnz	short loc_424AB7
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 801h
		jmp	short loc_424ACF
; ---------------------------------------------------------------------------

loc_424AB7:				; CODE XREF: .text:00424AAAj
		push	offset asc_51FFB6 ; "  "
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_424ACF:				; CODE XREF: .text:00424AB5j
		mov	eax, [ebp+18h]
		mov	edx, [eax]
		add	edx, [esi+248h]
		shl	edx, 4
		mov	ecx, dword ptr stru_519468.anonymous_0[edx]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		mov	ecx, [ebp+18h]
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, [ecx]
		add	eax, [esi+248h]
		cmp	eax, [esi+68h]
		jnz	short loc_424B5E ; jumptable 00424A71 default case
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 80h
		jmp	short loc_424B5E ; jumptable 00424A71 default case
; ---------------------------------------------------------------------------

loc_424B20:				; CODE XREF: .text:00424A71j
					; DATA XREF: .text:off_424A78o
		push	0		; jumptable 00424A71 case 5
		mov	ecx, [ebp+8]
		push	ecx
		mov	eax, [ebp+18h]
		mov	edx, [eax]
		add	edx, [esi+248h]
		shl	edx, 4
		mov	ecx, dword_51945C[edx]
		push	ecx
		call	loc_422D18
		mov	ebx, eax
		mov	eax, [ebp+18h]
		add	esp, 0Ch
		mov	edx, [eax]
		add	edx, [esi+248h]
		cmp	edx, [esi+68h]
		jnz	short loc_424B5E ; jumptable 00424A71 default case
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 80h

loc_424B5E:				; CODE XREF: .text:00424A6Bj
					; .text:00424A71j ...
		mov	eax, ebx	; jumptable 00424A71 default case
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_424B64:				; DATA XREF: .text:0042514Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	ebx, ebx
		jl	short loc_424B7C
		cmp	ebx, 15Bh
		jl	short loc_424B7E

loc_424B7C:				; CODE XREF: .text:00424B72j
		xor	ebx, ebx

loc_424B7E:				; CODE XREF: .text:00424B7Aj
		push	ebx		; int
		mov	eax, [esi+22Ch]
		push	eax		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	loc_423728
		mov	edi, ebx
		add	esp, 8
		shl	edi, 4
		mov	eax, dword_51945C[edi]
		add	edi, offset dword_51945C
		mov	edx, dword_5D919C[eax*4]
		push	edx		; int
		push	edi		; int
		mov	ecx, [esi+22Ch]
		push	ecx		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	loc_423920
		add	esp, 0Ch
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; INT_PTR __stdcall loc_424BC8(HWND, UINT, WPARAM, LPARAM)
loc_424BC8:				; DATA XREF: .text:004251CFo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		cmp	eax, 112h
		jg	short loc_424BFD
		jz	loc_42505F
		sub	eax, 110h
		jz	short loc_424C18
		dec	eax
		jz	loc_424DA8
		jmp	loc_42507C
; ---------------------------------------------------------------------------

loc_424BFD:				; CODE XREF: .text:00424BE2j
		sub	eax, 138h
		jz	loc_424D24
		sub	eax, 0D2h
		jz	loc_424D0F
		jmp	loc_42507C
; ---------------------------------------------------------------------------

loc_424C18:				; CODE XREF: .text:00424BEFj
		xor	edx, edx
		mov	dword_5DA488, edx
		push	offset pdlg	; pdlg
		push	ebx		; hw
		call	Preparedialog
		add	esp, 8
		push	0C81h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		test	eax, eax
		jz	short loc_424C4D
		push	0		; rpos
		push	offset stru_5DA21C ; pt
		push	eax		; hparent
		call	Createottablewindow
		add	esp, 0Ch

loc_424C4D:				; CODE XREF: .text:00424C3Bj
		push	offset aNone	; "<none>"
		push	0		; wParam
		push	143h		; Msg
		push	0C86h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		mov	esi, 1
		mov	edi, offset dword_51AD68

loc_424C6E:				; CODE XREF: .text:00424CAEj
		push	0
		lea	eax, [ebp-200h]
		push	eax
		mov	edx, [edi]
		and	edx, 1FFFFh
		or	edx, 80000000h
		push	edx
		call	loc_422D18
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		push	ecx		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	0C86h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		inc	esi
		add	edi, 4
		cmp	esi, 6Dh
		jl	short loc_424C6E
		mov	eax, stru_5DA21C.sorted.selected
		test	eax, eax
		jl	short loc_424CC0
		cmp	eax, 15Bh
		jl	short loc_424CC8

loc_424CC0:				; CODE XREF: .text:00424CB7j
		xor	edx, edx
		mov	stru_5DA21C.sorted.selected, edx

loc_424CC8:				; CODE XREF: .text:00424CBEj
		mov	ecx, stru_5DA21C.sorted.selected
		push	ecx		; int
		push	ebx		; hDlg
		call	loc_423728
		mov	eax, stru_5DA21C.sorted.selected
		add	esp, 8
		shl	eax, 4
		mov	edx, dword_51945C[eax]
		add	eax, offset dword_51945C
		mov	ecx, dword_5D919C[edx*4]
		push	ecx		; int
		push	eax		; int
		push	ebx		; hDlg
		call	loc_423920
		add	esp, 0Ch
		mov	pdlg.initdone, 1
		xor	eax, eax
		jmp	loc_425085
; ---------------------------------------------------------------------------

loc_424D0F:				; CODE XREF: .text:00424C0Dj
		push	esi		; wp
		mov	edx, stru_5DA21C.hw
		push	edx		; hw
		call	Processwmmousewheel
		add	esp, 8
		jmp	loc_425080
; ---------------------------------------------------------------------------

loc_424D24:				; CODE XREF: .text:00424C02j
		mov	ecx, [ebp+14h]
		push	ecx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	short loc_424DA1
		cmp	dword ptr [eax], 7
		jnz	short loc_424DA1
		mov	eax, g_Color+20h
		push	eax		; COLORREF
		mov	ebx, esi
		push	ebx		; HDC
		call	SetTextColor
		cmp	dword_5DA488, 0
		jnz	short loc_424D68
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_425085
; ---------------------------------------------------------------------------

loc_424D68:				; CODE XREF: .text:00424D4Cj
		cmp	dword_5DA488, 1
		jnz	short loc_424D8B
		push	14h		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	14h		; nIndex
		call	GetSysColorBrush
		jmp	loc_425085
; ---------------------------------------------------------------------------

loc_424D8B:				; CODE XREF: .text:00424D6Fj
		mov	eax, g_Color+1Ch
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		mov	eax, g_Brush+8
		jmp	loc_425085
; ---------------------------------------------------------------------------

loc_424DA1:				; CODE XREF: .text:00424D30j
					; .text:00424D35j
		xor	eax, eax
		jmp	loc_425085
; ---------------------------------------------------------------------------

loc_424DA8:				; CODE XREF: .text:00424BF2j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_425080
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		push	esi		; wp
		push	eax		; pctr
		push	ebx		; hparent
		call	Defaultactions
		mov	eax, esi
		mov	edx, esi
		and	ax, 0FFFFh
		movzx	eax, ax
		shr	edx, 10h
		add	esp, 10h
		movzx	edx, dx
		cmp	eax, 0C82h
		jz	short loc_424E02
		cmp	eax, 0C83h
		jz	short loc_424E02
		cmp	eax, 0C84h
		jz	short loc_424E02
		cmp	eax, 0C85h
		jz	short loc_424E02
		cmp	eax, 0C86h
		jnz	short loc_424E36
		cmp	edx, 9
		jnz	short loc_424E36

loc_424E02:				; CODE XREF: .text:00424DDFj
					; .text:00424DE6j ...
		cmp	stru_5DA21C.sorted.selected, 0
		jl	loc_425080
		push	ebx		; hDlg
		call	loc_423884
		mov	edi, eax
		mov	eax, stru_5DA21C.sorted.selected
		shl	eax, 4
		pop	ecx
		push	edi		; int
		add	eax, offset dword_51945C
		push	eax		; int
		push	ebx		; hDlg
		call	loc_423920
		add	esp, 0Ch
		jmp	loc_425080
; ---------------------------------------------------------------------------

loc_424E36:				; CODE XREF: .text:00424DFBj
					; .text:00424E00j
		cmp	eax, 0C87h
		jnz	loc_424F26
		cmp	stru_5DA21C.sorted.selected, 0
		jl	loc_425080
		push	ebx		; hDlg
		call	loc_423884
		mov	edi, eax
		mov	eax, stru_5DA21C.sorted.selected
		shl	eax, 4
		pop	ecx
		push	edi		; int
		add	eax, offset dword_51945C
		push	eax		; int
		push	ebx		; hDlg
		call	loc_423920
		add	esp, 0Ch
		test	eax, eax
		jl	loc_425080
		xor	esi, esi
		mov	eax, offset dword_51945C

loc_424E7F:				; CODE XREF: .text:00424EC3j
		mov	edx, [eax]
		mov	ecx, dword_5D919C[edx*4]
		mov	edx, edi
		and	edx, 7FDFFFFFh
		and	ecx, 0FFDFFFFFh
		cmp	ecx, edx
		jnz	short loc_424EB9
		mov	ecx, [eax+8]
		mov	edx, stru_5DA21C.sorted.selected
		shl	edx, 4
		and	ecx, dword_519464[edx]
		jz	short loc_424EB9
		mov	ecx, [eax]
		xor	edx, edx
		mov	dword_5D919C[ecx*4], edx

loc_424EB9:				; CODE XREF: .text:00424E98j
					; .text:00424EACj
		inc	esi
		add	eax, 10h
		cmp	esi, 15Bh
		jl	short loc_424E7F
		mov	eax, stru_5DA21C.sorted.selected
		shl	eax, 4
		test	byte ptr (dword_519460+2)[eax],	20h
		jz	short loc_424EDC
		or	edi, 200000h

loc_424EDC:				; CODE XREF: .text:00424ED4j
		mov	ecx, dword_51945C[eax]
		mov	dword_5D919C[ecx*4], edi
		push	0		; force
		push	offset stru_5DA21C ; pt
		call	Updatetable
		add	esp, 8
		mov	eax, stru_5DA21C.sorted.selected
		push	eax		; int
		push	ebx		; hDlg
		call	loc_423728
		add	esp, 8
		mov	edx, stru_5DA21C.sorted.selected
		shl	edx, 4
		add	edx, offset dword_51945C
		push	edi		; int
		push	edx		; int
		push	ebx		; hDlg
		call	loc_423920
		add	esp, 0Ch
		jmp	loc_425080
; ---------------------------------------------------------------------------

loc_424F26:				; CODE XREF: .text:00424E3Bj
		cmp	eax, 0C89h
		jnz	short loc_424F9A
		push	0		; mode
		push	ebx		; hwnd
		push	offset a_ini_0	; ".ini"
		push	0		; currdir
		push	0		; args
		push	offset dest	; _name
		push	offset aSelectFileWith ; "Select file with shortcuts"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		test	eax, eax
		jz	loc_425080
		cmp	dest, 0
		jnz	short loc_424F7B
		push	offset aNoFile	; "No file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_425080
; ---------------------------------------------------------------------------

loc_424F7B:				; CODE XREF: .text:00424F62j
		push	offset dest	; lpFileName
		call	loc_4246D0
		pop	ecx
		push	0		; force
		push	offset stru_5DA21C ; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_425080
; ---------------------------------------------------------------------------

loc_424F9A:				; CODE XREF: .text:00424F2Bj
		cmp	eax, 0C8Ah
		jnz	short loc_424FE5
		push	8000000h	; mode
		push	ebx		; hwnd
		push	offset a_ini_0	; ".ini"
		push	0		; currdir
		push	0		; args
		push	offset dest	; _name
		push	offset aSelectFileWith ; "Select file with shortcuts"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		test	eax, eax
		jz	loc_425080
		push	1		; int
		push	offset dest	; lpFileName
		call	loc_424780
		add	esp, 8
		jmp	loc_425080
; ---------------------------------------------------------------------------

loc_424FE5:				; CODE XREF: .text:00424F9Fj
		cmp	eax, 0C8Bh
		jnz	short loc_42503B
		push	0		; lpFileName
		call	loc_4246D0
		pop	ecx
		push	0		; force
		push	offset stru_5DA21C ; pt
		call	Updatetable
		add	esp, 8
		mov	ecx, stru_5DA21C.sorted.selected
		push	ecx		; int
		push	ebx		; hDlg
		call	loc_423728
		mov	eax, stru_5DA21C.sorted.selected
		add	esp, 8
		shl	eax, 4
		mov	edx, dword_51945C[eax]
		add	eax, offset dword_51945C
		mov	ecx, dword_5D919C[edx*4]
		push	ecx		; int
		push	eax		; int
		push	ebx		; hDlg
		call	loc_423920
		add	esp, 0Ch
		jmp	short loc_425080
; ---------------------------------------------------------------------------

loc_42503B:				; CODE XREF: .text:00424FEAj
		cmp	eax, 1
		jnz	short loc_42504D
		push	0		; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_425080
; ---------------------------------------------------------------------------

loc_42504D:				; CODE XREF: .text:0042503Ej
		cmp	eax, 2
		jnz	short loc_425080
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_425080
; ---------------------------------------------------------------------------

loc_42505F:				; CODE XREF: .text:00424BE4j
		and	esi, 0FFF0h
		cmp	esi, 0F060h
		jnz	short loc_425078
		push	0FFFFFFFFh	; result
		push	ebx		; hw
		call	Endotdialog
		add	esp, 8

loc_425078:				; CODE XREF: .text:0042506Bj
		xor	eax, eax
		jmp	short loc_425085
; ---------------------------------------------------------------------------

loc_42507C:				; CODE XREF: .text:00424BF8j
					; .text:00424C13j
		xor	eax, eax
		jmp	short loc_425085
; ---------------------------------------------------------------------------

loc_425080:				; CODE XREF: .text:00424D1Fj
					; .text:00424DB4j ...
		mov	eax, 1

loc_425085:				; CODE XREF: .text:00424D0Aj
					; .text:00424D63j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

loc_425090:				; CODE XREF: .text:loc_40B5FEp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		cmp	stru_5DA21C.bar.nbar, 0
		push	eax
		jnz	loc_42517F
		push	(offset	aOpenShortcutEd+0Ah) ; "Shortcut editor"
		push	offset stru_5DA21C ; dst
		call	_wcscpy
		mov	stru_5DA21C.mode, 14010083h
		mov	stru_5DA21C.bar.visible, 1
		mov	stru_5DA21C.bar._name, offset aDescription ; "Description"
		mov	stru_5DA21C.bar.expl, offset aDescriptionOfT ; "Description of the function"
		mov	stru_5DA21C.bar.mode, 8
		mov	stru_5DA21C.bar.defdx, 3Ch
		mov	stru_5DA21C.bar._name+4,	offset aShortcut_1 ; "Shortcut"
		mov	stru_5DA21C.bar.expl+4,	offset aCurrentlySelec ; "Currently selected shortcut"
		mov	stru_5DA21C.bar.mode+4,	8
		mov	stru_5DA21C.bar.defdx+4, 0Bh
		xor	eax, eax
		mov	stru_5DA21C.bar.nbar, 2
		mov	stru_5DA21C.tabfunc, eax
		xor	edx, edx
		xor	ecx, ecx
		mov	stru_5DA21C.custommode,	edx
		xor	eax, eax
		mov	stru_5DA21C.customdata,	ecx
		mov	stru_5DA21C.updatefunc,	eax
		mov	stru_5DA21C.drawfunc, offset loc_424A58
		mov	stru_5DA21C.tableselfunc, offset loc_424B64
		add	esp, 8
		mov	stru_5DA21C.menu, offset stru_518C3C
		xor	edx, edx
		mov	stru_5DA21C.sorted.n, 15Bh
		mov	stru_5DA21C._offset, edx
		mov	stru_5DA21C.sorted.selected, 1

loc_42517F:				; CODE XREF: .text:004250A1j
		push	1000h		; n
		push	offset dword_5D919C ; src
		lea	ecx, [ebp-1000h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	eax, eax
		mov	pdlg.mode, 20000000h
		mov	pdlg._title, eax
		mov	pdlg.x,	0FFFFFFFFh
		mov	pdlg.y,	0FFFFFFFFh
		mov	pdlg.controls, offset stru_51AB0C
		push	0		; dwInitParam
		mov	edx, hwollymain
		push	offset loc_424BC8 ; lpDialogFunc
		push	edx		; hWndParent
		mov	ecx, g_hInstance
		push	offset aDia_empty ; "DIA_EMPTY"
		push	ecx		; hInstance
		call	DialogBoxParamW
		test	eax, eax
		jnz	short loc_4251FD
		push	0		; int
		push	0		; lpFileName
		call	loc_424780
		add	esp, 8
		call	loc_40A180
		jmp	short loc_425216
; ---------------------------------------------------------------------------

loc_4251FD:				; CODE XREF: .text:004251E8j
		push	1000h		; n
		lea	eax, [ebp-1000h]
		push	eax		; src
		push	offset dword_5D919C ; dest
		call	_memcpy
		add	esp, 0Ch

loc_425216:				; CODE XREF: .text:004251FBj
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_42521C:				; CODE XREF: .text:00496FE9p
					; .text:004A1826p ...
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5DA19C
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_425228@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int)
loc_425228:				; CODE XREF: .text:00420591p
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		mov	ebx, [ebp+8]
		push	0		; format
		call	Flash
		pop	ecx
		mov	eax, ebx
		shr	eax, 10h
		cmp	ax, 0FFFFh
		jnz	short loc_425253
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_425253
		push	0		; format
		call	Tempinfo
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_425253:				; CODE XREF: .text:00425240j
					; .text:00425246j
		cmp	dword_5DA4D0, 0
		jnz	short loc_425267
		push	0		; format
		call	Tempinfo
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_425267:				; CODE XREF: .text:0042525Aj
		and	bx, 0FFFFh
		movzx	edx, bx
		push	0		; subaddr
		push	edx		; _addr
		push	offset stru_5DA48C ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42528B
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_425299

loc_42528B:				; CODE XREF: .text:00425283j
		push	(offset	asc_51FFB6+2) ;	format
		call	Tempinfo
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_425299:				; CODE XREF: .text:00425289j
		mov	ecx, [ebx+0Ch]
		mov	eax, [ecx+4]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Tempinfo
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4252B0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int x, int y, int)
loc_4252B0:				; CODE XREF: .text:0041F5BEp
					; .text:0041FB07p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_4252C9
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4252D0

loc_4252C9:				; CODE XREF: .text:004252C1j
		xor	eax, eax
		jmp	loc_4253F8
; ---------------------------------------------------------------------------

loc_4252D0:				; CODE XREF: .text:004252C7j
		call	CreatePopupMenu
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4252E2
		xor	eax, eax
		jmp	loc_4253F8
; ---------------------------------------------------------------------------

loc_4252E2:				; CODE XREF: .text:004252D9j
		xor	esi, esi
		xor	eax, eax
		mov	dword_5DA4D0, eax
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	200h		; nexp
		push	10h		; itemsize
		push	offset stru_5DA48C ; sd
		call	Createsorteddata
		add	esp, 18h
		xor	edx, edx
		mov	dword_5DA19C, edx
		push	0		; int
		push	0		; UINT
		push	0		; int
		mov	ecx, [ebp+14h]
		push	ecx		; int
		push	edi		; int
		push	ebx		; hMenu
		call	loc_423C14
		add	esp, 18h
		test	eax, eax
		jnz	short loc_42533D
		push	ebx		; hMenu
		call	DestroyMenu
		push	offset stru_5DA48C ; sd
		call	Destroysorteddata
		pop	ecx
		xor	eax, eax
		jmp	loc_4253F8
; ---------------------------------------------------------------------------

loc_42533D:				; CODE XREF: .text:00425323j
		push	0		; prcRect
		mov	edx, [edi+22Ch]
		push	edx		; hWnd
		push	0		; nReserved
		mov	ecx, [ebp+10h]
		push	ecx		; y
		mov	eax, [ebp+0Ch]
		push	eax		; x
		push	102h		; uFlags
		push	ebx		; hMenu
		call	TrackPopupMenu
		cmp	eax, 2710h
		jl	short loc_425389
		mov	edx, dword_5DA4D0
		add	edx, 2710h
		cmp	eax, edx
		jge	short loc_425389
		push	0		; subaddr
		push	eax		; _addr
		push	offset stru_5DA48C ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_425389
		mov	esi, [eax+0Ch]

loc_425389:				; CODE XREF: .text:00425360j
					; .text:00425370j ...
		push	ebx		; hMenu
		call	DestroyMenu
		push	offset stru_5DA48C ; sd
		call	Destroysorteddata
		pop	ecx
		xor	eax, eax
		mov	dword_5DA4D0, eax
		push	0		; format
		call	Tempinfo
		pop	ecx
		test	esi, esi
		jz	short loc_4253F4
		cmp	dword ptr [esi+0Ch], 0
		jz	short loc_4253F4
		mov	word ptr [ebp-200h], 0
		call	Suspendallthreads
		push	1
		mov	edx, [esi+14h]
		push	edx
		lea	ecx, [ebp-200h]
		push	ecx
		push	edi
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, 1
		jnz	short loc_4253F6
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4253F6
; ---------------------------------------------------------------------------

loc_4253F4:				; CODE XREF: .text:004253ABj
					; .text:004253B1j
		xor	ebx, ebx

loc_4253F6:				; CODE XREF: .text:004253DFj
					; .text:004253F2j
		mov	eax, ebx

loc_4253F8:				; CODE XREF: .text:004252CBj
					; .text:004252DDj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_425400(int, int, UINT	uVirtKey, __int16)
loc_425400:				; CODE XREF: .text:004104DDp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_425415
		xor	eax, eax
		jmp	loc_4254A2
; ---------------------------------------------------------------------------

loc_425415:				; CODE XREF: .text:0042540Cj
		lea	edx, [ebp-8]
		lea	ecx, [ebp-4]
		push	edx		; int
		push	ecx		; int
		mov	eax, [ebp+14h]
		push	eax		; __int16
		mov	edx, [ebp+10h]
		push	edx		; uVirtKey
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		call	loc_423624
		add	esp, 14h
		mov	dword_5DA19C, 1
		jmp	short loc_425493
; ---------------------------------------------------------------------------

loc_42543D:				; CODE XREF: .text:00425496j
		mov	eax, [ebx+10h]
		test	eax, eax
		jz	short loc_425490
		push	0
		push	eax
		mov	edx, [ebp-4]
		push	edx
		call	loc_4240C8
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_425466
		xor	ecx, ecx
		mov	eax, 1
		mov	dword_5DA19C, ecx
		jmp	short loc_4254A2
; ---------------------------------------------------------------------------

loc_425466:				; CODE XREF: .text:00425455j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_425490
		push	0
		mov	edx, [ebx+10h]
		push	edx
		mov	ecx, [ebp-8]
		push	ecx
		call	loc_4240C8
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_425490
		xor	eax, eax
		mov	dword_5DA19C, eax
		mov	eax, 1
		jmp	short loc_4254A2
; ---------------------------------------------------------------------------

loc_425490:				; CODE XREF: .text:00425442j
					; .text:0042546Aj ...
		add	ebx, 18h

loc_425493:				; CODE XREF: .text:0042543Bj
		cmp	dword ptr [ebx], 0
		jnz	short loc_42543D
		xor	edx, edx
		xor	eax, eax
		mov	dword_5DA19C, edx

loc_4254A2:				; CODE XREF: .text:00425410j
					; .text:00425464j ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4254A8@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	HMENU)
loc_4254A8:				; CODE XREF: .text:0040A860p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	0		; format
		call	Flash
		pop	ecx
		mov	ebx, esi
		and	bx, 0FFFFh
		movzx	ebx, bx
		cmp	ebx, 0F000h
		jb	loc_42556A
		and	ebx, 0FFF0h
		cmp	ebx, 0F030h
		jg	short loc_4254F9
		jz	short loc_425532
		sub	ebx, 0F000h
		jz	short loc_42550B
		sub	ebx, 10h
		jz	short loc_425518
		sub	ebx, 10h
		jz	short loc_425525
		jmp	short loc_425559
; ---------------------------------------------------------------------------

loc_4254F9:				; CODE XREF: .text:004254E1j
		sub	ebx, 0F060h
		jz	short loc_42554C
		sub	ebx, 0C0h
		jz	short loc_42553F
		jmp	short loc_425559
; ---------------------------------------------------------------------------

loc_42550B:				; CODE XREF: .text:004254EBj
		push	offset aResizeMainWind ; "Resize main window"
		call	_T
		pop	ecx
		jmp	short loc_42555E
; ---------------------------------------------------------------------------

loc_425518:				; CODE XREF: .text:004254F0j
		push	offset aMoveMainWindow ; "Move main window"
		call	_T
		pop	ecx
		jmp	short loc_42555E
; ---------------------------------------------------------------------------

loc_425525:				; CODE XREF: .text:004254F5j
		push	offset aMinimizeMainWi ; "Minimize main	window"
		call	_T
		pop	ecx
		jmp	short loc_42555E
; ---------------------------------------------------------------------------

loc_425532:				; CODE XREF: .text:004254E3j
		push	offset aMaximizeMainWi ; src
		call	_T
		pop	ecx
		jmp	short loc_42555E
; ---------------------------------------------------------------------------

loc_42553F:				; CODE XREF: .text:00425507j
		push	offset aRestoreMainWin ; "Restore main window to previous size"
		call	_T
		pop	ecx
		jmp	short loc_42555E
; ---------------------------------------------------------------------------

loc_42554C:				; CODE XREF: .text:004254FFj
		push	offset aCloseOllydbg ; "Close OllyDbg"
		call	_T
		pop	ecx
		jmp	short loc_42555E
; ---------------------------------------------------------------------------

loc_425559:				; CODE XREF: .text:004254F7j
					; .text:00425509j
		mov	eax, (offset asc_51FFB6+2) ; " "

loc_42555E:				; CODE XREF: .text:00425516j
					; .text:00425523j ...
		push	eax		; format
		call	Tempinfo
		pop	ecx
		jmp	loc_42563D
; ---------------------------------------------------------------------------

loc_42556A:				; CODE XREF: .text:004254CFj
		cmp	ebx, 7530h
		jb	short loc_425591
		cmp	ebx, 753Ah
		jnb	short loc_425591
		push	offset aSwitchToWindow ; "Switch to window"
		call	_T
		pop	ecx
		push	eax		; format
		call	Tempinfo
		pop	ecx
		jmp	loc_42563D
; ---------------------------------------------------------------------------

loc_425591:				; CODE XREF: .text:00425570j
					; .text:00425578j
		mov	eax, esi
		shr	eax, 10h
		movzx	eax, ax
		cmp	eax, 0FFFFh
		jnz	short loc_4255B1
		test	edi, edi
		jnz	short loc_4255B1
		push	0		; format
		call	Tempinfo
		pop	ecx
		jmp	loc_42563D
; ---------------------------------------------------------------------------

loc_4255B1:				; CODE XREF: .text:0042559Ej
					; .text:004255A2j
		test	ah, 20h
		jz	short loc_4255C3
		push	(offset	asc_51FFB6+2) ;	format
		call	Tempinfo
		pop	ecx
		jmp	short loc_42563D
; ---------------------------------------------------------------------------

loc_4255C3:				; CODE XREF: .text:004255B4j
		test	al, 10h
		jz	short loc_4255F5
		push	30h		; n
		push	0		; c
		lea	edx, [ebp-30h]
		push	edx		; s
		call	_memset
		mov	dword ptr [ebp-30h], 30h
		add	esp, 0Ch
		lea	ecx, [ebp-30h]
		mov	dword ptr [ebp-2Ch], 2
		push	ecx		; LPMENUITEMINFOW
		push	1		; BOOL
		push	ebx		; UINT
		push	edi		; HMENU
		call	GetMenuItemInfoW
		mov	ebx, [ebp-20h]

loc_4255F5:				; CODE XREF: .text:004255C5j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset stru_5DA4D4 ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_42560F
		cmp	dword ptr [eax+0Ch], 0
		jnz	short loc_42561C

loc_42560F:				; CODE XREF: .text:00425607j
		push	(offset	asc_51FFB6+2) ;	format
		call	Tempinfo
		pop	ecx
		jmp	short loc_42563D
; ---------------------------------------------------------------------------

loc_42561C:				; CODE XREF: .text:0042560Dj
		mov	eax, [eax+0Ch]
		mov	eax, [eax+4]
		push	eax		; src
		call	_T
		pop	ecx
		test	eax, eax
		jnz	short loc_425634
		mov	edx, (offset asc_51FFB6+2) ; " "
		jmp	short loc_425636
; ---------------------------------------------------------------------------

loc_425634:				; CODE XREF: .text:0042562Bj
		mov	edx, eax

loc_425636:				; CODE XREF: .text:00425632j
		push	edx		; format
		call	Tempinfo
		pop	ecx

loc_42563D:				; CODE XREF: .text:00425565j
					; .text:0042558Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_425644:				; CODE XREF: .text:0040F96Fp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB0h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_4257C4
		mov	eax, hwollymain
		push	eax		; hWnd
		call	GetMenu
		test	eax, eax
		jnz	loc_4257C4
		call	CreateMenu
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4257C4
		mov	edx, [ebp-0Ch]
		push	edx		; hMenu
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	SetMenu
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		xor	eax, eax
		push	100h		; nexp
		mov	dword_5DA19C, eax
		push	10h		; itemsize
		push	offset stru_5DA4D4 ; sd
		mov	dword_5DA518, 4E20h
		call	Createsorteddata
		add	esp, 18h
		xor	edi, edi
		jmp	loc_4257AE
; ---------------------------------------------------------------------------

loc_4256BF:				; CODE XREF: .text:004257B2j
		cmp	dword ptr [esi+10h], 0
		jz	loc_4257AA
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_4256E9
; ---------------------------------------------------------------------------

loc_4256D9:				; CODE XREF: .text:004256F0j
					; .text:004256F6j ...
		cmp	ax, 24h
		jnz	short loc_4256E6
		mov	dword ptr [ebp-8], 1

loc_4256E6:				; CODE XREF: .text:004256DDj
		add	ebx, 2

loc_4256E9:				; CODE XREF: .text:004256D7j
		mov	ax, [ebx]
		cmp	ax, 20h
		jz	short loc_4256D9
		cmp	ax, 7Ch
		jz	short loc_4256D9
		cmp	ax, 24h
		jz	short loc_4256D9
		call	CreateMenu
		mov	[ebp-10h], eax
		mov	edx, [ebp-10h]
		mov	[esi+14h], edx
		cmp	dword ptr [ebp-8], 0
		jz	short loc_42571B
		mov	ecx, [ebp-10h]
		mov	dword_57E7D4, ecx

loc_42571B:				; CODE XREF: .text:00425710j
		push	0		; int
		push	0		; uPosition
		mov	eax, [esi+10h]
		push	eax		; int
		mov	edx, [ebp-10h]
		push	edx		; hMenu
		call	loc_4242C8
		add	esp, 10h
		mov	[ebp-4], eax
		push	30h		; n
		push	0		; c
		lea	ecx, [ebp-50h]
		push	ecx		; s
		call	_memset
		mov	dword ptr [ebp-50h], 30h
		mov	dword ptr [ebp-4Ch], 37h
		xor	eax, eax
		add	esp, 0Ch
		mov	[ebp-48h], eax
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_425765
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_425765
		or	dword ptr [ebp-44h], 3

loc_425765:				; CODE XREF: .text:00425759j
					; .text:0042575Fj
		lea	edx, [edi+1]
		lea	eax, [ebp-50h]
		mov	[ebp-40h], edx
		mov	ecx, [ebp-10h]
		mov	[ebp-3Ch], ecx
		mov	[ebp-2Ch], ebx
		push	eax		; LPCMENUITEMINFOW
		push	1		; BOOL
		push	edi		; UINT
		mov	edx, [ebp-0Ch]
		push	edx		; HMENU
		call	InsertMenuItemW
		lea	ecx, [edi+1]
		xor	eax, eax
		mov	[ebp-20h], ecx
		lea	edx, [ebp-20h]
		mov	dword ptr [ebp-1Ch], 1
		mov	[ebp-18h], eax
		mov	[ebp-14h], esi
		push	edx		; item
		push	offset stru_5DA4D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4257AA:				; CODE XREF: .text:004256C3j
		inc	edi
		add	esi, 18h

loc_4257AE:				; CODE XREF: .text:004256BAj
		mov	eax, [esi]
		test	eax, eax
		jnz	loc_4256BF
		mov	edx, hwollymain
		push	edx		; hWnd
		call	DrawMenuBar

loc_4257C4:				; CODE XREF: .text:00425652j
					; .text:00425665j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4257CC:				; CODE XREF: .text:0040A178p
					; .text:0040A850p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_4258FC
		mov	eax, hwollymain
		push	eax		; hWnd
		call	GetMenu
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4258FC
		xor	edx, edx
		mov	dword_5DA19C, edx
		mov	dword_5DA518, 4E20h
		jmp	loc_4258E6
; ---------------------------------------------------------------------------

loc_42580F:				; CODE XREF: .text:004258EAj
		cmp	dword ptr [esi+10h], 0
		jz	loc_4258E3
		cmp	dword ptr [esi+14h], 0
		jz	loc_4258E3
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_42583A
; ---------------------------------------------------------------------------

loc_42582A:				; CODE XREF: .text:00425841j
					; .text:00425847j ...
		cmp	dx, 24h
		jnz	short loc_425837
		mov	dword ptr [ebp-8], 1

loc_425837:				; CODE XREF: .text:0042582Ej
		add	eax, 2

loc_42583A:				; CODE XREF: .text:00425828j
		mov	dx, [eax]
		cmp	dx, 20h
		jz	short loc_42582A
		cmp	dx, 7Ch
		jz	short loc_42582A
		cmp	dx, 24h
		jz	short loc_42582A
		mov	eax, [esi+14h]
		push	eax		; hMenu
		call	loc_424674
		cmp	dword ptr [ebp-8], 0
		pop	ecx
		jz	short loc_425883
		mov	ecx, [esi+14h]
		push	ecx		; hMenu
		call	GetMenuItemCount
		test	eax, eax
		jz	short loc_425883
		push	(offset	aMainMenuFile+1Dh) ; lpNewItem
		push	0		; uIDNewItem
		push	0C00h		; uFlags
		push	0		; uPosition
		mov	eax, [esi+14h]
		push	eax		; hMenu
		call	InsertMenuW

loc_425883:				; CODE XREF: .text:0042585Dj
					; .text:0042586Aj
		push	0		; int
		push	0		; uPosition
		mov	edx, [esi+10h]
		push	edx		; int
		mov	ecx, [esi+14h]
		push	ecx		; hMenu
		call	loc_4242C8
		add	esp, 10h
		mov	[ebp-4], eax
		mov	eax, [ebp-0Ch]
		push	eax		; hMenu
		call	GetMenuItemCount
		mov	edi, eax
		xor	ebx, ebx
		cmp	edi, ebx
		jle	short loc_4258BF

loc_4258AB:				; CODE XREF: .text:004258BDj
		push	ebx		; nPos
		mov	eax, [ebp-0Ch]
		push	eax		; hMenu
		call	GetSubMenu
		cmp	eax, [esi+14h]
		jz	short loc_4258BF
		inc	ebx
		cmp	edi, ebx
		jg	short loc_4258AB

loc_4258BF:				; CODE XREF: .text:004258A9j
					; .text:004258B8j
		cmp	edi, ebx
		jle	short loc_4258E3
		xor	edx, edx
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4258D2
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4258D2
		inc	edx

loc_4258D2:				; CODE XREF: .text:004258C9j
					; .text:004258CFj
		or	edx, 400h
		push	edx		; uEnable
		push	ebx		; uIDEnableItem
		mov	ecx, [ebp-0Ch]
		push	ecx		; hMenu
		call	EnableMenuItem

loc_4258E3:				; CODE XREF: .text:00425813j
					; .text:0042581Dj ...
		add	esi, 18h

loc_4258E6:				; CODE XREF: .text:0042580Aj
		mov	eax, [esi]
		test	eax, eax
		jnz	loc_42580F
		mov	edx, hwollymain
		push	edx		; hWnd
		call	DrawMenuBar

loc_4258FC:				; CODE XREF: .text:004257DAj
					; .text:004257F2j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_425904:				; CODE XREF: .text:0040B8EEp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFCCh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_42598D
		mov	eax, hwollymain
		push	eax		; hWnd
		call	GetMenu
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_42598D
		xor	edi, edi
		jmp	short loc_425987
; ---------------------------------------------------------------------------

loc_42592C:				; CODE XREF: .text:0042598Bj
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	short loc_42593A
; ---------------------------------------------------------------------------

loc_425937:				; CODE XREF: .text:00425941j
					; .text:00425947j ...
		add	ebx, 2

loc_42593A:				; CODE XREF: .text:00425935j
		mov	ax, [ebx]
		cmp	ax, 20h
		jz	short loc_425937
		cmp	ax, 7Ch
		jz	short loc_425937
		cmp	ax, 24h
		jz	short loc_425937
		push	30h		; n
		push	0		; c
		lea	edx, [ebp-34h]
		push	edx		; s
		call	_memset
		mov	dword ptr [ebp-34h], 30h
		mov	dword ptr [ebp-30h], 10h
		add	esp, 0Ch
		mov	[ebp-10h], ebx
		lea	ecx, [ebp-34h]
		lea	eax, [edi+1]
		push	ecx		; LPCMENUITEMINFOW
		push	0		; BOOL
		push	eax		; UINT
		mov	edx, [ebp-4]
		push	edx		; HMENU
		call	SetMenuItemInfoW
		inc	edi
		add	esi, 18h

loc_425987:				; CODE XREF: .text:0042592Aj
		mov	eax, [esi]
		test	eax, eax
		jnz	short loc_42592C

loc_42598D:				; CODE XREF: .text:00425912j
					; .text:00425926j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_425994:				; CODE XREF: .text:0040B87Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4259A4
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4259A4:				; CODE XREF: .text:0042599Cj
		push	0		; subaddr
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		push	offset stru_5DA4D4 ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4259C1
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4259C1:				; CODE XREF: .text:004259B9j
		mov	ebx, [eax+0Ch]
		test	ebx, ebx
		jz	short loc_4259CE
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_4259D4

loc_4259CE:				; CODE XREF: .text:004259C6j
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4259D4:				; CODE XREF: .text:004259CCj
		call	Suspendallthreads
		push	1
		mov	edx, [ebx+14h]
		push	edx
		push	0
		push	0
		call	dword ptr [ebx+0Ch]
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		dec	ebx
		jnz	short loc_425A04
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_425A04:				; CODE XREF: .text:004259F1j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_425A0C:				; CODE XREF: .text:0040A1A3p
					; .text:0040A818p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBB4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_425CC6
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_425CC6
		cmp	dword_57FE3C, 0
		jz	loc_425CC6
		mov	dword ptr [ebp-44Ch], 2Ch
		mov	eax, hwollymain
		mov	edx, g_hInstance
		mov	[ebp-444h], eax
		mov	[ebp-42Ch], edx
		xor	ecx, ecx
		mov	eax, dword_57FE3C
		mov	[ebp-424h], ecx
		push	0		; lParam
		push	0		; wParam
		push	40Dh		; Msg
		push	eax		; hWnd
		call	SendMessageW
		mov	edi, eax
		xor	esi, esi
		cmp	edi, esi
		jle	short loc_425AA4

loc_425A7F:				; CODE XREF: .text:00425AA2j
		mov	[ebp-440h], esi
		lea	eax, [ebp-44Ch]
		push	eax		; lParam
		push	0		; wParam
		push	433h		; Msg
		mov	edx, dword_57FE3C
		push	edx		; hWnd
		call	SendMessageW
		inc	esi
		cmp	edi, esi
		jg	short loc_425A7F

loc_425AA4:				; CODE XREF: .text:00425A7Dj
		cmp	g_IsShowtoolbar, 0
		jnz	short loc_425AC7
		push	0		; lParam
		push	0		; wParam
		push	401h		; Msg
		mov	ecx, dword_57FE3C
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_425CC6
; ---------------------------------------------------------------------------

loc_425AC7:				; CODE XREF: .text:00425AABj
		mov	eax, [ebp+0Ch]
		lea	edi, [ebp-420h]
		mov	esi, eax
		mov	ecx, 4
		rep movsd
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_425B00
		add	dword ptr [ebp-420h], 2
		sub	dword ptr [ebp-418h], 2
		add	dword ptr [ebp-41Ch], 2
		sub	dword ptr [ebp-414h], 2
		jmp	short loc_425B1C
; ---------------------------------------------------------------------------

loc_425B00:				; CODE XREF: .text:00425AE0j
		add	dword ptr [ebp-420h], 3
		sub	dword ptr [ebp-418h], 3
		add	dword ptr [ebp-41Ch], 2
		sub	dword ptr [ebp-414h], 2

loc_425B1C:				; CODE XREF: .text:00425AFEj
		lea	esi, [ebp-420h]
		lea	edi, [ebp-410h]
		mov	ecx, 4
		rep movsd
		xor	esi, esi
		jmp	loc_425C7F
; ---------------------------------------------------------------------------

loc_425B36:				; CODE XREF: .text:00425C83j
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_425B75
		mov	edx, [ebp-410h]
		add	edx, 2
		mov	[ebp-408h], edx
		jmp	short loc_425B5A
; ---------------------------------------------------------------------------

loc_425B50:				; CODE XREF: .text:00425B5Ej
		add	dword ptr [ebp-408h], 8
		add	eax, 2

loc_425B5A:				; CODE XREF: .text:00425B4Ej
		cmp	word ptr [eax],	7Ch
		jz	short loc_425B50
		mov	eax, [ebp-408h]
		mov	[ebp-410h], eax
		add	dword ptr [ebp-408h], 12h
		jmp	short loc_425BA9
; ---------------------------------------------------------------------------

loc_425B75:				; CODE XREF: .text:00425B3Dj
		mov	ecx, [ebp-40Ch]
		add	ecx, 2
		mov	[ebp-404h], ecx
		jmp	short loc_425B90
; ---------------------------------------------------------------------------

loc_425B86:				; CODE XREF: .text:00425B94j
		add	dword ptr [ebp-404h], 8
		add	eax, 2

loc_425B90:				; CODE XREF: .text:00425B84j
		cmp	word ptr [eax],	7Ch
		jz	short loc_425B86
		mov	eax, [ebp-404h]
		mov	[ebp-40Ch], eax
		add	dword ptr [ebp-404h], 12h

loc_425BA9:				; CODE XREF: .text:00425B73j
		lea	edx, [ebp-420h]
		push	edx		; lprcSrc2
		lea	ecx, [ebp-410h]
		push	ecx		; lprcSrc1
		lea	eax, [ebp-43Ch]
		push	eax		; lprcDst
		call	IntersectRect
		test	eax, eax
		jz	loc_425C89
		mov	dword ptr [ebp-448h], 10h
		mov	[ebp-440h], esi
		lea	edx, [ebp-400h]
		push	1
		push	edx
		mov	ecx, [ebx+8]
		push	ecx
		call	loc_422D18
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_425C06
		mov	eax, [ebx+4]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[ebp-428h], eax
		jmp	short loc_425C3F
; ---------------------------------------------------------------------------

loc_425C06:				; CODE XREF: .text:00425BF2j
		lea	edx, [ebp-3FEh]
		push	edx
		push	7Ch
		mov	ecx, [ebx+4]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax
		push	80h
		push	offset a_S_S	; "%.*s	(%.*s)"
		lea	eax, [ebp-200h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 18h
		lea	edx, [ebp-200h]
		mov	[ebp-428h], edx

loc_425C3F:				; CODE XREF: .text:00425C04j
		lea	ecx, [ebp-44Ch]
		push	ecx		; lParam
		push	0		; wParam
		push	432h		; Msg
		mov	eax, dword_57FE3C
		push	eax		; hWnd
		call	SendMessageW
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_425C6F
		mov	edx, [ebp-408h]
		mov	[ebp-410h], edx
		jmp	short loc_425C7B
; ---------------------------------------------------------------------------

loc_425C6F:				; CODE XREF: .text:00425C5Fj
		mov	ecx, [ebp-404h]
		mov	[ebp-40Ch], ecx

loc_425C7B:				; CODE XREF: .text:00425C6Dj
		inc	esi
		add	ebx, 18h

loc_425C7F:				; CODE XREF: .text:00425B31j
		mov	eax, [ebx]
		test	eax, eax
		jnz	loc_425B36

loc_425C89:				; CODE XREF: .text:00425BC5j
		push	0		; lParam
		push	3		; wParam
		push	415h		; Msg
		mov	edx, dword_57FE3C
		push	edx		; hWnd
		call	SendMessageW
		push	eax		; lParam
		push	1		; wParam
		push	403h		; Msg
		mov	ecx, dword_57FE3C
		push	ecx		; hWnd
		call	SendMessageW
		push	0		; lParam
		push	1		; wParam
		push	401h		; Msg
		mov	eax, dword_57FE3C
		push	eax		; hWnd
		call	SendMessageW

loc_425CC6:				; CODE XREF: .text:00425A1Dj
					; .text:00425A27j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_425CD0(HWND hDlg, int	nIDDlgItem)
loc_425CD0:				; CODE XREF: .text:0042AB97p
					; .text:0042ABA4p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		push	esi		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_426144	; jumptable 00425D1C default case
		push	100h		; nMaxCount
		lea	eax, [ebp-204h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		mov	word ptr [ebp-6], 0
		mov	edx, esi
		add	edx, 0FFFFFC0Eh	; switch 16 cases
		cmp	edx, 0Fh
		ja	loc_426144	; jumptable 00425D1C default case
		jmp	ds:off_425D23[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_425D23	dd offset loc_425D63	; DATA XREF: .text:00425D1Cr
		dd offset loc_425D89	; jump table for switch	statement
		dd offset loc_425DC8
		dd offset loc_425E07
		dd offset loc_425E45
		dd offset loc_425E6B
		dd offset loc_425EA7
		dd offset loc_425EE8
		dd offset loc_425F27
		dd offset loc_425F4C
		dd offset loc_425F8A
		dd offset loc_425FB0
		dd offset loc_425FEF
		dd offset loc_42602D
		dd offset loc_426092
		dd offset loc_4260F4
; ---------------------------------------------------------------------------

loc_425D63:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	ecx, ecx	; jumptable 00425D1C case 1010
		mov	g_dialog.u, ecx
		push	offset g_dialog.u
		push	offset aLx	; format
		lea	eax, [ebp-204h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425D89:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	edx, edx	; jumptable 00425D1C case 1011
		lea	ecx, [ebp-4]
		mov	[ebp-4], edx
		push	ecx
		lea	eax, [ebp-204h]
		push	offset aLx	; format
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	edx, g_dialog.u
		and	edx, 0FFFF0000h
		mov	ecx, [ebp-4]
		and	ecx, 0FFFFh
		or	edx, ecx
		mov	g_dialog.u, edx
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425DC8:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	eax, eax	; jumptable 00425D1C case 1012
		lea	edx, [ebp-4]
		mov	[ebp-4], eax
		push	edx
		lea	ecx, [ebp-204h]
		push	offset aLx	; format
		push	ecx		; buffer
		call	_swscanf
		mov	edx, [ebp-4]
		mov	eax, g_dialog.u
		and	edx, 0FFh
		add	esp, 0Ch
		shl	edx, 8
		and	eax, 0FFFF00FFh
		or	eax, edx
		mov	g_dialog.u, eax
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425E07:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	ecx, ecx	; jumptable 00425D1C case 1013
		lea	eax, [ebp-4]
		mov	[ebp-4], ecx
		push	eax
		lea	edx, [ebp-204h]
		push	offset aLx	; format
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	ecx, g_dialog.u
		and	ecx, 0FFFFFF00h
		mov	eax, [ebp-4]
		and	eax, 0FFh
		or	ecx, eax
		mov	g_dialog.u, ecx
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425E45:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	edx, edx	; jumptable 00425D1C case 1014
		mov	g_dialog.u, edx
		push	offset g_dialog.u
		push	offset aLi_2	; format
		lea	ecx, [ebp-204h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425E6B:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	eax, eax	; jumptable 00425D1C case 1015
		lea	edx, [ebp-4]
		mov	[ebp-4], eax
		push	edx
		lea	ecx, [ebp-204h]
		push	offset aLi_2	; format
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	eax, g_dialog.u
		and	eax, 0FFFF0000h
		mov	edx, [ebp-4]
		and	edx, 0FFFFh
		or	eax, edx
		mov	g_dialog.u, eax
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425EA7:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	ecx, ecx	; jumptable 00425D1C case 1016
		lea	eax, [ebp-4]
		mov	[ebp-4], ecx
		push	eax
		lea	edx, [ebp-204h]
		push	offset aLi_2	; format
		push	edx		; buffer
		call	_swscanf
		mov	eax, [ebp-4]
		mov	ecx, g_dialog.u
		and	eax, 0FFh
		add	esp, 0Ch
		shl	eax, 8
		and	ecx, 0FFFF00FFh
		or	ecx, eax
		mov	g_dialog.u, ecx
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425EE8:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	edx, edx	; jumptable 00425D1C case 1017
		lea	ecx, [ebp-4]
		mov	[ebp-4], edx
		push	ecx
		lea	eax, [ebp-204h]
		push	offset aLi_2	; format
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	edx, g_dialog.u
		and	edx, 0FFFFFF00h
		mov	ecx, [ebp-4]
		and	ecx, 0FFh
		or	edx, ecx
		mov	g_dialog.u, edx
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425F27:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	eax, eax	; jumptable 00425D1C case 1018
		mov	g_dialog.u, eax
		push	offset g_dialog.u
		push	offset aLu	; format
		lea	edx, [ebp-204h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425F4C:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	ecx, ecx	; jumptable 00425D1C case 1019
		lea	eax, [ebp-4]
		mov	[ebp-4], ecx
		push	eax
		lea	edx, [ebp-204h]
		push	offset aLu	; format
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	ecx, g_dialog.u
		and	ecx, 0FFFF0000h
		mov	eax, [ebp-4]
		and	eax, 0FFFFh
		or	ecx, eax
		mov	g_dialog.u, ecx
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425F8A:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	edx, edx	; jumptable 00425D1C case 1020
		mov	g_dialog.u, edx
		push	offset g_dialog.u
		push	offset aE	; format
		lea	ecx, [ebp-204h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425FB0:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	eax, eax	; jumptable 00425D1C case 1021
		lea	edx, [ebp-4]
		mov	[ebp-4], eax
		push	edx
		lea	ecx, [ebp-204h]
		push	offset aLu	; format
		push	ecx		; buffer
		call	_swscanf
		mov	edx, [ebp-4]
		mov	eax, g_dialog.u
		and	edx, 0FFh
		add	esp, 0Ch
		shl	edx, 8
		and	eax, 0FFFF00FFh
		or	eax, edx
		mov	g_dialog.u, eax
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_425FEF:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	ecx, ecx	; jumptable 00425D1C case 1022
		lea	eax, [ebp-4]
		mov	[ebp-4], ecx
		push	eax
		lea	edx, [ebp-204h]
		push	offset aLu	; format
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	ecx, g_dialog.u
		and	ecx, 0FFFFFF00h
		mov	eax, [ebp-4]
		and	eax, 0FFh
		or	ecx, eax
		mov	g_dialog.u, ecx
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_42602D:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		push	2		; jumptable 00425D1C case 1023
		push	offset asc_528348 ; s2
		lea	edx, [ebp-204h]
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_426066
		xor	ecx, ecx
		lea	eax, [ebp-4]
		mov	[ebp-4], ecx
		push	eax
		lea	edx, [ebp-200h]
		push	offset aLx	; format
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	short loc_426070
; ---------------------------------------------------------------------------

loc_426066:				; CODE XREF: .text:00426045j
		movzx	ecx, word ptr [ebp-204h]
		mov	[ebp-4], ecx

loc_426070:				; CODE XREF: .text:00426064j
		mov	edx, [ebp-4]
		mov	eax, g_dialog.u
		and	edx, 0FFh
		and	eax, 0FFFF00FFh
		shl	edx, 8
		or	eax, edx
		mov	g_dialog.u, eax
		jmp	loc_426144	; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_426092:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		push	2		; jumptable 00425D1C case 1024
		push	offset asc_528348 ; s2
		lea	ecx, [ebp-204h]
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4260CB
		xor	eax, eax
		lea	edx, [ebp-4]
		mov	[ebp-4], eax
		push	edx
		lea	ecx, [ebp-200h]
		push	offset aLx	; format
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	short loc_4260D5
; ---------------------------------------------------------------------------

loc_4260CB:				; CODE XREF: .text:004260AAj
		movzx	eax, word ptr [ebp-204h]
		mov	[ebp-4], eax

loc_4260D5:				; CODE XREF: .text:004260C9j
		mov	edx, g_dialog.u
		mov	ecx, [ebp-4]
		and	ecx, 0FFh
		and	edx, 0FFFFFF00h
		or	edx, ecx
		mov	g_dialog.u, edx
		jmp	short loc_426144 ; jumptable 00425D1C default case
; ---------------------------------------------------------------------------

loc_4260F4:				; CODE XREF: .text:00425D1Cj
					; DATA XREF: .text:off_425D23o
		xor	eax, eax	; jumptable 00425D1C case 1025
		mov	g_dialog.u, eax
		cmp	a3, 0
		jnz	short loc_426108
		xor	eax, eax
		jmp	short loc_426127
; ---------------------------------------------------------------------------

loc_426108:				; CODE XREF: .text:00426102j
		xor	eax, eax
		lea	edx, [ebp-204h]
		jmp	short loc_42611F
; ---------------------------------------------------------------------------

loc_426112:				; CODE XREF: .text:00426125j
		cmp	cx, 28h
		jnz	short loc_42611B
		inc	eax
		jmp	short loc_426127
; ---------------------------------------------------------------------------

loc_42611B:				; CODE XREF: .text:00426116j
		inc	eax
		add	edx, 2

loc_42611F:				; CODE XREF: .text:00426110j
		mov	cx, [edx]
		test	cx, cx
		jnz	short loc_426112

loc_426127:				; CODE XREF: .text:00426106j
					; .text:00426119j
		push	offset g_dialog.u
		push	offset aLx	; format
		add	eax, eax
		lea	edx, [ebp-204h]
		add	eax, edx
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch

loc_426144:				; CODE XREF: .text:00425CEDj
					; .text:00425D16j ...
		cmp	esi, 3F2h	; jumptable 00425D1C default case
		jz	short loc_42617F
		push	3F2h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42617F
		mov	eax, g_dialog.u
		push	eax		; u
		lea	edx, [ebp-204h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42617F:				; CODE XREF: .text:0042614Aj
					; .text:0042615Bj
		cmp	esi, 3F3h
		jz	short loc_4261C4
		push	3F3h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4261C4
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		and	eax, 0FFFFh
		push	eax
		push	offset a04x_8	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4261C4:				; CODE XREF: .text:00426185j
					; .text:00426196j
		cmp	esi, 3F4h
		jz	short loc_42620C
		push	3F4h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42620C
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		shr	eax, 8
		and	eax, 0FFh
		push	eax
		push	offset a02x_0	; "%02X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42620C:				; CODE XREF: .text:004261CAj
					; .text:004261DBj
		cmp	esi, 3F5h
		jz	short loc_426251
		push	3F5h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426251
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		and	eax, 0FFh
		push	eax
		push	offset a02x_0	; "%02X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426251:				; CODE XREF: .text:00426212j
					; .text:00426223j
		cmp	esi, 3F6h
		jz	short loc_426291
		push	3F6h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426291
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		push	eax
		push	offset aLi_2	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426291:				; CODE XREF: .text:00426257j
					; .text:00426268j
		cmp	esi, 3F7h
		jz	short loc_4262D3
		push	3F7h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4262D3
		movsx	eax, word ptr g_dialog.u
		push	eax
		push	offset aLi_2	; format
		lea	edx, [ebp-204h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4262D3:				; CODE XREF: .text:00426297j
					; .text:004262A8j
		cmp	esi, 3F8h
		jz	short loc_42631B
		push	3F8h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42631B
		mov	eax, g_dialog.u
		lea	ecx, [ebp-204h]
		shr	eax, 8
		and	al, 0FFh
		movsx	edx, al
		push	edx
		push	offset aLi_2	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-204h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42631B:				; CODE XREF: .text:004262D9j
					; .text:004262EAj
		cmp	esi, 3F9h
		jz	short loc_426360
		push	3F9h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426360
		mov	al, byte ptr g_dialog.u
		lea	ecx, [ebp-204h]
		and	al, 0FFh
		movsx	edx, al
		push	edx
		push	offset aLi_2	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-204h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426360:				; CODE XREF: .text:00426321j
					; .text:00426332j
		cmp	esi, 3FAh
		jz	short loc_4263A0
		push	3FAh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4263A0
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		push	eax
		push	offset aLu	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4263A0:				; CODE XREF: .text:00426366j
					; .text:00426377j
		cmp	esi, 3FBh
		jz	short loc_4263E5
		push	3FBh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4263E5
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		and	eax, 0FFFFh
		push	eax
		push	offset aLu	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4263E5:				; CODE XREF: .text:004263A6j
					; .text:004263B7j
		cmp	esi, 3FCh
		jz	short loc_426420
		push	3FCh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426420
		push	g_dialog.u	; f
		lea	edx, [ebp-204h]
		push	edx		; s
		call	Printfloat4
		add	esp, 8
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426420:				; CODE XREF: .text:004263EBj
					; .text:004263FCj
		cmp	esi, 3FDh
		jz	short loc_426468
		push	3FDh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426468
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		shr	eax, 8
		and	eax, 0FFh
		push	eax
		push	offset aLu	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426468:				; CODE XREF: .text:00426426j
					; .text:00426437j
		cmp	esi, 3FEh
		jz	short loc_4264AD
		push	3FEh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4264AD
		mov	eax, g_dialog.u
		lea	edx, [ebp-204h]
		and	eax, 0FFh
		push	eax
		push	offset aLu	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4264AD:				; CODE XREF: .text:0042646Ej
					; .text:0042647Fj
		cmp	esi, 3FFh
		jz	short loc_426523
		push	3FFh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426523
		mov	eax, g_dialog.u
		shr	eax, 8
		and	eax, 0FFh
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		push	edx		; c
		call	_iscntrl
		pop	ecx
		test	eax, eax
		jz	short loc_4264FE
		mov	ecx, [ebp-4]
		lea	eax, [ebp-204h]
		push	ecx
		push	offset aX02x	; "\\x%02X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_426516
; ---------------------------------------------------------------------------

loc_4264FE:				; CODE XREF: .text:004264E2j
		mov	edx, [ebp-4]
		lea	ecx, [ebp-204h]
		push	edx
		push	offset aC_2	; "%c"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_426516:				; CODE XREF: .text:004264FCj
		lea	eax, [ebp-204h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426523:				; CODE XREF: .text:004264B3j
					; .text:004264C4j
		cmp	esi, 400h
		jz	short loc_426596
		push	400h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426596
		mov	eax, g_dialog.u
		and	eax, 0FFh
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		push	edx		; c
		call	_iscntrl
		pop	ecx
		test	eax, eax
		jz	short loc_426571
		mov	ecx, [ebp-4]
		lea	eax, [ebp-204h]
		push	ecx
		push	offset aX02x	; "\\x%02X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_426589
; ---------------------------------------------------------------------------

loc_426571:				; CODE XREF: .text:00426555j
		mov	edx, [ebp-4]
		lea	ecx, [ebp-204h]
		push	edx
		push	offset aC_2	; "%c"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_426589:				; CODE XREF: .text:0042656Fj
		lea	eax, [ebp-204h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426596:				; CODE XREF: .text:00426529j
					; .text:0042653Aj
		cmp	esi, 401h
		jz	short loc_426601
		push	401h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426601
		cmp	a3, 0
		jnz	short loc_4265CF
		mov	eax, g_dialog.u
		push	eax		; u
		lea	edx, [ebp-204h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		jmp	short loc_4265E9
; ---------------------------------------------------------------------------

loc_4265CF:				; CODE XREF: .text:004265B6j
		lea	ecx, [ebp-204h]
		mov	eax, g_dialog.u
		push	ecx		; _name
		push	eax		; value
		push	offset groupname ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch

loc_4265E9:				; CODE XREF: .text:004265CDj
		test	eax, eax
		jle	short loc_426601
		lea	edx, [ebp-204h]
		push	edx		; lParam
		push	0		; wParam
		push	14Dh		; Msg
		push	ebx		; hWnd
		call	SendMessageW

loc_426601:				; CODE XREF: .text:0042659Cj
					; .text:004265ADj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_426608:				; CODE XREF: .text:004267D0p
					; .text:004267E8p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	edx, edx
		mov	edi, [ebp+0Ch]
		cmp	edx, [ebp+10h]
		mov	eax, edi
		jge	short loc_426624

loc_42661A:				; CODE XREF: .text:00426622j
		mov	byte ptr [eax],	0
		inc	edx
		inc	eax
		cmp	edx, [ebp+10h]
		jl	short loc_42661A

loc_426624:				; CODE XREF: .text:00426618j
					; .text:004266CCj
		mov	ecx, [ebp+8]
		mov	bx, [ecx]
		push	ebx		; ch
		call	__ltowupper
		pop	ecx
		mov	esi, eax
		movzx	esi, si
		cmp	esi, 30h
		jl	short loc_42667A
		cmp	esi, 39h
		jg	short loc_42667A
		mov	edx, [ebp+10h]
		dec	edx
		lea	eax, [edi+edx]
		test	edx, edx
		jle	short loc_426668

loc_42664B:				; CODE XREF: .text:00426666j
		xor	ebx, ebx
		mov	cl, [eax]
		mov	bl, [eax-1]
		dec	edx
		sar	ebx, 4
		shl	ecx, 4
		and	bl, 0Fh
		and	cl, 0F0h
		or	cl, bl
		mov	[eax], cl
		dec	eax
		test	edx, edx
		jg	short loc_42664B

loc_426668:				; CODE XREF: .text:00426649j
		mov	al, [edi]
		mov	edx, esi
		shl	eax, 4
		add	dl, 0D0h
		and	al, 0F0h
		or	al, dl
		mov	[edi], al
		jmp	short loc_4266C8
; ---------------------------------------------------------------------------

loc_42667A:				; CODE XREF: .text:00426639j
					; .text:0042663Ej
		cmp	esi, 41h
		jl	short loc_4266BE
		cmp	esi, 46h
		jg	short loc_4266BE
		mov	edx, [ebp+10h]
		dec	edx
		lea	eax, [edi+edx]
		test	edx, edx
		jle	short loc_4266AC

loc_42668F:				; CODE XREF: .text:004266AAj
		xor	ebx, ebx
		mov	cl, [eax]
		mov	bl, [eax-1]
		dec	edx
		sar	ebx, 4
		shl	ecx, 4
		and	bl, 0Fh
		and	cl, 0F0h
		or	cl, bl
		mov	[eax], cl
		dec	eax
		test	edx, edx
		jg	short loc_42668F

loc_4266AC:				; CODE XREF: .text:0042668Dj
		mov	al, [edi]
		mov	edx, esi
		shl	eax, 4
		add	dl, 0C9h
		and	al, 0F0h
		or	al, dl
		mov	[edi], al
		jmp	short loc_4266C8
; ---------------------------------------------------------------------------

loc_4266BE:				; CODE XREF: .text:0042667Dj
					; .text:00426682j
		cmp	esi, 20h
		jz	short loc_4266C8
		cmp	esi, 9
		jnz	short loc_4266D1

loc_4266C8:				; CODE XREF: .text:00426678j
					; .text:004266BCj ...
		add	dword ptr [ebp+8], 2
		jmp	loc_426624
; ---------------------------------------------------------------------------

loc_4266D1:				; CODE XREF: .text:004266C6j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4266D8(HWND hDlg, int	nIDDlgItem)
loc_4266D8:				; CODE XREF: .text:0042BCACp
					; .text:0042BCB9p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		call	loc_41100B
		push	esi		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_426820	; jumptable 00426729 default case
		push	100h		; nMaxCount
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		mov	word ptr [ebp-2], 0
		mov	edx, esi
		add	edx, 0FFFFFBAAh	; switch 8 cases
		cmp	edx, 7
		ja	loc_426820	; jumptable 00426729 default case
		jmp	ds:off_426730[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_426730	dd offset loc_426750	; DATA XREF: .text:00426729r
		dd offset loc_42676E	; jump table for switch	statement
		dd offset loc_42678C
		dd offset loc_4267A7
		dd offset loc_4267C2
		dd offset loc_4267DA
		dd offset loc_4267F2
		dd offset loc_42680A
; ---------------------------------------------------------------------------

loc_426750:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	(offset	g_dialog.data+4) ; jumptable 00426729 case 1110
		push	offset aE	; format
		lea	ecx, [ebp-200h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_426820	; jumptable 00426729 default case
; ---------------------------------------------------------------------------

loc_42676E:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	offset g_dialog.data ; jumptable 00426729 case 1111
		push	offset aE	; format
		lea	eax, [ebp-200h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_426820	; jumptable 00426729 default case
; ---------------------------------------------------------------------------

loc_42678C:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	offset g_dialog.data ; jumptable 00426729 case 1112
		push	offset aLe	; "%le"
		lea	edx, [ebp-200h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	short loc_426820 ; jumptable 00426729 default case
; ---------------------------------------------------------------------------

loc_4267A7:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	offset g_dialog.data ; jumptable 00426729 case 1113
		push	offset aLe_0	; "%Le"
		lea	ecx, [ebp-200h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	short loc_426820 ; jumptable 00426729 default case
; ---------------------------------------------------------------------------

loc_4267C2:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	4		; jumptable 00426729 case 1114
		push	(offset	g_dialog.data+4)
		lea	eax, [ebp-200h]
		push	eax
		call	loc_426608
		add	esp, 0Ch
		jmp	short loc_426820 ; jumptable 00426729 default case
; ---------------------------------------------------------------------------

loc_4267DA:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	4		; jumptable 00426729 case 1115
		push	offset g_dialog.data
		lea	edx, [ebp-200h]
		push	edx
		call	loc_426608
		add	esp, 0Ch
		jmp	short loc_426820 ; jumptable 00426729 default case
; ---------------------------------------------------------------------------

loc_4267F2:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	8		; jumptable 00426729 case 1116
		push	offset g_dialog.data
		lea	ecx, [ebp-200h]
		push	ecx
		call	loc_426608
		add	esp, 0Ch
		jmp	short loc_426820 ; jumptable 00426729 default case
; ---------------------------------------------------------------------------

loc_42680A:				; CODE XREF: .text:00426729j
					; DATA XREF: .text:off_426730o
		push	0Ah		; jumptable 00426729 case 1117
		push	offset g_dialog.data
		lea	eax, [ebp-200h]
		push	eax
		call	loc_426608
		add	esp, 0Ch

loc_426820:				; CODE XREF: .text:004266FAj
					; .text:00426723j ...
		cmp	esi, 456h	; jumptable 00426729 default case
		jz	short loc_42685B
		push	456h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_42685B
		push	dword ptr g_dialog.data+4 ; f
		lea	edx, [ebp-200h]
		push	edx		; s
		call	Printfloat4
		add	esp, 8
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_42685B:				; CODE XREF: .text:00426826j
					; .text:00426837j
		cmp	esi, 457h
		jz	short loc_426896
		push	457h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426896
		push	dword ptr g_dialog.data	; f
		lea	edx, [ebp-200h]
		push	edx		; s
		call	Printfloat4
		add	esp, 8
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426896:				; CODE XREF: .text:00426861j
					; .text:00426872j
		cmp	esi, 458h
		jz	short loc_4268D7
		push	458h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4268D7
		push	dword ptr g_dialog.data+4
		push	dword ptr g_dialog.data	; d
		lea	edx, [ebp-200h]
		push	edx		; s
		call	Printfloat8
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4268D7:				; CODE XREF: .text:0042689Cj
					; .text:004268ADj
		cmp	esi, 459h
		jz	short loc_426920
		push	459h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426920
		mov	ax, word ptr g_dialog.data+8
		lea	edx, [ebp-200h]
		push	eax
		push	dword ptr g_dialog.data+4
		push	dword ptr g_dialog.data	; ext
		push	edx		; s
		call	Printfloat10
		add	esp, 10h
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426920:				; CODE XREF: .text:004268DDj
					; .text:004268EEj
		cmp	esi, 45Ah
		jz	short loc_426960
		push	45Ah		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426960
		mov	eax, dword ptr g_dialog.data+4
		lea	edx, [ebp-200h]
		push	eax
		push	offset a08lx_0	; "%08lX"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426960:				; CODE XREF: .text:00426926j
					; .text:00426937j
		cmp	esi, 45Bh
		jz	short loc_4269A0
		push	45Bh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4269A0
		mov	eax, dword ptr g_dialog.data
		lea	edx, [ebp-200h]
		push	eax
		push	offset a08lx_0	; "%08lX"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4269A0:				; CODE XREF: .text:00426966j
					; .text:00426977j
		cmp	esi, 45Ch
		jz	short loc_4269E7
		push	45Ch		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4269E7
		mov	eax, dword ptr g_dialog.data
		mov	edx, dword ptr g_dialog.data+4
		push	eax
		push	edx
		lea	ecx, [ebp-200h]
		push	offset a08lx08lx ; "%08lX %08lX"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	eax, [ebp-200h]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4269E7:				; CODE XREF: .text:004269A6j
					; .text:004269B7j
		cmp	esi, 45Dh
		jz	short loc_426A36
		push	45Dh		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_426A36
		movzx	ecx, word ptr g_dialog.data+8
		mov	eax, dword ptr g_dialog.data
		mov	edx, dword ptr g_dialog.data+4
		push	eax
		push	edx
		push	ecx
		lea	eax, [ebp-200h]
		push	offset a04x08lx08lx ; "%04X %08lX %08lX"
		push	eax		; buffer
		call	_swprintf
		add	esp, 14h
		lea	edx, [ebp-200h]
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_426A36:				; CODE XREF: .text:004269EDj
					; .text:004269FEj
		call	loc_411014
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_426A44(HWND hDlg, int	nIDDlgItem)
loc_426A44:				; CODE XREF: .text:0042C139p
					; .text:0042C146p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF0h
		push	ebx
		push	esi
		push	edi
		mov	eax, dword_5BE244
		cmp	eax, 1
		jnz	short loc_426A61
		mov	edi, offset aLi__0 ; "%li."
		jmp	short loc_426A72
; ---------------------------------------------------------------------------

loc_426A61:				; CODE XREF: .text:00426A58j
		cmp	eax, 2
		jnz	short loc_426A6D
		mov	edi, offset aLu_ ; "%lu."
		jmp	short loc_426A72
; ---------------------------------------------------------------------------

loc_426A6D:				; CODE XREF: .text:00426A64j
		mov	edi, offset aLx	; "%lX"

loc_426A72:				; CODE XREF: .text:00426A5Fj
					; .text:00426A6Bj
		mov	eax, [ebp+0Ch]
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	loc_426BAC	; jumptable 00426ACC default case
		push	100h		; nMaxCount
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	esi		; hWnd
		call	GetWindowTextW
		mov	word ptr [ebp-12h], 0
		xor	edx, edx
		lea	ecx, [ebp-4]
		mov	[ebp-4], edx
		push	ecx
		push	edi		; format
		lea	eax, [ebp-210h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	edx, [ebp+0Ch]
		add	edx, 0FFFFFB4Fh	; switch 14 cases
		cmp	edx, 0Dh
		ja	loc_426BAC	; jumptable 00426ACC default case
		jmp	ds:off_426AD3[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_426AD3	dd offset loc_426B0B	; DATA XREF: .text:00426ACCr
		dd offset loc_426B19	; jump table for switch	statement
		dd offset loc_426B26
		dd offset loc_426B33
		dd offset loc_426B40
		dd offset loc_426B4C
		dd offset loc_426B59
		dd offset loc_426B64
		dd offset loc_426B6E
		dd offset loc_426B79
		dd offset loc_426B84
		dd offset loc_426B8E
		dd offset loc_426B99
		dd offset loc_426BA4
; ---------------------------------------------------------------------------

loc_426B0B:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	ecx, [ebp-4]	; jumptable 00426ACC case 1201
		mov	dword ptr g_dialog.data, ecx
		jmp	loc_426BAC	; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B19:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	eax, [ebp-4]	; jumptable 00426ACC case 1202
		mov	dword ptr g_dialog.data+4, eax
		jmp	loc_426BAC	; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B26:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	dx, [ebp-4]	; jumptable 00426ACC case 1203
		mov	word ptr g_dialog.data,	dx
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B33:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	cx, [ebp-4]	; jumptable 00426ACC case 1204
		mov	word ptr g_dialog.data+2, cx
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B40:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	ax, [ebp-4]	; jumptable 00426ACC case 1205
		mov	word ptr g_dialog.data+4, ax
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B4C:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	dx, [ebp-4]	; jumptable 00426ACC case 1206
		mov	word ptr g_dialog.data+6, dx
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B59:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	cl, [ebp-4]	; jumptable 00426ACC case 1207
		mov	g_dialog.data, cl
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B64:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	al, [ebp-4]	; jumptable 00426ACC case 1208
		mov	g_dialog.data+1, al
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B6E:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	dl, [ebp-4]	; jumptable 00426ACC case 1209
		mov	g_dialog.data+2, dl
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B79:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	cl, [ebp-4]	; jumptable 00426ACC case 1210
		mov	g_dialog.data+3, cl
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B84:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	al, [ebp-4]	; jumptable 00426ACC case 1211
		mov	g_dialog.data+4, al
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B8E:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	dl, [ebp-4]	; jumptable 00426ACC case 1212
		mov	g_dialog.data+5, dl
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426B99:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	cl, [ebp-4]	; jumptable 00426ACC case 1213
		mov	g_dialog.data+6, cl
		jmp	short loc_426BAC ; jumptable 00426ACC default case
; ---------------------------------------------------------------------------

loc_426BA4:				; CODE XREF: .text:00426ACCj
					; DATA XREF: .text:off_426AD3o
		mov	al, [ebp-4]	; jumptable 00426ACC case 1214
		mov	g_dialog.data+7, al

loc_426BAC:				; CODE XREF: .text:00426A83j
					; .text:00426AC6j ...
		mov	dword ptr [ebp-10h], offset g_dialog.data ; jumptable 00426ACC default case
		mov	dword ptr [ebp-0Ch], offset g_dialog.data
		mov	dword ptr [ebp-8], offset g_dialog.data
		xor	ebx, ebx

loc_426BC3:				; CODE XREF: .text:00426D63j
		cmp	ebx, 2
		jge	short loc_426C31
		lea	eax, [ebx+4B1h]
		cmp	eax, [ebp+0Ch]
		jz	short loc_426C31
		lea	edx, [ebx+4B1h]
		push	edx		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_426C31
		cmp	dword_5BE244, 0
		jnz	short loc_426C0E
		mov	eax, [ebp-8]
		lea	ecx, [ebp-210h]
		mov	edx, [eax]
		push	edx
		push	offset a08x_3	; "%08X"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_426C24
; ---------------------------------------------------------------------------

loc_426C0E:				; CODE XREF: .text:00426BF0j
		mov	eax, [ebp-8]
		lea	ecx, [ebp-210h]
		mov	edx, [eax]
		push	edx
		push	edi		; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_426C24:				; CODE XREF: .text:00426C0Cj
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	esi		; hWnd
		call	SetWindowTextW

loc_426C31:				; CODE XREF: .text:00426BC6j
					; .text:00426BD1j ...
		cmp	ebx, 4
		jge	loc_426CCB
		lea	edx, [ebx+4B3h]
		cmp	edx, [ebp+0Ch]
		jz	loc_426CCB
		lea	ecx, [ebx+4B3h]
		push	ecx		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_426CCB
		cmp	dword_5BE244, 0
		jnz	short loc_426C85
		mov	eax, [ebp-0Ch]
		lea	ecx, [ebp-210h]
		movzx	edx, word ptr [eax]
		push	edx
		push	offset a04x_8	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_426CBE
; ---------------------------------------------------------------------------

loc_426C85:				; CODE XREF: .text:00426C66j
		cmp	dword_5BE244, 1
		jnz	short loc_426CA7
		mov	eax, [ebp-0Ch]
		lea	ecx, [ebp-210h]
		movsx	edx, word ptr [eax]
		push	edx
		push	edi		; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_426CBE
; ---------------------------------------------------------------------------

loc_426CA7:				; CODE XREF: .text:00426C8Cj
		mov	eax, [ebp-0Ch]
		lea	ecx, [ebp-210h]
		movzx	edx, word ptr [eax]
		push	edx
		push	edi		; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_426CBE:				; CODE XREF: .text:00426C83j
					; .text:00426CA5j
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	esi		; hWnd
		call	SetWindowTextW

loc_426CCB:				; CODE XREF: .text:00426C34j
					; .text:00426C43j ...
		lea	eax, [ebx+4B7h]
		cmp	eax, [ebp+0Ch]
		jz	short loc_426D54
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_426D54
		cmp	dword_5BE244, 0
		jnz	short loc_426D0D
		mov	eax, [ebp-10h]
		xor	edx, edx
		lea	ecx, [ebp-210h]
		mov	dl, [eax]
		push	edx
		push	offset a02x_0	; "%02X"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_426D47
; ---------------------------------------------------------------------------

loc_426D0D:				; CODE XREF: .text:00426CEDj
		cmp	dword_5BE244, 1
		jnz	short loc_426D2F
		mov	eax, [ebp-10h]
		lea	ecx, [ebp-210h]
		movsx	edx, byte ptr [eax]
		push	edx
		push	edi		; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_426D47
; ---------------------------------------------------------------------------

loc_426D2F:				; CODE XREF: .text:00426D14j
		mov	eax, [ebp-10h]
		xor	edx, edx
		lea	ecx, [ebp-210h]
		mov	dl, [eax]
		push	edx
		push	edi		; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_426D47:				; CODE XREF: .text:00426D0Bj
					; .text:00426D2Dj
		lea	eax, [ebp-210h]
		push	eax		; lpString
		push	esi		; hWnd
		call	SetWindowTextW

loc_426D54:				; CODE XREF: .text:00426CD4j
					; .text:00426CE4j
		inc	ebx
		inc	dword ptr [ebp-10h]
		add	dword ptr [ebp-0Ch], 2
		add	dword ptr [ebp-8], 4
		cmp	ebx, 8
		jl	loc_426BC3
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_426D70(HWND hDlg, int	nIDDlgItem)
loc_426D70:				; CODE XREF: .text:0042C47Dp
					; .text:0042C48Ap ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, dword_5BE244
		cmp	eax, 1
		jnz	short loc_426D8F
		mov	dword ptr [ebp-4], offset aLi__0 ; "%li."
		jmp	short loc_426DA4
; ---------------------------------------------------------------------------

loc_426D8F:				; CODE XREF: .text:00426D84j
		cmp	eax, 2
		jnz	short loc_426D9D
		mov	dword ptr [ebp-4], offset aLu_ ; "%lu."
		jmp	short loc_426DA4
; ---------------------------------------------------------------------------

loc_426D9D:				; CODE XREF: .text:00426D92j
		mov	dword ptr [ebp-4], offset aLx ;	"%lX"

loc_426DA4:				; CODE XREF: .text:00426D8Dj
					; .text:00426D9Bj
		mov	edx, [ebp+0Ch]
		push	edx		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	loc_427088	; jumptable 00426DEA default case
		push	100h		; nMaxCount
		lea	eax, [ebp-208h]
		push	eax		; lpString
		push	esi		; hWnd
		call	GetWindowTextW
		mov	word ptr [ebp-0Ah], 0
		xor	edx, edx
		mov	[ebp-8], edx
		mov	ecx, [ebp+0Ch]
		add	ecx, 0FFFFFAEBh	; switch 18 cases
		cmp	ecx, 11h
		ja	loc_427088	; jumptable 00426DEA default case
		jmp	ds:off_426DF1[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_426DF1	dd offset loc_426E39	; DATA XREF: .text:00426DEAr
		dd offset loc_426E57	; jump table for switch	statement
		dd offset loc_426E75
		dd offset loc_426E93
		dd offset loc_426EB1
		dd offset loc_426ECF
		dd offset loc_426EED
		dd offset loc_426F0A
		dd offset loc_426F27
		dd offset loc_426F44
		dd offset loc_426F61
		dd offset loc_426F88
		dd offset loc_426FAE
		dd offset loc_426FD5
		dd offset loc_426FFC
		dd offset loc_42701F
		dd offset loc_427043
		dd offset loc_427067
; ---------------------------------------------------------------------------

loc_426E39:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	offset g_dialog.data ; jumptable 00426DEA case 1301
		push	offset aLe	; "%le"
		lea	eax, [ebp-208h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426E57:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	(offset	g_dialog.data+8) ; jumptable 00426DEA case 1302
		push	offset aLe	; "%le"
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426E75:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	offset g_dialog.data ; jumptable 00426DEA case 1303
		push	offset aE	; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426E93:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	(offset	g_dialog.data+4) ; jumptable 00426DEA case 1304
		push	offset aE	; format
		lea	eax, [ebp-208h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426EB1:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	(offset	g_dialog.data+8) ; jumptable 00426DEA case 1305
		push	offset aE	; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426ECF:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	(offset	g_dialog.data+0Ch) ; jumptable 00426DEA	case 1306
		push	offset aE	; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426EED:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	offset g_dialog.data ; jumptable 00426DEA case 1307
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426F0A:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	(offset	g_dialog.data+4) ; jumptable 00426DEA case 1308
		mov	ecx, [ebp-4]
		push	ecx		; format
		lea	eax, [ebp-208h]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426F27:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	(offset	g_dialog.data+8) ; jumptable 00426DEA case 1309
		mov	edx, [ebp-4]
		push	edx		; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426F44:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		push	(offset	g_dialog.data+0Ch) ; jumptable 00426DEA	case 1310
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426F61:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	ecx, [ebp-8]	; jumptable 00426DEA case 1311
		push	ecx
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swscanf
		mov	cx, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data,	cx
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426F88:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	eax, [ebp-8]	; jumptable 00426DEA case 1312
		push	eax
		mov	edx, [ebp-4]
		push	edx		; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swscanf
		mov	ax, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data+2, ax
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426FAE:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	edx, [ebp-8]	; jumptable 00426DEA case 1313
		push	edx
		mov	ecx, [ebp-4]
		push	ecx		; format
		lea	eax, [ebp-208h]
		push	eax		; buffer
		call	_swscanf
		mov	dx, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data+4, dx
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426FD5:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	ecx, [ebp-8]	; jumptable 00426DEA case 1314
		push	ecx
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swscanf
		mov	cx, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data+6, cx
		jmp	loc_427088	; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_426FFC:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	eax, [ebp-8]	; jumptable 00426DEA case 1315
		push	eax
		mov	edx, [ebp-4]
		push	edx		; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swscanf
		mov	ax, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data+8, ax
		jmp	short loc_427088 ; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_42701F:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	edx, [ebp-8]	; jumptable 00426DEA case 1316
		push	edx
		mov	ecx, [ebp-4]
		push	ecx		; format
		lea	eax, [ebp-208h]
		push	eax		; buffer
		call	_swscanf
		mov	dx, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data+0Ah, dx
		jmp	short loc_427088 ; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_427043:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	ecx, [ebp-8]	; jumptable 00426DEA case 1317
		push	ecx
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swscanf
		mov	cx, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data+0Ch, cx
		jmp	short loc_427088 ; jumptable 00426DEA default case
; ---------------------------------------------------------------------------

loc_427067:				; CODE XREF: .text:00426DEAj
					; DATA XREF: .text:off_426DF1o
		lea	eax, [ebp-8]	; jumptable 00426DEA case 1318
		push	eax
		mov	edx, [ebp-4]
		push	edx		; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swscanf
		mov	ax, [ebp-8]
		add	esp, 0Ch
		mov	word ptr g_dialog.data+0Eh, ax

loc_427088:				; CODE XREF: .text:00426DB5j
					; .text:00426DE4j ...
		xor	ebx, ebx	; jumptable 00426DEA default case
		mov	edi, offset g_dialog.data

loc_42708F:				; CODE XREF: .text:004270D2j
		lea	eax, [ebx+515h]
		cmp	eax, [ebp+0Ch]
		jz	short loc_4270CB
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_4270CB
		push	dword ptr [edi+4]
		push	dword ptr [edi]	; d
		lea	edx, [ebp-208h]
		push	edx		; s
		call	Printfloat8
		add	esp, 0Ch
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	esi		; hWnd
		call	SetWindowTextW

loc_4270CB:				; CODE XREF: .text:00427098j
					; .text:004270A8j
		inc	ebx
		add	edi, 8
		cmp	ebx, 2
		jl	short loc_42708F
		xor	ebx, ebx
		mov	edi, offset g_dialog.data

loc_4270DB:				; CODE XREF: .text:0042717Bj
		lea	eax, [ebx+517h]
		cmp	eax, [ebp+0Ch]
		jz	short loc_427114
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_427114
		push	dword ptr [edi]	; f
		lea	edx, [ebp-208h]
		push	edx		; s
		call	Printfloat4
		add	esp, 8
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	esi		; hWnd
		call	SetWindowTextW

loc_427114:				; CODE XREF: .text:004270E4j
					; .text:004270F4j
		lea	eax, [ebx+51Bh]
		cmp	eax, [ebp+0Ch]
		jz	short loc_427174
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_427174
		cmp	dword_5BE244, 0
		jnz	short loc_427151
		mov	eax, [edi]
		lea	edx, [ebp-208h]
		push	eax
		push	offset a08x_3	; "%08X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_427167
; ---------------------------------------------------------------------------

loc_427151:				; CODE XREF: .text:00427136j
		mov	ecx, [edi]
		push	ecx
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_427167:				; CODE XREF: .text:0042714Fj
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	esi		; hWnd
		call	SetWindowTextW

loc_427174:				; CODE XREF: .text:0042711Dj
					; .text:0042712Dj
		inc	ebx
		add	edi, 4
		cmp	ebx, 4
		jl	loc_4270DB
		xor	ebx, ebx
		mov	edi, offset g_dialog.data

loc_427188:				; CODE XREF: .text:00427213j
		lea	eax, [ebx+51Fh]
		cmp	eax, [ebp+0Ch]
		jz	short loc_42720C
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		test	esi, esi
		jz	short loc_42720C
		cmp	dword_5BE244, 0
		jnz	short loc_4271C6
		movzx	eax, word ptr [edi]
		push	eax
		push	offset a04x_8	; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4271FF
; ---------------------------------------------------------------------------

loc_4271C6:				; CODE XREF: .text:004271AAj
		cmp	dword_5BE244, 1
		jnz	short loc_4271E8
		movsx	ecx, word ptr [edi]
		push	ecx
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4271FF
; ---------------------------------------------------------------------------

loc_4271E8:				; CODE XREF: .text:004271CDj
		movzx	ecx, word ptr [edi]
		push	ecx
		mov	eax, [ebp-4]
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4271FF:				; CODE XREF: .text:004271C4j
					; .text:004271E6j
		lea	ecx, [ebp-208h]
		push	ecx		; lpString
		push	esi		; hWnd
		call	SetWindowTextW

loc_42720C:				; CODE XREF: .text:00427191j
					; .text:004271A1j
		inc	ebx
		add	edi, 2
		cmp	ebx, 8
		jl	loc_427188
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_427220:				; CODE XREF: .text:0042CD9Bp
					; .text:0042D331p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, stru_5DA5CC.sorted.selected
		mov	edi, [ebp+8]
		push	eax		; index
		push	offset stru_5DA5CC.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_427246
		xor	eax, eax
		jmp	short loc_4272B2
; ---------------------------------------------------------------------------

loc_427246:				; CODE XREF: .text:00427240j
		mov	edx, [esi]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_427284
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, 100h
		sub	eax, ebx
		push	(offset	a____1+4) ; src
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_427286
; ---------------------------------------------------------------------------

loc_427284:				; CODE XREF: .text:00427251j
		xor	ebx, ebx

loc_427286:				; CODE XREF: .text:00427282j
		mov	eax, 100h
		lea	edi, [edi+ebx*2]
		sub	eax, ebx
		push	eax		; nname
		push	edi		; _name
		mov	eax, [esi+8]
		and	eax, 0FFh
		push	eax		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4272AE
		xor	ebx, ebx
		jmp	short loc_4272B0
; ---------------------------------------------------------------------------

loc_4272AE:				; CODE XREF: .text:004272A8j
		add	ebx, eax

loc_4272B0:				; CODE XREF: .text:004272ACj
		mov	eax, ebx

loc_4272B2:				; CODE XREF: .text:00427244j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4272B8(HWND hDlg)
loc_4272B8:				; CODE XREF: .text:0042C822p
					; .text:0042CA46p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, offset stru_52348C
		cmp	eax, g_dialog.controls
		jnz	short loc_427303
		cmp	g_dialog.focus,	57Bh
		jnz	short loc_4272EF
		push	offset aFollowLabel ; "Follow label"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4272EF:				; CODE XREF: .text:004272D6j
		push	offset aFollowExpressi ; "Follow expression"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW

loc_427303:				; CODE XREF: .text:004272CAj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_427308(HWND hDlg, LPCWSTR lpRootPathName)
loc_427308:				; CODE XREF: .text:0042D6D8p
					; .text:0042D7D0p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	ebx, ebx
		jz	loc_427447
		cmp	word ptr [ebx],	0
		jz	loc_427447
		mov	eax, g_hCursor
		push	eax		; hCursor
		call	SetCursor
		mov	edi, eax
		mov	word ptr [ebx+4], 5Ch
		mov	word ptr [ebx+6], 0
		mov	VolumeNameBuffer, 0
		mov	FileSystemNameBuffer, 0
		push	20h		; nFileSystemNameSize
		push	offset FileSystemNameBuffer ; lpFileSystemNameBuffer
		lea	eax, [ebp-8]
		push	eax		; lpFileSystemFlags
		lea	edx, [ebp-4]
		push	edx		; lpMaximumComponentLength
		push	0		; lpVolumeSerialNumber
		push	20h		; nVolumeNameSize
		push	offset VolumeNameBuffer	; lpVolumeNameBuffer
		push	ebx		; lpRootPathName
		call	GetVolumeInformationW
		push	offset VolumeNameBuffer	; lpString
		push	642h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		push	offset FileSystemNameBuffer ; lpString
		push	643h		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		xor	eax, eax
		mov	[ebp-10h], eax
		xor	edx, edx
		mov	[ebp-18h], edx
		lea	ecx, [ebp-18h]
		push	ecx		; lpTotalNumberOfClusters
		lea	eax, [ebp-14h]
		push	eax		; lpNumberOfFreeClusters
		lea	edx, [ebp-10h]
		push	edx		; lpBytesPerSector
		lea	ecx, [ebp-0Ch]
		push	ecx		; lpSectorsPerCluster
		push	ebx		; lpRootPathName
		call	GetDiskFreeSpaceW
		mov	esi, [ebp-10h]
		mov	eax, [ebp-10h]
		imul	esi, [ebp-0Ch]
		mov	dword_5DA86C, eax
		mov	dword_5DA870, esi
		cmp	_imp__GetDiskFreeSpaceExW, 0
		jnz	short loc_4273F2
		mov	eax, [ebp-18h]
		xor	edx, edx
		push	edx
		push	eax
		mov	eax, esi
		cdq
		call	__llmul
		mov	dword_5DA864, eax
		mov	dword_5DA868, edx
		jmp	short loc_427441
; ---------------------------------------------------------------------------

loc_4273F2:				; CODE XREF: .text:004273D3j
		mov	dword ptr [ebp-20h], 0
		mov	dword ptr [ebp-1Ch], 0
		mov	dword ptr [ebp-28h], 0
		mov	dword ptr [ebp-24h], 0
		mov	dword ptr [ebp-30h], 0
		mov	dword ptr [ebp-2Ch], 0
		lea	ecx, [ebp-30h]
		push	ecx
		lea	eax, [ebp-28h]
		push	eax
		lea	edx, [ebp-20h]
		push	edx
		push	ebx
		call	_imp__GetDiskFreeSpaceExW
		mov	ecx, [ebp-28h]
		mov	dword_5DA864, ecx
		mov	ecx, [ebp-24h]
		mov	dword_5DA868, ecx

loc_427441:				; CODE XREF: .text:004273F0j
		push	edi		; hCursor
		call	SetCursor

loc_427447:				; CODE XREF: .text:00427319j
					; .text:00427323j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_427450(HWND hDlg, int	nIDDlgItem)
loc_427450:				; CODE XREF: .text:0042D6F8p
					; .text:0042D7E2p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	eax, [ebp+0Ch]
		push	eax		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4275FE	; jumptable 0042749D default case
		push	100h		; nMaxCount
		lea	eax, [ebp-20Ch]
		push	eax		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		mov	word ptr [ebp-0Eh], 0
		mov	edx, [ebp+0Ch]
		add	edx, 0FFFFF9BCh	; switch 6 cases
		cmp	edx, 5
		ja	loc_4275FE	; jumptable 0042749D default case
		jmp	ds:off_4274A4[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4274A4	dd offset loc_4274BC	; DATA XREF: .text:0042749Dr
		dd offset loc_4274EE	; jump table for switch	statement
		dd offset loc_427538
		dd offset loc_42757F
		dd offset loc_4275A2
		dd offset loc_4275D1
; ---------------------------------------------------------------------------

loc_4274BC:				; CODE XREF: .text:0042749Dj
					; DATA XREF: .text:off_4274A4o
		mov	lDistanceToMove, 0 ; jumptable 0042749D	case 1604
		mov	dword_5DA85C, 0
		push	offset lDistanceToMove
		push	offset aLi_1	; format
		lea	ecx, [ebp-20Ch]
		push	ecx		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	loc_4275FE	; jumptable 0042749D default case
; ---------------------------------------------------------------------------

loc_4274EE:				; CODE XREF: .text:0042749Dj
					; DATA XREF: .text:off_4274A4o
		mov	dword ptr [ebp-0Ch], 0 ; jumptable 0042749D case 1605
		mov	dword ptr [ebp-8], 0
		lea	eax, [ebp-0Ch]
		lea	edx, [ebp-20Ch]
		push	eax
		push	offset aLi_1	; format
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	eax, dword_5DA86C
		cdq
		push	edx
		push	eax
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-8]
		call	__llmul
		mov	lDistanceToMove, eax
		mov	dword_5DA85C, edx
		jmp	loc_4275FE	; jumptable 0042749D default case
; ---------------------------------------------------------------------------

loc_427538:				; CODE XREF: .text:0042749Dj
					; DATA XREF: .text:off_4274A4o
		mov	dword ptr [ebp-0Ch], 0 ; jumptable 0042749D case 1606
		mov	dword ptr [ebp-8], 0
		lea	ecx, [ebp-0Ch]
		lea	eax, [ebp-20Ch]
		push	ecx
		push	offset aLi_1	; format
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	eax, dword_5DA870
		cdq
		push	edx
		push	eax
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-8]
		call	__llmul
		mov	lDistanceToMove, eax
		mov	dword_5DA85C, edx
		jmp	short loc_4275FE ; jumptable 0042749D default case
; ---------------------------------------------------------------------------

loc_42757F:				; CODE XREF: .text:0042749Dj
					; DATA XREF: .text:off_4274A4o
		xor	ecx, ecx	; jumptable 0042749D case 1607
		mov	dwBytes, ecx
		push	offset dwBytes
		push	offset aLi_2	; format
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		jmp	short loc_4275FE ; jumptable 0042749D default case
; ---------------------------------------------------------------------------

loc_4275A2:				; CODE XREF: .text:0042749Dj
					; DATA XREF: .text:off_4274A4o
		xor	edx, edx	; jumptable 0042749D case 1608
		lea	ecx, [ebp-4]
		mov	[ebp-4], edx
		push	ecx
		lea	eax, [ebp-20Ch]
		push	offset aLi_2	; format
		push	eax		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	edx, [ebp-4]
		imul	edx, dword_5DA86C
		mov	dwBytes, edx
		jmp	short loc_4275FE ; jumptable 0042749D default case
; ---------------------------------------------------------------------------

loc_4275D1:				; CODE XREF: .text:0042749Dj
					; DATA XREF: .text:off_4274A4o
		xor	ecx, ecx	; jumptable 0042749D case 1609
		lea	eax, [ebp-4]
		mov	[ebp-4], ecx
		push	eax
		lea	edx, [ebp-20Ch]
		push	offset aLi_2	; format
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	ecx, [ebp-4]
		imul	ecx, dword_5DA870
		mov	dwBytes, ecx

loc_4275FE:				; CODE XREF: .text:0042746Dj
					; .text:00427497j ...
		cmp	dword ptr [ebp+0Ch], 644h ; jumptable 0042749D default case
		jz	short loc_427645
		push	644h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_427645
		push	dword_5DA85C
		push	lDistanceToMove
		push	offset aLi_1	; format
		lea	edx, [ebp-20Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	ecx, [ebp-20Ch]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_427645:				; CODE XREF: .text:00427605j
					; .text:00427616j
		cmp	dword ptr [ebp+0Ch], 645h
		jz	loc_427716
		push	645h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_427716
		cmp	dword_5DA86C, 0
		jnz	short loc_42768B
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_427709
; ---------------------------------------------------------------------------

loc_42768B:				; CODE XREF: .text:0042766Ej
		mov	eax, dword_5DA86C
		cdq
		push	edx
		push	eax
		mov	eax, lDistanceToMove
		mov	edx, dword_5DA85C
		call	__lldiv
		mov	[ebp-0Ch], eax
		mov	[ebp-8], edx
		push	dword ptr [ebp-8]
		push	dword ptr [ebp-0Ch]
		push	offset aLi_1	; format
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	esi, eax
		mov	eax, dword_5DA86C
		cdq
		push	edx
		push	eax
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-8]
		call	__llmul
		cmp	edx, dword_5DA85C
		jnz	short loc_4276E7
		cmp	eax, lDistanceToMove

loc_4276E7:				; CODE XREF: .text:004276DFj
		jz	short loc_427709
		mov	ecx, 100h
		lea	eax, [ebp-20Ch]
		sub	ecx, esi
		add	esi, esi
		push	offset asc_52A77E ; "+"
		push	ecx		; n
		add	esi, eax
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_427709:				; CODE XREF: .text:00427689j
					; .text:loc_4276E7j
		lea	edx, [ebp-20Ch]
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_427716:				; CODE XREF: .text:0042764Cj
					; .text:00427661j
		cmp	dword ptr [ebp+0Ch], 646h
		jz	loc_4277E7
		push	646h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4277E7
		cmp	dword_5DA870, 0
		jnz	short loc_42775C
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4277DA
; ---------------------------------------------------------------------------

loc_42775C:				; CODE XREF: .text:0042773Fj
		mov	eax, dword_5DA870
		cdq
		push	edx
		push	eax
		mov	eax, lDistanceToMove
		mov	edx, dword_5DA85C
		call	__lldiv
		mov	[ebp-0Ch], eax
		mov	[ebp-8], edx
		push	dword ptr [ebp-8]
		push	dword ptr [ebp-0Ch]
		push	offset aLi_1	; format
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	esi, eax
		mov	eax, dword_5DA870
		cdq
		push	edx
		push	eax
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-8]
		call	__llmul
		cmp	edx, dword_5DA85C
		jnz	short loc_4277B8
		cmp	eax, lDistanceToMove

loc_4277B8:				; CODE XREF: .text:004277B0j
		jz	short loc_4277DA
		mov	ecx, 100h
		lea	eax, [ebp-20Ch]
		sub	ecx, esi
		add	esi, esi
		push	offset asc_52A77E ; "+"
		push	ecx		; n
		add	esi, eax
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4277DA:				; CODE XREF: .text:0042775Aj
					; .text:loc_4277B8j
		lea	edx, [ebp-20Ch]
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4277E7:				; CODE XREF: .text:0042771Dj
					; .text:00427732j
		cmp	dword ptr [ebp+0Ch], 647h
		jz	short loc_427828
		push	647h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_427828
		mov	eax, dwBytes
		lea	edx, [ebp-20Ch]
		push	eax
		push	offset aLi_2	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-20Ch]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_427828:				; CODE XREF: .text:004277EEj
					; .text:004277FFj
		cmp	dword ptr [ebp+0Ch], 648h
		jz	loc_4278D5
		push	648h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4278D5
		cmp	dword_5DA86C, 0
		jnz	short loc_42786E
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4278C8
; ---------------------------------------------------------------------------

loc_42786E:				; CODE XREF: .text:00427851j
		mov	eax, dwBytes
		cdq
		idiv	dword_5DA86C
		mov	[ebp-4], eax
		lea	eax, [ebp-20Ch]
		mov	ecx, [ebp-4]
		push	ecx
		push	offset aLi_2	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		mov	eax, [ebp-4]
		imul	dword_5DA86C
		cmp	eax, dwBytes
		jz	short loc_4278C8
		mov	edx, 100h
		lea	ecx, [ebp-20Ch]
		sub	edx, esi
		add	esi, esi
		push	offset asc_52A77E ; "+"
		push	edx		; n
		add	esi, ecx
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4278C8:				; CODE XREF: .text:0042786Cj
					; .text:004278A6j
		lea	eax, [ebp-20Ch]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_4278D5:				; CODE XREF: .text:0042782Fj
					; .text:00427844j
		cmp	dword ptr [ebp+0Ch], 649h
		jz	loc_427982
		push	649h		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_427982
		cmp	dword_5DA870, 0
		jnz	short loc_42791B
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_427975
; ---------------------------------------------------------------------------

loc_42791B:				; CODE XREF: .text:004278FEj
		mov	eax, dwBytes
		cdq
		idiv	dword_5DA870
		mov	[ebp-4], eax
		lea	eax, [ebp-20Ch]
		mov	ecx, [ebp-4]
		push	ecx
		push	offset aLi_2	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		mov	eax, [ebp-4]
		imul	dword_5DA870
		cmp	eax, dwBytes
		jz	short loc_427975
		mov	edx, 100h
		lea	ecx, [ebp-20Ch]
		sub	edx, esi
		add	esi, esi
		push	offset asc_52A77E ; "+"
		push	edx		; n
		add	esi, ecx
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_427975:				; CODE XREF: .text:00427919j
					; .text:00427953j
		lea	eax, [ebp-20Ch]
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW

loc_427982:				; CODE XREF: .text:004278DCj
					; .text:004278F1j
		mov	ebx, (offset aOd_empty+0Fh) ; ""
		mov	eax, dwBytes
		cdq
		add	eax, lDistanceToMove
		adc	edx, dword_5DA85C
		cmp	edx, dword_5DA868
		jnz	short loc_4279A7
		cmp	eax, dword_5DA864

loc_4279A7:				; CODE XREF: .text:0042799Fj
		jbe	short loc_4279B6
		push	offset aDataExtendsBey ; src
		call	_T
		pop	ecx
		mov	ebx, eax

loc_4279B6:				; CODE XREF: .text:loc_4279A7j
		mov	eax, lDistanceToMove
		mov	edx, dword_5DA85C
		cmp	edx, dword_5DA868
		jnz	short loc_4279D0
		cmp	eax, dword_5DA864

loc_4279D0:				; CODE XREF: .text:004279C8j
		jb	short loc_4279DF
		push	offset aDataOffsetExce ; src
		call	_T
		pop	ecx
		mov	ebx, eax

loc_4279DF:				; CODE XREF: .text:loc_4279D0j
		cmp	dword_5DA85C, 0
		jnz	short loc_4279F3
		cmp	lDistanceToMove, 0
		jnb	short loc_427A02
		jmp	short loc_4279F5
; ---------------------------------------------------------------------------

loc_4279F3:				; CODE XREF: .text:004279E6j
		jge	short loc_427A02

loc_4279F5:				; CODE XREF: .text:004279F1j
		push	offset aNegativeOffset ; src
		call	_T
		pop	ecx
		mov	ebx, eax

loc_427A02:				; CODE XREF: .text:004279EFj
					; .text:loc_4279F3j
		cmp	dwBytes, 0
		jge	short loc_427A18
		push	offset aNegativeSizeIs ; "Negative size	is not allowed"
		call	_T
		pop	ecx
		mov	ebx, eax

loc_427A18:				; CODE XREF: .text:00427A09j
		cmp	dwBytes, 0
		jnz	short loc_427A2E
		push	offset aZeroSizeIsNotA ; "Zero size is not allowed"
		call	_T
		pop	ecx
		mov	ebx, eax

loc_427A2E:				; CODE XREF: .text:00427A1Fj
		cmp	dwBytes, 10000000h
		jle	short loc_427A47
		push	offset aDataSizeExceed ; src
		call	_T
		pop	ecx
		mov	ebx, eax

loc_427A47:				; CODE XREF: .text:00427A38j
		push	ebx		; lpString
		push	64Ah		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		cmp	word ptr [ebx],	0
		setz	al
		and	eax, 1
		push	eax		; bEnable
		push	1		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_427A74(HWND hDlg)
loc_427A74:				; CODE XREF: .text:0042DCF4p
					; .text:0042E012p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF51Ch
		push	ebx
		push	esi
		mov	esi, offset dword_5DA8F4
		push	edi
		mov	edi, [ebp+8]
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_427ABB
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	edx, [eax+288h]
		jbe	short loc_427ABB
		cmp	dword_5BE238, 0
		jz	short loc_427AE0
		mov	eax, [esi]
		mov	edx, [eax+288h]
		cmp	edx, [eax+28Ch]
		jb	short loc_427AE0

loc_427ABB:				; CODE XREF: .text:00427A93j
					; .text:00427AA0j
		push	(offset	aOd_empty+0Fh) ; lpString
		push	6A5h		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		push	(offset	aOd_empty+0Fh) ; lpString
		push	6A6h		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		jmp	loc_427C4B
; ---------------------------------------------------------------------------

loc_427AE0:				; CODE XREF: .text:00427AA9j
					; .text:00427AB9j
		mov	ecx, [esi]
		mov	eax, [ecx+288h]
		push	eax		; u
		lea	edx, [ebp-204h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		lea	ecx, [ebp-204h]
		push	ecx		; lpString
		push	6A5h		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		mov	eax, [esi]
		mov	ebx, [eax]
		add	ebx, [eax+4]
		sub	ebx, [eax+288h]
		cmp	ebx, 10h
		jbe	short loc_427B21
		mov	ebx, 10h

loc_427B21:				; CODE XREF: .text:00427B1Aj
		cmp	dword ptr [eax+298h], 0
		jz	short loc_427B54
		push	ebx		; n
		mov	eax, [esi]
		mov	ecx, [esi]
		mov	edx, [eax+298h]
		lea	eax, [ebp-214h]
		add	edx, [ecx+288h]
		push	edx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	eax, eax
		mov	edx, 1
		jmp	short loc_427B92
; ---------------------------------------------------------------------------

loc_427B54:				; CODE XREF: .text:00427B28j
		push	5		; mode
		push	ebx		; size
		mov	ecx, [esi]
		mov	eax, [ecx+288h]
		push	eax		; _addr
		lea	edx, [ebp-214h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		lea	ecx, [ebp-4]
		push	ecx		; psize
		mov	eax, [esi]
		mov	edx, [eax+288h]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		cmp	ebx, [ebp-4]
		jbe	short loc_427B8D
		xor	eax, eax

loc_427B8D:				; CODE XREF: .text:00427B89j
		mov	edx, 11h

loc_427B92:				; CODE XREF: .text:00427B52j
		test	ebx, ebx
		jbe	short loc_427BBE
		push	0		; predict
		push	0		; reg
		push	edx		; mode
		lea	ecx, [ebp-1AE4h]
		push	ecx		; da
		push	eax		; dec
		mov	eax, [esi]
		lea	ecx, [ebp-214h]
		mov	edx, [eax+288h]
		push	edx		; ip
		push	ebx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	ebx, eax

loc_427BBE:				; CODE XREF: .text:00427B94j
		test	ebx, ebx
		jnz	short loc_427BD4
		push	(offset	aOd_empty+0Fh) ; lpString
		push	6A6h		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		jmp	short loc_427C4B
; ---------------------------------------------------------------------------

loc_427BD4:				; CODE XREF: .text:00427BC0j
		lea	eax, [ebp-718h]
		push	eax		; lpString
		push	6A6h		; nIDDlgItem
		push	edi		; hDlg
		call	SetDlgItemTextW
		push	0FFFF0000h	; lParam
		push	0		; wParam
		push	142h		; Msg
		push	6A6h		; nIDDlgItem
		push	edi		; hDlg
		call	SendDlgItemMessageW
		push	0		; mode
		mov	eax, [esi]
		mov	edx, [eax+288h]
		push	edx		; _addr
		push	eax		; pd
		call	Scrolldumpwindow
		add	esp, 0Ch
		cmp	dword_5BE238, 0
		jnz	short loc_427C34
		mov	eax, [esi]
		add	ebx, [eax+288h]
		mov	[eax+28Ch], ebx
		mov	edx, [eax+288h]
		mov	[eax+294h], edx

loc_427C34:				; CODE XREF: .text:00427C18j
		push	101h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	ecx, [esi]
		mov	eax, [ecx+244h]
		push	eax		; hWnd
		call	RedrawWindow

loc_427C4B:				; CODE XREF: .text:00427ADBj
					; .text:00427BD2j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_427C54(HWND hDlg, int)
loc_427C54:				; CODE XREF: .text:0042E41Bp
					; .text:0042E50Bp ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_427C5D:				; CODE XREF: .text:00427C65j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_427C5D
		mov	eax, [ebp-4]
		add	esp, 4
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	1000h		; nname
		lea	eax, [ebp-2000h]
		push	eax		; _name
		push	6Fh		; type
		push	edi		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 1000h
		jb	short loc_427C9C
		mov	ebx, 0FFFh

loc_427C9C:				; CODE XREF: .text:00427C95j
		xor	eax, eax
		test	edi, edi
		jz	short loc_427CA3
		inc	eax

loc_427CA3:				; CODE XREF: .text:00427CA0j
		push	eax		; bEnable
		push	775h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		xor	edx, edx
		test	ebx, ebx
		jz	short loc_427CBC
		inc	edx

loc_427CBC:				; CODE XREF: .text:00427CB9j
		push	edx		; bEnable
		push	774h		; nIDDlgItem
		push	esi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		mov	dword_5DA90C, edi
		lea	ecx, [ebp-2000h]
		mov	word ptr [ebp+ebx*2-2000h], 0
		push	ecx		; lpString
		push	76Dh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextW
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_427CF8(HWND hDlg)
loc_427CF8:				; CODE XREF: .text:0042EBD5p
					; .text:0042EBFBp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	0		; bErase
		push	0		; lpRect
		push	7D2h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	0		; bErase
		push	0		; lpRect
		push	7D4h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	0		; bErase
		push	0		; lpRect
		push	7D5h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		push	0		; bErase
		push	0		; lpRect
		push	7D6h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_427D58:				; CODE XREF: .text:00427EB2p
					; .text:00428075p ...
		push	ebp
		mov	ebp, esp
		push	0		; nBytes
		push	offset byte_5DB51C ; a6
		push	offset sel1	; sel1
		push	400h		; cb
		mov	eax, dword_5DBD38
		sar	eax, 1
		jns	short loc_427D78
		adc	eax, 0

loc_427D78:				; CODE XREF: .text:00427D73j
		push	eax		; nb
		push	offset sel0	; sel0
		mov	edx, mbcscodepage
		push	edx		; CodePage
		call	Getmbstringinfo
		add	esp, 1Ch
		mov	dword_5DBD1C, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
