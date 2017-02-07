.code

; SORTFUNC loc_4D5B08
loc_4D5B08:				; DATA XREF: .text:0044A1ECo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+10h]
		xor	edx, edx
		mov	ebx, [ebp+8]
		mov	esi, [ebp+0Ch]
		cmp	eax, 1
		jnz	short loc_4D5B34
		lea	eax, [esi+58h]
		push	eax		; s2
		lea	edx, [ebx+58h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		mov	edx, eax
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5B34:				; CODE XREF: .text:004D5B1Bj
		cmp	eax, 2
		jnz	short loc_4D5B5D
		mov	ecx, [esi+50h]
		mov	eax, [ebx+50h]
		cmp	ecx, eax
		jle	short loc_4D5B4B
		or	edx, 0FFFFFFFFh
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5B4B:				; CODE XREF: .text:004D5B41j
		cmp	ecx, eax
		jge	loc_4D5C8C
		mov	edx, 1
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5B5D:				; CODE XREF: .text:004D5B37j
		cmp	eax, 3
		jnz	short loc_4D5B86
		mov	ecx, [esi+10h]
		mov	eax, [ebx+10h]
		cmp	ecx, eax
		jbe	short loc_4D5B74
		or	edx, 0FFFFFFFFh
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5B74:				; CODE XREF: .text:004D5B6Aj
		cmp	ecx, eax
		jnb	loc_4D5C8C
		mov	edx, 1
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5B86:				; CODE XREF: .text:004D5B60j
		cmp	eax, 4
		jnz	short loc_4D5BAF
		mov	ecx, [esi+20h]
		mov	eax, [ebx+20h]
		cmp	ecx, eax
		jbe	short loc_4D5B9D
		or	edx, 0FFFFFFFFh
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5B9D:				; CODE XREF: .text:004D5B93j
		cmp	ecx, eax
		jnb	loc_4D5C8C
		mov	edx, 1
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5BAF:				; CODE XREF: .text:004D5B89j
		cmp	eax, 5
		jnz	short loc_4D5BEC
		mov	ecx, [esi+8]
		mov	eax, [ebx+8]
		and	eax, 10000h
		and	ecx, 10000h
		cmp	ecx, eax
		jbe	short loc_4D5BD1
		or	edx, 0FFFFFFFFh
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5BD1:				; CODE XREF: .text:004D5BC7j
		mov	ecx, [esi+8]
		and	ecx, 10000h
		cmp	eax, ecx
		jbe	loc_4D5C8C
		mov	edx, 1
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5BEC:				; CODE XREF: .text:004D5BB2j
		cmp	eax, 6
		jnz	short loc_4D5C12
		mov	ecx, [esi+1Ch]
		mov	eax, [ebx+1Ch]
		cmp	ecx, eax
		jbe	short loc_4D5C03
		or	edx, 0FFFFFFFFh
		jmp	loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C03:				; CODE XREF: .text:004D5BF9j
		cmp	ecx, eax
		jnb	loc_4D5C8C
		mov	edx, 1
		jmp	short loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C12:				; CODE XREF: .text:004D5BEFj
		cmp	eax, 7
		jnz	short loc_4D5C31
		mov	ecx, [esi+18h]
		mov	eax, [ebx+18h]
		cmp	ecx, eax
		jbe	short loc_4D5C26
		or	edx, 0FFFFFFFFh
		jmp	short loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C26:				; CODE XREF: .text:004D5C1Fj
		cmp	ecx, eax
		jnb	short loc_4D5C8C
		mov	edx, 1
		jmp	short loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C31:				; CODE XREF: .text:004D5C15j
		cmp	eax, 8
		jnz	short loc_4D5C50
		mov	ecx, [esi+14h]
		mov	eax, [ebx+14h]
		cmp	ecx, eax
		jbe	short loc_4D5C45
		or	edx, 0FFFFFFFFh
		jmp	short loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C45:				; CODE XREF: .text:004D5C3Ej
		cmp	ecx, eax
		jnb	short loc_4D5C8C
		mov	edx, 1
		jmp	short loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C50:				; CODE XREF: .text:004D5C34j
		cmp	eax, 9
		jnz	short loc_4D5C6F
		mov	ecx, [esi+24h]
		mov	eax, [ebx+24h]
		cmp	ecx, eax
		jbe	short loc_4D5C64
		or	edx, 0FFFFFFFFh
		jmp	short loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C64:				; CODE XREF: .text:004D5C5Dj
		cmp	ecx, eax
		jnb	short loc_4D5C8C
		mov	edx, 1
		jmp	short loc_4D5C8C
; ---------------------------------------------------------------------------

loc_4D5C6F:				; CODE XREF: .text:004D5C53j
		cmp	eax, 0Ah
		jnz	short loc_4D5C8C
		lea	eax, [esi+258h]
		push	eax		; s2
		lea	ecx, [ebx+258h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		mov	edx, eax

loc_4D5C8C:				; CODE XREF: .text:004D5B2Fj
					; .text:004D5B46j ...
		test	edx, edx
		jnz	short loc_4D5CA6
		mov	ecx, [esi]
		mov	eax, [ebx]
		cmp	ecx, eax
		jbe	short loc_4D5C9D
		or	edx, 0FFFFFFFFh
		jmp	short loc_4D5CA6
; ---------------------------------------------------------------------------

loc_4D5C9D:				; CODE XREF: .text:004D5C96j
		cmp	ecx, eax
		jnb	short loc_4D5CA6
		mov	edx, 1

loc_4D5CA6:				; CODE XREF: .text:004D5C8Ej
					; .text:004D5C9Bj ...
		mov	eax, edx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4D5CAC(wchar_t *buffer, void *s, int,	int, int, int)
loc_4D5CAC:				; DATA XREF: .text:004D680Eo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		mov	edi, [ebp+8]
		add	eax, 4
		mov	esi, [ebp+18h]
		cmp	eax, 0Eh	; switch 15 cases
		ja	loc_4D6526	; jumptable 004D5CCC default case
		jmp	ds:off_4D5CD3[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4D5CD3	dd offset loc_4D5D0F	; DATA XREF: .text:004D5CCCr
		dd offset loc_4D5D16	; jump table for switch	statement
		dd offset loc_4D5D1D
		dd offset loc_4D5D24
		dd offset loc_4D5D2B
		dd offset loc_4D5D9C
		dd offset loc_4D5DB5
		dd offset loc_4D5E27
		dd offset loc_4D5EC5
		dd offset loc_4D5F3D
		dd offset loc_4D5F77
		dd offset loc_4D62D6
		dd offset loc_4D6359
		dd offset loc_4D6372
		dd offset loc_4D6410
; ---------------------------------------------------------------------------

loc_4D5D0F:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		xor	eax, eax	; jumptable 004D5CCC case 0
		jmp	loc_4D653E
; ---------------------------------------------------------------------------

loc_4D5D16:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		xor	eax, eax	; jumptable 004D5CCC case 1
		jmp	loc_4D653E
; ---------------------------------------------------------------------------

loc_4D5D1D:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		xor	eax, eax	; jumptable 004D5CCC case 2
		jmp	loc_4D653E
; ---------------------------------------------------------------------------

loc_4D5D24:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		xor	eax, eax	; jumptable 004D5CCC case 3
		jmp	loc_4D653E
; ---------------------------------------------------------------------------

loc_4D5D2B:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		cmp	win.sorted.sort, 2 ; jumptable 004D5CCC	case 4
		jnz	short loc_4D5D5A
		lea	edx, [esi+458h]
		push	edx		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		push	ebx		; n
		push	60h		; c
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4D5D5A:				; CODE XREF: .text:004D5D32j
		mov	edx, [esi]
		push	edx		; u
		lea	edi, [edi+ebx*2]
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	[ebp-4], eax
		mov	eax, [ebp-4]
		push	eax		; n
		mov	edx, 1
		test	byte ptr [esi+9], 1
		jnz	short loc_4D5D7C
		dec	edx

loc_4D5D7C:				; CODE XREF: .text:004D5D79j
		push	edx		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		mov	eax, [ebp+10h]
		add	esp, 0Ch
		add	ebx, [ebp-4]
		or	dword ptr [eax], 100h
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5D9C:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		lea	edx, [esi+58h]	; jumptable 004D5CCC case 5
		push	edx		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5DB5:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		cmp	dword ptr [esi+0Ch], 0 ; jumptable 004D5CCC case 6
		jnz	short loc_4D5DE2
		push	offset aTopmost	; "Topmost"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 2
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5DE2:				; CODE XREF: .text:004D5DB9j
		call	GetDesktopWindow
		cmp	eax, [esi+0Ch]
		jnz	short loc_4D5E13
		push	offset aDesktop	; "Desktop"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 2
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5E13:				; CODE XREF: .text:004D5DEAj
		mov	edx, [esi+0Ch]
		push	edx		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5E27:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		cmp	dword ptr [esi+10h], 0 ; jumptable 004D5CCC case 7
		jz	loc_4D6526	; jumptable 004D5CCC default case
		mov	eax, dword_57DE54
		cmp	eax, 1
		jnz	short loc_4D5E42
		mov	ebx, 1
		jmp	short loc_4D5E50
; ---------------------------------------------------------------------------

loc_4D5E42:				; CODE XREF: .text:004D5E39j
		cmp	eax, 2
		jnz	short loc_4D5E4E
		mov	ebx, 2
		jmp	short loc_4D5E50
; ---------------------------------------------------------------------------

loc_4D5E4E:				; CODE XREF: .text:004D5E45j
		xor	ebx, ebx

loc_4D5E50:				; CODE XREF: .text:004D5E40j
					; .text:004D5E4Cj
		cmp	dword_57DE58, 0
		jz	short loc_4D5E5C
		or	ebx, 20h

loc_4D5E5C:				; CODE XREF: .text:004D5E57j
		push	0		; subaddr
		mov	eax, [esi+10h]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D5EA2
		test	byte ptr [eax+9], 10h
		jz	short loc_4D5EA2
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_4D5E8C
		or	ebx, 800h
		jmp	short loc_4D5EA2
; ---------------------------------------------------------------------------

loc_4D5E8C:				; CODE XREF: .text:004D5E82j
		test	edx, 40000h
		jz	short loc_4D5E9C
		or	ebx, 400h
		jmp	short loc_4D5EA2
; ---------------------------------------------------------------------------

loc_4D5E9C:				; CODE XREF: .text:004D5E92j
		or	ebx, 200h

loc_4D5EA2:				; CODE XREF: .text:004D5E71j
					; .text:004D5E77j ...
		push	ebx		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [esi+10h]
		push	edx		; _addr
		push	edi		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5EC5:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		mov	eax, [esi+20h]	; jumptable 004D5CCC case 8
		test	eax, eax
		jz	loc_4D6526	; jumptable 004D5CCC default case
		test	eax, 0FFFF0000h
		jz	short loc_4D5EF7
		mov	edx, [esi+20h]
		push	edx
		push	offset a08xMenu	; "%08X	(menu)"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5EF7:				; CODE XREF: .text:004D5ED5j
		mov	eax, [esi+20h]
		push	eax
		push	offset aI__5	; "%i. "
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [edi+ebx*2]
		cmp	ebx, 9
		jge	short loc_4D5F21

loc_4D5F13:				; CODE XREF: .text:004D5F1Fj
		mov	word ptr [eax],	20h
		inc	ebx
		add	eax, 2
		cmp	ebx, 9
		jl	short loc_4D5F13

loc_4D5F21:				; CODE XREF: .text:004D5F11j
		mov	edx, [esi+20h]
		lea	edi, [edi+ebx*2]
		push	edx
		push	offset a08x_10	; "(%08X)"
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5F3D:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		test	byte ptr [esi+0Ah], 1 ;	jumptable 004D5CCC case	9
		jz	short loc_4D5F5D
		push	offset aUnicode_4 ; "UNICODE"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5F5D:				; CODE XREF: .text:004D5F41j
		push	offset aAscii_7	; "ASCII"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D5F77:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		mov	eax, [esi+1Ch]	; jumptable 004D5CCC case 10
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		push	edx		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx
		push	ebx		; n
		mov	eax, 1
		test	byte ptr [esi+9], 1
		jnz	short loc_4D5FA0
		dec	eax

loc_4D5FA0:				; CODE XREF: .text:004D5F9Dj
		push	eax		; c
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		and	dword ptr [ebp-8], 0FFFFh
		push	offset aButton_0 ; s2
		lea	ecx, [esi+258h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D5FF1
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; ntext
		lea	edx, [edi+ebx*2]
		push	edx		; text
		push	offset atype	; type
		mov	ecx, [ebp-8]
		push	ecx		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D5FF1:				; CODE XREF: .text:004D5FCAj
		push	offset aStatic_1 ; s2
		lea	eax, [esi+258h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D602E
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; ntext
		lea	ecx, [edi+ebx*2]
		push	ecx		; text
		push	offset aSs_x	; type
		mov	eax, [ebp-8]
		push	eax		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D602E:				; CODE XREF: .text:004D6007j
		push	offset aEdit_1	; "EDIT"
		lea	edx, [esi+258h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D606B
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; ntext
		lea	eax, [edi+ebx*2]
		push	eax		; text
		push	offset aEs_x	; type
		mov	edx, [ebp-8]
		push	edx		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D606B:				; CODE XREF: .text:004D6044j
		push	offset aRichedit ; "RICHEDIT"
		lea	ecx, [esi+258h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D60A8
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; ntext
		lea	edx, [edi+ebx*2]
		push	edx		; text
		push	offset aEs_x	; type
		mov	ecx, [ebp-8]
		push	ecx		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D60A8:				; CODE XREF: .text:004D6081j
		push	offset aRichedit_class ; "RICHEDIT_CLASS"
		lea	eax, [esi+258h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D60E5
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; ntext
		lea	ecx, [edi+ebx*2]
		push	ecx		; text
		push	offset aEs_x	; type
		mov	eax, [ebp-8]
		push	eax		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D60E5:				; CODE XREF: .text:004D60BEj
		push	offset aScrollbar ; "SCROLLBAR"
		lea	edx, [esi+258h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D6122
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; ntext
		lea	eax, [edi+ebx*2]
		push	eax		; text
		push	offset aSbs_x	; "SBS_X"
		mov	edx, [ebp-8]
		push	edx		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D6122:				; CODE XREF: .text:004D60FBj
		push	offset aCombobox_0 ; "COMBOBOX"
		lea	ecx, [esi+258h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D615F
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; ntext
		lea	edx, [edi+ebx*2]
		push	edx		; text
		push	offset aCbs_x	; "CBS_X"
		mov	ecx, [ebp-8]
		push	ecx		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D615F:				; CODE XREF: .text:004D6138j
		push	offset a32770_0	; s2
		lea	eax, [esi+258h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D619C
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; ntext
		lea	ecx, [edi+ebx*2]
		push	ecx		; text
		push	offset aDs_x	; type
		mov	eax, [ebp-8]
		push	eax		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	loc_4D624F
; ---------------------------------------------------------------------------

loc_4D619C:				; CODE XREF: .text:004D6175j
		push	offset aDialog	; s2
		lea	edx, [esi+258h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D61D6
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; ntext
		lea	eax, [edi+ebx*2]
		push	eax		; text
		push	offset aDs_x	; type
		mov	edx, [ebp-8]
		push	edx		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	short loc_4D624F
; ---------------------------------------------------------------------------

loc_4D61D6:				; CODE XREF: .text:004D61B2j
		push	offset aListbox_0 ; "LISTBOX"
		lea	ecx, [esi+258h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D6210
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; ntext
		lea	edx, [edi+ebx*2]
		push	edx		; text
		push	offset aLbs_x	; "LBS_X"
		mov	ecx, [ebp-8]
		push	ecx		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	short loc_4D624F
; ---------------------------------------------------------------------------

loc_4D6210:				; CODE XREF: .text:004D61ECj
		push	offset aCombolbox ; "COMBOLBOX"
		lea	eax, [esi+258h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D624A
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; ntext
		lea	ecx, [edi+ebx*2]
		push	ecx		; text
		push	offset aLbs_x	; "LBS_X"
		mov	eax, [ebp-8]
		push	eax		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		jmp	short loc_4D624F
; ---------------------------------------------------------------------------

loc_4D624A:				; CODE XREF: .text:004D6226j
		xor	edx, edx
		mov	[ebp-4], edx

loc_4D624F:				; CODE XREF: .text:004D5FECj
					; .text:004D6029j ...
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4D6263
		mov	ecx, [ebp-4]
		add	ecx, ebx
		mov	word ptr [edi+ecx*2], 7Ch
		inc	dword ptr [ebp-4]

loc_4D6263:				; CODE XREF: .text:004D6253j
		mov	eax, 100h
		mov	ecx, ebx
		sub	eax, [ebp-4]
		add	ecx, ecx
		sub	eax, ebx
		push	eax		; ntext
		mov	edx, [ebp-4]
		add	edx, edx
		add	edx, edi
		add	edx, ecx
		push	edx		; text
		push	offset aWs_x	; type
		mov	eax, [esi+1Ch]
		and	eax, 0FFFF0000h
		push	eax		; data
		call	Decodetype
		add	esp, 10h
		add	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4D62AB
		mov	edx, [ebp-4]
		add	edx, ebx
		cmp	word ptr [edi+edx*2-2],	7Ch
		jnz	short loc_4D62AB
		dec	dword ptr [ebp-4]

loc_4D62AB:				; CODE XREF: .text:004D6299j
					; .text:004D62A6j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4D62C8
		mov	ecx, [ebp-4]
		push	ecx		; n
		push	2		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, [ebp-4]

loc_4D62C8:				; CODE XREF: .text:004D62AFj
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 100h
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D62D6:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		mov	eax, [esi+18h]	; jumptable 004D5CCC case 11
		test	eax, eax
		jz	loc_4D6526	; jumptable 004D5CCC default case
		push	eax		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx
		push	ebx		; n
		mov	eax, 1
		test	byte ptr [esi+9], 1
		jnz	short loc_4D6301
		dec	eax

loc_4D6301:				; CODE XREF: .text:004D62FEj
		push	eax		; c
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; ntext
		lea	edi, [edi+ebx*2]
		push	edi		; text
		push	offset aWs_ex_x	; type
		mov	eax, [esi+18h]
		push	eax		; data
		call	Decodetype
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4D634B
		mov	edx, [ebp-4]
		push	edx		; n
		push	2		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, [ebp-4]

loc_4D634B:				; CODE XREF: .text:004D6332j
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 100h
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D6359:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		push	8800h		; jumptable 004D5CCC case 12
		mov	edx, [esi+14h]
		push	edx		; threadid
		push	edi		; s
		call	Decodethreadname
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D6372:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		cmp	dword ptr [esi+24h], 0 ; jumptable 004D5CCC case 13
		jz	loc_4D6526	; jumptable 004D5CCC default case
		mov	eax, dword_57DE54
		cmp	eax, 1
		jnz	short loc_4D638D
		mov	ebx, 1
		jmp	short loc_4D639B
; ---------------------------------------------------------------------------

loc_4D638D:				; CODE XREF: .text:004D6384j
		cmp	eax, 2
		jnz	short loc_4D6399
		mov	ebx, 2
		jmp	short loc_4D639B
; ---------------------------------------------------------------------------

loc_4D6399:				; CODE XREF: .text:004D6390j
		xor	ebx, ebx

loc_4D639B:				; CODE XREF: .text:004D638Bj
					; .text:004D6397j
		cmp	dword_57DE58, 0
		jz	short loc_4D63A7
		or	ebx, 20h

loc_4D63A7:				; CODE XREF: .text:004D63A2j
		push	0		; subaddr
		mov	eax, [esi+24h]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D63ED
		test	byte ptr [eax+9], 10h
		jz	short loc_4D63ED
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_4D63D7
		or	ebx, 800h
		jmp	short loc_4D63ED
; ---------------------------------------------------------------------------

loc_4D63D7:				; CODE XREF: .text:004D63CDj
		test	edx, 40000h
		jz	short loc_4D63E7
		or	ebx, 400h
		jmp	short loc_4D63ED
; ---------------------------------------------------------------------------

loc_4D63E7:				; CODE XREF: .text:004D63DDj
		or	ebx, 200h

loc_4D63ED:				; CODE XREF: .text:004D63BCj
					; .text:004D63C2j ...
		push	ebx		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [esi+24h]
		push	edx		; _addr
		push	edi		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D6410:				; CODE XREF: .text:004D5CCCj
					; DATA XREF: .text:off_4D5CD3o
		lea	ecx, [esi+258h]	; jumptable 004D5CCC case 14
		push	ecx		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		cmp	word ptr [esi+258h], 23h
		jnz	loc_4D6526	; jumptable 004D5CCC default case
		push	offset a32768	; s2
		lea	eax, [esi+258h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D6474
		push	(offset	a08xMenu+8) ; src
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
		jmp	loc_4D6526	; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D6474:				; CODE XREF: .text:004D644Bj
		push	offset a32769	; "#32769"
		lea	eax, [esi+258h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D64B0
		push	offset aDesktopWindow ;	" (desktop window)"
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
		jmp	short loc_4D6526 ; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D64B0:				; CODE XREF: .text:004D648Aj
		push	offset a32770_0	; s2
		lea	eax, [esi+258h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D64EC
		push	offset aDialogBox ; " (dialog box)"
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
		jmp	short loc_4D6526 ; jumptable 004D5CCC default case
; ---------------------------------------------------------------------------

loc_4D64EC:				; CODE XREF: .text:004D64C6j
		push	offset a32771	; s2
		lea	eax, [esi+258h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D6526 ; jumptable 004D5CCC default case
		push	offset aTaskSwitchWind ; " (task switch	window)"
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

loc_4D6526:				; CODE XREF: .text:004D5CC6j
					; .text:004D5D97j ...
		test	byte ptr [esi+9], 1 ; jumptable	004D5CCC default case
		jz	short loc_4D653C
		mov	eax, [ebp+10h]
		mov	ecx, [ebp+10h]
		mov	edx, [eax]
		and	edx, 0FFFFFFE0h
		or	edx, 1
		mov	[ecx], edx

loc_4D653C:				; CODE XREF: .text:004D652Aj
		mov	eax, ebx

loc_4D653E:				; CODE XREF: .text:004D5D11j
					; .text:004D5D18j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D6548:				; DATA XREF: .text:004D67EAo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4D655C
		sub	eax, 1Bh
		jz	short loc_4D65B1
		jmp	short loc_4D65BF
; ---------------------------------------------------------------------------

loc_4D655C:				; CODE XREF: .text:004D6553j
		mov	eax, [ebp+14h]
		shr	eax, 10h
		cmp	ax, 3
		jnz	short loc_4D6587
		push	0		; index
		push	offset loc_4D51EC ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4D65AA
; ---------------------------------------------------------------------------

loc_4D6587:				; CODE XREF: .text:004D6566j
		cmp	ax, 9
		jnz	short loc_4D65AA
		push	10h		; index
		push	offset loc_4D51EC ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4D65AA:				; CODE XREF: .text:004D6585j
					; .text:004D658Bj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D65B1:				; CODE XREF: .text:004D6558j
		or	dword_57FE7C, 800h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D65BF:				; CODE XREF: .text:004D655Aj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D65C4:				; CODE XREF: .text:0040B017p
					; .text:004100B9p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset word_5763A4
;__DebugBreak		
		cmp	win.bar.nbar, 0
		jnz	loc_4D6828
		lea	eax, aWindows_0;[ebx+774h]
		push	eax		; src
		push	20h		; n
		push	offset win	; dest
		call	StrcopyW
		mov	win.mode, 0F0000h
		lea	edx, aHandle_0;[ebx+784h]
		mov	win.bar.visible, 1
		mov	win.bar._name, edx
		lea	ecx, aWindowSHandle;[ebx+792h]
		lea	eax, aText_2;[ebx+7B2h]
		mov	win.bar.expl, ecx
		mov	win.bar.mode, 2
		mov	win.bar.defdx, 0Dh
		mov	win.bar._name+4,	eax
		lea	edx, aWindowSTitleOr;[ebx+7BCh]
		lea	ecx, aParent_0;[ebx+7EAh]
		mov	win.bar.expl+4,	edx
		mov	win.bar.mode+4,	2
		mov	win.bar.defdx+4, 20h
		mov	win.bar._name+8,	ecx
		lea	eax, aHandleOfParent;[ebx+7F8h]
		lea	edx, $CTW0("WinProc");[ebx+0EEh]
		mov	win.bar.expl+8,	eax
		mov	win.bar.mode+8,	2
		mov	win.bar.defdx+8, 9
		mov	win.bar._name+0Ch, edx
		lea	ecx, aAddressOfWindo;[ebx+828h]
		lea	eax, aIdMenu;[ebx+870h]
		mov	win.bar.expl+0Ch, ecx
		mov	win.bar.mode+0Ch, 2
		mov	win.bar.defdx+0Ch, 9
		mov	win.bar._name+10h, eax
		lea	edx, aIdentifierOfCh;[ebx+880h]
		lea	ecx, aType_4;[ebx+8D4h]
		mov	win.bar.expl+10h, edx
		mov	win.bar.mode+10h, 2
		mov	win.bar.defdx+10h, 9
		mov	win.bar._name+14h, ecx
		lea	eax, aWindowTypeAsci;[ebx+8DEh]
		lea	edx, aStyle;[ebx+91Ch]
		mov	win.bar.expl+14h, eax
		mov	win.bar.mode+14h, 2
		mov	win.bar.defdx+14h, 8
		mov	win.bar._name+18h, edx
		lea	ecx, aWindowStyleSet;[ebx+928h]
		lea	eax, aExtstyle;[ebx+960h]
		mov	win.bar.expl+18h, ecx
		mov	win.bar.mode+18h, 2
		mov	win.bar.defdx+18h, 9
		mov	win.bar._name+1Ch, eax
		lea	edx, aExtendedStyleS;[ebx+972h]
		lea	ecx, aThread_3;[ebx+9B4h]
		mov	win.bar.expl+1Ch, edx
		mov	win.bar.mode+1Ch, 2
		mov	win.bar.defdx+1Ch, 9
		mov	win.bar._name+20h, ecx
		lea	eax, aIdOfThreadThat;[ebx+9C2h]
		lea	edx, aClsproc;[ebx+0A06h]
		mov	win.bar.expl+20h, eax
		mov	win.bar.mode+20h, 2
		mov	win.bar.defdx+20h, 9
		lea	ecx, aAddressOfDefau;[ebx+0A16h]
		mov	win.bar._name+24h, edx
		mov	win.bar.expl+24h, ecx
		mov	win.bar.mode+24h, 2
		lea	eax, aClsname;[ebx+0A6Ch]
		mov	win.bar.defdx+24h, 9
		lea	edx, aClassName;[ebx+0A7Ch]
		mov	win.bar._name+28h, eax
		mov	win.bar.expl+28h, edx
		mov	win.bar.mode+28h, 2
		mov	win.bar.defdx+28h, 0Ch
		mov	win.bar.nbar, 0Bh
		xor	ecx, ecx
		mov	win.tabfunc, offset loc_4D6548
		xor	eax, eax
		mov	win.custommode,	ecx
		xor	edx, edx
		mov	win.customdata,	eax
		mov	win.updatefunc,	edx
		add	esp, 0Ch
		xor	ecx, ecx
		mov	win.drawfunc, offset loc_4D5CAC
		mov	win.tableselfunc, ecx
		mov	win.menu, offset stru_576254

loc_4D6828:				; CODE XREF: .text:004D65D4j
		cmp	process, 0
		jz	short loc_4D6836
		call	loc_4D56BC

loc_4D6836:				; CODE XREF: .text:004D682Fj
		cmp	win.hw,	0
		jnz	short loc_4D6872
		lea	eax, aListOfWindow_1;[ebx+0A9Eh]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	edx, aIco_w;[ebx+0A92h]
		push	edx		; icon
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, win.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset win	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4D6882
; ---------------------------------------------------------------------------

loc_4D6872:				; CODE XREF: .text:004D683Dj
		push	0		; bErase
		push	0		; lpRect
		mov	edx, win.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_4D6882:				; CODE XREF: .text:004D6870j
		cmp	win.hparent, 0
		jz	short loc_4D68D7
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D68D7
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4D68AE
		push	0		; lParam
		mov	edx, win.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4D68AE:				; CODE XREF: .text:004D6898j
		mov	ecx, win.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4D68CB
		push	9		; nCmdShow
		mov	eax, win.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4D68CB:				; CODE XREF: .text:004D68BCj
		mov	edx, win.hw
		push	edx		; hWnd
		call	SetFocus

loc_4D68D7:				; CODE XREF: .text:004D6889j
					; .text:004D688Fj
		mov	eax, win.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4D68E0:				; DATA XREF: .data:stru_576E64o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		mov	eax, [esi+68h]
		push	eax		; index
		add	esi, 44h
		push	esi		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		mov	dword_618488, ebx
		xor	eax, eax
		mov	dword_618490, eax
		mov	dword_61848C, eax
		test	ebx, ebx
		jz	short loc_4D6986
		push	5		; mode
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; _addr
		lea	eax, [ebp-200h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		mov	eax, dword_618488
		cmp	ebx, [eax+4]
		jb	short loc_4D6986
		push	ebx		; n
		add	eax, 20Ch
		push	eax		; s2
		lea	edx, [ebp-200h]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D695E
		mov	dword_61848C, 1

loc_4D695E:				; CODE XREF: .text:004D6952j
		push	ebx		; n
		mov	ecx, dword_618488
		add	ecx, 0Ch
		push	ecx		; s2
		lea	eax, [ebp-200h]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D6986
		mov	dword_618490, 1

loc_4D6986:				; CODE XREF: .text:004D6914j
					; .text:004D6938j ...
		mov	eax, 1
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D6994:				; DATA XREF: .data:stru_576E64o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_4D69B5
		cmp	process, 0
		jnz	short loc_4D69AD
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D69AD:				; CODE XREF: .text:004D69A6j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D69B5:				; CODE XREF: .text:004D699Dj
		dec	eax
		jnz	short loc_4D69EC
		xor	ebx, ebx
		jmp	short loc_4D69DC
; ---------------------------------------------------------------------------

loc_4D69BC:				; CODE XREF: .text:004D69E2j
		push	ebx		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D69DB
		push	0
		push	0
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch

loc_4D69DB:				; CODE XREF: .text:004D69CCj
		inc	ebx

loc_4D69DC:				; CODE XREF: .text:004D69BAj
		cmp	ebx, module.sorted.n
		jl	short loc_4D69BC
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D69EC:				; CODE XREF: .text:004D69B6j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4D69F4
loc_4D69F4:				; DATA XREF: .text:004D72E2o
					; .data:stru_576E64o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	esi, esi
		jnz	short loc_4D6A0E
		mov	eax, dword_618488
		jmp	short loc_4D6A53
; ---------------------------------------------------------------------------

loc_4D6A0E:				; CODE XREF: .text:004D6A05j
		cmp	esi, 1
		jnz	short loc_4D6A2C
		cmp	dword ptr [ebx+68h], 0
		jle	short loc_4D6A2C
		mov	edx, [ebx+68h]
		dec	edx
		push	edx		; index
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Getsortedbyselection
		add	esp, 8
		jmp	short loc_4D6A53
; ---------------------------------------------------------------------------

loc_4D6A2C:				; CODE XREF: .text:004D6A11j
					; .text:004D6A17j
		cmp	esi, 2
		jnz	short loc_4D6A4C
		mov	eax, [ebx+68h]
		cmp	eax, [ebx+44h]
		jge	short loc_4D6A4C
		mov	edx, [ebx+68h]
		inc	edx
		push	edx		; index
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Getsortedbyselection
		add	esp, 8
		jmp	short loc_4D6A53
; ---------------------------------------------------------------------------

loc_4D6A4C:				; CODE XREF: .text:004D6A2Fj
					; .text:004D6A37j
		xor	eax, eax
		jmp	loc_4D6AE3
; ---------------------------------------------------------------------------

loc_4D6A53:				; CODE XREF: .text:004D6A0Cj
					; .text:004D6A2Aj ...
		test	eax, eax
		jnz	short loc_4D6A5E
		xor	eax, eax
		jmp	loc_4D6AE3
; ---------------------------------------------------------------------------

loc_4D6A5E:				; CODE XREF: .text:004D6A55j
		test	edi, edi
		jnz	short loc_4D6A87
		mov	edx, [eax]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4D6A73
		xor	eax, eax
		jmp	short loc_4D6AE3
; ---------------------------------------------------------------------------

loc_4D6A73:				; CODE XREF: .text:004D6A6Dj
		test	dword ptr [eax+8], 2001000h
		jnz	short loc_4D6A80
		xor	eax, eax
		jmp	short loc_4D6AE3
; ---------------------------------------------------------------------------

loc_4D6A80:				; CODE XREF: .text:004D6A7Aj
		mov	eax, 1
		jmp	short loc_4D6AE3
; ---------------------------------------------------------------------------

loc_4D6A87:				; CODE XREF: .text:004D6A60j
		dec	edi
		jnz	short loc_4D6AE1
		mov	edx, 9
		test	esi, esi
		jz	short loc_4D6A99
		add	edx, 7FF7h

loc_4D6A99:				; CODE XREF: .text:004D6A91j
		or	edx, 4
		push	edx		; mode
		push	0		; stackaddr
		mov	ecx, [eax+4]
		push	ecx		; selsize
		push	0		; dumpaddr
		mov	eax, [eax]
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		cmp	esi, 1
		jnz	short loc_4D6AC7
		mov	edx, [ebx+68h]
		dec	edx
		push	edx		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8
		jmp	short loc_4D6ADA
; ---------------------------------------------------------------------------

loc_4D6AC7:				; CODE XREF: .text:004D6AB5j
		cmp	esi, 2
		jnz	short loc_4D6ADA
		mov	ecx, [ebx+68h]
		inc	ecx
		push	ecx		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8

loc_4D6ADA:				; CODE XREF: .text:004D6AC5j
					; .text:004D6ACAj
		mov	eax, 1
		jmp	short loc_4D6AE3
; ---------------------------------------------------------------------------

loc_4D6AE1:				; CODE XREF: .text:004D6A88j
		xor	eax, eax

loc_4D6AE3:				; CODE XREF: .text:004D6A4Ej
					; .text:004D6A59j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D6AE8:				; DATA XREF: .data:stru_576E64o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	edx, [ebp+14h]
		mov	eax, dword_618488
		test	eax, eax
		jz	short loc_4D6B09
		cmp	dword ptr [eax+4], 0
		jz	short loc_4D6B09
		cmp	dword ptr [eax+4], 200h
		jbe	short loc_4D6B10

loc_4D6B09:				; CODE XREF: .text:004D6AF8j
					; .text:004D6AFEj
		xor	eax, eax
		jmp	loc_4D6CB1
; ---------------------------------------------------------------------------

loc_4D6B10:				; CODE XREF: .text:004D6B07j
		test	edx, edx
		jnz	short loc_4D6B4A
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4D6B2A
		cmp	dword_61848C, 0
		jz	short loc_4D6B2A
		xor	eax, eax
		jmp	loc_4D6CB1
; ---------------------------------------------------------------------------

loc_4D6B2A:				; CODE XREF: .text:004D6B18j
					; .text:004D6B21j
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_4D6B40
		cmp	dword_618490, 0
		jz	short loc_4D6B40
		xor	eax, eax
		jmp	loc_4D6CB1
; ---------------------------------------------------------------------------

loc_4D6B40:				; CODE XREF: .text:004D6B2Ej
					; .text:004D6B37j
		mov	eax, 1
		jmp	loc_4D6CB1
; ---------------------------------------------------------------------------

loc_4D6B4A:				; CODE XREF: .text:004D6B12j
		dec	edx
		jnz	loc_4D6CAF
		call	Suspendallthreads
		mov	dword ptr [ebp-4], 1
		cmp	run.status, 12h
		jnz	loc_4D6BEB
		xor	ebx, ebx
		jmp	short loc_4D6BAC
; ---------------------------------------------------------------------------

loc_4D6B6E:				; CODE XREF: .text:004D6BB2j
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D6BAB
		mov	eax, [eax]
		push	eax		; threadid
		call	Threadregisters
		pop	ecx
		test	eax, eax
		jz	short loc_4D6BAB
		mov	ecx, dword_618488
		mov	esi, [ecx]
		mov	edx, [eax+8]
		cmp	esi, edx
		ja	short loc_4D6BAB
		mov	esi, dword_618488
		mov	esi, [esi]
		add	esi, [ecx+4]
		cmp	edx, esi
		jb	short loc_4D6BB4

loc_4D6BAB:				; CODE XREF: .text:004D6B7Ej
					; .text:004D6B8Bj ...
		inc	ebx

loc_4D6BAC:				; CODE XREF: .text:004D6B6Cj
		cmp	ebx, thread.sorted.n
		jl	short loc_4D6B6E

loc_4D6BB4:				; CODE XREF: .text:004D6BA9j
		cmp	ebx, thread.sorted.n
		jge	short loc_4D6BEB
		push	offset aThereIsAtLeast ; "There	is at least one	thread with EIP	p"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aEipInsideThePa ; "EIP inside the patch"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6D0 ; cond
		call	Condyesno
		add	esp, 0Ch
		cmp	eax, 6
		jz	short loc_4D6BEB
		xor	eax, eax
		mov	[ebp-4], eax

loc_4D6BEB:				; CODE XREF: .text:004D6B64j
					; .text:004D6BBAj ...
		cmp	dword ptr [ebp-4], 0
		jz	loc_4D6CA3
		push	0		; makebackup
		mov	edx, dword_618488
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		push	eax		; pmem
		call	Ensurememorybackup
		add	esp, 8
		mov	eax, dword_618488
		push	20h		; mode
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [eax]
		push	ecx		; _addr
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4D6C2F
		mov	eax, dword_618488
		add	eax, 20Ch
		jmp	short loc_4D6C37
; ---------------------------------------------------------------------------

loc_4D6C2F:				; CODE XREF: .text:004D6C21j
		mov	eax, dword_618488
		add	eax, 0Ch

loc_4D6C37:				; CODE XREF: .text:004D6C2Dj
		push	eax		; buf
		call	Writememory
		add	esp, 10h
		mov	eax, dword_618488
		push	0		; keephittrace
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [eax]
		push	ecx		; base
		call	Removeanalysis
		add	esp, 0Ch
		call	loc_42521C
		test	eax, eax
		jz	short loc_4D6C84
		mov	eax, [ebp+8]
		mov	ecx, [ebp+8]
		mov	edx, [eax+68h]
		mov	eax, [ecx+44h]
		dec	eax
		cmp	edx, eax
		jge	short loc_4D6C84
		mov	edx, [ebp+8]
		mov	ecx, [edx+68h]
		inc	ecx
		push	ecx		; selected
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Settableselection
		add	esp, 8

loc_4D6C84:				; CODE XREF: .text:004D6C5Dj
					; .text:004D6C6Ej
		mov	eax, dword_618488
		push	8005h		; mode
		push	0		; stackaddr
		mov	edx, [eax+4]
		push	edx		; selsize
		push	0		; dumpaddr
		mov	ecx, [eax]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4D6CA3:				; CODE XREF: .text:004D6BEFj
		call	Resumeallthreads
		mov	eax, 1
		jmp	short loc_4D6CB1
; ---------------------------------------------------------------------------

loc_4D6CAF:				; CODE XREF: .text:004D6B4Bj
		xor	eax, eax

loc_4D6CB1:				; CODE XREF: .text:004D6B0Bj
					; .text:004D6B25j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D6CB8:				; DATA XREF: .data:stru_576E64o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, dword_618488
		test	eax, eax
		jz	short loc_4D6CD6
		cmp	dword ptr [eax+4], 0
		jz	short loc_4D6CD6
		cmp	dword ptr [eax+4], 200h
		jbe	short loc_4D6CDA

loc_4D6CD6:				; CODE XREF: .text:004D6CC5j
					; .text:004D6CCBj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D6CDA:				; CODE XREF: .text:004D6CD4j
		test	edx, edx
		jnz	short loc_4D6CF2
		cmp	dword_61848C, 0
		jz	short loc_4D6CEB
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D6CEB:				; CODE XREF: .text:004D6CE5j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D6CF2:				; CODE XREF: .text:004D6CDCj
		dec	edx
		jnz	short loc_4D6D0E
		push	0		; subaddr
		mov	edx, [eax]
		push	edx		; _addr
		push	offset patch.sorted ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D6D0E:				; CODE XREF: .text:004D6CF3j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D6D14:				; CODE XREF: .text:0042DFE8p
					; .text:00456DD0p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBD0h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4D6D39
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4D6D39
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp+8], eax

loc_4D6D39:				; CODE XREF: .text:004D6D24j
					; .text:004D6D2Aj
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4D6D47
		or	eax, 0FFFFFFFFh
		jmp	loc_4D7039
; ---------------------------------------------------------------------------

loc_4D6D47:				; CODE XREF: .text:004D6D3Dj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4D6D5E
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		mov	[ebp+0Ch], ecx
		mov	eax, [ebp+8]
		mov	edx, [eax+4]
		mov	[ebp+10h], edx

loc_4D6D5E:				; CODE XREF: .text:004D6D4Bj
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		call	Suspendallthreads
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4D7003
; ---------------------------------------------------------------------------

loc_4D6D72:				; CODE XREF: .text:004D700Cj
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4D7000
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4D7000
		mov	eax, [esi]
		mov	edx, eax
		add	edx, [esi+4]
		cmp	edx, [ebp+0Ch]
		jbe	loc_4D7000
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		cmp	eax, ecx
		jnb	loc_4D7000
		test	dword ptr [esi+8], 2005000h
		jz	loc_4D7000
		cmp	dword ptr [esi+60h], 0
		jz	loc_4D7000
		cmp	dword ptr [ebp+0Ch], 400h
		jnb	short loc_4D6DD9
		xor	ebx, ebx
		jmp	short loc_4D6DE2
; ---------------------------------------------------------------------------

loc_4D6DD9:				; CODE XREF: .text:004D6DD3j
		mov	ebx, [ebp+0Ch]
		sub	ebx, 400h

loc_4D6DE2:				; CODE XREF: .text:004D6DD7j
		mov	eax, [esi]
		cmp	ebx, eax
		jnb	short loc_4D6DEC
		mov	ebx, eax
		jmp	short loc_4D6E08
; ---------------------------------------------------------------------------

loc_4D6DEC:				; CODE XREF: .text:004D6DE6j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset patch.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D6E08
		mov	ebx, [eax]
		cmp	ebx, [esi]
		jnb	short loc_4D6E08
		mov	ebx, [esi]

loc_4D6E08:				; CODE XREF: .text:004D6DEAj
					; .text:004D6DFEj ...
		mov	edi, [ebp+0Ch]
		mov	eax, [esi]
		add	edi, [ebp+10h]
		add	eax, [esi+4]
		add	edi, 400h
		cmp	edi, eax
		jbe	short loc_4D6E21
		mov	edi, eax
		jmp	short loc_4D6E37
; ---------------------------------------------------------------------------

loc_4D6E21:				; CODE XREF: .text:004D6E1Bj
		push	0		; subaddr
		push	edi		; _addr
		push	offset patch.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D6E37
		mov	edi, [eax]

loc_4D6E37:				; CODE XREF: .text:004D6E1Fj
					; .text:004D6E33j
		sub	edi, ebx
		mov	[ebp-10h], edi
		mov	edx, ebx
		sub	edx, [esi]
		mov	eax, edx
		add	eax, [esi+60h]
		mov	[ebp-20h], eax
		mov	eax, [esi+64h]	; int
		test	eax, eax
		jnz	short loc_4D6E56
		xor	edx, edx
		mov	[ebp-24h], edx
		jmp	short loc_4D6E5B
; ---------------------------------------------------------------------------

loc_4D6E56:				; CODE XREF: .text:004D6E4Dj
		add	edx, eax	; int
		mov	[ebp-24h], edx

loc_4D6E5B:				; CODE XREF: .text:004D6E54j
		push	0		; flags
		mov	ecx, [ebp-10h]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_4D7000
		push	1		; mode
		mov	eax, [ebp-10h]
		push	eax		; size
		push	ebx		; _addr
		mov	edx, [ebp-1Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-10h]
		jz	short loc_4D6E9D
		mov	ecx, [ebp-1Ch]
		push	ecx		; data
		call	Memfree
		pop	ecx
		jmp	loc_4D7000
; ---------------------------------------------------------------------------

loc_4D6E9D:				; CODE XREF: .text:004D6E8Cj
		xor	esi, esi
		cmp	esi, [ebp-10h]
		jnb	loc_4D6FF6

loc_4D6EA8:				; CODE XREF: .text:004D6FF0j
		mov	eax, [ebp-1Ch]
		mov	ecx, [ebp-20h]
		mov	dl, [eax+esi]
		cmp	dl, [ecx+esi]
		jz	loc_4D6FEC
		cmp	esi, 40h
		jbe	short loc_4D6EC7
		lea	edi, [esi+ebx]
		sub	edi, 40h
		jmp	short loc_4D6EC9
; ---------------------------------------------------------------------------

loc_4D6EC7:				; CODE XREF: .text:004D6EBDj
		mov	edi, ebx

loc_4D6EC9:				; CODE XREF: .text:004D6EC5j
					; .text:004D6EFBj
		mov	eax, [ebp-24h]
		push	eax		; decode
		push	1		; n
		push	edi		; ip
		mov	edx, [ebp-10h]
		push	edx		; size
		push	ebx		; base
		mov	ecx, [ebp-1Ch]
		push	ecx		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	edx, eax
		lea	eax, [esi+ebx]
		cmp	edx, eax
		jnz	short loc_4D6EEE
		mov	edi, edx
		jmp	short loc_4D6EFD
; ---------------------------------------------------------------------------

loc_4D6EEE:				; CODE XREF: .text:004D6EE8j
		lea	eax, [esi+ebx]
		cmp	edx, eax
		ja	short loc_4D6EFD
		cmp	edi, edx
		jz	short loc_4D6EFD
		mov	edi, edx
		jmp	short loc_4D6EC9
; ---------------------------------------------------------------------------

loc_4D6EFD:				; CODE XREF: .text:004D6EECj
					; .text:004D6EF3j ...
		mov	[ebp-18h], edi
		mov	[ebp-14h], edi
		xor	eax, eax
		mov	[ebp-8], eax

loc_4D6F08:				; CODE XREF: .text:004D6F71j
		mov	edx, [ebp-24h]
		push	edx		; decode
		push	1		; n
		push	edi		; ip
		mov	ecx, [ebp-10h]
		push	ecx		; size
		push	ebx		; base
		mov	eax, [ebp-1Ch]
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	edx, eax
		cmp	edi, edx
		jnz	short loc_4D6F2B
		mov	[ebp-18h], edx
		jmp	short loc_4D6F73
; ---------------------------------------------------------------------------

loc_4D6F2B:				; CODE XREF: .text:004D6F24j
		mov	ecx, edx
		sub	ecx, [ebp-14h]
		cmp	ecx, 200h
		jbe	short loc_4D6F3D
		mov	[ebp-18h], edi
		jmp	short loc_4D6F73
; ---------------------------------------------------------------------------

loc_4D6F3D:				; CODE XREF: .text:004D6F36j
		inc	dword ptr [ebp-8]
		mov	eax, edi
		cmp	edx, eax
		jbe	short loc_4D6F6B

loc_4D6F46:				; CODE XREF: .text:004D6F69j
		mov	ecx, eax
		sub	ecx, ebx
		mov	esi, [ebp-1Ch]
		mov	cl, [esi+ecx]
		mov	esi, eax
		sub	esi, ebx
		mov	edi, [ebp-20h]
		cmp	cl, [edi+esi]
		jz	short loc_4D6F66
		xor	eax, eax
		mov	[ebp-8], eax
		mov	[ebp-18h], edx
		jmp	short loc_4D6F6B
; ---------------------------------------------------------------------------

loc_4D6F66:				; CODE XREF: .text:004D6F5Aj
		inc	eax
		cmp	edx, eax
		ja	short loc_4D6F46

loc_4D6F6B:				; CODE XREF: .text:004D6F44j
					; .text:004D6F64j
		cmp	dword ptr [ebp-8], 2
		mov	edi, edx
		jl	short loc_4D6F08

loc_4D6F73:				; CODE XREF: .text:004D6F29j
					; .text:004D6F3Bj
		mov	eax, [ebp-14h]
		mov	[ebp-430h], eax
		mov	esi, [ebp-18h]
		sub	esi, [ebp-14h]
		mov	[ebp-42Ch], esi
		xor	eax, eax
		mov	[ebp-428h], eax
		push	esi		; n
		mov	edx, [ebp-20h]
		mov	edi, [ebp-14h]
		add	edx, edi
		sub	edx, ebx
		push	edx		; src
		lea	eax, [ebp-424h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	esi		; n
		mov	edx, [ebp-1Ch]
		add	edx, edi
		sub	edx, ebx
		push	edx		; src
		lea	ecx, [ebp-224h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	eax, [ebp-430h]
		push	eax		; item
		push	offset patch.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		inc	dword ptr [ebp-0Ch]
		mov	edx, [ebp+8]
		mov	dword ptr [edx+9A8h], 1
		mov	esi, [ebp-18h]
		sub	esi, ebx

loc_4D6FEC:				; CODE XREF: .text:004D6EB4j
		inc	esi
		cmp	esi, [ebp-10h]
		jb	loc_4D6EA8

loc_4D6FF6:				; CODE XREF: .text:004D6EA2j
		mov	eax, [ebp-1Ch]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4D7000:				; CODE XREF: .text:004D6D87j
					; .text:004D6D91j ...
		inc	dword ptr [ebp-4]

loc_4D7003:				; CODE XREF: .text:004D6D6Dj
		mov	edx, [ebp-4]
		cmp	edx, memory.sorted.n
		jl	loc_4D6D72
		call	Resumeallthreads
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_4D7036
		cmp	patch.hw, 0
		jz	short loc_4D7036
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, patch.hw
		push	ecx		; hWnd
		call	InvalidateRect

loc_4D7036:				; CODE XREF: .text:004D701Bj
					; .text:004D7024j
		mov	eax, [ebp-0Ch]

loc_4D7039:				; CODE XREF: .text:004D6D42j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4D7040(wchar_t *buffer, void *s, int,	int, int, int)
loc_4D7040:				; DATA XREF: .text:004D74A4o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF530h
		push	ebx
		push	esi
		mov	eax, [ebp+1Ch]
		xor	ebx, ebx
		add	eax, 4
		mov	esi, [ebp+18h]
		cmp	eax, 0Ah	; switch 11 cases
		ja	loc_4D72C2	; jumptable 004D7066 default case
		jmp	ds:off_4D706D[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4D706D	dd offset loc_4D7099	; DATA XREF: .text:004D7066r
		dd offset loc_4D70A0	; jump table for switch	statement
		dd offset loc_4D70A7
		dd offset loc_4D72C2
		dd offset loc_4D70AE
		dd offset loc_4D7101
		dd offset loc_4D712B
		dd offset loc_4D714F
		dd offset loc_4D721C
		dd offset loc_4D7263
		dd offset loc_4D72A1
; ---------------------------------------------------------------------------

loc_4D7099:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		xor	eax, eax	; jumptable 004D7066 case 0
		jmp	loc_4D72C4
; ---------------------------------------------------------------------------

loc_4D70A0:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		xor	eax, eax	; jumptable 004D7066 case 1
		jmp	loc_4D72C4
; ---------------------------------------------------------------------------

loc_4D70A7:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		xor	eax, eax	; jumptable 004D7066 case 2
		jmp	loc_4D72C4
; ---------------------------------------------------------------------------

loc_4D70AE:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		mov	eax, dword_57DE54 ; jumptable 004D7066 case 4
		cmp	eax, 1
		jnz	short loc_4D70BF
		mov	eax, 2011h
		jmp	short loc_4D70D0
; ---------------------------------------------------------------------------

loc_4D70BF:				; CODE XREF: .text:004D70B6j
		cmp	eax, 2
		jnz	short loc_4D70CB
		mov	eax, 2012h
		jmp	short loc_4D70D0
; ---------------------------------------------------------------------------

loc_4D70CB:				; CODE XREF: .text:004D70C2j
		mov	eax, 2010h

loc_4D70D0:				; CODE XREF: .text:004D70BDj
					; .text:004D70C9j
		cmp	dword_57DE58, 0
		jz	short loc_4D70DC
		or	eax, 20h

loc_4D70DC:				; CODE XREF: .text:004D70D7j
		push	eax		; mode
		mov	edx, [ebp+10h]
		push	edx		; select
		mov	ecx, [ebp+0Ch]
		push	ecx		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	eax, [esi]
		push	eax		; _addr
		mov	edx, [ebp+8]
		push	edx		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4D72C2	; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D7101:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		mov	eax, [esi]	; jumptable 004D7066 case 5
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	loc_4D72C2	; jumptable 004D7066 default case
		add	eax, 0Ch
		push	eax		; src
		push	20h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D72C2	; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D712B:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		mov	eax, [esi+4]	; jumptable 004D7066 case 6
		test	eax, eax
		jbe	loc_4D72C2	; jumptable 004D7066 default case
		push	eax
		push	offset a3i_	; format
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D72C2	; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D714F:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		push	5		; jumptable 004D7066 case 7
		push	200h		; size
		mov	eax, [esi]
		push	eax		; _addr
		lea	edx, [ebp-200h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [esi+4]
		jnb	short loc_4D7191
		push	offset aInvalid	; "Invalid"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D72C2	; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D7191:				; CODE XREF: .text:004D716Bj
		mov	eax, [esi+4]
		push	eax		; n
		lea	edx, [esi+20Ch]
		push	edx		; s2
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D71D9
		push	offset aApplied	; "Applied"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 1
		jmp	loc_4D72C2	; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D71D9:				; CODE XREF: .text:004D71ADj
		mov	edx, [esi+4]
		push	edx		; n
		add	esi, 0Ch
		push	esi		; s2
		lea	eax, [ebp-200h]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4D72C2	; jumptable 004D7066 default case
		push	offset aModified ; "Modified"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4D72C2	; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D721C:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		push	0		; jumptable 004D7066 case 8
		push	0		; reg
		push	11h		; mode
		lea	eax, [ebp-1AD0h]
		push	eax		; da
		push	0		; dec
		mov	edx, [esi]
		push	edx		; ip
		mov	ecx, [esi+4]
		push	ecx		; cmdsize
		add	esi, 20Ch
		push	esi		; cmd
		call	Disasm
		add	esp, 20h
		lea	eax, [ebp-704h]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 1
		jmp	short loc_4D72C2 ; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D7263:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		push	0		; jumptable 004D7066 case 9
		push	0		; reg
		push	11h		; mode
		lea	edx, [ebp-1AD0h]
		push	edx		; da
		push	0		; dec
		mov	ecx, [esi]
		push	ecx		; ip
		mov	eax, [esi+4]
		push	eax		; cmdsize
		add	esi, 0Ch
		push	esi		; cmd
		call	Disasm
		add	esp, 20h
		lea	eax, [ebp-704h]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4D72C2 ; jumptable 004D7066 default case
; ---------------------------------------------------------------------------

loc_4D72A1:				; CODE XREF: .text:004D7066j
					; DATA XREF: .text:off_4D706Do
		push	100h		; jumptable 004D7066 case 10
		mov	eax, [ebp+8]
		push	eax		; comment
		push	0FFFFFFFFh	; typelist
		mov	edx, [esi]
		push	edx		; _addr
		call	Commentaddress
		add	esp, 10h
		mov	ebx, eax
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 200h

loc_4D72C2:				; CODE XREF: .text:004D7060j
					; .text:004D7066j ...
		mov	eax, ebx	; jumptable 004D7066 default case

loc_4D72C4:				; CODE XREF: .text:004D709Bj
					; .text:004D70A2j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D72CC:				; DATA XREF: .text:004D7480o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4D72E0
		sub	eax, 1Bh
		jz	short loc_4D7304
		jmp	short loc_4D7312
; ---------------------------------------------------------------------------

loc_4D72E0:				; CODE XREF: .text:004D72D7j
		push	0		; index
		push	offset loc_4D69F4 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7304:				; CODE XREF: .text:004D72DCj
		or	dword_57FE7C, 10000h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7312:				; CODE XREF: .text:004D72DEj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D7318:				; CODE XREF: .text:0040B0C8p
					; .text:004100F0p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aEipInsideThePa ; "EIP inside the patch"
;__DebugBreak
		cmp	patch.bar.nbar,	0
		jnz	loc_4D74BE
		lea	eax, aPatches_2;[ebx+4BEh]
		push	eax		; src
		push	20h		; n
		push	offset patch	; dest
		call	StrcopyW
		mov	patch.mode, 0F0000h
		lea	edx, aAddress_9;[ebx+4CEh]
		mov	patch.bar.visible, 1
		mov	patch.bar._name,	edx
		lea	ecx, aPatchAddress;[ebx+4DEh]
		xor	eax, eax
		mov	patch.bar.expl,	ecx
		mov	patch.bar.mode,	eax
		lea	edx, aModule_8;[ebx+4FAh]
		mov	patch.bar.defdx, 9
		mov	patch.bar._name+4, edx
		lea	ecx, aNameOfTheMod_3;[ebx+508h]
		xor	eax, eax
		mov	patch.bar.expl+4, ecx
		mov	patch.bar.mode+4, eax
		lea	edx, aSize_1;[ebx+566h]
		mov	patch.bar.defdx+4, 9
		mov	patch.bar._name+8, edx
		lea	ecx, aSizeOfThePatch;[ebx+570h]
		xor	eax, eax
		mov	patch.bar.expl+8, ecx
		mov	patch.bar.mode+8, eax
		lea	edx, aStatus_2;[ebx+5B6h]
		mov	patch.bar.defdx+8, 5
		mov	patch.bar._name+0Ch, edx
		lea	ecx, aStatusOfThePat;[ebx+5C4h]
		xor	eax, eax
		mov	patch.bar.expl+0Ch, ecx
		mov	patch.bar.mode+0Ch, eax
		lea	edx, aModifiedComm_2;[ebx+5ECh]
		mov	patch.bar.defdx+0Ch, 8
		mov	patch.bar._name+10h, edx
		lea	ecx, aFirstModifie_1;[ebx+60Eh]
		xor	eax, eax
		mov	patch.bar.expl+10h, ecx
		mov	patch.bar.mode+10h, eax
		lea	edx, aOriginalComm_1;[ebx+63Ch]
		mov	patch.bar.defdx+10h, 20h
		mov	patch.bar._name+14h, edx
		lea	ecx, aFirstOrigina_1;[ebx+65Eh]
		xor	eax, eax
		mov	patch.bar.expl+14h, ecx
		mov	patch.bar.mode+14h, eax
		lea	edx, aComments_3;[ebx+68Ch]
		mov	patch.bar.defdx+14h, 20h
		lea	ecx, aComments_3;[ebx+68Ch]
		mov	patch.bar._name+18h, edx
		xor	eax, eax
		mov	patch.bar.expl+18h, ecx
		mov	patch.bar.mode+18h, eax
		mov	patch.bar.defdx+18h, 100h
		mov	patch.bar.nbar,	7
		xor	edx, edx
		mov	patch.tabfunc, offset loc_4D72CC
		xor	ecx, ecx
		mov	patch.custommode, edx
		xor	eax, eax
		mov	patch.customdata, ecx
		mov	patch.updatefunc, eax
		add	esp, 0Ch
		xor	edx, edx
		mov	patch.drawfunc,	offset loc_4D7040
		mov	patch.tableselfunc, edx
		mov	patch.menu, offset stru_576E64

loc_4D74BE:				; CODE XREF: .text:004D7328j
		cmp	patch.hw, 0
		jnz	short loc_4D74FB
		lea	ecx, aPatches_2;[ebx+4BEh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	eax, aIco_p_0;[ebx+69Eh]
		push	eax		; icon
		mov	edx, g_hInstance
		push	edx		; hi
		mov	ecx, patch.bar.nbar
		push	ecx		; ncolumn
		push	0		; nrow
		push	offset patch	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4D750A
; ---------------------------------------------------------------------------

loc_4D74FB:				; CODE XREF: .text:004D74C5j
		push	0		; bErase
		push	0		; lpRect
		mov	eax, patch.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_4D750A:				; CODE XREF: .text:004D74F9j
		cmp	patch.hparent, 0
		jz	short loc_4D755F
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D755F
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4D7536
		push	0		; lParam
		mov	edx, patch.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4D7536:				; CODE XREF: .text:004D7520j
		mov	ecx, patch.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4D7553
		push	9		; nCmdShow
		mov	eax, patch.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4D7553:				; CODE XREF: .text:004D7544j
		mov	edx, patch.hw
		push	edx		; hWnd
		call	SetFocus

loc_4D755F:				; CODE XREF: .text:004D7511j
					; .text:004D7517j
		mov	eax, patch.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D7568:				; DATA XREF: .text:004D75D9o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	thread.sorted.n, 0
		jnz	short loc_4D7580
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7580:				; CODE XREF: .text:004D7579j
		test	eax, eax
		jnz	short loc_4D75A7
		push	8C00h		; mode
		push	ebx		; threadid
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	Decodethreadname
		add	esp, 0Ch
		mov	eax, 2
		cmp	ebx, sehchain.custommode
		jz	short loc_4D75BB
		dec	eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D75A7:				; CODE XREF: .text:004D7582j
		dec	eax
		jnz	short loc_4D75B9
		push	ebx
		call	loc_4D7BF0
		pop	ecx
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D75B9:				; CODE XREF: .text:004D75A8j
		xor	eax, eax

loc_4D75BB:				; CODE XREF: .text:004D75A1j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4D75C0:				; DATA XREF: .data:stru_577600o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		xor	eax, eax
		mov	dword_618494, eax
		xor	edx, edx
		mov	dword_618498, edx
		push	1
		push	offset loc_4D7568
		call	loc_45BAAC
		add	esp, 8
		test	ebx, ebx
		jz	short loc_4D75F3
		cmp	process, 0
		jnz	short loc_4D75FA

loc_4D75F3:				; CODE XREF: .text:004D75E8j
		mov	eax, 1
		jmp	short loc_4D765F
; ---------------------------------------------------------------------------

loc_4D75FA:				; CODE XREF: .text:004D75F1j
		mov	edx, sehchain.sorted.selected
		push	edx		; index
		push	offset sehchain.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_618494, eax
		mov	eax, dword_618494
		test	eax, eax
		jz	short loc_4D763E
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4D763E
		mov	edx, [eax+10h]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4D763E
		mov	ecx, dword_618494
		mov	eax, [ecx+10h]
		mov	dword_618498, eax

loc_4D763E:				; CODE XREF: .text:004D761Aj
					; .text:004D7620j ...
		mov	esi, [ebx+21Ch]
		mov	dword_61849C, esi
		call	Getcputhreadid
		cmp	esi, eax
		jnz	short loc_4D765A
		xor	eax, eax
		mov	dword_61849C, eax

loc_4D765A:				; CODE XREF: .text:004D7651j
		mov	eax, 1

loc_4D765F:				; CODE XREF: .text:004D75F8j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D7664:				; DATA XREF: .data:stru_577600o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_4D7688
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D767D
		cmp	process, 0
		jnz	short loc_4D7681

loc_4D767D:				; CODE XREF: .text:004D7672j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7681:				; CODE XREF: .text:004D767Bj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D7688:				; CODE XREF: .text:004D766Cj
		dec	eax
		jnz	short loc_4D769A
		push	0
		call	loc_4D7BF0
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D769A:				; CODE XREF: .text:004D7689j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_4D76A0
loc_4D76A0:				; DATA XREF: .text:004D7B4Fo
					; .text:004D7B6Co ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, dword_618494
		test	eax, eax
		jz	short loc_4D76C2
		mov	edx, [eax+0Ch]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4D76C9

loc_4D76C2:				; CODE XREF: .text:004D76B2j
		xor	eax, eax
		jmp	loc_4D7751
; ---------------------------------------------------------------------------

loc_4D76C9:				; CODE XREF: .text:004D76C0j
		test	esi, esi
		jnz	short loc_4D76FC
		test	ebx, ebx
		jnz	short loc_4D76E1
		mov	edx, dword_618494
		test	byte ptr [edx+0Ah], 1
		jnz	short loc_4D76E1
		xor	eax, eax
		jmp	short loc_4D7751
; ---------------------------------------------------------------------------

loc_4D76E1:				; CODE XREF: .text:004D76CFj
					; .text:004D76DBj
		test	ebx, ebx
		jz	short loc_4D76F5
		mov	edx, dword_618494
		test	byte ptr [edx+0Ah], 1
		jz	short loc_4D76F5
		xor	eax, eax
		jmp	short loc_4D7751
; ---------------------------------------------------------------------------

loc_4D76F5:				; CODE XREF: .text:004D76E3j
					; .text:004D76EFj
		mov	eax, 1
		jmp	short loc_4D7751
; ---------------------------------------------------------------------------

loc_4D76FC:				; CODE XREF: .text:004D76CBj
		dec	esi
		jnz	short loc_4D774F
		test	ebx, ebx
		jnz	short loc_4D7728
		mov	edx, dword_618494
		push	90h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	ecx, [edx+0Ch]
		mov	eax, dword_61849C
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	eax		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4D774B
; ---------------------------------------------------------------------------

loc_4D7728:				; CODE XREF: .text:004D7701j
		mov	edx, dword_618494
		push	100h		; mode
		mov	eax, dword_61849C
		mov	ecx, [edx+0Ch]
		push	ecx		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	eax		; threadid
		call	Setcpu
		add	esp, 18h

loc_4D774B:				; CODE XREF: .text:004D7726j
		xor	eax, eax
		jmp	short loc_4D7751
; ---------------------------------------------------------------------------

loc_4D774F:				; CODE XREF: .text:004D76FDj
		xor	eax, eax

loc_4D7751:				; CODE XREF: .text:004D76C4j
					; .text:004D76DFj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
