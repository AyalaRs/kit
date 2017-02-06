.code

a0123456789abcd	db '0123456789ABCDEF'   ; DATA XREF: .text:loc_410BE9r
					; .text:loc_410C44r ...
dword_41092C	dd 384DE416h, 0AA1E57B9h, 0D9B305C0h, 4BB0B307h, 384BE237h
					; DATA XREF: .text:loc_41094Co
		dd 0AA1E57B9h, 0D5B305C0h, 0F811h
; ---------------------------------------------------------------------------

loc_41094C:				; CODE XREF: .text:loc_4644BAp
		mov	eax, offset dword_41092C
		retn
; ---------------------------------------------------------------------------

loc_410952:
		enter	0, 0
		xor	eax, eax
		cmp	dword_5BDCCC, eax
		jz	short loc_410976
		push	ebx
		mov	ebx, [ebp+8]
		jmp	short loc_41096F
; ---------------------------------------------------------------------------

loc_410966:				; CODE XREF: .text:00410973j
		mov	al, byte_57DD4C[eax]
		mov	[ebx], al
		inc	ebx

loc_41096F:				; CODE XREF: .text:00410964j
		mov	al, [ebx]
		or	al, al
		jnz	short loc_410966
		pop	ebx

loc_410976:				; CODE XREF: .text:0041095Ej
		mov	eax, [ebp+8]
		leave
		retn
; ---------------------------------------------------------------------------

loc_41097B:				; CODE XREF: .text:00445EA2p
		enter	0, 0
		xor	eax, eax
		cmp	dword_5BDCCC, eax
		jz	short loc_4109A2
		push	ebx
		mov	ebx, [ebp+8]
		jmp	short loc_41099B
; ---------------------------------------------------------------------------

loc_41098F:				; CODE XREF: .text:0041099Fj
		mov	al, byte_57DD4C[eax]
		mov	[ebx], ax
		add	ebx, 2

loc_41099B:				; CODE XREF: .text:0041098Dj
		mov	al, [ebx]
		or	al, al
		jnz	short loc_41098F
		pop	ebx

loc_4109A2:				; CODE XREF: .text:00410987j
		mov	eax, [ebp+8]
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 734. _StrcopyA
; Exported entry 751. StrcopyA

; int __cdecl StrcopyA(char *dest, int n, const	char *src)
		public StrcopyA
StrcopyA:				; CODE XREF: .text:0045E020p
					; .text:0045E058p ...
		enter	0, 0		; _StrcopyA
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		mov	ecx, [ebp+0Ch]
		dec	ecx
		jl	short loc_4109CB
		jz	short loc_4109C8
		or	esi, esi
		jz	short loc_4109C8
		cld

loc_4109C0:				; CODE XREF: .text:004109C6j
		lodsb
		or	al, al
		jz	short loc_4109C8
		stosb
		loop	loc_4109C0

loc_4109C8:				; CODE XREF: .text:004109B9j
					; .text:004109BDj ...
		mov	byte ptr [edi],	0

loc_4109CB:				; CODE XREF: .text:004109B7j
		mov	eax, edi
		sub	eax, [ebp+8]
		pop	edi
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 752. _StrcopyW
; Exported entry 753. StrcopyW

; unsigned int __cdecl StrcopyW(wchar_t	*dest, int n, const wchar_t *src)
		public StrcopyW
StrcopyW:				; CODE XREF: .text:00401AFDp
					; .text:00401B56p ...
		enter	0, 0		; _StrcopyW
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		mov	ecx, [ebp+0Ch]
		dec	ecx
		jl	short loc_4109FD
		jz	short loc_4109F8
		or	esi, esi
		jz	short loc_4109F8
		cld

loc_4109ED:				; CODE XREF: .text:004109F6j
		lodsw
		or	ax, ax
		jz	short loc_4109F8
		stosw
		loop	loc_4109ED

loc_4109F8:				; CODE XREF: .text:004109E6j
					; .text:004109EAj ...
		mov	word ptr [edi],	0

loc_4109FD:				; CODE XREF: .text:004109E4j
		mov	eax, edi
		sub	eax, [ebp+8]
		shr	eax, 1
		pop	edi
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------
		enter	0, 0
		push	esi
		push	edi
		push	ebx
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		mov	ebx, dword_5BDCCC
		mov	ecx, [ebp+0Ch]
		dec	ecx
		jl	short loc_410A3F
		jz	short loc_410A3C
		or	esi, esi
		jz	short loc_410A3C
		xor	eax, eax
		cld

loc_410A2A:				; CODE XREF: .text:00410A3Aj
		lodsb
		or	al, al
		jz	short loc_410A3C
		or	ebx, ebx
		jz	short loc_410A39
		mov	al, byte_57DD4C[eax]

loc_410A39:				; CODE XREF: .text:00410A31j
		stosb
		loop	loc_410A2A

loc_410A3C:				; CODE XREF: .text:00410A21j
					; .text:00410A25j ...
		mov	byte ptr [edi],	0

loc_410A3F:				; CODE XREF: .text:00410A1Fj
		mov	eax, edi
		sub	eax, [ebp+8]
		pop	ebx
		pop	edi
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------

loc_410A49:				; CODE XREF: .text:0043B175p
					; .text:0043B18Dp ...
		enter	0, 0
		push	esi
		push	edi
		push	ebx
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		mov	ebx, dword_5BDCCC
		mov	ecx, [ebp+0Ch]
		dec	ecx
		jl	short loc_410A8B
		jz	short loc_410A86
		or	esi, esi
		jz	short loc_410A86
		xor	eax, eax
		cld

loc_410A6B:				; CODE XREF: .text:00410A84j
		lodsw
		or	eax, eax
		jz	short loc_410A86
		or	ebx, ebx
		jz	short loc_410A82
		cmp	eax, 0FFh
		ja	short loc_410A82
		mov	al, byte_57DD4C[eax]

loc_410A82:				; CODE XREF: .text:00410A73j
					; .text:00410A7Aj
		stosw
		loop	loc_410A6B

loc_410A86:				; CODE XREF: .text:00410A62j
					; .text:00410A66j ...
		mov	word ptr [edi],	0

loc_410A8B:				; CODE XREF: .text:00410A60j
		mov	eax, edi
		sub	eax, [ebp+8]
		shr	eax, 1
		pop	ebx
		pop	edi
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------

loc_410A97:				; CODE XREF: .text:004A1A23p
		enter	0, 0
		push	esi
		push	edi
		push	ebx
		mov	esi, [ebp+8]
		mov	edi, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		cmp	ecx, 0
		jle	short loc_410AE3
		sub	ecx, [ebp+14h]
		jb	short loc_410AE3
		inc	ecx

loc_410AB2:				; CODE XREF: .text:00410AE1j
		xor	ebx, ebx

loc_410AB4:				; CODE XREF: .text:00410AD6j
		movzx	eax, byte ptr [edi+ebx]
		movzx	edx, byte ptr [esi+ebx]
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_410ACE
		mov	al, byte_57DD4C[eax]
		mov	dl, byte_57DD4C[edx]

loc_410ACE:				; CODE XREF: .text:00410AC0j
		cmp	al, dl
		jnz	short loc_410ADF
		inc	ebx
		cmp	ebx, [ebp+14h]
		jb	short loc_410AB4
		mov	eax, esi
		sub	eax, [ebp+8]
		jmp	short loc_410AE6
; ---------------------------------------------------------------------------

loc_410ADF:				; CODE XREF: .text:00410AD0j
		inc	esi
		dec	ecx
		jnz	short loc_410AB2

loc_410AE3:				; CODE XREF: .text:00410AAAj
					; .text:00410AAFj
		or	eax, 0FFFFFFFFh

loc_410AE6:				; CODE XREF: .text:00410ADDj
		pop	ebx
		pop	edi
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------

loc_410AEB:				; CODE XREF: .text:004A1A5Ep
					; .text:004C1738p
		enter	0, 0
		push	esi
		push	edi
		push	ebx
		mov	esi, [ebp+8]
		mov	edi, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		cmp	ecx, 0
		jle	short loc_410B43
		sub	ecx, [ebp+14h]
		jb	short loc_410B43
		inc	ecx

loc_410B06:				; CODE XREF: .text:00410B41j
		xor	ebx, ebx

loc_410B08:				; CODE XREF: .text:00410B32j
		movzx	eax, word ptr [edi+ebx*2]
		movzx	edx, word ptr [esi+ebx*2]
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_410B2A
		or	ah, ah
		jnz	short loc_410B20
		mov	al, byte_57DD4C[eax]

loc_410B20:				; CODE XREF: .text:00410B18j
		or	dh, dh
		jnz	short loc_410B2A
		mov	dl, byte_57DD4C[edx]

loc_410B2A:				; CODE XREF: .text:00410B14j
					; .text:00410B22j
		cmp	eax, edx
		jnz	short loc_410B3D
		inc	ebx
		cmp	ebx, [ebp+14h]
		jb	short loc_410B08
		mov	eax, esi
		sub	eax, [ebp+8]
		sar	eax, 1
		jmp	short loc_410B46
; ---------------------------------------------------------------------------

loc_410B3D:				; CODE XREF: .text:00410B2Cj
		add	esi, 2
		dec	ecx
		jnz	short loc_410B06

loc_410B43:				; CODE XREF: .text:00410AFEj
					; .text:00410B03j
		or	eax, 0FFFFFFFFh

loc_410B46:				; CODE XREF: .text:00410B3Bj
		pop	ebx
		pop	edi
		pop	esi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 602. _StrlenA
; Exported entry 754. StrlenA

; int __cdecl StrlenA(const char *src, int n)
		public StrlenA
StrlenA:				; CODE XREF: .text:0047E83Bp
					; .text:0049F73Dp ...
		enter	0, 0		; _StrlenA
		push	edi
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		jecxz	short loc_410B6A
		mov	edi, [ebp+8]
		cld
		or	edi, edi
		jz	short loc_410B6A
		mov	edx, ecx
		repne scasb
		jnz	short loc_410B68
		sub	edx, ecx
		dec	edx

loc_410B68:				; CODE XREF: .text:00410B63j
		mov	eax, edx

loc_410B6A:				; CODE XREF: .text:00410B55j
					; .text:00410B5Dj
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 707. _StrlenW
; Exported entry 755. StrlenW

; int __cdecl StrlenW(const wchar_t *src, int n)
		public StrlenW
StrlenW:				; CODE XREF: .text:004096E4p
					; .text:0044B669p ...
		enter	0, 0		; _StrlenW
		push	edi
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		jecxz	short loc_410B8D
		mov	edi, [ebp+8]
		cld
		or	edi, edi
		jz	short loc_410B8D
		mov	edx, ecx
		repne scasw
		jnz	short loc_410B8B
		sub	edx, ecx
		dec	edx

loc_410B8B:				; CODE XREF: .text:00410B86j
		mov	eax, edx

loc_410B8D:				; CODE XREF: .text:00410B77j
					; .text:00410B7Fj
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------

loc_410B90:				; CODE XREF: .text:00478BBDp
					; .text:004791BDp ...
		push	esi
		mov	esi, [esp+8]
		mov	ecx, [esp+0Ch]

loc_410B99:				; CODE XREF: .text:00410BABj
		mov	ax, [esi]
		sub	ax, [ecx]
		jnz	short loc_410BAD
		cmp	word ptr [ecx],	0
		lea	ecx, [ecx+2]
		lea	esi, [esi+2]
		jnz	short loc_410B99

loc_410BAD:				; CODE XREF: .text:00410B9Fj
		movsx	eax, ax
		pop	esi
		retn
; ---------------------------------------------------------------------------
; Exported entry 756. _HexprintA
; Exported entry 757. HexprintA

; int __cdecl HexprintA(char *s, ulong u)
		public HexprintA
HexprintA:				; CODE XREF: .text:0049A08Ap
					; .text:0049A0CBp
		enter	0, 0		; _HexprintA
		push	edi
		push	ebx
		mov	ecx, 8
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]

loc_410BC3:				; CODE XREF: .text:00410BCDj
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		jnz	short loc_410BDB
		loop	loc_410BC3
		mov	word ptr [edi],	30h
		mov	eax, 1
		jmp	short loc_410C04
; ---------------------------------------------------------------------------

loc_410BDB:				; CODE XREF: .text:00410BCBj
		cmp	ecx, 8
		jz	short loc_410BE9
		cmp	eax, 0Ah
		jb	short loc_410BE9
		mov	byte ptr [edi],	30h
		inc	edi

loc_410BE9:				; CODE XREF: .text:00410BDEj
					; .text:00410BE3j ...
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], al
		inc	edi
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loop	loc_410BE9
		mov	byte ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]

loc_410C04:				; CODE XREF: .text:00410BD9j
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 758. _HexprintW
; Exported entry 759. HexprintW

; unsigned int __cdecl HexprintW(wchar_t *s, ulong u)
		public HexprintW
HexprintW:				; CODE XREF: .text:0043B473p
					; .text:0043B4A9p ...
		enter	0, 0		; _HexprintW
		push	edi
		push	ebx
		mov	ecx, 8
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]

loc_410C19:				; CODE XREF: .text:00410C23j
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		jnz	short loc_410C32
		loop	loc_410C19
		mov	dword ptr [edi], 30h
		mov	eax, 1
		jmp	short loc_410C66
; ---------------------------------------------------------------------------

loc_410C32:				; CODE XREF: .text:00410C21j
		cmp	ecx, 8
		jz	short loc_410C44
		cmp	eax, 0Ah
		jb	short loc_410C44
		mov	word ptr [edi],	30h
		lea	edi, [edi+2]

loc_410C44:				; CODE XREF: .text:00410C35j
					; .text:00410C3Aj ...
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], ax
		lea	edi, [edi+2]
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loop	loc_410C44
		mov	word ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]
		shr	eax, 1

loc_410C66:				; CODE XREF: .text:00410C30j
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 760. _Hexprint4A
; Exported entry 761. Hexprint4A

; int __cdecl Hexprint4A(char *s, ulong	u)
		public Hexprint4A
Hexprint4A:				; _Hexprint4A
		enter	0, 0
		push	edi
		push	ebx
		mov	ecx, 5
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]

loc_410C7B:				; CODE XREF: .text:00410C83j
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loope	loc_410C7B
		add	ecx, 4
		cmp	ecx, 8
		jz	short loc_410C96
		cmp	eax, 0Ah
		jb	short loc_410C96
		mov	byte ptr [edi],	30h
		inc	edi

loc_410C96:				; CODE XREF: .text:00410C8Bj
					; .text:00410C90j ...
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], al
		inc	edi
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loop	loc_410C96
		mov	byte ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 762. _Hexprint4W
; Exported entry 763. Hexprint4W

; unsigned int __cdecl Hexprint4W(wchar_t *s, ulong u)
		public Hexprint4W
Hexprint4W:				; CODE XREF: .text:0043D35Bp
		enter	0, 0		; _Hexprint4W
		push	edi
		push	ebx
		mov	ecx, 5
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]

loc_410CC6:				; CODE XREF: .text:00410CCEj
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loope	loc_410CC6
		add	ecx, 4
		cmp	ecx, 8
		jz	short loc_410CE5
		cmp	eax, 0Ah
		jb	short loc_410CE5
		mov	word ptr [edi],	30h
		lea	edi, [edi+2]

loc_410CE5:				; CODE XREF: .text:00410CD6j
					; .text:00410CDBj ...
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], ax
		lea	edi, [edi+2]
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loop	loc_410CE5
		mov	word ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]
		shr	eax, 1
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 764. _Hexprint8A
; Exported entry 765. Hexprint8A

; signed int __cdecl Hexprint8A(char *s, ulong u)
		public Hexprint8A
Hexprint8A:				; _Hexprint8A
		enter	0, 0
		push	edi
		push	ebx
		mov	ecx, 8
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		cld

loc_410D1D:				; CODE XREF: .text:00410D2Cj
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		stosb
		loop	loc_410D1D
		mov	byte ptr [edi],	0
		mov	eax, 8
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 766. _Hexprint8W
; Exported entry 767. Hexprint8W

; signed int __cdecl Hexprint8W(wchar_t	*s, ulong u)
		public Hexprint8W
Hexprint8W:				; CODE XREF: .text:00401AC0p
					; .text:00412E29p ...
		enter	0, 0		; _Hexprint8W
		push	edi
		push	ebx
		mov	ecx, 8
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		cld

loc_410D4C:				; CODE XREF: .text:00410D5Cj
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		stosw
		loop	loc_410D4C
		mov	word ptr [edi],	0
		mov	eax, 8
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 768. _SignedhexA
; Exported entry 769. SignedhexA

; int __cdecl SignedhexA(char *s, ulong	u)
		public SignedhexA
SignedhexA:				; _SignedhexA
		enter	0, 0
		push	edi
		push	ebx
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		cmp	ebx, 0FFFFC000h
		jb	short loc_410D86
		mov	byte ptr [edi],	2Dh
		neg	ebx
		inc	edi

loc_410D86:				; CODE XREF: .text:00410D7Ej
		mov	ecx, 8

loc_410D8B:				; CODE XREF: .text:00410D95j
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		jnz	short loc_410DA3
		loop	loc_410D8B
		mov	word ptr [edi],	30h
		mov	eax, 1
		jmp	short loc_410DCC
; ---------------------------------------------------------------------------

loc_410DA3:				; CODE XREF: .text:00410D93j
		cmp	ecx, 8
		jz	short loc_410DB1
		cmp	eax, 0Ah
		jb	short loc_410DB1
		mov	byte ptr [edi],	30h
		inc	edi

loc_410DB1:				; CODE XREF: .text:00410DA6j
					; .text:00410DABj ...
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], al
		inc	edi
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loop	loc_410DB1
		mov	byte ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]

loc_410DCC:				; CODE XREF: .text:00410DA1j
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 770. _SignedhexW
; Exported entry 771. SignedhexW

; unsigned int __cdecl SignedhexW(wchar_t *s, ulong u)
		public SignedhexW
SignedhexW:				; CODE XREF: .text:0047E1E9p
					; .text:0047E21Fp ...
		enter	0, 0		; _SignedhexW
		push	edi
		push	ebx
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		cmp	ebx, 0FFFFC000h
		jb	short loc_410DEE
		mov	word ptr [edi],	2Dh
		neg	ebx
		lea	edi, [edi+2]

loc_410DEE:				; CODE XREF: .text:00410DE2j
		mov	ecx, 8

loc_410DF3:				; CODE XREF: .text:00410DFDj
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		jnz	short loc_410E0C
		loop	loc_410DF3
		mov	dword ptr [edi], 30h
		mov	eax, 1
		jmp	short loc_410E40
; ---------------------------------------------------------------------------

loc_410E0C:				; CODE XREF: .text:00410DFBj
		cmp	ecx, 8
		jz	short loc_410E1E
		cmp	eax, 0Ah
		jb	short loc_410E1E
		mov	word ptr [edi],	30h
		lea	edi, [edi+2]

loc_410E1E:				; CODE XREF: .text:00410E0Fj
					; .text:00410E14j ...
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], ax
		lea	edi, [edi+2]
		rol	ebx, 4
		mov	eax, ebx
		and	eax, 0Fh
		loop	loc_410E1E
		mov	word ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]
		shr	eax, 1

loc_410E40:				; CODE XREF: .text:00410E0Aj
		pop	ebx
		pop	edi
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 774. _HexdumpA
; Exported entry 775. HexdumpA

; int __cdecl HexdumpA(char *s,	uchar *code, int n)
		public HexdumpA
HexdumpA:				; _HexdumpA
		enter	0, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	ecx, [ebp+10h]
		jecxz	short loc_410E7A

loc_410E56:				; CODE XREF: .text:00410E78j
		mov	bl, [esi]
		inc	esi
		mov	al, bl
		shr	al, 4
		and	eax, 0Fh
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], al
		and	ebx, 0Fh
		mov	al, byte ptr ds:a0123456789abcd[ebx] ; "0123456789ABCDEF"
		mov	[edi+1], al
		add	edi, 2
		loop	loc_410E56

loc_410E7A:				; CODE XREF: .text:00410E54j
		mov	byte ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 776. _HexdumpW
; Exported entry 777. HexdumpW

; unsigned int __cdecl HexdumpW(wchar_t	*s, uchar *code, int n)
		public HexdumpW
HexdumpW:				; CODE XREF: .text:004418BEp
					; .text:00441B9Ep ...
		enter	0, 0		; _HexdumpW
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	ecx, [ebp+10h]
		jecxz	short loc_410EBF

loc_410E99:				; CODE XREF: .text:00410EBDj
		mov	bl, [esi]
		inc	esi
		mov	al, bl
		shr	al, 4
		and	eax, 0Fh
		mov	al, byte ptr ds:a0123456789abcd[eax] ; "0123456789ABCDEF"
		mov	[edi], ax
		and	ebx, 0Fh
		mov	al, byte ptr ds:a0123456789abcd[ebx] ; "0123456789ABCDEF"
		mov	[edi+2], ax
		add	edi, 4
		loop	loc_410E99

loc_410EBF:				; CODE XREF: .text:00410E97j
		mov	word ptr [edi],	0
		mov	eax, edi
		sub	eax, [ebp+8]
		shr	eax, 1
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------
; Exported entry 772. _Swapmem
; Exported entry 773. Swapmem

; char __cdecl Swapmem(void *base, int size, int i1, int i2)
		public Swapmem
Swapmem:				; CODE XREF: .text:00406FFCp
					; .text:00407032p ...
		push	esi		; _Swapmem
		push	edi
		mov	ecx, [esp+10h]
		mov	esi, [esp+14h]
		mov	edi, [esp+18h]
		imul	esi, ecx
		imul	edi, ecx
		add	esi, [esp+0Ch]
		add	edi, [esp+0Ch]
		sub	ecx, 4
		jl	short loc_410F04

loc_410EF1:				; CODE XREF: .text:00410F02j
		mov	eax, [esi]
		mov	edx, [edi]
		mov	[edi], eax
		add	edi, 4
		mov	[esi], edx
		add	esi, 4
		sub	ecx, 4
		jge	short loc_410EF1

loc_410F04:				; CODE XREF: .text:00410EEFj
		add	ecx, 4
		jz	short loc_410F16

loc_410F09:				; CODE XREF: .text:00410F14j
		mov	al, [esi]
		mov	dl, [edi]
		mov	[edi], al
		inc	edi
		mov	[esi], dl
		inc	esi
		dec	ecx
		jnz	short loc_410F09

loc_410F16:				; CODE XREF: .text:00410F07j
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------
; Exported entry 778. _Bitcount
; Exported entry 779. Bitcount

; int __cdecl Bitcount(ulong u)
		public Bitcount
Bitcount:				; CODE XREF: .text:00453194p
					; .text:0046D317p
		enter	0, 0		; _Bitcount
		mov	ecx, [ebp+8]
		mov	edx, 1
		xor	eax, eax

loc_410F27:				; CODE XREF: .text:00410F2Ej
		test	edx, ecx
		jz	short loc_410F2C
		inc	eax

loc_410F2C:				; CODE XREF: .text:00410F29j
		add	edx, edx
		jnz	short loc_410F27
		leave
		retn
; ---------------------------------------------------------------------------

loc_410F32:				; CODE XREF: .text:0045BCE2p
					; .text:0045BCFDp
		enter	0, 0
		push	ebx
		push	edx
		mov	ebx, [ebp+10h]
		or	ebx, ebx
		jz	short loc_410F54
		mov	edx, [ebp+0Ch]
		cmp	edx, ebx
		jnb	short loc_410F4D
		mov	eax, [ebp+8]
		div	ebx
		jmp	short loc_410F56
; ---------------------------------------------------------------------------

loc_410F4D:				; CODE XREF: .text:00410F44j
		mov	eax, 0FFFFFFFFh
		jmp	short loc_410F56
; ---------------------------------------------------------------------------

loc_410F54:				; CODE XREF: .text:00410F3Dj
		xor	eax, eax

loc_410F56:				; CODE XREF: .text:00410F4Bj
					; .text:00410F52j
		pop	edx
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_410F5A:				; CODE XREF: .text:0040FE1Ep
		push	ebx
		mov	ebx, 4C11DB7h
		mov	edx, 0

loc_410F65:				; CODE XREF: .text:00410FA8j
		mov	eax, edx
		shl	eax, 18h
		shl	eax, 1
		jnb	short loc_410F70
		xor	eax, ebx

loc_410F70:				; CODE XREF: .text:00410F6Cj
		shl	eax, 1
		jnb	short loc_410F76
		xor	eax, ebx

loc_410F76:				; CODE XREF: .text:00410F72j
		shl	eax, 1
		jnb	short loc_410F7C
		xor	eax, ebx

loc_410F7C:				; CODE XREF: .text:00410F78j
		shl	eax, 1
		jnb	short loc_410F82
		xor	eax, ebx

loc_410F82:				; CODE XREF: .text:00410F7Ej
		shl	eax, 1
		jnb	short loc_410F88
		xor	eax, ebx

loc_410F88:				; CODE XREF: .text:00410F84j
		shl	eax, 1
		jnb	short loc_410F8E
		xor	eax, ebx

loc_410F8E:				; CODE XREF: .text:00410F8Aj
		shl	eax, 1
		jnb	short loc_410F94
		xor	eax, ebx

loc_410F94:				; CODE XREF: .text:00410F90j
		shl	eax, 1
		jnb	short loc_410F9A
		xor	eax, ebx

loc_410F9A:				; CODE XREF: .text:00410F96j
		mov	dword_5D85E0[edx*4], eax
		inc	edx
		cmp	edx, 100h
		jb	short loc_410F65
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_410FAC:				; CODE XREF: .text:004A9FACp
					; .text:004AB793p
		enter	0, 0
		push	ebx
		push	esi
		mov	ebx, 4C11DB7h
		mov	eax, 0FFFFFFFFh
		mov	ecx, [ebp+0Ch]
		mov	esi, [ebp+8]
		jecxz	short loc_410FDF
		mov	edx, 0FFFFFF00h
		xor	ebx, ebx

loc_410FCB:				; CODE XREF: .text:00410FDDj
		rol	eax, 8
		xor	al, [esi]
		inc	esi
		mov	bl, al
		and	eax, edx
		xor	eax, dword_5D85E0[ebx*4]
		dec	ecx
		jnz	short loc_410FCB

loc_410FDF:				; CODE XREF: .text:00410FC2j
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_410FE3:				; CODE XREF: .text:loc_40DAF6p
		push	ebx
		push	esi
		push	edi
		pushfd
		pop	eax
		xor	eax, 200000h
		push	eax
		popfd
		pushfd
		pop	ebx
		xor	eax, ebx
		test	eax, 200000h
		jnz	short loc_411005
		mov	eax, 1
		cpuid
		mov	eax, edx
		jmp	short loc_411007
; ---------------------------------------------------------------------------

loc_411005:				; CODE XREF: .text:00410FF8j
		xor	eax, eax

loc_411007:				; CODE XREF: .text:00411003j
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_41100B:				; CODE XREF: .text:004266EAp
					; .text:0043EAEDp ...
		fldcw	ds:word_411012
		retn
; ---------------------------------------------------------------------------
word_411012	dw 137Fh		; DATA XREF: .text:loc_41100Br
; ---------------------------------------------------------------------------

loc_411014:				; CODE XREF: .text:loc_426A36p
					; .text:loc_43EC43p ...
		fnclex
		retn
; ---------------------------------------------------------------------------

loc_411017:				; CODE XREF: .text:00403CF1p
					; .text:00403E5Dp ...
		cmp	ebp, esp
		jbe	short loc_41102B
		mov	eax, fs:4
		sub	eax, 8
		cmp	ebp, eax
		jnb	short loc_41102B
		mov	eax, [ebp+4]
		retn
; ---------------------------------------------------------------------------

loc_41102B:				; CODE XREF: .text:00411019j
					; .text:00411025j
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_41102E:				; CODE XREF: .text:00403CF9p
					; .text:00403E65p ...
		cmp	ebp, esp
		jbe	short loc_41104D
		mov	eax, fs:4
		sub	eax, 8
		cmp	ebp, eax
		jnb	short loc_41104D
		mov	ecx, [ebp+0]
		cmp	eax, ebp
		jbe	short loc_41104D
		cmp	ecx, eax
		jnb	short loc_41104D
		mov	eax, [ecx+4]
		retn
; ---------------------------------------------------------------------------

loc_41104D:				; CODE XREF: .text:00411030j
					; .text:0041103Cj ...
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------
		dd offset LoadLibraryA
aGeneralPurpose	db '* <-- General purpose patch area begins here',0
		align 4
		dd 74h dup(0)
; ---------------------------------------------------------------------------

; int __cdecl loc_411254(LOGFONTW *)
loc_411254:				; CODE XREF: .text:0040EA08p
					; .text:0040EA85p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41126D
		cmp	dword ptr [ebx+268h], 0
		jz	short loc_411275

loc_41126D:				; CODE XREF: .text:00411262j
		or	eax, 0FFFFFFFFh
		jmp	loc_411387
; ---------------------------------------------------------------------------

loc_411275:				; CODE XREF: .text:0041126Bj
		mov	esi, [ebx+5Ch]
		cmp	esi, 0Ah
		jz	short loc_411282
		cmp	esi, 10h
		jnz	short loc_41129A

loc_411282:				; CODE XREF: .text:0041127Bj
		push	esi		; int
		call	GetStockObject
		mov	[ebx+268h], eax
		mov	dword ptr [ebx+26Ch], 1
		jmp	short loc_4112CD
; ---------------------------------------------------------------------------

loc_41129A:				; CODE XREF: .text:00411280j
		push	ebx		; LOGFONTW *
		call	CreateFontIndirectW
		mov	esi, eax
		mov	[ebx+268h], esi
		test	esi, esi
		jz	short loc_4112B6
		xor	eax, eax
		mov	[ebx+26Ch], eax
		jmp	short loc_4112CD
; ---------------------------------------------------------------------------

loc_4112B6:				; CODE XREF: .text:004112AAj
		push	10h		; int
		call	GetStockObject
		mov	[ebx+268h], eax
		mov	dword ptr [ebx+26Ch], 1

loc_4112CD:				; CODE XREF: .text:00411298j
					; .text:004112B4j
		mov	edx, hwollymain
		push	edx		; hWnd
		call	GetDC
		mov	esi, eax
		mov	eax, [ebx+268h]
		push	eax		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		mov	edi, eax
		lea	eax, [ebp-44h]
		push	eax		; LPTEXTMETRICW
		push	esi		; HDC
		call	GetTextMetricsW
		test	eax, eax
		jnz	short loc_41131B
		xor	edx, edx
		mov	[ebx+270h], edx
		mov	dword ptr [ebx+274h], 6
		mov	ecx, [ebx+60h]
		add	ecx, [ebx+64h]
		add	ecx, 8
		mov	[ebx+278h], ecx
		jmp	short loc_411371
; ---------------------------------------------------------------------------

loc_41131B:				; CODE XREF: .text:004112F6j
		cmp	word ptr [ebp-16h], 0F000h
		setnb	al
		and	eax, 1
		mov	[ebx+270h], eax
		mov	dword ptr [ebp-4], 1
		mov	edx, [ebp-30h]
		cmp	edx, [ebp-4]
		jle	short loc_411341
		lea	ecx, [ebp-30h]
		jmp	short loc_411344
; ---------------------------------------------------------------------------

loc_411341:				; CODE XREF: .text:0041133Aj
		lea	ecx, [ebp-4]

loc_411344:				; CODE XREF: .text:0041133Fj
		mov	eax, [ecx]
		mov	[ebx+274h], eax
		mov	dword ptr [ebp-8], 1
		mov	edx, [ebp-44h]
		cmp	edx, [ebp-8]
		jle	short loc_411360
		lea	eax, [ebp-44h]
		jmp	short loc_411363
; ---------------------------------------------------------------------------

loc_411360:				; CODE XREF: .text:00411359j
		lea	eax, [ebp-8]

loc_411363:				; CODE XREF: .text:0041135Ej
		mov	edx, [eax]
		add	edx, [ebx+60h]
		add	edx, [ebx+64h]
		mov	[ebx+278h], edx

loc_411371:				; CODE XREF: .text:00411319j
		push	edi		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		push	esi		; hDC
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	ReleaseDC
		xor	eax, eax

loc_411387:				; CODE XREF: .text:00411270j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_411390:				; CODE XREF: .text:004106C1p
					; .text:004107CEp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4113CB
		cmp	dword ptr [ebx+268h], 0
		jz	short loc_4113CB
		cmp	dword ptr [ebx+26Ch], 0
		jz	short loc_4113B7
		xor	eax, eax
		mov	[ebx+26Ch], eax
		jmp	short loc_4113C3
; ---------------------------------------------------------------------------

loc_4113B7:				; CODE XREF: .text:004113ABj
		mov	edx, [ebx+268h]
		push	edx		; HGDIOBJ
		call	DeleteObject

loc_4113C3:				; CODE XREF: .text:004113B5j
		xor	ecx, ecx
		mov	[ebx+268h], ecx

loc_4113CB:				; CODE XREF: .text:00411399j
					; .text:004113A2j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4113D0(LOGFONTW *)
loc_4113D0:				; CODE XREF: .text:004CF235p
					; .text:004D02E3p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4113FA
		push	ebx
		call	loc_411390
		pop	ecx
		push	ebx		; LOGFONTW *
		call	loc_411254
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4113FA:				; CODE XREF: .text:004113D9j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_411400:				; CODE XREF: .text:0040A82Cp
					; .text:0040F625p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	g_IsUseSysColor, 0
		jnz	short loc_411446
		xor	eax, eax
		mov	g_Color, eax
		xor	edx, edx
		mov	g_Color+4, edx
		mov	g_Color+8, 808080h
		mov	g_Color+0Ch, 0C0C0C0h
		mov	g_Color+14h, 0C0C0C0h
		mov	g_Color+18h, 0FFFFFFh
		jmp	short loc_41148E
; ---------------------------------------------------------------------------

loc_411446:				; CODE XREF: .text:0041140Bj
		push	12h		; nIndex
		call	GetSysColor
		mov	g_Color, eax
		push	15h		; nIndex
		call	GetSysColor
		mov	g_Color+4, eax
		push	10h		; nIndex
		call	GetSysColor
		mov	g_Color+8, eax
		push	0Fh		; nIndex
		call	GetSysColor
		mov	g_Color+0Ch, eax
		push	16h		; nIndex
		call	GetSysColor
		mov	g_Color+14h, eax
		push	14h		; nIndex
		call	GetSysColor
		mov	g_Color+18h, eax

loc_41148E:				; CODE XREF: .text:00411444j
		mov	g_Color+1Ch, 0FFFFh
		mov	g_Color+20h, 0FFh
		mov	g_Color+24h, 8080C0h
		push	0Fh		; nIndex
		call	GetSysColor
		mov	ebx, eax
		mov	g_Color+10h, ebx
		push	ebx		; COLORREF
		call	CreateSolidBrush
		mov	g_Brush+4, eax
		mov	eax, g_Color+0Ch
		push	eax		; COLORREF
		call	CreateSolidBrush
		mov	g_Brush, eax
		mov	edx, g_Color+1Ch
		push	edx		; COLORREF
		call	CreateSolidBrush
		mov	g_Brush+8, eax
		cmp	ischild, 0
		jz	short loc_411513
		mov	ecx, g_Color+24h
		push	ecx		; COLORREF
		call	CreateSolidBrush
		mov	g_Brush+0Ch, eax
		mov	eax, g_Color+24h
		push	eax		; COLORREF
		call	CreateSolidBrush
		mov	g_Brush+10h, eax
		jmp	short loc_411535
; ---------------------------------------------------------------------------

loc_411513:				; CODE XREF: .text:004114EEj
		mov	edx, g_Color+10h
		push	edx		; COLORREF
		call	CreateSolidBrush
		mov	g_Brush+0Ch, eax
		mov	ecx, g_Color+0Ch
		push	ecx		; COLORREF
		call	CreateSolidBrush
		mov	g_Brush+10h, eax

loc_411535:				; CODE XREF: .text:00411511j
		mov	eax, g_Color
		push	eax		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	g_Pen, eax
		mov	edx, g_Color+4
		push	edx		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	g_Pen+4, eax
		mov	ecx, g_Color+8
		push	ecx		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	g_Pen+8, eax
		mov	eax, g_Color+0Ch
		push	eax		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	g_Pen+0Ch, eax
		mov	edx, g_Color+14h
		push	edx		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	g_Pen+10h, eax
		mov	ecx, g_Color+18h
		push	ecx		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	g_Pen+14h, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4115B4:				; CODE XREF: .text:loc_40A827p
					; .text:00410807p ...
		push	ebp
		mov	ebp, esp
		mov	eax, g_Brush+4
		test	eax, eax
		jz	short loc_4115CE
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Brush+4, edx

loc_4115CE:				; CODE XREF: .text:004115BEj
		mov	eax, g_Brush
		test	eax, eax
		jz	short loc_4115E5
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Brush, edx

loc_4115E5:				; CODE XREF: .text:004115D5j
		mov	eax, g_Brush+8
		test	eax, eax
		jz	short loc_4115FC
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Brush+8, edx

loc_4115FC:				; CODE XREF: .text:004115ECj
		mov	eax, g_Brush+0Ch
		test	eax, eax
		jz	short loc_411613
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Brush+0Ch, edx

loc_411613:				; CODE XREF: .text:00411603j
		mov	eax, g_Brush+10h
		test	eax, eax
		jz	short loc_41162A
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Brush+10h, edx

loc_41162A:				; CODE XREF: .text:0041161Aj
		mov	eax, g_Pen
		test	eax, eax
		jz	short loc_411641
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Pen, edx

loc_411641:				; CODE XREF: .text:00411631j
		mov	eax, g_Pen+4
		test	eax, eax
		jz	short loc_411658
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Pen+4, edx

loc_411658:				; CODE XREF: .text:00411648j
		mov	eax, g_Pen+8
		test	eax, eax
		jz	short loc_41166F
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Pen+8, edx

loc_41166F:				; CODE XREF: .text:0041165Fj
		mov	eax, g_Pen+0Ch
		test	eax, eax
		jz	short loc_411686
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Pen+0Ch, edx

loc_411686:				; CODE XREF: .text:00411676j
		mov	eax, g_Pen+10h
		test	eax, eax
		jz	short loc_41169D
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Pen+10h, edx

loc_41169D:				; CODE XREF: .text:0041168Dj
		mov	eax, g_Pen+14h
		test	eax, eax
		jz	short loc_4116B4
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	g_Pen+14h, edx

loc_4116B4:				; CODE XREF: .text:004116A4j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4116B8(int, LPCWSTR lpAppName, int)
loc_4116B8:				; CODE XREF: .text:0040F19Ap
					; .text:0040F5EEp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB70h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4116D6
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4116D6
		cmp	dword ptr [ebp+10h], 0
		jge	short loc_4116DE

loc_4116D6:				; CODE XREF: .text:004116C8j
					; .text:004116CEj
		or	eax, 0FFFFFFFFh
		jmp	loc_411A34
; ---------------------------------------------------------------------------

loc_4116DE:				; CODE XREF: .text:004116D4j
		mov	edx, [ebp+10h]
		lea	ecx, [ebp-490h]
		push	edx
		push	offset aSchemeNameI ; "Scheme _name[%i]"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-490h]
		push	100h		; length
		mov	eax, [ebp+8]
		push	eax		; s
		push	edx		; key
		mov	ecx, [ebp+0Ch]
		push	ecx		; section
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jnz	short loc_41171E
		or	eax, 0FFFFFFFFh
		jmp	loc_411A34
; ---------------------------------------------------------------------------

loc_41171E:				; CODE XREF: .text:00411714j
		mov	edx, [ebp+10h]
		lea	ecx, [ebp-490h]
		push	edx
		push	offset aForeground_1I ;	"Foreground_1[%i]"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-410h]
		lea	edx, [ebp-490h]
		push	100h		; length
		push	eax		; s
		push	edx		; key
		mov	ecx, [ebp+0Ch]
		push	ecx		; section
		call	Stringfromini
		add	esp, 10h
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_411763
		or	eax, 0FFFFFFFFh
		jmp	loc_411A34
; ---------------------------------------------------------------------------

loc_411763:				; CODE XREF: .text:00411759j
		mov	word ptr [ebp+ebx*2-410h], 2Ch
		inc	ebx
		mov	edx, [ebp+10h]
		push	edx
		push	offset aForeground_2I ;	"Foreground_2[%i]"
		lea	ecx, [ebp-490h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-410h]
		add	ebx, ebx
		lea	edx, [ebp-490h]
		add	ebx, eax
		push	100h		; length
		push	ebx		; s
		push	edx		; key
		mov	ecx, [ebp+0Ch]
		push	ecx		; section
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4117B5
		or	eax, 0FFFFFFFFh
		jmp	loc_411A34
; ---------------------------------------------------------------------------

loc_4117B5:				; CODE XREF: .text:004117ABj
		lea	ebx, [ebp-410h]
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp+8]
		lea	ecx, [edx+200h]
		mov	[ebp-0Ch], ecx
		jmp	short loc_4117D1
; ---------------------------------------------------------------------------

loc_4117CE:				; CODE XREF: .text:004117D5j
		add	ebx, 2

loc_4117D1:				; CODE XREF: .text:004117CCj
					; .text:0041185Aj
		cmp	word ptr [ebx],	20h
		jz	short loc_4117CE
		cmp	word ptr [ebx],	2Ah
		jnz	short loc_4117E2
		add	ebx, 2
		jmp	short loc_411840
; ---------------------------------------------------------------------------

loc_4117E2:				; CODE XREF: .text:004117DBj
		mov	ax, [ebx]
		push	eax		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_411860
		xor	esi, esi
		jmp	short loc_411828
; ---------------------------------------------------------------------------

loc_4117F4:				; CODE XREF: .text:00411834j
		mov	di, [ebx]
		mov	eax, esi
		shl	eax, 4
		cmp	di, 39h
		mov	esi, eax
		ja	short loc_41180E
		movzx	eax, di
		add	eax, 0FFFFFFD0h
		add	esi, eax
		jmp	short loc_411825
; ---------------------------------------------------------------------------

loc_41180E:				; CODE XREF: .text:00411802j
		mov	[ebp-6], di
		mov	dx, [ebp-6]
		push	edx		; ch
		call	__ltowupper
		pop	ecx
		movzx	ecx, ax
		add	ecx, 0FFFFFFC9h
		add	esi, ecx

loc_411825:				; CODE XREF: .text:0041180Cj
		add	ebx, 2

loc_411828:				; CODE XREF: .text:004117F2j
		mov	ax, [ebx]
		push	eax		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4117F4
		mov	edx, [ebp-0Ch]
		mov	[edx], esi
		jmp	short loc_411840
; ---------------------------------------------------------------------------

loc_41183D:				; CODE XREF: .text:00411844j
		add	ebx, 2

loc_411840:				; CODE XREF: .text:004117E0j
					; .text:0041183Bj
		cmp	word ptr [ebx],	20h
		jz	short loc_41183D
		cmp	word ptr [ebx],	2Ch
		jnz	short loc_41184F
		add	ebx, 2

loc_41184F:				; CODE XREF: .text:0041184Aj
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-0Ch], 4
		cmp	dword ptr [ebp-4], 20h
		jl	loc_4117D1

loc_411860:				; CODE XREF: .text:004117EEj
		cmp	dword ptr [ebp-4], 20h
		jge	short loc_41186E
		or	eax, 0FFFFFFFFh
		jmp	loc_411A34
; ---------------------------------------------------------------------------

loc_41186E:				; CODE XREF: .text:00411864j
		mov	edx, [ebp+10h]
		lea	ecx, [ebp-490h]
		push	edx
		push	offset aBackground_1I ;	format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-410h]
		lea	edx, [ebp-490h]
		push	100h		; length
		push	eax		; s
		push	edx		; key
		mov	ecx, [ebp+0Ch]
		push	ecx		; section
		call	Stringfromini
		add	esp, 10h
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4118B3
		or	eax, 0FFFFFFFFh
		jmp	loc_411A34
; ---------------------------------------------------------------------------

loc_4118B3:				; CODE XREF: .text:004118A9j
		mov	word ptr [ebp+ebx*2-410h], 2Ch
		inc	ebx
		mov	edx, [ebp+10h]
		push	edx
		push	offset aBackground_2I ;	format
		lea	ecx, [ebp-490h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-410h]
		add	ebx, ebx
		lea	edx, [ebp-490h]
		add	ebx, eax
		push	100h		; length
		push	ebx		; s
		push	edx		; key
		mov	ecx, [ebp+0Ch]
		push	ecx		; section
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jnz	short loc_411905
		or	eax, 0FFFFFFFFh
		jmp	loc_411A34
; ---------------------------------------------------------------------------

loc_411905:				; CODE XREF: .text:004118FBj
		lea	ebx, [ebp-410h]
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp+8]
		lea	ecx, [edx+280h]
		mov	[ebp-10h], ecx
		jmp	short loc_411921
; ---------------------------------------------------------------------------

loc_41191E:				; CODE XREF: .text:00411925j
		add	ebx, 2

loc_411921:				; CODE XREF: .text:0041191Cj
					; .text:004119AAj
		cmp	word ptr [ebx],	20h
		jz	short loc_41191E
		cmp	word ptr [ebx],	2Ah
		jnz	short loc_411932
		add	ebx, 2
		jmp	short loc_411990
; ---------------------------------------------------------------------------

loc_411932:				; CODE XREF: .text:0041192Bj
		mov	ax, [ebx]
		push	eax		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jz	short loc_4119B0
		xor	esi, esi
		jmp	short loc_411978
; ---------------------------------------------------------------------------

loc_411944:				; CODE XREF: .text:00411984j
		mov	di, [ebx]
		mov	eax, esi
		shl	eax, 4
		cmp	di, 39h
		mov	esi, eax
		ja	short loc_41195E
		movzx	eax, di
		add	eax, 0FFFFFFD0h
		add	esi, eax
		jmp	short loc_411975
; ---------------------------------------------------------------------------

loc_41195E:				; CODE XREF: .text:00411952j
		mov	[ebp-8], di
		mov	dx, [ebp-8]
		push	edx		; ch
		call	__ltowupper
		pop	ecx
		movzx	ecx, ax
		add	ecx, 0FFFFFFC9h
		add	esi, ecx

loc_411975:				; CODE XREF: .text:0041195Cj
		add	ebx, 2

loc_411978:				; CODE XREF: .text:00411942j
		mov	ax, [ebx]
		push	eax		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_411944
		mov	edx, [ebp-10h]
		mov	[edx], esi
		jmp	short loc_411990
; ---------------------------------------------------------------------------

loc_41198D:				; CODE XREF: .text:00411994j
		add	ebx, 2

loc_411990:				; CODE XREF: .text:00411930j
					; .text:0041198Bj
		cmp	word ptr [ebx],	20h
		jz	short loc_41198D
		cmp	word ptr [ebx],	2Ch
		jnz	short loc_41199F
		add	ebx, 2

loc_41199F:				; CODE XREF: .text:0041199Aj
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-10h], 4
		cmp	dword ptr [ebp-4], 20h
		jl	loc_411921

loc_4119B0:				; CODE XREF: .text:0041193Ej
		cmp	dword ptr [ebp-4], 20h
		jge	short loc_4119BB
		or	eax, 0FFFFFFFFh
		jmp	short loc_411A34
; ---------------------------------------------------------------------------

loc_4119BB:				; CODE XREF: .text:004119B4j
		mov	edx, [ebp+10h]
		lea	ecx, [ebp-490h]
		push	edx
		push	offset aOperandsI ; "Operands[%i]"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	eax, [ebp+8]
		add	eax, 300h
		lea	edx, [ebp-490h]
		push	eax		; arglist
		push	offset aI_33	; "%i"
		push	edx		; key
		mov	ecx, [ebp+0Ch]
		push	ecx		; section
		push	0		; file
		call	Getfromini
		add	esp, 14h
		mov	eax, [ebp+10h]
		push	eax
		push	offset aModifiedComman ; "Modified commands[%i]"
		lea	edx, [ebp-490h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, [ebp+8]
		add	ecx, 304h
		lea	eax, [ebp-490h]
		push	ecx		; arglist
		push	offset aI_33	; "%i"
		push	eax		; key
		mov	edx, [ebp+0Ch]
		push	edx		; section
		push	0		; file
		call	Getfromini
		add	esp, 14h
		xor	eax, eax

loc_411A34:				; CODE XREF: .text:004116D9j
					; .text:00411719j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_411A3C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, char	arglist, int, LPCWSTR lpFileName, LPCWSTR lpAppName, int)
loc_411A3C:				; CODE XREF: .text:0040D0EAp
					; .text:0040D138p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB60h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+0Ch]
		jz	loc_411E13
		cmp	dword ptr [ebp+14h], 0
		jz	loc_411E13
		cmp	dword ptr [ebp+18h], 0
		jl	loc_411E13
		mov	eax, [ebp+18h]
		lea	edx, [ebp-4A0h]
		push	eax
		push	offset aSchemeNameI ; "Scheme _name[%i]"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, [ebp+8]
		lea	eax, [ebp-4A0h]
		push	ecx		; arglist
		push	offset aS_3	; "%s"
		push	eax		; key
		mov	edx, [ebp+14h]
		push	edx		; section
		mov	ecx, [ebp+10h]
		push	ecx		; file
		call	Writetoini
		add	esp, 14h
		mov	eax, [ebp+18h]
		push	eax
		push	offset aForeground_1I ;	"Foreground_1[%i]"
		lea	edx, [ebp-4A0h]
		push	edx		; buffer
		call	_swprintf
		lea	eax, [edi+200h]
		add	esp, 0Ch
		mov	[ebp-8], eax
		xor	esi, esi
		mov	edx, [ebp+8]
		xor	ebx, ebx
		lea	ecx, [edx+200h]
		mov	[ebp-4], ecx

loc_411AD2:				; CODE XREF: .text:00411B2Ej
		test	edi, edi
		jz	short loc_411B00
		mov	eax, [ebp-4]
		mov	ecx, [ebp-8]
		mov	edx, [eax]
		cmp	edx, [ecx]
		jnz	short loc_411B00
		push	offset asc_515C6A ; "*,"
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-420h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_411B22
; ---------------------------------------------------------------------------

loc_411B00:				; CODE XREF: .text:00411AD4j
					; .text:00411AE0j
		mov	ecx, [ebp-4]
		mov	edx, ebx
		add	edx, edx
		mov	eax, [ecx]
		push	eax
		lea	ecx, [ebp-420h]
		add	edx, ecx
		push	offset asc_515C70 ; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_411B22:				; CODE XREF: .text:00411AFEj
		inc	esi
		add	dword ptr [ebp-8], 4
		add	dword ptr [ebp-4], 4
		cmp	esi, 10h
		jl	short loc_411AD2
		test	ebx, ebx
		jle	short loc_411B3E
		mov	word ptr [ebp+ebx*2-422h], 0

loc_411B3E:				; CODE XREF: .text:00411B32j
		lea	eax, [ebp-420h]
		lea	edx, [ebp-4A0h]
		push	eax		; format
		push	edx		; key
		mov	ecx, [ebp+14h]
		push	ecx		; section
		mov	eax, [ebp+10h]
		push	eax		; file
		call	Writetoini
		add	esp, 10h
		mov	edx, [ebp+18h]
		push	edx
		push	offset aForeground_2I ;	"Foreground_2[%i]"
		lea	ecx, [ebp-4A0h]
		push	ecx		; buffer
		call	_swprintf
		lea	eax, [edi+esi*4+200h]
		add	esp, 0Ch
		mov	[ebp-10h], eax
		xor	ebx, ebx
		mov	edx, [ebp+8]
		cmp	esi, 20h
		lea	ecx, [edx+esi*4+200h]
		mov	[ebp-0Ch], ecx
		jge	short loc_411BF0

loc_411B92:				; CODE XREF: .text:00411BEEj
		test	edi, edi
		jz	short loc_411BC0
		mov	eax, [ebp-0Ch]
		mov	ecx, [ebp-10h]
		mov	edx, [eax]
		cmp	edx, [ecx]
		jnz	short loc_411BC0
		push	offset asc_515C6A ; "*,"
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-420h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_411BE2
; ---------------------------------------------------------------------------

loc_411BC0:				; CODE XREF: .text:00411B94j
					; .text:00411BA0j
		mov	ecx, [ebp-0Ch]
		mov	edx, ebx
		add	edx, edx
		mov	eax, [ecx]
		push	eax
		lea	ecx, [ebp-420h]
		add	edx, ecx
		push	offset asc_515C70 ; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_411BE2:				; CODE XREF: .text:00411BBEj
		inc	esi
		add	dword ptr [ebp-10h], 4
		add	dword ptr [ebp-0Ch], 4
		cmp	esi, 20h
		jl	short loc_411B92

loc_411BF0:				; CODE XREF: .text:00411B90j
		test	ebx, ebx
		jle	short loc_411BFE
		mov	word ptr [ebp+ebx*2-422h], 0

loc_411BFE:				; CODE XREF: .text:00411BF2j
		lea	eax, [ebp-420h]
		lea	edx, [ebp-4A0h]
		push	eax		; format
		push	edx		; key
		mov	ecx, [ebp+14h]
		push	ecx		; section
		mov	eax, [ebp+10h]
		push	eax		; file
		call	Writetoini
		add	esp, 10h
		mov	edx, [ebp+18h]
		push	edx
		push	offset aBackground_1I ;	format
		lea	ecx, [ebp-4A0h]
		push	ecx		; buffer
		call	_swprintf
		lea	eax, [edi+280h]
		add	esp, 0Ch
		mov	[ebp-18h], eax
		xor	esi, esi
		mov	edx, [ebp+8]
		xor	ebx, ebx
		lea	ecx, [edx+280h]
		mov	[ebp-14h], ecx

loc_411C4D:				; CODE XREF: .text:00411CA9j
		test	edi, edi
		jz	short loc_411C7B
		mov	eax, [ebp-14h]
		mov	ecx, [ebp-18h]
		mov	edx, [eax]
		cmp	edx, [ecx]
		jnz	short loc_411C7B
		push	offset asc_515C6A ; "*,"
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-420h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_411C9D
; ---------------------------------------------------------------------------

loc_411C7B:				; CODE XREF: .text:00411C4Fj
					; .text:00411C5Bj
		mov	ecx, [ebp-14h]
		mov	edx, ebx
		add	edx, edx
		mov	eax, [ecx]
		push	eax
		lea	ecx, [ebp-420h]
		add	edx, ecx
		push	offset asc_515C70 ; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_411C9D:				; CODE XREF: .text:00411C79j
		inc	esi
		add	dword ptr [ebp-18h], 4
		add	dword ptr [ebp-14h], 4
		cmp	esi, 10h
		jl	short loc_411C4D
		test	ebx, ebx
		jle	short loc_411CB9
		mov	word ptr [ebp+ebx*2-422h], 0

loc_411CB9:				; CODE XREF: .text:00411CADj
		lea	eax, [ebp-420h]
		lea	edx, [ebp-4A0h]
		push	eax		; format
		push	edx		; key
		mov	ecx, [ebp+14h]
		push	ecx		; section
		mov	eax, [ebp+10h]
		push	eax		; file
		call	Writetoini
		add	esp, 10h
		mov	edx, [ebp+18h]
		push	edx
		push	offset aBackground_2I ;	format
		lea	ecx, [ebp-4A0h]
		push	ecx		; buffer
		call	_swprintf
		lea	eax, [edi+esi*4+280h]
		add	esp, 0Ch
		mov	[ebp-20h], eax
		xor	ebx, ebx
		mov	edx, [ebp+8]
		cmp	esi, 20h
		lea	ecx, [edx+esi*4+280h]
		mov	[ebp-1Ch], ecx
		jge	short loc_411D6B

loc_411D0D:				; CODE XREF: .text:00411D69j
		test	edi, edi
		jz	short loc_411D3B
		mov	eax, [ebp-1Ch]
		mov	ecx, [ebp-20h]
		mov	edx, [eax]
		cmp	edx, [ecx]
		jnz	short loc_411D3B
		push	offset asc_515C6A ; "*,"
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-420h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	short loc_411D5D
; ---------------------------------------------------------------------------

loc_411D3B:				; CODE XREF: .text:00411D0Fj
					; .text:00411D1Bj
		mov	ecx, [ebp-1Ch]
		mov	edx, ebx
		add	edx, edx
		mov	eax, [ecx]
		push	eax
		lea	ecx, [ebp-420h]
		add	edx, ecx
		push	offset asc_515C70 ; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_411D5D:				; CODE XREF: .text:00411D39j
		inc	esi
		add	dword ptr [ebp-20h], 4
		add	dword ptr [ebp-1Ch], 4
		cmp	esi, 20h
		jl	short loc_411D0D

loc_411D6B:				; CODE XREF: .text:00411D0Bj
		test	ebx, ebx
		jle	short loc_411D79
		mov	word ptr [ebp+ebx*2-422h], 0

loc_411D79:				; CODE XREF: .text:00411D6Dj
		lea	eax, [ebp-420h]
		lea	edx, [ebp-4A0h]
		push	eax		; format
		push	edx		; key
		mov	ecx, [ebp+14h]
		push	ecx		; section
		mov	eax, [ebp+10h]
		push	eax		; file
		call	Writetoini
		add	esp, 10h
		mov	edx, [ebp+18h]
		push	edx
		push	offset aOperandsI ; "Operands[%i]"
		lea	ecx, [ebp-4A0h]
		push	ecx		; buffer
		call	_swprintf
		mov	eax, [ebp+8]
		add	esp, 0Ch
		lea	ecx, [ebp-4A0h]
		mov	edx, [eax+300h]
		push	edx		; arglist
		push	offset aI_33	; "%i"
		push	ecx		; key
		mov	eax, [ebp+14h]
		push	eax		; section
		mov	edx, [ebp+10h]
		push	edx		; file
		call	Writetoini
		add	esp, 14h
		mov	ecx, [ebp+18h]
		push	ecx
		push	offset aModifiedComman ; "Modified commands[%i]"
		lea	eax, [ebp-4A0h]
		push	eax		; buffer
		call	_swprintf
		mov	edx, [ebp+8]
		add	esp, 0Ch
		lea	eax, [ebp-4A0h]
		mov	ecx, [edx+304h]
		push	ecx		; arglist
		push	offset aI_33	; "%i"
		push	eax		; key
		mov	edx, [ebp+14h]
		push	edx		; section
		mov	ecx, [ebp+10h]
		push	ecx		; file
		call	Writetoini
		add	esp, 14h

loc_411E13:				; CODE XREF: .text:00411A4Fj
					; .text:00411A59j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_411E1C:				; CODE XREF: .text:0040F1F0p
					; .text:0041205Bp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_411E30
		or	eax, 0FFFFFFFFh
		jmp	loc_411F6E
; ---------------------------------------------------------------------------

loc_411E30:				; CODE XREF: .text:00411E26j
		mov	edx, [ebx+280h]
		push	edx		; COLORREF
		call	CreateSolidBrush
		mov	esi, eax
		mov	[ebx+308h], esi
		test	esi, esi
		jnz	short loc_411E55
		push	0		; int
		call	GetStockObject
		mov	[ebx+308h], eax

loc_411E55:				; CODE XREF: .text:00411E46j
		mov	eax, [ebx+2A4h]
		push	eax		; COLORREF
		call	CreateSolidBrush
		mov	esi, eax
		mov	[ebx+30Ch], esi
		test	esi, esi
		jnz	short loc_411E7A
		push	1		; int
		call	GetStockObject
		mov	[ebx+30Ch], eax

loc_411E7A:				; CODE XREF: .text:00411E6Bj
		mov	eax, [ebx+220h]
		push	eax		; COLORREF
		call	CreateSolidBrush
		mov	esi, eax
		mov	[ebx+310h], esi
		test	esi, esi
		jnz	short loc_411E9F
		push	1		; int
		call	GetStockObject
		mov	[ebx+310h], eax

loc_411E9F:				; CODE XREF: .text:00411E90j
		mov	eax, [ebx+200h]
		push	eax		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	esi, eax
		mov	[ebx+314h], esi
		test	esi, esi
		jnz	short loc_411EC8
		push	7		; int
		call	GetStockObject
		mov	[ebx+314h], eax

loc_411EC8:				; CODE XREF: .text:00411EB9j
		mov	eax, [ebx+208h]
		push	eax		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	esi, eax
		mov	[ebx+318h], esi
		test	esi, esi
		jnz	short loc_411EF1
		push	7		; int
		call	GetStockObject
		mov	[ebx+318h], eax

loc_411EF1:				; CODE XREF: .text:00411EE2j
		mov	eax, [ebx+204h]
		push	eax		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	esi, eax
		mov	[ebx+31Ch], esi
		test	esi, esi
		jnz	short loc_411F1A
		push	7		; int
		call	GetStockObject
		mov	[ebx+31Ch], eax

loc_411F1A:				; CODE XREF: .text:00411F0Bj
		mov	eax, [ebx+220h]
		push	eax		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	esi, eax
		mov	[ebx+320h], esi
		test	esi, esi
		jnz	short loc_411F43
		push	7		; int
		call	GetStockObject
		mov	[ebx+320h], eax

loc_411F43:				; CODE XREF: .text:00411F34j
		mov	eax, [ebx+224h]
		push	eax		; COLORREF
		push	0		; int
		push	0		; int
		call	CreatePen
		mov	esi, eax
		mov	[ebx+324h], esi
		test	esi, esi
		jnz	short loc_411F6C
		push	7		; int
		call	GetStockObject
		mov	[ebx+324h], eax

loc_411F6C:				; CODE XREF: .text:00411F5Dj
		xor	eax, eax

loc_411F6E:				; CODE XREF: .text:00411E2Bj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_411F74:				; CODE XREF: .text:00410696p
					; .text:00412054p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_412043
		mov	eax, [ebx+308h]
		test	eax, eax
		jz	short loc_411F9B
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+308h], edx

loc_411F9B:				; CODE XREF: .text:00411F8Bj
		mov	eax, [ebx+30Ch]
		test	eax, eax
		jz	short loc_411FB3
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+30Ch], edx

loc_411FB3:				; CODE XREF: .text:00411FA3j
		mov	eax, [ebx+310h]
		test	eax, eax
		jz	short loc_411FCB
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+310h], edx

loc_411FCB:				; CODE XREF: .text:00411FBBj
		mov	eax, [ebx+314h]
		test	eax, eax
		jz	short loc_411FE3
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+314h], edx

loc_411FE3:				; CODE XREF: .text:00411FD3j
		mov	eax, [ebx+318h]
		test	eax, eax
		jz	short loc_411FFB
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+318h], edx

loc_411FFB:				; CODE XREF: .text:00411FEBj
		mov	eax, [ebx+31Ch]
		test	eax, eax
		jz	short loc_412013
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+31Ch], edx

loc_412013:				; CODE XREF: .text:00412003j
		mov	eax, [ebx+320h]
		test	eax, eax
		jz	short loc_41202B
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+320h], edx

loc_41202B:				; CODE XREF: .text:0041201Bj
		mov	eax, [ebx+324h]
		test	eax, eax
		jz	short loc_412043
		push	eax		; HGDIOBJ
		call	DeleteObject
		xor	edx, edx
		mov	[ebx+324h], edx

loc_412043:				; CODE XREF: .text:00411F7Dj
					; .text:00412033j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_412048:				; CODE XREF: .text:004D0653p
					; .text:004D06EDp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_412072
		push	ebx
		call	loc_411F74
		pop	ecx
		push	ebx
		call	loc_411E1C
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_412072:				; CODE XREF: .text:00412051j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		