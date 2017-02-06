.code

; Exported entry 366. _Ndisasm
; Exported entry 659. Ndisasm

; signed int __cdecl Ndisasm(uchar *cmd, ulong size, ulong ip, t_netasm	*da, int mode, t_module	*pmod)
		public Ndisasm
Ndisasm:				; CODE XREF: .text:00442A8Dp
					; .text:0045E5D9p ...
		push	ebp		; _Ndisasm
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+14h]
		jz	short loc_4D19FC
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4D19FC
		test	ebx, ebx
		jnz	short loc_4D1A03

loc_4D19FC:				; CODE XREF: .text:004D19F0j
					; .text:004D19F6j
		xor	eax, eax
		jmp	loc_4D2133
; ---------------------------------------------------------------------------

loc_4D1A03:				; CODE XREF: .text:004D19FAj
		mov	ecx, [ebp+10h]
		xor	eax, eax
		mov	[ebx], ecx
		xor	ecx, ecx
		mov	[ebx+10h], eax
		xor	eax, eax
		mov	[ebx+14h], ecx
		xor	ecx, ecx
		mov	[ebx+18h], eax
		xor	eax, eax
		mov	[ebx+24h], ecx
		mov	[ebx+28h], eax
		mov	word ptr [ebx+2Ch], 0
		mov	word ptr [ebx+22Ch], 0
		mov	word ptr [ebx+42Ch], 0
		mov	word ptr [ebx+62Ch], 0
		cmp	dword ptr [ebp+0Ch], 2
		jb	short loc_4D1A53
		mov	ecx, [ebp+8]
		movzx	eax, word ptr [ecx]
		mov	[ebp-0Ch], eax
		jmp	short loc_4D1A6C
; ---------------------------------------------------------------------------

loc_4D1A53:				; CODE XREF: .text:004D1A46j
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	al, [ecx]
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp+0Ch], 1
		jbe	short loc_4D1A6C
		mov	ecx, [ebp+8]
		mov	al, [ecx+1]
		mov	[ebp-0Bh], al

loc_4D1A6C:				; CODE XREF: .text:004D1A51j
					; .text:004D1A61j
		xor	esi, esi
		mov	eax, dword_5FF234
		test	eax, eax
		jz	short loc_4D1AC1
		mov	ecx, [ebp-0Ch]
		and	ecx, 0FFh
		shl	ecx, 3
		add	ecx, eax
		mov	eax, ecx

loc_4D1A87:				; CODE XREF: .text:004D1ABFj
		test	eax, eax
		jz	short loc_4D1A90
		cmp	dword ptr [eax], 0
		jnz	short loc_4D1A94

loc_4D1A90:				; CODE XREF: .text:004D1A89j
		xor	esi, esi
		jmp	short loc_4D1AC1
; ---------------------------------------------------------------------------

loc_4D1A94:				; CODE XREF: .text:004D1A8Ej
		mov	esi, [eax]
		mov	cx, [esi+8]
		cmp	cx, 1
		jnz	short loc_4D1AA7
		mov	edx, 0FFh
		jmp	short loc_4D1AB2
; ---------------------------------------------------------------------------

loc_4D1AA7:				; CODE XREF: .text:004D1A9Ej
		cmp	cx, 2
		jnz	short loc_4D1ABC
		mov	edx, 0FFFFh

loc_4D1AB2:				; CODE XREF: .text:004D1AA5j
		mov	ecx, [ebp-0Ch]
		xor	ecx, [esi+0Ch]
		test	ecx, edx
		jz	short loc_4D1AC1

loc_4D1ABC:				; CODE XREF: .text:004D1AABj
		mov	eax, [eax+4]
		jmp	short loc_4D1A87
; ---------------------------------------------------------------------------

loc_4D1AC1:				; CODE XREF: .text:004D1A75j
					; .text:004D1A92j ...
		test	esi, esi
		jz	short loc_4D1AD8
		movzx	eax, word ptr [esi+8]
		movzx	edx, word ptr [esi+0Ah]
		add	eax, edx
		cmp	eax, [ebp+0Ch]
		jbe	loc_4D1C2B

loc_4D1AD8:				; CODE XREF: .text:004D1AC3j
		mov	eax, 1
		mov	[ebx+0Ch], eax
		mov	[ebx+4], eax
		test	byte ptr [ebp+18h], 8
		jz	short loc_4D1AFE
		push	1		; n
		mov	edx, [ebp+8]
		push	edx		; code
		lea	ecx, [ebx+22Ch]
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch

loc_4D1AFE:				; CODE XREF: .text:004D1AE7j
		test	byte ptr [ebp+18h], 1
		jz	loc_4D1BA7
		cmp	dword_5BDCC8, 2
		jnz	short loc_4D1B2F
		mov	eax, off_52FF08
		lea	edx, [ebx+42Ch]
		push	eax
		push	100h
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax
		jmp	short loc_4D1B72
; ---------------------------------------------------------------------------

loc_4D1B2F:				; CODE XREF: .text:004D1B0Fj
		cmp	dword_5BDCC8, 3
		jnz	short loc_4D1B56
		mov	eax, off_530010
		lea	edx, [ebx+42Ch]
		push	eax
		push	100h
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax
		jmp	short loc_4D1B72
; ---------------------------------------------------------------------------

loc_4D1B56:				; CODE XREF: .text:004D1B36j
		mov	eax, off_52FF8C
		lea	edx, [ebx+42Ch]
		push	eax
		push	100h
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax

loc_4D1B72:				; CODE XREF: .text:004D1B2Dj
					; .text:004D1B54j
		push	offset asc_5755F6 ; " "
		mov	eax, 100h
		sub	eax, edi
		push	eax		; n
		lea	edx, [ebx+edi*2+42Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		push	1		; n
		mov	ecx, [ebp+8]
		push	ecx		; code
		lea	eax, [ebx+edi*2+42Ch]
		push	eax		; s
		call	HexdumpW
		add	esp, 0Ch

loc_4D1BA7:				; CODE XREF: .text:004D1B02j
		test	esi, esi
		jz	short loc_4D1BDE
		mov	dword ptr [ebx+8], 1Fh
		test	byte ptr [ebp+18h], 4
		jz	short loc_4D1BD8
		push	offset aCommandCross_0 ; "Command crosses end of code block"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebx+62Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D1BD8:				; CODE XREF: .text:004D1BB6j
		or	dword ptr [ebx+24h], 2
		jmp	short loc_4D1C21
; ---------------------------------------------------------------------------

loc_4D1BDE:				; CODE XREF: .text:004D1BA9j
		cmp	dword_5FF234, 0
		jz	short loc_4D1C1A
		mov	dword ptr [ebx+8], 1Fh
		test	byte ptr [ebp+18h], 4
		jz	short loc_4D1C14
		push	offset aUnknownComma_1 ; "Unknown command"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebx+62Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D1C14:				; CODE XREF: .text:004D1BF2j
		or	dword ptr [ebx+24h], 1
		jmp	short loc_4D1C21
; ---------------------------------------------------------------------------

loc_4D1C1A:				; CODE XREF: .text:004D1BE5j
		mov	dword ptr [ebx+8], 1Eh

loc_4D1C21:				; CODE XREF: .text:004D1BDCj
					; .text:004D1C18j
		mov	eax, 1
		jmp	loc_4D2133
; ---------------------------------------------------------------------------

loc_4D1C2B:				; CODE XREF: .text:004D1AD2j
		movzx	edx, word ptr [esi+8]
		mov	[ebp-8], edx
		mov	ecx, [ebp-8]
		mov	[ebx+0Ch], ecx
		movzx	eax, word ptr [esi+0Ah]
		add	eax, [ebp-8]
		mov	[ebx+4], eax
		mov	edx, [esi+4]
		mov	[ebx+8], edx
		mov	ecx, [esi+10h]
		mov	[ebx+28h], ecx
		mov	eax, [esi+10h]
		and	eax, 0FFh
		cmp	eax, 12h	; switch 19 cases
		ja	loc_4D1FF2	; jumptable 004D1C5F default case
		jmp	ds:off_4D1C66[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4D1C66	dd offset loc_4D1FF9	; DATA XREF: .text:004D1C5Fr
		dd offset loc_4D1CB7	; jump table for switch	statement
		dd offset loc_4D1CEB
		dd offset loc_4D1D20
		dd offset loc_4D1D20
		dd offset loc_4D1D20
		dd offset loc_4D1D20
		dd offset loc_4D1D20
		dd offset loc_4D1D20
		dd offset loc_4D1E03
		dd offset loc_4D1E30
		dd offset loc_4D1E5D
		dd offset loc_4D1E8A
		dd offset loc_4D1ED6
		dd offset loc_4D1F28
		dd offset loc_4D1F63
		dd offset loc_4D1F9C
		dd offset loc_4D1FD5
		dd offset loc_4D1FD5
; ---------------------------------------------------------------------------
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1CB7:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		mov	edx, [ebp+8]	; jumptable 004D1C5F case 1
		mov	ecx, [ebp-8]
		mov	eax, [edx+ecx]
		mov	[ebp-4], eax
		mov	eax, [ebp+10h]
		add	eax, [ebx+4]
		add	eax, [ebp-4]
		mov	[ebx+18h], eax
		test	byte ptr [ebp+18h], 1
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		push	eax		; u
		lea	edx, [ebx+2Ch]
		push	edx		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1CEB:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		mov	ecx, [ebp+8]	; jumptable 004D1C5F case 2
		mov	eax, [ebp-8]
		movsx	edx, byte ptr [ecx+eax]
		mov	[ebp-4], edx
		mov	eax, [ebp+10h]
		add	eax, [ebx+4]
		add	eax, [ebp-4]
		mov	[ebx+18h], eax
		test	byte ptr [ebp+18h], 1
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		push	eax		; u
		lea	edx, [ebx+2Ch]
		push	edx		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1D20:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		mov	ecx, [ebp+8]	; jumptable 004D1C5F cases 3-8
		mov	eax, [ebp-8]
		mov	edx, [ecx+eax]
		mov	[ebp-4], edx
		mov	[ebx+1Ch], edx
		mov	eax, [ebp-4]
		and	eax, 0FFFFFFh
		push	eax
		mov	ecx, [ebp-4]
		shr	ecx, 18h
		push	ecx
		mov	eax, [ebp+1Ch]
		push	eax
		call	loc_4D179C
		add	esp, 0Ch
		mov	[ebx+20h], eax
		test	byte ptr [ebp+18h], 1
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4D1D8C
		cmp	dword_5BDD00, 0
		jz	short loc_4D1D8C
		lea	edx, [ebx+2Ch]
		push	edx
		mov	ecx, [ebp-4]
		and	ecx, 0FFFFFFh
		push	ecx
		mov	eax, [ebp-4]
		shr	eax, 18h
		push	eax
		mov	edx, [ebp+1Ch]
		push	edx
		call	loc_4D1804
		add	esp, 10h
		mov	edi, eax
		jmp	short loc_4D1D8E
; ---------------------------------------------------------------------------

loc_4D1D8C:				; CODE XREF: .text:004D1D5Cj
					; .text:004D1D65j
		xor	edi, edi

loc_4D1D8E:				; CODE XREF: .text:004D1D8Aj
		test	edi, edi
		jnz	short loc_4D1DB8
		mov	eax, [ebp-4]
		lea	ecx, [ebx+2Ch]
		and	eax, 0FFFFFFh
		push	eax
		mov	edx, [ebp-4]
		shr	edx, 18h
		push	edx
		push	offset a02x06x	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1DB8:				; CODE XREF: .text:004D1D90j
		mov	eax, [ebp-4]
		shr	eax, 18h
		cmp	eax, 70h
		jnz	loc_4D1FF9	; jumptable 004D1C5F case 0
		push	offset aUnicode_3 ; "UNICODE "
		push	100h
		lea	edx, [ebx+62Ch]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax
		lea	eax, [ebx+2Ch]
		mov	edx, 100h
		sub	edx, edi
		push	eax		; src
		push	edx		; n
		lea	ecx, [ebx+edi*2+62Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1E03:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F case	9
		jz	short loc_4D1E16
		mov	eax, [ebp+8]
		mov	edx, [ebp-8]
		movsx	ecx, byte ptr [eax+edx]
		mov	[ebp-4], ecx

loc_4D1E16:				; CODE XREF: .text:004D1E07j
		mov	eax, [ebp-4]
		lea	edx, [ebx+2Ch]
		push	eax
		push	offset aI__8	; "%i."
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1E30:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F case	10
		jz	short loc_4D1E43
		mov	ecx, [ebp+8]
		mov	eax, [ebp-8]
		movzx	edx, word ptr [ecx+eax]
		mov	[ebp-4], edx

loc_4D1E43:				; CODE XREF: .text:004D1E34j
		mov	ecx, [ebp-4]
		lea	eax, [ebx+2Ch]
		push	ecx
		push	offset aI__8	; "%i."
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1E5D:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		mov	edx, [ebp+8]	; jumptable 004D1C5F case 11
		mov	ecx, [ebp-8]
		mov	eax, [edx+ecx]
		mov	[ebx+14h], eax
		test	byte ptr [ebp+18h], 1
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		push	eax
		push	offset aI__8	; "%i."
		lea	edx, [ebx+2Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1E8A:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F case	12
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		mov	ecx, [ebp+8]
		mov	eax, [ebp-8]
		movsx	edx, byte ptr [ecx+eax]
		mov	[ebp-4], edx
		mov	eax, [ebp-4]
		test	eax, eax
		jl	short loc_4D1EBD
		mov	edx, [ebp-4]
		push	edx		; u
		lea	ecx, [ebx+2Ch]
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1EBD:				; CODE XREF: .text:004D1EA6j
		neg	eax
		push	eax
		push	offset asc_57568E ; format
		lea	eax, [ebx+2Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1ED6:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F case	13
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		mov	edx, [ebp+8]
		mov	ecx, [ebp-8]
		mov	eax, [edx+ecx]
		mov	[ebp-4], eax
		mov	eax, [ebp-4]
		test	eax, eax
		jge	short loc_4D1EFA
		cmp	eax, 0FFFFC000h
		jg	short loc_4D1F0F

loc_4D1EFA:				; CODE XREF: .text:004D1EF1j
		mov	edx, [ebp-4]
		push	edx		; u
		lea	ecx, [ebx+2Ch]
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1F0F:				; CODE XREF: .text:004D1EF8j
		neg	eax
		push	eax
		push	offset asc_57568E ; format
		lea	eax, [ebx+2Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1F28:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F case	14
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		mov	edx, [ebp+8]
		mov	ecx, [ebp-8]
		mov	eax, [edx+ecx]
		mov	[ebp-4], eax
		mov	edx, [ebp+8]
		mov	ecx, [ebp-8]
		mov	eax, [edx+ecx+4]
		mov	edx, [ebp-4]
		push	edx
		push	eax
		push	offset a08x08x_0 ; format
		lea	ecx, [ebx+2Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_4D1FF9	; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1F63:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F case	15
		jz	loc_4D1FF9	; jumptable 004D1C5F case 0
		mov	eax, [ebp+8]
		mov	edx, [ebp-8]
		push	dword ptr [eax+edx] ; f
		lea	eax, [ebx+2Ch]
		push	eax		; s
		call	Printfloat4
		add	esp, 8
		push	4		; size
		mov	edx, [ebp+8]
		add	edx, [ebp-8]
		push	edx		; data
		lea	ecx, [ebx+62Ch]
		push	ecx		; s
		call	Nameoffloat
		add	esp, 0Ch
		jmp	short loc_4D1FF9 ; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1F9C:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F case	16
		jz	short loc_4D1FF9 ; jumptable 004D1C5F case 0
		mov	eax, [ebp+8]
		mov	edx, [ebp-8]
		push	dword ptr [eax+edx+4]
		push	dword ptr [eax+edx] ; d
		lea	eax, [ebx+2Ch]
		push	eax		; s
		call	Printfloat8
		add	esp, 0Ch
		push	8		; size
		mov	edx, [ebp+8]
		add	edx, [ebp-8]
		push	edx		; data
		lea	ecx, [ebx+62Ch]
		push	ecx		; s
		call	Nameoffloat
		add	esp, 0Ch
		jmp	short loc_4D1FF9 ; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1FD5:				; CODE XREF: .text:004D1C5Fj
					; DATA XREF: .text:off_4D1C66o
		test	byte ptr [ebp+18h], 1 ;	jumptable 004D1C5F cases 17,18
		jz	short loc_4D1FF9 ; jumptable 004D1C5F case 0
		push	1		; n
		mov	eax, [ebp+8]
		add	eax, [ebp-8]
		push	eax		; code
		lea	edx, [ebx+2Ch]
		push	edx		; s
		call	HexdumpW
		add	esp, 0Ch
		jmp	short loc_4D1FF9 ; jumptable 004D1C5F case 0
; ---------------------------------------------------------------------------

loc_4D1FF2:				; CODE XREF: .text:004D1C59j
		or	dword ptr [ebx+24h], 200h ; jumptable 004D1C5F default case

loc_4D1FF9:				; CODE XREF: .text:004D1C5Fj
					; .text:004D1CB2j ...
		test	byte ptr [ebp+18h], 8 ;	jumptable 004D1C5F case	0
		jz	short loc_4D2046
		mov	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp+8]
		push	eax		; code
		lea	edx, [ebx+22Ch]
		push	edx		; s
		call	HexdumpW
		add	esp, 0Ch
		mov	edi, eax
		cmp	word ptr [esi+0Ah], 0
		jbe	short loc_4D2046
		mov	word ptr [ebx+edi*2+22Ch], 20h
		movzx	eax, word ptr [esi+0Ah]
		push	eax		; n
		inc	edi
		mov	edx, [ebp+8]
		add	edx, [ebp-8]
		lea	ecx, [ebx+edi*2+22Ch]
		push	edx		; code
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch

loc_4D2046:				; CODE XREF: .text:004D1FFDj
					; .text:004D201Dj
		test	byte ptr [ebp+18h], 1
		jz	loc_4D20D6
		test	byte ptr [ebx+24h], 2
		jz	short loc_4D2071
		push	$CTW0("???")	; "???"
		push	100h		; n
		lea	eax, [ebx+42Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4D20D6
; ---------------------------------------------------------------------------

loc_4D2071:				; CODE XREF: .text:004D2054j
		mov	edx, [esi]
		lea	ecx, [ebx+42Ch]
		push	edx		; src
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		cmp	word ptr [esi+0Ah], 0
		jbe	short loc_4D20D6
		mov	word ptr [ebx+edi*2+42Ch], 20h
		inc	edi
		cmp	dword_5BDCD0, 0
		jz	short loc_4D20BA
		cmp	edi, 8
		jge	short loc_4D20BA

loc_4D20AA:				; CODE XREF: .text:004D20B8j
		mov	word ptr [ebx+edi*2+42Ch], 20h
		inc	edi
		cmp	edi, 8
		jl	short loc_4D20AA

loc_4D20BA:				; CODE XREF: .text:004D20A3j
					; .text:004D20A8j
		lea	eax, [ebx+2Ch]
		mov	edx, 100h
		sub	edx, edi
		push	eax		; src
		push	edx		; n
		lea	ecx, [ebx+edi*2+42Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D20D6:				; CODE XREF: .text:004D204Aj
					; .text:004D206Fj ...
		test	byte ptr [ebp+18h], 4
		jz	short loc_4D2130
		cmp	dword ptr [ebx+24h], 0
		jz	short loc_4D2130
		test	byte ptr [ebx+24h], 1
		jz	short loc_4D210A
		push	offset aUnknownComma_1 ; "Unknown command"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebx+62Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4D2130
; ---------------------------------------------------------------------------

loc_4D210A:				; CODE XREF: .text:004D20E6j
		test	byte ptr [ebx+25h], 2
		jz	short loc_4D2130
		push	offset aInternalOlly_0 ; "Internal OllyDbg error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebx+62Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D2130:				; CODE XREF: .text:004D20DAj
					; .text:004D20E0j ...
		mov	eax, [ebx+4]

loc_4D2133:				; CODE XREF: .text:004D19FEj
					; .text:004D1C26j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D213C:				; CODE XREF: .text:00410121p
					; .text:004D10BDp
		push	ebp
		mov	ebp, esp
		cmp	ppv, 0
		jnz	short loc_4D2151
		cmp	dword_57FE88, 0
		jnz	short loc_4D2155

loc_4D2151:				; CODE XREF: .text:004D2146j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D2155:				; CODE XREF: .text:004D214Fj
		push	offset ppv	; ppv
		push	offset stru_57D2F4 ; riid
		push	17h		; dwClsContext
		xor	edx, edx
		push	0		; pUnkOuter
		push	offset stru_57D734 ; rclsid
		mov	ppv, edx
		call	CoCreateInstance
		test	eax, eax
		jnz	short loc_4D2182
		cmp	ppv, 0
		jnz	short loc_4D2187

loc_4D2182:				; CODE XREF: .text:004D2177j
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D2187:				; CODE XREF: .text:004D2180j
		push	0
		push	1
		push	offset aHello_SpeechIn ; src
		call	_T
		mov	edx, ppv
		pop	ecx
		push	eax
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+50h]
		xor	eax, eax
		xor	edx, edx
		mov	dword_60743C, eax
		mov	dword_607444, edx
		mov	word_607448, 0
		xor	eax, eax
		mov	word_607648, 0
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D21C8:				; CODE XREF: .text:00401D16p
					; .text:00401D29p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset dword_60743C
		cmp	ppv, 0
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		jz	loc_4D2317
		cmp	dword_57FE88, 0
		jz	loc_4D2317
		test	ebx, ebx
		jnz	short loc_4D21FC
		mov	ebx, offset word_5756E4

loc_4D21FC:				; CODE XREF: .text:004D21F5j
		test	esi, esi
		jnz	short loc_4D2216
		push	ebx
		push	offset word_607448
		call	loc_410B90
		add	esp, 8
		test	eax, eax
		jz	loc_4D2317

loc_4D2216:				; CODE XREF: .text:004D21FEj
		cmp	esi, 1
		jnz	short loc_4D2235
		push	ebx
		push	offset word_607648
		call	loc_410B90
		add	esp, 8
		test	eax, eax
		jz	loc_4D2317
		jmp	short loc_4D2235
; ---------------------------------------------------------------------------

loc_4D2233:				; CODE XREF: .text:004D224Aj
		dec	dword ptr [edi]

loc_4D2235:				; CODE XREF: .text:004D2219j
					; .text:004D2231j
		cmp	dword ptr [edi], 0
		jle	short loc_4D224C
		mov	eax, [edi]
		mov	edx, eax
		shl	eax, 6
		add	eax, edx
		cmp	esi, dword ptr (stru_5FCE2C.bkpath+1D1Ch)[eax*8]
		jl	short loc_4D2233

loc_4D224C:				; CODE XREF: .text:004D2238j
		test	esi, esi
		jz	short loc_4D2255
		cmp	esi, 1
		jnz	short loc_4D2273

loc_4D2255:				; CODE XREF: .text:004D224Ej
		cmp	dword ptr [edi], 0
		jle	short loc_4D2273
		mov	ecx, [edi]
		mov	eax, ecx
		shl	ecx, 6
		add	ecx, eax
		cmp	esi, dword ptr (stru_5FCE2C.bkpath+1D1Ch)[ecx*8]
		jnz	short loc_4D2273
		dec	dword ptr [edi]
		jmp	short loc_4D2273
; ---------------------------------------------------------------------------

loc_4D2270:				; CODE XREF: .text:004D2277j
		add	ebx, 2

loc_4D2273:				; CODE XREF: .text:004D2253j
					; .text:004D2258j ...
		cmp	word ptr [ebx],	20h
		jz	short loc_4D2270
		cmp	word ptr [ebx],	0
		jz	loc_4D2317
		cmp	dword ptr [edi], 0
		jnz	short loc_4D2292
		call	GetTickCount
		mov	dword_607440, eax

loc_4D2292:				; CODE XREF: .text:004D2286j
		test	esi, esi
		jnz	short loc_4D22B4
		push	ebx		; src
		push	100h		; n
		push	offset word_607448 ; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	word_607648, 0
		jmp	short loc_4D22CC
; ---------------------------------------------------------------------------

loc_4D22B4:				; CODE XREF: .text:004D2294j
		cmp	esi, 1
		jnz	short loc_4D22CC
		push	ebx		; src
		push	100h		; n
		push	offset word_607648 ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D22CC:				; CODE XREF: .text:004D22B2j
					; .text:004D22B7j
		mov	eax, [edi]
		cmp	eax, 40h
		jge	short loc_4D2317
		mov	edx, [edi]
		mov	ecx, edx
		shl	edx, 6
		add	edx, ecx
		mov	dword ptr stru_5FF23C.n[edx*8],	esi
		mov	edx, eax
		shl	eax, 6
		push	ebx		; src
		add	eax, edx
		push	100h		; n
		shl	eax, 3
		add	eax, offset stru_5FF23C.text
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [edi]
		mov	eax, ecx
		shl	ecx, 6
		add	ecx, eax
		mov	edx, [ebp+10h]
		mov	stru_5FF23C.field_204[ecx*8], edx
		inc	dword ptr [edi]

loc_4D2317:				; CODE XREF: .text:004D21E0j
					; .text:004D21EDj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D231C:				; CODE XREF: .text:004105A8p
					; .text:loc_4D2FDCp
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_4D2325:				; CODE XREF: .text:004D232Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4D2325
		mov	eax, [ebp-4]
		add	esp, 0FFFFFDDCh
		push	ebx
		push	esi
		push	edi
		cmp	ppv, 0
		jz	short loc_4D2356
		cmp	dword_57FE88, 0
		jz	short loc_4D2356
		cmp	dword_60743C, 0
		jnz	short loc_4D2362

loc_4D2356:				; CODE XREF: .text:004D2342j
					; .text:004D234Bj
		xor	eax, eax
		mov	dword_60743C, eax
		jmp	loc_4D2FBE
; ---------------------------------------------------------------------------

loc_4D2362:				; CODE XREF: .text:004D2354j
		call	GetTickCount
		sub	eax, dword_607440
		cmp	eax, 0FAh
		jb	loc_4D2FBE
		mov	edx, dword_607444
		cmp	edx, stru_5FF23C.n
		jle	short loc_4D2398
		push	0
		push	3
		push	0
		mov	ecx, ppv
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+50h]

loc_4D2398:				; CODE XREF: .text:004D2384j
		mov	ebx, offset stru_5FF23C.text
		mov	eax, stru_5FF23C.field_204
		and	eax, 0F000h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 3000h
		jz	short loc_4D23BC
		cmp	dword_57FE8C, 0
		jnz	short loc_4D23D2

loc_4D23BC:				; CODE XREF: .text:004D23B1j
		push	0
		push	1
		push	ebx
		mov	edx, ppv
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+50h]
		jmp	loc_4D2F88
; ---------------------------------------------------------------------------

loc_4D23D2:				; CODE XREF: .text:004D23BAj
		xor	esi, esi

loc_4D23D4:				; CODE XREF: .text:004D244Aj
					; .text:004D2487j ...
		cmp	esi, 0E00h
		jle	short loc_4D2404
		mov	word ptr [ebp+esi*2-2028h], 0
		push	0
		mov	edx, ppv
		lea	eax, [ebp-2028h]
		push	9
		push	eax
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+50h]
		xor	esi, esi
		jmp	short loc_4D2404
; ---------------------------------------------------------------------------

loc_4D2401:				; CODE XREF: .text:004D2408j
		add	ebx, 2

loc_4D2404:				; CODE XREF: .text:004D23DAj
					; .text:004D23FFj
		cmp	word ptr [ebx],	20h
		jz	short loc_4D2401
		mov	ax, [ebx]
		test	ax, ax
		jz	loc_4D2F63
		cmp	ax, 2Bh
		jnz	short loc_4D244C
		push	offset aPlus	; "plus	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	short loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D244C:				; CODE XREF: .text:004D241Aj
		cmp	word ptr [ebx],	2Dh
		jnz	short loc_4D248C
		cmp	word ptr [ebx+2], 3Eh
		jnz	short loc_4D248C
		push	offset aFollows	; "follows "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D248C:				; CODE XREF: .text:004D2450j
					; .text:004D2457j
		cmp	word ptr [ebx],	2Dh
		jnz	short loc_4D24C5
		push	offset aMinus_0	; "minus "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D24C5:				; CODE XREF: .text:004D2490j
		cmp	word ptr [ebx],	2Ah
		jnz	short loc_4D24FE
		push	offset aTimes	; "times "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D24FE:				; CODE XREF: .text:004D24C9j
		cmp	word ptr [ebx],	2Fh
		jnz	short loc_4D2537
		push	offset aSlash	; "slash "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2537:				; CODE XREF: .text:004D2502j
		cmp	word ptr [ebx],	25h
		jnz	short loc_4D2570
		push	offset aPercent	; "percent "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2570:				; CODE XREF: .text:004D253Bj
		cmp	word ptr [ebx],	5Ch
		jnz	short loc_4D25A9
		push	offset aBackslash ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D25A9:				; CODE XREF: .text:004D2574j
		cmp	word ptr [ebx],	3Dh
		jnz	short loc_4D25E9
		cmp	word ptr [ebx+2], 3Eh
		jnz	short loc_4D25E9
		push	offset aPredictedAs ; "predicted as "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D25E9:				; CODE XREF: .text:004D25ADj
					; .text:004D25B4j
		cmp	word ptr [ebx],	3Dh
		jnz	short loc_4D2629
		cmp	word ptr [ebx+2], 3Dh
		jnz	short loc_4D2629
		push	offset aEqualTo	; "equal to "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2629:				; CODE XREF: .text:004D25EDj
					; .text:004D25F4j
		cmp	word ptr [ebx],	21h
		jnz	short loc_4D2669
		cmp	word ptr [ebx+2], 3Dh
		jnz	short loc_4D2669
		push	offset aNotEqualTo ; "not equal	to "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2669:				; CODE XREF: .text:004D262Dj
					; .text:004D2634j
		cmp	word ptr [ebx],	3Dh
		jnz	short loc_4D26A2
		push	offset aEquals	; "equals "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D26A2:				; CODE XREF: .text:004D266Dj
		cmp	word ptr [ebx],	5Bh
		jnz	short loc_4D26DB
		push	offset aMemory_0 ; "memory "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D26DB:				; CODE XREF: .text:004D26A6j
		cmp	word ptr [ebx],	5Dh
		jnz	short loc_4D26E9
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D26E9:				; CODE XREF: .text:004D26DFj
		cmp	word ptr [ebx],	26h
		jnz	short loc_4D2729
		cmp	word ptr [ebx+2], 26h
		jnz	short loc_4D2729
		push	offset aLogicalAnd ; "logical and "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2729:				; CODE XREF: .text:004D26EDj
					; .text:004D26F4j
		cmp	word ptr [ebx],	26h
		jnz	short loc_4D2762
		push	(offset	aLogicalAnd+10h) ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2762:				; CODE XREF: .text:004D272Dj
		cmp	word ptr [ebx],	7Ch
		jnz	short loc_4D27A2
		cmp	word ptr [ebx+2], 7Ch
		jnz	short loc_4D27A2
		push	offset aLogicalOr ; "logical or	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D27A2:				; CODE XREF: .text:004D2766j
					; .text:004D276Dj
		cmp	word ptr [ebx],	7Ch
		jnz	short loc_4D27B9
		cmp	dword ptr [ebp-8], 5000h
		jnz	short loc_4D27B9
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D27B9:				; CODE XREF: .text:004D27A6j
					; .text:004D27AFj
		cmp	word ptr [ebx],	7Ch
		jnz	short loc_4D27F2
		push	(offset	aLogicalOr+10h)	; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D27F2:				; CODE XREF: .text:004D27BDj
		cmp	word ptr [ebx],	5Eh
		jnz	short loc_4D282B
		push	offset aExclusiveOr ; "exclusive or "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D282B:				; CODE XREF: .text:004D27F6j
		cmp	word ptr [ebx],	2Eh
		jnz	short loc_4D2872
		cmp	word ptr [ebx+2], 2Eh
		jnz	short loc_4D2872
		cmp	word ptr [ebx+4], 2Eh
		jnz	short loc_4D2872
		push	offset aEllipsis ; "ellipsis "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 6
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2872:				; CODE XREF: .text:004D282Fj
					; .text:004D2836j ...
		cmp	word ptr [ebx],	3Ch
		jnz	short loc_4D28B2
		cmp	word ptr [ebx+2], 3Ch
		jnz	short loc_4D28B2
		push	offset aShiftLeft ; "shift left	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D28B2:				; CODE XREF: .text:004D2876j
					; .text:004D287Dj
		cmp	word ptr [ebx],	3Ch
		jnz	short loc_4D28F2
		cmp	word ptr [ebx+2], 3Dh
		jnz	short loc_4D28F2
		push	offset aLessThanOrEqua ; "less than or equal "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D28F2:				; CODE XREF: .text:004D28B6j
					; .text:004D28BDj
		cmp	word ptr [ebx],	3Ch
		jnz	short loc_4D2934
		cmp	dword ptr [ebp-8], 2000h
		jnz	short loc_4D2934
		push	offset aLessThan ; "less than "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2934:				; CODE XREF: .text:004D28F6j
					; .text:004D28FFj
		cmp	word ptr [ebx],	3Ch
		jnz	short loc_4D2942
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2942:				; CODE XREF: .text:004D2938j
		cmp	word ptr [ebx],	3Eh
		jnz	short loc_4D2982
		cmp	word ptr [ebx+2], 3Eh
		jnz	short loc_4D2982
		push	offset aShiftRight ; "shift right "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2982:				; CODE XREF: .text:004D2946j
					; .text:004D294Dj
		cmp	word ptr [ebx],	3Eh
		jnz	short loc_4D29C2
		cmp	word ptr [ebx+2], 3Dh
		jnz	short loc_4D29C2
		push	offset aGreaterThanOrE ; "greater than or equal	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 4
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D29C2:				; CODE XREF: .text:004D2986j
					; .text:004D298Dj
		cmp	word ptr [ebx],	3Eh
		jnz	short loc_4D2A04
		cmp	dword ptr [ebp-8], 2000h
		jnz	short loc_4D2A04
		push	offset aGreaterThan ; "greater than "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2A04:				; CODE XREF: .text:004D29C6j
					; .text:004D29CFj
		cmp	word ptr [ebx],	3Eh
		jnz	short loc_4D2A12
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2A12:				; CODE XREF: .text:004D2A08j
		cmp	word ptr [ebx],	2Ch
		jnz	short loc_4D2A4D
		cmp	dword ptr [ebp-8], 1000h
		jnz	short loc_4D2A4D
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	offset aSilenceMsec150 ; "<silence msec=\"150\"/>"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2A4D:				; CODE XREF: .text:004D2A16j
					; .text:004D2A1Fj
		mov	dx, [ebx]
		push	edx		; c
		call	_iswalnum
		pop	ecx
		test	eax, eax
		jnz	short loc_4D2A71
		cmp	word ptr [ebx],	5Fh
		jz	short loc_4D2A71
		cmp	word ptr [ebx],	23h
		jz	short loc_4D2A71
		cmp	word ptr [ebx],	24h
		jnz	loc_4D2F4F

loc_4D2A71:				; CODE XREF: .text:004D2A59j
					; .text:004D2A5Fj ...
		mov	ecx, 1
		mov	[ebp-14h], ecx
		mov	[ebp-10h], ecx
		mov	[ebp-0Ch], ecx
		xor	eax, eax
		mov	[ebp-18h], eax
		xor	edi, edi
		cmp	word ptr [ebx],	30h
		jnz	short loc_4D2AB3
		mov	ax, [ebx+2]
		cmp	ax, 78h
		jz	short loc_4D2A9C
		cmp	ax, 58h
		jnz	short loc_4D2AB3

loc_4D2A9C:				; CODE XREF: .text:004D2A94j
		mov	dx, [ebx+4]
		push	edx		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_4D2AB3
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		mov	[ebp-10h], ecx

loc_4D2AB3:				; CODE XREF: .text:004D2A8Aj
					; .text:004D2A9Aj ...
		lea	eax, [ebp+edi*2-2228h]
		mov	[ebp-20h], eax
		jmp	short loc_4D2AF9
; ---------------------------------------------------------------------------

loc_4D2ABF:				; CODE XREF: .text:004D2B05j
					; .text:004D2B0Bj ...
		mov	dx, [ebx]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4D2AD5
		xor	eax, eax
		mov	[ebp-14h], eax
		mov	[ebp-10h], eax

loc_4D2AD5:				; CODE XREF: .text:004D2ACBj
		mov	dx, [ebx]
		push	edx		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4D2AE8
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_4D2AE8:				; CODE XREF: .text:004D2AE1j
		mov	dx, [ebx]
		mov	eax, [ebp-20h]
		add	ebx, 2
		inc	edi
		mov	[eax], dx
		add	dword ptr [ebp-20h], 2

loc_4D2AF9:				; CODE XREF: .text:004D2ABDj
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswalnum
		pop	ecx
		test	eax, eax
		jnz	short loc_4D2ABF
		cmp	word ptr [ebx],	5Fh
		jz	short loc_4D2ABF
		cmp	word ptr [ebx],	23h
		jz	short loc_4D2ABF
		cmp	word ptr [ebx],	24h
		jz	short loc_4D2ABF
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4D2BA8
		cmp	word ptr [ebx],	2Eh
		jnz	short loc_4D2BA8
		xor	eax, eax
		mov	[ebp-0Ch], eax
		mov	dx, [ebx+2]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4D2B50
		cmp	word ptr [ebx+2], 65h
		jz	short loc_4D2B50
		cmp	word ptr [ebx+2], 45h
		jz	short loc_4D2B50
		add	ebx, 2
		jmp	short loc_4D2BA8
; ---------------------------------------------------------------------------

loc_4D2B50:				; CODE XREF: .text:004D2B3Bj
					; .text:004D2B42j ...
		mov	cx, [ebx]
		add	ebx, 2
		mov	[ebp+edi*2-2228h], cx
		inc	edi
		xor	eax, eax
		mov	[ebp-10h], eax
		lea	edx, [ebp+edi*2-2228h]
		mov	[ebp-24h], edx
		jmp	short loc_4D2B81
; ---------------------------------------------------------------------------

loc_4D2B70:				; CODE XREF: .text:004D2B8Dj
		mov	ax, [ebx]
		mov	ecx, [ebp-24h]
		add	ebx, 2
		inc	edi
		mov	[ecx], ax
		add	dword ptr [ebp-24h], 2

loc_4D2B81:				; CODE XREF: .text:004D2B6Ej
		mov	dx, [ebx]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4D2B70
		mov	ax, [ebx]
		cmp	ax, 65h
		jz	short loc_4D2B9E
		cmp	ax, 45h
		jnz	short loc_4D2BA8

loc_4D2B9E:				; CODE XREF: .text:004D2B96j
		mov	dword ptr [ebp-18h], 1
		add	ebx, 2

loc_4D2BA8:				; CODE XREF: .text:004D2B1Dj
					; .text:004D2B27j ...
		mov	word ptr [ebp+edi*2-2228h], 0
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4D2C6C
		xor	edx, edx
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-8], 5000h
		jz	short loc_4D2BEE
		cmp	dword_57FE90, 0
		jz	short loc_4D2BEE
		jmp	short loc_4D2BD8
; ---------------------------------------------------------------------------

loc_4D2BD5:				; CODE XREF: .text:004D2BECj
		inc	dword ptr [ebp-4]

loc_4D2BD8:				; CODE XREF: .text:004D2BD3j
		lea	ecx, [edi-1]
		cmp	ecx, [ebp-4]
		jle	short loc_4D2BEE
		mov	eax, [ebp-4]
		cmp	word ptr [ebp+eax*2-2228h], 30h
		jz	short loc_4D2BD5

loc_4D2BEE:				; CODE XREF: .text:004D2BC8j
					; .text:004D2BD1j ...
		mov	edx, [ebp-4]
		lea	ecx, [ebp+edx*2-2228h]
		mov	[ebp-28h], ecx
		cmp	edi, [ebp-4]
		jle	loc_4D23D4

loc_4D2C04:				; CODE XREF: .text:004D2C65j
		mov	eax, [ebp-28h]
		mov	dx, [eax]
		mov	[ebp-1Ch], dx
		add	dword ptr [ebp-28h], 2
		inc	dword ptr [ebp-4]
		mov	cx, [ebp-1Ch]
		push	ecx		; ch
		call	__ltowupper
		pop	ecx
		mov	[ebp+esi*2-2028h], ax
		mov	eax, edi
		sub	eax, [ebp-4]
		inc	esi
		cmp	eax, 4
		jnz	short loc_4D2C57
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	offset aSilenceMsec150 ; "<silence msec=\"150\"/>"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_4D2C57:				; CODE XREF: .text:004D2C31j
		mov	word ptr [ebp+esi*2-2028h], 20h
		inc	esi
		cmp	edi, [ebp-4]
		jg	short loc_4D2C04
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2C6C:				; CODE XREF: .text:004D2BB6j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4D2CE5
		mov	ecx, esi
		mov	edx, 1000h
		sub	edx, esi
		lea	eax, [ebp-2028h]
		add	ecx, ecx
		push	offset aContextIdNumbe ; "<context ID =	\"number_cardinal\">"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	edx, [ebp-2228h]
		mov	eax, esi
		push	edx		; src
		mov	ecx, 1000h
		sub	ecx, esi
		lea	edx, [ebp-2028h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	eax, esi
		mov	ecx, 1000h
		sub	ecx, esi
		lea	edx, [ebp-2028h]
		add	eax, eax
		push	offset aContext	; "</context>"
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2CE5:				; CODE XREF: .text:004D2C70j
		cmp	dword ptr [ebp-14h], 0
		jz	loc_4D2E5B
		mov	eax, esi
		mov	ecx, 1000h
		sub	ecx, esi
		lea	edx, [ebp-2028h]
		add	eax, eax
		push	offset aContextIdNum_0 ; "<context ID =	\"number_decimal\">"
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	ecx, [ebp-2228h]
		mov	edx, esi
		push	ecx		; src
		mov	eax, 1000h
		sub	eax, esi
		lea	ecx, [ebp-2028h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, esi
		mov	eax, 1000h
		sub	eax, esi
		lea	ecx, [ebp-2028h]
		add	edx, edx
		push	offset aContext	; "</context>"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		cmp	dword ptr [ebp-18h], 0
		jz	loc_4D23D4
		push	offset aTimesTenToThe ;	"times ten to the "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 1000h
		sub	eax, esi
		lea	ecx, [ebp-2028h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		cmp	word ptr [ebx],	2Bh
		jnz	short loc_4D2DC8
		push	offset aPlus	; "plus	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 1000h
		sub	eax, esi
		lea	ecx, [ebp-2028h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2
		jmp	short loc_4D2DFC
; ---------------------------------------------------------------------------

loc_4D2DC8:				; CODE XREF: .text:004D2D96j
		cmp	word ptr [ebx],	2Dh
		jnz	short loc_4D2DFC
		push	offset aMinus_0	; "minus "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 1000h
		sub	eax, esi
		lea	ecx, [ebp-2028h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	ebx, 2

loc_4D2DFC:				; CODE XREF: .text:004D2DC6j
					; .text:004D2DCCj
		lea	edi, [ebp+esi*2-2028h]
		jmp	short loc_4D2E12
; ---------------------------------------------------------------------------

loc_4D2E05:				; CODE XREF: .text:004D2E1Ej
		mov	ax, [ebx]
		add	ebx, 2
		mov	[edi], ax
		inc	esi
		add	edi, 2

loc_4D2E12:				; CODE XREF: .text:004D2E03j
		mov	dx, [ebx]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4D2E05
		mov	word ptr [ebp+esi*2-2028h], 20h
		inc	esi
		push	offset aPower	; "power "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, esi
		mov	ecx, 1000h
		sub	ecx, esi
		lea	edx, [ebp-2028h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2E5B:				; CODE XREF: .text:004D2CE9j
		cmp	dword ptr [ebp-8], 1000h
		jnz	short loc_4D2E78
		lea	ecx, [ebp-2228h]
		push	ecx		; int
		push	offset aAsm	; s2
		call	loc_4838C4
		add	esp, 8

loc_4D2E78:				; CODE XREF: .text:004D2E62j
		cmp	edi, 2
		jle	loc_4D2F19
		cmp	dword ptr [ebp-8], 3000h
		jz	loc_4D2F19
		mov	ax, [ebp+edi*2-222Ch]
		push	eax		; c
		call	_iswlower
		pop	ecx
		test	eax, eax
		jz	short loc_4D2F19
		mov	ax, [ebp+edi*2-222Ah]
		cmp	ax, 41h
		jz	short loc_4D2EB5
		cmp	ax, 57h
		jnz	short loc_4D2F19

loc_4D2EB5:				; CODE XREF: .text:004D2EADj
		mov	dx, [ebp+edi*2-222Ah]
		lea	ecx, [ebp-2228h]
		mov	[ebp-1Ah], dx
		mov	edx, esi
		mov	word ptr [ebp+edi*2-222Ah], 0
		push	ecx		; src
		mov	eax, 1000h
		sub	eax, esi
		lea	ecx, [ebp-2028h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	word ptr [ebp+esi*2-2028h], 20h
		inc	esi
		mov	ax, [ebp-1Ah]
		mov	[ebp+esi*2-2028h], ax
		inc	esi
		mov	word ptr [ebp+esi*2-2028h], 20h
		inc	esi
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2F19:				; CODE XREF: .text:004D2E7Bj
					; .text:004D2E88j ...
		lea	edx, [ebp-2228h]
		mov	eax, esi
		push	edx		; src
		mov	ecx, 1000h
		sub	ecx, esi
		lea	edx, [ebp-2028h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	word ptr [ebp+esi*2-2028h], 20h
		inc	esi
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2F4F:				; CODE XREF: .text:004D2A6Bj
		mov	cx, [ebx]
		mov	[ebp+esi*2-2028h], cx
		add	ebx, 2
		inc	esi
		jmp	loc_4D23D4
; ---------------------------------------------------------------------------

loc_4D2F63:				; CODE XREF: .text:004D2410j
		test	esi, esi
		jle	short loc_4D2F88
		mov	word ptr [ebp+esi*2-2028h], 0
		push	0
		mov	edx, ppv
		lea	eax, [ebp-2028h]
		push	9
		push	eax
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+50h]

loc_4D2F88:				; CODE XREF: .text:004D23CDj
					; .text:004D2F65j
		mov	eax, stru_5FF23C.n
		mov	dword_607444, eax
		dec	dword_60743C
		mov	eax, dword_60743C
		test	eax, eax
		jle	short loc_4D2FBE
		mov	edx, eax
		shl	edx, 6
		add	edx, eax
		shl	edx, 3
		push	edx		; n
		push	(offset	stru_5FF23C.n+208h) ; src
		push	offset stru_5FF23C ; dest
		call	_memmove
		add	esp, 0Ch

loc_4D2FBE:				; CODE XREF: .text:004D235Dj
					; .text:004D2372j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D2FC8:				; CODE XREF: .text:00401D31p
					; .text:00401DC5p ...
		push	ebp
		mov	ebp, esp
		call	GetTickCount
		sub	eax, 2710h
		mov	dword_607440, eax
		jmp	short loc_4D2FE1
; ---------------------------------------------------------------------------

loc_4D2FDC:				; CODE XREF: .text:004D2FE8j
		call	loc_4D231C

loc_4D2FE1:				; CODE XREF: .text:004D2FDAj
		cmp	dword_60743C, 0
		jg	short loc_4D2FDC
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D2FEC:				; CODE XREF: .text:00401D5Cp
					; .text:00401DF0p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	edx, offset dword_60743C
		cmp	ppv, 0
		jz	short loc_4D303E
		cmp	dword_57FE88, 0
		jz	short loc_4D303E
		jmp	short loc_4D300E
; ---------------------------------------------------------------------------

loc_4D300C:				; CODE XREF: .text:004D3023j
		dec	dword ptr [edx]

loc_4D300E:				; CODE XREF: .text:004D300Aj
		cmp	dword ptr [edx], 0
		jle	short loc_4D3025
		mov	ecx, [edx]
		mov	ebx, ecx
		shl	ecx, 6
		add	ecx, ebx
		cmp	eax, dword ptr (stru_5FCE2C.bkpath+1D1Ch)[ecx*8]
		jz	short loc_4D300C

loc_4D3025:				; CODE XREF: .text:004D3011j
		cmp	eax, dword_607444
		jg	short loc_4D303E
		push	0
		push	3
		push	0
		mov	eax, ppv
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+50h]

loc_4D303E:				; CODE XREF: .text:004D2FFFj
					; .text:004D3008j ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D3044:				; CODE XREF: .text:004107BFp
					; .text:004D10CCp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, ppv
		test	ebx, ebx
		jz	short loc_4D3084
		cmp	dword_57FE88, 0
		jz	short loc_4D3071
		push	0
		push	2
		push	offset aGoodBye	; src
		call	_T
		pop	ecx
		push	eax
		push	ebx
		mov	eax, [ebx]
		call	dword ptr [eax+50h]

loc_4D3071:				; CODE XREF: .text:004D3059j
		mov	edx, ppv
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+8]
		xor	eax, eax
		mov	ppv, eax

loc_4D3084:				; CODE XREF: .text:004D3050j
		xor	edx, edx
		mov	dword_60743C, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4D3090(void *s1, void	*s2)
loc_4D3090:				; DATA XREF: .text:004D30ECo
		push	ebp
		mov	ebp, esp
		push	10h		; n
		mov	eax, [ebp+0Ch]
		push	eax		; s2
		mov	edx, [ebp+8]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D30A8:				; CODE XREF: .text:004D376Ep
					; .text:loc_4D3CA1p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset dword_607848
		cmp	dword_607850, 0
		jnz	short loc_4D30C6
		call	loc_4D31EC
		jmp	loc_4D31E5
; ---------------------------------------------------------------------------

loc_4D30C6:				; CODE XREF: .text:004D30BAj
		mov	eax, [edi]
		test	eax, eax
		jz	loc_4D31E5
		cmp	dword_607854, 0
		jz	loc_4D31E5
		mov	edx, dword_607850
		cmp	edx, 1
		jz	loc_4D31E5
		push	offset loc_4D3090 ; _DWORD
		push	14h		; size
		push	edx		; count
		push	eax		; data
		call	Heapsort
		add	esp, 10h
		xor	esi, esi
		mov	ebx, 1
		jmp	loc_4D3199
; ---------------------------------------------------------------------------

loc_4D3109:				; CODE XREF: .text:004D319Fj
		mov	edx, ebx
		mov	ecx, esi
		shl	edx, 2
		push	10h		; n
		shl	ecx, 2
		mov	eax, [edi]
		lea	edx, [edx+edx*4]
		add	edx, eax
		lea	ecx, [ecx+ecx*4]
		add	ecx, eax
		push	edx		; s2
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D3158
		inc	esi
		cmp	ebx, esi
		jle	short loc_4D3198
		mov	edx, ebx
		mov	ecx, esi
		shl	edx, 2
		push	14h		; n
		shl	ecx, 2
		mov	eax, [edi]
		lea	edx, [edx+edx*4]
		add	edx, eax
		lea	ecx, [ecx+ecx*4]
		add	ecx, eax
		push	edx		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4D3198
; ---------------------------------------------------------------------------

loc_4D3158:				; CODE XREF: .text:004D312Dj
		lea	eax, [esi+esi*4]
		mov	edx, [edi]
		mov	ecx, [edx+eax*4+10h]
		mov	edx, dword_607854
		cmp	word ptr [edx+ecx*2], 5Fh
		jz	short loc_4D3184
		lea	ecx, [ebx+ebx*4]
		mov	edx, [edi]
		mov	ecx, [edx+ecx*4+10h]
		mov	edx, dword_607854
		cmp	word ptr [edx+ecx*2], 49h
		jnz	short loc_4D3198

loc_4D3184:				; CODE XREF: .text:004D316Cj
		cmp	ebx, esi
		jle	short loc_4D3198
		lea	ecx, [ebx+ebx*4]
		mov	edx, [edi]
		push	dword ptr [edx+ecx*4+10h]
		mov	ecx, [edi]	; int
		pop	edx		; int
		mov	[ecx+eax*4+10h], edx

loc_4D3198:				; CODE XREF: .text:004D3132j
					; .text:004D3156j ...
		inc	ebx

loc_4D3199:				; CODE XREF: .text:004D3104j
		cmp	ebx, dword_607850
		jl	loc_4D3109
		lea	ebx, [esi+1]
		mov	dword_607850, ebx
		push	offset dword_60784C ; newcount
		push	14h		; itemsize
		push	ebx		; count
		mov	eax, [edi]	; int
		push	eax		; data
		call	Mempurge
		add	esp, 10h
		mov	[edi], eax
		mov	edx, dword_60785C ; int
		mov	ecx, dword_607854 ; int
		push	offset dword_607858 ; newcount
		push	2		; itemsize
		push	edx		; count
		push	ecx		; data
		call	Mempurge
		add	esp, 10h
		mov	dword_607854, eax

loc_4D31E5:				; CODE XREF: .text:004D30C1j
					; .text:004D30CAj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D31EC:				; CODE XREF: .text:004107BAp
					; .text:004D30BCp ...
		push	ebp
		mov	ebp, esp
		mov	eax, dword_607848
		test	eax, eax
		jz	short loc_4D3207
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_607848, edx

loc_4D3207:				; CODE XREF: .text:004D31F6j
		xor	ecx, ecx
		mov	dword_607850, ecx
		mov	dword_60784C, ecx
		mov	eax, dword_607854
		test	eax, eax
		jz	short loc_4D322D
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_607854, edx

loc_4D322D:				; CODE XREF: .text:004D321Cj
		xor	eax, eax
		mov	dword_60785C, eax
		mov	dword_607858, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D323C:				; CODE XREF: .text:0041015Ap
					; .text:00410177p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF9A0h
		push	ebx
		push	esi
		push	edi
		lea	ebx, [ebp-54h]
		call	loc_4D31EC
		push	offset aGuids	; "GUIDS"
		push	offset aRes_guids ; "RES_GUIDS"
		lea	eax, [ebp-660h]
		push	eax		; int
		call	loc_4A940C
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4D328A
		push	0
		lea	eax, [ebp-18h]
		push	eax
		lea	edx, [ebp-14h]
		push	edx
		lea	ecx, [ebp-660h]
		push	ecx
		call	loc_4A929C
		add	esp, 10h
		mov	esi, eax

loc_4D328A:				; CODE XREF: .text:004D326Dj
		test	esi, esi
		jnz	short loc_4D329A
		cmp	dword ptr [ebp-14h], 7265560Ah
		jz	short loc_4D329A
		or	esi, 0FFFFFFFFh

loc_4D329A:				; CODE XREF: .text:004D328Cj
					; .text:004D3295j
		test	esi, esi
		jnz	short loc_4D32C8
		push	4		; int
		lea	eax, [ebp-20h]
		push	eax		; dest
		lea	edx, [ebp-660h]
		push	edx		; int
		call	loc_4A931C
		add	esp, 0Ch
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 4
		jnz	short loc_4D32C5
		cmp	dword ptr [ebp-20h], 2010000h
		jz	short loc_4D32C8

loc_4D32C5:				; CODE XREF: .text:004D32BAj
		or	esi, 0FFFFFFFFh

loc_4D32C8:				; CODE XREF: .text:004D329Cj
					; .text:004D32C3j
		test	esi, esi
		jnz	loc_4D3410

loc_4D32D0:				; CODE XREF: .text:004D340Aj
		lea	eax, [ebp-1Ch]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		lea	ecx, [ebp-14h]
		push	ecx
		lea	eax, [ebp-660h]
		push	eax
		call	loc_4A929C
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_4D3410
		cmp	dword ptr [ebp-14h], 646E450Ah
		jz	loc_4D3410
		mov	eax, [ebp-14h]
		sub	eax, 64697567h
		jz	short loc_4D331C
		sub	eax, 8F7F900h
		jz	loc_4D339B
		jmp	loc_4D3405
; ---------------------------------------------------------------------------

loc_4D331C:				; CODE XREF: .text:004D330Aj
		cmp	dword_607848, 0
		jz	short loc_4D332D
		or	esi, 0FFFFFFFFh
		jmp	loc_4D3408
; ---------------------------------------------------------------------------

loc_4D332D:				; CODE XREF: .text:004D3323j
		mov	eax, [ebp-1Ch]
		mov	ecx, 14h
		xor	edx, edx	; int
		div	ecx
		mov	ecx, eax
		mov	dword_607850, ecx
		add	ecx, 400h	; int
		mov	dword_60784C, ecx
		push	1		; flags
		mov	eax, dword_60784C
		shl	eax, 2
		lea	eax, [eax+eax*4] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_607848, edi
		test	edi, edi
		jnz	short loc_4D3377
		or	esi, 0FFFFFFFFh
		jmp	loc_4D3408
; ---------------------------------------------------------------------------

loc_4D3377:				; CODE XREF: .text:004D336Dj
		mov	eax, [ebp-1Ch]
		lea	edx, [ebp-660h]
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		add	esp, 0Ch
		mov	[ebp-18h], eax
		mov	ecx, [ebp-18h]
		cmp	ecx, [ebp-1Ch]
		jz	short loc_4D3408
		or	esi, 0FFFFFFFFh
		jmp	short loc_4D3408
; ---------------------------------------------------------------------------

loc_4D339B:				; CODE XREF: .text:004D3311j
		cmp	dword_607854, 0
		jz	short loc_4D33A9
		or	esi, 0FFFFFFFFh
		jmp	short loc_4D3408
; ---------------------------------------------------------------------------

loc_4D33A9:				; CODE XREF: .text:004D33A2j
		mov	eax, [ebp-1Ch]
		shr	eax, 1
		mov	dword_60785C, eax
		add	eax, 6400h	; int
		mov	dword_607858, eax
		push	1		; flags
		mov	edx, dword_607858
		add	edx, edx	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_607854, edi
		test	edi, edi
		jnz	short loc_4D33E1
		or	esi, 0FFFFFFFFh
		jmp	short loc_4D3408
; ---------------------------------------------------------------------------

loc_4D33E1:				; CODE XREF: .text:004D33DAj
		mov	eax, [ebp-1Ch]
		lea	edx, [ebp-660h]
		push	eax
		push	edi
		push	edx
		call	loc_4A9388
		add	esp, 0Ch
		mov	[ebp-18h], eax
		mov	ecx, [ebp-18h]
		cmp	ecx, [ebp-1Ch]
		jz	short loc_4D3408
		or	esi, 0FFFFFFFFh
		jmp	short loc_4D3408
; ---------------------------------------------------------------------------

loc_4D3405:				; CODE XREF: .text:004D3317j
		or	esi, 0FFFFFFFFh

loc_4D3408:				; CODE XREF: .text:004D3328j
					; .text:004D3372j ...
		test	esi, esi
		jz	loc_4D32D0

loc_4D3410:				; CODE XREF: .text:004D32CAj
					; .text:004D32EFj ...
		test	esi, esi
		jnz	short loc_4D3426
		cmp	dword_607848, 0
		jz	short loc_4D3426
		cmp	dword_607854, 0
		jnz	short loc_4D3491

loc_4D3426:				; CODE XREF: .text:004D3412j
					; .text:004D341Bj
		call	loc_4D31EC
		mov	esi, 1000h
		push	1		; flags
		mov	eax, esi
		mov	dword_60784C, esi
		shl	eax, 2
		lea	eax, [eax+eax*4] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	dword_607848, eax
		mov	esi, dword_60784C
		lea	esi, [esi+esi*4]
		lea	esi, [esi+esi*4]
		mov	dword_607858, esi
		push	1		; flags
		add	esi, esi
		push	esi		; size
		call	Memalloc
		add	esp, 8
		mov	dword_607854, eax
		cmp	dword_607848, 0
		jz	short loc_4D3484
		cmp	dword_607854, 0
		jnz	short loc_4D3491

loc_4D3484:				; CODE XREF: .text:004D3479j
		call	loc_4D31EC
		or	eax, 0FFFFFFFFh
		jmp	loc_4D3775
; ---------------------------------------------------------------------------

loc_4D3491:				; CODE XREF: .text:004D3424j
					; .text:004D3482j
		xor	esi, esi

loc_4D3493:				; CODE XREF: .text:004D3768j
		test	esi, esi
		jnz	short loc_4D34B3
		lea	eax, [ebp-24h]
		push	eax		; phkResult
		push	20019h		; samDesired
		push	0		; ulOptions
		push	offset aInterface_0 ; "Interface"
		push	80000000h	; hKey
		call	RegOpenKeyExW
		jmp	short loc_4D34EE
; ---------------------------------------------------------------------------

loc_4D34B3:				; CODE XREF: .text:004D3495j
		cmp	esi, 1
		jnz	short loc_4D34D4
		lea	edx, [ebp-24h]
		push	edx		; phkResult
		push	20019h		; samDesired
		push	0		; ulOptions
		push	offset aClsid	; lpSubKey
		push	80000000h	; hKey
		call	RegOpenKeyExW
		jmp	short loc_4D34EE
; ---------------------------------------------------------------------------

loc_4D34D4:				; CODE XREF: .text:004D34B6j
		lea	ecx, [ebp-24h]
		push	ecx		; phkResult
		push	20019h		; samDesired
		push	0		; ulOptions
		push	offset aTypelib	; lpSubKey
		push	80000000h	; hKey
		call	RegOpenKeyExW

loc_4D34EE:				; CODE XREF: .text:004D34B1j
					; .text:004D34D2j
		test	eax, eax
		jnz	loc_4D3764
		xor	eax, eax
		mov	[ebp-4], eax

loc_4D34FB:				; CODE XREF: .text:004D3756j
		push	100h		; cbName
		lea	edx, [ebp-254h]
		push	edx		; lpName
		mov	ecx, [ebp-4]
		push	ecx		; dwIndex
		mov	eax, [ebp-24h]
		push	eax		; hKey
		call	RegEnumKeyW
		test	eax, eax
		jnz	loc_4D375B
		cmp	word ptr [ebp-254h], 7Bh
		jnz	loc_4D3753
		mov	word ptr [ebp-654h], 0
		test	esi, esi
		jz	short loc_4D353C
		cmp	esi, 1
		jnz	short loc_4D3563

loc_4D353C:				; CODE XREF: .text:004D3535j
		mov	dword ptr [ebp-10h], 200h
		lea	edx, [ebp-10h]
		push	edx		; lpcbValue
		lea	ecx, [ebp-654h]
		push	ecx		; lpValue
		lea	eax, [ebp-254h]
		push	eax		; lpSubKey
		mov	edx, [ebp-24h]
		push	edx		; hKey
		call	RegQueryValueW
		jmp	loc_4D35E9
; ---------------------------------------------------------------------------

loc_4D3563:				; CODE XREF: .text:004D353Aj
		lea	ecx, [ebp-28h]
		lea	eax, [ebp-254h]
		push	ecx		; phkResult
		push	20019h		; samDesired
		push	0		; ulOptions
		push	eax		; lpSubKey
		mov	edx, [ebp-24h]
		push	edx		; hKey
		call	RegOpenKeyExW
		test	eax, eax
		jnz	short loc_4D35E9
		push	100h		; cbName
		lea	ecx, [ebp-454h]
		push	ecx		; lpName
		push	0		; dwIndex
		mov	eax, [ebp-28h]
		push	eax		; hKey
		call	RegEnumKeyW
		test	eax, eax
		jnz	short loc_4D35E0
		lea	edx, [ebp-0Ch]
		lea	ecx, [ebp-8]
		push	edx
		push	ecx
		lea	eax, [ebp-454h]
		push	offset aI_I_0	; format
		push	eax		; buffer
		call	_swscanf
		add	esp, 10h
		cmp	eax, 2
		jnz	short loc_4D35E0
		mov	dword ptr [ebp-10h], 200h
		lea	edx, [ebp-10h]
		push	edx		; lpcbValue
		lea	ecx, [ebp-654h]
		push	ecx		; lpValue
		lea	eax, [ebp-454h]
		push	eax		; lpSubKey
		mov	edx, [ebp-28h]
		push	edx		; hKey
		call	RegQueryValueW

loc_4D35E0:				; CODE XREF: .text:004D359Bj
					; .text:004D35BCj
		mov	ecx, [ebp-28h]
		push	ecx		; hKey
		call	RegCloseKey

loc_4D35E9:				; CODE XREF: .text:004D355Ej
					; .text:004D3580j
		lea	eax, [ebx+28h]
		push	eax
		lea	edx, [ebx+24h]
		push	edx
		lea	ecx, [ebx+20h]
		push	ecx
		lea	eax, [ebx+1Ch]
		push	eax
		lea	edx, [ebx+18h]
		push	edx
		lea	ecx, [ebx+14h]
		push	ecx
		lea	eax, [ebx+10h]
		push	eax
		lea	edx, [ebx+0Ch]
		push	edx
		lea	ecx, [ebx+8]
		push	ecx
		lea	eax, [ebx+4]
		push	eax
		push	ebx
		push	offset a08x04x04x02x02 ; format
		lea	edx, [ebp-254h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 34h
		cmp	eax, 0Bh
		jnz	loc_4D3753
		mov	ecx, dword_607850 ; int
		cmp	ecx, dword_60784C
		jl	short loc_4D366D
		push	1		; flags
		push	0		; failed
		push	14h		; itemsize
		push	offset dword_60784C ; pcount
		mov	eax, dword_607848 ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_607848, eax
		mov	edx, dword_607850
		cmp	edx, dword_60784C
		jge	loc_4D375B

loc_4D366D:				; CODE XREF: .text:004D363Bj
		push	100h		; n
		lea	ecx, [ebp-654h]
		push	ecx		; src
		call	StrlenW
		add	esp, 8
		mov	edi, eax
		inc	edi
		mov	eax, dword_60785C
		add	eax, edi	; int
		cmp	eax, dword_607858
		jle	short loc_4D36C6
		push	1		; flags
		push	0		; failed
		push	2		; itemsize
		push	offset dword_607858 ; pcount
		mov	edx, dword_607854 ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_607854, eax
		mov	ecx, dword_60785C
		add	ecx, edi
		cmp	ecx, dword_607858
		jg	loc_4D375B

loc_4D36C6:				; CODE XREF: .text:004D3691j
		mov	eax, dword_607850
		mov	edx, [ebx]
		shl	eax, 2
		lea	eax, [eax+eax*4]
		add	eax, dword_607848
		mov	[eax], edx
		mov	cx, [ebx+4]
		mov	[eax+4], cx
		mov	dx, [ebx+8]
		mov	[eax+6], dx
		mov	cl, [ebx+0Ch]
		mov	[eax+8], cl
		mov	dl, [ebx+10h]
		mov	[eax+9], dl
		mov	cl, [ebx+14h]
		mov	[eax+0Ah], cl
		mov	dl, [ebx+18h]
		mov	[eax+0Bh], dl
		mov	cl, [ebx+1Ch]
		mov	[eax+0Ch], cl
		mov	dl, [ebx+20h]
		mov	[eax+0Dh], dl
		mov	cl, [ebx+24h]
		mov	[eax+0Eh], cl
		mov	dl, [ebx+28h]
		mov	[eax+0Fh], dl
		mov	ecx, dword_60785C
		mov	[eax+10h], ecx
		mov	eax, edi
		inc	dword_607850
		add	eax, eax
		mov	edx, dword_60785C
		push	eax		; n
		add	edx, edx
		lea	eax, [ebp-654h]
		add	edx, dword_607854
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword_60785C, edi

loc_4D3753:				; CODE XREF: .text:004D3524j
					; .text:004D3629j
		inc	dword ptr [ebp-4]
		jmp	loc_4D34FB
; ---------------------------------------------------------------------------

loc_4D375B:				; CODE XREF: .text:004D3516j
					; .text:004D3667j ...
		mov	ecx, [ebp-24h]
		push	ecx		; hKey
		call	RegCloseKey

loc_4D3764:				; CODE XREF: .text:004D34F0j
		inc	esi
		cmp	esi, 3
		jl	loc_4D3493
		call	loc_4D30A8
		xor	eax, eax

loc_4D3775:				; CODE XREF: .text:004D348Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4D377C(char arglist)
loc_4D377C:				; CODE XREF: .text:00410154p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF990h
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-34h]
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D379A
		mov	eax, [ebp+8]
		cmp	word ptr [eax],	0
		jnz	short loc_4D37A2

loc_4D379A:				; CODE XREF: .text:004D378Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_4D3CA8
; ---------------------------------------------------------------------------

loc_4D37A2:				; CODE XREF: .text:004D3798j
		call	loc_4D31EC
		mov	ebx, 1000h
		push	1		; flags
		mov	eax, ebx
		mov	dword_60784C, ebx
		shl	eax, 2
		lea	eax, [eax+eax*4] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	dword_607848, eax
		mov	ebx, dword_60784C
		lea	ebx, [ebx+ebx*4]
		lea	ebx, [ebx+ebx*4]
		mov	dword_607858, ebx
		push	1		; flags
		add	ebx, ebx
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_607854, eax
		cmp	dword_607848, 0
		jz	short loc_4D3800
		cmp	dword_607854, 0
		jnz	short loc_4D380D

loc_4D3800:				; CODE XREF: .text:004D37F5j
		call	loc_4D31EC
		or	eax, 0FFFFFFFFh
		jmp	loc_4D3CA8
; ---------------------------------------------------------------------------

loc_4D380D:				; CODE XREF: .text:004D37FEj
		push	offset ollydir	; src
		push	104h		; n
		lea	edx, [ebp-23Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 104h
		sub	eax, ebx
		lea	ecx, [ebp-23Ch]
		add	edx, edx
		push	offset asc_575AF0 ; "\\"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp+8]
		mov	ecx, ebx
		push	eax		; src
		mov	edx, 104h
		sub	edx, ebx
		lea	eax, [ebp-23Ch]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, 104h
		lea	ecx, [ebp-23Ch]
		sub	edx, ebx
		add	ebx, ebx
		push	offset a_arg_0	; ".arg"
		push	edx		; n
		add	ebx, ecx
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-4]
		push	eax		; int
		push	0		; psize
		push	0		; fixsize
		lea	edx, [ebp-23Ch]
		push	edx		; path
		call	Readfile
		add	esp, 10h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4D38DE
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4D38D1
		mov	ecx, [ebp+8]
		push	ecx		; arglist
		push	offset aOutOfMemoryU_0 ; "Out of memory	- unable to process GUIDs"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_4D38D1:				; CODE XREF: .text:004D38B3j
		call	loc_4D31EC
		or	eax, 0FFFFFFFFh
		jmp	loc_4D3CA8
; ---------------------------------------------------------------------------

loc_4D38DE:				; CODE XREF: .text:004D38ADj
		cmp	dword ptr [ebp-4], 2
		jbe	short loc_4D3928
		mov	edx, [ebp-8]
		cmp	byte ptr [edx],	0FEh
		jnz	short loc_4D3928
		mov	ecx, [ebp-8]
		cmp	byte ptr [ecx+1], 0FFh
		jnz	short loc_4D3928
		mov	eax, [ebp-8]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	edx, [ebp+8]
		push	edx		; arglist
		push	offset aFileS_argHas_0 ; "File '%s.arg' has unsupported UNICODE b"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		call	loc_4D31EC
		or	eax, 0FFFFFFFFh
		jmp	loc_4D3CA8
; ---------------------------------------------------------------------------

loc_4D3928:				; CODE XREF: .text:004D38E2j
					; .text:004D38EAj ...
		cmp	dword ptr [ebp-4], 2
		jbe	short loc_4D395E
		mov	edx, [ebp-8]
		cmp	byte ptr [edx],	0FFh
		jnz	short loc_4D395E
		mov	ecx, [ebp-8]
		cmp	byte ptr [ecx+1], 0FEh
		jnz	short loc_4D395E
		mov	eax, [ebp-8]
		add	eax, 2
		mov	[ebp-66Ch], eax
		mov	edx, [ebp-4]
		sub	edx, 2
		shr	edx, 1
		mov	[ebp-668h], edx
		jmp	loc_4D39E2
; ---------------------------------------------------------------------------

loc_4D395E:				; CODE XREF: .text:004D392Cj
					; .text:004D3934j ...
		push	1		; flags
		mov	ecx, [ebp-4]
		add	ecx, ecx
		add	ecx, 2		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4D39AA
		mov	eax, [ebp-8]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	edx, [ebp+8]
		push	edx		; arglist
		push	offset aOutOfMemoryU_0 ; "Out of memory	- unable to process GUIDs"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		call	loc_4D31EC
		or	eax, 0FFFFFFFFh
		jmp	loc_4D3CA8
; ---------------------------------------------------------------------------

loc_4D39AA:				; CODE XREF: .text:004D3975j
		mov	edx, [ebp-4]
		inc	edx
		push	edx		; nw
		push	ebx		; w
		mov	ecx, [ebp-4]
		push	ecx		; ns
		mov	eax, [ebp-8]
		push	eax		; s
		call	Asciitounicode
		add	esp, 10h
		mov	[ebp-4], eax
		mov	edx, [ebp-8]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	[ebp-8], ebx
		mov	ecx, [ebp-8]
		mov	[ebp-66Ch], ecx
		mov	eax, [ebp-4]
		mov	[ebp-668h], eax

loc_4D39E2:				; CODE XREF: .text:004D3959j
		mov	edx, [ebp+8]
		push	edx		; arglist
		push	offset aLoadingGuidsFr ; "Loading GUIDs	from '%s.arg'"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		mov	dword ptr [ebp-670h], 200h
		xor	ecx, ecx
		add	esp, 10h
		mov	[ebp-660h], ecx
		mov	[ebp-664h], ecx
		mov	dword ptr [ebp-65Ch], 1
		xor	edi, edi

loc_4D3A22:				; CODE XREF: .text:004D3A40j
					; .text:004D3C24j
		lea	eax, [ebp-670h]
		push	eax		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebp-242h]
		test	eax, eax
		jz	loc_4D3C37
		cmp	eax, 1
		jz	short loc_4D3A22
		cmp	eax, 3
		jz	short loc_4D3A59
		push	offset aGuidExpected ; src
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	loc_4D3C37
; ---------------------------------------------------------------------------

loc_4D3A59:				; CODE XREF: .text:004D3A45j
		lea	eax, [esi+28h]
		push	eax
		lea	edx, [esi+24h]
		push	edx
		lea	ecx, [esi+20h]
		push	ecx
		lea	eax, [esi+1Ch]
		push	eax
		lea	edx, [esi+18h]
		push	edx
		lea	ecx, [esi+14h]
		push	ecx
		lea	eax, [esi+10h]
		push	eax
		lea	edx, [esi+0Ch]
		push	edx
		lea	ecx, [esi+8]
		push	ecx
		lea	eax, [esi+4]
		push	eax
		push	esi
		push	offset a08x04x04x02x_0 ; format
		lea	edx, [ebp-646h]
		push	edx		; buffer
		call	_swscanf
		add	esp, 34h
		cmp	eax, 0Bh
		jz	short loc_4D3AAD
		push	offset aInvalidGuid ; "Invalid GUID"
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	loc_4D3C37
; ---------------------------------------------------------------------------

loc_4D3AAD:				; CODE XREF: .text:004D3A99j
		lea	eax, [ebp-670h]
		push	eax		; ps
		call	Scan
		pop	ecx		; int
		mov	eax, [ebp-242h]
		cmp	eax, 3
		jz	short loc_4D3ADC
		cmp	eax, 2
		jz	short loc_4D3ADC
		push	offset aGuidNameExpect ; src
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	loc_4D3C37
; ---------------------------------------------------------------------------

loc_4D3ADC:				; CODE XREF: .text:004D3AC3j
					; .text:004D3AC8j
		mov	eax, dword_607850 ; int
		cmp	eax, dword_60784C
		jl	short loc_4D3B28
		push	1		; flags
		push	0		; failed
		push	14h		; itemsize
		push	offset dword_60784C ; pcount
		mov	edx, dword_607848 ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_607848, eax
		mov	ecx, dword_607850
		cmp	ecx, dword_60784C
		jl	short loc_4D3B28
		push	offset aLowMemoryPro_0 ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	loc_4D3C37
; ---------------------------------------------------------------------------

loc_4D3B28:				; CODE XREF: .text:004D3AE7j
					; .text:004D3B14j
		mov	ebx, [ebp-446h]
		inc	ebx
		mov	eax, dword_60785C
		add	eax, ebx	; int
		cmp	eax, dword_607858
		jle	short loc_4D3B7F
		push	1		; flags
		push	0		; failed
		push	2		; itemsize
		push	offset dword_607858 ; pcount
		mov	edx, dword_607854 ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_607854, eax
		mov	ecx, dword_60785C
		add	ecx, ebx
		cmp	ecx, dword_607858
		jle	short loc_4D3B7F
		push	offset aLowMemoryPro_0 ; "Low memory, processing interrupted"
		call	_T
		pop	ecx
		mov	edi, eax
		jmp	loc_4D3C37
; ---------------------------------------------------------------------------

loc_4D3B7F:				; CODE XREF: .text:004D3B3Cj
					; .text:004D3B6Bj
		mov	eax, dword_607850
		mov	edx, [esi]
		shl	eax, 2
		lea	eax, [eax+eax*4]
		add	eax, dword_607848
		mov	[eax], edx
		mov	cx, [esi+4]
		mov	[eax+4], cx
		mov	dx, [esi+8]
		mov	[eax+6], dx
		mov	cl, [esi+0Ch]
		mov	[eax+8], cl
		mov	dl, [esi+10h]
		mov	[eax+9], dl
		mov	cl, [esi+14h]
		mov	[eax+0Ah], cl
		mov	dl, [esi+18h]
		mov	[eax+0Bh], dl
		mov	cl, [esi+1Ch]
		mov	[eax+0Ch], cl
		mov	dl, [esi+20h]
		mov	[eax+0Dh], dl
		mov	cl, [esi+24h]
		mov	[eax+0Eh], cl
		mov	dl, [esi+28h]
		mov	[eax+0Fh], dl
		mov	ecx, dword_60785C
		mov	[eax+10h], ecx
		mov	eax, ebx
		inc	dword_607850
		add	eax, eax
		mov	edx, dword_60785C
		push	eax		; n
		add	edx, edx
		lea	eax, [ebp-646h]
		add	edx, dword_607854
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword_60785C, ebx
		lea	ecx, [ebp-670h]
		push	ecx		; ps
		call	Scan
		pop	ecx
		mov	eax, [ebp-242h]
		test	eax, eax
		jz	short loc_4D3C37
		dec	eax
		jz	loc_4D3A22
		push	offset aExtraCharact_3 ; "Extra	characters on line"
		call	_T
		pop	ecx
		mov	edi, eax

loc_4D3C37:				; CODE XREF: .text:004D3A37j
					; .text:004D3A54j ...
		mov	eax, [ebp-8]
		push	eax		; data
		call	Memfree
		pop	ecx
		test	edi, edi
		jz	short loc_4D3CA1
		cmp	dword ptr [ebp-242h], 8
		jnz	short loc_4D3C77
		lea	edx, [ebp-442h]
		push	edx
		push	edi
		mov	ecx, [ebp-65Ch]
		push	ecx		; arglist
		push	offset aLineI_SS ; "  Line %i. %s (%s)"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 18h
		jmp	short loc_4D3C97
; ---------------------------------------------------------------------------

loc_4D3C77:				; CODE XREF: .text:004D3C4Cj
		push	edi
		mov	eax, [ebp-65Ch]
		push	eax		; arglist
		push	offset aLineI_S	; "  Line %i. %s"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_4D3C97:				; CODE XREF: .text:004D3C75j
		call	loc_4D31EC
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D3CA8
; ---------------------------------------------------------------------------

loc_4D3CA1:				; CODE XREF: .text:004D3C43j
		call	loc_4D30A8
		xor	eax, eax

loc_4D3CA8:				; CODE XREF: .text:004D379Dj
					; .text:004D3808j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4D3CB0(char arglist)
loc_4D3CB0:				; CODE XREF: .text:00410166p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		mov	eax, 2010000h
		push	eax		; version
		push	offset aGuids	; "GUIDS"
		push	esi		; _name
		call	Createtaggedfile
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4D3CF0
		push	esi		; arglist
		push	offset aUnableToCrea_8 ; "  Unable to create file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_4D3DA9
; ---------------------------------------------------------------------------

loc_4D3CF0:				; CODE XREF: .text:004D3CD0j
		xor	eax, eax
		test	eax, eax
		jnz	short loc_4D3D21
		cmp	dword_607850, 0
		jle	short loc_4D3D21
		mov	ecx, dword_607850
		mov	edx, dword_607848
		shl	ecx, 2
		push	edx		; data
		lea	ecx, [ecx+ecx*4]
		push	ecx		; size
		push	64697567h	; tag
		push	ebx		; f
		call	Savepackedrecord
		add	esp, 10h

loc_4D3D21:				; CODE XREF: .text:004D3CF4j
					; .text:004D3CFDj
		test	eax, eax
		jnz	short loc_4D3D4B
		cmp	dword_60785C, 0
		jle	short loc_4D3D4B
		mov	eax, dword_607854
		mov	edx, dword_60785C
		add	edx, edx
		push	eax		; data
		push	edx		; size
		push	6D616E67h	; tag
		push	ebx		; f
		call	Savepackedrecord
		add	esp, 10h

loc_4D3D4B:				; CODE XREF: .text:004D3D23j
					; .text:004D3D2Cj
		test	eax, eax
		jz	short loc_4D3D6A
		push	esi		; arglist
		push	offset aErrorSavingDat ; "  Error saving data to file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_4D3DA2
; ---------------------------------------------------------------------------

loc_4D3D6A:				; CODE XREF: .text:004D3D4Dj
		push	esi		; arglist
		push	offset aFileSCreated_0 ; "  File '%s' created successfully"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		mov	ecx, dword_607850
		push	ecx		; arglist
		push	offset aTotalNumberOfG ; "  Total number of GUIDs is %i"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_4D3DA2:				; CODE XREF: .text:004D3D68j
		push	ebx		; stream
		call	Finalizetaggedfile
		pop	ecx

loc_4D3DA9:				; CODE XREF: .text:004D3CEBj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		