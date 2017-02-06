.code

; int *__cdecl compareex(const void *, const void *, ulong)
compareex:				; DATA XREF: .text:004A7807o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		xor	eax, eax
		mov	ecx, [ebp+0Ch]
		test	byte ptr [ebp+10h], 80h
		mov	edx, [ebp+8]
		jz	short loc_4A16DF
		mov	esi, [ecx]
		mov	ebx, [edx]
		cmp	esi, ebx
		jle	short loc_4A16D4
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A16F5
; ---------------------------------------------------------------------------

loc_4A16D4:				; CODE XREF: .text:004A16CDj
		cmp	esi, ebx
		jge	short loc_4A16F5
		mov	eax, 1
		jmp	short loc_4A16F5
; ---------------------------------------------------------------------------

loc_4A16DF:				; CODE XREF: .text:004A16C5j
		mov	esi, [ecx]
		mov	ebx, [edx]
		cmp	esi, ebx
		jbe	short loc_4A16EC
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A16F5
; ---------------------------------------------------------------------------

loc_4A16EC:				; CODE XREF: .text:004A16E5j
		cmp	esi, ebx
		jnb	short loc_4A16F5
		mov	eax, 1

loc_4A16F5:				; CODE XREF: .text:004A16D2j
					; .text:004A16D6j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A16FC:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebx+44h], 0
		jz	short loc_4A170F
		cmp	dword ptr [ebx+68h], 0
		jge	short loc_4A1718

loc_4A170F:				; CODE XREF: .text:004A1707j
		xor	eax, eax
		mov	dword_5FA918, eax
		jmp	short loc_4A172D
; ---------------------------------------------------------------------------

loc_4A1718:				; CODE XREF: .text:004A170Dj
		mov	edx, [ebx+68h]
		push	edx		; index
		add	ebx, 44h
		push	ebx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_5FA918, eax

loc_4A172D:				; CODE XREF: .text:004A1716j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4A1738
loc_4A1738:				; DATA XREF: .text:004A7F97o
					; .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		cmp	dword_5FA918, 0
		jnz	short loc_4A1756
		xor	eax, eax
		jmp	loc_4A17E7
; ---------------------------------------------------------------------------

loc_4A1756:				; CODE XREF: .text:004A174Dj
		test	eax, eax
		jnz	short loc_4A1782
		cmp	dword ptr [ebx+68h], 0
		jnz	short loc_4A1769
		cmp	esi, 1
		jnz	short loc_4A1769
		xor	eax, eax
		jmp	short loc_4A17E7
; ---------------------------------------------------------------------------

loc_4A1769:				; CODE XREF: .text:004A175Ej
					; .text:004A1763j
		mov	edx, [ebx+44h]
		dec	edx
		cmp	edx, [ebx+68h]
		jnz	short loc_4A177B
		cmp	esi, 2
		jnz	short loc_4A177B
		xor	eax, eax
		jmp	short loc_4A17E7
; ---------------------------------------------------------------------------

loc_4A177B:				; CODE XREF: .text:004A1770j
					; .text:004A1775j
		mov	eax, 1
		jmp	short loc_4A17E7
; ---------------------------------------------------------------------------

loc_4A1782:				; CODE XREF: .text:004A1758j
		dec	eax
		jnz	short loc_4A17E5
		test	esi, esi
		jz	short loc_4A179E
		or	edx, 0FFFFFFFFh
		cmp	esi, 1
		jz	short loc_4A1794
		add	edx, 2

loc_4A1794:				; CODE XREF: .text:004A178Fj
		push	edx		; n
		push	ebx		; pt
		call	Movetableselection
		add	esp, 8

loc_4A179E:				; CODE XREF: .text:004A1787j
		mov	ecx, [ebx+68h]
		push	ecx		; index
		add	ebx, 44h
		push	ebx		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_4A17B9
		mov	eax, 1
		jmp	short loc_4A17E7
; ---------------------------------------------------------------------------

loc_4A17B9:				; CODE XREF: .text:004A17B0j
		xor	edx, edx
		test	esi, esi
		jz	short loc_4A17C5
		add	edx, 8000h

loc_4A17C5:				; CODE XREF: .text:004A17BDj
		or	edx, 0Dh
		push	edx		; mode
		push	0		; stackaddr
		mov	ecx, [eax+14h]
		push	ecx		; selsize
		push	0		; dumpaddr
		mov	eax, [eax]
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_4A17E7
; ---------------------------------------------------------------------------

loc_4A17E5:				; CODE XREF: .text:004A1783j
		xor	eax, eax

loc_4A17E7:				; CODE XREF: .text:004A1751j
					; .text:004A1767j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A17EC:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCECh
		cmp	dword_5FA918, 0
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		jz	short loc_4A1813
		cmp	dword ptr [esi+88h], 3
		jz	short loc_4A181A

loc_4A1813:				; CODE XREF: .text:004A1808j
		xor	eax, eax
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A181A:				; CODE XREF: .text:004A1811j
		test	eax, eax
		jnz	loc_4A18A8
		test	ebx, ebx
		jz	short loc_4A182F
		call	loc_42521C
		test	eax, eax
		jz	short loc_4A1839

loc_4A182F:				; CODE XREF: .text:004A1824j
		mov	eax, 1
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A1839:				; CODE XREF: .text:004A182Dj
		cmp	word_5F6B98, 0
		jnz	short loc_4A184A
		xor	eax, eax
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A184A:				; CODE XREF: .text:004A1841j
		cmp	ebx, 2
		jnz	short loc_4A1863
		mov	edx, 1
		cmp	dword_5BE6DC, 2
		jz	short loc_4A185E
		inc	edx

loc_4A185E:				; CODE XREF: .text:004A185Bj
		mov	[ebp-0Ch], edx
		jmp	short loc_4A1875
; ---------------------------------------------------------------------------

loc_4A1863:				; CODE XREF: .text:004A184Dj
		mov	ecx, 2
		cmp	dword_5BE6DC, 2
		jz	short loc_4A1872
		dec	ecx

loc_4A1872:				; CODE XREF: .text:004A186Fj
		mov	[ebp-0Ch], ecx

loc_4A1875:				; CODE XREF: .text:004A1861j
		cmp	dword ptr [ebp-0Ch], 2
		jnz	short loc_4A1888
		cmp	dword ptr [esi+68h], 0
		jnz	short loc_4A1888
		xor	eax, eax
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A1888:				; CODE XREF: .text:004A1879j
					; .text:004A187Fj
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_4A189E
		mov	edx, [esi+44h]
		dec	edx
		cmp	edx, [esi+68h]
		jnz	short loc_4A189E
		xor	eax, eax
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A189E:				; CODE XREF: .text:004A188Cj
					; .text:004A1895j
		mov	eax, 1
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A18A8:				; CODE XREF: .text:004A181Cj
		dec	eax
		jnz	loc_4A1AA8
		test	ebx, ebx
		jz	short loc_4A18BD
		cmp	word_5F6B98, 0
		jnz	short loc_4A1921

loc_4A18BD:				; CODE XREF: .text:004A18B1j
		lea	edx, [ebp-14h]
		push	edx		; coord
		push	2		; column
		push	esi		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4A18D9
		or	ecx, 0FFFFFFFFh
		mov	[ebp-10h], ecx
		mov	[ebp-14h], ecx

loc_4A18D9:				; CODE XREF: .text:004A18CEj
		push	3000h		; mode
		mov	eax, [esi+234h]
		push	eax		; fi
		mov	edx, [ebp-10h]
		push	edx		; y
		mov	eax, [ebp-14h]
		push	eax		; x
		push	0		; letter
		push	68h		; savetype
		push	100h		; length
		push	offset word_5F6B98 ; s
		push	offset aEnterSearchS_1 ; src
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [esi+22Ch]
		push	edx		; hparent
		call	Getstring
		add	esp, 28h
		test	eax, eax
		jge	short loc_4A1921
		xor	eax, eax
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A1921:				; CODE XREF: .text:004A18BBj
					; .text:004A1918j
		cmp	word_5F6B98, 0
		jnz	short loc_4A1932
		xor	eax, eax
		jmp	loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A1932:				; CODE XREF: .text:004A1929j
		push	100h		; n
		push	offset word_5F6B98 ; src
		call	StrlenW
		add	esp, 8
		mov	[ebp-8], eax
		push	100h		; nt
		lea	edx, [ebp-114h]
		push	edx		; t
		mov	ecx, [ebp-8]
		push	ecx		; nw
		push	offset word_5F6B98 ; w
		call	Unicodetoutf
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	ebx, 2
		jnz	short loc_4A1980
		mov	eax, 1
		cmp	dword_5BE6DC, 2
		jz	short loc_4A197B
		inc	eax

loc_4A197B:				; CODE XREF: .text:004A1978j
		mov	[ebp-0Ch], eax
		jmp	short loc_4A1992
; ---------------------------------------------------------------------------

loc_4A1980:				; CODE XREF: .text:004A196Aj
		mov	edx, 2
		cmp	dword_5BE6DC, 2
		jz	short loc_4A198F
		dec	edx

loc_4A198F:				; CODE XREF: .text:004A198Cj
		mov	[ebp-0Ch], edx

loc_4A1992:				; CODE XREF: .text:004A197Ej
		test	ebx, ebx
		jnz	short loc_4A19A6
		cmp	dword_5BE6DC, 0
		jnz	short loc_4A19A6
		xor	ebx, ebx
		jmp	loc_4A1A85
; ---------------------------------------------------------------------------

loc_4A19A6:				; CODE XREF: .text:004A1994j
					; .text:004A199Dj
		cmp	dword ptr [ebp-0Ch], 2
		jnz	short loc_4A19B5
		mov	ebx, [esi+68h]
		dec	ebx
		jmp	loc_4A1A85
; ---------------------------------------------------------------------------

loc_4A19B5:				; CODE XREF: .text:004A19AAj
		mov	ebx, [esi+68h]
		inc	ebx
		jmp	loc_4A1A85
; ---------------------------------------------------------------------------

loc_4A19BE:				; CODE XREF: .text:004A1A8Cj
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	loc_4A1A92
		push	5		; mode
		push	200h		; size
		mov	eax, [edi+0Ch]
		push	eax		; _addr
		lea	edx, [ebp-314h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jz	loc_4A1A7B
		mov	ecx, dword_5BE230
		lea	edx, [ebp-114h]
		push	ecx
		lea	ecx, [ebp-314h]
		mov	eax, [ebp-4]
		push	eax
		push	edx
		push	edi		; n
		push	ecx		; src
		call	StrlenA
		add	esp, 8
		push	eax
		lea	eax, [ebp-314h]
		push	eax
		call	loc_410A97
		add	esp, 14h
		test	eax, eax
		jge	short loc_4A1A6A
		mov	edx, dword_5BE230
		push	edx
		mov	ecx, [ebp-8]
		push	ecx
		push	offset word_5F6B98
		sar	edi, 1
		jns	short loc_4A1A46
		adc	edi, 0

loc_4A1A46:				; CODE XREF: .text:004A1A41j
		push	edi		; n
		lea	eax, [ebp-314h]
		push	eax		; src
		call	StrlenW
		add	esp, 8
		push	eax
		lea	edx, [ebp-314h]
		push	edx
		call	loc_410AEB
		add	esp, 14h
		test	eax, eax
		jl	short loc_4A1A7B

loc_4A1A6A:				; CODE XREF: .text:004A1A2Dj
		push	ebx		; selected
		push	esi		; pt
		call	Settableselection
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A1A7B:				; CODE XREF: .text:004A19F3j
					; .text:004A1A68j
		cmp	dword ptr [ebp-0Ch], 2
		jnz	short loc_4A1A84
		dec	ebx
		jmp	short loc_4A1A85
; ---------------------------------------------------------------------------

loc_4A1A84:				; CODE XREF: .text:004A1A7Fj
		inc	ebx

loc_4A1A85:				; CODE XREF: .text:004A19A1j
					; .text:004A19B0j ...
		test	ebx, ebx
		jl	short loc_4A1A92
		cmp	ebx, [esi+44h]
		jl	loc_4A19BE

loc_4A1A92:				; CODE XREF: .text:004A19CFj
					; .text:004A1A87j
		push	offset aItemNotFound_2 ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4A1AAA
; ---------------------------------------------------------------------------

loc_4A1AA8:				; CODE XREF: .text:004A18A9j
		xor	eax, eax

loc_4A1AAA:				; CODE XREF: .text:004A1815j
					; .text:004A1834j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4A1AB4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4A1AB4:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		mov	eax, dword_5FA918
		test	eax, eax
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		jnz	short loc_4A1AD3
		xor	eax, eax
		jmp	loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1AD3:				; CODE XREF: .text:004A1ACAj
		push	0		; subaddr
		mov	edx, [eax]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4A1B62
		push	0		; psize
		mov	eax, dword_5FA918
		mov	edx, [eax]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4A1B2D
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jz	short loc_4A1B2D
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Dh
		jz	short loc_4A1B2D
		movzx	eax, byte ptr [eax]
		and	eax, 1Fh
		cmp	eax, 1Eh
		jz	short loc_4A1B2D
		xor	eax, eax
		jmp	loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1B2D:				; CODE XREF: .text:004A1B01j
					; .text:004A1B0Dj ...
		test	edi, edi
		jnz	short loc_4A1B42
		test	esi, esi
		jz	short loc_4A1B42
		test	byte ptr [esi+9], 10h
		jz	short loc_4A1B42
		xor	eax, eax
		jmp	loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1B42:				; CODE XREF: .text:004A1B2Fj
					; .text:004A1B33j ...
		cmp	edi, 3
		jnz	short loc_4A1B58
		test	esi, esi
		jz	short loc_4A1B51
		test	byte ptr [esi+9], 10h
		jnz	short loc_4A1B58

loc_4A1B51:				; CODE XREF: .text:004A1B49j
		xor	eax, eax
		jmp	loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1B58:				; CODE XREF: .text:004A1B45j
					; .text:004A1B4Fj
		mov	eax, 1
		jmp	loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1B62:				; CODE XREF: .text:004A1AEBj
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4A1CC9
		test	esi, esi
		jnz	short loc_4A1B8A
		mov	edx, dword_5FA918
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4A1B8A
		xor	eax, eax
		jmp	loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1B8A:				; CODE XREF: .text:004A1B6Ej
					; .text:004A1B81j
		test	edi, edi
		jz	short loc_4A1B97
		cmp	edi, 3
		jnz	loc_4A1C2A

loc_4A1B97:				; CODE XREF: .text:004A1B8Cj
		test	esi, esi
		jz	short loc_4A1BB9
		test	byte ptr [esi+9], 10h
		jz	short loc_4A1BB9
		push	1000h		; type
		mov	edx, dword_5FA918
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	short loc_4A1BFD
; ---------------------------------------------------------------------------

loc_4A1BB9:				; CODE XREF: .text:004A1B99j
					; .text:004A1B9Fj
		push	$CTW0("");(offset aAddress+0Dh) ;	exprtype
		push	$CTW0("");(offset aAddress+0Dh) ;	expression
		push	$CTW0("");(offset aAddress+0Dh) ;	condition
		push	0		; actions
		push	0		; count
		mov	eax, dword_5FA918
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	edx, [eax]
		push	edx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	esi, eax
		test	esi, esi
		jz	short loc_4A1BFD
		push	offset aUnableToSetB_3 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4A1BFD:				; CODE XREF: .text:004A1BB7j
					; .text:004A1BE9j
		call	loc_42521C
		test	eax, eax
		jz	loc_4A1CC2
		mov	eax, [ebx+44h]
		dec	eax
		cmp	eax, [ebx+68h]
		jle	loc_4A1CC2
		mov	edx, [ebx+68h]
		inc	edx
		push	edx		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8
		jmp	loc_4A1CC2
; ---------------------------------------------------------------------------

loc_4A1C2A:				; CODE XREF: .text:004A1B91j
		lea	ecx, [ebp-8]
		push	ecx		; coord
		push	2		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4A1C46
		or	eax, 0FFFFFFFFh
		mov	[ebp-4], eax
		mov	[ebp-8], eax

loc_4A1C46:				; CODE XREF: .text:004A1C3Bj
		cmp	edi, 1
		jnz	short loc_4A1C78
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	edx, dword_5FA918 ; int
		mov	ecx, [ebp-4]
		push	ecx		; y
		mov	eax, [ebp-8]	; int
		push	eax		; x
		push	0		; _title
		push	1		; naddr
		push	edx		; _addr
		mov	ecx, [ebx+22Ch]	; int
		push	ecx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	esi, eax
		jmp	short loc_4A1CA4
; ---------------------------------------------------------------------------

loc_4A1C78:				; CODE XREF: .text:004A1C49j
		mov	eax, [ebx+234h]
		push	eax		; fi
		mov	eax, dword_5FA918 ; int
		mov	edx, [ebp-4]
		push	edx		; y
		mov	ecx, [ebp-8]	; int
		push	ecx		; x
		push	0		; _title
		push	0		; fnindex
		push	1		; naddr
		push	eax		; _addr
		mov	edx, [ebx+22Ch]	; int
		push	edx		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	esi, eax

loc_4A1CA4:				; CODE XREF: .text:004A1C76j
		test	esi, esi
		jge	short loc_4A1CBA
		push	offset aUnableToSetB_3 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4A1CBA:				; CODE XREF: .text:004A1CA6j
		test	esi, esi
		jg	short loc_4A1CC2
		xor	eax, eax
		jmp	short loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1CC2:				; CODE XREF: .text:004A1C04j
					; .text:004A1C11j ...
		mov	eax, 1
		jmp	short loc_4A1CCB
; ---------------------------------------------------------------------------

loc_4A1CC9:				; CODE XREF: .text:004A1B66j
		xor	eax, eax

loc_4A1CCB:				; CODE XREF: .text:004A1ACEj
					; .text:004A1B28j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4A1CD4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4A1CD4:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD4h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edx, [ebp+14h]
		mov	edi, [ebp+8]
		cmp	dword_5FA918, 0
		jnz	short loc_4A1CF3
		xor	eax, eax
		jmp	loc_4A2096
; ---------------------------------------------------------------------------

loc_4A1CF3:				; CODE XREF: .text:004A1CEAj
		mov	eax, [edi+88h]
		cmp	eax, 1
		jz	short loc_4A1D1E
		cmp	eax, 3
		jz	short loc_4A1D1E
		cmp	eax, 2
		jz	short loc_4A1D1E
		cmp	eax, 5
		jz	short loc_4A1D1E
		cmp	eax, 6
		jz	short loc_4A1D1E
		cmp	eax, 0Ah
		jz	short loc_4A1D1E
		xor	eax, eax
		jmp	loc_4A2096
; ---------------------------------------------------------------------------

loc_4A1D1E:				; CODE XREF: .text:004A1CFCj
					; .text:004A1D01j ...
		test	edx, edx
		jnz	loc_4A1DE1
		xor	edx, edx
		xor	eax, eax
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], edx
		mov	[ebp-14h], eax
		xor	esi, esi
		jmp	short loc_4A1D89
; ---------------------------------------------------------------------------

loc_4A1D37:				; CODE XREF: .text:004A1D8Cj
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4A1D88
		push	0		; subaddr
		mov	eax, [ebx]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A1D74
		test	byte ptr [eax+9], 10h
		jz	short loc_4A1D74
		inc	dword ptr [ebp-0Ch]
		test	byte ptr [eax+0Ah], 4
		jz	short loc_4A1D88
		inc	dword ptr [ebp-14h]
		jmp	short loc_4A1D88
; ---------------------------------------------------------------------------

loc_4A1D74:				; CODE XREF: .text:004A1D5Ej
					; .text:004A1D64j
		push	1		; requireanalysis
		mov	edx, [ebx]
		push	edx		; _addr
		call	Maybecommand
		add	esp, 8
		test	eax, eax
		jz	short loc_4A1D88
		inc	dword ptr [ebp-10h]

loc_4A1D88:				; CODE XREF: .text:004A1D48j
					; .text:004A1D6Dj ...
		inc	esi

loc_4A1D89:				; CODE XREF: .text:004A1D35j
		cmp	esi, [edi+44h]
		jl	short loc_4A1D37
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A1DA7
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4A1DA7
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4A1DA7
		xor	eax, eax
		jmp	loc_4A2096
; ---------------------------------------------------------------------------

loc_4A1DA7:				; CODE XREF: .text:004A1D92j
					; .text:004A1D98j ...
		cmp	dword ptr [ebp+10h], 1
		jz	short loc_4A1DB3
		cmp	dword ptr [ebp+10h], 2
		jnz	short loc_4A1DC4

loc_4A1DB3:				; CODE XREF: .text:004A1DABj
		mov	edx, [ebp-0Ch]
		add	edx, [ebp-10h]
		test	edx, edx
		jnz	short loc_4A1DC4
		xor	eax, eax
		jmp	loc_4A2096
; ---------------------------------------------------------------------------

loc_4A1DC4:				; CODE XREF: .text:004A1DB1j
					; .text:004A1DBBj
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4A1DD7
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4A1DD7
		xor	eax, eax
		jmp	loc_4A2096
; ---------------------------------------------------------------------------

loc_4A1DD7:				; CODE XREF: .text:004A1DC8j
					; .text:004A1DCEj
		mov	eax, 1
		jmp	loc_4A2096
; ---------------------------------------------------------------------------

loc_4A1DE1:				; CODE XREF: .text:004A1D20j
		dec	edx
		jnz	loc_4A2094
		cmp	dword ptr [ebp+10h], 1
		jz	short loc_4A1DF8
		cmp	dword ptr [ebp+10h], 2
		jnz	loc_4A1F39

loc_4A1DF8:				; CODE XREF: .text:004A1DECj
		mov	edx, [edi+44h]
		shl	edx, 2
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4A1E27
		push	offset aLowMemory_5 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4A2096
; ---------------------------------------------------------------------------

loc_4A1E27:				; CODE XREF: .text:004A1E0Cj
		xor	edx, edx
		mov	[ebp-4], edx
		xor	esi, esi
		mov	eax, [ebp-1Ch]
		mov	edx, eax
		mov	[ebp-2Ch], edx
		jmp	short loc_4A1E97
; ---------------------------------------------------------------------------

loc_4A1E38:				; CODE XREF: .text:004A1E9Aj
		push	esi		; index
		lea	ecx, [edi+44h]
		push	ecx		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4A1E96
		push	0		; subaddr
		mov	eax, [ebx]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A1E77
		test	byte ptr [eax+9], 10h
		jz	short loc_4A1E77
		mov	edx, [ebp-2Ch]
		mov	ecx, [ebx]
		mov	[edx], ecx
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-2Ch], 4
		jmp	short loc_4A1E96
; ---------------------------------------------------------------------------

loc_4A1E77:				; CODE XREF: .text:004A1E5Fj
					; .text:004A1E65j
		push	1		; requireanalysis
		mov	eax, [ebx]
		push	eax		; _addr
		call	Maybecommand
		add	esp, 8
		test	eax, eax
		jz	short loc_4A1E96
		mov	edx, [ebp-2Ch]
		mov	ecx, [ebx]
		mov	[edx], ecx
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-2Ch], 4

loc_4A1E96:				; CODE XREF: .text:004A1E49j
					; .text:004A1E75j ...
		inc	esi

loc_4A1E97:				; CODE XREF: .text:004A1E36j
		cmp	esi, [edi+44h]
		jl	short loc_4A1E38
		lea	eax, [ebp-24h]
		push	eax		; coord
		push	2		; column
		push	edi		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4A1EB8
		or	edx, 0FFFFFFFFh
		mov	[ebp-20h], edx
		mov	[ebp-24h], edx

loc_4A1EB8:				; CODE XREF: .text:004A1EADj
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_4A1EEB
		mov	eax, [edi+234h]
		push	eax		; fi
		mov	ecx, [ebp-20h]
		push	ecx		; y
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; _title
		mov	edx, [ebp-4]	; int
		push	edx		; naddr
		mov	ecx, [ebp-1Ch]	; int
		push	ecx		; _addr
		mov	eax, [edi+22Ch]	; int
		push	eax		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	[ebp-8], eax
		jmp	short loc_4A1F18
; ---------------------------------------------------------------------------

loc_4A1EEB:				; CODE XREF: .text:004A1EBCj
		mov	edx, [edi+234h]
		push	edx		; fi
		mov	ecx, [ebp-20h]
		push	ecx		; y
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; _title
		push	0		; fnindex
		mov	edx, [ebp-4]	; int
		push	edx		; naddr
		mov	ecx, [ebp-1Ch]	; int
		push	ecx		; _addr
		mov	eax, [edi+22Ch]	; int
		push	eax		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	[ebp-8], eax

loc_4A1F18:				; CODE XREF: .text:004A1EE9j
		cmp	dword ptr [ebp-8], 0
		jge	loc_4A208D
		push	offset aUnableToSetAll ; "Unable to set	all breakpoints"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4A208D
; ---------------------------------------------------------------------------

loc_4A1F39:				; CODE XREF: .text:004A1DF2j
		mov	dword ptr [ebp-18h], 1
		cmp	dword ptr [edi+44h], 32h
		jle	short loc_4A1F6C
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow
		mov	ecx, g_hCursor
		push	ecx		; hCursor
		call	SetCursor
		mov	[ebp-28h], eax
		jmp	short loc_4A1F71
; ---------------------------------------------------------------------------

loc_4A1F6C:				; CODE XREF: .text:004A1F44j
		xor	eax, eax
		mov	[ebp-28h], eax

loc_4A1F71:				; CODE XREF: .text:004A1F6Aj
		call	Suspendallthreads
		xor	esi, esi
		jmp	loc_4A203E
; ---------------------------------------------------------------------------

loc_4A1F7D:				; CODE XREF: .text:004A2041j
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4A203D
		push	0		; subaddr
		mov	eax, [ebx]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A1FF7
		test	byte ptr [eax+9], 10h
		jz	short loc_4A1FF7
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4A1FCB
		push	1000h		; type
		mov	edx, [ebx]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		mov	[ebp-8], eax
		jmp	short loc_4A2032
; ---------------------------------------------------------------------------

loc_4A1FCB:				; CODE XREF: .text:004A1FB4j
		push	$CTW0("");(offset aAddress+0Dh) ;	exprtype
		push	$CTW0("");(offset aAddress+0Dh) ;	expression
		push	$CTW0("");(offset aAddress+0Dh) ;	condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	ecx, [ebx]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	[ebp-8], eax
		jmp	short loc_4A2032
; ---------------------------------------------------------------------------

loc_4A1FF7:				; CODE XREF: .text:004A1FA8j
					; .text:004A1FAEj
		push	1		; requireanalysis
		mov	eax, [ebx]
		push	eax		; _addr
		call	Maybecommand
		add	esp, 8
		test	eax, eax
		jz	short loc_4A203D
		push	$CTW0("");(offset aAddress+0Dh) ;	exprtype
		push	$CTW0("");(offset aAddress+0Dh) ;	expression
		push	$CTW0("");(offset aAddress+0Dh) ;	condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	edx, [ebx]
		push	edx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	[ebp-8], eax

loc_4A2032:				; CODE XREF: .text:004A1FC9j
					; .text:004A1FF5j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4A203D
		xor	ecx, ecx
		mov	[ebp-18h], ecx

loc_4A203D:				; CODE XREF: .text:004A1F8Ej
					; .text:004A2006j ...
		inc	esi

loc_4A203E:				; CODE XREF: .text:004A1F78j
		cmp	esi, [edi+44h]
		jl	loc_4A1F7D
		call	Resumeallthreads
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4A205B
		mov	eax, [ebp-28h]
		push	eax		; hCursor
		call	SetCursor

loc_4A205B:				; CODE XREF: .text:004A2050j
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4A208D
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4A207B
		push	offset aUnableToRemo_5 ; "Unable to remove all breakpoints"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4A208D
; ---------------------------------------------------------------------------

loc_4A207B:				; CODE XREF: .text:004A2065j
		push	offset aUnableToSetAll ; "Unable to set	all breakpoints"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4A208D:				; CODE XREF: .text:004A1F1Cj
					; .text:004A1F34j ...
		mov	eax, 1
		jmp	short loc_4A2096
; ---------------------------------------------------------------------------

loc_4A2094:				; CODE XREF: .text:004A1DE2j
		xor	eax, eax

loc_4A2096:				; CODE XREF: .text:004A1CEEj
					; .text:004A1D19j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_4A20A0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	wchar_t	*s, int, int)
loc_4A20A0:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDD4h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, [ebp+14h]
		mov	edi, [ebp+8]
		cmp	dword_5FA918, 0
		jnz	short loc_4A20C2
		xor	eax, eax
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A20C2:				; CODE XREF: .text:004A20B9j
		cmp	dword ptr [edi+88h], 8
		jz	short loc_4A20D2
		xor	eax, eax
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A20D2:				; CODE XREF: .text:004A20C9j
		test	eax, eax
		jnz	loc_4A222A
		xor	edx, edx
		xor	eax, eax
		mov	[ebp-0Ch], edx
		mov	[ebp-8], edx
		mov	[ebp-10h], eax
		xor	esi, esi
		jmp	short loc_4A2145
; ---------------------------------------------------------------------------

loc_4A20EB:				; CODE XREF: .text:004A2148j
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4A2144
		mov	eax, dword_5FA918
		mov	edx, [eax+0Ch]
		cmp	edx, [ebx+0Ch]
		jnz	short loc_4A2144
		push	0		; subaddr
		mov	ecx, [ebx]
		push	ecx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	edx, dword_5FA918
		mov	ecx, [edx]
		cmp	ecx, [ebx]
		jz	short loc_4A2144
		test	eax, eax
		jz	short loc_4A2141
		test	byte ptr [eax+9], 10h
		jz	short loc_4A2141
		inc	dword ptr [ebp-8]
		test	byte ptr [eax+0Ah], 4
		jz	short loc_4A2144
		inc	dword ptr [ebp-10h]
		jmp	short loc_4A2144
; ---------------------------------------------------------------------------

loc_4A2141:				; CODE XREF: .text:004A212Bj
					; .text:004A2131j
		inc	dword ptr [ebp-0Ch]

loc_4A2144:				; CODE XREF: .text:004A20FCj
					; .text:004A2109j ...
		inc	esi

loc_4A2145:				; CODE XREF: .text:004A20E9j
		cmp	esi, [edi+44h]
		jl	short loc_4A20EB
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A2163
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4A2163
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4A2163
		xor	eax, eax
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A2163:				; CODE XREF: .text:004A214Ej
					; .text:004A2154j ...
		cmp	dword ptr [ebp+10h], 1
		jz	short loc_4A216F
		cmp	dword ptr [ebp+10h], 2
		jnz	short loc_4A2180

loc_4A216F:				; CODE XREF: .text:004A2167j
		mov	eax, [ebp-8]
		add	eax, [ebp-0Ch]
		test	eax, eax
		jnz	short loc_4A2180
		xor	eax, eax
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A2180:				; CODE XREF: .text:004A216Dj
					; .text:004A2177j
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4A2193
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4A2193
		xor	eax, eax
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A2193:				; CODE XREF: .text:004A2184j
					; .text:004A218Aj
		push	0		; comment
		lea	edx, [ebp-22Ch]
		mov	ecx, dword_5FA918
		push	100h		; nsymb
		push	edx		; symb
		push	400h		; mode
		mov	eax, [ecx+0Ch]
		push	eax		; amod
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_wcslen
		mov	ebx, eax
		pop	ecx
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	(offset	aSearching+16h)	; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	ecx, [ebp-22Ch]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, 100h
		sub	ecx, ebx
		push	offset asc_54FCC2 ; "()"
		push	ecx		; n
		add	ebx, ebx
		add	ebx, [ebp+0Ch]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A222A:				; CODE XREF: .text:004A20D4j
		dec	eax
		jnz	loc_4A24D2
		mov	edx, [edi+44h]
		shl	edx, 2
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4A2260
		push	offset aLowMemory_5 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A2260:				; CODE XREF: .text:004A2245j
		cmp	dword ptr [ebp+10h], 3
		jz	loc_4A22EC
		xor	edx, edx
		mov	[ebp-4], edx
		xor	esi, esi
		mov	eax, [ebp-18h]
		mov	edx, eax
		mov	[ebp-28h], edx
		jmp	short loc_4A22C6
; ---------------------------------------------------------------------------

loc_4A227B:				; CODE XREF: .text:004A22C9j
		push	esi		; index
		lea	ecx, [edi+44h]
		push	ecx		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4A22C5
		mov	eax, dword_5FA918
		mov	edx, [eax+0Ch]
		cmp	edx, [ebx+0Ch]
		jnz	short loc_4A22C5
		push	0		; subaddr
		mov	ecx, [ebx]
		push	ecx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A22B7
		test	byte ptr [eax+9], 10h
		jnz	short loc_4A22C5

loc_4A22B7:				; CODE XREF: .text:004A22AFj
		mov	eax, [ebp-28h]
		mov	edx, [ebx]
		mov	[eax], edx
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-28h], 4

loc_4A22C5:				; CODE XREF: .text:004A228Cj
					; .text:004A2299j ...
		inc	esi

loc_4A22C6:				; CODE XREF: .text:004A2279j
		cmp	esi, [edi+44h]
		jl	short loc_4A227B
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4A22EC
		mov	ecx, [ebp-4]
		push	ecx		; naddr
		mov	eax, [ebp-18h]
		push	eax		; _addr
		call	Confirmint3breakpointlist
		add	esp, 8
		test	eax, eax
		jz	short loc_4A22EC
		xor	eax, eax
		jmp	loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A22EC:				; CODE XREF: .text:004A2264j
					; .text:004A22CFj ...
		cmp	dword ptr [ebp+10h], 1
		jz	short loc_4A22FC
		cmp	dword ptr [ebp+10h], 2
		jnz	loc_4A23D6

loc_4A22FC:				; CODE XREF: .text:004A22F0j
		lea	edx, [ebp-20h]
		push	edx		; coord
		push	2		; column
		push	edi		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4A2318
		or	ecx, 0FFFFFFFFh
		mov	[ebp-1Ch], ecx
		mov	[ebp-20h], ecx

loc_4A2318:				; CODE XREF: .text:004A230Dj
		xor	eax, eax
		mov	[ebp-4], eax
		xor	esi, esi
		mov	eax, [ebp-18h]
		mov	edx, eax
		mov	[ebp-2Ch], edx
		jmp	short loc_4A2358
; ---------------------------------------------------------------------------

loc_4A2329:				; CODE XREF: .text:004A235Bj
		push	esi		; index
		lea	ecx, [edi+44h]
		push	ecx		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4A2357
		mov	eax, dword_5FA918
		mov	edx, [eax+0Ch]
		cmp	edx, [ebx+0Ch]
		jnz	short loc_4A2357
		mov	ecx, [ebp-2Ch]
		mov	eax, [ebx]
		mov	[ecx], eax
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-2Ch], 4

loc_4A2357:				; CODE XREF: .text:004A233Aj
					; .text:004A2347j
		inc	esi

loc_4A2358:				; CODE XREF: .text:004A2327j
		cmp	esi, [edi+44h]
		jl	short loc_4A2329
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_4A238D
		mov	edx, [edi+234h]
		push	edx		; fi
		mov	ecx, [ebp-1Ch]
		push	ecx		; y
		mov	eax, [ebp-20h]
		push	eax		; x
		push	0		; _title
		mov	edx, [ebp-4]	; int
		push	edx		; naddr
		mov	ecx, [ebp-18h]	; int
		push	ecx		; _addr
		mov	eax, [edi+22Ch]	; int
		push	eax		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		jmp	short loc_4A23B7
; ---------------------------------------------------------------------------

loc_4A238D:				; CODE XREF: .text:004A2361j
		mov	edx, [edi+234h]
		push	edx		; fi
		mov	ecx, [ebp-1Ch]
		push	ecx		; y
		mov	eax, [ebp-20h]
		push	eax		; x
		push	0		; _title
		push	0		; fnindex
		mov	edx, [ebp-4]	; int
		push	edx		; naddr
		mov	ecx, [ebp-18h]	; int
		push	ecx		; _addr
		mov	eax, [edi+22Ch]	; int
		push	eax		; hparent
		call	Condlogbreakpoint
		add	esp, 20h

loc_4A23B7:				; CODE XREF: .text:004A238Bj
		test	eax, eax
		jge	loc_4A24CB
		push	offset aUnableToSetAll ; "Unable to set	all breakpoints"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4A24CB
; ---------------------------------------------------------------------------

loc_4A23D6:				; CODE XREF: .text:004A22F6j
		mov	dword ptr [ebp-14h], 1
		cmp	dword ptr [edi+44h], 32h
		jle	short loc_4A2409
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow
		mov	ecx, g_hCursor
		push	ecx		; hCursor
		call	SetCursor
		mov	[ebp-24h], eax
		jmp	short loc_4A240E
; ---------------------------------------------------------------------------

loc_4A2409:				; CODE XREF: .text:004A23E1j
		xor	eax, eax
		mov	[ebp-24h], eax

loc_4A240E:				; CODE XREF: .text:004A2407j
		call	Suspendallthreads
		xor	esi, esi
		jmp	short loc_4A2480
; ---------------------------------------------------------------------------

loc_4A2417:				; CODE XREF: .text:004A2483j
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4A247F
		mov	eax, dword_5FA918
		mov	edx, [eax+0Ch]
		cmp	edx, [ebx+0Ch]
		jnz	short loc_4A247F
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A2466
		push	$CTW0("");(offset aAddress+0Dh) ;	exprtype
		push	$CTW0("");(offset aAddress+0Dh) ;	expression
		push	$CTW0("");(offset aAddress+0Dh) ;	condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	ecx, [ebx]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		jmp	short loc_4A2476
; ---------------------------------------------------------------------------

loc_4A2466:				; CODE XREF: .text:004A243Bj
		push	1000h		; type
		mov	eax, [ebx]
		push	eax		; _addr
		call	Removeint3breakpoint
		add	esp, 8

loc_4A2476:				; CODE XREF: .text:004A2464j
		test	eax, eax
		jz	short loc_4A247F
		xor	edx, edx
		mov	[ebp-14h], edx

loc_4A247F:				; CODE XREF: .text:004A2428j
					; .text:004A2435j ...
		inc	esi

loc_4A2480:				; CODE XREF: .text:004A2415j
		cmp	esi, [edi+44h]
		jl	short loc_4A2417
		call	Resumeallthreads
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_4A2499
		mov	ecx, [ebp-24h]
		push	ecx		; hCursor
		call	SetCursor

loc_4A2499:				; CODE XREF: .text:004A248Ej
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4A24CB
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4A24B9
		push	offset aUnableToRemo_5 ; "Unable to remove all breakpoints"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4A24CB
; ---------------------------------------------------------------------------

loc_4A24B9:				; CODE XREF: .text:004A24A3j
		push	offset aUnableToSetAll ; "Unable to set	all breakpoints"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4A24CB:				; CODE XREF: .text:004A23B9j
					; .text:004A23D1j ...
		mov	eax, 1
		jmp	short loc_4A24D4
; ---------------------------------------------------------------------------

loc_4A24D2:				; CODE XREF: .text:004A222Bj
		xor	eax, eax

loc_4A24D4:				; CODE XREF: .text:004A20BDj
					; .text:004A20CDj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A24DC:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, dword_5FA918
		test	eax, eax
		jnz	short loc_4A24F4
		xor	eax, eax
		jmp	short loc_4A255A
; ---------------------------------------------------------------------------

loc_4A24F4:				; CODE XREF: .text:004A24EEj
		push	0		; subaddr
		mov	edx, [eax]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A2510
		test	byte ptr [eax+9], 10h
		jnz	short loc_4A2514

loc_4A2510:				; CODE XREF: .text:004A2508j
		xor	eax, eax
		jmp	short loc_4A255A
; ---------------------------------------------------------------------------

loc_4A2514:				; CODE XREF: .text:004A250Ej
		test	ebx, ebx
		jnz	short loc_4A253C
		test	esi, esi
		jnz	short loc_4A2526
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4A2526
		xor	eax, eax
		jmp	short loc_4A255A
; ---------------------------------------------------------------------------

loc_4A2526:				; CODE XREF: .text:004A251Aj
					; .text:004A2520j
		cmp	esi, 1
		jnz	short loc_4A2535
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4A2535
		xor	eax, eax
		jmp	short loc_4A255A
; ---------------------------------------------------------------------------

loc_4A2535:				; CODE XREF: .text:004A2529j
					; .text:004A252Fj
		mov	eax, 1
		jmp	short loc_4A255A
; ---------------------------------------------------------------------------

loc_4A253C:				; CODE XREF: .text:004A2516j
		dec	ebx
		jnz	short loc_4A2558
		push	esi		; enable
		mov	edx, dword_5FA918
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Enableint3breakpoint
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4A255A
; ---------------------------------------------------------------------------

loc_4A2558:				; CODE XREF: .text:004A253Dj
		xor	eax, eax

loc_4A255A:				; CODE XREF: .text:004A24F2j
					; .text:004A2512j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4A2560:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4A2576
		cmp	dword ptr [eax+220h], 0
		jnz	short loc_4A257A

loc_4A2576:				; CODE XREF: .text:004A256Bj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A257A:				; CODE XREF: .text:004A2574j
		test	edx, edx
		jnz	short loc_4A259E
		push	1
		mov	edx, [eax+21Ch]
		push	edx
		call	loc_4A1060
		add	esp, 8
		test	eax, eax
		jz	short loc_4A2597
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A2597:				; CODE XREF: .text:004A2591j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A259E:				; CODE XREF: .text:004A257Cj
		dec	edx
		jnz	short loc_4A25B9
		push	0
		mov	edx, [eax+21Ch]
		push	edx
		call	loc_4A1060
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A25B9:				; CODE XREF: .text:004A259Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4A25C0:				; DATA XREF: .data:stru_54ED9Co
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4A25D6
		cmp	dword ptr [eax+220h], 0
		jnz	short loc_4A25DA

loc_4A25D6:				; CODE XREF: .text:004A25CBj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A25DA:				; CODE XREF: .text:004A25D4j
		test	edx, edx
		jnz	short loc_4A25FE
		push	1
		mov	edx, [eax+21Ch]
		push	edx
		call	loc_4A1298
		add	esp, 8
		test	eax, eax
		jz	short loc_4A25F7
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A25F7:				; CODE XREF: .text:004A25F1j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A25FE:				; CODE XREF: .text:004A25DCj
		dec	edx
		jnz	short loc_4A2619
		push	0
		mov	edx, [eax+21Ch]
		push	edx
		call	loc_4A1298
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A2619:				; CODE XREF: .text:004A25FFj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_4A2620@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int, int, int)
loc_4A2620:				; CODE XREF: .text:004B6001p
					; .text:004B61C1p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_4A2629:				; CODE XREF: .text:004A2631j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4A2629
		mov	eax, [ebp-4]
		add	esp, 0FFFFFA80h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4A264D
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebp+10h]
		jbe	short loc_4A2654

loc_4A264D:				; CODE XREF: .text:004A2643j
		xor	eax, eax
		jmp	loc_4A2E89
; ---------------------------------------------------------------------------

loc_4A2654:				; CODE XREF: .text:004A264Bj
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp+10h]
		mov	dword_5F6B8C, edx
		mov	dword_5F6B90, ecx
		mov	dword_5F6B94, 1
		mov	dword_5F2D60, 4
		mov	eax, g_hCursor
		push	eax		; hCursor
		call	SetCursor
		mov	[ebp-3Ch], eax
		call	loc_4A0E20
		cmp	dword_586178, 0
		jz	short loc_4A269B
		call	Listmemory

loc_4A269B:				; CODE XREF: .text:004A2694j
		xor	edx, edx
		mov	[ebp-24h], edx
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_4A2700
; ---------------------------------------------------------------------------

loc_4A26A7:				; CODE XREF: .text:004A2709j
		mov	eax, [ebp-8]
		push	eax		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4A26FD
		mov	edx, [ebp-30h]
		test	byte ptr [edx+0Bh], 8
		jnz	short loc_4A26FD
		mov	ecx, [ebp+8]
		mov	edx, [ebp-30h]
		mov	eax, [ecx]
		cmp	eax, [edx]
		ja	short loc_4A26FD
		mov	ecx, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [ecx]
		mov	ecx, [ebp-30h]
		add	eax, [edx+4]
		cmp	eax, [ecx]
		jbe	short loc_4A26FD
		mov	eax, [ebp-30h]
		test	dword ptr [eax+8], 2005000h
		jz	short loc_4A26FD
		mov	edx, [ebp-30h]
		mov	ecx, [edx+4]
		add	[ebp-24h], ecx

loc_4A26FD:				; CODE XREF: .text:004A26BFj
					; .text:004A26C8j ...
		inc	dword ptr [ebp-8]

loc_4A2700:				; CODE XREF: .text:004A26A5j
		mov	eax, [ebp-8]
		cmp	eax, memory.sorted.n
		jl	short loc_4A26A7

loc_4A270B:				; CODE XREF: .text:004A2D4Fj
		xor	edx, edx
		mov	[ebp-28h], edx
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	loc_4A2C95
; ---------------------------------------------------------------------------

loc_4A271F:				; CODE XREF: .text:004A2CA4j
		mov	edx, [ebp-8]
		push	edx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4A2C92
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+0Bh], 8
		jnz	loc_4A2C92
		mov	edx, [ebp+8]
		mov	eax, [ebp-30h]
		mov	eax, [eax]
		mov	ecx, [edx]
		cmp	ecx, eax
		ja	loc_4A2C92
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		mov	edx, [ebp+8]
		add	ecx, [edx+4]
		cmp	eax, ecx
		jnb	loc_4A2C92
		mov	ecx, [ebp-30h]
		test	dword ptr [ecx+8], 2005000h
		jz	loc_4A2C92
		mov	edx, [ebp-30h]
		mov	ecx, [edx+4]
		add	[ebp-28h], ecx
		mov	esi, eax
		mov	eax, [ebp-30h]	; int
		mov	edx, [eax+4]	; int
		mov	[ebp-14h], edx
		push	0		; flags
		mov	ecx, [ebp-14h]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_4A2C92
		call	Suspendallthreads
		push	0		; mode
		mov	eax, [ebp-14h]
		push	eax		; size
		push	esi		; _addr
		mov	edx, [ebp-2Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-18h], eax
		call	Resumeallthreads
		mov	ecx, [ebp-18h]
		cmp	ecx, [ebp-14h]
		jz	short loc_4A27E5
		mov	eax, [ebp-2Ch]
		push	eax		; data
		call	Memfree
		pop	ecx
		jmp	loc_4A2C92
; ---------------------------------------------------------------------------

loc_4A27E5:				; CODE XREF: .text:004A27D4j
		mov	edx, [ebp-30h]
		mov	edi, [edx+64h]
		mov	[ebp-1Ch], esi
		mov	ebx, esi
		mov	eax, [ebp-30h]
		mov	eax, [eax+4]
		mov	ecx, 1F4h
		xor	edx, edx
		div	ecx
		mov	[ebp-40h], eax
		mov	dword ptr [ebp-44h], 2000h
		mov	eax, [ebp-44h]
		cmp	eax, [ebp-40h]
		jbe	short loc_4A2816
		lea	edx, [ebp-44h]
		jmp	short loc_4A2819
; ---------------------------------------------------------------------------

loc_4A2816:				; CODE XREF: .text:004A280Fj
		lea	edx, [ebp-40h]

loc_4A2819:				; CODE XREF: .text:004A2814j
		mov	eax, [edx]
		mov	[ebp-20h], eax
		jmp	loc_4A2C7B
; ---------------------------------------------------------------------------

loc_4A2823:				; CODE XREF: .text:004A2C82j
		cmp	ebx, [ebp-1Ch]
		jb	loc_4A28B4
		push	offset aSearching ; "Searching - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-24h]
		push	ecx		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebp-28h]
		add	eax, ebx
		sub	eax, esi
		sub	eax, [ebp-14h]
		push	eax		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		mov	edx, [ebp-20h]
		add	esp, 8
		add	edx, ebx
		mov	ecx, hwollymain
		mov	[ebp-1Ch], edx
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		push	ecx		; hWnd
		lea	eax, [ebp-2584h]
		push	eax		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A28B4
		mov	eax, [ebp-257Ch]
		cmp	eax, 20h
		jz	short loc_4A2895
		cmp	eax, 1Bh
		jnz	short loc_4A28B4

loc_4A2895:				; CODE XREF: .text:004A288Ej
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4A2C88
; ---------------------------------------------------------------------------

loc_4A28B3:				; CODE XREF: .text:004A299Cj
		inc	ebx

loc_4A28B4:				; CODE XREF: .text:004A2826j
					; .text:004A2883j ...
		test	edi, edi
		jz	loc_4A29A2
		mov	edx, [ebp-14h]
		add	edx, esi
		cmp	ebx, edx
		jnb	loc_4A29A2
		mov	ecx, ebx
		sub	ecx, esi
		test	byte ptr [edi+ecx], 1Fh
		jz	loc_4A29A2
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 4
		jz	loc_4A29A2
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 5
		jz	loc_4A29A2
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 6
		jz	loc_4A29A2
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 7
		jz	short loc_4A29A2
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 8
		jz	short loc_4A29A2
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 18h
		jz	short loc_4A29A2
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 19h
		jz	short loc_4A29A2
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ah
		jz	short loc_4A29A2
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jz	short loc_4A29A2
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Dh
		jz	short loc_4A29A2
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Eh
		jnz	loc_4A28B3

loc_4A29A2:				; CODE XREF: .text:004A28B6j
					; .text:004A28C3j ...
		mov	edx, [ebp-14h]
		add	edx, esi
		cmp	ebx, edx
		jnb	loc_4A2C88
		test	edi, edi
		jz	loc_4A2A96
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 18h
		jz	short loc_4A29DE
		mov	edx, ebx
		sub	edx, esi
		cmp	eax, 19h
		jz	short loc_4A29DE
		mov	ecx, ebx
		sub	ecx, esi
		cmp	eax, 1Ah
		jnz	loc_4A2A96

loc_4A29DE:				; CODE XREF: .text:004A29C6j
					; .text:004A29CFj
		mov	eax, [ebp+8]
		lea	edx, [ebp-2568h]
		push	eax		; pmod
		push	0		; mode
		push	edx		; da
		push	ebx		; ip
		mov	ecx, ebx
		mov	eax, [ebp-14h]
		sub	ecx, esi
		sub	eax, ecx
		push	eax		; size
		mov	edx, [ebp-2Ch]
		add	edx, ebx
		sub	edx, esi
		push	edx		; cmd
		call	Ndisasm
		add	esp, 18h
		inc	ebx
		cmp	dword ptr [ebp-2544h], 0
		jnz	loc_4A2C7B
		mov	eax, [ebp-2540h]
		and	eax, 0FFh
		cmp	eax, 1
		jz	short loc_4A2A29
		cmp	eax, 2
		jnz	short loc_4A2A43

loc_4A2A29:				; CODE XREF: .text:004A2A22j
		mov	eax, [ebp-2550h]
		cmp	eax, [ebp+0Ch]
		jb	loc_4A2C7B
		cmp	eax, [ebp+10h]
		ja	loc_4A2C7B
		jmp	short loc_4A2A85
; ---------------------------------------------------------------------------

loc_4A2A43:				; CODE XREF: .text:004A2A27j
		cmp	eax, 3
		jz	short loc_4A2A65
		cmp	eax, 4
		jz	short loc_4A2A65
		cmp	eax, 5
		jz	short loc_4A2A65
		cmp	eax, 6
		jz	short loc_4A2A65
		cmp	eax, 7
		jz	short loc_4A2A65
		cmp	eax, 8
		jnz	loc_4A2C7B

loc_4A2A65:				; CODE XREF: .text:004A2A46j
					; .text:004A2A4Bj ...
		mov	eax, [ebp-2548h]
		test	eax, eax
		jz	loc_4A2C7B
		cmp	eax, [ebp+0Ch]
		jb	loc_4A2C7B
		cmp	eax, [ebp+10h]
		ja	loc_4A2C7B

loc_4A2A85:				; CODE XREF: .text:004A2A41j
		mov	edx, [ebp-2568h]
		mov	[ebp-46Ch], edx
		jmp	loc_4A2C23
; ---------------------------------------------------------------------------

loc_4A2A96:				; CODE XREF: .text:004A29B1j
					; .text:004A29D8j
		push	0		; predict
		push	0		; reg
		mov	ecx, 10h
		cmp	dword_5BE6D4, 0
		jnz	short loc_4A2AAB
		add	ecx, 0FFFFFFF0h

loc_4A2AAB:				; CODE XREF: .text:004A2AA6j
		push	ecx		; mode
		lea	eax, [ebp-1D3Ch]
		push	eax		; da
		test	edi, edi
		jnz	short loc_4A2ABB
		xor	edx, edx
		jmp	short loc_4A2AC1
; ---------------------------------------------------------------------------

loc_4A2ABB:				; CODE XREF: .text:004A2AB5j
		mov	edx, ebx
		add	edx, edi
		sub	edx, esi

loc_4A2AC1:				; CODE XREF: .text:004A2AB9j
		push	edx		; dec
		push	ebx		; ip
		mov	eax, ebx
		sub	eax, esi
		mov	ecx, [ebp-14h]
		sub	ecx, eax
		push	ecx		; cmdsize
		mov	eax, [ebp-2Ch]
		add	eax, ebx
		sub	eax, esi
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		inc	ebx
		cmp	dword ptr [ebp-1D10h], 0
		jnz	loc_4A2C7B
		xor	edx, edx
		lea	ecx, [ebp-1CF0h]
		mov	[ebp-4], edx
		mov	[ebp-38h], ecx

loc_4A2AF9:				; CODE XREF: .text:004A2BB6j
		mov	eax, [ebp-38h]
		test	byte ptr [eax+1], 6
		jz	short loc_4A2B1C
		mov	edx, [ebp-38h]
		mov	ecx, [edx+40h]
		cmp	ecx, [ebp+0Ch]
		jb	short loc_4A2B1C
		mov	eax, [ebp-38h]
		mov	edx, [eax+40h]
		cmp	edx, [ebp+10h]
		jbe	loc_4A2BBC

loc_4A2B1C:				; CODE XREF: .text:004A2B00j
					; .text:004A2B0Bj
		cmp	dword_5BE6D4, 0
		jz	short loc_4A2B61
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+4]
		and	eax, 0F0000h
		cmp	eax, 80000h
		jnz	short loc_4A2B61
		mov	edx, [ebp-38h]
		test	byte ptr [edx+3], 2
		jz	short loc_4A2B61
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+40h]
		cmp	eax, [ebp+0Ch]
		jb	short loc_4A2B50
		cmp	eax, [ebp+10h]
		jbe	short loc_4A2BBC

loc_4A2B50:				; CODE XREF: .text:004A2B49j
		push	eax		; _addr
		call	Followcall
		pop	ecx
		cmp	eax, [ebp+0Ch]
		jb	short loc_4A2B61
		cmp	eax, [ebp+10h]
		jbe	short loc_4A2BBC

loc_4A2B61:				; CODE XREF: .text:004A2B23j
					; .text:004A2B35j ...
		mov	edx, [ebp-38h]
		test	byte ptr [edx+1], 1
		jz	short loc_4A2BA8
		mov	ecx, [ebp-38h]
		test	byte ptr [ecx+2], 4
		jz	short loc_4A2B89
		mov	eax, [ebp-38h]
		mov	edx, [eax+38h]
		cmp	edx, [ebp+0Ch]
		jb	short loc_4A2B89
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+38h]
		cmp	eax, [ebp+10h]
		jbe	short loc_4A2BBC

loc_4A2B89:				; CODE XREF: .text:004A2B71j
					; .text:004A2B7Cj
		mov	edx, [ebp-38h]
		test	byte ptr [edx+2], 10h
		jz	short loc_4A2BA8
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+30h]
		cmp	eax, [ebp+0Ch]
		jb	short loc_4A2BA8
		mov	edx, [ebp-38h]
		mov	ecx, [edx+30h]
		cmp	ecx, [ebp+10h]
		jbe	short loc_4A2BBC

loc_4A2BA8:				; CODE XREF: .text:004A2B68j
					; .text:004A2B90j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-38h], 460h
		cmp	dword ptr [ebp-4], 4
		jl	loc_4A2AF9

loc_4A2BBC:				; CODE XREF: .text:004A2B16j
					; .text:004A2B4Ej ...
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4A2C17
		cmp	dword_5BE6D0, 0
		jz	loc_4A2C7B
		mov	eax, [ebp-1D28h]
		and	eax, 1Fh
		cmp	eax, 0Ah
		jnz	loc_4A2C7B
		mov	edx, [ebp-1D30h]
		push	edx		; _addr
		mov	ecx, [ebp+8]
		add	ecx, 950h
		push	ecx		; pdat
		call	Findsimpledata
		add	esp, 8
		test	eax, eax
		jz	short loc_4A2C7B
		movzx	edx, word ptr [eax+4]
		and	edx, 3Fh
		cmp	edx, 20h
		jnz	short loc_4A2C7B
		mov	edx, [eax+0Eh]
		cmp	edx, [ebp+0Ch]
		jb	short loc_4A2C7B
		cmp	edx, [ebp+10h]
		ja	short loc_4A2C7B

loc_4A2C17:				; CODE XREF: .text:004A2BC0j
		mov	eax, [ebp-1D30h]
		mov	[ebp-46Ch], eax

loc_4A2C23:				; CODE XREF: .text:004A2A91j
		mov	dword ptr [ebp-468h], 1
		mov	ecx, [ebp-46Ch]
		cmp	ecx, [ebp+14h]
		jnz	short loc_4A2C49
		mov	dword ptr [ebp-464h], 10000h
		xor	eax, eax
		mov	[ebp+14h], eax
		jmp	short loc_4A2C51
; ---------------------------------------------------------------------------

loc_4A2C49:				; CODE XREF: .text:004A2C36j
		xor	edx, edx
		mov	[ebp-464h], edx

loc_4A2C51:				; CODE XREF: .text:004A2C47j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-45Ch], ecx
		mov	[ebp-460h], ecx
		mov	[ebp-458h], eax
		lea	edx, [ebp-46Ch]
		push	edx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A2C7B:				; CODE XREF: .text:004A281Ej
					; .text:004A2A0Ej ...
		mov	eax, [ebp-14h]
		add	eax, esi
		cmp	ebx, eax
		jb	loc_4A2823

loc_4A2C88:				; CODE XREF: .text:004A28AEj
					; .text:004A29A9j
		mov	edx, [ebp-2Ch]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4A2C92:				; CODE XREF: .text:004A2737j
					; .text:004A2744j ...
		inc	dword ptr [ebp-8]

loc_4A2C95:				; CODE XREF: .text:004A271Aj
		mov	ecx, [ebp-8]
		cmp	ecx, memory.sorted.n
		jge	short loc_4A2CAA
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4A271F

loc_4A2CAA:				; CODE XREF: .text:004A2C9Ej
		cmp	dword ptr [ebp+18h], 0
		jz	loc_4A2D54
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebp+10h]
		jnz	loc_4A2D54
		cmp	stru_5FA8D4.n, 1
		jnz	loc_4A2D54
		push	0		; index
		push	offset stru_5FA8D4 ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4A2D54
		mov	edx, [ebp-34h]
		lea	eax, [ebp-54h]
		mov	ebx, [edx]
		push	5		; mode
		push	10h		; size
		push	ebx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jbe	short loc_4A2D54
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-1D3Ch]
		push	edx		; da
		push	0		; dec
		push	ebx		; ip
		mov	ecx, [ebp-14h]
		push	ecx		; cmdsize
		lea	eax, [ebp-54h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword ptr [ebp-1D2Ch], 0
		jbe	short loc_4A2D54
		cmp	dword ptr [ebp-1D10h], 0
		jnz	short loc_4A2D54
		mov	edx, [ebp-1D28h]
		and	edx, 1Fh
		cmp	edx, 6
		jnz	short loc_4A2D54
		mov	[ebp+10h], ebx
		mov	[ebp+0Ch], ebx
		xor	eax, eax
		mov	[ebp+18h], eax
		jmp	loc_4A270B
; ---------------------------------------------------------------------------

loc_4A2D54:				; CODE XREF: .text:004A2CAEj
					; .text:004A2CBAj ...
		cmp	dword_5BE6D8, 0
		jz	short loc_4A2DAA
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4A2DAA
		mov	edx, [ebp+14h]
		xor	ecx, ecx
		mov	[ebp-46Ch], edx
		xor	eax, eax
		mov	dword ptr [ebp-468h], 1
		mov	dword ptr [ebp-464h], 10000h
		mov	[ebp-45Ch], ecx
		mov	[ebp-460h], ecx
		mov	[ebp-458h], eax
		lea	edx, [ebp-46Ch]
		push	edx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A2DAA:				; CODE XREF: .text:004A2D5Bj
					; .text:004A2D61j
		push	$CTW0("");(offset aAddress+0Dh) ;	format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	eax, [ebp-3Ch]
		push	eax		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A2DF0
		push	offset aFound1Referenc ; "Found	1 reference"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-254h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_4A2E15
; ---------------------------------------------------------------------------

loc_4A2DF0:				; CODE XREF: .text:004A2DC9j
		mov	ecx, stru_5FA8D4.n
		push	ecx
		push	offset aFoundIReferenc ; "Found	%i references"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-254h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4A2E15:				; CODE XREF: .text:004A2DEEj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4A2E46
		push	offset aIncomplete ; " (incomplete)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-254h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A2E46:				; CODE XREF: .text:004A2E19j
		mov	edx, [ebp+8]
		add	edx, 0Ch
		push	edx
		push	offset aRefsS	; "Refs	%s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-454h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-254h]	; int
		push	eax		; int
		mov	edx, [ebp+1Ch]	; int
		push	edx		; int
		lea	ecx, [ebp-454h]	; int
		push	ecx		; int
		push	1		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A2E89:				; CODE XREF: .text:004A264Fj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4A2E90@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int)
loc_4A2E90:				; CODE XREF: .text:004B659Fp
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_4A2E99:				; CODE XREF: .text:004A2EA1j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4A2E99
		mov	eax, [ebp-4]
		add	esp, 0FFFFFA8Ch
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4A2EBC
		xor	eax, eax
		jmp	loc_4A3618
; ---------------------------------------------------------------------------

loc_4A2EBC:				; CODE XREF: .text:004A2EB3j
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-40h], eax
		call	loc_4A0E20
		cmp	dword_586178, 0
		jz	short loc_4A2EDE
		call	Listmemory

loc_4A2EDE:				; CODE XREF: .text:004A2ED7j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-2Ch], ecx
		mov	[ebp-28h], ecx
		mov	[ebp-8], eax
		jmp	short loc_4A2F46
; ---------------------------------------------------------------------------

loc_4A2EED:				; CODE XREF: .text:004A2F4Fj
		mov	edx, [ebp-8]
		push	edx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4A2F43
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4A2F43
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	ecx, [edx]
		cmp	ecx, [eax]
		ja	short loc_4A2F43
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx]
		mov	edx, [ebp-34h]
		add	ecx, [eax+4]
		cmp	ecx, [edx]
		jbe	short loc_4A2F43
		mov	ecx, [ebp-34h]
		test	dword ptr [ecx+8], 2005000h
		jz	short loc_4A2F43
		mov	eax, [ebp-34h]
		mov	edx, [eax+4]
		add	[ebp-28h], edx

loc_4A2F43:				; CODE XREF: .text:004A2F05j
					; .text:004A2F0Ej ...
		inc	dword ptr [ebp-8]

loc_4A2F46:				; CODE XREF: .text:004A2EEBj
		mov	ecx, [ebp-8]
		cmp	ecx, memory.sorted.n
		jl	short loc_4A2EED
		xor	eax, eax
		mov	[ebp-10h], eax
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_4A34CE
; ---------------------------------------------------------------------------

loc_4A2F60:				; CODE XREF: .text:004A34DDj
		mov	ecx, [ebp-8]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	loc_4A34CB
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	loc_4A34CB
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	eax, [eax]
		mov	edx, [edx]
		cmp	edx, eax
		ja	loc_4A34CB
		mov	ecx, [ebp+8]	; int
		add	edx, [ecx+4]
		cmp	eax, edx
		jnb	loc_4A34CB
		mov	edx, [ebp-34h]
		test	dword ptr [edx+8], 2005000h
		jz	loc_4A34CB
		mov	edx, [ebp-34h]
		mov	edx, [edx+4]	; int
		add	[ebp-2Ch], edx
		mov	esi, eax
		mov	[ebp-1Ch], edx
		push	0		; flags
		mov	eax, [ebp-1Ch]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4A34CB
		call	Suspendallthreads
		push	0		; mode
		mov	edx, [ebp-1Ch]
		push	edx		; size
		push	esi		; _addr
		mov	ecx, [ebp-30h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, [ebp-1Ch]
		jz	short loc_4A3017
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx
		jmp	loc_4A34CB
; ---------------------------------------------------------------------------

loc_4A3017:				; CODE XREF: .text:004A3006j
		mov	edx, [ebp-34h]
		mov	edi, [edx+64h]
		mov	[ebp-20h], esi
		mov	ebx, esi
		mov	eax, [ebp-34h]
		mov	eax, [eax+4]
		mov	ecx, 1F4h
		xor	edx, edx
		div	ecx
		mov	[ebp-44h], eax
		mov	dword ptr [ebp-48h], 2000h
		mov	eax, [ebp-48h]
		cmp	eax, [ebp-44h]
		jbe	short loc_4A3048
		lea	edx, [ebp-48h]
		jmp	short loc_4A304B
; ---------------------------------------------------------------------------

loc_4A3048:				; CODE XREF: .text:004A3041j
		lea	edx, [ebp-44h]

loc_4A304B:				; CODE XREF: .text:004A3046j
		mov	eax, [edx]
		mov	[ebp-24h], eax
		jmp	loc_4A34B4
; ---------------------------------------------------------------------------

loc_4A3055:				; CODE XREF: .text:004A34BBj
		cmp	ebx, [ebp-20h]
		jb	loc_4A30E6
		push	offset aSearching ; "Searching - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-28h]
		push	ecx		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebp-2Ch]
		add	eax, ebx
		sub	eax, esi
		sub	eax, [ebp-1Ch]
		push	eax		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		mov	edx, [ebp-24h]
		add	esp, 8
		add	edx, ebx
		mov	ecx, hwollymain
		mov	[ebp-20h], edx
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		push	ecx		; hWnd
		lea	eax, [ebp-2578h]
		push	eax		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A30E6
		mov	eax, [ebp-2570h]
		cmp	eax, 20h
		jz	short loc_4A30C7
		cmp	eax, 1Bh
		jnz	short loc_4A30E6

loc_4A30C7:				; CODE XREF: .text:004A30C0j
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4A34C1
; ---------------------------------------------------------------------------

loc_4A30E5:				; CODE XREF: .text:004A31CEj
		inc	ebx

loc_4A30E6:				; CODE XREF: .text:004A3058j
					; .text:004A30B5j ...
		test	edi, edi
		jz	loc_4A31D4
		mov	edx, [ebp-1Ch]
		add	edx, esi
		cmp	ebx, edx
		jnb	loc_4A31D4
		mov	ecx, ebx
		sub	ecx, esi
		test	byte ptr [edi+ecx], 1Fh
		jz	loc_4A31D4
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 4
		jz	loc_4A31D4
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 7
		jz	loc_4A31D4
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 8
		jz	loc_4A31D4
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 9
		jz	short loc_4A31D4
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 0Bh
		jz	short loc_4A31D4
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 18h
		jz	short loc_4A31D4
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 19h
		jz	short loc_4A31D4
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ah
		jz	short loc_4A31D4
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jz	short loc_4A31D4
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Dh
		jz	short loc_4A31D4
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Eh
		jnz	loc_4A30E5

loc_4A31D4:				; CODE XREF: .text:004A30E8j
					; .text:004A30F5j ...
		mov	edx, [ebp-1Ch]
		add	edx, esi
		cmp	ebx, edx
		jnb	loc_4A34C1
		mov	[ebp-18h], ebx
		test	edi, edi
		jz	short loc_4A320A
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 9
		jnz	short loc_4A320A
		mov	eax, 1020000h
		mov	edx, [ebp-18h]
		mov	[ebp-14h], edx
		inc	ebx
		jmp	loc_4A3454
; ---------------------------------------------------------------------------

loc_4A320A:				; CODE XREF: .text:004A31E6j
					; .text:004A31F7j
		test	edi, edi
		jz	short loc_4A3230
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 0Bh
		jnz	short loc_4A3230
		mov	eax, 1020000h
		mov	edx, [ebp-18h]
		mov	[ebp-14h], edx
		inc	ebx
		jmp	loc_4A3454
; ---------------------------------------------------------------------------

loc_4A3230:				; CODE XREF: .text:004A320Cj
					; .text:004A321Dj
		test	edi, edi
		jz	loc_4A32CB
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 18h
		jz	short loc_4A325B
		mov	edx, ebx
		sub	edx, esi
		cmp	eax, 19h
		jz	short loc_4A325B
		mov	ecx, ebx
		sub	ecx, esi
		cmp	eax, 1Ah
		jnz	short loc_4A32CB

loc_4A325B:				; CODE XREF: .text:004A3247j
					; .text:004A3250j
		mov	eax, [ebp+8]
		lea	edx, [ebp-255Ch]
		push	eax		; pmod
		push	0		; mode
		push	edx		; da
		push	ebx		; ip
		mov	ecx, ebx
		mov	eax, [ebp-1Ch]
		sub	ecx, esi
		sub	eax, ecx
		push	eax		; size
		mov	edx, [ebp-30h]
		add	edx, ebx
		sub	edx, esi
		push	edx		; cmd
		call	Ndisasm
		add	esp, 18h
		inc	ebx
		cmp	dword ptr [ebp-2538h], 0
		jnz	loc_4A34B4
		mov	ecx, [ebp-2534h]
		and	ecx, 0FFh
		cmp	ecx, 7
		jnz	loc_4A34B4
		mov	eax, [ebp-2540h]
		and	eax, 0FF000000h
		cmp	eax, 70000000h
		jnz	loc_4A34B4
		xor	edx, edx
		mov	eax, 20000h
		mov	[ebp-14h], edx
		jmp	loc_4A3454
; ---------------------------------------------------------------------------

loc_4A32CB:				; CODE XREF: .text:004A3232j
					; .text:004A3259j
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	edx, [ebp-1D30h]
		push	edx		; da
		test	edi, edi
		jnz	short loc_4A32E0
		xor	ecx, ecx
		jmp	short loc_4A32E6
; ---------------------------------------------------------------------------

loc_4A32E0:				; CODE XREF: .text:004A32DAj
		mov	ecx, ebx
		add	ecx, edi
		sub	ecx, esi

loc_4A32E6:				; CODE XREF: .text:004A32DEj
		push	ecx		; dec
		push	ebx		; ip
		mov	eax, ebx
		sub	eax, esi
		mov	edx, [ebp-1Ch]
		sub	edx, eax
		push	edx		; cmdsize
		mov	eax, [ebp-30h]
		add	eax, ebx
		sub	eax, esi
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		inc	ebx
		cmp	dword ptr [ebp-1D04h], 0
		jnz	loc_4A34B4
		mov	eax, [ebp-1D1Ch]
		and	eax, 1Fh
		cmp	eax, 6
		jz	loc_4A34B4
		cmp	eax, 7
		jz	loc_4A34B4
		cmp	eax, 8
		jz	loc_4A34B4
		cmp	eax, 9
		jz	loc_4A34B4
		cmp	eax, 0Ch
		jz	loc_4A34B4
		cmp	eax, 0Dh
		jz	loc_4A34B4
		xor	edx, edx
		lea	ecx, [ebp-1CE4h]
		mov	[ebp-4], edx
		mov	[ebp-38h], ecx

loc_4A335D:				; CODE XREF: .text:004A33C8j
		mov	eax, [ebp-38h]
		test	byte ptr [eax+1], 2
		jz	short loc_4A33BA
		mov	edx, [ebp-38h]
		mov	eax, [edx+4]
		and	eax, 0F0000h
		cmp	eax, 30000h
		jz	short loc_4A33BA
		cmp	eax, 70000h
		jz	short loc_4A33BA
		mov	edx, [ebp-38h]
		mov	ecx, [edx+30h]
		mov	[ebp-14h], ecx
		cmp	dword ptr [ebp-14h], 10000h
		jb	short loc_4A33BA
		cmp	dword ptr [ebp-14h], 0FFFF0000h
		jnb	short loc_4A33BA
		push	100h		; nsymb
		lea	eax, [ebp-248h]
		push	eax		; symb
		push	1		; isstatic
		mov	edx, [ebp-14h]
		push	edx		; _addr
		call	Isstring
		add	esp, 10h
		test	eax, eax
		jz	short loc_4A33BA
		jmp	short loc_4A33CA
; ---------------------------------------------------------------------------

loc_4A33BA:				; CODE XREF: .text:004A3364j
					; .text:004A3376j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-38h], 460h
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4A335D

loc_4A33CA:				; CODE XREF: .text:004A33B8j
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4A344F
		cmp	dword_5BE6D0, 0
		jz	loc_4A34B4
		mov	ecx, [ebp-1D1Ch]
		and	ecx, 1Fh
		cmp	ecx, 0Ah
		jnz	loc_4A34B4
		mov	eax, [ebp-18h]
		push	eax		; _addr
		mov	edx, [ebp+8]
		add	edx, 950h
		push	edx		; pdat
		call	Findsimpledata
		add	esp, 8
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	loc_4A34B4
		mov	ecx, [ebp-3Ch]
		movzx	eax, word ptr [ecx+4]
		and	eax, 3Fh
		cmp	eax, 20h
		jnz	loc_4A34B4
		push	100h		; nsymb
		lea	edx, [ebp-248h]
		push	edx		; symb
		push	1		; isstatic
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+0Eh]
		push	eax		; _addr
		call	Isstring
		add	esp, 10h
		test	eax, eax
		jz	short loc_4A34B4
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx+0Eh]
		mov	[ebp-14h], ecx

loc_4A344F:				; CODE XREF: .text:004A33CEj
		mov	eax, 20000h

loc_4A3454:				; CODE XREF: .text:004A3205j
					; .text:004A322Bj ...
		mov	edx, [ebp-18h]
		mov	[ebp-460h], edx
		mov	dword ptr [ebp-45Ch], 1
		mov	[ebp-458h], eax
		mov	ecx, [ebp-460h]
		cmp	ecx, [ebp+0Ch]
		jnz	short loc_4A3487
		or	dword ptr [ebp-458h], 10000h
		xor	eax, eax
		mov	[ebp+0Ch], eax

loc_4A3487:				; CODE XREF: .text:004A3476j
		mov	edx, [ebp-14h]
		xor	ecx, ecx
		mov	[ebp-454h], edx
		mov	[ebp-450h], ecx
		xor	eax, eax
		lea	edx, [ebp-460h]
		mov	[ebp-44Ch], eax
		push	edx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A34B4:				; CODE XREF: .text:004A3050j
					; .text:004A328Bj ...
		mov	ecx, [ebp-1Ch]
		add	ecx, esi
		cmp	ebx, ecx
		jb	loc_4A3055

loc_4A34C1:				; CODE XREF: .text:004A30E0j
					; .text:004A31DBj
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4A34CB:				; CODE XREF: .text:004A2F78j
					; .text:004A2F85j ...
		inc	dword ptr [ebp-8]

loc_4A34CE:				; CODE XREF: .text:004A2F5Bj
		mov	edx, [ebp-8]
		cmp	edx, memory.sorted.n
		jge	short loc_4A34E3
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4A2F60

loc_4A34E3:				; CODE XREF: .text:004A34D7j
		cmp	dword_5BE6D8, 0
		jz	short loc_4A3539
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A3539
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebp-460h], ecx
		xor	edx, edx
		mov	dword ptr [ebp-45Ch], 1
		mov	dword ptr [ebp-458h], 10000h
		mov	[ebp-450h], eax
		mov	[ebp-454h], eax
		mov	[ebp-44Ch], edx
		lea	ecx, [ebp-460h]
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A3539:				; CODE XREF: .text:004A34EAj
					; .text:004A34F0j
		push	$CTW0("");(offset aAddress+0Dh) ;	format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	eax, [ebp-40h]
		push	eax		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A357F
		push	offset aFound1String ; "Found 1	string"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-248h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_4A35A4
; ---------------------------------------------------------------------------

loc_4A357F:				; CODE XREF: .text:004A3558j
		mov	ecx, stru_5FA8D4.n
		push	ecx
		push	offset aFoundIStringsA ; "Found	%i strings and references"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-248h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4A35A4:				; CODE XREF: .text:004A357Dj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4A35D5
		push	offset aIncomplete ; " (incomplete)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-248h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A35D5:				; CODE XREF: .text:004A35A8j
		mov	edx, [ebp+8]
		add	edx, 0Ch
		push	edx
		push	offset aStringsS ; "Strings %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-448h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-248h]	; int
		push	eax		; int
		mov	edx, [ebp+10h]	; int
		push	edx		; int
		lea	ecx, [ebp-448h]	; int
		push	ecx		; int
		push	3		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A3618:				; CODE XREF: .text:004A2EB7j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
