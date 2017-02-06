.code

; Exported entry 315. _Cexpression
; Exported entry 415. Cexpression

; size_t __cdecl Cexpression(wchar_t *expression, uchar	*cexpr,	int nexpr, int *explen,	wchar_t	*err, ulong mode)
		public Cexpression
Cexpression:				; CODE XREF: .text:00431729p
					; .text:00431803p ...
		push	ebp		; _Cexpression
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_49D231:				; CODE XREF: .text:0049D239j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_49D231
		mov	eax, [ebp-4]
		add	esp, 0FFFFF918h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_49D25A
		xor	eax, eax
		jmp	loc_49D8CE
; ---------------------------------------------------------------------------

loc_49D25A:				; CODE XREF: .text:0049D251j
		test	esi, esi
		jz	short loc_49D264
		cmp	dword ptr [ebp+10h], 1
		jg	short loc_49D288

loc_49D264:				; CODE XREF: .text:0049D25Cj
		push	offset aInternalErro_3 ; "Internal error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+18h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_49D8CE
; ---------------------------------------------------------------------------

loc_49D288:				; CODE XREF: .text:0049D262j
		mov	byte ptr [esi],	0
		test	ebx, ebx
		jz	short loc_49D295
		cmp	word ptr [ebx],	0
		jnz	short loc_49D2B9

loc_49D295:				; CODE XREF: .text:0049D28Dj
		push	offset aNoExpression ; "No expression"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+18h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_49D8CE
; ---------------------------------------------------------------------------

loc_49D2B9:				; CODE XREF: .text:0049D293j
		test	byte ptr [ebp+1Ch], 10h
		jz	short loc_49D32D
		push	0		; errtxt
		lea	edx, [ebp-10h]
		push	edx		; _addr
		push	0		; pmod
		push	ebx		; _name
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_49D32D
		cmp	dword ptr [ebp+10h], 0Ah
		jge	short loc_49D2FE
		push	offset aExpressionIsTo ; "Expression is	too complex"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+18h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax
		jmp	loc_49D8CE
; ---------------------------------------------------------------------------

loc_49D2FE:				; CODE XREF: .text:0049D2D8j
		mov	byte ptr [esi],	0Fh
		mov	edx, [ebp-10h]
		mov	[esi+1], edx
		mov	byte ptr [esi+5], 5Bh
		mov	dword ptr [esi+6], 3
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49D321
		mov	ecx, [ebp+14h]
		mov	dword ptr [ecx], 0Ah

loc_49D321:				; CODE XREF: .text:0049D316j
		push	ebx		; s
		call	_wcslen
		pop	ecx
		jmp	loc_49D8CE
; ---------------------------------------------------------------------------

loc_49D32D:				; CODE XREF: .text:0049D2BDj
					; .text:0049D2D2j
		test	byte ptr [ebp+1Ch], 20h
		jz	short loc_49D337
		and	dword ptr [ebp+1Ch], 0FFFFFFF7h

loc_49D337:				; CODE XREF: .text:0049D331j
		test	byte ptr [ebp+1Ch], 8
		jz	short loc_49D39C
		push	40h		; n
		push	0		; c
		lea	eax, [ebp-5Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-9Ch]
		push	40h		; n
		push	0		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		lea	ecx, [ebp-209Ch]
		push	1000h		; n
		push	0		; c
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		lea	eax, [ebp-109Ch]
		push	1000h		; n
		push	0		; c
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-209Ch]
		mov	[ebp-14h], edx
		mov	edi, 100h
		jmp	short loc_49D3A2
; ---------------------------------------------------------------------------

loc_49D39C:				; CODE XREF: .text:0049D33Bj
		mov	[ebp-14h], esi
		mov	edi, [ebp+10h]

loc_49D3A2:				; CODE XREF: .text:0049D39Aj
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-8], eax
		mov	[ebp-0Ch], edx
		mov	ecx, [ebp+18h]
		xor	eax, eax
		mov	word ptr [ecx],	0
		mov	stru_5F26F0.mode, eax
		mov	stru_5F26F0.src, ebx
		push	ebx		; s
		call	_wcslen
		inc	eax
		xor	edx, edx
		mov	stru_5F26F0._length, eax
		mov	stru_5F26F0.line, edx
		mov	stru_5F26F0.caret, edx
		xor	eax, eax
		mov	stru_5F26F0.uval, eax
		pop	ecx

loc_49D3E3:				; CODE XREF: .text:0049D670j
		mov	ecx, [ebp+18h]
		xor	eax, eax
		mov	dword_5F2B24, ecx
		mov	edx, [ebp-14h]
		mov	dword_5F2B28, eax
		xor	ecx, ecx
		mov	dword_5F2B2C, edx
		mov	dword_5F2B34, ecx
		mov	dword_5F2B30, edi
		xor	eax, eax
		mov	dword_5F2B38, eax
		push	offset stru_5F26F0 ; ps
		call	Skipspaces
		pop	ecx
		mov	edi, eax
		push	offset stru_5F26F0 ; ps
		call	Scan
		test	byte ptr [ebp+1Ch], 8
		pop	ecx
		jz	loc_49D4DC
		mov	eax, dword_5F2B1E
		cmp	eax, 2
		jz	short loc_49D446
		cmp	eax, 3
		jnz	loc_49D4DC

loc_49D446:				; CODE XREF: .text:0049D43Bj
		push	esi
		push	edi
		lea	edi, [ebp-26ECh]
		mov	esi, offset stru_5F26F0
		mov	ecx, 10Ch
		lea	eax, [ebp-26ECh]
		rep movsd
		movsw
		pop	edi
		pop	esi
		push	eax		; ps
		call	Scan
		cmp	dword ptr [ebp-22BEh], 6
		pop	ecx
		jnz	short loc_49D4DC
		cmp	dword ptr [ebp-26D4h], 3Dh
		jnz	short loc_49D4DC
		push	100h		; nt
		lea	ecx, [ebp-109Ch]
		mov	edx, [ebp-8]
		mov	eax, dword ptr stru_5F26F0.errmsg
		shl	edx, 8
		add	edx, ecx
		push	edx		; t
		push	eax		; nw
		push	(offset	stru_5F26F0.text+4) ; w
		call	Unicodetoutf
		mov	ebx, eax
		mov	eax, [ebp-8]
		add	esp, 10h
		mov	ecx, 10Ch
		mov	[ebp+eax*4-9Ch], ebx
		add	ebx, 2
		mov	edx, [ebp-8]
		add	[ebp-0Ch], ebx
		push	esi
		push	edi
		lea	esi, [ebp-26ECh]
		mov	edi, offset stru_5F26F0
		rep movsd
		movsw
		pop	edi
		pop	esi
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx

loc_49D4DC:				; CODE XREF: .text:0049D42Dj
					; .text:0049D440j ...
		push	21Ah		; n
		push	0		; c
		lea	eax, [ebp-22B8h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp+1Ch]
		and	edx, 8
		push	edx
		lea	ecx, [ebp-22B8h]
		push	ecx
		call	loc_49BFE8
		add	esp, 8
		push	63h
		lea	eax, [ebp-22B8h]
		push	eax
		call	loc_49C90C
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	short loc_49D555
		cmp	dword_5F2B38, 1
		jz	short loc_49D555
		push	offset aInternalErro_3 ; "Internal error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1

loc_49D555:				; CODE XREF: .text:0049D520j
					; .text:0049D529j
		cmp	dword_5F2B28, 0
		jnz	loc_49D603
		test	byte ptr [ebp+1Ch], 8
		jz	loc_49D603
		mov	ecx, [ebp-8]
		cmp	dword ptr [ebp+ecx*4-9Ch], 0
		jnz	loc_49D603
		mov	ebx, stru_5F26F0.caret
		sub	ebx, edi
		test	ebx, ebx
		jle	short loc_49D59B
		lea	eax, [ebx+edi]
		mov	edx, stru_5F26F0.src
		cmp	word ptr [edx+eax*2-2],	2Ch
		jnz	short loc_49D59B
		dec	ebx

loc_49D59B:				; CODE XREF: .text:0049D587j
					; .text:0049D598j
		test	ebx, ebx
		jle	short loc_49D5C6

loc_49D59F:				; CODE XREF: .text:0049D5C4j
		lea	ecx, [ebx+edi]
		mov	eax, stru_5F26F0.src
		mov	ax, [eax+ecx*2-2]
		cmp	ax, 20h
		jz	short loc_49D5C1
		lea	edx, [ebx+edi]
		mov	ecx, stru_5F26F0.src
		cmp	ax, 9
		jnz	short loc_49D5C6

loc_49D5C1:				; CODE XREF: .text:0049D5B0j
		dec	ebx
		test	ebx, ebx
		jg	short loc_49D59F

loc_49D5C6:				; CODE XREF: .text:0049D59Dj
					; .text:0049D5BFj
		push	20h		; nt
		lea	edx, [ebp-109Ch]
		mov	eax, [ebp-8]
		add	edi, edi
		shl	eax, 8
		add	eax, edx
		add	edi, stru_5F26F0.src
		push	eax		; t
		push	ebx		; nw
		push	edi		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	ecx, [ebp-8]
		mov	[ebp+ecx*4-9Ch], eax
		mov	eax, [ebp-8]
		mov	edx, [ebp+eax*4-9Ch]
		add	edx, 2
		add	[ebp-0Ch], edx

loc_49D603:				; CODE XREF: .text:0049D55Cj
					; .text:0049D566j ...
		cmp	dword_5F2B28, 0
		jnz	short loc_49D633
		push	5Bh
		call	loc_49B284
		pop	ecx
		mov	ecx, [ebp-22B0h]
		push	ecx
		call	loc_49B2DC
		pop	ecx
		mov	edx, [ebp-8]
		mov	eax, dword_5F2B34
		mov	[ebp+edx*4-5Ch], eax
		add	[ebp-0Ch], eax
		inc	dword ptr [ebp-8]

loc_49D633:				; CODE XREF: .text:0049D60Aj
		cmp	dword_5F2B28, 0
		jnz	short loc_49D69E
		test	byte ptr [ebp+1Ch], 8
		jz	short loc_49D69E
		cmp	dword_5F2B1E, 6
		jnz	short loc_49D69E
		cmp	stru_5F26F0._mask, 2Ch
		jnz	short loc_49D69E
		cmp	dword ptr [ebp-8], 10h
		jge	short loc_49D675
		mov	ecx, [ebp-8]
		lea	eax, [ebp-209Ch]
		shl	ecx, 8
		mov	edi, 100h
		add	ecx, eax
		mov	[ebp-14h], ecx
		jmp	loc_49D3E3
; ---------------------------------------------------------------------------

loc_49D675:				; CODE XREF: .text:0049D658j
		push	offset aTooManyExpress ; "Too many expressions"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1

loc_49D69E:				; CODE XREF: .text:0049D63Aj
					; .text:0049D640j ...
		cmp	dword_5F2B28, 0
		jnz	short loc_49D6D3
		test	byte ptr [ebp+1Ch], 20h
		jz	short loc_49D6D3
		cmp	dword_5F2B1E, 6
		jnz	short loc_49D6D3
		mov	eax, stru_5F26F0._mask
		cmp	eax, 2Ch
		jz	short loc_49D6C5
		cmp	eax, 3Bh
		jnz	short loc_49D6D3

loc_49D6C5:				; CODE XREF: .text:0049D6BEj
		mov	edx, stru_5F26F0.line
		mov	stru_5F26F0.caret, edx
		jmp	short loc_49D71E
; ---------------------------------------------------------------------------

loc_49D6D3:				; CODE XREF: .text:0049D6A5j
					; .text:0049D6ABj ...
		cmp	dword_5F2B28, 0
		jnz	short loc_49D71E
		test	byte ptr [ebp+1Ch], 1
		jz	short loc_49D71E
		cmp	dword_5F2B1E, 1
		jz	short loc_49D71E
		cmp	dword_5F2B1E, 0
		jz	short loc_49D71E
		push	offset aExtraCharact_2 ; "Extra	characters on line"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1

loc_49D71E:				; CODE XREF: .text:0049D6D1j
					; .text:0049D6DAj ...
		cmp	dword_5F2B28, 0
		jz	short loc_49D73D
		cmp	dword ptr [ebp+14h], 0
		jz	loc_49D8C9
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax], edx
		jmp	loc_49D8C9
; ---------------------------------------------------------------------------

loc_49D73D:				; CODE XREF: .text:0049D725j
		test	byte ptr [ebp+1Ch], 8
		jnz	short loc_49D75C
		cmp	dword ptr [ebp+14h], 0
		jz	loc_49D8C9
		mov	ecx, [ebp+14h]
		mov	eax, dword_5F2B34
		mov	[ecx], eax
		jmp	loc_49D8C9
; ---------------------------------------------------------------------------

loc_49D75C:				; CODE XREF: .text:0049D741j
		cmp	dword ptr [ebp-8], 1
		jnz	loc_49D7ED
		mov	edx, [ebp-5Ch]
		cmp	edx, [ebp+10h]
		jle	short loc_49D795
		push	offset aExpressionIsTo ; "Expression is	too complex"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	ebx, ebx
		jmp	loc_49D8BE
; ---------------------------------------------------------------------------

loc_49D795:				; CODE XREF: .text:0049D76Cj
		mov	eax, [ebp-5Ch]
		add	eax, [ebp-9Ch]
		cmp	eax, [ebp+10h]
		jg	short loc_49D7CC
		mov	byte ptr [esi],	13h
		lea	ecx, [ebp-109Ch]
		mov	edx, [ebp-9Ch]
		lea	eax, [esi+1]
		inc	edx
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ebx, [ebp-9Ch]
		add	ebx, 2
		jmp	short loc_49D7CE
; ---------------------------------------------------------------------------

loc_49D7CC:				; CODE XREF: .text:0049D7A1j
		xor	ebx, ebx

loc_49D7CE:				; CODE XREF: .text:0049D7CAj
		mov	eax, [ebp-5Ch]
		push	eax		; n
		lea	edx, [ebp-209Ch]
		push	edx		; src
		lea	ecx, [ebx+esi]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	ebx, [ebp-5Ch]
		jmp	loc_49D8BE
; ---------------------------------------------------------------------------

loc_49D7ED:				; CODE XREF: .text:0049D760j
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-8]
		add	eax, eax
		add	edx, 2
		add	edx, eax
		cmp	edx, [ebp+10h]
		jbe	short loc_49D826
		push	offset aExpressionIsTo ; "Expression is	too complex"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	ebx, ebx
		jmp	loc_49D8BE
; ---------------------------------------------------------------------------

loc_49D826:				; CODE XREF: .text:0049D7FDj
		mov	byte ptr [esi],	12h
		mov	ebx, eax
		mov	dl, [ebp-8]
		xor	eax, eax
		mov	[esi+1], dl
		mov	[ebp-4], eax
		lea	edx, [ebp-5Ch]
		lea	eax, [esi+2]
		mov	[ebp-1Ch], edx
		mov	[ebp-18h], eax
		mov	edx, [ebp-4]
		add	ebx, 2
		cmp	edx, [ebp-8]
		lea	edi, [ebp-9Ch]
		jge	short loc_49D8BE

loc_49D853:				; CODE XREF: .text:0049D8BCj
		mov	ecx, [ebp-18h]
		mov	[ecx], bx
		mov	byte ptr [esi+ebx], 13h
		inc	ebx
		mov	eax, [edi]
		inc	eax
		push	eax		; n
		mov	edx, [ebp-4]
		shl	edx, 8
		lea	ecx, [ebp-109Ch]
		add	edx, ecx
		push	edx		; src
		lea	eax, [ebx+esi]
		push	eax		; dest
		call	_memcpy
		mov	ecx, [ebp-1Ch]
		add	esp, 0Ch
		mov	edx, [edi]
		inc	edx
		mov	eax, [ecx]
		add	ebx, edx
		push	eax		; n
		mov	edx, [ebp-4]
		lea	ecx, [ebp-209Ch]
		shl	edx, 8
		lea	eax, [ebx+esi]
		add	edx, ecx
		push	edx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp-1Ch]
		add	ebx, [edx]
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-1Ch], 4
		add	edi, 4
		add	dword ptr [ebp-18h], 2
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jl	short loc_49D853

loc_49D8BE:				; CODE XREF: .text:0049D790j
					; .text:0049D7E8j ...
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49D8C9
		mov	eax, [ebp+14h]
		mov	[eax], ebx

loc_49D8C9:				; CODE XREF: .text:0049D72Bj
					; .text:0049D738j ...
		mov	eax, stru_5F26F0.caret

loc_49D8CE:				; CODE XREF: .text:0049D255j
					; .text:0049D283j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 316. _Exprcount
; Exported entry 492. Exprcount

; signed int __cdecl Exprcount(uchar *cexpr)
		public Exprcount
Exprcount:				; CODE XREF: .text:0044CD23p
					; .text:0049F8E1p
		push	ebp		; _Exprcount
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_49D8E6
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49D8E6:				; CODE XREF: .text:0049D8E0j
		cmp	byte ptr [eax],	12h
		jz	short loc_49D8F2
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49D8F2:				; CODE XREF: .text:0049D8E9j
		xor	edx, edx
		mov	dl, [eax+1]
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 317. _Eexpression
; Exported entry 483. Eexpression

; int __cdecl Eexpression(t_result *result, wchar_t *expl, uchar *cexpr, int index, uchar *data, ulong base, ulong size, ulong threadid, ulong a, ulong	b, ulong mode)
		public Eexpression
Eexpression:				; CODE XREF: .text:0044CD7Cp
					; .text:0044E424p ...
		push	ebp		; _Eexpression
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_49D905:				; CODE XREF: .text:0049D90Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_49D905
		add	esp, 0FFFFFEACh
		mov	eax, [ebp-4]
		push	ebx
		push	esi
		push	edi
		lea	ebx, [ebp-21AAh]
		cmp	dword ptr [ebp+0Ch], 0
		mov	esi, [ebp+8]
		jz	short loc_49D932
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax],	0

loc_49D932:				; CODE XREF: .text:0049D928j
		cmp	dword ptr [ebp+24h], 0
		jnz	short loc_49D944
		xor	edx, edx
		mov	[ebp-30h], edx
		xor	ecx, ecx
		mov	[ebp-34h], ecx
		jmp	short loc_49D95E
; ---------------------------------------------------------------------------

loc_49D944:				; CODE XREF: .text:0049D936j
		mov	eax, [ebp+24h]
		push	eax		; threadid
		call	Findthread
		pop	ecx
		mov	[ebp-30h], eax
		mov	edx, [ebp+24h]
		push	edx		; threadid
		call	Threadregisters
		pop	ecx
		mov	[ebp-34h], eax

loc_49D95E:				; CODE XREF: .text:0049D942j
		call	loc_41100B

loc_49D963:				; CODE XREF: .text:0049DB02j
					; .text:0049DB1Cj ...
		mov	ecx, [ebp+10h]
		inc	dword ptr [ebp+10h]
		xor	eax, eax
		mov	al, [ecx]
		cmp	eax, 5Bh	; switch 92 cases
		ja	loc_49EFBA	; jumptable 0049D976 default case
		jmp	ds:off_49D97D[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_49D97D	dd offset loc_49EFBA, offset loc_49DAED, offset	loc_49DB07
					; DATA XREF: .text:0049D976r
		dd offset loc_49DB21, offset loc_49DB3B, offset	loc_49DB80 ; jump table	for switch statement
		dd offset loc_49DC05, offset loc_49DC6C, offset	loc_49DCCD
		dd offset loc_49DD39, offset loc_49DDC4, offset	loc_49DE09
		dd offset loc_49DE4E, offset loc_49DE96, offset	loc_49DEDE
		dd offset loc_49DF50, offset loc_49DF70, offset	loc_49DF9A
		dd offset loc_49DFF8, offset loc_49E043, offset	loc_49EFBA
		dd offset loc_49E09C, offset loc_49E0A8, offset	loc_49E0BE
		dd offset loc_49E0CA, offset loc_49E0DB, offset	loc_49E0F9
		dd offset loc_49E0F9, offset loc_49E370, offset	loc_49E393
		dd offset loc_49E3A2, offset loc_49E3CF, offset	loc_49EFBA
		dd offset loc_49EFBA, offset loc_49EFBA, offset	loc_49EFBA
		dd offset loc_49EFBA, offset loc_49EFBA, offset	loc_49EFBA
		dd offset loc_49EFBA, offset loc_49EFBA, offset	loc_49E3E8
		dd offset loc_49E48E, offset loc_49E4B8, offset	loc_49E4D8
		dd offset loc_49E4FA, offset loc_49E972, offset	loc_49E52C
		dd offset loc_49E6CC, offset loc_49E819, offset	loc_49E994
		dd offset loc_49E9B8, offset loc_49EA0C, offset	loc_49EA30
		dd offset loc_49EA54, offset loc_49EA81, offset	loc_49EAAE
		dd offset loc_49EADB, offset loc_49EB08, offset	loc_49EB35
		dd offset loc_49EB62, offset loc_49EB85, offset	loc_49EBD3
		dd offset loc_49EC21, offset loc_49EC3D, offset	loc_49EC65
		dd offset loc_49EC8D, offset loc_49ECB5, offset	loc_49ECDD
		dd offset loc_49ED00, offset loc_49ED4D, offset	loc_49ED9A
		dd offset loc_49EDB6, offset loc_49EDDE, offset	loc_49EE06
		dd offset loc_49EE2E, offset loc_49EE56, offset	loc_49EE72
		dd offset loc_49EE8E, offset loc_49EEAA, offset	loc_49EED2
		dd offset loc_49EEFA, offset loc_49EF16, offset	loc_49EF32
		dd offset loc_49EF4E, offset loc_49EF7F, offset	loc_49EFBA
		dd offset loc_49EFBA, offset loc_49EFBA, offset	loc_49EFBA
		dd offset loc_49EFBA, offset loc_49EFB0
; ---------------------------------------------------------------------------

loc_49DAED:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		add	ebx, 21Ah	; jumptable 0049D976 case 1
		mov	edx, [ebp+28h]
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+10h], edx
		mov	[ebx], ecx
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DB07:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		add	ebx, 21Ah	; jumptable 0049D976 case 2
		mov	edx, [ebp+2Ch]
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+10h], edx
		mov	[ebx], ecx
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DB21:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		add	ebx, 21Ah	; jumptable 0049D976 case 3
		mov	edx, [ebp+24h]
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+10h], edx
		mov	[ebx], ecx
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DB3B:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-30h], 0 ; jumptable 0049D976 case 4
		jnz	short loc_49DB63
		push	offset aUnableToGetThr ; "Unable to get	thread ordinal"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DB63:				; CODE XREF: .text:0049DB3Fj
		add	ebx, 21Ah
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+0Ch]
		mov	[ebx+10h], eax
		xor	edx, edx
		mov	[ebx], edx
		xor	ecx, ecx
		mov	[ebx+0Ch], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DB80:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 5
		jnz	short loc_49DBA8
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DBA8:				; CODE XREF: .text:0049DB84j
		add	ebx, 21Ah
		mov	edx, [ebp+10h]
		xor	ecx, ecx
		mov	cl, [edx]
		and	ecx, 7
		mov	[ebp-4], ecx
		inc	dword ptr [ebp+10h]
		cmp	dword ptr [ebp-4], 4
		jge	short loc_49DBD9
		mov	eax, [ebp-34h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*4+0Ch]
		and	ecx, 0FFh
		mov	[ebx+10h], ecx
		jmp	short loc_49DBEF
; ---------------------------------------------------------------------------

loc_49DBD9:				; CODE XREF: .text:0049DBC2j
		mov	eax, [ebp-34h]
		mov	edx, [ebp-4]
		mov	ecx, [eax+edx*4-4]
		shr	ecx, 8
		and	ecx, 0FFh
		mov	[ebx+10h], ecx

loc_49DBEF:				; CODE XREF: .text:0049DBD7j
		mov	eax, [ebp-4]
		xor	edx, edx
		mov	[ebx+4], eax
		mov	dword ptr [ebx], 11h
		mov	[ebx+0Ch], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DC05:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 6
		jnz	short loc_49DC2D
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DC2D:				; CODE XREF: .text:0049DC09j
		mov	eax, [ebp+10h]
		xor	edx, edx
		add	ebx, 21Ah
		mov	dl, [eax]
		and	edx, 7
		mov	[ebp-4], edx
		inc	dword ptr [ebp+10h]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-34h]
		mov	edx, [ecx+eax*4+0Ch]
		and	edx, 0FFFFh
		xor	eax, eax
		mov	[ebx+10h], edx
		mov	ecx, [ebp-4]
		mov	[ebx+4], ecx
		mov	dword ptr [ebx], 12h
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DC6C:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 7
		jnz	short loc_49DC94
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DC94:				; CODE XREF: .text:0049DC70j
		mov	ecx, [ebp+10h]
		xor	eax, eax
		add	ebx, 21Ah
		mov	al, [ecx]
		and	eax, 7
		mov	[ebp-4], eax
		inc	dword ptr [ebp+10h]
		mov	ecx, [ebp-4]
		mov	edx, [ebp-34h]
		mov	eax, [edx+ecx*4+0Ch]
		xor	ecx, ecx
		mov	[ebx+10h], eax
		mov	edx, [ebp-4]
		mov	[ebx+4], edx
		mov	dword ptr [ebx], 13h
		mov	[ebx+0Ch], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DCCD:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 8
		jnz	short loc_49DCF5
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DCF5:				; CODE XREF: .text:0049DCD1j
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	ecx, 6
		add	ebx, 21Ah
		mov	al, [edx]
		cdq
		idiv	ecx
		mov	[ebp-4], edx
		inc	dword ptr [ebp+10h]
		mov	edx, [ebp-4]
		mov	eax, [ebp-34h]
		mov	ecx, [eax+edx*4+30h]
		and	ecx, 0FFFFh
		xor	edx, edx
		mov	[ebx+10h], ecx
		mov	eax, [ebp-4]
		mov	[ebx+4], eax
		mov	dword ptr [ebx], 17h
		mov	[ebx+0Ch], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DD39:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 9
		jnz	short loc_49DD61
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DD61:				; CODE XREF: .text:0049DD3Dj
		add	ebx, 21Ah
		mov	eax, [ebp+10h]
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 7
		mov	[ebp-4], edx
		inc	dword ptr [ebp+10h]
		push	0Ah		; n
		mov	ecx, [ebp-34h]
		mov	eax, [ecx+80h]
		add	eax, [ebp-4]
		and	eax, 80000007h
		jns	short loc_49DD91
		dec	eax
		or	eax, 0FFFFFFF8h
		inc	eax

loc_49DD91:				; CODE XREF: .text:0049DD8Aj
		mov	edx, eax
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	edx, [ebp-34h]
		add	edx, 84h
		push	edx		; src
		lea	ecx, [ebx+10h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp-4]
		mov	[ebx+4], eax
		mov	dword ptr [ebx], 16h
		xor	edx, edx
		mov	[ebx+0Ch], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DDC4:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 10
		jnz	short loc_49DDEC
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DDEC:				; CODE XREF: .text:0049DDC8j
		add	ebx, 21Ah
		mov	eax, [ebp-34h]
		mov	edx, [eax+8]
		mov	[ebx+10h], edx
		xor	ecx, ecx
		mov	[ebx], ecx
		xor	eax, eax
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DE09:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 11
		jnz	short loc_49DE31
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DE31:				; CODE XREF: .text:0049DE0Dj
		add	ebx, 21Ah
		mov	ecx, [ebp-34h]
		mov	eax, [ecx+2Ch]
		mov	[ebx+10h], eax
		xor	edx, edx
		mov	[ebx], edx
		xor	ecx, ecx
		mov	[ebx+0Ch], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DE4E:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 12
		jnz	short loc_49DE76
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DE76:				; CODE XREF: .text:0049DE52j
		add	ebx, 21Ah
		mov	edx, [ebp-34h]
		mov	ecx, [edx+0DCh]
		mov	[ebx+10h], ecx
		xor	eax, eax
		mov	[ebx], eax
		xor	edx, edx
		mov	[ebx+0Ch], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DE96:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 13
		jnz	short loc_49DEBE
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DEBE:				; CODE XREF: .text:0049DE9Aj
		add	ebx, 21Ah
		mov	eax, [ebp-34h]
		mov	edx, [eax+0E0h]
		mov	[ebx+10h], edx
		xor	ecx, ecx
		mov	[ebx], ecx
		xor	eax, eax
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DEDE:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebp-34h], 0 ; jumptable 0049D976 case 14
		jnz	short loc_49DF06
		push	offset aRegistersAreNo ; "Registers are	not accessible"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DF06:				; CODE XREF: .text:0049DEE2j
		mov	ecx, [ebp-34h]
		test	byte ptr [ecx],	4
		jnz	short loc_49DF30
		push	offset aSseRegistersAr ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49DF30:				; CODE XREF: .text:0049DF0Cj
		add	ebx, 21Ah
		mov	edx, [ebp-34h]
		mov	ecx, [edx+190h]
		mov	[ebx+10h], ecx
		xor	eax, eax
		mov	[ebx], eax
		xor	edx, edx
		mov	[ebx+0Ch], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DF50:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebp+10h]	; jumptable 0049D976 case 15
		add	ebx, 21Ah
		xor	edx, edx
		mov	eax, [ecx]
		mov	[ebx+10h], eax
		add	dword ptr [ebp+10h], 4
		xor	ecx, ecx
		mov	[ebx], edx
		mov	[ebx+0Ch], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DF70:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		add	ebx, 21Ah	; jumptable 0049D976 case 16
		push	0Ah		; n
		mov	eax, [ebp+10h]
		push	eax		; src
		lea	edx, [ebx+10h]
		push	edx		; dest
		call	_memcpy
		add	dword ptr [ebp+10h], 0Ah
		xor	ecx, ecx
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebx], ecx
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DF9A:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		add	ebx, 21Ah	; jumptable 0049D976 case 17
		xor	edx, edx
		mov	[ebp-4], edx
		lea	ecx, [ebp-258h]
		mov	[ebp-58h], ecx

loc_49DFAE:				; CODE XREF: .text:0049DFCCj
		mov	eax, [ebp+10h]
		mov	edx, [ebp-58h]
		mov	al, [eax]
		mov	[edx], al
		inc	dword ptr [ebp+10h]
		test	al, al
		jz	short loc_49DFCE
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-58h]
		cmp	dword ptr [ebp-4], 200h
		jl	short loc_49DFAE

loc_49DFCE:				; CODE XREF: .text:0049DFBDj
		push	100h		; nw
		lea	ecx, [ebx+1Ah]
		push	ecx		; w
		mov	eax, [ebp-4]
		push	eax		; nt
		lea	edx, [ebp-258h]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		xor	ecx, ecx
		mov	[ebx], ecx
		xor	eax, eax
		mov	[ebx+0Ch], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49DFF8:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebp+10h]	; jumptable 0049D976 case 18
		movzx	edi, byte ptr [edx]
		inc	dword ptr [ebp+10h]
		cmp	dword ptr [ebp+14h], 0
		jl	short loc_49E00C
		cmp	edi, [ebp+14h]
		jg	short loc_49E02E

loc_49E00C:				; CODE XREF: .text:0049E005j
		push	offset aExpressionInde ; "Expression index out of limits"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E02E:				; CODE XREF: .text:0049E00Aj
		mov	edx, [ebp+10h]
		mov	ecx, [ebp+14h]
		movzx	eax, word ptr [edx+ecx*2]
		add	eax, 0FFFFFFFEh
		add	[ebp+10h], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E043:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		xor	edx, edx	; jumptable 0049D976 case 19
		lea	ecx, [ebp-258h]
		mov	[ebp-4], edx
		mov	[ebp-58h], ecx

loc_49E051:				; CODE XREF: .text:0049E06Fj
		mov	eax, [ebp+10h]
		mov	edx, [ebp-58h]
		mov	al, [eax]
		mov	[edx], al
		inc	dword ptr [ebp+10h]
		test	al, al
		jz	short loc_49E071
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-58h]
		cmp	dword ptr [ebp-4], 200h
		jl	short loc_49E051

loc_49E071:				; CODE XREF: .text:0049E060j
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_49D963
		push	100h		; nw
		mov	ecx, [ebp+0Ch]
		push	ecx		; w
		mov	eax, [ebp-4]
		push	eax		; nt
		lea	edx, [ebp-258h]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E09C:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		neg	dword ptr [ebx+10h] ; jumptable	0049D976 case 21
		xor	ecx, ecx
		mov	[ebx], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E0A8:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebx+10h], 0 ; jumptable 0049D976 case 22
		setz	al
		and	eax, 1
		mov	[ebx+10h], eax
		xor	edx, edx
		mov	[ebx], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E0BE:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		not	dword ptr [ebx+10h] ; jumptable	0049D976 case 23
		xor	ecx, ecx
		mov	[ebx], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E0CA:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx+10h] ; jumptable	0049D976 case 24
		fchs
		fstp	tbyte ptr [ebx+10h]
		xor	eax, eax
		mov	[ebx], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E0DB:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx+10h] ; jumptable	0049D976 case 25
		fcomp	ds:flt_49F5F8
		fnstsw	ax
		sahf
		setz	dl
		and	edx, 1
		mov	[ebx+10h], edx
		xor	ecx, ecx
		mov	[ebx], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E0F9:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	eax, [ebp+10h]	; jumptable 0049D976 cases 26,27
		cmp	byte ptr [eax-1], 1Ah
		jnz	short loc_49E10B
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_49E12E
; ---------------------------------------------------------------------------

loc_49E10B:				; CODE XREF: .text:0049E100j
		mov	edx, [ebp+10h]
		xor	ecx, ecx
		mov	cl, [edx]
		mov	[ebp-10h], ecx
		inc	dword ptr [ebp+10h]
		push	1C0h		; n
		push	0		; c
		lea	eax, [ebp-2150h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_49E12E:				; CODE XREF: .text:0049E109j
		mov	edx, [ebp-10h]
		mov	[ebx+0Ch], edx
		mov	ecx, [ebx+10h]
		mov	[ebp-14h], ecx
		mov	eax, [ebp+10h]
		xor	edx, edx
		mov	dl, [eax]
		mov	[ebp-18h], edx
		inc	dword ptr [ebp+10h]
		push	0Ah		; n
		push	0		; c
		lea	ecx, [ebx+10h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	edx, [ebp-18h]
		cmp	edx, 23h	; switch 36 cases
		ja	loc_49E206	; jumptable 0049E16E default case
		mov	dl, ds:byte_49E175[edx]
		jmp	ds:off_49E199[edx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_49E175	db	0,     7,     6,     1 ; DATA XREF: .text:0049E168r
		db	1,     5,     4,     0 ; indirect table	for switch statement
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     3,     2,     1
off_49E199	dd offset loc_49E206	; DATA XREF: .text:0049E16Er
		dd offset loc_49E1F1	; jump table for switch	statement
		dd offset loc_49E1DC
		dd offset loc_49E1C0
		dd offset loc_49E1FF
		dd offset loc_49E1F8
		dd offset loc_49E1D5
		dd offset loc_49E1B9
; ---------------------------------------------------------------------------

loc_49E1B9:				; CODE XREF: .text:0049E16Ej
					; DATA XREF: .text:off_49E199o
		mov	edi, 1		; jumptable 0049E16E case 1
		jmp	short loc_49E228
; ---------------------------------------------------------------------------

loc_49E1C0:				; CODE XREF: .text:0049E16Ej
					; DATA XREF: .text:off_49E199o
		mov	dword ptr [ebp-1Ch], 80h ; jumptable 0049E16E case 33
		mov	dword ptr [ebp-20h], 0FFFFFF00h
		mov	edi, 1
		jmp	short loc_49E228
; ---------------------------------------------------------------------------

loc_49E1D5:				; CODE XREF: .text:0049E16Ej
					; DATA XREF: .text:off_49E199o
		mov	edi, 2		; jumptable 0049E16E case 2
		jmp	short loc_49E228
; ---------------------------------------------------------------------------

loc_49E1DC:				; CODE XREF: .text:0049E16Ej
					; DATA XREF: .text:off_49E199o
		mov	dword ptr [ebp-1Ch], 8000h ; jumptable 0049E16E	case 34
		mov	dword ptr [ebp-20h], 0FFFF0000h
		mov	edi, 2
		jmp	short loc_49E228
; ---------------------------------------------------------------------------

loc_49E1F1:				; CODE XREF: .text:0049E16Ej
					; DATA XREF: .text:off_49E199o
		mov	edi, 4		; jumptable 0049E16E cases 3,4,35
		jmp	short loc_49E228
; ---------------------------------------------------------------------------

loc_49E1F8:				; CODE XREF: .text:0049E16Ej
					; DATA XREF: .text:off_49E199o
		mov	edi, 8		; jumptable 0049E16E case 5
		jmp	short loc_49E228
; ---------------------------------------------------------------------------

loc_49E1FF:				; CODE XREF: .text:0049E16Ej
					; DATA XREF: .text:off_49E199o
		mov	edi, 0Ah	; jumptable 0049E16E case 6
		jmp	short loc_49E228
; ---------------------------------------------------------------------------

loc_49E206:				; CODE XREF: .text:0049E162j
					; .text:0049E16Ej
					; DATA XREF: ...
		push	offset aInternalErro_3 ; jumptable 0049E16E default case
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E228:				; CODE XREF: .text:0049E1BEj
					; .text:0049E1D3j ...
		mov	edx, [ebp-14h]
		xor	eax, eax
		mov	[ebx+4], edx
		lea	edx, [ebp-2146h]
		mov	ecx, [ebp-18h]
		mov	[ebx], ecx
		mov	[ebp-4], eax
		mov	[ebp-58h], edx
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-10h]
		jge	loc_49E356

loc_49E24D:				; CODE XREF: .text:0049E350j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_49E29D
		mov	eax, [ebp-14h]
		cmp	eax, [ebp+1Ch]
		jb	short loc_49E29D
		mov	ecx, [ebp+1Ch]
		mov	edx, [ebp-14h]
		add	ecx, [ebp+20h]
		add	edx, edi
		cmp	edx, ecx
		ja	short loc_49E29D
		push	edi		; n
		mov	eax, [ebp-14h]
		sub	eax, [ebp+1Ch]
		add	eax, [ebp+18h]
		push	eax		; src
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 3
		sub	edx, ecx
		add	edx, edx
		lea	eax, [ebp-2150h]
		add	edx, eax
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp-58h]
		mov	dword ptr [edx], 1
		jmp	short loc_49E304
; ---------------------------------------------------------------------------

loc_49E29D:				; CODE XREF: .text:0049E251j
					; .text:0049E259j ...
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_49E2DC
		test	byte ptr [ebp+30h], 4
		jnz	short loc_49E2DC
		push	1		; mode
		push	edi		; size
		mov	ecx, [ebp-14h]
		push	ecx		; _addr
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 3
		sub	eax, edx
		add	eax, eax
		lea	ecx, [ebp-2150h]
		add	eax, ecx
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	edi, eax
		jnz	short loc_49E2DC
		mov	eax, [ebp-58h]
		mov	dword ptr [eax], 1
		jmp	short loc_49E304
; ---------------------------------------------------------------------------

loc_49E2DC:				; CODE XREF: .text:0049E2A1j
					; .text:0049E2A7j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_49E340
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E304:				; CODE XREF: .text:0049E29Bj
					; .text:0049E2DAj
		cmp	dword ptr [ebp-18h], 4
		jnz	short loc_49E318
		mov	ecx, [ebp-58h]
		mov	eax, [ebp-58h]
		fld	dword ptr [ecx-0Ah]
		fstp	tbyte ptr [eax-0Ah]
		jmp	short loc_49E340
; ---------------------------------------------------------------------------

loc_49E318:				; CODE XREF: .text:0049E308j
		cmp	dword ptr [ebp-18h], 5
		jnz	short loc_49E32C
		mov	edx, [ebp-58h]
		mov	ecx, [ebp-58h]
		fld	qword ptr [edx-0Ah]
		fstp	tbyte ptr [ecx-0Ah]
		jmp	short loc_49E340
; ---------------------------------------------------------------------------

loc_49E32C:				; CODE XREF: .text:0049E31Cj
		mov	eax, [ebp-58h]
		mov	edx, [eax-0Ah]
		and	edx, [ebp-1Ch]
		jz	short loc_49E340
		mov	ecx, [ebp-58h]
		mov	eax, [ebp-20h]
		or	[ecx-0Ah], eax

loc_49E340:				; CODE XREF: .text:0049E2E0j
					; .text:0049E316j ...
		add	dword ptr [ebp-58h], 0Eh
		inc	dword ptr [ebp-4]
		add	[ebp-14h], edi
		mov	edx, [ebp-4]
		cmp	edx, [ebp-10h]
		jl	loc_49E24D

loc_49E356:				; CODE XREF: .text:0049E247j
		push	0Ah		; n
		lea	ecx, [ebp-2150h]
		push	ecx		; src
		lea	eax, [ebx+10h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E370:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx+10h]	; jumptable 0049D976 case 28
		xor	ecx, ecx
		mov	[ebp-2158h], edx
		mov	[ebp-2154h], ecx
		fild	qword ptr [ebp-2158h]
		xor	eax, eax
		fstp	tbyte ptr [ebx+10h]
		mov	[ebx], eax
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E393:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fild	dword ptr [ebx+10h] ; jumptable	0049D976 case 29
		xor	edx, edx
		fstp	tbyte ptr [ebx+10h]
		mov	[ebx], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E3A2:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 30
		xor	eax, eax
		mov	[ebp-2158h], ecx
		mov	[ebp-2154h], eax
		fild	qword ptr [ebp-2158h]
		xor	edx, edx
		fstp	tbyte ptr [ebx-20Ah]
		mov	[ebx-21Ah], edx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E3CF:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fild	dword ptr [ebx-20Ah] ; jumptable 0049D976 case 31
		xor	ecx, ecx
		fstp	tbyte ptr [ebx-20Ah]
		mov	[ebx-21Ah], ecx
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E3E8:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	eax, [ebx-20Ah]	; jumptable 0049D976 case 41
		and	eax, 0FFFFh
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_49E414
		lea	edx, [ebp-3Ch]
		push	edx		; lpSelectorEntry
		mov	ecx, [ebp-0Ch]
		push	ecx		; dwSelector
		mov	eax, [ebp-30h]
		mov	edx, [eax+50h]
		push	edx		; hThread
		call	GetThreadSelectorEntry
		test	eax, eax
		jnz	short loc_49E436

loc_49E414:				; CODE XREF: .text:0049E3FAj
		push	offset aUnableToGetBas ; "Unable to get	base of	selector"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E436:				; CODE XREF: .text:0049E412j
		movzx	edx, word ptr [ebp-3Ah]
		mov	al, [ebp-38h]
		mov	cl, [ebp-35h]
		and	eax, 0FFh
		and	ecx, 0FFh
		shl	eax, 10h
		and	edx, 0FFFFh
		add	edx, [ebx+10h]
		and	eax, 0FF0000h
		shl	ecx, 18h
		add	eax, edx
		and	ecx, 0FF000000h
		add	eax, ecx
		mov	[ebx-20Ah], eax
		mov	eax, [ebx-20Ah]
		mov	[ebx-216h], eax
		mov	edx, [ebx]
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E48E:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 42
		add	[ebx-20Ah], ecx
		mov	eax, [ebx-20Ah]
		mov	[ebx-216h], eax
		mov	dword ptr [ebx-21Ah], 8
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E4B8:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx+10h]	; jumptable 0049D976 case 43
		sub	[ebx-20Ah], edx
		mov	ecx, [ebx-20Ah]
		mov	[ebx-216h], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E4D8:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	eax, [ebx+10h]	; jumptable 0049D976 case 44
		add	eax, eax
		add	[ebx-20Ah], eax
		mov	edx, [ebx-20Ah]
		mov	[ebx-216h], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E4FA:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 45
		add	ecx, ecx
		add	ecx, [ebx+10h]
		mov	[ebx-20Ah], ecx
		mov	eax, [ebx-20Ah]
		mov	[ebx-216h], eax
		mov	dword ptr [ebx-21Ah], 9
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E52C:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx-20Ah]	; jumptable 0049D976 case 47
		mov	[ebp-14h], edx
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_49E5B4
		mov	ecx, [ebp-14h]
		cmp	ecx, [ebp+1Ch]
		jb	short loc_49E592
		mov	eax, [ebp+1Ch]
		add	eax, [ebp+20h]
		cmp	eax, [ebp-14h]
		jbe	short loc_49E592
		mov	dword ptr [ebp-40h], 200h
		mov	edx, [ebp+1Ch]
		add	edx, [ebp+20h]
		sub	edx, [ebp-14h]
		mov	[ebp-44h], edx
		mov	ecx, [ebp-44h]
		cmp	ecx, [ebp-40h]
		jnb	short loc_49E56E
		lea	eax, [ebp-44h]
		jmp	short loc_49E571
; ---------------------------------------------------------------------------

loc_49E56E:				; CODE XREF: .text:0049E567j
		lea	eax, [ebp-40h]

loc_49E571:				; CODE XREF: .text:0049E56Cj
		mov	edi, [eax]
		push	edi		; n
		mov	eax, [ebp-14h]
		sub	eax, [ebp+1Ch]
		add	eax, [ebp+18h]
		push	eax		; src
		lea	edx, [ebp-258h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_49E61E
; ---------------------------------------------------------------------------

loc_49E592:				; CODE XREF: .text:0049E541j
					; .text:0049E54Cj
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E5B4:				; CODE XREF: .text:0049E539j
		test	byte ptr [ebp+30h], 4
		jz	short loc_49E5DC
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E5DC:				; CODE XREF: .text:0049E5B8j
		push	1		; mode
		push	200h		; size
		mov	edx, [ebp-14h]
		push	edx		; _addr
		lea	ecx, [ebp-258h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_49E61E
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E61E:				; CODE XREF: .text:0049E58Dj
					; .text:0049E5FAj
		push	100h		; nw
		lea	edx, [ebp-458h]
		push	edx		; w
		push	edi		; nt
		lea	ecx, [ebp-258h]
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		lea	eax, [ebx+1Ah]
		push	eax		; s
		call	_wcslen
		pop	ecx
		push	eax		; maxlen
		lea	edx, [ebx+1Ah]
		push	edx		; s2
		lea	ecx, [ebp-458h]
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		setz	al
		and	eax, 1
		mov	[ebx-20Ah], eax
		cmp	dword ptr [ebx-20Ah], 0
		jnz	short loc_49E6B9
		cmp	edi, 2
		jb	short loc_49E6B9
		shr	edi, 1
		cmp	edi, 100h
		jl	short loc_49E683
		mov	edi, 0FFh

loc_49E683:				; CODE XREF: .text:0049E67Cj
		mov	word ptr [ebp+edi*2-258h], 0
		lea	eax, [ebx+1Ah]
		push	eax		; s
		call	_wcslen
		pop	ecx
		push	eax		; maxlen
		lea	edx, [ebx+1Ah]
		push	edx		; s2
		lea	ecx, [ebp-258h]
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		setz	al
		and	eax, 1
		mov	[ebx-20Ah], eax

loc_49E6B9:				; CODE XREF: .text:0049E66Dj
					; .text:0049E672j
		xor	edx, edx
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E6CC:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 48
		mov	[ebp-14h], ecx
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_49E754
		mov	eax, [ebp-14h]
		cmp	eax, [ebp+1Ch]
		jb	short loc_49E732
		mov	edx, [ebp+1Ch]
		add	edx, [ebp+20h]
		cmp	edx, [ebp-14h]
		jbe	short loc_49E732
		mov	dword ptr [ebp-48h], 200h
		mov	ecx, [ebp+1Ch]
		add	ecx, [ebp+20h]
		sub	ecx, [ebp-14h]
		mov	[ebp-4Ch], ecx
		mov	eax, [ebp-4Ch]
		cmp	eax, [ebp-48h]
		jnb	short loc_49E70E
		lea	edx, [ebp-4Ch]
		jmp	short loc_49E711
; ---------------------------------------------------------------------------

loc_49E70E:				; CODE XREF: .text:0049E707j
		lea	edx, [ebp-48h]

loc_49E711:				; CODE XREF: .text:0049E70Cj
		mov	edi, [edx]
		push	edi		; n
		mov	eax, [ebp-14h]
		sub	eax, [ebp+1Ch]
		add	eax, [ebp+18h]
		push	eax		; src
		lea	edx, [ebp-258h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_49E7BE
; ---------------------------------------------------------------------------

loc_49E732:				; CODE XREF: .text:0049E6E1j
					; .text:0049E6ECj
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E754:				; CODE XREF: .text:0049E6D9j
		test	byte ptr [ebp+30h], 4
		jz	short loc_49E77C
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E77C:				; CODE XREF: .text:0049E758j
		push	1		; mode
		push	200h		; size
		mov	edx, [ebp-14h]
		push	edx		; _addr
		lea	ecx, [ebp-258h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_49E7BE
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E7BE:				; CODE XREF: .text:0049E72Dj
					; .text:0049E79Aj
		push	100h		; nw
		lea	edx, [ebp-458h]
		push	edx		; w
		push	edi		; nt
		lea	ecx, [ebp-258h]
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		lea	eax, [ebx+1Ah]
		push	eax		; s
		call	_wcslen
		pop	ecx
		push	eax		; maxlen
		lea	edx, [ebx+1Ah]
		push	edx		; s2
		lea	ecx, [ebp-458h]
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		setz	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E819:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 49
		mov	[ebp-14h], ecx
		cmp	dword ptr [ebp+18h], 0
		jz	loc_49E8AD
		mov	eax, [ebp-14h]
		cmp	eax, [ebp+1Ch]
		jb	short loc_49E88B
		mov	ecx, [ebp+1Ch]
		mov	edx, [ebp-14h]
		add	ecx, [ebp+20h]
		add	edx, 2
		cmp	edx, ecx
		ja	short loc_49E88B
		mov	dword ptr [ebp-50h], 200h
		mov	eax, [ebp+1Ch]
		add	eax, [ebp+20h]
		sub	eax, [ebp-14h]
		mov	[ebp-54h], eax
		mov	edx, [ebp-54h]
		cmp	edx, [ebp-50h]
		jnb	short loc_49E864
		lea	ecx, [ebp-54h]
		jmp	short loc_49E867
; ---------------------------------------------------------------------------

loc_49E864:				; CODE XREF: .text:0049E85Dj
		lea	ecx, [ebp-50h]

loc_49E867:				; CODE XREF: .text:0049E862j
		mov	edi, [ecx]
		and	edi, 0FFFFFFFEh
		push	edi		; n
		mov	eax, [ebp-14h]
		sub	eax, [ebp+1Ch]
		add	eax, [ebp+18h]
		push	eax		; src
		lea	edx, [ebp-458h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_49E91A
; ---------------------------------------------------------------------------

loc_49E88B:				; CODE XREF: .text:0049E832j
					; .text:0049E842j
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E8AD:				; CODE XREF: .text:0049E826j
		test	byte ptr [ebp+30h], 4
		jz	short loc_49E8D5
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E8D5:				; CODE XREF: .text:0049E8B1j
		push	1		; mode
		push	200h		; size
		mov	edx, [ebp-14h]
		push	edx		; _addr
		lea	ecx, [ebp-458h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		and	edi, 0FFFFFFFEh
		test	edi, edi
		jnz	short loc_49E91A
		push	offset aUnableToGetCon ; "Unable to get	contents of memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E91A:				; CODE XREF: .text:0049E886j
					; .text:0049E8F6j
		shr	edi, 1
		cmp	edi, 100h
		jl	short loc_49E929
		mov	edi, 0FFh

loc_49E929:				; CODE XREF: .text:0049E922j
		mov	word ptr [ebp+edi*2-458h], 0
		lea	eax, [ebx+1Ah]
		push	eax		; s
		call	_wcslen
		pop	ecx
		push	eax		; maxlen
		lea	edx, [ebx+1Ah]
		push	edx		; s2
		lea	ecx, [ebp-458h]
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		setz	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E972:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 46
		add	ecx, ecx
		sub	[ebx-20Ah], ecx
		mov	eax, [ebx-20Ah]
		mov	[ebx-216h], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E994:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx+10h] ; jumptable	0049D976 case 50
		fld	tbyte ptr [ebx-20Ah]
		fmulp	st(1), st
		xor	edx, edx
		fstp	tbyte ptr [ebx-20Ah]
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49E9B8:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx+10h] ; jumptable	0049D976 case 51
		fcomp	ds:flt_49F5F8
		fnstsw	ax
		sahf
		jnz	short loc_49E9E8
		push	offset aDivisionBy0_0 ;	"Division by 0.0"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49E9E8:				; CODE XREF: .text:0049E9C4j
		fld	tbyte ptr [ebx+10h]
		fld	tbyte ptr [ebx-20Ah]
		fdivrp	st(1), st
		fstp	tbyte ptr [ebx-20Ah]
		xor	ecx, ecx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EA0C:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx+10h] ; jumptable	0049D976 case 52
		fld	tbyte ptr [ebx-20Ah]
		faddp	st(1), st
		xor	eax, eax
		fstp	tbyte ptr [ebx-20Ah]
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EA30:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx+10h] ; jumptable	0049D976 case 53
		fld	tbyte ptr [ebx-20Ah]
		fsubrp	st(1), st
		xor	edx, edx
		fstp	tbyte ptr [ebx-20Ah]
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EA54:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx-20Ah] ; jumptable 0049D976 case 54
		fld	tbyte ptr [ebx+10h]
		fcompp
		fnstsw	ax
		sahf
		setnb	dl
		and	edx, 1
		xor	ecx, ecx
		mov	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EA81:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx-20Ah] ; jumptable 0049D976 case 55
		fld	tbyte ptr [ebx+10h]
		fcompp
		fnstsw	ax
		sahf
		setbe	dl
		and	edx, 1
		xor	ecx, ecx
		mov	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EAAE:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx-20Ah] ; jumptable 0049D976 case 56
		fld	tbyte ptr [ebx+10h]
		fcompp
		fnstsw	ax
		sahf
		setnbe	dl
		and	edx, 1
		xor	ecx, ecx
		mov	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EADB:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx-20Ah] ; jumptable 0049D976 case 57
		fld	tbyte ptr [ebx+10h]
		fcompp
		fnstsw	ax
		sahf
		setb	dl
		and	edx, 1
		xor	ecx, ecx
		mov	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EB08:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx-20Ah] ; jumptable 0049D976 case 58
		fld	tbyte ptr [ebx+10h]
		fcompp
		fnstsw	ax
		sahf
		setz	dl
		and	edx, 1
		xor	ecx, ecx
		mov	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EB35:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		fld	tbyte ptr [ebx-20Ah] ; jumptable 0049D976 case 59
		fld	tbyte ptr [ebx+10h]
		fcompp
		fnstsw	ax
		sahf
		setnz	dl
		and	edx, 1
		xor	ecx, ecx
		mov	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EB62:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	eax, [ebx+10h]	; jumptable 0049D976 case 60
		xor	edx, edx
		imul	eax, [ebx-20Ah]
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EB85:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebx+10h], 0 ; jumptable 0049D976 case 61
		jnz	short loc_49EBAD
		push	offset aDivisionBy0 ; "Division	by 0"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49EBAD:				; CODE XREF: .text:0049EB89j
		mov	ecx, [ebx+10h]
		mov	eax, [ebx-20Ah]
		xor	edx, edx
		div	ecx
		mov	[ebx-20Ah], eax
		xor	eax, eax
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EBD3:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebx+10h], 0 ; jumptable 0049D976 case 62
		jnz	short loc_49EBFB
		push	offset aDivisionBy0 ; "Division	by 0"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49EBFB:				; CODE XREF: .text:0049EBD7j
		mov	ecx, [ebx+10h]
		mov	eax, [ebx-20Ah]
		xor	edx, edx
		div	ecx
		mov	[ebx-20Ah], edx
		xor	ecx, ecx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EC21:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 63
		xor	eax, eax
		shr	dword ptr [ebx-20Ah], cl
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EC3D:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx-20Ah]	; jumptable 0049D976 case 64
		cmp	edx, [ebx+10h]
		setbe	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EC65:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 65
		cmp	ecx, [ebx+10h]
		setnb	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EC8D:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 66
		cmp	ecx, [ebx+10h]
		setb	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49ECB5:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 67
		cmp	ecx, [ebx+10h]
		setnbe	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49ECDD:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 68
		xor	eax, eax
		imul	ecx, [ebx-20Ah]
		mov	[ebx-20Ah], ecx
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49ED00:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebx+10h], 0 ; jumptable 0049D976 case 69
		jnz	short loc_49ED28
		push	offset aDivisionBy0 ; "Division	by 0"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49ED28:				; CODE XREF: .text:0049ED04j
		mov	ecx, [ebx+10h]
		mov	eax, [ebx-20Ah]
		cdq
		idiv	ecx
		mov	[ebx-20Ah], eax
		xor	ecx, ecx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49ED4D:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebx+10h], 0 ; jumptable 0049D976 case 70
		jnz	short loc_49ED75
		push	offset aDivisionBy0 ; "Division	by 0"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49EFD7
; ---------------------------------------------------------------------------

loc_49ED75:				; CODE XREF: .text:0049ED51j
		mov	ecx, [ebx+10h]
		mov	eax, [ebx-20Ah]
		cdq
		idiv	ecx
		mov	[ebx-20Ah], edx
		xor	ecx, ecx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49ED9A:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 71
		xor	eax, eax
		sar	dword ptr [ebx-20Ah], cl
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EDB6:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx-20Ah]	; jumptable 0049D976 case 72
		cmp	edx, [ebx+10h]
		setle	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EDDE:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 73
		cmp	ecx, [ebx+10h]
		setnl	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EE06:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 74
		cmp	ecx, [ebx+10h]
		setl	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EE2E:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 75
		cmp	ecx, [ebx+10h]
		setnle	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EE56:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 76
		xor	eax, eax
		add	[ebx-20Ah], ecx
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EE72:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx+10h]	; jumptable 0049D976 case 77
		xor	ecx, ecx
		sub	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EE8E:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 78
		xor	eax, eax
		shl	dword ptr [ebx-20Ah], cl
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EEAA:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx-20Ah]	; jumptable 0049D976 case 79
		cmp	edx, [ebx+10h]
		setz	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EED2:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx-20Ah]	; jumptable 0049D976 case 80
		cmp	ecx, [ebx+10h]
		setnz	al
		and	eax, 1
		xor	edx, edx
		mov	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EEFA:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	ecx, [ebx+10h]	; jumptable 0049D976 case 81
		xor	eax, eax
		and	[ebx-20Ah], ecx
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EF16:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	edx, [ebx+10h]	; jumptable 0049D976 case 82
		xor	ecx, ecx
		xor	[ebx-20Ah], edx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EF32:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	eax, [ebx+10h]	; jumptable 0049D976 case 83
		xor	edx, edx
		or	[ebx-20Ah], eax
		mov	[ebx-21Ah], edx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EF4E:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebx-20Ah], 0	; jumptable 0049D976 case 84
		jz	short loc_49EF5D
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_49EF61

loc_49EF5D:				; CODE XREF: .text:0049EF55j
		xor	ecx, ecx
		jmp	short loc_49EF66
; ---------------------------------------------------------------------------

loc_49EF61:				; CODE XREF: .text:0049EF5Bj
		mov	ecx, 1

loc_49EF66:				; CODE XREF: .text:0049EF5Fj
		mov	[ebx-20Ah], ecx
		xor	eax, eax
		mov	[ebx-21Ah], eax
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EF7F:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		cmp	dword ptr [ebx-20Ah], 0	; jumptable 0049D976 case 85
		jnz	short loc_49EF92
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_49EF92
		xor	edx, edx
		jmp	short loc_49EF97
; ---------------------------------------------------------------------------

loc_49EF92:				; CODE XREF: .text:0049EF86j
					; .text:0049EF8Cj
		mov	edx, 1

loc_49EF97:				; CODE XREF: .text:0049EF90j
		mov	[ebx-20Ah], edx
		xor	ecx, ecx
		mov	[ebx-21Ah], ecx
		sub	ebx, 21Ah
		jmp	loc_49D963
; ---------------------------------------------------------------------------

loc_49EFB0:				; CODE XREF: .text:0049D976j
					; DATA XREF: .text:off_49D97Do
		mov	eax, [ebp+10h]	; jumptable 0049D976 case 91
		mov	edx, [eax]
		mov	[ebx+8], edx
		jmp	short loc_49EFF0
; ---------------------------------------------------------------------------

loc_49EFBA:				; CODE XREF: .text:0049D970j
					; .text:0049D976j
					; DATA XREF: ...
		push	offset aErrorInPrecomp ; jumptable 0049D976 default case
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_49EFD7:				; CODE XREF: .text:0049DB5Ej
					; .text:0049DBA3j ...
		xor	eax, eax
		xor	edx, edx
		mov	[esi+8], eax
		mov	[esi], eax
		mov	[esi+4], edx
		call	loc_411014
		or	eax, 0FFFFFFFFh
		jmp	loc_49F5F1
; ---------------------------------------------------------------------------

loc_49EFF0:				; CODE XREF: .text:0049EFB8j
		call	loc_411014
		cmp	dword ptr [ebp-1F88h], 0Ah
		jz	short loc_49F012
		push	1Ah		; n
		lea	edx, [ebp-1F90h]
		push	edx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_49F025
; ---------------------------------------------------------------------------

loc_49F012:				; CODE XREF: .text:0049EFFCj
		push	esi
		mov	edi, esi
		lea	esi, [ebp-1F90h]
		mov	ecx, 86h
		rep movsd
		movsw
		pop	esi

loc_49F025:				; CODE XREF: .text:0049F010j
		test	byte ptr [ebp+30h], 2
		jnz	loc_49F5EF
		cmp	dword ptr [esi+8], 0Ah
		jz	loc_49F5EF
		xor	edi, edi
		mov	eax, [esi+0Ch]
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 1
		jge	short loc_49F04E
		mov	dword ptr [ebp-10h], 1

loc_49F04E:				; CODE XREF: .text:0049F045j
		xor	edx, edx
		lea	ecx, [ebp-2150h]
		mov	[ebp-4], edx
		mov	[ebp-58h], ecx
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jge	loc_49F5EF

loc_49F068:				; CODE XREF: .text:0049F5E9j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_49F08A
		push	offset asc_54E52C ; ", "
		mov	edx, 100h
		sub	edx, edi
		push	edx		; n
		lea	ecx, [esi+edi*2+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_49F08A:				; CODE XREF: .text:0049F06Cj
		mov	eax, [esi+8]
		cmp	eax, 8
		jg	short loc_49F0B0
		jz	loc_49F3AC
		sub	eax, 1
		jb	short loc_49F0CE
		sub	eax, 2
		jz	short loc_49F0F5
		sub	eax, 3
		jz	loc_49F2CA
		jmp	loc_49F5C0
; ---------------------------------------------------------------------------

loc_49F0B0:				; CODE XREF: .text:0049F090j
		sub	eax, 9
		jz	loc_49F4B2
		dec	eax
		jz	loc_49F5DC
		sub	eax, 19h
		jz	loc_49F245
		jmp	loc_49F5C0
; ---------------------------------------------------------------------------

loc_49F0CE:				; CODE XREF: .text:0049F09Bj
		push	offset aInvalidExpre_0 ; "Invalid expression"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [esi+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F0F5:				; CODE XREF: .text:0049F0A0j
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_49F100
		mov	ebx, [esi+10h]
		jmp	short loc_49F105
; ---------------------------------------------------------------------------

loc_49F100:				; CODE XREF: .text:0049F0F9j
		mov	eax, [ebp-58h]
		mov	ebx, [eax]

loc_49F105:				; CODE XREF: .text:0049F0FEj
		push	ebx		; u
		lea	eax, [ebp-458h]
		push	eax		; s
		call	HexprintW
		add	esp, 8
		lea	edx, [ebp-458h]
		mov	ecx, 100h
		lea	eax, [esi+edi*2+1Ah]
		sub	ecx, edi
		push	edx		; src
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		cmp	dword ptr [ebp-10h], 1
		jnz	loc_49F5DC
		mov	word ptr [ebp-658h], 0
		lea	edx, [ebp-658h]
		lea	ecx, [ebp-458h]
		push	edx		; comment
		push	100h		; nsymb
		push	ecx		; symb
		push	0CF0640Bh	; mode
		push	0		; amod
		push	ebx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	[ebp-8], eax
		cmp	word ptr [ebp-658h], 0
		jz	short loc_49F1B5
		push	(offset	aInvalidFloat_1+40h) ; src
		mov	eax, 100h
		sub	eax, edi
		push	eax		; n
		lea	edx, [esi+edi*2+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		lea	ecx, [ebp-658h]
		mov	eax, 100h
		sub	eax, edi
		push	ecx		; src
		push	eax		; n
		lea	edx, [esi+edi*2+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F1B5:				; CODE XREF: .text:0049F174j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_49F1FA
		push	(offset	aInvalidFloat_1+40h) ; src
		mov	ecx, 100h
		sub	ecx, edi
		push	ecx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		lea	edx, [ebp-458h]
		mov	ecx, 100h
		sub	ecx, edi
		push	edx		; src
		push	ecx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F1FA:				; CODE XREF: .text:0049F1B9j
		cmp	dword ptr [ebp-8], 0
		jnz	loc_49F5DC
		cmp	ebx, 0Ah
		jb	loc_49F5DC
		push	ebx
		push	offset aU_	; " (%u.)"
		lea	edx, [ebp-458h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-458h]
		mov	eax, 100h
		lea	edx, [esi+edi*2+1Ah]
		sub	eax, edi
		push	ecx		; src
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F245:				; CODE XREF: .text:0049F0C3j
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_49F250
		mov	ebx, [esi+10h]
		jmp	short loc_49F255
; ---------------------------------------------------------------------------

loc_49F250:				; CODE XREF: .text:0049F249j
		mov	eax, [ebp-58h]
		mov	ebx, [eax]

loc_49F255:				; CODE XREF: .text:0049F24Ej
		push	ebx		; u
		lea	eax, [ebp-458h]
		push	eax		; s
		call	HexprintW
		add	esp, 8
		lea	edx, [ebp-458h]
		mov	ecx, 100h
		lea	eax, [esi+edi*2+1Ah]
		sub	ecx, edi
		push	edx		; src
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	eax, ebx
		test	eax, eax
		jl	short loc_49F292
		cmp	eax, 0Ah
		jl	loc_49F5DC

loc_49F292:				; CODE XREF: .text:0049F287j
		push	eax
		push	offset aLi__2	; " (%li.)"
		lea	edx, [ebp-458h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-458h]
		mov	eax, 100h
		lea	edx, [esi+edi*2+1Ah]
		sub	eax, edi
		push	ecx		; src
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F2CA:				; CODE XREF: .text:0049F0A5j
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_49F2E6
		mov	ecx, [esi+10h]
		mov	[ebp-2Ch], ecx
		mov	ecx, [esi+14h]
		mov	[ebp-28h], ecx
		mov	cx, [esi+18h]
		mov	[ebp-24h], cx
		jmp	short loc_49F2FC
; ---------------------------------------------------------------------------

loc_49F2E6:				; CODE XREF: .text:0049F2CEj
		mov	eax, [ebp-58h]
		mov	edx, [eax]
		mov	[ebp-2Ch], edx
		mov	edx, [eax+4]
		mov	[ebp-28h], edx
		mov	dx, [eax+8]
		mov	[ebp-24h], dx

loc_49F2FC:				; CODE XREF: .text:0049F2E4j
		mov	cx, [ebp-24h]
		lea	eax, [ebp-458h]
		push	ecx
		push	dword ptr [ebp-28h]
		push	dword ptr [ebp-2Ch] ; ext
		push	eax		; s
		call	Printfloat10
		add	esp, 10h
		lea	edx, [ebp-458h]
		mov	ecx, 100h
		lea	eax, [esi+edi*2+1Ah]
		sub	ecx, edi
		push	edx		; src
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-2Ch]
		lea	ecx, [ebp-458h]
		add	edi, eax
		push	0Ah		; size
		push	edx		; data
		push	ecx		; s
		call	Nameoffloat
		add	esp, 0Ch
		test	eax, eax
		jle	loc_49F5DC
		push	offset asc_54E576 ; " ("
		mov	eax, 100h
		sub	eax, edi
		push	eax		; n
		lea	edx, [esi+edi*2+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		lea	ecx, [ebp-458h]
		mov	eax, 100h
		sub	eax, edi
		push	ecx		; src
		push	eax		; n
		lea	edx, [esi+edi*2+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	ecx, 100h
		sub	ecx, edi
		push	(offset	aU_+0Ah) ; src
		push	ecx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F3AC:				; CODE XREF: .text:0049F092j
		cmp	dword ptr [ebp-4], 0
		jg	loc_49F5DC
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_49F420
		mov	eax, [esi+10h]
		cmp	eax, [ebp+1Ch]
		jb	short loc_49F3CE
		mov	edx, [ebp+1Ch]
		add	edx, [ebp+20h]
		cmp	eax, edx
		jb	short loc_49F3EF

loc_49F3CE:				; CODE XREF: .text:0049F3C2j
		push	$CTW0("???")	; "???"
		mov	ecx, 100h
		sub	ecx, edi
		push	ecx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F3EF:				; CODE XREF: .text:0049F3CCj
		mov	edx, 100h
		lea	ecx, [esi+edi*2+1Ah]
		sub	edx, edi
		push	edx		; nw
		push	ecx		; w
		mov	eax, [ebp+1Ch]
		mov	ebx, [esi+10h]
		add	eax, [ebp+20h]
		sub	eax, ebx
		push	eax		; nt
		mov	eax, [ebp+18h]
		add	eax, ebx
		sub	eax, [ebp+1Ch]
		push	eax		; t
		call	Utftounicode
		add	esp, 10h
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F420:				; CODE XREF: .text:0049F3BAj
		test	byte ptr [ebp+30h], 4
		jz	short loc_49F447
		push	$CTW0("???")	; "???"
		mov	edx, 100h
		sub	edx, edi
		push	edx		; n
		lea	ecx, [esi+edi*2+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F447:				; CODE XREF: .text:0049F424j
		push	5		; mode
		push	200h		; size
		mov	eax, [esi+10h]
		push	eax		; _addr
		lea	edx, [ebp-258h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_49F48B
		push	$CTW0("???")	; "???"
		mov	ecx, 100h
		sub	ecx, edi
		push	ecx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F48B:				; CODE XREF: .text:0049F468j
		mov	edx, 100h
		lea	ecx, [esi+edi*2+1Ah]
		sub	edx, edi
		push	edx		; nw
		push	ecx		; w
		mov	eax, [ebp-8]
		lea	edx, [ebp-258h]
		push	eax		; nt
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F4B2:				; CODE XREF: .text:0049F0B3j
		cmp	dword ptr [ebp-4], 0
		jg	loc_49F5DC
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_49F531
		mov	eax, [esi+10h]
		cmp	eax, [ebp+1Ch]
		jb	short loc_49F4D7
		add	eax, 2
		mov	edx, [ebp+1Ch]
		add	edx, [ebp+20h]
		cmp	eax, edx
		jbe	short loc_49F4F8

loc_49F4D7:				; CODE XREF: .text:0049F4C8j
		push	$CTW0("???")	; "???"
		mov	ecx, 100h
		sub	ecx, edi
		push	ecx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F4F8:				; CODE XREF: .text:0049F4D5j
		mov	ebx, [ebp+1Ch]
		mov	eax, 100h
		add	ebx, [ebp+20h]
		sub	eax, edi
		sub	ebx, [esi+10h]
		dec	eax
		shr	ebx, 1
		cmp	eax, ebx
		jge	short loc_49F511
		mov	ebx, eax

loc_49F511:				; CODE XREF: .text:0049F50Dj
		mov	eax, [ebp+18h]
		add	eax, [esi+10h]
		sub	eax, [ebp+1Ch]
		push	eax		; src
		inc	ebx
		push	ebx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F531:				; CODE XREF: .text:0049F4C0j
		test	byte ptr [ebp+30h], 4
		jz	short loc_49F558
		push	$CTW0("???")	; "???"
		mov	edx, 100h
		sub	edx, edi
		push	edx		; n
		lea	ecx, [esi+edi*2+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F558:				; CODE XREF: .text:0049F535j
		push	5		; mode
		push	200h		; size
		mov	eax, [esi+10h]
		push	eax		; _addr
		lea	edx, [ebp-258h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		shr	ebx, 1
		test	ebx, ebx
		jnz	short loc_49F598
		push	$CTW0("???")	; "???"
		mov	eax, 100h
		sub	eax, edi
		push	eax		; n
		lea	edx, [esi+edi*2+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F598:				; CODE XREF: .text:0049F578j
		mov	eax, 100h
		sub	eax, edi
		dec	eax
		cmp	eax, ebx
		jge	short loc_49F5A6
		mov	ebx, eax

loc_49F5A6:				; CODE XREF: .text:0049F5A2j
		lea	eax, [ebp-258h]
		push	eax		; src
		inc	ebx
		push	ebx		; n
		lea	eax, [esi+edi*2+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_49F5DC
; ---------------------------------------------------------------------------

loc_49F5C0:				; CODE XREF: .text:0049F0ABj
					; .text:0049F0C9j
		push	$CTW0("???")	; "???"
		mov	edx, 100h
		sub	edx, edi
		push	edx		; n
		lea	ecx, [esi+edi*2+1Ah]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_49F5DC:				; CODE XREF: .text:0049F0BAj
					; .text:0049F0F0j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-58h], 0Eh
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jl	loc_49F068

loc_49F5EF:				; CODE XREF: .text:0049F029j
					; .text:0049F033j ...
		xor	eax, eax

loc_49F5F1:				; CODE XREF: .text:0049EFEBj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
flt_49F5F8	dd 0.0			; DATA XREF: .text:0049E0DEr
					; .text:0049E9BBr
; ---------------------------------------------------------------------------
; Exported entry 318. _Expression
; Exported entry 493. Expression

; size_t __cdecl Expression(t_result *result, wchar_t *expression, uchar *data,	ulong base, ulong size,	ulong threadid,	ulong a, ulong b, ulong	mode)
		public Expression
Expression:				; CODE XREF: .text:0042B258p
					; .text:0042B330p ...
		push	ebp		; _Expression
		mov	ebp, esp
		add	esp, 0FFFFFF00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+28h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_49F61C
		xor	eax, eax
		jmp	loc_49F6EE
; ---------------------------------------------------------------------------

loc_49F61C:				; CODE XREF: .text:0049F613j
		push	21Ah		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch
		test	esi, esi
		jz	short loc_49F636
		cmp	word ptr [esi],	0
		jnz	short loc_49F661

loc_49F636:				; CODE XREF: .text:0049F62Ej
		push	offset aNoExpression ; "No expression"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebx+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebx+8], ecx
		mov	[ebx], ecx
		xor	eax, eax
		jmp	loc_49F6EE
; ---------------------------------------------------------------------------

loc_49F661:				; CODE XREF: .text:0049F634j
		test	edi, 8
		jz	short loc_49F691
		push	offset aMultipleExpres ; "Multiple expressions are not allowed"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebx+1Ah]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebx+8], eax
		mov	[ebx], eax
		xor	eax, eax
		jmp	short loc_49F6EE
; ---------------------------------------------------------------------------

loc_49F691:				; CODE XREF: .text:0049F667j
		push	edi		; mode
		lea	edx, [ebx+1Ah]
		push	edx		; err
		push	0		; explen
		push	100h		; nexpr
		lea	ecx, [ebp-100h]
		push	ecx		; cexpr
		push	esi		; expression
		call	Cexpression
		add	esp, 18h
		mov	esi, eax
		cmp	word ptr [ebx+1Ah], 0
		jz	short loc_49F6BF
		xor	eax, eax
		mov	[ebx+8], eax
		mov	[ebx], eax
		jmp	short loc_49F6EC
; ---------------------------------------------------------------------------

loc_49F6BF:				; CODE XREF: .text:0049F6B4j
		push	edi		; mode
		mov	edx, [ebp+24h]
		push	edx		; b
		mov	ecx, [ebp+20h]
		push	ecx		; a
		mov	eax, [ebp+1Ch]
		push	eax		; threadid
		mov	edx, [ebp+18h]
		push	edx		; size
		lea	edx, [ebp-100h]
		mov	ecx, [ebp+14h]
		push	ecx		; base
		mov	eax, [ebp+10h]
		push	eax		; data
		push	0		; index
		push	edx		; cexpr
		push	0		; expl
		push	ebx		; result
		call	Eexpression
		add	esp, 2Ch

loc_49F6EC:				; CODE XREF: .text:0049F6BDj
		mov	eax, esi

loc_49F6EE:				; CODE XREF: .text:0049F617j
					; .text:0049F65Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 319. _Fastexpression
; Exported entry 494. Fastexpression

; int __cdecl Fastexpression(t_result *result, ulong _addr, int type, ulong threadid)
		public Fastexpression
Fastexpression:				; CODE XREF: .text:0044CB12p
					; .text:00458885p ...
		push	ebp		; _Fastexpression
		mov	ebp, esp
		add	esp, 0FFFFF9FCh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_49F713
		or	eax, 0FFFFFFFFh
		jmp	loc_49F83A
; ---------------------------------------------------------------------------

loc_49F713:				; CODE XREF: .text:0049F709j
		push	400h		; datasize
		lea	edx, [ebp-404h]
		push	edx		; data
		mov	ecx, [ebp+10h]
		push	ecx		; type
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Finddata
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jbe	short loc_49F749
		push	edi		; n
		lea	eax, [ebp-404h]
		push	eax		; src
		call	StrlenA
		add	esp, 8
		mov	ebx, eax
		jmp	short loc_49F74B
; ---------------------------------------------------------------------------

loc_49F749:				; CODE XREF: .text:0049F733j
		xor	ebx, ebx

loc_49F74B:				; CODE XREF: .text:0049F747j
		test	edi, edi
		jz	short loc_49F753
		test	ebx, ebx
		jnz	short loc_49F77F

loc_49F753:				; CODE XREF: .text:0049F74Dj
		push	offset aNoExpression ; "No expression"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [esi+1Ah]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	edx, edx
		mov	[esi+8], edx
		mov	[esi], edx
		or	eax, 0FFFFFFFFh
		jmp	loc_49F83A
; ---------------------------------------------------------------------------

loc_49F77F:				; CODE XREF: .text:0049F751j
		lea	ecx, [ebx+1]
		cmp	edi, ecx
		jbe	short loc_49F793
		cmp	byte ptr [ebp+ebx-404h], 0
		jnz	short loc_49F793
		inc	ebx
		jmp	short loc_49F812
; ---------------------------------------------------------------------------

loc_49F793:				; CODE XREF: .text:0049F784j
					; .text:0049F78Ej
		push	100h		; nw
		lea	eax, [ebp-604h]
		push	eax		; w
		push	ebx		; nt
		lea	edx, [ebp-404h]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		lea	ecx, [esi+1Ah]
		mov	byte ptr [ebp+ebx-404h], 0
		push	1		; mode
		inc	ebx
		push	ecx		; err
		lea	eax, [ebp-4]
		mov	edx, 400h
		push	eax		; explen
		sub	edx, ebx
		lea	ecx, [ebp-404h]
		add	ecx, ebx
		push	edx		; nexpr
		push	ecx		; cexpr
		lea	eax, [ebp-604h]
		push	eax		; expression
		call	Cexpression
		add	esp, 18h
		mov	edi, [ebp-4]
		add	edi, ebx
		cmp	word ptr [esi+1Ah], 0
		jz	short loc_49F7FA
		xor	eax, eax
		mov	[esi+8], eax
		mov	[esi], eax
		or	eax, 0FFFFFFFFh
		jmp	short loc_49F83A
; ---------------------------------------------------------------------------

loc_49F7FA:				; CODE XREF: .text:0049F7ECj
		push	edi		; datasize
		lea	edx, [ebp-404h]
		push	edx		; data
		mov	ecx, [ebp+10h]
		push	ecx		; type
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Insertdata
		add	esp, 10h

loc_49F812:				; CODE XREF: .text:0049F791j
		push	2		; mode
		push	0		; b
		push	0		; a
		lea	ecx, [ebp-404h]
		mov	edx, [ebp+14h]
		add	ecx, ebx
		push	edx		; threadid
		push	0		; size
		push	0		; base
		push	0		; data
		push	0		; index
		push	ecx		; cexpr
		push	0		; expl
		push	esi		; result
		call	Eexpression
		add	esp, 2Ch
		xor	eax, eax

loc_49F83A:				; CODE XREF: .text:0049F70Ej
					; .text:0049F77Aj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
