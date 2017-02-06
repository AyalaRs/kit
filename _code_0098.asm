.code

; Exported entry 354. _Getruntrace
; Exported entry 600. Getruntrace

; int __cdecl Getruntrace(int nback, t_reg *preg, uchar	*cmd)
		public Getruntrace
Getruntrace:				; CODE XREF: .text:00476423p
					; .text:00478000p ...
		push	ebp		; _Getruntrace
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	ecx, [ebp+8]
		test	ecx, ecx
		jl	short loc_4C49FE
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4C4A06

loc_4C49FE:				; CODE XREF: .text:004C49F6j
		or	eax, 0FFFFFFFFh
		jmp	loc_4C4C1B
; ---------------------------------------------------------------------------

loc_4C4A06:				; CODE XREF: .text:004C49FCj
		cmp	dword_5FC288, 0
		jz	short loc_4C4A18
		cmp	dword_5FC6C4, 0
		jnz	short loc_4C4A20

loc_4C4A18:				; CODE XREF: .text:004C4A0Dj
		or	eax, 0FFFFFFFFh
		jmp	loc_4C4C1B
; ---------------------------------------------------------------------------

loc_4C4A20:				; CODE XREF: .text:004C4A16j
		mov	esi, dword_5FC6CC
		mov	eax, esi
		mov	ebx, dword_5FC6C4
		add	eax, ebx
		sub	eax, dword_5FC6D0
		cdq
		idiv	ebx
		mov	[ebp-4], edx
		cmp	dword_5FC6D8, 0
		jnz	short loc_4C4A54
		sub	dword ptr [ebp-4], 28h
		cmp	dword ptr [ebp-4], 0
		jge	short loc_4C4A54
		xor	eax, eax
		mov	[ebp-4], eax

loc_4C4A54:				; CODE XREF: .text:004C4A43j
					; .text:004C4A4Dj
		cmp	ecx, [ebp-4]
		jl	short loc_4C4A61
		or	eax, 0FFFFFFFFh
		jmp	loc_4C4C1B
; ---------------------------------------------------------------------------

loc_4C4A61:				; CODE XREF: .text:004C4A57j
		sub	esi, ecx
		dec	esi
		mov	[ebp-8], esi
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4C4A70
		add	[ebp-8], ebx

loc_4C4A70:				; CODE XREF: .text:004C4A6Bj
		xor	edx, edx
		mov	[ebp-0Ch], edx
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		xor	eax, eax
		mov	[ebp-4], eax

loc_4C4A7F:				; CODE XREF: .text:004C4C12j
		mov	eax, [ebp-8]
		shl	eax, 2
		lea	eax, [eax+eax*2]
		add	eax, dword_5FC288
		mov	esi, [eax+4]
		mov	edx, [eax+8]
		mov	[ebp-10h], edx
		cmp	dword ptr [ebp-4], 0
		jnz	loc_4C4B5F
		mov	eax, [eax]
		mov	ecx, [ebp+0Ch]
		mov	[ecx+8], eax
		mov	eax, [ebp-10h]
		and	eax, 0Fh
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C4AD7
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_4C4AD7
		mov	edx, [ebp-0Ch]
		mov	ecx, dword_5FC28C
		add	ecx, esi
		push	edx		; n
		push	ecx		; src
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4C4AD7:				; CODE XREF: .text:004C4AB6j
					; .text:004C4ABCj
		add	esi, [ebp-0Ch]
		mov	edx, [ebp+0Ch]
		and	dword ptr [edx], 0FFFFFFBFh
		xor	ebx, ebx
		mov	eax, [ebp+0Ch]
		lea	edi, [eax+198h]

loc_4C4AEB:				; CODE XREF: .text:004C4B5Bj
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		and	eax, [ebp-10h]
		jnz	short loc_4C4AFF
		xor	edx, edx
		mov	[edi], edx
		jmp	short loc_4C4B54
; ---------------------------------------------------------------------------

loc_4C4AFF:				; CODE XREF: .text:004C4AF7j
		mov	eax, dword_5FC28C
		mov	edx, [eax+esi]
		mov	[edi-4], edx
		add	esi, 4
		mov	ecx, dword_5FC28C
		xor	eax, eax
		mov	al, [ecx+esi]
		mov	[edi], eax
		inc	esi
		cmp	eax, 10h
		jbe	short loc_4C4B28
		or	eax, 0FFFFFFFFh
		jmp	loc_4C4C1B
; ---------------------------------------------------------------------------

loc_4C4B28:				; CODE XREF: .text:004C4B1Ej
		mov	ecx, ebx
		mov	edx, dword_5FC28C
		shl	ecx, 3
		add	edx, esi
		push	eax		; n
		push	edx		; src
		lea	ecx, [ecx+ecx*2]
		add	ecx, [ebp+0Ch]
		add	ecx, 19Ch
		push	ecx		; dest
		call	_memcpy
		mov	eax, [ebp+0Ch]
		add	esp, 0Ch
		add	esi, [edi]
		or	dword ptr [eax], 40h

loc_4C4B54:				; CODE XREF: .text:004C4AFDj
		inc	ebx
		add	edi, 18h
		cmp	ebx, 2
		jl	short loc_4C4AEB
		jmp	short loc_4C4B8E
; ---------------------------------------------------------------------------

loc_4C4B5F:				; CODE XREF: .text:004C4A9Bj
		mov	edx, [ebp-10h]
		and	edx, 0Fh
		add	esi, edx
		xor	ebx, ebx

loc_4C4B69:				; CODE XREF: .text:004C4B8Cj
		mov	ecx, ebx
		mov	eax, 10h
		shl	eax, cl
		and	eax, [ebp-10h]
		jz	short loc_4C4B88
		add	esi, 4
		mov	edx, dword_5FC28C
		xor	eax, eax
		mov	al, [edx+esi]
		inc	eax
		add	esi, eax

loc_4C4B88:				; CODE XREF: .text:004C4B75j
		inc	ebx
		cmp	ebx, 2
		jl	short loc_4C4B69

loc_4C4B8E:				; CODE XREF: .text:004C4B5Dj
		mov	dword ptr [ebp-18h], offset dword_55D0B0
		mov	edi, 40h
		xor	ebx, ebx

loc_4C4B9C:				; CODE XREF: .text:004C4BD7j
		test	[ebp-10h], edi
		jz	short loc_4C4BCD
		test	[ebp-14h], edi
		jnz	short loc_4C4BC7
		mov	eax, [ebp-18h]
		mov	ecx, dword_5FC28C
		add	ecx, esi
		mov	edx, [eax+4]
		push	edx		; n
		push	ecx		; src
		mov	eax, [ebp-18h]
		mov	edx, [eax]
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4C4BC7:				; CODE XREF: .text:004C4BA4j
		mov	ecx, [ebp-18h]
		add	esi, [ecx+4]

loc_4C4BCD:				; CODE XREF: .text:004C4B9Fj
		inc	ebx
		add	edi, edi
		add	dword ptr [ebp-18h], 0Ch
		cmp	ebx, 19h
		jl	short loc_4C4B9C
		mov	eax, [ebp-10h]
		or	[ebp-14h], eax
		mov	edx, [ebp-14h]
		mov	eax, dword_5FC6DC
		and	edx, eax
		cmp	edx, eax
		jz	short loc_4C4C18
		mov	edx, [ebp-8]
		cmp	edx, dword_5FC6D0
		jz	short loc_4C4C18
		dec	dword ptr [ebp-8]
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4C4C0B
		mov	ecx, dword_5FC6C4
		dec	ecx
		mov	[ebp-8], ecx

loc_4C4C0B:				; CODE XREF: .text:004C4BFFj
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 28h
		jl	loc_4C4A7F

loc_4C4C18:				; CODE XREF: .text:004C4BEBj
					; .text:004C4BF6j
		mov	eax, [ebp-0Ch]

loc_4C4C1B:				; CODE XREF: .text:004C4A01j
					; .text:004C4A1Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 355. _Findruntracerecord
; Exported entry 530. Findruntracerecord

; signed int __cdecl Findruntracerecord(ulong addr0, ulong addr1)
		public Findruntracerecord
Findruntracerecord:			; CODE XREF: .text:004B69D3p
					; .text:004C35CFp
		push	ebp		; _Findruntracerecord
		mov	ebp, esp
		push	ebx
		push	esi
		cmp	dword_5FC288, 0
		jz	short loc_4C4C47
		mov	eax, dword_5FC6CC
		cmp	eax, dword_5FC6D0
		jz	short loc_4C4C47
		mov	edx, [ebp+8]
		cmp	edx, [ebp+0Ch]
		jb	short loc_4C4C4C

loc_4C4C47:				; CODE XREF: .text:004C4C30j
					; .text:004C4C3Dj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C4CB0
; ---------------------------------------------------------------------------

loc_4C4C4C:				; CODE XREF: .text:004C4C45j
		mov	eax, dword_5FC6CC
		mov	ecx, dword_5FC6C4
		add	eax, ecx
		sub	eax, dword_5FC6D0
		cdq
		idiv	ecx
		mov	ebx, edx
		cmp	dword_5FC6D8, 0
		jnz	short loc_4C4C76
		sub	ebx, 28h
		test	ebx, ebx
		jge	short loc_4C4C76
		xor	ebx, ebx

loc_4C4C76:				; CODE XREF: .text:004C4C6Bj
					; .text:004C4C72j
		xor	edx, edx
		cmp	ebx, edx
		jle	short loc_4C4CAD

loc_4C4C7C:				; CODE XREF: .text:004C4CABj
		mov	eax, dword_5FC6CC
		sub	eax, edx
		dec	eax
		test	eax, eax
		jge	short loc_4C4C8E
		add	eax, dword_5FC6C4

loc_4C4C8E:				; CODE XREF: .text:004C4C86j
		lea	ecx, [eax+eax*2]
		mov	esi, dword_5FC288
		mov	ecx, [esi+ecx*4]
		cmp	ecx, [ebp+8]
		jb	short loc_4C4CA8
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_4C4CA8
		mov	eax, edx
		jmp	short loc_4C4CB0
; ---------------------------------------------------------------------------

loc_4C4CA8:				; CODE XREF: .text:004C4C9Dj
					; .text:004C4CA2j
		inc	edx
		cmp	ebx, edx
		jg	short loc_4C4C7C

loc_4C4CAD:				; CODE XREF: .text:004C4C7Aj
		or	eax, 0FFFFFFFFh

loc_4C4CB0:				; CODE XREF: .text:004C4C4Aj
					; .text:004C4CA6j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4C4CB4(int, int, void	*s)
loc_4C4CB4:				; CODE XREF: .text:004B9FBAp
					; .text:004C3D4Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	esi, [ebp+8]
		cmp	eax, esi
		jbe	short loc_4C4CCC
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4C4CD3

loc_4C4CCC:				; CODE XREF: .text:004C4CC4j
		xor	eax, eax
		jmp	loc_4C4D53
; ---------------------------------------------------------------------------

loc_4C4CD3:				; CODE XREF: .text:004C4CCAj
		sub	eax, esi
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		shl	edx, 2
		push	edx		; n
		push	0		; c
		mov	ecx, [ebp+10h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, dword_5FC288
		test	edx, edx
		jz	short loc_4C4D04
		mov	eax, dword_5FC6CC
		cmp	eax, dword_5FC6D0
		jnz	short loc_4C4D08

loc_4C4D04:				; CODE XREF: .text:004C4CF5j
		xor	eax, eax
		jmp	short loc_4C4D53
; ---------------------------------------------------------------------------

loc_4C4D08:				; CODE XREF: .text:004C4D02j
		mov	eax, dword_5FC6D0
		mov	ecx, eax
		shl	ecx, 2
		lea	ecx, [ecx+ecx*2]
		add	ecx, edx
		mov	edx, ecx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_4C4D48
; ---------------------------------------------------------------------------

loc_4C4D20:				; CODE XREF: .text:004C4D4Ej
		mov	ecx, [edx]
		sub	ecx, esi
		cmp	ecx, [ebp-8]
		jnb	short loc_4C4D32
		mov	ebx, [ebp+10h]
		inc	dword ptr [ebx+ecx*4]
		inc	dword ptr [ebp-4]

loc_4C4D32:				; CODE XREF: .text:004C4D27j
		inc	eax
		cmp	eax, dword_5FC6C4
		jge	short loc_4C4D40
		add	edx, 0Ch
		jmp	short loc_4C4D48
; ---------------------------------------------------------------------------

loc_4C4D40:				; CODE XREF: .text:004C4D39j
		xor	eax, eax
		mov	edx, dword_5FC288

loc_4C4D48:				; CODE XREF: .text:004C4D1Ej
					; .text:004C4D3Ej
		cmp	eax, dword_5FC6CC
		jnz	short loc_4C4D20
		mov	eax, [ebp-4]

loc_4C4D53:				; CODE XREF: .text:004C4CCEj
					; .text:004C4D06j
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C4D5C:				; CODE XREF: .text:004C373Bp
					; DATA XREF: .text:004C3BF4o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE3Ch
		cmp	dword_5CBB8C, 0
		mov	eax, [ebp+10h]
		jz	loc_4C4E02
		cmp	dword_5FC288, 0
		jz	loc_4C4E02
		mov	edx, dword_5FC6CC
		cmp	edx, dword_5FC6D0
		jz	short loc_4C4E02
		cmp	stru_5FC458.sorted.selected, 0
		jl	short loc_4C4E02
		cmp	eax, 1
		jz	short loc_4C4DA3
		cmp	eax, 2
		jnz	short loc_4C4E02

loc_4C4DA3:				; CODE XREF: .text:004C4D9Cj
		push	0		; cmd
		lea	eax, [ebp-1C4h]
		push	eax		; preg
		mov	ecx, stru_5FC458.sorted.selected
		push	ecx		; nback
		call	Getruntrace
		add	esp, 0Ch
		test	eax, eax
		jl	short loc_4C4E02
		cmp	stru_5FC458.sorted.selected, 0
		jnz	short loc_4C4DE6
		push	0A004h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	eax, [ebp-1C0h]
		push	eax		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4C4E02
; ---------------------------------------------------------------------------

loc_4C4DE6:				; CODE XREF: .text:004C4DC6j
		push	1A004h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	edx, stru_5FC458.sorted.selected
		push	0		; dumpaddr
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4C4E02:				; CODE XREF: .text:004C4D6Fj
					; .text:004C4D7Cj ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4C4E08(wchar_t *buffer, void *s, int,	int, int, int, void *dest)
loc_4C4E08:				; DATA XREF: .text:004C3BEAo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDDCh
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	esi, [ebp+20h]
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 11 cases
		cmp	eax, 0Ah
		ja	loc_4C57E8	; jumptable 004C4E28 default case
		jmp	ds:off_4C4E2F[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4C4E2F	dd offset loc_4C4E5B	; DATA XREF: .text:004C4E28r
		dd offset loc_4C4E65	; jump table for switch	statement
		dd offset loc_4C4EF1
		dd offset loc_4C4EF8
		dd offset loc_4C507D
		dd offset loc_4C50B8
		dd offset loc_4C50F5
		dd offset loc_4C5144
		dd offset loc_4C51E3
		dd offset loc_4C5272
		dd offset loc_4C54CC
; ---------------------------------------------------------------------------

loc_4C4E5B:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	eax, 1C78h	; jumptable 004C4E28 case -4
		jmp	loc_4C5806
; ---------------------------------------------------------------------------

loc_4C4E65:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		call	loc_4C49A0	; jumptable 004C4E28 case -3
		mov	ebx, eax
		mov	eax, [ebp+18h]
		mov	stru_5FC458.sorted.n, ebx
		mov	eax, [eax+4]
		mov	edx, eax
		add	edx, stru_5FC458._offset
		cmp	ebx, edx
		jge	short loc_4C4E8D
		sub	ebx, eax
		inc	ebx
		mov	stru_5FC458._offset, ebx

loc_4C4E8D:				; CODE XREF: .text:004C4E82j
		cmp	stru_5FC458._offset, 0
		jge	short loc_4C4E9E
		xor	ecx, ecx
		mov	stru_5FC458._offset, ecx

loc_4C4E9E:				; CODE XREF: .text:004C4E94j
		mov	eax, stru_5FC458.sorted.n
		cmp	eax, stru_5FC458.sorted.selected
		jg	short loc_4C4EB8
		mov	edx, stru_5FC458.sorted.n
		dec	edx
		mov	stru_5FC458.sorted.selected, edx

loc_4C4EB8:				; CODE XREF: .text:004C4EA9j
		push	1C78h		; n
		push	0		; c
		push	esi		; s
		call	_memset
		add	esp, 0Ch
		lea	ecx, [esi+18h]
		mov	eax, stru_5FC458._offset
		dec	eax
		push	0		; cmd
		push	ecx		; preg
		push	eax		; nback
		call	Getruntrace
		add	esp, 0Ch
		mov	[esi+10h], eax
		mov	dword ptr [esi+1C74h], 1
		xor	eax, eax
		jmp	loc_4C5806
; ---------------------------------------------------------------------------

loc_4C4EF1:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		xor	eax, eax	; jumptable 004C4E28 case -2
		jmp	loc_4C5806
; ---------------------------------------------------------------------------

loc_4C4EF8:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		cmp	dword ptr [esi+10h], 0 ; jumptable 004C4E28 case -1
		jge	short loc_4C4F08
		xor	edx, edx
		mov	[esi+1C70h], edx
		jmp	short loc_4C4F24
; ---------------------------------------------------------------------------

loc_4C4F08:				; CODE XREF: .text:004C4EFCj
		push	esi
		lea	edi, [esi+1DCh]
		add	esi, 18h
		mov	ecx, 71h
		rep movsd
		pop	esi
		mov	dword ptr [esi+1C70h], 1

loc_4C4F24:				; CODE XREF: .text:004C4F06j
		mov	eax, [ebp+18h]
		mov	edx, [eax]
		add	edx, stru_5FC458._offset
		cmp	edx, stru_5FC458.sorted.n
		jge	short loc_4C4F55
		push	esi		; cmd
		lea	ecx, [esi+18h]
		push	ecx		; preg
		mov	eax, [ebp+18h]
		mov	edx, [eax]
		add	edx, stru_5FC458._offset
		push	edx		; nback
		call	Getruntrace
		add	esp, 0Ch
		mov	[esi+10h], eax
		jmp	short loc_4C4F5C
; ---------------------------------------------------------------------------

loc_4C4F55:				; CODE XREF: .text:004C4F35j
		mov	dword ptr [esi+10h], 0FFFFFFFFh

loc_4C4F5C:				; CODE XREF: .text:004C4F53j
		push	5		; mode
		push	10h		; size
		mov	ecx, [esi+20h]
		push	ecx		; _addr
		lea	eax, [ebp-224h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C4F80
		xor	eax, eax
		mov	[esi+14h], eax
		jmp	short loc_4C4FCB
; ---------------------------------------------------------------------------

loc_4C4F80:				; CODE XREF: .text:004C4F77j
		cmp	dword ptr [esi+10h], 0
		jnz	short loc_4C4FA1
		xor	edx, edx
		lea	ecx, [ebp-224h]
		mov	[esi+14h], edx
		push	ebx		; n
		push	ecx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	[esi+10h], ebx
		jmp	short loc_4C4FCB
; ---------------------------------------------------------------------------

loc_4C4FA1:				; CODE XREF: .text:004C4F84j
		mov	eax, [esi+10h]
		cmp	ebx, eax
		jl	short loc_4C4FBD
		push	eax		; n
		push	esi		; s2
		lea	edx, [ebp-224h]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C4FC6

loc_4C4FBD:				; CODE XREF: .text:004C4FA6j
		mov	dword ptr [esi+14h], 1
		jmp	short loc_4C4FCB
; ---------------------------------------------------------------------------

loc_4C4FC6:				; CODE XREF: .text:004C4FBBj
		xor	ecx, ecx
		mov	[esi+14h], ecx

loc_4C4FCB:				; CODE XREF: .text:004C4F7Ej
					; .text:004C4F9Fj ...
		cmp	dword ptr [esi+10h], 0
		jle	loc_4C5076
		cmp	dword_5BDD50, 0
		jz	short loc_4C4FE5
		mov	eax, 213h
		jmp	short loc_4C4FEA
; ---------------------------------------------------------------------------

loc_4C4FE5:				; CODE XREF: .text:004C4FDCj
		mov	eax, 13h

loc_4C4FEA:				; CODE XREF: .text:004C4FE3j
		cmp	dword_5FC6E8, 0
		jnz	short loc_4C4FF8
		or	eax, 0C4h

loc_4C4FF8:				; CODE XREF: .text:004C4FF1j
		mov	edx, dword_55D0AC
		test	edx, edx
		jl	short loc_4C5027
		cmp	edx, 8
		jge	short loc_4C5027
		mov	dword ptr [esi+3A0h], 1
		mov	ecx, dword_55D0AC
		mov	[esi+3A4h], ecx
		xor	edx, edx
		mov	[esi+3A8h], edx
		jmp	short loc_4C5048
; ---------------------------------------------------------------------------

loc_4C5027:				; CODE XREF: .text:004C5000j
					; .text:004C5005j
		xor	ecx, ecx
		mov	[esi+3A0h], ecx
		mov	dword ptr [esi+3A4h], 0FFFFFFFFh
		mov	edx, [ebp+14h]
		mov	ecx, [edx+23Ch]
		mov	[esi+3A8h], ecx

loc_4C5048:				; CODE XREF: .text:004C5025j
		push	0		; predict
		cmp	dword_5FC6E8, 0
		jnz	short loc_4C5058
		lea	edx, [esi+18h]
		jmp	short loc_4C505A
; ---------------------------------------------------------------------------

loc_4C5058:				; CODE XREF: .text:004C5051j
		xor	edx, edx

loc_4C505A:				; CODE XREF: .text:004C5056j
		push	edx		; reg
		push	eax		; mode
		lea	eax, [esi+3A0h]
		push	eax		; da
		push	0		; dec
		mov	ecx, [esi+20h]
		push	ecx		; ip
		mov	eax, [esi+10h]
		push	eax		; cmdsize
		push	esi		; cmd
		call	Disasm
		add	esp, 20h

loc_4C5076:				; CODE XREF: .text:004C4FCFj
		xor	eax, eax
		jmp	loc_4C5806
; ---------------------------------------------------------------------------

loc_4C507D:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	edx, [ebp+18h]	; jumptable 004C4E28 case 0
		mov	ecx, [edx]
		add	ecx, stru_5FC458._offset
		cmp	ecx, stru_5FC458.sorted.n
		jge	loc_4C57E8	; jumptable 004C4E28 default case
		mov	eax, [ebp+18h]
		mov	edx, [eax]
		add	edx, stru_5FC458._offset
		push	edx
		push	offset aI__4	; "%i."
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C50B8:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	eax, [ebp+18h]	; jumptable 004C4E28 case 1
		mov	edx, [eax]
		add	edx, stru_5FC458._offset
		cmp	edx, stru_5FC458.sorted.n
		jge	loc_4C57E8	; jumptable 004C4E28 default case
		cmp	dword ptr [esi+10h], 0
		jl	loc_4C57E8	; jumptable 004C4E28 default case
		push	8001h		; mode
		mov	ecx, [esi+1Ch]
		push	ecx		; threadid
		mov	eax, [ebp+8]
		push	eax		; s
		call	Decodethreadname
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C50F5:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	eax, [ebp+18h]	; jumptable 004C4E28 case 2
		mov	edx, [eax]
		add	edx, stru_5FC458._offset
		cmp	edx, stru_5FC458.sorted.n
		jge	loc_4C57E8	; jumptable 004C4E28 default case
		cmp	dword ptr [esi+10h], 0
		jl	loc_4C57E8	; jumptable 004C4E28 default case
		mov	ecx, [esi+20h]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	loc_4C57E8	; jumptable 004C4E28 default case
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C5144:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	eax, [ebp+18h]	; jumptable 004C4E28 case 3
		mov	edx, [eax]
		add	edx, stru_5FC458._offset
		cmp	edx, stru_5FC458.sorted.n
		jge	loc_4C57E8	; jumptable 004C4E28 default case
		cmp	dword ptr [esi+10h], 0
		jge	short loc_4C517E
		push	$CTW0("????????") ; "????????"
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C517E:				; CODE XREF: .text:004C515Fj
		mov	eax, dword_57DE54
		cmp	eax, 1
		jnz	short loc_4C518F
		mov	eax, 1
		jmp	short loc_4C519D
; ---------------------------------------------------------------------------

loc_4C518F:				; CODE XREF: .text:004C5186j
		cmp	eax, 2
		jnz	short loc_4C519B
		mov	eax, 2
		jmp	short loc_4C519D
; ---------------------------------------------------------------------------

loc_4C519B:				; CODE XREF: .text:004C5192j
		xor	eax, eax

loc_4C519D:				; CODE XREF: .text:004C518Dj
					; .text:004C5199j
		cmp	dword_57DE58, 0
		jz	short loc_4C51A9
		or	eax, 20h

loc_4C51A9:				; CODE XREF: .text:004C51A4j
		mov	edx, dword_5FC6E4
		test	edx, edx
		jz	short loc_4C51BD
		cmp	edx, [esi+20h]
		jnz	short loc_4C51BD
		or	eax, 1000h

loc_4C51BD:				; CODE XREF: .text:004C51B1j
					; .text:004C51B6j
		push	eax		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [esi+20h]
		push	edx		; _addr
		mov	ecx, [ebp+8]
		push	ecx		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C51E3:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	eax, [ebp+18h]	; jumptable 004C4E28 case 4
		mov	edx, [eax]
		add	edx, stru_5FC458._offset
		cmp	edx, stru_5FC458.sorted.n
		jge	loc_4C57E8	; jumptable 004C4E28 default case
		cmp	dword ptr [esi+10h], 0
		jg	short loc_4C521D
		push	$CTW0("??? ")	; "???"
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C521D:				; CODE XREF: .text:004C51FEj
		lea	eax, [esi+176Ch]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		cmp	dword ptr [esi+1A6Ch], 0
		jz	short loc_4C525D
		push	ebx		; n
		lea	eax, [esi+196Ch]
		push	eax		; src
		mov	edx, [ebp+0Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 100h

loc_4C525D:				; CODE XREF: .text:004C523Ej
		cmp	dword ptr [esi+14h], 0
		jz	loc_4C57E8	; jumptable 004C4E28 default case
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 1
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C5272:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	edx, [ebp+18h]	; jumptable 004C4E28 case 5
		mov	ecx, [edx]
		add	ecx, stru_5FC458._offset
		cmp	ecx, stru_5FC458.sorted.n
		jge	loc_4C57E8	; jumptable 004C4E28 default case
		cmp	dword_5CBB84, 0
		jnz	short loc_4C52D1
		cmp	dword ptr [esi+1C74h], 0
		jz	loc_4C57E8	; jumptable 004C4E28 default case
		push	offset aTurnedOff ; "Turned off"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		mov	ebx, eax
		xor	eax, eax
		mov	[esi+1C74h], eax
		add	esp, 0Ch
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 2
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C52D1:				; CODE XREF: .text:004C5290j
		test	byte ptr [esi+18h], 40h
		jz	loc_4C57E8	; jumptable 004C4E28 default case
		xor	ecx, ecx
		lea	eax, [esi+1B0h]
		mov	[ebp-4], ecx
		mov	[ebp-0Ch], eax

loc_4C52E9:				; CODE XREF: .text:004C54C1j
		mov	edx, [ebp-0Ch]
		cmp	dword ptr [edx], 0
		jz	loc_4C54B6
		test	ebx, ebx
		jle	short loc_4C5318
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_55D6DA ; ", "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C5318:				; CODE XREF: .text:004C52F7j
		cmp	dword ptr [esi+3B0h], 0
		jnz	short loc_4C5325
		xor	edi, edi
		jmp	short loc_4C536A
; ---------------------------------------------------------------------------

loc_4C5325:				; CODE XREF: .text:004C531Fj
		xor	eax, eax
		mov	[ebp-8], eax
		lea	edi, [esi+3ECh]
		mov	eax, [ebp-0Ch]
		lea	edx, [eax-4]
		mov	[ebp-10h], edx

loc_4C5339:				; CODE XREF: .text:004C5360j
		mov	ecx, [edi]
		and	ecx, 1000100h
		cmp	ecx, 1000100h
		jnz	short loc_4C5353
		mov	eax, [edi+3Ch]
		mov	edx, [ebp-10h]
		cmp	eax, [edx]
		jz	short loc_4C5362

loc_4C5353:				; CODE XREF: .text:004C5347j
		inc	dword ptr [ebp-8]
		add	edi, 460h
		cmp	dword ptr [ebp-8], 4
		jl	short loc_4C5339

loc_4C5362:				; CODE XREF: .text:004C5351j
		cmp	dword ptr [ebp-8], 4
		jl	short loc_4C536A
		xor	edi, edi

loc_4C536A:				; CODE XREF: .text:004C5323j
					; .text:004C5366j
		cmp	dword_5FC6E8, 0
		jnz	short loc_4C53A7
		test	edi, edi
		jz	short loc_4C53A7
		cmp	word ptr [edi+260h], 0
		jz	short loc_4C53A7
		add	edi, 260h
		mov	eax, 100h
		sub	eax, ebx
		push	edi		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4C54B6
; ---------------------------------------------------------------------------

loc_4C53A7:				; CODE XREF: .text:004C5371j
					; .text:004C5375j ...
		mov	ecx, [ebp-0Ch]
		lea	edx, [ebp-214h]
		mov	eax, [ecx-4]
		push	eax
		push	offset a08x_5	; "[%08X]="
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-214h]
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	ecx		; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		mov	ecx, [ebp-0Ch]
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, [ecx]
		sub	eax, 2
		jz	short loc_4C53F4
		sub	eax, 2
		jz	short loc_4C5415
		jmp	short loc_4C5432
; ---------------------------------------------------------------------------

loc_4C53F4:				; CODE XREF: .text:004C53EBj
		mov	edx, [ebp-0Ch]
		lea	eax, [ebp-214h]
		movzx	ecx, word ptr [edx+4]
		push	ecx
		push	offset a04x_2	; "%04X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_4C5495
; ---------------------------------------------------------------------------

loc_4C5415:				; CODE XREF: .text:004C53F0j
		mov	edx, [ebp-0Ch]
		lea	eax, [ebp-214h]
		mov	ecx, [edx+4]
		push	ecx
		push	offset a08x_8	; "%08X"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4C5495
; ---------------------------------------------------------------------------

loc_4C5432:				; CODE XREF: .text:004C53F2j
		xor	edi, edi
		xor	eax, eax
		mov	[ebp-8], eax
		mov	edx, [ebp-0Ch]
		lea	ecx, [edx+4]
		mov	[ebp-14h], ecx
		mov	eax, [ebp-0Ch]
		mov	edx, eax
		mov	[ebp-10h], edx
		jmp	short loc_4C5485
; ---------------------------------------------------------------------------

loc_4C544C:				; CODE XREF: .text:004C5493j
		test	edi, edi
		jle	short loc_4C545B
		mov	word ptr [ebp+edi*2-214h], 20h
		inc	edi

loc_4C545B:				; CODE XREF: .text:004C544Ej
		mov	ecx, [ebp-14h]
		xor	eax, eax
		mov	edx, edi
		add	edx, edx
		mov	al, [ecx]
		push	eax
		lea	ecx, [ebp-214h]
		add	edx, ecx
		push	offset a02x_3	; "%02X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax
		inc	dword ptr [ebp-8]
		inc	dword ptr [ebp-14h]

loc_4C5485:				; CODE XREF: .text:004C544Aj
		mov	eax, [ebp-10h]
		mov	edx, [eax]
		cmp	edx, [ebp-8]
		jle	short loc_4C5495
		cmp	dword ptr [ebp-8], 10h
		jl	short loc_4C544C

loc_4C5495:				; CODE XREF: .text:004C5410j
					; .text:004C5430j ...
		lea	ecx, [ebp-214h]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C54B6:				; CODE XREF: .text:004C52EFj
					; .text:004C53A2j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-0Ch], 18h
		cmp	dword ptr [ebp-4], 2
		jl	loc_4C52E9
		jmp	loc_4C57E8	; jumptable 004C4E28 default case
; ---------------------------------------------------------------------------

loc_4C54CC:				; CODE XREF: .text:004C4E28j
					; DATA XREF: .text:off_4C4E2Fo
		mov	ecx, [ebp+18h]	; jumptable 004C4E28 case 6
		mov	eax, [ecx]
		add	eax, stru_5FC458._offset
		cmp	eax, stru_5FC458.sorted.n
		jge	loc_4C57E8	; jumptable 004C4E28 default case
		cmp	dword ptr [esi+10h], 0
		jl	loc_4C57E8	; jumptable 004C4E28 default case
		cmp	dword_5BE6A8, 0
		jz	loc_4C55A5
		cmp	dword ptr [esi+3B0h], 0
		jz	short loc_4C5521
		mov	eax, [esi+3B4h]
		and	eax, 1Fh
		cmp	eax, 0Ch
		jz	short loc_4C5516
		cmp	eax, 0Dh
		jnz	short loc_4C5521

loc_4C5516:				; CODE XREF: .text:004C550Fj
		mov	edx, [ebp+8]
		mov	word ptr [edx+ebx*2], 6
		jmp	short loc_4C5586
; ---------------------------------------------------------------------------

loc_4C5521:				; CODE XREF: .text:004C5501j
					; .text:004C5514j
		cmp	dword ptr [esi+3B0h], 0
		jz	short loc_4C557D
		cmp	dword ptr [esi+3E0h], 0
		jz	short loc_4C557D
		cmp	dword ptr [esi+3DCh], 1
		jnz	short loc_4C557D
		mov	eax, [esi+3B4h]
		and	eax, 1Fh
		cmp	eax, 8
		jz	short loc_4C5559
		cmp	eax, 9
		jz	short loc_4C5559
		cmp	eax, 2
		jz	short loc_4C5559
		cmp	eax, 3
		jnz	short loc_4C557D

loc_4C5559:				; CODE XREF: .text:004C5548j
					; .text:004C554Dj ...
		mov	edx, [esi+3ACh]
		cmp	edx, [esi+3E0h]
		jnb	short loc_4C5572
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+ebx*2], 12h
		jmp	short loc_4C5586
; ---------------------------------------------------------------------------

loc_4C5572:				; CODE XREF: .text:004C5565j
		mov	eax, [ebp+8]
		mov	word ptr [eax+ebx*2], 10h
		jmp	short loc_4C5586
; ---------------------------------------------------------------------------

loc_4C557D:				; CODE XREF: .text:004C5528j
					; .text:004C5531j ...
		mov	edx, [ebp+8]
		mov	word ptr [edx+ebx*2], 1

loc_4C5586:				; CODE XREF: .text:004C551Fj
					; .text:004C5570j ...
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+ebx*2+2],	1
		push	2		; n
		push	60h		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, 2

loc_4C55A5:				; CODE XREF: .text:004C54F4j
		cmp	dword_5FC6EC, 0
		jnz	loc_4C56E5
		cmp	dword ptr [esi+1C70h], 0
		jz	loc_4C57DF
		mov	edx, [esi+1Ch]
		cmp	edx, [esi+1E0h]
		jnz	loc_4C57DF
		xor	ecx, ecx
		lea	eax, [esi+24h]
		mov	[ebp-4], ecx
		mov	dword ptr [ebp-14h], offset off_52FC84
		mov	[ebp-0Ch], eax

loc_4C55E0:				; CODE XREF: .text:004C56DAj
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-0Ch]
		mov	ecx, [edx]
		cmp	ecx, [eax+1C4h]
		jz	loc_4C56CB
		cmp	ebx, 2
		jle	short loc_4C562B
		mov	edx, 100h
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_55D6DA ; ", "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi

loc_4C562B:				; CODE XREF: .text:004C55F7j
		mov	edx, [ebp-14h]
		mov	eax, 100h
		sub	eax, ebx
		mov	esi, ebx
		mov	ecx, [edx]
		add	esi, esi
		push	ecx		; src
		push	eax		; n
		add	esi, [ebp+8]
		push	esi		; dest
		call	StrcopyW
		mov	edi, eax
		add	esp, 0Ch
		mov	eax, 100h
		mov	ecx, edi
		sub	eax, ebx
		add	ecx, ecx
		sub	eax, edi
		mov	edx, esi
		push	(offset	a08x_5+0Ch) ; src
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+1C4h]
		push	edx		; u
		lea	ecx, [ebp-214h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	edx, 100h
		sub	edx, ebx
		lea	eax, [ebp-214h]
		mov	ecx, edi
		sub	edx, edi
		add	ecx, ecx
		push	eax		; src
		push	edx		; n
		add	esi, ecx
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	edx, dword_55D0AC
		mov	eax, 1
		push	edi		; n
		cmp	edx, [ebp-4]
		jz	short loc_4C56BA
		dec	eax

loc_4C56BA:				; CODE XREF: .text:004C56B7j
		push	eax		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi

loc_4C56CB:				; CODE XREF: .text:004C55EEj
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-14h], 4
		add	dword ptr [ebp-0Ch], 4
		cmp	dword ptr [ebp-4], 8
		jl	loc_4C55E0
		jmp	loc_4C57DF
; ---------------------------------------------------------------------------

loc_4C56E5:				; CODE XREF: .text:004C55ACj
		xor	eax, eax
		lea	edx, [esi+24h]
		mov	[ebp-4], eax
		mov	[ebp-0Ch], edx
		mov	dword ptr [ebp-14h], offset off_52FC84

loc_4C56F7:				; CODE XREF: .text:004C57D9j
		cmp	ebx, 2
		jle	short loc_4C572E
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		push	offset asc_55D6DA ; ", "
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi

loc_4C572E:				; CODE XREF: .text:004C56FAj
		mov	edx, [ebp-14h]
		mov	eax, 100h
		sub	eax, ebx
		mov	esi, ebx
		mov	ecx, [edx]
		add	esi, esi
		push	ecx		; src
		push	eax		; n
		add	esi, [ebp+8]
		push	esi		; dest
		call	StrcopyW
		mov	edi, eax
		add	esp, 0Ch
		mov	eax, 100h
		mov	ecx, edi
		sub	eax, ebx
		add	ecx, ecx
		sub	eax, edi
		mov	edx, esi
		push	(offset	a08x_5+0Ch) ; src
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	eax, [ebp-0Ch]
		mov	edx, [eax]
		push	edx		; u
		lea	ecx, [ebp-214h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	edx, 100h
		sub	edx, ebx
		lea	eax, [ebp-214h]
		mov	ecx, edi
		sub	edx, edi
		add	ecx, ecx
		push	eax		; src
		push	edx		; n
		add	esi, ecx
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	edx, dword_55D0AC
		mov	eax, 1
		push	edi		; n
		cmp	edx, [ebp-4]
		jz	short loc_4C57B9
		dec	eax

loc_4C57B9:				; CODE XREF: .text:004C57B6j
		push	eax		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-0Ch], 4
		add	dword ptr [ebp-14h], 4
		cmp	dword ptr [ebp-4], 8
		jl	loc_4C56F7

loc_4C57DF:				; CODE XREF: .text:004C55B9j
					; .text:004C55C8j ...
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 100h

loc_4C57E8:				; CODE XREF: .text:004C4E22j
					; .text:004C508Ej ...
		mov	edx, [ebp+18h]	; jumptable 004C4E28 default case
		mov	ecx, [edx]
		add	ecx, stru_5FC458._offset
		cmp	ecx, stru_5FC458.sorted.selected
		jnz	short loc_4C5804
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 80h

loc_4C5804:				; CODE XREF: .text:004C57F9j
		mov	eax, ebx

loc_4C5806:				; CODE XREF: .text:004C4E60j
					; .text:004C4EECj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4C5810(int, HWND hWnd, int, int)
loc_4C5810:				; DATA XREF: .text:004C3BC9o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		cmp	eax, 472h
		jg	short loc_4C582E
		jz	short loc_4C5882
		sub	eax, 470h
		jz	short loc_4C589D
		dec	eax
		jz	short loc_4C583F
		jmp	loc_4C5907
; ---------------------------------------------------------------------------

loc_4C582E:				; CODE XREF: .text:004C581Bj
		sub	eax, 484h
		jz	short loc_4C5863
		sub	eax, 8
		jz	short loc_4C5874
		jmp	loc_4C5907
; ---------------------------------------------------------------------------

loc_4C583F:				; CODE XREF: .text:004C5827j
		push	0		; index
		push	offset loc_4C3324 ; menufunc
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

loc_4C5863:				; CODE XREF: .text:004C5833j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+0Ch]
		push	edx		; hWnd
		call	InvalidateRect
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C5874:				; CODE XREF: .text:004C5838j
		or	dword_57FE7C, 400h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C5882:				; CODE XREF: .text:004C581Dj
		mov	ax, word ptr stru_5FC458.sorted.selected
		mov	edx, [ebp+8]
		sub	ax, [edx+248h]
		movzx	eax, ax
		shl	eax, 10h
		or	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C589D:				; CODE XREF: .text:004C5824j
		cmp	dword ptr [ebp+14h], 5
		jnz	short loc_4C58D2
		cmp	dword_5FC6E8, 0
		mov	edx, dword_5FC6EC
		setz	cl
		and	ecx, 1
		push	edx
		push	ecx
		call	loc_4C3180
		add	esp, 8
		push	offset stru_5FC458
		call	loc_41A554
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C58D2:				; CODE XREF: .text:004C58A1j
		cmp	dword ptr [ebp+14h], 6
		jnz	short loc_4C5907
		cmp	dword_5FC6EC, 0
		setz	dl
		and	edx, 1
		push	edx
		mov	ecx, dword_5FC6E8
		push	ecx
		call	loc_4C3180
		add	esp, 8
		push	offset stru_5FC458
		call	loc_41A554
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C5907:				; CODE XREF: .text:004C5829j
					; .text:004C583Aj ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C590C:				; CODE XREF: .text:004B4DDCp
		push	ebp
		mov	ebp, esp
		call	loc_4C3A74
		call	loc_4C49A0
		mov	stru_5FC458.sorted.n, eax
		cmp	stru_5FC458.sorted.selected, 0
		jge	short loc_4C5936
		push	0		; selected
		push	offset stru_5FC458 ; pt
		call	Settableselection
		add	esp, 8

loc_4C5936:				; CODE XREF: .text:004C5925j
		mov	eax, [ebp+8]
		mov	edx, stru_5FC458.menu
		push	eax		; index
		push	offset loc_4C3268 ; menufunc
		push	edx		; pm
		push	offset stru_5FC458 ; pt
		call	Callmenufunction
		add	esp, 10h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C5958:				; CODE XREF: .text:004B69F6p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		call	loc_4C3A74
		call	loc_4C49A0
		mov	stru_5FC458.sorted.n, eax
		test	ebx, ebx
		jl	short loc_4C5997
		cmp	ebx, stru_5FC458.sorted.n
		jge	short loc_4C5997
		push	ebx		; selected
		push	offset stru_5FC458 ; pt
		call	Settableselection
		add	esp, 8
		mov	eax, stru_5FC458.hw
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4C5997:				; CODE XREF: .text:004C5970j
					; .text:004C5978j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C599C:				; CODE XREF: .text:00435AB7p
					; .text:00449FAAp ...
		push	ebp
		mov	ebp, esp
		cmp	stru_5FC458.hparent, 0
		jz	short loc_4C5A26
		cmp	rtprot.tracelogtype, 0
		jnz	short loc_4C59BA
		cmp	rtprot.rangeactive, 0
		jz	short loc_4C59E4

loc_4C59BA:				; CODE XREF: .text:004C59AFj
		push	offset aRunTraceProtoc ; "Run trace (protocolling filter is activ"...
		call	_T
		pop	ecx
		push	eax		; lpString
		mov	eax, stru_5FC458.hparent
		push	eax		; hWnd
		call	SetWindowTextW
		push	1
		mov	edx, dword_5FC6E8
		push	edx
		call	loc_4C3180
		add	esp, 8
		jmp	short loc_4C5A0C
; ---------------------------------------------------------------------------

loc_4C59E4:				; CODE XREF: .text:004C59B8j
		push	offset aRunTrace ; "Run	trace"
		call	_T
		pop	ecx
		push	eax		; lpString
		mov	ecx, stru_5FC458.hparent
		push	ecx		; hWnd
		call	SetWindowTextW
		push	0
		mov	eax, dword_5FC6E8
		push	eax
		call	loc_4C3180
		add	esp, 8

loc_4C5A0C:				; CODE XREF: .text:004C59E2j
		push	offset stru_5FC458
		call	loc_41A554
		pop	ecx
		push	0		; force
		push	offset stru_5FC458 ; pt
		call	Updatetable
		add	esp, 8

loc_4C5A26:				; CODE XREF: .text:004C59A6j
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C5A28:				; CODE XREF: .text:0040B0BBp
					; .text:0040B2FCp ...
		push	ebp
		mov	ebp, esp
		call	loc_4C3A74
		cmp	stru_5FC458.hw,	0
		jnz	short loc_4C5A99
		push	offset aRunTrace ; "Run	trace"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset aIco_rtrace ; "ICO_RTRACE"
		mov	eax, g_hInstance
		push	eax		; hi
		mov	edx, stru_5FC458.bar.nbar
		push	edx		; ncolumn
		push	0		; nrow
		push	offset stru_5FC458 ; pt
		call	Createtablewindow
		add	esp, 18h
		mov	eax, stru_5FC458.sorted.selected
		test	eax, eax
		jl	short loc_4C5AA8
		mov	edx, eax
		inc	edx
		push	edx		; y1
		push	0		; x1
		push	eax		; y0
		push	0		; x0
		push	0FFFFFFFFh	; column
		push	offset stru_5FC458 ; pt
		call	Maketableareavisible
		add	esp, 18h
		mov	ecx, stru_5FC458.hw
		push	0		; bErase
		push	0		; lpRect
		push	ecx		; hWnd
		call	InvalidateRect
		jmp	short loc_4C5AA8
; ---------------------------------------------------------------------------

loc_4C5A99:				; CODE XREF: .text:004C5A37j
		push	0		; bErase
		push	0		; lpRect
		mov	eax, stru_5FC458.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_4C5AA8:				; CODE XREF: .text:004C5A6Dj
					; .text:004C5A97j
		call	loc_4C599C
		cmp	stru_5FC458.hparent, 0
		jz	short loc_4C5B02
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4C5B02
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4C5AD9
		push	0		; lParam
		mov	edx, stru_5FC458.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4C5AD9:				; CODE XREF: .text:004C5AC3j
		mov	ecx, stru_5FC458.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4C5AF6
		push	9		; nCmdShow
		mov	eax, stru_5FC458.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4C5AF6:				; CODE XREF: .text:004C5AE7j
		mov	edx, stru_5FC458.hw
		push	edx		; hWnd
		call	SetFocus

loc_4C5B02:				; CODE XREF: .text:004C5AB4j
					; .text:004C5ABAj
		mov	eax, stru_5FC458.hw
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C5B0C:				; CODE XREF: .text:0040B499p
		push	ebp
		mov	ebp, esp
		mov	eax, stru_5FC458.hparent
		test	eax, eax
		jz	short loc_4C5B1E
		push	eax		; hWnd
		call	DestroyWindow

loc_4C5B1E:				; CODE XREF: .text:004C5B16j
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; SORTFUNC loc_4C5B20
loc_4C5B20:				; DATA XREF: .text:004C3C19o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		xor	eax, eax
		mov	ecx, [ebp+0Ch]
		cmp	dword ptr [ebp+10h], 0
		mov	edx, [ebp+8]
		jnz	short loc_4C5B4B
		mov	esi, [ecx+4]
		mov	ebx, [edx+4]
		cmp	esi, ebx
		jbe	short loc_4C5B44
		mov	eax, 1
		jmp	short loc_4C5B4B
; ---------------------------------------------------------------------------

loc_4C5B44:				; CODE XREF: .text:004C5B3Bj
		cmp	esi, ebx
		jnb	short loc_4C5B4B
		or	eax, 0FFFFFFFFh

loc_4C5B4B:				; CODE XREF: .text:004C5B31j
					; .text:004C5B42j ...
		test	eax, eax
		jnz	short loc_4C5B65
		mov	esi, [ecx]
		mov	ebx, [edx]
		cmp	esi, ebx
		jbe	short loc_4C5B5C
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C5B65
; ---------------------------------------------------------------------------

loc_4C5B5C:				; CODE XREF: .text:004C5B55j
		cmp	esi, ebx
		jnb	short loc_4C5B65
		mov	eax, 1

loc_4C5B65:				; CODE XREF: .text:004C5B4Dj
					; .text:004C5B5Aj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4C5B6C(wchar_t *buffer, void *s, int,	int, int, int, int)
loc_4C5B6C:				; DATA XREF: .text:004C5F95o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 9 cases
		cmp	eax, 8
		ja	loc_4C5DE2	; jumptable 004C5B85 default case
		jmp	ds:off_4C5B8C[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4C5B8C	dd offset loc_4C5BB0	; DATA XREF: .text:004C5B85r
		dd offset loc_4C5BBA	; jump table for switch	statement
		dd offset loc_4C5BC1
		dd offset loc_4C5BC8
		dd offset loc_4C5C1E
		dd offset loc_4C5C3D
		dd offset loc_4C5C6D
		dd offset loc_4C5D1E
		dd offset loc_4C5D4D
; ---------------------------------------------------------------------------

loc_4C5BB0:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		mov	eax, 18D0h	; jumptable 004C5B85 case -4
		jmp	loc_4C5DE4
; ---------------------------------------------------------------------------

loc_4C5BBA:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		xor	eax, eax	; jumptable 004C5B85 case -3
		jmp	loc_4C5DE4
; ---------------------------------------------------------------------------

loc_4C5BC1:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		xor	eax, eax	; jumptable 004C5B85 case -2
		jmp	loc_4C5DE4
; ---------------------------------------------------------------------------

loc_4C5BC8:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		push	5		; jumptable 004C5B85 case -1
		push	10h		; size
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		push	ecx		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jbe	short loc_4C5C0F
		push	0		; predict
		push	0		; reg
		push	15h		; mode
		mov	eax, [ebp+20h]
		push	eax		; da
		push	0		; psize
		mov	edx, [ebp+18h]
		mov	esi, [edx]
		push	esi		; _addr
		call	Finddecode
		add	esp, 8
		push	eax		; dec
		push	esi		; ip
		push	ebx		; cmdsize
		lea	eax, [ebp-10h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		jmp	short loc_4C5C17
; ---------------------------------------------------------------------------

loc_4C5C0F:				; CODE XREF: .text:004C5BE2j
		mov	edx, [ebp+20h]
		xor	ecx, ecx
		mov	[edx+10h], ecx

loc_4C5C17:				; CODE XREF: .text:004C5C0Dj
		xor	eax, eax
		jmp	loc_4C5DE4
; ---------------------------------------------------------------------------

loc_4C5C1E:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		mov	edx, [ebp+18h]	; jumptable 004C5B85 case 0
		mov	ecx, [edx+4]
		push	ecx
		push	offset aI__4	; "%i."
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C5DE2	; jumptable 004C5B85 default case
; ---------------------------------------------------------------------------

loc_4C5C3D:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		mov	eax, [ebp+18h]	; jumptable 004C5B85 case 1
		mov	edx, [eax]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	loc_4C5DE2	; jumptable 004C5B85 default case
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C5DE2	; jumptable 004C5B85 default case
; ---------------------------------------------------------------------------

loc_4C5C6D:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		mov	eax, dword_57DE54 ; jumptable 004C5B85 case 2
		cmp	eax, 1
		jnz	short loc_4C5C7E
		mov	ebx, 1
		jmp	short loc_4C5C8C
; ---------------------------------------------------------------------------

loc_4C5C7E:				; CODE XREF: .text:004C5C75j
		cmp	eax, 2
		jnz	short loc_4C5C8A
		mov	ebx, 2
		jmp	short loc_4C5C8C
; ---------------------------------------------------------------------------

loc_4C5C8A:				; CODE XREF: .text:004C5C81j
		xor	ebx, ebx

loc_4C5C8C:				; CODE XREF: .text:004C5C7Cj
					; .text:004C5C88j
		cmp	dword_57DE58, 0
		jz	short loc_4C5C98
		or	ebx, 20h

loc_4C5C98:				; CODE XREF: .text:004C5C93j
		mov	eax, dword_5FC6E4
		test	eax, eax
		jz	short loc_4C5CAE
		mov	edx, [ebp+18h]
		cmp	eax, [edx]
		jnz	short loc_4C5CAE
		or	ebx, 1000h

loc_4C5CAE:				; CODE XREF: .text:004C5C9Fj
					; .text:004C5CA6j
		push	0		; subaddr
		mov	ecx, [ebp+18h]
		mov	eax, [ecx]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C5CF6
		test	byte ptr [eax+9], 10h
		jz	short loc_4C5CF6
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_4C5CE0
		or	ebx, 800h
		jmp	short loc_4C5CF6
; ---------------------------------------------------------------------------

loc_4C5CE0:				; CODE XREF: .text:004C5CD6j
		test	edx, 40000h
		jz	short loc_4C5CF0
		or	ebx, 400h
		jmp	short loc_4C5CF6
; ---------------------------------------------------------------------------

loc_4C5CF0:				; CODE XREF: .text:004C5CE6j
		or	ebx, 200h

loc_4C5CF6:				; CODE XREF: .text:004C5CC5j
					; .text:004C5CCBj ...
		push	ebx		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		push	eax		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4C5DE2	; jumptable 004C5B85 default case
; ---------------------------------------------------------------------------

loc_4C5D1E:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		mov	edx, [ebp+20h]	; jumptable 004C5B85 case 3
		cmp	dword ptr [edx+10h], 0
		jbe	loc_4C5DE2	; jumptable 004C5B85 default case
		mov	ecx, [ebp+20h]
		add	ecx, 13CCh
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C5DE2	; jumptable 004C5B85 default case
; ---------------------------------------------------------------------------

loc_4C5D4D:				; CODE XREF: .text:004C5B85j
					; DATA XREF: .text:off_4C5B8Co
		test	ebx, ebx	; jumptable 004C5B85 case 4
		jnz	short loc_4C5D6C
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	30h		; type
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4C5D6C:				; CODE XREF: .text:004C5D4Fj
		test	ebx, ebx
		jnz	short loc_4C5D8B
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	32h		; type
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4C5D8B:				; CODE XREF: .text:004C5D6Ej
		test	ebx, ebx
		jnz	short loc_4C5DBA
		mov	eax, [ebp+20h]
		mov	edx, [eax+14h]
		and	edx, 1Fh
		cmp	edx, 0Ch
		jz	short loc_4C5DBA
		mov	ecx, [ebp+20h]
		add	ecx, 16D0h
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4C5DBA:				; CODE XREF: .text:004C5D8Dj
					; .text:004C5D9Bj
		test	ebx, ebx
		jnz	short loc_4C5DD9
		push	100h		; len
		mov	eax, [ebp+8]
		push	eax		; comment
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		push	ecx		; _addr
		push	0		; pmod
		call	Getanalysercomment
		add	esp, 10h
		mov	ebx, eax

loc_4C5DD9:				; CODE XREF: .text:004C5DBCj
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 200h

loc_4C5DE2:				; CODE XREF: .text:004C5B7Fj
					; .text:004C5C38j ...
		mov	eax, ebx	; jumptable 004C5B85 default case

loc_4C5DE4:				; CODE XREF: .text:004C5BB5j
					; .text:004C5BBCj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C5DEC:				; DATA XREF: .text:004C5F71o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 2
		jz	short loc_4C5E00
		sub	eax, 46Fh
		jz	short loc_4C5E1D
		jmp	short loc_4C5E41
; ---------------------------------------------------------------------------

loc_4C5E00:				; CODE XREF: .text:004C5DF5j
		push	offset stru_5FC8B8.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		xor	edx, edx
		mov	dword_5FCB24, edx
		xor	ecx, ecx
		mov	dword_5FCB28, ecx
		jmp	short loc_4C5E41
; ---------------------------------------------------------------------------

loc_4C5E1D:				; CODE XREF: .text:004C5DFCj
		push	0		; index
		push	offset loc_4C3E4C ; menufunc
		mov	eax, [ebp+8]
		mov	edx, [eax+218h]
		push	edx		; pm
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C5E41:				; CODE XREF: .text:004C5DFEj
					; .text:004C5E1Bj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C5E48:				; CODE XREF: .text:004C37ABp
					; .text:004C37B9p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		cmp	stru_5FC8B8.bar.nbar, 0
		push	ebx
		push	esi
		push	edi
		mov	edi, offset aUnableToAllo_2 ; "Unable to allocate memory for run trace"...
;__DebugBreak
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		jnz	loc_4C5FAF
		lea	eax, aProfile_2;[edi+187Ah]
		push	eax		; src
		push	offset stru_5FC8B8 ; dst
		call	_wcscpy
		mov	stru_5FC8B8.mode, 0F0000h
		lea	edx, aCount;[edi+188Ah]
		mov	stru_5FC8B8.bar.visible, 1
		lea	ecx, aNumberOfRegist;[edi+1896h]
		mov	stru_5FC8B8.bar._name, edx
		mov	stru_5FC8B8.bar.expl, ecx
		mov	stru_5FC8B8.bar.mode, 2
		lea	eax, aModule_5;[edi+112Eh]
		mov	stru_5FC8B8.bar.defdx, 9
		mov	stru_5FC8B8.bar._name+4,	eax
		lea	edx, aModuleToWhichT;[edi+113Ch]
		xor	ecx, ecx
		mov	stru_5FC8B8.bar.expl+4,	edx
		mov	stru_5FC8B8.bar.mode+4,	ecx
		lea	eax, aAddress_11;[edi+1184h]
		mov	stru_5FC8B8.bar.defdx+4, 9
		mov	stru_5FC8B8.bar._name+8,	eax
		lea	edx, aAddressOfTheCo;[edi+1194h]
		mov	stru_5FC8B8.bar.expl+8,	edx
		mov	stru_5FC8B8.bar.mode+8,	2
		lea	ecx, aCommand_3;[edi+11C2h]
		mov	stru_5FC8B8.bar.defdx+8, 9
		lea	eax, aDisassembled_3;[edi+11D2h]
		mov	stru_5FC8B8.bar._name+0Ch, ecx
		mov	stru_5FC8B8.bar.expl+0Ch, eax
		mov	stru_5FC8B8.bar.mode+0Ch, 1000h
		lea	edx, aComments_2;[edi+18CAh]
		mov	stru_5FC8B8.bar.defdx+0Ch, 28h
		lea	ecx, aComments_2;[edi+18CAh]
		mov	stru_5FC8B8.bar._name+10h, edx
		xor	eax, eax
		mov	stru_5FC8B8.bar.expl+10h, ecx
		mov	stru_5FC8B8.bar.mode+10h, eax
		mov	stru_5FC8B8.bar.defdx+10h, 100h
		mov	stru_5FC8B8.bar.nbar, 5
		xor	edx, edx
		mov	stru_5FC8B8.tabfunc, offset loc_4C5DEC
		xor	ecx, ecx
		mov	stru_5FC8B8.custommode,	edx
		xor	eax, eax
		mov	stru_5FC8B8.customdata,	ecx
		mov	stru_5FC8B8.updatefunc,	eax
		add	esp, 8
		xor	edx, edx
		mov	stru_5FC8B8.drawfunc, offset loc_4C5B6C
		mov	stru_5FC8B8.tableselfunc, edx
		mov	stru_5FC8B8.menu, (offset stru_55D35C._name+1C8h)

loc_4C5FAF:				; CODE XREF: .text:004C5E66j
		cmp	stru_5FC8B8.hw,	0
		jnz	short loc_4C5FE2
		lea	ecx, $CTW0("");[edi+5Bh]
		push	ecx		; _title
		lea	eax, aIco_p;[edi+18DCh]
		push	eax		; icon
		mov	edx, g_hInstance
		push	edx		; hi
		mov	ecx, stru_5FC8B8.bar.nbar
		push	ecx		; ncolumn
		push	0		; nrow
		push	offset stru_5FC8B8 ; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4C5FF1
; ---------------------------------------------------------------------------

loc_4C5FE2:				; CODE XREF: .text:004C5FB6j
		push	0		; bErase
		push	0		; lpRect
		mov	eax, stru_5FC8B8.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_4C5FF1:				; CODE XREF: .text:004C5FE0j
		lea	edx, aProfileOf;[edi+18E8h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-400h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-400h]
		add	eax, eax
		add	eax, edx
		push	esi		; size
		push	ebx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		mov	dword_5FCB24, ebx
		mov	dword_5FCB28, esi
		call	loc_4C3C0C
		mov	eax, stru_5FC8B8.hparent
		test	eax, eax
		jz	short loc_4C6095
		lea	ecx, [ebp-400h]
		push	ecx		; lpString
		push	eax		; hWnd
		call	SetWindowTextW
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4C606C
		push	0		; lParam
		mov	edx, stru_5FC8B8.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4C606C:				; CODE XREF: .text:004C6056j
		mov	ecx, stru_5FC8B8.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4C6089
		push	9		; nCmdShow
		mov	eax, stru_5FC8B8.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4C6089:				; CODE XREF: .text:004C607Aj
		mov	edx, stru_5FC8B8.hw
		push	edx		; hWnd
		call	SetFocus

loc_4C6095:				; CODE XREF: .text:004C6040j
		mov	eax, stru_5FC8B8.hw
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C60A4:				; CODE XREF: .text:0041080Cp
					; .text:00449F69p
		push	ebp
		mov	ebp, esp
		mov	eax, stru_5FC8B8.hparent
		test	eax, eax
		jz	short loc_4C60B6
		push	eax		; hWnd
		call	DestroyWindow

loc_4C60B6:				; CODE XREF: .text:004C60AEj
		push	offset stru_5FC8B8.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		xor	edx, edx
		mov	dword_5FCB24, edx
		xor	ecx, ecx
		mov	dword_5FCB28, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C60D4:				; CODE XREF: .text:loc_4C3612p
		push	ebp
		mov	ebp, esp
		mov	eax, stru_5FC8B8.hw
		test	eax, eax
		jz	short loc_4C60EA
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4C60EA:				; CODE XREF: .text:004C60DEj
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C60EC:				; DATA XREF: .data:004F7970o
					; .data:004F79A4o ...
		enter	0, 0
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C60F2:				; DATA XREF: .data:004FA348o
					; .data:004FA7F4o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx+4]
		mov	[edx], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6100:				; DATA XREF: .data:004FAB00o
		enter	0, 0
		mov	edx, [ebp+8]
		movsx	eax, byte ptr [edx+4]
		mov	[edx], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C610F:				; DATA XREF: .data:004FAB34o
		enter	0, 0
		mov	edx, [ebp+8]
		movsx	eax, word ptr [edx+4]
		mov	[edx], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C611E:				; DATA XREF: .data:004FCCECo
					; .data:004FCD20o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx+4]
		mov	[edx], eax
		mov	ecx, [edx+10h]
		mov	edx, [ebp+0Ch]
		test	dword ptr [edx+2Ch], 400h
		jnz	short loc_4C613E
		add	[edx+24h], ecx
		jmp	short locret_4C6141
; ---------------------------------------------------------------------------

loc_4C613E:				; CODE XREF: .text:004C6137j
		sub	[edx+24h], ecx

locret_4C6141:				; CODE XREF: .text:004C613Cj
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6143:				; DATA XREF: .data:004FD268o
					; .data:004FD29Co ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx+4]
		mov	[edx], eax
		mov	ecx, [edx+10h]
		mov	edx, [ebp+0Ch]
		test	dword ptr [edx+2Ch], 400h
		jnz	short loc_4C6163
		add	[edx+28h], ecx
		jmp	short locret_4C6166
; ---------------------------------------------------------------------------

loc_4C6163:				; CODE XREF: .text:004C615Cj
		sub	[edx+28h], ecx

locret_4C6166:				; CODE XREF: .text:004C6161j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6168:				; DATA XREF: .data:004F7E1Co
					; .data:004F7E50o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C617E
		add	eax, ecx
		jmp	short loc_4C618B
; ---------------------------------------------------------------------------

loc_4C617E:				; CODE XREF: .text:004C6178j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C6188
		add	al, cl
		jmp	short loc_4C618B
; ---------------------------------------------------------------------------

loc_4C6188:				; CODE XREF: .text:004C6182j
		add	ax, cx

loc_4C618B:				; CODE XREF: .text:004C617Cj
					; .text:004C6186j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C61A7:				; DATA XREF: .data:004F7D18o
					; .data:004F7D4Co ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 1
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C61C8
		popfd
		adc	eax, ecx
		jmp	short loc_4C61D7
; ---------------------------------------------------------------------------

loc_4C61C8:				; CODE XREF: .text:004C61C1j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C61D3
		popfd
		adc	al, cl
		jmp	short loc_4C61D7
; ---------------------------------------------------------------------------

loc_4C61D3:				; CODE XREF: .text:004C61CCj
		popfd
		adc	ax, cx

loc_4C61D7:				; CODE XREF: .text:004C61C6j
					; .text:004C61D1j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C61F3:				; DATA XREF: .data:004FC500o
					; .data:004FC534o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6209
		sub	eax, ecx
		jmp	short loc_4C6216
; ---------------------------------------------------------------------------

loc_4C6209:				; CODE XREF: .text:004C6203j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C6213
		sub	al, cl
		jmp	short loc_4C6216
; ---------------------------------------------------------------------------

loc_4C6213:				; CODE XREF: .text:004C620Dj
		sub	ax, cx

loc_4C6216:				; CODE XREF: .text:004C6207j
					; .text:004C6211j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6232:				; DATA XREF: .data:004FBAD8o
					; .data:004FBB0Co ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 1
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6253
		popfd
		sbb	eax, ecx
		jmp	short loc_4C6262
; ---------------------------------------------------------------------------

loc_4C6253:				; CODE XREF: .text:004C624Cj
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C625E
		popfd
		sbb	al, cl
		jmp	short loc_4C6262
; ---------------------------------------------------------------------------

loc_4C625E:				; CODE XREF: .text:004C6257j
		popfd
		sbb	ax, cx

loc_4C6262:				; CODE XREF: .text:004C6251j
					; .text:004C625Cj
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C627E:				; DATA XREF: .data:004F7F20o
					; .data:004F7F54o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6294
		and	eax, ecx
		jmp	short loc_4C62A1
; ---------------------------------------------------------------------------

loc_4C6294:				; CODE XREF: .text:004C628Ej
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C629E
		and	al, cl
		jmp	short loc_4C62A1
; ---------------------------------------------------------------------------

loc_4C629E:				; CODE XREF: .text:004C6298j
		and	ax, cx

loc_4C62A1:				; CODE XREF: .text:004C6292j
					; .text:004C629Cj
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C62BD:				; DATA XREF: .data:004FACA0o
					; .data:004FACD4o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C62D3
		or	eax, ecx
		jmp	short loc_4C62E0
; ---------------------------------------------------------------------------

loc_4C62D3:				; CODE XREF: .text:004C62CDj
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C62DD
		or	al, cl
		jmp	short loc_4C62E0
; ---------------------------------------------------------------------------

loc_4C62DD:				; CODE XREF: .text:004C62D7j
		or	ax, cx

loc_4C62E0:				; CODE XREF: .text:004C62D1j
					; .text:004C62DBj
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C62FC:				; DATA XREF: .data:004FCA14o
					; .data:004FCA48o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6312
		xor	eax, ecx
		jmp	short loc_4C631F
; ---------------------------------------------------------------------------

loc_4C6312:				; CODE XREF: .text:004C630Cj
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C631C
		xor	al, cl
		jmp	short loc_4C631F
; ---------------------------------------------------------------------------

loc_4C631C:				; CODE XREF: .text:004C6316j
		xor	ax, cx

loc_4C631F:				; CODE XREF: .text:004C6310j
					; .text:004C631Aj
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C633B:				; DATA XREF: .data:004FC66Co
					; .data:004FC6A0o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6351
		test	ecx, eax
		jmp	short loc_4C635E
; ---------------------------------------------------------------------------

loc_4C6351:				; CODE XREF: .text:004C634Bj
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C635B
		test	cl, al
		jmp	short loc_4C635E
; ---------------------------------------------------------------------------

loc_4C635B:				; CODE XREF: .text:004C6355j
		test	cx, ax

loc_4C635E:				; CODE XREF: .text:004C634Fj
					; .text:004C6359j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C637A:				; DATA XREF: .data:004F8BB8o
					; .data:004F8BECo ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6390
		cmp	eax, ecx
		jmp	short loc_4C639D
; ---------------------------------------------------------------------------

loc_4C6390:				; CODE XREF: .text:004C638Aj
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C639A
		cmp	al, cl
		jmp	short loc_4C639D
; ---------------------------------------------------------------------------

loc_4C639A:				; CODE XREF: .text:004C6394j
		cmp	ax, cx

loc_4C639D:				; CODE XREF: .text:004C638Ej
					; .text:004C6398j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C63B9:				; DATA XREF: .data:004F9238o
					; .data:004F926Co
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C63CB
		inc	eax
		jmp	short loc_4C63D7
; ---------------------------------------------------------------------------

loc_4C63CB:				; CODE XREF: .text:004C63C6j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C63D5
		inc	al
		jmp	short loc_4C63D7
; ---------------------------------------------------------------------------

loc_4C63D5:				; CODE XREF: .text:004C63CFj
		inc	ax

loc_4C63D7:				; CODE XREF: .text:004C63C9j
					; .text:004C63D3j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D4h
		and	ecx, 0FFFFF72Bh
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C63F3:				; DATA XREF: .data:004F8E90o
					; .data:004F8EC4o
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6405
		dec	eax
		jmp	short loc_4C6411
; ---------------------------------------------------------------------------

loc_4C6405:				; CODE XREF: .text:004C6400j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C640F
		dec	al
		jmp	short loc_4C6411
; ---------------------------------------------------------------------------

loc_4C640F:				; CODE XREF: .text:004C6409j
		dec	ax

loc_4C6411:				; CODE XREF: .text:004C6403j
					; .text:004C640Dj
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D4h
		and	ecx, 0FFFFF72Bh
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C642D:				; DATA XREF: .data:004FAC38o
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6440
		neg	eax
		jmp	short loc_4C644D
; ---------------------------------------------------------------------------

loc_4C6440:				; CODE XREF: .text:004C643Aj
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C644A
		neg	al
		jmp	short loc_4C644D
; ---------------------------------------------------------------------------

loc_4C644A:				; CODE XREF: .text:004C6444j
		neg	ax

loc_4C644D:				; CODE XREF: .text:004C643Ej
					; .text:004C6448j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6469:				; DATA XREF: .data:004FAC6Co
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C647C
		not	eax
		jmp	short loc_4C6489
; ---------------------------------------------------------------------------

loc_4C647C:				; CODE XREF: .text:004C6476j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C6486
		not	al
		jmp	short loc_4C6489
; ---------------------------------------------------------------------------

loc_4C6486:				; CODE XREF: .text:004C6480j
		not	ax

loc_4C6489:				; CODE XREF: .text:004C647Aj
					; .text:004C6484j
		mov	[edx], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C648D:				; DATA XREF: .data:004FA0D8o
					; .data:004FA10Co ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		cmp	dword ptr [edx+10h], 2
		jnz	short loc_4C64A1
		and	eax, 0FFFFh

loc_4C64A1:				; CODE XREF: .text:004C649Aj
		mov	edx, [ebp+0Ch]
		mov	[edx+8], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C64A9:				; DATA XREF: .data:004F9780o
					; .data:004F97B4o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jnz	short locret_4C64D0
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C64CD
		and	eax, 0FFFFh

loc_4C64CD:				; CODE XREF: .text:004C64C6j
		mov	[edx+8], eax

locret_4C64D0:				; CODE XREF: .text:004C64BBj
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C64D2:				; DATA XREF: .data:004F9850o
					; .data:004F9884o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jz	short locret_4C64F9
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C64F6
		and	eax, 0FFFFh

loc_4C64F6:				; CODE XREF: .text:004C64EFj
		mov	[edx+8], eax

locret_4C64F9:				; CODE XREF: .text:004C64E4j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C64FB:				; DATA XREF: .data:004F99F0o
					; .data:004F9A24o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jbe	short locret_4C6522
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C651F
		and	eax, 0FFFFh

loc_4C651F:				; CODE XREF: .text:004C6518j
		mov	[edx+8], eax

locret_4C6522:				; CODE XREF: .text:004C650Dj
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6524:				; DATA XREF: .data:004F9648o
					; .data:004F967Co ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jb	short locret_4C654B
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C6548
		and	eax, 0FFFFh

loc_4C6548:				; CODE XREF: .text:004C6541j
		mov	[edx+8], eax

locret_4C654B:				; CODE XREF: .text:004C6536j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C654D:				; DATA XREF: .data:004F9510o
					; .data:004F9544o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jnb	short locret_4C6574
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C6571
		and	eax, 0FFFFh

loc_4C6571:				; CODE XREF: .text:004C656Aj
		mov	[edx+8], eax

locret_4C6574:				; CODE XREF: .text:004C655Fj
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6576:				; DATA XREF: .data:004F9920o
					; .data:004F9954o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		ja	short locret_4C659D
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C659A
		and	eax, 0FFFFh

loc_4C659A:				; CODE XREF: .text:004C6593j
		mov	[edx+8], eax

locret_4C659D:				; CODE XREF: .text:004C6588j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C659F:				; DATA XREF: .data:004F9FA0o
					; .data:004F9FD4o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jle	short locret_4C65C6
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C65C3
		and	eax, 0FFFFh

loc_4C65C3:				; CODE XREF: .text:004C65BCj
		mov	[edx+8], eax

locret_4C65C6:				; CODE XREF: .text:004C65B1j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C65C8:				; DATA XREF: .data:004F9E00o
					; .data:004F9E34o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jl	short locret_4C65EF
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C65EC
		and	eax, 0FFFFh

loc_4C65EC:				; CODE XREF: .text:004C65E5j
		mov	[edx+8], eax

locret_4C65EF:				; CODE XREF: .text:004C65DAj
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C65F1:				; DATA XREF: .data:004F9D30o
					; .data:004F9D64o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jge	short locret_4C6618
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C6615
		and	eax, 0FFFFh

loc_4C6615:				; CODE XREF: .text:004C660Ej
		mov	[edx+8], eax

locret_4C6618:				; CODE XREF: .text:004C6603j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C661A:				; DATA XREF: .data:004F9ED0o
					; .data:004F9F04o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jg	short locret_4C6641
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C663E
		and	eax, 0FFFFh

loc_4C663E:				; CODE XREF: .text:004C6637j
		mov	[edx+8], eax

locret_4C6641:				; CODE XREF: .text:004C662Cj
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6643:				; DATA XREF: .data:004F9440o
					; .data:004F9474o
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jno	short locret_4C666A
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C6667
		and	eax, 0FFFFh

loc_4C6667:				; CODE XREF: .text:004C6660j
		mov	[edx+8], eax

locret_4C666A:				; CODE XREF: .text:004C6655j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C666C:				; DATA XREF: .data:004F94A8o
					; .data:004F94DCo
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jo	short locret_4C6693
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C6690
		and	eax, 0FFFFh

loc_4C6690:				; CODE XREF: .text:004C6689j
		mov	[edx+8], eax

locret_4C6693:				; CODE XREF: .text:004C667Ej
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6695:				; DATA XREF: .data:004F9C60o
					; .data:004F9C94o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jp	short locret_4C66BC
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C66B9
		and	eax, 0FFFFh

loc_4C66B9:				; CODE XREF: .text:004C66B2j
		mov	[edx+8], eax

locret_4C66BC:				; CODE XREF: .text:004C66A7j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C66BE:				; DATA XREF: .data:004F9B90o
					; .data:004F9BC4o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jnp	short locret_4C66E5
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C66E2
		and	eax, 0FFFFh

loc_4C66E2:				; CODE XREF: .text:004C66DBj
		mov	[edx+8], eax

locret_4C66E5:				; CODE XREF: .text:004C66D0j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C66E7:				; DATA XREF: .data:004F9AC0o
					; .data:004F9AF4o
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		jns	short locret_4C670E
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C670B
		and	eax, 0FFFFh

loc_4C670B:				; CODE XREF: .text:004C6704j
		mov	[edx+8], eax

locret_4C670E:				; CODE XREF: .text:004C66F9j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6710:				; DATA XREF: .data:004F9B28o
					; .data:004F9B5Co
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		push	ecx
		popfd
		js	short locret_4C6737
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		cmp	dword ptr [ecx+10h], 2
		jnz	short loc_4C6734
		and	eax, 0FFFFh

loc_4C6734:				; CODE XREF: .text:004C672Dj
		mov	[edx+8], eax

locret_4C6737:				; CODE XREF: .text:004C6722j
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6739:				; DATA XREF: .data:004FB798o
					; .data:004FB7CCo ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C675D
		popfd
		shl	eax, cl
		jmp	short loc_4C676C
; ---------------------------------------------------------------------------

loc_4C675D:				; CODE XREF: .text:004C6756j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C6768
		popfd
		shl	al, cl
		jmp	short loc_4C676C
; ---------------------------------------------------------------------------

loc_4C6768:				; CODE XREF: .text:004C6761j
		popfd
		shl	ax, cl

loc_4C676C:				; CODE XREF: .text:004C675Bj
					; .text:004C6766j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6788:				; DATA XREF: .data:004FB9A0o
					; .data:004FB9D4o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C67AC
		popfd
		shr	eax, cl
		jmp	short loc_4C67BB
; ---------------------------------------------------------------------------

loc_4C67AC:				; CODE XREF: .text:004C67A5j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C67B7
		popfd
		shr	al, cl
		jmp	short loc_4C67BB
; ---------------------------------------------------------------------------

loc_4C67B7:				; CODE XREF: .text:004C67B0j
		popfd
		shr	ax, cl

loc_4C67BB:				; CODE XREF: .text:004C67AAj
					; .text:004C67B5j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C67D7:				; DATA XREF: .data:004FBA3Co
					; .data:004FBA70o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C67FB
		popfd
		sar	eax, cl
		jmp	short loc_4C680A
; ---------------------------------------------------------------------------

loc_4C67FB:				; CODE XREF: .text:004C67F4j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C6806
		popfd
		sar	al, cl
		jmp	short loc_4C680A
; ---------------------------------------------------------------------------

loc_4C6806:				; CODE XREF: .text:004C67FFj
		popfd
		sar	ax, cl

loc_4C680A:				; CODE XREF: .text:004C67F9j
					; .text:004C6804j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6826:				; DATA XREF: .data:004FB424o
					; .data:004FB458o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C684A
		popfd
		ror	eax, cl
		jmp	short loc_4C6859
; ---------------------------------------------------------------------------

loc_4C684A:				; CODE XREF: .text:004C6843j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C6855
		popfd
		ror	al, cl
		jmp	short loc_4C6859
; ---------------------------------------------------------------------------

loc_4C6855:				; CODE XREF: .text:004C684Ej
		popfd
		ror	ax, cl

loc_4C6859:				; CODE XREF: .text:004C6848j
					; .text:004C6853j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6875:				; DATA XREF: .data:004FB388o
					; .data:004FB3BCo ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6899
		popfd
		rol	eax, cl
		jmp	short loc_4C68A8
; ---------------------------------------------------------------------------

loc_4C6899:				; CODE XREF: .text:004C6892j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C68A4
		popfd
		rol	al, cl
		jmp	short loc_4C68A8
; ---------------------------------------------------------------------------

loc_4C68A4:				; CODE XREF: .text:004C689Dj
		popfd
		rol	ax, cl

loc_4C68A8:				; CODE XREF: .text:004C6897j
					; .text:004C68A2j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C68C4:				; DATA XREF: .data:004FB2ECo
					; .data:004FB320o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C68E8
		popfd
		rcr	eax, cl
		jmp	short loc_4C68F7
; ---------------------------------------------------------------------------

loc_4C68E8:				; CODE XREF: .text:004C68E1j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C68F3
		popfd
		rcr	al, cl
		jmp	short loc_4C68F7
; ---------------------------------------------------------------------------

loc_4C68F3:				; CODE XREF: .text:004C68ECj
		popfd
		rcr	ax, cl

loc_4C68F7:				; CODE XREF: .text:004C68E6j
					; .text:004C68F1j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6913:				; DATA XREF: .data:004FB250o
					; .data:004FB284o ...
		enter	0, 0
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+2Ch]
		and	ecx, 8D5h
		mov	edx, [ebp+8]
		push	ecx
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6937
		popfd
		rcl	eax, cl
		jmp	short loc_4C6946
; ---------------------------------------------------------------------------

loc_4C6937:				; CODE XREF: .text:004C6930j
		cmp	dword ptr [edx+10h], 1
		jnz	short loc_4C6942
		popfd
		rcl	al, cl
		jmp	short loc_4C6946
; ---------------------------------------------------------------------------

loc_4C6942:				; CODE XREF: .text:004C693Bj
		popfd
		rcl	ax, cl

loc_4C6946:				; CODE XREF: .text:004C6935j
					; .text:004C6940j
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6962:				; DATA XREF: .data:004FAFE0o
					; .data:004FB014o ...
		enter	0, 0
		push	esi
		mov	edx, [ebp+8]
		mov	esi, [ebp+0Ch]
		mov	eax, [edx]
		mov	[edx+1Ch], eax
		mov	eax, [esi+1Ch]
		mov	ecx, [edx+10h]
		sub	eax, ecx
		mov	[edx+14h], eax
		mov	[edx+18h], ecx
		mov	[esi+1Ch], eax
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6986:				; DATA XREF: .data:004FAE0Co
					; .data:004FAE40o
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx+4]
		mov	[edx], eax
		mov	ecx, [edx+10h]
		mov	edx, [ebp+0Ch]
		add	[edx+1Ch], ecx
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C699D:				; DATA XREF: .data:004F82C8o
					; .data:004F82FCo
		enter	0, 0
		push	esi
		mov	edx, [ebp+8]
		mov	esi, [ebp+0Ch]
		mov	eax, [esi+8]
		mov	[edx+1Ch], eax
		mov	eax, [esi+1Ch]
		mov	ecx, [edx+10h]
		sub	eax, ecx
		mov	[edx+14h], eax
		mov	[edx+18h], ecx
		mov	[esi+1Ch], eax
		mov	eax, [edx]
		cmp	ecx, 2
		jnz	short loc_4C69CB
		and	eax, 0FFFFh

loc_4C69CB:				; CODE XREF: .text:004C69C4j
		mov	[esi+8], eax
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C69D1:				; DATA XREF: .data:004FB590o
					; .data:004FB5C4o ...
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+10h]
		cmp	ecx, 2
		jnz	short loc_4C69E7
		and	eax, 0FFFFh

loc_4C69E7:				; CODE XREF: .text:004C69E0j
		mov	edx, [ebp+0Ch]
		mov	[edx+8], eax
		add	[edx+1Ch], ecx
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C69F2:				; DATA XREF: .data:004FB660o
					; .data:004FB694o
		enter	0, 0
		push	esi
		mov	edx, [ebp+8]
		mov	esi, [ebp+0Ch]
		mov	eax, [edx]
		mov	ecx, [edx+10h]
		cmp	ecx, 2
		jnz	short loc_4C6A0C
		and	eax, 0FFFFh

loc_4C6A0C:				; CODE XREF: .text:004C6A05j
		mov	[esi+8], eax
		add	ecx, [edx+4]
		add	[esi+1Ch], ecx
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6A18:				; DATA XREF: .data:004F849Co
		enter	0, 0
		mov	edx, [ebp+0Ch]
		and	dword ptr [edx+2Ch], 0FFFFFBFFh
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6A28:				; DATA XREF: .data:004F8468o
		enter	0, 0
		mov	edx, [ebp+0Ch]
		and	dword ptr [edx+2Ch], 0FFFFFFFEh
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6A35:				; DATA XREF: .data:004F856Co
		enter	0, 0
		mov	edx, [ebp+0Ch]
		xor	dword ptr [edx+2Ch], 1
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6A42:				; DATA XREF: .data:004FC3C8o
		enter	0, 0
		mov	edx, [ebp+0Ch]
		or	dword ptr [edx+2Ch], 1
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6A4F:				; DATA XREF: .data:004FA37Co
		enter	0, 0
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp+8]
		mov	eax, [ecx+20h]
		mov	[ecx+1Ch], eax
		mov	eax, [edx+4]
		mov	[edx], eax
		add	dword ptr [ecx+1Ch], 4
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6A6A:				; DATA XREF: .data:004F9134o
		enter	0, 0
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	ecx, [edx+4]
		cmp	dword ptr [edx+10h], 4
		jnz	short loc_4C6A81
		imul	eax, ecx
		jmp	short loc_4C6A85
; ---------------------------------------------------------------------------

loc_4C6A81:				; CODE XREF: .text:004C6A7Aj
		imul	ax, cx

loc_4C6A85:				; CODE XREF: .text:004C6A7Fj
		mov	[edx], eax
		mov	edx, [ebp+0Ch]
		pushfd
		mov	ecx, [edx+2Ch]
		pop	eax
		and	eax, 8D5h
		and	ecx, 0FFFFF72Ah
		or	eax, ecx
		mov	[edx+2Ch], eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_4C6AA1:				; DATA XREF: .data:004F8400o
					; .data:004F8434o ...
		enter	0, 0
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4]
		cmp	dword ptr [ecx+10h], 4
		jnz	short loc_4C6AB4
		cdq
		jmp	short loc_4C6AB6
; ---------------------------------------------------------------------------

loc_4C6AB4:				; CODE XREF: .text:004C6AAFj
		cwd

loc_4C6AB6:				; CODE XREF: .text:004C6AB2j
		mov	[ecx], edx
		leave
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C6ABC:				; DATA XREF: .data:stru_55EF74o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebx+68h]
		push	eax		; index
		add	ebx, 44h
		push	ebx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_5FCB2C, eax
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C6AE0:				; DATA XREF: .data:stru_55EF74o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	esi, [ebp+8]
		mov	edx, dword_5FCB2C
		test	edx, edx
		jnz	short loc_4C6AF9
		xor	eax, eax
		jmp	short loc_4C6B2C
; ---------------------------------------------------------------------------

loc_4C6AF9:				; CODE XREF: .text:004C6AF3j
		test	eax, eax
		jnz	short loc_4C6B04
		mov	eax, 1
		jmp	short loc_4C6B2C
; ---------------------------------------------------------------------------

loc_4C6B04:				; CODE XREF: .text:004C6AFBj
		dec	eax
		jnz	short loc_4C6B2A
		mov	ebx, [esi+68h]
		mov	eax, [edx]
		push	eax		; _addr
		call	Removemembreakpoint
		pop	ecx
		cmp	ebx, [esi+44h]
		jl	short loc_4C6B19
		dec	ebx

loc_4C6B19:				; CODE XREF: .text:004C6B16j
		push	ebx		; selected
		push	esi		; pt
		call	Settableselection
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4C6B2C
; ---------------------------------------------------------------------------

loc_4C6B2A:				; CODE XREF: .text:004C6B05j
		xor	eax, eax

loc_4C6B2C:				; CODE XREF: .text:004C6AF7j
					; .text:004C6B02j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C6B30:				; DATA XREF: .data:stru_55EF74o
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	dword_5FCB2C, 0
		mov	ebx, [ebp+8]
		mov	eax, [ebp+14h]
		mov	edx, [ebp+10h]
		jnz	short loc_4C6B4B
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C6B4B:				; CODE XREF: .text:004C6B44j
		test	eax, eax
		jnz	short loc_4C6B7B
		mov	ecx, dword_5FCB2C
		test	byte ptr [ecx+0Ah], 2
		jnz	short loc_4C6B5F
		test	edx, edx
		jnz	short loc_4C6B6E

loc_4C6B5F:				; CODE XREF: .text:004C6B59j
		mov	eax, dword_5FCB2C
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4C6B73
		test	edx, edx
		jnz	short loc_4C6B73

loc_4C6B6E:				; CODE XREF: .text:004C6B5Dj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C6B73:				; CODE XREF: .text:004C6B68j
					; .text:004C6B6Cj
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C6B7B:				; CODE XREF: .text:004C6B4Dj
		dec	eax
		jnz	short loc_4C6BB8
		push	edx		; enable
		mov	edx, dword_5FCB2C
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Enablemembreakpoint
		add	esp, 8
		call	loc_42521C
		test	eax, eax
		jz	short loc_4C6BB0
		mov	eax, [ebx+44h]
		dec	eax
		cmp	eax, [ebx+68h]
		jle	short loc_4C6BB0
		mov	edx, [ebx+68h]
		inc	edx
		push	edx		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8

loc_4C6BB0:				; CODE XREF: .text:004C6B97j
					; .text:004C6BA0j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C6BB8:				; CODE XREF: .text:004C6B7Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C6BC0:				; DATA XREF: .data:stru_55EF74o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+8]
		cmp	dword_5FCB2C, 0
		jnz	short loc_4C6BDA
		xor	eax, eax
		jmp	short loc_4C6C3C
; ---------------------------------------------------------------------------

loc_4C6BDA:				; CODE XREF: .text:004C6BD4j
		test	eax, eax
		jnz	short loc_4C6BE5
		mov	eax, 1
		jmp	short loc_4C6C3C
; ---------------------------------------------------------------------------

loc_4C6BE5:				; CODE XREF: .text:004C6BDCj
		dec	eax
		jnz	short loc_4C6C3A
		lea	edx, [ebp-8]
		push	edx		; coord
		push	2		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4C6C04
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_4C6C04:				; CODE XREF: .text:004C6BF9j
		push	80h		; mode
		mov	eax, dword_5FCB2C
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	edx, [ebp-4]
		push	edx		; y
		mov	ecx, [ebp-8]
		push	ecx		; x
		mov	edx, [eax+4]	; int
		push	edx		; size
		mov	eax, [eax]	; int
		push	eax		; _addr
		mov	ecx, [ebx+22Ch]	; int
		push	ecx		; hparent
		call	Memlogbreakpoint
		add	esp, 1Ch
		mov	eax, 1
		jmp	short loc_4C6C3C
; ---------------------------------------------------------------------------

loc_4C6C3A:				; CODE XREF: .text:004C6BE6j
		xor	eax, eax

loc_4C6C3C:				; CODE XREF: .text:004C6BD8j
					; .text:004C6BE3j ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
