.code

; int __cdecl isalnum(int c)
_isalnum:
		push	ebp
		mov	ebp, esp
		push	104h
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl isascii(int c)
_isascii:
		push	ebp
		mov	ebp, esp
		cmp	dword ptr [ebp+8], 80h
		setb	al
		and	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl isalpha(int c)
_isalpha:				; CODE XREF: .text:00486710p
		push	ebp
		mov	ebp, esp
		push	100h
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl iscntrl(int c)
_iscntrl:				; CODE XREF: .text:004264DAp
					; .text:0042654Dp
		push	ebp
		mov	ebp, esp
		push	20h
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl isdigit(int c)
_isdigit:				; CODE XREF: .text:0042AFB7p
					; .text:0043A7DBp ...
		push	ebp
		mov	ebp, esp
		push	4
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl isgraph(int c)
_isgraph:
		push	ebp
		mov	ebp, esp
		push	194h
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl islower(int c)
_islower:
		push	ebp
		mov	ebp, esp
		push	2
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl isprint(int c)
_isprint:
		push	ebp
		mov	ebp, esp
		push	1D4h
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl ispunct(int c)
_ispunct:
		push	ebp
		mov	ebp, esp
		push	10h
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl isspace(int c)
_isspace:				; CODE XREF: .text:004EF7AAp
		push	ebp
		mov	ebp, esp
		push	8
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl isupper(int c)
_isupper:
		push	ebp
		mov	ebp, esp
		push	1
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl isxdigit(int c)
_isxdigit:				; CODE XREF: .text:00428F04p
					; .text:0042ADECp ...
		push	ebp
		mov	ebp, esp
		push	80h
		mov	eax, [ebp+8]
		push	eax
		call	___isctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl iswalnum(wint_t c)
_iswalnum:				; CODE XREF: .text:00435EEBp
					; .text:004388A4p ...
		push	ebp
		mov	ebp, esp
		push	104h		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl iswascii(wint_t c)
_iswascii:
		push	ebp
		mov	ebp, esp
		movzx	eax, word ptr [ebp+8]
		cmp	eax, 80h
		setb	al
		and	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl iswalpha(wint_t c)
_iswalpha:				; CODE XREF: .text:00438866p
					; .text:004BEB81p
		push	ebp
		mov	ebp, esp
		push	100h		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl iswcntrl(wint_t c)
_iswcntrl:
		push	ebp
		mov	ebp, esp
		push	20h		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl iswdigit(wint_t c)
_iswdigit:				; CODE XREF: .text:0041A4D8p
					; .text:00420E45p ...
		push	ebp
		mov	ebp, esp
		push	4		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl iswgraph(wint_t c)
_iswgraph:				; CODE XREF: .text:004A0710p
		push	ebp
		mov	ebp, esp
		push	194h		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl iswlower(wint_t c)
_iswlower:				; CODE XREF: .text:0049A8B9p
					; .text:004D2E97p
		push	ebp
		mov	ebp, esp
		push	2		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl iswprint(wint_t c)
_iswprint:				; CODE XREF: .text:0044B6B8p
					; .text:004A7E29p
		push	ebp
		mov	ebp, esp
		push	1D4h		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl iswpunct(wint_t c)
_iswpunct:
		push	ebp
		mov	ebp, esp
		push	10h		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl iswspace(wint_t c)
_iswspace:				; CODE XREF: .text:004EACC6p
					; .text:004EEB99p ...
		push	ebp
		mov	ebp, esp
		push	8		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl iswupper(wint_t c)
_iswupper:				; CODE XREF: .text:00487E13p
					; .text:00487E22p
		push	ebp
		mov	ebp, esp
		push	1		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl iswxdigit(wint_t c)
_iswxdigit:				; CODE XREF: .text:004117E6p
					; .text:0041182Cp ...
		push	ebp
		mov	ebp, esp
		push	80h		; int
		movzx	eax, word ptr [ebp+8]
		push	eax		; SrcStr
		call	___iswctype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___isctype:				; CODE XREF: .text:004ECD30p
					; .text:004ECD5Cp ...
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp+8]
		cmp	edx, 0FFh
		jbe	short loc_4ECF41
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECF41:				; CODE XREF: .text:004ECF3Bj
		mov	eax, off_57B5B0
		cmp	dword ptr [eax+8], 0
		jnz	short loc_4ECF52
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_4ECF61

loc_4ECF52:				; CODE XREF: .text:004ECF4Aj
		movsx	edx, dx
		movzx	eax, word_57B072[edx*2]
		and	eax, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECF61:				; CODE XREF: .text:004ECF50j
		mov	eax, [eax+10h]
		movzx	edx, word ptr [eax+edx*2+2]
		and	ecx, edx
		mov	eax, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl __iswctype(WCHAR SrcStr, int)
___iswctype:				; CODE XREF: .text:004ECE35p
					; .text:004ECE61p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		cmp	dword ptr [ebp+8], 0FFFFh
		mov	ebx, [ebp+0Ch]
		jnz	short loc_4ECF85
		xor	eax, eax
		jmp	short loc_4ECFC1
; ---------------------------------------------------------------------------

loc_4ECF85:				; CODE XREF: .text:004ECF7Fj
		mov	edx, off_57B5B0
		cmp	dword ptr [edx+8], 0
		jz	short loc_4ECFAA
		cmp	dword ptr [ebp+8], 100h
		jge	short loc_4ECFAA
		movsx	ecx, word ptr [ebp+8]
		movzx	eax, word_57B072[ecx*2]
		and	eax, ebx
		jmp	short loc_4ECFC1
; ---------------------------------------------------------------------------

loc_4ECFAA:				; CODE XREF: .text:004ECF8Fj
					; .text:004ECF98j
		lea	edx, [ebp-2]
		lea	ecx, [ebp+8]
		push	edx		; lpCharType
		push	1		; cchSrc
		push	ecx		; lpSrcStr
		push	1		; dwInfoType
		call	GetStringTypeW
		movzx	eax, word ptr [ebp-2]
		and	eax, ebx

loc_4ECFC1:				; CODE XREF: .text:004ECF83j
					; .text:004ECFA8j
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; wchar_t *__cdecl _lwcslwr(wchar_t *s)
__lwcslwr:				; CODE XREF: .text:00405B66p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		mov	ebx, esi
		jmp	short loc_4ECFD7
; ---------------------------------------------------------------------------

loc_4ECFD4:				; CODE XREF: .text:004ECFE7j
		add	ebx, 2

loc_4ECFD7:				; CODE XREF: .text:004ECFD2j
		mov	ax, [ebx]
		push	eax		; ch
		call	__ltowlower
		pop	ecx
		mov	[ebx], ax
		test	ax, ax
		jnz	short loc_4ECFD4
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; wchar_t *__cdecl _lwcsupr(wchar_t *s)
__lwcsupr:				; CODE XREF: .text:0041406Dp
					; .text:00478EF5p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		mov	ebx, esi
		jmp	short loc_4ECFFF
; ---------------------------------------------------------------------------

loc_4ECFFC:				; CODE XREF: .text:004ED00Fj
		add	ebx, 2

loc_4ECFFF:				; CODE XREF: .text:004ECFFAj
		mov	ax, [ebx]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		mov	[ebx], ax
		test	ax, ax
		jnz	short loc_4ECFFC
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _ltolower(int ch)
__ltolower:				; CODE XREF: .text:00402A54p
		push	ebp
		mov	ebp, esp
		xor	edx, edx
		push	ecx
		mov	[ebp-4], edx
		mov	eax, off_57B5B0
		cmp	dword ptr [ebp+8], 0FFFFFFFFh
		jnz	short loc_4ED032
		or	eax, 0FFFFFFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED032:				; CODE XREF: .text:004ED02Aj
		cmp	dword ptr [eax+8], 0
		jz	short loc_4ED04C
		mov	edx, [ebp+8]
		and	edx, 0FFh
		xor	eax, eax
		mov	al, byte_57B274[edx]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED04C:				; CODE XREF: .text:004ED036j
		push	4		; cchDest
		lea	edx, [ebp-4]
		push	edx		; lpDestStr
		push	1		; cchSrc
		lea	ecx, [ebp+8]
		push	ecx		; lpSrcStr
		push	100h		; dwMapFlags
		mov	eax, [eax+4]
		push	eax		; Locale
		call	LCMapStringA
		mov	eax, [ebp-4]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; wchar_t __cdecl _ltowlower(wchar_t ch)
__ltowlower:				; CODE XREF: .text:00487E30p
					; .text:004ECFDBp
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, off_57B5B0
		cmp	word ptr [ebp+8], 0FFFFh
		jnz	short loc_4ED084
		mov	ax, 0FFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED084:				; CODE XREF: .text:004ED07Bj
		cmp	dword ptr [eax+8], 0
		jz	short loc_4ED09F
		movzx	edx, word ptr [ebp+8]
		and	edx, 0FFh
		xor	eax, eax
		mov	al, byte_57B274[edx]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED09F:				; CODE XREF: .text:004ED088j
		push	2		; cchDest
		lea	edx, [ebp-2]
		push	edx		; lpDestStr
		push	1		; cchSrc
		lea	ecx, [ebp+8]
		push	ecx		; lpSrcStr
		push	100h		; dwMapFlags
		mov	eax, [eax+4]
		push	eax		; Locale
		call	LCMapStringW
		mov	ax, [ebp-2]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl _ltoupper(int ch)
__ltoupper:				; CODE XREF: .text:00423684p
					; .text:0043A93Dp ...
		push	ebp
		mov	ebp, esp
		xor	edx, edx
		push	ecx
		mov	[ebp-4], edx
		mov	eax, off_57B5B0
		cmp	dword ptr [ebp+8], 0FFFFFFFFh
		jnz	short loc_4ED0DA
		or	eax, 0FFFFFFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED0DA:				; CODE XREF: .text:004ED0D2j
		cmp	dword ptr [eax+8], 0
		jz	short loc_4ED0F4
		mov	edx, [ebp+8]
		and	edx, 0FFh
		xor	eax, eax
		mov	al, byte_57B374[edx]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED0F4:				; CODE XREF: .text:004ED0DEj
		push	4		; cchDest
		lea	edx, [ebp-4]
		push	edx		; lpDestStr
		push	1		; cchSrc
		lea	ecx, [ebp+8]
		push	ecx		; lpSrcStr
		push	200h		; dwMapFlags
		mov	eax, [eax+4]
		push	eax		; Locale
		call	LCMapStringA
		mov	eax, [ebp-4]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; wchar_t __cdecl _ltowupper(wchar_t ch)
__ltowupper:				; CODE XREF: .text:00411817p
					; .text:00411967p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, off_57B5B0
		cmp	word ptr [ebp+8], 0FFFFh
		jnz	short loc_4ED12C
		mov	ax, 0FFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED12C:				; CODE XREF: .text:004ED123j
		cmp	dword ptr [eax+8], 0
		jz	short loc_4ED147
		movzx	edx, word ptr [ebp+8]
		and	edx, 0FFh
		xor	eax, eax
		mov	al, byte_57B374[edx]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED147:				; CODE XREF: .text:004ED130j
		push	2		; cchDest
		lea	edx, [ebp-2]
		push	edx		; lpDestStr
		push	1		; cchSrc
		lea	ecx, [ebp+8]
		push	ecx		; lpSrcStr
		push	200h		; dwMapFlags
		mov	eax, [eax+4]
		push	eax		; Locale
		call	LCMapStringW
		mov	ax, [ebp-2]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl mblen(const char *s, _size_t n)
_mblen:
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4ED17E
		cmp	byte ptr [eax],	0
		jz	short loc_4ED17E
		test	edx, edx
		jnz	short loc_4ED182

loc_4ED17E:				; CODE XREF: .text:004ED173j
					; .text:004ED178j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED182:				; CODE XREF: .text:004ED17Cj
		xor	ecx, ecx
		mov	cl, [eax]
		test	byte_61BBE5[ecx], 4
		jz	short loc_4ED1BB
		cmp	edx, 2
		jl	short loc_4ED1AF
		push	0		; cchWideChar
		push	0		; lpWideCharStr
		mov	edx, off_57B5B0
		push	2		; cbMultiByte
		push	eax		; lpMultiByteStr
		push	9		; dwFlags
		mov	eax, [edx]
		push	eax		; CodePage
		call	MultiByteToWideChar
		test	eax, eax
		jnz	short loc_4ED1B4

loc_4ED1AF:				; CODE XREF: .text:004ED192j
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED1B4:				; CODE XREF: .text:004ED1ADj
		mov	eax, 2
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED1BB:				; CODE XREF: .text:004ED18Dj
		push	0		; cchWideChar
		push	0		; lpWideCharStr
		mov	edx, off_57B5B0
		push	1		; cbMultiByte
		push	eax		; lpMultiByteStr
		push	9		; dwFlags
		mov	ecx, [edx]
		push	ecx		; CodePage
		call	MultiByteToWideChar
		test	eax, eax
		jnz	short loc_4ED1DB
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED1DB:				; CODE XREF: .text:004ED1D4j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl mbtowc(wchar_t *pwc, const char *s, _size_t n)
_mbtowc:				; CODE XREF: .text:004EC618p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	ebx, ebx
		jz	short loc_4ED1FA
		test	esi, esi
		jnz	short loc_4ED201

loc_4ED1FA:				; CODE XREF: .text:004ED1F4j
		xor	eax, eax
		jmp	loc_4ED2AC
; ---------------------------------------------------------------------------

loc_4ED201:				; CODE XREF: .text:004ED1F8j
		cmp	byte ptr [ebx],	0
		jnz	short loc_4ED216
		test	eax, eax
		jz	short loc_4ED20F
		mov	word ptr [eax],	0

loc_4ED20F:				; CODE XREF: .text:004ED208j
		xor	eax, eax
		jmp	loc_4ED2AC
; ---------------------------------------------------------------------------

loc_4ED216:				; CODE XREF: .text:004ED204j
		mov	edx, off_57B5B0
		cmp	dword ptr [edx+8], 0
		jz	short loc_4ED234
		test	eax, eax
		jz	short loc_4ED22D
		xor	ecx, ecx
		mov	cl, [ebx]
		mov	[eax], cx

loc_4ED22D:				; CODE XREF: .text:004ED224j
		mov	eax, 1
		jmp	short loc_4ED2AC
; ---------------------------------------------------------------------------

loc_4ED234:				; CODE XREF: .text:004ED220j
		xor	edx, edx
		mov	dl, [ebx]
		test	byte_61BBE5[edx], 4
		jz	short loc_4ED27F
		cmp	esi, 2
		jl	short loc_4ED268
		mov	ecx, 1
		test	eax, eax
		jnz	short loc_4ED250
		dec	ecx

loc_4ED250:				; CODE XREF: .text:004ED24Dj
		push	ecx		; cchWideChar
		push	eax		; lpWideCharStr
		mov	eax, off_57B5B0
		push	2		; cbMultiByte
		push	ebx		; lpMultiByteStr
		push	9		; dwFlags
		mov	edx, [eax]
		push	edx		; CodePage
		call	MultiByteToWideChar
		test	eax, eax
		jnz	short loc_4ED278

loc_4ED268:				; CODE XREF: .text:004ED244j
		cmp	esi, 2
		jl	short loc_4ED273
		cmp	byte ptr [ebx+1], 0
		jnz	short loc_4ED278

loc_4ED273:				; CODE XREF: .text:004ED26Bj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4ED2AC
; ---------------------------------------------------------------------------

loc_4ED278:				; CODE XREF: .text:004ED266j
					; .text:004ED271j
		mov	eax, 2
		jmp	short loc_4ED2AC
; ---------------------------------------------------------------------------

loc_4ED27F:				; CODE XREF: .text:004ED23Fj
		mov	edx, 1
		test	eax, eax
		jnz	short loc_4ED289
		dec	edx

loc_4ED289:				; CODE XREF: .text:004ED286j
		push	edx		; cchWideChar
		push	eax		; lpWideCharStr
		mov	ecx, off_57B5B0
		push	1		; cbMultiByte
		push	ebx		; lpMultiByteStr
		push	9		; dwFlags
		mov	eax, [ecx]
		push	eax		; CodePage
		call	MultiByteToWideChar
		test	eax, eax
		jnz	short loc_4ED2A7
		or	eax, 0FFFFFFFFh
		jmp	short loc_4ED2AC
; ---------------------------------------------------------------------------

loc_4ED2A7:				; CODE XREF: .text:004ED2A0j
		mov	eax, 1

loc_4ED2AC:				; CODE XREF: .text:004ED1FCj
					; .text:004ED211j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl wctomb(char *s, wchar_t wc)
_wctomb:				; CODE XREF: .text:004EA959p
					; .text:004EAAABp ...
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_4ED2C0
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED2C0:				; CODE XREF: .text:004ED2B9j
		mov	edx, off_57B5B0
		cmp	dword ptr [edx+8], 0
		jz	short loc_4ED2E7
		cmp	word ptr [ebp+0Ch], 0FFh
		jbe	short loc_4ED2DA
		or	eax, 0FFFFFFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED2DA:				; CODE XREF: .text:004ED2D2j
		mov	dl, [ebp+0Ch]
		mov	[eax], dl
		mov	eax, 1
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED2E7:				; CODE XREF: .text:004ED2CAj
		xor	edx, edx
		lea	ecx, [ebp-4]
		mov	[ebp-4], edx
		push	ecx		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	2		; cbMultiByte
		push	eax		; lpMultiByteStr
		lea	eax, [ebp+0Ch]
		mov	edx, off_57B5B0
		push	1		; cchWideChar
		push	eax		; lpWideCharStr
		push	220h		; dwFlags
		mov	ecx, [edx]
		push	ecx		; CodePage
		call	WideCharToMultiByte
		test	eax, eax
		jz	short loc_4ED318
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4ED31E

loc_4ED318:				; CODE XREF: .text:004ED310j
		or	eax, 0FFFFFFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED31E:				; CODE XREF: .text:004ED316j
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; size_t __cdecl mbstowcs(wchar_t *pwcs, const char *s,	size_t n)
_mbstowcs:
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		xor	ebx, ebx
		test	edi, edi
		jz	short loc_4ED344
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4ED344
		xor	eax, eax
		jmp	loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED344:				; CODE XREF: .text:004ED335j
					; .text:004ED33Bj
		test	edi, edi
		jz	loc_4ED40D
		mov	edx, off_57B5B0
		cmp	dword ptr [edx+8], 0
		jz	short loc_4ED382
		cmp	ebx, [ebp+10h]
		jnb	short loc_4ED37B

loc_4ED35D:				; CODE XREF: .text:004ED379j
		xor	ecx, ecx
		mov	cl, [esi+ebx]
		mov	[edi], cx
		cmp	byte ptr [esi+ebx], 0
		jnz	short loc_4ED372
		mov	eax, ebx
		jmp	loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED372:				; CODE XREF: .text:004ED369j
		inc	ebx
		add	edi, 2
		cmp	ebx, [ebp+10h]
		jb	short loc_4ED35D

loc_4ED37B:				; CODE XREF: .text:004ED35Bj
		mov	eax, ebx
		jmp	loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED382:				; CODE XREF: .text:004ED356j
		mov	edx, [ebp+10h]
		mov	ecx, off_57B5B0
		push	edx		; cchWideChar
		push	edi		; lpWideCharStr
		push	0FFFFFFFFh	; cbMultiByte
		push	esi		; lpMultiByteStr
		push	9		; dwFlags
		mov	eax, [ecx]
		push	eax		; CodePage
		call	MultiByteToWideChar
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4ED3A8
		mov	eax, ebx
		dec	eax
		jmp	loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED3A8:				; CODE XREF: .text:004ED39Ej
		call	GetLastError
		cmp	eax, 7Ah
		jz	short loc_4ED3BA
		or	eax, 0FFFFFFFFh
		jmp	loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED3BA:				; CODE XREF: .text:004ED3B0j
		mov	edx, [ebp+10h]
		mov	eax, esi
		jmp	short loc_4ED3D0
; ---------------------------------------------------------------------------

loc_4ED3C1:				; CODE XREF: .text:004ED3DCj
		xor	ecx, ecx
		mov	cl, [eax]
		test	byte_61BBE5[ecx], 4
		jz	short loc_4ED3CF
		inc	eax

loc_4ED3CF:				; CODE XREF: .text:004ED3CCj
		inc	eax

loc_4ED3D0:				; CODE XREF: .text:004ED3BFj
		mov	ecx, edx
		add	edx, 0FFFFFFFFh
		test	ecx, ecx
		jz	short loc_4ED3DE
		cmp	byte ptr [eax],	0
		jnz	short loc_4ED3C1

loc_4ED3DE:				; CODE XREF: .text:004ED3D7j
		sub	eax, esi
		mov	[ebp-4], eax
		mov	eax, [ebp+10h]
		push	eax		; cchWideChar
		push	edi		; lpWideCharStr
		mov	edx, [ebp-4]
		mov	eax, off_57B5B0
		push	edx		; cbMultiByte
		push	esi		; lpMultiByteStr
		push	1		; dwFlags
		mov	edx, [eax]
		push	edx		; CodePage
		call	MultiByteToWideChar
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4ED407
		or	eax, 0FFFFFFFFh
		jmp	short loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED407:				; CODE XREF: .text:004ED400j
		mov	eax, ebx
		jmp	short loc_4ED447
; ---------------------------------------------------------------------------
		jmp	short loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED40D:				; CODE XREF: .text:004ED346j
		mov	edx, off_57B5B0
		cmp	dword ptr [edx+8], 0
		jz	short loc_4ED422
		push	esi		; s
		call	_strlen
		pop	ecx
		jmp	short loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED422:				; CODE XREF: .text:004ED417j
		push	0		; cchWideChar
		push	0		; lpWideCharStr
		mov	ecx, off_57B5B0
		push	0FFFFFFFFh	; cbMultiByte
		push	esi		; lpMultiByteStr
		push	9		; dwFlags
		mov	eax, [ecx]
		push	eax		; CodePage
		call	MultiByteToWideChar
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4ED444
		or	eax, 0FFFFFFFFh
		jmp	short loc_4ED447
; ---------------------------------------------------------------------------

loc_4ED444:				; CODE XREF: .text:004ED43Dj
		mov	eax, ebx
		dec	eax

loc_4ED447:				; CODE XREF: .text:004ED33Fj
					; .text:004ED36Dj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+0Ch]
		mov	ebx, [ebp+8]
		lea	edx, [ecx+1]
		mov	eax, ebx
		jmp	short loc_4ED464
; ---------------------------------------------------------------------------

loc_4ED461:				; CODE XREF: .text:004ED46Bj
		add	eax, 2

loc_4ED464:				; CODE XREF: .text:004ED45Fj
		dec	edx
		jz	short loc_4ED46D
		cmp	word ptr [eax],	0
		jnz	short loc_4ED461

loc_4ED46D:				; CODE XREF: .text:004ED465j
		test	edx, edx
		jz	short loc_4ED484
		cmp	word ptr [eax],	0
		jnz	short loc_4ED484
		sub	eax, ebx
		sar	eax, 1
		jns	short loc_4ED480
		adc	eax, 0

loc_4ED480:				; CODE XREF: .text:004ED47Bj
		inc	eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ED484:				; CODE XREF: .text:004ED46Fj
					; .text:004ED475j
		mov	eax, ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; size_t __cdecl wcstombs(char *s, const wchar_t *pwcs,	size_t n)
_wcstombs:
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		xor	eax, eax
		push	ebx
		push	esi
		mov	[ebp-0Ch], eax
		xor	ebx, ebx
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4ED4AE
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4ED4AE
		xor	eax, eax
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED4AE:				; CODE XREF: .text:004ED49Fj
					; .text:004ED4A5j
		cmp	dword ptr [ebp+8], 0
		jz	loc_4ED5DB
		mov	edx, off_57B5B0
		cmp	dword ptr [edx+8], 0
		jz	short loc_4ED507
		cmp	ebx, [ebp+10h]
		jnb	short loc_4ED500

loc_4ED4C9:				; CODE XREF: .text:004ED4FEj
		mov	ecx, [ebp+0Ch]
		cmp	word ptr [ecx],	0FFh
		jbe	short loc_4ED4DB
		or	eax, 0FFFFFFFFh
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED4DB:				; CODE XREF: .text:004ED4D1j
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	cl, [edx]
		mov	[eax+ebx], cl
		mov	edx, [ebp+0Ch]
		add	dword ptr [ebp+0Ch], 2
		cmp	word ptr [edx],	0
		jnz	short loc_4ED4FA
		mov	eax, ebx
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED4FA:				; CODE XREF: .text:004ED4F1j
		inc	ebx
		cmp	ebx, [ebp+10h]
		jb	short loc_4ED4C9

loc_4ED500:				; CODE XREF: .text:004ED4C7j
		mov	eax, ebx
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED507:				; CODE XREF: .text:004ED4C2j
		lea	edx, [ebp-0Ch]
		push	edx		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		mov	ecx, [ebp+10h]
		push	ecx		; cbMultiByte
		mov	ecx, off_57B5B0
		mov	eax, [ebp+8]
		push	eax		; lpMultiByteStr
		push	0FFFFFFFFh	; cchWideChar
		mov	edx, [ebp+0Ch]
		push	edx		; lpWideCharStr
		push	220h		; dwFlags
		mov	eax, [ecx]
		push	eax		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4ED542
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4ED542
		mov	eax, ebx
		dec	eax
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED542:				; CODE XREF: .text:004ED532j
					; .text:004ED538j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4ED552
		call	GetLastError
		cmp	eax, 7Ah
		jz	short loc_4ED55A

loc_4ED552:				; CODE XREF: .text:004ED546j
		or	eax, 0FFFFFFFFh
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED55A:				; CODE XREF: .text:004ED550j
		cmp	ebx, [ebp+10h]
		jnb	short loc_4ED5D7

loc_4ED55F:				; CODE XREF: .text:004ED5D5j
		lea	edx, [ebp-0Ch]
		lea	ecx, [ebp-6]
		push	edx		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	2		; cbMultiByte
		push	ecx		; lpMultiByteStr
		push	1		; cchWideChar
		mov	edx, off_57B5B0
		mov	eax, [ebp+0Ch]
		push	eax		; lpWideCharStr
		push	0		; dwFlags
		mov	ecx, [edx]
		push	ecx		; CodePage
		call	WideCharToMultiByte
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4ED590
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4ED598

loc_4ED590:				; CODE XREF: .text:004ED588j
		or	eax, 0FFFFFFFFh
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED598:				; CODE XREF: .text:004ED58Ej
		mov	edx, [ebp-4]
		add	edx, ebx
		cmp	edx, [ebp+10h]
		jbe	short loc_4ED5A9
		mov	eax, ebx
		jmp	loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED5A9:				; CODE XREF: .text:004ED5A0j
		xor	esi, esi
		mov	eax, [ebp+8]
		lea	edx, [eax+ebx]
		lea	eax, [ebp-6]
		cmp	esi, [ebp-4]
		jge	short loc_4ED5CE

loc_4ED5B9:				; CODE XREF: .text:004ED5CCj
		mov	cl, [eax]
		mov	[edx], cl
		test	cl, cl
		jnz	short loc_4ED5C5
		mov	eax, ebx
		jmp	short loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED5C5:				; CODE XREF: .text:004ED5BFj
		inc	eax
		inc	esi
		inc	edx
		inc	ebx
		cmp	esi, [ebp-4]
		jl	short loc_4ED5B9

loc_4ED5CE:				; CODE XREF: .text:004ED5B7j
		add	dword ptr [ebp+0Ch], 2
		cmp	ebx, [ebp+10h]
		jb	short loc_4ED55F

loc_4ED5D7:				; CODE XREF: .text:004ED55Dj
		mov	eax, ebx
		jmp	short loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED5DB:				; CODE XREF: .text:004ED4B2j
		mov	edx, off_57B5B0
		cmp	dword ptr [edx+8], 0
		jz	short loc_4ED5F3
		mov	ecx, [ebp+0Ch]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		jmp	short loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED5F3:				; CODE XREF: .text:004ED5E5j
		lea	eax, [ebp-0Ch]
		mov	ecx, off_57B5B0
		push	eax		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	0		; cbMultiByte
		push	0		; lpMultiByteStr
		push	0FFFFFFFFh	; cchWideChar
		mov	edx, [ebp+0Ch]
		push	edx		; lpWideCharStr
		push	220h		; dwFlags
		mov	eax, [ecx]
		push	eax		; CodePage
		call	WideCharToMultiByte
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4ED622
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4ED627

loc_4ED622:				; CODE XREF: .text:004ED61Aj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4ED62A
; ---------------------------------------------------------------------------

loc_4ED627:				; CODE XREF: .text:004ED620j
		mov	eax, ebx
		dec	eax

loc_4ED62A:				; CODE XREF: .text:004ED4A9j
					; .text:004ED4D6j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__llmul:				; CODE XREF: .text:004273DFp
					; .text:00427522p ...
		push	edx
		push	eax
		mov	eax, [esp+10h]
		mul	dword ptr [esp]
		mov	ecx, eax
		mov	eax, [esp+4]
		mul	dword ptr [esp+0Ch]
		add	ecx, eax
		mov	eax, [esp]
		mul	dword ptr [esp+0Ch]
		add	edx, ecx
		pop	ecx
		pop	ecx
		retn	8
; ---------------------------------------------------------------------------

__lldiv:				; CODE XREF: .text:0042769Fp
					; .text:00427770p ...
		push	ebp
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4ED66D
		or	edx, edx
		jz	short loc_4ED6C5
		or	ebx, ebx
		jz	short loc_4ED6C5

loc_4ED66D:				; CODE XREF: .text:004ED663j
		or	edx, edx
		jns	short loc_4ED67B
		neg	edx
		neg	eax
		sbb	edx, 0
		or	edi, 1

loc_4ED67B:				; CODE XREF: .text:004ED66Fj
		or	ecx, ecx
		jns	short loc_4ED689
		neg	ecx
		neg	ebx
		sbb	ecx, 0
		xor	edi, 1

loc_4ED689:				; CODE XREF: .text:004ED67Dj
		mov	ebp, ecx
		mov	ecx, 40h
		push	edi
		xor	edi, edi
		xor	esi, esi

loc_4ED695:				; CODE XREF: .text:loc_4ED6ACj
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4ED6AC
		ja	short loc_4ED6A7
		cmp	esi, ebx
		jb	short loc_4ED6AC

loc_4ED6A7:				; CODE XREF: .text:004ED6A1j
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4ED6AC:				; CODE XREF: .text:004ED69Fj
					; .text:004ED6A5j
		loop	loc_4ED695
		pop	ebx
		test	ebx, 1
		jz	short loc_4ED6BE
		neg	edx
		neg	eax
		sbb	edx, 0

loc_4ED6BE:				; CODE XREF: .text:004ED6B5j
					; .text:004ED6C9j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4ED6C5:				; CODE XREF: .text:004ED667j
					; .text:004ED66Bj
		div	ebx
		xor	edx, edx
		jmp	short loc_4ED6BE
; ---------------------------------------------------------------------------

__lludiv:				; CODE XREF: .text:004EAE21p
					; .text:004EDB97p ...
		push	ebp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4ED6E3
		or	edx, edx
		jz	short loc_4ED70E
		or	ebx, ebx
		jz	short loc_4ED70E

loc_4ED6E3:				; CODE XREF: .text:004ED6D9j
		mov	ebp, ecx
		mov	ecx, 40h
		xor	edi, edi
		xor	esi, esi

loc_4ED6EE:				; CODE XREF: .text:loc_4ED705j
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4ED705
		ja	short loc_4ED700
		cmp	esi, ebx
		jb	short loc_4ED705

loc_4ED700:				; CODE XREF: .text:004ED6FAj
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4ED705:				; CODE XREF: .text:004ED6F8j
					; .text:004ED6FEj
		loop	loc_4ED6EE

loc_4ED707:				; CODE XREF: .text:004ED712j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4ED70E:				; CODE XREF: .text:004ED6DDj
					; .text:004ED6E1j
		div	ebx
		xor	edx, edx
		jmp	short loc_4ED707
; ---------------------------------------------------------------------------

__llmod:
		push	ebp
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4ED72E
		or	edx, edx
		jz	short loc_4ED787
		or	ebx, ebx
		jz	short loc_4ED787

loc_4ED72E:				; CODE XREF: .text:004ED724j
		or	edx, edx
		jns	short loc_4ED73C
		neg	edx
		neg	eax
		sbb	edx, 0
		or	edi, 1

loc_4ED73C:				; CODE XREF: .text:004ED730j
		or	ecx, ecx
		jns	short loc_4ED747
		neg	ecx
		neg	ebx
		sbb	ecx, 0

loc_4ED747:				; CODE XREF: .text:004ED73Ej
		mov	ebp, ecx
		mov	ecx, 40h
		push	edi
		xor	edi, edi
		xor	esi, esi

loc_4ED753:				; CODE XREF: .text:loc_4ED76Aj
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4ED76A
		ja	short loc_4ED765
		cmp	esi, ebx
		jb	short loc_4ED76A

loc_4ED765:				; CODE XREF: .text:004ED75Fj
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4ED76A:				; CODE XREF: .text:004ED75Dj
					; .text:004ED763j
		loop	loc_4ED753
		mov	eax, esi
		mov	edx, edi
		pop	ebx
		test	ebx, 1
		jz	short loc_4ED780
		neg	edx
		neg	eax
		sbb	edx, 0

loc_4ED780:				; CODE XREF: .text:004ED777j
					; .text:004ED78Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4ED787:				; CODE XREF: .text:004ED728j
					; .text:004ED72Cj
		div	ebx
		xchg	eax, edx
		xor	edx, edx
		jmp	short loc_4ED780
; ---------------------------------------------------------------------------

__llumod:				; CODE XREF: .text:004EDB84p
					; .text:004EDC43p
		push	ebp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4ED7A6
		or	edx, edx
		jz	short loc_4ED7D5
		or	ebx, ebx
		jz	short loc_4ED7D5

loc_4ED7A6:				; CODE XREF: .text:004ED79Cj
		mov	ebp, ecx
		mov	ecx, 40h
		xor	edi, edi
		xor	esi, esi

loc_4ED7B1:				; CODE XREF: .text:loc_4ED7C8j
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4ED7C8
		ja	short loc_4ED7C3
		cmp	esi, ebx
		jb	short loc_4ED7C8

loc_4ED7C3:				; CODE XREF: .text:004ED7BDj
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4ED7C8:				; CODE XREF: .text:004ED7BBj
					; .text:004ED7C1j
		loop	loc_4ED7B1
		mov	eax, esi
		mov	edx, edi

loc_4ED7CE:				; CODE XREF: .text:004ED7DAj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4ED7D5:				; CODE XREF: .text:004ED7A0j
					; .text:004ED7A4j
		div	ebx
		xchg	eax, edx
		xor	edx, edx
		jmp	short loc_4ED7CE
; ---------------------------------------------------------------------------

__llshl:
		cmp	cl, 20h
		jl	short loc_4ED7F2
		cmp	cl, 40h
		jl	short loc_4ED7EB
		xor	edx, edx
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4ED7EB:				; CODE XREF: .text:004ED7E4j
		mov	edx, eax
		shl	edx, cl
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4ED7F2:				; CODE XREF: .text:004ED7DFj
		shld	edx, eax, cl
		shl	eax, cl
		retn
; ---------------------------------------------------------------------------

__llshr:
		cmp	cl, 20h
		jl	short loc_4ED80E
		cmp	cl, 40h
		jl	short loc_4ED808
		sar	edx, 1Fh
		mov	eax, edx
		retn
; ---------------------------------------------------------------------------

loc_4ED808:				; CODE XREF: .text:004ED800j
		mov	eax, edx
		cdq
		sar	eax, cl
		retn
; ---------------------------------------------------------------------------

loc_4ED80E:				; CODE XREF: .text:004ED7FBj
		shrd	eax, edx, cl
		sar	edx, cl
		retn
; ---------------------------------------------------------------------------

__llushr:
		cmp	cl, 20h
		jl	short loc_4ED82A
		cmp	cl, 40h
		jl	short loc_4ED823
		xor	edx, edx
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4ED823:				; CODE XREF: .text:004ED81Cj
		mov	eax, edx
		xor	edx, edx
		shr	eax, cl
		retn
; ---------------------------------------------------------------------------

loc_4ED82A:				; CODE XREF: .text:004ED817j
		shrd	eax, edx, cl
		shr	edx, cl
		retn
; ---------------------------------------------------------------------------

__pow10:				; CODE XREF: .text:004EDF67p
					; .text:004EE8F1p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		mov	edx, [ebp+8]
		cmp	edx, 0FFFFECBCh
		jge	short loc_4ED84D
		fld	ds:tbyte_4ED994
		jmp	loc_4ED98E
; ---------------------------------------------------------------------------

loc_4ED84D:				; CODE XREF: .text:004ED840j
		cmp	edx, 1344h
		jle	short loc_4ED860
		fld	tbyte_57B78A
		jmp	loc_4ED98E
; ---------------------------------------------------------------------------

loc_4ED860:				; CODE XREF: .text:004ED853j
		test	edx, edx
		jnz	short loc_4ED86F
		fld	ds:tbyte_4ED9A0
		jmp	loc_4ED98E
; ---------------------------------------------------------------------------

loc_4ED86F:				; CODE XREF: .text:004ED862j
		mov	eax, edx
		test	edx, edx
		jge	short loc_4ED879
		mov	eax, edx
		neg	eax

loc_4ED879:				; CODE XREF: .text:004ED873j
		mov	ecx, eax
		and	ecx, 7
		sar	eax, 3
		test	al, 1
		lea	ecx, [ecx+ecx*4]
		mov	ebx, dword_57B6D4[ecx*2]
		mov	[ebp-0Ch], ebx
		mov	ebx, dword_57B6D8[ecx*2]
		mov	[ebp-8], ebx
		mov	bx, word_57B6DC[ecx*2]
		mov	[ebp-4], bx
		jz	short loc_4ED8B7
		fld	tbyte_57B724
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED8B7:				; CODE XREF: .text:004ED8A6j
		sar	eax, 1
		test	eax, eax
		jz	loc_4ED97C
		test	al, 1
		jz	short loc_4ED8D4
		fld	tbyte_57B730
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED8D4:				; CODE XREF: .text:004ED8C3j
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED8E9
		fld	tbyte_57B73A
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED8E9:				; CODE XREF: .text:004ED8D8j
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED8FE
		fld	tbyte_57B744
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED8FE:				; CODE XREF: .text:004ED8EDj
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED913
		fld	tbyte_57B74E
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED913:				; CODE XREF: .text:004ED902j
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED928
		fld	tbyte_57B758
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED928:				; CODE XREF: .text:004ED917j
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED93D
		fld	tbyte_57B762
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED93D:				; CODE XREF: .text:004ED92Cj
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED952
		fld	tbyte_57B76C
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED952:				; CODE XREF: .text:004ED941j
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED967
		fld	tbyte_57B776
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED967:				; CODE XREF: .text:004ED956j
		sar	eax, 1
		test	al, 1
		jz	short loc_4ED97C
		fld	tbyte_57B780
		fld	tbyte ptr [ebp-0Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-0Ch]
		wait

loc_4ED97C:				; CODE XREF: .text:004ED8BBj
					; .text:004ED96Bj
		test	edx, edx
		jge	short loc_4ED98B
		fld	tbyte ptr [ebp-0Ch]
		fdivr	ds:flt_4ED9AC
		jmp	short loc_4ED98E
; ---------------------------------------------------------------------------

loc_4ED98B:				; CODE XREF: .text:004ED97Ej
		fld	tbyte ptr [ebp-0Ch]

loc_4ED98E:				; CODE XREF: .text:004ED848j
					; .text:004ED85Bj ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
tbyte_4ED994	dt 0.0			; DATA XREF: .text:004ED842r
		align 10h
tbyte_4ED9A0	dt 1.0			; DATA XREF: .text:004ED864r
		align 4
flt_4ED9AC	dd 1.0			; DATA XREF: .text:004ED983r
; ---------------------------------------------------------------------------

; unsigned int _clear87(void)
__clear87:				; CODE XREF: .text:loc_4F0BC8p
		push	ebp
		mov	ebp, esp
		lea	esp, [ebp-2]
		fnstsw	word ptr [ebp-2]
		fnclex
		movzx	eax, word ptr [ebp-2]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4ED9C4:				; CODE XREF: .text:004EDA8Dp
					; .text:004EDD3Ap ...
		push	ebp
		mov	ebp, esp
		lea	esp, [ebp-4]
		fstcw	word ptr [ebp-4]
		mov	eax, [ebp+8]
		mov	dword_57B864, eax
		mov	ecx, [ebp+0Ch]
		and	eax, ecx
		not	ecx
		wait
		movzx	edx, word ptr [ebp-4]
		and	edx, ecx
		or	eax, edx
		mov	[ebp-4], ax
		fldcw	word ptr [ebp-4]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4ED9F4:				; CODE XREF: .text:004EBA14p
		jmp	off_57B794
; ---------------------------------------------------------------------------

loc_4ED9FA:				; CODE XREF: .text:004EBA29p
					; .text:004EC474p
		jmp	off_57B798
; ---------------------------------------------------------------------------
		jmp	off_57B79C
; ---------------------------------------------------------------------------

loc_4EDA06:				; CODE XREF: .text:004EA88Dp
		jmp	off_57B7A0
; ---------------------------------------------------------------------------

loc_4EDA0C:				; CODE XREF: .text:004EC45Fp
		jmp	off_57B7FC
; ---------------------------------------------------------------------------
		jmp	off_57B800
; ---------------------------------------------------------------------------

loc_4EDA18:				; CODE XREF: .text:004EA855p
		jmp	off_57B804
; ---------------------------------------------------------------------------
		jmp	off_57B808
; ---------------------------------------------------------------------------

loc_4EDA24:				; CODE XREF: .text:loc_4ED9F4j
					; .text:loc_4ED9FAj
					; DATA XREF: ...
		push	offset aPrintfFloating ; "printf : floating point formats not lin"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4EDA30:				; CODE XREF: .text:004EDA00j
					; .text:loc_4EDA06j
					; DATA XREF: ...
		push	offset aScanfFloatingP ; "scanf	: floating point formats not link"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4EDA3C:				; CODE XREF: .text:loc_4EDA0Cj
					; .text:004EDA12j
					; DATA XREF: ...
		push	offset aPrintfFloati_0 ; "printf : floating point formats not lin"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4EDA48:				; CODE XREF: .text:loc_4EDA18j
					; .text:004EDA1Ej
					; DATA XREF: ...
		push	offset aScanfFloatin_0 ; "scanf	: floating point formats not link"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx
		retn
; ---------------------------------------------------------------------------

; long double __cdecl fabsl(long double	x)
_fabsl:					; CODE XREF: .text:00440D3Bp
					; .text:00440D74p ...
		push	ebp
		mov	ebp, esp
		fld	tbyte ptr [ebp+8]
		fabs
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; long double __cdecl floorl(long double x)
_floorl:				; CODE XREF: .text:00440FB5p
					; .text:004411BAp ...
		push	ebp
		mov	ebp, esp
		fld	tbyte ptr [ebp+8]
		mov	ax, [ebp+10h]
		and	ax, 7FFFh
		cmp	ax, 403Fh
		ja	short loc_4EDA7B
		mov	ch, 4
		call	__round

loc_4EDA7B:				; CODE XREF: .text:004EDA72j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; void _fpreset(void)
__fpreset:				; CODE XREF: .text:004F0F2Fp
					; .text:loc_4F2A79p
		fninit
		push	1FFFh
		push	dword_57B864
		call	loc_4ED9C4
		add	esp, 8
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD _ftol(void)
@_ftol$qv:				; CODE XREF: .text:00440FC3p
					; .text:004412BDp ...
		push	ebp
		mov	ebp, esp
		lea	esp, [ebp-0Ch]
		fstcw	word ptr [ebp-4]
		wait
		mov	al, [ebp-3]
		or	byte ptr [ebp-3], 0Ch
		fldcw	word ptr [ebp-4]
		fistp	qword ptr [ebp-0Ch]
		mov	[ebp-3], al
		fldcw	word ptr [ebp-4]
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-8]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__fuildq:				; CODE XREF: .text:004EE8D6p
					; .text:004EEDCBp
		push	ebp
		mov	ebp, esp
		lea	esp, [ebp-0Ah]
		mov	eax, [ebp+8]
		test	byte ptr [eax+7], 80h
		jnz	short loc_4EDAD5
		fild	qword ptr [eax]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EDAD5:				; CODE XREF: .text:004EDACDj
		mov	ecx, [eax]
		mov	[ebp-0Ah], ecx
		mov	ecx, [eax+4]
		mov	[ebp-6], ecx
		mov	word ptr [ebp-2], 403Eh
		fld	tbyte ptr [ebp-0Ah]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__fuistq:				; CODE XREF: .text:004EF2B4p
					; .text:004EF58Ap
		mov	eax, [esp+4]
		mov	edx, [esp+8]
		cmp	word ptr [edx+8], 403Eh
		jz	short loc_4EDB06
		fld	tbyte ptr [edx]
		fistp	qword ptr [eax]
		wait
		retn
; ---------------------------------------------------------------------------

loc_4EDB06:				; CODE XREF: .text:004EDAFEj
		mov	ecx, [edx]
		mov	[eax], ecx
		mov	ecx, [edx+4]
		mov	[eax+4], ecx
		retn
; ---------------------------------------------------------------------------
		align 4

__fxam:					; CODE XREF: .text:004EF10Dp
					; .text:004EF3E1p
		mov	eax, [esp+4]
		fld	tbyte ptr [eax]
		fxam
		xor	eax, eax
		fstsw	ax
		fstp	st
		wait
		retn
; ---------------------------------------------------------------------------
		align 4

___int64toa:				; CODE XREF: .text:004EB80Dp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		cmp	edi, 2
		jl	loc_4EDBCC
		cmp	edi, 24h
		jg	loc_4EDBCC
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4EDB57
		cmp	dword ptr [ebp+8], 0
		jnb	short loc_4EDB76
		jmp	short loc_4EDB59
; ---------------------------------------------------------------------------

loc_4EDB57:				; CODE XREF: .text:004EDB4Dj
		jge	short loc_4EDB76

loc_4EDB59:				; CODE XREF: .text:004EDB55j
		cmp	byte ptr [ebp+18h], 0
		jz	short loc_4EDB76
		mov	byte ptr [esi],	2Dh
		inc	esi
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		neg	eax
		adc	edx, 0
		mov	[ebp+8], eax
		neg	edx
		mov	[ebp+0Ch], edx

loc_4EDB76:				; CODE XREF: .text:004EDB53j
					; .text:loc_4EDB57j ...
		lea	ebx, [ebp-44h]

loc_4EDB79:				; CODE XREF: .text:004EDBA5j
					; .text:004EDBAAj
		mov	eax, edi
		cdq
		push	edx
		push	eax
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		call	__llumod
		mov	[ebx], al
		mov	eax, edi
		cdq
		push	edx
		push	eax
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		inc	ebx
		call	__lludiv
		mov	[ebp+8], eax
		mov	[ebp+0Ch], edx
		cmp	edx, 0
		jnz	short loc_4EDB79
		cmp	eax, 0
		jnz	short loc_4EDB79
		jmp	short loc_4EDBC5
; ---------------------------------------------------------------------------

loc_4EDBAE:				; CODE XREF: .text:004EDBCAj
		dec	ebx
		mov	al, [ebx]
		cmp	al, 0Ah
		jge	short loc_4EDBBD
		add	eax, 30h
		mov	[esi], al
		inc	esi
		jmp	short loc_4EDBC5
; ---------------------------------------------------------------------------

loc_4EDBBD:				; CODE XREF: .text:004EDBB3j
		add	al, [ebp+1Ch]
		add	al, 0F6h
		mov	[esi], al
		inc	esi

loc_4EDBC5:				; CODE XREF: .text:004EDBACj
					; .text:004EDBBBj
		lea	edx, [ebp-44h]
		cmp	ebx, edx
		jnz	short loc_4EDBAE

loc_4EDBCC:				; CODE XREF: .text:004EDB3Aj
					; .text:004EDB43j
		mov	byte ptr [esi],	0
		mov	eax, [ebp+10h]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___int64tow:				; CODE XREF: .text:004EC248p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF7Ch
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		cmp	edi, 2
		jl	loc_4EDCA2
		cmp	edi, 24h
		jg	loc_4EDCA2
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4EDC0E
		cmp	dword ptr [ebp+8], 0
		jnb	short loc_4EDC32
		jmp	short loc_4EDC10
; ---------------------------------------------------------------------------

loc_4EDC0E:				; CODE XREF: .text:004EDC04j
		jge	short loc_4EDC32

loc_4EDC10:				; CODE XREF: .text:004EDC0Cj
		cmp	word ptr [ebp+18h], 0
		jz	short loc_4EDC32
		mov	word ptr [esi],	2Dh
		add	esi, 2
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		neg	eax
		adc	edx, 0
		mov	[ebp+8], eax
		neg	edx
		mov	[ebp+0Ch], edx

loc_4EDC32:				; CODE XREF: .text:004EDC0Aj
					; .text:loc_4EDC0Ej ...
		lea	ebx, [ebp-84h]

loc_4EDC38:				; CODE XREF: .text:004EDC6Aj
					; .text:004EDC6Fj
		mov	eax, edi
		cdq
		push	edx
		push	eax
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		call	__llumod
		movsx	edx, al
		mov	[ebx], dx
		mov	eax, edi
		cdq
		push	edx
		push	eax
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		add	ebx, 2
		call	__lludiv
		mov	[ebp+8], eax
		mov	[ebp+0Ch], edx
		cmp	edx, 0
		jnz	short loc_4EDC38
		cmp	eax, 0
		jnz	short loc_4EDC38
		jmp	short loc_4EDC98
; ---------------------------------------------------------------------------

loc_4EDC73:				; CODE XREF: .text:004EDCA0j
		sub	ebx, 2
		mov	ax, [ebx]
		cmp	ax, 0Ah
		jnb	short loc_4EDC8A
		add	eax, 30h
		mov	[esi], ax
		add	esi, 2
		jmp	short loc_4EDC98
; ---------------------------------------------------------------------------

loc_4EDC8A:				; CODE XREF: .text:004EDC7Dj
		add	ax, [ebp+1Ch]
		add	ax, 0FFF6h
		mov	[esi], ax
		add	esi, 2

loc_4EDC98:				; CODE XREF: .text:004EDC71j
					; .text:004EDC88j
		lea	edx, [ebp-84h]
		cmp	ebx, edx
		jnz	short loc_4EDC73

loc_4EDCA2:				; CODE XREF: .text:004EDBF1j
					; .text:004EDBFAj
		mov	word ptr [esi],	0
		mov	eax, [ebp+10h]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; __int32 __cdecl labs(__int32 x)
_labs:					; CODE XREF: .text:004A4D6Dp
					; .text:004A4DA0p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jge	short loc_4EDCC4
		mov	edx, eax
		neg	edx
		jmp	short loc_4EDCC6
; ---------------------------------------------------------------------------

loc_4EDCC4:				; CODE XREF: .text:004EDCBCj
		mov	edx, eax

loc_4EDCC6:				; CODE XREF: .text:004EDCC2j
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __ldtrunc(int, long double, int, int)
___ldtrunc:				; CODE XREF: .text:004EEAB1p
					; .text:004EEAF2p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_4EDCE6
		mov	cx, 407Eh
		mov	bx, 3F6Ah
		jmp	short loc_4EDCEE
; ---------------------------------------------------------------------------

loc_4EDCE6:				; CODE XREF: .text:004EDCDAj
		mov	cx, 43FEh
		mov	bx, 3BCDh

loc_4EDCEE:				; CODE XREF: .text:004EDCE4j
		lea	eax, [ebp+0Ch]
		mov	dx, [eax+8]
		mov	edi, edx
		and	di, 8000h
		mov	[ebp-6], di
		and	dx, 7FFFh
		cmp	dx, 7FFFh
		jnz	short loc_4EDD1B
		fld	tbyte ptr [ebp+0Ch]
		fstp	qword ptr [ebp-1Ch]
		wait
		fld	qword ptr [ebp-1Ch]
		jmp	loc_4EDDDD
; ---------------------------------------------------------------------------

loc_4EDD1B:				; CODE XREF: .text:004EDD0Aj
		cmp	cx, dx
		jnb	short loc_4EDD31
		mov	eax, [ebp+18h]
		mov	[ebp-10h], eax
		mov	eax, [ebp+1Ch]
		mov	[ebp-0Ch], eax
		jmp	loc_4EDDB5
; ---------------------------------------------------------------------------

loc_4EDD31:				; CODE XREF: .text:004EDD1Ej
		cmp	cx, dx
		jnz	short loc_4EDD88
		push	0
		push	0
		call	loc_4ED9C4
		add	esp, 8
		mov	[ebp-4], eax
		push	0C00h
		push	0C00h
		call	loc_4ED9C4
		add	esp, 8
		test	esi, esi
		jnz	short loc_4EDD6B
		fld	tbyte ptr [ebp+0Ch]
		fstp	dword ptr [ebp-14h]
		wait
		fld	dword ptr [ebp-14h]
		fstp	qword ptr [ebp-10h]
		wait
		jmp	short loc_4EDD72
; ---------------------------------------------------------------------------

loc_4EDD6B:				; CODE XREF: .text:004EDD59j
		fld	tbyte ptr [ebp+0Ch]
		fstp	qword ptr [ebp-10h]
		wait

loc_4EDD72:				; CODE XREF: .text:004EDD69j
		push	0C00h
		mov	edx, [ebp-4]
		push	edx
		call	loc_4ED9C4
		fld	qword ptr [ebp-10h]
		add	esp, 8
		jmp	short loc_4EDDDD
; ---------------------------------------------------------------------------

loc_4EDD88:				; CODE XREF: .text:004EDD34j
		mov	cx, [eax]
		or	cx, dx
		or	cx, [eax+2]
		or	cx, [eax+4]
		or	cx, [eax+6]
		jnz	short loc_4EDDA8
		fld	tbyte ptr [ebp+0Ch]
		fstp	qword ptr [ebp-1Ch]
		wait
		fld	qword ptr [ebp-1Ch]
		jmp	short loc_4EDDDD
; ---------------------------------------------------------------------------

loc_4EDDA8:				; CODE XREF: .text:004EDD9Aj
		cmp	bx, dx
		jbe	short loc_4EDDD3
		xor	eax, eax
		mov	[ebp-10h], eax
		mov	[ebp-0Ch], eax

loc_4EDDB5:				; CODE XREF: .text:004EDD2Cj
		call	___errno
		mov	dword ptr [eax], 22h
		cmp	word ptr [ebp-6], 0
		jz	short loc_4EDDCE
		fld	qword ptr [ebp-10h]
		fchs
		jmp	short loc_4EDDDD
; ---------------------------------------------------------------------------

loc_4EDDCE:				; CODE XREF: .text:004EDDC5j
		fld	qword ptr [ebp-10h]
		jmp	short loc_4EDDDD
; ---------------------------------------------------------------------------

loc_4EDDD3:				; CODE XREF: .text:004EDDABj
		fld	tbyte ptr [ebp+0Ch]
		fstp	qword ptr [ebp-1Ch]
		wait
		fld	qword ptr [ebp-1Ch]

loc_4EDDDD:				; CODE XREF: .text:004EDD16j
					; .text:004EDD86j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

___longtoa:				; CODE XREF: .text:004EDE69p
					; .text:004EDE9Ap ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		cmp	edi, 2
		jl	short loc_4EDE48
		cmp	edi, 24h
		jg	short loc_4EDE48
		test	esi, esi
		jge	short loc_4EDE10
		cmp	byte ptr [ebp+14h], 0
		jz	short loc_4EDE10
		mov	byte ptr [ebx],	2Dh
		inc	ebx
		neg	esi

loc_4EDE10:				; CODE XREF: .text:004EDE02j
					; .text:004EDE08j
		lea	ecx, [ebp-24h]

loc_4EDE13:				; CODE XREF: .text:004EDE26j
		mov	eax, esi
		xor	edx, edx
		div	edi
		mov	[ecx], dl
		inc	ecx
		mov	eax, esi
		xor	edx, edx
		div	edi
		mov	esi, eax
		test	eax, eax
		jnz	short loc_4EDE13
		jmp	short loc_4EDE41
; ---------------------------------------------------------------------------

loc_4EDE2A:				; CODE XREF: .text:004EDE46j
		dec	ecx
		mov	al, [ecx]
		cmp	al, 0Ah
		jge	short loc_4EDE39
		add	eax, 30h
		mov	[ebx], al
		inc	ebx
		jmp	short loc_4EDE41
; ---------------------------------------------------------------------------

loc_4EDE39:				; CODE XREF: .text:004EDE2Fj
		add	al, [ebp+18h]
		add	al, 0F6h
		mov	[ebx], al
		inc	ebx

loc_4EDE41:				; CODE XREF: .text:004EDE28j
					; .text:004EDE37j
		lea	edx, [ebp-24h]
		cmp	ecx, edx
		jnz	short loc_4EDE2A

loc_4EDE48:				; CODE XREF: .text:004EDDF9j
					; .text:004EDDFEj
		mov	byte ptr [ebx],	0
		mov	eax, [ebp+0Ch]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___utoa:				; CODE XREF: .text:004EF898p
		push	ebp
		mov	ebp, esp
		push	61h
		push	0
		push	0Ah
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	___longtoa
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_15:			; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		mov	edx, [ebp+8]
		cmp	eax, 0Ah
		push	61h
		setz	cl
		and	ecx, 1
		cmp	eax, 0Ah
		push	ecx
		push	eax
		mov	ecx, [ebp+0Ch]
		push	ecx
		jnz	short loc_4EDE97
		mov	eax, edx
		jmp	short loc_4EDE99
; ---------------------------------------------------------------------------

loc_4EDE97:				; CODE XREF: .text:004EDE91j
		mov	eax, edx

loc_4EDE99:				; CODE XREF: .text:004EDE95j
		push	eax
		call	___longtoa
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_16:			; CODE XREF: .text:004EA380p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		push	61h
		push	0
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	___longtoa
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_17:			; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		push	61h
		cmp	eax, 0Ah
		setz	dl
		and	edx, 1
		push	edx
		push	eax
		mov	eax, [ebp+0Ch]
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	___longtoa
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _matherr(struct exception	*e)
__matherr:				; DATA XREF: .data:004F61B4o
					; .data:off_57B8ECo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	dword ptr [eax], 4
		jnz	short loc_4EDF06
		xor	edx, edx
		mov	[eax+18h], edx
		mov	[eax+1Ch], edx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EDF06:				; CODE XREF: .text:004EDEF5j
		cmp	dword ptr [eax], 5
		jnz	short loc_4EDF12
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EDF12:				; CODE XREF: .text:004EDF09j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _matherrl(struct _exceptionl *e)
__matherrl:				; DATA XREF: .data:004F61B8o
					; .data:off_57B8F0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	dword ptr [eax], 4
		jnz	short loc_4EDF36
		xor	edx, edx
		mov	[eax+1Ch], edx
		mov	[eax+20h], edx
		mov	[eax+24h], dx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EDF36:				; CODE XREF: .text:004EDF21j
		cmp	dword ptr [eax], 5
		jnz	short loc_4EDF42
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EDF42:				; CODE XREF: .text:004EDF39j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__initmatherr:				; CODE XREF: .text:004F0F3Cp
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		mov	off_57B8EC, eax
		mov	off_57B8F0, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; double __cdecl pow10(int p)
_pow10:					; CODE XREF: .text:00486551p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax
		call	__pow10
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__qdiv10:				; CODE XREF: .text:004EF2EDp
					; .text:004EF5C9p
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+8]
		mov	ecx, 0Ah
		mov	eax, [esi+4]
		xor	edx, edx
		or	eax, eax
		jz	short loc_4EDF8A
		div	ecx
		mov	[esi+4], eax

loc_4EDF8A:				; CODE XREF: .text:004EDF83j
		mov	eax, [esi]
		div	ecx
		mov	[esi], eax
		mov	eax, edx
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__qmul10:				; CODE XREF: .text:004EE79Fp
					; .text:004EEC94p
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	ecx, 0Ah
		mov	eax, [esi]
		mul	ecx
		add	eax, [ebp+0Ch]
		adc	edx, 0
		mov	[esi], eax
		mov	edi, edx
		mov	eax, [esi+4]
		mul	ecx
		add	eax, edi
		adc	edx, 0
		mov	[esi+4], eax
		mov	eax, edx
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EDFC8:				; CODE XREF: .text:004EE1BBp
					; .text:004EE209p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		push	0Eh
		call	__getLocaleNumericInfo
		pop	ecx
		cmp	bl, 47h
		jz	short loc_4EDFF4
		cmp	bl, 67h
		jnz	short loc_4EDFFA
		jmp	short loc_4EDFF4
; ---------------------------------------------------------------------------

loc_4EDFEB:				; CODE XREF: .text:004EDFF8j
		dec	edi
		cmp	esi, edi
		jb	short loc_4EDFF4
		mov	eax, esi
		jmp	short loc_4EE004
; ---------------------------------------------------------------------------

loc_4EDFF4:				; CODE XREF: .text:004EDFE2j
					; .text:004EDFE9j ...
		cmp	byte ptr [edi-1], 30h
		jz	short loc_4EDFEB

loc_4EDFFA:				; CODE XREF: .text:004EDFE7j
		mov	dl, [eax]
		cmp	dl, [edi-1]
		jnz	short loc_4EE002
		dec	edi

loc_4EE002:				; CODE XREF: .text:004EDFFFj
		mov	eax, edi

loc_4EE004:				; CODE XREF: .text:004EDFF2j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4EE00C(int, int, void	*s, char, char,	int)
loc_4EE00C:				; DATA XREF: .text:__cvt_inito
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFC8h
		push	ebx
		push	esi
		push	edi
		push	0Eh
		call	__getLocaleNumericInfo
		pop	ecx
		mov	al, [eax]
		mov	[ebp-0Ah], al
		cmp	dword ptr [ebp+0Ch], 28h
		jle	short loc_4EE02F
		mov	dword ptr [ebp+0Ch], 28h

loc_4EE02F:				; CODE XREF: .text:004EE026j
		mov	edx, [ebp+0Ch]
		mov	[ebp-8], edx
		mov	cl, [ebp+14h]
		and	cl, 0DFh
		mov	[ebp-9], cl
		cmp	cl, 46h
		jnz	short loc_4EE055
		mov	edi, [ebp-8]
		neg	edi
		test	edi, edi
		jle	short loc_4EE06D
		xor	eax, eax
		mov	edi, eax
		mov	[ebp+0Ch], eax
		jmp	short loc_4EE06D
; ---------------------------------------------------------------------------

loc_4EE055:				; CODE XREF: .text:004EE041j
		mov	edi, [ebp-8]
		test	edi, edi
		jg	short loc_4EE063
		mov	edi, 1
		jmp	short loc_4EE06D
; ---------------------------------------------------------------------------

loc_4EE063:				; CODE XREF: .text:004EE05Aj
		cmp	byte ptr [ebp-9], 45h
		jnz	short loc_4EE06D
		inc	edi
		inc	dword ptr [ebp+0Ch]

loc_4EE06D:				; CODE XREF: .text:004EE04Aj
					; .text:004EE053j ...
		mov	eax, [ebp+1Ch]
		push	eax		; int
		lea	edx, [ebp-38h]
		push	edx		; s
		lea	ecx, [ebp-4]
		push	ecx		; int
		push	edi		; n
		mov	eax, [ebp+8]
		push	eax		; int
		call	___xcvt
		add	esp, 14h
		mov	esi, eax
		mov	ebx, [ebp+10h]
		cmp	esi, 7FFFh
		jnz	short loc_4EE0CB
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4EE0A0
		mov	eax, offset aInf ; "-INF"
		jmp	short loc_4EE0A5
; ---------------------------------------------------------------------------

loc_4EE0A0:				; CODE XREF: .text:004EE097j
		mov	eax, offset aInf_0 ; "+INF"

loc_4EE0A5:				; CODE XREF: .text:004EE09Ej
		mov	edi, eax
		xor	eax, eax
		or	ecx, 0FFFFFFFFh
		mov	esi, ebx
		repne scasb
		not	ecx
		sub	edi, ecx
		mov	edx, ecx
		xchg	esi, edi
		shr	ecx, 2
		mov	eax, edi
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb
		jmp	loc_4EE28A
; ---------------------------------------------------------------------------

loc_4EE0CB:				; CODE XREF: .text:004EE091j
		cmp	esi, 7FFEh
		jnz	short loc_4EE10B
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4EE0E0
		mov	eax, offset aNan ; "-NAN"
		jmp	short loc_4EE0E5
; ---------------------------------------------------------------------------

loc_4EE0E0:				; CODE XREF: .text:004EE0D7j
		mov	eax, offset aNan_0 ; "+NAN"

loc_4EE0E5:				; CODE XREF: .text:004EE0DEj
		mov	edi, eax
		xor	eax, eax
		or	ecx, 0FFFFFFFFh
		mov	esi, ebx
		repne scasb
		not	ecx
		sub	edi, ecx
		mov	edx, ecx
		xchg	esi, edi
		shr	ecx, 2
		mov	eax, edi
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb
		jmp	loc_4EE28A
; ---------------------------------------------------------------------------

loc_4EE10B:				; CODE XREF: .text:004EE0D1j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4EE115
		mov	byte ptr [ebx],	2Dh
		inc	ebx

loc_4EE115:				; CODE XREF: .text:004EE10Fj
		cmp	byte ptr [ebp-9], 46h
		jz	short loc_4EE146
		cmp	byte ptr [ebp-9], 47h
		jnz	loc_4EE1D6
		cmp	esi, 0FFFFFFFDh
		jl	loc_4EE1D6
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4EE13B
		mov	eax, 1
		jmp	short loc_4EE13E
; ---------------------------------------------------------------------------

loc_4EE13B:				; CODE XREF: .text:004EE132j
		mov	eax, [ebp+0Ch]

loc_4EE13E:				; CODE XREF: .text:004EE139j
		cmp	esi, eax
		jg	loc_4EE1D6

loc_4EE146:				; CODE XREF: .text:004EE119j
		cmp	esi, 28h
		jg	loc_4EE1D6
		test	esi, esi
		jg	short loc_4EE16A
		mov	byte ptr [ebx],	30h
		inc	ebx
		mov	dl, [ebp-0Ah]
		mov	[ebx], dl
		inc	ebx
		test	esi, esi
		jz	short loc_4EE16A

loc_4EE161:				; CODE XREF: .text:004EE168j
		mov	byte ptr [ebx],	30h
		inc	ebx
		inc	esi
		test	esi, esi
		jnz	short loc_4EE161

loc_4EE16A:				; CODE XREF: .text:004EE151j
					; .text:004EE15Fj
		xor	edi, edi
		lea	eax, [ebp-38h]
		jmp	short loc_4EE17F
; ---------------------------------------------------------------------------

loc_4EE171:				; CODE XREF: .text:004EE183j
		mov	[ebx], dl
		inc	ebx
		dec	esi
		jnz	short loc_4EE17E
		mov	dl, [ebp-0Ah]
		mov	[ebx], dl
		inc	ebx
		inc	edi

loc_4EE17E:				; CODE XREF: .text:004EE175j
		inc	eax

loc_4EE17F:				; CODE XREF: .text:004EE16Fj
		mov	dl, [eax]
		test	dl, dl
		jnz	short loc_4EE171
		add	edi, [ebp-8]
		cmp	edi, [ebp+0Ch]
		jge	short loc_4EE1A9
		mov	ecx, [ebp+0Ch]
		sub	ecx, edi
		mov	edi, ecx
		add	esi, edi
		push	edi		; n
		push	30h		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi
		dec	esi
		jz	short loc_4EE1C5
		jmp	short loc_4EE1C5
; ---------------------------------------------------------------------------

loc_4EE1A9:				; CODE XREF: .text:004EE18Bj
		dec	esi
		jz	short loc_4EE1C5
		cmp	byte ptr [ebp+18h], 0
		jnz	short loc_4EE1C5
		push	ebx
		mov	eax, [ebp+10h]
		push	eax
		mov	dl, [ebp+14h]
		push	edx
		call	loc_4EDFC8
		add	esp, 0Ch
		mov	ebx, eax

loc_4EE1C5:				; CODE XREF: .text:004EE1A5j
					; .text:004EE1A7j ...
		cmp	ebx, [ebp+10h]
		jnz	short loc_4EE1CE
		mov	byte ptr [ebx],	30h
		inc	ebx

loc_4EE1CE:				; CODE XREF: .text:004EE1C8j
		mov	byte ptr [ebx],	0
		jmp	loc_4EE28A
; ---------------------------------------------------------------------------

loc_4EE1D6:				; CODE XREF: .text:004EE11Fj
					; .text:004EE128j ...
		lea	eax, [ebp-38h]
		mov	dl, [eax]
		inc	eax
		mov	[ebx], dl
		inc	ebx
		mov	dl, [eax]
		inc	eax
		test	dl, dl
		jz	short loc_4EE215
		mov	cl, [ebp-0Ah]
		mov	[ebx], cl
		inc	ebx
		test	dl, dl
		jz	short loc_4EE1FA

loc_4EE1F0:				; CODE XREF: .text:004EE1F8j
		mov	[ebx], dl
		inc	ebx
		mov	dl, [eax]
		inc	eax
		test	dl, dl
		jnz	short loc_4EE1F0

loc_4EE1FA:				; CODE XREF: .text:004EE1EEj
		cmp	byte ptr [ebp+18h], 0
		jnz	short loc_4EE221
		push	ebx
		mov	eax, [ebp+10h]
		push	eax
		mov	cl, [ebp+14h]
		push	ecx
		call	loc_4EDFC8
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4EE221
; ---------------------------------------------------------------------------

loc_4EE215:				; CODE XREF: .text:004EE1E4j
		cmp	byte ptr [ebp+18h], 0
		jz	short loc_4EE221
		mov	al, [ebp-0Ah]
		mov	[ebx], al
		inc	ebx

loc_4EE221:				; CODE XREF: .text:004EE1FEj
					; .text:004EE213j ...
		mov	dl, [ebp+14h]
		and	dl, 20h
		or	dl, 45h
		mov	[ebx], dl
		inc	ebx
		dec	esi
		jns	short loc_4EE238
		neg	esi
		mov	byte ptr [ebx],	2Dh
		inc	ebx
		jmp	short loc_4EE23C
; ---------------------------------------------------------------------------

loc_4EE238:				; CODE XREF: .text:004EE22Ej
		mov	byte ptr [ebx],	2Bh
		inc	ebx

loc_4EE23C:				; CODE XREF: .text:004EE236j
		cmp	esi, 3E8h
		jl	short loc_4EE24B
		mov	edi, 4
		jmp	short loc_4EE25C
; ---------------------------------------------------------------------------

loc_4EE24B:				; CODE XREF: .text:004EE242j
		cmp	esi, 64h
		jl	short loc_4EE257
		mov	edi, 3
		jmp	short loc_4EE25C
; ---------------------------------------------------------------------------

loc_4EE257:				; CODE XREF: .text:004EE24Ej
		mov	edi, 2

loc_4EE25C:				; CODE XREF: .text:004EE249j
					; .text:004EE255j
		mov	byte ptr [ebx+edi], 0
		lea	eax, [ebx+edi]
		mov	ebx, eax
		test	edi, edi
		jz	short loc_4EE28A

loc_4EE269:				; CODE XREF: .text:004EE288j
		mov	eax, esi
		mov	ecx, 0Ah
		cdq
		idiv	ecx
		dec	ebx
		add	dl, 30h
		mov	eax, esi
		mov	ecx, 0Ah
		mov	[ebx], dl
		dec	edi
		cdq
		idiv	ecx
		mov	esi, eax
		test	edi, edi
		jnz	short loc_4EE269

loc_4EE28A:				; CODE XREF: .text:004EE0C6j
					; .text:004EE106j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EE294:				; DATA XREF: .text:004EE2B6o
		push	ebp
		mov	ebp, esp
		cmp	dword ptr [ebp+0Ch], 0
		mov	eax, [ebp+8]
		jz	short loc_4EE2A5
		add	eax, 0Ch
		jmp	short loc_4EE2A8
; ---------------------------------------------------------------------------

loc_4EE2A5:				; CODE XREF: .text:004EE29Ej
		add	eax, 8

loc_4EE2A8:				; CODE XREF: .text:004EE2A3j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__cvt_init:				; DATA XREF: .data:004F6056o
		mov	off_57B794, offset loc_4EE00C
		mov	off_57B798, offset loc_4EE294
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EE2C4:				; CODE XREF: .text:004EE4BAp
					; .text:004EE526p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		push	0Eh
		call	__getLocaleNumericInfo
		pop	ecx
		cmp	di, 47h
		jz	short loc_4EE2F4
		cmp	di, 67h
		jnz	short loc_4EE2FB
		jmp	short loc_4EE2F4
; ---------------------------------------------------------------------------

loc_4EE2E9:				; CODE XREF: .text:004EE2F9j
		sub	ebx, 2
		cmp	esi, ebx
		jb	short loc_4EE2F4
		mov	eax, esi
		jmp	short loc_4EE309
; ---------------------------------------------------------------------------

loc_4EE2F4:				; CODE XREF: .text:004EE2DFj
					; .text:004EE2E7j ...
		cmp	word ptr [ebx-2], 30h
		jz	short loc_4EE2E9

loc_4EE2FB:				; CODE XREF: .text:004EE2E5j
		mov	dx, [eax]
		cmp	dx, [ebx-2]
		jnz	short loc_4EE307
		sub	ebx, 2

loc_4EE307:				; CODE XREF: .text:004EE302j
		mov	eax, ebx

loc_4EE309:				; CODE XREF: .text:004EE2F2j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4EE310(int, int, wchar_t *dst, __int16, __int16, int)
loc_4EE310:				; DATA XREF: .text:__cvt_initwo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF9Ch
		push	ebx
		push	esi
		push	edi
		push	0Eh
		call	__getLocaleNumericInfo
		mov	ax, [eax]
		pop	ecx
		mov	[ebp-0Ch], ax
		cmp	dword ptr [ebp+0Ch], 28h
		jle	short loc_4EE335
		mov	dword ptr [ebp+0Ch], 28h

loc_4EE335:				; CODE XREF: .text:004EE32Cj
		mov	edx, [ebp+0Ch]
		mov	[ebp-8], edx
		mov	cx, [ebp+14h]
		and	cx, 0DFh
		mov	[ebp-0Ah], cx
		cmp	cx, 46h
		jnz	short loc_4EE360
		mov	edi, [ebp-8]
		neg	edi
		test	edi, edi
		jle	short loc_4EE379
		xor	eax, eax
		mov	edi, eax
		mov	[ebp+0Ch], eax
		jmp	short loc_4EE379
; ---------------------------------------------------------------------------

loc_4EE360:				; CODE XREF: .text:004EE34Cj
		mov	edi, [ebp-8]
		test	edi, edi
		jg	short loc_4EE36E
		mov	edi, 1
		jmp	short loc_4EE379
; ---------------------------------------------------------------------------

loc_4EE36E:				; CODE XREF: .text:004EE365j
		cmp	word ptr [ebp-0Ah], 45h
		jnz	short loc_4EE379
		inc	edi
		inc	dword ptr [ebp+0Ch]

loc_4EE379:				; CODE XREF: .text:004EE355j
					; .text:004EE35Ej ...
		mov	eax, [ebp+1Ch]
		push	eax		; int
		lea	edx, [ebp-64h]
		push	edx		; s
		lea	ecx, [ebp-4]
		push	ecx		; int
		push	edi		; n
		mov	eax, [ebp+8]
		push	eax		; int
		call	___xcvtw
		add	esp, 14h
		mov	esi, eax
		mov	ebx, [ebp+10h]
		cmp	esi, 7FFFh
		jnz	short loc_4EE3C0
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4EE3AC
		mov	eax, offset aInf_1 ; "-INF"
		jmp	short loc_4EE3B1
; ---------------------------------------------------------------------------

loc_4EE3AC:				; CODE XREF: .text:004EE3A3j
		mov	eax, offset aInf_2 ; "+INF"

loc_4EE3B1:				; CODE XREF: .text:004EE3AAj
		push	eax		; src
		push	ebx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_4EE5C0
; ---------------------------------------------------------------------------

loc_4EE3C0:				; CODE XREF: .text:004EE39Dj
		cmp	esi, 7FFEh
		jnz	short loc_4EE3E9
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4EE3D5
		mov	edx, offset aNan_1 ; "-NAN"
		jmp	short loc_4EE3DA
; ---------------------------------------------------------------------------

loc_4EE3D5:				; CODE XREF: .text:004EE3CCj
		mov	edx, offset aNan_3 ; "+NAN"

loc_4EE3DA:				; CODE XREF: .text:004EE3D3j
		push	edx		; src
		push	ebx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	loc_4EE5C0
; ---------------------------------------------------------------------------

loc_4EE3E9:				; CODE XREF: .text:004EE3C6j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4EE3F7
		mov	word ptr [ebx],	2Dh
		add	ebx, 2

loc_4EE3F7:				; CODE XREF: .text:004EE3EDj
		cmp	word ptr [ebp-0Ah], 46h
		jz	short loc_4EE42A
		cmp	word ptr [ebp-0Ah], 47h
		jnz	loc_4EE4DB
		cmp	esi, 0FFFFFFFDh
		jl	loc_4EE4DB
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4EE41F
		mov	eax, 1
		jmp	short loc_4EE422
; ---------------------------------------------------------------------------

loc_4EE41F:				; CODE XREF: .text:004EE416j
		mov	eax, [ebp+0Ch]

loc_4EE422:				; CODE XREF: .text:004EE41Dj
		cmp	esi, eax
		jg	loc_4EE4DB

loc_4EE42A:				; CODE XREF: .text:004EE3FCj
		cmp	esi, 28h
		jg	loc_4EE4DB
		test	esi, esi
		jg	short loc_4EE45A
		mov	word ptr [ebx],	30h
		add	ebx, 2
		mov	dx, [ebp-0Ch]
		mov	[ebx], dx
		add	ebx, 2
		test	esi, esi
		jz	short loc_4EE45A

loc_4EE44D:				; CODE XREF: .text:004EE458j
		mov	word ptr [ebx],	30h
		add	ebx, 2
		inc	esi
		test	esi, esi
		jnz	short loc_4EE44D

loc_4EE45A:				; CODE XREF: .text:004EE435j
					; .text:004EE44Bj
		xor	edi, edi
		lea	eax, [ebp-64h]
		jmp	short loc_4EE478
; ---------------------------------------------------------------------------

loc_4EE461:				; CODE XREF: .text:004EE47Ej
		mov	[ebx], dx
		add	ebx, 2
		dec	esi
		jnz	short loc_4EE475
		mov	dx, [ebp-0Ch]
		mov	[ebx], dx
		add	ebx, 2
		inc	edi

loc_4EE475:				; CODE XREF: .text:004EE468j
		add	eax, 2

loc_4EE478:				; CODE XREF: .text:004EE45Fj
		mov	dx, [eax]
		test	dx, dx
		jnz	short loc_4EE461
		add	edi, [ebp-8]
		cmp	edi, [ebp+0Ch]
		jge	short loc_4EE4A6
		mov	ecx, [ebp+0Ch]
		sub	ecx, edi
		mov	edi, ecx
		add	esi, edi
		push	edi		; n
		push	30h		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, edi
		add	ebx, edi
		dec	esi
		jz	short loc_4EE4C4
		jmp	short loc_4EE4C4
; ---------------------------------------------------------------------------

loc_4EE4A6:				; CODE XREF: .text:004EE486j
		dec	esi
		jz	short loc_4EE4C4
		cmp	word ptr [ebp+18h], 0
		jnz	short loc_4EE4C4
		push	ebx
		mov	eax, [ebp+10h]
		push	eax
		mov	dx, [ebp+14h]
		push	edx
		call	loc_4EE2C4
		add	esp, 0Ch
		mov	ebx, eax

loc_4EE4C4:				; CODE XREF: .text:004EE4A2j
					; .text:004EE4A4j ...
		cmp	ebx, [ebp+10h]
		jnz	short loc_4EE4D1
		mov	word ptr [ebx],	30h
		add	ebx, 2

loc_4EE4D1:				; CODE XREF: .text:004EE4C7j
		mov	word ptr [ebx],	0
		jmp	loc_4EE5C0
; ---------------------------------------------------------------------------

loc_4EE4DB:				; CODE XREF: .text:004EE403j
					; .text:004EE40Cj ...
		lea	eax, [ebp-64h]
		mov	dx, [eax]
		add	eax, 2
		mov	[ebx], dx
		add	ebx, 2
		mov	dx, [eax]
		add	eax, 2
		test	dx, dx
		jz	short loc_4EE532
		mov	cx, [ebp-0Ch]
		mov	[ebx], cx
		add	ebx, 2
		test	dx, dx
		jz	short loc_4EE515

loc_4EE504:				; CODE XREF: .text:004EE513j
		mov	[ebx], dx
		add	ebx, 2
		mov	dx, [eax]
		add	eax, 2
		test	dx, dx
		jnz	short loc_4EE504

loc_4EE515:				; CODE XREF: .text:004EE502j
		cmp	word ptr [ebp+18h], 0
		jnz	short loc_4EE543
		push	ebx
		mov	eax, [ebp+10h]
		push	eax
		mov	cx, [ebp+14h]
		push	ecx
		call	loc_4EE2C4
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4EE543
; ---------------------------------------------------------------------------

loc_4EE532:				; CODE XREF: .text:004EE4F3j
		cmp	word ptr [ebp+18h], 0
		jz	short loc_4EE543
		mov	ax, [ebp-0Ch]
		mov	[ebx], ax
		add	ebx, 2

loc_4EE543:				; CODE XREF: .text:004EE51Aj
					; .text:004EE530j ...
		mov	dx, [ebp+14h]
		and	dx, 20h
		or	dx, 45h
		mov	[ebx], dx
		add	ebx, 2
		dec	esi
		jns	short loc_4EE564
		neg	esi
		mov	word ptr [ebx],	2Dh
		add	ebx, 2
		jmp	short loc_4EE56C
; ---------------------------------------------------------------------------

loc_4EE564:				; CODE XREF: .text:004EE556j
		mov	word ptr [ebx],	2Bh
		add	ebx, 2

loc_4EE56C:				; CODE XREF: .text:004EE562j
		cmp	esi, 3E8h
		jl	short loc_4EE57B
		mov	edi, 4
		jmp	short loc_4EE58C
; ---------------------------------------------------------------------------

loc_4EE57B:				; CODE XREF: .text:004EE572j
		cmp	esi, 64h
		jl	short loc_4EE587
		mov	edi, 3
		jmp	short loc_4EE58C
; ---------------------------------------------------------------------------

loc_4EE587:				; CODE XREF: .text:004EE57Ej
		mov	edi, 2

loc_4EE58C:				; CODE XREF: .text:004EE579j
					; .text:004EE585j
		mov	word ptr [ebx+edi*2], 0
		lea	eax, [ebx+edi*2]
		mov	ebx, eax
		test	edi, edi
		jz	short loc_4EE5C0

loc_4EE59B:				; CODE XREF: .text:004EE5BEj
		mov	eax, esi
		mov	ecx, 0Ah
		cdq
		idiv	ecx
		add	dx, 30h
		add	ebx, 0FFFFFFFEh
		mov	eax, esi
		mov	ecx, 0Ah
		mov	[ebx], dx
		dec	edi
		cdq
		idiv	ecx
		mov	esi, eax
		test	edi, edi
		jnz	short loc_4EE59B

loc_4EE5C0:				; CODE XREF: .text:004EE3BBj
					; .text:004EE3E4j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EE5C8:				; DATA XREF: .text:004EE5EAo
		push	ebp
		mov	ebp, esp
		cmp	dword ptr [ebp+0Ch], 0
		mov	eax, [ebp+8]
		jz	short loc_4EE5D9
		add	eax, 0Ch
		jmp	short loc_4EE5DC
; ---------------------------------------------------------------------------

loc_4EE5D9:				; CODE XREF: .text:004EE5D2j
		add	eax, 8

loc_4EE5DC:				; CODE XREF: .text:004EE5D7j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__cvt_initw:				; DATA XREF: .data:004F6062o
		mov	off_57B7FC, offset loc_4EE310
		mov	off_57B800, offset loc_4EE5C8
		retn
; ---------------------------------------------------------------------------
		align 4

__round:				; CODE XREF: .text:004EDA76p
		push	ebp
		mov	ebp, esp
		lea	esp, [ebp-2]
		fstcw	word ptr [ebp-2]
		mov	ax, 0F3FFh
		wait
		mov	dx, [ebp-2]
		and	ax, dx
		or	ah, ch
		mov	[ebp-2], ax
		fldcw	word ptr [ebp-2]
		frndint
		mov	[ebp-2], dx
		fldcw	word ptr [ebp-2]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EE624:				; DATA XREF: .text:__scan_inito
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		xor	eax, eax
		xor	edx, edx
		lea	ecx, [ebp-24h]
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-24h]
		mov	dword ptr [ebp-4], 8000h
		mov	dword ptr [ebp-8], 13h
		mov	byte ptr [ebp-9], 0
		mov	byte ptr [ebp-0Ah], 1
		mov	byte ptr [ebp-0Bh], 0
		mov	byte ptr [ebp-0Ch], 0
		mov	byte ptr [ebp-0Dh], 0
		mov	[ebp-14h], eax
		mov	esi, 0FFFFFFFEh
		mov	dword ptr [ebp-18h], 1
		mov	[ebp-24h], edx
		mov	[ebp-20h], edx
		mov	[ebp-1Ch], dx
		mov	[ebp-34h], ecx
		push	0Eh
		call	__getLocaleNumericInfo
		pop	ecx
		mov	al, [eax]
		mov	[ebp-3Dh], al

loc_4EE682:				; CODE XREF: .text:004EE6ACj
		inc	dword ptr [ebp-14h]
		mov	edx, [ebp+14h]
		push	edx
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		inc	eax
		jnz	short loc_4EE69E
		mov	dword ptr [ebp-18h], 0FFFFFFFFh
		jmp	loc_4EE958
; ---------------------------------------------------------------------------

loc_4EE69E:				; CODE XREF: .text:004EE690j
		test	bl, 80h
		jnz	short loc_4EE6AE
		push	ebx		; c
		call	__ismbcspace
		pop	ecx
		test	eax, eax
		jnz	short loc_4EE682

loc_4EE6AE:				; CODE XREF: .text:004EE6A1j
		dec	dword ptr [ebp+18h]
		js	loc_4EE7C6
		cmp	ebx, 2Bh
		jnz	short loc_4EE6C2
		mov	byte ptr [ebp-0Bh], 1
		jmp	short loc_4EE6CF
; ---------------------------------------------------------------------------

loc_4EE6C2:				; CODE XREF: .text:004EE6BAj
		cmp	ebx, 2Dh
		jnz	short loc_4EE6E5
		mov	dl, 1
		mov	[ebp-0Bh], dl
		mov	[ebp-9], dl

loc_4EE6CF:				; CODE XREF: .text:004EE6C0j
					; .text:004EE729j ...
		dec	dword ptr [ebp+18h]
		js	loc_4EE7C6
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax

loc_4EE6E5:				; CODE XREF: .text:004EE6C5j
		cmp	byte ptr [ebp-0Ah], 1
		jnz	short loc_4EE703
		cmp	byte ptr [ebp-0Bh], 0
		jz	short loc_4EE703
		cmp	ebx, 49h
		jz	loc_4EE97A
		cmp	ebx, 4Eh
		jz	loc_4EE9F2

loc_4EE703:				; CODE XREF: .text:004EE6E9j
					; .text:004EE6EFj
		mov	byte ptr [ebp-0Ah], 0
		movsx	eax, byte ptr [ebp-3Dh]
		cmp	ebx, eax
		jnz	short loc_4EE72B
		cmp	dword ptr [ebp-4], 8000h
		jnz	loc_4EE7CB
		test	esi, esi
		jle	short loc_4EE724
		mov	edx, esi
		jmp	short loc_4EE726
; ---------------------------------------------------------------------------

loc_4EE724:				; CODE XREF: .text:004EE71Ej
		xor	edx, edx

loc_4EE726:				; CODE XREF: .text:004EE722j
		mov	[ebp-4], edx
		jmp	short loc_4EE6CF
; ---------------------------------------------------------------------------

loc_4EE72B:				; CODE XREF: .text:004EE70Dj
		cmp	ebx, 30h
		jl	loc_4EE7CB
		cmp	ebx, 39h
		jg	loc_4EE7CB
		sub	ebx, 30h
		inc	esi
		test	esi, esi
		jg	short loc_4EE771
		mov	eax, [ebp-34h]
		test	ebx, ebx
		mov	[eax], bx
		jz	short loc_4EE759
		mov	esi, 1
		jmp	loc_4EE6CF
; ---------------------------------------------------------------------------

loc_4EE759:				; CODE XREF: .text:004EE74Dj
		or	esi, 0FFFFFFFFh
		cmp	dword ptr [ebp-4], 8000h
		jz	loc_4EE6CF
		dec	dword ptr [ebp-4]
		jmp	loc_4EE6CF
; ---------------------------------------------------------------------------

loc_4EE771:				; CODE XREF: .text:004EE743j
		cmp	esi, 9
		jg	short loc_4EE786
		mov	eax, [edi]
		add	eax, eax
		lea	eax, [eax+eax*4]
		add	eax, ebx
		mov	[edi], eax
		jmp	loc_4EE6CF
; ---------------------------------------------------------------------------

loc_4EE786:				; CODE XREF: .text:004EE774j
		cmp	esi, [ebp-8]
		jg	loc_4EE6CF
		mov	edx, [edi]
		lea	eax, [ebp-3Ch]
		mov	[ebp-3Ch], edx
		mov	ecx, [edi+4]
		mov	[ebp-38h], ecx
		push	ebx
		push	eax
		call	__qmul10
		add	esp, 8
		test	eax, eax
		jz	short loc_4EE7B6
		lea	edx, [esi-1]
		mov	[ebp-8], edx
		jmp	loc_4EE6CF
; ---------------------------------------------------------------------------

loc_4EE7B6:				; CODE XREF: .text:004EE7A9j
		mov	ecx, [ebp-3Ch]
		mov	[edi], ecx
		mov	eax, [ebp-38h]
		mov	[edi+4], eax
		jmp	loc_4EE6CF
; ---------------------------------------------------------------------------

loc_4EE7C6:				; CODE XREF: .text:004EE6B1j
					; .text:004EE6D2j
		mov	ebx, 65h

loc_4EE7CB:				; CODE XREF: .text:004EE716j
					; .text:004EE72Ej ...
		cmp	esi, 0FFFFFFFEh
		jz	loc_4EE953
		cmp	dword ptr [ebp-4], 8000h
		jnz	short loc_4EE7E0
		mov	[ebp-4], esi

loc_4EE7E0:				; CODE XREF: .text:004EE7DBj
		xor	edi, edi
		cmp	ebx, 65h
		jz	short loc_4EE7EC
		cmp	ebx, 45h
		jnz	short loc_4EE846

loc_4EE7EC:				; CODE XREF: .text:004EE7E5j
		mov	dword ptr [ebp-44h], 1

loc_4EE7F3:				; CODE XREF: .text:004EE819j
					; .text:004EE81Ej ...
		dec	dword ptr [ebp+18h]
		js	short loc_4EE854
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		cmp	dword ptr [ebp-44h], 0
		jz	short loc_4EE820
		xor	eax, eax
		cmp	ebx, 2Dh
		mov	[ebp-44h], eax
		jnz	short loc_4EE81B
		mov	byte ptr [ebp-0Ch], 1
		jmp	short loc_4EE7F3
; ---------------------------------------------------------------------------

loc_4EE81B:				; CODE XREF: .text:004EE813j
		cmp	ebx, 2Bh
		jz	short loc_4EE7F3

loc_4EE820:				; CODE XREF: .text:004EE809j
		cmp	ebx, 30h
		jl	short loc_4EE846
		cmp	ebx, 39h
		jg	short loc_4EE846
		mov	edx, edi
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	ebx, edx
		add	ebx, 0FFFFFFD0h
		mov	edi, ebx
		cmp	ebx, 1344h
		jle	short loc_4EE7F3
		mov	byte ptr [ebp-0Dh], 1
		jmp	short loc_4EE7F3
; ---------------------------------------------------------------------------

loc_4EE846:				; CODE XREF: .text:004EE7EAj
					; .text:004EE823j ...
		mov	eax, [ebp+14h]
		push	eax
		push	ebx
		call	dword ptr [ebp+10h]
		add	esp, 8
		dec	dword ptr [ebp-14h]

loc_4EE854:				; CODE XREF: .text:004EE7F6j
		cmp	byte ptr [ebp-0Ch], 0
		jz	short loc_4EE85F
		neg	edi
		neg	byte ptr [ebp-0Dh]

loc_4EE85F:				; CODE XREF: .text:004EE858j
		test	esi, esi
		jge	short loc_4EE874
		xor	edx, edx
		mov	[ebp-24h], edx
		mov	[ebp-20h], edx
		mov	[ebp-1Ch], dx
		jmp	loc_4EE919
; ---------------------------------------------------------------------------

loc_4EE874:				; CODE XREF: .text:004EE861j
		cmp	byte ptr [ebp-0Dh], 0
		jz	short loc_4EE8BF
		cmp	byte ptr [ebp-0Dh], 1
		jnz	short loc_4EE8AA
		mov	ecx, [ebp-34h]
		mov	ax, 0FFFFh
		mov	[ecx+6], ax
		mov	edx, [ebp-34h]
		mov	[edx+4], ax
		mov	edx, [ebp-34h]
		mov	[edx+2], ax
		mov	edx, [ebp-34h]
		mov	[edx], ax
		mov	ecx, [ebp-34h]
		mov	word ptr [ecx+8], 7FFEh
		jmp	short loc_4EE8B6
; ---------------------------------------------------------------------------

loc_4EE8AA:				; CODE XREF: .text:004EE87Ej
		xor	eax, eax
		mov	[ebp-24h], eax
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], ax

loc_4EE8B6:				; CODE XREF: .text:004EE8A8j
		mov	dword ptr [ebp-18h], 2
		jmp	short loc_4EE919
; ---------------------------------------------------------------------------

loc_4EE8BF:				; CODE XREF: .text:004EE878j
		cmp	esi, [ebp-8]
		jle	short loc_4EE8C9
		mov	edx, [ebp-8]
		jmp	short loc_4EE8CB
; ---------------------------------------------------------------------------

loc_4EE8C9:				; CODE XREF: .text:004EE8C2j
		mov	edx, esi

loc_4EE8CB:				; CODE XREF: .text:004EE8C7j
		mov	eax, [ebp-4]
		lea	ecx, [ebp-24h]
		sub	eax, edx
		push	ecx
		add	edi, eax
		call	__fuildq
		pop	ecx
		fstp	tbyte ptr [ebp-24h]
		wait
		test	edi, edi
		jz	short loc_4EE919
		test	edi, edi
		jle	short loc_4EE8EC
		mov	eax, edi
		jmp	short loc_4EE8F0
; ---------------------------------------------------------------------------

loc_4EE8EC:				; CODE XREF: .text:004EE8E6j
		mov	eax, edi
		neg	eax

loc_4EE8F0:				; CODE XREF: .text:004EE8EAj
		push	eax
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-30h]
		wait
		test	edi, edi
		jge	short loc_4EE90D
		fld	tbyte ptr [ebp-24h]
		fld	tbyte ptr [ebp-30h]
		fdivp	st(1), st
		fstp	tbyte ptr [ebp-24h]
		wait
		jmp	short loc_4EE919
; ---------------------------------------------------------------------------

loc_4EE90D:				; CODE XREF: .text:004EE8FDj
		fld	tbyte ptr [ebp-24h]
		fld	tbyte ptr [ebp-30h]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-24h]
		wait

loc_4EE919:				; CODE XREF: .text:004EE86Fj
					; .text:004EE8BDj ...
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EE928
		fld	tbyte ptr [ebp-24h]
		fchs
		fstp	tbyte ptr [ebp-24h]
		wait

loc_4EE928:				; CODE XREF: .text:004EE91Dj
					; .text:004EE9CBj ...
		mov	edx, [ebp+1Ch]
		mov	ecx, [ebp-14h]
		add	[edx], ecx
		mov	eax, [ebp+20h]
		mov	edx, [ebp-18h]
		mov	[eax], edx
		mov	ecx, [ebp+8]
		mov	eax, [ebp-24h]
		mov	[ecx], eax
		mov	eax, [ebp-20h]
		mov	[ecx+4], eax
		mov	ax, [ebp-1Ch]
		mov	[ecx+8], ax
		jmp	loc_4EEA7A
; ---------------------------------------------------------------------------

loc_4EE953:				; CODE XREF: .text:004EE7CEj
					; .text:004EE98Aj ...
		xor	edx, edx
		mov	[ebp-18h], edx

loc_4EE958:				; CODE XREF: .text:004EE699j
		cmp	dword ptr [ebp+18h], 0
		jl	short loc_4EE96C
		mov	ecx, [ebp+14h]
		push	ecx
		push	ebx
		call	dword ptr [ebp+10h]
		add	esp, 8
		dec	dword ptr [ebp-14h]

loc_4EE96C:				; CODE XREF: .text:004EE95Cj
		xor	eax, eax
		mov	[ebp-24h], eax
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], ax
		jmp	short loc_4EE919
; ---------------------------------------------------------------------------

loc_4EE97A:				; CODE XREF: .text:004EE6F4j
		inc	dword ptr [ebp-14h]
		mov	edx, [ebp+14h]
		push	edx
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	short loc_4EE953
		cmp	ebx, 4Eh
		jnz	short loc_4EE953
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	short loc_4EE953
		cmp	ebx, 46h
		jnz	short loc_4EE953
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EE9D0
		mov	eax, dword_57B93A
		mov	[ebp-24h], eax
		mov	eax, dword_57B93E
		mov	[ebp-20h], eax
		mov	ax, word_57B942
		mov	[ebp-1Ch], ax
		jmp	loc_4EE928
; ---------------------------------------------------------------------------

loc_4EE9D0:				; CODE XREF: .text:004EE9ACj
		mov	edx, dword_57B930
		mov	[ebp-24h], edx
		mov	edx, dword_57B934
		mov	[ebp-20h], edx
		mov	dx, word_57B938
		mov	[ebp-1Ch], dx
		jmp	loc_4EE928
; ---------------------------------------------------------------------------

loc_4EE9F2:				; CODE XREF: .text:004EE6FDj
		inc	dword ptr [ebp-14h]
		mov	ecx, [ebp+14h]
		push	ecx
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	loc_4EE953
		cmp	ebx, 41h
		jnz	loc_4EE953
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	loc_4EE953
		cmp	ebx, 4Eh
		jnz	loc_4EE953
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EEA58
		mov	eax, dword_57B94E
		mov	[ebp-24h], eax
		mov	eax, dword_57B952
		mov	[ebp-20h], eax
		mov	ax, word_57B956
		mov	[ebp-1Ch], ax
		jmp	loc_4EE928
; ---------------------------------------------------------------------------

loc_4EEA58:				; CODE XREF: .text:004EEA34j
		mov	edx, dword_57B944
		mov	[ebp-24h], edx
		mov	edx, dword_57B948
		mov	[ebp-20h], edx
		mov	dx, word_57B94C
		mov	[ebp-1Ch], dx
		jmp	loc_4EE928
; ---------------------------------------------------------------------------

loc_4EEA7A:				; CODE XREF: .text:004EE94Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EEA84:				; DATA XREF: .text:004EEB0Eo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	eax, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	al, 4
		jz	short loc_4EEABE
		push	dword_57B870	; int
		push	dword_57B86C	; int
		mov	dx, [ebx+8]
		push	edx
		push	dword ptr [ebx+4]
		push	dword ptr [ebx]	; long double
		push	1		; int
		call	___ldtrunc
		add	esp, 18h
		fstp	qword ptr [esi]
		wait
		jmp	short loc_4EEAFD
; ---------------------------------------------------------------------------

loc_4EEABE:				; CODE XREF: .text:004EEA97j
		test	al, 8
		jz	short loc_4EEAD6
		mov	ecx, [ebx]
		mov	[esi], ecx
		mov	ecx, [ebx+4]
		mov	[esi+4], ecx
		mov	cx, [ebx+8]
		mov	[esi+8], cx
		jmp	short loc_4EEAFD
; ---------------------------------------------------------------------------

loc_4EEAD6:				; CODE XREF: .text:004EEAC0j
		fld	tbyte ptr dword_57B930
		fstp	qword ptr [ebp-8]
		wait
		push	dword ptr [ebp-4] ; int
		push	dword ptr [ebp-8] ; int
		mov	dx, [ebx+8]
		push	edx
		push	dword ptr [ebx+4]
		push	dword ptr [ebx]	; long double
		push	0		; int
		call	___ldtrunc
		add	esp, 18h
		fstp	dword ptr [esi]
		wait

loc_4EEAFD:				; CODE XREF: .text:004EEABCj
					; .text:004EEAD4j
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__scan_init:				; DATA XREF: .data:004F605Co
		mov	off_57B79C, offset loc_4EE624
		mov	off_57B7A0, offset loc_4EEA84
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EEB1C:				; DATA XREF: .text:__scan_initwo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		xor	eax, eax
		xor	edx, edx
		lea	ecx, [ebp-24h]
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-24h]
		mov	dword ptr [ebp-4], 8000h
		mov	dword ptr [ebp-8], 13h
		mov	byte ptr [ebp-9], 0
		mov	byte ptr [ebp-0Ah], 1
		mov	byte ptr [ebp-0Bh], 0
		mov	byte ptr [ebp-0Ch], 0
		mov	byte ptr [ebp-0Dh], 0
		mov	[ebp-14h], eax
		mov	esi, 0FFFFFFFEh
		mov	dword ptr [ebp-18h], 1
		mov	[ebp-24h], edx
		mov	[ebp-20h], edx
		mov	[ebp-1Ch], dx
		mov	[ebp-34h], ecx
		push	0Eh
		call	__getLocaleNumericInfo
		mov	ax, [eax]
		pop	ecx
		mov	[ebp-3Eh], ax

loc_4EEB7C:				; CODE XREF: .text:004EEBA1j
		inc	dword ptr [ebp-14h]
		mov	edx, [ebp+14h]
		push	edx
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		inc	eax
		jnz	short loc_4EEB98
		mov	dword ptr [ebp-18h], 0FFFFFFFFh
		jmp	loc_4EEE4D
; ---------------------------------------------------------------------------

loc_4EEB98:				; CODE XREF: .text:004EEB8Aj
		push	ebx		; c
		call	_iswspace
		pop	ecx
		test	eax, eax
		jnz	short loc_4EEB7C
		dec	dword ptr [ebp+18h]
		js	loc_4EECBB
		cmp	ebx, 2Bh
		jnz	short loc_4EEBB7
		mov	byte ptr [ebp-0Bh], 1
		jmp	short loc_4EEBC4
; ---------------------------------------------------------------------------

loc_4EEBB7:				; CODE XREF: .text:004EEBAFj
		cmp	ebx, 2Dh
		jnz	short loc_4EEBDA
		mov	dl, 1
		mov	[ebp-0Bh], dl
		mov	[ebp-9], dl

loc_4EEBC4:				; CODE XREF: .text:004EEBB5j
					; .text:004EEC1Ej ...
		dec	dword ptr [ebp+18h]
		js	loc_4EECBB
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax

loc_4EEBDA:				; CODE XREF: .text:004EEBBAj
		cmp	byte ptr [ebp-0Ah], 1
		jnz	short loc_4EEBF8
		cmp	byte ptr [ebp-0Bh], 0
		jz	short loc_4EEBF8
		cmp	ebx, 49h
		jz	loc_4EEE6F
		cmp	ebx, 4Eh
		jz	loc_4EEEE7

loc_4EEBF8:				; CODE XREF: .text:004EEBDEj
					; .text:004EEBE4j
		mov	byte ptr [ebp-0Ah], 0
		movzx	eax, word ptr [ebp-3Eh]
		cmp	ebx, eax
		jnz	short loc_4EEC20
		cmp	dword ptr [ebp-4], 8000h
		jnz	loc_4EECC0
		test	esi, esi
		jle	short loc_4EEC19
		mov	edx, esi
		jmp	short loc_4EEC1B
; ---------------------------------------------------------------------------

loc_4EEC19:				; CODE XREF: .text:004EEC13j
		xor	edx, edx

loc_4EEC1B:				; CODE XREF: .text:004EEC17j
		mov	[ebp-4], edx
		jmp	short loc_4EEBC4
; ---------------------------------------------------------------------------

loc_4EEC20:				; CODE XREF: .text:004EEC02j
		cmp	ebx, 30h
		jl	loc_4EECC0
		cmp	ebx, 39h
		jg	loc_4EECC0
		sub	ebx, 30h
		inc	esi
		test	esi, esi
		jg	short loc_4EEC66
		mov	eax, [ebp-34h]
		test	ebx, ebx
		mov	[eax], bx
		jz	short loc_4EEC4E
		mov	esi, 1
		jmp	loc_4EEBC4
; ---------------------------------------------------------------------------

loc_4EEC4E:				; CODE XREF: .text:004EEC42j
		or	esi, 0FFFFFFFFh
		cmp	dword ptr [ebp-4], 8000h
		jz	loc_4EEBC4
		dec	dword ptr [ebp-4]
		jmp	loc_4EEBC4
; ---------------------------------------------------------------------------

loc_4EEC66:				; CODE XREF: .text:004EEC38j
		cmp	esi, 9
		jg	short loc_4EEC7B
		mov	eax, [edi]
		add	eax, eax
		lea	eax, [eax+eax*4]
		add	eax, ebx
		mov	[edi], eax
		jmp	loc_4EEBC4
; ---------------------------------------------------------------------------

loc_4EEC7B:				; CODE XREF: .text:004EEC69j
		cmp	esi, [ebp-8]
		jg	loc_4EEBC4
		mov	edx, [edi]
		lea	eax, [ebp-3Ch]
		mov	[ebp-3Ch], edx
		mov	ecx, [edi+4]
		mov	[ebp-38h], ecx
		push	ebx
		push	eax
		call	__qmul10
		add	esp, 8
		test	eax, eax
		jz	short loc_4EECAB
		lea	edx, [esi-1]
		mov	[ebp-8], edx
		jmp	loc_4EEBC4
; ---------------------------------------------------------------------------

loc_4EECAB:				; CODE XREF: .text:004EEC9Ej
		mov	ecx, [ebp-3Ch]
		mov	[edi], ecx
		mov	eax, [ebp-38h]
		mov	[edi+4], eax
		jmp	loc_4EEBC4
; ---------------------------------------------------------------------------

loc_4EECBB:				; CODE XREF: .text:004EEBA6j
					; .text:004EEBC7j
		mov	ebx, 65h

loc_4EECC0:				; CODE XREF: .text:004EEC0Bj
					; .text:004EEC23j ...
		cmp	esi, 0FFFFFFFEh
		jz	loc_4EEE48
		cmp	dword ptr [ebp-4], 8000h
		jnz	short loc_4EECD5
		mov	[ebp-4], esi

loc_4EECD5:				; CODE XREF: .text:004EECD0j
		xor	edi, edi
		cmp	ebx, 65h
		jz	short loc_4EECE1
		cmp	ebx, 45h
		jnz	short loc_4EED3B

loc_4EECE1:				; CODE XREF: .text:004EECDAj
		mov	dword ptr [ebp-44h], 1

loc_4EECE8:				; CODE XREF: .text:004EED0Ej
					; .text:004EED13j ...
		dec	dword ptr [ebp+18h]
		js	short loc_4EED49
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		cmp	dword ptr [ebp-44h], 0
		jz	short loc_4EED15
		xor	eax, eax
		cmp	ebx, 2Dh
		mov	[ebp-44h], eax
		jnz	short loc_4EED10
		mov	byte ptr [ebp-0Ch], 1
		jmp	short loc_4EECE8
; ---------------------------------------------------------------------------

loc_4EED10:				; CODE XREF: .text:004EED08j
		cmp	ebx, 2Bh
		jz	short loc_4EECE8

loc_4EED15:				; CODE XREF: .text:004EECFEj
		cmp	ebx, 30h
		jl	short loc_4EED3B
		cmp	ebx, 39h
		jg	short loc_4EED3B
		mov	edx, edi
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	ebx, edx
		add	ebx, 0FFFFFFD0h
		mov	edi, ebx
		cmp	ebx, 1344h
		jle	short loc_4EECE8
		mov	byte ptr [ebp-0Dh], 1
		jmp	short loc_4EECE8
; ---------------------------------------------------------------------------

loc_4EED3B:				; CODE XREF: .text:004EECDFj
					; .text:004EED18j ...
		mov	eax, [ebp+14h]
		push	eax
		push	ebx
		call	dword ptr [ebp+10h]
		add	esp, 8
		dec	dword ptr [ebp-14h]

loc_4EED49:				; CODE XREF: .text:004EECEBj
		cmp	byte ptr [ebp-0Ch], 0
		jz	short loc_4EED54
		neg	edi
		neg	byte ptr [ebp-0Dh]

loc_4EED54:				; CODE XREF: .text:004EED4Dj
		test	esi, esi
		jge	short loc_4EED69
		xor	edx, edx
		mov	[ebp-24h], edx
		mov	[ebp-20h], edx
		mov	[ebp-1Ch], dx
		jmp	loc_4EEE0E
; ---------------------------------------------------------------------------

loc_4EED69:				; CODE XREF: .text:004EED56j
		cmp	byte ptr [ebp-0Dh], 0
		jz	short loc_4EEDB4
		cmp	byte ptr [ebp-0Dh], 1
		jnz	short loc_4EED9F
		mov	ecx, [ebp-34h]
		mov	ax, 0FFFFh
		mov	[ecx+6], ax
		mov	edx, [ebp-34h]
		mov	[edx+4], ax
		mov	edx, [ebp-34h]
		mov	[edx+2], ax
		mov	edx, [ebp-34h]
		mov	[edx], ax
		mov	ecx, [ebp-34h]
		mov	word ptr [ecx+8], 7FFEh
		jmp	short loc_4EEDAB
; ---------------------------------------------------------------------------

loc_4EED9F:				; CODE XREF: .text:004EED73j
		xor	eax, eax
		mov	[ebp-24h], eax
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], ax

loc_4EEDAB:				; CODE XREF: .text:004EED9Dj
		mov	dword ptr [ebp-18h], 2
		jmp	short loc_4EEE0E
; ---------------------------------------------------------------------------

loc_4EEDB4:				; CODE XREF: .text:004EED6Dj
		cmp	esi, [ebp-8]
		jle	short loc_4EEDBE
		mov	edx, [ebp-8]
		jmp	short loc_4EEDC0
; ---------------------------------------------------------------------------

loc_4EEDBE:				; CODE XREF: .text:004EEDB7j
		mov	edx, esi

loc_4EEDC0:				; CODE XREF: .text:004EEDBCj
		mov	eax, [ebp-4]
		lea	ecx, [ebp-24h]
		sub	eax, edx
		push	ecx
		add	edi, eax
		call	__fuildq
		pop	ecx
		fstp	tbyte ptr [ebp-24h]
		wait
		test	edi, edi
		jz	short loc_4EEE0E
		test	edi, edi
		jle	short loc_4EEDE1
		mov	eax, edi
		jmp	short loc_4EEDE5
; ---------------------------------------------------------------------------

loc_4EEDE1:				; CODE XREF: .text:004EEDDBj
		mov	eax, edi
		neg	eax

loc_4EEDE5:				; CODE XREF: .text:004EEDDFj
		push	eax
		call	__pow10
		pop	ecx
		fstp	tbyte ptr [ebp-30h]
		wait
		test	edi, edi
		jge	short loc_4EEE02
		fld	tbyte ptr [ebp-24h]
		fld	tbyte ptr [ebp-30h]
		fdivp	st(1), st
		fstp	tbyte ptr [ebp-24h]
		wait
		jmp	short loc_4EEE0E
; ---------------------------------------------------------------------------

loc_4EEE02:				; CODE XREF: .text:004EEDF2j
		fld	tbyte ptr [ebp-24h]
		fld	tbyte ptr [ebp-30h]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-24h]
		wait

loc_4EEE0E:				; CODE XREF: .text:004EED64j
					; .text:004EEDB2j ...
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EEE1D
		fld	tbyte ptr [ebp-24h]
		fchs
		fstp	tbyte ptr [ebp-24h]
		wait

loc_4EEE1D:				; CODE XREF: .text:004EEE12j
					; .text:004EEEC0j ...
		mov	edx, [ebp+1Ch]
		mov	ecx, [ebp-14h]
		add	[edx], ecx
		mov	eax, [ebp+20h]
		mov	edx, [ebp-18h]
		mov	[eax], edx
		mov	ecx, [ebp+8]
		mov	eax, [ebp-24h]
		mov	[ecx], eax
		mov	eax, [ebp-20h]
		mov	[ecx+4], eax
		mov	ax, [ebp-1Ch]
		mov	[ecx+8], ax
		jmp	loc_4EEF6F
; ---------------------------------------------------------------------------

loc_4EEE48:				; CODE XREF: .text:004EECC3j
					; .text:004EEE7Fj ...
		xor	edx, edx
		mov	[ebp-18h], edx

loc_4EEE4D:				; CODE XREF: .text:004EEB93j
		cmp	dword ptr [ebp+18h], 0
		jl	short loc_4EEE61
		mov	ecx, [ebp+14h]
		push	ecx
		push	ebx
		call	dword ptr [ebp+10h]
		add	esp, 8
		dec	dword ptr [ebp-14h]

loc_4EEE61:				; CODE XREF: .text:004EEE51j
		xor	eax, eax
		mov	[ebp-24h], eax
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], ax
		jmp	short loc_4EEE0E
; ---------------------------------------------------------------------------

loc_4EEE6F:				; CODE XREF: .text:004EEBE9j
		inc	dword ptr [ebp-14h]
		mov	edx, [ebp+14h]
		push	edx
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	short loc_4EEE48
		cmp	ebx, 4Eh
		jnz	short loc_4EEE48
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	short loc_4EEE48
		cmp	ebx, 46h
		jnz	short loc_4EEE48
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EEEC5
		mov	eax, dword_57B962
		mov	[ebp-24h], eax
		mov	eax, dword_57B966
		mov	[ebp-20h], eax
		mov	ax, word_57B96A
		mov	[ebp-1Ch], ax
		jmp	loc_4EEE1D
; ---------------------------------------------------------------------------

loc_4EEEC5:				; CODE XREF: .text:004EEEA1j
		mov	edx, dword_57B958
		mov	[ebp-24h], edx
		mov	edx, dword ptr unk_57B95C
		mov	[ebp-20h], edx
		mov	dx, word_57B960
		mov	[ebp-1Ch], dx
		jmp	loc_4EEE1D
; ---------------------------------------------------------------------------

loc_4EEEE7:				; CODE XREF: .text:004EEBF2j
		inc	dword ptr [ebp-14h]
		mov	ecx, [ebp+14h]
		push	ecx
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	loc_4EEE48
		cmp	ebx, 41h
		jnz	loc_4EEE48
		inc	dword ptr [ebp-14h]
		mov	eax, [ebp+14h]
		push	eax
		call	dword ptr [ebp+0Ch]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	loc_4EEE48
		cmp	ebx, 4Eh
		jnz	loc_4EEE48
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EEF4D
		mov	eax, dword_57B976
		mov	[ebp-24h], eax
		mov	eax, dword_57B97A
		mov	[ebp-20h], eax
		mov	ax, word_57B97E
		mov	[ebp-1Ch], ax
		jmp	loc_4EEE1D
; ---------------------------------------------------------------------------

loc_4EEF4D:				; CODE XREF: .text:004EEF29j
		mov	edx, dword_57B96C
		mov	[ebp-24h], edx
		mov	edx, dword_57B970
		mov	[ebp-20h], edx
		mov	dx, word_57B974
		mov	[ebp-1Ch], dx
		jmp	loc_4EEE1D
; ---------------------------------------------------------------------------

loc_4EEF6F:				; CODE XREF: .text:004EEE43j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EEF78:				; DATA XREF: .text:004EF002o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	eax, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	al, 4
		jz	short loc_4EEFB2
		push	dword_57B870	; int
		push	dword_57B86C	; int
		mov	dx, [ebx+8]
		push	edx
		push	dword ptr [ebx+4]
		push	dword ptr [ebx]	; long double
		push	1		; int
		call	___ldtrunc
		add	esp, 18h
		fstp	qword ptr [esi]
		wait
		jmp	short loc_4EEFF1
; ---------------------------------------------------------------------------

loc_4EEFB2:				; CODE XREF: .text:004EEF8Bj
		test	al, 8
		jz	short loc_4EEFCA
		mov	ecx, [ebx]
		mov	[esi], ecx
		mov	ecx, [ebx+4]
		mov	[esi+4], ecx
		mov	cx, [ebx+8]
		mov	[esi+8], cx
		jmp	short loc_4EEFF1
; ---------------------------------------------------------------------------

loc_4EEFCA:				; CODE XREF: .text:004EEFB4j
		fld	tbyte ptr dword_57B958
		fstp	qword ptr [ebp-8]
		wait
		push	dword ptr [ebp-4] ; int
		push	dword ptr [ebp-8] ; int
		mov	dx, [ebx+8]
		push	edx
		push	dword ptr [ebx+4]
		push	dword ptr [ebx]	; long double
		push	0		; int
		call	___ldtrunc
		add	esp, 18h
		fstp	dword ptr [esi]
		wait

loc_4EEFF1:				; CODE XREF: .text:004EEFB0j
					; .text:004EEFC8j
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
