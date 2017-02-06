.code

; int __cdecl tabfunc(struct t_table *pt, HWND,	UINT, WPARAM, LPARAM)
tabfunc:				; DATA XREF: .text:0047774Eo
					; .text:004778D7o ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFA0h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4BE990
		mov	eax, [ebp+8]
		mov	ebx, [eax+220h]
		test	ebx, ebx
		jnz	short loc_4BE997

loc_4BE990:				; CODE XREF: .text:004BE981j
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BE997:				; CODE XREF: .text:004BE98Ej
		mov	edi, [ebx+8]
		mov	eax, edi
		mov	edx, edi
		and	eax, 0FF00h
		and	edx, 0FFh
		shr	eax, 8
		mov	[ebp-30h], edx
		mov	ecx, eax
		mov	esi, edi
		imul	ecx, [ebp-30h]
		and	esi, 3F0000h
		mov	eax, [ebp+10h]
		cmp	eax, 470h
		jg	short loc_4BEA2F
		jz	loc_4BEE12
		cmp	eax, 468h
		jg	short loc_4BEA07
		jz	loc_4BF07D
		sub	eax, 2
		jz	loc_4BEAB0
		sub	eax, 0Eh
		jz	loc_4BEB05
		sub	eax, 0F2h
		jz	loc_4BEB28
		sub	eax, 364h
		jz	loc_4BEFE9
		jmp	loc_4C0455	; jumptable 004BEA3D default case
; ---------------------------------------------------------------------------

loc_4BEA07:				; CODE XREF: .text:004BE9D2j
		sub	eax, 469h
		jz	loc_4BF249
		dec	eax
		jz	loc_4BF38F
		dec	eax
		sub	eax, 2
		jb	loc_4BFB3C
		dec	eax
		jz	loc_4BF430
		jmp	loc_4C0455	; jumptable 004BEA3D default case
; ---------------------------------------------------------------------------

loc_4BEA2F:				; CODE XREF: .text:004BE9C5j
		add	eax, 0FFFFFB8Fh	; switch 27 cases
		cmp	eax, 1Ah
		ja	loc_4C0455	; jumptable 004BEA3D default case
		jmp	ds:off_4BEA44[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4BEA44	dd offset loc_4BFDE1	; DATA XREF: .text:004BEA3Dr
		dd offset loc_4C025A	; jump table for switch	statement
		dd offset loc_4C0455
		dd offset loc_4C0357
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C0393
		dd offset loc_4C0455
		dd offset loc_4C0455
		dd offset loc_4C03A7
		dd offset loc_4C03D8
		dd offset loc_4C0455
		dd offset loc_4C0414
		dd offset loc_4C0433
; ---------------------------------------------------------------------------

loc_4BEAB0:				; CODE XREF: .text:004BE9DDj
		mov	edx, [ebp+8]
		test	byte ptr [edx+42h], 10h
		jz	short loc_4BEAD8
		and	edi, 3FFFFFh
		push	edi		; arglist
		push	(offset	aS_08x_0+6) ; format
		push	offset aLocal_0	; "Local"
		mov	ecx, [ebp+8]
		push	ecx		; section
		push	0		; file
		call	Writetoini
		add	esp, 14h

loc_4BEAD8:				; CODE XREF: .text:004BEAB7j
		mov	eax, [ebp+8]
		test	byte ptr [eax+43h], 10h
		jnz	loc_4C0459
		push	ebx
		call	loc_4BE918
		pop	ecx
		mov	edx, [ebp+8]
		add	edx, 44h
		push	edx		; sd
		call	Destroysorteddata
		pop	ecx
		push	ebx		; data
		call	Memfree
		pop	ecx
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEB05:				; CODE XREF: .text:004BE9E6j
		test	byte ptr [ebx+0Ch], 8
		jnz	short loc_4BEB21
		push	1
		push	ebx
		call	loc_4BD73C
		add	esp, 8
		dec	eax
		jnz	short loc_4BEB21
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BEB21:				; CODE XREF: .text:004BEB09j
					; .text:004BEB17j
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BEB28:				; CODE XREF: .text:004BE9F1j
		cmp	dword ptr [ebp+14h], 1Bh
		jnz	short loc_4BEB68
		test	edi, 800000h
		jz	short loc_4BEB68
		mov	edx, [ebp+8]
		test	byte ptr [edx+43h], 10h
		jnz	short loc_4BEB68
		push	0		; lParam
		push	0		; wParam
		push	224h		; Msg
		mov	ecx, hwclient
		push	ecx		; hWnd
		call	SendMessageW
		mov	eax, [ebp+8]
		mov	edx, [eax+224h]
		push	edx		; hWnd
		call	DestroyWindow
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEB68:				; CODE XREF: .text:004BEB2Cj
					; .text:004BEB34j ...
		cmp	esi, 0C0000h
		jz	short loc_4BEB7C
		cmp	esi, 0D0000h
		jnz	loc_4BEC54

loc_4BEB7C:				; CODE XREF: .text:004BEB6Ej
		mov	cx, [ebp+14h]
		push	ecx		; c
		call	_iswalpha
		pop	ecx
		test	eax, eax
		jnz	short loc_4BEB92
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BEB92:				; CODE XREF: .text:004BEB89j
		mov	edx, [ebp+14h]
		mov	letter,	edx
		cmp	dword_5BE6B8, 0
		jz	short loc_4BEBB6
		cmp	dword_5BE6B8, 3
		jnz	short loc_4BEBD5
		cmp	dword_55216C, 0
		jnz	short loc_4BEBD5

loc_4BEBB6:				; CODE XREF: .text:004BEBA2j
		push	2		; index
		push	offset loc_4B3C2C ; menufunc
		mov	ecx, [ebp+8]
		mov	eax, [ecx+218h]
		push	eax		; pm
		mov	edx, [ebp+8]
		push	edx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4BEC47
; ---------------------------------------------------------------------------

loc_4BEBD5:				; CODE XREF: .text:004BEBABj
					; .text:004BEBB4j
		cmp	dword_5BE6B8, 1
		jz	short loc_4BEBF0
		cmp	dword_5BE6B8, 3
		jnz	short loc_4BEC0F
		cmp	dword_55216C, 1
		jnz	short loc_4BEC0F

loc_4BEBF0:				; CODE XREF: .text:004BEBDCj
		push	0		; index
		push	offset loc_4B3F1C ; menufunc
		mov	ecx, [ebp+8]
		mov	eax, [ecx+218h]
		push	eax		; pm
		mov	edx, [ebp+8]
		push	edx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4BEC47
; ---------------------------------------------------------------------------

loc_4BEC0F:				; CODE XREF: .text:004BEBE5j
					; .text:004BEBEEj
		cmp	dword_5BE6B8, 2
		jz	short loc_4BEC2A
		cmp	dword_5BE6B8, 3
		jnz	short loc_4BEC47
		cmp	dword_55216C, 2
		jnz	short loc_4BEC47

loc_4BEC2A:				; CODE XREF: .text:004BEC16j
		push	5		; index
		push	offset loc_4B3C2C ; menufunc
		mov	ecx, [ebp+8]
		mov	eax, [ecx+218h]
		push	eax		; pm
		mov	edx, [ebp+8]
		push	edx		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4BEC47:				; CODE XREF: .text:004BEBD3j
					; .text:004BEC0Dj ...
		xor	ecx, ecx
		mov	letter,	ecx
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEC54:				; CODE XREF: .text:004BEB76j
		cmp	esi, 10000h
		jz	short loc_4BEC7C
		cmp	esi, 20000h
		jz	short loc_4BEC7C
		cmp	esi, 0E0000h
		jz	short loc_4BEC7C
		cmp	esi, 30000h
		jz	short loc_4BEC7C
		cmp	esi, 40000h
		jnz	short loc_4BECD5

loc_4BEC7C:				; CODE XREF: .text:004BEC5Aj
					; .text:004BEC62j ...
		cmp	dword ptr [ebp+14h], 0Dh
		jz	short loc_4BEC98
		mov	ax, [ebp+14h]
		push	eax		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4BEC98
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BEC98:				; CODE XREF: .text:004BEC80j
					; .text:004BEC8Fj
		cmp	dword ptr [ebp+14h], 0Dh
		jnz	short loc_4BECA2
		xor	edx, edx
		jmp	short loc_4BECA5
; ---------------------------------------------------------------------------

loc_4BECA2:				; CODE XREF: .text:004BEC9Cj
		mov	edx, [ebp+14h]

loc_4BECA5:				; CODE XREF: .text:004BECA0j
		push	0		; index
		push	offset loc_4B1A74 ; menufunc
		mov	eax, [ebp+8]
		mov	letter,	edx
		mov	ecx, [eax+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		xor	edx, edx
		mov	letter,	edx
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BECD5:				; CODE XREF: .text:004BEC7Aj
		cmp	esi, 50000h
		jz	short loc_4BECED
		cmp	esi, 60000h
		jz	short loc_4BECED
		cmp	esi, 80000h
		jnz	short loc_4BED4B

loc_4BECED:				; CODE XREF: .text:004BECDBj
					; .text:004BECE3j
		mov	cx, [ebp+14h]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4BED0F
		cmp	dword ptr [ebp+14h], 2Dh
		jz	short loc_4BED0F
		cmp	dword ptr [ebp+14h], 0Dh
		jz	short loc_4BED0F
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BED0F:				; CODE XREF: .text:004BECFAj
					; .text:004BED00j ...
		cmp	dword ptr [ebp+14h], 0Dh
		jnz	short loc_4BED19
		xor	edx, edx
		jmp	short loc_4BED1C
; ---------------------------------------------------------------------------

loc_4BED19:				; CODE XREF: .text:004BED13j
		mov	edx, [ebp+14h]

loc_4BED1C:				; CODE XREF: .text:004BED17j
		push	edi		; index
		push	offset loc_4B1E48 ; menufunc
		mov	eax, [ebp+8]
		mov	letter,	edx
		mov	ecx, [eax+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		xor	edx, edx
		mov	letter,	edx
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BED4B:				; CODE XREF: .text:004BECEBj
		cmp	esi, 70000h
		jnz	short loc_4BEDAB
		mov	cx, [ebp+14h]
		push	ecx		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4BED6F
		cmp	dword ptr [ebp+14h], 0Dh
		jz	short loc_4BED6F
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BED6F:				; CODE XREF: .text:004BED60j
					; .text:004BED66j
		cmp	dword ptr [ebp+14h], 0Dh
		jnz	short loc_4BED79
		xor	edx, edx
		jmp	short loc_4BED7C
; ---------------------------------------------------------------------------

loc_4BED79:				; CODE XREF: .text:004BED73j
		mov	edx, [ebp+14h]

loc_4BED7C:				; CODE XREF: .text:004BED77j
		push	edi		; index
		push	offset loc_4B1E48 ; menufunc
		mov	eax, [ebp+8]
		mov	letter,	edx
		mov	ecx, [eax+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		xor	edx, edx
		mov	letter,	edx
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEDAB:				; CODE XREF: .text:004BED51j
		cmp	esi, 90000h
		jz	short loc_4BEDC3
		cmp	esi, 0A0000h
		jz	short loc_4BEDC3
		cmp	esi, 0B0000h
		jnz	short loc_4BEE0B

loc_4BEDC3:				; CODE XREF: .text:004BEDB1j
					; .text:004BEDB9j
		mov	cx, [ebp+14h]
		push	ecx		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4BEDD9
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BEDD9:				; CODE XREF: .text:004BEDD0j
		mov	edx, [ebp+14h]
		push	edi		; index
		push	offset loc_4B1E48 ; menufunc
		mov	letter,	edx
		mov	ecx, [ebp+8]
		mov	eax, [ecx+218h]
		push	eax		; pm
		mov	edx, [ebp+8]
		push	edx		; pt
		call	Callmenufunction
		add	esp, 10h
		xor	ecx, ecx
		mov	letter,	ecx
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEE0B:				; CODE XREF: .text:004BEDC1j
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BEE12:				; CODE XREF: .text:004BE9C7j
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4BEE40
		xor	edi, 8000000h
		push	edi		; dumptype
		push	ebx		; pd
		call	Setdumptype
		add	esp, 8
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+8]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	InvalidateRect
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEE40:				; CODE XREF: .text:004BEE16j
		cmp	dword ptr [ebp+14h], 1
		jz	short loc_4BEE50
		cmp	dword ptr [ebp+14h], 2
		jnz	loc_4BEF27

loc_4BEE50:				; CODE XREF: .text:004BEE44j
		mov	esi, edi
		and	esi, 3FFFFFh
		cmp	dword_5BE6BC, 0
		jz	short loc_4BEE7D
		cmp	esi, 41002h
		jnz	short loc_4BEE70
		mov	esi, 42002h
		jmp	short loc_4BEE7D
; ---------------------------------------------------------------------------

loc_4BEE70:				; CODE XREF: .text:004BEE67j
		cmp	esi, 42002h
		jnz	short loc_4BEE7D
		mov	esi, 44002h

loc_4BEE7D:				; CODE XREF: .text:004BEE5Fj
					; .text:004BEE6Ej ...
		test	edi, 20000000h
		jz	short loc_4BEE93
		mov	dword ptr [ebp-8], 10h
		mov	eax, offset dword_5520AC
		jmp	short loc_4BEE9F
; ---------------------------------------------------------------------------

loc_4BEE93:				; CODE XREF: .text:004BEE83j
		mov	dword ptr [ebp-8], 16h
		mov	eax, offset dword_551FA4

loc_4BEE9F:				; CODE XREF: .text:004BEE91j
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jge	short loc_4BEEBE

loc_4BEEAC:				; CODE XREF: .text:004BEEBCj
		cmp	esi, [eax]
		jz	short loc_4BEEBE
		inc	dword ptr [ebp-4]
		add	eax, 0Ch
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jl	short loc_4BEEAC

loc_4BEEBE:				; CODE XREF: .text:004BEEAAj
					; .text:004BEEAEj
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jge	loc_4C0459
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_4BEED5
		mov	esi, [eax+4]
		jmp	short loc_4BEED8
; ---------------------------------------------------------------------------

loc_4BEED5:				; CODE XREF: .text:004BEECEj
		mov	esi, [eax+8]

loc_4BEED8:				; CODE XREF: .text:004BEED3j
		cmp	dword_5BE6BC, 0
		jz	short loc_4BEEFD
		cmp	esi, 42002h
		jnz	short loc_4BEEF0
		mov	esi, 41002h
		jmp	short loc_4BEEFD
; ---------------------------------------------------------------------------

loc_4BEEF0:				; CODE XREF: .text:004BEEE7j
		cmp	esi, 44002h
		jnz	short loc_4BEEFD
		mov	esi, 42002h

loc_4BEEFD:				; CODE XREF: .text:004BEEDFj
					; .text:004BEEEEj ...
		and	edi, 3C000000h
		or	esi, edi
		push	esi		; dumptype
		push	ebx		; pd
		call	Setdumptype
		add	esp, 8
		push	0		; bErase
		push	0		; lpRect
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	InvalidateRect
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEF27:				; CODE XREF: .text:004BEE4Aj
		cmp	dword ptr [ebp+14h], 3
		jnz	loc_4C0459
		cmp	esi, 0C0000h
		jnz	loc_4C0459
		test	byte ptr [ebx+0Eh], 1
		jz	loc_4C0459
		mov	esi, edi
		and	esi, 3400000h
		and	edi, 0FCBFFFFFh
		test	esi, esi
		jnz	short loc_4BEF7F
		call	loc_4C49A0
		test	eax, eax
		jz	short loc_4BEF6A
		or	edi, 400000h
		jmp	short loc_4BEFC7
; ---------------------------------------------------------------------------

loc_4BEF6A:				; CODE XREF: .text:004BEF60j
		cmp	g_IsUseDbghelp,	0
		jz	loc_4C0459
		or	edi, 1000000h
		jmp	short loc_4BEFC7
; ---------------------------------------------------------------------------

loc_4BEF7F:				; CODE XREF: .text:004BEF57j
		cmp	esi, 400000h
		jnz	short loc_4BEF9D
		cmp	g_IsUseDbghelp,	0
		jz	short loc_4BEF98
		or	edi, 1000000h
		jmp	short loc_4BEFC7
; ---------------------------------------------------------------------------

loc_4BEF98:				; CODE XREF: .text:004BEF8Ej
		or	edi, 0
		jmp	short loc_4BEFC7
; ---------------------------------------------------------------------------

loc_4BEF9D:				; CODE XREF: .text:004BEF85j
		cmp	esi, 1000000h
		jnz	short loc_4BEFC4
		call	loc_4C49A0
		test	eax, eax
		jz	short loc_4BEFB7
		cmp	g_IsUseDbghelp,	0
		jnz	short loc_4BEFBC

loc_4BEFB7:				; CODE XREF: .text:004BEFACj
		or	edi, 0
		jmp	short loc_4BEFC7
; ---------------------------------------------------------------------------

loc_4BEFBC:				; CODE XREF: .text:004BEFB5j
		or	edi, 1400000h
		jmp	short loc_4BEFC7
; ---------------------------------------------------------------------------

loc_4BEFC4:				; CODE XREF: .text:004BEFA3j
		or	edi, 0

loc_4BEFC7:				; CODE XREF: .text:004BEF68j
					; .text:004BEF7Dj ...
		push	edi		; dumptype
		push	ebx		; pd
		call	Setdumptype
		add	esp, 8
		push	0		; bErase
		push	0		; lpRect
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	InvalidateRect
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BEFE9:				; CODE XREF: .text:004BE9FCj
		mov	dword ptr [ebp-60h], 1Ch
		mov	dword ptr [ebp-5Ch], 0Fh
		xor	eax, eax
		cmp	esi, 0C0000h
		mov	[ebp-58h], eax
		jz	short loc_4BF00C
		cmp	esi, 0D0000h
		jnz	short loc_4BF02F

loc_4BF00C:				; CODE XREF: .text:004BF002j
		mov	edx, [ebx+284h]
		xor	ecx, ecx
		sub	edx, [ebx]
		mov	[ebp-4Ch], edx
		mov	[ebp-50h], ecx
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4BF026
		xor	eax, eax
		jmp	short loc_4BF02A
; ---------------------------------------------------------------------------

loc_4BF026:				; CODE XREF: .text:004BF020j
		mov	eax, [ebx+4]
		dec	eax

loc_4BF02A:				; CODE XREF: .text:004BF024j
		mov	[ebp-54h], eax
		jmp	short loc_4BF067
; ---------------------------------------------------------------------------

loc_4BF02F:				; CODE XREF: .text:004BF00Aj
		mov	edi, [ebx]
		mov	eax, [ebx+284h]
		sub	eax, edi
		xor	edx, edx
		add	eax, ecx
		dec	eax
		div	ecx
		mov	esi, eax
		mov	eax, edi
		mov	[ebp-4Ch], esi
		xor	edx, edx
		add	eax, [ebx+4]
		add	esi, [ebp+14h]
		sub	eax, [ebx+284h]
		dec	esi
		add	eax, ecx
		dec	eax
		div	ecx
		add	eax, esi
		dec	eax
		mov	[ebp-54h], eax
		mov	ecx, [ebp+14h]
		mov	[ebp-50h], ecx

loc_4BF067:				; CODE XREF: .text:004BF02Dj
		push	1		; BOOL
		lea	eax, [ebp-60h]
		push	eax		; LPCSCROLLINFO
		push	1		; int
		mov	edx, [ebp+0Ch]
		push	edx		; HWND
		call	SetScrollInfo
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BF07D:				; CODE XREF: .text:004BE9D4j
		cmp	esi, 80000h
		jg	short loc_4BF0D3
		jz	loc_4BF11B
		cmp	esi, 40000h
		jg	short loc_4BF0B6
		jz	loc_4BF11B
		sub	esi, 10000h
		jz	short loc_4BF11B
		sub	esi, 10000h
		jz	short loc_4BF11B
		sub	esi, 10000h
		jz	short loc_4BF11B
		jmp	loc_4BF236
; ---------------------------------------------------------------------------

loc_4BF0B6:				; CODE XREF: .text:004BF091j
		sub	esi, 50000h
		jz	short loc_4BF11B
		sub	esi, 10000h
		jz	short loc_4BF11B
		sub	esi, 10000h
		jz	short loc_4BF11B
		jmp	loc_4BF236
; ---------------------------------------------------------------------------

loc_4BF0D3:				; CODE XREF: .text:004BF083j
		cmp	esi, 0C0000h
		jg	short loc_4BF0FE
		jz	loc_4BF18E
		sub	esi, 90000h
		jz	short loc_4BF11B
		sub	esi, 10000h
		jz	short loc_4BF11B
		sub	esi, 10000h
		jz	short loc_4BF11B
		jmp	loc_4BF236
; ---------------------------------------------------------------------------

loc_4BF0FE:				; CODE XREF: .text:004BF0D9j
		sub	esi, 0D0000h
		jz	loc_4BF18E
		sub	esi, 10000h
		jz	loc_4BF206
		jmp	loc_4BF236
; ---------------------------------------------------------------------------

loc_4BF11B:				; CODE XREF: .text:004BF085j
					; .text:004BF093j ...
		cmp	dword ptr [ebp+18h], 0
		jge	short loc_4BF147
		mov	eax, [ebp+18h]
		neg	eax
		imul	ecx
		mov	edx, [ebx+284h]
		sub	edx, [ebx]
		cmp	eax, edx
		jbe	short loc_4BF13C
		mov	eax, [ebx+284h]
		sub	eax, [ebx]

loc_4BF13C:				; CODE XREF: .text:004BF132j
		sub	[ebx+284h], eax
		jmp	loc_4BF238
; ---------------------------------------------------------------------------

loc_4BF147:				; CODE XREF: .text:004BF11Fj
		mov	eax, [ebp+18h]
		mov	esi, [ebx+284h]
		imul	ecx
		mov	edx, [ebx]
		add	esi, eax
		add	edx, [ebx+4]
		cmp	edx, esi
		ja	short loc_4BF183
		mov	eax, [ebx]
		add	eax, [ebx+4]
		cmp	eax, [ebx+284h]
		ja	short loc_4BF16E
		xor	eax, eax
		jmp	short loc_4BF183
; ---------------------------------------------------------------------------

loc_4BF16E:				; CODE XREF: .text:004BF168j
		mov	eax, [ebx]
		add	eax, [ebx+4]
		sub	eax, [ebx+284h]
		add	eax, ecx
		dec	eax
		xor	edx, edx
		div	ecx
		dec	eax
		imul	ecx

loc_4BF183:				; CODE XREF: .text:004BF15Bj
					; .text:004BF16Cj
		add	[ebx+284h], eax
		jmp	loc_4BF238
; ---------------------------------------------------------------------------

loc_4BF18E:				; CODE XREF: .text:004BF0DBj
					; .text:004BF104j
		cmp	dword ptr [ebp+18h], 0
		jge	short loc_4BF1BC
		mov	ecx, [ebp+18h]
		neg	ecx
		push	ecx		; n
		mov	eax, [ebx+284h]
		push	eax		; _addr
		push	ebx		; pd
		call	Dumpback
		add	esp, 0Ch
		push	eax
		mov	eax, [ebx+284h]
		pop	edx
		sub	eax, edx
		sub	[ebx+284h], eax
		jmp	short loc_4BF238
; ---------------------------------------------------------------------------

loc_4BF1BC:				; CODE XREF: .text:004BF192j
		mov	ecx, [ebp+18h]
		push	ecx		; n
		mov	eax, [ebx+284h]
		push	eax		; _addr
		push	ebx		; pd
		call	Dumpforward
		sub	eax, [ebx+284h]
		mov	edx, [ebx]
		add	edx, [ebx+4]
		mov	ecx, [ebx+284h]
		add	ecx, eax
		add	esp, 0Ch
		cmp	edx, ecx
		ja	short loc_4BF1FE
		push	1		; n
		mov	eax, [ebx]
		add	eax, [ebx+4]
		push	eax		; _addr
		push	ebx		; pd
		call	Dumpback
		add	esp, 0Ch
		sub	eax, [ebx+284h]

loc_4BF1FE:				; CODE XREF: .text:004BF1E5j
		add	[ebx+284h], eax
		jmp	short loc_4BF238
; ---------------------------------------------------------------------------

loc_4BF206:				; CODE XREF: .text:004BF110j
		mov	edx, [ebx+284h]
		lea	eax, [ebx+284h]
		mov	[ebp-24h], edx
		push	0
		mov	ecx, [ebp+18h]
		push	ecx
		push	0
		push	eax
		mov	edx, [ebp+14h]
		push	edx
		push	ebx
		call	loc_4AEA14
		add	esp, 18h
		mov	eax, [ebx+284h]
		sub	eax, [ebp-24h]
		jmp	short loc_4BF238
; ---------------------------------------------------------------------------

loc_4BF236:				; CODE XREF: .text:004BF0B1j
					; .text:004BF0CEj ...
		xor	eax, eax

loc_4BF238:				; CODE XREF: .text:004BF142j
					; .text:004BF189j ...
		or	edx, 0FFFFFFFFh
		test	eax, eax
		jz	short loc_4BF242
		add	edx, 2

loc_4BF242:				; CODE XREF: .text:004BF23Dj
		mov	eax, edx
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF249:				; CODE XREF: .text:004BEA0Cj
		cmp	esi, 80000h
		jg	short loc_4BF29B
		jz	loc_4BF2DB
		cmp	esi, 40000h
		jg	short loc_4BF27E
		jz	short loc_4BF2DB
		sub	esi, 10000h
		jz	short loc_4BF2DB
		sub	esi, 10000h
		jz	short loc_4BF2DB
		sub	esi, 10000h
		jz	short loc_4BF2DB
		jmp	loc_4BF37C
; ---------------------------------------------------------------------------

loc_4BF27E:				; CODE XREF: .text:004BF25Dj
		sub	esi, 50000h
		jz	short loc_4BF2DB
		sub	esi, 10000h
		jz	short loc_4BF2DB
		sub	esi, 10000h
		jz	short loc_4BF2DB
		jmp	loc_4BF37C
; ---------------------------------------------------------------------------

loc_4BF29B:				; CODE XREF: .text:004BF24Fj
		cmp	esi, 0C0000h
		jg	short loc_4BF2C6
		jz	loc_4BF34D
		sub	esi, 90000h
		jz	short loc_4BF2DB
		sub	esi, 10000h
		jz	short loc_4BF2DB
		sub	esi, 10000h
		jz	short loc_4BF2DB
		jmp	loc_4BF37C
; ---------------------------------------------------------------------------

loc_4BF2C6:				; CODE XREF: .text:004BF2A1j
		sub	esi, 0D0000h
		jz	short loc_4BF34D
		sub	esi, 10000h
		jz	short loc_4BF2DB
		jmp	loc_4BF37C
; ---------------------------------------------------------------------------

loc_4BF2DB:				; CODE XREF: .text:004BF251j
					; .text:004BF25Fj ...
		mov	eax, [ebx+284h]
		sub	eax, [ebx]
		add	eax, ecx
		dec	eax
		xor	edx, edx
		div	ecx
		mov	[ebp-3Ch], eax
		mov	eax, [ebp+18h]
		cmp	eax, [ebp-3Ch]
		jnb	short loc_4BF319
		mov	eax, [ebp-3Ch]
		sub	eax, [ebp+18h]
		imul	ecx
		mov	edx, [ebx+284h]
		sub	edx, [ebx]
		cmp	eax, edx
		jbe	short loc_4BF311
		mov	eax, [ebx+284h]
		sub	eax, [ebx]

loc_4BF311:				; CODE XREF: .text:004BF307j
		sub	[ebx+284h], eax
		jmp	short loc_4BF37E
; ---------------------------------------------------------------------------

loc_4BF319:				; CODE XREF: .text:004BF2F3j
		mov	eax, [ebp+18h]
		sub	eax, [ebp-3Ch]
		imul	ecx
		mov	edx, [ebx]
		add	edx, [ebx+4]
		sub	edx, [ebx+284h]
		cmp	eax, edx
		jb	short loc_4BF345
		mov	eax, [ebx]
		add	eax, [ebx+4]
		sub	eax, [ebx+284h]
		add	eax, ecx
		dec	eax
		xor	edx, edx
		div	ecx
		dec	eax
		imul	ecx

loc_4BF345:				; CODE XREF: .text:004BF32Ej
		add	[ebx+284h], eax
		jmp	short loc_4BF37E
; ---------------------------------------------------------------------------

loc_4BF34D:				; CODE XREF: .text:004BF2A3j
					; .text:004BF2CCj
		mov	ecx, [ebx]
		add	ecx, [ebp+18h]
		inc	ecx
		mov	[ebp-24h], ecx
		push	1		; n
		mov	eax, [ebp-24h]
		push	eax		; _addr
		push	ebx		; pd
		call	Dumpback
		add	esp, 0Ch
		mov	[ebp-24h], eax
		mov	eax, [ebp-24h]
		sub	eax, [ebx+284h]
		mov	edx, [ebp-24h]
		mov	[ebx+284h], edx
		jmp	short loc_4BF37E
; ---------------------------------------------------------------------------

loc_4BF37C:				; CODE XREF: .text:004BF279j
					; .text:004BF296j ...
		xor	eax, eax

loc_4BF37E:				; CODE XREF: .text:004BF317j
					; .text:004BF34Bj ...
		or	edx, 0FFFFFFFFh
		test	eax, eax
		jz	short loc_4BF388
		add	edx, 2

loc_4BF388:				; CODE XREF: .text:004BF383j
		mov	eax, edx
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF38F:				; CODE XREF: .text:004BEA13j
		mov	ecx, [ebx+284h]
		add	ecx, [ebp+18h]
		mov	[ebp-24h], ecx
		cmp	dword ptr [ebp+18h], 0
		jge	short loc_4BF3B3
		mov	eax, [ebp-24h]
		cmp	eax, [ebx+284h]
		jbe	short loc_4BF3B3
		mov	edx, [ebx]
		mov	[ebp-24h], edx
		jmp	short loc_4BF40A
; ---------------------------------------------------------------------------

loc_4BF3B3:				; CODE XREF: .text:004BF39Fj
					; .text:004BF3AAj
		cmp	dword ptr [ebp+18h], 0
		jle	short loc_4BF3DC
		mov	ecx, [ebp-24h]
		cmp	ecx, [ebx+284h]
		jnb	short loc_4BF3DC
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4BF3D1
		mov	eax, [ebx]
		mov	[ebp-24h], eax
		jmp	short loc_4BF40A
; ---------------------------------------------------------------------------

loc_4BF3D1:				; CODE XREF: .text:004BF3C8j
		mov	edx, [ebx]
		add	edx, [ebx+4]
		dec	edx
		mov	[ebp-24h], edx
		jmp	short loc_4BF40A
; ---------------------------------------------------------------------------

loc_4BF3DC:				; CODE XREF: .text:004BF3B7j
					; .text:004BF3C2j
		mov	ecx, [ebx]
		cmp	ecx, [ebp-24h]
		jbe	short loc_4BF3EA
		mov	eax, [ebx]
		mov	[ebp-24h], eax
		jmp	short loc_4BF40A
; ---------------------------------------------------------------------------

loc_4BF3EA:				; CODE XREF: .text:004BF3E1j
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	edx, [ebp-24h]
		ja	short loc_4BF40A
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4BF401
		mov	ecx, [ebx]
		mov	[ebp-24h], ecx
		jmp	short loc_4BF40A
; ---------------------------------------------------------------------------

loc_4BF401:				; CODE XREF: .text:004BF3F8j
		mov	eax, [ebx]
		add	eax, [ebx+4]
		dec	eax
		mov	[ebp-24h], eax

loc_4BF40A:				; CODE XREF: .text:004BF3B1j
					; .text:004BF3CFj ...
		mov	edx, [ebp-24h]
		cmp	edx, [ebx+284h]
		jnz	short loc_4BF41D
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF41D:				; CODE XREF: .text:004BF413j
		mov	edx, [ebp-24h]
		mov	eax, 1
		mov	[ebx+284h], edx
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF430:				; CODE XREF: .text:004BEA24j
		mov	edx, [ebp+18h]
		shr	edx, 10h
		and	dx, 0FFFFh
		movsx	eax, dx
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4BF465
		cmp	esi, 90000h
		jz	short loc_4BF45E
		cmp	esi, 0A0000h
		jz	short loc_4BF45E
		cmp	esi, 0B0000h
		jnz	short loc_4BF465

loc_4BF45E:				; CODE XREF: .text:004BF44Cj
					; .text:004BF454j
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF465:				; CODE XREF: .text:004BF444j
					; .text:004BF45Cj
		mov	dx, [ebp+14h]
		xor	edi, edi
		and	dx, 0FFFFh
		movzx	eax, dx
		mov	[ebp-40h], eax
		xor	eax, eax
		movsx	edx, word ptr [ebp+18h]
		mov	[ebp-18h], edx
		mov	[ebp-1Ch], eax
		cmp	esi, 80000h
		jg	short loc_4BF4D8
		jz	loc_4BF520
		cmp	esi, 40000h
		jg	short loc_4BF4BB
		jz	loc_4BF520
		sub	esi, 10000h
		jz	short loc_4BF520
		sub	esi, 10000h
		jz	short loc_4BF520
		sub	esi, 10000h
		jz	short loc_4BF520
		jmp	loc_4BFB1D
; ---------------------------------------------------------------------------

loc_4BF4BB:				; CODE XREF: .text:004BF496j
		sub	esi, 50000h
		jz	short loc_4BF520
		sub	esi, 10000h
		jz	short loc_4BF520
		sub	esi, 10000h
		jz	short loc_4BF520
		jmp	loc_4BFB1D
; ---------------------------------------------------------------------------

loc_4BF4D8:				; CODE XREF: .text:004BF488j
		cmp	esi, 0C0000h
		jg	short loc_4BF503
		jz	loc_4BF730
		sub	esi, 90000h
		jz	short loc_4BF520
		sub	esi, 10000h
		jz	short loc_4BF520
		sub	esi, 10000h
		jz	short loc_4BF520
		jmp	loc_4BFB1D
; ---------------------------------------------------------------------------

loc_4BF503:				; CODE XREF: .text:004BF4DEj
		sub	esi, 0D0000h
		jz	loc_4BF730
		sub	esi, 10000h
		jz	loc_4BF961
		jmp	loc_4BFB1D
; ---------------------------------------------------------------------------

loc_4BF520:				; CODE XREF: .text:004BF48Aj
					; .text:004BF498j ...
		cmp	dword ptr [ebp-18h], 0FFFF8000h
		jnz	short loc_4BF533
		mov	eax, [ebx]
		mov	[ebp-24h], eax
		jmp	loc_4BF5EB
; ---------------------------------------------------------------------------

loc_4BF533:				; CODE XREF: .text:004BF527j
		cmp	dword ptr [ebp-18h], 7FFFh
		jnz	short loc_4BF55E
		mov	edx, [ebp-30h]
		cmp	edx, [ebx+4]
		jb	short loc_4BF54E
		mov	eax, [ebx]
		mov	[ebp-24h], eax
		jmp	loc_4BF5EB
; ---------------------------------------------------------------------------

loc_4BF54E:				; CODE XREF: .text:004BF542j
		mov	edx, [ebx]
		add	edx, [ebx+4]
		sub	edx, [ebp-30h]
		mov	[ebp-24h], edx
		jmp	loc_4BF5EB
; ---------------------------------------------------------------------------

loc_4BF55E:				; CODE XREF: .text:004BF53Aj
		cmp	dword ptr [ebp-18h], 0FFFFFFFFh
		jnz	short loc_4BF570
		mov	eax, [ebx]
		add	eax, ecx
		cmp	eax, [ebx+294h]
		ja	short loc_4BF587

loc_4BF570:				; CODE XREF: .text:004BF562j
		cmp	dword ptr [ebp-18h], 1
		jnz	short loc_4BF58F
		mov	eax, [ebx]
		mov	edx, [ebx+294h]
		add	eax, [ebx+4]
		add	edx, ecx
		cmp	edx, eax
		jb	short loc_4BF58F

loc_4BF587:				; CODE XREF: .text:004BF56Ej
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF58F:				; CODE XREF: .text:004BF574j
					; .text:004BF585j
		mov	eax, [ebp-14h]
		imul	dword ptr [ebp-30h]
		mov	edx, [ebp-18h]
		imul	edx, ecx
		add	eax, edx
		mov	edx, [ebx+294h]
		add	edx, eax
		mov	[ebp-24h], edx
		mov	edx, [ebp-30h]
		cmp	edx, [ebx+4]
		jb	short loc_4BF5B7
		mov	eax, [ebx]
		mov	[ebp-24h], eax
		jmp	short loc_4BF5EB
; ---------------------------------------------------------------------------

loc_4BF5B7:				; CODE XREF: .text:004BF5AEj
		test	eax, eax
		jl	short loc_4BF5D5
		mov	eax, [ebx]
		add	eax, [ebx+4]
		sub	eax, [ebp-30h]
		cmp	eax, [ebp-24h]
		jnb	short loc_4BF5EB
		mov	edx, [ebx]
		add	edx, [ebx+4]
		sub	edx, [ebp-30h]
		mov	[ebp-24h], edx
		jmp	short loc_4BF5EB
; ---------------------------------------------------------------------------

loc_4BF5D5:				; CODE XREF: .text:004BF5B9j
		mov	eax, [ebx]
		cmp	eax, [ebp-24h]
		ja	short loc_4BF5E6
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	edx, [ebp-24h]
		ja	short loc_4BF5EB

loc_4BF5E6:				; CODE XREF: .text:004BF5DAj
		mov	eax, [ebx]
		mov	[ebp-24h], eax

loc_4BF5EB:				; CODE XREF: .text:004BF52Ej
					; .text:004BF549j ...
		mov	edx, [ebp-24h]
		cmp	edx, [ebx+294h]
		jz	short loc_4BF606
		mov	eax, [ebp-24h]
		mov	[ebx+294h], eax
		mov	dword ptr [ebp-1Ch], 1

loc_4BF606:				; CODE XREF: .text:004BF5F4j
		mov	edx, [ebx+284h]
		cmp	edx, [ebx+294h]
		jbe	short loc_4BF64E
		mov	eax, [ebx+284h]
		sub	eax, [ebx+294h]
		add	eax, ecx
		dec	eax
		xor	edx, edx
		div	ecx
		imul	ecx
		mov	ecx, [ebx+284h]
		sub	ecx, [ebx]
		cmp	eax, ecx
		jbe	short loc_4BF63F
		mov	eax, [ebx]
		mov	[ebx+284h], eax
		jmp	short loc_4BF645
; ---------------------------------------------------------------------------

loc_4BF63F:				; CODE XREF: .text:004BF633j
		sub	[ebx+284h], eax

loc_4BF645:				; CODE XREF: .text:004BF63Dj
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_4BF685
; ---------------------------------------------------------------------------

loc_4BF64E:				; CODE XREF: .text:004BF612j
		mov	edx, [ebp-40h]
		imul	edx, ecx
		add	edx, [ebx+284h]
		cmp	edx, [ebx+294h]
		ja	short loc_4BF685
		mov	eax, [ebx+294h]
		sub	eax, [ebx+284h]
		xor	edx, edx
		div	ecx
		sub	eax, [ebp-40h]
		inc	eax
		imul	ecx
		add	[ebx+284h], eax
		mov	dword ptr [ebp-1Ch], 1

loc_4BF685:				; CODE XREF: .text:004BF64Cj
					; .text:004BF660j
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4BF693
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF693:				; CODE XREF: .text:004BF689j
		test	byte ptr [ebp+16h], 1
		jnz	short loc_4BF6A5
		mov	edx, [ebx+294h]
		mov	[ebx+290h], edx

loc_4BF6A5:				; CODE XREF: .text:004BF697j
		mov	esi, [ebx+288h]
		mov	edi, [ebx+28Ch]
		mov	eax, [ebx+290h]
		cmp	eax, [ebx+294h]
		jnb	short loc_4BF6DC
		mov	edx, [ebx+290h]
		mov	[ebx+288h], edx
		mov	ecx, [ebx+294h]
		add	ecx, [ebp-30h]
		mov	[ebx+28Ch], ecx
		jmp	short loc_4BF6F7
; ---------------------------------------------------------------------------

loc_4BF6DC:				; CODE XREF: .text:004BF6BDj
		mov	eax, [ebx+294h]
		mov	[ebx+288h], eax
		mov	edx, [ebx+290h]
		add	edx, [ebp-30h]
		mov	[ebx+28Ch], edx

loc_4BF6F7:				; CODE XREF: .text:004BF6DAj
		xor	ecx, ecx
		cmp	esi, [ebx+288h]
		jz	short loc_4BF702
		inc	ecx

loc_4BF702:				; CODE XREF: .text:004BF6FFj
		xor	eax, eax
		cmp	edi, [ebx+28Ch]
		jz	short loc_4BF70F
		add	eax, 2

loc_4BF70F:				; CODE XREF: .text:004BF70Aj
		or	ecx, eax
		cmp	dword ptr [ebx+708h], 0
		mov	edi, ecx
		jz	loc_4BFB1D
		push	edi
		push	ebx
		call	dword ptr [ebx+708h]
		add	esp, 8
		jmp	loc_4BFB1D
; ---------------------------------------------------------------------------

loc_4BF730:				; CODE XREF: .text:004BF4E0j
					; .text:004BF509j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4BF73D
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF73D:				; CODE XREF: .text:004BF734j
		mov	edx, [ebp-40h]
		dec	edx
		sar	edx, 1
		jns	short loc_4BF748
		adc	edx, 0

loc_4BF748:				; CODE XREF: .text:004BF743j
		mov	[ebp-44h], edx
		mov	ecx, dword_5BE6CC
		cmp	ecx, [ebp-44h]
		jge	short loc_4BF75D
		mov	eax, offset dword_5BE6CC
		jmp	short loc_4BF760
; ---------------------------------------------------------------------------

loc_4BF75D:				; CODE XREF: .text:004BF754j
		lea	eax, [ebp-44h]

loc_4BF760:				; CODE XREF: .text:004BF75Bj
		mov	edx, [eax]
		mov	[ebp-0Ch], edx
		cmp	dword ptr [ebp-18h], 0FFFF8000h
		jnz	short loc_4BF775
		mov	ecx, [ebx]
		mov	[ebp-24h], ecx
		jmp	short loc_4BF7C0
; ---------------------------------------------------------------------------

loc_4BF775:				; CODE XREF: .text:004BF76Cj
		cmp	dword ptr [ebp-18h], 7FFFh
		jnz	short loc_4BF788
		mov	eax, [ebx]
		add	eax, [ebx+4]
		mov	[ebp-24h], eax
		jmp	short loc_4BF7C0
; ---------------------------------------------------------------------------

loc_4BF788:				; CODE XREF: .text:004BF77Cj
		cmp	dword ptr [ebp-18h], 0
		jge	short loc_4BF7A9
		mov	edx, [ebp-18h]
		neg	edx
		push	edx		; n
		mov	ecx, [ebx+294h]
		push	ecx		; _addr
		push	ebx		; pd
		call	Dumpback
		add	esp, 0Ch
		mov	[ebp-24h], eax
		jmp	short loc_4BF7C0
; ---------------------------------------------------------------------------

loc_4BF7A9:				; CODE XREF: .text:004BF78Cj
		mov	eax, [ebp-18h]
		push	eax		; n
		mov	edx, [ebx+294h]
		push	edx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	[ebp-24h], eax

loc_4BF7C0:				; CODE XREF: .text:004BF773j
					; .text:004BF786j ...
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		cmp	ecx, [ebp-24h]
		ja	short loc_4BF7DE
		push	1		; n
		mov	eax, [ebx]
		add	eax, [ebx+4]
		push	eax		; _addr
		push	ebx		; pd
		call	Dumpback
		add	esp, 0Ch
		mov	[ebp-24h], eax

loc_4BF7DE:				; CODE XREF: .text:004BF7C8j
		mov	edx, [ebx+294h]
		cmp	edx, [ebp-24h]
		jz	short loc_4BF7F9
		mov	ecx, [ebp-24h]
		mov	[ebx+294h], ecx
		mov	dword ptr [ebp-1Ch], 1

loc_4BF7F9:				; CODE XREF: .text:004BF7E7j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4BF805
		cmp	dword ptr [ebp-18h], 0
		jle	short loc_4BF810

loc_4BF805:				; CODE XREF: .text:004BF7FDj
		mov	eax, [ebx+284h]
		mov	[ebp-28h], eax
		jmp	short loc_4BF827
; ---------------------------------------------------------------------------

loc_4BF810:				; CODE XREF: .text:004BF803j
		mov	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebx+284h]
		push	ecx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	[ebp-28h], eax

loc_4BF827:				; CODE XREF: .text:004BF80Ej
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-28h]
		jnb	short loc_4BF860
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4BF840
		mov	edx, [ebp-24h]
		mov	[ebx+284h], edx
		jmp	short loc_4BF857
; ---------------------------------------------------------------------------

loc_4BF840:				; CODE XREF: .text:004BF833j
		mov	ecx, [ebp-0Ch]
		push	ecx		; n
		mov	eax, [ebp-24h]
		push	eax		; _addr
		push	ebx		; pd
		call	Dumpback
		add	esp, 0Ch
		mov	[ebx+284h], eax

loc_4BF857:				; CODE XREF: .text:004BF83Ej
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_4BF8A4
; ---------------------------------------------------------------------------

loc_4BF860:				; CODE XREF: .text:004BF82Dj
		mov	edx, [ebp-40h]
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebx+284h]
		push	ecx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	[ebp-2Ch], eax
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-2Ch]
		jb	short loc_4BF8A4
		mov	edx, [ebp-40h]
		sub	edx, [ebp-0Ch]
		dec	edx
		push	edx		; n
		mov	ecx, [ebp-24h]
		push	ecx		; _addr
		push	ebx		; pd
		call	Dumpback
		add	esp, 0Ch
		mov	[ebx+284h], eax
		mov	dword ptr [ebp-1Ch], 1

loc_4BF8A4:				; CODE XREF: .text:004BF85Ej
					; .text:004BF880j
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4BF8B2
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF8B2:				; CODE XREF: .text:004BF8A8j
		test	byte ptr [ebp+16h], 1
		jnz	short loc_4BF8C4
		mov	edx, [ebx+294h]
		mov	[ebx+290h], edx

loc_4BF8C4:				; CODE XREF: .text:004BF8B6j
		mov	esi, [ebx+288h]
		mov	edi, [ebx+28Ch]
		mov	eax, [ebx+290h]
		cmp	eax, [ebx+294h]
		jnb	short loc_4BF904
		mov	edx, [ebx+290h]
		mov	[ebx+288h], edx
		push	1		; n
		mov	ecx, [ebx+294h]
		push	ecx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	[ebx+28Ch], eax
		jmp	short loc_4BF928
; ---------------------------------------------------------------------------

loc_4BF904:				; CODE XREF: .text:004BF8DCj
		mov	eax, [ebx+294h]
		mov	[ebx+288h], eax
		push	1		; n
		mov	edx, [ebx+290h]
		push	edx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	[ebx+28Ch], eax

loc_4BF928:				; CODE XREF: .text:004BF902j
		xor	ecx, ecx
		cmp	esi, [ebx+288h]
		jz	short loc_4BF933
		inc	ecx

loc_4BF933:				; CODE XREF: .text:004BF930j
		xor	eax, eax
		cmp	edi, [ebx+28Ch]
		jz	short loc_4BF940
		add	eax, 2

loc_4BF940:				; CODE XREF: .text:004BF93Bj
		or	ecx, eax
		cmp	dword ptr [ebx+708h], 0
		mov	edi, ecx
		jz	loc_4BFB1D
		push	edi
		push	ebx
		call	dword ptr [ebx+708h]
		add	esp, 8
		jmp	loc_4BFB1D
; ---------------------------------------------------------------------------

loc_4BF961:				; CODE XREF: .text:004BF515j
		cmp	dword ptr [ebp-18h], 0FFFF8000h
		jnz	short loc_4BF99C
		mov	edx, [ebx]
		cmp	edx, [ebx+294h]
		jnz	short loc_4BF982
		mov	ecx, [ebx]
		cmp	ecx, [ebx+284h]
		jz	loc_4BFA7B

loc_4BF982:				; CODE XREF: .text:004BF972j
		mov	eax, [ebx]
		mov	[ebx+284h], eax
		mov	[ebx+294h], eax
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_4BFA7B
; ---------------------------------------------------------------------------

loc_4BF99C:				; CODE XREF: .text:004BF968j
		cmp	dword ptr [ebp-18h], 7FFFh
		jnz	short loc_4BFA11
		mov	edx, [ebx]
		lea	eax, [ebp-20h]
		add	edx, [ebx+4]
		lea	ecx, [ebp-24h]
		dec	edx
		mov	[ebp-20h], edx
		mov	[ebp-24h], edx
		push	eax
		push	1
		push	0
		push	ecx
		mov	eax, [ebp-40h]
		push	eax
		push	ebx
		call	loc_4AEA14
		add	esp, 18h
		test	eax, eax
		jz	short loc_4BF9D6
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BF9D6:				; CODE XREF: .text:004BF9CCj
		mov	edx, [ebx]
		add	edx, [ebx+4]
		dec	edx
		cmp	edx, [ebx+294h]
		jnz	short loc_4BF9F3
		mov	ecx, [ebx+284h]
		cmp	ecx, [ebp-20h]
		jz	loc_4BFA7B

loc_4BF9F3:				; CODE XREF: .text:004BF9E2j
		mov	eax, [ebx]
		add	eax, [ebx+4]
		dec	eax
		mov	[ebx+294h], eax
		mov	edx, [ebp-20h]
		mov	[ebx+284h], edx
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_4BFA7B
; ---------------------------------------------------------------------------

loc_4BFA11:				; CODE XREF: .text:004BF9A3j
		mov	ecx, [ebx+294h]
		lea	edx, [ebp-20h]
		mov	[ebp-24h], ecx
		mov	eax, [ebx+284h]
		mov	[ebp-20h], eax
		push	edx
		mov	ecx, [ebp-18h]
		lea	edx, [ebp-24h]
		push	ecx
		mov	eax, [ebp-14h]
		push	eax
		push	edx
		mov	ecx, [ebp-40h]
		push	ecx
		push	ebx
		call	loc_4AEA14
		add	esp, 18h
		test	eax, eax
		jz	short loc_4BFA4C
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BFA4C:				; CODE XREF: .text:004BFA42j
		mov	edx, [ebp-24h]
		cmp	edx, [ebx+294h]
		jnz	short loc_4BFA62
		mov	ecx, [ebp-20h]
		cmp	ecx, [ebx+284h]
		jz	short loc_4BFA7B

loc_4BFA62:				; CODE XREF: .text:004BFA55j
		mov	eax, [ebp-24h]
		mov	[ebx+294h], eax
		mov	edx, [ebp-20h]
		mov	[ebx+284h], edx
		mov	dword ptr [ebp-1Ch], 1

loc_4BFA7B:				; CODE XREF: .text:004BF97Cj
					; .text:004BF997j ...
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4BFA89
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BFA89:				; CODE XREF: .text:004BFA7Fj
		test	byte ptr [ebp+16h], 1
		jnz	short loc_4BFA9B
		mov	edx, [ebx+294h]
		mov	[ebx+290h], edx

loc_4BFA9B:				; CODE XREF: .text:004BFA8Dj
		mov	esi, [ebx+288h]
		mov	edi, [ebx+28Ch]
		mov	eax, [ebx+290h]
		cmp	eax, [ebx+294h]
		jnb	short loc_4BFAD2
		mov	edx, [ebx+290h]
		mov	[ebx+288h], edx
		mov	ecx, [ebx+294h]
		add	ecx, [ebp-30h]
		mov	[ebx+28Ch], ecx
		jmp	short loc_4BFAED
; ---------------------------------------------------------------------------

loc_4BFAD2:				; CODE XREF: .text:004BFAB3j
		mov	eax, [ebx+294h]
		mov	[ebx+288h], eax
		mov	edx, [ebx+290h]
		add	edx, [ebp-30h]
		mov	[ebx+28Ch], edx

loc_4BFAED:				; CODE XREF: .text:004BFAD0j
		xor	ecx, ecx
		cmp	esi, [ebx+288h]
		jz	short loc_4BFAF8
		inc	ecx

loc_4BFAF8:				; CODE XREF: .text:004BFAF5j
		xor	eax, eax
		cmp	edi, [ebx+28Ch]
		jz	short loc_4BFB05
		add	eax, 2

loc_4BFB05:				; CODE XREF: .text:004BFB00j
		or	ecx, eax
		cmp	dword ptr [ebx+708h], 0
		mov	edi, ecx
		jz	short loc_4BFB1D
		push	edi
		push	ebx
		call	dword ptr [ebx+708h]
		add	esp, 8

loc_4BFB1D:				; CODE XREF: .text:004BF4B6j
					; .text:004BF4D3j ...
		push	edi
		push	ebx
		call	loc_4B8860
		add	esp, 8
		or	eax, 0FFFFFFFFh
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_4C045E
		add	eax, 2
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BFB3C:				; CODE XREF: .text:004BEA1Dj
		mov	edi, [ebp+14h]
		shr	edi, 10h
		movzx	edi, di
		cmp	esi, 20000h
		jnz	short loc_4BFB59
		cmp	edi, 2
		jnz	short loc_4BFB59
		mov	dword ptr [ebp-30h], 2

loc_4BFB59:				; CODE XREF: .text:004BFB4Bj
					; .text:004BFB50j
		mov	ax, [ebp+14h]
		and	ax, 0FFFFh
		movzx	edx, ax
		mov	[ebp-10h], edx
		mov	ecx, [ebp-10h]
		push	ecx
		mov	eax, [ebp+18h]
		push	eax
		push	edi
		push	ebx
		call	loc_4AEFFC
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0FFFFFFFFh
		jnz	short loc_4BFB89
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BFB89:				; CODE XREF: .text:004BFB80j
		cmp	dword ptr [ebp+10h], 46Bh
		jnz	loc_4BFC3A
		mov	edx, [ebp-24h]
		mov	[ebx+290h], edx
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		cmp	ecx, [ebx+290h]
		ja	short loc_4BFBCB
		mov	eax, [ebx]
		add	eax, [ebx+4]
		test	eax, eax
		jnz	short loc_4BFBBF
		mov	edx, [ebx]
		mov	[ebx+290h], edx
		jmp	short loc_4BFBCB
; ---------------------------------------------------------------------------

loc_4BFBBF:				; CODE XREF: .text:004BFBB3j
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		dec	ecx
		mov	[ebx+290h], ecx

loc_4BFBCB:				; CODE XREF: .text:004BFBAAj
					; .text:004BFBBDj
		mov	eax, [ebx]
		cmp	eax, [ebx+290h]
		jbe	short loc_4BFBDD
		mov	edx, [ebx]
		mov	[ebx+290h], edx

loc_4BFBDD:				; CODE XREF: .text:004BFBD3j
		mov	ecx, [ebx+290h]
		mov	[ebx+294h], ecx
		mov	[ebp-38h], ecx
		cmp	esi, 0C0000h
		jz	short loc_4BFBFC
		cmp	esi, 0D0000h
		jnz	short loc_4BFC10

loc_4BFBFC:				; CODE XREF: .text:004BFBF2j
		push	1		; n
		mov	eax, [ebp-38h]
		push	eax		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		jmp	loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFC10:				; CODE XREF: .text:004BFBFAj
		cmp	esi, 0E0000h
		jnz	short loc_4BFC2F
		cmp	edi, 2
		jnz	short loc_4BFC2F
		mov	edx, [ebp-38h]
		push	edx		; arglist
		push	ebx		; int
		call	loc_4AEF08
		add	esp, 8
		jmp	loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFC2F:				; CODE XREF: .text:004BFC16j
					; .text:004BFC1Bj
		mov	eax, [ebp-38h]
		add	eax, [ebp-30h]
		jmp	loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFC3A:				; CODE XREF: .text:004BFB90j
		mov	edx, [ebp-24h]
		mov	[ebx+294h], edx
		mov	ecx, [ebx]
		cmp	ecx, [ebx+290h]
		ja	short loc_4BFC5A
		mov	eax, [ebx]
		add	eax, [ebx+4]
		cmp	eax, [ebx+290h]
		jnb	short loc_4BFC66

loc_4BFC5A:				; CODE XREF: .text:004BFC4Bj
		mov	edx, [ebx+294h]
		mov	[ebx+290h], edx

loc_4BFC66:				; CODE XREF: .text:004BFC58j
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		cmp	ecx, [ebx+294h]
		ja	short loc_4BFC92
		mov	eax, [ebx]
		add	eax, [ebx+4]
		test	eax, eax
		jnz	short loc_4BFC86
		mov	edx, [ebx]
		mov	[ebx+294h], edx
		jmp	short loc_4BFC92
; ---------------------------------------------------------------------------

loc_4BFC86:				; CODE XREF: .text:004BFC7Aj
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		dec	ecx
		mov	[ebx+294h], ecx

loc_4BFC92:				; CODE XREF: .text:004BFC71j
					; .text:004BFC84j
		mov	eax, [ebx]
		cmp	eax, [ebx+294h]
		jbe	short loc_4BFCA4
		mov	edx, [ebx]
		mov	[ebx+294h], edx

loc_4BFCA4:				; CODE XREF: .text:004BFC9Aj
		mov	ecx, [ebx+290h]
		cmp	ecx, [ebx+294h]
		jnb	short loc_4BFD09
		mov	eax, [ebx+290h]
		cmp	esi, 0C0000h
		mov	[ebp-38h], eax
		jz	short loc_4BFCCB
		cmp	esi, 0D0000h
		jnz	short loc_4BFCDF

loc_4BFCCB:				; CODE XREF: .text:004BFCC1j
		push	1		; n
		mov	edx, [ebx+294h]
		push	edx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		jmp	short loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFCDF:				; CODE XREF: .text:004BFCC9j
		cmp	esi, 0E0000h
		jnz	short loc_4BFCFE
		cmp	edi, 2
		jnz	short loc_4BFCFE
		mov	ecx, [ebx+294h]
		push	ecx		; arglist
		push	ebx		; int
		call	loc_4AEF08
		add	esp, 8
		jmp	short loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFCFE:				; CODE XREF: .text:004BFCE5j
					; .text:004BFCEAj
		mov	eax, [ebx+294h]
		add	eax, [ebp-30h]
		jmp	short loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFD09:				; CODE XREF: .text:004BFCB0j
		mov	edx, [ebx+294h]
		cmp	esi, 0C0000h
		mov	[ebp-38h], edx
		jz	short loc_4BFD22
		cmp	esi, 0D0000h
		jnz	short loc_4BFD36

loc_4BFD22:				; CODE XREF: .text:004BFD18j
		push	1		; n
		mov	ecx, [ebx+290h]
		push	ecx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		jmp	short loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFD36:				; CODE XREF: .text:004BFD20j
		cmp	esi, 0E0000h
		jnz	short loc_4BFD55
		cmp	edi, 2
		jnz	short loc_4BFD55
		mov	eax, [ebx+290h]
		push	eax		; arglist
		push	ebx		; int
		call	loc_4AEF08
		add	esp, 8
		jmp	short loc_4BFD5E
; ---------------------------------------------------------------------------

loc_4BFD55:				; CODE XREF: .text:004BFD3Cj
					; .text:004BFD41j
		mov	eax, [ebx+290h]
		add	eax, [ebp-30h]

loc_4BFD5E:				; CODE XREF: .text:004BFC0Bj
					; .text:004BFC2Aj ...
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	eax, edx
		jbe	short loc_4BFD6C
		mov	eax, [ebx]
		add	eax, [ebx+4]

loc_4BFD6C:				; CODE XREF: .text:004BFD65j
		mov	edx, [ebx+288h]
		cmp	edx, [ebp-38h]
		jnz	short loc_4BFD87
		cmp	eax, [ebx+28Ch]
		jnz	short loc_4BFD87
		or	eax, 0FFFFFFFFh
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BFD87:				; CODE XREF: .text:004BFD75j
					; .text:004BFD7Dj
		mov	esi, [ebx+288h]
		mov	edi, [ebx+28Ch]
		mov	edx, [ebp-38h]
		mov	[ebx+288h], edx
		mov	[ebx+28Ch], eax
		xor	eax, eax
		cmp	esi, [ebx+288h]
		jz	short loc_4BFDAD
		inc	eax

loc_4BFDAD:				; CODE XREF: .text:004BFDAAj
		xor	ecx, ecx
		cmp	edi, [ebx+28Ch]
		jz	short loc_4BFDBA
		add	ecx, 2

loc_4BFDBA:				; CODE XREF: .text:004BFDB5j
		or	eax, ecx
		cmp	dword ptr [ebx+708h], 0
		mov	edi, eax
		jz	short loc_4BFDD2
		push	edi
		push	ebx
		call	dword ptr [ebx+708h]
		add	esp, 8

loc_4BFDD2:				; CODE XREF: .text:004BFDC5j
		push	edi
		push	ebx
		call	loc_4B8860
		add	esp, 8
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BFDE1:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		mov	edi, [ebp+14h]	; jumptable 004BEA3D case 1137
		shr	edi, 10h
		movzx	edi, di
		test	edi, edi
		jnz	loc_4BFE87
		cmp	dword_5BE6C8, 0
		jz	short loc_4BFE2C
		cmp	dword ptr [ebx+298h], 0
		jnz	short loc_4BFE2C
		test	byte ptr [ebx+0Eh], 4
		jnz	short loc_4BFE2C
		push	2		; index
		push	offset loc_4B3C2C ; menufunc
		mov	eax, [ebp+8]
		mov	edx, [eax+218h]
		push	edx		; pm
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BFE2C:				; CODE XREF: .text:004BFDF9j
					; .text:004BFE02j ...
		cmp	dword ptr [ebx+6F4h], 0FFFFFFFFh
		jnz	short loc_4BFE65
		mov	eax, [ebx+6F8h]
		cmp	eax, [ebx+288h]
		jnz	short loc_4BFE65
		push	0		; index
		push	offset loc_4B6AD4 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BFE65:				; CODE XREF: .text:004BFE33j
					; .text:004BFE41j
		push	1		; index
		push	offset loc_4B6AD4 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BFE87:				; CODE XREF: .text:004BFDECj
		cmp	esi, 0C0000h
		jz	short loc_4BFE9B
		cmp	esi, 0D0000h
		jnz	loc_4C00E7

loc_4BFE9B:				; CODE XREF: .text:004BFE8Dj
		cmp	esi, 0D0000h
		jz	short loc_4BFEAC
		cmp	edi, 1
		jnz	loc_4C0081

loc_4BFEAC:				; CODE XREF: .text:004BFEA1j
		cmp	dword ptr [ebx+4E8h], 0
		jz	short loc_4BFEBD
		mov	eax, [ebx+4E8h]
		jmp	short loc_4BFED6
; ---------------------------------------------------------------------------

loc_4BFEBD:				; CODE XREF: .text:004BFEB3j
		lea	edx, [ebp-34h]
		push	edx		; psize
		mov	ecx, [ebx]
		push	ecx		; _addr
		call	Finddecode
		add	esp, 8
		mov	edx, [ebp-34h]
		cmp	edx, [ebx+4]
		jnb	short loc_4BFED6
		xor	eax, eax

loc_4BFED6:				; CODE XREF: .text:004BFEBBj
					; .text:004BFED2j
		cmp	esi, 0D0000h
		jnz	short loc_4BFEE9
		test	eax, eax
		jnz	short loc_4BFEE9
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BFEE9:				; CODE XREF: .text:004BFEDCj
					; .text:004BFEE0j
		test	eax, eax
		jz	short loc_4BFF36
		mov	edx, [ebx+288h]
		sub	edx, [ebx]
		inc	edx
		mov	[ebp-20h], edx
		mov	dword ptr [ebp-4], 1
		jmp	short loc_4BFF1D
; ---------------------------------------------------------------------------

loc_4BFF02:				; CODE XREF: .text:004BFF23j
		mov	ecx, [ebp-20h]
		xor	edx, edx
		mov	dl, [eax+ecx]
		and	edx, 1Fh
		cmp	edx, 1
		jz	short loc_4BFF17
		cmp	edx, 2
		jnz	short loc_4BFF25

loc_4BFF17:				; CODE XREF: .text:004BFF10j
		inc	dword ptr [ebp-20h]
		inc	dword ptr [ebp-4]

loc_4BFF1D:				; CODE XREF: .text:004BFF00j
		mov	ecx, [ebp-20h]
		cmp	ecx, [ebx+4]
		jb	short loc_4BFF02

loc_4BFF25:				; CODE XREF: .text:004BFF15j
		mov	edx, [ebx+288h]
		sub	edx, [ebx]
		movzx	edx, byte ptr [eax+edx]
		and	edx, 1Fh
		jmp	short loc_4BFF38
; ---------------------------------------------------------------------------

loc_4BFF36:				; CODE XREF: .text:004BFEEBj
		xor	edx, edx

loc_4BFF38:				; CODE XREF: .text:004BFF34j
		cmp	edx, 4
		jz	short loc_4BFF47
		cmp	edx, 5
		jz	short loc_4BFF47
		cmp	edx, 6
		jnz	short loc_4BFFA4

loc_4BFF47:				; CODE XREF: .text:004BFF3Bj
					; .text:004BFF40j
		cmp	dword ptr [ebp-4], 2
		jnz	short loc_4BFF72
		push	70802h		; index
		push	offset loc_4B1E48 ; menufunc
		mov	eax, [ebp+8]
		mov	ecx, [eax+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BFF72:				; CODE XREF: .text:004BFF4Bj
		cmp	dword ptr [ebp-4], 4
		jnz	short loc_4BFF9D
		push	70404h		; index
		push	offset loc_4B1E48 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BFF9D:				; CODE XREF: .text:004BFF76j
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4BFFA4:				; CODE XREF: .text:004BFF45j
		cmp	edx, 0Dh
		jnz	loc_4C0035
		cmp	dword ptr [ebp-4], 4
		jnz	short loc_4BFFD8
		push	80404h		; index
		push	offset loc_4B1E48 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4BFFD8:				; CODE XREF: .text:004BFFB1j
		cmp	dword ptr [ebp-4], 8
		jnz	short loc_4C0003
		push	80208h		; index
		push	offset loc_4B1E48 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4BFFFE:				; DATA XREF: .text:004B9F74o
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C0003:				; CODE XREF: .text:004BFFDCj
		cmp	dword ptr [ebp-4], 0Ah
		jnz	short loc_4C002E
		push	8010Ah		; index
		push	offset loc_4B1E48 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C002E:				; CODE XREF: .text:004C0007j
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0035:				; CODE XREF: .text:004BFFA7j
		cmp	esi, 0D0000h
		jnz	short loc_4C005F
		push	0		; index

loc_4C003F:				; menufunc
		push	offset loc_4B1A74

loc_4C0044:
		mov	edx, [ebp+8]

loc_4C0047:
		mov	ecx, [edx+218h]
		push	ecx		; pm

loc_4C004E:
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C005F:				; CODE XREF: .text:004C003Bj
		push	0		; index
		push	offset loc_4B331C ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C0081:				; CODE XREF: .text:004BFEA6j
		cmp	esi, 0C0000h
		jnz	short loc_4C00B0
		cmp	edi, 2
		jnz	short loc_4C00B0
		push	0		; index
		push	offset loc_4B3F1C ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C00B0:				; CODE XREF: .text:004C0087j
					; .text:004C008Cj
		cmp	esi, 0C0000h
		jnz	loc_4C0459
		cmp	edi, 3
		jnz	loc_4C0459
		push	5		; index
		push	offset loc_4B3C2C ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C00E7:				; CODE XREF: .text:004BFE95j
		cmp	esi, 10000h
		jz	short loc_4C00FF
		cmp	esi, 20000h
		jz	short loc_4C00FF
		cmp	esi, 0E0000h
		jnz	short loc_4C0129

loc_4C00FF:				; CODE XREF: .text:004C00EDj
					; .text:004C00F5j
		cmp	edi, 1
		jnz	short loc_4C0129
		push	100h		; index
		push	offset loc_4B1A74 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C0129:				; CODE XREF: .text:004C00FDj
					; .text:004C0102j
		cmp	esi, 10000h
		jnz	short loc_4C0136
		cmp	edi, 2
		jz	short loc_4C0150

loc_4C0136:				; CODE XREF: .text:004C012Fj
		cmp	esi, 30000h
		jnz	short loc_4C0143
		cmp	edi, 1
		jz	short loc_4C0150

loc_4C0143:				; CODE XREF: .text:004C013Cj
		cmp	esi, 0A0000h
		jnz	short loc_4C0175
		cmp	edi, 2
		jnz	short loc_4C0175

loc_4C0150:				; CODE XREF: .text:004C0134j
					; .text:004C0141j
		push	400h		; index
		push	offset loc_4B1A74 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C0175:				; CODE XREF: .text:004C0149j
					; .text:004C014Ej
		cmp	esi, 20000h
		jnz	short loc_4C0182
		cmp	edi, 2
		jz	short loc_4C019C

loc_4C0182:				; CODE XREF: .text:004C017Bj
		cmp	esi, 40000h
		jnz	short loc_4C018F
		cmp	edi, 1
		jz	short loc_4C019C

loc_4C018F:				; CODE XREF: .text:004C0188j
		cmp	esi, 0B0000h
		jnz	short loc_4C01C1
		cmp	edi, 2
		jnz	short loc_4C01C1

loc_4C019C:				; CODE XREF: .text:004C0180j
					; .text:004C018Dj
		push	500h		; index
		push	offset loc_4B1A74 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C01C1:				; CODE XREF: .text:004C0195j
					; .text:004C019Aj
		cmp	esi, 0E0000h
		jnz	short loc_4C01F3
		cmp	edi, 2
		jnz	short loc_4C01F3
		push	800h		; index
		push	offset loc_4B1A74 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C01F3:				; CODE XREF: .text:004C01C7j
					; .text:004C01CCj
		cmp	esi, 50000h
		jz	short loc_4C022F
		cmp	esi, 60000h
		jz	short loc_4C022F
		cmp	esi, 70000h
		jz	short loc_4C022F
		cmp	esi, 80000h
		jz	short loc_4C022F
		cmp	esi, 90000h
		jz	short loc_4C022F
		cmp	esi, 0A0000h
		jz	short loc_4C022F
		cmp	esi, 0B0000h
		jnz	loc_4C0459

loc_4C022F:				; CODE XREF: .text:004C01F9j
					; .text:004C0201j ...
		dec	edi
		jnz	loc_4C0459
		mov	edx, [ebx+8]
		push	edx		; index
		push	offset loc_4B1E48 ; menufunc
		mov	ecx, [ebp+8]
		mov	eax, [ecx+218h]
		push	eax		; pm
		mov	edx, [ebp+8]
		push	edx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C025A:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		mov	eax, [ebx+288h]	; jumptable 004BEA3D case 1138
		cmp	eax, [ebx+28Ch]
		jnb	short loc_4C0276
		mov	edx, [ebx+288h]
		cmp	edx, [ebx+284h]
		ja	short loc_4C0280

loc_4C0276:				; CODE XREF: .text:004C0266j
		mov	eax, 100h
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0280:				; CODE XREF: .text:004C0274j
		cmp	esi, 0C0000h
		jz	short loc_4C0290
		cmp	esi, 0D0000h
		jnz	short loc_4C02F6

loc_4C0290:				; CODE XREF: .text:004C0286j
		mov	edx, [ebx+284h]
		xor	ecx, ecx
		mov	[ebp-24h], edx
		mov	[ebp-8], ecx
		mov	eax, [ebp-8]
		cmp	eax, [ebp+18h]
		jge	loc_4C0346

loc_4C02AA:				; CODE XREF: .text:004C02F2j
		test	byte ptr [ebx+0Bh], 4
		mov	edx, 1
		jnz	short loc_4C02B6
		dec	edx

loc_4C02B6:				; CODE XREF: .text:004C02B3j
		push	edx		; decode
		push	1		; n
		mov	ecx, [ebp-24h]
		push	ecx		; ip
		mov	eax, [ebx+4]
		add	eax, [ebx]
		mov	esi, [ebx+284h]
		sub	eax, esi
		push	eax		; size
		push	esi		; base
		mov	eax, [ebx+298h]
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	[ebp-24h], eax
		mov	edx, [ebp-24h]
		cmp	edx, [ebx+288h]
		ja	short loc_4C0346
		inc	dword ptr [ebp-8]
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp+18h]
		jl	short loc_4C02AA
		jmp	short loc_4C0346
; ---------------------------------------------------------------------------

loc_4C02F6:				; CODE XREF: .text:004C028Ej
		cmp	esi, 0E0000h
		jnz	short loc_4C0325
		xor	eax, eax
		lea	edx, [ebp-8]
		mov	[ebp-8], eax
		push	0		; a8
		push	0		; a7
		push	0		; a6
		push	edx		; a5
		push	0		; a4
		mov	ecx, [ebx+288h]
		push	ecx		; a3
		mov	eax, [ebp+18h]
		push	eax		; a2
		push	ebx		; pd
		call	Getmbdumpposition
		add	esp, 20h
		jmp	short loc_4C0346
; ---------------------------------------------------------------------------

loc_4C0325:				; CODE XREF: .text:004C02FCj
		mov	eax, [ebx+288h]
		sub	eax, [ebx+284h]
		xor	edx, edx
		div	ecx
		mov	[ebp-8], eax
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp+18h]
		jle	short loc_4C0346
		mov	eax, [ebp+18h]
		mov	[ebp-8], eax

loc_4C0346:				; CODE XREF: .text:004C02A4j
					; .text:004C02E7j ...
		movzx	eax, word ptr [ebp-8]
		shl	eax, 10h
		or	eax, 100h
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0357:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		mov	eax, run.status	; jumptable 004BEA3D case 1140
		test	eax, eax
		jz	loc_4C0459
		cmp	eax, 12h
		jz	loc_4C0459
		cmp	eax, 13h
		jz	loc_4C0459
		call	Flushmemorycache
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+8]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	InvalidateRect
		jmp	loc_4C0459
; ---------------------------------------------------------------------------

loc_4C0393:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		push	0		; jumptable 004BEA3D case 1156
		push	0		; lpRect
		mov	eax, [ebp+0Ch]
		push	eax		; hWnd
		call	InvalidateRect
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4C03A7:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		cmp	dword ptr [ebx+298h], 0	; jumptable 004BEA3D case 1159
		jnz	short loc_4C03D1
		cmp	dword ptr [ebx+14h], 0
		jz	short loc_4C03D1
		mov	edx, [ebx]
		cmp	edx, [ebp+14h]
		jnz	short loc_4C03D1
		push	ebx
		call	loc_4B7C2C
		pop	ecx
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, [ebp+0Ch]
		push	ecx		; hWnd
		call	InvalidateRect

loc_4C03D1:				; CODE XREF: .text:004C03AEj
					; .text:004C03B4j ...
		xor	eax, eax
		jmp	loc_4C045E
; ---------------------------------------------------------------------------

loc_4C03D8:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		cmp	dword ptr [ebx+298h], 0	; jumptable 004BEA3D case 1160
		jz	short loc_4C0404
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4C0404
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4C0404
		mov	edx, [ebp+14h]
		push	edx		; s2
		lea	ecx, [ebx+29Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4C0408

loc_4C0404:				; CODE XREF: .text:004C03DFj
					; .text:004C03E5j ...
		xor	eax, eax
		jmp	short loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0408:				; CODE XREF: .text:004C0402j
		mov	edx, [ebp+18h]
		mov	eax, 1234h
		mov	[edx], ebx
		jmp	short loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0414:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		test	byte ptr [ebx+0Ch], 8 ;	jumptable 004BEA3D case	1162
		jnz	short loc_4C042F
		push	2
		push	ebx
		call	loc_4BD73C
		add	esp, 8
		dec	eax
		jnz	short loc_4C042F
		mov	eax, 1234h
		jmp	short loc_4C045E
; ---------------------------------------------------------------------------

loc_4C042F:				; CODE XREF: .text:004C0418j
					; .text:004C0426j
		xor	eax, eax
		jmp	short loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0433:				; CODE XREF: .text:004BEA3Dj
					; DATA XREF: .text:off_4BEA44o
		cmp	dword ptr [ebx+298h], 0	; jumptable 004BEA3D case 1163
		jnz	short loc_4C0451
		push	0		; lParam
		push	0		; wParam
		push	10h		; Msg
		mov	edx, [ebp+8]
		mov	ecx, [edx+224h]
		push	ecx		; hWnd
		call	PostMessageW

loc_4C0451:				; CODE XREF: .text:004C043Aj
		xor	eax, eax
		jmp	short loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0455:				; CODE XREF: .text:004BEA02j
					; .text:004BEA2Aj ...
		xor	eax, eax	; jumptable 004BEA3D default case
		jmp	short loc_4C045E
; ---------------------------------------------------------------------------

loc_4C0459:				; CODE XREF: .text:004BEADFj
					; .text:004BEB00j ...
		mov	eax, 1

loc_4C045E:				; CODE XREF: .text:004BE992j
					; .text:004BEB1Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		