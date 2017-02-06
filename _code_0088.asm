.code

; int __cdecl loc_4ACE58(char arglist, int, wchar_t *s1, int, int)
loc_4ACE58:				; CODE XREF: .text:004B54F0p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDFCh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4ACE75
		test	esi, esi
		jnz	short loc_4ACE7C

loc_4ACE75:				; CODE XREF: .text:004ACE6Fj
		xor	eax, eax
		jmp	loc_4ACF22
; ---------------------------------------------------------------------------

loc_4ACE7C:				; CODE XREF: .text:004ACE73j
		lea	edx, [ebp-4]
		push	edx		; size
		push	esi		; _name
		call	Getstructureitemcount
		add	esp, 8
		test	eax, eax
		jnz	short loc_4ACE94
		xor	eax, eax
		jmp	loc_4ACF22
; ---------------------------------------------------------------------------

loc_4ACE94:				; CODE XREF: .text:004ACE8Bj
		push	esi
		push	offset aStructureSAt ; "Structure %s at	"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-204h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, 100h
		sub	ecx, eax
		lea	edx, [ebp-204h]
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		push	ebx		; _addr
		call	Decodeaddress
		add	esp, 18h
		cmp	dword ptr [ebp+14h], 2
		jnz	short loc_4ACEFE
		cmp	dword ptr [ebp+18h], 1
		jge	short loc_4ACEE8
		mov	dword ptr [ebp+18h], 1

loc_4ACEE8:				; CODE XREF: .text:004ACEDFj
		mov	edi, [ebp-4]
		imul	edi, [ebp+18h]
		cmp	edi, 100000h
		jbe	short loc_4ACF07
		mov	edi, 100000h
		jmp	short loc_4ACF07
; ---------------------------------------------------------------------------

loc_4ACEFE:				; CODE XREF: .text:004ACED9j
		cmp	dword ptr [ebp+14h], 1
		jz	short loc_4ACF07
		mov	edi, [ebp-4]

loc_4ACF07:				; CODE XREF: .text:004ACEF5j
					; .text:004ACEFCj ...
		push	esi		; strname
		push	ebx		; sel1
		push	ebx		; sel0
		push	0D0110h		; dumptype
		push	0		; path
		push	edi		; size
		push	ebx		; base
		lea	eax, [ebp-204h]
		push	eax		; _title
		call	Createdumpwindow
		add	esp, 20h

loc_4ACF22:				; CODE XREF: .text:004ACE77j
					; .text:004ACE8Fj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; signed int __cdecl loc_4ACF2C(t_module *pm, signed int a2, int a3, unsigned int a4, signed int a5, int a6, int a7)
loc_4ACF2C:				; CODE XREF: .text:004AD03Cp
					; .text:004AD281p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	eax, [ebp+14h]
		jz	short loc_4ACF55
		cmp	dword ptr [ebp+0Ch], 10h
		jge	short loc_4ACF55
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4ACF55
		mov	edx, [ebp+8]
		cmp	eax, [edx+490h]
		jb	short loc_4ACF5D

loc_4ACF55:				; CODE XREF: .text:004ACF3Cj
					; .text:004ACF42j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD1BB
; ---------------------------------------------------------------------------

loc_4ACF5D:				; CODE XREF: .text:004ACF53j
		mov	ecx, [ebp+8]
		mov	ecx, [ecx+490h]
		lea	edx, [eax+10h]
		cmp	ecx, edx
		jnb	short loc_4ACF75
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD1BB
; ---------------------------------------------------------------------------

loc_4ACF75:				; CODE XREF: .text:004ACF6Bj
		mov	ebx, [ebp+10h]
		add	ebx, eax
		mov	edx, ebx
		movzx	esi, word ptr [edx+0Ch]
		movzx	edx, word ptr [edx+0Eh]
		add	esi, edx
		mov	[ebp-0Ch], esi
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4ACF96
		xor	eax, eax
		jmp	loc_4AD1BB
; ---------------------------------------------------------------------------

loc_4ACF96:				; CODE XREF: .text:004ACF8Dj
		mov	edx, [ebp-0Ch]
		shl	edx, 3
		add	edx, eax
		add	edx, 10h
		cmp	ecx, edx
		jnb	short loc_4ACFAD
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD1BB
; ---------------------------------------------------------------------------

loc_4ACFAD:				; CODE XREF: .text:004ACFA3j
		add	ebx, 10h
		mov	eax, ebx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	[ebp-18h], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp-0Ch]
		jge	loc_4AD1B9

loc_4ACFC6:				; CODE XREF: .text:004AD1B3j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4ACFE1
		mov	ecx, [ebp-18h]
		cmp	dword ptr [ecx], 6
		jnz	loc_4AD1A6
		mov	dword ptr [ebp+18h], 6
		jmp	short loc_4AD011
; ---------------------------------------------------------------------------

loc_4ACFE1:				; CODE XREF: .text:004ACFCAj
		cmp	dword ptr [ebp+0Ch], 1
		jnz	short loc_4ACFFC
		mov	eax, [ebp-18h]
		mov	eax, [eax]
		test	eax, 80000000h
		jnz	loc_4AD1A6
		mov	[ebp+1Ch], eax
		jmp	short loc_4AD011
; ---------------------------------------------------------------------------

loc_4ACFFC:				; CODE XREF: .text:004ACFE5j
		cmp	dword ptr [ebp+0Ch], 2
		jnz	short loc_4AD011
		mov	edx, [ebp-18h]
		movzx	ecx, word ptr [edx]
		and	ecx, 3FFh
		mov	[ebp+20h], ecx

loc_4AD011:				; CODE XREF: .text:004ACFDFj
					; .text:004ACFFAj ...
		mov	eax, [ebp-18h]
		test	byte ptr [eax+7], 80h
		jz	short loc_4AD051
		push	dword ptr [ebp+20h] ; a7
		push	dword ptr [ebp+1Ch] ; a6
		push	dword ptr [ebp+18h] ; a5
		mov	ecx, [ebp-18h]
		mov	eax, [ecx+4]
		and	eax, 7FFFFFFFh
		push	eax		; a4
		mov	edx, [ebp+10h]
		push	edx		; a3
		mov	ecx, [ebp+0Ch]
		inc	ecx
		push	ecx		; a2
		mov	eax, [ebp+8]
		push	eax		; a1
		call	loc_4ACF2C
		add	esp, 1Ch
		test	eax, eax
		jl	loc_4AD1BB
		jmp	loc_4AD1A6
; ---------------------------------------------------------------------------

loc_4AD051:				; CODE XREF: .text:004AD018j
		mov	edx, [ebp-18h]
		mov	ecx, [ebp+8]
		mov	eax, [edx+4]
		mov	edx, eax
		add	edx, 10h
		cmp	edx, [ecx+490h]
		jbe	short loc_4AD06F
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD1BB
; ---------------------------------------------------------------------------

loc_4AD06F:				; CODE XREF: .text:004AD065j
		mov	ebx, eax
		add	ebx, [ebp+10h]
		mov	eax, [ebx+4]
		push	eax		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_4AD1A6
		mov	edx, [ebp+8]
		mov	esi, [edx]
		add	esi, [ebx]
		push	5		; mode
		mov	eax, [ebx+4]
		push	eax		; size
		push	esi		; _addr
		mov	edx, [ebp-14h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		xor	eax, eax
		mov	[ebp-8], eax

loc_4AD0AC:				; CODE XREF: .text:004AD1A0j
		cmp	edi, 2
		jnb	short loc_4AD0B9
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD1BB
; ---------------------------------------------------------------------------

loc_4AD0B9:				; CODE XREF: .text:004AD0AFj
		mov	edx, [ebp-14h]
		add	esi, 2
		sub	edi, 2
		movzx	ebx, word ptr [edx]
		add	dword ptr [ebp-14h], 2
		test	ebx, ebx
		jz	loc_4AD199
		mov	eax, ebx
		add	eax, eax
		cmp	edi, eax
		jnb	short loc_4AD0E1
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD1BB
; ---------------------------------------------------------------------------

loc_4AD0E1:				; CODE XREF: .text:004AD0D7j
		mov	edx, [ebp+1Ch]
		dec	edx
		shl	edx, 4
		add	edx, [ebp-8]
		mov	[ebp-10h], edx
		push	0		; subaddr
		mov	ecx, [ebp-10h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		add	eax, 964h
		push	eax		; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AD15B
		mov	edx, g_ResLuguage
		cmp	edx, [eax+10h]
		jz	short loc_4AD18A
		cmp	edx, [ebp+20h]
		jnz	short loc_4AD127
		mov	[eax+8], esi
		mov	[eax+0Ch], ebx
		mov	ecx, [ebp+20h]
		mov	[eax+10h], ecx
		jmp	short loc_4AD18A
; ---------------------------------------------------------------------------

loc_4AD127:				; CODE XREF: .text:004AD117j
		cmp	dword ptr [eax+10h], 0
		jz	short loc_4AD18A
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_4AD141
		mov	[eax+8], esi
		mov	[eax+0Ch], ebx
		mov	edx, [ebp+20h]
		mov	[eax+10h], edx
		jmp	short loc_4AD18A
; ---------------------------------------------------------------------------

loc_4AD141:				; CODE XREF: .text:004AD131j
		cmp	dword ptr [eax+10h], 9
		jz	short loc_4AD18A
		cmp	dword ptr [ebp+20h], 9
		jnz	short loc_4AD18A
		mov	[eax+8], esi
		mov	[eax+0Ch], ebx
		mov	ecx, [ebp+20h]
		mov	[eax+10h], ecx
		jmp	short loc_4AD18A
; ---------------------------------------------------------------------------

loc_4AD15B:				; CODE XREF: .text:004AD107j
		mov	eax, [ebp-10h]
		lea	edx, [ebp-2Ch]
		mov	[ebp-2Ch], eax
		mov	dword ptr [ebp-28h], 1
		mov	[ebp-24h], esi
		mov	[ebp-20h], ebx
		mov	eax, [ebp+20h]
		mov	[ebp-1Ch], eax
		push	edx		; item
		mov	ecx, [ebp+8]
		add	ecx, 964h
		push	ecx		; sd
		call	Addsorteddata
		add	esp, 8

loc_4AD18A:				; CODE XREF: .text:004AD112j
					; .text:004AD125j ...
		mov	eax, ebx
		add	eax, eax
		add	[ebp-14h], eax
		mov	eax, ebx
		add	eax, eax
		add	esi, eax
		sub	edi, eax

loc_4AD199:				; CODE XREF: .text:004AD0CBj
		inc	dword ptr [ebp-8]
		cmp	dword ptr [ebp-8], 10h
		jl	loc_4AD0AC

loc_4AD1A6:				; CODE XREF: .text:004ACFD2j
					; .text:004ACFF1j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-18h], 8
		mov	edx, [ebp-4]
		cmp	edx, [ebp-0Ch]
		jl	loc_4ACFC6

loc_4AD1B9:				; CODE XREF: .text:004ACFC0j
		xor	eax, eax

loc_4AD1BB:				; CODE XREF: .text:004ACF58j
					; .text:004ACF70j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4AD1C4:				; CODE XREF: .text:00416C55p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4AD1DB
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD296
; ---------------------------------------------------------------------------

loc_4AD1DB:				; CODE XREF: .text:004AD1D1j
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	80h		; nexp
		push	14h		; itemsize
		lea	edx, [ebx+964h]
		push	edx		; sd
		call	Createsorteddata
		add	esp, 18h
		test	eax, eax
		jz	short loc_4AD203
		or	eax, 0FFFFFFFFh
		jmp	loc_4AD296
; ---------------------------------------------------------------------------

loc_4AD203:				; CODE XREF: .text:004AD1F9j
		cmp	dword ptr [ebx+48Ch], 0
		jz	short loc_4AD215
		cmp	dword ptr [ebx+490h], 0
		jnz	short loc_4AD219

loc_4AD215:				; CODE XREF: .text:004AD20Aj
		xor	eax, eax
		jmp	short loc_4AD296
; ---------------------------------------------------------------------------

loc_4AD219:				; CODE XREF: .text:004AD213j
		push	1		; flags
		mov	edx, [ebx+490h]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AD235
		or	eax, 0FFFFFFFFh
		jmp	short loc_4AD296
; ---------------------------------------------------------------------------

loc_4AD235:				; CODE XREF: .text:004AD22Ej
		push	1		; mode
		mov	edx, [ebx+490h]
		push	edx		; size
		mov	ecx, [ebx+48Ch]
		push	ecx		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebx+490h]
		jz	short loc_4AD262
		push	esi		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	short loc_4AD296
; ---------------------------------------------------------------------------

loc_4AD262:				; CODE XREF: .text:004AD254j
		push	0Ch		; n
		push	0		; c
		lea	edx, [ebp-0Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	dword ptr [ebp-4]
		push	dword ptr [ebp-8]
		push	dword ptr [ebp-0Ch]
		push	0
		push	esi
		push	0
		push	ebx
		call	loc_4ACF2C
		add	esp, 1Ch
		push	esi		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebx+964h]

loc_4AD296:				; CODE XREF: .text:004AD1D6j
					; .text:004AD1FEj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 333. _Getmodulestring
; Exported entry 585. Getmodulestring

; unsigned int __cdecl Getmodulestring(t_module	*pm, ulong id, wchar_t *s)
		public Getmodulestring
Getmodulestring:			; CODE XREF: .text:0047EF40p
		push	ebp		; _Getmodulestring
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4AD2C8
		cmp	dword ptr [eax+974h], 0
		jz	short loc_4AD2C8
		cmp	dword ptr [eax+964h], 0
		jz	short loc_4AD2C8
		test	edi, edi
		jnz	short loc_4AD2CC

loc_4AD2C8:				; CODE XREF: .text:004AD2B0j
					; .text:004AD2B9j ...
		xor	eax, eax
		jmp	short loc_4AD32F
; ---------------------------------------------------------------------------

loc_4AD2CC:				; CODE XREF: .text:004AD2C6j
		push	0		; subaddr
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		add	eax, 964h
		push	eax		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AD2EA
		xor	eax, eax
		jmp	short loc_4AD32F
; ---------------------------------------------------------------------------

loc_4AD2EA:				; CODE XREF: .text:004AD2E4j
		mov	ebx, [esi+0Ch]
		add	ebx, ebx
		cmp	ebx, 200h
		jbe	short loc_4AD2FC
		mov	ebx, 200h

loc_4AD2FC:				; CODE XREF: .text:004AD2F5j
		push	1		; mode
		push	ebx		; size
		mov	eax, [esi+8]
		push	eax		; _addr
		lea	edx, [ebp-200h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	ebx, eax
		jz	short loc_4AD31A
		xor	eax, eax
		jmp	short loc_4AD32F
; ---------------------------------------------------------------------------

loc_4AD31A:				; CODE XREF: .text:004AD314j
		lea	edx, [ebp-200h]
		push	edx		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4AD32F:				; CODE XREF: .text:004AD2CAj
					; .text:004AD2E8j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4AD338:				; DATA XREF: .text:004AD3A9o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	thread.sorted.n, 0
		jnz	short loc_4AD350
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD350:				; CODE XREF: .text:004AD349j
		test	eax, eax
		jnz	short loc_4AD377
		push	8C00h		; mode
		push	ebx		; threadid
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	Decodethreadname
		add	esp, 0Ch
		mov	eax, 2
		cmp	ebx, _callstk.custommode
		jz	short loc_4AD38B
		dec	eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD377:				; CODE XREF: .text:004AD352j
		dec	eax
		jnz	short loc_4AD389
		push	ebx
		call	loc_4ADE1C
		pop	ecx
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD389:				; CODE XREF: .text:004AD378j
		xor	eax, eax

loc_4AD38B:				; CODE XREF: .text:004AD371j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4AD390:				; DATA XREF: .data:stru_55130Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		xor	eax, eax
		mov	dword_5FA954, eax
		xor	edx, edx
		mov	dword_5FA958, edx
		push	1
		push	offset loc_4AD338
		call	loc_45BAAC
		add	esp, 8
		test	ebx, ebx
		jz	short loc_4AD3C3
		cmp	process, 0
		jnz	short loc_4AD3CA

loc_4AD3C3:				; CODE XREF: .text:004AD3B8j
		mov	eax, 1
		jmp	short loc_4AD400
; ---------------------------------------------------------------------------

loc_4AD3CA:				; CODE XREF: .text:004AD3C1j
		mov	edx, [ebx+68h]
		push	edx		; index
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_5FA954, eax
		mov	esi, [ebx+21Ch]
		mov	dword_5FA958, esi
		call	Getcputhreadid
		cmp	esi, eax
		jnz	short loc_4AD3FB
		xor	eax, eax
		mov	dword_5FA958, eax

loc_4AD3FB:				; CODE XREF: .text:004AD3F2j
		mov	eax, 1

loc_4AD400:				; CODE XREF: .text:004AD3C8j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD404:				; DATA XREF: .data:stru_55130Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_4AD428
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4AD41D
		cmp	process, 0
		jnz	short loc_4AD421

loc_4AD41D:				; CODE XREF: .text:004AD412j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD421:				; CODE XREF: .text:004AD41Bj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD428:				; CODE XREF: .text:004AD40Cj
		dec	eax
		jnz	short loc_4AD43A
		push	0
		call	loc_4ADE1C
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD43A:				; CODE XREF: .text:004AD429j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_4AD440
loc_4AD440:				; DATA XREF: .text:004AE6FDo
					; .text:004AE77Ao ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	eax, dword_5FA954
		test	eax, eax
		jnz	short loc_4AD455
		xor	eax, eax
		jmp	short loc_4AD4A4
; ---------------------------------------------------------------------------

loc_4AD455:				; CODE XREF: .text:004AD44Fj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4AD45F
		mov	ebx, [eax]
		jmp	short loc_4AD462
; ---------------------------------------------------------------------------

loc_4AD45F:				; CODE XREF: .text:004AD459j
		mov	ebx, [eax+18h]

loc_4AD462:				; CODE XREF: .text:004AD45Dj
		test	ebx, ebx
		jz	short loc_4AD471
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4AD475

loc_4AD471:				; CODE XREF: .text:004AD464j
		xor	eax, eax
		jmp	short loc_4AD4A4
; ---------------------------------------------------------------------------

loc_4AD475:				; CODE XREF: .text:004AD46Fj
		test	esi, esi
		jnz	short loc_4AD480
		mov	eax, 1
		jmp	short loc_4AD4A4
; ---------------------------------------------------------------------------

loc_4AD480:				; CODE XREF: .text:004AD477j
		dec	esi
		jnz	short loc_4AD4A2
		push	300h		; mode
		push	ebx		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	edx, dword_5FA958
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4AD4A4
; ---------------------------------------------------------------------------

loc_4AD4A2:				; CODE XREF: .text:004AD481j
		xor	eax, eax

loc_4AD4A4:				; CODE XREF: .text:004AD453j
					; .text:004AD473j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_4AD4A8
loc_4AD4A8:				; DATA XREF: .text:004AE71Fo
					; .text:004AE75Bo ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	eax, dword_5FA954
		test	eax, eax
		jnz	short loc_4AD4BD
		xor	eax, eax
		jmp	short loc_4AD50A
; ---------------------------------------------------------------------------

loc_4AD4BD:				; CODE XREF: .text:004AD4B7j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4AD4C8
		mov	ebx, [eax+14h]
		jmp	short loc_4AD4CB
; ---------------------------------------------------------------------------

loc_4AD4C8:				; CODE XREF: .text:004AD4C1j
		mov	ebx, [eax+1Ch]

loc_4AD4CB:				; CODE XREF: .text:004AD4C6j
		test	ebx, ebx
		jz	short loc_4AD4DA
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4AD4DE

loc_4AD4DA:				; CODE XREF: .text:004AD4CDj
		xor	eax, eax
		jmp	short loc_4AD50A
; ---------------------------------------------------------------------------

loc_4AD4DE:				; CODE XREF: .text:004AD4D8j
		test	esi, esi
		jnz	short loc_4AD4E9
		mov	eax, 1
		jmp	short loc_4AD50A
; ---------------------------------------------------------------------------

loc_4AD4E9:				; CODE XREF: .text:004AD4E0j
		dec	esi
		jnz	short loc_4AD508
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	ebx		; asmaddr
		mov	edx, dword_5FA958
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4AD50A
; ---------------------------------------------------------------------------

loc_4AD508:				; CODE XREF: .text:004AD4EAj
		xor	eax, eax

loc_4AD50A:				; CODE XREF: .text:004AD4BBj
					; .text:004AD4DCj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_4AD510
loc_4AD510:				; DATA XREF: .text:004AE73Co
					; .data:stru_55130Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, dword_5FA954
		test	eax, eax
		jz	short loc_4AD526
		cmp	dword ptr [eax+10h], 0
		jge	short loc_4AD52B

loc_4AD526:				; CODE XREF: .text:004AD51Ej
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD52B:				; CODE XREF: .text:004AD524j
		mov	edx, [eax+0Ch]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4AD53E
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD53E:				; CODE XREF: .text:004AD537j
		test	ebx, ebx
		jnz	short loc_4AD54A
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD54A:				; CODE XREF: .text:004AD540j
		dec	ebx
		jnz	short loc_4AD575
		mov	edx, dword_5FA954
		push	90h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	ecx, [edx+0Ch]
		mov	eax, dword_5FA958
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	eax		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AD575:				; CODE XREF: .text:004AD54Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4AD57C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4AD57C:				; DATA XREF: .data:stru_55130Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi		; arglist
		mov	ebx, [ebp+14h]
		mov	esi, offset dword_5FA954
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4AD5AF
		cmp	dword ptr [eax+10h], 0
		jge	short loc_4AD5AF
		test	byte ptr [eax+9], 10h
		jz	short loc_4AD5AF
		cmp	dword ptr [eax+10h], 0
		jge	short loc_4AD5AF
		mov	edx, [eax+0Ch]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4AD5B3

loc_4AD5AF:				; CODE XREF: .text:004AD58Dj
					; .text:004AD593j ...
		xor	eax, eax
		jmp	short loc_4AD632
; ---------------------------------------------------------------------------

loc_4AD5B3:				; CODE XREF: .text:004AD5ADj
		test	ebx, ebx
		jnz	short loc_4AD5CB
		cmp	run.status, 12h
		jz	short loc_4AD5C4
		xor	eax, eax
		jmp	short loc_4AD632
; ---------------------------------------------------------------------------

loc_4AD5C4:				; CODE XREF: .text:004AD5BEj
		mov	eax, 1
		jmp	short loc_4AD632
; ---------------------------------------------------------------------------

loc_4AD5CB:				; CODE XREF: .text:004AD5B5j
		dec	ebx
		jnz	short loc_4AD630
		push	0
		push	0
		push	0
		push	2200h
		mov	edx, [esi]
		mov	ecx, [edx+0Ch]
		push	ecx
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_4AD601
		push	offset aUnableToSetTem ; "Unable to set	temporary breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4AD632
; ---------------------------------------------------------------------------

loc_4AD601:				; CODE XREF: .text:004AD5E9j
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	edx, [esi]
		mov	ecx, [edx+0Ch]
		push	ecx		; asmaddr
		mov	eax, dword_5FA958
		push	eax		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; pass
		push	4		; status
		call	Run
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4AD632
; ---------------------------------------------------------------------------

loc_4AD630:				; CODE XREF: .text:004AD5CCj
		xor	eax, eax

loc_4AD632:				; CODE XREF: .text:004AD5B1j
					; .text:004AD5C2j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4AD638@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4AD638:				; DATA XREF: .data:stru_55130Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		mov	eax, dword_5FA954
		test	eax, eax
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+8]
		mov	ebx, [ebp+10h]
		jz	short loc_4AD656
		cmp	dword ptr [eax+14h], 0
		jnz	short loc_4AD65D

loc_4AD656:				; CODE XREF: .text:004AD64Ej
		xor	eax, eax
		jmp	loc_4AD7F4
; ---------------------------------------------------------------------------

loc_4AD65D:				; CODE XREF: .text:004AD654j
		cmp	ebx, 4
		jnb	short loc_4AD66A
		mov	edx, [eax+14h]
		mov	[ebp-4], edx
		jmp	short loc_4AD673
; ---------------------------------------------------------------------------

loc_4AD66A:				; CODE XREF: .text:004AD660j
		mov	ecx, [eax+1Ch]
		and	ebx, 3
		mov	[ebp-4], ecx

loc_4AD673:				; CODE XREF: .text:004AD668j
		push	0		; subaddr
		mov	eax, [ebp-4]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4AD6C3
		test	ebx, ebx
		jnz	short loc_4AD6A3
		test	esi, esi
		jz	short loc_4AD6A3
		test	byte ptr [esi+9], 10h
		jz	short loc_4AD6A3
		xor	eax, eax
		jmp	loc_4AD7F4
; ---------------------------------------------------------------------------

loc_4AD6A3:				; CODE XREF: .text:004AD690j
					; .text:004AD694j ...
		cmp	ebx, 3
		jnz	short loc_4AD6B9
		test	esi, esi
		jz	short loc_4AD6B2
		test	byte ptr [esi+9], 10h
		jnz	short loc_4AD6B9

loc_4AD6B2:				; CODE XREF: .text:004AD6AAj
		xor	eax, eax
		jmp	loc_4AD7F4
; ---------------------------------------------------------------------------

loc_4AD6B9:				; CODE XREF: .text:004AD6A6j
					; .text:004AD6B0j
		mov	eax, 1
		jmp	loc_4AD7F4
; ---------------------------------------------------------------------------

loc_4AD6C3:				; CODE XREF: .text:004AD68Cj
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4AD7F2
		test	esi, esi
		jnz	short loc_4AD6E6
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4AD6E6
		xor	eax, eax
		jmp	loc_4AD7F4
; ---------------------------------------------------------------------------

loc_4AD6E6:				; CODE XREF: .text:004AD6CFj
					; .text:004AD6DDj
		test	ebx, ebx
		jz	short loc_4AD6EF
		cmp	ebx, 3
		jnz	short loc_4AD758

loc_4AD6EF:				; CODE XREF: .text:004AD6E8j
		test	esi, esi
		jz	short loc_4AD70F
		test	byte ptr [esi+9], 10h
		jz	short loc_4AD70F
		push	1000h		; type
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	loc_4AD7EB
; ---------------------------------------------------------------------------

loc_4AD70F:				; CODE XREF: .text:004AD6F1j
					; .text:004AD6F7j
		push	$CTW0("");(offset	aUnableToSetTem+43h) ; exprtype
		push	$CTW0("");(offset	aUnableToSetTem+43h) ; expression
		push	$CTW0("");(offset	aUnableToSetTem+43h) ; condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	ecx, [ebp-4]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4AD7EB
		push	offset aUnableToSetB_8 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4AD7EB
; ---------------------------------------------------------------------------

loc_4AD758:				; CODE XREF: .text:004AD6EDj
		lea	eax, [ebp-0Ch]
		push	eax		; coord
		push	3		; column
		push	edi		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4AD774
		or	edx, 0FFFFFFFFh
		mov	[ebp-8], edx
		mov	[ebp-0Ch], edx

loc_4AD774:				; CODE XREF: .text:004AD769j
		cmp	ebx, 1
		jnz	short loc_4AD7A3
		mov	eax, [edi+234h]
		lea	edx, [ebp-4]	; int
		push	eax		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		mov	eax, [ebp-0Ch]	; int
		push	eax		; x
		push	0		; _title
		push	1		; naddr
		push	edx		; _addr
		mov	ecx, [edi+22Ch]	; int
		push	ecx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	ebx, eax
		jmp	short loc_4AD7CD
; ---------------------------------------------------------------------------

loc_4AD7A3:				; CODE XREF: .text:004AD777j
		mov	eax, [edi+234h]
		push	eax		; fi
		lea	eax, [ebp-4]	; int
		mov	edx, [ebp-8]
		push	edx		; y
		mov	ecx, [ebp-0Ch]	; int
		push	ecx		; x
		push	0		; _title
		push	0		; fnindex
		push	1		; naddr
		push	eax		; _addr
		mov	edx, [edi+22Ch]	; int
		push	edx		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	ebx, eax

loc_4AD7CD:				; CODE XREF: .text:004AD7A1j
		test	ebx, ebx
		jge	short loc_4AD7E3
		push	offset aUnableToSetB_8 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4AD7E3:				; CODE XREF: .text:004AD7CFj
		test	ebx, ebx
		jg	short loc_4AD7EB
		xor	eax, eax
		jmp	short loc_4AD7F4
; ---------------------------------------------------------------------------

loc_4AD7EB:				; CODE XREF: .text:004AD70Aj
					; .text:004AD73Bj ...
		mov	eax, 1
		jmp	short loc_4AD7F4
; ---------------------------------------------------------------------------

loc_4AD7F2:				; CODE XREF: .text:004AD6C7j
		xor	eax, eax

loc_4AD7F4:				; CODE XREF: .text:004AD658j
					; .text:004AD69Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 334. _Isretaddr
; Exported entry 635. Isretaddr

; ulong	__cdecl	Isretaddr(ulong	retaddr, ulong *procaddr)
		public Isretaddr
Isretaddr:				; CODE XREF: .text:004AD91Ep
					; .text:004ADA3Ep ...
		push	ebp		; _Isretaddr
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF720h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	edi, edi
		jz	short loc_4AD81D
		xor	eax, eax
		mov	[edi], eax

loc_4AD81D:				; CODE XREF: .text:004AD817j
		push	esi		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4AD82F
		xor	eax, eax
		jmp	loc_4AD8BC
; ---------------------------------------------------------------------------

loc_4AD82F:				; CODE XREF: .text:004AD826j
		push	1		; decode
		push	1		; n
		push	esi		; ip
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [eax]
		push	ecx		; base
		push	0		; copy
		call	Disassembleback
		add	esp, 18h
		mov	ebx, eax
		cmp	esi, ebx
		jnz	short loc_4AD84F
		xor	eax, eax
		jmp	short loc_4AD8BC
; ---------------------------------------------------------------------------

loc_4AD84F:				; CODE XREF: .text:004AD849j
		sub	esi, ebx
		cmp	esi, 10h
		jbe	short loc_4AD85A
		xor	eax, eax
		jmp	short loc_4AD8BC
; ---------------------------------------------------------------------------

loc_4AD85A:				; CODE XREF: .text:004AD854j
		push	1		; mode
		push	esi		; size
		push	ebx		; _addr
		lea	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, eax
		jz	short loc_4AD872
		xor	eax, eax
		jmp	short loc_4AD8BC
; ---------------------------------------------------------------------------

loc_4AD872:				; CODE XREF: .text:004AD86Cj
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-18E0h]
		push	edx		; da
		push	0		; dec
		push	ebx		; ip
		push	esi		; cmdsize
		lea	ecx, [ebp-10h]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		cmp	esi, eax
		jnz	short loc_4AD8AA
		cmp	dword ptr [ebp-18B4h], 0
		jnz	short loc_4AD8AA
		mov	eax, [ebp-18CCh]
		and	eax, 1Fh
		cmp	eax, 0Ch
		jz	short loc_4AD8AE

loc_4AD8AA:				; CODE XREF: .text:004AD891j
					; .text:004AD89Aj
		xor	eax, eax
		jmp	short loc_4AD8BC
; ---------------------------------------------------------------------------

loc_4AD8AE:				; CODE XREF: .text:004AD8A8j
		test	edi, edi
		jz	short loc_4AD8BA
		mov	edx, [ebp-18A0h]
		mov	[edi], edx

loc_4AD8BA:				; CODE XREF: .text:004AD8B0j
		mov	eax, ebx

loc_4AD8BC:				; CODE XREF: .text:004AD82Aj
					; .text:004AD84Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 335. _Findretaddrdata
; Exported entry 529. Findretaddrdata

; _DWORD __cdecl Findretaddrdata(t_sframe *pf, ulong base, ulong size)
		public Findretaddrdata
Findretaddrdata:			; CODE XREF: .text:0044DEBBp
					; .text:00457349p ...
		push	ebp		; _Findretaddrdata
		mov	ebp, esp
		add	esp, 0FFFFFFD4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4AD8EC
		mov	eax, [ebx+4]
		cmp	eax, [ebp+0Ch]
		jb	short loc_4AD8EC
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebx+4]
		add	ecx, [ebp+10h]
		add	edx, 4
		cmp	edx, ecx
		jbe	short loc_4AD8F4

loc_4AD8EC:				; CODE XREF: .text:004AD8D2j
					; .text:004AD8DAj
		or	eax, 0FFFFFFFFh
		jmp	loc_4ADE13
; ---------------------------------------------------------------------------

loc_4AD8F4:				; CODE XREF: .text:004AD8EAj
		cmp	g_IsUseDbghelp,	0
		jz	short loc_4AD95F
		cmp	dword_5D3A5C, 0
		jz	short loc_4AD95F
		push	ebx
		call	loc_4C9EC4
		pop	ecx
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4AD95F
		lea	edx, [ebp-1Ch]
		push	edx		; procaddr
		mov	ecx, [ebp-18h]
		push	ecx		; retaddr
		call	Isretaddr
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4AD95F
		mov	eax, [ebp-14h]
		xor	ecx, ecx
		mov	[ebx+2E8h], eax
		mov	edx, [ebx+2F4h]
		add	edx, 4
		mov	[ebx+2ECh], edx
		mov	[ebx+2F0h], ecx
		mov	eax, [ebp-1Ch]
		mov	[ebx+2F8h], eax
		xor	eax, eax
		jmp	loc_4ADE13
; ---------------------------------------------------------------------------

loc_4AD95F:				; CODE XREF: .text:004AD8FBj
					; .text:004AD904j ...
		mov	eax, [ebx+4]
		lea	ecx, [ebp-20h]
		mov	edx, eax
		sub	edx, [ebp+0Ch]
		sub	[ebp+10h], edx
		mov	[ebp+0Ch], eax
		push	0		; amax
		push	ecx		; amin
		mov	eax, [ebx]
		push	eax		; _addr
		call	Getproclimits
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AD987
		mov	edx, [ebx]
		mov	[ebp-20h], edx

loc_4AD987:				; CODE XREF: .text:004AD980j
		push	0		; subaddr
		mov	ecx, [ebp-20h]
		push	ecx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	edi, eax
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4AD9B0
		xor	edx, edx
		mov	[ebp-2Ch], edx
		jmp	short loc_4AD9C4
; ---------------------------------------------------------------------------

loc_4AD9B0:				; CODE XREF: .text:004AD9A7j
		mov	ecx, [ebx]
		push	ecx		; _addr
		add	eax, 950h
		push	eax		; pdat
		call	Findsimpledata
		add	esp, 8
		mov	[ebp-2Ch], eax

loc_4AD9C4:				; CODE XREF: .text:004AD9AEj
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_4ADABF
		mov	edx, [ebp-2Ch]
		test	byte ptr [edx+5], 1
		jz	loc_4ADABF
		mov	ecx, [ebx+8]
		cmp	ecx, [ebp+0Ch]
		jbe	loc_4ADABF
		mov	edx, [ebp+0Ch]
		mov	eax, [ebx+8]
		add	edx, [ebp+10h]
		add	eax, 8
		cmp	eax, edx
		ja	loc_4ADABF
		mov	ecx, [ebp-2Ch]
		mov	eax, [ecx+0Ah]
		add	eax, [ebx+8]
		add	eax, 4
		mov	[ebp-0Ch], eax
		mov	esi, [ebp-0Ch]
		add	esi, 4
		lea	eax, [esi+4]
		cmp	eax, [ebx+4]
		jbe	loc_4ADABF
		push	1		; mode
		push	4		; size
		push	esi		; _addr
		lea	edx, [ebp-18h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_4ADABF
		lea	ecx, [ebp-1Ch]
		push	ecx		; procaddr
		mov	eax, [ebp-18h]
		push	eax		; retaddr
		call	Isretaddr
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4ADABF
		xor	edx, edx
		mov	[ebp-10h], edx
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		xor	edx, edx
		lea	eax, [esi+4]
		mov	[ebx+2E4h], edx
		add	esp, 10h
		mov	ecx, [ebp-14h]
		mov	[ebx+2E8h], ecx
		mov	[ebx+2ECh], eax
		mov	edx, [ebp-10h]
		mov	[ebx+2F0h], edx
		mov	[ebx+2F4h], esi
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4ADAA2
		mov	ecx, [ebp-1Ch]
		mov	[ebx+2F8h], ecx
		jmp	short loc_4ADAB8
; ---------------------------------------------------------------------------

loc_4ADAA2:				; CODE XREF: .text:004ADA95j
		test	edi, edi
		jz	short loc_4ADAB0
		mov	eax, [edi]
		mov	[ebx+2F8h], eax
		jmp	short loc_4ADAB8
; ---------------------------------------------------------------------------

loc_4ADAB0:				; CODE XREF: .text:004ADAA4j
		xor	edx, edx
		mov	[ebx+2F8h], edx

loc_4ADAB8:				; CODE XREF: .text:004ADAA0j
					; .text:004ADAAEj
		xor	eax, eax
		jmp	loc_4ADE13
; ---------------------------------------------------------------------------

loc_4ADABF:				; CODE XREF: .text:004AD9C8j
					; .text:004AD9D5j ...
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_4ADBE3
		mov	edx, [ebp-2Ch]
		test	byte ptr [edx+5], 6
		jz	loc_4ADBE3
		mov	ecx, [ebp-2Ch]
		mov	esi, [ebx+4]
		sub	esi, [ecx+6]
		lea	eax, [esi+4]
		cmp	eax, [ebx+4]
		jbe	loc_4ADBE3
		push	1		; mode
		push	4		; size
		push	esi		; _addr
		lea	edx, [ebp-18h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_4ADBE3
		lea	ecx, [ebp-1Ch]
		push	ecx		; procaddr
		mov	eax, [ebp-18h]
		push	eax		; retaddr
		call	Isretaddr
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_4ADBE3
		mov	edx, 1
		cmp	g_IsUseDbghelp,	0
		jz	short loc_4ADB39
		cmp	dword_5D3A5C, 0
		jnz	short loc_4ADB3A

loc_4ADB39:				; CODE XREF: .text:004ADB2Ej
		dec	edx

loc_4ADB3A:				; CODE XREF: .text:004ADB37j
		mov	[ebx+2E4h], edx
		lea	eax, [esi+4]
		mov	ecx, [ebp-14h]
		xor	edx, edx
		mov	[ebx+2E8h], ecx
		mov	[ebx+2ECh], eax
		mov	[ebp-10h], edx
		mov	ecx, esi
		push	1		; mode
		sub	ecx, 4
		push	4		; size
		push	ecx		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, [ebp-10h]
		jnb	short loc_4ADB8D
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-10h]
		add	ecx, [ebp+10h]
		add	edx, 8
		cmp	edx, ecx
		ja	short loc_4ADB8D
		mov	eax, [ebp-10h]
		mov	[ebx+2F0h], eax
		jmp	short loc_4ADB95
; ---------------------------------------------------------------------------

loc_4ADB8D:				; CODE XREF: .text:004ADB70j
					; .text:004ADB80j
		xor	edx, edx
		mov	[ebx+2F0h], edx

loc_4ADB95:				; CODE XREF: .text:004ADB8Bj
		test	edi, edi
		jz	short loc_4ADBA8
		cmp	dword ptr [edi+14h], 0
		jz	short loc_4ADBA8
		mov	ecx, [edi]
		add	ecx, [edi+14h]
		cmp	ecx, [ebx]
		jbe	short loc_4ADBAF

loc_4ADBA8:				; CODE XREF: .text:004ADB97j
					; .text:004ADB9Dj
		or	dword ptr [ebx+2E4h], 2

loc_4ADBAF:				; CODE XREF: .text:004ADBA6j
		mov	[ebx+2F4h], esi
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4ADBC6
		mov	eax, [ebp-1Ch]
		mov	[ebx+2F8h], eax
		jmp	short loc_4ADBDC
; ---------------------------------------------------------------------------

loc_4ADBC6:				; CODE XREF: .text:004ADBB9j
		test	edi, edi
		jz	short loc_4ADBD4
		mov	edx, [edi]
		mov	[ebx+2F8h], edx
		jmp	short loc_4ADBDC
; ---------------------------------------------------------------------------

loc_4ADBD4:				; CODE XREF: .text:004ADBC8j
		xor	ecx, ecx
		mov	[ebx+2F8h], ecx

loc_4ADBDC:				; CODE XREF: .text:004ADBC4j
					; .text:004ADBD2j
		xor	eax, eax
		jmp	loc_4ADE13
; ---------------------------------------------------------------------------

loc_4ADBE3:				; CODE XREF: .text:004ADAC3j
					; .text:004ADAD0j ...
		test	edi, edi
		jz	loc_4ADD64
		mov	esi, [edi+10h]
		add	esi, [ebx+4]
		xor	eax, eax
		mov	[ebp-4], eax

loc_4ADBF6:				; CODE XREF: .text:004ADD5Ej
		cmp	esi, [ebp+0Ch]
		jb	loc_4ADD64
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	esi, edx
		jnb	loc_4ADD64
		push	1		; mode
		push	4		; size
		push	esi		; _addr
		lea	ecx, [ebp-18h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_4ADD64
		lea	eax, [ebp-1Ch]
		push	eax		; procaddr
		mov	edx, [ebp-18h]
		push	edx		; retaddr
		call	Isretaddr
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_4ADD54
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_4ADD54
		mov	ecx, [edi]
		cmp	ecx, [ebp-1Ch]
		jnz	short loc_4ADC5E
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4ADCAF
; ---------------------------------------------------------------------------

loc_4ADC5E:				; CODE XREF: .text:004ADC53j
		xor	eax, eax
		mov	[ebp-8], eax
		mov	eax, [edi]
		cmp	eax, [ebp-1Ch]
		jnb	short loc_4ADCAF
		add	eax, [edi+4]
		cmp	eax, [ebp-1Ch]
		jbe	short loc_4ADCAF
		push	0		; psize
		mov	edx, [ebp-1Ch]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4ADC92
		test	byte ptr [eax],	1Eh
		jz	short loc_4ADC92
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4ADCAF
; ---------------------------------------------------------------------------

loc_4ADC92:				; CODE XREF: .text:004ADC82j
					; .text:004ADC87j
		push	29h		; type3
		push	24h		; type2
		push	22h		; type1
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		call	Isdataavailable
		add	esp, 10h
		test	eax, eax
		jz	short loc_4ADCAF
		mov	dword ptr [ebp-8], 1

loc_4ADCAF:				; CODE XREF: .text:004ADC5Cj
					; .text:004ADC68j ...
		cmp	dword ptr [ebp-8], 0
		jz	loc_4ADD54
		mov	dword ptr [ebx+2E4h], 1
		mov	eax, [ebp-14h]
		lea	edx, [esi+4]
		mov	[ebx+2E8h], eax
		mov	[ebx+2ECh], edx
		xor	ecx, ecx
		mov	eax, esi
		mov	[ebp-10h], ecx
		push	1		; mode
		sub	eax, 4
		push	4		; size
		push	eax		; _addr
		lea	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, [ebp-10h]
		jnb	short loc_4ADD10
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-10h]
		add	eax, [ebp+10h]
		add	ecx, 8
		cmp	ecx, eax
		ja	short loc_4ADD10
		mov	edx, [ebp-10h]
		mov	[ebx+2F0h], edx
		jmp	short loc_4ADD18
; ---------------------------------------------------------------------------

loc_4ADD10:				; CODE XREF: .text:004ADCF3j
					; .text:004ADD03j
		xor	ecx, ecx
		mov	[ebx+2F0h], ecx

loc_4ADD18:				; CODE XREF: .text:004ADD0Ej
		mov	eax, [edi+14h]
		test	eax, eax
		jz	short loc_4ADD27
		mov	edx, [edi]
		add	edx, eax
		cmp	edx, [ebx]
		jbe	short loc_4ADD2E

loc_4ADD27:				; CODE XREF: .text:004ADD1Dj
		or	dword ptr [ebx+2E4h], 2

loc_4ADD2E:				; CODE XREF: .text:004ADD25j
		mov	[ebx+2F4h], esi
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4ADD45
		mov	ecx, [ebp-1Ch]
		mov	[ebx+2F8h], ecx
		jmp	short loc_4ADD4D
; ---------------------------------------------------------------------------

loc_4ADD45:				; CODE XREF: .text:004ADD38j
		mov	eax, [edi]
		mov	[ebx+2F8h], eax

loc_4ADD4D:				; CODE XREF: .text:004ADD43j
		xor	eax, eax
		jmp	loc_4ADE13
; ---------------------------------------------------------------------------

loc_4ADD54:				; CODE XREF: .text:004ADC3Ej
					; .text:004ADC48j ...
		inc	dword ptr [ebp-4]
		add	esi, 4
		cmp	dword ptr [ebp-4], 18h
		jl	loc_4ADBF6

loc_4ADD64:				; CODE XREF: .text:004ADBE5j
					; .text:004ADBF9j ...
		mov	eax, [ebx+8]
		cmp	eax, [ebp+0Ch]
		jb	loc_4ADE10
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		sub	edx, 8
		cmp	eax, edx
		jnb	loc_4ADE10
		push	1		; mode
		push	8		; size
		push	eax		; _addr
		lea	ecx, [ebp-28h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 8
		jnz	short loc_4ADE10
		mov	eax, [ebp-28h]
		cmp	eax, [ebp+0Ch]
		jb	short loc_4ADE10
		mov	edx, [ebx+8]
		add	edx, 8
		cmp	eax, edx
		jb	short loc_4ADE10
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		sub	ecx, 8
		cmp	eax, ecx
		jnb	short loc_4ADE10
		lea	eax, [ebp-1Ch]
		push	eax		; procaddr
		mov	edx, [ebp-24h]
		push	edx		; retaddr
		call	Isretaddr
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4ADE10
		mov	dword ptr [ebx+2E4h], 1
		mov	ecx, [ebp-14h]
		mov	[ebx+2E8h], ecx
		mov	eax, [ebx+8]
		add	eax, 8
		mov	[ebx+2ECh], eax
		mov	edx, [ebp-28h]
		mov	[ebx+2F0h], edx
		mov	ecx, [ebx+8]
		add	ecx, 4
		mov	[ebx+2F4h], ecx
		mov	eax, [ebp-1Ch]
		mov	[ebx+2F8h], eax
		xor	eax, eax
		jmp	short loc_4ADE13
; ---------------------------------------------------------------------------

loc_4ADE10:				; CODE XREF: .text:004ADD6Aj
					; .text:004ADD7Bj ...
		or	eax, 0FFFFFFFFh

loc_4ADE13:				; CODE XREF: .text:004AD8EFj
					; .text:004AD95Aj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4ADE1C:				; CODE XREF: .text:00409FCDp
					; .text:004AD37Bp ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 7

loc_4ADE25:				; CODE XREF: .text:004ADE2Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4ADE25
		add	esp, 0FFFFFEB0h
		mov	eax, [ebp-4]
		cmp	_callstk.hw, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		jz	loc_4AE368
		test	esi, esi
		jnz	short loc_4ADE55
		mov	esi, _callstk.custommode

loc_4ADE55:				; CODE XREF: .text:004ADE4Dj
		test	esi, esi
		jnz	short loc_4ADE60
		call	Getcputhreadid
		mov	esi, eax

loc_4ADE60:				; CODE XREF: .text:004ADE57j
		mov	_callstk.custommode, esi
		mov	ebx, _callstk.sorted.selected
		xor	eax, eax
		test	ebx, ebx
		jl	short loc_4ADE98

loc_4ADE72:				; CODE XREF: .text:004ADE96j
		push	ebx		; index
		push	offset _callstk.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		cmp	dword_5BE214, 0
		jnz	short loc_4ADE98
		test	eax, eax
		jz	short loc_4ADE98
		cmp	dword ptr [eax+10h], 0
		jl	short loc_4ADE98
		dec	ebx
		test	ebx, ebx
		jge	short loc_4ADE72

loc_4ADE98:				; CODE XREF: .text:004ADE70j
					; .text:004ADE87j ...
		test	eax, eax
		jnz	short loc_4ADEA3
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	short loc_4ADEA8
; ---------------------------------------------------------------------------

loc_4ADEA3:				; CODE XREF: .text:004ADE9Aj
		mov	ecx, [eax]
		mov	[ebp-0Ch], ecx

loc_4ADEA8:				; CODE XREF: .text:004ADEA1j
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		push	offset _callstk.sorted ; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		mov	_callstk.sorted.selected, 0FFFFFFFFh
		test	esi, esi
		jz	loc_4AE2B0
		cmp	run.status, 0
		jz	loc_4AE2B0
		push	esi		; threadid
		call	Findthread
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4AE2B0
		cmp	dword ptr [ebx+4ECh], 0
		jz	loc_4AE2B0
		mov	esi, [ebx+344h]
		test	esi, 3
		jnz	loc_4AE2B0
		push	esi		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4AE2B0
		call	Suspendallthreads
		mov	eax, [ebx+330h]
		lea	edi, [ebp-0A20h]
		mov	[ebp-0A34h], eax
		mov	[ebp-0A30h], esi
		mov	edx, [ebx+348h]
		lea	esi, [ebx+5Ch]
		mov	[ebp-0A2Ch], edx
		mov	dword ptr [ebp-0A28h], 1
		mov	ecx, [ebx+50h]
		mov	[ebp-0A24h], ecx
		mov	ecx, 0B3h
		rep movsd
		mov	dword ptr [ebp-754h], 1

loc_4ADF6C:				; CODE XREF: .text:004AE2A6j
		mov	eax, [ebp-10h]
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [ebp-10h]
		mov	eax, [ecx]
		push	eax		; base
		lea	edx, [ebp-0A34h]
		push	edx		; pf
		call	Findretaddrdata
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4AE2AB
		cmp	dword_5BE214, 0
		jnz	short loc_4ADFA5
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		jmp	loc_4AE034
; ---------------------------------------------------------------------------

loc_4ADFA5:				; CODE XREF: .text:004ADF97j
		mov	edi, [ebp-740h]
		lea	esi, [ebp-7154h]
		add	edi, 4
		xor	ebx, ebx

loc_4ADFB6:				; CODE XREF: .text:004AE00Fj
		mov	eax, ebx
		push	1		; mode
		shl	eax, 4
		lea	edx, [ebp-7150h]
		add	eax, ebx
		push	4		; size
		push	edi		; _addr
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		add	eax, edx
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_4ADFF9
		mov	ecx, 4
		cmp	dword_5BDD48, 0
		jnz	short loc_4ADFF2
		add	ecx, 0FFFFFFFCh

loc_4ADFF2:				; CODE XREF: .text:004ADFEDj
		or	ecx, 1
		mov	[esi], ecx
		jmp	short loc_4ADFFD
; ---------------------------------------------------------------------------

loc_4ADFF9:				; CODE XREF: .text:004ADFDFj
		xor	eax, eax
		mov	[esi], eax

loc_4ADFFD:				; CODE XREF: .text:004ADFF7j
		xor	edx, edx
		mov	[esi+8], edx
		add	esi, 44Ch
		inc	ebx
		add	edi, 4
		cmp	ebx, 18h
		jl	short loc_4ADFB6
		push	1		; follow
		push	0		; nexp
		push	0		; _name
		push	0		; rettype
		lea	ecx, [ebp-7154h]
		push	ecx		; adec
		push	0		; pd
		mov	eax, [ebp-73Ch]
		push	eax		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	[ebp-8], eax

loc_4AE034:				; CODE XREF: .text:004ADFA0j
		mov	eax, [ebp-740h]
		mov	[ebp-630h], eax
		cmp	eax, [ebp-0Ch]
		jnz	short loc_4AE05A
		mov	edx, _callstk.sorted.n
		mov	ecx, [ebp-0Ch]
		mov	_callstk.sorted.selected, edx
		mov	_callstk.sorted.seladdr, ecx

loc_4AE05A:				; CODE XREF: .text:004AE043j
		mov	dword ptr [ebp-62Ch], 1
		mov	eax, [ebp-750h]
		shl	eax, 10h
		mov	[ebp-628h], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4AE085
		or	dword ptr [ebp-628h], 2000h
		jmp	short loc_4AE095
; ---------------------------------------------------------------------------

loc_4AE085:				; CODE XREF: .text:004AE077j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_4AE095
		or	dword ptr [ebp-628h], 4000h

loc_4AE095:				; CODE XREF: .text:004AE083j
					; .text:004AE089j
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-740h]
		push	edx		; _addr
		lea	ecx, [ebp-624h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AE0BF
		or	dword ptr [ebp-628h], 1000h
		jmp	short loc_4AE0C7
; ---------------------------------------------------------------------------

loc_4AE0BF:				; CODE XREF: .text:004AE0B1j
		xor	eax, eax
		mov	[ebp-624h], eax

loc_4AE0C7:				; CODE XREF: .text:004AE0BDj
		mov	dword ptr [ebp-620h], 0FFFFFFFFh
		mov	edx, [ebp-73Ch]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-61Ch], eax
		mov	ecx, [ebp-0A2Ch]
		lea	edx, [ebp-630h]
		mov	[ebp-618h], ecx
		mov	eax, [ebp-74Ch]
		mov	[ebp-614h], eax
		mov	word ptr [ebp-610h], 0
		push	edx		; item
		push	offset _callstk.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		cmp	dword ptr [ebp-8], 0
		jle	loc_4AE282
		mov	edi, [ebp-740h]
		add	edi, 4
		cmp	edi, [ebp-0Ch]
		jnz	short loc_4AE144
		mov	eax, _callstk.sorted.n
		mov	edx, [ebp-0Ch]
		mov	_callstk.sorted.selected, eax
		mov	_callstk.sorted.seladdr, edx

loc_4AE144:				; CODE XREF: .text:004AE12Fj
		xor	ebx, ebx
		lea	esi, [ebp-7154h]
		cmp	ebx, [ebp-8]
		jge	loc_4AE282

loc_4AE155:				; CODE XREF: .text:004AE27Cj
		mov	[ebp-630h], edi
		mov	dword ptr [ebp-62Ch], 1
		mov	eax, [ebp-750h]
		shl	eax, 10h
		mov	[ebp-628h], eax
		test	byte ptr [esi],	1
		jz	short loc_4AE183
		or	dword ptr [ebp-628h], 1000h

loc_4AE183:				; CODE XREF: .text:004AE177j
		mov	edx, [ebp-8]
		dec	edx
		cmp	ebx, edx
		jnz	short loc_4AE195
		or	dword ptr [ebp-628h], 4000h

loc_4AE195:				; CODE XREF: .text:004AE189j
		mov	ecx, [esi+4]
		xor	eax, eax
		mov	[ebp-624h], ecx
		mov	[ebp-620h], ebx
		mov	[ebp-61Ch], eax
		mov	eax, ebx
		shl	eax, 4
		xor	edx, edx
		add	eax, ebx
		mov	[ebp-618h], edx
		lea	edx, [ebp-7108h]
		xor	ecx, ecx
		lea	eax, [ebx+eax*8]
		mov	[ebp-614h], ecx
		lea	ecx, [ebp-610h]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		add	eax, edx
		push	eax		; src
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	word ptr [esi+24Ch], 0
		jz	short loc_4AE25B
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4AE223
		push	offset asc_551E26 ; " =	"
		mov	eax, 100h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-610h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax

loc_4AE223:				; CODE XREF: .text:004AE1FAj
		mov	eax, ebx
		shl	eax, 4
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		lea	edx, [ebp-6F08h]
		add	eax, edx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, [ebp-4]
		push	ecx		; n
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-610h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4AE25B:				; CODE XREF: .text:004AE1F4j
		lea	ecx, [ebp-630h]
		push	ecx		; item
		push	offset _callstk.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		add	esi, 44Ch
		inc	ebx
		add	edi, 4
		cmp	ebx, [ebp-8]
		jl	loc_4AE155

loc_4AE282:				; CODE XREF: .text:004AE11Dj
					; .text:004AE14Fj
		mov	eax, [ebp-74Ch]
		mov	[ebp-0A34h], eax
		mov	edx, [ebp-748h]
		mov	[ebp-0A30h], edx
		mov	ecx, [ebp-744h]
		mov	[ebp-0A2Ch], ecx
		jmp	loc_4ADF6C
; ---------------------------------------------------------------------------

loc_4AE2AB:				; CODE XREF: .text:004ADF8Aj
		call	Resumeallthreads

loc_4AE2B0:				; CODE XREF: .text:004ADEC5j
					; .text:004ADED2j ...
		push	offset aCallStack_2 ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-410h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	edx, _callstk.custommode
		lea	ecx, [ebp-210h]
		push	8401h		; mode
		push	edx		; threadid
		push	ecx		; s
		call	Decodethreadname
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AE346
		push	offset aOf	; " of "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-410h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		lea	eax, [ebp-210h]
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-4]
		push	edx		; n
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-410h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4AE346:				; CODE XREF: .text:004AE2F0j
		lea	edx, [ebp-410h]
		push	edx		; lpString
		mov	ecx, _callstk.hparent
		push	ecx		; hWnd
		call	SetWindowTextW
		push	0		; bErase
		push	0		; lpRect
		mov	eax, _callstk.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_4AE368:				; CODE XREF: .text:004ADE45j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4AE370(void *dest, int, int, int, int, int)
loc_4AE370:				; DATA XREF: .text:004AE8EDo
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	esi, [ebp+18h]
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 9 cases
		cmp	eax, 8
		ja	loc_4AE67D	; jumptable 004AE38E default case
		jmp	ds:off_4AE395[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4AE395	dd offset loc_4AE3B9	; DATA XREF: .text:004AE38Er
		dd offset loc_4AE3C0	; jump table for switch	statement
		dd offset loc_4AE3C7
		dd offset loc_4AE3CE
		dd offset loc_4AE3D5
		dd offset loc_4AE3E8
		dd offset loc_4AE406
		dd offset loc_4AE5A7
		dd offset loc_4AE655
; ---------------------------------------------------------------------------

loc_4AE3B9:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		xor	eax, eax	; jumptable 004AE38E case -4
		jmp	loc_4AE67F
; ---------------------------------------------------------------------------

loc_4AE3C0:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		xor	eax, eax	; jumptable 004AE38E case -3
		jmp	loc_4AE67F
; ---------------------------------------------------------------------------

loc_4AE3C7:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		xor	eax, eax	; jumptable 004AE38E case -2
		jmp	loc_4AE67F
; ---------------------------------------------------------------------------

loc_4AE3CE:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		xor	eax, eax	; jumptable 004AE38E case -1
		jmp	loc_4AE67F
; ---------------------------------------------------------------------------

loc_4AE3D5:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		mov	edx, [esi]	; jumptable 004AE38E case 0
		push	edx		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4AE67D	; jumptable 004AE38E default case
; ---------------------------------------------------------------------------

loc_4AE3E8:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		test	byte ptr [esi+9], 10h ;	jumptable 004AE38E case	1
		jz	loc_4AE67D	; jumptable 004AE38E default case
		mov	eax, [esi+0Ch]
		push	eax		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4AE67D	; jumptable 004AE38E default case
; ---------------------------------------------------------------------------

loc_4AE406:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		mov	eax, [ebp+10h]	; jumptable 004AE38E case 2
		mov	dword ptr [eax], 100h
		cmp	dword_5BE214, 0
		jz	short loc_4AE479
		cmp	dword ptr [esi+10h], 0
		jge	short loc_4AE44E
		mov	edx, [esi+8]
		and	edx, 6000h
		sub	edx, 2000h
		jz	short loc_4AE439
		sub	edx, 2000h
		jz	short loc_4AE440
		jmp	short loc_4AE447
; ---------------------------------------------------------------------------

loc_4AE439:				; CODE XREF: .text:004AE42Dj
		mov	word ptr [edi],	1Dh
		jmp	short loc_4AE460
; ---------------------------------------------------------------------------

loc_4AE440:				; CODE XREF: .text:004AE435j
		mov	word ptr [edi],	18h
		jmp	short loc_4AE460
; ---------------------------------------------------------------------------

loc_4AE447:				; CODE XREF: .text:004AE437j
		mov	word ptr [edi],	1
		jmp	short loc_4AE460
; ---------------------------------------------------------------------------

loc_4AE44E:				; CODE XREF: .text:004AE41Cj
		test	byte ptr [esi+9], 40h
		jz	short loc_4AE45B
		mov	word ptr [edi],	1Ch
		jmp	short loc_4AE460
; ---------------------------------------------------------------------------

loc_4AE45B:				; CODE XREF: .text:004AE452j
		mov	word ptr [edi],	19h

loc_4AE460:				; CODE XREF: .text:004AE43Ej
					; .text:004AE445j ...
		test	byte ptr [esi+0Ah], 1
		jz	short loc_4AE46E
		mov	ecx, [ebp+0Ch]
		mov	byte ptr [ecx],	62h
		jmp	short loc_4AE474
; ---------------------------------------------------------------------------

loc_4AE46E:				; CODE XREF: .text:004AE464j
		mov	eax, [ebp+0Ch]
		mov	byte ptr [eax],	60h

loc_4AE474:				; CODE XREF: .text:004AE46Cj
		mov	ebx, 1

loc_4AE479:				; CODE XREF: .text:004AE416j
		cmp	dword ptr [esi+10h], 0
		jge	loc_4AE54A
		cmp	dword ptr [esi+14h], 0
		jnz	short loc_4AE4BE
		push	$CTW0("??? ")	; "???"
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	eax, [ebp-4]
		push	eax		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		add	edx, ebx
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		jmp	loc_4AE59F
; ---------------------------------------------------------------------------

loc_4AE4BE:				; CODE XREF: .text:004AE487j
		mov	ecx, 100h
		push	0		; comment
		sub	ecx, ebx
		lea	edi, [edi+ebx*2]
		push	ecx		; nsymb
		push	edi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [esi+14h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	[ebp-4], eax
		push	0		; subaddr
		mov	edx, [esi+14h]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AE530
		test	byte ptr [eax+9], 10h
		jz	short loc_4AE530
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_4AE511
		mov	eax, 6
		jmp	short loc_4AE525
; ---------------------------------------------------------------------------

loc_4AE511:				; CODE XREF: .text:004AE508j
		test	edx, 40000h
		jz	short loc_4AE520
		mov	eax, 5
		jmp	short loc_4AE525
; ---------------------------------------------------------------------------

loc_4AE520:				; CODE XREF: .text:004AE517j
		mov	eax, 4

loc_4AE525:				; CODE XREF: .text:004AE50Fj
					; .text:004AE51Ej
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 800h
		jmp	short loc_4AE535
; ---------------------------------------------------------------------------

loc_4AE530:				; CODE XREF: .text:004AE4F7j
					; .text:004AE4FDj
		mov	eax, 1

loc_4AE535:				; CODE XREF: .text:004AE52Ej
		mov	edx, [ebp-4]
		push	edx		; n
		push	eax		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_4AE59F
; ---------------------------------------------------------------------------

loc_4AE54A:				; CODE XREF: .text:004AE47Dj
		push	offset asc_551E56 ; "  "
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		add	esi, 20h
		mov	eax, 100h
		sub	eax, ebx
		push	esi		; src
		sub	eax, [ebp-4]
		lea	edi, [edi+ebx*2]
		push	eax		; n
		mov	eax, [ebp-4]
		add	eax, eax
		add	edi, eax
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		mov	edx, [ebp-4]
		push	edx		; n
		push	0		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_4AE59F:				; CODE XREF: .text:004AE4B9j
					; .text:004AE548j
		add	ebx, [ebp-4]
		jmp	loc_4AE67D	; jumptable 004AE38E default case
; ---------------------------------------------------------------------------

loc_4AE5A7:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		cmp	dword ptr [esi+10h], 0 ; jumptable 004AE38E case 3
		jge	loc_4AE67D	; jumptable 004AE38E default case
		cmp	dword ptr [esi+1Ch], 0
		jnz	short loc_4AE5D1
		push	$CTW0("??? ")	; "???"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4AE67D	; jumptable 004AE38E default case
; ---------------------------------------------------------------------------

loc_4AE5D1:				; CODE XREF: .text:004AE5B5j
		push	100h		; nsymb
		push	edi		; symb
		push	20008h		; addrmode
		mov	eax, [esi+1Ch]
		push	eax		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4AE60B
		push	0		; comment
		push	100h		; nsymb
		push	edi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [esi+1Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	ebx, eax

loc_4AE60B:				; CODE XREF: .text:004AE5ECj
		push	0		; subaddr
		mov	eax, [esi+1Ch]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AE67D ; jumptable 004AE38E default case
		test	byte ptr [eax+9], 10h
		jz	short loc_4AE67D ; jumptable 004AE38E default case
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4AE639
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 806h
		jmp	short loc_4AE67D ; jumptable 004AE38E default case
; ---------------------------------------------------------------------------

loc_4AE639:				; CODE XREF: .text:004AE62Cj
		test	byte ptr [eax+0Ah], 4
		jz	short loc_4AE64A
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 805h
		jmp	short loc_4AE67D ; jumptable 004AE38E default case
; ---------------------------------------------------------------------------

loc_4AE64A:				; CODE XREF: .text:004AE63Dj
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 804h
		jmp	short loc_4AE67D ; jumptable 004AE38E default case
; ---------------------------------------------------------------------------

loc_4AE655:				; CODE XREF: .text:004AE38Ej
					; DATA XREF: .text:off_4AE395o
		mov	eax, [esi+18h]	; jumptable 004AE38E case 4
		test	eax, eax
		jz	short loc_4AE67D ; jumptable 004AE38E default case
		test	byte ptr [esi+0Ah], 4
		jnz	short loc_4AE67D ; jumptable 004AE38E default case
		push	eax		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		test	byte ptr [esi+0Ah], 2
		jz	short loc_4AE67D ; jumptable 004AE38E default case
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 2

loc_4AE67D:				; CODE XREF: .text:004AE388j
					; .text:004AE3E3j ...
		mov	eax, ebx	; jumptable 004AE38E default case

loc_4AE67F:				; CODE XREF: .text:004AE3BBj
					; .text:004AE3C2j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4AE688:				; DATA XREF: .text:004AE8D1o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 470h
		jz	short loc_4AE6AF
		dec	eax
		jz	short loc_4AE6D9
		sub	eax, 14h
		jz	loc_4AE797
		sub	eax, 7
		jz	loc_4AE7A5
		jmp	loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE6AF:				; CODE XREF: .text:004AE693j
		cmp	dword ptr [ebp+14h], 2
		jnz	loc_4AE7B3
		cmp	dword_5BE214, 0
		push	0
		setz	dl
		and	edx, 1
		mov	dword_5BE214, edx
		call	loc_4ADE1C
		pop	ecx
		jmp	loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE6D9:				; CODE XREF: .text:004AE696j
		mov	ecx, [ebp+14h]
		shr	ecx, 10h
		sub	cx, 1
		jb	short loc_4AE6FB
		sub	cx, 2
		jb	short loc_4AE71D
		jz	short loc_4AE759
		dec	cx
		jz	loc_4AE778
		jmp	loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE6FB:				; CODE XREF: .text:004AE6E3j
		push	0		; index
		push	offset loc_4AD440 ; menufunc
		mov	eax, [ebp+8]
		mov	edx, [eax+218h]
		push	edx		; pm
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE71D:				; CODE XREF: .text:004AE6E9j
		push	0		; index
		push	offset loc_4AD4A8 ; menufunc
		mov	eax, [ebp+8]
		mov	edx, [eax+218h]
		push	edx		; pm
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Callmenufunction
		add	esp, 10h
		push	0		; index
		push	offset loc_4AD510 ; menufunc
		mov	eax, [ebp+8]
		mov	edx, [eax+218h]
		push	edx		; pm
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE759:				; CODE XREF: .text:004AE6EBj
		push	1		; index
		push	offset loc_4AD4A8 ; menufunc
		mov	eax, [ebp+8]
		mov	edx, [eax+218h]
		push	edx		; pm
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE778:				; CODE XREF: .text:004AE6F0j
		push	1		; index
		push	offset loc_4AD440 ; menufunc
		mov	eax, [ebp+8]
		mov	edx, [eax+218h]
		push	edx		; pm
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE797:				; CODE XREF: .text:004AE69Bj
		call	Getcputhreadid
		push	eax
		call	loc_4ADE1C
		pop	ecx
		jmp	short loc_4AE7B3
; ---------------------------------------------------------------------------

loc_4AE7A5:				; CODE XREF: .text:004AE6A4j
		or	dword_57FE7C, 1000h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AE7B3:				; CODE XREF: .text:004AE6AAj
					; .text:004AE6B3j ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4AE7B8:				; CODE XREF: .text:0040B085p
					; .text:004100CCp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aUnableToSetTem ; "Unable to set temporary breakpoint"
;__DebugBreak		
		cmp	_callstk.bar.nbar, 0
		jnz	loc_4AE907
		lea	eax, aCallStack_2;[ebx+95Ah]
		push	eax		; src
		push	20h		; n
		push	offset _callstk	; dest
		call	StrcopyW
		mov	_callstk.mode, 0F0000h
		lea	edx, $CTW0("Stack");[ebx+184h]
		mov	_callstk.bar.visible, 1
		mov	_callstk.bar._name, edx
		lea	ecx, aAddressOfItemOnTheStack;[ebx+988h]
		xor	eax, eax
		mov	_callstk.bar.expl, ecx
		mov	_callstk.bar.mode, eax
		lea	edx, aData_0;[ebx+9C2h]
		mov	_callstk.bar.defdx, 9
		mov	_callstk.bar._name+4, edx
		lea	ecx, aDataOnTheSpecifiedAddress;[ebx+9CCh]
		mov	_callstk.bar.expl+4, ecx
		xor	eax, eax
		mov	_callstk.bar.mode+4, eax
		lea	edx, aProcedure;[ebx+0A08h]
		mov	_callstk.bar.defdx+4, 9
		lea	ecx, aProcedureNameOrArgumentDec;[ebx+0A1Ch]
		mov	_callstk.bar._name+8, edx
		mov	_callstk.bar.expl+8, ecx
		mov	_callstk.bar.mode+8, 1
		lea	eax, aCalledFrom;[ebx+0A64h]
		mov	_callstk.bar.defdx+8, 2Dh
		mov	_callstk.bar._name+0Ch, eax
		lea	edx, aAddressOfCalle;[ebx+0A7Ch]
		xor	ecx, ecx
		mov	_callstk.bar.expl+0Ch, edx
		mov	_callstk.bar.mode+0Ch, ecx
		lea	eax, aFrame;[ebx+0AA0h]
		mov	_callstk.bar.defdx+0Ch,	1Ch
		lea	edx, aStackFrame;[ebx+0AACh]
		mov	_callstk.bar._name+10h, eax
		mov	_callstk.bar.expl+10h, edx
		xor	ecx, ecx
		mov	_callstk.bar.mode+10h, ecx
		mov	_callstk.bar.defdx+10h,	9
		mov	_callstk.bar.nbar, 5
		xor	eax, eax
		mov	_callstk.tabfunc, offset loc_4AE688
		xor	edx, edx
		mov	_callstk.customdata, eax
		mov	_callstk.updatefunc, edx
		add	esp, 0Ch
		xor	ecx, ecx
		mov	_callstk.drawfunc, offset loc_4AE370
		mov	_callstk.tableselfunc, ecx
		mov	_callstk.menu, offset stru_55130C

loc_4AE907:				; CODE XREF: .text:004AE7C8j
		cmp	_callstk.hw, 0
		jnz	short loc_4AE937
		lea	eax, $CTW0("");[ebx+43h]
		push	eax		; _title
		lea	edx, aIco_k;[ebx+0AC4h]
		push	edx		; icon
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, _callstk.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset _callstk	; pt
		call	Createtablewindow
		add	esp, 18h

loc_4AE937:				; CODE XREF: .text:004AE90Ej
		mov	edx, [ebp+8]
		push	edx
		call	loc_4ADE1C
		pop	ecx
		cmp	_callstk.hparent, 0
		jz	short loc_4AE996
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4AE996
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4AE96D
		push	0		; lParam
		mov	edx, _callstk.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4AE96D:				; CODE XREF: .text:004AE957j
		mov	ecx, _callstk.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4AE98A
		push	9		; nCmdShow
		mov	eax, _callstk.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4AE98A:				; CODE XREF: .text:004AE97Bj
		mov	edx, _callstk.hw
		push	edx		; hWnd
		call	SetFocus

loc_4AE996:				; CODE XREF: .text:004AE948j
					; .text:004AE94Ej
		mov	eax, _callstk.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl sub_4AE9A0(t_dump	*pd, ulong dumptype)
_sub_4AE9A0:				; CODE XREF: .text:004B75F9p
					; .text:004B7B5Fp
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4AEA10
		add	eax, 0A4h
		mov	edx, [ebp+0Ch]
		and	edx, 3400000h
		sub	edx, 400000h
		jz	short loc_4AE9E2
		sub	edx, 0C00000h
		jz	short loc_4AE9D2
		sub	edx, 400000h
		jz	short loc_4AE9F2
		jmp	short loc_4AEA02
; ---------------------------------------------------------------------------

loc_4AE9D2:				; CODE XREF: .text:004AE9C6j
		mov	dword ptr [eax+14h], offset aSource ; "Source"
		mov	dword ptr [eax+58h], offset aSourceCode	; "Source code"
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AE9E2:				; CODE XREF: .text:004AE9BEj
		mov	dword ptr [eax+14h], offset aProfileComment ; "Profile	Comments"
		mov	dword ptr [eax+58h], offset aProfileAndComm ; "Profile and comments"
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AE9F2:				; CODE XREF: .text:004AE9CEj
		mov	dword ptr [eax+14h], offset aProfileSource ; "Profile  Source"
		mov	dword ptr [eax+58h], offset aProfileAndSour ; "Profile and source code"
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AEA02:				; CODE XREF: .text:004AE9D0j
		mov	dword ptr [eax+14h], (offset aProfileComment+12h) ; "Comments"
		mov	dword ptr [eax+58h], (offset aProfileComment+12h) ; "Comments"

loc_4AEA10:				; CODE XREF: .text:004AE9A8j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4AEA14:				; CODE XREF: .text:004BF223p
					; .text:004BF9C2p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4AEA48
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4AEA48
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4AEA48
		mov	eax, [ebp+10h]
		mov	edx, [eax]
		cmp	edx, [ebx]
		jb	short loc_4AEA48
		mov	ecx, [ebx]
		mov	eax, [ebp+10h]
		add	ecx, [ebx+4]
		cmp	ecx, [eax]
		jnb	short loc_4AEA50

loc_4AEA48:				; CODE XREF: .text:004AEA25j
					; .text:004AEA2Bj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4AEF01
; ---------------------------------------------------------------------------

loc_4AEA50:				; CODE XREF: .text:004AEA46j
		mov	edx, [ebp+10h]
		test	esi, esi
		mov	ecx, [edx]
		mov	[ebp-28h], ecx
		jnz	short loc_4AEA7A
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4AEA7A
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4AEA73
		mov	eax, [ebx+284h]
		mov	edx, [ebp+1Ch]
		mov	[edx], eax

loc_4AEA73:				; CODE XREF: .text:004AEA66j
		xor	eax, eax
		jmp	loc_4AEF01
; ---------------------------------------------------------------------------

loc_4AEA7A:				; CODE XREF: .text:004AEA5Aj
					; .text:004AEA60j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AEA82
		xor	esi, esi

loc_4AEA82:				; CODE XREF: .text:004AEA7Ej
		cmp	esi, 0FFFFFF00h
		jge	short loc_4AEA91
		mov	esi, 0FFFFFF00h
		jmp	short loc_4AEA9E
; ---------------------------------------------------------------------------

loc_4AEA91:				; CODE XREF: .text:004AEA88j
		cmp	esi, 100h
		jle	short loc_4AEA9E
		mov	esi, 100h

loc_4AEA9E:				; CODE XREF: .text:004AEA8Fj
					; .text:004AEA97j
		cmp	dword ptr [ebp+18h], 0FFFFFF00h
		jge	short loc_4AEAB0
		mov	dword ptr [ebp+18h], 0FFFFFF00h
		jmp	short loc_4AEAC0
; ---------------------------------------------------------------------------

loc_4AEAB0:				; CODE XREF: .text:004AEAA5j
		cmp	dword ptr [ebp+18h], 100h
		jle	short loc_4AEAC0
		mov	dword ptr [ebp+18h], 100h

loc_4AEAC0:				; CODE XREF: .text:004AEAAEj
					; .text:004AEAB7j
		test	esi, esi
		jge	short loc_4AEADF
		add	[ebp-28h], esi
		mov	eax, [ebx]
		cmp	eax, [ebp-28h]
		ja	short loc_4AEAD8
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	edx, [ebp-28h]
		ja	short loc_4AEAFF

loc_4AEAD8:				; CODE XREF: .text:004AEACCj
		mov	ecx, [ebx]
		mov	[ebp-28h], ecx
		jmp	short loc_4AEAFF
; ---------------------------------------------------------------------------

loc_4AEADF:				; CODE XREF: .text:004AEAC2j
		test	esi, esi
		jle	short loc_4AEAFF
		add	[ebp-28h], esi
		mov	eax, [ebx]
		cmp	eax, [ebp-28h]
		ja	short loc_4AEAF7
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	edx, [ebp-28h]
		ja	short loc_4AEAFF

loc_4AEAF7:				; CODE XREF: .text:004AEAEBj
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		mov	[ebp-28h], ecx

loc_4AEAFF:				; CODE XREF: .text:004AEAD6j
					; .text:004AEADDj ...
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4AEB27
		test	byte ptr [ebx+0Bh], 8
		jz	short loc_4AEB1F
		cmp	dword ptr [ebx+4A4h], 0
		jz	short loc_4AEB1F
		mov	edi, [ebx+4A4h]
		jmp	short loc_4AEB61
; ---------------------------------------------------------------------------

loc_4AEB1F:				; CODE XREF: .text:004AEB0Cj
					; .text:004AEB15j
		mov	edi, [ebx+298h]
		jmp	short loc_4AEB61
; ---------------------------------------------------------------------------

loc_4AEB27:				; CODE XREF: .text:004AEB06j
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_4AEB31
		xor	edi, edi
		jmp	short loc_4AEB61
; ---------------------------------------------------------------------------

loc_4AEB31:				; CODE XREF: .text:004AEB2Bj
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_4AEB3F
		mov	edi, [ebx+4A4h]
		jmp	short loc_4AEB61
; ---------------------------------------------------------------------------

loc_4AEB3F:				; CODE XREF: .text:004AEB35j
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4AEB5A
		mov	edx, [eax]
		cmp	edx, [ebx]
		jnz	short loc_4AEB5A
		mov	ecx, [eax+4]
		cmp	ecx, [ebx+4]
		jnb	short loc_4AEB5E

loc_4AEB5A:				; CODE XREF: .text:004AEB4Aj
					; .text:004AEB50j
		xor	edi, edi
		jmp	short loc_4AEB61
; ---------------------------------------------------------------------------

loc_4AEB5E:				; CODE XREF: .text:004AEB58j
		mov	edi, [eax+60h]

loc_4AEB61:				; CODE XREF: .text:004AEB1Dj
					; .text:004AEB25j ...
		mov	eax, [ebx+8]
		and	eax, 0FF00h
		shr	eax, 8
		mov	[ebp-0Ch], eax
		mov	edx, [ebx+284h]
		mov	[ebp-2Ch], edx
		mov	eax, [ebx]
		cmp	eax, [ebp-2Ch]
		ja	short loc_4AEB89
		mov	edx, eax
		add	edx, [ebx+4]
		cmp	edx, [ebp-2Ch]
		ja	short loc_4AEB8C

loc_4AEB89:				; CODE XREF: .text:004AEB7Dj
		mov	[ebp-2Ch], eax

loc_4AEB8C:				; CODE XREF: .text:004AEB87j
		mov	ecx, [ebp-2Ch]
		add	ecx, 10000h
		cmp	ecx, [ebp-28h]
		jb	short loc_4AEBA7
		mov	eax, [ebp-28h]
		add	eax, 10000h
		cmp	eax, [ebp-2Ch]
		jnb	short loc_4AEBAD

loc_4AEBA7:				; CODE XREF: .text:004AEB98j
		mov	edx, [ebp-28h]
		mov	[ebp-2Ch], edx

loc_4AEBAD:				; CODE XREF: .text:004AEBA5j
		mov	ecx, [ebp-28h]
		mov	[ebp-34h], ecx
		mov	[ebp-30h], ecx
		test	esi, esi
		jl	short loc_4AEBC0
		cmp	dword ptr [ebp+18h], 0
		jge	short loc_4AEBCE

loc_4AEBC0:				; CODE XREF: .text:004AEBB8j
		mov	eax, [ebp+18h]
		imul	dword ptr [ebp-0Ch]
		add	eax, [ebp-28h]
		mov	[ebp-30h], eax
		jmp	short loc_4AEBDB
; ---------------------------------------------------------------------------

loc_4AEBCE:				; CODE XREF: .text:004AEBBEj
		mov	edx, [ebp+18h]
		imul	edx, [ebp-0Ch]
		add	edx, [ebp-28h]
		mov	[ebp-34h], edx

loc_4AEBDB:				; CODE XREF: .text:004AEBCCj
		mov	eax, [ebp-30h]
		cmp	eax, [ebp-2Ch]
		jbe	short loc_4AEBE9
		mov	edx, [ebp-2Ch]
		mov	[ebp-30h], edx

loc_4AEBE9:				; CODE XREF: .text:004AEBE1j
		mov	ecx, [ebp-34h]
		cmp	ecx, [ebp-2Ch]
		jnb	short loc_4AEBF7
		mov	eax, [ebp-2Ch]
		mov	[ebp-34h], eax

loc_4AEBF7:				; CODE XREF: .text:004AEBEFj
		mov	edx, [ebp-30h]
		cmp	edx, [ebp-2Ch]
		jnb	short loc_4AEC08
		mov	ecx, [ebp-0Ch]
		add	ecx, 40h
		sub	[ebp-30h], ecx

loc_4AEC08:				; CODE XREF: .text:004AEBFDj
		mov	eax, [ebx]
		cmp	eax, [ebp-30h]
		ja	short loc_4AEC19
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	edx, [ebp-30h]
		ja	short loc_4AEC1E

loc_4AEC19:				; CODE XREF: .text:004AEC0Dj
		mov	ecx, [ebx]
		mov	[ebp-30h], ecx

loc_4AEC1E:				; CODE XREF: .text:004AEC17j
		add	dword ptr [ebp-34h], 4
		mov	eax, [ebx]
		cmp	eax, [ebp-34h]
		ja	short loc_4AEC33
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	edx, [ebp-34h]
		ja	short loc_4AEC3B

loc_4AEC33:				; CODE XREF: .text:004AEC27j
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		mov	[ebp-34h], ecx

loc_4AEC3B:				; CODE XREF: .text:004AEC31j
		mov	eax, [ebp-0Ch]
		mov	ecx, 5
		cdq
		idiv	ecx
		mov	esi, [ebp-34h]
		mov	ecx, eax
		sub	esi, [ebp-30h]
		test	ecx, ecx
		jnz	short loc_4AEC57
		mov	ecx, 1		; int

loc_4AEC57:				; CODE XREF: .text:004AEC50j
		mov	eax, esi
		xor	edx, edx
		div	ecx
		add	eax, 2
		mov	[ebp-18h], eax
		push	1		; flags
		test	edi, edi
		jnz	short loc_4AEC6F
		mov	eax, esi
		add	eax, eax
		jmp	short loc_4AEC71
; ---------------------------------------------------------------------------

loc_4AEC6F:				; CODE XREF: .text:004AEC67j
		mov	eax, esi

loc_4AEC71:				; CODE XREF: .text:004AEC6Dj
		mov	edx, [ebp-18h]
		shl	edx, 2		; int
		add	eax, edx	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_4AEC93
		or	eax, 0FFFFFFFFh
		jmp	loc_4AEF01
; ---------------------------------------------------------------------------

loc_4AEC93:				; CODE XREF: .text:004AEC89j
		mov	edx, [ebp-3Ch]
		mov	[ebp-38h], edx
		mov	ecx, [ebp-18h]
		shl	ecx, 2
		add	ecx, [ebp-3Ch]
		test	edi, edi
		mov	[ebp-40h], ecx
		jnz	short loc_4AECDA
		mov	edi, [ebp-18h]
		shl	edi, 2
		add	edi, [ebp-3Ch]
		push	1		; mode
		push	esi		; size
		add	edi, esi
		mov	eax, [ebp-30h]
		push	eax		; _addr
		push	edi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, eax
		jz	short loc_4AECE1
		mov	edx, [ebp-3Ch]
		push	edx		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4AEF01
; ---------------------------------------------------------------------------

loc_4AECDA:				; CODE XREF: .text:004AECA7j
		mov	edx, [ebp-30h]
		sub	edx, [ebx]
		add	edi, edx

loc_4AECE1:				; CODE XREF: .text:004AECC6j
		lea	ecx, [ebp-14h]
		mov	edx, mbcscodepage
		push	ecx		; nBytes
		push	0		; a6
		mov	eax, [ebp-40h]
		push	eax		; sel1
		push	esi		; cb
		push	esi		; nb
		push	edi		; sel0
		push	edx		; CodePage
		call	Getmbstringinfo
		add	esp, 1Ch
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AED0D
		mov	ecx, [ebp-14h]
		cmp	ecx, esi
		jz	short loc_4AED1F

loc_4AED0D:				; CODE XREF: .text:004AED04j
		mov	eax, [ebp-3Ch]
		push	eax		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4AEF01
; ---------------------------------------------------------------------------

loc_4AED1F:				; CODE XREF: .text:004AED0Bj
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-10h]
		jge	short loc_4AED2C
		lea	ecx, [ebp-0Ch]
		jmp	short loc_4AED2F
; ---------------------------------------------------------------------------

loc_4AED2C:				; CODE XREF: .text:004AED25j
		lea	ecx, [ebp-10h]

loc_4AED2F:				; CODE XREF: .text:004AED2Aj
		mov	eax, [ecx]
		dec	eax
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	loc_4AEE45

loc_4AED3F:				; CODE XREF: .text:004AEE3Fj
		mov	edx, [ebp-38h]
		mov	ebx, [ebp-30h]
		xor	eax, eax
		xor	ecx, ecx
		mov	[edx], ebx
		xor	edx, edx
		mov	[ebp-20h], eax
		mov	[ebp-24h], edx
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4AED63
		mov	eax, [ebp-38h]
		mov	edx, [eax]
		cmp	edx, [ebp-2Ch]
		jnz	short loc_4AED73

loc_4AED63:				; CODE XREF: .text:004AED57j
		xor	edx, edx
		xor	eax, eax
		mov	[ebp-8], eax
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_4AEDA6
; ---------------------------------------------------------------------------

loc_4AED73:				; CODE XREF: .text:004AED61j
		xor	edx, edx
		mov	eax, [ebp-40h]
		mov	[ebp-44h], eax
		cmp	edx, [ebp-4]
		jge	short loc_4AED91

loc_4AED80:				; CODE XREF: .text:004AED8Fj
		mov	eax, [ebp-44h]
		inc	edx
		movzx	eax, byte ptr [eax]
		inc	dword ptr [ebp-44h]
		add	ecx, eax
		cmp	edx, [ebp-4]
		jl	short loc_4AED80

loc_4AED91:				; CODE XREF: .text:004AED7Ej
		cmp	ecx, [ebp-0Ch]
		jg	loc_4AEE38
		mov	dword ptr [ebp-8], 1
		xor	eax, eax
		mov	[ebp-1Ch], eax

loc_4AEDA6:				; CODE XREF: .text:004AED71j
		mov	eax, [ebp-38h]
		mov	esi, [ebp-8]
		lea	eax, [eax+esi*4]
		mov	[ebp-44h], eax
		jmp	short loc_4AEE10
; ---------------------------------------------------------------------------

loc_4AEDB4:				; CODE XREF: .text:004AEE1Cj
		add	ebx, ecx
		mov	ecx, [ebp-44h]
		mov	[ecx], ebx
		cmp	ebx, [ebp-2Ch]
		ja	short loc_4AEDC6
		mov	eax, [ebp-8]
		mov	[ebp-20h], eax

loc_4AEDC6:				; CODE XREF: .text:004AEDBEj
		cmp	ebx, [ebp-28h]
		ja	short loc_4AEDD1
		mov	ecx, [ebp-8]
		mov	[ebp-24h], ecx

loc_4AEDD1:				; CODE XREF: .text:004AEDC9j
		cmp	ebx, [ebp-2Ch]
		jnz	short loc_4AEDDF
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_4AEDEA
; ---------------------------------------------------------------------------

loc_4AEDDF:				; CODE XREF: .text:004AEDD4j
		cmp	ebx, [ebp-2Ch]
		jbe	short loc_4AEDEA
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4AEE1E

loc_4AEDEA:				; CODE XREF: .text:004AEDDDj
					; .text:004AEDE2j
		xor	ecx, ecx
		mov	eax, [ebp-40h]
		add	eax, edx
		jmp	short loc_4AEDFA
; ---------------------------------------------------------------------------

loc_4AEDF3:				; CODE XREF: .text:004AEE07j
		movzx	esi, byte ptr [eax]
		add	ecx, esi
		inc	edx
		inc	eax

loc_4AEDFA:				; CODE XREF: .text:004AEDF1j
		cmp	edx, [ebp-10h]
		jge	short loc_4AEE09
		movzx	esi, byte ptr [eax]
		add	esi, ecx
		cmp	esi, [ebp-0Ch]
		jle	short loc_4AEDF3

loc_4AEE09:				; CODE XREF: .text:004AEDFDj
		inc	dword ptr [ebp-8]
		add	dword ptr [ebp-44h], 4

loc_4AEE10:				; CODE XREF: .text:004AEDB2j
		cmp	edx, [ebp-10h]
		jge	short loc_4AEE1E
		mov	eax, [ebp-18h]
		dec	eax
		cmp	eax, [ebp-8]
		jg	short loc_4AEDB4

loc_4AEE1E:				; CODE XREF: .text:004AEDE8j
					; .text:004AEE13j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4AEE38
		mov	edx, [ebp-38h]
		mov	ecx, [ebp-8]
		mov	eax, [ebp-34h]
		mov	[edx+ecx*4], eax
		mov	edx, [ebp-8]
		mov	[ebp-18h], edx
		jmp	short loc_4AEE45
; ---------------------------------------------------------------------------

loc_4AEE38:				; CODE XREF: .text:004AED94j
					; .text:004AEE22j
		dec	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0
		jge	loc_4AED3F

loc_4AEE45:				; CODE XREF: .text:004AED39j
					; .text:004AEE36j
		mov	ecx, [ebp-38h]
		mov	eax, [ebp-24h]
		push	dword ptr [ecx+eax*4]
		mov	eax, [ebp-28h]
		pop	edx
		sub	eax, edx
		mov	ecx, [ebp+18h]
		add	[ebp-24h], ecx
		mov	edx, [ebp-24h]
		cmp	edx, [ebp-18h]
		jl	short loc_4AEE69
		mov	ecx, [ebp-18h]
		dec	ecx
		mov	[ebp-24h], ecx

loc_4AEE69:				; CODE XREF: .text:004AEE60j
		cmp	dword ptr [ebp-24h], 0
		jge	short loc_4AEE74
		xor	edx, edx
		mov	[ebp-24h], edx

loc_4AEE74:				; CODE XREF: .text:004AEE6Dj
		mov	ecx, [ebp-38h]
		mov	edx, [ebp-24h]
		mov	ecx, [ecx+edx*4+4]
		mov	edx, [ebp-38h]
		mov	ebx, [ebp-24h]
		sub	ecx, [edx+ebx*4]
		cmp	eax, ecx
		jb	short loc_4AEE9F
		mov	eax, [ebp-38h]
		mov	edx, [ebp-24h]
		mov	eax, [eax+edx*4+4]
		mov	edx, [ebp-38h]
		mov	ecx, [ebp-24h]
		sub	eax, [edx+ecx*4]
		dec	eax

loc_4AEE9F:				; CODE XREF: .text:004AEE89j
		cmp	eax, [ebp-0Ch]
		jl	short loc_4AEEA8
		mov	eax, [ebp-0Ch]
		dec	eax

loc_4AEEA8:				; CODE XREF: .text:004AEEA2j
		mov	edx, [ebp-38h]
		mov	ecx, [ebp-24h]
		add	eax, [edx+ecx*4]
		mov	edx, [ebp+10h]
		mov	[edx], eax
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4AEEF5
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-20h]
		jge	short loc_4AEED2
		mov	ecx, [ebp-38h]
		mov	eax, [ebp-24h]
		mov	edx, [ecx+eax*4]
		mov	[ebp-2Ch], edx
		jmp	short loc_4AEEED
; ---------------------------------------------------------------------------

loc_4AEED2:				; CODE XREF: .text:004AEEC2j
		mov	ecx, [ebp-24h]
		sub	ecx, [ebp-20h]
		cmp	ecx, [ebp+0Ch]
		jl	short loc_4AEEED
		mov	eax, [ebp-24h]
		sub	eax, [ebp+0Ch]
		mov	edx, [ebp-38h]
		mov	ecx, [edx+eax*4+4]
		mov	[ebp-2Ch], ecx

loc_4AEEED:				; CODE XREF: .text:004AEED0j
					; .text:004AEEDBj
		mov	eax, [ebp+1Ch]
		mov	edx, [ebp-2Ch]
		mov	[eax], edx

loc_4AEEF5:				; CODE XREF: .text:004AEEBAj
		mov	ecx, [ebp-3Ch]
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax

loc_4AEF01:				; CODE XREF: .text:004AEA4Bj
					; .text:004AEA75j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4AEF08(int, char arglist)
loc_4AEF08:				; CODE XREF: .text:004BFC22p
					; .text:004BFCF4p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4AEF27
		cmp	esi, [ebx]
		jb	short loc_4AEF27
		mov	eax, [ebx]
		add	eax, [ebx+4]
		cmp	esi, eax
		jb	short loc_4AEF2E

loc_4AEF27:				; CODE XREF: .text:004AEF18j
					; .text:004AEF1Cj
		mov	eax, esi
		jmp	loc_4AEFF5
; ---------------------------------------------------------------------------

loc_4AEF2E:				; CODE XREF: .text:004AEF25j
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4AEF56
		test	byte ptr [ebx+0Bh], 8
		jz	short loc_4AEF4E
		cmp	dword ptr [ebx+4A4h], 0
		jz	short loc_4AEF4E
		mov	eax, [ebx+4A4h]
		jmp	short loc_4AEF90
; ---------------------------------------------------------------------------

loc_4AEF4E:				; CODE XREF: .text:004AEF3Bj
					; .text:004AEF44j
		mov	eax, [ebx+298h]
		jmp	short loc_4AEF90
; ---------------------------------------------------------------------------

loc_4AEF56:				; CODE XREF: .text:004AEF35j
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_4AEF60
		xor	eax, eax
		jmp	short loc_4AEF90
; ---------------------------------------------------------------------------

loc_4AEF60:				; CODE XREF: .text:004AEF5Aj
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_4AEF6E
		mov	eax, [ebx+4A4h]
		jmp	short loc_4AEF90
; ---------------------------------------------------------------------------

loc_4AEF6E:				; CODE XREF: .text:004AEF64j
		mov	edx, [ebx]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4AEF89
		mov	ecx, [eax]
		cmp	ecx, [ebx]
		jnz	short loc_4AEF89
		mov	edx, [eax+4]
		cmp	edx, [ebx+4]
		jnb	short loc_4AEF8D

loc_4AEF89:				; CODE XREF: .text:004AEF79j
					; .text:004AEF7Fj
		xor	eax, eax
		jmp	short loc_4AEF90
; ---------------------------------------------------------------------------

loc_4AEF8D:				; CODE XREF: .text:004AEF87j
		mov	eax, [eax+60h]

loc_4AEF90:				; CODE XREF: .text:004AEF4Cj
					; .text:004AEF54j ...
		test	eax, eax
		jnz	short loc_4AEFB4
		push	5		; mode
		push	5		; size
		push	esi		; _addr
		lea	ecx, [ebp-8]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edx, eax
		test	edx, edx
		jnz	short loc_4AEFAF
		mov	eax, esi
		jmp	short loc_4AEFF5
; ---------------------------------------------------------------------------

loc_4AEFAF:				; CODE XREF: .text:004AEFA9j
		lea	eax, [ebp-8]
		jmp	short loc_4AEFCB
; ---------------------------------------------------------------------------

loc_4AEFB4:				; CODE XREF: .text:004AEF92j
		mov	edx, [ebx]
		mov	ecx, esi
		sub	ecx, edx
		add	edx, [ebx+4]
		sub	edx, esi
		add	eax, ecx
		cmp	edx, 5
		jbe	short loc_4AEFCB
		mov	edx, 5

loc_4AEFCB:				; CODE XREF: .text:004AEFB2j
					; .text:004AEFC4j
		push	0		; nBytes
		push	0		; a6
		lea	ebx, [ebp-10h]
		push	ebx		; sel1
		mov	ecx, edx
		push	ecx		; cb
		push	ecx		; nb
		push	eax		; sel0
		mov	eax, mbcscodepage
		push	eax		; CodePage
		call	Getmbstringinfo
		add	esp, 1Ch
		test	eax, eax
		jnz	short loc_4AEFEE
		mov	eax, esi
		jmp	short loc_4AEFF5
; ---------------------------------------------------------------------------

loc_4AEFEE:				; CODE XREF: .text:004AEFE8j
		xor	eax, eax
		mov	al, [ebp-10h]
		add	eax, esi

loc_4AEFF5:				; CODE XREF: .text:004AEF29j
					; .text:004AEFADj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4AEFFC:				; CODE XREF: .text:004BFB71p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFCCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4AF017
		or	eax, 0FFFFFFFFh
		jmp	loc_4AF2AE
; ---------------------------------------------------------------------------

loc_4AF017:				; CODE XREF: .text:004AF00Dj
		mov	eax, [ebx+8]
		or	esi, 0FFFFFFFFh
		mov	ecx, eax
		mov	edx, eax
		and	ecx, 0FF00h
		and	edx, 0FFh
		shr	ecx, 8
		mov	[ebp-4], edx
		mov	edx, ecx
		and	eax, 3F0000h
		imul	edx, [ebp-4]
		mov	[ebp-8], edx
		cmp	eax, 80000h
		jg	short loc_4AF0A7
		jz	loc_4AF1C3
		cmp	eax, 40000h
		jg	short loc_4AF081
		jz	loc_4AF1C3
		sub	eax, 10000h
		jz	loc_4AF0F5
		sub	eax, 10000h
		jz	loc_4AF159
		sub	eax, 10000h
		jz	loc_4AF1C3
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF081:				; CODE XREF: .text:004AF053j
		sub	eax, 50000h
		jz	loc_4AF1C3
		sub	eax, 10000h
		jz	loc_4AF1C3
		sub	eax, 10000h
		jz	loc_4AF1C3
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF0A7:				; CODE XREF: .text:004AF046j
		cmp	eax, 0C0000h
		jg	short loc_4AF0DA
		jz	loc_4AF208
		sub	eax, 90000h
		jz	loc_4AF1FC
		sub	eax, 10000h
		jz	loc_4AF1FC
		sub	eax, 10000h
		jz	loc_4AF1FC
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF0DA:				; CODE XREF: .text:004AF0ACj
		sub	eax, 0D0000h
		jz	loc_4AF208
		sub	eax, 10000h
		jz	loc_4AF226
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF0F5:				; CODE XREF: .text:004AF060j
		cmp	edi, 1
		jnz	short loc_4AF12B
		mov	eax, [ebp-8]
		dec	eax
		mov	[ebp-0Ch], eax
		mov	eax, [ebp+14h]
		xor	edx, edx
		div	dword ptr [ebx+10h]
		mov	[ebp-10h], eax
		mov	ecx, [ebp-10h]
		cmp	ecx, [ebp-0Ch]
		jnb	short loc_4AF119
		lea	eax, [ebp-10h]
		jmp	short loc_4AF11C
; ---------------------------------------------------------------------------

loc_4AF119:				; CODE XREF: .text:004AF112j
		lea	eax, [ebp-0Ch]

loc_4AF11C:				; CODE XREF: .text:004AF117j
		mov	esi, [eax]
		mov	eax, [ebp+10h]
		imul	dword ptr [ebp-8]
		add	esi, eax
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF12B:				; CODE XREF: .text:004AF0F8j
		cmp	edi, 2
		jnz	loc_4AF291
		mov	esi, [ebp+10h]
		mov	eax, [ebp-8]
		imul	esi, [ebp-8]
		dec	eax
		mov	[ebp-14h], eax
		mov	edx, [ebp+14h]
		cmp	edx, [ebp-14h]
		jnb	short loc_4AF14F
		lea	ecx, [ebp+14h]
		jmp	short loc_4AF152
; ---------------------------------------------------------------------------

loc_4AF14F:				; CODE XREF: .text:004AF148j
		lea	ecx, [ebp-14h]

loc_4AF152:				; CODE XREF: .text:004AF14Dj
		add	esi, [ecx]
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF159:				; CODE XREF: .text:004AF06Bj
		cmp	edi, 1
		jnz	short loc_4AF18F
		mov	eax, [ebp-8]
		dec	eax
		mov	[ebp-18h], eax
		mov	eax, [ebp+14h]
		xor	edx, edx
		div	dword ptr [ebx+10h]
		mov	[ebp-1Ch], eax
		mov	ecx, [ebp-1Ch]
		cmp	ecx, [ebp-18h]
		jnb	short loc_4AF17D
		lea	eax, [ebp-1Ch]
		jmp	short loc_4AF180
; ---------------------------------------------------------------------------

loc_4AF17D:				; CODE XREF: .text:004AF176j
		lea	eax, [ebp-18h]

loc_4AF180:				; CODE XREF: .text:004AF17Bj
		mov	esi, [eax]
		mov	eax, [ebp+10h]
		imul	dword ptr [ebp-8]
		add	esi, eax
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF18F:				; CODE XREF: .text:004AF15Cj
		cmp	edi, 2
		jnz	loc_4AF291
		mov	esi, [ebp+10h]
		mov	eax, [ebp-8]
		imul	esi, [ebp-8]
		shr	eax, 1
		dec	eax
		mov	[ebp-20h], eax
		mov	edx, [ebp+14h]
		cmp	edx, [ebp-20h]
		jnb	short loc_4AF1B5
		lea	ecx, [ebp+14h]
		jmp	short loc_4AF1B8
; ---------------------------------------------------------------------------

loc_4AF1B5:				; CODE XREF: .text:004AF1AEj
		lea	ecx, [ebp-20h]

loc_4AF1B8:				; CODE XREF: .text:004AF1B3j
		mov	eax, [ecx]
		add	eax, eax
		add	esi, eax
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF1C3:				; CODE XREF: .text:004AF048j
					; .text:004AF055j ...
		dec	edi
		jnz	loc_4AF291
		dec	ecx
		mov	[ebp-24h], ecx
		mov	eax, [ebp+14h]
		xor	edx, edx
		div	dword ptr [ebx+10h]
		mov	[ebp-28h], eax
		mov	ecx, [ebp-28h]
		cmp	ecx, [ebp-24h]
		jnb	short loc_4AF1E6
		lea	eax, [ebp-28h]
		jmp	short loc_4AF1E9
; ---------------------------------------------------------------------------

loc_4AF1E6:				; CODE XREF: .text:004AF1DFj
		lea	eax, [ebp-24h]

loc_4AF1E9:				; CODE XREF: .text:004AF1E4j
		mov	esi, [eax]
		mov	eax, [ebp+10h]
		imul	esi, [ebp-4]
		imul	dword ptr [ebp-8]
		add	esi, eax
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF1FC:				; CODE XREF: .text:004AF0B9j
					; .text:004AF0C4j ...
		mov	esi, [ebp+10h]
		imul	esi, [ebp-8]
		jmp	loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF208:				; CODE XREF: .text:004AF0AEj
					; .text:004AF0DFj
		mov	eax, [ebp+10h]
		push	eax		; n
		mov	edx, [ebx+284h]
		push	edx		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	esi, eax
		sub	esi, [ebx+284h]
		jmp	short loc_4AF291
; ---------------------------------------------------------------------------

loc_4AF226:				; CODE XREF: .text:004AF0EAj
		cmp	edi, 1
		jnz	short loc_4AF251
		mov	eax, [ebp-8]
		dec	eax
		mov	[ebp-2Ch], eax
		mov	eax, [ebp+14h]
		xor	edx, edx
		div	dword ptr [ebx+10h]
		mov	[ebp-30h], eax
		mov	ecx, [ebp-30h]
		cmp	ecx, [ebp-2Ch]
		jnb	short loc_4AF24A
		lea	eax, [ebp-30h]
		jmp	short loc_4AF24D
; ---------------------------------------------------------------------------

loc_4AF24A:				; CODE XREF: .text:004AF243j
		lea	eax, [ebp-2Ch]

loc_4AF24D:				; CODE XREF: .text:004AF248j
		mov	esi, [eax]
		jmp	short loc_4AF26F
; ---------------------------------------------------------------------------

loc_4AF251:				; CODE XREF: .text:004AF229j
		cmp	edi, 2
		jnz	short loc_4AF26F
		mov	eax, [ebp-8]
		dec	eax
		mov	[ebp-34h], eax
		mov	edx, [ebp+14h]
		cmp	edx, [ebp-34h]
		jnb	short loc_4AF26A
		lea	ecx, [ebp+14h]
		jmp	short loc_4AF26D
; ---------------------------------------------------------------------------

loc_4AF26A:				; CODE XREF: .text:004AF263j
		lea	ecx, [ebp-34h]

loc_4AF26D:				; CODE XREF: .text:004AF268j
		mov	esi, [ecx]

loc_4AF26F:				; CODE XREF: .text:004AF24Fj
					; .text:004AF254j
		push	0		; a5
		cmp	edi, 2
		setz	al
		and	eax, 1
		push	eax		; a4
		push	esi		; a3
		mov	edx, [ebp+10h]
		push	edx		; a2
		push	ebx		; pd
		call	Getmbdumpaddress
		add	esp, 14h
		sub	eax, [ebx+284h]
		mov	esi, eax

loc_4AF291:				; CODE XREF: .text:004AF07Cj
					; .text:004AF0A2j ...
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_4AF29B
		or	eax, 0FFFFFFFFh
		jmp	short loc_4AF2AE
; ---------------------------------------------------------------------------

loc_4AF29B:				; CODE XREF: .text:004AF294j
		mov	edx, [ebx]
		mov	eax, [ebx+284h]
		add	edx, [ebx+4]
		add	eax, esi
		cmp	edx, eax
		ja	short loc_4AF2AE
		mov	eax, edx

loc_4AF2AE:				; CODE XREF: .text:004AF012j
					; .text:004AF299j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4AF2B8(char arglist, int, int, int, void *s)
loc_4AF2B8:				; CODE XREF: .text:004BC846p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF8BCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+10h], 0
		mov	edi, [ebp+0Ch]
		jz	short loc_4AF2D3
		cmp	dword ptr [ebp+14h], 10h
		jge	short loc_4AF2DA

loc_4AF2D3:				; CODE XREF: .text:004AF2CBj
		xor	eax, eax
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF2DA:				; CODE XREF: .text:004AF2D1j
		push	120h		; datasize
		lea	edx, [ebp-144h]
		push	edx		; data
		push	34h		; type
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AF301
		xor	eax, eax
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF301:				; CODE XREF: .text:004AF2F8j
		xor	edx, edx
		mov	dl, [ebp-144h]
		cmp	edx, 3Dh
		jnz	short loc_4AF335
		mov	ecx, [ebp+14h]
		lea	edx, [ebp-143h]
		push	ecx		; nw
		mov	eax, [ebp+10h]
		push	eax		; w
		push	esi		; ns
		push	edx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	ebx, eax
		lea	eax, [ebx+1]
		mov	[ebp-4], eax
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_4AF355
; ---------------------------------------------------------------------------

loc_4AF335:				; CODE XREF: .text:004AF30Cj
		mov	ecx, [ebp+14h]
		lea	edx, [ebp-144h]
		push	ecx		; nw
		mov	eax, [ebp+10h]
		push	eax		; w
		push	esi		; ns
		push	edx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	[ebp-8], eax
		mov	[ebp-4], eax
		mov	ebx, eax

loc_4AF355:				; CODE XREF: .text:004AF333j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF36A
		push	ebx		; n
		push	2		; c
		mov	eax, [ebp+18h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF36A:				; CODE XREF: .text:004AF359j
		push	100h		; nw
		lea	edx, [ebp-744h]
		push	edx		; w
		sub	esi, [ebp-4]
		dec	esi
		push	esi		; ns
		lea	ecx, [ebp-143h]
		add	ecx, [ebp-4]
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		cmp	word ptr [ebp-744h], 0
		jz	short loc_4AF39F
		lea	eax, [ebx+5]
		cmp	eax, [ebp+14h]
		jle	short loc_4AF3A6

loc_4AF39F:				; CODE XREF: .text:004AF395j
		mov	eax, ebx
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF3A6:				; CODE XREF: .text:004AF39Dj
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-24h], eax
		test	edi, edi
		jz	loc_4AF594
		test	byte ptr [edi+4Fh], 2
		jz	loc_4AF594
		mov	eax, [edi+4ACh]
		test	eax, eax
		jz	short loc_4AF3D8
		test	ah, 20h
		jz	loc_4AF594

loc_4AF3D8:				; CODE XREF: .text:004AF3CDj
		lea	edx, [edi+8Ch]
		lea	eax, [ebp-742h]
		mov	[ebp-20h], edx
		mov	ecx, [edi+58h]
		mov	[ebp-14h], ecx
		push	offset aAtext	; s2
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4AF406
		mov	esi, 0Ah
		jmp	short loc_4AF427
; ---------------------------------------------------------------------------

loc_4AF406:				; CODE XREF: .text:004AF3FDj
		push	offset aWtext	; s2
		lea	eax, [ebp-742h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4AF425
		mov	esi, 0Ch
		jmp	short loc_4AF427
; ---------------------------------------------------------------------------

loc_4AF425:				; CODE XREF: .text:004AF41Cj
		xor	esi, esi

loc_4AF427:				; CODE XREF: .text:004AF404j
					; .text:004AF423j
		test	esi, esi
		jz	loc_4AF4D6
		test	byte ptr [ebp-744h], 7
		jnz	loc_4AF4D6
		test	byte ptr [edi+4Fh], 1
		jz	loc_4AF4D6
		lea	eax, [ebp-18h]
		push	eax		; psize
		mov	edx, [edi+88h]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebp-1Ch], eax
		test	eax, eax
		jz	short loc_4AF4D6
		mov	dword ptr [ebp-10h], 1
		mov	edx, [ebp-1Ch]
		lea	eax, [edx+1]
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-18h]
		jnb	short loc_4AF490

loc_4AF475:				; CODE XREF: .text:004AF48Ej
		mov	dl, [eax]
		xor	ecx, ecx
		mov	cl, dl
		cmp	esi, ecx
		jz	short loc_4AF484
		cmp	dl, 2
		jnz	short loc_4AF490

loc_4AF484:				; CODE XREF: .text:004AF47Dj
		inc	dword ptr [ebp-10h]
		inc	eax
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-18h]
		jb	short loc_4AF475

loc_4AF490:				; CODE XREF: .text:004AF473j
					; .text:004AF482j
		cmp	dword ptr [ebp-10h], 200h
		jbe	short loc_4AF4A0
		mov	dword ptr [ebp-10h], 200h

loc_4AF4A0:				; CODE XREF: .text:004AF497j
		push	5		; mode
		mov	eax, [ebp-10h]
		push	eax		; size
		mov	ecx, [edi+88h]
		push	ecx		; _addr
		lea	eax, [ebp-344h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-10h], eax
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-14h]
		jbe	short loc_4AF4D6
		lea	ecx, [ebp-344h]
		mov	[ebp-20h], ecx
		mov	eax, [ebp-10h]
		mov	[ebp-14h], eax

loc_4AF4D6:				; CODE XREF: .text:004AF429j
					; .text:004AF436j ...
		push	0		; nontriv
		lea	edx, [ebp-544h]
		push	100h		; ntext
		push	edx		; text
		mov	ecx, [ebp-14h]
		lea	edx, [ebp-744h]
		push	ecx		; ndata
		mov	eax, [ebp-20h]
		push	eax		; data
		push	edx		; prtype
		mov	ecx, [ebp-24h]
		push	ecx		; pmod
		call	Decodeargument
		add	esp, 1Ch
		mov	esi, eax
		test	esi, esi
		jle	loc_4AF594
		cmp	dword ptr [ebp-8], 0
		jle	short loc_4AF54D
		push	offset asc_554468 ; " =	"
		mov	eax, [ebp+14h]
		sub	eax, [ebp-8]
		push	eax		; n
		mov	edx, [ebp-8]
		add	edx, edx
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF54A
		test	esi, esi
		jle	short loc_4AF54A
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+18h]
		add	eax, [ebp-8]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF54A:				; CODE XREF: .text:004AF532j
					; .text:004AF536j
		add	[ebp-8], esi

loc_4AF54D:				; CODE XREF: .text:004AF50Dj
		lea	edx, [ebp-544h]
		push	edx		; src
		mov	ecx, [ebp+14h]
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		add	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF58A
		test	esi, esi
		jle	short loc_4AF58A
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+18h]
		add	eax, [ebp-8]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF58A:				; CODE XREF: .text:004AF572j
					; .text:004AF576j
		mov	eax, [ebp-8]
		add	eax, esi
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF594:				; CODE XREF: .text:004AF3B5j
					; .text:004AF3BFj ...
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_4AF5A3
		cmp	dword_5BDD4C, 0
		jnz	short loc_4AF5AA

loc_4AF5A3:				; CODE XREF: .text:004AF598j
		mov	eax, ebx
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF5AA:				; CODE XREF: .text:004AF5A1j
		mov	edx, [ebp+8]
		push	edx		; _addr
		mov	ecx, [ebp-24h]
		add	ecx, 950h
		push	ecx		; pdat
		call	Findsimpledata
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	short loc_4AF5CC
		test	byte ptr [edi+4], 20h
		jnz	short loc_4AF5D3

loc_4AF5CC:				; CODE XREF: .text:004AF5C4j
		mov	eax, ebx
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF5D3:				; CODE XREF: .text:004AF5CAj
		movzx	edx, word ptr [edi+4]
		and	edx, 1Fh
		mov	[ebp-0Ch], edx
		cmp	dword ptr [ebp-0Ch], 0
		jnz	loc_4AF694
		push	0		; nontriv
		lea	ecx, [ebp-544h]
		push	100h		; ntext
		push	ecx		; text
		add	edi, 0Eh
		push	4		; ndata
		push	edi		; data
		lea	eax, [ebp-744h]
		push	eax		; prtype
		mov	edx, [ebp-24h]
		push	edx		; pmod
		call	Decodeargument
		add	esp, 1Ch
		mov	esi, eax
		test	esi, esi
		jle	loc_4AFD0A
		push	offset asc_554470 ; " => "
		mov	edx, ebx
		mov	eax, [ebp+14h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF650
		test	esi, esi
		jle	short loc_4AF650
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF650:				; CODE XREF: .text:004AF639j
					; .text:004AF63Dj
		lea	edx, [ebp-544h]
		add	ebx, esi
		push	edx		; src
		mov	eax, ebx
		mov	ecx, [ebp+14h]
		add	eax, eax
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF68C
		test	esi, esi
		jle	short loc_4AF68C
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF68C:				; CODE XREF: .text:004AF675j
					; .text:004AF679j
		lea	eax, [esi+ebx]
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF694:				; CODE XREF: .text:004AF5E1j
		cmp	dword ptr [ebp-0Ch], 10h
		jnz	loc_4AF821
		push	offset asc_554470 ; " => "
		mov	ecx, ebx
		mov	edx, [ebp+14h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF6D6
		test	esi, esi
		jle	short loc_4AF6D6
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF6D6:				; CODE XREF: .text:004AF6BFj
					; .text:004AF6C3j
		push	offset asc_55447A ; "["
		add	ebx, esi
		mov	edx, [ebp+14h]
		mov	ecx, ebx
		sub	edx, ebx
		add	ecx, ecx
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	eax, [edi+0Eh]
		push	eax		; u
		lea	edx, [ebp-544h]
		push	edx		; s
		call	HexprintW
		add	esp, 8
		lea	ecx, [ebp-544h]
		mov	edx, ebx
		add	edx, edx
		push	ecx		; src
		mov	eax, [ebp+14h]
		mov	ecx, esi
		sub	eax, ebx
		add	ecx, ecx
		sub	eax, esi
		push	eax		; n
		add	edx, [ebp+10h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, ebx
		mov	ecx, esi
		push	offset asc_55447E ; "]"
		add	edx, edx
		mov	eax, [ebp+14h]
		add	ecx, ecx
		sub	eax, ebx
		sub	eax, esi
		push	eax		; n
		add	edx, [ebp+10h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF76F
		test	esi, esi
		jle	short loc_4AF76F
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF76F:				; CODE XREF: .text:004AF758j
					; .text:004AF75Cj
		push	1		; mode
		push	4		; size
		mov	edx, [edi+0Eh]
		lea	ecx, [ebp-10h]
		push	edx		; _addr
		push	ecx		; buf
		add	ebx, esi
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_4AF81A
		push	0		; nontriv
		lea	eax, [ebp-544h]
		push	100h		; ntext
		push	eax		; text
		lea	edx, [ebp-10h]
		push	4		; ndata
		push	edx		; data
		lea	ecx, [ebp-744h]
		push	ecx		; prtype
		mov	eax, [ebp-24h]
		push	eax		; pmod
		call	Decodeargument
		add	esp, 1Ch
		test	eax, eax
		jle	short loc_4AF81A
		push	offset asc_554468 ; " =	"
		mov	ecx, ebx
		mov	edx, [ebp+14h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		lea	eax, [ebp-544h]
		mov	ecx, ebx
		push	eax		; src
		add	ecx, ecx
		mov	edx, [ebp+14h]
		mov	eax, esi
		sub	edx, ebx
		add	eax, eax
		sub	edx, esi
		push	edx		; n
		add	ecx, [ebp+10h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF818
		test	esi, esi
		jle	short loc_4AF818
		push	esi		; n
		push	0		; c
		mov	edx, [ebp+18h]
		add	edx, ebx
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_4AF818:				; CODE XREF: .text:004AF801j
					; .text:004AF805j
		add	ebx, esi

loc_4AF81A:				; CODE XREF: .text:004AF788j
					; .text:004AF7B7j
		mov	eax, ebx
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF821:				; CODE XREF: .text:004AF698j
		cmp	dword_5BDD58, 0
		jnz	short loc_4AF831
		mov	eax, ebx
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF831:				; CODE XREF: .text:004AF828j
		cmp	dword ptr [ebp-0Ch], 1Ch
		jnz	loc_4AF982
		test	byte ptr [edi+0Eh], 3
		jnz	loc_4AF982
		push	offset asc_554470 ; " => "
		mov	ecx, ebx
		mov	edx, [ebp+14h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF87D
		test	esi, esi
		jle	short loc_4AF87D
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF87D:				; CODE XREF: .text:004AF866j
					; .text:004AF86Aj
		lea	edx, [ebp-544h]
		push	100h		; len
		push	edx		; _name
		push	4		; datasize
		mov	ecx, [edi+0Eh]
		add	ebx, esi
		push	ecx		; offs
		mov	eax, [ebp+8]
		push	eax		; ip
		call	Decodearglocal
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AF902
		mov	eax, [edi+0Eh]
		test	eax, eax
		jns	short loc_4AF8AD
		add	eax, 3

loc_4AF8AD:				; CODE XREF: .text:004AF8A8j
		sar	eax, 2
		test	eax, eax
		jle	short loc_4AF8CB
		push	eax
		push	offset aArg_I	; format
		lea	edx, [ebp-544h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4AF902
; ---------------------------------------------------------------------------

loc_4AF8CB:				; CODE XREF: .text:004AF8B2j
		test	eax, eax
		jnz	short loc_4AF8EA
		push	offset aArg_retaddr ; "ARG.RETADDR"
		push	100h		; n
		lea	ecx, [ebp-544h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4AF902
; ---------------------------------------------------------------------------

loc_4AF8EA:				; CODE XREF: .text:004AF8CDj
		neg	eax
		dec	eax
		push	eax
		push	offset aLocal_I_0 ; "LOCAL.%i"
		lea	eax, [ebp-544h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4AF902:				; CODE XREF: .text:004AF8A1j
					; .text:004AF8C9j ...
		push	offset asc_55447A ; "["
		mov	edi, ebx
		mov	edx, [ebp+14h]
		add	edi, edi
		sub	edx, ebx
		push	edx		; n
		add	edi, [ebp+10h]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		lea	eax, [ebp-544h]
		mov	ecx, edi
		push	eax		; src
		mov	eax, esi
		mov	edx, [ebp+14h]
		add	eax, eax
		sub	edx, ebx
		sub	edx, esi
		add	ecx, eax
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	ecx, esi
		add	ecx, ecx
		push	offset asc_55447E ; "]"
		mov	edx, [ebp+14h]
		sub	edx, ebx
		sub	edx, esi
		add	edi, ecx
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF97A
		test	esi, esi
		jle	short loc_4AF97A
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF97A:				; CODE XREF: .text:004AF963j
					; .text:004AF967j
		lea	eax, [esi+ebx]
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AF982:				; CODE XREF: .text:004AF835j
					; .text:004AF83Fj
		cmp	dword ptr [ebp-0Ch], 0Ch
		jnz	loc_4AFAB3
		test	byte ptr [edi+0Eh], 3
		jnz	loc_4AFAB3
		push	offset asc_554470 ; " => "
		mov	ecx, ebx
		mov	edx, [ebp+14h]
		add	ecx, ecx
		sub	edx, ebx
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AF9CE
		test	esi, esi
		jle	short loc_4AF9CE
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AF9CE:				; CODE XREF: .text:004AF9B7j
					; .text:004AF9BBj
		lea	edx, [ebp-544h]
		push	100h		; len
		push	edx		; _name
		push	4		; datasize
		mov	ecx, [edi+0Eh]
		add	ebx, esi
		push	ecx		; offs
		mov	eax, [ebp+8]
		push	eax		; ip
		call	Decodearglocal
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AFA53
		mov	eax, [edi+0Eh]
		test	eax, eax
		jns	short loc_4AF9FE
		add	eax, 3

loc_4AF9FE:				; CODE XREF: .text:004AF9F9j
		sar	eax, 2
		test	eax, eax
		jle	short loc_4AFA1C
		push	eax
		push	offset aArg_I	; format
		lea	edx, [ebp-544h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4AFA53
; ---------------------------------------------------------------------------

loc_4AFA1C:				; CODE XREF: .text:004AFA03j
		test	eax, eax
		jnz	short loc_4AFA3B
		push	offset aArg_retaddr ; "ARG.RETADDR"
		push	100h		; n
		lea	ecx, [ebp-544h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4AFA53
; ---------------------------------------------------------------------------

loc_4AFA3B:				; CODE XREF: .text:004AFA1Ej
		neg	eax
		dec	eax
		push	eax
		push	offset aLocal_I_0 ; "LOCAL.%i"
		lea	eax, [ebp-544h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4AFA53:				; CODE XREF: .text:004AF9F2j
					; .text:004AFA1Aj ...
		push	offset aOffset_2 ; "OFFSET "
		mov	edi, ebx
		mov	edx, [ebp+14h]
		add	edi, edi
		sub	edx, ebx
		push	edx
		add	edi, [ebp+10h]
		push	edi
		call	loc_410A49
		add	esp, 0Ch
		mov	esi, eax
		lea	eax, [ebp-544h]
		mov	ecx, esi
		push	eax		; src
		add	ecx, ecx
		mov	edx, [ebp+14h]
		sub	edx, ebx
		sub	edx, esi
		add	edi, ecx
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AFAAB
		test	esi, esi
		jle	short loc_4AFAAB
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AFAAB:				; CODE XREF: .text:004AFA94j
					; .text:004AFA98j
		lea	eax, [esi+ebx]
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AFAB3:				; CODE XREF: .text:004AF986j
					; .text:004AF990j
		mov	edx, [ebp-0Ch]
		and	edx, 0FFFFFFF8h
		cmp	edx, 8
		jnz	loc_4AFBCA
		mov	ecx, [ebp-0Ch]
		and	ecx, 7
		cmp	ecx, 4
		jz	loc_4AFBCA
		push	offset asc_554470 ; " => "
		mov	edx, ebx
		mov	eax, [ebp+14h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AFB09
		test	esi, esi
		jle	short loc_4AFB09
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AFB09:				; CODE XREF: .text:004AFAF2j
					; .text:004AFAF6j
		mov	edx, [ebp-0Ch]
		add	ebx, esi
		and	edx, 7
		lea	eax, [ebp-544h]
		mov	ecx, off_52FC84[edx*4]
		push	ecx
		push	offset aArg_S_0	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		mov	eax, [edi+0Eh]
		test	eax, eax
		jge	short loc_4AFB60
		cmp	eax, 0FFFFC000h
		jle	short loc_4AFB60
		mov	word ptr [ebp+esi*2-544h], 2Dh
		neg	eax
		inc	esi
		lea	edx, [ebp-544h]
		add	esi, esi
		push	eax		; u
		add	esi, edx
		push	esi		; s
		call	HexprintW
		add	esp, 8
		jmp	short loc_4AFB88
; ---------------------------------------------------------------------------

loc_4AFB60:				; CODE XREF: .text:004AFB34j
					; .text:004AFB3Bj
		cmp	dword ptr [edi+0Eh], 0
		jz	short loc_4AFB88
		mov	word ptr [ebp+esi*2-544h], 2Bh
		inc	esi
		mov	ecx, [edi+0Eh]
		lea	eax, [ebp-544h]
		add	esi, esi
		add	esi, eax
		push	ecx		; u
		push	esi		; s
		call	HexprintW
		add	esp, 8

loc_4AFB88:				; CODE XREF: .text:004AFB5Ej
					; .text:004AFB64j
		lea	edx, [ebp-544h]
		mov	eax, ebx
		push	edx		; src
		add	eax, eax
		mov	ecx, [ebp+14h]
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AFBC2
		test	esi, esi
		jle	short loc_4AFBC2
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AFBC2:				; CODE XREF: .text:004AFBABj
					; .text:004AFBAFj
		lea	eax, [esi+ebx]
		jmp	loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AFBCA:				; CODE XREF: .text:004AFABCj
					; .text:004AFACBj
		mov	edx, [ebp-0Ch]
		and	edx, 0FFFFFFF8h
		cmp	edx, 18h
		jnz	loc_4AFD0A
		mov	ecx, [ebp-0Ch]
		and	ecx, 7
		cmp	ecx, 4
		jz	loc_4AFD0A
		push	offset asc_554470 ; " => "
		mov	edx, ebx
		mov	eax, [ebp+14h]
		add	edx, edx
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AFC20
		test	esi, esi
		jle	short loc_4AFC20
		push	esi		; n
		push	2		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AFC20:				; CODE XREF: .text:004AFC09j
					; .text:004AFC0Dj
		mov	edx, [ebp-0Ch]
		add	ebx, esi
		and	edx, 7
		lea	eax, [ebp-544h]
		mov	ecx, off_52FC84[edx*4]
		push	ecx
		push	offset aArg_S	; "[ARG.%s"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [edi+0Eh], 0
		jge	short loc_4AFC7F
		cmp	dword ptr [edi+0Eh], 0FFFFC000h
		jle	short loc_4AFC7F
		mov	word ptr [ebp+esi*2-544h], 2Dh
		inc	esi
		mov	eax, [edi+0Eh]
		neg	eax
		push	eax		; u
		mov	edx, esi
		add	edx, edx
		lea	ecx, [ebp-544h]
		add	edx, ecx
		push	edx		; s
		call	HexprintW
		add	esp, 8
		add	esi, eax
		jmp	short loc_4AFCAB
; ---------------------------------------------------------------------------

loc_4AFC7F:				; CODE XREF: .text:004AFC4Aj
					; .text:004AFC53j
		cmp	dword ptr [edi+0Eh], 0
		jz	short loc_4AFCAB
		mov	word ptr [ebp+esi*2-544h], 2Bh
		inc	esi
		mov	eax, [edi+0Eh]
		push	eax		; u
		mov	edx, esi
		add	edx, edx
		lea	ecx, [ebp-544h]
		add	edx, ecx
		push	edx		; s
		call	HexprintW
		add	esp, 8
		add	esi, eax

loc_4AFCAB:				; CODE XREF: .text:004AFC7Dj
					; .text:004AFC83j
		mov	eax, 100h
		lea	edx, [ebp-544h]
		sub	eax, esi
		add	esi, esi
		push	offset asc_55447E ; "]"
		push	eax		; n
		add	esi, edx
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-544h]
		mov	edx, ebx
		add	edx, edx
		push	ecx		; src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; n
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4AFD05
		test	esi, esi
		jle	short loc_4AFD05
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+18h]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4AFD05:				; CODE XREF: .text:004AFCEEj
					; .text:004AFCF2j
		lea	eax, [esi+ebx]
		jmp	short loc_4AFD0C
; ---------------------------------------------------------------------------

loc_4AFD0A:				; CODE XREF: .text:004AF612j
					; .text:004AFBD3j ...
		mov	eax, ebx

loc_4AFD0C:				; CODE XREF: .text:004AF2D5j
					; .text:004AF2FCj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; signed int __cdecl loc_4AFD14(t_dumpcache *a1, unsigned int a2, int a3)
loc_4AFD14:				; CODE XREF: .text:004BA647p
					; .text:004BA7CEp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	edi, [ebx]
		add	edi, esi
		cmp	edi, [ebx+213Ch]
		jb	short loc_4AFD6D
		push	0FFFFFFFFh	; addr1
		push	edi		; addr0
		push	offset bpmem.sorted ; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4AFD51
		or	eax, 0FFFFFFFFh
		mov	[ebx+213Ch], eax
		mov	[ebx+2138h], eax
		jmp	short loc_4AFD6D
; ---------------------------------------------------------------------------

loc_4AFD51:				; CODE XREF: .text:004AFD3Ej
		mov	edx, [eax]
		mov	[ebx+2138h], edx
		mov	ecx, [eax]
		add	ecx, [eax+4]
		mov	[ebx+213Ch], ecx
		mov	eax, [eax+8]
		mov	[ebx+2140h], eax

loc_4AFD6D:				; CODE XREF: .text:004AFD2Aj
					; .text:004AFD4Fj
		add	edi, [ebp+10h]
		cmp	edi, [ebx+2138h]
		jbe	short loc_4AFDA1
		mov	eax, [ebx+2140h]
		test	eax, 20000h
		jz	short loc_4AFD8C
		mov	eax, 6
		jmp	short loc_4AFDD3
; ---------------------------------------------------------------------------

loc_4AFD8C:				; CODE XREF: .text:004AFD83j
		test	eax, 40000h
		jz	short loc_4AFD9A
		mov	eax, 5
		jmp	short loc_4AFDD3
; ---------------------------------------------------------------------------

loc_4AFD9A:				; CODE XREF: .text:004AFD91j
		mov	eax, 4
		jmp	short loc_4AFDD3
; ---------------------------------------------------------------------------

loc_4AFDA1:				; CODE XREF: .text:004AFD76j
		xor	edx, edx
		lea	eax, [ebx+2148h]
		jmp	short loc_4AFDB8
; ---------------------------------------------------------------------------

loc_4AFDAB:				; CODE XREF: .text:004AFDBEj
		cmp	esi, [eax]
		jb	short loc_4AFDB4
		cmp	esi, [eax+10h]
		jb	short loc_4AFDC0

loc_4AFDB4:				; CODE XREF: .text:004AFDADj
		inc	edx
		add	eax, 4

loc_4AFDB8:				; CODE XREF: .text:004AFDA9j
		cmp	edx, [ebx+2144h]
		jl	short loc_4AFDAB

loc_4AFDC0:				; CODE XREF: .text:004AFDB2j
		cmp	edx, [ebx+2144h]
		jge	short loc_4AFDD1
		mov	eax, [ebx+edx*4+2168h]
		jmp	short loc_4AFDD3
; ---------------------------------------------------------------------------

loc_4AFDD1:				; CODE XREF: .text:004AFDC6j
		xor	eax, eax

loc_4AFDD3:				; CODE XREF: .text:004AFD8Aj
					; .text:004AFD98j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4AFDD8:				; CODE XREF: .text:004B1638p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4AFE13
		cmp	dword ptr [esi+4], 0
		jz	short loc_4AFE13
		mov	eax, [esi+288h]
		cmp	eax, [esi+28Ch]
		jnb	short loc_4AFE13
		mov	edx, [esi]
		add	edx, [esi+4]
		cmp	edx, [esi+288h]
		jbe	short loc_4AFE13
		mov	ecx, [esi+28Ch]
		cmp	ecx, [esi]
		ja	short loc_4AFE1A

loc_4AFE13:				; CODE XREF: .text:004AFDE6j
					; .text:004AFDECj ...
		xor	eax, eax
		jmp	loc_4B001F
; ---------------------------------------------------------------------------

loc_4AFE1A:				; CODE XREF: .text:004AFE11j
		lea	eax, [esi+288h]
		mov	edx, [eax]
		cmp	edx, [esi]
		ja	short loc_4AFE28
		mov	eax, esi

loc_4AFE28:				; CODE XREF: .text:004AFE24j
		mov	edx, [eax]
		lea	eax, [esi+28Ch]
		mov	[ebp-8], edx
		mov	ecx, [esi]
		add	ecx, [esi+4]
		mov	[ebp-1Ch], ecx
		mov	edx, [eax]
		cmp	edx, [ebp-1Ch]
		jb	short loc_4AFE45
		lea	eax, [ebp-1Ch]

loc_4AFE45:				; CODE XREF: .text:004AFE40j
		mov	eax, [eax]
		mov	ebx, eax
		sub	ebx, [ebp-8]
		lea	edi, [ebx+ebx*2]
		lea	eax, [ebx+0Fh]
		shr	eax, 4
		add	edi, eax
		inc	edi
		mov	edx, edi
		add	edx, edx
		push	edx		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4AFE9F
		add	edi, edi
		push	edi		; arglist
		push	offset aUnableToAllo_1 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_1 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		xor	eax, eax
		jmp	loc_4B001F
; ---------------------------------------------------------------------------

loc_4AFE9F:				; CODE XREF: .text:004AFE6Ej
		mov	edx, [ebp-18h]
		push	edx		; hMem
		call	GlobalLock
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4AFEE9
		add	ebx, ebx
		push	ebx		; arglist
		push	offset aUnableToAllo_1 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_1 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		mov	ecx, [ebp-18h]
		push	ecx		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_4B001F
; ---------------------------------------------------------------------------

loc_4AFEE9:				; CODE XREF: .text:004AFEAFj
		mov	eax, [esi+298h]	; int
		test	eax, eax
		jz	short loc_4AFF03
		xor	edx, edx
		mov	[ebp-0Ch], edx
		add	eax, [esi+288h]
		mov	[ebp-10h], eax
		jmp	short loc_4AFF5E
; ---------------------------------------------------------------------------

loc_4AFF03:				; CODE XREF: .text:004AFEF1j
		push	0		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4AFF27
		mov	ecx, [ebp-18h]
		push	ecx		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_4B001F
; ---------------------------------------------------------------------------

loc_4AFF27:				; CODE XREF: .text:004AFF15j
		push	0		; mode
		push	ebx		; size
		mov	edx, [ebp-8]
		push	edx		; _addr
		mov	ecx, [ebp-0Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	ebx, eax
		jz	short loc_4AFF58
		mov	eax, [ebp-18h]
		push	eax		; hMem
		call	GlobalFree
		mov	edx, [ebp-0Ch]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4B001F
; ---------------------------------------------------------------------------

loc_4AFF58:				; CODE XREF: .text:004AFF3Cj
		mov	edx, [ebp-0Ch]
		mov	[ebp-10h], edx

loc_4AFF5E:				; CODE XREF: .text:004AFF01j
		xor	ecx, ecx
		xor	esi, esi
		mov	eax, [ebp-14h]
		test	ebx, ebx
		jbe	short loc_4AFFE8

loc_4AFF69:				; CODE XREF: .text:004AFFE6j
		test	ecx, ecx
		jle	short loc_4AFF76
		mov	word ptr [eax],	20h
		inc	esi
		add	eax, 2

loc_4AFF76:				; CODE XREF: .text:004AFF6Bj
		mov	edx, [ebp-10h]
		movzx	edx, byte ptr [edx]
		mov	[ebp-4], edx
		inc	dword ptr [ebp-10h]
		mov	edx, [ebp-4]
		sar	edx, 4
		and	edx, 0Fh
		cmp	edx, 0Ah
		jge	short loc_4AFF98
		mov	edi, edx
		add	di, 30h
		jmp	short loc_4AFF9E
; ---------------------------------------------------------------------------

loc_4AFF98:				; CODE XREF: .text:004AFF8Ej
		mov	edi, edx
		add	di, 37h

loc_4AFF9E:				; CODE XREF: .text:004AFF96j
		mov	[eax], di
		inc	esi
		add	eax, 2
		mov	edx, [ebp-4]
		and	edx, 0Fh
		cmp	edx, 0Ah
		jge	short loc_4AFFB8
		mov	edi, edx
		add	di, 30h
		jmp	short loc_4AFFBE
; ---------------------------------------------------------------------------

loc_4AFFB8:				; CODE XREF: .text:004AFFAEj
		mov	edi, edx
		add	di, 37h

loc_4AFFBE:				; CODE XREF: .text:004AFFB6j
		mov	[eax], di
		inc	esi
		add	eax, 2
		inc	ecx
		dec	ebx
		cmp	ecx, 10h
		jz	short loc_4AFFD0
		test	ebx, ebx
		jnz	short loc_4AFFE4

loc_4AFFD0:				; CODE XREF: .text:004AFFCAj
		mov	word ptr [eax],	0Dh
		add	eax, 2
		inc	esi
		mov	word ptr [eax],	0Ah
		add	eax, 2
		inc	esi
		xor	ecx, ecx

loc_4AFFE4:				; CODE XREF: .text:004AFFCEj
		test	ebx, ebx
		ja	short loc_4AFF69

loc_4AFFE8:				; CODE XREF: .text:004AFF67j
		mov	eax, [ebp-14h]
		mov	word ptr [eax+esi*2], 0
		inc	esi
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4B0002
		mov	edx, [ebp-0Ch]
		push	edx		; data

loc_4AFFFC:
		call	Memfree
		pop	ecx

loc_4B0002:				; CODE XREF: .text:004AFFF6j
		mov	eax, [ebp-18h]
		push	eax		; hMem
		call	GlobalUnlock
		push	2		; uFlags
		add	esi, esi
		push	esi		; dwBytes
		mov	edx, [ebp-18h]
		push	edx		; hMem
		call	GlobalReAlloc
		mov	[ebp-18h], eax
		mov	eax, [ebp-18h]

loc_4B001F:				; CODE XREF: .text:004AFE15j
					; .text:004AFE9Aj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4B0028(t_dump	*pd, wchar_t *s1, int mode)
loc_4B0028:				; CODE XREF: .text:004B7466p
					; .text:004C07C2p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4B004F
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+4], 0
		jz	short loc_4B004F

loc_4B0040:
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4B0056
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx],	0
		jz	short loc_4B0056

loc_4B004F:				; CODE XREF: .text:004B0035j
					; .text:004B003Ej
		xor	eax, eax
		jmp	loc_4B0243
; ---------------------------------------------------------------------------

loc_4B0056:				; CODE XREF: .text:004B0044j
					; .text:004B004Dj
		push	0		; size
		mov	edx, [ebp+0Ch]
		push	edx		; _name
		call	Getstructureitemcount
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4B0074
		xor	eax, eax
		jmp	loc_4B0243
; ---------------------------------------------------------------------------

loc_4B0074:				; CODE XREF: .text:004B006Bj
		push	0		; flags
		mov	edx, [ebp-8]
		mov	ecx, edx	; int
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		shl	edx, 4		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4B009F
		xor	eax, eax
		jmp	loc_4B0243
; ---------------------------------------------------------------------------

loc_4B009F:				; CODE XREF: .text:004B0096j
		mov	edx, [ebp+8]
		mov	eax, [edx+4E8h]	; int
		test	eax, eax
		jz	short loc_4B00B1
		mov	[ebp-18h], eax
		jmp	short loc_4B00DC
; ---------------------------------------------------------------------------

loc_4B00B1:				; CODE XREF: .text:004B00AAj
		push	2		; flags
		mov	edx, [ebp+8]	; int
		mov	ecx, [edx+4]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4B00DC
		mov	eax, [ebp-18h]
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4B0243
; ---------------------------------------------------------------------------

loc_4B00DC:				; CODE XREF: .text:004B00AFj
					; .text:004B00C9j
		mov	edx, [ebp-8]
		push	edx		; nstr
		mov	ecx, [ebp-1Ch]
		push	ecx		; str
		push	0		; item0
		push	0		; _addr
		mov	eax, [ebp+0Ch]
		push	eax		; _name
		call	Decodestructure
		add	esp, 14h
		mov	[ebp-8], eax
		xor	ecx, ecx

loc_4B00F9:				; CODE XREF: .text:004B01F8j
		mov	[ebp-14h], ecx
		xor	edx, edx
		mov	[ebp-10h], ecx
		mov	[ebp-4], edx
		mov	eax, [ebp-4]
		mov	esi, [ebp-1Ch]
		cmp	eax, [ebp-8]
		jge	loc_4B01C0

loc_4B0113:				; CODE XREF: .text:004B01BAj
		mov	eax, [ebp+8]
		mov	edx, [esi]
		add	edx, ecx
		cmp	edx, [eax+4]
		jbe	short loc_4B0129
		xor	edx, edx
		mov	[ebp+10h], edx
		jmp	loc_4B01C0
; ---------------------------------------------------------------------------

loc_4B0129:				; CODE XREF: .text:004B011Dj
		xor	eax, eax
		mov	al, [esi+0Dh]
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 9
		jz	short loc_4B013D
		cmp	dword ptr [ebp-0Ch], 0Bh
		jnz	short loc_4B016B

loc_4B013D:				; CODE XREF: .text:004B0135j
		xor	edx, edx
		jmp	short loc_4B0165
; ---------------------------------------------------------------------------

loc_4B0141:				; CODE XREF: .text:004B0167j
		test	dl, 0Fh
		jnz	short loc_4B015A
		lea	eax, [edx+ecx]
		mov	ebx, [ebp-18h]
		add	ebx, eax
		push	ebx
		mov	bl, [ebp-0Ch]
		pop	edi
		mov	[edi], bl
		mov	[ebp-14h], eax
		jmp	short loc_4B0164
; ---------------------------------------------------------------------------

loc_4B015A:				; CODE XREF: .text:004B0144j
		lea	eax, [edx+ecx]
		mov	ebx, [ebp-18h]
		mov	byte ptr [ebx+eax], 2

loc_4B0164:				; CODE XREF: .text:004B0158j
		inc	edx

loc_4B0165:				; CODE XREF: .text:004B013Fj
		cmp	edx, [esi]
		jb	short loc_4B0141
		jmp	short loc_4B01A9
; ---------------------------------------------------------------------------

loc_4B016B:				; CODE XREF: .text:004B013Bj
		xor	edx, edx
		jmp	short loc_4B01A5
; ---------------------------------------------------------------------------

loc_4B016F:				; CODE XREF: .text:004B01A7j
		lea	eax, [edx+ecx]
		mov	ebx, [ebp-18h]
		add	ebx, eax
		push	ebx
		mov	bl, [ebp-0Ch]
		pop	edi
		mov	[edi], bl
		mov	[ebp-14h], eax
		mov	eax, 1
		jmp	short loc_4B0195
; ---------------------------------------------------------------------------

loc_4B0188:				; CODE XREF: .text:004B019Cj
		lea	ebx, [edx+ecx]
		mov	edi, [ebp-18h]
		add	ebx, eax
		inc	eax
		mov	byte ptr [edi+ebx], 2

loc_4B0195:				; CODE XREF: .text:004B0186j
		xor	ebx, ebx
		mov	bl, [esi+0Eh]
		cmp	eax, ebx
		jb	short loc_4B0188
		xor	eax, eax
		mov	al, [esi+0Eh]
		add	edx, eax

loc_4B01A5:				; CODE XREF: .text:004B016Dj
		cmp	edx, [esi]
		jb	short loc_4B016F

loc_4B01A9:				; CODE XREF: .text:004B0169j
		add	ecx, [esi]
		inc	dword ptr [ebp-4]
		add	esi, 450h
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jl	loc_4B0113

loc_4B01C0:				; CODE XREF: .text:004B010Dj
					; .text:004B0124j
		mov	eax, [ebp-14h]
		cmp	eax, [ebp-10h]
		jbe	short loc_4B01F4
		mov	edx, [ebp-18h]
		mov	eax, [ebp-10h]
		or	byte ptr [edx+eax], 20h
		mov	edx, [ebp-10h]
		inc	edx
		mov	eax, [ebp-18h]
		add	eax, edx
		cmp	edx, [ebp-14h]
		jnb	short loc_4B01EA

loc_4B01E0:				; CODE XREF: .text:004B01E8j
		or	byte ptr [eax],	60h
		inc	edx
		inc	eax
		cmp	edx, [ebp-14h]
		jb	short loc_4B01E0

loc_4B01EA:				; CODE XREF: .text:004B01DEj
		mov	edx, [ebp-18h]
		mov	eax, [ebp-14h]
		or	byte ptr [edx+eax], 40h

loc_4B01F4:				; CODE XREF: .text:004B01C6j
		cmp	dword ptr [ebp+10h], 0
		jnz	loc_4B00F9
		mov	edx, [ebp-18h]
		lea	eax, [edx+ecx]
		jmp	short loc_4B020B
; ---------------------------------------------------------------------------

loc_4B0206:				; CODE XREF: .text:004B0211j
		mov	byte ptr [eax],	3
		inc	ecx
		inc	eax

loc_4B020B:				; CODE XREF: .text:004B0204j
		mov	edx, [ebp+8]
		cmp	ecx, [edx+4]
		jb	short loc_4B0206
		mov	ecx, [ebp-1Ch]
		push	ecx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp+8]
		mov	edx, [ebp-18h]
		mov	[eax+4E8h], edx
		mov	ecx, [ebp+0Ch]
		push	ecx		; src
		push	20h		; n
		mov	eax, [ebp+8]
		add	eax, 4A8h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp-8]

loc_4B0243:				; CODE XREF: .text:004B0051j
					; .text:004B006Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4B024C(int, int, char	arglist, int, int, int)
loc_4B024C:				; CODE XREF: .text:004B2945p
					; .text:004B2A78p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_4B0266
		cmp	esi, ebx
		ja	short loc_4B026E

loc_4B0266:				; CODE XREF: .text:004B0260j
		or	eax, 0FFFFFFFFh
		jmp	loc_4B0436
; ---------------------------------------------------------------------------

loc_4B026E:				; CODE XREF: .text:004B0264j
		push	ebx		; _addr
		push	edi		; pmod
		call	Findfileoffset
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4B0289
		mov	edx, [ebp+18h]
		mov	ecx, [ebp-8]
		mov	[edx], ecx

loc_4B0289:				; CODE XREF: .text:004B027Fj
		push	esi		; _addr
		push	edi		; pmod
		call	Findfileoffset
		add	esp, 8
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4B029E
		mov	edx, [ebp+1Ch]
		mov	[edx], eax

loc_4B029E:				; CODE XREF: .text:004B0297j
		mov	ecx, esi
		sub	ecx, ebx
		sub	eax, [ebp-8]
		cmp	ecx, eax
		jz	short loc_4B02B3
		mov	eax, 0FFFFFFFCh
		jmp	loc_4B0436
; ---------------------------------------------------------------------------

loc_4B02B3:				; CODE XREF: .text:004B02A7j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4B02C0
		xor	eax, eax
		jmp	loc_4B0436
; ---------------------------------------------------------------------------

loc_4B02C0:				; CODE XREF: .text:004B02B7j
		mov	edx, esi
		sub	edx, ebx
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_4B02DE
		mov	eax, 0FFFFFFFEh
		jmp	loc_4B0436
; ---------------------------------------------------------------------------

loc_4B02DE:				; CODE XREF: .text:004B02D2j
		push	0		; mode
		mov	edx, esi
		sub	edx, ebx
		push	edx		; size
		push	ebx		; _addr
		mov	ecx, [ebp-24h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edx, esi
		sub	edx, ebx
		cmp	eax, edx
		jz	short loc_4B0304
		mov	eax, 0FFFFFFFDh
		jmp	loc_4B0436
; ---------------------------------------------------------------------------

loc_4B0304:				; CODE XREF: .text:004B02F8j
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+298h]
		add	eax, [ebp-8]
		mov	[ebp-20h], eax
		xor	edx, edx
		mov	[ebp-4], edx
		push	ebx		; _addr
		push	edi		; pmod
		call	Findfixup
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_4B03EE
		mov	ecx, [edi]
		sub	ecx, [edi+454h]
		mov	[ebp-0Ch], ecx
		jmp	loc_4B03DD
; ---------------------------------------------------------------------------

loc_4B033F:				; CODE XREF: .text:004B03E8j
		mov	edx, eax
		xor	eax, eax
		mov	[ebp-18h], eax
		mov	[ebp-14h], eax
		mov	[ebp-10h], eax
		xor	eax, eax

loc_4B034E:				; CODE XREF: .text:004B039Bj
		mov	ecx, eax
		add	ecx, edx
		cmp	ebx, ecx
		ja	short loc_4B0397
		cmp	esi, ecx
		jbe	short loc_4B039D
		mov	ecx, edx
		sub	ecx, ebx
		add	ecx, eax
		mov	edi, [ebp-24h]
		movzx	edi, byte ptr [edi+ecx]
		mov	ecx, eax
		shl	ecx, 3
		shl	edi, cl
		or	[ebp-10h], edi
		mov	ecx, edx
		sub	ecx, ebx
		add	ecx, eax
		mov	edi, [ebp-20h]
		movzx	edi, byte ptr [edi+ecx]
		mov	ecx, eax
		shl	ecx, 3
		shl	edi, cl
		or	[ebp-14h], edi
		mov	ecx, eax
		shl	ecx, 3
		mov	edi, 0FFh
		shl	edi, cl
		or	[ebp-18h], edi

loc_4B0397:				; CODE XREF: .text:004B0354j
		inc	eax
		cmp	eax, 4
		jl	short loc_4B034E

loc_4B039D:				; CODE XREF: .text:004B0358j
		cmp	dword ptr [ebp-18h], 0FFFFFFFFh
		jz	short loc_4B03B8
		mov	eax, [ebp-10h]
		cmp	eax, [ebp-14h]
		jnz	short loc_4B03B1
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4B03D9

loc_4B03B1:				; CODE XREF: .text:004B03A9j
		mov	eax, 0FFFFFFFBh
		jmp	short loc_4B0436
; ---------------------------------------------------------------------------

loc_4B03B8:				; CODE XREF: .text:004B03A1j
		mov	ecx, [ebp-0Ch]
		sub	[ebp-10h], ecx
		mov	eax, [ebp-24h]
		add	eax, edx
		sub	eax, ebx
		mov	edx, [ebp-10h]
		mov	[eax], edx
		mov	ecx, [ebp-10h]
		cmp	ecx, [ebp-14h]
		jz	short loc_4B03D9
		mov	dword ptr [ebp-4], 2

loc_4B03D9:				; CODE XREF: .text:004B03AFj
					; .text:004B03D0j
		add	dword ptr [ebp-1Ch], 4

loc_4B03DD:				; CODE XREF: .text:004B033Aj
		mov	eax, [ebp-1Ch]
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_4B03EE
		cmp	esi, eax
		ja	loc_4B033F

loc_4B03EE:				; CODE XREF: .text:004B0329j
					; .text:004B03E4j
		mov	edi, esi
		sub	edi, ebx
		push	edi		; n
		mov	eax, [ebp-24h]
		push	eax		; s2
		mov	edx, [ebp-20h]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B0433
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4B0414
		mov	dword ptr [ebp-4], 1

loc_4B0414:				; CODE XREF: .text:004B040Bj
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		call	loc_4BD294
		add	esp, 8
		push	edi		; n
		mov	eax, [ebp-24h]
		push	eax		; src
		mov	edx, [ebp-20h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4B0433:				; CODE XREF: .text:004B0405j
		mov	eax, [ebp-4]

loc_4B0436:				; CODE XREF: .text:004B0269j
					; .text:004B02AEj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B0440:				; DATA XREF: .text:004B0680o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	ecx, [ebp+10h]
		mov	edx, pd
		test	edx, edx
		jz	short loc_4B045B
		test	byte ptr [edx+0Eh], 5
		jnz	short loc_4B0462

loc_4B045B:				; CODE XREF: .text:004B0453j
		xor	eax, eax
		jmp	loc_4B0531
; ---------------------------------------------------------------------------

loc_4B0462:				; CODE XREF: .text:004B0459j
		test	eax, eax
		jnz	short loc_4B04AD
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B047A
		xor	eax, eax
		jmp	loc_4B0531
; ---------------------------------------------------------------------------

loc_4B047A:				; CODE XREF: .text:004B0471j
		lea	edx, [ebx+0Ch]
		push	edx		; src
		push	20h		; n
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		mov	eax, pd
		add	esp, 0Ch
		mov	edx, [ebx]
		mov	esi, 2
		mov	eax, [eax]
		cmp	eax, edx
		jb	short loc_4B04A5
		add	edx, [ebx+4]
		cmp	eax, edx
		jb	short loc_4B04A6

loc_4B04A5:				; CODE XREF: .text:004B049Cj
		dec	esi

loc_4B04A6:				; CODE XREF: .text:004B04A3j
		mov	eax, esi
		jmp	loc_4B0531
; ---------------------------------------------------------------------------

loc_4B04AD:				; CODE XREF: .text:004B0464j
		dec	eax
		jnz	short loc_4B052F
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B04C1
		xor	eax, eax
		jmp	short loc_4B0531
; ---------------------------------------------------------------------------

loc_4B04C1:				; CODE XREF: .text:004B04BBj
		mov	eax, dword_5FC278
		test	eax, eax
		jz	short loc_4B04EB
		mov	edx, [eax+330h]
		cmp	edx, [ebx]
		jb	short loc_4B04EB
		mov	ecx, [eax+330h]
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	ecx, edx
		jnb	short loc_4B04EB
		mov	eax, [eax+330h]
		jmp	short loc_4B0501
; ---------------------------------------------------------------------------

loc_4B04EB:				; CODE XREF: .text:004B04C8j
					; .text:004B04D2j ...
		mov	eax, [ebx+460h]
		test	eax, eax
		jnz	short loc_4B0501
		mov	eax, [ebx+458h]
		test	eax, eax
		jnz	short loc_4B0501
		mov	eax, [ebx]

loc_4B0501:				; CODE XREF: .text:004B04E9j
					; .text:004B04F3j ...
		push	2000Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4B0531
; ---------------------------------------------------------------------------

loc_4B052F:				; CODE XREF: .text:004B04AEj
		xor	eax, eax

loc_4B0531:				; CODE XREF: .text:004B045Dj
					; .text:004B0475j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B0538:				; DATA XREF: .text:004B068Do
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, pd
		test	edx, edx
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+14h]
		jz	short loc_4B0552
		test	byte ptr [edx+0Eh], 5
		jnz	short loc_4B0557

loc_4B0552:				; CODE XREF: .text:004B054Aj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0557:				; CODE XREF: .text:004B0550j
		test	eax, eax
		jnz	short loc_4B0581
		push	8C00h		; mode
		push	ebx		; threadid
		mov	ecx, [ebp+0Ch]
		push	ecx		; s
		call	Decodethreadname
		add	esp, 0Ch
		mov	eax, 2
		mov	edx, pd
		cmp	ebx, [edx+14h]
		jz	short loc_4B05B5
		dec	eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B0581:				; CODE XREF: .text:004B0559j
		dec	eax
		jnz	short loc_4B05B3
		push	2000Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	ebx		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B05B3:				; CODE XREF: .text:004B0582j
		xor	eax, eax

loc_4B05B5:				; CODE XREF: .text:004B057Bj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B05B8:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		add	esp, 0FFFFFFF8h
		mov	dword_5FA964, eax
		xor	edx, edx
		xor	ecx, ecx
		mov	decode,	edx
		mov	amax, ecx
		push	ebx
		push	esi
		mov	dword_5FA978, ecx
		xor	eax, eax
		mov	amin, ecx
		mov	esi, [ebp+8]
		mov	dword_5FA984, eax
		push	18D0h		; n
		mov	dword_5FA980, eax
		xor	edx, edx
		push	0		; c
		push	offset stru_5FA9A8 ; s
		mov	dword_5FA988, edx
		mov	ebx, offset pd
		call	_memset
		add	esp, 0Ch
		test	esi, esi
		jz	short loc_4B0620
		cmp	dword ptr [esi+220h], 0
		jnz	short loc_4B0672

loc_4B0620:				; CODE XREF: .text:004B0615j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx], ecx
		xor	edx, edx
		mov	dword_5FA968, eax
		xor	ecx, ecx
		mov	dword_5FA96C, edx
		mov	dword_5FA98C, ecx
		xor	eax, eax
		xor	edx, edx
		mov	dword_5FA960, eax
		xor	ecx, ecx
		mov	cmdsize, edx
		mov	dword_5FC278, ecx
		xor	eax, eax
		push	0
		mov	dword_5FC27C, eax
		call	loc_417084
		pop	ecx
		push	0
		push	0
		call	loc_45BAAC
		add	esp, 8
		jmp	loc_4B0A4D
; ---------------------------------------------------------------------------

loc_4B0672:				; CODE XREF: .text:004B061Ej
		mov	eax, [esi+220h]
		mov	[ebx], eax
		test	byte ptr [eax+0Eh], 5
		jz	short loc_4B069C
		push	offset loc_4B0440
		call	loc_417084
		pop	ecx
		push	1
		push	offset loc_4B0538
		call	loc_45BAAC
		add	esp, 8
		jmp	short loc_4B06B0
; ---------------------------------------------------------------------------

loc_4B069C:				; CODE XREF: .text:004B067Ej
		push	0
		call	loc_417084
		pop	ecx
		push	0
		push	0
		call	loc_45BAAC
		add	esp, 8

loc_4B06B0:				; CODE XREF: .text:004B069Aj
		mov	esi, [ebx]
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4B06FF
		mov	eax, [esi]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		mov	dword_5FA964, eax
		cmp	dword_5FA964, 0
		jz	short loc_4B06EF
		mov	eax, dword_5FA964
		mov	edx, [ebx]
		mov	ecx, [eax]
		cmp	ecx, [edx]
		jnz	short loc_4B06E7
		mov	eax, [eax+4]
		cmp	eax, [edx+4]
		jz	short loc_4B06EF

loc_4B06E7:				; CODE XREF: .text:004B06DDj
		xor	edx, edx
		mov	dword_5FA964, edx

loc_4B06EF:				; CODE XREF: .text:004B06D0j
					; .text:004B06E5j
		mov	ecx, [ebx]
		mov	eax, [ecx]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	dword_5FA988, eax

loc_4B06FF:				; CODE XREF: .text:004B06B9j
		mov	eax, [ebx]
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B0714
		cmp	dword ptr [eax+14h], 0
		jz	short loc_4B0714
		xor	edx, edx
		jmp	short loc_4B0719
; ---------------------------------------------------------------------------

loc_4B0714:				; CODE XREF: .text:004B0708j
					; .text:004B070Ej
		mov	edx, 1

loc_4B0719:				; CODE XREF: .text:004B0712j
		mov	dword_5FA968, edx
		test	edx, edx
		jz	short loc_4B0731
		mov	ecx, [eax+4A4h]
		mov	dword_5FA96C, ecx
		jmp	short loc_4B074D
; ---------------------------------------------------------------------------

loc_4B0731:				; CODE XREF: .text:004B0721j
		mov	eax, dword_5FA964
		test	eax, eax
		jz	short loc_4B0745
		mov	edx, [eax+60h]
		mov	dword_5FA96C, edx
		jmp	short loc_4B074D
; ---------------------------------------------------------------------------

loc_4B0745:				; CODE XREF: .text:004B0738j
		xor	ecx, ecx
		mov	dword_5FA96C, ecx

loc_4B074D:				; CODE XREF: .text:004B072Fj
					; .text:004B0743j
		mov	esi, [ebx]
		cmp	dword ptr [esi+298h], 0
		jnz	loc_4B0851
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4B0851
		mov	eax, [esi+4E8h]
		test	eax, eax
		jz	short loc_4B0777
		mov	decode,	eax
		jmp	short loc_4B079D
; ---------------------------------------------------------------------------

loc_4B0777:				; CODE XREF: .text:004B076Ej
		lea	edx, [ebp-8]
		push	edx		; psize
		mov	ecx, [esi]
		push	ecx		; _addr
		call	Finddecode
		add	esp, 8
		mov	decode,	eax
		mov	eax, [ebx]
		mov	edx, [eax+4]
		cmp	edx, [ebp-8]
		jbe	short loc_4B079D
		xor	ecx, ecx
		mov	decode,	ecx

loc_4B079D:				; CODE XREF: .text:004B0775j
					; .text:004B0793j
		cmp	decode,	0
		jz	loc_4B0851
		push	offset dword_5FA978 ; amax
		push	offset amin	; amin
		mov	eax, [ebx]
		mov	edx, [eax+288h]
		push	edx		; _addr
		call	Getproclimits
		add	esp, 0Ch
		push	offset amax	; amax
		push	0		; amin
		mov	ecx, [ebx]
		mov	eax, [ecx+288h]
		push	eax		; _addr
		call	Getextproclimits
		add	esp, 0Ch
		mov	eax, [ebx]
		mov	edx, [eax+288h]
		sub	edx, [eax]
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-4], 1
		jbe	short loc_4B0820
		mov	ecx, [ebp-4]
		dec	ecx
		mov	eax, decode
		lea	eax, [eax+ecx-1]
		test	ecx, ecx
		jbe	short loc_4B0820

loc_4B0801:				; CODE XREF: .text:004B081Ej
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 60h
		cmp	edx, 20h
		jnz	short loc_4B081A
		mov	eax, [ebx]
		add	ecx, [eax]
		dec	ecx
		mov	dword_5FA980, ecx
		jmp	short loc_4B0820
; ---------------------------------------------------------------------------

loc_4B081A:				; CODE XREF: .text:004B080Bj
		dec	ecx
		dec	eax
		test	ecx, ecx
		ja	short loc_4B0801

loc_4B0820:				; CODE XREF: .text:004B07EEj
					; .text:004B07FFj ...
		mov	ecx, [ebp-4]
		inc	ecx
		mov	edx, decode
		lea	eax, [edx+ecx]
		jmp	short loc_4B0847
; ---------------------------------------------------------------------------

loc_4B082F:				; CODE XREF: .text:004B084Fj
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 60h
		cmp	edx, 20h
		jnz	short loc_4B0845
		add	ecx, [esi]
		mov	dword_5FA984, ecx
		jmp	short loc_4B0851
; ---------------------------------------------------------------------------

loc_4B0845:				; CODE XREF: .text:004B0839j
		inc	ecx
		inc	eax

loc_4B0847:				; CODE XREF: .text:004B082Dj
		mov	esi, [ebx]
		mov	edx, [esi+4]
		dec	edx
		cmp	ecx, edx
		jb	short loc_4B082F

loc_4B0851:				; CODE XREF: .text:004B0756j
					; .text:004B0760j ...
		mov	eax, [ebx]
		mov	edx, [eax+4]
		test	edx, edx
		jz	short loc_4B087E
		mov	ecx, [eax+288h]
		cmp	ecx, [eax+28Ch]
		jnb	short loc_4B087E
		mov	ecx, [eax]
		add	ecx, edx
		cmp	ecx, [eax+288h]
		jbe	short loc_4B087E
		mov	edx, [eax+28Ch]
		cmp	edx, [eax]
		ja	short loc_4B0882

loc_4B087E:				; CODE XREF: .text:004B0858j
					; .text:004B0866j ...
		xor	edx, edx
		jmp	short loc_4B0887
; ---------------------------------------------------------------------------

loc_4B0882:				; CODE XREF: .text:004B087Cj
		mov	edx, 1

loc_4B0887:				; CODE XREF: .text:004B0880j
		mov	dword_5FA98C, edx
		mov	eax, [eax+8]
		and	eax, 3F0000h
		mov	dword_5FA960, eax
		cmp	dword_5FA98C, 0
		jz	short loc_4B08B4
		mov	ecx, [ebx]
		test	byte ptr [ecx+0Bh], 8
		jz	short loc_4B08C0
		cmp	dword_5FA96C, 0
		jnz	short loc_4B08C0

loc_4B08B4:				; CODE XREF: .text:004B08A1j
		xor	eax, eax
		mov	cmdsize, eax
		jmp	loc_4B095F
; ---------------------------------------------------------------------------

loc_4B08C0:				; CODE XREF: .text:004B08A9j
					; .text:004B08B2j
		mov	eax, [ebx]
		mov	edx, [eax]
		add	edx, [eax+4]
		mov	esi, [eax+288h]
		sub	edx, esi
		mov	cmdsize, edx
		cmp	edx, 10h
		jbe	short loc_4B08E4
		mov	cmdsize, 10h

loc_4B08E4:				; CODE XREF: .text:004B08D8j
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B090A
		mov	eax, cmdsize
		push	eax		; n
		add	esi, dword_5FA96C
		mov	edx, [ebx]
		sub	esi, [edx]
		push	esi		; src
		push	offset cmd	; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4B095F
; ---------------------------------------------------------------------------

loc_4B090A:				; CODE XREF: .text:004B08E8j
		mov	ecx, [ebx]
		cmp	dword ptr [ecx+298h], 0
		jnz	short loc_4B093A
		push	1		; mode
		mov	eax, cmdsize
		push	eax		; size
		mov	edx, [ebx]
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		push	offset cmd	; buf
		call	Readmemory
		add	esp, 10h
		mov	cmdsize, eax
		jmp	short loc_4B095F
; ---------------------------------------------------------------------------

loc_4B093A:				; CODE XREF: .text:004B0913j
		mov	edx, cmdsize
		push	edx		; n
		mov	eax, [ebx]
		mov	ecx, [eax+298h]
		add	ecx, [eax+288h]
		sub	ecx, [eax]
		push	ecx		; src
		push	offset cmd	; dest
		call	_memcpy
		add	esp, 0Ch

loc_4B095F:				; CODE XREF: .text:004B08BBj
					; .text:004B0908j ...
		mov	esi, [ebx]
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4B0970
		cmp	dword ptr [esi+14h], 0
		jnz	short loc_4B0981

loc_4B0970:				; CODE XREF: .text:004B0968j
		xor	eax, eax
		mov	dword_5FC278, eax
		xor	edx, edx
		mov	dword_5FC27C, edx
		jmp	short loc_4B09A1
; ---------------------------------------------------------------------------

loc_4B0981:				; CODE XREF: .text:004B096Ej
		mov	ecx, [esi+14h]
		push	ecx		; threadid
		call	Findthread
		pop	ecx
		mov	dword_5FC278, eax
		mov	eax, [ebx]
		mov	edx, [eax+14h]
		push	edx		; threadid
		call	Threadregisters
		pop	ecx
		mov	dword_5FC27C, eax

loc_4B09A1:				; CODE XREF: .text:004B097Fj
		cmp	cmdsize, 0
		jbe	loc_4B0A4D
		mov	eax, dword_5FA960
		cmp	eax, 0C0000h
		jz	short loc_4B09C5
		cmp	eax, 0D0000h
		jnz	loc_4B0A4D

loc_4B09C5:				; CODE XREF: .text:004B09B8j
		cmp	dword_5FC27C, 0
		jnz	short loc_4B09D2
		xor	eax, eax
		jmp	short loc_4B09F7
; ---------------------------------------------------------------------------

loc_4B09D2:				; CODE XREF: .text:004B09CCj
		cmp	dword_5BE6F4, 0
		jnz	short loc_4B09F2
		mov	edx, dword_5FC27C
		mov	eax, [ebx]
		mov	ecx, [edx+8]
		cmp	ecx, [eax+288h]
		jz	short loc_4B09F2
		xor	eax, eax
		jmp	short loc_4B09F7
; ---------------------------------------------------------------------------

loc_4B09F2:				; CODE XREF: .text:004B09D9j
					; .text:004B09ECj
		mov	eax, dword_5FC27C

loc_4B09F7:				; CODE XREF: .text:004B09D0j
					; .text:004B09F0j
		push	0		; predict
		push	eax		; reg
		mov	ecx, 10h
		mov	eax, [ebx]
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B0A0D
		add	ecx, 0FFFFFFF0h

loc_4B0A0D:				; CODE XREF: .text:004B0A08j
		push	ecx		; mode
		push	offset stru_5FA9A8 ; da
		cmp	decode,	0
		jnz	short loc_4B0A20
		xor	ecx, ecx
		jmp	short loc_4B0A30
; ---------------------------------------------------------------------------

loc_4B0A20:				; CODE XREF: .text:004B0A1Aj
		mov	edx, [ebx]
		mov	ecx, [edx+288h]
		add	ecx, decode
		sub	ecx, [edx]

loc_4B0A30:				; CODE XREF: .text:004B0A1Ej
		push	ecx		; dec
		mov	eax, [ebx]
		mov	edx, [eax+288h]
		mov	eax, cmdsize
		push	edx		; ip
		push	eax		; cmdsize
		push	offset cmd	; cmd
		call	Disasm
		add	esp, 20h

loc_4B0A4D:				; CODE XREF: .text:004B066Dj
					; .text:004B09A8j ...
		mov	edx, g_Menu
		mov	eax, 1
		mov	dword_552180, edx
		mov	ecx, g_Menu_0
		mov	dword_552198, ecx
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
