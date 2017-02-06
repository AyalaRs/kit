.code

; Exported entry 363. _Findsource
; Exported entry 535. Findsource

; t_source *__cdecl Findsource(ulong base, wchar_t *path)
		public Findsource
Findsource:				; CODE XREF: .text:0044A3E1p
					; .text:004CA2D6p ...
		push	ebp		; _Findsource
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jnz	short loc_4CA7F3
		xor	eax, eax
		xor	edx, edx
		mov	dword_5FCB80, eax
		xor	eax, eax
		mov	dword_56072C, edx
		jmp	loc_4CA89E
; ---------------------------------------------------------------------------

loc_4CA7F3:				; CODE XREF: .text:004CA7DBj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4CA802
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx],	0
		jnz	short loc_4CA809

loc_4CA802:				; CODE XREF: .text:004CA7F7j
		xor	eax, eax
		jmp	loc_4CA89E
; ---------------------------------------------------------------------------

loc_4CA809:				; CODE XREF: .text:004CA800j
		mov	eax, dword_5FCB80
		test	eax, eax
		jz	short loc_4CA847
		mov	edx, source.sorted.version
		cmp	edx, dword_56072C
		jnz	short loc_4CA847
		mov	ecx, [eax]
		and	ecx, 0FFFF0000h
		cmp	edi, ecx
		jnz	short loc_4CA847
		mov	edx, [ebp+0Ch]
		push	edx		; s2
		add	eax, 0Ch
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4CA847
		mov	eax, dword_5FCB80
		jmp	short loc_4CA89E
; ---------------------------------------------------------------------------

loc_4CA847:				; CODE XREF: .text:004CA810j
					; .text:004CA81Ej ...
		xor	esi, esi

loc_4CA849:				; CODE XREF: .text:004CA884j
		push	0		; subaddr
		mov	eax, esi
		add	eax, edi
		push	eax		; _addr
		push	offset source.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4CA886
		test	byte ptr [ebx+0Ah], 1
		jnz	short loc_4CA87D
		mov	eax, [ebp+0Ch]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4CA886

loc_4CA87D:				; CODE XREF: .text:004CA867j
		inc	esi
		cmp	esi, 0FFFFh
		jl	short loc_4CA849

loc_4CA886:				; CODE XREF: .text:004CA861j
					; .text:004CA87Bj
		test	ebx, ebx
		jz	short loc_4CA89C
		mov	ecx, source.sorted.version
		mov	dword_56072C, ecx
		mov	dword_5FCB80, ebx

loc_4CA89C:				; CODE XREF: .text:004CA888j
		mov	eax, ebx

loc_4CA89E:				; CODE XREF: .text:004CA7EEj
					; .text:004CA804j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; SORTFUNC loc_4CA8A4
loc_4CA8A4:				; DATA XREF: .text:0044A2E0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	ebx, [ebp+8]
		mov	esi, [ebp+0Ch]
		cmp	edx, 1
		jnz	short loc_4CA8DF
		mov	eax, [esi+214h]
		add	eax, eax
		add	eax, esi
		add	eax, 0Ch
		push	eax		; s2
		mov	edx, [ebx+214h]
		add	edx, edx
		add	edx, ebx
		add	edx, 0Ch
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		jmp	short loc_4CA8F4
; ---------------------------------------------------------------------------

loc_4CA8DF:				; CODE XREF: .text:004CA8B7j
		cmp	edx, 2
		jnz	short loc_4CA8F4
		lea	ecx, [esi+0Ch]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8

loc_4CA8F4:				; CODE XREF: .text:004CA8DDj
					; .text:004CA8E2j
		test	eax, eax
		jnz	short loc_4CA90E
		mov	ecx, [esi]
		mov	edx, [ebx]
		cmp	ecx, edx
		jbe	short loc_4CA905
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CA90E
; ---------------------------------------------------------------------------

loc_4CA905:				; CODE XREF: .text:004CA8FEj
		cmp	ecx, edx
		jnb	short loc_4CA90E
		mov	eax, 1

loc_4CA90E:				; CODE XREF: .text:004CA8F6j
					; .text:004CA903j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; DESTFUNC loc_4CA914
loc_4CA914:				; DATA XREF: .text:0044A2DBo
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4CA993
		mov	ebx, eax
		mov	eax, [ebx+218h]
		test	eax, eax
		jz	short loc_4CA93A
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+218h], edx

loc_4CA93A:				; CODE XREF: .text:004CA929j
		mov	eax, [ebx+21Ch]
		test	eax, eax
		jz	short loc_4CA953
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+21Ch], edx

loc_4CA953:				; CODE XREF: .text:004CA942j
		xor	ecx, ecx
		mov	[ebx+220h], ecx
		mov	eax, [ebx+224h]
		test	eax, eax
		jz	short loc_4CA974
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+224h], edx

loc_4CA974:				; CODE XREF: .text:004CA963j
		xor	ecx, ecx
		mov	[ebx+228h], ecx
		mov	[ebx+22Ch], ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4CA993:				; CODE XREF: .text:004CA91Dj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CA998:				; CODE XREF: .text:004C8A49p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDC4h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4CA9B8
		test	edi, edi
		jz	short loc_4CA9B8
		cmp	word ptr [edi],	0
		jnz	short loc_4CA9C0

loc_4CA9B8:				; CODE XREF: .text:004CA9ACj
					; .text:004CA9B0j
		or	eax, 0FFFFFFFFh
		jmp	loc_4CAAAB
; ---------------------------------------------------------------------------

loc_4CA9C0:				; CODE XREF: .text:004CA9B6j
		cmp	_imp__PathFileExistsW, 0
		jz	short loc_4CA9ED
		push	edi
		call	_imp__PathFileExistsW
		test	eax, eax
		jnz	short loc_4CA9ED
		cmp	dword_5D40C0, 0
		jz	short loc_4CA9E4
		xor	eax, eax
		jmp	loc_4CAAAB
; ---------------------------------------------------------------------------

loc_4CA9E4:				; CODE XREF: .text:004CA9DBj
		mov	dword ptr [ebp-4], 10000h
		jmp	short loc_4CA9F2
; ---------------------------------------------------------------------------

loc_4CA9ED:				; CODE XREF: .text:004CA9C7j
					; .text:004CA9D2j
		xor	edx, edx
		mov	[ebp-4], edx

loc_4CA9F2:				; CODE XREF: .text:004CA9EBj
		xor	ebx, ebx

loc_4CA9F4:				; CODE XREF: .text:004CAA12j
		push	0		; subaddr
		lea	eax, [ebx+esi]
		push	eax		; _addr
		push	offset source.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4CAA14
		inc	ebx
		cmp	ebx, 10000h
		jb	short loc_4CA9F4

loc_4CAA14:				; CODE XREF: .text:004CAA09j
		cmp	ebx, 10000h
		jb	short loc_4CAA24
		or	eax, 0FFFFFFFFh
		jmp	loc_4CAAAB
; ---------------------------------------------------------------------------

loc_4CAA24:				; CODE XREF: .text:004CAA1Aj
		push	238h		; n
		push	0		; c
		lea	edx, [ebp-23Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, esi
		mov	[ebp-23Ch], ebx
		mov	dword ptr [ebp-238h], 1
		mov	eax, [ebp-4]
		mov	[ebp-234h], eax
		push	edi		; src
		push	104h		; n
		lea	edx, [ebp-230h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, eax
		lea	eax, [ebp+edx*2-232h]
		jmp	short loc_4CAA79
; ---------------------------------------------------------------------------

loc_4CAA75:				; CODE XREF: .text:004CAA87j
		dec	edx
		add	eax, 0FFFFFFFEh

loc_4CAA79:				; CODE XREF: .text:004CAA73j
		test	edx, edx
		jle	short loc_4CAA89
		cmp	word ptr [eax],	5Ch
		jz	short loc_4CAA89
		cmp	word ptr [eax],	3Ah
		jnz	short loc_4CAA75

loc_4CAA89:				; CODE XREF: .text:004CAA7Bj
					; .text:004CAA81j
		mov	[ebp-28h], edx
		lea	ecx, [ebp-23Ch]
		push	ecx		; item
		push	offset source.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_4CAAA9
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CAAAB
; ---------------------------------------------------------------------------

loc_4CAAA9:				; CODE XREF: .text:004CAAA2j
		xor	eax, eax

loc_4CAAAB:				; CODE XREF: .text:004CA9BBj
					; .text:004CA9DFj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 364. _Getsourceline
; Exported entry 608. Getsourceline

; int __cdecl Getsourceline(ulong base,	wchar_t	*path, int line, int skipspaces, wchar_t *text,	wchar_t	*fname,	t_srcext **extent, int *nextent)
		public Getsourceline
Getsourceline:				; CODE XREF: .text:004770A3p
					; .text:004BC5EEp ...
		push	ebp		; _Getsourceline
		mov	ebp, esp
		add	esp, 0FFFFFBE8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+1Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4CAADF
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4CAADF
		mov	eax, [ebp+0Ch]
		cmp	word ptr [eax],	0
		jz	short loc_4CAADF
		cmp	dword ptr [ebp+10h], 0
		jge	short loc_4CAB0A

loc_4CAADF:				; CODE XREF: .text:004CAAC8j
					; .text:004CAACEj ...
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4CAAED
		mov	edx, [ebp+18h]
		mov	word ptr [edx],	0

loc_4CAAED:				; CODE XREF: .text:004CAAE3j
		test	edi, edi
		jz	short loc_4CAAF6
		mov	word ptr [edi],	0

loc_4CAAF6:				; CODE XREF: .text:004CAAEFj
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4CAB03
		mov	ecx, [ebp+24h]
		xor	eax, eax
		mov	[ecx], eax

loc_4CAB03:				; CODE XREF: .text:004CAAFAj
		xor	eax, eax
		jmp	loc_4CADAD
; ---------------------------------------------------------------------------

loc_4CAB0A:				; CODE XREF: .text:004CAADDj
		mov	edx, [ebp+0Ch]
		push	edx		; path
		push	esi		; base
		call	Findsource
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4CAB2D
		cmp	dword ptr [ebx+218h], 0
		jnz	short loc_4CAB2D
		push	ebx
		call	loc_4C9FFC
		pop	ecx

loc_4CAB2D:				; CODE XREF: .text:004CAB1Bj
					; .text:004CAB24j
		test	ebx, ebx
		jz	short loc_4CAB45
		mov	eax, [ebp+10h]
		cmp	eax, [ebx+220h]
		jge	short loc_4CAB45
		cmp	dword ptr [ebx+21Ch], 0
		jnz	short loc_4CAB70

loc_4CAB45:				; CODE XREF: .text:004CAB2Fj
					; .text:004CAB3Aj
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4CAB53
		mov	edx, [ebp+18h]
		mov	word ptr [edx],	0

loc_4CAB53:				; CODE XREF: .text:004CAB49j
		test	edi, edi
		jz	short loc_4CAB5C
		mov	word ptr [edi],	0

loc_4CAB5C:				; CODE XREF: .text:004CAB55j
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4CAB69
		mov	ecx, [ebp+24h]
		xor	eax, eax
		mov	[ecx], eax

loc_4CAB69:				; CODE XREF: .text:004CAB60j
		xor	eax, eax
		jmp	loc_4CADAD
; ---------------------------------------------------------------------------

loc_4CAB70:				; CODE XREF: .text:004CAB43j
		test	edi, edi
		jz	short loc_4CAB90
		mov	edx, [ebx+214h]
		add	edx, edx
		add	edx, ebx
		add	edx, 0Ch
		push	edx		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CAB90:				; CODE XREF: .text:004CAB72j
		mov	ecx, [ebp+10h]
		shl	ecx, 2
		lea	ecx, [ecx+ecx*2]
		add	ecx, [ebx+21Ch]
		mov	[ebp-10h], ecx
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_4CABB2
		cmp	dword ptr [ebp+24h], 0
		jz	loc_4CAD26

loc_4CABB2:				; CODE XREF: .text:004CABA6j
		mov	eax, [ebp-10h]
		cmp	dword ptr [eax+4], 0
		jge	loc_4CACFB
		push	80h
		lea	edx, [ebp-210h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		push	esi
		call	loc_4C9E14
		add	esp, 14h
		mov	[ebp-4], eax
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-10h]
		mov	ecx, [ebx+22Ch]
		mov	[edx+8], ecx
		mov	eax, [ebp-10h]
		xor	edx, edx
		mov	[eax+4], edx
		jmp	loc_4CACE6
; ---------------------------------------------------------------------------

loc_4CAC02:				; CODE XREF: .text:004CACF5j
		mov	ecx, [ebx+22Ch]	; int
		cmp	ecx, [ebx+228h]
		jl	short loc_4CAC32
		push	1		; flags
		push	0		; failed
		push	8		; itemsize
		lea	eax, [ebx+228h]	; int
		push	eax		; pcount
		mov	edx, [ebx+224h]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebx+224h], eax

loc_4CAC32:				; CODE XREF: .text:004CAC0Ej
		mov	ecx, [ebx+22Ch]
		cmp	ecx, [ebx+228h]
		jge	loc_4CACFB
		mov	eax, [ebp-10h]
		mov	edx, [eax+4]
		mov	edi, [ebp+edx*4-210h]

loc_4CAC51:				; CODE XREF: .text:004CACACj
		push	1		; decode
		push	1		; n
		push	edi		; ip
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx]
		push	eax		; base
		push	0		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	esi, eax
		cmp	edi, esi
		jz	short loc_4CACAE
		lea	eax, [ebp-8]
		lea	edx, [ebp-418h]
		push	eax
		push	edx
		push	esi
		call	loc_4C9D74
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4CACAE
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp+10h]
		jnz	short loc_4CACAE
		lea	eax, [ebp-418h]
		push	eax		; s2
		mov	edx, [ebp+0Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4CACAE
		mov	edi, esi
		jmp	short loc_4CAC51
; ---------------------------------------------------------------------------

loc_4CACAE:				; CODE XREF: .text:004CAC71j
					; .text:004CAC89j ...
		mov	ecx, [ebp-10h]
		mov	eax, [ebx+224h]
		mov	edx, [ebx+22Ch]
		mov	ecx, [ecx+4]
		mov	ecx, [ebp+ecx*4-210h]
		mov	[eax+edx*8], ecx
		mov	eax, [ebx+224h]
		mov	edx, [ebx+22Ch]
		mov	[eax+edx*8+4], edi
		inc	dword ptr [ebx+22Ch]
		mov	eax, [ebp-10h]
		inc	dword ptr [eax+4]

loc_4CACE6:				; CODE XREF: .text:004CABFDj
		mov	edx, [ebp-10h]
		mov	ecx, [edx+4]
		cmp	ecx, [ebp-4]
		jge	short loc_4CACFB
		cmp	dword ptr [ebp-0Ch], 0
		jnz	loc_4CAC02

loc_4CACFB:				; CODE XREF: .text:004CABB9j
					; .text:004CAC3Ej ...
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_4CAD15
		mov	eax, [ebp-10h]
		mov	ecx, [ebp+20h]
		mov	edx, [eax+8]
		shl	edx, 3
		add	edx, [ebx+224h]
		mov	[ecx], edx

loc_4CAD15:				; CODE XREF: .text:004CACFFj
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4CAD26
		mov	eax, [ebp-10h]
		mov	ecx, [ebp+24h]
		mov	edx, [eax+4]
		mov	[ecx], edx

loc_4CAD26:				; CODE XREF: .text:004CABACj
					; .text:004CAD19j
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4CAD33
		mov	eax, 1
		jmp	short loc_4CADAD
; ---------------------------------------------------------------------------

loc_4CAD33:				; CODE XREF: .text:004CAD2Aj
		mov	edx, [ebp-10h]
		mov	eax, [ebp-10h]
		mov	eax, [eax+0Ch]
		mov	edx, [edx]
		sub	eax, edx
		jmp	short loc_4CAD43
; ---------------------------------------------------------------------------

loc_4CAD42:				; CODE XREF: .text:004CAD59j
					; .text:004CAD68j
		dec	eax

loc_4CAD43:				; CODE XREF: .text:004CAD40j
		test	eax, eax
		jle	short loc_4CAD6A
		mov	ecx, eax
		add	ecx, edx
		mov	esi, [ebx+218h]
		movzx	ecx, byte ptr [esi+ecx-1]
		cmp	ecx, 0Ah
		jz	short loc_4CAD42
		mov	esi, eax
		add	esi, edx
		mov	edi, [ebx+218h]
		cmp	ecx, 0Dh
		jz	short loc_4CAD42

loc_4CAD6A:				; CODE XREF: .text:004CAD45j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4CAD92
		jmp	short loc_4CAD74
; ---------------------------------------------------------------------------

loc_4CAD72:				; CODE XREF: .text:004CAD85j
					; .text:004CAD90j
		inc	edx
		dec	eax

loc_4CAD74:				; CODE XREF: .text:004CAD70j
		test	eax, eax
		jle	short loc_4CAD92
		mov	ecx, [ebx+218h]
		movzx	ecx, byte ptr [ecx+edx]
		cmp	ecx, 20h
		jz	short loc_4CAD72
		mov	esi, [ebx+218h]
		cmp	ecx, 9
		jz	short loc_4CAD72

loc_4CAD92:				; CODE XREF: .text:004CAD6Ej
					; .text:004CAD76j
		push	100h		; nw
		mov	ecx, [ebp+18h]
		push	ecx		; w
		push	eax		; nt
		mov	eax, [ebx+218h]
		add	eax, edx
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_4CADAD:				; CODE XREF: .text:004CAB05j
					; .text:004CAB6Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4CADB4(int, HWND hWnd, int)
loc_4CADB4:				; DATA XREF: .text:004CB240o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4CADCD
		sub	eax, 13h
		jz	short loc_4CADF1
		sub	eax, 8
		jz	short loc_4CAE02
		jmp	short loc_4CAE10
; ---------------------------------------------------------------------------

loc_4CADCD:				; CODE XREF: .text:004CADBFj
		push	0		; index
		push	offset loc_4CA404 ; menufunc
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

loc_4CADF1:				; CODE XREF: .text:004CADC4j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+0Ch]
		push	edx		; hWnd
		call	InvalidateRect
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CAE02:				; CODE XREF: .text:004CADC9j
		or	dword_57FE7C, 100h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CAE10:				; CODE XREF: .text:004CADCBj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CAE14:				; DATA XREF: .text:004CB262o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE8h
		xor	eax, eax
		push	ebx
		push	esi
		mov	ebx, [ebp+20h]
		mov	[ebp-8], eax
		mov	edx, [ebp+1Ch]
		add	edx, 4		; switch 6 cases
		cmp	edx, 5
		ja	loc_4CB17A	; jumptable 004CAE36 default case
		jmp	ds:off_4CAE3D[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4CAE3D	dd offset loc_4CAE55	; DATA XREF: .text:004CAE36r
		dd offset loc_4CAE5F	; jump table for switch	statement
		dd offset loc_4CAEE4
		dd offset loc_4CAEEB
		dd offset loc_4CAF48
		dd offset loc_4CB12F
; ---------------------------------------------------------------------------

loc_4CAE55:				; CODE XREF: .text:004CAE36j
					; DATA XREF: .text:off_4CAE3Do
		mov	eax, 210h	; jumptable 004CAE36 case -4
		jmp	loc_4CB17D
; ---------------------------------------------------------------------------

loc_4CAE5F:				; CODE XREF: .text:004CAE36j
					; DATA XREF: .text:off_4CAE3Do
		push	offset g_src_path ; jumptable 004CAE36 case -3
		mov	edx, g_src_base
		push	edx		; base
		call	Findsource
		add	esp, 8
		mov	[ebx], eax
		call	Getcputhreadid
		push	eax		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jz	short loc_4CAE8E
		cmp	dword ptr [eax+4ECh], 0
		jnz	short loc_4CAE97

loc_4CAE8E:				; CODE XREF: .text:004CAE83j
		mov	dword ptr [ebx+4], 0FFFFFFFFh
		jmp	short loc_4CAEDD
; ---------------------------------------------------------------------------

loc_4CAE97:				; CODE XREF: .text:004CAE8Cj
		lea	ecx, [ebx+4]
		lea	edx, [ebp-218h]
		push	ecx
		push	edx
		mov	eax, [eax+330h]
		push	eax
		call	loc_4C9D74
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4CAEBE
		mov	dword ptr [ebx+4], 0FFFFFFFFh
		jmp	short loc_4CAEDD
; ---------------------------------------------------------------------------

loc_4CAEBE:				; CODE XREF: .text:004CAEB3j
		push	offset g_src_path ; s2
		lea	ecx, [ebp-218h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4CAEDD
		mov	dword ptr [ebx+4], 0FFFFFFFFh

loc_4CAEDD:				; CODE XREF: .text:004CAE95j
					; .text:004CAEBCj ...
		xor	eax, eax
		jmp	loc_4CB17D
; ---------------------------------------------------------------------------

loc_4CAEE4:				; CODE XREF: .text:004CAE36j
					; DATA XREF: .text:off_4CAE3Do
		xor	eax, eax	; jumptable 004CAE36 case -2
		jmp	loc_4CB17D
; ---------------------------------------------------------------------------

loc_4CAEEB:				; CODE XREF: .text:004CAE36j
					; DATA XREF: .text:off_4CAE3Do
		mov	edx, [ebp+18h]	; jumptable 004CAE36 case -1
		mov	ecx, [edx]
		add	ecx, srccode._offset
		mov	[ebp-0Ch], ecx
		mov	eax, [ebx]
		test	eax, eax
		jz	loc_4CB17A	; jumptable 004CAE36 default case
		mov	edx, [eax+220h]
		cmp	edx, [ebp-0Ch]
		jle	loc_4CB17A	; jumptable 004CAE36 default case
		lea	ecx, [ebx+20Ch]
		lea	edx, [ebx+208h]
		push	ecx		; nextent
		push	edx		; extent
		add	ebx, 8
		push	0		; fname
		push	ebx		; text
		push	0		; skipspaces
		mov	edx, [ebp-0Ch]
		push	edx		; line
		push	offset g_src_path ; path
		mov	eax, [eax]
		and	eax, 0FFFF0000h
		push	eax		; base
		call	Getsourceline
		add	esp, 20h
		xor	eax, eax
		jmp	loc_4CB17D
; ---------------------------------------------------------------------------

loc_4CAF48:				; CODE XREF: .text:004CAE36j
					; DATA XREF: .text:off_4CAE3Do
		mov	edx, [ebp+18h]	; jumptable 004CAE36 case 0
		mov	ecx, [edx]
		add	ecx, srccode._offset
		mov	[ebp-0Ch], ecx
		mov	eax, [ebx]
		test	eax, eax
		jz	loc_4CB17A	; jumptable 004CAE36 default case
		mov	edx, [eax+220h]
		cmp	edx, [ebp-0Ch]
		jle	loc_4CB17A	; jumptable 004CAE36 default case
		cmp	dword ptr [ebx+20Ch], 0
		jnz	short loc_4CAF93
		push	offset asc_560CEA ; "  "
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_4CAFD0
; ---------------------------------------------------------------------------

loc_4CAF93:				; CODE XREF: .text:004CAF76j
		cmp	dword ptr [ebx+20Ch], 1
		jnz	short loc_4CAFB7
		push	offset asc_560CF0 ; "> "
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_4CAFD0
; ---------------------------------------------------------------------------

loc_4CAFB7:				; CODE XREF: .text:004CAF9Aj
		push	offset asc_560CF6 ; ">>"
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax

loc_4CAFD0:				; CODE XREF: .text:004CAF91j
					; .text:004CAFB5j
		mov	ecx, [ebp-0Ch]
		inc	ecx
		push	ecx
		push	offset a5i_	; "%5i."
		mov	eax, [ebp-8]
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-8], eax
		mov	edx, [ebx+4]
		cmp	edx, [ebp-0Ch]
		jnz	short loc_4CAFFF
		mov	dword ptr [ebp-10h], 1000h
		jmp	short loc_4CB004
; ---------------------------------------------------------------------------

loc_4CAFFF:				; CODE XREF: .text:004CAFF4j
		xor	ecx, ecx
		mov	[ebp-10h], ecx

loc_4CB004:				; CODE XREF: .text:004CAFFDj
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4CB097
; ---------------------------------------------------------------------------

loc_4CB00E:				; CODE XREF: .text:004CB0A0j
		mov	edx, [ebx+208h]
		mov	ecx, [ebp-4]
		mov	eax, [edx+ecx*8+4]
		inc	eax
		push	eax		; addr1
		mov	edx, [ebx+208h]
		mov	ecx, [ebp-4]
		mov	eax, [edx+ecx*8]
		push	eax		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jl	short loc_4CB0A6

loc_4CB03D:				; CODE XREF: .text:004CB092j
		push	esi		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4CB094
		mov	edx, [ebx+208h]
		mov	ecx, [ebp-4]
		mov	edx, [edx+ecx*8+4]
		cmp	edx, [eax]
		jb	short loc_4CB094
		mov	edx, [eax+8]
		test	dh, 10h
		jz	short loc_4CB091
		test	edx, 20000h
		jz	short loc_4CB079
		or	dword ptr [ebp-10h], 800h
		jmp	short loc_4CB091
; ---------------------------------------------------------------------------

loc_4CB079:				; CODE XREF: .text:004CB06Ej
		test	edx, 40000h
		jz	short loc_4CB08A
		or	dword ptr [ebp-10h], 400h
		jmp	short loc_4CB091
; ---------------------------------------------------------------------------

loc_4CB08A:				; CODE XREF: .text:004CB07Fj
		or	dword ptr [ebp-10h], 200h

loc_4CB091:				; CODE XREF: .text:004CB066j
					; .text:004CB077j ...
		inc	esi
		jmp	short loc_4CB03D
; ---------------------------------------------------------------------------

loc_4CB094:				; CODE XREF: .text:004CB04Dj
					; .text:004CB05Ej
		inc	dword ptr [ebp-4]

loc_4CB097:				; CODE XREF: .text:004CB009j
		mov	eax, [ebx+20Ch]
		cmp	eax, [ebp-4]
		jg	loc_4CB00E

loc_4CB0A6:				; CODE XREF: .text:004CB03Bj
		mov	eax, [ebp-10h]
		and	eax, 1000h
		test	eax, eax
		jz	short loc_4CB0C6
		test	byte ptr [ebp-0Fh], 6
		jz	short loc_4CB0C6
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 807h
		jmp	loc_4CB17A	; jumptable 004CAE36 default case
; ---------------------------------------------------------------------------

loc_4CB0C6:				; CODE XREF: .text:004CB0B0j
					; .text:004CB0B6j
		test	eax, eax
		jz	short loc_4CB0D8
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 803h
		jmp	loc_4CB17A	; jumptable 004CAE36 default case
; ---------------------------------------------------------------------------

loc_4CB0D8:				; CODE XREF: .text:004CB0C8j
		test	byte ptr [ebp-0Fh], 2
		jz	short loc_4CB0EC
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 804h
		jmp	loc_4CB17A	; jumptable 004CAE36 default case
; ---------------------------------------------------------------------------

loc_4CB0EC:				; CODE XREF: .text:004CB0DCj
		test	byte ptr [ebp-0Fh], 4
		jz	short loc_4CB0FD
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 805h
		jmp	short loc_4CB17A ; jumptable 004CAE36 default case
; ---------------------------------------------------------------------------

loc_4CB0FD:				; CODE XREF: .text:004CB0F0j
		test	byte ptr [ebp-0Fh], 8
		jz	short loc_4CB10E
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 806h
		jmp	short loc_4CB17A ; jumptable 004CAE36 default case
; ---------------------------------------------------------------------------

loc_4CB10E:				; CODE XREF: .text:004CB101j
		mov	eax, [ebp-0Ch]
		cmp	eax, srccode.sorted.selected
		jnz	short loc_4CB124
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 880h
		jmp	short loc_4CB17A ; jumptable 004CAE36 default case
; ---------------------------------------------------------------------------

loc_4CB124:				; CODE XREF: .text:004CB117j
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 800h
		jmp	short loc_4CB17A ; jumptable 004CAE36 default case
; ---------------------------------------------------------------------------

loc_4CB12F:				; CODE XREF: .text:004CAE36j
					; DATA XREF: .text:off_4CAE3Do
		mov	eax, [ebp+18h]	; jumptable 004CAE36 case 1
		mov	edx, [eax]
		add	edx, srccode._offset
		mov	[ebp-0Ch], edx
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4CB17A ; jumptable 004CAE36 default case
		mov	edx, [eax+220h]
		cmp	edx, [ebp-0Ch]
		jle	short loc_4CB17A ; jumptable 004CAE36 default case
		add	ebx, 8
		push	ebx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		mov	edx, [ebp-0Ch]
		cmp	edx, srccode.sorted.selected
		jnz	short loc_4CB17A ; jumptable 004CAE36 default case
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 80h

loc_4CB17A:				; CODE XREF: .text:004CAE30j
					; .text:004CAEFDj ...
		mov	eax, [ebp-8]	; jumptable 004CAE36 default case

loc_4CB17D:				; CODE XREF: .text:004CAE5Aj
					; .text:004CAEDFj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CB184:				; DATA XREF: .text:004CB26Co
		push	ebp
		mov	ebp, esp
		push	offset g_src_path ; path
		mov	eax, g_src_base
		push	eax		; base
		call	Findsource
		add	esp, 8
		test	eax, eax
		jz	short loc_4CB1B3
		mov	edx, [ebp+0Ch]
		mov	[eax+230h], edx
		mov	ecx, srccode._offset
		mov	[eax+234h], ecx

loc_4CB1B3:				; CODE XREF: .text:004CB19Cj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CB1B8:				; CODE XREF: .text:00410086p
					; .text:0047612Dp ...
		push	ebp
		mov	ebp, esp
		cmp	srccode.bar.nbar, 0
		jnz	loc_4CB280
		push	offset aSourceCode_0 ; "Source code"
		push	offset srccode	; dst
		call	_wcscpy
		xor	eax, eax
		mov	srccode.mode, 0F9803h
		mov	srccode.bar.visible, eax
		mov	srccode.bar._name, offset aLine_0 ; "Line"
		xor	edx, edx
		mov	srccode.bar.expl, offset aLineNumber ; "Line number"
		mov	srccode.bar.mode, edx
		mov	srccode.bar.defdx, 0Ah
		mov	srccode.bar._name+4, offset aSource_0 ; "Source"
		xor	ecx, ecx
		mov	srccode.bar.expl+4, offset aSourceCode_0 ; "Source code"
		mov	srccode.bar.mode+4, ecx
		mov	srccode.bar.defdx+4, 100h
		mov	srccode.bar.nbar, 2
		xor	eax, eax
		mov	srccode.tabfunc, offset	loc_4CADB4
		xor	edx, edx
		mov	srccode.custommode, eax
		add	esp, 8
		xor	ecx, ecx
		mov	srccode.customdata, edx
		mov	srccode.updatefunc, ecx
		mov	srccode.drawfunc, offset loc_4CAE14
		mov	srccode.tableselfunc, offset loc_4CB184
		mov	srccode.menu, offset stru_560730

loc_4CB280:				; CODE XREF: .text:004CB1C2j
		cmp	srccode.hw, 0
		jnz	short loc_4CB2B8
		push	offset aSourceCode_0 ; "Source code"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset aIco_s	; "ICO_S"
		mov	eax, g_hInstance
		push	eax		; hi
		mov	edx, srccode.bar.nbar
		push	edx		; ncolumn
		push	0		; nrow
		push	offset srccode	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4CB2C8
; ---------------------------------------------------------------------------

loc_4CB2B8:				; CODE XREF: .text:004CB287j
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, srccode.hw
		push	ecx		; hWnd
		call	InvalidateRect

loc_4CB2C8:				; CODE XREF: .text:004CB2B6j
		cmp	srccode.hparent, 0
		jz	short loc_4CB34A
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4CB34A
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4CB2F4
		push	0		; lParam
		mov	edx, srccode.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4CB2F4:				; CODE XREF: .text:004CB2DEj
		mov	ecx, srccode.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4CB311
		push	9		; nCmdShow
		mov	eax, srccode.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4CB311:				; CODE XREF: .text:004CB302j
		mov	edx, srccode.hw
		push	edx		; hWnd
		call	SetFocus
		mov	eax, srccode.sorted.selected
		mov	edx, eax
		inc	edx
		push	edx		; y1
		push	0		; x1
		push	eax		; y0
		push	0		; x0
		push	0FFFFFFFFh	; column
		push	offset srccode	; pt
		call	Maketableareavisible
		add	esp, 18h
		mov	ecx, srccode.hw
		push	0		; bErase
		push	0		; lpRect
		push	ecx		; hWnd
		call	InvalidateRect

loc_4CB34A:				; CODE XREF: .text:004CB2CFj
					; .text:004CB2D5j
		mov	eax, srccode.hw
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 365. _Showsourcecode
; Exported entry 719. Showsourcecode

; int __cdecl Showsourcecode(ulong base, wchar_t *path,	int line)
		public Showsourcecode
Showsourcecode:				; CODE XREF: .text:0044A302p
					; .text:0047611Fp ...
		push	ebp		; _Showsourcecode
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+10h]
		jnz	short loc_4CB399
		mov	g_src_path, 0
		xor	eax, eax
		xor	edx, edx
		mov	srccode.sorted.selected, eax
		xor	ecx, ecx
		mov	srccode.sorted.n, edx
		mov	srccode._offset,	ecx
		xor	eax, eax
		mov	dword ptr [ebp-4], 1
		mov	srccode.sorted.selected, eax
		jmp	loc_4CB4EB
; ---------------------------------------------------------------------------

loc_4CB399:				; CODE XREF: .text:004CB364j
		mov	edx, [ebp+0Ch]
		push	edx		; path
		mov	ecx, [ebp+8]
		push	ecx		; base
		call	Findsource
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4CB3B7
		or	eax, 0FFFFFFFFh
		jmp	loc_4CB50B
; ---------------------------------------------------------------------------

loc_4CB3B7:				; CODE XREF: .text:004CB3ADj
		cmp	dword ptr [esi+218h], 0
		jnz	short loc_4CB3C7
		push	esi
		call	loc_4C9FFC
		pop	ecx

loc_4CB3C7:				; CODE XREF: .text:004CB3BEj
		cmp	dword ptr [esi+218h], 0
		jnz	short loc_4CB3D8
		or	eax, 0FFFFFFFFh
		jmp	loc_4CB50B
; ---------------------------------------------------------------------------

loc_4CB3D8:				; CODE XREF: .text:004CB3CEj
		test	ebx, ebx
		jge	short loc_4CB3EA
		mov	ebx, [esi+230h]
		mov	edi, [esi+234h]
		jmp	short loc_4CB3F0
; ---------------------------------------------------------------------------

loc_4CB3EA:				; CODE XREF: .text:004CB3DAj
		mov	edi, srccode._offset

loc_4CB3F0:				; CODE XREF: .text:004CB3E8j
		mov	eax, [esi+220h]
		cmp	ebx, eax
		jl	short loc_4CB3FD
		mov	ebx, eax
		dec	ebx

loc_4CB3FD:				; CODE XREF: .text:004CB3F8j
		test	ebx, ebx
		jge	short loc_4CB403
		xor	ebx, ebx

loc_4CB403:				; CODE XREF: .text:004CB3FFj
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, g_src_base
		cmp	edx, [ebp+8]
		jnz	short loc_4CB428
		push	offset g_src_path ; s2
		mov	ecx, [ebp+0Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4CB460

loc_4CB428:				; CODE XREF: .text:004CB411j
		mov	eax, [ebp+8]
		mov	g_src_base, eax
		mov	edx, [ebp+0Ch]
		push	edx		; src
		push	104h		; n
		push	offset g_src_path ; dest
		call	StrcopyW
		mov	ecx, [esi+220h]
		add	esp, 0Ch
		xor	eax, eax
		mov	srccode.sorted.n, ecx
		mov	dword ptr [ebp-4], 1
		mov	srccode._offset,	eax

loc_4CB460:				; CODE XREF: .text:004CB426j
		push	offset srccode	; pt
		call	Linecount
		pop	ecx
		test	eax, eax
		jnz	short loc_4CB474
		mov	eax, 1

loc_4CB474:				; CODE XREF: .text:004CB46Dj
		lea	edx, [eax-1]
		sar	edx, 1
		jns	short loc_4CB47E
		adc	edx, 0

loc_4CB47E:				; CODE XREF: .text:004CB479j
		mov	[ebp-8], edx
		mov	ecx, dword_5BE6CC
		cmp	ecx, [ebp-8]
		jge	short loc_4CB493
		mov	edx, offset dword_5BE6CC
		jmp	short loc_4CB496
; ---------------------------------------------------------------------------

loc_4CB493:				; CODE XREF: .text:004CB48Aj
		lea	edx, [ebp-8]

loc_4CB496:				; CODE XREF: .text:004CB491j
		mov	edx, [edx]
		lea	ecx, [eax+edi]
		sub	ecx, edx
		cmp	ebx, ecx
		jl	short loc_4CB4AA
		mov	edi, ebx
		sub	edi, eax
		add	edi, edx
		inc	edi
		jmp	short loc_4CB4B5
; ---------------------------------------------------------------------------

loc_4CB4AA:				; CODE XREF: .text:004CB49Fj
		lea	eax, [edx+edi]
		cmp	ebx, eax
		jge	short loc_4CB4B5
		mov	edi, ebx
		sub	edi, edx

loc_4CB4B5:				; CODE XREF: .text:004CB4A8j
					; .text:004CB4AFj
		test	edi, edi
		jge	short loc_4CB4BB
		xor	edi, edi

loc_4CB4BB:				; CODE XREF: .text:004CB4B7j
		cmp	edi, srccode._offset
		jz	short loc_4CB4D0
		mov	dword ptr [ebp-4], 1
		mov	srccode._offset,	edi

loc_4CB4D0:				; CODE XREF: .text:004CB4C1j
		cmp	ebx, srccode.sorted.selected
		jz	short loc_4CB4E5
		mov	dword ptr [ebp-4], 1
		mov	srccode.sorted.selected, ebx

loc_4CB4E5:				; CODE XREF: .text:004CB4D6j
		mov	[esi+230h], ebx

loc_4CB4EB:				; CODE XREF: .text:004CB394j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4CB509
		cmp	srccode.hw, 0
		jz	short loc_4CB509
		push	0		; bErase
		push	0		; lpRect
		mov	eax, srccode.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_4CB509:				; CODE XREF: .text:004CB4EFj
					; .text:004CB4F8j
		xor	eax, eax

loc_4CB50B:				; CODE XREF: .text:004CB3B2j
					; .text:004CB3D3j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4CB514(int, HWND hWnd, int)
loc_4CB514:				; DATA XREF: .text:004CB6EBo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4CB52D
		sub	eax, 13h
		jz	short loc_4CB551
		sub	eax, 8
		jz	short loc_4CB562
		jmp	short loc_4CB570
; ---------------------------------------------------------------------------

loc_4CB52D:				; CODE XREF: .text:004CB51Fj
		push	0		; index
		push	offset loc_4CA74C ; menufunc
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

loc_4CB551:				; CODE XREF: .text:004CB524j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+0Ch]
		push	edx		; hWnd
		call	InvalidateRect
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CB562:				; CODE XREF: .text:004CB529j
		or	dword_57FE7C, 200h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CB570:				; CODE XREF: .text:004CB52Bj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CB574:				; DATA XREF: .text:004CB70Fo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+1Ch]
		xor	esi, esi
		add	eax, 4
		mov	ebx, [ebp+18h]
		cmp	eax, 6		; switch 7 cases
		ja	loc_4CB61D	; jumptable 004CB58D default case
		jmp	ds:off_4CB594[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4CB594	dd offset loc_4CB5B0	; DATA XREF: .text:004CB58Dr
		dd offset loc_4CB5B4	; jump table for switch	statement
		dd offset loc_4CB5B8
		dd offset loc_4CB5BC
		dd offset loc_4CB5C0
		dd offset loc_4CB5E3
		dd offset loc_4CB606
; ---------------------------------------------------------------------------

loc_4CB5B0:				; CODE XREF: .text:004CB58Dj
					; DATA XREF: .text:off_4CB594o
		xor	eax, eax	; jumptable 004CB58D case 0
		jmp	short loc_4CB62E
; ---------------------------------------------------------------------------

loc_4CB5B4:				; CODE XREF: .text:004CB58Dj
					; DATA XREF: .text:off_4CB594o
		xor	eax, eax	; jumptable 004CB58D case 1
		jmp	short loc_4CB62E
; ---------------------------------------------------------------------------

loc_4CB5B8:				; CODE XREF: .text:004CB58Dj
					; DATA XREF: .text:off_4CB594o
		xor	eax, eax	; jumptable 004CB58D case 2
		jmp	short loc_4CB62E
; ---------------------------------------------------------------------------

loc_4CB5BC:				; CODE XREF: .text:004CB58Dj
					; DATA XREF: .text:off_4CB594o
		xor	eax, eax	; jumptable 004CB58D case 3
		jmp	short loc_4CB62E
; ---------------------------------------------------------------------------

loc_4CB5C0:				; CODE XREF: .text:004CB58Dj
					; DATA XREF: .text:off_4CB594o
		mov	edx, [ebx]	; jumptable 004CB58D case 4
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4CB61D ; jumptable 004CB58D default case
		add	eax, 0Ch
		push	eax		; src
		push	20h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_4CB61D ; jumptable 004CB58D default case
; ---------------------------------------------------------------------------

loc_4CB5E3:				; CODE XREF: .text:004CB58Dj
					; DATA XREF: .text:off_4CB594o
		mov	eax, [ebx+214h]	; jumptable 004CB58D case 5
		add	eax, eax
		add	eax, ebx
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_4CB61D ; jumptable 004CB58D default case
; ---------------------------------------------------------------------------

loc_4CB606:				; CODE XREF: .text:004CB58Dj
					; DATA XREF: .text:off_4CB594o
		lea	eax, [ebx+0Ch]	; jumptable 004CB58D case 6
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_4CB61D:				; CODE XREF: .text:004CB587j
					; .text:004CB5CBj ...
		test	byte ptr [ebx+0Ah], 1 ;	jumptable 004CB58D default case
		jz	short loc_4CB62C
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 2

loc_4CB62C:				; CODE XREF: .text:004CB621j
		mov	eax, esi

loc_4CB62E:				; CODE XREF: .text:004CB5B2j
					; .text:004CB5B6j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CB634:				; CODE XREF: .text:0040B094p
					; .text:00410097p
		push	ebp
		mov	ebp, esp
		cmp	source.bar.nbar, 0
		jnz	loc_4CB728
		push	offset aSourceFiles ; "Source files"
		push	offset source	; dst
		call	_wcscpy
		mov	source.mode, 0F0000h
		mov	source.bar.visible, 1
		mov	source.bar._name, offset	aModule_7 ; "Module"
		mov	source.bar.expl, offset	aModuleContaini	; "Module containing source file"
		mov	source.bar.mode, 2
		mov	source.bar.defdx, 0Ch
		mov	source.bar._name+4, offset aSource_0 ; "Source"
		mov	source.bar.expl+4, offset aNameOfTheSourc ; "Name of the source	file"
		mov	source.bar.mode+4, 2
		mov	source.bar.defdx+4, 10h
		mov	source.bar._name+8, offset aPath_2 ; "Path"
		mov	source.bar.expl+8, offset aFullNameOfSour ; "Full _name of source file, including pat"...
		mov	source.bar.mode+8, 2
		mov	source.bar.defdx+8, 100h
		mov	source.bar.nbar, 3
		xor	eax, eax
		mov	source.tabfunc,	offset loc_4CB514
		xor	edx, edx
		mov	source.custommode, eax
		xor	ecx, ecx
		mov	source.customdata, edx
		mov	source.updatefunc, ecx
		add	esp, 8
		xor	eax, eax
		mov	source.drawfunc, offset	loc_4CB574
		mov	source.tableselfunc, eax
		mov	source.menu, (offset stru_560730._name+0F0h)

loc_4CB728:				; CODE XREF: .text:004CB63Ej
		cmp	source.hw, 0
		jnz	short loc_4CB761
		push	offset aSourceFiles ; "Source files"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset aIco_s	; "ICO_S"
		mov	edx, g_hInstance
		push	edx		; hi
		mov	ecx, source.bar.nbar
		push	ecx		; ncolumn
		push	0		; nrow
		push	offset source	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4CB770
; ---------------------------------------------------------------------------

loc_4CB761:				; CODE XREF: .text:004CB72Fj
		push	0		; bErase
		push	0		; lpRect
		mov	eax, source.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_4CB770:				; CODE XREF: .text:004CB75Fj
		cmp	source.hparent,	0
		jz	short loc_4CB7C5
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4CB7C5
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4CB79C
		push	0		; lParam
		mov	edx, source.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4CB79C:				; CODE XREF: .text:004CB786j
		mov	ecx, source.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4CB7B9
		push	9		; nCmdShow
		mov	eax, source.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4CB7B9:				; CODE XREF: .text:004CB7AAj
		mov	edx, source.hw
		push	edx		; hWnd
		call	SetFocus

loc_4CB7C5:				; CODE XREF: .text:004CB777j
					; .text:004CB77Dj
		mov	eax, source.hw
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4CB7CC(const void *, const void *)
loc_4CB7CC:				; DATA XREF: .text:004CB9DFo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		add	eax, 8
		push	eax		; s2
		mov	edx, [ebp+8]
		add	edx, 8
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4CB7E8@<eax>(int@<eax>, int@<edx>,	int@<ecx>, HWND	hWnd, int, int)
loc_4CB7E8:				; CODE XREF: .text:004CC8D9p
					; .text:004CD07Bp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBD8h
		push	ebx
		push	esi
		push	edi		; arglist
		push	0		; lParam
		push	0		; wParam
		push	14Bh		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	SendMessageW
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_4CBA8D
		mov	dword ptr [ebp-28h], 22h
		mov	dword ptr [ebp-24h], 23h
		mov	dword ptr [ebp-20h], 24h
		lea	edx, [ebp-28h]
		push	3		; n
		push	edx		; list
		xor	esi, esi
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp+0Ch]
		xor	ebx, ebx
		xor	edi, edi
		mov	eax, [eax+458h]
		mov	edx, eax
		add	edx, [ecx+45Ch]
		push	edx		; addr1
		push	eax		; addr0
		call	Startnextnamelist
		add	esp, 10h

loc_4CB84F:				; CODE XREF: .text:004CB8A3j
					; .text:004CB8C0j ...
		push	0		; datasize
		push	0		; data
		lea	eax, [ebp-8]
		push	eax		; type
		lea	edx, [ebp-18h]
		push	edx		; _addr
		call	Findnextdatalist
		add	esp, 10h
		test	eax, eax
		jz	loc_4CB9C9
		push	0		; psize
		mov	ecx, [ebp-18h]
		push	ecx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4CB8A5
		test	byte ptr [eax],	1Fh
		jz	short loc_4CB8A5
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_4CB8A5
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Dh
		jz	short loc_4CB8A5
		movzx	eax, byte ptr [eax]
		and	eax, 1Fh
		cmp	eax, 1Eh
		jnz	short loc_4CB84F

loc_4CB8A5:				; CODE XREF: .text:004CB87Bj
					; .text:004CB880j ...
		test	ebx, ebx
		jle	short loc_4CB8CC
		mov	eax, ebx
		shl	eax, 6
		add	eax, ebx
		mov	edx, [esi+eax*8-208h]
		cmp	edx, [ebp-18h]
		jnz	short loc_4CB8CC
		cmp	dword ptr [ebp-8], 24h
		jz	short loc_4CB84F
		cmp	dword_57FE94, 0
		jz	short loc_4CB84F
		dec	ebx

loc_4CB8CC:				; CODE XREF: .text:004CB8A7j
					; .text:004CB8BAj
		cmp	edi, ebx
		jg	short loc_4CB945
		test	edi, edi
		jnz	short loc_4CB8DD
		mov	dword ptr [ebp-0Ch], 80h
		jmp	short loc_4CB8E4
; ---------------------------------------------------------------------------

loc_4CB8DD:				; CODE XREF: .text:004CB8D2j
		mov	ecx, edi
		add	ecx, ecx	; int
		mov	[ebp-0Ch], ecx

loc_4CB8E4:				; CODE XREF: .text:004CB8DBj
		push	1		; flags
		mov	eax, [ebp-0Ch]
		mov	edx, eax	; int
		shl	eax, 6
		add	eax, edx
		shl	eax, 3		; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4CB91C
		push	offset aLowMemorySomeE ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4CB9C9
; ---------------------------------------------------------------------------

loc_4CB91C:				; CODE XREF: .text:004CB903j
		test	esi, esi
		jz	short loc_4CB93F
		mov	ecx, edi
		shl	ecx, 6
		add	ecx, edi
		shl	ecx, 3
		push	ecx		; n
		push	esi		; src
		mov	eax, [ebp-1Ch]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	esi		; data
		call	Memfree
		pop	ecx

loc_4CB93F:				; CODE XREF: .text:004CB91Ej
		mov	esi, [ebp-1Ch]
		mov	edi, [ebp-0Ch]

loc_4CB945:				; CODE XREF: .text:004CB8CEj
		mov	eax, ebx
		shl	eax, 6
		add	eax, ebx
		mov	edx, [ebp-18h]
		mov	[esi+eax*8], edx
		mov	ecx, [ebp-8]
		mov	[esi+eax*8+4], ecx
		cmp	dword ptr [ebp-8], 24h
		jnz	short loc_4CB99E
		push	4		; datasize
		lea	eax, [ebp-14h]
		push	eax		; data
		push	24h		; type
		mov	edx, [ebp-18h]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	loc_4CB84F
		mov	eax, ebx
		mov	ecx, [ebp-14h]
		shl	eax, 6
		push	ecx
		add	eax, ebx
		push	offset aU_2	; format
		shl	eax, 3
		add	eax, esi
		add	eax, 8
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4CB9C3
; ---------------------------------------------------------------------------

loc_4CB99E:				; CODE XREF: .text:004CB95Dj
		push	100h		; nname
		mov	edx, ebx
		shl	edx, 6
		add	edx, ebx
		shl	edx, 3
		add	edx, esi
		add	edx, 8
		push	edx		; _name
		mov	ecx, [ebp-8]
		push	ecx		; type
		mov	eax, [ebp-18h]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h

loc_4CB9C3:				; CODE XREF: .text:004CB99Cj
		inc	ebx
		jmp	loc_4CB84F
; ---------------------------------------------------------------------------

loc_4CB9C9:				; CODE XREF: .text:004CB865j
					; .text:004CB917j
		test	esi, esi
		jz	loc_4CBA8D
		cmp	a3, 0
		jz	short loc_4CB9F3
		cmp	ebx, 1
		jle	short loc_4CB9F3
		push	offset loc_4CB7CC ; fcmp
		push	208h		; width
		push	ebx		; nelem
		push	esi		; base
		call	_qsort
		add	esp, 10h

loc_4CB9F3:				; CODE XREF: .text:004CB9D8j
					; .text:004CB9DDj
		xor	edx, edx
		mov	[ebp-10h], edx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	edi, esi
		cmp	ebx, [ebp-4]
		jle	short loc_4CBA60

loc_4CBA04:				; CODE XREF: .text:004CBA5Ej
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 6
		add	eax, edx
		shl	eax, 3
		add	eax, esi
		add	eax, 8
		push	eax
		lea	eax, [ebp-428h]
		mov	ecx, [edi]
		push	ecx
		push	offset a08xS_0	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		lea	edx, [ebp-428h]
		push	edx		; lParam
		push	0		; wParam
		push	143h		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	SendMessageW
		mov	eax, [edi]
		cmp	eax, [ebp+10h]
		jnz	short loc_4CBA52
		mov	edx, [ebp-4]
		mov	[ebp-10h], edx

loc_4CBA52:				; CODE XREF: .text:004CBA4Aj
		inc	dword ptr [ebp-4]
		add	edi, 208h
		cmp	ebx, [ebp-4]
		jg	short loc_4CBA04

loc_4CBA60:				; CODE XREF: .text:004CBA02j
		push	0		; lParam
		mov	ecx, [ebp-10h]
		push	ecx		; wParam
		push	14Eh		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	SendMessageW
		mov	edx, [ebp-10h]
		mov	ecx, edx
		shl	edx, 6
		add	edx, ecx
		mov	eax, [esi+edx*8]
		push	esi		; data
		mov	stru_5FCDB0.addr0, eax
		call	Memfree
		pop	ecx

loc_4CBA8D:				; CODE XREF: .text:004CB80Aj
					; .text:004CB9CBj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4CBA94(HWND hDlg, int)
loc_4CBA94:				; CODE XREF: .text:004CBC05p
					; .text:004CC8F6p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	edi, [ebp+8]
		mov	esi, [ebp+0Ch]

loc_4CBAA2:				; CODE XREF: .text:004CBAC5j
		xor	eax, eax
		test	esi, esi
		jl	short loc_4CBAAC
		cmp	esi, ebx
		jle	short loc_4CBAAD

loc_4CBAAC:				; CODE XREF: .text:004CBAA6j
		inc	eax

loc_4CBAAD:				; CODE XREF: .text:004CBAAAj
		push	eax		; bEnable
		lea	edx, [ebx+424h]
		push	edx		; nIDDlgItem
		push	edi		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		inc	ebx
		cmp	ebx, 0Ah
		jl	short loc_4CBAA2
		test	esi, esi
		jl	short loc_4CBAD8
		cmp	esi, 0Ah
		jg	short loc_4CBAD8
		add	esi, 410h
		jmp	short loc_4CBADD
; ---------------------------------------------------------------------------

loc_4CBAD8:				; CODE XREF: .text:004CBAC9j
					; .text:004CBACEj
		mov	esi, 41Ah

loc_4CBADD:				; CODE XREF: .text:004CBAD6j
		push	esi		; nIDCheckButton
		push	41Ah		; nIDLastButton
		push	410h		; nIDFirstButton
		push	edi		; hDlg
		call	CheckRadioButton
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4CBAF4(HWND hDlg)
loc_4CBAF4:				; CODE XREF: .text:004CC8E5p
					; .text:004CD036p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 8

loc_4CBAFD:				; CODE XREF: .text:004CBB05j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4CBAFD
		mov	eax, [ebp-4]
		add	esp, 0FFFFFCD4h
		push	ebx
		push	esi
		push	edi
		push	6720h		; n
		push	0		; c
		lea	eax, [ebp-8330h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-8330h]
		mov	prtype,	0
		mov	ecx, stru_5FCDB0.addr0
		push	1		; follow
		push	0		; nexp
		push	0		; _name
		push	offset prtype	; rettype
		push	edx		; adec
		push	0		; pd
		push	ecx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	edi, eax
		push	0		; subaddr
		mov	eax, stru_5FCDB0.addr0
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4CBB81
		mov	edx, [ebp-8]
		test	dword ptr [edx+8], 7E00000h
		jnz	short loc_4CBB88

loc_4CBB81:				; CODE XREF: .text:004CBB73j
		test	edi, edi
		jnz	short loc_4CBB88
		or	edi, 0FFFFFFFFh

loc_4CBB88:				; CODE XREF: .text:004CBB7Fj
					; .text:004CBB83j
		xor	ebx, ebx
		lea	esi, [ebp-82E4h]

loc_4CBB90:				; CODE XREF: .text:004CBBFEj
		cmp	edi, ebx
		jle	short loc_4CBBC5
		cmp	word ptr [esi],	0
		jz	short loc_4CBBC5
		mov	eax, ebx
		lea	edx, [ebp-82E4h]
		shl	eax, 4
		lea	ecx, [ebx+411h]
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		add	eax, edx
		push	eax		; lpString
		push	ecx		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	SetDlgItemTextW
		jmp	short loc_4CBBF4
; ---------------------------------------------------------------------------

loc_4CBBC5:				; CODE XREF: .text:004CBB92j
					; .text:004CBB98j
		lea	edx, [ebx+1]
		lea	ecx, [ebp-1C10h]
		push	edx
		push	offset aArgI	; "Arg%i"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-1C10h]
		push	eax		; lpString
		lea	edx, [ebx+411h]
		push	edx		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW

loc_4CBBF4:				; CODE XREF: .text:004CBBC3j
		inc	ebx
		add	esi, 44Ch
		cmp	ebx, 0Ah
		jl	short loc_4CBB90
		push	edi		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4CBA94
		add	esp, 8
		xor	esi, esi
		xor	ebx, ebx
		test	edi, edi
		jl	loc_4CBD5C
		cmp	edi, 0Ah
		jle	short loc_4CBC47
		push	edi
		push	offset aAttentionIArgu ; " ATTENTION! %i ARGUMENTS!"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-1C10h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_4CBCC7
; ---------------------------------------------------------------------------

loc_4CBC47:				; CODE XREF: .text:004CBC1Cj
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4CBC79
		mov	ecx, [ebp-8]
		test	byte ptr [ecx+9], 10h
		jz	short loc_4CBC79
		push	offset aCallback_0 ; " Callback,"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-1C10h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax

loc_4CBC79:				; CODE XREF: .text:004CBC4Bj
					; .text:004CBC54j
		cmp	edi, 1
		jnz	short loc_4CBCA3
		push	(offset	aFunctionHas1Ar+18h) ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, esi
		add	ecx, ecx
		lea	eax, [ebp-1C10h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax
		jmp	short loc_4CBCC7
; ---------------------------------------------------------------------------

loc_4CBCA3:				; CODE XREF: .text:004CBC7Cj
		push	edi
		push	offset aIArguments ; " %i arguments"
		call	_T
		pop	ecx
		mov	edx, esi
		lea	ecx, [ebp-1C10h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax

loc_4CBCC7:				; CODE XREF: .text:004CBC42j
					; .text:004CBCA1j
		push	0		; datasize
		push	4Ah		; type
		mov	eax, stru_5FCDB0.addr0
		push	eax		; _addr
		call	Finddataptr
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4CBD07
		push	offset aDebugData ; " (debug data)\n"
		call	_T
		pop	ecx
		mov	edx, esi
		lea	ecx, [ebp-1C10h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax
		mov	ebx, 1
		jmp	short loc_4CBD5C
; ---------------------------------------------------------------------------

loc_4CBD07:				; CODE XREF: .text:004CBCDBj
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4CBD3B
		mov	eax, [ebp-8]
		cmp	byte ptr [eax+1Ch], 0
		jz	short loc_4CBD3B
		push	offset aGuessed_0 ; " (guessed)\n"
		call	_T
		pop	ecx
		mov	edx, esi
		lea	ecx, [ebp-1C10h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax
		jmp	short loc_4CBD5C
; ---------------------------------------------------------------------------

loc_4CBD3B:				; CODE XREF: .text:004CBD0Bj
					; .text:004CBD14j
		push	(offset	aDebugData+1Ah)	; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-1C10h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax
		mov	ebx, 1

loc_4CBD5C:				; CODE XREF: .text:004CBC13j
					; .text:004CBD05j ...
		test	edi, edi
		jle	loc_4CBE50
		test	ebx, ebx
		jz	loc_4CBE50
		xor	ebx, ebx
		lea	eax, [ebp-8324h]
		mov	[ebp-0Ch], eax
		jmp	short loc_4CBDE4
; ---------------------------------------------------------------------------

loc_4CBD79:				; CODE XREF: .text:004CBDEBj
		mov	edx, ebx
		shl	edx, 4
		add	edx, ebx
		lea	edx, [ebx+edx*8]
		lea	edx, [ebx+edx*2]
		shl	edx, 2
		lea	ecx, [ebp-8322h]
		add	edx, ecx
		push	edx
		mov	eax, [ebp-0Ch]
		test	byte ptr [eax],	1
		jz	short loc_4CBDA1
		mov	edx, offset asc_562AC6 ; "*"
		jmp	short loc_4CBDA6
; ---------------------------------------------------------------------------

loc_4CBDA1:				; CODE XREF: .text:004CBD98j
		mov	edx, $CTW0("") ; ""

loc_4CBDA6:				; CODE XREF: .text:004CBD9Fj
		mov	eax, ebx
		lea	ecx, [ebp-82E4h]
		shl	eax, 4
		push	edx
		add	eax, ebx
		lea	edx, [ebp-1C10h]
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		add	eax, ecx
		push	eax
		mov	eax, esi
		add	eax, eax
		push	offset a_32sSS	; "    %.32s: %s%s\n"
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 14h
		add	esi, eax
		inc	ebx
		add	dword ptr [ebp-0Ch], 44Ch

loc_4CBDE4:				; CODE XREF: .text:004CBD77j
		cmp	edi, ebx
		jle	short loc_4CBDED
		cmp	ebx, 0Ah
		jl	short loc_4CBD79

loc_4CBDED:				; CODE XREF: .text:004CBDE6j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4CBE50
		mov	ecx, [ebp-8]
		test	dword ptr [ecx+8], 3C00000h
		jz	short loc_4CBE24
		push	offset a___FormatArgum ; "    ... (Format arguments may	follow)\n"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-1C10h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax
		jmp	short loc_4CBE50
; ---------------------------------------------------------------------------

loc_4CBE24:				; CODE XREF: .text:004CBDFDj
		mov	ecx, [ebp-8]
		test	byte ptr [ecx+0Bh], 4
		jz	short loc_4CBE50
		push	offset a___CountedItem ; "    ... (Counted items may follow)\n"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-1C10h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax

loc_4CBE50:				; CODE XREF: .text:004CBD5Ej
					; .text:004CBD66j ...
		test	byte ptr prtype, 40h
		jz	short loc_4CBE97
		test	byte ptr prtype, 1
		push	(offset	prtype+2)
		jz	short loc_4CBE6E
		mov	ecx, offset asc_562AC6 ; "*"
		jmp	short loc_4CBE73
; ---------------------------------------------------------------------------

loc_4CBE6E:				; CODE XREF: .text:004CBE65j
		mov	ecx, (offset aLoaddllLoaddll+27h) ; ""

loc_4CBE73:				; CODE XREF: .text:004CBE6Cj
		push	ecx
		push	offset aReturnsSS ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-1C10h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		add	esi, eax

loc_4CBE97:				; CODE XREF: .text:004CBE57j
		mov	eax, stru_5FCDB0.addr0
		push	eax		; _addr
		call	Isnoreturn
		pop	ecx
		test	eax, eax
		jz	short loc_4CBECA
		push	offset aMayTerminatePr ; " May terminate process/thread\n"
		call	_T
		pop	ecx
		mov	edx, esi
		lea	ecx, [ebp-1C10h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax

loc_4CBECA:				; CODE XREF: .text:004CBEA5j
		cmp	dword ptr [ebp-8], 0
		jz	loc_4CBF99
		mov	eax, [ebp-8]
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4CBF00
		push	offset aTampersWithRet ; src
		call	_T
		pop	ecx
		mov	edx, esi
		lea	ecx, [ebp-1C10h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax

loc_4CBF00:				; CODE XREF: .text:004CBEDBj
		mov	eax, [ebp-8]
		cmp	byte ptr [eax+38h], 0
		jz	loc_4CBF99
		push	offset aPreserves ; src
		call	_T
		pop	ecx
		mov	edx, esi
		lea	ecx, [ebp-1C10h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		mov	dword ptr [ebp-4], 1
		add	esp, 8
		add	esi, eax
		mov	dword ptr [ebp-10h], offset off_52FC84
		xor	ebx, ebx

loc_4CBF40:				; CODE XREF: .text:004CBF7Aj
		mov	eax, [ebp-8]
		xor	edx, edx
		mov	dl, [eax+38h]
		and	edx, [ebp-4]
		jz	short loc_4CBF6F
		mov	ecx, [ebp-10h]
		mov	edx, esi
		add	edx, edx
		mov	eax, [ecx]
		push	eax
		lea	ecx, [ebp-1C10h]
		add	edx, ecx
		push	offset aS_16	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax

loc_4CBF6F:				; CODE XREF: .text:004CBF4Bj
		add	dword ptr [ebp-10h], 4
		shl	dword ptr [ebp-4], 1
		inc	ebx
		cmp	ebx, 8
		jl	short loc_4CBF40
		dec	esi
		push	(offset	aDebugData+1Ah)	; format
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-1C10h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax

loc_4CBF99:				; CODE XREF: .text:004CBECEj
					; .text:004CBF07j
		mov	word ptr [ebp+esi*2-1C10h], 0
		lea	ecx, [ebp-1C10h]
		push	ecx		; lpString
		push	3EBh		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	SetDlgItemTextW
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4CBFC4(HWND hDlg, int)
loc_4CBFC4:				; CODE XREF: .text:004CCCC6p
					; .text:004CD65Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		test	eax, eax
		jz	short loc_4CC028
		xor	ebx, ebx
		lea	edi, [eax+34h]

loc_4CBFDC:				; CODE XREF: .text:004CC026j
		cmp	ebx, 4
		jnz	short loc_4CBFE8
		mov	esi, 6
		jmp	short loc_4CBFF6
; ---------------------------------------------------------------------------

loc_4CBFE8:				; CODE XREF: .text:004CBFDFj
		cmp	ebx, 5
		jnz	short loc_4CBFF4
		mov	esi, 7
		jmp	short loc_4CBFF6
; ---------------------------------------------------------------------------

loc_4CBFF4:				; CODE XREF: .text:004CBFEBj
		mov	esi, ebx

loc_4CBFF6:				; CODE XREF: .text:004CBFE6j
					; .text:004CBFF2j
		mov	eax, [edi]
		push	eax		; u
		lea	edx, [ebp-200h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		add	esi, 460h
		push	esi		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	SetDlgItemTextW
		inc	ebx
		add	edi, 4
		cmp	ebx, 6
		jl	short loc_4CBFDC

loc_4CC028:				; CODE XREF: .text:004CBFD5j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4CC030(HWND hDlg, int	nIDDlgItem, int, int)
loc_4CC030:				; CODE XREF: .text:004CD216p
					; .text:004CD2C9p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB44h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	eax, [ebp+0Ch]
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4CC059
		test	edi, edi
		jnz	short loc_4CC07F

loc_4CC059:				; CODE XREF: .text:004CC053j
		test	esi, esi
		jz	short loc_4CC077
		push	offset aInternalErro_1 ; "Internal error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CC077:				; CODE XREF: .text:004CC05Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC22D
; ---------------------------------------------------------------------------

loc_4CC07F:				; CODE XREF: .text:004CC057j
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		push	offset aHwnd_1	; "<HWND>"
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4CC0F1
		lea	eax, [ebp-4BCh]
		push	eax
		call	loc_4CC754
		pop	ecx
		test	eax, eax
		jz	short loc_4CC0E0
		test	esi, esi
		jz	short loc_4CC0D8
		push	offset aUnableToCommun ; "Unable to communicate	with LOADDLL.EXE"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CC0D8:				; CODE XREF: .text:004CC0BCj
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC22D
; ---------------------------------------------------------------------------

loc_4CC0E0:				; CODE XREF: .text:004CC0B8j
		mov	edx, [ebp-4B4h]
		mov	[ebp-40Ch], edx
		jmp	loc_4CC206
; ---------------------------------------------------------------------------

loc_4CC0F1:				; CODE XREF: .text:004CC0A7j
		push	offset aHinst	; "<HINST>"
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4CC151
		lea	eax, [ebp-4BCh]
		push	eax
		call	loc_4CC754
		pop	ecx
		test	eax, eax
		jz	short loc_4CC140
		test	esi, esi
		jz	short loc_4CC138
		push	offset aUnableToCommun ; "Unable to communicate	with LOADDLL.EXE"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CC138:				; CODE XREF: .text:004CC11Cj
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC22D
; ---------------------------------------------------------------------------

loc_4CC140:				; CODE XREF: .text:004CC118j
		mov	edx, [ebp-4B8h]
		mov	[ebp-40Ch], edx
		jmp	loc_4CC206
; ---------------------------------------------------------------------------

loc_4CC151:				; CODE XREF: .text:004CC107j
		push	3		; mode
		push	0		; b
		push	0		; a
		push	0		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		lea	ecx, [ebp-200h]
		push	ecx		; expression
		lea	eax, [ebp-41Ch]
		push	eax		; result
		call	Expression
		add	esp, 24h
		test	eax, eax
		jz	short loc_4CC182
		test	byte ptr [ebp-414h], 0Fh
		jnz	short loc_4CC1BD

loc_4CC182:				; CODE XREF: .text:004CC177j
		movzx	edx, ax
		shl	edx, 10h
		or	edx, 0
		push	edx		; lParam
		push	0		; wParam
		push	142h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		push	ebx		; hWnd
		call	SetFocus
		test	esi, esi
		jz	short loc_4CC1B8
		lea	ecx, [ebp-402h]
		push	ecx		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CC1B8:				; CODE XREF: .text:004CC1A1j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CC22D
; ---------------------------------------------------------------------------

loc_4CC1BD:				; CODE XREF: .text:004CC180j
		mov	edx, [ebp-414h]
		and	edx, 0Fh
		cmp	edx, 3
		jz	short loc_4CC206
		push	0FFFF0000h	; lParam
		push	0		; wParam
		push	142h		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		push	ebx		; hWnd
		call	SetFocus
		test	esi, esi
		jz	short loc_4CC201
		push	offset aExpressionMust ; "Expression must be of	integer	type"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CC201:				; CODE XREF: .text:004CC1E5j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CC22D
; ---------------------------------------------------------------------------

loc_4CC206:				; CODE XREF: .text:004CC0ECj
					; .text:004CC14Cj ...
		lea	edx, [ebp-200h]
		push	edx		; s
		push	ebx		; hc
		call	Addstringtocombolist
		add	esp, 8
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW
		mov	eax, [ebp-40Ch]
		mov	[edi], eax
		xor	eax, eax

loc_4CC22D:				; CODE XREF: .text:004CC07Aj
					; .text:004CC0DBj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CC234:				; CODE XREF: .text:00481C7Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi		; arglist
		push	offset ollydir	; src
		push	104h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, 104h
		sub	edx, eax
		lea	ecx, [ebp-20Ch]
		add	eax, eax
		push	offset aLoaddllLoaddll ; "\\loaddll\\loaddll.exe"
		push	edx		; n
		add	eax, ecx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aProcessingLoad ; "Processing loaddll.exe"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		lea	eax, [ebp-4]
		push	eax		; int
		push	0		; psize
		push	0		; fixsize
		lea	edx, [ebp-20Ch]
		push	edx		; path
		call	Readfile
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4CC2D5
		lea	eax, [ebp-20Ch]
		push	eax		; arglist
		push	offset aUnableToLoadS ;	"  Unable to load '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC3B5
; ---------------------------------------------------------------------------

loc_4CC2D5:				; CODE XREF: .text:004CC2ACj
		push	offset ollydir	; src
		push	104h		; n
		lea	edx, [ebp-20Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, 104h
		sub	ecx, eax
		lea	edx, [ebp-20Ch]
		add	eax, eax
		push	offset aLoaddll_dat ; "\\loaddll.dat"
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aWb_1	; "wb"
		lea	eax, [ebp-20Ch]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4CC353
		lea	eax, [ebp-20Ch]
		push	eax		; arglist
		push	offset aUnableToCrea_3 ; "  Unable to create file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		push	ebx		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CC3B5
; ---------------------------------------------------------------------------

loc_4CC353:				; CODE XREF: .text:004CC326j
		push	ebx		; data
		mov	edx, [ebp-4]
		push	edx		; size
		push	64644C0Ah	; tag
		push	esi		; f
		call	Savepackedrecord
		add	esp, 10h
		mov	edi, eax
		push	ebx		; data
		call	Memfree
		pop	ecx
		push	esi		; stream
		call	_fclose
		pop	ecx
		test	edi, edi
		jz	short loc_4CC39B
		lea	eax, [ebp-20Ch]
		push	eax		; arglist
		push	offset aErrorSavingD_1 ; "  Error saving data to file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_4CC3B3
; ---------------------------------------------------------------------------

loc_4CC39B:				; CODE XREF: .text:004CC378j
		push	offset aFileLoaddll_da ; "  File 'loaddll.dat' created successful"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_4CC3B3:				; CODE XREF: .text:004CC399j
		xor	eax, eax

loc_4CC3B5:				; CODE XREF: .text:004CC2D0j
					; .text:004CC351j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CC3BC:				; CODE XREF: .text:0044A9CAp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDD8h
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		push	offset ollydir	; src
		push	104h		; n
		lea	eax, [ebp-21Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, 104h
		sub	edx, eax
		lea	ecx, [ebp-21Ch]
		add	eax, eax
		push	(offset	aLoaddllLoaddll+10h) ; src
		push	edx		; n
		add	eax, ecx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-21Ch]
		push	eax		; lpFileName
		call	GetFileAttributesW
		cmp	eax, 0FFFFFFFFh
		jnz	loc_4CC54D
		push	offset aLoaddlltype ; "LOADDLLTYPE"
		push	offset aRes_loaddll ; "RES_LOADDLL"
		push	0		; hModule
		call	FindResourceW
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4CC434
		mov	ebx, 1

loc_4CC434:				; CODE XREF: .text:004CC42Dj
		test	ebx, ebx
		jnz	short loc_4CC44B
		push	edi		; hResInfo
		push	0		; hModule
		call	LoadResource
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4CC44B
		mov	ebx, 1

loc_4CC44B:				; CODE XREF: .text:004CC436j
					; .text:004CC444j
		test	ebx, ebx
		jnz	short loc_4CC469
		push	esi		; hResData
		call	LockResource
		mov	[ebp-228h], eax
		cmp	dword ptr [ebp-228h], 0
		jnz	short loc_4CC469
		mov	ebx, 1

loc_4CC469:				; CODE XREF: .text:004CC44Dj
					; .text:004CC462j
		test	ebx, ebx
		jnz	short loc_4CC4BD
		push	edi		; hResInfo
		push	0		; lpModuleName
		call	GetModuleHandleW
		push	eax		; hModule
		call	SizeofResource
		mov	[ebp-224h], eax
		xor	eax, eax
		mov	[ebp-220h], eax
		lea	edx, [ebp-0Ch]
		push	edx
		lea	ecx, [ebp-8]
		push	ecx
		lea	eax, [ebp-4]
		push	eax
		lea	edx, [ebp-228h]
		push	edx
		call	loc_4A929C
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CC4AF
		mov	ebx, 1
		jmp	short loc_4CC4BD
; ---------------------------------------------------------------------------

loc_4CC4AF:				; CODE XREF: .text:004CC4A6j
		cmp	dword ptr [ebp-4], 64644C0Ah
		jz	short loc_4CC4BD
		mov	ebx, 1

loc_4CC4BD:				; CODE XREF: .text:004CC46Bj
					; .text:004CC4ADj ...
		test	ebx, ebx
		jnz	short loc_4CC4D9
		mov	eax, [ebp-0Ch]
		push	eax		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4CC4D9
		mov	ebx, 2

loc_4CC4D9:				; CODE XREF: .text:004CC4BFj
					; .text:004CC4D2j
		test	ebx, ebx
		jnz	short loc_4CC502
		mov	eax, [ebp-0Ch]
		push	eax
		mov	edx, [ebp-14h]
		push	edx
		lea	ecx, [ebp-228h]
		push	ecx
		call	loc_4A9388
		add	esp, 0Ch
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4CC502
		mov	ebx, 1

loc_4CC502:				; CODE XREF: .text:004CC4DBj
					; .text:004CC4FBj
		test	ebx, ebx
		jnz	short loc_4CC54D
		push	offset aWb_1	; "wb"
		lea	eax, [ebp-21Ch]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4CC527
		mov	ebx, 3
		jmp	short loc_4CC54D
; ---------------------------------------------------------------------------

loc_4CC527:				; CODE XREF: .text:004CC51Ej
		push	edi		; stream
		mov	eax, [ebp-10h]
		push	eax		; n
		push	1		; size
		mov	edx, [ebp-14h]
		push	edx		; ptr
		call	_fwrite
		add	esp, 10h
		mov	esi, eax
		push	edi		; stream
		call	_fclose
		pop	ecx
		cmp	esi, [ebp-10h]
		jz	short loc_4CC54D
		mov	ebx, 3

loc_4CC54D:				; CODE XREF: .text:004CC412j
					; .text:004CC504j ...
		test	ebx, ebx
		jnz	short loc_4CC5C2
		lea	eax, [ebp-10h]
		push	eax		; int
		push	0		; psize
		push	0		; fixsize
		lea	edx, [ebp-21Ch]
		push	edx		; path
		call	Readfile
		add	esp, 10h
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4CC577
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4CC5C2

loc_4CC577:				; CODE XREF: .text:004CC56Fj
		mov	ebx, 4
		push	offset aOllydbgV2_01Dl ; "*OllyDbg v2.01 DLL Loader*"
		call	_strlen
		pop	ecx
		mov	edi, eax
		cmp	edi, [ebp-10h]
		jnb	short loc_4CC5B8
		xor	esi, esi
		jmp	short loc_4CC5AF
; ---------------------------------------------------------------------------

loc_4CC592:				; CODE XREF: .text:004CC5B6j
		push	edi		; n
		push	offset aOllydbgV2_01Dl ; "*OllyDbg v2.01 DLL Loader*"
		mov	eax, [ebp-14h]
		add	eax, esi
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4CC5AE
		xor	ebx, ebx
		jmp	short loc_4CC5B8
; ---------------------------------------------------------------------------

loc_4CC5AE:				; CODE XREF: .text:004CC5A8j
		inc	esi

loc_4CC5AF:				; CODE XREF: .text:004CC590j
		mov	eax, [ebp-10h]
		sub	eax, edi
		cmp	esi, eax
		jb	short loc_4CC592

loc_4CC5B8:				; CODE XREF: .text:004CC58Cj
					; .text:004CC5ACj
		mov	edx, [ebp-14h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4CC5C2:				; CODE XREF: .text:004CC54Fj
					; .text:004CC575j
		cmp	ebx, 1
		jnz	short loc_4CC5DB
		push	offset aUnableToExtrac ; "Unable to extract LOADDLL.EXE. This is "...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		jmp	short loc_4CC62D
; ---------------------------------------------------------------------------

loc_4CC5DB:				; CODE XREF: .text:004CC5C5j
		cmp	ebx, 2
		jnz	short loc_4CC5F4
		push	offset aUnableToExtr_2 ; "Unable to extract LOADDLL.EXE	due to lo"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		jmp	short loc_4CC62D
; ---------------------------------------------------------------------------

loc_4CC5F4:				; CODE XREF: .text:004CC5DEj
		cmp	ebx, 3
		jnz	short loc_4CC60D
		push	offset aUnableToExtr_0 ; "Unable to extract LOADDLL.EXE. If OllyD"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		jmp	short loc_4CC62D
; ---------------------------------------------------------------------------

loc_4CC60D:				; CODE XREF: .text:004CC5F7j
		cmp	ebx, 4
		jnz	short loc_4CC62D
		lea	ecx, [ebp-21Ch]
		push	ecx		; arglist
		push	offset aInvalidVersion ; "Invalid version of LOADDLL.EXE. Please "...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8

loc_4CC62D:				; CODE XREF: .text:004CC5D9j
					; .text:004CC5F2j ...
		xor	eax, eax
		test	ebx, ebx
		jz	short loc_4CC634
		dec	eax

loc_4CC634:				; CODE XREF: .text:004CC631j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CC63C:				; CODE XREF: .text:004520F8p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		cmp	rundll,	0
		jnz	short loc_4CC652
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC74F
; ---------------------------------------------------------------------------

loc_4CC652:				; CODE XREF: .text:004CC648j
		xor	edx, edx
		mov	dword_5D3A40, edx
		xor	ecx, ecx
		mov	dword_5D3A44, ecx
		xor	eax, eax
		mov	dword_5D3A4C, eax
		xor	edx, edx
		mov	dword_5D3A50, edx
		call	Findmainmodule
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4CC684
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC74F
; ---------------------------------------------------------------------------

loc_4CC684:				; CODE XREF: .text:004CC67Aj
		push	0		; errtxt
		push	offset dword_5D3A40 ; _addr
		push	ebx		; pmod
		push	offset aLinkarea ; "Linkarea"
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CC6A5
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC74F
; ---------------------------------------------------------------------------

loc_4CC6A5:				; CODE XREF: .text:004CC69Bj
		push	0		; errtxt
		push	offset dword_5D3A44 ; _addr
		push	ebx		; pmod
		push	offset aDump1	; "Dump1"
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CC6C6
		or	eax, 0FFFFFFFFh
		jmp	loc_4CC74F
; ---------------------------------------------------------------------------

loc_4CC6C6:				; CODE XREF: .text:004CC6BCj
		push	0		; errtxt
		push	offset dword_5D3A4C ; _addr
		push	ebx		; pmod
		push	offset aLoadret	; "Loadret"
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CC6E4
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CC74F
; ---------------------------------------------------------------------------

loc_4CC6E4:				; CODE XREF: .text:004CC6DDj
		push	0		; errtxt
		push	offset dword_5D3A50 ; _addr
		push	ebx		; pmod
		push	offset aCalldone ; _name
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CC702
		or	eax, 0FFFFFFFFh
		jmp	short loc_4CC74F
; ---------------------------------------------------------------------------

loc_4CC702:				; CODE XREF: .text:004CC6FBj
		cmp	_imp__GetProcessAffinityMask, 0
		jz	short loc_4CC74D
		cmp	_imp__SetProcessAffinityMask, 0
		jz	short loc_4CC74D
		push	offset _SystemAffinityMask ; _DWORD
		lea	edx, [ebp-4]
		push	edx		; _DWORD
		mov	ecx, process
		push	ecx		; _DWORD
		call	_imp__GetProcessAffinityMask
		test	byte ptr _SystemAffinityMask, 2
		jz	short loc_4CC73A
		mov	eax, 2
		jmp	short loc_4CC73F
; ---------------------------------------------------------------------------

loc_4CC73A:				; CODE XREF: .text:004CC731j
		mov	eax, 1

loc_4CC73F:				; CODE XREF: .text:004CC738j
		push	eax		; _DWORD
		mov	edx, process
		push	edx		; _DWORD
		call	_imp__SetProcessAffinityMask

loc_4CC74D:				; CODE XREF: .text:004CC709j
					; .text:004CC712j
		xor	eax, eax

loc_4CC74F:				; CODE XREF: .text:004CC64Dj
					; .text:004CC67Fj ...
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CC754:				; CODE XREF: .text:0044EF6Ep
					; .text:00456B2Ap ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4CC771
		cmp	rundll,	0
		jz	short loc_4CC771
		cmp	dword_5D3A40, 0
		jnz	short loc_4CC777

loc_4CC771:				; CODE XREF: .text:004CC75Dj
					; .text:004CC766j
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CC777:				; CODE XREF: .text:004CC76Fj
		call	Suspendallthreads
		push	1		; mode
		mov	edx, dword_5D3A40
		push	0A0h		; size
		push	edx		; _addr
		push	ebx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		test	ebx, ebx
		jnz	short loc_4CC7A4
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CC7A4:				; CODE XREF: .text:004CC79Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CC7AC:				; CODE XREF: .text:004CCA62p
					; .text:004CD379p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4CC7C9
		cmp	rundll,	0
		jz	short loc_4CC7C9
		cmp	dword_5D3A40, 0
		jnz	short loc_4CC7CF

loc_4CC7C9:				; CODE XREF: .text:004CC7B5j
					; .text:004CC7BEj
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CC7CF:				; CODE XREF: .text:004CC7C7j
		call	Suspendallthreads
		push	1		; mode
		mov	edx, dword_5D3A40
		push	0A0h		; size
		push	edx		; _addr
		push	ebx		; buf
		call	Writememory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		test	ebx, ebx
		jnz	short loc_4CC7FC
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CC7FC:				; CODE XREF: .text:004CC7F4j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_4CC804(HWND, UINT, WPARAM, LPARAM)
loc_4CC804:				; DATA XREF: .text:004CD58Do
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF544h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, [ebp+0Ch]
		cmp	eax, 112h
		jg	short loc_4CC83C
		jz	loc_4CD41A
		sub	eax, 2
		jz	loc_4CCCDD
		sub	eax, 10Eh
		jz	short loc_4CC860
		dec	eax
		jz	loc_4CCFBA
		jmp	loc_4CD45E
; ---------------------------------------------------------------------------

loc_4CC83C:				; CODE XREF: .text:004CC818j
		sub	eax, 138h
		jz	loc_4CCF75
		sub	eax, 34Ch
		jz	loc_4CD438
		sub	eax, 2
		jz	loc_4CD438
		jmp	loc_4CD45E
; ---------------------------------------------------------------------------

loc_4CC860:				; CODE XREF: .text:004CC82Ej
		mov	edx, dword_5D3A48
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		push	offset stru_5FCDB0 ; pdlg
		mov	ecx, [ebp+8]
		push	ecx		; hw
		call	Preparedialog
		add	esp, 8
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4CC8BB
		push	8		; datasize
		lea	eax, [ebp-40Ch]
		push	eax		; data
		push	45h		; type
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx]
		add	ecx, 0Ah
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		cmp	eax, 8
		jnz	short loc_4CC8BB
		mov	eax, [ebp-40Ch]
		mov	ebx, [ebp-408h]
		mov	stru_5FCDB0.addr0, eax
		jmp	short loc_4CC8BE
; ---------------------------------------------------------------------------

loc_4CC8BB:				; CODE XREF: .text:004CC885j
					; .text:004CC8A6j
		or	ebx, 0FFFFFFFFh

loc_4CC8BE:				; CODE XREF: .text:004CC8B9j
		push	3E8h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		mov	edi, eax
		mov	eax, stru_5FCDB0.addr0 ; int
		push	eax		; int
		mov	edx, [ebp-0Ch]	; int
		push	edx		; int
		push	edi		; hWnd
		call	loc_4CB7E8
		add	esp, 0Ch
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	loc_4CBAF4
		pop	ecx
		test	ebx, ebx
		jge	short loc_4CC8F1
		mov	ebx, eax

loc_4CC8F1:				; CODE XREF: .text:004CC8EDj
		push	ebx		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4CBA94
		add	esp, 8
		call	Suspendallthreads
		lea	edx, [ebp-0AACh]
		push	edx
		call	loc_4CC754
		pop	ecx
		mov	[ebp-4], eax
		xor	esi, esi
		mov	edi, offset stru_5FCE2C

loc_4CC91A:				; CODE XREF: .text:004CC98Fj
		cmp	dword ptr [edi], 0
		jnz	short loc_4CC967
		mov	eax, esi
		xor	edx, edx
		shl	eax, 0Ah
		add	eax, dword_5D3A44
		mov	[edi], eax
		xor	eax, eax
		mov	dword ptr [edi+4], 400h
		mov	[edi+14h], edx
		mov	ecx, [edi]
		mov	[edi+28Ch], ecx
		mov	[edi+288h], ecx
		mov	[edi+284h], ecx
		mov	[edi+0A8h], eax
		mov	edx, fi
		mov	[edi+24Ch], edx
		mov	dword ptr [edi+8], 20010801h

loc_4CC967:				; CODE XREF: .text:004CC91Dj
		mov	eax, [edi+8]
		lea	edx, [esi+438h]
		push	eax		; dumptype
		push	edi		; pd
		push	edx		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	GetDlgItem
		push	eax		; hw
		call	Embeddumpwindow
		add	esp, 0Ch
		inc	esi
		add	edi, 70Ch
		cmp	esi, 5
		jl	short loc_4CC91A
		xor	esi, esi

loc_4CC993:				; CODE XREF: .text:004CCA3Fj
		cmp	dword_5D3A3C, 0
		jnz	loc_4CCA3B
		cmp	dword ptr [ebp-4], 0
		jnz	loc_4CCA3B
		test	byte ptr [ebp-0A88h], 1
		jnz	loc_4CCA3B
		push	400h		; n
		push	0		; c
		lea	eax, [ebp-40Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4CC9F1
		push	400h		; datasize
		lea	edx, [ebp-40Ch]
		push	edx		; data
		push	45h		; type
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx]
		add	eax, esi
		push	eax		; _addr
		call	Finddata
		add	esp, 10h

loc_4CC9F1:				; CODE XREF: .text:004CC9D1j
		mov	edx, esi
		push	1		; mode
		shl	edx, 0Ah
		push	400h		; size
		add	edx, dword_5D3A44
		lea	ecx, [ebp-40Ch]
		push	edx		; _addr
		push	ecx		; buf
		call	Writememory
		add	esp, 10h
		cmp	esi, 5
		jge	short loc_4CCA3B
		push	1
		mov	eax, esi
		shl	eax, 3
		sub	eax, esi
		shl	eax, 5
		add	eax, esi
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, offset stru_5FCE2C
		push	eax
		call	loc_4BD294
		add	esp, 8

loc_4CCA3B:				; CODE XREF: .text:004CC99Aj
					; .text:004CC9A4j ...
		inc	esi
		cmp	esi, 0Ah
		jl	loc_4CC993
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4CCA68
		test	byte ptr [ebp-0A88h], 1
		jnz	short loc_4CCA68
		or	dword ptr [ebp-0A88h], 1
		lea	edx, [ebp-0AACh]
		push	edx
		call	loc_4CC7AC
		pop	ecx

loc_4CCA68:				; CODE XREF: .text:004CCA49j
					; .text:004CCA52j
		call	Resumeallthreads
		xor	esi, esi

loc_4CCA6F:				; CODE XREF: .text:004CCB7Cj
		lea	eax, [esi+424h]
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	edi, eax
		mov	ebx, 0Ah

loc_4CCA86:				; CODE XREF: .text:004CCAAEj
		push	ebx
		push	offset aDumpI	; "Dump%i"
		lea	eax, [ebp-80Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		dec	ebx
		test	ebx, ebx
		jg	short loc_4CCA86
		push	offset aHinst	; "<HINST>"
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	offset aHwnd_1	; "<HWND>"
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	(offset	aArg10_0+8) ; s
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4CCB78
		mov	ebx, 10h

loc_4CCAE9:				; CODE XREF: .text:004CCB27j
		lea	eax, [ebp-80Ch]
		push	100h		; nname
		push	eax		; _name
		push	44h		; type
		mov	edx, [ebp-0Ch]
		mov	eax, esi
		shl	eax, 4
		add	eax, esi
		mov	ecx, [edx]
		add	ecx, eax
		add	ecx, ebx
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CCB24
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8

loc_4CCB24:				; CODE XREF: .text:004CCB12j
		dec	ebx
		test	ebx, ebx
		jg	short loc_4CCAE9
		lea	ecx, [ebp-80Ch]
		push	100h		; nname
		push	ecx		; _name
		push	44h		; type
		mov	eax, [ebp-0Ch]
		mov	ecx, esi
		shl	ecx, 4
		add	ecx, esi
		mov	edx, [eax]
		add	edx, ecx
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4CCB6B
		push	(offset	aArg10_0+8) ; src
		push	100h		; n
		lea	eax, [ebp-80Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CCB6B:				; CODE XREF: .text:004CCB50j
		lea	edx, [ebp-80Ch]
		push	edx		; lpString
		push	edi		; hWnd
		call	SetWindowTextW

loc_4CCB78:				; CODE XREF: .text:004CCADEj
		inc	esi
		cmp	esi, 0Ah
		jl	loc_4CCA6F
		xor	esi, esi

loc_4CCB84:				; CODE XREF: .text:004CCCAFj
		cmp	esi, 4
		jz	loc_4CCCAB
		cmp	esi, 5
		jz	loc_4CCCAB
		lea	eax, [esi+44Ch]
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	edi, eax
		mov	ebx, 0Ah

loc_4CCBAD:				; CODE XREF: .text:004CCBD5j
		push	ebx
		push	offset aDumpI	; "Dump%i"
		lea	eax, [ebp-80Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		dec	ebx
		test	ebx, ebx
		jg	short loc_4CCBAD
		push	offset aHinst	; "<HINST>"
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	offset aHwnd_1	; "<HWND>"
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		push	(offset	aArg10_0+8) ; s
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4CCCAB
		mov	ebx, 10h

loc_4CCC10:				; CODE XREF: .text:004CCC54j
		lea	eax, [ebp-80Ch]
		push	100h		; nname
		push	eax		; _name
		push	44h		; type
		mov	edx, [ebp-0Ch]
		mov	eax, esi
		shl	eax, 4
		add	eax, esi
		mov	ecx, [edx]
		add	ecx, eax
		add	ecx, ebx
		add	ecx, 0AAh
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CCC51
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	edi		; hc
		call	Addstringtocombolist
		add	esp, 8

loc_4CCC51:				; CODE XREF: .text:004CCC3Fj
		dec	ebx
		test	ebx, ebx
		jg	short loc_4CCC10
		lea	ecx, [ebp-80Ch]
		push	100h		; nname
		push	ecx		; _name
		push	44h		; type
		mov	eax, [ebp-0Ch]
		mov	ecx, esi
		shl	ecx, 4
		add	ecx, esi
		mov	edx, [eax]
		add	edx, ecx
		add	edx, 0AAh
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4CCC9E
		push	(offset	aArg10_0+8) ; src
		push	100h		; n
		lea	eax, [ebp-80Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4CCC9E:				; CODE XREF: .text:004CCC83j
		lea	edx, [ebp-80Ch]
		push	edx		; lpString
		push	edi		; hWnd
		call	SetWindowTextW

loc_4CCCAB:				; CODE XREF: .text:004CCB87j
					; .text:004CCB90j ...
		inc	esi
		cmp	esi, 8
		jl	loc_4CCB84
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4CCCCE
		lea	ecx, [ebp-0AACh]
		push	ecx		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4CBFC4
		add	esp, 8

loc_4CCCCE:				; CODE XREF: .text:004CCCB9j
		mov	stru_5FCDB0.initdone, 1
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CCCDD:				; CODE XREF: .text:004CC823j
		lea	edx, [ebp-0ABCh]
		push	edx		; lpRect
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	GetWindowRect
		mov	eax, [ebp-0AB8h]
		push	eax
		mov	edx, [ebp-0ABCh]
		push	edx		; arglist
		push	offset aII_1	; "%i,%i"
		push	offset aPlacement_2 ; "Placement"
		push	offset aCallDll	; section
		push	0		; file
		call	Writetoini
		add	esp, 18h
		mov	ecx, dword_5D3A48
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4CCF69
		push	0		; type3
		push	45h		; type2
		push	44h		; type1
		mov	eax, [ebp-0Ch]
		mov	ecx, [ebp-0Ch]
		mov	eax, [eax]
		mov	edx, eax
		add	edx, [ecx+4]
		push	edx		; addr1
		push	eax		; addr0
		call	Deletedatarange
		add	esp, 14h
		call	Suspendallthreads
		xor	esi, esi
		mov	edi, offset stru_5FCE2C

loc_4CCD57:				; CODE XREF: .text:004CCDBEj
		mov	eax, esi
		push	1		; mode
		shl	eax, 0Ah
		push	400h		; size
		add	eax, dword_5D3A44
		lea	edx, [ebp-40Ch]
		push	eax		; _addr
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-8], eax
		mov	ecx, [ebp-8]
		lea	ebx, [ebp+ecx-40Dh]
		jmp	short loc_4CCD8C
; ---------------------------------------------------------------------------

loc_4CCD88:				; CODE XREF: .text:004CCD95j
		dec	dword ptr [ebp-8]
		dec	ebx

loc_4CCD8C:				; CODE XREF: .text:004CCD86j
		cmp	dword ptr [ebp-8], 0
		jbe	short loc_4CCD97
		cmp	byte ptr [ebx],	0
		jz	short loc_4CCD88

loc_4CCD97:				; CODE XREF: .text:004CCD90j
		mov	eax, [ebp-8]
		push	eax		; datasize
		lea	edx, [ebp-40Ch]
		push	edx		; data
		push	45h		; type
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx]
		add	eax, esi
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		inc	esi
		add	edi, 70Ch
		cmp	esi, 0Ah
		jl	short loc_4CCD57
		call	Resumeallthreads
		mov	edx, stru_5FCDB0.addr0
		xor	ebx, ebx
		mov	[ebp-40Ch], edx

loc_4CCDD3:				; CODE XREF: .text:004CCDECj
		lea	eax, [ebx+410h]
		push	eax		; nIDButton
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	IsDlgButtonChecked
		cmp	eax, 1
		jz	short loc_4CCDEE
		inc	ebx
		cmp	ebx, 0Ah
		jle	short loc_4CCDD3

loc_4CCDEE:				; CODE XREF: .text:004CCDE6j
		mov	[ebp-408h], ebx
		push	8		; datasize
		lea	ecx, [ebp-40Ch]
		push	ecx		; data
		push	45h		; type
		mov	eax, [ebp-0Ch]
		mov	edx, [eax]
		add	edx, 0Ah
		push	edx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		xor	esi, esi

loc_4CCE12:				; CODE XREF: .text:004CCEA0j
		lea	eax, [esi+424h]
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	edi, eax
		lea	eax, [ebp-80Ch]
		push	100h		; nMaxCount
		push	eax		; lpString
		push	edi		; hWnd
		call	GetWindowTextW
		test	eax, eax
		jle	short loc_4CCE5A
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	44h		; type
		mov	ecx, [ebp-0Ch]
		mov	edx, esi
		shl	edx, 4
		add	edx, esi
		mov	eax, [ecx]
		add	eax, edx
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_4CCE5A:				; CODE XREF: .text:004CCE38j
		xor	ebx, ebx

loc_4CCE5C:				; CODE XREF: .text:004CCE9Aj
		lea	eax, [ebp-80Ch]
		push	eax		; lParam
		push	ebx		; wParam
		push	148h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		test	eax, eax
		jle	short loc_4CCE96
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	44h		; type
		mov	ecx, [ebp-0Ch]
		mov	edx, esi
		shl	edx, 4
		add	edx, esi
		mov	eax, [ecx]
		add	eax, edx
		add	eax, ebx
		inc	eax
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_4CCE96:				; CODE XREF: .text:004CCE71j
		inc	ebx
		cmp	ebx, 10h
		jl	short loc_4CCE5C
		inc	esi
		cmp	esi, 0Ah
		jl	loc_4CCE12
		xor	esi, esi

loc_4CCEA8:				; CODE XREF: .text:004CCF51j
		cmp	esi, 4
		jz	loc_4CCF4D
		cmp	esi, 5
		jz	loc_4CCF4D
		lea	eax, [esi+44Ch]
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		mov	edi, eax
		lea	eax, [ebp-80Ch]
		push	100h		; nMaxCount
		push	eax		; lpString
		push	edi		; hWnd
		call	GetWindowTextW
		test	eax, eax
		jle	short loc_4CCF07
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	44h		; type
		mov	ecx, [ebp-0Ch]
		mov	edx, esi
		shl	edx, 4
		add	edx, esi
		mov	eax, [ecx]
		add	eax, edx
		add	eax, 0AAh
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_4CCF07:				; CODE XREF: .text:004CCEE0j
		xor	ebx, ebx

loc_4CCF09:				; CODE XREF: .text:004CCF4Bj
		lea	eax, [ebp-80Ch]
		push	eax		; lParam
		push	ebx		; wParam
		push	148h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		test	eax, eax
		jle	short loc_4CCF47
		lea	edx, [ebp-80Ch]
		push	edx		; s
		push	44h		; type
		mov	ecx, [ebp-0Ch]
		mov	edx, esi
		shl	edx, 4
		add	edx, esi
		mov	eax, [ecx]
		add	eax, edx
		add	eax, ebx
		add	eax, 0ABh
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_4CCF47:				; CODE XREF: .text:004CCF1Ej
		inc	ebx
		cmp	ebx, 10h
		jl	short loc_4CCF09

loc_4CCF4D:				; CODE XREF: .text:004CCEABj
					; .text:004CCEB4j
		inc	esi
		cmp	esi, 8
		jl	loc_4CCEA8
		call	Mergequickdata
		mov	ecx, [ebp-0Ch]
		mov	dword ptr [ecx+9A8h], 1

loc_4CCF69:				; CODE XREF: .text:004CCD28j
		xor	eax, eax
		mov	hDlg, eax
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CCF75:				; CODE XREF: .text:004CC841j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	short loc_4CCFB3
		cmp	dword ptr [eax], 7
		jnz	short loc_4CCFB3
		push	12h		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		mov	ebx, [ebp+10h]
		push	ebx		; HDC
		call	SetTextColor
		push	5		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	5		; nIndex
		call	GetSysColorBrush
		jmp	loc_4CD467
; ---------------------------------------------------------------------------

loc_4CCFB3:				; CODE XREF: .text:004CCF81j
					; .text:004CCF86j
		xor	eax, eax
		jmp	loc_4CD467
; ---------------------------------------------------------------------------

loc_4CCFBA:				; CODE XREF: .text:004CC831j
		mov	edx, [ebp+14h]
		push	edx		; hWnd
		call	Findcontrol
		pop	ecx
		test	eax, eax
		jz	loc_4CD462
		mov	ecx, [ebp+14h]
		push	ecx		; lp
		mov	edx, [ebp+10h]
		push	edx		; wp
		push	eax		; pctr
		mov	eax, [ebp+8]
		push	eax		; hparent
		call	Defaultactions
		mov	ax, [ebp+10h]
		add	esp, 10h
		and	ax, 0FFFFh
		movzx	eax, ax
		cmp	eax, 3E8h
		jnz	short loc_4CD050
		mov	edx, [ebp+10h]
		shr	edx, 10h
		cmp	dx, 1
		jnz	short loc_4CD050
		push	200h		; nMaxCount
		lea	ecx, [ebp-80Ch]
		push	ecx		; lpString
		push	3E8h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItemTextW
		push	offset stru_5FCDB0.addr0
		push	offset a08x_6	; "%08X"
		lea	edx, [ebp-80Ch]
		push	edx		; buffer
		call	_swscanf
		add	esp, 0Ch
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	loc_4CBAF4
		pop	ecx
		mov	ebx, eax
		push	ebx		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4CBA94
		add	esp, 8
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD050:				; CODE XREF: .text:004CCFF1j
					; .text:004CCFFDj
		cmp	eax, 3E9h
		jnz	short loc_4CD088
		mov	edx, stru_5FCDB0.addr0
		push	edx		; int
		mov	ecx, dword_5D3A48
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		push	eax		; int
		push	3E8h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	loc_4CB7E8
		add	esp, 0Ch
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD088:				; CODE XREF: .text:004CD055j
		cmp	eax, 3EAh
		jnz	short loc_4CD0AD
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	edx, stru_5FCDB0.addr0
		push	0		; dumpaddr
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD0AD:				; CODE XREF: .text:004CD08Dj
		cmp	eax, 3EEh
		jnz	loc_4CD3E6
		mov	eax, run.status
		cmp	eax, 3
		jz	short loc_4CD0E0
		cmp	eax, 4
		jz	short loc_4CD0E0
		cmp	eax, 7
		jz	short loc_4CD0E0
		cmp	eax, 8
		jz	short loc_4CD0E0
		cmp	eax, 9
		jz	short loc_4CD0E0
		cmp	eax, 0Ah
		jz	short loc_4CD0E0
		cmp	eax, 12h
		jnz	short loc_4CD0E9

loc_4CD0E0:				; CODE XREF: .text:004CD0C0j
					; .text:004CD0C5j ...
		cmp	dword_5D3A3C, 0
		jz	short loc_4CD100

loc_4CD0E9:				; CODE XREF: .text:004CD0DEj
		push	offset aCanTCallDllExp ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD100:				; CODE XREF: .text:004CD0E7j
		call	GetTickCount
		mov	ebx, eax

loc_4CD107:				; CODE XREF: .text:004CD16Bj
		lea	eax, [ebp-0AACh]
		push	eax
		call	loc_4CC754
		pop	ecx
		test	eax, eax
		jz	short loc_4CD13C
		push	offset aUnableToCommun ; "Unable to communicate	with LOADDLL.EXE"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	SetDlgItemTextW
		mov	eax, 1
		jmp	loc_4CD467
; ---------------------------------------------------------------------------

loc_4CD13C:				; CODE XREF: .text:004CD116j
		cmp	dword ptr [ebp-0AA4h], 0
		jnz	short loc_4CD1A3
		cmp	run.status, 12h
		jnz	short loc_4CD15A
		push	0		; pass
		push	3		; status
		call	Run
		add	esp, 8

loc_4CD15A:				; CODE XREF: .text:004CD14Cj
		call	Checkfordebugevent
		call	GetTickCount
		sub	eax, ebx
		cmp	eax, 3E8h
		jbe	short loc_4CD107
		push	offset aPleaseRunLoadd ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	SetDlgItemTextW
		push	offset aPleaseRunLoadd ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	eax, 1
		jmp	loc_4CD467
; ---------------------------------------------------------------------------

loc_4CD1A3:				; CODE XREF: .text:004CD143j
		lea	edx, [ebp-0AACh]
		push	edx
		call	loc_4CC754
		pop	ecx
		test	eax, eax
		jz	short loc_4CD1D3
		push	offset aUnableToCommun ; "Unable to communicate	with LOADDLL.EXE"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD1D3:				; CODE XREF: .text:004CD1B2j
		xor	ebx, ebx

loc_4CD1D5:				; CODE XREF: .text:004CD1EEj
		lea	eax, [ebx+410h]
		push	eax		; nIDButton
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	IsDlgButtonChecked
		cmp	eax, 1
		jz	short loc_4CD1F0
		inc	ebx
		cmp	ebx, 0Ah
		jle	short loc_4CD1D5

loc_4CD1F0:				; CODE XREF: .text:004CD1E8j
		mov	[ebp-0A60h], ebx
		xor	esi, esi
		cmp	ebx, esi
		jle	loc_4CD294

loc_4CD200:				; CODE XREF: .text:004CD28Ej
		lea	eax, [ebp-0A0Ch]
		push	eax		; int
		lea	edx, [ebp-8]
		push	edx		; int
		lea	ecx, [esi+424h]
		push	ecx		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4CC030
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CD27D
		inc	esi
		push	esi
		push	offset aErrorInArgumen ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-80Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0A0Ch]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx		; src
		lea	edx, [ebp-80Ch]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-0A0Ch]
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		xor	eax, eax
		jmp	loc_4CD467
; ---------------------------------------------------------------------------

loc_4CD27D:				; CODE XREF: .text:004CD220j
		mov	edx, ebx
		sub	edx, esi
		mov	ecx, [ebp-8]
		mov	[ebp+edx*4-0A60h], ecx
		inc	esi
		cmp	ebx, esi
		jg	loc_4CD200

loc_4CD294:				; CODE XREF: .text:004CD1FAj
		xor	esi, esi
		lea	edi, [ebp-0A78h]
		mov	ebx, offset off_52FC84

loc_4CD2A1:				; CODE XREF: .text:004CD360j
		cmp	esi, 4
		jz	loc_4CD356
		cmp	esi, 5
		jz	loc_4CD356
		lea	eax, [ebp-0A0Ch]
		push	eax		; int
		lea	edx, [ebp-8]
		push	edx		; int
		lea	ecx, [esi+44Ch]
		push	ecx		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4CC030
		add	esp, 10h
		test	eax, eax
		jz	short loc_4CD331
		mov	edx, [ebx]
		push	edx
		push	offset aErrorInRegiste ; "Error	in register %s:	"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-80Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0A0Ch]
		mov	ecx, 100h
		sub	ecx, eax
		push	edx		; src
		lea	edx, [ebp-80Ch]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-0A0Ch]
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	SetDlgItemTextW
		xor	eax, eax
		jmp	loc_4CD467
; ---------------------------------------------------------------------------

loc_4CD331:				; CODE XREF: .text:004CD2D3j
		cmp	esi, 6
		jnz	short loc_4CD341
		mov	edx, [ebp-8]
		mov	[ebp-0A68h], edx
		jmp	short loc_4CD356
; ---------------------------------------------------------------------------

loc_4CD341:				; CODE XREF: .text:004CD334j
		cmp	esi, 7
		jnz	short loc_4CD351
		mov	ecx, [ebp-8]
		mov	[ebp-0A64h], ecx
		jmp	short loc_4CD356
; ---------------------------------------------------------------------------

loc_4CD351:				; CODE XREF: .text:004CD344j
		mov	eax, [ebp-8]
		mov	[edi], eax

loc_4CD356:				; CODE XREF: .text:004CD2A4j
					; .text:004CD2ADj ...
		inc	esi
		add	edi, 4
		add	ebx, 4
		cmp	esi, 8
		jl	loc_4CD2A1
		mov	edx, stru_5FCDB0.addr0
		mov	[ebp-0A7Ch], edx
		lea	ecx, [ebp-0AACh]
		push	ecx
		call	loc_4CC7AC
		pop	ecx
		test	eax, eax
		jz	short loc_4CD3A2
		push	offset aUnableToCommun ; "Unable to communicate	with LOADDLL.EXE"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD3A2:				; CODE XREF: .text:004CD381j
		push	offset aCallingExport_ ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	SetDlgItemTextW
		mov	dword_5D3A3C, 1
		cmp	dword_5D3A34, 0
		jz	short loc_4CD3D8
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	DestroyWindow

loc_4CD3D8:				; CODE XREF: .text:004CD3CDj
		push	0		; pass
		push	3		; status
		call	Run
		add	esp, 8
		jmp	short loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD3E6:				; CODE XREF: .text:004CD0B2j
		cmp	eax, 3F0h
		jnz	short loc_4CD3F8
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	DestroyWindow
		jmp	short loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD3F8:				; CODE XREF: .text:004CD3EBj
		cmp	eax, 410h
		jl	short loc_4CD462
		cmp	eax, 41Ah
		jg	short loc_4CD462
		add	eax, 0FFFFFBF0h
		push	eax		; int
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	loc_4CBA94
		add	esp, 8
		jmp	short loc_4CD462
; ---------------------------------------------------------------------------

loc_4CD41A:				; CODE XREF: .text:004CC81Aj
		mov	ecx, [ebp+10h]
		and	ecx, 0FFF0h
		cmp	ecx, 0F060h
		jnz	short loc_4CD434
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	DestroyWindow

loc_4CD434:				; CODE XREF: .text:004CD429j
		xor	eax, eax
		jmp	short loc_4CD467
; ---------------------------------------------------------------------------

loc_4CD438:				; CODE XREF: .text:004CC84Cj
					; .text:004CC855j
		xor	esi, esi

loc_4CD43A:				; CODE XREF: .text:004CD458j
		push	0		; bErase
		lea	eax, [esi+438h]
		push	0		; lpRect
		push	eax		; nIDDlgItem
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	InvalidateRect
		inc	esi
		cmp	esi, 5
		jl	short loc_4CD43A
		xor	eax, eax
		jmp	short loc_4CD467
; ---------------------------------------------------------------------------

loc_4CD45E:				; CODE XREF: .text:004CC837j
					; .text:004CC85Bj
		xor	eax, eax
		jmp	short loc_4CD467
; ---------------------------------------------------------------------------

loc_4CD462:				; CODE XREF: .text:004CCCD8j
					; .text:004CCF70j ...
		mov	eax, 1

loc_4CD467:				; CODE XREF: .text:004CCFAEj
					; .text:004CCFB5j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------

loc_4CD470:				; CODE XREF: .text:0040B208p
					; .text:004CD600p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		cmp	rundll,	0
		push	ebx
		mov	ebx, [ebp+8]
		jz	loc_4CD5C3
		cmp	hDlg, 0
		jnz	loc_4CD5AB
		mov	eax, dword_5D3A48
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4CD4B3
		mov	edx, [eax]
		cmp	ebx, edx
		jb	short loc_4CD4B1
		add	edx, [eax+4]
		cmp	ebx, edx
		jb	short loc_4CD4B3

loc_4CD4B1:				; CODE XREF: .text:004CD4A8j
		xor	ebx, ebx

loc_4CD4B3:				; CODE XREF: .text:004CD4A2j
					; .text:004CD4AFj
		test	ebx, ebx
		jz	short loc_4CD4F6
		push	1		; datasize
		lea	eax, [ebp-1]
		push	eax		; data
		push	22h		; type
		push	ebx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4CD4FC
		push	1		; datasize
		lea	edx, [ebp-1]
		push	edx		; data
		push	23h		; type
		push	ebx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4CD4FC
		push	1		; datasize
		lea	ecx, [ebp-1]
		push	ecx		; data
		push	24h		; type
		push	ebx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4CD4FC

loc_4CD4F6:				; CODE XREF: .text:004CD4B5j
		mov	ebx, stru_5FCDB0.addr0

loc_4CD4FC:				; CODE XREF: .text:004CD4CAj
					; .text:004CD4DFj ...
		push	7Ch		; n
		push	0		; c
		push	offset stru_5FCDB0 ; s
		call	_memset
		add	esp, 0Ch
		mov	stru_5FCDB0.controls, offset stru_560EB8
		mov	stru_5FCDB0.focus, 3E8h
		mov	stru_5FCDB0.addr0, ebx
		lea	eax, [ebp-14h]
		push	eax		; rc
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		call	Getmonitorrect
		add	esp, 0Ch
		mov	edx, [ebp-14h]
		mov	ecx, [ebp-10h]
		add	edx, 0Ah
		push	offset stru_5FCDB0.y
		push	offset stru_5FCDB0.x ; arglist
		push	offset aII_1	; "%i,%i"
		push	offset aPlacement_2 ; "Placement"
		mov	stru_5FCDB0.x, edx
		add	ecx, 0Ah
		push	offset aCallDll	; section
		push	0		; file
		mov	stru_5FCDB0.y, ecx
		call	Getfromini
		add	esp, 18h
		mov	stru_5FCDB0.fi,	0FFFFFFFFh
		mov	stru_5FCDB0.mode, 10000000h
		mov	eax, hwollymain
		push	0		; dwInitParam
		push	offset loc_4CC804 ; lpDialogFunc
		push	eax		; hWndParent
		mov	edx, g_hInstance
		push	offset aDia_empty_2 ; lpTemplateName
		push	edx		; hInstance
		call	CreateDialogParamW
		mov	hDlg, eax
		jmp	short loc_4CD5C3
; ---------------------------------------------------------------------------

loc_4CD5AB:				; CODE XREF: .text:004CD48Ej
		push	3		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		push	0FFFFFFFFh	; hWndInsertAfter
		mov	ecx, hDlg
		push	ecx		; hWnd
		call	SetWindowPos

loc_4CD5C3:				; CODE XREF: .text:004CD481j
					; .text:004CD5A9j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CD5C8:				; CODE XREF: .text:00452419p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF354h
		cmp	rundll,	0
		push	ebx
		push	esi
		mov	esi, offset aLoaddllLoaddll ; "\\loaddll\\loaddll.exe"
;__DebugBreak
		jz	short loc_4CD5EA
		cmp	dword_5D3A3C, 0
		jnz	short loc_4CD5F1

loc_4CD5EA:				; CODE XREF: .text:004CD5DFj
		xor	eax, eax
		jmp	loc_4CD91B
; ---------------------------------------------------------------------------

loc_4CD5F1:				; CODE XREF: .text:004CD5E8j
		xor	edx, edx
		mov	dword_5D3A3C, edx
		mov	ecx, stru_5FCDB0.addr0
		push	ecx
		call	loc_4CD470
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	486h		; msg
		call	Broadcast
		add	esp, 0Ch
		lea	eax, [ebp-0CACh]
		push	eax
		call	loc_4CC754
		pop	ecx
		test	eax, eax
		jz	short loc_4CD64C
		lea	edx, aUnableToGetDat;[esi+166Eh]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		mov	ecx, hDlg
		push	ecx		; hDlg
		call	SetDlgItemTextW
		jmp	loc_4CD916
; ---------------------------------------------------------------------------

loc_4CD64C:				; CODE XREF: .text:004CD626j
		lea	eax, [ebp-0CACh]
		push	eax		; int
		mov	edx, hDlg
		push	edx		; hDlg
		call	loc_4CBFC4
		add	esp, 8
		lea	ecx, aCallFinished;[esi+16B6h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-0A0Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		mov	ebx, eax
		cmp	dword ptr [ebp-0C24h], 0
		jnz	short loc_4CD6B6
		cmp	dword ptr [ebp-0C28h], 0
		jnz	short loc_4CD6B6
		mov	edx, ebx
		lea	eax, $CTW0("\l");[esi+12C0h]
		lea	ecx, [ebp-0A0Ch]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	loc_4CD7B6
; ---------------------------------------------------------------------------

loc_4CD6B6:				; CODE XREF: .text:004CD688j
					; .text:004CD691j
		fild	qword ptr [ebp-0C30h]
		fild	qword ptr [ebp-0C28h]
		fdivp	st(1), st
		fstp	qword ptr [ebp-0Ch]
		fld	qword ptr [ebp-0Ch]
		fcomp	ds:flt_4CD924
		fnstsw	ax
		sahf
		ja	short loc_4CD703
		push	0
		push	0
		lea	edx, aDuration_6fS;[esi+16D4h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-0A0Ch]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax
		jmp	loc_4CD7B6
; ---------------------------------------------------------------------------

loc_4CD703:				; CODE XREF: .text:004CD6D3j
		fld	qword ptr [ebp-0Ch]
		fcomp	ds:dbl_4CD928
		fnstsw	ax
		sahf
		jbe	short loc_4CD73E
		push	dword ptr [ebp-8]
		push	dword ptr [ebp-0Ch]
		lea	ecx, aDuration_6fS;[esi+16D4h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-0A0Ch]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax
		jmp	short loc_4CD7B6
; ---------------------------------------------------------------------------

loc_4CD73E:				; CODE XREF: .text:004CD70Fj
		fld	qword ptr [ebp-0Ch]
		fcomp	ds:dbl_4CD930
		fnstsw	ax
		sahf
		jbe	short loc_4CD782
		fld	qword ptr [ebp-0Ch]
		fmul	ds:flt_4CD938
		add	esp, 0FFFFFFF8h
		lea	edx, aDuration_6fMs;[esi+16FAh]
		fstp	qword ptr [esp]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-0A0Ch]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax
		jmp	short loc_4CD7B6
; ---------------------------------------------------------------------------

loc_4CD782:				; CODE XREF: .text:004CD74Aj
		fld	qword ptr [ebp-0Ch]
		fmul	ds:flt_4CD93C
		add	esp, 0FFFFFFF8h
		lea	edx, aDuration_3fUs;[esi+1722h]
		fstp	qword ptr [esp]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-0A0Ch]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax

loc_4CD7B6:				; CODE XREF: .text:004CD6B1j
					; .text:004CD6FEj ...
		cmp	prtype,	0
		jz	short loc_4CD81C
		mov	edx, [ebp-0C78h]
		lea	ecx, [ebp-0C0Ch]
		mov	[ebp-4], edx
		push	0		; nontriv
		push	100h		; ntext
		push	ecx		; text
		lea	eax, [ebp-4]
		push	4		; ndata
		push	eax		; data
		push	offset prtype	; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		test	eax, eax
		jle	short loc_4CD81C
		lea	edx, [ebp-0C0Ch]
		push	edx
		lea	ecx, aEaxS;[esi+174Ah]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-0A0Ch]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_4CD81C:				; CODE XREF: .text:004CD7BEj
					; .text:004CD7EEj
		mov	eax, [ebp-0C34h]
		test	eax, eax
		jz	short loc_4CD887
		test	al, 3
		jnz	short loc_4CD85B
		mov	edx, [ebp-0C34h]
		shr	edx, 2
		push	edx
		lea	ecx, aSubroutineRemo;[esi+1760h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-0A0Ch]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4CD887
; ---------------------------------------------------------------------------

loc_4CD85B:				; CODE XREF: .text:004CD828j
		mov	ecx, [ebp-0C34h]
		push	ecx
		lea	eax, aSubroutineRe_0;[esi+17BEh]
		push	eax		; src
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-0A0Ch]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_4CD887:				; CODE XREF: .text:004CD824j
					; .text:004CD859j
		mov	eax, [ebp-0C84h]
		test	eax, eax
		jz	short loc_4CD8FE
		lea	edx, [ebp-0C0Ch]
		lea	ecx, aErrcode_2;[esi+1820h]
		push	edx		; _name
		push	eax		; value
		push	ecx		; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4CD8D6
		mov	eax, [ebp-0C84h]
		push	eax
		lea	edx, aLastError08x;[esi+1830h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		add	ebx, ebx
		lea	ecx, [ebp-0A0Ch]
		add	ebx, ecx
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4CD8FE
; ---------------------------------------------------------------------------

loc_4CD8D6:				; CODE XREF: .text:004CD8AAj
		lea	eax, [ebp-0C0Ch]
		push	eax
		lea	edx, aLastErrorS;[esi+1858h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		add	ebx, ebx
		lea	ecx, [ebp-0A0Ch]
		add	ebx, ecx
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4CD8FE:				; CODE XREF: .text:004CD88Fj
					; .text:004CD8D4j
		lea	eax, [ebp-0A0Ch]
		mov	edx, hDlg
		push	eax		; lpString
		push	3EFh		; nIDDlgItem
		push	edx		; hDlg
		call	SetDlgItemTextW

loc_4CD916:				; CODE XREF: .text:004CD647j
		mov	eax, dword_5D3A38

loc_4CD91B:				; CODE XREF: .text:004CD5ECj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
flt_4CD924	dd 0.0			; DATA XREF: .text:004CD6CAr
dbl_4CD928	dq 0.9			; DATA XREF: .text:004CD706r
dbl_4CD930	dq 0.0009		; DATA XREF: .text:004CD741r
flt_4CD938	dd 1000.0		; DATA XREF: .text:004CD74Fr
flt_4CD93C	dd 1000000.0		; DATA XREF: .text:004CD785r
; ---------------------------------------------------------------------------

loc_4CD940:				; CODE XREF: .text:004CF6A0p
					; .text:004D0A39p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, 1
		mov	ebx, [ebp+8]
		xor	eax, eax
		mov	ecx, dword_5FF228
		jmp	short loc_4CD96F
; ---------------------------------------------------------------------------

loc_4CD956:				; CODE XREF: .text:004CD975j
		test	edx, edx
		jz	short loc_4CD960
		test	ebx, ebx
		jz	short loc_4CD979
		xor	edx, edx

loc_4CD960:				; CODE XREF: .text:004CD958j
		cmp	dword ptr [ecx], 0
		jnz	short loc_4CD96B
		dec	ebx
		mov	edx, 1

loc_4CD96B:				; CODE XREF: .text:004CD963j
		inc	eax
		add	ecx, 28h

loc_4CD96F:				; CODE XREF: .text:004CD954j
		cmp	eax, dword_5FF22C
		jl	short loc_4CD956
		xor	eax, eax

loc_4CD979:				; CODE XREF: .text:004CD95Cj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
