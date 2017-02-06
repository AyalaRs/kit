.code
	
; int __stdcall	loc_41E500(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_41E500:				; CODE XREF: .text:0041ECF3p
					; .text:0041F0FCp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCBCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		push	0		; nIndex
		push	edi		; hWnd
		call	GetWindowLongW
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_41E534
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		mov	ecx, [ebp+0Ch]
		push	ecx		; Msg
		push	edi		; hWnd
		call	DefWindowProcW
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_41E534:				; CODE XREF: .text:0041E51Bj
		mov	eax, [ebp+0Ch]
		cmp	eax, 104h
		jg	short loc_41E56D
		jz	loc_41E7F7
		sub	eax, 5
		jz	loc_41E7F7
		sub	eax, 0Ah
		jz	loc_41E7F7
		sub	eax, 78h
		jz	loc_41E7A4
		sub	eax, 79h
		jz	loc_41E7AE
		jmp	loc_41E8AD
; ---------------------------------------------------------------------------

loc_41E56D:				; CODE XREF: .text:0041E53Cj
		sub	eax, 113h
		jz	short loc_41E590
		dec	eax
		sub	eax, 2
		jb	loc_41E7D1
		add	eax, 0FFFFFF16h
		sub	eax, 5
		jb	short loc_41E590
		dec	eax
		jz	short loc_41E590
		jmp	loc_41E8AD
; ---------------------------------------------------------------------------

loc_41E590:				; CODE XREF: .text:0041E572j
					; .text:0041E586j ...
		mov	edx, [ebx+234h]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font.height[edx*4]
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jg	short loc_41E5B7
		mov	dword ptr [ebp-10h], 1

loc_41E5B7:				; CODE XREF: .text:0041E5AEj
		cmp	dword ptr [ebp+0Ch], 113h
		jnz	short loc_41E5E1
		lea	edx, [ebp-70h]
		push	edx		; lpPoint
		call	GetCursorPos
		lea	ecx, [ebp-70h]
		push	ecx		; lpPoint
		push	edi		; hWnd
		call	ScreenToClient
		mov	eax, [ebp-70h]
		mov	[ebp-3Ch], eax
		mov	edx, [ebp-6Ch]
		mov	[ebp-40h], edx
		jmp	short loc_41E5F8
; ---------------------------------------------------------------------------

loc_41E5E1:				; CODE XREF: .text:0041E5BEj
		movsx	ecx, word ptr [ebp+14h]
		mov	[ebp-3Ch], ecx
		mov	eax, [ebp+14h]
		shr	eax, 10h
		and	ax, 0FFFFh
		movsx	edx, ax
		mov	[ebp-40h], edx

loc_41E5F8:				; CODE XREF: .text:0041E5DFj
		lea	ecx, [ebp-2E8h]
		push	ecx		; lpRect
		push	edi		; hWnd
		call	GetClientRect
		push	edi
		lea	edi, [ebp-2D8h]
		lea	esi, [ebp-2E8h]
		mov	ecx, 4
		rep movsd
		cmp	dword ptr [ebx+90h], 0
		pop	edi
		jz	short loc_41E635
		test	byte ptr [ebx+41h], 8
		jnz	short loc_41E635
		mov	eax, [ebp-10h]
		add	eax, 4
		add	[ebp-2E4h], eax

loc_41E635:				; CODE XREF: .text:0041E621j
					; .text:0041E627j
		mov	edx, [ebp-2E4h]
		xor	ecx, ecx
		mov	[ebp-2CCh], edx
		xor	edx, edx
		mov	dword ptr [ebp-50h], 0FFFFFFFFh
		mov	[ebp-54h], ecx
		mov	dword ptr [ebp-58h], 0FFFFFFFFh
		mov	eax, [ebx+244h]
		neg	eax
		mov	[ebp-18h], eax
		mov	[ebp-24h], edx
		xor	esi, esi
		jmp	loc_41E6FA
; ---------------------------------------------------------------------------

loc_41E66B:				; CODE XREF: .text:0041E705j
		mov	eax, [ebx+esi*4+1A4h]
		add	[ebp-24h], eax
		mov	edx, [ebp-18h]
		add	edx, eax
		dec	edx
		mov	[ebp-1Ch], edx
		mov	ecx, [ebp-3Ch]
		sub	ecx, [ebp-1Ch]
		mov	eax, ecx
		cdq
		xor	eax, edx
		sub	eax, edx
		dec	eax
		jg	short loc_41E69B
		test	byte ptr [ebx+esi*4+11Ch], 8
		jnz	short loc_41E69B
		mov	[ebp-58h], esi

loc_41E69B:				; CODE XREF: .text:0041E68Cj
					; .text:0041E696j
		mov	ecx, [ebp-3Ch]
		cmp	ecx, [ebp-18h]
		jl	short loc_41E6F2
		mov	eax, [ebp-3Ch]
		cmp	eax, [ebp-1Ch]
		jg	short loc_41E6F2
		mov	[ebp-50h], esi
		push	esi		; column
		push	ebx		; pt
		call	Getcharacterwidth
		add	esp, 8
		mov	[ebp-14h], eax
		mov	edx, [ebp-3Ch]
		sub	edx, [ebp-18h]
		mov	[ebp-54h], edx
		test	byte ptr [ebx+esi*4+11Ch], 10h
		jnz	short loc_41E6DB
		mov	ecx, [ebp-14h]
		sar	ecx, 1
		jns	short loc_41E6D8
		adc	ecx, 0

loc_41E6D8:				; CODE XREF: .text:0041E6D3j
		sub	[ebp-54h], ecx

loc_41E6DB:				; CODE XREF: .text:0041E6CCj
		mov	ecx, [ebp-14h]
		mov	eax, [ebp-54h]
		cdq
		idiv	ecx
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jge	short loc_41E6F2
		xor	eax, eax
		mov	[ebp-54h], eax

loc_41E6F2:				; CODE XREF: .text:0041E6A1j
					; .text:0041E6A9j ...
		mov	edx, [ebp-1Ch]
		inc	edx
		inc	esi
		mov	[ebp-18h], edx

loc_41E6FA:				; CODE XREF: .text:0041E666j
		cmp	esi, [ebx+8Ch]
		jge	short loc_41E70B
		cmp	esi, 11h
		jl	loc_41E66B

loc_41E70B:				; CODE XREF: .text:0041E700j
		mov	ecx, [ebp-40h]
		cmp	ecx, [ebp-2D4h]
		jl	short loc_41E721
		mov	eax, [ebp-40h]
		cmp	eax, [ebp-2CCh]
		jl	short loc_41E725

loc_41E721:				; CODE XREF: .text:0041E714j
		xor	edx, edx
		jmp	short loc_41E72A
; ---------------------------------------------------------------------------

loc_41E725:				; CODE XREF: .text:0041E71Fj
		mov	edx, 1

loc_41E72A:				; CODE XREF: .text:0041E723j
		mov	[ebp-4Ch], edx
		test	byte ptr [ebx+40h], 8
		jz	short loc_41E746
		mov	ecx, [ebp-2E4h]
		add	ecx, [ebp-2DCh]
		sub	ecx, [ebp-40h]
		dec	ecx
		mov	[ebp-40h], ecx

loc_41E746:				; CODE XREF: .text:0041E731j
		mov	eax, [ebp-40h]
		mov	ecx, [ebp-2E4h]
		sub	eax, ecx
		cdq
		idiv	dword ptr [ebp-10h]
		mov	[ebp-44h], eax
		mov	eax, [ebp-2DCh]
		sub	eax, ecx
		cdq
		idiv	dword ptr [ebp-10h]
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jg	short loc_41E774
		mov	dword ptr [ebp-28h], 1

loc_41E774:				; CODE XREF: .text:0041E76Bj
		mov	ecx, [ebx+234h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	edx, font._width[ecx*4]
		mov	[ebp-14h], edx
		cmp	dword ptr [ebp-14h], 0
		jg	loc_41E8AD
		mov	dword ptr [ebp-14h], 1
		jmp	loc_41E8AD
; ---------------------------------------------------------------------------

loc_41E7A4:				; CODE XREF: .text:0041E559j
		mov	eax, 81h
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_41E7AE:				; CODE XREF: .text:0041E562j
		cmp	dword ptr [ebp+10h], 10h
		jz	short loc_41E7BA
		cmp	dword ptr [ebp+10h], 11h
		jnz	short loc_41E7D1

loc_41E7BA:				; CODE XREF: .text:0041E7B2j
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		mov	eax, [ebp+0Ch]
		push	eax		; Msg
		push	edi		; hWnd
		call	DefWindowProcW
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_41E7D1:				; CODE XREF: .text:0041E578j
					; .text:0041E7B8j
		push	10h		; nVirtKey
		call	GetKeyState
		movsx	edx, ax
		and	edx, 8000h
		mov	[ebp-30h], edx
		push	11h		; nVirtKey
		call	GetKeyState
		movsx	ecx, ax
		and	ecx, 8000h
		mov	[ebp-34h], ecx

loc_41E7F7:				; CODE XREF: .text:0041E53Ej
					; .text:0041E547j ...
		mov	eax, [ebx+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		mov	[ebp-10h], ecx
		cmp	dword ptr [ebp-10h], 0
		jg	short loc_41E81E
		mov	dword ptr [ebp-10h], 1

loc_41E81E:				; CODE XREF: .text:0041E815j
		mov	eax, font._width[eax*4]
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jg	short loc_41E835
		mov	dword ptr [ebp-14h], 1

loc_41E835:				; CODE XREF: .text:0041E82Cj
		or	edx, 0FFFFFFFFh
		test	byte ptr [ebx+40h], 8
		jnz	short loc_41E841
		add	edx, 2

loc_41E841:				; CODE XREF: .text:0041E83Cj
		mov	[ebp-60h], edx
		lea	ecx, [ebp-2E8h]
		push	ecx		; lpRect
		push	edi		; hWnd
		call	GetClientRect
		cmp	dword ptr [ebx+90h], 0
		jz	short loc_41E86C
		test	byte ptr [ebx+41h], 8
		jnz	short loc_41E86C
		mov	eax, [ebp-10h]
		add	eax, 4
		add	[ebp-2E4h], eax

loc_41E86C:				; CODE XREF: .text:0041E858j
					; .text:0041E85Ej
		xor	edx, edx
		xor	esi, esi
		mov	[ebp-24h], edx
		jmp	short loc_41E880
; ---------------------------------------------------------------------------

loc_41E875:				; CODE XREF: .text:0041E88Bj
		mov	eax, [ebx+esi*4+1A4h]
		add	[ebp-24h], eax
		inc	esi

loc_41E880:				; CODE XREF: .text:0041E873j
		cmp	esi, [ebx+8Ch]
		jge	short loc_41E88D
		cmp	esi, 11h
		jl	short loc_41E875

loc_41E88D:				; CODE XREF: .text:0041E886j
		mov	eax, [ebp-2DCh]
		sub	eax, [ebp-2E4h]
		cdq
		idiv	dword ptr [ebp-10h]
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jg	short loc_41E8AD
		mov	dword ptr [ebp-28h], 1

loc_41E8AD:				; CODE XREF: .text:0041E568j
					; .text:0041E58Bj ...
		xor	ecx, ecx
		mov	[ebp-2Ch], ecx
		mov	eax, [ebp+0Ch]	; int
		cmp	eax, 202h
		jg	loc_41E959
		jz	loc_41F3A9
		cmp	eax, 104h
		jg	short loc_41E917
		jz	loc_41FA4F
		cmp	eax, 0Fh
		jg	short loc_41E8FE
		jz	loc_420352
		sub	eax, 2
		jz	loc_41E9F0
		sub	eax, 3
		jz	loc_4202A1
		sub	eax, 2
		jz	loc_41EBE6
		jmp	loc_4209E2	; jumptable 0041E9BD default case
; ---------------------------------------------------------------------------

loc_41E8FE:				; CODE XREF: .text:0041E8D6j
		sub	eax, 100h
		jz	loc_41FB6E
		sub	eax, 2
		jz	loc_420239
		jmp	loc_4209E2	; jumptable 0041E9BD default case
; ---------------------------------------------------------------------------

loc_41E917:				; CODE XREF: .text:0041E8CBj
		cmp	eax, 11Fh
		jg	short loc_41E942
		jz	loc_420589
		sub	eax, 113h
		jz	loc_41F5DF
		dec	eax
		jz	loc_41F7EA
		dec	eax
		jz	loc_41F8C1
		jmp	loc_4209E2	; jumptable 0041E9BD default case
; ---------------------------------------------------------------------------

loc_41E942:				; CODE XREF: .text:0041E91Cj
		sub	eax, 200h
		jz	loc_41EDA7
		dec	eax
		jz	loc_41EC21
		jmp	loc_4209E2	; jumptable 0041E9BD default case
; ---------------------------------------------------------------------------

loc_41E959:				; CODE XREF: .text:0041E8BAj
		cmp	eax, 46Eh
		jg	short loc_41E9AF
		jz	loc_420797
		cmp	eax, 468h
		jge	short loc_41E98D
		sub	eax, 203h
		jz	loc_41EC21
		dec	eax
		jz	loc_41F3A9
		sub	eax, 2
		jz	loc_41F3A9
		jmp	loc_4209E2	; jumptable 0041E9BD default case
; ---------------------------------------------------------------------------

loc_41E98D:				; CODE XREF: .text:0041E96Bj
		add	eax, 0FFFFFB98h
		sub	eax, 3
		jb	loc_42059E
		sub	eax, 2
		jb	loc_420634
		jz	loc_42075A
		jmp	loc_4209E2	; jumptable 0041E9BD default case
; ---------------------------------------------------------------------------

loc_41E9AF:				; CODE XREF: .text:0041E95Ej
		add	eax, 0FFFFFB7Ch	; switch 11 cases
		cmp	eax, 0Ah
		ja	loc_4209E2	; jumptable 0041E9BD default case
		jmp	ds:off_41E9C4[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_41E9C4	dd offset loc_420930	; DATA XREF: .text:0041E9BDr
		dd offset loc_42096A	; jump table for switch	statement
		dd offset loc_42096A
		dd offset loc_42096A
		dd offset loc_420991
		dd offset loc_420991
		dd offset loc_420991
		dd offset loc_42096A
		dd offset loc_42096A
		dd offset loc_4209E2
		dd offset loc_4209B7
; ---------------------------------------------------------------------------

loc_41E9F0:				; CODE XREF: .text:0041E8E1j
		cmp	dword ptr [ebx+254h], 0
		jz	short loc_41EA09
		push	3		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		xor	edx, edx
		mov	[ebx+254h], edx

loc_41EA09:				; CODE XREF: .text:0041E9F7j
		test	byte ptr [ebx+42h], 1
		jz	short loc_41EA8B
		cmp	word ptr [ebx],	0
		jz	short loc_41EA8B
		cmp	dword ptr [ebx+88h], 0
		jnz	short loc_41EA36
		push	offset aAppearance ; "Appearance"
		push	20h		; n
		lea	ecx, [ebp-2C8h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_41EA51
; ---------------------------------------------------------------------------

loc_41EA36:				; CODE XREF: .text:0041EA1Cj
		mov	eax, [ebx+88h]
		lea	edx, [ebp-2C8h]
		push	eax
		push	offset aAppearanceI ; "Appearance[%i]"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_41EA51:				; CODE XREF: .text:0041EA34j
		mov	ecx, [ebx+23Ch]
		push	ecx
		mov	eax, [ebx+240h]
		push	eax
		mov	edx, [ebx+90h]
		push	edx
		lea	edx, [ebp-2C8h]
		mov	ecx, [ebx+238h]
		push	ecx
		mov	eax, [ebx+234h]
		push	eax		; arglist
		push	offset aIIIII_0	; "%i,%i,%i,%i,%i"
		push	edx		; key
		push	ebx		; section
		push	0		; file
		call	Writetoini
		add	esp, 24h

loc_41EA8B:				; CODE XREF: .text:0041EA0Dj
					; .text:0041EA13j
		test	byte ptr [ebx+42h], 4
		jz	loc_41EB48
		cmp	word ptr [ebx],	0
		jz	loc_41EB48
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-0Ch], eax
		jmp	short loc_41EACF
; ---------------------------------------------------------------------------

loc_41EAA8:				; CODE XREF: .text:0041EADEj
		mov	edx, [ebx+esi*4+1A4h]
		push	edx
		push	offset aI	; "%i,"
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-288h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		inc	esi

loc_41EACF:				; CODE XREF: .text:0041EAA6j
		cmp	esi, [ebx+8Ch]
		jge	short loc_41EAE0
		cmp	dword ptr [ebp-0Ch], 0F4h
		jl	short loc_41EAA8

loc_41EAE0:				; CODE XREF: .text:0041EAD5j
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_41EAF3
		mov	edx, [ebp-0Ch]
		mov	word ptr [ebp+edx*2-28Ah], 0

loc_41EAF3:				; CODE XREF: .text:0041EAE4j
		cmp	dword ptr [ebx+88h], 0
		jnz	short loc_41EB14
		push	offset aColumns_0 ; "Columns"
		push	20h		; n
		lea	ecx, [ebp-2C8h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_41EB2F
; ---------------------------------------------------------------------------

loc_41EB14:				; CODE XREF: .text:0041EAFAj
		mov	eax, [ebx+88h]
		lea	edx, [ebp-2C8h]
		push	eax
		push	offset aColumnsI ; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_41EB2F:				; CODE XREF: .text:0041EB12j
		lea	ecx, [ebp-288h]
		push	ecx		; format
		lea	eax, [ebp-2C8h]
		push	eax		; key
		push	ebx		; section
		push	0		; file
		call	Writetoini
		add	esp, 10h

loc_41EB48:				; CODE XREF: .text:0041EA8Fj
					; .text:0041EA99j
		test	byte ptr [ebx+42h], 8
		jz	short loc_41EBAB
		cmp	word ptr [ebx],	0
		jz	short loc_41EBAB
		cmp	dword ptr [ebx+88h], 0
		jnz	short loc_41EB75
		push	offset aSort	; "Sort"
		push	20h		; n
		lea	edx, [ebp-2C8h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_41EB90
; ---------------------------------------------------------------------------

loc_41EB75:				; CODE XREF: .text:0041EB5Bj
		mov	ecx, [ebx+88h]
		lea	eax, [ebp-2C8h]
		push	ecx
		push	offset aSortI	; "Sort[%i]"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_41EB90:				; CODE XREF: .text:0041EB73j
		mov	edx, [ebx+7Ch]
		lea	ecx, [ebp-2C8h]
		push	edx		; arglist
		push	(offset	aIIIII_0+18h) ;	format
		push	ecx		; key
		push	ebx		; section
		push	0		; file
		call	Writetoini
		add	esp, 14h

loc_41EBAB:				; CODE XREF: .text:0041EB4Cj
					; .text:0041EB52j
		push	0		; dwNewLong
		push	0		; nIndex
		push	edi		; hWnd
		call	SetWindowLongW
		xor	eax, eax
		mov	[ebx+22Ch], eax
		cmp	dword ptr [ebx+208h], 0
		jz	loc_420A24
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EBE6:				; CODE XREF: .text:0041E8F3j
		cmp	dword ptr [ebx+224h], 0
		jz	short loc_41EC08
		push	edi		; lParam
		push	0		; wParam
		push	473h		; Msg
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	SendMessageW
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EC08:				; CODE XREF: .text:0041EBEDj
		push	edi		; lParam
		push	0		; wParam
		push	473h		; Msg
		push	edi		; hWnd
		call	GetParent
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EC21:				; CODE XREF: .text:0041E94Ej
					; .text:0041E972j
		push	edi		; hWnd
		call	SetFocus
		cmp	dword ptr [ebp-58h], 0
		jl	short loc_41EC54
		push	edi		; hWnd
		call	SetCapture
		mov	dword ptr [ebx+1E8h], 1
		mov	ecx, [ebp-58h]
		mov	[ebx+1ECh], ecx
		mov	eax, [ebp-3Ch]
		mov	[ebx+1F8h], eax
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EC54:				; CODE XREF: .text:0041EC2Bj
		cmp	dword ptr [ebp-4Ch], 0
		jnz	loc_41ED40
		test	byte ptr [ebx+40h], 5
		jnz	short loc_41EC74
		mov	edx, [ebx+7Ch]
		push	edx		; sort
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_41EC74:				; CODE XREF: .text:0041EC62j
		cmp	dword ptr [ebp+0Ch], 203h
		jnz	short loc_41ECC1
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41ECC1
		mov	eax, [ebp-44h]
		push	eax
		movzx	edx, word ptr [ebp-54h]
		movzx	ecx, word ptr [ebp-50h]
		shl	ecx, 10h
		or	edx, ecx
		push	edx
		push	471h
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jle	short loc_41ECB9
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8

loc_41ECB9:				; CODE XREF: .text:0041ECACj
		test	esi, esi
		jnz	loc_420A24

loc_41ECC1:				; CODE XREF: .text:0041EC7Bj
					; .text:0041EC84j
		push	10h		; nVirtKey
		call	GetKeyState
		movsx	eax, ax
		and	eax, 8000h
		mov	[ebp-30h], eax
		mov	edx, [ebp-44h]
		push	edx		; lParam
		movzx	ecx, word ptr [ebp-54h]
		movzx	eax, word ptr [ebp-50h]
		shl	eax, 10h
		or	ecx, eax
		push	ecx		; wParam
		mov	edx, 46Ch
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_41ECF1
		dec	edx

loc_41ECF1:				; CODE XREF: .text:0041ECEEj
		push	edx		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		test	esi, esi
		jle	short loc_41ED09
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8

loc_41ED09:				; CODE XREF: .text:0041ECFCj
		test	esi, esi
		jz	loc_420A24
		push	edi		; hWnd
		call	SetCapture
		mov	dword ptr [ebx+1E8h], 3
		xor	eax, eax
		mov	[ebx+1ECh], eax
		mov	edx, [ebp-3Ch]
		mov	[ebx+1F8h], edx
		mov	ecx, [ebp-40h]
		mov	[ebx+1FCh], ecx
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41ED40:				; CODE XREF: .text:0041EC58j
		cmp	dword ptr [ebp-50h], 0
		jl	loc_420A24
		mov	eax, [ebp-50h]
		test	byte ptr [ebx+eax*4+11Ch], 4
		jnz	loc_420A24
		mov	edx, [ebp-50h]
		test	byte ptr [ebx+edx*4+11Ch], 3
		jz	loc_420A24
		push	edi		; hWnd
		call	SetCapture
		mov	dword ptr [ebx+1E8h], 2
		mov	ecx, [ebp-50h]
		lea	edx, [ebp-2D8h]
		mov	[ebx+1ECh], ecx
		mov	eax, [ebp-50h]
		or	dword ptr [ebx+eax*4+11Ch], 100h
		push	0		; bErase
		push	edx		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EDA7:				; CODE XREF: .text:0041E947j
		cmp	dword ptr [ebx+1E8h], 1
		jnz	loc_41EE6D
		push	7F84h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		push	eax		; hCursor
		call	SetCursor
		mov	ecx, [ebx+1ECh]
		mov	eax, [ebx+ecx*4+1A4h]
		add	eax, [ebp-3Ch]
		sub	eax, [ebx+1F8h]
		mov	[ebp-20h], eax
		mov	edx, [ebx+1ECh]
		push	edx		; column
		push	ebx		; pt
		call	Getcharacterwidth
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-20h], 3
		jge	short loc_41EE0C
		mov	ecx, 3
		sub	ecx, [ebp-20h]
		add	[ebp-3Ch], ecx
		mov	dword ptr [ebp-20h], 3
		jmp	short loc_41EE2C
; ---------------------------------------------------------------------------

loc_41EE0C:				; CODE XREF: .text:0041EDF6j
		mov	eax, [ebp-14h]
		shl	eax, 8
		cmp	eax, [ebp-20h]
		jge	short loc_41EE2C
		mov	edx, [ebp-14h]
		shl	edx, 8
		sub	edx, [ebp-20h]
		add	[ebp-3Ch], edx
		mov	ecx, [ebp-14h]
		shl	ecx, 8
		mov	[ebp-20h], ecx

loc_41EE2C:				; CODE XREF: .text:0041EE0Aj
					; .text:0041EE15j
		mov	eax, [ebx+1ECh]
		mov	edx, [ebx+eax*4+1A4h]
		cmp	edx, [ebp-20h]
		jz	short loc_41EE5F
		mov	ecx, [ebx+1ECh]
		mov	eax, [ebp-20h]
		mov	[ebx+ecx*4+1A4h], eax
		push	ebx
		call	loc_41A554
		pop	ecx
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect

loc_41EE5F:				; CODE XREF: .text:0041EE3Cj
		mov	edx, [ebp-3Ch]
		mov	[ebx+1F8h], edx
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EE6D:				; CODE XREF: .text:0041EDAEj
		cmp	dword ptr [ebx+1E8h], 2
		jnz	loc_41EF20
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		push	eax		; hCursor
		call	SetCursor
		cmp	dword ptr [ebp-4Ch], 0
		jz	short loc_41EED2
		mov	ecx, [ebx+1ECh]
		cmp	ecx, [ebp-50h]
		jnz	short loc_41EED2
		mov	eax, [ebx+1ECh]
		test	byte ptr [ebx+eax*4+11Dh], 1
		jnz	short loc_41EED2
		mov	edx, [ebx+1ECh]
		lea	ecx, [ebp-2D8h]
		or	dword ptr [ebx+edx*4+11Ch], 100h
		push	0		; bErase
		push	ecx		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EED2:				; CODE XREF: .text:0041EE90j
					; .text:0041EE9Bj ...
		cmp	dword ptr [ebp-4Ch], 0
		jz	short loc_41EEE7
		mov	eax, [ebx+1ECh]
		cmp	eax, [ebp-50h]
		jz	loc_420A24

loc_41EEE7:				; CODE XREF: .text:0041EED6j
		mov	edx, [ebx+1ECh]
		test	byte ptr [ebx+edx*4+11Dh], 1
		jz	loc_420A24
		mov	ecx, [ebx+1ECh]
		lea	eax, [ebp-2D8h]
		and	dword ptr [ebx+ecx*4+11Ch], 0FFFFFEFFh
		push	0		; bErase
		push	eax		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41EF20:				; CODE XREF: .text:0041EE74j
		cmp	dword ptr [ebx+1E8h], 3
		jz	short loc_41EF36
		cmp	dword ptr [ebx+1E8h], 4
		jnz	loc_41F32B

loc_41EF36:				; CODE XREF: .text:0041EF27j
		xor	edx, edx
		mov	[ebp-38h], edx
		test	byte ptr [ebx+41h], 60h
		jz	short loc_41EFB7
		cmp	dword ptr [ebx+1E8h], 3
		jnz	short loc_41EFB7
		mov	ecx, [ebp-3Ch]
		sub	ecx, [ebx+1F8h]
		mov	[ebp-78h], ecx
		mov	eax, [ebp-78h]
		cdq
		xor	eax, edx
		sub	eax, edx
		cmp	eax, [ebp-10h]
		jge	short loc_41EF7C
		mov	ecx, [ebp-40h]
		sub	ecx, [ebx+1FCh]
		mov	[ebp-7Ch], ecx
		mov	eax, [ebp-7Ch]
		cdq
		xor	eax, edx
		sub	eax, edx
		cmp	eax, [ebp-10h]
		jl	short loc_41EFB7

loc_41EF7C:				; CODE XREF: .text:0041EF61j
		mov	ecx, [ebp-3Ch]
		mov	[ebx+1F8h], ecx
		mov	eax, [ebp-40h]
		mov	[ebx+1FCh], eax
		mov	edx, [ebx+244h]
		mov	[ebx+1F0h], edx
		mov	ecx, [ebx+248h]
		mov	[ebx+1F4h], ecx
		mov	dword ptr [ebx+1E8h], 4
		mov	dword ptr [ebp-38h], 1

loc_41EFB7:				; CODE XREF: .text:0041EF3Fj
					; .text:0041EF48j ...
		cmp	dword ptr [ebx+1E8h], 3
		jnz	short loc_41EFD4
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		push	eax		; hCursor
		call	SetCursor
		jmp	short loc_41EFDF
; ---------------------------------------------------------------------------

loc_41EFD4:				; CODE XREF: .text:0041EFBEj
		mov	eax, hCursor
		push	eax		; hCursor
		call	SetCursor

loc_41EFDF:				; CODE XREF: .text:0041EFD2j
		test	byte ptr [ebx+41h], 60h
		jnz	loc_41F1D9
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-2E8h]
		jl	short loc_41F014
		mov	ecx, [ebp-3Ch]
		cmp	ecx, [ebp-2E0h]
		jge	short loc_41F014
		push	1		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		xor	eax, eax
		mov	[ebx+1F0h], eax
		jmp	loc_41F0BE
; ---------------------------------------------------------------------------

loc_41F014:				; CODE XREF: .text:0041EFF2j
					; .text:0041EFFDj
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-2E8h]
		jge	short loc_41F06A
		cmp	dword ptr [ebx+1F0h], 0
		jl	short loc_41F034
		push	0		; lpTimerFunc
		push	32h		; uElapse
		push	1		; nIDEvent
		push	edi		; hWnd
		call	SetTimer

loc_41F034:				; CODE XREF: .text:0041F026j
		mov	dword ptr [ebx+1F0h], 0FFFFFFFFh
		mov	ecx, [ebp-2E8h]
		add	ecx, 0FFFFFFD0h
		cmp	ecx, [ebp-3Ch]
		jle	short loc_41F0BE
		mov	eax, [ebp-2E8h]
		add	eax, 0FFFFFFD0h
		sub	eax, [ebp-3Ch]
		test	eax, eax
		jns	short loc_41F05F
		add	eax, 0Fh

loc_41F05F:				; CODE XREF: .text:0041F05Aj
		sar	eax, 4
		sub	[ebx+1F0h], eax
		jmp	short loc_41F0BE
; ---------------------------------------------------------------------------

loc_41F06A:				; CODE XREF: .text:0041F01Dj
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-2E0h]
		jl	short loc_41F0BE
		cmp	dword ptr [ebx+1F0h], 0
		jg	short loc_41F08A
		push	0		; lpTimerFunc
		push	32h		; uElapse
		push	1		; nIDEvent
		push	edi		; hWnd
		call	SetTimer

loc_41F08A:				; CODE XREF: .text:0041F07Cj
		mov	dword ptr [ebx+1F0h], 1
		mov	ecx, [ebp-2E0h]
		add	ecx, 30h
		cmp	ecx, [ebp-3Ch]
		jg	short loc_41F0BE
		mov	eax, [ebp-3Ch]
		sub	eax, [ebp-2E0h]
		add	eax, 0FFFFFFD0h
		test	eax, eax
		jns	short loc_41F0B5
		add	eax, 0Fh

loc_41F0B5:				; CODE XREF: .text:0041F0B0j
		sar	eax, 4
		add	[ebx+1F0h], eax

loc_41F0BE:				; CODE XREF: .text:0041F00Fj
					; .text:0041F04Aj ...
		mov	edx, [ebp-40h]
		cmp	edx, [ebp-2E4h]
		jl	short loc_41F11B
		mov	ecx, [ebp-40h]
		cmp	ecx, [ebp-2DCh]
		jge	short loc_41F11B
		push	2		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		xor	eax, eax
		mov	[ebx+1F4h], eax
		mov	edx, [ebp-44h]
		push	edx		; lParam
		movzx	ecx, word ptr [ebp-54h]
		movzx	eax, word ptr [ebp-50h]
		shl	eax, 10h
		or	ecx, eax
		push	ecx		; wParam
		push	46Ch		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		test	esi, esi
		jle	loc_420A24
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F11B:				; CODE XREF: .text:0041F0C7j
					; .text:0041F0D2j
		mov	eax, [ebp-40h]
		cmp	eax, [ebp-2E4h]
		jge	short loc_41F178
		cmp	dword ptr [ebx+1F4h], 0
		jl	short loc_41F13B
		push	0		; lpTimerFunc
		push	32h		; uElapse
		push	2		; nIDEvent
		push	edi		; hWnd
		call	SetTimer

loc_41F13B:				; CODE XREF: .text:0041F12Dj
		mov	dword ptr [ebx+1F4h], 0FFFFFFFFh
		mov	edx, [ebp-2E4h]
		add	edx, 0FFFFFFD0h
		cmp	edx, [ebp-40h]
		jle	loc_420A24
		mov	ecx, [ebp-2E4h]
		add	ecx, 0FFFFFFD0h
		sub	ecx, [ebp-40h]
		test	ecx, ecx
		jns	short loc_41F16A
		add	ecx, 0Fh

loc_41F16A:				; CODE XREF: .text:0041F165j
		sar	ecx, 4
		sub	[ebx+1F4h], ecx
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F178:				; CODE XREF: .text:0041F124j
		mov	eax, [ebp-40h]
		cmp	eax, [ebp-2DCh]
		jl	loc_420A24
		cmp	dword ptr [ebx+1F4h], 0
		jg	short loc_41F19C
		push	0		; lpTimerFunc
		push	32h		; uElapse
		push	2		; nIDEvent
		push	edi		; hWnd
		call	SetTimer

loc_41F19C:				; CODE XREF: .text:0041F18Ej
		mov	dword ptr [ebx+1F4h], 1
		mov	edx, [ebp-2DCh]
		add	edx, 30h
		cmp	edx, [ebp-40h]
		jg	loc_420A24
		mov	ecx, [ebp-40h]
		sub	ecx, [ebp-2DCh]
		add	ecx, 0FFFFFFD0h
		test	ecx, ecx
		jns	short loc_41F1CB
		add	ecx, 0Fh

loc_41F1CB:				; CODE XREF: .text:0041F1C6j
		sar	ecx, 4
		add	[ebx+1F4h], ecx
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F1D9:				; CODE XREF: .text:0041EFE3j
		cmp	dword ptr [ebx+1E8h], 4
		jnz	loc_420A24
		mov	eax, [ebp-40h]
		sub	eax, [ebx+1FCh]
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		push	edx		; lParam
		mov	ecx, [ebp-3Ch]
		sub	ecx, [ebx+1F8h]
		push	ecx		; wParam
		push	46Dh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		test	esi, esi
		jle	short loc_41F221
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F221:				; CODE XREF: .text:0041F20Fj
		test	esi, esi
		jnz	loc_420A24
		cmp	dword ptr [ebp-8], 0
		jl	short loc_41F245
		mov	eax, [ebp-10h]
		sar	eax, 1
		jns	short loc_41F239
		adc	eax, 0

loc_41F239:				; CODE XREF: .text:0041F234j
		add	eax, [ebp-8]
		cdq
		idiv	dword ptr [ebp-10h]
		mov	[ebp-8], eax
		jmp	short loc_41F25B
; ---------------------------------------------------------------------------

loc_41F245:				; CODE XREF: .text:0041F22Dj
		mov	ecx, [ebp-10h]
		sar	ecx, 1
		jns	short loc_41F24F
		adc	ecx, 0

loc_41F24F:				; CODE XREF: .text:0041F24Aj
		mov	eax, [ebp-8]
		sub	eax, ecx
		cdq
		idiv	dword ptr [ebp-10h]
		mov	[ebp-8], eax

loc_41F25B:				; CODE XREF: .text:0041F243j
		test	byte ptr [ebx+41h], 20h
		jz	short loc_41F2A4
		mov	ecx, [ebp-2E0h]
		sub	ecx, [ebp-2E8h]
		mov	eax, [ebp-24h]
		sub	eax, ecx
		mov	[ebp-20h], eax
		mov	edx, [ebp-3Ch]
		sub	edx, [ebx+1F8h]
		mov	ecx, [ebx+1F0h]
		sub	ecx, edx
		mov	[ebp-64h], ecx
		mov	eax, [ebp-64h]
		cmp	eax, [ebp-20h]
		jle	short loc_41F297
		mov	edx, [ebp-20h]
		mov	[ebp-64h], edx

loc_41F297:				; CODE XREF: .text:0041F28Fj
		cmp	dword ptr [ebp-64h], 0
		jge	short loc_41F2AD
		xor	ecx, ecx
		mov	[ebp-64h], ecx
		jmp	short loc_41F2AD
; ---------------------------------------------------------------------------

loc_41F2A4:				; CODE XREF: .text:0041F25Fj
		mov	eax, [ebx+244h]
		mov	[ebp-64h], eax

loc_41F2AD:				; CODE XREF: .text:0041F29Bj
					; .text:0041F2A2j
		test	byte ptr [ebx+41h], 40h
		jz	short loc_41F2E0
		mov	edx, [ebx+1F4h]
		sub	edx, [ebp-8]
		mov	[ebp-68h], edx
		mov	ecx, [ebp-68h]
		add	ecx, [ebp-28h]
		cmp	ecx, [ebx+44h]
		jle	short loc_41F2D3
		mov	eax, [ebx+44h]
		sub	eax, [ebp-28h]
		mov	[ebp-68h], eax

loc_41F2D3:				; CODE XREF: .text:0041F2C8j
		cmp	dword ptr [ebp-68h], 0
		jge	short loc_41F2E9
		xor	edx, edx
		mov	[ebp-68h], edx
		jmp	short loc_41F2E9
; ---------------------------------------------------------------------------

loc_41F2E0:				; CODE XREF: .text:0041F2B1j
		mov	ecx, [ebx+248h]
		mov	[ebp-68h], ecx

loc_41F2E9:				; CODE XREF: .text:0041F2D7j
					; .text:0041F2DEj
		cmp	dword ptr [ebp-38h], 0
		jnz	short loc_41F309
		mov	eax, [ebx+244h]
		cmp	eax, [ebp-64h]
		jnz	short loc_41F309
		mov	edx, [ebx+248h]
		cmp	edx, [ebp-68h]
		jz	loc_420A24

loc_41F309:				; CODE XREF: .text:0041F2EDj
					; .text:0041F2F8j
		mov	ecx, [ebp-64h]
		mov	[ebx+244h], ecx
		mov	eax, [ebp-68h]
		mov	[ebx+248h], eax
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F32B:				; CODE XREF: .text:0041EF30j
		cmp	dword ptr [ebp-4Ch], 0
		jnz	short loc_41F37C
		cmp	dword ptr [ebp-58h], 0
		jge	short loc_41F37C
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41F37C
		test	byte ptr [ebx+40h], 5
		jnz	short loc_41F356
		mov	edx, [ebx+7Ch]
		push	edx		; sort
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_41F356:				; CODE XREF: .text:0041F344j
		mov	eax, [ebp-44h]
		push	eax
		movzx	edx, word ptr [ebp-54h]
		movzx	ecx, word ptr [ebp-50h]
		shl	ecx, 10h
		or	edx, ecx
		push	edx
		push	467h
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	esi, eax
		jmp	short loc_41F37E
; ---------------------------------------------------------------------------

loc_41F37C:				; CODE XREF: .text:0041F32Fj
					; .text:0041F335j ...
		xor	esi, esi

loc_41F37E:				; CODE XREF: .text:0041F37Aj
		test	esi, esi
		jnz	loc_420A24
		cmp	dword ptr [ebp-58h], 0
		mov	eax, 7F84h
		jge	short loc_41F396
		add	eax, 0FFFFFF7Ch

loc_41F396:				; CODE XREF: .text:0041F38Fj
		push	eax		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		push	eax		; hCursor
		call	SetCursor
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F3A9:				; CODE XREF: .text:0041E8C0j
					; .text:0041E979j ...
		call	GetCapture
		cmp	edi, eax
		jnz	short loc_41F3B7
		call	ReleaseCapture

loc_41F3B7:				; CODE XREF: .text:0041F3B0j
		cmp	dword ptr [ebx+1E8h], 2
		jnz	loc_41F4C0
		mov	edx, [ebx+1ECh]
		test	byte ptr [ebx+edx*4+11Dh], 1
		jz	loc_41F4C0
		mov	ecx, [ebx+1ECh]
		and	dword ptr [ebx+ecx*4+11Ch], 0FFFFFEFFh
		mov	eax, [ebx+1ECh]
		test	byte ptr [ebx+eax*4+11Ch], 1
		jz	short loc_41F449
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41F449
		test	byte ptr [ebx+40h], 5
		jnz	short loc_41F418
		mov	edx, [ebx+7Ch]
		push	edx		; sort
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_41F418:				; CODE XREF: .text:0041F406j
		push	0
		mov	eax, [ebx+1ECh]
		push	eax
		push	470h
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		test	eax, eax
		jle	loc_41F4D9
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_41F4D9
; ---------------------------------------------------------------------------

loc_41F449:				; CODE XREF: .text:0041F3F7j
					; .text:0041F400j
		mov	edx, [ebx+1ECh]
		test	byte ptr [ebx+edx*4+11Ch], 2
		jz	short loc_41F4AF
		cmp	dword ptr [ebx+74h], 0
		jz	short loc_41F4AF
		mov	ecx, [ebx+1ECh]
		cmp	ecx, [ebx+7Ch]
		jz	short loc_41F4AF
		mov	eax, [ebx+1ECh]
		xor	edx, edx
		mov	[ebx+7Ch], eax
		mov	[ebx+80h], edx
		mov	ecx, [ebx+7Ch]
		lea	eax, [ebx+44h]
		push	ecx		; sort
		push	eax		; sd
		call	Sortsorteddata
		add	esp, 8
		mov	edx, [ebx+68h]
		inc	edx
		push	edx		; y1
		push	0		; x1
		mov	ecx, [ebx+68h]
		push	ecx		; y0
		push	0		; x0
		push	0FFFFFFFFh	; column
		push	ebx		; pt
		call	Maketableareavisible
		add	esp, 18h
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	short loc_41F4D9
; ---------------------------------------------------------------------------

loc_41F4AF:				; CODE XREF: .text:0041F457j
					; .text:0041F45Dj ...
		push	0		; bErase
		lea	eax, [ebp-2D8h]
		push	eax		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	short loc_41F4D9
; ---------------------------------------------------------------------------

loc_41F4C0:				; CODE XREF: .text:0041F3BEj
					; .text:0041F3D2j
		cmp	dword ptr [ebx+1E8h], 3
		jnz	short loc_41F4D9
		push	1		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		push	2		; uIDEvent
		push	edi		; hWnd
		call	KillTimer

loc_41F4D9:				; CODE XREF: .text:0041F433j
					; .text:0041F444j ...
		xor	edx, edx
		mov	[ebx+1E8h], edx
		cmp	dword ptr [ebp+0Ch], 202h
		jz	loc_420A24
		test	byte ptr [ebx+40h], 5
		jnz	short loc_41F504
		mov	ecx, [ebx+7Ch]
		push	ecx		; sort
		lea	eax, [ebx+44h]
		push	eax		; sd
		call	Sortsorteddata
		add	esp, 8

loc_41F504:				; CODE XREF: .text:0041F4F2j
		test	byte ptr [ebx+40h], 1
		jz	short loc_41F513
		test	dword ptr [ebx+40h], 180h
		jz	short loc_41F519

loc_41F513:				; CODE XREF: .text:0041F508j
		push	edi		; hWnd
		call	SetFocus

loc_41F519:				; CODE XREF: .text:0041F511j
		test	byte ptr [ebx+40h], 1
		jz	short loc_41F525
		test	byte ptr [ebx+40h], 80h
		jz	short loc_41F562

loc_41F525:				; CODE XREF: .text:0041F51Dj
		cmp	dword_57FEAC, 0
		jz	short loc_41F562
		cmp	dword ptr [ebp-4Ch], 0
		jnz	short loc_41F562
		mov	edx, [ebp-44h]
		push	edx		; lParam
		movzx	ecx, word ptr [ebp-54h]
		movzx	eax, word ptr [ebp-50h]
		shl	eax, 10h
		or	ecx, eax
		push	ecx		; wParam
		push	46Bh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		test	esi, esi
		jle	short loc_41F562
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8

loc_41F562:				; CODE XREF: .text:0041F523j
					; .text:0041F52Cj ...
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41F58E
		cmp	dword ptr [ebx+218h], 0
		jnz	short loc_41F58E
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-2Ch], eax

loc_41F58E:				; CODE XREF: .text:0041F569j
					; .text:0041F572j
		cmp	dword ptr [ebp-2Ch], 0
		jnz	loc_420A24
		cmp	dword ptr [ebx+218h], 0
		jz	loc_420A24
		lea	eax, [ebp-70h]
		push	eax		; lpPoint
		call	GetCursorPos
		mov	edx, [ebx+218h]	; int
		push	edx		; int
		mov	ecx, [ebp-6Ch]	; int
		push	ecx		; y
		mov	eax, [ebp-70h]	; int
		push	eax		; x
		push	ebx		; int
		call	loc_4252B0
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jz	loc_420A24
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F5DF:				; CODE XREF: .text:0041E929j
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_41F65F
		xor	eax, eax
		mov	[ebp-38h], eax
		cmp	dword ptr [ebx+1F0h], 0
		jnz	short loc_41F5FD
		push	1		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		jmp	short loc_41F645
; ---------------------------------------------------------------------------

loc_41F5FD:				; CODE XREF: .text:0041F5F1j
		mov	esi, [ebp-14h]
		mov	eax, [ebp-24h]
		imul	esi, [ebx+1F0h]
		add	esi, [ebx+244h]
		sub	eax, [ebp-2E0h]
		cmp	esi, eax
		jle	short loc_41F623
		mov	esi, [ebp-24h]
		sub	esi, [ebp-2E0h]

loc_41F623:				; CODE XREF: .text:0041F618j
		test	esi, esi
		jge	short loc_41F629
		xor	esi, esi

loc_41F629:				; CODE XREF: .text:0041F625j
		cmp	esi, [ebx+244h]
		jz	short loc_41F645
		mov	[ebx+244h], esi
		push	ebx
		call	loc_41A554
		pop	ecx
		mov	dword ptr [ebp-38h], 1

loc_41F645:				; CODE XREF: .text:0041F5FBj
					; .text:0041F62Fj
		cmp	dword ptr [ebp-38h], 0
		jz	loc_420A24
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F65F:				; CODE XREF: .text:0041F5E3j
		cmp	dword ptr [ebp+10h], 2
		jnz	short loc_41F6DF
		cmp	dword ptr [ebx+1F4h], 0
		jnz	short loc_41F67B
		push	2		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F67B:				; CODE XREF: .text:0041F66Cj
		mov	eax, [ebx+1F4h]
		push	eax		; lParam
		mov	edx, [ebp-28h]
		push	edx		; wParam
		push	468h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		cmp	dword ptr [ebx+1F4h], 0
		mov	esi, eax
		jge	short loc_41F6A0
		xor	eax, eax
		jmp	short loc_41F6A4
; ---------------------------------------------------------------------------

loc_41F6A0:				; CODE XREF: .text:0041F69Aj
		mov	eax, [ebp-28h]
		dec	eax

loc_41F6A4:				; CODE XREF: .text:0041F69Ej
		push	eax		; lParam
		movzx	edx, word ptr [ebp-54h]
		movzx	ecx, word ptr [ebp-50h]
		shl	ecx, 10h
		or	edx, ecx
		push	edx		; wParam
		push	46Ch		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-4], eax
		test	esi, esi
		jg	short loc_41F6CF
		cmp	dword ptr [ebp-4], 0
		jle	loc_420A24

loc_41F6CF:				; CODE XREF: .text:0041F6C3j
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F6DF:				; CODE XREF: .text:0041F663j
		cmp	dword ptr [ebp+10h], 3
		jnz	loc_41F7DB
		test	byte ptr [ebx+43h], 1
		jnz	short loc_41F70E
		push	3		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		xor	eax, eax
		mov	[ebx+254h], eax
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F70E:				; CODE XREF: .text:0041F6EDj
		cmp	dword ptr [ebx+208h], 0
		jz	loc_420A24
		push	0
		push	0
		push	474h
		mov	edx, [ebx+22Ch]
		push	edx
		push	ebx
		call	dword ptr [ebx+208h]
		mov	dword ptr [ebp-80h], 7
		add	esp, 14h
		mov	ecx, dword_57FE60
		cmp	ecx, [ebp-80h]
		jge	short loc_41F74E
		mov	eax, offset dword_57FE60
		jmp	short loc_41F751
; ---------------------------------------------------------------------------

loc_41F74E:				; CODE XREF: .text:0041F745j
		lea	eax, [ebp-80h]

loc_41F751:				; CODE XREF: .text:0041F74Cj
		mov	[ebp-84h], eax
		xor	edx, edx
		mov	[ebp-88h], edx
		mov	ecx, [ebp-84h]
		mov	eax, [ecx]
		cmp	eax, [ebp-88h]
		jge	short loc_41F777
		lea	edx, [ebp-88h]
		jmp	short loc_41F77D
; ---------------------------------------------------------------------------

loc_41F777:				; CODE XREF: .text:0041F76Dj
		mov	edx, [ebp-84h]

loc_41F77D:				; CODE XREF: .text:0041F775j
		mov	eax, [edx]
		mov	dword_57FE60, eax
		mov	ecx, dword_57FE60
		mov	eax, dword_5184E4[ecx*4]
		cmp	eax, [ebx+254h]
		jz	loc_420A24
		push	3		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		push	0		; lpTimerFunc
		mov	edx, dword_57FE60
		mov	ecx, dword_5184E4[edx*4]
		push	ecx		; uElapse
		push	3		; nIDEvent
		mov	eax, [ebx+22Ch]
		push	eax		; hWnd
		call	SetTimer
		mov	edx, dword_57FE60
		mov	ecx, dword_5184E4[edx*4]
		mov	[ebx+254h], ecx
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F7DB:				; CODE XREF: .text:0041F6E3j
		mov	eax, [ebp+10h]
		push	eax		; uIDEvent
		push	edi		; hWnd
		call	KillTimer
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F7EA:				; CODE XREF: .text:0041E930j
		mov	edx, [ebp-2E0h]
		mov	ecx, [ebp-24h]
		sub	edx, [ebp-2E8h]
		sub	ecx, edx
		mov	[ebp-20h], ecx
		mov	ax, [ebp+10h]
		mov	esi, [ebx+244h]
		and	ax, 0FFFFh
		movzx	edx, ax
		cmp	edx, 7		; switch 8 cases
		ja	short loc_41F88B ; jumptable 0041F814 default case
		jmp	ds:off_41F81B[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_41F81B	dd offset loc_41F83B	; DATA XREF: .text:0041F814r
		dd offset loc_41F840	; jump table for switch	statement
		dd offset loc_41F845
		dd offset loc_41F84F
		dd offset loc_41F88B
		dd offset loc_41F862
		dd offset loc_41F859
		dd offset loc_41F85D
; ---------------------------------------------------------------------------

loc_41F83B:				; CODE XREF: .text:0041F814j
					; DATA XREF: .text:off_41F81Bo
		sub	esi, [ebp-14h]	; jumptable 0041F814 case 0
		jmp	short loc_41F88B ; jumptable 0041F814 default case
; ---------------------------------------------------------------------------

loc_41F840:				; CODE XREF: .text:0041F814j
					; DATA XREF: .text:off_41F81Bo
		add	esi, [ebp-14h]	; jumptable 0041F814 case 1
		jmp	short loc_41F88B ; jumptable 0041F814 default case
; ---------------------------------------------------------------------------

loc_41F845:				; CODE XREF: .text:0041F814j
					; DATA XREF: .text:off_41F81Bo
		mov	ecx, [ebp-14h]	; jumptable 0041F814 case 2
		shl	ecx, 3
		sub	esi, ecx
		jmp	short loc_41F88B ; jumptable 0041F814 default case
; ---------------------------------------------------------------------------

loc_41F84F:				; CODE XREF: .text:0041F814j
					; DATA XREF: .text:off_41F81Bo
		mov	eax, [ebp-14h]	; jumptable 0041F814 case 3
		shl	eax, 3
		add	esi, eax
		jmp	short loc_41F88B ; jumptable 0041F814 default case
; ---------------------------------------------------------------------------

loc_41F859:				; CODE XREF: .text:0041F814j
					; DATA XREF: .text:off_41F81Bo
		xor	esi, esi	; jumptable 0041F814 case 6
		jmp	short loc_41F88B ; jumptable 0041F814 default case
; ---------------------------------------------------------------------------

loc_41F85D:				; CODE XREF: .text:0041F814j
					; DATA XREF: .text:off_41F81Bo
		mov	esi, [ebp-20h]	; jumptable 0041F814 case 7
		jmp	short loc_41F88B ; jumptable 0041F814 default case
; ---------------------------------------------------------------------------

loc_41F862:				; CODE XREF: .text:0041F814j
					; DATA XREF: .text:off_41F81Bo
		mov	dword ptr [ebp-344h], 1Ch ; jumptable 0041F814 case 5
		mov	dword ptr [ebp-340h], 10h
		lea	eax, [ebp-344h]
		push	eax		; LPSCROLLINFO
		push	0		; int
		push	edi		; HWND
		call	GetScrollInfo
		mov	esi, [ebp-32Ch]

loc_41F88B:				; CODE XREF: .text:0041F812j
					; .text:0041F814j ...
		cmp	esi, [ebp-20h]	; jumptable 0041F814 default case
		jle	short loc_41F893
		mov	esi, [ebp-20h]

loc_41F893:				; CODE XREF: .text:0041F88Ej
		test	esi, esi
		jge	short loc_41F899
		xor	esi, esi

loc_41F899:				; CODE XREF: .text:0041F895j
		cmp	esi, [ebx+244h]
		jz	loc_420A24
		mov	[ebx+244h], esi
		push	ebx
		call	loc_41A554
		pop	ecx
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41F8C1:				; CODE XREF: .text:0041E937j
		mov	eax, [ebx+40h]
		and	eax, 21h
		cmp	eax, 21h
		jz	short loc_41F8D1
		xor	edx, edx
		mov	[ebp-34h], edx

loc_41F8D1:				; CODE XREF: .text:0041F8CAj
		mov	cx, [ebp+10h]
		and	cx, 0FFFFh
		movzx	eax, cx
		cmp	eax, 5		; switch 6 cases
		ja	loc_41FA35	; jumptable 0041F8E6 default case
		jmp	ds:off_41F8ED[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_41F8ED	dd offset loc_41F93F	; DATA XREF: .text:0041F8E6r
		dd offset loc_41F905	; jump table for switch	statement
		dd offset loc_41F97D
		dd offset loc_41F9B1
		dd offset loc_41FA35
		dd offset loc_41F9E0
; ---------------------------------------------------------------------------

loc_41F905:				; CODE XREF: .text:0041F8E6j
					; DATA XREF: .text:off_41F8EDo
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0041F8E6 case 1
		jz	short loc_41F925
		mov	edx, [ebp-60h]
		push	edx		; lParam
		mov	ecx, [ebp-28h]
		push	ecx		; wParam
		push	46Ah		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		jmp	loc_41FA37
; ---------------------------------------------------------------------------

loc_41F925:				; CODE XREF: .text:0041F909j
		mov	eax, [ebp-60h]
		push	eax		; lParam
		mov	edx, [ebp-28h]
		push	edx		; wParam
		push	468h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		jmp	loc_41FA37
; ---------------------------------------------------------------------------

loc_41F93F:				; CODE XREF: .text:0041F8E6j
					; DATA XREF: .text:off_41F8EDo
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0041F8E6 case 0
		jz	short loc_41F961
		mov	eax, [ebp-60h]
		neg	eax
		push	eax		; lParam
		mov	edx, [ebp-28h]
		push	edx		; wParam
		push	46Ah		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		jmp	loc_41FA37
; ---------------------------------------------------------------------------

loc_41F961:				; CODE XREF: .text:0041F943j
		mov	eax, [ebp-60h]
		neg	eax
		push	eax		; lParam
		mov	edx, [ebp-28h]
		push	edx		; wParam
		push	468h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		jmp	loc_41FA37
; ---------------------------------------------------------------------------

loc_41F97D:				; CODE XREF: .text:0041F8E6j
					; DATA XREF: .text:off_41F8EDo
		mov	eax, [ebp-28h]	; jumptable 0041F8E6 case 2
		dec	eax
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jg	short loc_41F991
		mov	dword ptr [ebp-4], 1

loc_41F991:				; CODE XREF: .text:0041F988j
		mov	edx, [ebp-4]
		neg	edx
		imul	edx, [ebp-60h]
		push	edx		; lParam
		mov	ecx, [ebp-28h]
		push	ecx		; wParam
		push	468h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		jmp	loc_41FA37
; ---------------------------------------------------------------------------

loc_41F9B1:				; CODE XREF: .text:0041F8E6j
					; DATA XREF: .text:off_41F8EDo
		mov	eax, [ebp-28h]	; jumptable 0041F8E6 case 3
		dec	eax
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jg	short loc_41F9C5
		mov	dword ptr [ebp-4], 1

loc_41F9C5:				; CODE XREF: .text:0041F9BCj
		mov	edx, [ebp-4]
		imul	edx, [ebp-60h]
		push	edx		; lParam
		mov	ecx, [ebp-28h]
		push	ecx		; wParam
		push	468h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		jmp	short loc_41FA37
; ---------------------------------------------------------------------------

loc_41F9E0:				; CODE XREF: .text:0041F8E6j
					; DATA XREF: .text:off_41F8EDo
		mov	dword ptr [ebp-344h], 1Ch ; jumptable 0041F8E6 case 5
		mov	dword ptr [ebp-340h], 10h
		lea	eax, [ebp-344h]
		push	eax		; LPSCROLLINFO
		push	1		; int
		push	edi		; HWND
		call	GetScrollInfo
		mov	edx, [ebp-32Ch]
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-60h], 0
		jge	short loc_41FA1E
		mov	ecx, [ebx+44h]
		sub	ecx, [ebp-28h]
		sub	ecx, [ebp-4]
		mov	[ebp-4], ecx

loc_41FA1E:				; CODE XREF: .text:0041FA10j
		mov	eax, [ebp-4]
		push	eax		; lParam
		mov	edx, [ebp-28h]
		push	edx		; wParam
		push	469h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		jmp	short loc_41FA37
; ---------------------------------------------------------------------------

loc_41FA35:				; CODE XREF: .text:0041F8E0j
					; .text:0041F8E6j
					; DATA XREF: ...
		xor	esi, esi	; jumptable 0041F8E6 default case

loc_41FA37:				; CODE XREF: .text:0041F920j
					; .text:0041F93Aj ...
		test	esi, esi
		jle	loc_420A24
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41FA4F:				; CODE XREF: .text:0041E8CDj
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41FABC
		mov	ax, 1
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_41FA63
		dec	eax

loc_41FA63:				; CODE XREF: .text:0041FA60j
		mov	dx, 2
		cmp	dword ptr [ebp-34h], 0
		jnz	short loc_41FA70
		add	edx, 0FFFFFFFEh

loc_41FA70:				; CODE XREF: .text:0041FA6Bj
		or	ax, dx
		movzx	ecx, ax
		shl	ecx, 10h
		movzx	eax, word ptr [ebp-28h]
		or	ecx, eax
		mov	[ebp-48h], ecx
		mov	edx, [ebp+10h]
		and	edx, 0FFFFh
		push	edx
		mov	ecx, [ebp-48h]
		or	ecx, 4
		push	ecx
		push	46Fh
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jle	short loc_41FAB4
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8

loc_41FAB4:				; CODE XREF: .text:0041FAA7j
		test	esi, esi
		jnz	loc_420A24

loc_41FABC:				; CODE XREF: .text:0041FA56j
		test	byte ptr [ebx+40h], 5
		jnz	short loc_41FAD2
		mov	eax, [ebx+7Ch]
		push	eax		; sort
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_41FAD2:				; CODE XREF: .text:0041FAC0j
		cmp	dword ptr [ebp+10h], 79h
		jnz	short loc_41FB28
		cmp	dword ptr [ebx+218h], 0
		jz	short loc_41FB28
		lea	ecx, [ebp-70h]
		push	ecx		; coord
		push	0		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_41FB28
		mov	eax, [ebx+218h]	; int
		push	eax		; int
		mov	edx, [ebp-6Ch]
		add	edx, [ebp-10h]	; int
		push	edx		; y
		mov	ecx, [ebp-70h]	; int
		push	ecx		; x
		push	ebx		; int
		call	loc_4252B0
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jz	loc_420A24
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41FB28:				; CODE XREF: .text:0041FAD6j
					; .text:0041FADFj ...
		mov	eax, [ebp+14h]
		push	eax		; __int16
		mov	edx, [ebp+10h]
		push	edx		; uVirtKey
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		mov	eax, [ebx+218h]
		push	eax		; int
		push	ebx		; int
		call	loc_424850
		add	esp, 14h
		test	eax, eax
		jz	short loc_41FB57
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41FB57:				; CODE XREF: .text:0041FB46j
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		mov	eax, [ebp+0Ch]
		push	eax		; Msg
		push	edi		; hWnd
		call	DefWindowProcW
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_41FB6E:				; CODE XREF: .text:0041E903j
		mov	dx, 1
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_41FB79
		dec	edx

loc_41FB79:				; CODE XREF: .text:0041FB76j
		mov	cx, 2
		cmp	dword ptr [ebp-34h], 0
		jnz	short loc_41FB86
		add	ecx, 0FFFFFFFEh

loc_41FB86:				; CODE XREF: .text:0041FB81j
		or	dx, cx
		movzx	eax, dx
		shl	eax, 10h
		movzx	edx, word ptr [ebp-28h]
		or	eax, edx
		mov	[ebp-48h], eax
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41FBD8
		mov	ecx, [ebp+10h]
		and	ecx, 0FFFFh
		push	ecx
		mov	eax, [ebp-48h]
		push	eax
		push	46Fh
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jle	short loc_41FBD0
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8

loc_41FBD0:				; CODE XREF: .text:0041FBC3j
		test	esi, esi
		jnz	loc_420A24

loc_41FBD8:				; CODE XREF: .text:0041FB9Fj
		push	5Bh		; nVirtKey
		call	GetKeyState
		mov	esi, eax
		push	5Ch		; nVirtKey
		call	GetKeyState
		or	si, ax
		test	si, 8000h
		jz	short loc_41FC71
		mov	eax, [ebp+14h]
		push	eax		; __int16
		mov	edx, [ebp+10h]
		push	edx		; uVirtKey
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		call	loc_4249DC
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0C8h
		jz	short loc_41FC1B
		cmp	dword ptr [ebp-8], 0C9h
		jnz	short loc_41FC38

loc_41FC1B:				; CODE XREF: .text:0041FC10j
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		mov	ecx, [ebp+0Ch]
		push	ecx		; Msg
		mov	eax, [ebx+224h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41FC38:				; CODE XREF: .text:0041FC19j
		mov	edx, [ebp+14h]
		push	edx		; __int16
		mov	ecx, [ebp+10h]
		push	ecx		; uVirtKey
		mov	eax, [ebp+0Ch]
		push	eax		; int
		mov	edx, [ebx+218h]
		push	edx		; int
		push	ebx		; int
		call	loc_424850
		add	esp, 14h
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jle	loc_420A24
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_41FC71:				; CODE XREF: .text:0041FBF0j
		xor	ecx, ecx
		mov	[ebp-38h], ecx
		mov	eax, [ebp+10h]
		cmp	eax, 25h
		jg	short loc_41FCA3
		jz	short loc_41FCC8
		sub	eax, 21h
		jz	loc_42001B
		dec	eax
		jz	loc_420098
		dec	eax
		jz	loc_420130
		dec	eax
		jz	loc_420114
		jmp	loc_4201A1
; ---------------------------------------------------------------------------

loc_41FCA3:				; CODE XREF: .text:0041FC7Cj
		sub	eax, 26h
		jz	loc_41FF5D
		dec	eax
		jz	loc_41FDF6
		dec	eax
		jz	loc_41FFC0
		sub	eax, 35h
		jz	loc_42014C
		jmp	loc_4201A1
; ---------------------------------------------------------------------------

loc_41FCC8:				; CODE XREF: .text:0041FC7Ej
		mov	edx, [ebx+24Ch]
		mov	[ebp-8], edx
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_41FD15
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_41FD05
; ---------------------------------------------------------------------------

loc_41FCE0:				; CODE XREF: .text:0041FD0Ej
		mov	edx, [ebp-4]
		mov	ecx, [ebx+edx*4+1A4h]
		add	ecx, esi
		cmp	ecx, [ebx+244h]
		jge	loc_41FDB7
		mov	eax, [ebp-4]
		add	esi, [ebx+eax*4+1A4h]
		inc	dword ptr [ebp-4]

loc_41FD05:				; CODE XREF: .text:0041FCDEj
		mov	edx, [ebp-4]
		cmp	edx, [ebx+8Ch]
		jl	short loc_41FCE0
		jmp	loc_41FDB7
; ---------------------------------------------------------------------------

loc_41FD15:				; CODE XREF: .text:0041FCD5j
		test	byte ptr [ebx+40h], 10h
		jz	short loc_41FD81
		mov	esi, [ebx+244h]
		dec	dword ptr [ebp-8]
		jmp	short loc_41FD29
; ---------------------------------------------------------------------------

loc_41FD26:				; CODE XREF: .text:0041FD3Aj
		dec	dword ptr [ebp-8]

loc_41FD29:				; CODE XREF: .text:0041FD24j
		cmp	dword ptr [ebp-8], 0
		jl	short loc_41FD3C
		mov	eax, [ebp-8]
		cmp	dword ptr [ebx+eax*4+1A4h], 3
		jle	short loc_41FD26

loc_41FD3C:				; CODE XREF: .text:0041FD2Dj
		cmp	dword ptr [ebp-8], 0
		jl	short loc_41FD76
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jge	short loc_41FD66

loc_41FD51:				; CODE XREF: .text:0041FD64j
		mov	ecx, [ebp-4]
		add	esi, [ebx+ecx*4+1A4h]
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jl	short loc_41FD51

loc_41FD66:				; CODE XREF: .text:0041FD4Fj
		cmp	esi, [ebx+244h]
		jle	short loc_41FDB7
		mov	esi, [ebx+244h]
		jmp	short loc_41FDB7
; ---------------------------------------------------------------------------

loc_41FD76:				; CODE XREF: .text:0041FD40j
		mov	eax, [ebx+24Ch]
		mov	[ebp-8], eax
		jmp	short loc_41FDB7
; ---------------------------------------------------------------------------

loc_41FD81:				; CODE XREF: .text:0041FD19j
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41FDAE
		push	0FFFF0000h
		mov	edx, [ebp-48h]
		push	edx
		push	46Eh
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-38h], eax
		test	eax, eax
		jnz	loc_42021F

loc_41FDAE:				; CODE XREF: .text:0041FD88j
		mov	esi, [ebx+244h]
		sub	esi, [ebp-14h]

loc_41FDB7:				; CODE XREF: .text:0041FCF2j
					; .text:0041FD10j ...
		test	esi, esi
		jge	short loc_41FDBD
		xor	esi, esi

loc_41FDBD:				; CODE XREF: .text:0041FDB9j
		cmp	esi, [ebx+244h]
		jnz	short loc_41FDD4
		mov	eax, [ebp-8]
		cmp	eax, [ebx+24Ch]
		jz	loc_42021F

loc_41FDD4:				; CODE XREF: .text:0041FDC3j
		mov	[ebx+244h], esi
		mov	edx, [ebp-8]
		mov	[ebx+24Ch], edx
		push	ebx
		call	loc_41A554
		pop	ecx
		mov	dword ptr [ebp-38h], 1
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_41FDF6:				; CODE XREF: .text:0041FCADj
		mov	ecx, [ebx+24Ch]
		xor	eax, eax
		mov	[ebp-8], ecx
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_41FE54
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_41FE44
; ---------------------------------------------------------------------------

loc_41FE13:				; CODE XREF: .text:0041FE4Dj
		mov	edx, [ebp-20h]
		cmp	edx, [ebx+244h]
		jg	short loc_41FE34
		mov	ecx, [ebx+8Ch]
		dec	ecx
		cmp	ecx, [ebp-4]
		jle	short loc_41FE34
		mov	eax, [ebp-4]
		add	esi, [ebx+eax*4+1A4h]

loc_41FE34:				; CODE XREF: .text:0041FE1Cj
					; .text:0041FE28j
		mov	edx, [ebp-4]
		mov	ecx, [ebx+edx*4+1A4h]
		add	[ebp-20h], ecx
		inc	dword ptr [ebp-4]

loc_41FE44:				; CODE XREF: .text:0041FE11j
		mov	eax, [ebp-4]
		cmp	eax, [ebx+8Ch]
		jl	short loc_41FE13
		jmp	loc_41FF0D
; ---------------------------------------------------------------------------

loc_41FE54:				; CODE XREF: .text:0041FE08j
		test	byte ptr [ebx+40h], 10h
		jz	short loc_41FED1
		inc	dword ptr [ebp-8]
		jmp	short loc_41FE62
; ---------------------------------------------------------------------------

loc_41FE5F:				; CODE XREF: .text:0041FE78j
		inc	dword ptr [ebp-8]

loc_41FE62:				; CODE XREF: .text:0041FE5Dj
		mov	edx, [ebp-8]
		cmp	edx, [ebx+8Ch]
		jge	short loc_41FE7A
		mov	ecx, [ebp-8]
		cmp	dword ptr [ebx+ecx*4+1A4h], 3
		jle	short loc_41FE5F

loc_41FE7A:				; CODE XREF: .text:0041FE6Bj
		mov	eax, [ebp-8]
		cmp	eax, [ebx+8Ch]
		jge	short loc_41FEBA
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jge	short loc_41FEA9

loc_41FE94:				; CODE XREF: .text:0041FEA7j
		mov	ecx, [ebp-4]
		add	esi, [ebx+ecx*4+1A4h]
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jl	short loc_41FE94

loc_41FEA9:				; CODE XREF: .text:0041FE92j
		mov	edx, [ebp-8]
		mov	ecx, [ebx+edx*4+1A4h]
		add	ecx, esi
		mov	[ebp-20h], ecx
		jmp	short loc_41FF0D
; ---------------------------------------------------------------------------

loc_41FEBA:				; CODE XREF: .text:0041FE83j
		mov	eax, [ebp-24h]
		mov	[ebp-20h], eax
		mov	esi, [ebx+244h]
		mov	eax, [ebx+24Ch]
		mov	[ebp-8], eax
		jmp	short loc_41FF0D
; ---------------------------------------------------------------------------

loc_41FED1:				; CODE XREF: .text:0041FE58j
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41FEFE
		push	10000h
		mov	edx, [ebp-48h]
		push	edx
		push	46Eh
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-38h], eax
		test	eax, eax
		jnz	loc_42021F

loc_41FEFE:				; CODE XREF: .text:0041FED8j
		mov	edx, [ebp-24h]
		mov	[ebp-20h], edx
		mov	esi, [ebx+244h]
		add	esi, [ebp-14h]

loc_41FF0D:				; CODE XREF: .text:0041FE4Fj
					; .text:0041FEB8j ...
		mov	eax, [ebp-2E0h]
		sub	[ebp-20h], eax
		cmp	esi, [ebp-20h]
		jle	short loc_41FF1E
		mov	esi, [ebp-20h]

loc_41FF1E:				; CODE XREF: .text:0041FF19j
		test	esi, esi
		jge	short loc_41FF24
		xor	esi, esi

loc_41FF24:				; CODE XREF: .text:0041FF20j
		cmp	esi, [ebx+244h]
		jnz	short loc_41FF3B
		mov	eax, [ebp-8]
		cmp	eax, [ebx+24Ch]
		jz	loc_42021F

loc_41FF3B:				; CODE XREF: .text:0041FF2Aj
		mov	[ebx+244h], esi
		mov	edx, [ebp-8]
		mov	[ebx+24Ch], edx
		push	ebx
		call	loc_41A554
		pop	ecx
		mov	dword ptr [ebp-38h], 1
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_41FF5D:				; CODE XREF: .text:0041FCA6j
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_41FF94
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41FF94
		mov	ecx, [ebx+40h]
		and	ecx, 21h
		cmp	ecx, 21h
		jnz	short loc_41FF94
		mov	eax, [ebp-60h]
		neg	eax
		push	eax
		mov	edx, [ebp-28h]
		push	edx
		push	46Ah
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-38h], eax

loc_41FF94:				; CODE XREF: .text:0041FF61j
					; .text:0041FF6Aj ...
		cmp	dword ptr [ebp-38h], 0
		jnz	loc_42021F
		mov	cx, [ebp-60h]
		neg	cx
		movzx	eax, cx
		push	eax		; lParam
		mov	edx, [ebp-48h]
		push	edx		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_41FFC0:				; CODE XREF: .text:0041FCB4j
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_41FFF5
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41FFF5
		mov	ecx, [ebx+40h]
		and	ecx, 21h
		cmp	ecx, 21h
		jnz	short loc_41FFF5
		mov	eax, [ebp-60h]
		push	eax
		mov	edx, [ebp-28h]
		push	edx
		push	46Ah
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-38h], eax

loc_41FFF5:				; CODE XREF: .text:0041FFC4j
					; .text:0041FFCDj ...
		cmp	dword ptr [ebp-38h], 0
		jnz	loc_42021F

loc_41FFFF:
		movzx	ecx, word ptr [ebp-60h]
		push	ecx		; lParam
		mov	eax, [ebp-48h]
		push	eax		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_42001B:				; CODE XREF: .text:0041FC83j
		cmp	dword ptr [ebp-34h], 0

loc_42001F:
		jz	short loc_42003D
		push	8000h		; lParam

loc_420026:
		mov	edx, [ebp-48h]
		push	edx		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_42003D:				; CODE XREF: .text:loc_42001Fj
		mov	ecx, [ebp-28h]
		dec	ecx
		mov	[ebp-4], ecx
		cmp	dword ptr [ebp-4], 0
		jg	short loc_420051

loc_42004A:
		mov	dword ptr [ebp-4], 1

loc_420051:				; CODE XREF: .text:00420048j
		mov	eax, [ebp-4]
		neg	eax
		imul	dword ptr [ebp-60h]
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		push	edx		; lParam
		mov	ecx, [ebp-28h]
		push	ecx		; wParam
		push	468h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		movzx	eax, word ptr [ebp-4]
		push	eax		; lParam
		mov	edx, [ebp-48h]
		push	edx		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		test	esi, esi
		jle	loc_42021F
		mov	[ebp-38h], esi
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_420098:				; CODE XREF: .text:0041FC8Aj
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4200BA
		push	7FFFh		; lParam
		mov	ecx, [ebp-48h]
		push	ecx		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_4200BA:				; CODE XREF: .text:0042009Cj
		mov	eax, [ebp-28h]
		dec	eax
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jg	short loc_4200CE
		mov	dword ptr [ebp-4], 1

loc_4200CE:				; CODE XREF: .text:004200C5j
		mov	edx, [ebp-4]
		imul	edx, [ebp-60h]
		mov	[ebp-4], edx
		mov	ecx, [ebp-4]
		push	ecx		; lParam
		mov	eax, [ebp-28h]
		push	eax		; wParam
		push	468h		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	esi, eax
		movzx	eax, word ptr [ebp-4]
		push	eax		; lParam
		mov	edx, [ebp-48h]
		push	edx		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		test	esi, esi
		jle	loc_42021F
		mov	[ebp-38h], esi
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_420114:				; CODE XREF: .text:0041FC98j
		push	8000h		; lParam
		mov	ecx, [ebp-48h]
		push	ecx		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_420130:				; CODE XREF: .text:0041FC91j
		push	7FFFh		; lParam
		mov	eax, [ebp-48h]
		push	eax		; wParam
		push	46Eh		; Msg
		push	edi		; hWnd
		call	loc_41E500
		mov	[ebp-38h], eax
		jmp	loc_42021F
; ---------------------------------------------------------------------------

loc_42014C:				; CODE XREF: .text:0041FCBDj
		cmp	dword ptr [ebx+218h], 0
		jz	loc_42021F
		lea	edx, [ebp-70h]
		push	edx		; coord
		push	0		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_42021F
		mov	ecx, [ebx+218h]	; int
		push	ecx		; int
		mov	eax, [ebp-6Ch]
		add	eax, [ebp-10h]	; int
		push	eax		; y
		mov	edx, [ebp-70h]	; int
		push	edx		; x
		push	ebx		; int
		call	loc_4252B0
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jz	loc_42021F
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect
		jmp	short loc_42021F
; ---------------------------------------------------------------------------

loc_4201A1:				; CODE XREF: .text:0041FC9Ej
					; .text:0041FCC3j
		test	byte ptr [ebx+43h], 10h
		jz	short loc_4201EA
		mov	eax, [ebp+14h]
		push	eax		; __int16
		mov	edx, [ebp+10h]
		push	edx		; uVirtKey
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		call	loc_4249DC
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0C8h
		jz	short loc_4201D0
		cmp	dword ptr [ebp-8], 0C9h
		jnz	short loc_4201EA

loc_4201D0:				; CODE XREF: .text:004201C5j
		mov	eax, [ebp+14h]
		push	eax		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		mov	ecx, [ebp+0Ch]
		push	ecx		; Msg
		mov	eax, [ebx+224h]
		push	eax		; hWnd
		call	SendMessageW
		jmp	short loc_42021F
; ---------------------------------------------------------------------------

loc_4201EA:				; CODE XREF: .text:004201A5j
					; .text:004201CEj
		test	byte ptr [ebx+40h], 5
		jnz	short loc_420200
		mov	edx, [ebx+7Ch]
		push	edx		; sort
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_420200:				; CODE XREF: .text:004201EEj
		mov	eax, [ebp+14h]
		push	eax		; __int16
		mov	edx, [ebp+10h]
		push	edx		; uVirtKey
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		mov	eax, [ebx+218h]
		push	eax		; int
		push	ebx		; int
		call	loc_424850
		add	esp, 14h
		mov	[ebp-38h], eax

loc_42021F:				; CODE XREF: .text:0041FDA8j
					; .text:0041FDCEj ...
		cmp	dword ptr [ebp-38h], 0
		jle	loc_420A24
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_420239:				; CODE XREF: .text:0041E90Cj
		test	byte ptr [ebx+40h], 5
		jnz	short loc_42024F
		mov	edx, [ebx+7Ch]
		push	edx		; sort
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_42024F:				; CODE XREF: .text:0042023Dj
		test	byte ptr [ebx+41h], 80h
		jz	loc_420A24
		cmp	dword ptr [ebx+208h], 0
		jz	loc_420A24
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		push	102h
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jle	short loc_420292
		push	0		; force
		push	ebx		; pt
		call	Updatetable
		add	esp, 8

loc_420292:				; CODE XREF: .text:00420285j
		cmp	dword ptr [ebp-38h], 0
		jnz	loc_420A24
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_4202A1:				; CODE XREF: .text:0041E8EAj
		test	byte ptr [ebx+43h], 4
		jz	short loc_4202AE
		push	ebx		; pt
		call	Defaultbar
		pop	ecx

loc_4202AE:				; CODE XREF: .text:004202A5j
		test	byte ptr [ebx+40h], 5
		jz	short loc_4202D4
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_4202D4
		mov	ecx, [ebp-28h]
		push	ecx
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h

loc_4202D4:				; CODE XREF: .text:004202B2j
					; .text:004202BBj
		mov	ecx, [ebp-2E0h]
		sub	ecx, [ebp-2E8h]
		mov	eax, [ebp-24h]
		sub	eax, ecx
		cmp	eax, [ebx+244h]
		jge	short loc_420315
		mov	edx, [ebp-2E0h]
		sub	edx, [ebp-2E8h]
		mov	ecx, [ebp-24h]
		sub	ecx, edx
		mov	[ebx+244h], ecx
		cmp	dword ptr [ebx+244h], 0
		jge	short loc_420315
		xor	eax, eax
		mov	[ebx+244h], eax

loc_420315:				; CODE XREF: .text:004202EBj
					; .text:0042030Bj
		test	byte ptr [ebx+40h], 1
		jnz	short loc_420346
		mov	edx, [ebx+44h]
		sub	edx, [ebp-28h]
		cmp	edx, [ebx+248h]
		jge	short loc_420335
		mov	ecx, [ebx+44h]
		sub	ecx, [ebp-28h]
		mov	[ebx+248h], ecx

loc_420335:				; CODE XREF: .text:00420327j
		cmp	dword ptr [ebx+248h], 0
		jge	short loc_420346
		xor	eax, eax
		mov	[ebx+248h], eax

loc_420346:				; CODE XREF: .text:00420319j
					; .text:0042033Cj
		push	ebx
		call	loc_41A554
		pop	ecx
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_420352:				; CODE XREF: .text:0041E8D8j
		cmp	dword ptr [ebx+20Ch], 0
		jz	short loc_420395
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jz	short loc_420395
		cmp	dword ptr [ebx+44h], 0
		jle	short loc_420395
		mov	ecx, [ebx+250h]
		cmp	ecx, [ebx+60h]
		jz	short loc_420395
		push	ebx
		call	dword ptr [ebx+20Ch]
		pop	ecx
		mov	eax, [ebx+60h]
		mov	[ebx+250h], eax
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect

loc_420395:				; CODE XREF: .text:00420359j
					; .text:00420367j ...
		cmp	dword ptr [ebx+234h], 0
		jl	short loc_4203A7
		cmp	dword ptr [ebx+234h], 8
		jl	short loc_4203AF

loc_4203A7:				; CODE XREF: .text:0042039Cj
		xor	edx, edx
		mov	[ebx+234h], edx

loc_4203AF:				; CODE XREF: .text:004203A5j
		test	byte ptr [ebx+40h], 1
		jnz	short loc_4203DB
		mov	ecx, [ebx+44h]
		cmp	ecx, [ebx+248h]
		jg	short loc_4203CA
		mov	eax, [ebx+44h]
		dec	eax
		mov	[ebx+248h], eax

loc_4203CA:				; CODE XREF: .text:004203BEj
		cmp	dword ptr [ebx+248h], 0
		jge	short loc_4203DB
		xor	edx, edx
		mov	[ebx+248h], edx

loc_4203DB:				; CODE XREF: .text:004203B3j
					; .text:004203D1j
		test	byte ptr [ebx+41h], 2
		jnz	loc_42049F
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_420417
		mov	ecx, [ebp-2E0h]
		sub	ecx, [ebp-2E8h]
		push	ecx
		mov	eax, [ebp-24h]
		push	eax
		push	465h
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		test	eax, eax
		jnz	loc_42049F

loc_420417:				; CODE XREF: .text:004203ECj
		cmp	dword ptr [ebx+240h], 0
		jz	short loc_420434
		mov	edx, [ebp-2E0h]
		mov	ecx, [ebp-24h]
		sub	edx, [ebp-2E8h]
		dec	ecx
		cmp	edx, ecx
		jl	short loc_420440

loc_420434:				; CODE XREF: .text:0042041Ej
		push	0		; bShow
		push	0		; wBar
		push	edi		; hWnd
		call	ShowScrollBar
		jmp	short loc_42049F
; ---------------------------------------------------------------------------

loc_420440:				; CODE XREF: .text:00420432j
		mov	dword ptr [ebp-344h], 1Ch
		mov	dword ptr [ebp-340h], 7
		xor	eax, eax
		mov	[ebp-33Ch], eax
		mov	edx, [ebp-24h]
		dec	edx
		mov	[ebp-338h], edx
		mov	ecx, [ebp-2E0h]
		sub	ecx, [ebp-2E8h]
		mov	[ebp-334h], ecx
		mov	eax, [ebx+244h]
		mov	[ebp-330h], eax
		push	1		; bShow
		push	0		; wBar
		push	edi		; hWnd
		call	ShowScrollBar
		push	1		; BOOL
		lea	edx, [ebp-344h]
		push	edx		; LPCSCROLLINFO
		push	0		; int
		push	edi		; HWND
		call	SetScrollInfo

loc_42049F:				; CODE XREF: .text:004203DFj
					; .text:00420411j ...
		test	byte ptr [ebx+41h], 4
		jnz	loc_420532
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_4204CC
		push	0
		mov	ecx, [ebp-28h]
		push	ecx
		push	466h
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		test	eax, eax
		jnz	short loc_420532

loc_4204CC:				; CODE XREF: .text:004204B0j
		mov	dword ptr [ebp-344h], 1Ch
		mov	dword ptr [ebp-340h], 0Fh
		xor	eax, eax
		mov	[ebp-33Ch], eax
		mov	edx, [ebx+44h]
		dec	edx
		mov	[ebp-338h], edx
		mov	ecx, [ebp-28h]
		mov	[ebp-334h], ecx
		test	byte ptr [ebx+40h], 8
		jz	short loc_420515
		mov	eax, [ebx+44h]
		sub	eax, [ebx+248h]
		sub	eax, [ebp-28h]
		mov	[ebp-330h], eax
		jmp	short loc_420521
; ---------------------------------------------------------------------------

loc_420515:				; CODE XREF: .text:004204FFj
		mov	edx, [ebx+248h]
		mov	[ebp-330h], edx

loc_420521:				; CODE XREF: .text:00420513j
		push	1		; BOOL
		lea	ecx, [ebp-344h]
		push	ecx		; LPCSCROLLINFO
		push	1		; int
		push	edi		; HWND
		call	SetScrollInfo

loc_420532:				; CODE XREF: .text:004204A3j
					; .text:004204CAj
		lea	eax, [ebp-328h]
		push	eax		; lpPaint
		push	edi		; hWnd
		call	BeginPaint
		mov	[ebp-74h], eax
		lea	edx, [ebp-2E8h]
		push	edx		; lpRect
		push	edi		; hWnd
		call	GetClientRect
		push	ebx		; int
		lea	ecx, [ebp-2E8h]
		push	ecx		; int
		mov	eax, [ebp-74h]
		push	eax		; hDC
		call	loc_4196FC
		add	esp, 0Ch
		lea	edx, [ebp-2E8h]	; int
		push	ebx		; int
		push	edx		; int
		mov	ecx, [ebp-74h]	; int
		push	ecx		; hDC
		call	loc_41A8CC
		add	esp, 0Ch
		lea	eax, [ebp-328h]
		push	eax		; lpPaint
		push	edi		; hWnd
		call	EndPaint
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_420589:				; CODE XREF: .text:0041E91Ej
		mov	edx, [ebp+14h]	; int
		push	edx		; int
		mov	ecx, [ebp+10h]	; int
		push	ecx		; int
		call	loc_425228
		add	esp, 8
		jmp	loc_420A24
; ---------------------------------------------------------------------------

loc_42059E:				; CODE XREF: .text:0041E995j
		test	byte ptr [ebx+40h], 1
		jz	short loc_4205DB
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_4205C7
		mov	eax, [ebp+14h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-2Ch], eax

loc_4205C7:				; CODE XREF: .text:004205ABj
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_4205D3
		test	byte ptr [ebx+40h], 2
		jnz	short loc_4205DB

loc_4205D3:				; CODE XREF: .text:004205CBj
		mov	eax, [ebp-2Ch]
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_4205DB:				; CODE XREF: .text:004205A2j
					; .text:004205D1j
		mov	edx, [ebp+10h]
		mov	[ebp-28h], edx
		cmp	dword ptr [ebp+0Ch], 469h
		jnz	short loc_4205EF
		mov	esi, [ebp+14h]
		jmp	short loc_4205F8
; ---------------------------------------------------------------------------

loc_4205EF:				; CODE XREF: .text:004205E8j
		mov	esi, [ebx+248h]
		add	esi, [ebp+14h]

loc_4205F8:				; CODE XREF: .text:004205EDj
		mov	eax, [ebp-28h]
		add	eax, esi
		cmp	eax, [ebx+44h]
		jle	short loc_420608
		mov	esi, [ebx+44h]
		sub	esi, [ebp-28h]

loc_420608:				; CODE XREF: .text:00420600j
		test	esi, esi
		jge	short loc_42060E
		xor	esi, esi

loc_42060E:				; CODE XREF: .text:0042060Aj
		cmp	esi, [ebx+248h]
		jnz	short loc_420624
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_420624
		or	eax, 0FFFFFFFFh
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_420624:				; CODE XREF: .text:00420614j
					; .text:0042061Aj
		mov	[ebx+248h], esi
		mov	eax, 1
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_420634:				; CODE XREF: .text:0041E99Ej
		test	byte ptr [ebx+40h], 1
		jz	short loc_42067E
		test	byte ptr [ebx+41h], 60h
		jz	short loc_420647
		mov	dword ptr [ebp+0Ch], 46Bh

loc_420647:				; CODE XREF: .text:0042063Ej
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_42066A
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-2Ch], eax

loc_42066A:				; CODE XREF: .text:0042064Ej
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_420676
		test	byte ptr [ebx+40h], 2
		jnz	short loc_42067E

loc_420676:				; CODE XREF: .text:0042066Ej
		mov	eax, [ebp-2Ch]
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_42067E:				; CODE XREF: .text:00420638j
					; .text:00420674j
		mov	esi, [ebp+14h]
		add	esi, [ebx+248h]
		cmp	esi, [ebx+44h]
		jl	short loc_420690
		mov	esi, [ebx+44h]
		dec	esi

loc_420690:				; CODE XREF: .text:0042068Aj
		mov	eax, [ebp+10h]
		shr	eax, 10h
		movzx	edx, ax
		mov	[ebp-5Ch], edx
		cmp	dword ptr [ebp-5Ch], 0FFFFh
		jnz	short loc_4206AE
		mov	ecx, [ebx+24Ch]
		mov	[ebp-5Ch], ecx

loc_4206AE:				; CODE XREF: .text:004206A3j
		cmp	esi, [ebx+68h]
		jnz	short loc_4206CC
		test	byte ptr [ebx+40h], 10h
		jz	short loc_4206C4
		mov	eax, [ebx+24Ch]
		cmp	eax, [ebp-5Ch]
		jnz	short loc_4206CC

loc_4206C4:				; CODE XREF: .text:004206B7j
		or	eax, 0FFFFFFFFh
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_4206CC:				; CODE XREF: .text:004206B1j
					; .text:004206C2j
		mov	[ebx+68h], esi
		test	byte ptr [ebx+40h], 10h
		jz	short loc_4206E0
		mov	edx, [ebp-5Ch]
		mov	[ebx+24Ch], edx
		jmp	short loc_4206E8
; ---------------------------------------------------------------------------

loc_4206E0:				; CODE XREF: .text:004206D3j
		xor	ecx, ecx
		mov	[ebx+24Ch], ecx

loc_4206E8:				; CODE XREF: .text:004206DEj
		test	byte ptr [ebx+40h], 4
		jz	short loc_4206F3
		mov	[ebx+6Ch], esi
		jmp	short loc_420727
; ---------------------------------------------------------------------------

loc_4206F3:				; CODE XREF: .text:004206ECj
		test	byte ptr [ebx+40h], 1
		jnz	short loc_420727
		push	esi		; index
		lea	eax, [ebx+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_420727
		mov	edx, [eax]
		mov	[ebx+6Ch], edx
		test	byte ptr [ebx+50h], 4
		jz	short loc_42071C
		xor	ecx, ecx
		mov	[ebx+70h], ecx
		jmp	short loc_420727
; ---------------------------------------------------------------------------

loc_42071C:				; CODE XREF: .text:00420713j
		mov	eax, [eax+8]
		and	eax, 0FFh
		mov	[ebx+70h], eax

loc_420727:				; CODE XREF: .text:004206F1j
					; .text:004206F7j ...
		cmp	dword ptr [ebx+214h], 0
		jz	short loc_42073D
		push	2
		push	esi
		push	ebx
		call	dword ptr [ebx+214h]
		add	esp, 0Ch

loc_42073D:				; CODE XREF: .text:0042072Ej
		cmp	dword_57FE88, 0
		jz	short loc_420750
		push	esi
		push	ebx
		call	loc_41DC90
		add	esp, 8

loc_420750:				; CODE XREF: .text:00420744j
		mov	eax, 1
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_42075A:				; CODE XREF: .text:0041E9A4j
		test	byte ptr [ebx+40h], 1
		jz	loc_420A24
		test	byte ptr [ebx+41h], 60h
		jz	loc_420A24
		cmp	dword ptr [ebx+208h], 0
		jz	loc_420A24
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_420797:				; CODE XREF: .text:0041E960j
		test	byte ptr [ebx+40h], 1
		jz	short loc_4207D4
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_4207C0
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-2Ch], eax

loc_4207C0:				; CODE XREF: .text:004207A4j
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_4207CC
		test	byte ptr [ebx+40h], 2
		jnz	short loc_4207D4

loc_4207CC:				; CODE XREF: .text:004207C4j
		mov	eax, [ebp-2Ch]
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_4207D4:				; CODE XREF: .text:0042079Bj
					; .text:004207CAj
		movsx	edx, word ptr [ebp+10h]
		mov	[ebp-28h], edx
		mov	ecx, [ebx+44h]
		mov	[ebp-0Ch], ecx
		or	eax, 0FFFFFFFFh
		test	byte ptr [ebx+40h], 8
		jnz	short loc_4207ED
		add	eax, 2

loc_4207ED:				; CODE XREF: .text:004207E8j
		mov	[ebp-60h], eax
		mov	dx, [ebp+14h]
		and	dx, 0FFFFh
		cmp	dx, 8000h
		jnz	short loc_420813
		cmp	dword ptr [ebp-60h], 0
		jle	short loc_42080A
		xor	ecx, ecx
		jmp	short loc_42080E
; ---------------------------------------------------------------------------

loc_42080A:				; CODE XREF: .text:00420804j
		mov	ecx, [ebp-0Ch]
		dec	ecx

loc_42080E:				; CODE XREF: .text:00420808j
		mov	[ebp-4], ecx
		jmp	short loc_42083E
; ---------------------------------------------------------------------------

loc_420813:				; CODE XREF: .text:004207FEj
		mov	ax, [ebp+14h]
		and	ax, 0FFFFh
		cmp	ax, 7FFFh
		jnz	short loc_420834
		cmp	dword ptr [ebp-60h], 0
		jle	short loc_42082D
		mov	edx, [ebp-0Ch]
		dec	edx
		jmp	short loc_42082F
; ---------------------------------------------------------------------------

loc_42082D:				; CODE XREF: .text:00420825j
		xor	edx, edx

loc_42082F:				; CODE XREF: .text:0042082Bj
		mov	[ebp-4], edx
		jmp	short loc_42083E
; ---------------------------------------------------------------------------

loc_420834:				; CODE XREF: .text:0042081Fj
		movsx	eax, word ptr [ebp+14h]
		add	eax, [ebx+68h]
		mov	[ebp-4], eax

loc_42083E:				; CODE XREF: .text:00420811j
					; .text:00420832j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-0Ch]
		jl	short loc_42084D
		mov	eax, [ebp-0Ch]
		dec	eax
		mov	[ebp-4], eax

loc_42084D:				; CODE XREF: .text:00420844j
		cmp	dword ptr [ebp-4], 0
		jge	short loc_420858
		xor	edx, edx
		mov	[ebp-4], edx

loc_420858:				; CODE XREF: .text:00420851j
		mov	esi, [ebx+248h]
		mov	eax, [ebp-28h]
		add	eax, esi
		cmp	eax, [ebp-4]
		jg	short loc_42086F
		mov	esi, [ebp-4]
		sub	esi, [ebp-28h]
		inc	esi

loc_42086F:				; CODE XREF: .text:00420866j
		cmp	esi, [ebp-4]
		jle	short loc_420877
		mov	esi, [ebp-4]

loc_420877:				; CODE XREF: .text:00420872j
		mov	eax, [ebp-0Ch]
		sub	eax, [ebp-28h]
		cmp	esi, eax
		jle	short loc_420887
		mov	esi, [ebp-0Ch]
		sub	esi, [ebp-28h]

loc_420887:				; CODE XREF: .text:0042087Fj
		test	esi, esi
		jge	short loc_42088D
		xor	esi, esi

loc_42088D:				; CODE XREF: .text:00420889j
		cmp	esi, [ebx+248h]
		jnz	short loc_4208A5
		mov	eax, [ebp-4]
		cmp	eax, [ebx+68h]
		jnz	short loc_4208A5
		or	eax, 0FFFFFFFFh
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_4208A5:				; CODE XREF: .text:00420893j
					; .text:0042089Bj
		mov	[ebx+248h], esi
		mov	edx, [ebp-4]
		mov	[ebx+68h], edx
		test	byte ptr [ebx+40h], 4
		jz	short loc_4208BF
		mov	ecx, [ebp-4]
		mov	[ebx+6Ch], ecx
		jmp	short loc_4208F7
; ---------------------------------------------------------------------------

loc_4208BF:				; CODE XREF: .text:004208B5j
		test	byte ptr [ebx+40h], 1
		jnz	short loc_4208F7
		mov	eax, [ebp-4]
		push	eax		; index
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_4208F7
		mov	ecx, [eax]
		mov	[ebx+6Ch], ecx
		test	byte ptr [ebx+50h], 4
		jz	short loc_4208EB
		xor	eax, eax
		mov	[ebx+70h], eax
		jmp	short loc_4208F7
; ---------------------------------------------------------------------------

loc_4208EB:				; CODE XREF: .text:004208E2j
		mov	edx, [eax+8]
		and	edx, 0FFh
		mov	[ebx+70h], edx

loc_4208F7:				; CODE XREF: .text:004208BDj
					; .text:004208C3j ...
		cmp	dword ptr [ebx+214h], 0
		jz	short loc_420910
		push	1
		mov	ecx, [ebp-4]
		push	ecx
		push	ebx
		call	dword ptr [ebx+214h]
		add	esp, 0Ch

loc_420910:				; CODE XREF: .text:004208FEj
		cmp	dword_57FE88, 0
		jz	short loc_420926
		mov	eax, [ebp-4]
		push	eax
		push	ebx
		call	loc_41DC90
		add	esp, 8

loc_420926:				; CODE XREF: .text:00420917j
		mov	eax, 1
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_420930:				; CODE XREF: .text:0041E9BDj
					; DATA XREF: .text:off_41E9C4o
		cmp	dword ptr [ebx+208h], 0	; jumptable 0041E9BD case 1156
		jz	short loc_420953
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-2Ch], eax

loc_420953:				; CODE XREF: .text:00420937j
		cmp	dword ptr [ebp-2Ch], 1
		jz	short loc_420963
		push	0		; bErase
		push	0		; lpRect
		push	edi		; hWnd
		call	InvalidateRect

loc_420963:				; CODE XREF: .text:00420957j
		xor	eax, eax
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_42096A:				; CODE XREF: .text:0041E9BDj
					; DATA XREF: .text:off_41E9C4o
		cmp	dword ptr [ebx+208h], 0	; jumptable 0041E9BD cases 1157-1159,1163,1164
		jz	short loc_42098A
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h

loc_42098A:				; CODE XREF: .text:00420971j
		xor	eax, eax
		jmp	loc_420A26
; ---------------------------------------------------------------------------

loc_420991:				; CODE XREF: .text:0041E9BDj
					; DATA XREF: .text:off_41E9C4o
		cmp	dword ptr [ebx+208h], 0	; jumptable 0041E9BD cases 1160-1162
		jz	short loc_4209B3
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		jmp	short loc_420A26
; ---------------------------------------------------------------------------

loc_4209B3:				; CODE XREF: .text:00420998j
		xor	eax, eax
		jmp	short loc_420A26
; ---------------------------------------------------------------------------

loc_4209B7:				; CODE XREF: .text:0041E9BDj
					; DATA XREF: .text:off_41E9C4o
		cmp	dword ptr [ebx+208h], 0	; jumptable 0041E9BD case 1166
		jz	short loc_4209D7
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h

loc_4209D7:				; CODE XREF: .text:004209BEj
		push	ebx
		call	loc_41A554
		pop	ecx
		xor	eax, eax
		jmp	short loc_420A26
; ---------------------------------------------------------------------------

loc_4209E2:				; CODE XREF: .text:0041E8F9j
					; .text:0041E912j ...
		cmp	dword ptr [ebx+208h], 0	; jumptable 0041E9BD default case
		jz	short loc_420A05
		mov	edx, [ebp+14h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-2Ch], eax

loc_420A05:				; CODE XREF: .text:004209E9j
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_420A1F
		mov	edx, [ebp+14h]
		push	edx		; lParam
		mov	ecx, [ebp+10h]
		push	ecx		; wParam
		mov	eax, [ebp+0Ch]
		push	eax		; Msg
		push	edi		; hWnd
		call	DefWindowProcW
		jmp	short loc_420A26
; ---------------------------------------------------------------------------

loc_420A1F:				; CODE XREF: .text:00420A09j
		mov	eax, [ebp-2Ch]
		jmp	short loc_420A26
; ---------------------------------------------------------------------------

loc_420A24:				; CODE XREF: .text:0041EBC4j
					; .text:0041EBE1j ...
		xor	eax, eax

loc_420A26:				; CODE XREF: .text:0041E52Fj
					; .text:0041E7A9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h
	