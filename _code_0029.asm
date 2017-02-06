.code
	
; int __cdecl loc_423624(int, UINT uVirtKey, __int16, int, int)
loc_423624:				; CODE XREF: .text:00424885p
					; .text:00424A08p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEFCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+18h]
		mov	ebx, [ebp+0Ch]
		lea	eax, [ebp-104h]
		push	eax		; lpKeyState
		call	GetKeyboardState
		mov	byte ptr [ebp-0F3h], 0
		mov	byte ptr [ebp-62h], 0
		mov	byte ptr [ebp-61h], 0
		xor	edx, edx
		lea	eax, [ebp-4]
		mov	[ebp-2], dx
		lea	ecx, [ebp-104h]
		mov	[ebp-4], dx
		push	0		; uFlags
		push	eax		; lpChar
		push	ecx		; lpKeyState
		push	0		; uScanCode
		push	ebx		; uVirtKey
		call	ToAscii
		dec	eax
		jz	short loc_423679
		mov	word ptr [ebp-4], 0

loc_423679:				; CODE XREF: .text:00423671j
		and	ebx, 0FFFFh
		movzx	esi, word ptr [ebp-4]
		push	esi		; ch
		call	__ltoupper
		pop	ecx
		or	eax, 10000h
		mov	esi, eax
		push	10h		; nVirtKey
		call	GetKeyState
		test	ah, 80h
		jz	short loc_4236A3
		or	ebx, 20000h

loc_4236A3:				; CODE XREF: .text:0042369Bj
		push	11h		; nVirtKey
		call	GetKeyState
		test	ah, 80h
		jz	short loc_4236BB
		or	ebx, 40000h
		or	esi, 40000h

loc_4236BB:				; CODE XREF: .text:004236ADj
		cmp	dword ptr [ebp+8], 100h
		jz	short loc_4236CD
		cmp	dword ptr [ebp+8], 104h
		jnz	short loc_4236DF

loc_4236CD:				; CODE XREF: .text:004236C2j
		test	byte ptr [ebp+13h], 20h
		jz	short loc_4236DF
		or	ebx, 80000h
		or	esi, 80000h

loc_4236DF:				; CODE XREF: .text:004236CBj
					; .text:004236D1j
		push	5Bh		; nVirtKey
		call	GetKeyState
		test	ah, 80h
		jnz	short loc_4236F7
		push	5Ch		; nVirtKey
		call	GetKeyState
		test	ah, 80h
		jz	short loc_423703

loc_4236F7:				; CODE XREF: .text:004236E9j
		or	ebx, 100000h
		or	esi, 100000h

loc_423703:				; CODE XREF: .text:004236F5j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_42370E
		mov	eax, [ebp+14h]
		mov	[eax], ebx

loc_42370E:				; CODE XREF: .text:00423707j
		test	edi, edi
		jz	short loc_423721
		cmp	word ptr [ebp-4], 0
		jnz	short loc_42371F
		xor	edx, edx
		mov	[edi], edx
		jmp	short loc_423721
; ---------------------------------------------------------------------------

loc_42371F:				; CODE XREF: .text:00423717j
		mov	[edi], esi

loc_423721:				; CODE XREF: .text:00423710j
					; .text:0042371Dj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_423728(HWND hDlg, int)
loc_423728:				; CODE XREF: .text:00424B8Cp
					; .text:00424CD0p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_42387E
		test	eax, eax
		jl	short loc_423756
		cmp	eax, 15Bh
		jge	short loc_423756
		mov	edx, eax
		shl	edx, 4
		cmp	dword_51945C[edx], 0
		jnz	short loc_42375F

loc_423756:				; CODE XREF: .text:0042373Fj
					; .text:00423746j
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_423776
; ---------------------------------------------------------------------------

loc_42375F:				; CODE XREF: .text:00423754j
		shl	eax, 4
		mov	edx, dword_51945C[eax]
		mov	esi, dword_5D919C[edx*4]
		mov	dword ptr [ebp-4], 1

loc_423776:				; CODE XREF: .text:0042375Dj
		test	esi, 40000h
		mov	eax, 1
		jnz	short loc_423784
		dec	eax

loc_423784:				; CODE XREF: .text:00423781j
		push	eax		; uCheck
		push	0C82h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		mov	edx, [ebp-4]
		push	edx		; bEnable
		push	0C82h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		test	esi, 80000h
		mov	ecx, 1
		jnz	short loc_4237B3
		dec	ecx

loc_4237B3:				; CODE XREF: .text:004237B0j
		push	ecx		; uCheck
		push	0C83h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		mov	eax, [ebp-4]
		push	eax		; bEnable
		push	0C83h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		test	esi, 100000h
		mov	edx, 1
		jnz	short loc_4237E2
		dec	edx

loc_4237E2:				; CODE XREF: .text:004237DFj
		push	edx		; uCheck
		push	0C84h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		mov	ecx, [ebp-4]
		push	ecx		; bEnable
		push	0C84h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		test	esi, 20000h
		mov	eax, 1
		jnz	short loc_423811
		dec	eax

loc_423811:				; CODE XREF: .text:0042380Ej
		push	eax		; uCheck
		push	0C85h		; nIDButton
		push	ebx		; hDlg
		call	CheckDlgButton
		mov	edx, [ebp-4]
		push	edx		; bEnable
		push	0C85h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		xor	eax, eax
		mov	edx, offset dword_51AD64

loc_423839:				; CODE XREF: .text:00423854j
		mov	ecx, [edx]
		mov	edi, esi
		and	edi, 1FFFFh
		and	ecx, 1FFFFh
		cmp	ecx, edi
		jz	short loc_423856
		inc	eax
		add	edx, 4
		cmp	eax, 6Dh
		jl	short loc_423839

loc_423856:				; CODE XREF: .text:0042384Bj
		push	0		; lParam
		push	eax		; wParam
		push	14Eh		; Msg
		push	0C86h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		mov	eax, [ebp-4]
		push	eax		; bEnable
		push	0C86h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow

loc_42387E:				; CODE XREF: .text:00423737j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_423884(HWND hDlg)
loc_423884:				; CODE XREF: .text:00424E10p
					; .text:00424E4Fp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_423898
		or	eax, 0FFFFFFFFh
		jmp	loc_42391B
; ---------------------------------------------------------------------------

loc_423898:				; CODE XREF: .text:0042388Ej
		push	0		; lParam
		push	0		; wParam
		push	147h		; Msg
		push	0C86h		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		test	eax, eax
		jl	short loc_4238B5
		cmp	eax, 6Dh
		jl	short loc_4238BA

loc_4238B5:				; CODE XREF: .text:004238AEj
		or	eax, 0FFFFFFFFh
		jmp	short loc_42391B
; ---------------------------------------------------------------------------

loc_4238BA:				; CODE XREF: .text:004238B3j
		mov	esi, dword_51AD64[eax*4]
		test	esi, esi
		jz	short loc_423919
		push	0C82h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4238DA
		or	esi, 40000h

loc_4238DA:				; CODE XREF: .text:004238D2j
		push	0C83h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_4238EF
		or	esi, 80000h

loc_4238EF:				; CODE XREF: .text:004238E7j
		push	0C84h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_423904
		or	esi, 100000h

loc_423904:				; CODE XREF: .text:004238FCj
		push	0C85h		; nIDButton
		push	ebx		; hDlg
		call	IsDlgButtonChecked
		test	eax, eax
		jz	short loc_423919
		or	esi, 20000h

loc_423919:				; CODE XREF: .text:004238C3j
					; .text:00423911j
		mov	eax, esi

loc_42391B:				; CODE XREF: .text:00423893j
					; .text:004238B8j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_423920(HWND hDlg, int, int)
loc_423920:				; CODE XREF: .text:00424BBBp
					; .text:00424CF6p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF7F4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		xor	esi, esi
		mov	dword ptr [ebp-0Ch], (offset aMainMenuFile+1Dh)	; ""
		cmp	dword ptr [ebp+8], 0
		jz	short loc_423944
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_423957

loc_423944:				; CODE XREF: .text:0042393Cj
		push	offset aInternalErro_0 ; "\n Internal error"
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		or	esi, 0FFFFFFFFh
		jmp	short loc_423962
; ---------------------------------------------------------------------------

loc_423957:				; CODE XREF: .text:00423942j
		mov	eax, [ebp+0Ch]
		cmp	dword ptr [eax], 0
		jnz	short loc_423962
		or	esi, 0FFFFFFFFh

loc_423962:				; CODE XREF: .text:00423955j
					; .text:0042395Dj
		test	esi, esi
		jnz	loc_423A98
		mov	edi, ebx
		and	edi, 1FFFFh
		cmp	ebx, 40073h
		jz	short loc_4239B0
		cmp	ebx, 40075h
		jz	short loc_4239B0
		cmp	ebx, 80073h
		jz	short loc_4239B0
		cmp	ebx, 80079h
		jz	short loc_4239B0
		cmp	ebx, 80009h
		jz	short loc_4239B0
		cmp	ebx, 0A0009h
		jz	short loc_4239B0
		mov	eax, ebx
		and	eax, 0CFFFFh
		cmp	eax, 0C002Eh
		jnz	short loc_4239C1

loc_4239B0:				; CODE XREF: .text:00423978j
					; .text:00423980j ...
		push	offset aShortcutIsRe_1 ; "\n Shortcut is reserved by OS"
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		or	esi, 0FFFFFFFFh

loc_4239C1:				; CODE XREF: .text:004239AEj
		cmp	ebx, 10030h
		jl	short loc_4239D1
		cmp	ebx, 10039h
		jle	short loc_4239DB

loc_4239D1:				; CODE XREF: .text:004239C7j
		cmp	ebx, 41h
		jl	short loc_4239EC
		cmp	ebx, 46h
		jg	short loc_4239EC

loc_4239DB:				; CODE XREF: .text:004239CFj
		push	offset aShortcutIsRese ; "\n Shortcut is reserved by OllyDbg"
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		or	esi, 0FFFFFFFFh

loc_4239EC:				; CODE XREF: .text:004239D4j
					; .text:004239D9j
		mov	eax, [ebp+0Ch]
		test	byte ptr [eax+6], 20h
		jz	short loc_423A0E
		test	ebx, 20000h
		jz	short loc_423A0E
		push	offset aShiftIsNotAllo ; "\n Shift is not allowed (used	as comman"...
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		or	esi, 0FFFFFFFFh

loc_423A0E:				; CODE XREF: .text:004239F3j
					; .text:004239FBj
		cmp	edi, 60h
		jl	short loc_423A18
		cmp	edi, 69h
		jle	short loc_423A1D

loc_423A18:				; CODE XREF: .text:00423A11j
		cmp	edi, 6Eh
		jnz	short loc_423A36

loc_423A1D:				; CODE XREF: .text:00423A16j
		test	ebx, 20000h
		jz	short loc_423A36
		push	offset aShiftIsNotAl_2 ; "\n Shift is not allowed (turns numeric "...
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		or	esi, 0FFFFFFFFh

loc_423A36:				; CODE XREF: .text:00423A1Bj
					; .text:00423A23j
		test	ebx, 10000h
		jz	short loc_423A57
		test	ebx, 20000h
		jz	short loc_423A57
		push	offset aShiftIsNotAl_1 ; "\n Shift is not allowed (key is process"...
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		or	esi, 0FFFFFFFFh

loc_423A57:				; CODE XREF: .text:00423A3Cj
					; .text:00423A44j
		cmp	edi, 26h
		jz	short loc_423A7F
		cmp	edi, 28h
		jz	short loc_423A7F
		cmp	edi, 25h
		jz	short loc_423A7F
		cmp	edi, 27h
		jz	short loc_423A7F
		cmp	edi, 21h
		jz	short loc_423A7F
		cmp	edi, 22h
		jz	short loc_423A7F
		cmp	edi, 24h
		jz	short loc_423A7F
		cmp	edi, 23h
		jnz	short loc_423A98

loc_423A7F:				; CODE XREF: .text:00423A5Aj
					; .text:00423A5Fj ...
		test	ebx, 80000h
		jnz	short loc_423A98
		push	offset aThisKeyCanBeUs ; "\n This key can be used only in combina"...
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		or	esi, 0FFFFFFFFh

loc_423A98:				; CODE XREF: .text:00423964j
					; .text:00423A7Dj ...
		test	esi, esi
		jnz	loc_423B73
		test	ebx, 0FFFFh
		jz	loc_423B73
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-8], eax
		mov	[ebp-4], edx
		mov	edi, offset dword_51945C

loc_423ABB:				; CODE XREF: .text:00423B3Ej
		cmp	edi, [ebp+0Ch]
		jz	short loc_423B31
		mov	eax, [edi]
		mov	ecx, ebx
		and	ecx, 7FDFFFFFh
		mov	edx, dword_5D919C[eax*4]
		and	edx, 0FFDFFFFFh
		cmp	edx, ecx
		jnz	short loc_423B31
		mov	eax, [edi+8]
		mov	edx, [ebp+0Ch]
		and	eax, [edx+8]
		jz	short loc_423B31
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_423B0A
		push	offset aThisCombinatio ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-80Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		mov	[ebp-8], eax

loc_423B0A:				; CODE XREF: .text:00423AEAj
		mov	eax, [edi+0Ch]
		push	eax
		push	offset aS_1	; "  %s;"
		mov	edx, [ebp-8]
		add	edx, edx
		lea	ecx, [ebp-80Ch]
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, 1
		add	[ebp-8], eax

loc_423B31:				; CODE XREF: .text:00423ABEj
					; .text:00423AD9j ...
		inc	dword ptr [ebp-4]
		add	edi, 10h
		cmp	dword ptr [ebp-4], 15Bh
		jl	loc_423ABB
		test	esi, esi
		jle	short loc_423B73
		push	offset aConflictingSho ; "\n Conflicting shortcut(s) will be remo"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-8]
		add	eax, eax
		lea	edx, [ebp-80Ch]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		lea	ecx, [ebp-80Ch]
		mov	[ebp-0Ch], ecx

loc_423B73:				; CODE XREF: .text:00423A9Aj
					; .text:00423AA6j ...
		test	esi, esi
		jnz	short loc_423BA2
		mov	edx, [ebp+0Ch]
		mov	eax, ebx
		and	eax, 0FFDFFFFFh
		mov	ecx, [edx]
		mov	edx, dword_5D919C[ecx*4]
		and	edx, 0FFDFFFFFh
		cmp	eax, edx
		jz	short loc_423BA2
		push	offset aPressApplyToCh ; "\n Press 'Apply' to change shortcut"
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax

loc_423BA2:				; CODE XREF: .text:00423B75j
					; .text:00423B92j
		mov	eax, [ebp-0Ch]
		cmp	word ptr [eax],	0
		jnz	short loc_423BB5
		xor	ecx, ecx
		mov	dword_5DA488, ecx
		jmp	short loc_423BCF
; ---------------------------------------------------------------------------

loc_423BB5:				; CODE XREF: .text:00423BA9j
		test	esi, esi
		jnz	short loc_423BC5
		mov	dword_5DA488, 1
		jmp	short loc_423BCF
; ---------------------------------------------------------------------------

loc_423BC5:				; CODE XREF: .text:00423BB7j
		mov	dword_5DA488, 2

loc_423BCF:				; CODE XREF: .text:00423BB3j
					; .text:00423BC3j
		mov	eax, [ebp-0Ch]
		push	eax		; lpString
		push	0C88h		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	SetDlgItemTextW
		test	esi, esi
		jl	short loc_423BED
		test	ebx, 0FFFFh
		jnz	short loc_423BF1

loc_423BED:				; CODE XREF: .text:00423BE3j
		xor	ecx, ecx
		jmp	short loc_423BF6
; ---------------------------------------------------------------------------

loc_423BF1:				; CODE XREF: .text:00423BEBj
		mov	ecx, 1

loc_423BF6:				; CODE XREF: .text:00423BEFj
		push	ecx		; bEnable
		push	0C87h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		mov	eax, esi
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_423C14(HMENU hMenu, int, int,	int, UINT, int)
loc_423C14:				; CODE XREF: .text:00423D6Ap
					; .text:00423E62p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDB8h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+14h], 0
		mov	esi, [ebp+10h]
		jz	short loc_423C2F
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax], edx

loc_423C2F:				; CODE XREF: .text:00423C26j
		cmp	dword ptr [ebp+8], 0
		jz	short loc_423C39
		test	esi, esi
		jnz	short loc_423C41

loc_423C39:				; CODE XREF: .text:00423C33j
		mov	eax, [ebp+18h]
		jmp	loc_4240C0
; ---------------------------------------------------------------------------

loc_423C41:				; CODE XREF: .text:00423C37j
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_4240B3
; ---------------------------------------------------------------------------

loc_423C4B:				; CODE XREF: .text:004240B7j
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		cmp	word ptr [ebx],	21h
		jnz	short loc_423C83
		cmp	dword ptr [esi+0Ch], 0
		jz	loc_4240B0
		push	0
		lea	edx, [ebp-208h]
		mov	eax, [esi+14h]
		push	eax
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423C80:				; CODE XREF: .text:00423C87j
		add	ebx, 2

loc_423C83:				; CODE XREF: .text:00423C58j
		cmp	word ptr [ebx],	20h
		jz	short loc_423C80
		cmp	word ptr [ebx],	7Ch
		jnz	short loc_423CDA
		add	ebx, 2
		cmp	word ptr [ebx],	7Ch
		jnz	short loc_423CBD
		add	ebx, 2
		push	(offset	aMainMenuFile+1Dh) ; lpNewItem
		push	0		; uIDNewItem
		push	800h		; uFlags
		mov	eax, [ebp+8]
		push	eax		; hMenu
		call	AppendMenuW
		xor	edx, edx
		mov	[ebp-8], edx
		mov	[ebp+1Ch], edx
		inc	dword ptr [ebp+18h]
		jmp	short loc_423CCF
; ---------------------------------------------------------------------------

loc_423CBD:				; CODE XREF: .text:00423C96j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_423CCF
		mov	dword ptr [ebp+1Ch], 1
		jmp	short loc_423CCF
; ---------------------------------------------------------------------------

loc_423CCC:				; CODE XREF: .text:00423CD3j
		add	ebx, 2

loc_423CCF:				; CODE XREF: .text:00423CBBj
					; .text:00423CC1j ...
		cmp	word ptr [ebx],	20h
		jz	short loc_423CCC
		xor	eax, eax
		mov	[ebp-8], eax

loc_423CDA:				; CODE XREF: .text:00423C8Dj
		cmp	word ptr [ebx],	2Ah
		jnz	loc_423D7A
		add	ebx, 2
		xor	eax, eax
		lea	edx, [ebp-208h]
		jmp	short loc_423CFE
; ---------------------------------------------------------------------------

loc_423CF1:				; CODE XREF: .text:00423D0Fj
		mov	cx, [ebx]
		add	ebx, 2
		mov	[edx], cx
		inc	eax
		add	edx, 2

loc_423CFE:				; CODE XREF: .text:00423CEFj
		cmp	eax, 0E0h
		jge	short loc_423D11
		cmp	word ptr [ebx],	9
		jz	short loc_423D11
		cmp	word ptr [ebx],	0
		jnz	short loc_423CF1

loc_423D11:				; CODE XREF: .text:00423D03j
					; .text:00423D09j
		mov	word ptr [ebp+eax*2-208h], 0
		cmp	dword ptr [esi+0Ch], 0
		jz	short loc_423D42
		push	0
		lea	edx, [ebp-208h]
		mov	eax, [esi+14h]
		push	eax
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4240B0

loc_423D42:				; CODE XREF: .text:00423D1Fj
		lea	eax, [ebp-208h]
		push	eax
		call	loc_4D80C0
		pop	ecx
		test	eax, eax
		jz	loc_4240B0
		mov	edx, [ebp+1Ch]
		push	edx		; int
		mov	ecx, [ebp+18h]
		push	ecx		; UINT
		push	0		; int
		push	eax		; int
		mov	eax, [ebp+0Ch]
		push	eax		; int
		mov	edx, [ebp+8]
		push	edx		; hMenu
		call	loc_423C14
		add	esp, 18h
		mov	[ebp+18h], eax
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423D7A:				; CODE XREF: .text:00423CDEj
		cmp	word ptr [ebx],	3Eh
		jnz	short loc_423DE6
		add	ebx, 2
		jmp	short loc_423D88
; ---------------------------------------------------------------------------

loc_423D85:				; CODE XREF: .text:00423D8Cj
		add	ebx, 2

loc_423D88:				; CODE XREF: .text:00423D83j
		cmp	word ptr [ebx],	20h
		jz	short loc_423D85
		push	offset aStandard ; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_423DAA
		mov	esi, (offset stru_518A74._name+108h)
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423DAA:				; CODE XREF: .text:00423D9Ej
		push	offset aFullcopy ; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_423DC6
		mov	esi, (offset stru_518BDC)
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423DC6:				; CODE XREF: .text:00423DBAj
		push	offset aAppearance_1 ; s2
		push	ebx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_4240BD
		mov	esi, (offset stru_518C24)
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423DE6:				; CODE XREF: .text:00423D7Ej
		cmp	word ptr [ebx],	0
		jnz	short loc_423DFF
		cmp	dword ptr [esi+10h], 0
		jz	short loc_423DFF
		mov	eax, [esi+10h]
		add	eax, 0FFFFFFE8h
		mov	esi, eax
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423DFF:				; CODE XREF: .text:00423DEAj
					; .text:00423DF0j
		xor	eax, eax
		lea	edx, [ebp-208h]
		jmp	short loc_423E16
; ---------------------------------------------------------------------------

loc_423E09:				; CODE XREF: .text:00423E27j
		mov	cx, [ebx]
		add	ebx, 2
		mov	[edx], cx
		inc	eax
		add	edx, 2

loc_423E16:				; CODE XREF: .text:00423E07j
		cmp	eax, 0E0h
		jge	short loc_423E29
		cmp	word ptr [ebx],	9
		jz	short loc_423E29
		cmp	word ptr [ebx],	0
		jnz	short loc_423E09

loc_423E29:				; CODE XREF: .text:00423E1Bj
					; .text:00423E21j
		mov	word ptr [ebp+eax*2-208h], 0
		cmp	dword ptr [esi+10h], 0
		jz	loc_423F3F
		xor	eax, eax
		mov	[ebp-4], eax
		call	CreatePopupMenu
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4240B0
		push	0		; int
		lea	eax, [ebp-4]
		push	0		; UINT
		push	eax		; int
		mov	edx, [esi+10h]
		push	edx		; int
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		push	ebx		; hMenu
		call	loc_423C14
		add	esp, 18h
		test	eax, eax
		jnz	short loc_423E79
		push	ebx		; hMenu
		call	DestroyMenu
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423E79:				; CODE XREF: .text:00423E6Cj
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_423E9C
		push	(offset	aMainMenuFile+1Dh) ; lpNewItem
		push	0		; uIDNewItem
		push	800h		; uFlags
		mov	eax, [ebp+8]
		push	eax		; hMenu
		call	AppendMenuW
		xor	edx, edx
		mov	[ebp+1Ch], edx
		inc	dword ptr [ebp+18h]

loc_423E9C:				; CODE XREF: .text:00423E7Dj
		push	30h		; n
		push	0		; c
		lea	ecx, [ebp-248h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	dword ptr [ebp-248h], 30h
		mov	dword ptr [ebp-244h], 35h
		cmp	dword ptr [ebp-4], 0
		jz	short loc_423ED0
		or	dword ptr [ebp-23Ch], 8

loc_423ED0:				; CODE XREF: .text:00423EC7j
		mov	[ebp-234h], ebx
		lea	eax, [ebp-208h]
		mov	[ebp-224h], eax
		lea	edx, [ebp-248h]
		push	edx		; LPCMENUITEMINFOW
		push	1		; BOOL
		mov	ebx, [ebp+18h]
		push	ebx		; UINT
		mov	eax, [ebp+8]
		push	eax		; HMENU
		call	InsertMenuItemW
		mov	[ebp-218h], ebx
		xor	edx, edx
		mov	dword ptr [ebp-214h], 1
		mov	[ebp-210h], edx
		mov	[ebp-20Ch], esi
		lea	ecx, [ebp-218h]
		push	ecx		; item
		push	offset stru_5DA48C ; sd
		call	Addsorteddata
		add	esp, 8
		inc	dword_5DA4D0
		inc	dword ptr [ebp+18h]
		mov	dword ptr [ebp-8], 1
		jmp	loc_4240B0
; ---------------------------------------------------------------------------

loc_423F3F:				; CODE XREF: .text:00423E37j
		cmp	dword ptr [esi+0Ch], 0
		jz	loc_4240B0
		push	0
		lea	edx, [ebp-208h]
		mov	eax, [esi+14h]
		push	eax
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_423F74
		cmp	dword_57FE4C, 0
		jz	short loc_423F74
		mov	ebx, 4

loc_423F74:				; CODE XREF: .text:00423F64j
					; .text:00423F6Dj
		test	ebx, ebx
		jz	loc_4240B0
		cmp	ebx, 5
		jz	loc_4240B0
		cmp	word ptr [ebp-208h], 0
		jz	loc_4240B0
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_423FB6
		push	(offset	aMainMenuFile+1Dh) ; lpNewItem
		push	0		; uIDNewItem
		push	800h		; uFlags
		mov	eax, [ebp+8]
		push	eax		; hMenu
		call	AppendMenuW
		xor	edx, edx
		mov	[ebp+1Ch], edx
		inc	dword ptr [ebp+18h]

loc_423FB6:				; CODE XREF: .text:00423F97j
		cmp	ebx, 3
		jnz	short loc_423FCA
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_423FCA
		mov	ecx, [ebp+14h]
		mov	dword ptr [ecx], 1

loc_423FCA:				; CODE XREF: .text:00423FB9j
					; .text:00423FBFj
		push	1
		lea	eax, [ebp-208h]
		push	eax		; s
		call	_wcslen
		lea	edx, [ebp-208h]
		add	eax, eax
		add	eax, edx
		pop	ecx
		push	eax
		mov	ecx, [esi+8]
		push	ecx
		call	loc_422D18
		add	esp, 0Ch
		lea	eax, [ebp-248h]
		push	30h		; n
		push	0		; c
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	dword ptr [ebp-248h], 30h
		mov	dword ptr [ebp-244h], 33h
		cmp	ebx, 2
		jz	short loc_424021
		cmp	ebx, 3
		jnz	short loc_424028

loc_424021:				; CODE XREF: .text:0042401Aj
		or	dword ptr [ebp-23Ch], 8

loc_424028:				; CODE XREF: .text:0042401Fj
		cmp	ebx, 4
		jnz	short loc_424034
		or	dword ptr [ebp-23Ch], 3

loc_424034:				; CODE XREF: .text:0042402Bj
		mov	edx, dword_5DA4D0
		lea	ecx, [ebp-208h]
		add	edx, 2710h
		lea	eax, [ebp-248h]
		mov	[ebp-238h], edx
		mov	[ebp-224h], ecx
		push	eax		; LPCMENUITEMINFOW
		push	1		; BOOL
		mov	edx, [ebp+18h]
		push	edx		; UINT
		mov	ecx, [ebp+8]
		push	ecx		; HMENU
		call	InsertMenuItemW
		mov	eax, [ebp-238h]
		xor	edx, edx
		mov	[ebp-218h], eax
		lea	ecx, [ebp-218h]
		mov	dword ptr [ebp-214h], 1
		mov	[ebp-210h], edx
		mov	[ebp-20Ch], esi
		push	ecx		; item
		push	offset stru_5DA48C ; sd
		call	Addsorteddata
		add	esp, 8
		inc	dword_5DA4D0
		inc	dword ptr [ebp+18h]
		mov	dword ptr [ebp-8], 1

loc_4240B0:				; CODE XREF: .text:00423C5Ej
					; .text:00423C7Bj ...
		add	esi, 18h

loc_4240B3:				; CODE XREF: .text:00423C46j
		mov	eax, [esi]
		test	eax, eax
		jnz	loc_423C4B

loc_4240BD:				; CODE XREF: .text:00423DD6j
		mov	eax, [ebp+18h]

loc_4240C0:				; CODE XREF: .text:00423C3Cj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4240C8:				; CODE XREF: .text:0042417Ap
					; .text:004241A4p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+0Ch]
		jz	short loc_4240E4
		test	ebx, ebx
		jnz	loc_4242B3

loc_4240E4:				; CODE XREF: .text:004240DAj
		xor	eax, eax
		jmp	loc_4242BF
; ---------------------------------------------------------------------------

loc_4240EB:				; CODE XREF: .text:004242B7j
		push	eax		; src
		call	_T
		pop	ecx
		jmp	short loc_4240F7
; ---------------------------------------------------------------------------

loc_4240F4:				; CODE XREF: .text:004240FEj
					; .text:00424104j
		add	eax, 2

loc_4240F7:				; CODE XREF: .text:004240F2j
		mov	dx, [eax]
		cmp	dx, 20h
		jz	short loc_4240F4
		cmp	dx, 7Ch
		jz	short loc_4240F4
		cmp	word ptr [eax],	0
		jnz	short loc_42411F
		cmp	dword ptr [ebx+10h], 0
		jz	short loc_42411F
		mov	ecx, [ebx+10h]
		add	ecx, 0FFFFFFE8h
		mov	ebx, ecx
		jmp	loc_4242B0
; ---------------------------------------------------------------------------

loc_42411F:				; CODE XREF: .text:0042410Aj
					; .text:00424110j
		xor	edx, edx
		lea	ecx, [ebp-200h]
		jmp	short loc_424136
; ---------------------------------------------------------------------------

loc_424129:				; CODE XREF: .text:00424148j
		mov	si, [eax]
		add	eax, 2
		mov	[ecx], si
		inc	edx
		add	ecx, 2

loc_424136:				; CODE XREF: .text:00424127j
		cmp	edx, 0E0h
		jge	short loc_42414A
		cmp	word ptr [eax],	9
		jz	short loc_42414A
		cmp	word ptr [eax],	0
		jnz	short loc_424129

loc_42414A:				; CODE XREF: .text:0042413Cj
					; .text:00424142j
		mov	word ptr [ebp+edx*2-200h], 0
		cmp	word ptr [ebp-200h], 2Ah
		jnz	short loc_424194
		lea	eax, [ebp-1FEh]
		push	eax
		call	loc_4D80C0
		pop	ecx
		test	eax, eax
		jz	loc_4242B0
		push	1
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_4240C8
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4242B0
		mov	eax, 1
		jmp	loc_4242BF
; ---------------------------------------------------------------------------

loc_424194:				; CODE XREF: .text:0042415Cj
		mov	eax, [ebx+10h]
		test	eax, eax
		jz	short loc_4241BE
		mov	edx, [ebp+10h]
		push	edx
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_4240C8
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4242B0
		mov	eax, 1
		jmp	loc_4242BF
; ---------------------------------------------------------------------------

loc_4241BE:				; CODE XREF: .text:00424199j
		mov	eax, [ebx+8]
		test	eax, 80000000h
		jz	short loc_4241CF
		and	eax, 3FFFFFh
		jmp	short loc_4241F4
; ---------------------------------------------------------------------------

loc_4241CF:				; CODE XREF: .text:004241C6j
		mov	eax, [ebx+8]
		test	eax, eax
		jz	loc_4242B0
		test	eax, eax
		jl	loc_4242B0
		cmp	eax, 400h
		jge	loc_4242B0
		mov	eax, dword_5D919C[eax*4]

loc_4241F4:				; CODE XREF: .text:004241CDj
		test	eax, 200000h
		jnz	short loc_424204
		cmp	eax, [ebp+8]
		jnz	loc_4242B0

loc_424204:				; CODE XREF: .text:004241F9j
		test	eax, 200000h
		jz	short loc_424221
		and	eax, 0FFDDFFFFh
		mov	edx, [ebp+8]
		and	edx, 0FFFDFFFFh
		cmp	eax, edx
		jnz	loc_4242B0

loc_424221:				; CODE XREF: .text:00424209j
		cmp	dword ptr [ebx+0Ch], 0
		jz	loc_4242B0
		push	0
		mov	ecx, [ebx+14h]
		push	ecx
		lea	eax, [ebp-200h]
		push	eax
		push	0
		call	dword ptr [ebx+0Ch]
		add	esp, 10h
		cmp	eax, 1
		jz	short loc_424254
		cmp	eax, 2
		jz	short loc_424254
		cmp	eax, 3
		jz	short loc_424254
		cmp	eax, 5
		jnz	short loc_4242A9

loc_424254:				; CODE XREF: .text:00424243j
					; .text:00424248j ...
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_424274
		push	0		; lParam
		mov	ecx, hwollymain
		movzx	edx, word ptr [ebx+14h]
		push	edx		; wParam
		push	111h		; Msg
		push	ecx		; hWnd
		call	SendMessageW
		jmp	short loc_4242A9
; ---------------------------------------------------------------------------

loc_424274:				; CODE XREF: .text:00424258j
		call	Suspendallthreads
		push	1
		mov	eax, [ebx+14h]
		push	eax
		lea	edx, [ebp-200h]
		push	edx
		push	0
		call	dword ptr [ebx+0Ch]
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		dec	ebx
		jnz	short loc_4242A9
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4242A9:				; CODE XREF: .text:00424252j
					; .text:00424272j ...
		mov	eax, 1
		jmp	short loc_4242BF
; ---------------------------------------------------------------------------

loc_4242B0:				; CODE XREF: .text:0042411Aj
					; .text:0042416Dj ...
		add	ebx, 18h

loc_4242B3:				; CODE XREF: .text:004240DEj
		mov	eax, [ebx]
		test	eax, eax
		jnz	loc_4240EB
		xor	eax, eax

loc_4242BF:				; CODE XREF: .text:004240E6j
					; .text:0042418Fj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4242C8(HMENU hMenu, int, UINT	uPosition, int)
loc_4242C8:				; CODE XREF: .text:0042437Ep
					; .text:00424426p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDB8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+0Ch]
		jz	short loc_4242E1
		test	esi, esi
		jnz	short loc_4242E8

loc_4242E1:				; CODE XREF: .text:004242DBj
		xor	eax, eax
		jmp	loc_42466A
; ---------------------------------------------------------------------------

loc_4242E8:				; CODE XREF: .text:004242DFj
		xor	edx, edx
		mov	[ebp-8], edx
		mov	[ebp-4], edx
		jmp	loc_42465D
; ---------------------------------------------------------------------------

loc_4242F5:				; CODE XREF: .text:00424661j
		push	eax		; src
		call	_T
		pop	ecx
		mov	ebx, eax
		jmp	short loc_424303
; ---------------------------------------------------------------------------

loc_424300:				; CODE XREF: .text:00424307j
		add	ebx, 2

loc_424303:				; CODE XREF: .text:004242FEj
		cmp	word ptr [ebx],	20h
		jz	short loc_424300
		cmp	word ptr [ebx],	7Ch
		jnz	short loc_42435B
		add	ebx, 2
		cmp	word ptr [ebx],	7Ch
		jnz	short loc_42433E
		add	ebx, 2
		push	(offset	aMainMenuFile+1Dh) ; lpNewItem
		push	0		; uIDNewItem
		push	0C00h		; uFlags
		mov	eax, [ebp+10h]
		push	eax		; uPosition
		mov	edx, [ebp+8]
		push	edx		; hMenu
		call	InsertMenuW
		xor	ecx, ecx
		mov	[ebp-4], ecx
		inc	dword ptr [ebp+10h]
		jmp	short loc_424350
; ---------------------------------------------------------------------------

loc_42433E:				; CODE XREF: .text:00424316j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_424350
		mov	dword ptr [ebp-4], 1
		jmp	short loc_424350
; ---------------------------------------------------------------------------

loc_42434D:				; CODE XREF: .text:00424354j
		add	ebx, 2

loc_424350:				; CODE XREF: .text:0042433Cj
					; .text:00424342j ...
		cmp	word ptr [ebx],	20h
		jz	short loc_42434D
		xor	eax, eax
		mov	[ebp-8], eax

loc_42435B:				; CODE XREF: .text:0042430Dj
		cmp	word ptr [ebx],	2Ah
		jnz	short loc_42438E
		add	ebx, 2
		push	ebx
		call	loc_4D80C0
		pop	ecx
		test	eax, eax
		jz	loc_42465A
		push	1		; int
		mov	edx, [ebp+10h]
		push	edx		; uPosition
		push	eax		; int
		mov	eax, [ebp+8]
		push	eax		; hMenu
		call	loc_4242C8
		add	esp, 10h
		mov	[ebp+10h], eax
		jmp	loc_42465A
; ---------------------------------------------------------------------------

loc_42438E:				; CODE XREF: .text:0042435Fj
		cmp	word ptr [ebx],	0
		jnz	short loc_4243A7
		cmp	dword ptr [esi+10h], 0
		jz	short loc_4243A7
		mov	ecx, [esi+10h]
		add	ecx, 0FFFFFFE8h
		mov	esi, ecx
		jmp	loc_42465A
; ---------------------------------------------------------------------------

loc_4243A7:				; CODE XREF: .text:00424392j
					; .text:00424398j
		xor	eax, eax
		lea	edx, [ebp-208h]
		jmp	short loc_4243BE
; ---------------------------------------------------------------------------

loc_4243B1:				; CODE XREF: .text:004243CFj
		mov	cx, [ebx]
		add	ebx, 2
		mov	[edx], cx
		inc	eax
		add	edx, 2

loc_4243BE:				; CODE XREF: .text:004243AFj
		cmp	eax, 0E0h
		jge	short loc_4243D1
		cmp	word ptr [ebx],	9
		jz	short loc_4243D1
		cmp	word ptr [ebx],	0
		jnz	short loc_4243B1

loc_4243D1:				; CODE XREF: .text:004243C3j
					; .text:004243C9j
		mov	word ptr [ebp+eax*2-208h], 0
		cmp	dword ptr [esi+10h], 0
		jz	loc_4244F6
		call	CreatePopupMenu
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_42465A
		cmp	dword ptr [ebp-4], 0
		jz	short loc_42441B
		push	(offset	aMainMenuFile+1Dh) ; lpNewItem
		push	0		; uIDNewItem
		push	0C00h		; uFlags
		mov	eax, [ebp+10h]
		push	eax		; uPosition
		mov	edx, [ebp+8]
		push	edx		; hMenu
		call	InsertMenuW
		xor	ecx, ecx
		mov	[ebp-4], ecx
		inc	dword ptr [ebp+10h]

loc_42441B:				; CODE XREF: .text:004243F8j
		mov	eax, [ebp+14h]
		push	eax		; int
		push	0		; uPosition
		mov	edx, [esi+10h]
		push	edx		; int
		push	ebx		; hMenu
		call	loc_4242C8
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jle	loc_42465A
		push	30h		; n
		push	0		; c
		lea	eax, [ebp-248h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	dword ptr [ebp-248h], 30h
		mov	dword ptr [ebp-244h], 37h
		test	edi, edi
		jnz	short loc_42446A
		or	dword ptr [ebp-23Ch], 3

loc_42446A:				; CODE XREF: .text:00424461j
		mov	[ebp-234h], ebx
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_424484
		mov	edx, dword_5DA518
		inc	dword_5DA518
		jmp	short loc_424487
; ---------------------------------------------------------------------------

loc_424484:				; CODE XREF: .text:00424474j
		mov	edx, [esi+14h]

loc_424487:				; CODE XREF: .text:00424482j
		mov	[ebp-238h], edx
		lea	eax, [ebp-208h]
		mov	[ebp-224h], eax
		lea	ecx, [ebp-248h]
		push	ecx		; LPCMENUITEMINFOW
		push	1		; BOOL
		mov	eax, [ebp+10h]
		push	eax		; UINT
		mov	edx, [ebp+8]
		push	edx		; HMENU
		call	InsertMenuItemW
		mov	ecx, [ebp-238h]
		xor	eax, eax
		mov	[ebp-218h], ecx
		lea	edx, [ebp-218h]
		mov	dword ptr [ebp-214h], 1
		mov	[ebp-210h], eax
		mov	[ebp-20Ch], esi
		push	edx		; item
		push	offset stru_5DA4D4 ; sd
		call	Addsorteddata
		add	esp, 8
		inc	dword ptr [ebp+10h]
		mov	dword ptr [ebp-8], 1
		jmp	loc_42465A
; ---------------------------------------------------------------------------

loc_4244F6:				; CODE XREF: .text:004243DFj
		cmp	dword ptr [esi+0Ch], 0
		jz	loc_42465A
		push	0
		mov	ecx, [esi+14h]
		push	ecx
		lea	eax, [ebp-208h]
		push	eax
		push	0
		call	dword ptr [esi+0Ch]
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_424529
		cmp	dword_57FE48, 0
		jz	short loc_424529
		mov	ebx, 4

loc_424529:				; CODE XREF: .text:00424519j
					; .text:00424522j
		test	ebx, ebx
		jz	loc_42465A
		cmp	ebx, 5
		jz	loc_42465A
		cmp	word ptr [ebp-208h], 0
		jz	loc_42465A
		cmp	dword ptr [ebp-4], 0
		jz	short loc_42456F
		push	(offset	aMainMenuFile+1Dh) ; lpNewItem
		push	0		; uIDNewItem
		push	0C00h		; uFlags
		mov	eax, [ebp+10h]
		push	eax		; uPosition
		mov	edx, [ebp+8]
		push	edx		; hMenu
		call	InsertMenuW
		xor	ecx, ecx
		mov	[ebp-4], ecx
		inc	dword ptr [ebp+10h]

loc_42456F:				; CODE XREF: .text:0042454Cj
		push	1
		lea	eax, [ebp-208h]
		push	eax		; s
		call	_wcslen
		lea	edx, [ebp-208h]
		add	eax, eax
		add	eax, edx
		pop	ecx
		push	eax
		mov	ecx, [esi+8]
		push	ecx
		call	loc_422D18
		add	esp, 0Ch
		lea	eax, [ebp-248h]
		push	30h		; n
		push	0		; c
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	dword ptr [ebp-248h], 30h
		mov	dword ptr [ebp-244h], 33h
		cmp	ebx, 2
		jz	short loc_4245C6
		cmp	ebx, 3
		jnz	short loc_4245CD

loc_4245C6:				; CODE XREF: .text:004245BFj
		or	dword ptr [ebp-23Ch], 8

loc_4245CD:				; CODE XREF: .text:004245C4j
		cmp	ebx, 4
		jnz	short loc_4245D9
		or	dword ptr [ebp-23Ch], 3

loc_4245D9:				; CODE XREF: .text:004245D0j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4245ED
		mov	edx, dword_5DA518
		inc	dword_5DA518
		jmp	short loc_4245F0
; ---------------------------------------------------------------------------

loc_4245ED:				; CODE XREF: .text:004245DDj
		mov	edx, [esi+14h]

loc_4245F0:				; CODE XREF: .text:004245EBj
		mov	[ebp-238h], edx
		lea	eax, [ebp-208h]
		mov	[ebp-224h], eax
		lea	ecx, [ebp-248h]
		push	ecx		; LPCMENUITEMINFOW
		push	1		; BOOL
		mov	eax, [ebp+10h]
		push	eax		; UINT
		mov	edx, [ebp+8]
		push	edx		; HMENU
		call	InsertMenuItemW
		mov	ecx, [ebp-238h]
		xor	eax, eax
		mov	[ebp-218h], ecx
		lea	edx, [ebp-218h]
		mov	dword ptr [ebp-214h], 1
		mov	[ebp-210h], eax
		mov	[ebp-20Ch], esi
		push	edx		; item
		push	offset stru_5DA4D4 ; sd
		call	Addsorteddata
		add	esp, 8
		inc	dword ptr [ebp+10h]
		mov	dword ptr [ebp-8], 1

loc_42465A:				; CODE XREF: .text:0042436Dj
					; .text:00424389j ...
		add	esi, 18h

loc_42465D:				; CODE XREF: .text:004242F0j
		mov	eax, [esi]
		test	eax, eax
		jnz	loc_4242F5
		mov	eax, [ebp+10h]

loc_42466A:				; CODE XREF: .text:004242E3j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_424674(HMENU hMenu)
loc_424674:				; CODE XREF: .text:004246A1p
					; .text:00425853p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	ebx		; hMenu
		call	GetMenuItemCount
		mov	edi, eax
		xor	esi, esi
		cmp	edi, esi
		jle	short loc_4246CA

loc_42468B:				; CODE XREF: .text:004246C8j
		push	0		; nPos
		push	ebx		; hMenu
		call	GetMenuItemID
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4246A9
		push	0		; nPos
		push	ebx		; hMenu
		call	GetSubMenu
		push	eax		; hMenu
		call	loc_424674
		pop	ecx
		jmp	short loc_4246B8
; ---------------------------------------------------------------------------

loc_4246A9:				; CODE XREF: .text:00424696j
		push	0		; nPos
		push	ebx		; hMenu
		call	GetMenuItemID
		cmp	eax, 7530h
		jnb	short loc_4246CA

loc_4246B8:				; CODE XREF: .text:004246A7j
		push	400h		; uFlags
		push	0		; uPosition
		push	ebx		; hMenu
		call	DeleteMenu
		inc	esi
		cmp	edi, esi
		jg	short loc_42468B

loc_4246CA:				; CODE XREF: .text:00424689j
					; .text:004246B6j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4246D0(LPCWSTR lpFileName)
loc_4246D0:				; CODE XREF: .text:0040F6C3p
					; .text:00424F80p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		push	1000h		; n
		push	0		; c
		push	offset dword_5D919C ; s
		call	_memset
		add	esp, 0Ch
		mov	ebx, offset dword_51945C
		mov	edi, 15Bh
		xor	esi, esi
		cmp	edi, esi
		jle	short loc_424757

loc_4246FA:				; CODE XREF: .text:00424755j
		mov	eax, [ebx]
		test	eax, eax
		jle	short loc_42474F
		cmp	eax, 400h
		jge	short loc_42474F
		test	dword ptr [ebx+4], 0FFC00000h
		jnz	short loc_42474F
		mov	edx, [ebx+4]
		mov	dword_5D919C[eax*4], edx
		cmp	dword ptr [ebp+8], 0
		jz	short loc_42474F
		mov	ecx, [ebp+8]
		cmp	word ptr [ecx],	0
		jz	short loc_42474F
		mov	eax, [ebx]
		shl	eax, 2
		add	eax, offset dword_5D919C
		push	eax		; arglist
		push	offset asc_51FBDE ; format
		mov	edx, [ebx+0Ch]
		push	edx		; key
		push	offset aShortcuts ; "Shortcuts"
		mov	ecx, [ebp+8]
		push	ecx		; file
		call	Getfromini
		add	esp, 14h

loc_42474F:				; CODE XREF: .text:004246FEj
					; .text:00424705j ...
		inc	esi
		add	ebx, 10h
		cmp	edi, esi
		jg	short loc_4246FA

loc_424757:				; CODE XREF: .text:004246F8j
		mov	ebx, offset stru_51AA08.anonymous_1
		mov	edi, 10h
		xor	esi, esi
		cmp	edi, esi
		jle	short loc_42477B

loc_424767:				; CODE XREF: .text:00424779j
		mov	eax, [ebx]
		mov	edx, [ebx+4]
		add	ebx, 10h
		inc	esi
		cmp	edi, esi
		mov	dword_5D919C[eax*4], edx
		jg	short loc_424767

loc_42477B:				; CODE XREF: .text:00424765j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_424780@<eax>(int@<eax>, int@<edx>,	int@<ecx>, LPCWSTR lpFileName, int)
loc_424780:				; CODE XREF: .text:0040D25Ap
					; .text:00424FD8p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+8]
		push	offset aShortcuts ; "Shortcuts"
		push	edi		; file
		call	Deleteinisection
		add	esp, 8
		mov	ebx, offset dword_51945C
		mov	dword ptr [ebp-4], 15Bh
		xor	esi, esi
		cmp	esi, [ebp-4]
		jge	loc_424846

loc_4247B4:				; CODE XREF: .text:00424840j
		mov	eax, [ebx]
		test	eax, eax
		jle	short loc_424839
		cmp	eax, 400h
		jge	short loc_424839
		test	dword ptr [ebx+4], 0FFC00000h
		jnz	short loc_424839
		mov	edx, [ebx]
		mov	eax, dword_5D919C[edx*4]
		cmp	eax, [ebx+4]
		jnz	short loc_4247DE
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_424839

loc_4247DE:				; CODE XREF: .text:004247D6j
		mov	edx, [ebx]
		test	eax, eax
		jnz	short loc_4247FD
		push	offset a0_10	; format
		mov	ecx, [ebx+0Ch]
		push	ecx		; key
		push	offset aShortcuts ; "Shortcuts"
		push	edi		; file
		call	Writetoini
		add	esp, 10h
		jmp	short loc_424839
; ---------------------------------------------------------------------------

loc_4247FD:				; CODE XREF: .text:004247E2j
		push	0
		lea	eax, [ebp-204h]
		push	eax
		mov	edx, [ebx]
		push	edx
		call	loc_422D18
		add	esp, 0Ch
		lea	ecx, [ebp-204h]
		push	ecx
		mov	eax, [ebx]
		mov	edx, dword_5D919C[eax*4]
		push	edx		; arglist
		push	offset a06xS	; "%06X	(%s)"
		mov	ecx, [ebx+0Ch]
		push	ecx		; key
		push	offset aShortcuts ; "Shortcuts"
		push	edi		; file
		call	Writetoini
		add	esp, 18h

loc_424839:				; CODE XREF: .text:004247B8j
					; .text:004247BFj ...
		inc	esi
		add	ebx, 10h
		cmp	esi, [ebp-4]
		jl	loc_4247B4

loc_424846:				; CODE XREF: .text:004247AEj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_424850(int, int, int,	UINT uVirtKey, __int16)
loc_424850:				; CODE XREF: .text:0041FB3Cp
					; .text:0041FC4Cp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_42486A
		test	edi, edi
		jnz	short loc_424871

loc_42486A:				; CODE XREF: .text:00424864j
		xor	eax, eax
		jmp	loc_42492A
; ---------------------------------------------------------------------------

loc_424871:				; CODE XREF: .text:00424868j
		lea	edx, [ebp-8]
		lea	ecx, [ebp-4]
		push	edx		; int
		push	ecx		; int
		mov	eax, [ebp+18h]
		push	eax		; __int16
		mov	edx, [ebp+14h]
		push	edx		; uVirtKey
		mov	ecx, [ebp+10h]
		push	ecx		; int
		call	loc_423624
		add	esp, 14h
		mov	dword_5DA19C, 1
		mov	eax, [ebp-4]
		push	eax
		push	edi
		push	esi
		call	loc_4233B0
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4248C1
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4248C1
		mov	eax, [ebp-8]
		push	eax
		push	edi
		push	esi
		call	loc_4233B0
		add	esp, 0Ch
		mov	ebx, eax

loc_4248C1:				; CODE XREF: .text:004248A9j
					; .text:004248AFj
		test	ebx, ebx
		jz	short loc_424920
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_424920
		mov	word ptr [ebp-208h], 0
		mov	dword_57E7DC, 1
		call	Suspendallthreads
		push	1
		mov	eax, [ebx+14h]
		push	eax
		lea	edx, [ebp-208h]
		push	edx
		push	esi
		call	dword ptr [ebx+0Ch]
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, 1
		jnz	short loc_424914
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_424914:				; CODE XREF: .text:00424901j
		xor	ecx, ecx
		mov	eax, ebx
		mov	dword_5DA19C, ecx
		jmp	short loc_42492A
; ---------------------------------------------------------------------------

loc_424920:				; CODE XREF: .text:004248C3j
					; .text:004248C9j
		xor	edx, edx
		xor	eax, eax
		mov	dword_5DA19C, edx

loc_42492A:				; CODE XREF: .text:0042486Cj
					; .text:0042491Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		