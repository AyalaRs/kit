.code

; ---------------------------------------------------------------------------
; Exported entry 165. _DemanglenameW
; Exported entry 472. DemanglenameW

; int __cdecl DemanglenameW(wchar_t *_name, wchar_t *undecorated, int recurs)
		public DemanglenameW
DemanglenameW:				; CODE XREF: .text:00415CF8p
					; .text:004163D6p ...
		push	ebp		; _DemanglenameW
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_439DE9
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 0FFFFFFFFh

loc_439DE9:				; CODE XREF: .text:00439DDEj
		test	ebx, ebx
		jz	short loc_439DF1
		test	edi, edi
		jnz	short loc_439DF8

loc_439DF1:				; CODE XREF: .text:00439DEBj
		xor	eax, eax
		jmp	loc_439F4E
; ---------------------------------------------------------------------------

loc_439DF8:				; CODE XREF: .text:00439DEFj
		cmp	word ptr [ebx],	3Fh
		jnz	short loc_439E72
		cmp	_imp__UnDecorateSymbolName, 0
		jnz	short loc_439E0E
		xor	eax, eax
		jmp	loc_439F4E
; ---------------------------------------------------------------------------

loc_439E0E:				; CODE XREF: .text:00439E05j
		push	100h		; ns
		lea	edx, [ebp-108h]
		push	edx		; s
		push	100h		; nw
		push	ebx		; w
		call	Unicodetoascii
		add	esp, 10h
		lea	ecx, [ebp-208h]
		lea	eax, [ebp-108h]
		push	1800h		; _DWORD
		push	100h		; _DWORD
		push	ecx		; _DWORD
		push	eax		; _DWORD
		call	_imp__UnDecorateSymbolName
		mov	esi, eax
		test	esi, esi
		jnz	short loc_439E53
		xor	eax, eax
		jmp	loc_439F4E
; ---------------------------------------------------------------------------

loc_439E53:				; CODE XREF: .text:00439E4Aj
		push	100h		; nw
		push	edi		; w
		push	100h		; ns
		lea	edx, [ebp-208h]
		push	edx		; s
		call	Asciitounicode
		add	esp, 10h
		jmp	loc_439F4E
; ---------------------------------------------------------------------------

loc_439E72:				; CODE XREF: .text:00439DFCj
		mov	ax, [ebx]
		cmp	ax, 5Fh
		jz	short loc_439E81
		cmp	ax, 40h
		jnz	short loc_439EE2

loc_439E81:				; CODE XREF: .text:00439E79j
		push	ebx		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		dec	esi
		mov	ax, [ebx+esi*2]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_439EE2
		dec	esi
		lea	edx, [ebx+esi*2]
		mov	[ebp-8], edx
		jmp	short loc_439EA8
; ---------------------------------------------------------------------------

loc_439EA3:				; CODE XREF: .text:00439EB7j
		dec	esi
		add	dword ptr [ebp-8], 0FFFFFFFEh

loc_439EA8:				; CODE XREF: .text:00439EA1j
		mov	ecx, [ebp-8]
		mov	ax, [ecx]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_439EA3
		cmp	esi, 1
		jle	short loc_439EE2
		cmp	word ptr [ebx+esi*2], 40h
		jnz	short loc_439EE2
		dec	esi
		mov	edx, esi
		add	edx, edx
		add	ebx, 2
		push	edx		; n
		push	ebx		; src
		push	edi		; dest
		call	_memcpy
		mov	word ptr [edi+esi*2], 0
		add	esp, 0Ch
		mov	eax, esi
		jmp	short loc_439F4E
; ---------------------------------------------------------------------------

loc_439EE2:				; CODE XREF: .text:00439E7Fj
					; .text:00439E98j ...
		cmp	word ptr [ebx],	5Fh
		jnz	short loc_439F24
		cmp	word ptr [ebx+2], 5Ah
		jz	short loc_439EFD
		cmp	word ptr [ebx+2], 5Fh
		jnz	short loc_439F24
		cmp	word ptr [ebx+4], 5Ah
		jnz	short loc_439F24

loc_439EFD:				; CODE XREF: .text:00439EEDj
		mov	edx, [ebp+10h]
		push	edx
		push	edi
		cmp	word ptr [ebx+2], 5Fh
		jnz	short loc_439F0E
		lea	ecx, [ebx+6]
		jmp	short loc_439F11
; ---------------------------------------------------------------------------

loc_439F0E:				; CODE XREF: .text:00439F07j
		lea	ecx, [ebx+4]

loc_439F11:				; CODE XREF: .text:00439F0Cj
		push	ecx
		call	loc_437B80
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jle	short loc_439F24
		mov	eax, esi
		jmp	short loc_439F4E
; ---------------------------------------------------------------------------

loc_439F24:				; CODE XREF: .text:00439EE6j
					; .text:00439EF4j ...
		cmp	word ptr [ebx],	40h
		jnz	short loc_439F4C
		add	ebx, 2
		mov	[ebp-4], ebx
		push	100h
		push	edi
		lea	eax, [ebp-4]
		push	eax
		call	loc_438108
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jle	short loc_439F4C
		mov	eax, esi
		jmp	short loc_439F4E
; ---------------------------------------------------------------------------

loc_439F4C:				; CODE XREF: .text:00439F28j
					; .text:00439F46j
		xor	eax, eax

loc_439F4E:				; CODE XREF: .text:00439DF3j
					; .text:00439E09j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 166. _InsertnameW
; Exported entry 628. InsertnameW

; int __cdecl InsertnameW(ulong	_addr, int type,	wchar_t	*s)
		public InsertnameW
InsertnameW:				; CODE XREF: .text:0042E73Cp
					; .text:0042E754p ...
		push	ebp		; _InsertnameW
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		mov	eax, [ebp+10h]
		test	eax, eax
		jnz	short loc_439F6E
		or	eax, 0FFFFFFFFh
		jmp	short loc_439FA0
; ---------------------------------------------------------------------------

loc_439F6E:				; CODE XREF: .text:00439F67j
		push	1000h		; nt
		lea	edx, [ebp-1000h]
		push	edx		; t
		push	1000h		; nw
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		lea	ecx, [ebp-1000h]
		push	eax		; datasize
		push	ecx		; data
		mov	eax, [ebp+0Ch]
		push	eax		; type
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Insertdata
		add	esp, 10h

loc_439FA0:				; CODE XREF: .text:00439F6Cj
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 167. _QuickinsertnameW
; Exported entry 679. QuickinsertnameW

; int __cdecl QuickinsertnameW(ulong _addr, int type, wchar_t *s)
		public QuickinsertnameW
QuickinsertnameW:			; CODE XREF: .text:00414CFCp
					; .text:00415A4Ap ...
		push	ebp		; _QuickinsertnameW
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		mov	eax, [ebp+10h]
		test	eax, eax
		jnz	short loc_439FBA
		or	eax, 0FFFFFFFFh
		jmp	short loc_439FEC
; ---------------------------------------------------------------------------

loc_439FBA:				; CODE XREF: .text:00439FB3j
		push	1000h		; nt
		lea	edx, [ebp-1000h]
		push	edx		; t
		push	1000h		; nw
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		lea	ecx, [ebp-1000h]
		push	eax		; datasize
		push	ecx		; data
		mov	eax, [ebp+0Ch]
		push	eax		; type
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Quickinsertdata
		add	esp, 10h

loc_439FEC:				; CODE XREF: .text:00439FB8j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 168. _FindnameW
; Exported entry 523. FindnameW

; signed int __cdecl FindnameW(ulong _addr, int type, wchar_t *_name, int	nname)
		public FindnameW
FindnameW:				; CODE XREF: .text:0042729Ep
					; .text:00427C85p ...
		push	ebp		; _FindnameW
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+14h], 0
		mov	edi, [ebp+8]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		jg	short loc_43A007
		xor	ebx, ebx

loc_43A007:				; CODE XREF: .text:0043A003j
		test	esi, esi
		jz	short loc_43A01C
		cmp	esi, 0FFh
		jz	short loc_43A01C
		cmp	dword_5DC5E4, 0
		jnz	short loc_43A029

loc_43A01C:				; CODE XREF: .text:0043A009j
					; .text:0043A011j
		test	ebx, ebx
		jz	short loc_43A025
		mov	word ptr [ebx],	0

loc_43A025:				; CODE XREF: .text:0043A01Ej
		xor	eax, eax
		jmp	short loc_43A092
; ---------------------------------------------------------------------------

loc_43A029:				; CODE XREF: .text:0043A01Aj
		push	esi
		push	edi
		call	loc_4370BC
		add	esp, 8
		cmp	eax, dword_5DC5E8
		jl	short loc_43A048
		test	ebx, ebx
		jz	short loc_43A044
		mov	word ptr [ebx],	0

loc_43A044:				; CODE XREF: .text:0043A03Dj
		xor	eax, eax
		jmp	short loc_43A092
; ---------------------------------------------------------------------------

loc_43A048:				; CODE XREF: .text:0043A039j
		mov	edx, dword_5DC5E0
		mov	ecx, [edx+eax*4]
		add	ecx, dword_5E05F0
		mov	eax, ecx
		cmp	edi, [eax]
		jnz	short loc_43A064
		mov	edx, esi
		cmp	dl, [eax+4]
		jz	short loc_43A071

loc_43A064:				; CODE XREF: .text:0043A05Bj
		test	ebx, ebx
		jz	short loc_43A06D
		mov	word ptr [ebx],	0

loc_43A06D:				; CODE XREF: .text:0043A066j
		xor	eax, eax
		jmp	short loc_43A092
; ---------------------------------------------------------------------------

loc_43A071:				; CODE XREF: .text:0043A062j
		test	ebx, ebx
		jnz	short loc_43A07C
		mov	eax, 1
		jmp	short loc_43A092
; ---------------------------------------------------------------------------

loc_43A07C:				; CODE XREF: .text:0043A073j
		mov	edx, [ebp+14h]
		push	edx		; nw
		push	ebx		; w
		movzx	ecx, word ptr [eax+5]
		push	ecx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_43A092:				; CODE XREF: .text:0043A027j
					; .text:0043A046j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 169. _FindnextnameW
; Exported entry 527. FindnextnameW

; signed int __cdecl FindnextnameW(ulong *_addr,	wchar_t	*_name, int nname)
		public FindnextnameW
FindnextnameW:				; CODE XREF: .text:004617ECp
					; .text:004A3CF5p
		push	ebp		; _FindnextnameW
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+0Ch]
		mov	ecx, offset dword_5E0604
		cmp	dword ptr [ebp+8], 0
		jz	short loc_43A0B5
		test	edx, edx
		jz	short loc_43A0B9
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_43A0B9

loc_43A0B5:				; CODE XREF: .text:0043A0A9j
		xor	eax, eax
		jmp	short loc_43A136
; ---------------------------------------------------------------------------

loc_43A0B9:				; CODE XREF: .text:0043A0ADj
					; .text:0043A0B3j
		cmp	dword_5DC5E4, 0
		jz	short loc_43A0D5
		mov	eax, [ecx]
		cmp	eax, dword_5DC5E8
		jge	short loc_43A0D5
		cmp	dword_5E060C, 0
		jnz	short loc_43A12A

loc_43A0D5:				; CODE XREF: .text:0043A0C0j
					; .text:0043A0CAj
		xor	eax, eax
		jmp	short loc_43A136
; ---------------------------------------------------------------------------

loc_43A0D9:				; CODE XREF: .text:0043A132j
		mov	eax, dword_5DC5E0
		mov	ebx, [ecx]
		mov	eax, [eax+ebx*4]
		add	eax, dword_5E05F0
		mov	esi, [eax]
		cmp	esi, dword_5E0608
		jnb	short loc_43A134
		mov	bl, [eax+4]
		cmp	bl, byte ptr dword_5E060C
		jnz	short loc_43A128
		mov	ebx, [ebp+8]
		mov	[ebx], esi
		inc	dword ptr [ecx]
		test	edx, edx
		jnz	short loc_43A110
		mov	eax, 1
		jmp	short loc_43A136
; ---------------------------------------------------------------------------

loc_43A110:				; CODE XREF: .text:0043A107j
		mov	ecx, [ebp+10h]
		push	ecx		; nw
		push	edx		; w
		movzx	edx, word ptr [eax+5]
		push	edx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_43A136
; ---------------------------------------------------------------------------

loc_43A128:				; CODE XREF: .text:0043A0FCj
		inc	dword ptr [ecx]

loc_43A12A:				; CODE XREF: .text:0043A0D3j
		mov	eax, [ecx]
		cmp	eax, dword_5DC5E8
		jl	short loc_43A0D9

loc_43A134:				; CODE XREF: .text:0043A0F1j
		xor	eax, eax

loc_43A136:				; CODE XREF: .text:0043A0B7j
					; .text:0043A0D7j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 170. _Startnextnamelist
; Exported entry 728. Startnextnamelist

; int __cdecl Startnextnamelist(ulong addr0, ulong addr1, int *list, int n)
		public Startnextnamelist
Startnextnamelist:			; CODE XREF: .text:004C1674p
					; .text:004CB847p
		push	ebp		; _Startnextnamelist
		mov	ebp, esp
		mov	eax, [ebp+14h]
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; list
		mov	ecx, [ebp+0Ch]
		push	ecx		; addr1
		mov	eax, [ebp+8]
		push	eax		; addr0
		call	Startnextdatalist
		add	esp, 10h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 171. _FindnextnamelistW
; Exported entry 528. FindnextnamelistW

; signed int __cdecl FindnextnamelistW(ulong *_addr, int	*type, wchar_t *_name, int nname)
		public FindnextnamelistW
FindnextnamelistW:			; CODE XREF: .text:004C1692p
		push	ebp		; _FindnextnamelistW
		mov	ebp, esp
		push	ebx
		push	esi
		cmp	dword ptr [ebp+8], 0
		mov	esi, offset dword_5E0710
		jz	short loc_43A17E
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_43A17E
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_43A185
		cmp	dword ptr [ebp+14h], 0
		jg	short loc_43A185

loc_43A17E:				; CODE XREF: .text:0043A16Aj
					; .text:0043A170j
		xor	eax, eax
		jmp	loc_43A23F
; ---------------------------------------------------------------------------

loc_43A185:				; CODE XREF: .text:0043A176j
					; .text:0043A17Cj
		cmp	dword_5DC5E4, 0
		jz	short loc_43A1A5
		mov	edx, dword_5E0604
		cmp	edx, dword_5DC5E8
		jge	short loc_43A1A5
		cmp	dword ptr [esi], 0
		jnz	loc_43A22C

loc_43A1A5:				; CODE XREF: .text:0043A18Cj
					; .text:0043A19Aj
		xor	eax, eax
		jmp	loc_43A23F
; ---------------------------------------------------------------------------

loc_43A1AC:				; CODE XREF: .text:0043A237j
		mov	edx, dword_5DC5E0
		mov	ecx, dword_5E0604
		mov	ecx, [edx+ecx*4]
		add	ecx, dword_5E05F0
		mov	eax, [ecx]
		cmp	eax, dword_5E0608
		jnb	short loc_43A23D
		xor	eax, eax
		mov	edx, offset byte_5E0610
		jmp	short loc_43A1DF
; ---------------------------------------------------------------------------

loc_43A1D4:				; CODE XREF: .text:0043A1E1j
		mov	bl, [ecx+4]
		cmp	bl, [edx]
		jz	short loc_43A1E3
		inc	eax
		add	edx, 4

loc_43A1DF:				; CODE XREF: .text:0043A1D2j
		cmp	eax, [esi]
		jl	short loc_43A1D4

loc_43A1E3:				; CODE XREF: .text:0043A1D9j
		cmp	eax, [esi]
		jge	short loc_43A226
		mov	eax, [ecx]
		mov	edx, [ebp+8]
		mov	[edx], eax
		xor	eax, eax
		mov	al, [ecx+4]
		mov	edx, [ebp+0Ch]
		mov	[edx], eax
		inc	dword_5E0604
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_43A20B
		mov	eax, 1
		jmp	short loc_43A23F
; ---------------------------------------------------------------------------

loc_43A20B:				; CODE XREF: .text:0043A202j
		mov	edx, [ebp+14h]
		push	edx		; nw
		mov	eax, [ebp+10h]
		push	eax		; w
		movzx	edx, word ptr [ecx+5]
		push	edx		; nt
		add	ecx, 7
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_43A23F
; ---------------------------------------------------------------------------

loc_43A226:				; CODE XREF: .text:0043A1E5j
		inc	dword_5E0604

loc_43A22C:				; CODE XREF: .text:0043A19Fj
		mov	eax, dword_5E0604
		cmp	eax, dword_5DC5E8
		jl	loc_43A1AC

loc_43A23D:				; CODE XREF: .text:0043A1C9j
		xor	eax, eax

loc_43A23F:				; CODE XREF: .text:0043A180j
					; .text:0043A1A7j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 172. _Findlabel
; Exported entry 516. Findlabel

; int __cdecl Findlabel(ulong _addr, wchar_t *_name, int firsttype)
		public Findlabel
Findlabel:				; CODE XREF: .text:00406AE9p
					; .text:00412BC1p ...
		push	ebp		; _Findlabel
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jz	short loc_43A255
		mov	word ptr [ebx],	0

loc_43A255:				; CODE XREF: .text:0043A24Ej
		cmp	dword_5DC5E4, 0
		jnz	short loc_43A265
		xor	eax, eax
		jmp	loc_43A50F
; ---------------------------------------------------------------------------

loc_43A265:				; CODE XREF: .text:0043A25Cj
		push	21h
		mov	edx, [ebp+8]
		push	edx
		call	loc_4370BC
		add	esp, 8
		mov	esi, eax
		jmp	loc_43A501
; ---------------------------------------------------------------------------

loc_43A27A:				; CODE XREF: .text:0043A507j
		mov	eax, dword_5DC5E0
		mov	eax, [eax+esi*4]
		mov	edx, dword_5E05F0
		add	eax, edx
		mov	ecx, [eax]
		cmp	ecx, [ebp+8]
		jnz	loc_43A50D
		mov	cl, [ebp+10h]
		cmp	cl, [eax+4]
		ja	loc_43A500
		mov	ecx, dword_5DC5E0
		mov	ecx, [ecx+esi*4+4]
		add	ecx, edx
		cmp	byte ptr [eax+4], 21h
		mov	edx, ecx
		jnz	short loc_43A2DA
		test	ebx, ebx
		jz	short loc_43A2D0
		push	100h		; nw
		push	ebx		; w
		movzx	edx, word ptr [eax+5]
		push	edx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_43A2D0:				; CODE XREF: .text:0043A2B7j
		mov	eax, 21h
		jmp	loc_43A50F
; ---------------------------------------------------------------------------

loc_43A2DA:				; CODE XREF: .text:0043A2B3j
		cmp	byte ptr [eax+4], 22h
		jnz	short loc_43A33D
		test	ebx, ebx
		jz	short loc_43A333
		cmp	dword_57FE94, 0
		jz	short loc_43A31C
		inc	esi
		cmp	esi, dword_5DC5E8
		jge	short loc_43A31C
		mov	ecx, [edx]
		cmp	ecx, [ebp+8]
		jnz	short loc_43A31C
		cmp	byte ptr [edx+4], 23h
		jnz	short loc_43A31C
		push	100h		; nw
		push	ebx		; w
		movzx	eax, word ptr [edx+5]
		push	eax		; nt
		add	edx, 7
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_43A333
; ---------------------------------------------------------------------------

loc_43A31C:				; CODE XREF: .text:0043A2EBj
					; .text:0043A2F4j ...
		push	100h		; nw
		push	ebx		; w
		movzx	edx, word ptr [eax+5]
		push	edx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_43A333:				; CODE XREF: .text:0043A2E2j
					; .text:0043A31Aj
		mov	eax, 22h
		jmp	loc_43A50F
; ---------------------------------------------------------------------------

loc_43A33D:				; CODE XREF: .text:0043A2DEj
		cmp	byte ptr [eax+4], 24h
		jnz	short loc_43A363
		test	ebx, ebx
		jz	short loc_43A359
		mov	edx, [eax+7]
		push	edx
		push	offset aU	; "#%u"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_43A359:				; CODE XREF: .text:0043A345j
		mov	eax, 22h
		jmp	loc_43A50F
; ---------------------------------------------------------------------------

loc_43A363:				; CODE XREF: .text:0043A341j
		cmp	byte ptr [eax+4], 26h
		jnz	short loc_43A3C6
		test	ebx, ebx
		jz	short loc_43A3BC
		cmp	dword_57FE94, 0
		jz	short loc_43A3A5
		inc	esi
		cmp	esi, dword_5DC5E8
		jge	short loc_43A3A5
		mov	ecx, [edx]
		cmp	ecx, [ebp+8]
		jnz	short loc_43A3A5
		cmp	byte ptr [edx+4], 27h
		jnz	short loc_43A3A5
		push	100h		; nw
		push	ebx		; w
		movzx	eax, word ptr [edx+5]
		push	eax		; nt
		add	edx, 7
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_43A3BC
; ---------------------------------------------------------------------------

loc_43A3A5:				; CODE XREF: .text:0043A374j
					; .text:0043A37Dj ...
		push	100h		; nw
		push	ebx		; w
		movzx	edx, word ptr [eax+5]
		push	edx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_43A3BC:				; CODE XREF: .text:0043A36Bj
					; .text:0043A3A3j
		mov	eax, 26h
		jmp	loc_43A50F
; ---------------------------------------------------------------------------

loc_43A3C6:				; CODE XREF: .text:0043A367j
		cmp	byte ptr [eax+4], 28h
		jnz	short loc_43A3F2
		test	ebx, ebx
		jz	short loc_43A3E8
		add	eax, 7
		mov	edx, [eax]
		push	edx
		add	eax, 4
		push	eax
		push	offset aS_U	; "&%s.#%u"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h

loc_43A3E8:				; CODE XREF: .text:0043A3CEj
		mov	eax, 26h
		jmp	loc_43A50F
; ---------------------------------------------------------------------------

loc_43A3F2:				; CODE XREF: .text:0043A3CAj
		cmp	byte ptr [eax+4], 29h
		jnz	short loc_43A455
		test	ebx, ebx
		jz	short loc_43A44B
		cmp	dword_57FE94, 0
		jz	short loc_43A434
		inc	esi
		cmp	esi, dword_5DC5E8
		jge	short loc_43A434
		mov	ecx, [edx]
		cmp	ecx, [ebp+8]
		jnz	short loc_43A434
		cmp	byte ptr [edx+4], 2Ah
		jnz	short loc_43A434
		push	100h		; nw
		push	ebx		; w
		movzx	eax, word ptr [edx+5]
		push	eax		; nt
		add	edx, 7
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_43A44B
; ---------------------------------------------------------------------------

loc_43A434:				; CODE XREF: .text:0043A403j
					; .text:0043A40Cj ...
		push	100h		; nw
		push	ebx		; w
		movzx	edx, word ptr [eax+5]
		push	edx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_43A44B:				; CODE XREF: .text:0043A3FAj
					; .text:0043A432j
		mov	eax, 29h
		jmp	loc_43A50F
; ---------------------------------------------------------------------------

loc_43A455:				; CODE XREF: .text:0043A3F6j
		cmp	byte ptr [eax+4], 2Bh
		jnz	short loc_43A4B5
		test	ebx, ebx
		jz	short loc_43A4AE
		cmp	dword_57FE94, 0
		jz	short loc_43A497
		inc	esi
		cmp	esi, dword_5DC5E8
		jge	short loc_43A497
		mov	ecx, [edx]
		cmp	ecx, [ebp+8]
		jnz	short loc_43A497
		cmp	byte ptr [edx+4], 2Ch
		jnz	short loc_43A497
		push	100h		; nw
		push	ebx		; w
		movzx	eax, word ptr [edx+5]
		push	eax		; nt
		add	edx, 7
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	short loc_43A4AE
; ---------------------------------------------------------------------------

loc_43A497:				; CODE XREF: .text:0043A466j
					; .text:0043A46Fj ...
		push	100h		; nw
		push	ebx		; w
		movzx	edx, word ptr [eax+5]
		push	edx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_43A4AE:				; CODE XREF: .text:0043A45Dj
					; .text:0043A495j
		mov	eax, 2Bh
		jmp	short loc_43A50F
; ---------------------------------------------------------------------------

loc_43A4B5:				; CODE XREF: .text:0043A459j
		cmp	byte ptr [eax+4], 25h
		jnz	short loc_43A4DD
		test	ebx, ebx
		jz	short loc_43A4D6
		push	100h		; nw
		push	ebx		; w
		movzx	edx, word ptr [eax+5]
		push	edx		; nt
		add	eax, 7
		push	eax		; t
		call	Utftounicode
		add	esp, 10h

loc_43A4D6:				; CODE XREF: .text:0043A4BDj
		mov	eax, 22h
		jmp	short loc_43A50F
; ---------------------------------------------------------------------------

loc_43A4DD:				; CODE XREF: .text:0043A4B9j
		cmp	byte ptr [eax+4], 2Fh
		jnz	short loc_43A500
		test	ebx, ebx
		jz	short loc_43A4F9
		mov	edx, [eax+7]
		push	edx
		push	offset aU	; "#%u"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_43A4F9:				; CODE XREF: .text:0043A4E5j
		mov	eax, 22h
		jmp	short loc_43A50F
; ---------------------------------------------------------------------------

loc_43A500:				; CODE XREF: .text:0043A29Bj
					; .text:0043A4E1j
		inc	esi

loc_43A501:				; CODE XREF: .text:0043A275j
		cmp	esi, dword_5DC5E8
		jl	loc_43A27A

loc_43A50D:				; CODE XREF: .text:0043A28Fj
		xor	eax, eax

loc_43A50F:				; CODE XREF: .text:0043A260j
					; .text:0043A2D5j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 173. _FindaddressW
; Exported entry 504. FindaddressW

; int __cdecl FindaddressW(wchar_t *_name, struct t_module *pmod, ulong *_addr, wchar_t *errtxt)
		public FindaddressW
FindaddressW:				; CODE XREF: .text:0044FEE4p
					; .text:0048A1C6p ...
		push	ebp		; _FindaddressW
		mov	ebp, esp
		add	esp, 0FFFFFCE4h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_43A533
		cmp	word ptr [eax],	0
		jz	short loc_43A533
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_43A559

loc_43A533:				; CODE XREF: .text:0043A525j
					; .text:0043A52Bj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43A551
		push	offset aBadInputData ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, [ebp+14h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_43A551:				; CODE XREF: .text:0043A537j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A559:				; CODE XREF: .text:0043A531j
		push	200h		; nt
		lea	edx, [ebp-234h]
		push	edx		; t
		push	100h		; nw
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	ecx, [ebp+10h]
		xor	eax, eax
		mov	[ecx], eax
		cmp	dword_5DC5E4, 0
		jnz	short loc_43A58D
		mov	eax, 1
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A58D:				; CODE XREF: .text:0043A581j
		xor	eax, eax
		mov	al, [ebp-234h]
		cmp	eax, 23h
		jz	short loc_43A59F
		cmp	eax, 26h
		jnz	short loc_43A5A6

loc_43A59F:				; CODE XREF: .text:0043A598j
		xor	edi, edi
		jmp	loc_43A67D
; ---------------------------------------------------------------------------

loc_43A5A6:				; CODE XREF: .text:0043A59Dj
		xor	edi, edi
		lea	eax, [ebp-298h]
		lea	edx, [ebp-234h]

loc_43A5B4:				; CODE XREF: .text:0043A5D4j
		mov	cl, [edx]
		test	cl, cl
		jz	short loc_43A5D6
		xor	ebx, ebx
		mov	bl, cl
		cmp	ebx, 2Eh
		jz	short loc_43A5D6
		and	ecx, 0FFh
		mov	[eax], cx
		inc	edi
		add	eax, 2
		inc	edx
		cmp	edi, 20h
		jl	short loc_43A5B4

loc_43A5D6:				; CODE XREF: .text:0043A5B8j
					; .text:0043A5C1j
		test	edi, edi
		jz	short loc_43A5ED
		cmp	edi, 20h
		jge	short loc_43A5ED
		xor	eax, eax
		mov	al, [ebp+edi-234h]
		cmp	eax, 2Eh
		jz	short loc_43A5F4

loc_43A5ED:				; CODE XREF: .text:0043A5D8j
					; .text:0043A5DDj
		xor	edi, edi
		jmp	loc_43A67D
; ---------------------------------------------------------------------------

loc_43A5F4:				; CODE XREF: .text:0043A5EBj
		mov	word ptr [ebp+edi*2-298h], 0
		inc	edi
		xor	esi, esi
		jmp	short loc_43A635
; ---------------------------------------------------------------------------

loc_43A603:				; CODE XREF: .text:0043A63Bj
		push	esi		; index
		push	offset module.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_43A634
		lea	eax, [ebp-298h]
		push	eax		; s2
		mov	edx, [ebp-30h]
		add	edx, 0Ch
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_43A63D

loc_43A634:				; CODE XREF: .text:0043A618j
		inc	esi

loc_43A635:				; CODE XREF: .text:0043A601j
		cmp	esi, module.sorted.n
		jl	short loc_43A603

loc_43A63D:				; CODE XREF: .text:0043A632j
		cmp	esi, module.sorted.n
		jge	short loc_43A64D
		mov	ecx, [ebp-30h]
		mov	[ebp+0Ch], ecx
		jmp	short loc_43A67D
; ---------------------------------------------------------------------------

loc_43A64D:				; CODE XREF: .text:0043A643j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_43A657
		xor	edi, edi
		jmp	short loc_43A67D
; ---------------------------------------------------------------------------

loc_43A657:				; CODE XREF: .text:0043A651j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43A675
		push	offset aUnknownModule ;	"Unknown module"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, [ebp+14h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_43A675:				; CODE XREF: .text:0043A65Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A67D:				; CODE XREF: .text:0043A5A1j
					; .text:0043A5EFj ...
		xor	edx, edx
		mov	dl, [ebp+edi-234h]
		cmp	edx, 26h
		jnz	loc_43A743
		inc	edi
		xor	ecx, ecx
		mov	[ebp-4], ecx
		lea	ebx, [ebp-257h]
		lea	edx, [ebp-2D8h]
		lea	eax, [ebp+edi-234h]

loc_43A6A8:				; CODE XREF: .text:0043A6CDj
		cmp	byte ptr [eax],	0
		jz	short loc_43A6CF
		xor	ecx, ecx
		mov	cl, [eax]
		cmp	ecx, 2Eh
		jz	short loc_43A6CF
		xor	ecx, ecx
		mov	cl, [eax]
		mov	[edx], cx
		add	edx, 2
		mov	cl, [eax]
		inc	eax
		mov	[ebx], cl
		inc	ebx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 20h
		jl	short loc_43A6A8

loc_43A6CF:				; CODE XREF: .text:0043A6ABj
					; .text:0043A6B4j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_43A6EE
		cmp	dword ptr [ebp-4], 20h
		jge	short loc_43A6EE
		lea	eax, [ebp+edi-234h]
		mov	edx, [ebp-4]
		movzx	eax, byte ptr [eax+edx]
		cmp	eax, 2Eh
		jz	short loc_43A714

loc_43A6EE:				; CODE XREF: .text:0043A6D3j
					; .text:0043A6D9j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43A70C
		push	offset aInvalidImportN ; "Invalid import _name"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_43A70C:				; CODE XREF: .text:0043A6F2j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A714:				; CODE XREF: .text:0043A6ECj
		mov	edx, [ebp-4]
		mov	esi, 1
		mov	word ptr [ebp+edx*2-2D8h], 0
		mov	byte ptr [ebp-258h], 26h
		inc	dword ptr [ebp-4]
		add	edi, [ebp-4]
		mov	ecx, [ebp-4]
		mov	byte ptr [ebp+ecx-258h], 2Eh
		inc	dword ptr [ebp-4]
		jmp	short loc_43A745
; ---------------------------------------------------------------------------

loc_43A743:				; CODE XREF: .text:0043A689j
		xor	esi, esi

loc_43A745:				; CODE XREF: .text:0043A741j
		xor	eax, eax
		mov	al, [ebp+edi-234h]
		cmp	eax, 23h
		jnz	loc_43A81C
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_43A783
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43A77B
		push	offset aPleaseSpecifyM ; "Please specify module"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_43A77B:				; CODE XREF: .text:0043A761j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A783:				; CODE XREF: .text:0043A75Bj
		inc	edi
		xor	edx, edx
		mov	[ebp-28h], edx
		lea	ebx, [ebp+edi-234h]
		jmp	short loc_43A7D6
; ---------------------------------------------------------------------------

loc_43A792:				; CODE XREF: .text:0043A7E3j
		mov	edx, [ebp-28h]
		xor	ecx, ecx
		add	edx, edx
		mov	cl, [ebx]
		mov	eax, [ebp-28h]
		inc	ebx
		lea	edx, [edx+edx*4]
		inc	edi
		add	edx, ecx
		sub	edx, 30h
		mov	[ebp-28h], edx
		cmp	eax, [ebp-28h]
		jbe	short loc_43A7D6
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43A7CE
		push	offset aInvalidOrdinal ; "Invalid ordinal"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, [ebp+14h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_43A7CE:				; CODE XREF: .text:0043A7B4j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A7D6:				; CODE XREF: .text:0043A790j
					; .text:0043A7AEj
		xor	edx, edx
		mov	dl, [ebx]
		push	edx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_43A792
		cmp	byte ptr [ebp+edi-234h], 0
		jz	short loc_43A815
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43A80D
		push	offset aExtraCharacter ; "Extra	characters in _name"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, [ebp+14h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_43A80D:				; CODE XREF: .text:0043A7F3j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A815:				; CODE XREF: .text:0043A7EDj
		mov	eax, 1
		jmp	short loc_43A81E
; ---------------------------------------------------------------------------

loc_43A81C:				; CODE XREF: .text:0043A751j
		xor	eax, eax

loc_43A81E:				; CODE XREF: .text:0043A81Aj
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_43A860
		test	esi, esi
		jnz	short loc_43A82C
		test	eax, eax
		jz	short loc_43A852

loc_43A82C:				; CODE XREF: .text:0043A826j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43A84A
		push	offset aPleaseSpecifyM ; "Please specify module"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_43A84A:				; CODE XREF: .text:0043A830j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A852:				; CODE XREF: .text:0043A82Aj
		xor	edx, edx
		mov	[ebp-20h], edx
		mov	dword ptr [ebp-24h], 0FFFFFFFFh
		jmp	short loc_43A874
; ---------------------------------------------------------------------------

loc_43A860:				; CODE XREF: .text:0043A822j
		mov	ecx, [ebp+0Ch]
		mov	edx, [ecx]
		mov	[ebp-20h], edx
		mov	ecx, [ebp+0Ch]
		mov	edx, [ecx+4]
		add	edx, [ebp-20h]
		mov	[ebp-24h], edx

loc_43A874:				; CODE XREF: .text:0043A85Ej
		test	esi, esi
		jnz	loc_43AA21
		test	eax, eax
		jnz	loc_43AA21
		lea	eax, [ebp-234h]
		add	eax, edi
		push	eax		; s
		call	_strlen
		pop	ecx
		mov	[ebp-2Ah], ax
		push	0
		mov	ecx, [ebp-20h]
		push	ecx
		call	loc_4370BC
		add	esp, 8
		mov	esi, eax
		jmp	short loc_43A918
; ---------------------------------------------------------------------------

loc_43A8A9:				; CODE XREF: .text:0043A91Ej
		mov	eax, dword_5DC5E0
		mov	ebx, [eax+esi*4]
		add	ebx, dword_5E05F0
		mov	eax, [ebx]
		cmp	eax, [ebp-24h]
		jnb	short loc_43A920
		mov	al, [ebx+4]
		cmp	al, 21h
		jz	short loc_43A8E1
		cmp	al, 22h
		jz	short loc_43A8E1
		cmp	al, 23h
		jz	short loc_43A8E1
		cmp	al, 25h
		jz	short loc_43A8E1
		cmp	al, 29h
		jz	short loc_43A8E1
		cmp	al, 2Ah
		jz	short loc_43A8E1
		cmp	al, 2Bh
		jz	short loc_43A8E1
		cmp	al, 2Ch
		jnz	short loc_43A917

loc_43A8E1:				; CODE XREF: .text:0043A8C3j
					; .text:0043A8C7j ...
		mov	dx, [ebx+5]
		cmp	dx, [ebp-2Ah]
		jnz	short loc_43A917
		movzx	ecx, word ptr [ebp-2Ah]
		push	ecx		; n
		lea	eax, [ebp-234h]
		add	eax, edi
		push	eax		; s2
		lea	edx, [ebx+7]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43A917
		mov	ecx, [ebp+10h]
		mov	eax, [ebx]
		mov	[ecx], eax
		xor	eax, eax
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43A917:				; CODE XREF: .text:0043A8DFj
					; .text:0043A8E9j ...
		inc	esi

loc_43A918:				; CODE XREF: .text:0043A8A7j
		cmp	esi, dword_5DC5E8
		jl	short loc_43A8A9

loc_43A920:				; CODE XREF: .text:0043A8BCj
		xor	edx, edx
		mov	[ebp-18h], edx
		xor	ecx, ecx
		mov	cl, [ebp+edi-234h]
		cmp	ecx, 30h
		jnz	short loc_43A954
		xor	ebx, ebx
		mov	bl, [ebp+edi-233h]
		push	ebx		; ch
		call	__ltoupper
		pop	ecx
		cmp	eax, 58h
		jnz	short loc_43A954
		mov	dword ptr [ebp-8], 1
		add	edi, 2
		jmp	short loc_43A959
; ---------------------------------------------------------------------------

loc_43A954:				; CODE XREF: .text:0043A931j
					; .text:0043A946j
		xor	eax, eax
		mov	[ebp-8], eax

loc_43A959:				; CODE XREF: .text:0043A952j
		xor	esi, esi
		lea	ebx, [ebp+edi-234h]
		jmp	short loc_43A9B1
; ---------------------------------------------------------------------------

loc_43A964:				; CODE XREF: .text:0043A9BEj
		test	byte ptr [ebp-15h], 0F0h
		jnz	short loc_43A9C0
		xor	eax, eax
		mov	al, [ebx]
		push	eax		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jz	short loc_43A98D
		mov	edx, [ebp-18h]
		xor	ecx, ecx
		shl	edx, 4
		mov	cl, [ebx]
		add	edx, ecx
		sub	edx, 30h
		mov	[ebp-18h], edx
		jmp	short loc_43A9AF
; ---------------------------------------------------------------------------

loc_43A98D:				; CODE XREF: .text:0043A977j
		xor	eax, eax
		mov	al, [ebx]
		mov	[ebp-34h], eax
		mov	edx, [ebp-34h]
		push	edx		; ch
		call	__ltoupper
		pop	ecx
		mov	ecx, [ebp-18h]
		shl	ecx, 4
		add	eax, ecx
		sub	eax, 41h
		add	eax, 0Ah
		mov	[ebp-18h], eax

loc_43A9AF:				; CODE XREF: .text:0043A98Bj
		inc	esi
		inc	ebx

loc_43A9B1:				; CODE XREF: .text:0043A962j
		xor	eax, eax
		mov	al, [ebx]
		push	eax		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_43A964

loc_43A9C0:				; CODE XREF: .text:0043A968j
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_43A9DF
		lea	edx, [ebp+edi-234h]
		xor	ebx, ebx
		mov	bl, [edx+esi]
		push	ebx		; ch
		call	__ltoupper
		pop	ecx
		cmp	eax, 48h
		jnz	short loc_43A9DF
		inc	esi

loc_43A9DF:				; CODE XREF: .text:0043A9C4j
					; .text:0043A9DCj
		lea	eax, [ebp+edi-234h]
		cmp	byte ptr [eax+esi], 0
		jnz	short loc_43AA17
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_43AA17
		mov	edx, [ebp-18h]
		cmp	edx, [ebp-20h]
		jb	short loc_43AA17
		cmp	dword ptr [ebp-24h], 0FFFFFFFFh
		jz	short loc_43AA08
		mov	ecx, [ebp-18h]
		cmp	ecx, [ebp-24h]
		jnb	short loc_43AA17

loc_43AA08:				; CODE XREF: .text:0043A9FEj
		mov	eax, [ebp+10h]
		mov	edx, [ebp-18h]
		mov	[eax], edx
		xor	eax, eax
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43AA17:				; CODE XREF: .text:0043A9EAj
					; .text:0043A9F0j ...
		mov	eax, 1
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43AA21:				; CODE XREF: .text:0043A876j
					; .text:0043A87Ej
		test	esi, esi
		jnz	loc_43AAA9
		test	eax, eax
		jz	short loc_43AAA9
		mov	dword ptr [ebp-10h], 24h
		mov	dword ptr [ebp-0Ch], 2Fh
		push	2		; n
		lea	edx, [ebp-10h]
		push	edx		; list
		mov	ecx, [ebp-24h]
		push	ecx		; addr1
		mov	eax, [ebp-20h]
		push	eax		; addr0
		call	Startnextdatalist
		add	esp, 10h

loc_43AA51:				; CODE XREF: .text:0043AA98j
		push	4		; datasize
		lea	edx, [ebp-18h]
		push	edx		; data
		lea	ecx, [ebp-14h]
		push	ecx		; type
		lea	eax, [ebp-1Ch]
		push	eax		; _addr
		call	Findnextdatalist
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_43AA92
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43AA8A
		push	offset aOrdinalNotFoun ; "Ordinal not found"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_43AA8A:				; CODE XREF: .text:0043AA70j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43AA92:				; CODE XREF: .text:0043AA6Aj
		mov	edx, [ebp-18h]
		cmp	edx, [ebp-28h]
		jnz	short loc_43AA51
		mov	ecx, [ebp+10h]
		mov	eax, [ebp-1Ch]
		mov	[ecx], eax
		xor	eax, eax
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43AAA9:				; CODE XREF: .text:0043AA23j
					; .text:0043AA2Bj
		test	esi, esi
		jz	loc_43AB89
		test	eax, eax
		jnz	loc_43AB89
		lea	edx, [ebp-234h]
		add	edx, edi
		push	edx		; s
		call	_strlen
		pop	ecx
		mov	[ebp-2Ah], ax
		push	0
		mov	ecx, [ebp-20h]
		push	ecx
		call	loc_4370BC
		add	esp, 8
		mov	esi, eax
		jmp	short loc_43AB5A
; ---------------------------------------------------------------------------

loc_43AADE:				; CODE XREF: .text:0043AB60j
		mov	eax, dword_5DC5E0
		mov	ebx, [eax+esi*4]
		add	ebx, dword_5E05F0
		mov	eax, [ebx]
		cmp	eax, [ebp-24h]
		jnb	short loc_43AB66
		mov	al, [ebx+4]
		cmp	al, 26h
		jz	short loc_43AAFE
		cmp	al, 27h
		jnz	short loc_43AB59

loc_43AAFE:				; CODE XREF: .text:0043AAF8j
		movzx	edx, word ptr [ebx+5]
		movzx	ecx, word ptr [ebp-2Ah]
		add	ecx, [ebp-4]
		cmp	edx, ecx
		jnz	short loc_43AB59
		mov	eax, [ebp-4]
		push	eax		; n
		lea	edx, [ebp-258h]
		push	edx		; s2
		lea	ecx, [ebx+7]
		push	ecx		; s1
		call	_memicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43AB59
		movzx	eax, word ptr [ebp-2Ah]
		push	eax		; n
		lea	edx, [ebp-234h]
		add	edx, edi
		push	edx		; s2
		mov	ecx, [ebp-4]
		add	ecx, ebx
		add	ecx, 7
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_43AB59
		mov	eax, [ebp+10h]
		mov	edx, [ebx]
		mov	[eax], edx
		xor	eax, eax
		jmp	loc_43AC07
; ---------------------------------------------------------------------------

loc_43AB59:				; CODE XREF: .text:0043AAFCj
					; .text:0043AB0Bj ...
		inc	esi

loc_43AB5A:				; CODE XREF: .text:0043AADCj
		cmp	esi, dword_5DC5E8
		jl	loc_43AADE

loc_43AB66:				; CODE XREF: .text:0043AAF1j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43AB84
		push	offset aUnknownImport ;	"Unknown import"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8

loc_43AB84:				; CODE XREF: .text:0043AB6Aj
		or	eax, 0FFFFFFFFh
		jmp	short loc_43AC07
; ---------------------------------------------------------------------------

loc_43AB89:				; CODE XREF: .text:0043AAABj
					; .text:0043AAB3j
		push	28h		; type
		mov	edx, [ebp-24h]
		push	edx		; addr1
		mov	ecx, [ebp-20h]
		push	ecx		; addr0
		call	Startnextdata
		add	esp, 0Ch

loc_43AB9B:				; CODE XREF: .text:0043ABE1j
					; .text:0043ABFBj
		push	44h		; datasize
		lea	eax, [ebp-31Ch]
		push	eax		; data
		lea	edx, [ebp-1Ch]
		push	edx		; _addr
		call	Findnextdata
		add	esp, 0Ch
		cmp	eax, 44h
		jz	short loc_43ABD8
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_43ABD3
		push	offset aOrdinalNotImpo ; "Ordinal not imported"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, [ebp+14h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_43ABD3:				; CODE XREF: .text:0043ABB9j
		or	eax, 0FFFFFFFFh
		jmp	short loc_43AC07
; ---------------------------------------------------------------------------

loc_43ABD8:				; CODE XREF: .text:0043ABB3j
		mov	edx, [ebp-31Ch]
		cmp	edx, [ebp-28h]
		jnz	short loc_43AB9B
		lea	ecx, [ebp-318h]
		push	ecx		; s2
		lea	eax, [ebp-2D8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_43AB9B
		mov	edx, [ebp+10h]
		mov	ecx, [ebp-1Ch]
		mov	[edx], ecx
		xor	eax, eax

loc_43AC07:				; CODE XREF: .text:0043A554j
					; .text:0043A588j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 174. _Destroysimpledata
; Exported entry 474. Destroysimpledata

; int __cdecl Destroysimpledata(t_simple *pdat)
		public Destroysimpledata
Destroysimpledata:			; CODE XREF: .text:00413321p
					; .text:0043AC63p ...
		push	ebp		; _Destroysimpledata
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43AC3B
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_43AC2C
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	[ebx], edx

loc_43AC2C:				; CODE XREF: .text:0043AC1Fj
		xor	ecx, ecx
		mov	[ebx+4], ecx
		xor	eax, eax
		mov	[ebx+8], eax
		xor	edx, edx
		mov	[ebx+0Ch], edx

loc_43AC3B:				; CODE XREF: .text:0043AC19j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 175. _Createsimpledata
; Exported entry 444. Createsimpledata

; signed int __cdecl Createsimpledata(t_simple *pdat, ulong itemsize)
		public Createsimpledata
Createsimpledata:			; CODE XREF: .text:0044AB7Ep
					; .text:0044AB8Dp ...
		push	ebp		; _Createsimpledata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43AC5D
		cmp	esi, 4
		jb	short loc_43AC5D
		cmp	esi, 400h
		jbe	short loc_43AC62

loc_43AC5D:				; CODE XREF: .text:0043AC4Ej
					; .text:0043AC53j
		or	eax, 0FFFFFFFFh
		jmp	short loc_43ACA1
; ---------------------------------------------------------------------------

loc_43AC62:				; CODE XREF: .text:0043AC5Bj
		push	ebx		; pdat
		call	Destroysimpledata
		pop	ecx		; int
		mov	edi, 10000h
		mov	[ebx+8], edi
		push	0		; flags
		imul	edi, esi
		push	edi		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebx], eax
		cmp	dword ptr [ebx], 0
		jnz	short loc_43AC90
		xor	eax, eax
		mov	[ebx+8], eax
		or	eax, 0FFFFFFFFh
		jmp	short loc_43ACA1
; ---------------------------------------------------------------------------

loc_43AC90:				; CODE XREF: .text:0043AC84j
		xor	edx, edx
		mov	[ebx+4], esi
		mov	[ebx+0Ch], edx
		xor	eax, eax
		mov	dword ptr [ebx+10h], 1

loc_43ACA1:				; CODE XREF: .text:0043AC60j
					; .text:0043AC8Ej
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 176. _Addsimpledata
; Exported entry 395. Addsimpledata

; int __usercall Addsimpledata@<eax>(t_simple *pdat, void *data)
		public Addsimpledata
Addsimpledata:				; CODE XREF: .text:0046B948p
					; .text:004D453Ep ...
		push	ebp		; _Addsimpledata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43ACC0
		cmp	dword ptr [ebx], 0
		jz	short loc_43ACC0
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_43ACC8

loc_43ACC0:				; CODE XREF: .text:0043ACB3j
					; .text:0043ACB8j
		or	eax, 0FFFFFFFFh
		jmp	loc_43AD85
; ---------------------------------------------------------------------------

loc_43ACC8:				; CODE XREF: .text:0043ACBEj
		mov	eax, [ebx+8]
		cmp	eax, [ebx+0Ch]
		jg	loc_43AD62
		mov	edi, eax
		add	edi, edi
		push	1		; flags
		mov	eax, edi
		imul	dword ptr [ebx+4] ; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_43AD11
		mov	eax, [ebx+8]
		mov	edi, eax
		test	edi, edi
		jns	short loc_43ACFA
		add	edi, 3

loc_43ACFA:				; CODE XREF: .text:0043ACF5j
		sar	edi, 2
		add	edi, eax
		push	0		; flags
		mov	eax, edi
		imul	dword ptr [ebx+4] ; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	esi, eax

loc_43AD11:				; CODE XREF: .text:0043ACECj
		test	esi, esi
		jz	short loc_43AD38
		mov	eax, [ebx+0Ch]
		imul	dword ptr [ebx+4]
		push	eax		; n
		mov	edx, [ebx]
		push	edx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx]
		push	ecx		; data
		call	Virtfree
		pop	ecx
		mov	[ebx], esi
		mov	[ebx+8], edi
		jmp	short loc_43AD62
; ---------------------------------------------------------------------------

loc_43AD38:				; CODE XREF: .text:0043AD13j
		cmp	dword_5E0600, 0
		jnz	short loc_43AD53
		push	offset aDataTableFullS ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx

loc_43AD53:				; CODE XREF: .text:0043AD3Fj
		mov	dword_5E0600, 1
		or	eax, 0FFFFFFFFh
		jmp	short loc_43AD85
; ---------------------------------------------------------------------------

loc_43AD62:				; CODE XREF: .text:0043ACCEj
					; .text:0043AD36j
		mov	eax, [ebx+4]
		push	eax		; n
		mov	edx, [ebp+0Ch]
		push	edx		; src
		mov	ecx, [ebx+0Ch]
		imul	ecx, eax
		add	ecx, [ebx]
		push	ecx		; dest
		call	_memcpy
		inc	dword ptr [ebx+0Ch]
		xor	eax, eax
		mov	[ebx+10h], eax
		add	esp, 0Ch
		xor	eax, eax

loc_43AD85:				; CODE XREF: .text:0043ACC3j
					; .text:0043AD60j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 177. _Sortsimpledata
; Exported entry 723. Sortsimpledata

; void __cdecl Sortsimpledata(t_simple *pdat)
		public Sortsimpledata
Sortsimpledata:				; CODE XREF: .text:0043AEC7p
					; .text:0043AF0Cp ...
		push	ebp		; _Sortsimpledata
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_43AE3E
		cmp	dword ptr [ebx], 0
		jz	loc_43AE3E
		cmp	dword ptr [ebx+10h], 0
		jnz	loc_43AE3E
		cmp	dword ptr [ebx+0Ch], 1
		jg	short loc_43ADC2
		mov	dword ptr [ebx+10h], 1
		jmp	short loc_43AE3E
; ---------------------------------------------------------------------------

loc_43ADC2:				; CODE XREF: .text:0043ADB7j
		push	offset loc_43898C ; _DWORD
		mov	eax, [ebx+4]
		push	eax		; size
		mov	edx, [ebx+0Ch]
		push	edx		; count
		mov	ecx, [ebx]
		push	ecx		; data
		call	Heapsort
		add	esp, 10h
		cmp	dword ptr [ebx+0Ch], 1
		jle	short loc_43AE37
		mov	eax, [ebx]
		mov	edi, [ebx+4]
		xor	ecx, ecx
		mov	esi, 1
		mov	edx, [eax]
		mov	[ebp-8], edx
		mov	[ebp-4], ecx
		jmp	short loc_43AE2B
; ---------------------------------------------------------------------------

loc_43ADF6:				; CODE XREF: .text:0043AE2Ej
		mov	edx, esi
		mov	eax, [ebx]
		imul	edx, edi
		mov	edx, [eax+edx]
		cmp	edx, [ebp-8]
		jz	short loc_43AE0B
		mov	[ebp-8], edx
		inc	dword ptr [ebp-4]

loc_43AE0B:				; CODE XREF: .text:0043AE03j
		cmp	esi, [ebp-4]
		jz	short loc_43AE2A
		push	edi		; n
		mov	ecx, esi
		imul	ecx, edi
		add	ecx, eax
		push	ecx		; src
		mov	edx, [ebp-4]
		imul	edx, edi
		add	edx, eax
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_43AE2A:				; CODE XREF: .text:0043AE0Ej
		inc	esi

loc_43AE2B:				; CODE XREF: .text:0043ADF4j
		cmp	esi, [ebx+0Ch]
		jl	short loc_43ADF6
		mov	eax, [ebp-4]
		inc	eax
		mov	[ebx+0Ch], eax

loc_43AE37:				; CODE XREF: .text:0043ADDEj
		mov	dword ptr [ebx+10h], 1

loc_43AE3E:				; CODE XREF: .text:0043AD9Aj
					; .text:0043ADA3j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_43AE48:				; CODE XREF: .text:004AC528p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_43AEA1
		cmp	dword ptr [eax], 0
		jz	short loc_43AEA1
		cmp	dword ptr [eax+0Ch], 1
		jg	short loc_43AE69
		mov	dword ptr [eax+10h], 1
		jmp	short loc_43AEA1
; ---------------------------------------------------------------------------

loc_43AE69:				; CODE XREF: .text:0043AE5Ej
		xor	ebx, ebx
		xor	ecx, ecx
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_43AE89
; ---------------------------------------------------------------------------

loc_43AE74:				; CODE XREF: .text:0043AE8Cj
		mov	edx, [eax]
		mov	esi, [ebp-4]
		mov	edx, [edx+esi]
		cmp	ebx, edx
		ja	short loc_43AE8E
		mov	ebx, edx
		inc	ecx
		mov	edx, [eax+4]
		add	[ebp-4], edx

loc_43AE89:				; CODE XREF: .text:0043AE72j
		cmp	ecx, [eax+0Ch]
		jl	short loc_43AE74

loc_43AE8E:				; CODE XREF: .text:0043AE7Ej
		cmp	ecx, [eax+0Ch]
		jge	short loc_43AE9A
		xor	ecx, ecx
		mov	[eax+10h], ecx
		jmp	short loc_43AEA1
; ---------------------------------------------------------------------------

loc_43AE9A:				; CODE XREF: .text:0043AE91j
		mov	dword ptr [eax+10h], 1

loc_43AEA1:				; CODE XREF: .text:0043AE53j
					; .text:0043AE58j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 178. _Findsimpledata
; Exported entry 531. Findsimpledata

; _DWORD *__cdecl Findsimpledata(t_simple *pdat, ulong _addr)
		public Findsimpledata
Findsimpledata:				; CODE XREF: .text:0043C1C2p
					; .text:0046C212p ...
		push	ebp		; _Findsimpledata
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43AEBC
		cmp	dword ptr [ebx], 0
		jnz	short loc_43AEC0

loc_43AEBC:				; CODE XREF: .text:0043AEB5j
		xor	eax, eax
		jmp	short loc_43AEEB
; ---------------------------------------------------------------------------

loc_43AEC0:				; CODE XREF: .text:0043AEBAj
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_43AECD
		push	ebx		; pdat
		call	Sortsimpledata
		pop	ecx

loc_43AECD:				; CODE XREF: .text:0043AEC4j
		push	esi
		push	ebx
		call	loc_4389D0
		add	esp, 8
		cmp	eax, [ebx+0Ch]
		jl	short loc_43AEE0
		xor	eax, eax
		jmp	short loc_43AEEB
; ---------------------------------------------------------------------------

loc_43AEE0:				; CODE XREF: .text:0043AEDAj
		imul	dword ptr [ebx+4]
		add	eax, [ebx]
		cmp	esi, [eax]
		jz	short loc_43AEEB
		xor	eax, eax

loc_43AEEB:				; CODE XREF: .text:0043AEBEj
					; .text:0043AEDEj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 179. _Getsimpledataindexbyaddr
; Exported entry 605. Getsimpledataindexbyaddr

; int __cdecl Getsimpledataindexbyaddr(t_simple	*pdat, ulong _addr)
		public Getsimpledataindexbyaddr
Getsimpledataindexbyaddr:		; CODE XREF: .text:00461B19p
					; .text:00461BB7p ...
		push	ebp		; _Getsimpledataindexbyaddr
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43AF00
		cmp	dword ptr [ebx], 0
		jnz	short loc_43AF05

loc_43AF00:				; CODE XREF: .text:0043AEF9j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43AF05:				; CODE XREF: .text:0043AEFEj
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_43AF12
		push	ebx		; pdat
		call	Sortsimpledata
		pop	ecx

loc_43AF12:				; CODE XREF: .text:0043AF09j
		mov	edx, [ebp+0Ch]
		push	edx
		push	ebx
		call	loc_4389D0
		add	esp, 8
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 180. _Getsimpledatabyindex
; Exported entry 604. Getsimpledatabyindex

; int __cdecl Getsimpledatabyindex(t_simple *pdat, int index)
		public Getsimpledatabyindex
Getsimpledatabyindex:			; CODE XREF: .text:00461B2Dp
					; .text:00461BCBp ...
		push	ebp		; _Getsimpledatabyindex
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43AF3C
		cmp	dword ptr [ebx], 0
		jz	short loc_43AF3C
		test	esi, esi
		jge	short loc_43AF40

loc_43AF3C:				; CODE XREF: .text:0043AF31j
					; .text:0043AF36j
		xor	eax, eax
		jmp	short loc_43AF5D
; ---------------------------------------------------------------------------

loc_43AF40:				; CODE XREF: .text:0043AF3Aj
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_43AF4D
		push	ebx		; pdat
		call	Sortsimpledata
		pop	ecx

loc_43AF4D:				; CODE XREF: .text:0043AF44j
		cmp	esi, [ebx+0Ch]
		jl	short loc_43AF56
		xor	eax, eax
		jmp	short loc_43AF5D
; ---------------------------------------------------------------------------

loc_43AF56:				; CODE XREF: .text:0043AF50j
		mov	eax, esi
		imul	dword ptr [ebx+4]
		add	eax, [ebx]

loc_43AF5D:				; CODE XREF: .text:0043AF3Ej
					; .text:0043AF54j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 181. _Deletesimpledatarange
; Exported entry 469. Deletesimpledatarange

; void __cdecl Deletesimpledatarange(t_simple *pdat, ulong addr0, ulong	addr1)
		public Deletesimpledatarange
Deletesimpledatarange:			; CODE XREF: .text:0046E8D4p
		push	ebp		; _Deletesimpledatarange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_43AFDA
		cmp	dword ptr [ebx], 0
		jz	short loc_43AFDA
		cmp	esi, [ebp+10h]
		jnb	short loc_43AFDA
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_43AF8B
		push	ebx		; pdat
		call	Sortsimpledata
		pop	ecx

loc_43AF8B:				; CODE XREF: .text:0043AF82j
		push	esi
		push	ebx
		call	loc_4389D0
		add	esp, 8
		mov	edi, eax
		mov	eax, [ebp+10h]
		push	eax
		push	ebx
		call	loc_4389D0
		add	esp, 8
		mov	esi, eax
		cmp	esi, edi
		jz	short loc_43AFDA
		cmp	esi, [ebx+0Ch]
		jge	short loc_43AFD5
		mov	ecx, [ebx+0Ch]
		sub	ecx, esi
		mov	eax, [ebx+4]
		imul	ecx, eax
		push	ecx		; n
		mov	ecx, esi
		imul	ecx, eax
		mov	edx, [ebx]
		add	ecx, edx
		push	ecx		; src
		mov	ecx, edi
		imul	ecx, eax
		add	ecx, edx
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch

loc_43AFD5:				; CODE XREF: .text:0043AFADj
		sub	esi, edi
		sub	[ebx+0Ch], esi

loc_43AFDA:				; CODE XREF: .text:0043AF72j
					; .text:0043AF77j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
