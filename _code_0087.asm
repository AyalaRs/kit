.code

; SORTFUNC loc_4A7AF4
loc_4A7AF4:				; DATA XREF: .text:004A0E27o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF3DCh
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	offset stru_5FA658 ; pf
		call	Getactivetab
		pop	ecx
		test	eax, eax
		jnz	short loc_4A7B1E
		xor	eax, eax
		jmp	loc_4A7D81
; ---------------------------------------------------------------------------

loc_4A7B1E:				; CODE XREF: .text:004A7B15j
		cmp	dword ptr [eax+88h], 6
		jnz	loc_4A7BFE
		cmp	dword ptr [ebp+10h], 2
		jz	short loc_4A7B3B
		cmp	dword ptr [ebp+10h], 3
		jnz	loc_4A7BFE

loc_4A7B3B:				; CODE XREF: .text:004A7B2Fj
		push	410h		; datasize
		lea	edx, [ebp-814h]
		push	edx		; data
		push	40h		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4A7B68
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-80Ch], eax
		mov	[ebp-808h], edx

loc_4A7B68:				; CODE XREF: .text:004A7B56j
		push	410h		; datasize
		lea	ecx, [ebp-0C24h]
		push	ecx		; data
		push	40h		; type
		mov	eax, [edi]
		push	eax		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4A7B95
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-0C1Ch], edx
		mov	[ebp-0C18h], ecx

loc_4A7B95:				; CODE XREF: .text:004A7B83j
		cmp	dword ptr [ebp+10h], 2
		jnz	short loc_4A7BD4
		mov	edx, [ebp-0C1Ch]
		mov	eax, [ebp-80Ch]
		and	eax, 70h
		and	edx, 70h
		cmp	edx, eax
		jnb	short loc_4A7BB9
		or	ebx, 0FFFFFFFFh
		jmp	loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7BB9:				; CODE XREF: .text:004A7BAFj
		mov	edx, [ebp-0C1Ch]
		and	edx, 70h
		cmp	eax, edx
		jnb	loc_4A7D65
		mov	ebx, 1
		jmp	loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7BD4:				; CODE XREF: .text:004A7B99j
		mov	edx, [ebp-0C18h]
		mov	eax, [ebp-808h]
		cmp	edx, eax
		jge	short loc_4A7BEC
		or	ebx, 0FFFFFFFFh
		jmp	loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7BEC:				; CODE XREF: .text:004A7BE2j
		cmp	edx, eax
		jle	loc_4A7D65
		mov	ebx, 1
		jmp	loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7BFE:				; CODE XREF: .text:004A7B25j
					; .text:004A7B35j
		cmp	dword ptr [eax+88h], 8
		jnz	loc_4A7D1E
		cmp	dword ptr [ebp+10h], 2
		jnz	short loc_4A7C35
		mov	edx, [edi+0Ch]
		mov	eax, [esi+0Ch]
		cmp	edx, eax
		jbe	short loc_4A7C23
		or	ebx, 0FFFFFFFFh
		jmp	loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7C23:				; CODE XREF: .text:004A7C19j
		cmp	edx, eax
		jnb	loc_4A7D65
		mov	ebx, 1
		jmp	loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7C35:				; CODE XREF: .text:004A7C0Fj
		cmp	dword ptr [ebp+10h], 3
		jnz	loc_4A7D65
		push	0		; comment
		push	100h		; nsymb
		lea	eax, [ebp-204h]
		push	eax		; symb
		push	400h		; mode
		mov	edx, [esi]
		push	edx		; amod
		mov	ecx, [esi+0Ch]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	eax, [ebp-404h]
		push	0		; comment
		push	100h		; nsymb
		push	eax		; symb
		push	400h		; mode
		mov	edx, [edi]
		push	edx		; amod
		mov	ecx, [edi+0Ch]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		push	100h		; maxlen
		lea	eax, [ebp-404h]
		push	eax		; s2
		lea	edx, [ebp-204h]
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_4A7D65
		mov	eax, [esi+0Ch]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-4], eax
		mov	edx, [edi+0Ch]
		push	edx		; _addr
		call	Findmodule
		cmp	dword ptr [ebp-4], 0
		pop	ecx
		jz	short loc_4A7CE2
		test	eax, eax
		jz	short loc_4A7CE2
		push	20h		; maxlen
		add	eax, 0Ch
		push	eax		; s2
		mov	edx, [ebp-4]
		add	edx, 0Ch
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4A7D00
; ---------------------------------------------------------------------------

loc_4A7CE2:				; CODE XREF: .text:004A7CC3j
					; .text:004A7CC7j
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4A7CF1
		test	eax, eax
		jz	short loc_4A7CF1
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A7D00
; ---------------------------------------------------------------------------

loc_4A7CF1:				; CODE XREF: .text:004A7CE6j
					; .text:004A7CEAj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4A7D00
		test	eax, eax
		jnz	short loc_4A7D00
		mov	ebx, 1

loc_4A7D00:				; CODE XREF: .text:004A7CE0j
					; .text:004A7CEFj ...
		test	ebx, ebx
		jnz	short loc_4A7D65
		mov	edx, [edi+0Ch]
		mov	eax, [esi+0Ch]
		cmp	edx, eax
		jbe	short loc_4A7D13
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7D13:				; CODE XREF: .text:004A7D0Cj
		cmp	edx, eax
		jnb	short loc_4A7D65
		mov	ebx, 1
		jmp	short loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7D1E:				; CODE XREF: .text:004A7C05j
		cmp	dword ptr [eax+88h], 0Ah
		jnz	short loc_4A7D65
		cmp	dword ptr [ebp+10h], 2
		jnz	short loc_4A7D47
		mov	edx, [edi+0Ch]
		mov	eax, [esi+0Ch]
		cmp	edx, eax
		jnb	short loc_4A7D3C
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7D3C:				; CODE XREF: .text:004A7D35j
		cmp	edx, eax
		jbe	short loc_4A7D65
		mov	ebx, 1
		jmp	short loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7D47:				; CODE XREF: .text:004A7D2Bj
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4A7D65
		mov	edx, [edi+10h]
		mov	eax, [esi+10h]
		cmp	edx, eax
		jnb	short loc_4A7D5C
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A7D65
; ---------------------------------------------------------------------------

loc_4A7D5C:				; CODE XREF: .text:004A7D55j
		cmp	edx, eax
		jbe	short loc_4A7D65
		mov	ebx, 1

loc_4A7D65:				; CODE XREF: .text:004A7BB4j
					; .text:004A7BC4j ...
		test	ebx, ebx
		jnz	short loc_4A7D7F
		mov	edx, [edi]
		mov	eax, [esi]
		cmp	edx, eax
		jbe	short loc_4A7D76
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A7D7F
; ---------------------------------------------------------------------------

loc_4A7D76:				; CODE XREF: .text:004A7D6Fj
		cmp	edx, eax
		jnb	short loc_4A7D7F
		mov	ebx, 1

loc_4A7D7F:				; CODE XREF: .text:004A7D67j
					; .text:004A7D74j ...
		mov	eax, ebx

loc_4A7D81:				; CODE XREF: .text:004A7B19j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; TABFUNC loc_4A7D88
loc_4A7D88:				; DATA XREF: .text:004A87CFo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	edi, [ebp+8]
		mov	eax, [ebp+10h]
		sub	eax, 102h
		jz	short loc_4A7DBD
		sub	eax, 36Fh
		jz	loc_4A7F95
		sub	eax, 4
		jz	loc_4A7FB3
		jmp	loc_4A7FBE
; ---------------------------------------------------------------------------

loc_4A7DBD:				; CODE XREF: .text:004A7DA2j
		cmp	dword ptr [edi+88h], 8
		jnz	loc_4A7FBE
		mov	dword ptr [ebp-8], offset word_5F6D98
		push	100h		; n
		mov	edx, [ebp-8]
		push	edx		; src
		call	StrlenW
		add	esp, 8
		mov	esi, eax
		cmp	ebx, 1Bh
		jnz	short loc_4A7DF8
		xor	eax, eax
		mov	edx, [ebp-8]
		mov	esi, eax
		mov	word ptr [edx+eax*2], 0
		jmp	short loc_4A7E63
; ---------------------------------------------------------------------------

loc_4A7DF8:				; CODE XREF: .text:004A7DE7j
		cmp	ebx, 8
		jnz	short loc_4A7E0D
		test	esi, esi
		jle	short loc_4A7E0D
		dec	esi
		mov	ecx, [ebp-8]
		mov	word ptr [ecx+esi*2], 0
		jmp	short loc_4A7E63
; ---------------------------------------------------------------------------

loc_4A7E0D:				; CODE XREF: .text:004A7DFBj
					; .text:004A7DFFj
		cmp	ebx, 9
		jz	loc_4A7FBE
		cmp	ebx, 0Ah
		jz	loc_4A7FBE
		cmp	ebx, 0Dh
		jz	loc_4A7FBE
		push	ebx		; c
		call	_iswprint
		pop	ecx
		test	eax, eax
		jz	loc_4A7FBE
		cmp	esi, 0FFh
		jge	loc_4A7FBE
		mov	[ebp-0Ah], bx
		mov	ax, [ebp-0Ah]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		mov	edx, [ebp-8]
		mov	[edx+esi*2], ax
		inc	esi
		mov	ecx, [ebp-8]
		mov	word ptr [ecx+esi*2], 0

loc_4A7E63:				; CODE XREF: .text:004A7DF6j
					; .text:004A7E0Bj
		xor	eax, eax
		test	esi, esi
		mov	[ebp-4], eax
		jle	short loc_4A7EE7
		xor	ebx, ebx
		jmp	short loc_4A7EC0
; ---------------------------------------------------------------------------

loc_4A7E70:				; CODE XREF: .text:004A7EC3j
		push	ebx		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_4A7EC5
		push	0		; comment
		push	100h		; nsymb
		lea	edx, [ebp-20Ch]
		push	edx		; symb
		push	400h		; mode
		mov	ecx, [eax]
		push	ecx		; amod
		mov	eax, [eax+0Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		cmp	esi, eax
		jg	short loc_4A7EBF
		push	esi		; maxlen
		mov	edx, [ebp-8]
		push	edx		; s2
		lea	ecx, [ebp-20Ch]
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A7EC5

loc_4A7EBF:				; CODE XREF: .text:004A7EA5j
		inc	ebx

loc_4A7EC0:				; CODE XREF: .text:004A7E6Ej
		cmp	ebx, [edi+44h]
		jl	short loc_4A7E70

loc_4A7EC5:				; CODE XREF: .text:004A7E7Fj
					; .text:004A7EBDj
		cmp	ebx, [edi+44h]
		jge	short loc_4A7ED6
		push	ebx		; selected
		push	edi		; pt
		call	Settableselection
		add	esp, 8
		jmp	short loc_4A7EE7
; ---------------------------------------------------------------------------

loc_4A7ED6:				; CODE XREF: .text:004A7EC8j
		dec	esi
		mov	eax, [ebp-8]
		mov	word ptr [eax+esi*2], 0
		mov	dword ptr [ebp-4], 1

loc_4A7EE7:				; CODE XREF: .text:004A7E6Aj
					; .text:004A7ED4j
		cmp	stru_5FA658.hstatus, 0
		jz	loc_4A7F8E
		test	esi, esi
		jnz	short loc_4A7F09
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4A7F09
		mov	word ptr [ebp-20Ch], 0
		jmp	short loc_4A7F7B
; ---------------------------------------------------------------------------

loc_4A7F09:				; CODE XREF: .text:004A7EF6j
					; .text:004A7EFCj
		push	offset aSearch	; "Search - "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-20Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp-8]
		mov	ecx, ebx
		push	eax		; src
		mov	edx, 100h
		sub	edx, ebx
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4A7F7B
		push	offset aNoMatch	; " - No match"
		call	_T
		mov	edx, 100h
		pop	ecx
		sub	edx, ebx
		lea	ecx, [ebp-20Ch]
		push	eax		; src
		add	ebx, ebx
		add	ebx, ecx
		push	edx		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A7F7B:				; CODE XREF: .text:004A7F07j
					; .text:004A7F52j
		lea	eax, [ebp-20Ch]
		push	eax		; lpString
		mov	edx, stru_5FA658.hstatus
		push	edx		; hWnd
		call	SetWindowTextW

loc_4A7F8E:				; CODE XREF: .text:004A7EEEj
		mov	eax, 1
		jmp	short loc_4A7FC0
; ---------------------------------------------------------------------------

loc_4A7F95:				; CODE XREF: .text:004A7DA9j
		push	0		; index
		push	offset loc_4A1738 ; menufunc
		mov	edx, [edi+218h]
		push	edx		; pm
		push	edi		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		jmp	short loc_4A7FC0
; ---------------------------------------------------------------------------

loc_4A7FB3:				; CODE XREF: .text:004A7DB2j
		push	0
		push	ebx
		call	loc_4A1060
		add	esp, 8

loc_4A7FBE:				; CODE XREF: .text:004A7DB8j
					; .text:004A7DC4j ...
		xor	eax, eax

loc_4A7FC0:				; CODE XREF: .text:004A7F93j
					; .text:004A7FB1j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; DRAWFUNC loc_4A7FC8
loc_4A7FC8:				; DATA XREF: .text:004A87E9o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF71Ch
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		mov	edi, [ebp+18h]
		mov	edx, eax
		mov	esi, [ebp+14h]
		add	edx, 4		; switch 6 cases
		cmp	edx, 5
		ja	loc_4A81BD	; jumptable 004A7FF4 default case
		jmp	ds:off_4A7FFB[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4A7FFB	dd offset loc_4A8013	; DATA XREF: .text:004A7FF4r
		dd offset loc_4A801D	; jump table for switch	statement
		dd offset loc_4A8024
		dd offset loc_4A802B
		dd offset loc_4A80F4
		dd offset loc_4A818C
; ---------------------------------------------------------------------------

loc_4A8013:				; CODE XREF: .text:004A7FF4j
					; DATA XREF: .text:off_4A7FFBo
		mov	eax, 1CE4h	; jumptable 004A7FF4 case -4
		jmp	loc_4A8754
; ---------------------------------------------------------------------------

loc_4A801D:				; CODE XREF: .text:004A7FF4j
					; DATA XREF: .text:off_4A7FFBo
		xor	eax, eax	; jumptable 004A7FF4 case -3
		jmp	loc_4A8754
; ---------------------------------------------------------------------------

loc_4A8024:				; CODE XREF: .text:004A7FF4j
					; DATA XREF: .text:off_4A7FFBo
		xor	eax, eax	; jumptable 004A7FF4 case -2
		jmp	loc_4A8754
; ---------------------------------------------------------------------------

loc_4A802B:				; CODE XREF: .text:004A7FF4j
					; DATA XREF: .text:off_4A7FFBo
		mov	eax, [esi+88h]	; jumptable 004A7FF4 case -1
		cmp	eax, 1
		jz	short loc_4A8067
		cmp	eax, 2
		jz	short loc_4A8067
		cmp	eax, 3
		jz	short loc_4A8067
		cmp	eax, 4
		jz	short loc_4A8067
		cmp	eax, 5
		jz	short loc_4A8067
		cmp	eax, 6
		jz	short loc_4A8067
		cmp	eax, 7
		jz	short loc_4A8067
		cmp	eax, 8
		jz	short loc_4A8067
		cmp	eax, 9
		jz	short loc_4A8067
		cmp	eax, 0Ah
		jnz	loc_4A80ED

loc_4A8067:				; CODE XREF: .text:004A8034j
					; .text:004A8039j ...
		push	5		; mode
		push	10h		; size
		mov	edx, [edi]
		push	edx		; _addr
		lea	ecx, [ebp-14h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4A808A
		mov	eax, [ebp+20h]
		xor	edx, edx
		mov	[eax+10h], edx
		jmp	short loc_4A80B2
; ---------------------------------------------------------------------------

loc_4A808A:				; CODE XREF: .text:004A807Ej
		push	0		; predict
		push	0		; reg
		push	15h		; mode
		mov	ecx, [ebp+20h]
		push	ecx		; da
		push	0		; psize
		mov	eax, [edi]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		lea	ecx, [ebp-14h]
		push	eax		; dec
		mov	edx, [edi]
		push	edx		; ip
		push	ebx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h

loc_4A80B2:				; CODE XREF: .text:004A8088j
		cmp	dword ptr [esi+88h], 6
		jz	short loc_4A80C8
		mov	eax, [ebp+20h]
		xor	edx, edx
		mov	[eax+1CE0h], edx
		jmp	short loc_4A80ED
; ---------------------------------------------------------------------------

loc_4A80C8:				; CODE XREF: .text:004A80B9j
		push	410h		; datasize
		mov	ecx, [ebp+20h]
		add	ecx, 18D0h
		push	ecx		; data
		push	40h		; type
		mov	eax, [edi]
		push	eax		; _addr
		call	Finddata
		add	esp, 10h
		mov	edx, [ebp+20h]
		mov	[edx+1CE0h], eax

loc_4A80ED:				; CODE XREF: .text:004A8061j
					; .text:004A80C6j
		xor	eax, eax
		jmp	loc_4A8754
; ---------------------------------------------------------------------------

loc_4A80F4:				; CODE XREF: .text:004A7FF4j
					; DATA XREF: .text:off_4A7FFBo
		mov	eax, dword_57DE54 ; jumptable 004A7FF4 case 0
		cmp	eax, 1
		jnz	short loc_4A8105
		mov	ebx, 2011h
		jmp	short loc_4A8116
; ---------------------------------------------------------------------------

loc_4A8105:				; CODE XREF: .text:004A80FCj
		cmp	eax, 2
		jnz	short loc_4A8111
		mov	ebx, 2012h
		jmp	short loc_4A8116
; ---------------------------------------------------------------------------

loc_4A8111:				; CODE XREF: .text:004A8108j
		mov	ebx, 2010h

loc_4A8116:				; CODE XREF: .text:004A8103j
					; .text:004A810Fj
		cmp	dword_57DE58, 0
		jz	short loc_4A8122
		or	ebx, 20h

loc_4A8122:				; CODE XREF: .text:004A811Dj
		push	0		; subaddr
		mov	eax, [edi]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A8167
		test	byte ptr [eax+9], 10h
		jz	short loc_4A8167
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_4A8151
		or	ebx, 800h
		jmp	short loc_4A8167
; ---------------------------------------------------------------------------

loc_4A8151:				; CODE XREF: .text:004A8147j
		test	edx, 40000h
		jz	short loc_4A8161
		or	ebx, 400h
		jmp	short loc_4A8167
; ---------------------------------------------------------------------------

loc_4A8161:				; CODE XREF: .text:004A8157j
		or	ebx, 200h

loc_4A8167:				; CODE XREF: .text:004A8136j
					; .text:004A813Cj ...
		push	ebx		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [edi]
		push	edx		; _addr
		mov	ecx, [ebp+8]
		push	ecx		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A818C:				; CODE XREF: .text:004A7FF4j
					; DATA XREF: .text:off_4A7FFBo
		mov	eax, [ebp+20h]	; jumptable 004A7FF4 case 1
		add	eax, 13CCh
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		test	byte ptr [edi+0Ah], 1
		jz	loc_4A8752
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 1
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A81BD:				; CODE XREF: .text:004A7FEEj
		cmp	eax, 2		; jumptable 004A7FF4 default case
		jnz	short loc_4A81EA
		cmp	dword ptr [esi+88h], 8
		jnz	short loc_4A81EA
		mov	eax, [edi+0Ch]
		test	eax, eax
		jz	loc_4A8752
		push	eax		; u
		mov	edx, [ebp+8]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A81EA:				; CODE XREF: .text:004A81C0j
					; .text:004A81C9j
		cmp	eax, 2
		jnz	loc_4A82A4
		cmp	dword ptr [esi+88h], 6
		jnz	loc_4A82A4
		mov	edx, [ebp+20h]
		cmp	dword ptr [edx+1CE0h], 0
		jle	loc_4A82A4
		mov	eax, [ebp+20h]
		test	byte ptr [eax+18D8h], 40h
		jz	short loc_4A8240
		push	offset aExceptions ; "Exceptions"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A8240:				; CODE XREF: .text:004A821Aj
		mov	eax, [ebp+20h]
		test	byte ptr [eax+18D8h], 20h
		jz	short loc_4A8270
		push	offset aMessages ; "Messages"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A8270:				; CODE XREF: .text:004A824Aj
		mov	eax, [ebp+20h]
		test	byte ptr [eax+18D8h], 10h
		jz	loc_4A8752
		push	offset aAscii_5	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A82A4:				; CODE XREF: .text:004A81EDj
					; .text:004A81FAj ...
		cmp	eax, 2
		jnz	short loc_4A8323
		cmp	dword ptr [esi+88h], 9
		jnz	short loc_4A8323
		mov	eax, [edi]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	loc_4A8752
		cmp	dword ptr [eax+60h], 0
		jz	loc_4A8752
		push	0		; predict
		push	0		; reg
		push	11h		; mode
		lea	ecx, [ebp-18E4h]
		push	ecx		; da
		push	0		; dec
		mov	edx, [edi]
		push	edx		; ip
		mov	ecx, [eax]
		add	ecx, [eax+4]
		sub	ecx, edx
		push	ecx		; cmdsize
		mov	ecx, [eax+60h]
		add	ecx, edx
		sub	ecx, [eax]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword ptr [ebp-18B8h], 0
		jnz	loc_4A8752
		lea	eax, [ebp-518h]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A8323:				; CODE XREF: .text:004A82A7j
					; .text:004A82B0j
		cmp	eax, 2
		jnz	short loc_4A8355
		cmp	dword ptr [esi+88h], 0Ah
		jnz	short loc_4A8355
		mov	eax, [edi+0Ch]
		test	eax, eax
		jbe	loc_4A8752
		push	eax
		push	offset aI__2	; "%i."
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A8355:				; CODE XREF: .text:004A8326j
					; .text:004A832Fj
		cmp	eax, 3
		jnz	loc_4A83E5
		cmp	dword ptr [esi+88h], 6
		jnz	short loc_4A83E5
		mov	edx, [ebp+20h]
		cmp	dword ptr [edx+1CE0h], 0
		jle	short loc_4A83E5
		mov	eax, [ebp+20h]
		test	byte ptr [eax+18D8h], 2
		jz	short loc_4A839C
		push	100h
		push	offset aI__3	; ">%i."
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A839C:				; CODE XREF: .text:004A837Dj
		mov	eax, [ebp+20h]
		mov	eax, [eax+18DCh]
		cmp	eax, 9
		jg	short loc_4A83C3
		push	eax
		push	offset aI_7	; "%i"
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A83C3:				; CODE XREF: .text:004A83A8j
		mov	eax, [ebp+20h]
		mov	edx, [eax+18DCh]
		push	edx
		push	offset aI__2	; "%i."
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A83E5:				; CODE XREF: .text:004A8358j
					; .text:004A8365j ...
		cmp	eax, 3
		jnz	loc_4A84B9
		cmp	dword ptr [esi+88h], 8
		jnz	loc_4A84B9
		mov	eax, [edi+0Ch]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4A844E
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	(offset	aConditionalB_8+30h) ; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	ebx		; n
		push	2		; c
		mov	ecx, [ebp+0Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_4A844E:				; CODE XREF: .text:004A8407j
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	0		; comment
		push	eax		; nsymb
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; symb
		push	400h		; mode
		mov	ecx, [edi]
		push	ecx		; amod
		mov	eax, [edi+0Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		push	edx		; n
		push	0		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, [ebp-4]
		mov	eax, [esi+7Ch]
		cmp	eax, 2
		jz	short loc_4A849B
		cmp	eax, 3
		jnz	short loc_4A84A4

loc_4A849B:				; CODE XREF: .text:004A8494j
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 100h

loc_4A84A4:				; CODE XREF: .text:004A8499j
		test	byte ptr [edi+0Ah], 1
		jz	loc_4A8752
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 1
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A84B9:				; CODE XREF: .text:004A83E8j
					; .text:004A83F5j
		cmp	eax, 3
		jnz	short loc_4A84EB
		cmp	dword ptr [esi+88h], 0Ah
		jnz	short loc_4A84EB
		mov	eax, [edi+10h]
		test	eax, eax
		jbe	loc_4A8752
		push	eax
		push	offset aI__2	; "%i."
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A84EB:				; CODE XREF: .text:004A84BCj
					; .text:004A84C5j
		cmp	eax, 4
		jnz	short loc_4A8525
		cmp	dword ptr [esi+88h], 6
		jnz	short loc_4A8525
		mov	edx, [ebp+20h]
		cmp	dword ptr [edx+1CE0h], 0
		jle	short loc_4A8525
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [ebp+20h]
		add	ecx, 18D0h
		push	ecx
		mov	eax, [edi]
		push	eax
		call	loc_4A7724
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4A8752
; ---------------------------------------------------------------------------

loc_4A8525:				; CODE XREF: .text:004A84EEj
					; .text:004A84F7j ...
		cmp	eax, 2
		jnz	short loc_4A854E
		mov	edx, [esi+88h]
		cmp	edx, 1
		jz	short loc_4A8587
		cmp	edx, 2
		jz	short loc_4A8587
		cmp	edx, 3
		jz	short loc_4A8587
		cmp	edx, 5
		jz	short loc_4A8587
		cmp	edx, 4
		jz	short loc_4A8587
		cmp	edx, 7
		jz	short loc_4A8587

loc_4A854E:				; CODE XREF: .text:004A8528j
		cmp	eax, 3
		jnz	short loc_4A855C
		cmp	dword ptr [esi+88h], 9
		jz	short loc_4A8587

loc_4A855C:				; CODE XREF: .text:004A8551j
		cmp	eax, 4
		jnz	short loc_4A8571
		mov	edx, [esi+88h]
		cmp	edx, 8
		jz	short loc_4A8587
		cmp	edx, 0Ah
		jz	short loc_4A8587

loc_4A8571:				; CODE XREF: .text:004A855Fj
		cmp	eax, 5
		jnz	loc_4A8752
		cmp	dword ptr [esi+88h], 6
		jnz	loc_4A8752

loc_4A8587:				; CODE XREF: .text:004A8533j
					; .text:004A8538j ...
		cmp	dword_5BE6D8, 0
		jz	short loc_4A85B5
		test	byte ptr [edi+0Ah], 1
		jz	short loc_4A85B5
		push	offset aOriginalSelect ; "Original selection"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4A85B5:				; CODE XREF: .text:004A858Ej
					; .text:004A8594j
		test	ebx, ebx
		jnz	short loc_4A85E1
		mov	eax, [edi+8]
		and	eax, 1020000h
		cmp	eax, 20000h
		jnz	short loc_4A85E1
		push	100h		; nsymb
		mov	edx, [ebp+8]
		push	edx		; symb
		push	0		; isstatic
		mov	ecx, [edi+0Ch]
		push	ecx		; _addr
		call	Isstring
		add	esp, 10h
		mov	ebx, eax

loc_4A85E1:				; CODE XREF: .text:004A85B7j
					; .text:004A85C6j
		test	ebx, ebx
		jnz	short loc_4A860C
		mov	eax, [edi+8]
		and	eax, 1020000h
		cmp	eax, 1020000h
		jnz	short loc_4A860C
		push	100h		; nsymb
		mov	edx, [ebp+8]
		push	edx		; symb
		push	2		; isstatic
		mov	ecx, [edi]
		push	ecx		; _addr
		call	Isstring
		add	esp, 10h
		mov	ebx, eax

loc_4A860C:				; CODE XREF: .text:004A85E3j
					; .text:004A85F2j
		test	ebx, ebx
		jnz	short loc_4A8636
		mov	eax, [edi+8]
		and	eax, 1080000h
		cmp	eax, 80000h
		jnz	short loc_4A8636
		push	100h		; nname
		mov	edx, [ebp+8]
		push	edx		; _name
		mov	ecx, [edi+0Ch]
		push	ecx		; _addr
		call	Isguid
		add	esp, 0Ch
		mov	ebx, eax

loc_4A8636:				; CODE XREF: .text:004A860Ej
					; .text:004A861Dj
		test	ebx, ebx
		jnz	short loc_4A865F
		mov	eax, [edi+8]
		and	eax, 1080000h
		cmp	eax, 1080000h
		jnz	short loc_4A865F
		push	100h		; nname
		mov	edx, [ebp+8]
		push	edx		; _name
		mov	ecx, [edi]
		push	ecx		; _addr
		call	Isguid
		add	esp, 0Ch
		mov	ebx, eax

loc_4A865F:				; CODE XREF: .text:004A8638j
					; .text:004A8647j
		test	ebx, ebx
		jnz	short loc_4A867B
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	30h		; type
		mov	edx, [edi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4A867B:				; CODE XREF: .text:004A8661j
		cmp	dword ptr [esi+88h], 0Ah
		jnz	short loc_4A86A2
		test	ebx, ebx
		jnz	short loc_4A86A2
		push	0		; argonly
		push	100h		; len
		mov	eax, [ebp+8]
		push	eax		; comment
		push	0		; acall
		mov	edx, [edi]
		push	edx		; _addr
		call	Getproccomment
		add	esp, 14h
		mov	ebx, eax

loc_4A86A2:				; CODE XREF: .text:004A8682j
					; .text:004A8686j
		mov	eax, [esi+88h]
		cmp	eax, 5
		jz	loc_4A873D
		cmp	eax, 3
		jz	loc_4A873D
		test	ebx, ebx
		jnz	short loc_4A86D6
		push	100h		; nname
		mov	edx, [ebp+8]
		push	edx		; _name
		push	37h		; type
		mov	ecx, [edi]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4A86D6:				; CODE XREF: .text:004A86BCj
		test	ebx, ebx
		jnz	short loc_4A86F2
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	32h		; type
		mov	edx, [edi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4A86F2:				; CODE XREF: .text:004A86D8j
		test	ebx, ebx
		jnz	short loc_4A8721
		mov	eax, [ebp+20h]
		mov	edx, [eax+14h]
		and	edx, 1Fh
		cmp	edx, 0Ch
		jz	short loc_4A8721
		mov	ecx, [ebp+20h]
		add	ecx, 16D0h
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4A8721:				; CODE XREF: .text:004A86F4j
					; .text:004A8702j
		test	ebx, ebx
		jnz	short loc_4A873D
		push	100h		; len
		mov	eax, [ebp+8]
		push	eax		; comment
		mov	edx, [edi]
		push	edx		; _addr
		push	0		; pmod
		call	Getanalysercomment
		add	esp, 10h
		mov	ebx, eax

loc_4A873D:				; CODE XREF: .text:004A86ABj
					; .text:004A86B4j ...
		test	byte ptr [edi+0Ah], 1
		jz	short loc_4A8749
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 1

loc_4A8749:				; CODE XREF: .text:004A8741j
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 200h

loc_4A8752:				; CODE XREF: .text:004A8187j
					; .text:004A81ACj ...
		mov	eax, ebx

loc_4A8754:				; CODE XREF: .text:004A8018j
					; .text:004A801Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; TABSELFUNC loc_4A875C
loc_4A875C:				; DATA XREF: .text:004A87F3o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+10h]
		mov	eax, [ebp+8]
		cmp	edx, 1
		jz	short loc_4A876F
		cmp	edx, 2
		jnz	short loc_4A878D

loc_4A876F:				; CODE XREF: .text:004A8768j
		cmp	dword ptr [eax+88h], 8
		jnz	short loc_4A878D
		push	0		; lParam
		push	1Bh		; wParam
		push	102h		; Msg
		mov	eax, [eax+22Ch]
		push	eax		; hWnd
		call	SendMessageW

loc_4A878D:				; CODE XREF: .text:004A876Dj
					; .text:004A8776j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4A8790:				; CODE XREF: .text:00449F5Fp
					; .text:0044A39Cp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset aAddress ; "Address"
;__DebugBreak		
		push	0FFFFFFFFh	; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		xor	esi, esi
		mov	ebx, offset stru_5F6F98

loc_4A87B1:				; CODE XREF: .text:004A8814j
		lea	eax, aSearchTab;[edi+1A06h]
		push	eax		; src
		push	ebx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+40h], 1D9000h
		mov	dword ptr [ebx+90h], 1
		mov	dword ptr [ebx+208h], offset loc_4A7D88
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx+220h], edx
		mov	[ebx+20Ch], ecx
		mov	dword ptr [ebx+210h], offset loc_4A7FC8
		mov	dword ptr [ebx+214h], offset loc_4A875C
		mov	dword ptr [ebx+218h], offset stru_54ED9C
		add	ebx, 26Ch
		add	esp, 8
		inc	esi
		cmp	esi, 8
		jl	short loc_4A87B1
		push	2360h		; n
		push	0		; c
		push	offset stru_5F82F8 ; s
		call	_memset
		add	esp, 0Ch
		xor	esi, esi
		mov	ebx, offset stru_5F82F8._type

loc_4A8831:				; CODE XREF: .text:004A8900j
		lea	eax, [esi+esi*4]
		shl	eax, 3
		sub	eax, esi
		shl	eax, 2
		sub	eax, esi
		shl	eax, 2
		add	eax, offset stru_5F6F98.sorted
		push	eax		; sd
		call	Destroysorteddata
		lea	edx, [esi+esi*4]
		pop	ecx
		shl	edx, 3
		mov	dword ptr [ebx], 3
		sub	edx, esi
		lea	ecx, aNoSearchResult;[edi+4ACh]
		shl	edx, 2
		sub	edx, esi
		shl	edx, 2
		add	edx, offset stru_5F6F98
		mov	[ebx+24h], edx
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	eax, [esi+esi*8]
		shl	eax, 3
		sub	eax, esi
		shl	eax, 2
		sub	eax, esi
		shl	eax, 2
		add	eax, offset stru_5F82F8.tabname
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, aNoSearchResult;[edi+4ACh]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [esi+esi*8]
		shl	ecx, 3
		sub	ecx, esi
		shl	ecx, 2
		sub	ecx, esi
		shl	ecx, 2
		add	ecx, offset stru_5F82F8._title
		push	ecx		; dest
		call	StrcopyW
		lea	edx, [esi+esi*8]
		add	esp, 0Ch
		shl	edx, 3
		lea	eax, $CTW0("");[edi+0Dh]
		sub	edx, esi
		push	eax		; src
		shl	edx, 2
		push	100h		; n
		sub	edx, esi
		shl	edx, 2
		add	edx, offset stru_5F82F8.status
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	esi
		add	ebx, 46Ch
		cmp	esi, 8
		jl	loc_4A8831
		cmp	stru_5FA658.hw,	0
		jz	short loc_4A891A
		push	offset stru_5FA658 ; pf
		call	Updatetabs
		pop	ecx

loc_4A891A:				; CODE XREF: .text:004A890Dj
		push	0		; index
		push	offset stru_5FA658 ; pf
		call	Setactivetab
		add	esp, 8
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4A8930:				; CODE XREF: .text:0040B0AEp
					; .text:004A1041p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset stru_5FA658
		cmp	dword ptr [ebx+48h], 0
		jnz	short loc_4A8962
		push	offset aSearch_0 ; "Search"
		push	ebx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+44h], 21000h
		mov	dword ptr [ebx+48h], offset stru_5F82F8
		mov	dword ptr [ebx+4Ch], (offset stru_54ED9C._name+228h)
		add	esp, 8

loc_4A8962:				; CODE XREF: .text:004A893Dj
		cmp	dword ptr [ebx+54h], 0
		jnz	short loc_4A8984
		push	offset aSearch_0 ; "Search"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset aIco_r_0	; "ICO_R"
		push	ebx		; pf
		call	Createtabwindow
		add	esp, 0Ch
		jmp	short loc_4A8998
; ---------------------------------------------------------------------------

loc_4A8984:				; CODE XREF: .text:004A8966j
		push	ebx		; pf
		call	Updatetabs
		pop	ecx
		push	0		; bErase
		push	0		; lpRect
		mov	eax, [ebx+58h]
		push	eax		; hWnd
		call	InvalidateRect

loc_4A8998:				; CODE XREF: .text:004A8982j
		cmp	dword ptr [ebx+54h], 0
		jz	short loc_4A89DF
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4A89DF
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4A89BE
		push	0		; lParam
		mov	edx, [ebx+54h]
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4A89BE:				; CODE XREF: .text:004A89ABj
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4A89D6
		push	9		; nCmdShow
		mov	eax, [ebx+54h]
		push	eax		; hWnd
		call	ShowWindow

loc_4A89D6:				; CODE XREF: .text:004A89C9j
		mov	edx, [ebx+58h]
		push	edx		; hWnd
		call	SetFocus

loc_4A89DF:				; CODE XREF: .text:004A899Cj
					; .text:004A89A2j
		mov	word_5F6D98, 0
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_4A8A04
		cmp	word_5F6D98, 0
		jz	short loc_4A8A04
		push	offset word_5F6D98 ; lpString
		push	eax		; hWnd
		call	SetWindowTextW

loc_4A8A04:				; CODE XREF: .text:004A89EDj
					; .text:004A89F7j
		mov	eax, [ebx+58h]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A8A0C:				; CODE XREF: .text:loc_4B5206p
		push	ebp
		mov	ebp, esp
		push	offset stru_5FA658 ; pf
		call	Getactivetab
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A8A1C:				; CODE XREF: .text:004A8CFEp
					; .text:004A8DC3p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset dword_5FA940
		push	esi
		push	edi
		mov	esi, [ebx]
		mov	ecx, dword_5FA950
		shl	esi, cl
		or	esi, [ebp+8]
		mov	eax, offset dword_5FA948
		mov	[ebx], esi
		mov	edx, offset dword_5FA930
		mov	ecx, dword_5FA950
		add	[eax], ecx
		jmp	short loc_4A8A78
; ---------------------------------------------------------------------------

loc_4A8A4A:				; CODE XREF: .text:004A8A7Bj
		sub	dword ptr [eax], 8
		mov	ecx, [edx]
		cmp	ecx, dword_5FA92C
		jnb	short loc_4A8A6C
		mov	ecx, [eax]
		mov	esi, [ebx]
		shr	esi, cl
		mov	ecx, esi
		mov	esi, dword_5FA928
		mov	edi, [edx]
		mov	[esi+edi], cl
		inc	dword ptr [edx]

loc_4A8A6C:				; CODE XREF: .text:004A8A55j
		mov	ecx, [eax]
		mov	esi, 1
		shl	esi, cl
		dec	esi
		and	[ebx], esi

loc_4A8A78:				; CODE XREF: .text:004A8A48j
		cmp	dword ptr [eax], 8
		jge	short loc_4A8A4A
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A8A84:				; CODE XREF: .text:004A8A97p
					; .text:004A8B13p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	edx, [ebx+2]
		test	edx, edx
		jz	short loc_4A8AC5
		push	eax
		push	edx
		call	loc_4A8A84
		add	esp, 8
		mov	eax, dword_5FA930
		cmp	eax, dword_5FA92C
		jnb	short loc_4A8AF0
		mov	ecx, dword_5FA928
		mov	eax, dword_5FA930
		mov	dl, [ebx]
		mov	[ecx+eax], dl
		inc	dword_5FA930
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A8AC5:				; CODE XREF: .text:004A8A93j
		mov	ecx, dword_5FA930
		cmp	ecx, dword_5FA92C
		jnb	short loc_4A8AF0
		mov	edx, dword_5FA928
		mov	ecx, dword_5FA930
		add	edx, ecx
		push	edx
		movzx	ecx, word ptr [ebx]
		mov	[eax], ecx
		pop	eax
		mov	[eax], cl
		inc	dword_5FA930

loc_4A8AF0:				; CODE XREF: .text:004A8AAAj
					; .text:004A8AD1j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A8AF4:				; CODE XREF: .text:004A8F22p
					; .text:004A8F4Fp ...
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, [ebp+0Ch]
		cmp	eax, dword_5FA924
		jnb	short loc_4A8B1D
		add	eax, eax
		lea	edx, [ebp-4]
		push	edx
		lea	eax, [eax+eax*2]
		add	eax, dword_5FA920
		push	eax
		call	loc_4A8A84
		add	esp, 8
		jmp	short loc_4A8B5D
; ---------------------------------------------------------------------------

loc_4A8B1D:				; CODE XREF: .text:004A8B01j
		lea	ecx, [ebp-4]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, eax
		lea	eax, [eax+eax*2]
		add	eax, dword_5FA920
		push	eax
		call	loc_4A8A84
		add	esp, 8
		mov	edx, dword_5FA930
		cmp	edx, dword_5FA92C
		jnb	short loc_4A8B5D
		mov	ecx, dword_5FA928
		mov	eax, dword_5FA930
		mov	dl, [ebp+10h]
		mov	[ecx+eax], dl
		inc	dword_5FA930

loc_4A8B5D:				; CODE XREF: .text:004A8B1Bj
					; .text:004A8B44j
		mov	eax, [ebp-4]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A8B64:				; CODE XREF: .text:004A8F16p
					; .text:loc_4A8F31p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, offset dword_5FA93C
		mov	edx, offset dword_5FA94C
		mov	ebx, offset dword_5FA944
		jmp	short loc_4A8B94
; ---------------------------------------------------------------------------

loc_4A8B7A:				; CODE XREF: .text:004A8BA6j
		mov	ecx, dword_5FA934
		mov	esi, [eax]
		movzx	ecx, byte ptr [ecx+esi]
		mov	esi, [ebx]
		shl	esi, 8
		or	ecx, esi
		mov	[ebx], ecx
		inc	dword ptr [eax]
		add	dword ptr [edx], 8

loc_4A8B94:				; CODE XREF: .text:004A8B78j
		mov	ecx, [edx]
		cmp	ecx, dword_5FA950
		jge	short loc_4A8BA8
		mov	ecx, [eax]
		cmp	ecx, dword_5FA938
		jb	short loc_4A8B7A

loc_4A8BA8:				; CODE XREF: .text:004A8B9Cj
		mov	eax, dword_5FA950
		sub	[edx], eax
		mov	ecx, [edx]
		mov	eax, [ebx]
		shr	eax, cl
		mov	ecx, [edx]
		mov	edx, 1
		shl	edx, cl
		dec	edx
		and	[ebx], edx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 322. _Compress
; Exported entry 426. Compress

; int __cdecl Compress(uchar *bufin, ulong nbufin, uchar *bufout, ulong	nbufout)
		public Compress
Compress:				; CODE XREF: .text:004A911Ep
		push	ebp		; _Compress
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4A8BE9
		test	ebx, ebx
		jz	short loc_4A8BE9
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A8BE9
		cmp	esi, 8
		ja	short loc_4A8BF0

loc_4A8BE9:				; CODE XREF: .text:004A8BD8j
					; .text:004A8BDCj ...
		xor	eax, eax	; int
		jmp	loc_4A8E14
; ---------------------------------------------------------------------------

loc_4A8BF0:				; CODE XREF: .text:004A8BE7j
		push	2		; flags
		push	30000h		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	dword_5FA91C, edi
		test	edi, edi
		jnz	short loc_4A8C12
		xor	eax, eax
		jmp	loc_4A8E14
; ---------------------------------------------------------------------------

loc_4A8C12:				; CODE XREF: .text:004A8C09j
		xor	eax, eax

loc_4A8C14:				; CODE XREF: .text:004A8C28j
		lea	edx, [eax+eax*2]
		mov	ecx, dword_5FA91C
		mov	[ecx+edx*4+2], ax
		inc	eax
		cmp	eax, 4000h
		jl	short loc_4A8C14
		xor	eax, eax

loc_4A8C2C:				; CODE XREF: .text:004A8C3Fj
		lea	edx, [eax+eax*2]
		mov	ecx, dword_5FA91C
		mov	[ecx+edx*4], ax
		inc	eax
		cmp	eax, 100h
		jl	short loc_4A8C2C
		mov	dword_5FA924, 100h
		mov	eax, ebx
		mov	dword_5FA950, 9
		mov	dword_5FA928, eax
		mov	dword_5FA92C, esi
		mov	dword ptr [eax], 6470430Ah
		mov	edx, [ebp+0Ch]
		xor	ecx, ecx
		mov	[eax+4], edx
		mov	dword_5FA93C, ecx
		xor	eax, eax
		mov	dword_5FA930, 8
		xor	edx, edx
		mov	dword_5FA940, eax
		mov	dword_5FA948, edx
		mov	ecx, [ebp+8]
		mov	eax, dword_5FA93C
		xor	edx, edx
		mov	dl, [ecx+eax]
		mov	edi, edx
		shl	edi, 2
		lea	edi, [edi+edi*2]
		add	edi, dword_5FA91C
		inc	dword_5FA93C
		jmp	loc_4A8DB0
; ---------------------------------------------------------------------------

loc_4A8CB5:				; CODE XREF: .text:004A8DB8j
		mov	eax, [ebp+8]
		mov	edx, dword_5FA93C
		movzx	esi, byte ptr [eax+edx]
		inc	dword_5FA93C
		mov	eax, [edi+4]
		test	eax, eax
		jnz	short loc_4A8CD3
		mov	ebx, edi
		jmp	short loc_4A8CE7
; ---------------------------------------------------------------------------

loc_4A8CD3:				; CODE XREF: .text:004A8CCDj
		mov	ebx, eax
		jmp	short loc_4A8CDA
; ---------------------------------------------------------------------------

loc_4A8CD7:				; CODE XREF: .text:004A8CE5j
		mov	ebx, [ebx+8]

loc_4A8CDA:				; CODE XREF: .text:004A8CD5j
		movzx	eax, word ptr [ebx]
		cmp	esi, eax
		jz	short loc_4A8CE7
		cmp	dword ptr [ebx+8], 0
		jnz	short loc_4A8CD7

loc_4A8CE7:				; CODE XREF: .text:004A8CD1j
					; .text:004A8CDFj
		cmp	edi, ebx
		jz	short loc_4A8CF9
		movzx	edx, word ptr [ebx]
		cmp	esi, edx
		jnz	short loc_4A8CF9
		mov	edi, ebx
		jmp	loc_4A8DB0
; ---------------------------------------------------------------------------

loc_4A8CF9:				; CODE XREF: .text:004A8CE9j
					; .text:004A8CF0j
		movzx	eax, word ptr [edi+2]
		push	eax
		call	loc_4A8A1C
		mov	edx, dword_5FA924
		pop	ecx
		mov	ecx, dword_5FA91C
		cmp	ebx, edi
		lea	edx, [edx+edx*2]
		mov	[ecx+edx*4], si
		jnz	short loc_4A8D31
		mov	eax, dword_5FA924
		shl	eax, 2
		lea	eax, [eax+eax*2]
		add	eax, dword_5FA91C
		mov	[ebx+4], eax
		jmp	short loc_4A8D46
; ---------------------------------------------------------------------------

loc_4A8D31:				; CODE XREF: .text:004A8D19j
		mov	edx, dword_5FA924
		shl	edx, 2
		lea	edx, [edx+edx*2]
		add	edx, dword_5FA91C
		mov	[ebx+8], edx

loc_4A8D46:				; CODE XREF: .text:004A8D2Fj
		inc	dword_5FA924
		mov	edx, 1
		mov	ecx, dword_5FA950
		mov	eax, dword_5FA924
		shl	edx, cl
		cmp	edx, eax
		jnz	short loc_4A8D68
		inc	dword_5FA950

loc_4A8D68:				; CODE XREF: .text:004A8D60j
		cmp	eax, 4000h
		jnz	short loc_4A8DA2
		xor	eax, eax

loc_4A8D71:				; CODE XREF: .text:004A8D8Cj
		lea	edx, [eax+eax*2]
		mov	ecx, dword_5FA91C
		xor	ebx, ebx
		mov	[ecx+edx*4+4], ebx
		xor	ebx, ebx
		mov	[ecx+edx*4+8], ebx
		inc	eax
		cmp	eax, 4000h
		jl	short loc_4A8D71
		mov	dword_5FA924, 100h
		mov	dword_5FA950, 9

loc_4A8DA2:				; CODE XREF: .text:004A8D6Dj
		mov	edi, esi
		shl	edi, 2
		lea	edi, [edi+edi*2]
		add	edi, dword_5FA91C

loc_4A8DB0:				; CODE XREF: .text:004A8CB0j
					; .text:004A8CF4j
		mov	eax, dword_5FA93C
		cmp	eax, [ebp+0Ch]
		jb	loc_4A8CB5
		movzx	edx, word ptr [edi+2]
		push	edx
		call	loc_4A8A1C
		pop	ecx
		mov	eax, dword_5FA948
		test	eax, eax
		jle	short loc_4A8E03
		mov	edx, dword_5FA930
		cmp	edx, dword_5FA92C
		jnb	short loc_4A8E03
		mov	ecx, 8
		sub	ecx, eax
		mov	al, byte ptr dword_5FA940
		shl	al, cl
		mov	edx, dword_5FA928
		mov	ecx, dword_5FA930
		mov	[edx+ecx], al
		inc	dword_5FA930

loc_4A8E03:				; CODE XREF: .text:004A8DD0j
					; .text:004A8DDEj
		mov	eax, dword_5FA91C
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	eax, dword_5FA930

loc_4A8E14:				; CODE XREF: .text:004A8BEBj
					; .text:004A8C0Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 323. _Getoriginaldatasize
; Exported entry 589. Getoriginaldatasize

; int __cdecl Getoriginaldatasize(uchar	*bufin,	ulong nbufin)
		public Getoriginaldatasize
Getoriginaldatasize:			; CODE XREF: .text:004A9309p
					; .text:004A93D5p ...
		push	ebp		; _Getoriginaldatasize
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4A8E2C
		cmp	dword ptr [ebp+0Ch], 8
		ja	short loc_4A8E30

loc_4A8E2C:				; CODE XREF: .text:004A8E24j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A8E30:				; CODE XREF: .text:004A8E2Aj
		cmp	dword ptr [eax], 6470430Ah
		jz	short loc_4A8E3C
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A8E3C:				; CODE XREF: .text:004A8E36j
		mov	eax, [eax+4]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 324. _Decompress
; Exported entry 460. Decompress

; int __cdecl Decompress(uchar *bufin, ulong nbufin, uchar *bufout, ulong nbufout)
		public Decompress
Decompress:				; CODE XREF: .text:004A93F9p
					; .text:004ACD47p
		push	ebp		; _Decompress
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A8E66
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4A8E66
		cmp	edi, 8
		jbe	short loc_4A8E66
		test	esi, esi
		jnz	short loc_4A8E6D

loc_4A8E66:				; CODE XREF: .text:004A8E55j
					; .text:004A8E5Bj ...
		xor	eax, eax
		jmp	loc_4A9050
; ---------------------------------------------------------------------------

loc_4A8E6D:				; CODE XREF: .text:004A8E64j
		cmp	dword ptr [ebx], 6470430Ah
		jz	short loc_4A8E7C
		xor	eax, eax
		jmp	loc_4A9050
; ---------------------------------------------------------------------------

loc_4A8E7C:				; CODE XREF: .text:004A8E73j
		cmp	esi, [ebx+4]
		jnb	short loc_4A8E88
		xor	eax, eax	; int
		jmp	loc_4A9050
; ---------------------------------------------------------------------------

loc_4A8E88:				; CODE XREF: .text:004A8E7Fj
		push	2		; flags
		push	18000h		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5FA920, eax
		cmp	dword_5FA920, 0
		jnz	short loc_4A8EAC
		xor	eax, eax
		jmp	loc_4A9050
; ---------------------------------------------------------------------------

loc_4A8EAC:				; CODE XREF: .text:004A8EA3j
		xor	eax, eax

loc_4A8EAE:				; CODE XREF: .text:004A8EC3j
		lea	edx, [eax+eax*2]
		mov	ecx, dword_5FA920
		lea	ecx, [ecx+edx*2]
		mov	[ecx], ax
		inc	eax
		cmp	eax, 100h
		jb	short loc_4A8EAE
		mov	dword_5FA924, 100h
		xor	eax, eax
		mov	dword_5FA950, 9
		mov	dword_5FA944, eax
		xor	eax, eax
		mov	edx, [ebp+10h]
		mov	dword_5FA94C, eax
		mov	dword_5FA934, ebx
		mov	dword_5FA938, edi
		mov	dword_5FA928, edx
		mov	dword_5FA92C, esi
		xor	ecx, ecx
		mov	dword_5FA93C, 8
		mov	dword_5FA930, ecx
		xor	esi, esi
		call	loc_4A8B64
		mov	ebx, eax
		mov	edi, eax
		push	esi
		push	ebx
		push	edi
		call	loc_4A8AF4
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_4A901B
; ---------------------------------------------------------------------------

loc_4A8F31:				; CODE XREF: .text:004A9026j
					; .text:004A9038j
		call	loc_4A8B64
		mov	ebx, eax
		cmp	ebx, dword_5FA924
		jbe	short loc_4A8F4C
		xor	eax, eax
		mov	dword_5FA930, eax
		jmp	loc_4A903E
; ---------------------------------------------------------------------------

loc_4A8F4C:				; CODE XREF: .text:004A8F3Ej
		push	esi
		push	ebx
		push	edi
		call	loc_4A8AF4
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword_5FA924, 3FFEh
		jnz	short loc_4A8FC8
		mov	eax, 100h

loc_4A8F6A:				; CODE XREF: .text:004A8F7Fj
		lea	edx, [eax+eax*2]
		mov	ecx, dword_5FA920
		xor	edi, edi
		mov	[ecx+edx*2+2], edi
		inc	eax
		cmp	eax, 4000h
		jb	short loc_4A8F6A
		mov	dword_5FA924, 100h
		mov	dword_5FA950, 9
		mov	eax, dword_5FA93C
		cmp	eax, dword_5FA938
		jb	short loc_4A8FB0
		mov	edx, dword_5FA94C
		cmp	edx, dword_5FA950
		jl	short loc_4A9019

loc_4A8FB0:				; CODE XREF: .text:004A8FA0j
		call	loc_4A8B64
		mov	ebx, eax
		mov	edi, eax
		push	esi
		push	ebx
		push	edi
		call	loc_4A8AF4
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_4A9019
; ---------------------------------------------------------------------------

loc_4A8FC8:				; CODE XREF: .text:004A8F63j
		mov	eax, dword_5FA924
		mov	edx, dword_5FA920
		lea	eax, [eax+eax*2]
		mov	[edx+eax*2], si
		mov	edx, edi
		mov	ecx, dword_5FA924
		add	edx, edx
		mov	eax, dword_5FA920
		lea	ecx, [ecx+ecx*2]
		lea	edx, [edx+edx*2]
		add	edx, eax
		mov	[eax+ecx*2+2], edx
		mov	eax, 1
		inc	dword_5FA924
		mov	ecx, dword_5FA950
		mov	edx, dword_5FA924
		shl	eax, cl
		inc	edx
		cmp	eax, edx
		jnz	short loc_4A9019
		inc	dword_5FA950

loc_4A9019:				; CODE XREF: .text:004A8FAEj
					; .text:004A8FC6j ...
		mov	edi, ebx

loc_4A901B:				; CODE XREF: .text:004A8F2Cj
		mov	eax, dword_5FA93C
		cmp	eax, dword_5FA938
		jb	loc_4A8F31
		mov	edx, dword_5FA94C
		cmp	edx, dword_5FA950
		jge	loc_4A8F31

loc_4A903E:				; CODE XREF: .text:004A8F47j
		mov	ecx, dword_5FA920
		push	ecx		; data
		call	Memfree
		pop	ecx
		mov	eax, dword_5FA930

loc_4A9050:				; CODE XREF: .text:004A8E68j
					; .text:004A8E77j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 325. _Savetaggedrecord
; Exported entry 703. Savetaggedrecord

; int __cdecl Savetaggedrecord(FILE *f,	ulong tag, ulong size, void *data)
		public Savetaggedrecord
Savetaggedrecord:			; CODE XREF: .text:004A913Bp
					; .text:004A9249p ...
		push	ebp		; _Savetaggedrecord
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4A906C
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A90D3
; ---------------------------------------------------------------------------

loc_4A906C:				; CODE XREF: .text:004A9065j
		test	esi, esi
		jnz	short loc_4A907B
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4A907B
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A90D3
; ---------------------------------------------------------------------------

loc_4A907B:				; CODE XREF: .text:004A906Ej
					; .text:004A9074j
		push	ebx		; stream
		push	4		; n
		push	1		; size
		lea	edx, [ebp+0Ch]
		push	edx		; ptr
		call	_fwrite
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_4A9096
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A90D3
; ---------------------------------------------------------------------------

loc_4A9096:				; CODE XREF: .text:004A908Fj
		push	ebx		; stream
		push	4		; n
		push	1		; size
		lea	edx, [ebp+10h]
		push	edx		; ptr
		call	_fwrite
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_4A90B1
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A90D3
; ---------------------------------------------------------------------------

loc_4A90B1:				; CODE XREF: .text:004A90AAj
		cmp	dword ptr [ebp+10h], 0
		jbe	short loc_4A90D1
		push	ebx		; stream
		mov	edx, [ebp+10h]
		push	edx		; n
		push	1		; size
		push	esi		; ptr
		call	_fwrite
		add	esp, 10h
		cmp	eax, [ebp+10h]
		jz	short loc_4A90D1
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A90D3
; ---------------------------------------------------------------------------

loc_4A90D1:				; CODE XREF: .text:004A90B5j
					; .text:004A90CAj
		xor	eax, eax

loc_4A90D3:				; CODE XREF: .text:004A906Aj
					; .text:004A9079j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 326. _Savepackedrecord
; Exported entry 702. Savepackedrecord

; int __cdecl Savepackedrecord(FILE *f,	ulong tag, ulong size, void *data)
		public Savepackedrecord
Savepackedrecord:			; CODE XREF: .text:004816BBp
					; .text:004816E8p ...
		push	ebp		; _Savepackedrecord
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+10h]
		jnz	short loc_4A90EC
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A914E
; ---------------------------------------------------------------------------

loc_4A90EC:				; CODE XREF: .text:004A90E5j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4A90F6
		test	edi, edi
		jnz	short loc_4A90FB

loc_4A90F6:				; CODE XREF: .text:004A90F0j
		or	eax, 0FFFFFFFFh	; int
		jmp	short loc_4A914E
; ---------------------------------------------------------------------------

loc_4A90FB:				; CODE XREF: .text:004A90F4j
		lea	ebx, [edi+400h]
		push	1		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4A9117
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A914E
; ---------------------------------------------------------------------------

loc_4A9117:				; CODE XREF: .text:004A9110j
		push	ebx		; nbufout
		push	esi		; bufout
		push	edi		; nbufin
		mov	edx, [ebp+14h]
		push	edx		; bufin
		call	Compress
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4A9131
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A9145
; ---------------------------------------------------------------------------

loc_4A9131:				; CODE XREF: .text:004A912Aj
		push	esi		; data
		push	ebx		; size
		mov	eax, [ebp+0Ch]
		push	eax		; tag
		mov	edx, [ebp+8]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		mov	ebx, eax

loc_4A9145:				; CODE XREF: .text:004A912Fj
		push	esi		; data
		call	Memfree
		pop	ecx
		mov	eax, ebx

loc_4A914E:				; CODE XREF: .text:004A90EAj
					; .text:004A90F9j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 327. _Createtaggedfile
; Exported entry 449. Createtaggedfile

; FILE *__cdecl	Createtaggedfile(wchar_t *_name,	char *signature, ulong version)
		public Createtaggedfile
Createtaggedfile:			; CODE XREF: .text:00481664p
					; .text:004A9E12p ...
		push	ebp		; _Createtaggedfile
		mov	ebp, esp
		add	esp, 0FFFFF5E8h
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4A9173
		cmp	word ptr [eax],	0
		jz	short loc_4A9173
		test	esi, esi
		jnz	short loc_4A917A

loc_4A9173:				; CODE XREF: .text:004A9167j
					; .text:004A916Dj
		xor	eax, eax
		jmp	loc_4A926D
; ---------------------------------------------------------------------------

loc_4A917A:				; CODE XREF: .text:004A9171j
		lea	edx, [ebp-0A18h]
		lea	ecx, [ebp-818h]
		push	edx		; ext
		lea	edx, [ebp-618h]
		push	ecx		; _name
		lea	ecx, [ebp-8]
		push	edx		; dir
		push	ecx		; drive
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		cmp	word ptr [ebp-0A18h], 0
		jnz	short loc_4A91BF
		push	offset a_udd	; ".udd"
		push	100h		; n
		lea	eax, [ebp-0A18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A91BF:				; CODE XREF: .text:004A91A4j
		cmp	word ptr [ebp-618h], 0
		jnz	short loc_4A91F2
		lea	eax, [ebp-0A18h]
		push	eax
		lea	edx, [ebp-818h]
		push	edx
		push	offset ollydir
		push	offset aSSS_0	; "%s\\%s%s"
		lea	ecx, [ebp-418h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 14h
		jmp	short loc_4A921F
; ---------------------------------------------------------------------------

loc_4A91F2:				; CODE XREF: .text:004A91C7j
		lea	eax, [ebp-0A18h]
		lea	edx, [ebp-818h]
		push	eax
		push	edx
		lea	ecx, [ebp-618h]
		lea	eax, [ebp-8]
		push	ecx
		push	eax
		lea	edx, [ebp-418h]
		push	offset aSSSS	; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 18h

loc_4A921F:				; CODE XREF: .text:004A91F0j
		push	offset aWb	; "wb"
		lea	ecx, [ebp-418h]
		push	ecx		; path
		call	__wfopen
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4A926B
		push	esi		; data
		push	esi		; s
		call	_strlen
		pop	ecx
		inc	eax
		push	eax		; size
		push	646F4Dh		; tag
		push	ebx		; f
		call	Savetaggedrecord
		add	esp, 10h
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4A926B
		lea	eax, [ebp+10h]
		push	eax		; data
		push	4		; size
		push	7265560Ah	; tag
		push	ebx		; f
		call	Savetaggedrecord
		add	esp, 10h

loc_4A926B:				; CODE XREF: .text:004A9237j
					; .text:004A9255j
		mov	eax, ebx

loc_4A926D:				; CODE XREF: .text:004A9175j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 328. _Finalizetaggedfile
; Exported entry 503. Finalizetaggedfile

; int __cdecl Finalizetaggedfile(FILE *stream)
		public Finalizetaggedfile
Finalizetaggedfile:			; CODE XREF: .text:00481954p
					; .text:004AB24Bp ...
		push	ebp		; _Finalizetaggedfile
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A9298
		push	0		; data
		push	0		; size
		push	646E450Ah	; tag
		push	ebx		; f
		call	Savetaggedrecord
		add	esp, 10h
		push	ebx		; stream
		call	_fclose
		pop	ecx

loc_4A9298:				; CODE XREF: .text:004A927Dj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A929C:				; CODE XREF: .text:00481CBAp
					; .text:00481D2Dp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A92AF
		test	edx, edx
		jnz	short loc_4A92B4

loc_4A92AF:				; CODE XREF: .text:004A92A9j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A9318
; ---------------------------------------------------------------------------

loc_4A92B4:				; CODE XREF: .text:004A92ADj
		mov	ecx, [ebx]
		test	ecx, ecx
		jz	short loc_4A92C5
		mov	eax, [ebx+8]
		add	eax, 8
		cmp	eax, [ebx+4]
		jbe	short loc_4A92CA

loc_4A92C5:				; CODE XREF: .text:004A92B8j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A9318
; ---------------------------------------------------------------------------

loc_4A92CA:				; CODE XREF: .text:004A92C3j
		mov	eax, [ebx+8]
		mov	esi, [ecx+eax+4]
		mov	ecx, eax
		add	ecx, esi
		add	ecx, 8
		cmp	ecx, [ebx+4]
		jbe	short loc_4A92E2
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A9318
; ---------------------------------------------------------------------------

loc_4A92E2:				; CODE XREF: .text:004A92DBj
		mov	ecx, [ebx]
		mov	eax, [ecx+eax]
		mov	[edx], eax
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4A92F4
		mov	edx, [ebp+10h]
		mov	[edx], esi

loc_4A92F4:				; CODE XREF: .text:004A92EDj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4A9316
		cmp	esi, 8
		jbe	short loc_4A9316
		push	esi		; nbufin
		mov	eax, [ebx]
		add	eax, [ebx+8]
		add	eax, 8
		push	eax		; bufin
		call	Getoriginaldatasize
		add	esp, 8
		mov	edx, [ebp+14h]
		mov	[edx], eax

loc_4A9316:				; CODE XREF: .text:004A92F8j
					; .text:004A92FDj
		xor	eax, eax

loc_4A9318:				; CODE XREF: .text:004A92B2j
					; .text:004A92C8j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4A931C(int, void *dest, int)
loc_4A931C:				; CODE XREF: .text:00481CE2p
					; .text:004A94C9p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A933B
		cmp	dword ptr [ebx], 0
		jz	short loc_4A933B
		mov	edx, [ebx+8]
		add	edx, 8
		cmp	edx, [ebx+4]
		jbe	short loc_4A933F

loc_4A933B:				; CODE XREF: .text:004A9329j
					; .text:004A932Ej
		xor	eax, eax
		jmp	short loc_4A9382
; ---------------------------------------------------------------------------

loc_4A933F:				; CODE XREF: .text:004A9339j
		mov	ecx, [ebx]
		mov	edx, [ebx+8]
		mov	esi, [ecx+edx+4]
		add	edx, esi
		add	edx, 8
		cmp	edx, [ebx+4]
		jbe	short loc_4A9356
		xor	eax, eax
		jmp	short loc_4A9382
; ---------------------------------------------------------------------------

loc_4A9356:				; CODE XREF: .text:004A9350j
		test	eax, eax
		jz	short loc_4A9363
		cmp	esi, [ebp+10h]
		jbe	short loc_4A9363
		xor	eax, eax
		jmp	short loc_4A9382
; ---------------------------------------------------------------------------

loc_4A9363:				; CODE XREF: .text:004A9358j
					; .text:004A935Dj
		test	eax, eax
		jz	short loc_4A937A
		push	esi		; n
		mov	edx, [ebx]
		add	edx, [ebx+8]
		add	edx, 8
		push	edx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4A937A:				; CODE XREF: .text:004A9365j
		lea	ecx, [esi+8]
		mov	eax, esi
		add	[ebx+8], ecx

loc_4A9382:				; CODE XREF: .text:004A933Dj
					; .text:004A9354j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A9388:				; CODE XREF: .text:00481DF5p
					; .text:00481E54p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A93A1
		cmp	dword ptr [ebx], 0
		jz	short loc_4A93A1
		test	edi, edi
		jnz	short loc_4A93A5

loc_4A93A1:				; CODE XREF: .text:004A9396j
					; .text:004A939Bj
		xor	eax, eax
		jmp	short loc_4A9407
; ---------------------------------------------------------------------------

loc_4A93A5:				; CODE XREF: .text:004A939Fj
		mov	eax, [ebx+8]
		mov	edx, eax
		add	edx, 10h
		cmp	edx, [ebx+4]
		jbe	short loc_4A93B6
		xor	eax, eax
		jmp	short loc_4A9407
; ---------------------------------------------------------------------------

loc_4A93B6:				; CODE XREF: .text:004A93B0j
		mov	edx, [ebx]
		mov	esi, [edx+eax+4]
		mov	edx, eax
		add	edx, esi
		add	edx, 8
		cmp	edx, [ebx+4]
		jbe	short loc_4A93CC
		xor	eax, eax
		jmp	short loc_4A9407
; ---------------------------------------------------------------------------

loc_4A93CC:				; CODE XREF: .text:004A93C6j
		push	esi		; nbufin
		mov	ecx, [ebx]
		add	ecx, eax
		add	ecx, 8
		push	ecx		; bufin
		call	Getoriginaldatasize
		add	esp, 8
		test	eax, eax
		jz	short loc_4A93E6
		cmp	eax, [ebp+10h]
		jbe	short loc_4A93EA

loc_4A93E6:				; CODE XREF: .text:004A93DFj
		xor	eax, eax
		jmp	short loc_4A9407
; ---------------------------------------------------------------------------

loc_4A93EA:				; CODE XREF: .text:004A93E4j
		mov	edx, [ebp+10h]
		push	edx		; nbufout
		push	edi		; bufout
		push	esi		; nbufin
		mov	ecx, [ebx]
		add	ecx, [ebx+8]
		add	ecx, 8
		push	ecx		; bufin
		call	Decompress
		add	esp, 10h
		add	esi, 8
		add	[ebx+8], esi

loc_4A9407:				; CODE XREF: .text:004A93A3j
					; .text:004A93B4j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4A940C(int, LPCWSTR lpName, char *s2)
loc_4A940C:				; CODE XREF: .text:00481C9Ep
					; .text:004D3261p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4A942A
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9506
; ---------------------------------------------------------------------------

loc_4A942A:				; CODE XREF: .text:004A9420j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx], edx
		xor	edx, edx
		mov	[ebx+4], ecx
		mov	[ebx+8], edx
		test	eax, eax
		jz	short loc_4A9442
		cmp	word ptr [eax],	0
		jnz	short loc_4A944A

loc_4A9442:				; CODE XREF: .text:004A943Aj
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9506
; ---------------------------------------------------------------------------

loc_4A944A:				; CODE XREF: .text:004A9440j
		push	offset aKnownrestype ; "KNOWNRESTYPE"
		push	eax		; lpName
		push	0		; hModule
		call	FindResourceW
		
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4A9465
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9506
; ---------------------------------------------------------------------------

loc_4A9465:				; CODE XREF: .text:004A945Bj
		push	esi		; hResInfo
		push	0		; hModule
		call	LoadResource
		test	eax, eax
		jnz	short loc_4A9479
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9506
; ---------------------------------------------------------------------------

loc_4A9479:				; CODE XREF: .text:004A946Fj
		push	eax		; hResData
		call	LockResource
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4A948A
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A9506
; ---------------------------------------------------------------------------

loc_4A948A:				; CODE XREF: .text:004A9483j
		push	esi		; hResInfo
		mov	edx, g_hInstance
		push	edx		; hModule
		call	SizeofResource
		mov	[ebx], edi
		mov	[ebx+4], eax
		push	0
		lea	ecx, [ebp-8]
		push	ecx
		lea	eax, [ebp-4]
		push	eax
		push	ebx
		call	loc_4A929C
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4A94FA
		cmp	dword ptr [ebp-4], 646F4Dh
		jnz	short loc_4A94FA
		push	100h		; int
		lea	edx, [ebp-108h]
		push	edx		; dest
		push	ebx		; int
		call	loc_4A931C
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4A94FA
		push	100h		; maxlen
		mov	ecx, [ebp+10h]
		push	ecx		; s2
		lea	eax, [ebp-108h]
		push	eax		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4A94FA
		xor	eax, eax
		jmp	short loc_4A9506
; ---------------------------------------------------------------------------

loc_4A94FA:				; CODE XREF: .text:004A94B1j
					; .text:004A94BAj ...
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx], edx
		mov	[ebx+4], ecx
		or	eax, 0FFFFFFFFh

loc_4A9506:				; CODE XREF: .text:004A9425j
					; .text:004A9445j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 329. _Gettaggedrecordsize
; Exported entry 619. Gettaggedrecordsize

; signed int __cdecl Gettaggedrecordsize(t_tagfile *tf,	ulong *tag, ulong *size)
		public Gettaggedrecordsize
Gettaggedrecordsize:			; CODE XREF: .text:004A96F5p
					; .text:004A9B4Dp ...
		push	ebp		; _Gettaggedrecordsize
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A952F
		cmp	dword ptr [ebx], 0
		jz	short loc_4A952F
		test	esi, esi
		jnz	short loc_4A9537

loc_4A952F:				; CODE XREF: .text:004A9524j
					; .text:004A9529j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A95BD
; ---------------------------------------------------------------------------

loc_4A9537:				; CODE XREF: .text:004A952Dj
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_4A9563
		mov	edx, [ebx+8]
		mov	eax, [ebx+10h]
		add	edx, eax
		cmp	edx, [ebx+4]
		jbe	short loc_4A954F
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A95BD
; ---------------------------------------------------------------------------

loc_4A954F:				; CODE XREF: .text:004A9548j
		push	1		; whence
		push	eax		; offset
		mov	edx, [ebx]
		push	edx		; stream
		call	_fseek
		add	esp, 0Ch
		mov	ecx, [ebx+10h]
		add	[ebx+8], ecx

loc_4A9563:				; CODE XREF: .text:004A953Bj
		mov	eax, [ebx+8]
		add	eax, 8
		cmp	eax, [ebx+4]
		jbe	short loc_4A9573
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A95BD
; ---------------------------------------------------------------------------

loc_4A9573:				; CODE XREF: .text:004A956Cj
		mov	edx, [ebx]
		push	edx		; stream
		push	8		; n
		push	1		; size
		lea	ecx, [ebp-8]
		push	ecx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 8
		jz	short loc_4A959D
		mov	eax, [ebx]
		push	eax		; stream
		call	_fclose
		pop	ecx
		xor	edx, edx
		mov	[ebx], edx
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A95BD
; ---------------------------------------------------------------------------

loc_4A959D:				; CODE XREF: .text:004A9589j
		mov	edx, [ebp-8]
		test	edi, edi
		mov	[ebx+0Ch], edx
		mov	ecx, [ebp-8]
		mov	[esi], ecx
		mov	eax, [ebp-4]
		mov	[ebx+10h], eax
		jz	short loc_4A95B7
		mov	edx, [ebp-4]
		mov	[edi], edx

loc_4A95B7:				; CODE XREF: .text:004A95B0j
		add	dword ptr [ebx+8], 8
		xor	eax, eax

loc_4A95BD:				; CODE XREF: .text:004A9532j
					; .text:004A954Dj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 330. _Gettaggedfiledata
; Exported entry 618. Gettaggedfiledata

; size_t __cdecl Gettaggedfiledata(t_tagfile *tf, void *buf, ulong bufsize)
		public Gettaggedfiledata
Gettaggedfiledata:			; CODE XREF: .text:004A9720p
					; .text:004A9B7Fp ...
		push	ebp		; _Gettaggedfiledata
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A95DB
		cmp	dword ptr [ebx], 0
		jz	short loc_4A95DB
		test	edx, edx
		jnz	short loc_4A95E0

loc_4A95DB:				; CODE XREF: .text:004A95D0j
					; .text:004A95D5j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A95E0:				; CODE XREF: .text:004A95D9j
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_4A95EB
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A95EB:				; CODE XREF: .text:004A95E4j
		mov	ecx, [ebx+8]
		mov	eax, [ebx+10h]
		add	ecx, eax
		cmp	ecx, [ebx+4]
		jbe	short loc_4A95FD
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A95FD:				; CODE XREF: .text:004A95F6j
		cmp	eax, [ebp+10h]
		jbe	short loc_4A9607
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A9607:				; CODE XREF: .text:004A9600j
		mov	ecx, [ebx]
		push	ecx		; stream
		push	eax		; n
		push	1		; size
		push	edx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, [ebx+10h]
		jz	short loc_4A962D
		mov	edx, [ebx]
		push	edx		; stream
		call	_fclose
		pop	ecx
		xor	eax, eax
		mov	[ebx], eax
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A962D:				; CODE XREF: .text:004A9619j
		add	[ebx+8], eax
		xor	edx, edx
		mov	[ebx+0Ch], edx
		xor	ecx, ecx
		mov	[ebx+10h], ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 331. _Closetaggedfile
; Exported entry 420. Closetaggedfile

; int __cdecl Closetaggedfile(t_tagfile	*tf)
		public Closetaggedfile
Closetaggedfile:			; CODE XREF: .text:004A9758p
					; .text:004A9BDAp ...
		push	ebp		; _Closetaggedfile
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4A965D
		cmp	dword ptr [ebx], 0
		jz	short loc_4A965D
		mov	eax, [ebx]
		push	eax		; stream
		call	_fclose
		pop	ecx
		xor	edx, edx
		mov	[ebx], edx

loc_4A965D:				; CODE XREF: .text:004A9649j
					; .text:004A964Ej
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 332. _Opentaggedfile
; Exported entry 662. Opentaggedfile

; int __cdecl Opentaggedfile(t_tagfile *tf, wchar_t *_name, char	*signature)
		public Opentaggedfile
Opentaggedfile:				; CODE XREF: .text:004A9B2Ap
					; .text:004AB326p ...
		push	ebp		; _Opentaggedfile
		mov	ebp, esp
		add	esp, 0FFFFFEF8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4A967E
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9760
; ---------------------------------------------------------------------------

loc_4A967E:				; CODE XREF: .text:004A9674j
		xor	edx, edx
		xor	eax, eax
		mov	[ebx+8], edx
		mov	[ebx+4], edx
		xor	ecx, ecx
		mov	[ebx+0Ch], eax
		mov	[ebx+10h], ecx
		test	esi, esi
		jz	short loc_4A969A
		cmp	word ptr [esi],	0
		jnz	short loc_4A96A6

loc_4A969A:				; CODE XREF: .text:004A9692j
		xor	eax, eax
		mov	[ebx], eax
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9760
; ---------------------------------------------------------------------------

loc_4A96A6:				; CODE XREF: .text:004A9698j
		push	offset aRb	; "rb"
		push	esi		; path
		call	__wfopen
		add	esp, 8
		mov	edi, eax
		mov	[ebx], edi
		test	edi, edi
		jnz	short loc_4A96C4
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9760
; ---------------------------------------------------------------------------

loc_4A96C4:				; CODE XREF: .text:004A96BAj
		push	2		; whence
		push	0		; offset
		push	edi		; stream
		call	_fseek
		add	esp, 0Ch
		mov	edx, [ebx]
		push	edx		; stream
		call	_ftell
		pop	ecx
		mov	[ebx+4], eax
		push	0		; whence
		push	0		; offset
		mov	ecx, [ebx]
		push	ecx		; stream
		call	_fseek
		add	esp, 0Ch
		lea	eax, [ebp-8]
		push	eax		; size
		lea	edx, [ebp-4]
		push	edx		; tag
		push	ebx		; tf
		call	Gettaggedrecordsize
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4A970F
		cmp	dword ptr [ebp-4], 646F4Dh
		jz	short loc_4A970F
		or	esi, 0FFFFFFFFh

loc_4A970F:				; CODE XREF: .text:004A9701j
					; .text:004A970Aj
		test	esi, esi
		jnz	short loc_4A9730
		push	100h		; bufsize
		lea	eax, [ebp-108h]
		push	eax		; buf
		push	ebx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-8]
		jz	short loc_4A9730
		or	esi, 0FFFFFFFFh

loc_4A9730:				; CODE XREF: .text:004A9711j
					; .text:004A972Bj
		test	esi, esi
		jnz	short loc_4A9753
		push	100h		; maxlen
		mov	eax, [ebp+10h]
		push	eax		; s2
		lea	edx, [ebp-108h]
		push	edx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A9753
		or	esi, 0FFFFFFFFh

loc_4A9753:				; CODE XREF: .text:004A9732j
					; .text:004A974Ej
		test	esi, esi
		jz	short loc_4A975E
		push	ebx		; tf
		call	Closetaggedfile
		pop	ecx

loc_4A975E:				; CODE XREF: .text:004A9755j
		mov	eax, esi

loc_4A9760:				; CODE XREF: .text:004A9679j
					; .text:004A96A1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4A9768(wchar_t *s1, wchar_t *s2)
loc_4A9768:				; CODE XREF: .text:004A9BC4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBECh
		cmp	dword_5BDD34, 0
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		jnz	short loc_4A9791
		mov	eax, [ebp+0Ch]
		push	eax		; s2
		push	esi		; s1
		call	__wcsicmp
		add	esp, 8
		jmp	loc_4A986F
; ---------------------------------------------------------------------------

loc_4A9791:				; CODE XREF: .text:004A977Dj
		xor	edx, edx
		mov	ecx, edx
		mov	eax, edx
		lea	edx, [ebp+ecx*2-20Ch]
		mov	[ebp-4], edx
		jmp	short loc_4A97D9
; ---------------------------------------------------------------------------

loc_4A97A3:				; CODE XREF: .text:004A97E6j
		mov	dx, [esi+eax*2]
		mov	ebx, [ebp-4]
		mov	[ebx], dx
		inc	ecx
		add	dword ptr [ebp-4], 2
		cmp	word ptr [esi+eax*2], 7Bh
		jnz	short loc_4A97D8
		inc	eax
		lea	edx, [esi+eax*2]
		jmp	short loc_4A97C3
; ---------------------------------------------------------------------------

loc_4A97BF:				; CODE XREF: .text:004A97CFj
		inc	eax
		add	edx, 2

loc_4A97C3:				; CODE XREF: .text:004A97BDj
		mov	bx, [edx]
		test	bx, bx
		jz	short loc_4A97D1
		cmp	bx, 7Dh
		jnz	short loc_4A97BF

loc_4A97D1:				; CODE XREF: .text:004A97C9j
		cmp	word ptr [esi+eax*2], 0
		jz	short loc_4A97E8

loc_4A97D8:				; CODE XREF: .text:004A97B7j
		inc	eax

loc_4A97D9:				; CODE XREF: .text:004A97A1j
		cmp	ecx, 104h
		jge	short loc_4A97E8
		cmp	word ptr [esi+eax*2], 0
		jnz	short loc_4A97A3

loc_4A97E8:				; CODE XREF: .text:004A97D6j
					; .text:004A97DFj
		mov	word ptr [ebp+ecx*2-20Ch], 0
		xor	eax, eax
		mov	ecx, eax
		lea	ebx, [ebp+ecx*2-414h]
		jmp	short loc_4A983D
; ---------------------------------------------------------------------------

loc_4A97FF:				; CODE XREF: .text:004A984Dj
		mov	edx, [ebp+0Ch]
		mov	dx, [edx+eax*2]
		mov	[ebx], dx
		inc	ecx
		add	ebx, 2
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+eax*2], 7Bh
		jnz	short loc_4A983C
		inc	eax
		mov	edx, [ebp+0Ch]
		lea	edx, [edx+eax*2]
		jmp	short loc_4A9824
; ---------------------------------------------------------------------------

loc_4A9820:				; CODE XREF: .text:004A9830j
		inc	eax
		add	edx, 2

loc_4A9824:				; CODE XREF: .text:004A981Ej
		mov	si, [edx]
		test	si, si
		jz	short loc_4A9832
		cmp	si, 7Dh
		jnz	short loc_4A9820

loc_4A9832:				; CODE XREF: .text:004A982Aj
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+eax*2], 0
		jz	short loc_4A984F

loc_4A983C:				; CODE XREF: .text:004A9815j
		inc	eax

loc_4A983D:				; CODE XREF: .text:004A97FDj
		cmp	ecx, 104h
		jge	short loc_4A984F
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx+eax*2], 0
		jnz	short loc_4A97FF

loc_4A984F:				; CODE XREF: .text:004A983Aj
					; .text:004A9843j
		mov	word ptr [ebp+ecx*2-414h], 0
		lea	eax, [ebp-414h]
		push	eax		; s2
		lea	ecx, [ebp-20Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8

loc_4A986F:				; CODE XREF: .text:004A978Cj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4A9878(wchar_t *path,	int)
loc_4A9878:				; CODE XREF: .text:004A9D4Fp
					; .text:004AB2B4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF090h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4A9899
		mov	eax, [ebp+8]
		cmp	word ptr [eax],	0
		jz	short loc_4A9899
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A98A1

loc_4A9899:				; CODE XREF: .text:004A9888j
					; .text:004A9891j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9CFD
; ---------------------------------------------------------------------------

loc_4A98A1:				; CODE XREF: .text:004A9897j
		push	3E8h		; n
		push	0		; c
		lea	edx, [ebp-3F8h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		lea	ecx, [ebp-0B0Ch]
		push	0		; ext
		push	ecx		; _name
		push	0		; dir
		push	0		; drive
		mov	eax, [ebp+8]
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		mov	word ptr [ebp-0ACAh], 0
		lea	edx, [ebp-0B0Ch]
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-4], eax
		cmp	_imp__PathIsDirectoryW,	0
		jz	short loc_4A9918
		push	offset word_57EBF0 ; _DWORD
		call	_imp__PathIsDirectoryW
		test	eax, eax
		jnz	short loc_4A9918
		push	offset ollydir	; src
		push	104h		; n
		push	offset word_57EBF0 ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A9918:				; CODE XREF: .text:004A98F0j
					; .text:004A98FFj
		push	offset word_57EBF0 ; src
		push	104h		; n
		lea	ecx, [ebp-704h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	edx, esi
		mov	eax, 104h
		sub	eax, esi
		lea	ecx, [ebp-704h]
		add	edx, edx
		push	offset asc_550A98 ; "\\"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	eax, [ebp-0B0Ch]
		mov	ecx, esi
		push	eax		; src
		mov	edx, 104h
		sub	edx, esi
		lea	eax, [ebp-704h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	ecx, esi
		mov	edx, 104h
		sub	edx, esi
		lea	eax, [ebp-704h]
		add	ecx, ecx
		push	offset asc_550A9C ; "*"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, 104h
		lea	ecx, [ebp-704h]
		sub	edx, esi
		add	esi, esi
		push	offset a_udd_2	; ".udd"
		push	edx		; n
		add	esi, ecx
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-0F70h]
		push	eax		; lpFindFileData
		lea	edx, [ebp-704h]
		push	edx		; lpFileName
		call	FindFirstFileW
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0FFFFFFFFh
		mov	ecx, [ebp-4]
		lea	ebx, [ebp+ecx*2-0D0Ch]
		jz	loc_4A9C38

loc_4A99EB:				; CODE XREF: .text:004A9C32j
		push	0		; ext
		lea	eax, [ebp-0D0Ch]
		push	eax		; _name
		push	0		; dir
		push	0		; drive
		lea	edx, [ebp-0F44h]
		push	edx		; path
		call	__wfnsplit
		add	esp, 14h
		lea	ecx, [ebp-0D0Ch]
		push	ecx		; s
		call	_wcslen
		test	byte ptr [ebp-0F70h], 10h
		pop	ecx
		jz	short loc_4A9A22
		or	edi, 0FFFFFFFFh
		jmp	short loc_4A9A9A
; ---------------------------------------------------------------------------

loc_4A9A22:				; CODE XREF: .text:004A9A1Bj
		cmp	eax, [ebp-4]
		jnz	short loc_4A9A2B
		xor	edi, edi
		jmp	short loc_4A9A9A
; ---------------------------------------------------------------------------

loc_4A9A2B:				; CODE XREF: .text:004A9A25j
		mov	edx, [ebp-4]
		add	edx, 4
		cmp	eax, edx
		jz	short loc_4A9A3A
		or	edi, 0FFFFFFFFh
		jmp	short loc_4A9A9A
; ---------------------------------------------------------------------------

loc_4A9A3A:				; CODE XREF: .text:004A9A33j
		cmp	word ptr [ebx],	5Fh
		jnz	short loc_4A9A6D
		mov	ax, [ebx+2]
		push	eax		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_4A9A6D
		mov	dx, [ebx+4]
		push	edx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jz	short loc_4A9A6D
		mov	cx, [ebx+6]
		push	ecx		; c
		call	_iswdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4A9A72

loc_4A9A6D:				; CODE XREF: .text:004A9A3Ej
					; .text:004A9A4Dj ...
		or	edi, 0FFFFFFFFh
		jmp	short loc_4A9A9A
; ---------------------------------------------------------------------------

loc_4A9A72:				; CODE XREF: .text:004A9A6Bj
		movzx	eax, word ptr [ebx+2]
		mov	edi, eax
		movzx	eax, word ptr [ebx+4]
		shl	edi, 2
		mov	edx, eax
		movzx	ecx, word ptr [ebx+6]
		add	edx, edx
		lea	edi, [edi+edi*4]
		lea	edx, [edx+edx*4]
		lea	edi, [edi+edi*4]
		add	edi, edx
		add	edi, ecx
		add	edi, 0FFFFEB30h

loc_4A9A9A:				; CODE XREF: .text:004A9A20j
					; .text:004A9A29j ...
		test	edi, edi
		jl	loc_4A9C0F
		cmp	edi, 3E7h
		jg	loc_4A9C0F
		mov	byte ptr [ebp+edi-3F8h], 1
		push	offset word_57EBF0 ; src
		push	104h		; n
		lea	eax, [ebp-704h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	edx, esi
		mov	eax, 104h
		sub	eax, esi
		lea	ecx, [ebp-704h]
		add	edx, edx
		push	offset asc_550A98 ; "\\"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, 104h
		lea	eax, [ebp-0F44h]
		sub	edx, esi
		push	eax		; src
		lea	ecx, [ebp-704h]
		add	esi, esi
		add	esi, ecx
		push	edx		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aModuleInfoFile ; "Module info file v2.01g"
		lea	eax, [ebp-704h]
		push	eax		; _name
		lea	edx, [ebp-0D20h]
		push	edx		; tf
		call	Opentaggedfile
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A9B3E
		or	edi, 0FFFFFFFFh
		jmp	loc_4A9BD3
; ---------------------------------------------------------------------------

loc_4A9B3E:				; CODE XREF: .text:004A9B34j
		lea	eax, [ebp-0Ch]
		push	eax		; size
		lea	edx, [ebp-8]
		push	edx		; tag
		lea	ecx, [ebp-0D20h]
		push	ecx		; tf
		call	Gettaggedrecordsize
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A9B5E
		or	edi, 0FFFFFFFFh
		jmp	short loc_4A9BD3
; ---------------------------------------------------------------------------

loc_4A9B5E:				; CODE XREF: .text:004A9B57j
		cmp	dword ptr [ebp-8], 6C69460Ah
		jz	short loc_4A9B6C
		or	edi, 0FFFFFFFFh
		jmp	short loc_4A9BD3
; ---------------------------------------------------------------------------

loc_4A9B6C:				; CODE XREF: .text:004A9B65j
		push	104h		; bufsize
		lea	eax, [ebp-4FCh]
		push	eax		; buf
		lea	edx, [ebp-0D20h]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4A9B90
		or	edi, 0FFFFFFFFh
		jmp	short loc_4A9BD3
; ---------------------------------------------------------------------------

loc_4A9B90:				; CODE XREF: .text:004A9B89j
		push	104h		; nw
		lea	eax, [ebp-90Ch]
		push	eax		; w
		push	104h		; nt
		lea	edx, [ebp-4FCh]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4A9BB9
		or	edi, 0FFFFFFFFh
		jmp	short loc_4A9BD3
; ---------------------------------------------------------------------------

loc_4A9BB9:				; CODE XREF: .text:004A9BB2j
		lea	eax, [ebp-90Ch]
		push	eax		; s2
		mov	edx, [ebp+8]
		push	edx		; s1
		call	loc_4A9768
		add	esp, 8
		test	eax, eax
		jz	short loc_4A9BD3
		or	edi, 0FFFFFFFFh

loc_4A9BD3:				; CODE XREF: .text:004A9B39j
					; .text:004A9B5Cj ...
		lea	eax, [ebp-0D20h]
		push	eax		; tf
		call	Closetaggedfile
		pop	ecx
		test	edi, edi
		jl	short loc_4A9C0F
		lea	edx, [ebp-704h]
		push	edx		; src
		push	104h		; n
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp-10h]
		push	eax		; hFindFile
		call	FindClose
		mov	eax, 1
		jmp	loc_4A9CFD
; ---------------------------------------------------------------------------

loc_4A9C0F:				; CODE XREF: .text:004A9A9Cj
					; .text:004A9AA8j ...
		lea	edx, [ebp-0F70h]
		push	edx		; lpFindFileData
		mov	ecx, [ebp-10h]
		push	ecx		; hFindFile
		call	FindNextFileW
		test	eax, eax
		jnz	short loc_4A9C2E
		mov	eax, [ebp-10h]
		push	eax		; hFindFile
		call	FindClose
		jmp	short loc_4A9C38
; ---------------------------------------------------------------------------

loc_4A9C2E:				; CODE XREF: .text:004A9C21j
		cmp	dword ptr [ebp-10h], 0FFFFFFFFh
		jnz	loc_4A99EB

loc_4A9C38:				; CODE XREF: .text:004A99E5j
					; .text:004A9C2Cj
		xor	ebx, ebx
		lea	eax, [ebp-3F8h]

loc_4A9C40:				; CODE XREF: .text:004A9C4Dj
		cmp	byte ptr [eax],	0
		jz	short loc_4A9C4F
		inc	ebx
		inc	eax
		cmp	ebx, 3E8h
		jl	short loc_4A9C40

loc_4A9C4F:				; CODE XREF: .text:004A9C43j
		cmp	ebx, 3E8h
		jl	short loc_4A9C5F
		or	eax, 0FFFFFFFFh
		jmp	loc_4A9CFD
; ---------------------------------------------------------------------------

loc_4A9C5F:				; CODE XREF: .text:004A9C55j
		push	offset word_57EBF0 ; src
		push	104h		; n
		mov	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	eax, 104h
		mov	edx, esi
		sub	eax, esi
		push	offset asc_550A98 ; "\\"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		lea	ecx, [ebp-0B0Ch]
		mov	eax, 104h
		sub	eax, esi
		push	ecx		; src
		mov	edx, esi
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		test	ebx, ebx
		jz	short loc_4A9CE0
		cmp	esi, 0FBh
		jle	short loc_4A9CC8
		or	eax, 0FFFFFFFFh
		jmp	short loc_4A9CFD
; ---------------------------------------------------------------------------

loc_4A9CC8:				; CODE XREF: .text:004A9CC1j
		push	ebx
		mov	edx, esi
		push	offset a_03i	; "_%03i"
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax

loc_4A9CE0:				; CODE XREF: .text:004A9CB9j
		push	offset a_udd_2	; ".udd"
		mov	ecx, 104h
		sub	ecx, esi
		push	ecx		; n
		add	esi, esi
		add	esi, [ebp+0Ch]
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	eax, eax

loc_4A9CFD:				; CODE XREF: .text:004A989Cj
					; .text:004A9C0Aj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A9D04:				; CODE XREF: .text:004127ADp
					; .text:00413253p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF8B4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4A9D31
		mov	eax, [ebp+8]
		cmp	dword ptr [eax], 0
		jz	short loc_4A9D31
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 0
		jz	short loc_4A9D31
		mov	ecx, [ebp+8]
		cmp	word ptr [ecx+4Ch], 0
		jnz	short loc_4A9D39

loc_4A9D31:				; CODE XREF: .text:004A9D14j
					; .text:004A9D1Cj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4AB25C
; ---------------------------------------------------------------------------

loc_4A9D39:				; CODE XREF: .text:004A9D2Fj
		mov	edx, [ebp+8]
		lea	eax, [ebp-6ECh]
		mov	ecx, [edx]
		mov	[ebp-18h], ecx
		push	eax		; int
		mov	edx, [ebp+8]
		add	edx, 4Ch
		push	edx		; path
		call	loc_4A9878
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A9D6E
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4A9DD9
		or	eax, 0FFFFFFFFh
		jmp	loc_4AB25C
; ---------------------------------------------------------------------------

loc_4A9D6E:				; CODE XREF: .text:004A9D5Ej
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4A9D7D
		mov	word ptr [ebp-6ECh], 0

loc_4A9D7D:				; CODE XREF: .text:004A9D72j
		mov	edx, hwollymain
		push	8000000h	; mode
		push	edx		; hwnd
		push	offset a_udd_1	; "*.udd"
		push	0		; currdir
		lea	ecx, [ebp-6ECh]
		push	0		; args
		push	ecx		; _name
		push	offset aSelect_uddFile ; "Select .udd file"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4A9DBE
		or	eax, 0FFFFFFFFh
		jmp	loc_4AB25C
; ---------------------------------------------------------------------------

loc_4A9DBE:				; CODE XREF: .text:004A9DB4j
		lea	edx, [ebp-6ECh]
		push	edx		; path
		call	Confirmoverwrite
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4A9DD9
		or	eax, 0FFFFFFFFh
		jmp	loc_4AB25C
; ---------------------------------------------------------------------------

loc_4A9DD9:				; CODE XREF: .text:004A9D64j
					; .text:004A9DCFj
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A9E04
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+9A8h], 0
		jnz	short loc_4A9E04
		mov	ecx, [ebp+8]
		test	byte ptr [ecx+0Ah], 1
		jz	short loc_4A9DFD
		cmp	dword_5D5614, 0
		jnz	short loc_4A9E04

loc_4A9DFD:				; CODE XREF: .text:004A9DF2j
		xor	eax, eax
		jmp	loc_4AB25C
; ---------------------------------------------------------------------------

loc_4A9E04:				; CODE XREF: .text:004A9DDDj
					; .text:004A9DE9j ...
		push	0		; version
		push	offset aModuleInfoFile ; "Module info file v2.01g"
		lea	edx, [ebp-6ECh]
		push	edx		; _name
		call	Createtaggedfile
		add	esp, 0Ch
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jnz	short loc_4A9E2B
		or	eax, 0FFFFFFFFh
		jmp	loc_4AB25C
; ---------------------------------------------------------------------------

loc_4A9E2B:				; CODE XREF: .text:004A9E21j
		xor	edx, edx
		mov	[ebp-10h], edx
		mov	ecx, [ebp+8]
		add	ecx, 4Ch
		push	ecx		; arglist
		push	offset aSaving_uddData ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Info
		add	esp, 8
		push	204h		; nt
		lea	eax, [ebp-2E4h]
		push	eax		; t
		push	104h		; nw
		mov	edx, [ebp+8]
		add	edx, 4Ch
		push	edx		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	edi, eax
		lea	eax, [ebp-2E4h]
		push	eax		; data
		inc	edi
		push	edi		; size
		push	6C69460Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4A9E92
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4A9E92:				; CODE XREF: .text:004A9E89j
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4A9FE8
		push	18h		; n
		push	0		; c
		lea	edx, [ebp-704h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	0		; hTemplateFile
		push	0		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	1		; dwShareMode
		push	80000000h	; dwDesiredAccess
		mov	ecx, [ebp+8]
		add	ecx, 4Ch
		push	ecx		; lpFileName
		call	CreateFileW
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0FFFFFFFFh
		jz	loc_4A9FE8
		lea	eax, [ebp-74Ch]
		push	eax		; lpFileInformation
		mov	edx, [ebp-54h]
		push	edx		; hFile
		call	GetFileInformationByHandle
		test	eax, eax
		jz	short loc_4A9F3B
		mov	ecx, [ebp-728h]
		mov	[ebp-704h], ecx
		cmp	dword ptr [ebp-734h], 0
		jz	short loc_4A9F23
		cmp	dword ptr [ebp-738h], 0
		jz	short loc_4A9F23
		mov	eax, [ebp-738h]
		mov	[ebp-700h], eax
		mov	eax, [ebp-734h]
		mov	[ebp-6FCh], eax
		jmp	short loc_4A9F3B
; ---------------------------------------------------------------------------

loc_4A9F23:				; CODE XREF: .text:004A9EFEj
					; .text:004A9F07j
		mov	edx, [ebp-748h]
		mov	[ebp-700h], edx
		mov	edx, [ebp-744h]
		mov	[ebp-6FCh], edx

loc_4A9F3B:				; CODE XREF: .text:004A9EE9j
					; .text:004A9F21j
		mov	ecx, 1
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4A9F4A
		dec	ecx

loc_4A9F4A:				; CODE XREF: .text:004A9F47j
		mov	[ebp-6F4h], ecx
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+464h], 0
		jz	short loc_4A9F6E
		mov	ecx, [ebp+8]
		mov	eax, [ecx+464h]
		sub	eax, [ebp-18h]
		mov	[ebp-6F0h], eax

loc_4A9F6E:				; CODE XREF: .text:004A9F5Aj
		mov	edx, [ebp-728h]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	short loc_4A9FBA
		push	0		; lpOverlapped
		lea	eax, [ebp-20h]
		push	eax		; lpNumberOfBytesRead
		mov	edx, [ebp-728h]
		push	edx		; nNumberOfBytesToRead
		push	esi		; lpBuffer
		mov	ecx, [ebp-54h]
		push	ecx		; hFile
		call	ReadFile
		test	eax, eax
		jz	short loc_4A9FBA
		mov	eax, [ebp-20h]
		cmp	eax, [ebp-728h]
		jnz	short loc_4A9FBA
		mov	edx, [ebp-20h]
		push	edx
		push	esi
		call	loc_410FAC
		add	esp, 8
		mov	[ebp-6F8h], eax

loc_4A9FBA:				; CODE XREF: .text:004A9F7Fj
					; .text:004A9F9Aj ...
		mov	ecx, [ebp-54h]
		push	ecx		; hObject
		call	CloseHandle
		lea	eax, [ebp-704h]
		push	eax		; data
		push	18h		; size
		push	7263460Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4A9FE8
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4A9FE8:				; CODE XREF: .text:004A9E96j
					; .text:004A9ED1j ...
		push	1005h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA000
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA000:				; CODE XREF: .text:004A9FF7j
		mov	dword ptr [ebp-0E0h], 21h
		mov	dword ptr [ebp-0DCh], 2Bh
		mov	dword ptr [ebp-0D8h], 2Ch
		mov	dword ptr [ebp-0D4h], 30h
		mov	dword ptr [ebp-0D0h], 31h
		mov	dword ptr [ebp-0CCh], 32h
		mov	dword ptr [ebp-0C8h], 33h
		mov	dword ptr [ebp-0C4h], 36h
		mov	dword ptr [ebp-0C0h], 54h
		mov	dword ptr [ebp-0BCh], 55h
		mov	dword ptr [ebp-0B8h], 56h
		mov	dword ptr [ebp-0B4h], 34h
		mov	dword ptr [ebp-0B0h], 44h
		mov	dword ptr [ebp-0ACh], 45h
		push	0Eh		; n
		lea	eax, [ebp-0E0h]
		push	eax		; list
		mov	edx, [ebp+8]
		mov	ecx, [edx+4]
		add	ecx, [ebp-18h]
		push	ecx		; addr1
		mov	eax, [ebp-18h]
		push	eax		; addr0
		call	Startnextdatalist
		add	esp, 10h
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AA10B

loc_4AA0B1:				; CODE XREF: .text:004AA109j
		push	1000h		; datasize
		lea	edx, [esi+5]
		push	edx		; data
		lea	ecx, [ebp-0Ch]
		push	ecx		; type
		lea	eax, [ebp-1Ch]
		push	eax		; _addr
		call	Findnextdatalist
		add	esp, 10h
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4AA10B
		mov	edx, [ebp-1Ch]
		sub	edx, [ebp-18h]
		mov	[esi], edx
		mov	cl, [ebp-0Ch]
		mov	[esi+4], cl
		push	esi		; data
		mov	eax, [ebp-20h]
		add	eax, 5
		push	eax		; size
		push	7461440Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA105
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA105:				; CODE XREF: .text:004AA0FCj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AA0B1

loc_4AA10B:				; CODE XREF: .text:004AA0AFj
					; .text:004AA0D1j
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AA152
		lea	ecx, [ebp-20h]
		push	ecx		; datasize
		mov	eax, [ebp-18h]
		push	eax		; base
		mov	edx, [ebp+8]
		add	edx, 938h
		push	edx		; nd
		call	Nesteddatatoudd
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_4AA152
		push	esi		; data
		mov	eax, [ebp-20h]
		push	eax		; size
		push	7262430Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA152
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA152:				; CODE XREF: .text:004AA10Fj
					; .text:004AA12Fj ...
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AA199
		lea	ecx, [ebp-20h]
		push	ecx		; datasize
		mov	eax, [ebp-18h]
		push	eax		; base
		mov	edx, [ebp+8]
		add	edx, 920h
		push	edx		; nd
		call	Nesteddatatoudd
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_4AA199
		push	esi		; data
		mov	eax, [ebp-20h]
		push	eax		; size
		push	72624C0Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA199
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA199:				; CODE XREF: .text:004AA156j
					; .text:004AA176j ...
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4]
		add	eax, [ebp-18h]
		push	eax		; addr1
		mov	edx, [ebp-18h]
		push	edx		; addr0
		push	offset procdata	; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	ebx, eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AA2A6
		test	ebx, ebx
		jl	loc_4AA2A6
		xor	edi, edi
		jmp	short loc_4AA1FF
; ---------------------------------------------------------------------------

loc_4AA1CC:				; CODE XREF: .text:004AA208j
		push	eax		; index
		push	offset procdata	; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_4AA1EC
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA20A
; ---------------------------------------------------------------------------

loc_4AA1EC:				; CODE XREF: .text:004AA1E1j
		mov	eax, [ebp-24h]
		mov	ecx, [ebp+8]
		mov	edx, [eax]
		mov	eax, [ecx+4]
		add	eax, [ebp-18h]
		cmp	edx, eax
		jnb	short loc_4AA20A
		inc	edi

loc_4AA1FF:				; CODE XREF: .text:004AA1CAj
		lea	eax, [edi+ebx]
		cmp	eax, procdata.n
		jl	short loc_4AA1CC

loc_4AA20A:				; CODE XREF: .text:004AA1EAj
					; .text:004AA1FCj
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AA2A6
		test	edi, edi
		jle	loc_4AA2A6
		mov	edx, edi
		shl	edx, 6
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA237
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA2A6
; ---------------------------------------------------------------------------

loc_4AA237:				; CODE XREF: .text:004AA22Cj
		xor	eax, eax
		mov	edx, esi
		mov	[ebp-4], eax
		mov	[ebp-60h], edx
		cmp	edi, [ebp-4]
		jle	short loc_4AA285

loc_4AA246:				; CODE XREF: .text:004AA283j
		mov	ecx, [ebp-4]
		add	ecx, ebx
		push	ecx		; index
		push	offset procdata	; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-24h], eax
		mov	eax, [ebp-24h]
		mov	edx, [ebp-60h]
		push	esi
		push	edi
		mov	edi, edx
		mov	esi, eax
		mov	ecx, 10h
		rep movsd
		mov	eax, [ebp-60h]
		pop	edi
		pop	esi
		mov	edx, [ebp-18h]
		sub	[eax], edx
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-60h], 40h
		cmp	edi, [ebp-4]
		jg	short loc_4AA246

loc_4AA285:				; CODE XREF: .text:004AA244j
		shl	edi, 6
		push	esi		; data
		push	edi		; size
		push	6372500Ah	; tag
		mov	ecx, [ebp-50h]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA2A6
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA2A6:				; CODE XREF: .text:004AA1BAj
					; .text:004AA1C2j ...
		mov	eax, [ebp+8]
		mov	edx, [eax+4]
		add	edx, [ebp-18h]
		push	edx		; addr1
		mov	ecx, [ebp-18h]
		push	ecx		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	ebx, eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AA4AD
		test	ebx, ebx
		jl	loc_4AA4AD
		push	91Ch		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	loc_4AA49B
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4AA49B
; ---------------------------------------------------------------------------

loc_4AA2F6:				; CODE XREF: .text:004AA4A7j
		push	ebx		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	loc_4AA49A
		mov	eax, [ebp-28h]
		mov	ecx, [ebp+8]
		mov	edx, [eax]
		mov	eax, [ecx+4]
		add	eax, [ebp-18h]
		cmp	edx, eax
		jnb	loc_4AA4AD
		mov	edx, [ebp-28h]
		test	byte ptr [edx+9], 10h
		jz	loc_4AA49A
		mov	ecx, [ebp-28h]
		push	esi
		mov	edi, esi
		mov	esi, ecx
		mov	ecx, 7
		rep movsd
		pop	esi
		mov	eax, [ebp-28h]
		mov	edx, [eax+8]
		and	edx, 0FFFF0FFFh
		or	edx, 1000h
		mov	[esi+8], edx
		mov	ecx, [ebp-28h]
		test	byte ptr [ecx+0Ah], 1
		jnz	short loc_4AA384
		push	1		; mode
		push	1		; size
		mov	eax, [ebp-28h]
		mov	edx, [eax]
		push	edx		; _addr
		lea	ecx, [esi+0Eh]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 1
		jnz	short loc_4AA384
		or	dword ptr [esi+8], 10000h

loc_4AA384:				; CODE XREF: .text:004AA360j
					; .text:004AA37Bj
		push	0		; subaddr
		mov	eax, [ebp-28h]
		mov	edx, [eax]
		push	edx		; _addr
		push	offset patch.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jz	short loc_4AA3B3
		mov	eax, [edi]
		mov	edx, [ebp-28h]
		cmp	eax, [edx]
		jnz	short loc_4AA3B3
		mov	cl, [edi+20Ch]
		mov	[esi+0Fh], cl
		jmp	short loc_4AA3B9
; ---------------------------------------------------------------------------

loc_4AA3B3:				; CODE XREF: .text:004AA39Dj
					; .text:004AA3A6j
		mov	al, [esi+0Eh]
		mov	[esi+0Fh], al

loc_4AA3B9:				; CODE XREF: .text:004AA3B1j
		mov	edx, [ebp-18h]
		lea	eax, [ebp-4E4h]
		sub	[esi], edx
		xor	ecx, ecx
		mov	[esi+14h], ecx
		push	100h		; nname
		push	eax		; _name
		push	51h		; type
		mov	edx, [ebp-28h]
		mov	edi, 1Ch
		mov	ecx, [edx]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		lea	eax, [edi+esi]
		lea	edx, [ebp-4E4h]
		push	300h		; nt
		push	eax		; t
		push	100h		; nw
		push	edx		; w
		call	Unicodetoutf
		add	esp, 10h
		lea	ecx, [ebp-4E4h]
		inc	eax
		add	edi, eax
		push	100h		; nname
		push	ecx		; _name
		push	52h		; type
		mov	eax, [ebp-28h]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		lea	ecx, [edi+esi]
		lea	eax, [ebp-4E4h]
		push	300h		; nt
		push	ecx		; t
		push	100h		; nw
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		lea	edx, [ebp-4E4h]
		inc	eax
		add	edi, eax
		push	100h		; nname
		push	edx		; _name
		push	53h		; type
		mov	ecx, [ebp-28h]
		mov	eax, [ecx]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		lea	edx, [edi+esi]
		lea	ecx, [ebp-4E4h]
		push	300h		; nt
		push	edx		; t
		push	100h		; nw
		push	ecx		; w
		call	Unicodetoutf
		add	esp, 10h
		inc	eax
		add	edi, eax
		push	esi		; data
		push	edi		; size
		push	336E490Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA49A
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA49A:				; CODE XREF: .text:004AA30Bj
					; .text:004AA32Ej ...
		inc	ebx

loc_4AA49B:				; CODE XREF: .text:004AA2E4j
					; .text:004AA2F1j
		cmp	ebx, stru_5D6528.sorted.n
		jge	short loc_4AA4AD
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4AA2F6

loc_4AA4AD:				; CODE XREF: .text:004AA2C7j
					; .text:004AA2CFj ...
		mov	edx, [ebp+8]
		mov	ecx, [edx+4]
		add	ecx, [ebp-18h]
		push	ecx		; addr1
		mov	eax, [ebp-18h]
		push	eax		; addr0
		push	offset bpmem.sorted ; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	ebx, eax
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AA56D
		test	ebx, ebx
		jl	loc_4AA56D
		jmp	short loc_4AA55B
; ---------------------------------------------------------------------------

loc_4AA4DE:				; CODE XREF: .text:004AA567j
		push	ebx		; index
		push	offset bpmem.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4AA55A
		mov	edx, [eax]
		mov	ecx, [ebp+8]
		mov	ecx, [ecx+4]
		add	ecx, [ebp-18h]
		cmp	edx, ecx
		jnb	short loc_4AA56D
		mov	esi, eax
		lea	edi, [ebp-718h]
		mov	ecx, 5
		rep movsd
		mov	eax, [ebp-710h]
		and	eax, 0FFFF0FFFh
		or	eax, 1000h
		mov	[ebp-710h], eax
		lea	eax, [ebp-718h]
		mov	edx, [ebp-18h]
		sub	[ebp-718h], edx
		xor	ecx, ecx
		mov	[ebp-708h], ecx
		push	eax		; data
		push	14h		; size
		push	6D70420Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA55A
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA55A:				; CODE XREF: .text:004AA4EEj
					; .text:004AA551j
		inc	ebx

loc_4AA55B:				; CODE XREF: .text:004AA4DCj
		cmp	ebx, bpmem.sorted.n
		jge	short loc_4AA56D
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4AA4DE

loc_4AA56D:				; CODE XREF: .text:004AA4CEj
					; .text:004AA4D6j ...
		xor	ebx, ebx
		jmp	loc_4AA60D
; ---------------------------------------------------------------------------

loc_4AA574:				; CODE XREF: .text:004AA619j
		push	ebx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	loc_4AA60C
		test	byte ptr [edi+0Bh], 8
		jnz	short loc_4AA60C
		mov	eax, [edi]
		cmp	eax, [ebp-18h]
		jb	short loc_4AA60C
		mov	ecx, [ebp+8]
		mov	edx, [edi]
		add	edx, [edi+4]
		mov	eax, [ecx+4]
		add	eax, [ebp-18h]
		cmp	edx, eax
		ja	short loc_4AA61F
		cmp	dword ptr [edi+64h], 0
		jz	short loc_4AA60C
		mov	edx, [edi+4]
		add	edx, 4
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA5CD
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA61F
; ---------------------------------------------------------------------------

loc_4AA5CD:				; CODE XREF: .text:004AA5C2j
		mov	eax, [edi]
		sub	eax, [ebp-18h]
		mov	[esi], eax
		mov	edx, [edi+4]
		push	edx		; n
		mov	ecx, [edi+64h]
		push	ecx		; src
		lea	eax, [esi+4]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	esi		; data
		mov	edx, [edi+4]
		add	edx, 4
		push	edx		; size
		push	616E410Ah	; tag
		mov	ecx, [ebp-50h]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA60C
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA60C:				; CODE XREF: .text:004AA586j
					; .text:004AA590j ...
		inc	ebx

loc_4AA60D:				; CODE XREF: .text:004AA56Fj
		cmp	ebx, memory.sorted.n
		jge	short loc_4AA61F
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4AA574

loc_4AA61F:				; CODE XREF: .text:004AA5A9j
					; .text:004AA5CBj ...
		push	414h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA639
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA63F
; ---------------------------------------------------------------------------

loc_4AA639:				; CODE XREF: .text:004AA62Ej
		lea	eax, [esi+4]
		mov	[ebp-44h], eax

loc_4AA63F:				; CODE XREF: .text:004AA637j
		push	40h		; type
		mov	edx, [ebp+8]
		mov	ecx, [edx+4]
		add	ecx, [ebp-18h]
		push	ecx		; addr1
		mov	eax, [ebp-18h]
		push	eax		; addr0
		call	Startnextdata
		add	esp, 0Ch
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AA6D3

loc_4AA65D:				; CODE XREF: .text:004AA6D1j
		push	410h		; datasize
		mov	edx, [ebp-44h]
		push	edx		; data
		push	esi		; _addr
		call	Findnextdata
		add	esp, 0Ch
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4AA6D3
		mov	ecx, [ebp-44h]
		cmp	dword ptr [ecx+0Ch], 100h
		jle	short loc_4AA68D
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA6D3
; ---------------------------------------------------------------------------

loc_4AA68D:				; CODE XREF: .text:004AA682j
		mov	eax, [ebp-18h]
		sub	[esi], eax
		xor	ebx, ebx
		jmp	short loc_4AA6A1
; ---------------------------------------------------------------------------

loc_4AA696:				; CODE XREF: .text:004AA6A7j
		mov	eax, [ebp-44h]
		mov	edx, [ebp-18h]
		sub	[eax+ebx*4+10h], edx
		inc	ebx

loc_4AA6A1:				; CODE XREF: .text:004AA694j
		mov	ecx, [ebp-44h]
		cmp	ebx, [ecx+0Ch]
		jl	short loc_4AA696
		push	esi		; data
		mov	eax, [ebp-20h]
		add	eax, 4
		push	eax		; size
		push	6977530Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA6CD
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA6CD:				; CODE XREF: .text:004AA6C4j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AA65D

loc_4AA6D3:				; CODE XREF: .text:004AA65Bj
					; .text:004AA676j ...
		push	210h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA6ED
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA6F3
; ---------------------------------------------------------------------------

loc_4AA6ED:				; CODE XREF: .text:004AA6E2j
		lea	eax, [esi+4]
		mov	[ebp-48h], eax

loc_4AA6F3:				; CODE XREF: .text:004AA6EBj
		push	41h		; type
		mov	edx, [ebp+8]
		mov	ecx, [edx+4]
		add	ecx, [ebp-18h]
		push	ecx		; addr1
		mov	eax, [ebp-18h]
		push	eax		; addr0
		call	Startnextdata
		add	esp, 0Ch
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AA763

loc_4AA711:				; CODE XREF: .text:004AA761j
		push	20Ch		; datasize
		mov	edx, [ebp-48h]
		push	edx		; data
		push	esi		; _addr
		call	Findnextdata
		add	esp, 0Ch
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4AA763
		mov	ecx, [ebp-18h]
		sub	[esi], ecx
		mov	eax, [ebp-48h]
		mov	edx, [ebp-18h]
		sub	[eax], edx
		push	esi		; data
		mov	ecx, [ebp-20h]
		add	ecx, 4
		push	ecx		; size
		push	7361430Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA75D
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA75D:				; CODE XREF: .text:004AA754j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AA711

loc_4AA763:				; CODE XREF: .text:004AA70Fj
					; .text:004AA72Aj
		push	5		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA77A
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA780
; ---------------------------------------------------------------------------

loc_4AA77A:				; CODE XREF: .text:004AA76Fj
		lea	eax, [esi+4]
		mov	[ebp-4Ch], eax

loc_4AA780:				; CODE XREF: .text:004AA778j
		push	42h		; type
		mov	edx, [ebp+8]
		mov	ecx, [edx+4]
		add	ecx, [ebp-18h]
		push	ecx		; addr1
		mov	eax, [ebp-18h]
		push	eax		; addr0
		call	Startnextdata
		add	esp, 0Ch
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AA7E5

loc_4AA79E:				; CODE XREF: .text:004AA7E3j
		push	1		; datasize
		mov	edx, [ebp-4Ch]
		push	edx		; data
		push	esi		; _addr
		call	Findnextdata
		add	esp, 0Ch
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4AA7E5
		mov	ecx, [ebp-18h]
		sub	[esi], ecx
		push	esi		; data
		mov	eax, [ebp-20h]
		add	eax, 4
		push	eax		; size
		push	656E4D0Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA7DF
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA7DF:				; CODE XREF: .text:004AA7D6j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AA79E

loc_4AA7E5:				; CODE XREF: .text:004AA79Cj
					; .text:004AA7B4j
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AA962
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+8FCh], 0
		jz	loc_4AA962
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+908h], 0
		jle	loc_4AA962
		mov	edx, [ebp+8]
		mov	ecx, [edx+908h]
		lea	ecx, [ecx+ecx*8]
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA834
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4AA962
; ---------------------------------------------------------------------------

loc_4AA834:				; CODE XREF: .text:004AA826j
		mov	eax, [ebp+8]
		mov	edx, [eax+908h]
		lea	edx, [edx+edx*8]
		push	edx		; n
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8FCh]
		push	eax		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ebx, ebx
		mov	eax, esi
		mov	[ebp-60h], eax
		jmp	short loc_4AA872
; ---------------------------------------------------------------------------

loc_4AA85D:				; CODE XREF: .text:004AA87Bj
		mov	edx, [ebp-60h]
		cmp	dword ptr [edx], 0FFFFFFFFh
		jz	short loc_4AA86D
		mov	ecx, [ebp-60h]
		mov	eax, [ebp-18h]
		sub	[ecx], eax

loc_4AA86D:				; CODE XREF: .text:004AA863j
		inc	ebx
		add	dword ptr [ebp-60h], 9

loc_4AA872:				; CODE XREF: .text:004AA85Bj
		mov	edx, [ebp+8]
		cmp	ebx, [edx+908h]
		jl	short loc_4AA85D
		push	esi		; data
		mov	ecx, [ebp+8]
		mov	eax, [ecx+908h]
		lea	eax, [eax+eax*8]
		push	eax		; size
		push	74644A0Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA8AC
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4AA962
; ---------------------------------------------------------------------------

loc_4AA8AC:				; CODE XREF: .text:004AA89Ej
		push	314h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AA8C4
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA8C4:				; CODE XREF: .text:004AA8BBj
		xor	ebx, ebx
		jmp	loc_4AA94D
; ---------------------------------------------------------------------------

loc_4AA8CB:				; CODE XREF: .text:004AA95Cj
		mov	eax, ebx
		mov	edx, [ebp+8]
		shl	eax, 5
		mov	edi, 8
		add	eax, ebx
		mov	ecx, [edx+914h]
		lea	eax, [ebx+eax*4]
		mov	edx, [ecx+eax*4]
		mov	[esi], edx
		mov	ecx, [ebp+8]
		mov	edx, [ecx+914h]
		mov	eax, [edx+eax*4+4]
		mov	[esi+4], eax
		lea	eax, [edi+esi]
		push	30Ch		; nt
		push	eax		; t
		mov	eax, ebx
		push	104h		; nw
		shl	eax, 5
		mov	edx, [ebp+8]
		add	eax, ebx
		mov	ecx, [edx+914h]
		lea	eax, [ebx+eax*4]
		shl	eax, 2
		add	ecx, eax
		add	ecx, 0Ch
		push	ecx		; w
		call	Unicodetoutf
		add	esp, 10h
		add	edi, eax
		push	esi		; data
		push	edi		; size
		push	61624D0Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA94C
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA962
; ---------------------------------------------------------------------------

loc_4AA94C:				; CODE XREF: .text:004AA941j
		inc	ebx

loc_4AA94D:				; CODE XREF: .text:004AA8C6j
		mov	ecx, [ebp+8]
		cmp	ebx, [ecx+91Ch]
		jge	short loc_4AA962
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4AA8CB

loc_4AA962:				; CODE XREF: .text:004AA7E9j
					; .text:004AA7F9j ...
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AA9ED
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Bh], 4
		jz	short loc_4AA9ED
		push	28h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_4AA98F
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AA9ED
; ---------------------------------------------------------------------------

loc_4AA98F:				; CODE XREF: .text:004AA984j
		push	28h		; n
		mov	edx, [ebp+8]
		add	edx, 4ACh
		push	edx		; src
		mov	ecx, [ebp-2Ch]
		push	ecx		; dest
		call	_memcpy
		mov	eax, [ebp-2Ch]
		add	esp, 0Ch
		mov	edx, eax
		xor	ebx, ebx
		mov	[ebp-60h], edx

loc_4AA9B1:				; CODE XREF: .text:004AA9C9j
		mov	ecx, [ebp-60h]
		cmp	dword ptr [ecx], 0
		jz	short loc_4AA9C1
		mov	eax, [ebp-60h]
		mov	edx, [ebp-18h]
		sub	[eax], edx

loc_4AA9C1:				; CODE XREF: .text:004AA9B7j
		inc	ebx
		add	dword ptr [ebp-60h], 8
		cmp	ebx, 5
		jl	short loc_4AA9B1
		mov	ecx, [ebp-2Ch]
		push	ecx		; data
		push	28h		; size
		push	74734E0Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AA9ED
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AA9ED:				; CODE XREF: .text:004AA966j
					; .text:004AA973j ...
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AAA6D
		mov	edx, [ebp+8]
		test	byte ptr [edx+0Bh], 4
		jz	short loc_4AAA6D
		push	400h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AAA16
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AAA6D
; ---------------------------------------------------------------------------

loc_4AAA16:				; CODE XREF: .text:004AAA0Bj
		push	400h		; n
		mov	eax, [ebp+8]
		add	eax, 4D4h
		push	eax		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ebx, ebx

loc_4AAA2F:				; CODE XREF: .text:004AAA49j
		mov	eax, ebx
		shl	eax, 4
		cmp	dword ptr [esi+eax], 0
		jz	short loc_4AAA45
		mov	edx, ebx
		shl	edx, 4
		mov	ecx, [ebp-18h]
		sub	[esi+edx], ecx

loc_4AAA45:				; CODE XREF: .text:004AAA38j
		inc	ebx
		cmp	ebx, 40h
		jl	short loc_4AAA2F
		push	esi		; data
		push	400h		; size
		push	74644D0Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AAA6D
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAA6D:				; CODE XREF: .text:004AA9F1j
					; .text:004AA9FAj ...
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AAC3B
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+950h], 0
		jz	loc_4AAC3B
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+95Ch], 0
		jle	loc_4AAC3B
		mov	eax, [ebp+8]
		mov	edx, [eax+95Ch]
		inc	edx
		mov	ecx, edx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*8]
		add	ecx, 4
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AAAC4
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4AAC3B
; ---------------------------------------------------------------------------

loc_4AAAC4:				; CODE XREF: .text:004AAAB6j
		mov	eax, [ebp+8]
		mov	edi, 4
		xor	ebx, ebx
		mov	edx, [eax+950h]
		mov	[ebp-40h], edx
		mov	ecx, [ebp+8]
		mov	eax, [ecx+95Ch]
		mov	[esi], eax
		jmp	loc_4AABFB
; ---------------------------------------------------------------------------

loc_4AAAE7:				; CODE XREF: .text:004AAC04j
		mov	eax, [ebp-40h]
		and	word ptr [eax+4], 3FFFh
		mov	edx, [ebp-40h]
		test	byte ptr [edx+5], 2
		jz	short loc_4AAB14
		mov	ecx, [ebp-40h]
		cmp	dword ptr [ecx+6], 0FFFFFF80h
		jl	short loc_4AAB14
		mov	eax, [ebp-40h]
		cmp	dword ptr [eax+6], 7Fh
		jg	short loc_4AAB14
		mov	edx, [ebp-40h]
		or	word ptr [edx+4], 8000h

loc_4AAB14:				; CODE XREF: .text:004AAAF7j
					; .text:004AAB00j ...
		mov	ecx, [ebp-40h]
		test	byte ptr [ecx+5], 1
		jz	short loc_4AAB38
		mov	eax, [ebp-40h]
		cmp	dword ptr [eax+0Ah], 0FFFFFF80h
		jl	short loc_4AAB38
		mov	edx, [ebp-40h]
		cmp	dword ptr [edx+0Ah], 7Fh
		jg	short loc_4AAB38
		mov	ecx, [ebp-40h]
		or	word ptr [ecx+4], 4000h

loc_4AAB38:				; CODE XREF: .text:004AAB1Bj
					; .text:004AAB24j ...
		push	6		; n
		mov	eax, [ebp-40h]
		push	eax		; src
		lea	edx, [edi+esi]
		push	edx		; dest
		call	_memcpy
		mov	ecx, [ebp-40h]
		add	esp, 0Ch
		add	edi, 6
		mov	ax, [ecx+4]
		test	ah, 2
		jz	short loc_4AAB82
		test	ah, 80h
		jz	short loc_4AAB6A
		mov	edx, [ebp-40h]
		mov	cl, [edx+6]
		mov	[esi+edi], cl
		inc	edi
		jmp	short loc_4AAB82
; ---------------------------------------------------------------------------

loc_4AAB6A:				; CODE XREF: .text:004AAB5Cj
		push	4		; n
		mov	eax, [ebp-40h]
		add	eax, 6
		push	eax		; src
		lea	edx, [edi+esi]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	edi, 4

loc_4AAB82:				; CODE XREF: .text:004AAB57j
					; .text:004AAB68j
		mov	ecx, [ebp-40h]
		mov	ax, [ecx+4]
		test	ah, 1
		jz	short loc_4AABB7
		test	ah, 40h
		jz	short loc_4AAB9F
		mov	edx, [ebp-40h]
		mov	cl, [edx+0Ah]
		mov	[esi+edi], cl
		inc	edi
		jmp	short loc_4AABB7
; ---------------------------------------------------------------------------

loc_4AAB9F:				; CODE XREF: .text:004AAB91j
		push	4		; n
		mov	eax, [ebp-40h]
		add	eax, 0Ah
		push	eax		; src
		lea	edx, [edi+esi]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	edi, 4

loc_4AABB7:				; CODE XREF: .text:004AAB8Cj
					; .text:004AAB9Dj
		mov	ecx, [ebp-40h]
		and	word ptr [ecx+4], 3FFFh
		mov	eax, [ebp-40h]
		test	byte ptr [eax+4], 20h
		jz	short loc_4AABF6
		mov	edx, [ebp-40h]
		mov	ecx, [edx+0Eh]
		mov	[ebp-14h], ecx
		mov	eax, [ebp-40h]
		test	byte ptr [eax+4], 80h
		jz	short loc_4AABE1
		mov	edx, [ebp-18h]
		sub	[ebp-14h], edx

loc_4AABE1:				; CODE XREF: .text:004AABD9j
		push	4		; n
		lea	ecx, [ebp-14h]
		push	ecx		; src
		lea	eax, [edi+esi]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		add	edi, 4

loc_4AABF6:				; CODE XREF: .text:004AABC7j
		inc	ebx
		add	dword ptr [ebp-40h], 12h

loc_4AABFB:				; CODE XREF: .text:004AAAE2j
		mov	edx, [ebp+8]
		cmp	ebx, [edx+95Ch]
		jl	loc_4AAAE7
		push	12h		; n
		push	0		; c
		lea	ecx, [edi+esi]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, 12h
		push	esi		; data
		push	edi		; size
		push	6472500Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AAC3B
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAC3B:				; CODE XREF: .text:004AAA71j
					; .text:004AAA81j ...
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AAD34
		push	40Ch		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AAC5D
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAC5D:				; CODE XREF: .text:004AAC54j
		xor	ebx, ebx
		jmp	loc_4AAD22
; ---------------------------------------------------------------------------

loc_4AAC64:				; CODE XREF: .text:004AAD2Ej
		push	ebx		; index
		push	offset patch.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	loc_4AAD21
		cmp	dword ptr [edi+4], 0
		jz	loc_4AAD21
		cmp	dword ptr [edi+4], 200h
		ja	loc_4AAD21
		mov	eax, [edi]
		cmp	eax, [ebp-18h]
		jb	loc_4AAD21
		mov	edx, [ebp+8]
		mov	ecx, [edx+4]
		add	ecx, [ebp-18h]
		cmp	eax, ecx
		jnb	short loc_4AAD21
		sub	eax, [ebp-18h]
		mov	[esi], eax
		mov	eax, [edi+4]
		mov	[esi+4], eax
		lea	eax, [edi+0Ch]
		mov	edx, [edi+8]
		mov	[esi+8], edx
		mov	dword ptr [ebp-20h], 0Ch
		mov	ecx, [edi+4]
		push	ecx		; n
		push	eax		; src
		mov	edx, [ebp-20h]
		add	edx, esi
		push	edx		; dest
		call	_memcpy
		mov	ecx, [edi+4]
		add	esp, 0Ch
		add	[ebp-20h], ecx
		lea	edx, [edi+20Ch]
		mov	eax, [edi+4]
		push	eax		; n
		push	edx		; src
		mov	ecx, [ebp-20h]
		add	ecx, esi
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [edi+4]
		add	[ebp-20h], eax
		push	esi		; data
		mov	edx, [ebp-20h]
		push	edx		; size
		push	7461500Ah	; tag
		mov	ecx, [ebp-50h]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AAD21
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AAD34
; ---------------------------------------------------------------------------

loc_4AAD21:				; CODE XREF: .text:004AAC76j
					; .text:004AAC80j ...
		inc	ebx

loc_4AAD22:				; CODE XREF: .text:004AAC5Fj
		cmp	ebx, patch.sorted.n
		jge	short loc_4AAD34
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4AAC64

loc_4AAD34:				; CODE XREF: .text:004AAC3Fj
					; .text:004AAD1Fj ...
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Ah], 1
		jz	loc_4AB16A
		push	1005h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AAD59
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAD59:				; CODE XREF: .text:004AAD50j
		mov	dword ptr [ebp-0E0h], 60h
		mov	dword ptr [ebp-0DCh], 61h
		mov	dword ptr [ebp-0D8h], 62h
		mov	dword ptr [ebp-0D4h], 63h
		mov	dword ptr [ebp-0D0h], 64h
		mov	dword ptr [ebp-0CCh], 65h
		mov	dword ptr [ebp-0C8h], 67h
		mov	dword ptr [ebp-0C4h], 68h
		mov	dword ptr [ebp-0C0h], 70h
		mov	dword ptr [ebp-0BCh], 71h
		mov	dword ptr [ebp-0B8h], 72h
		mov	dword ptr [ebp-0B4h], 73h
		mov	dword ptr [ebp-0B0h], 74h
		mov	dword ptr [ebp-0ACh], 75h
		mov	dword ptr [ebp-0A8h], 76h
		mov	dword ptr [ebp-0A4h], 77h
		mov	dword ptr [ebp-0A0h], 57h
		mov	dword ptr [ebp-9Ch], 58h
		mov	dword ptr [ebp-98h], 59h
		mov	dword ptr [ebp-94h], 69h
		mov	dword ptr [ebp-90h], 6Ah
		mov	dword ptr [ebp-8Ch], 6Bh
		mov	dword ptr [ebp-88h], 6Fh
		push	17h		; n
		lea	eax, [ebp-0E0h]
		push	eax		; list
		mov	dword ptr [ebp-58h], 4
		mov	dword ptr [ebp-5Ch], 10h
		mov	edx, [ebp-5Ch]
		cmp	edx, [ebp-58h]
		jle	short loc_4AAE63
		lea	ecx, [ebp-5Ch]
		jmp	short loc_4AAE66
; ---------------------------------------------------------------------------

loc_4AAE63:				; CODE XREF: .text:004AAE5Cj
		lea	ecx, [ebp-58h]

loc_4AAE66:				; CODE XREF: .text:004AAE61j
		mov	eax, [ecx]
		push	eax		; addr1
		push	0		; addr0
		call	Startnextdatalist
		add	esp, 10h
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AAED0

loc_4AAE79:				; CODE XREF: .text:004AAECEj
		push	1000h		; datasize
		lea	edx, [esi+5]
		push	edx		; data
		lea	eax, [ebp-0Ch]
		push	eax		; type
		lea	edx, [ebp-1Ch]
		push	edx		; _addr
		call	Findnextdatalist
		add	esp, 10h
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4AAED0
		mov	ecx, [ebp-1Ch]
		mov	[esi], ecx
		mov	al, [ebp-0Ch]
		mov	[esi+4], al
		push	esi		; data
		mov	edx, [ebp-20h]
		add	edx, 5
		push	edx		; size
		push	61734C0Ah	; tag
		mov	ecx, [ebp-50h]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AAECA
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAECA:				; CODE XREF: .text:004AAEC1j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AAE79

loc_4AAED0:				; CODE XREF: .text:004AAE77j
					; .text:004AAE99j
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AAF43
		push	808h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AAEEE
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAEEE:				; CODE XREF: .text:004AAEE5j
		xor	ebx, ebx
		jmp	short loc_4AAF38
; ---------------------------------------------------------------------------

loc_4AAEF2:				; CODE XREF: .text:004AAF41j
		push	804h		; datasize
		lea	eax, [esi+4]
		push	eax		; data
		push	66h		; type
		mov	edi, ebx
		push	edi		; _addr
		call	Finddata
		add	esp, 10h
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4AAF43
		mov	[esi], edi
		push	esi		; data
		mov	eax, [ebp-20h]
		add	eax, 4
		push	eax		; size
		push	7673420Ah	; tag
		mov	edx, [ebp-50h]
		push	edx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AAF37
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAF37:				; CODE XREF: .text:004AAF2Ej
		inc	ebx

loc_4AAF38:				; CODE XREF: .text:004AAEF0j
		cmp	ebx, 10h
		jge	short loc_4AAF43
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AAEF2

loc_4AAF43:				; CODE XREF: .text:004AAED4j
					; .text:004AAF0Fj ...
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AAF9A
		xor	ebx, ebx

loc_4AAF4B:				; CODE XREF: .text:004AAF98j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AAF94
		mov	edx, [eax+8]
		and	edx, 0F000h
		cmp	edx, 1000h
		jnz	short loc_4AAF94
		push	eax		; data
		push	230h		; size
		push	6870420Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AAF94
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AAF9A
; ---------------------------------------------------------------------------

loc_4AAF94:				; CODE XREF: .text:004AAF5Dj
					; .text:004AAF6Ej ...
		inc	ebx
		cmp	ebx, 4
		jl	short loc_4AAF4B

loc_4AAF9A:				; CODE XREF: .text:004AAF47j
					; .text:004AAF92j
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AAFCD
		mov	dword_5861B8, 0FEDCBA98h
		push	offset dword_5861B8 ; data
		push	5Eh		; size
		push	7661530Ah	; tag
		mov	ecx, [ebp-50h]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AAFCD
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AAFCD:				; CODE XREF: .text:004AAF9Ej
					; .text:004AAFC4j
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AB08B
		push	7C40h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AAFF4
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4AB08B
; ---------------------------------------------------------------------------

loc_4AAFF4:				; CODE XREF: .text:004AAFE6j
		mov	edi, 34h
		push	edi		; n
		push	offset rtcond	; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	eax, eax
		mov	[esi+18h], eax
		xor	ebx, ebx

loc_4AB00F:				; CODE XREF: .text:004AB03Bj
		mov	eax, 7C40h
		mov	ecx, ebx
		sub	eax, edi
		lea	edx, [edi+esi]
		push	eax		; nt
		push	edx		; t
		shl	ecx, 9
		push	100h		; nw
		add	ecx, offset rtcond.cond
		push	ecx		; w
		call	Unicodetoutf
		add	esp, 10h
		inc	eax
		add	edi, eax
		inc	ebx
		cmp	ebx, 4
		jl	short loc_4AB00F
		xor	ebx, ebx

loc_4AB03F:				; CODE XREF: .text:004AB06Bj
		mov	eax, 7C40h
		mov	ecx, ebx
		sub	eax, edi
		lea	edx, [edi+esi]
		push	eax		; nt
		push	edx		; t
		shl	ecx, 9
		push	100h		; nw
		add	ecx, offset rtcond.cmd
		push	ecx		; w
		call	Unicodetoutf
		add	esp, 10h
		inc	eax
		add	edi, eax
		inc	ebx
		cmp	ebx, 2
		jl	short loc_4AB03F
		push	esi		; data
		push	edi		; size
		push	6374520Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AB08B
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AB08B:				; CODE XREF: .text:004AAFD1j
					; .text:004AAFEFj ...
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4AB0CB
		mov	edi, 24h
		push	offset rtprot.range ; set
		call	Getrangecount
		pop	ecx
		inc	eax
		shl	eax, 3
		add	eax, edi
		mov	edi, eax
		push	offset rtprot	; data
		push	edi		; size
		push	7074520Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AB0CB
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AB0CB:				; CODE XREF: .text:004AB08Fj
					; .text:004AB0C2j
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4AB16A
		push	304h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AB0ED
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AB0ED:				; CODE XREF: .text:004AB0E4j
		xor	ebx, ebx
		jmp	short loc_4AB15C
; ---------------------------------------------------------------------------

loc_4AB0F1:				; CODE XREF: .text:004AB168j
		push	ebx		; index
		push	offset watch.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4AB15B
		mov	eax, [ebp-30h]
		cmp	word ptr [eax+0Ch], 0
		jz	short loc_4AB15B
		mov	edx, [ebp-30h]
		mov	edi, 4
		mov	ecx, [edx]
		lea	eax, [edi+esi]
		mov	[esi], ecx
		push	300h		; nt
		push	eax		; t
		push	100h		; nw
		mov	edx, [ebp-30h]
		add	edx, 0Ch
		push	edx		; w
		call	Unicodetoutf
		add	esp, 10h
		add	edi, eax
		push	esi		; data
		push	edi		; size
		push	6374570Ah	; tag
		mov	ecx, [ebp-50h]
		push	ecx		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AB15B
		mov	dword ptr [ebp-10h], 0FFFFFFFFh

loc_4AB15B:				; CODE XREF: .text:004AB106j
					; .text:004AB110j ...
		inc	ebx

loc_4AB15C:				; CODE XREF: .text:004AB0EFj
		cmp	ebx, watch.sorted.n
		jge	short loc_4AB16A
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4AB0F1

loc_4AB16A:				; CODE XREF: .text:004AAD3Bj
					; .text:004AB0CFj ...
		xor	ebx, ebx
		jmp	loc_4AB235
; ---------------------------------------------------------------------------

loc_4AB171:				; CODE XREF: .text:004AB241j
		push	ebx		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	loc_4AB234
		mov	eax, [ebp-34h]
		cmp	dword ptr [eax+2BCh], 0
		jz	loc_4AB234
		push	104h		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4AB1B6
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AB200
; ---------------------------------------------------------------------------

loc_4AB1B6:				; CODE XREF: .text:004AB1ABj
		mov	eax, [ebp-34h]
		lea	ecx, [esi+4]
		mov	edx, [eax+294h]
		mov	[esi], edx
		push	100h		; nt
		push	ecx		; t
		push	20h		; nw
		mov	eax, [ebp-34h]
		add	eax, 0Ch
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	edi, eax
		push	esi		; data
		add	edi, 4
		push	edi		; size
		push	676C500Ah	; tag
		mov	eax, [ebp-50h]
		push	eax		; f
		call	Savetaggedrecord
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AB200
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	short loc_4AB247
; ---------------------------------------------------------------------------

loc_4AB200:				; CODE XREF: .text:004AB1B4j
					; .text:004AB1F5j
		mov	edx, [ebp-50h]
		mov	[ebp-3Ch], edx
		mov	ecx, [ebp-34h]
		mov	eax, [ecx+294h]
		mov	[ebp-38h], eax
		mov	edx, [ebp+8]
		test	byte ptr [edx+0Ah], 1
		setnz	cl
		and	ecx, 1
		lea	edx, [ebp-3Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		push	edx
		mov	ecx, [ebp-34h]
		call	dword ptr [ecx+2BCh]
		add	esp, 0Ch

loc_4AB234:				; CODE XREF: .text:004AB186j
					; .text:004AB196j
		inc	ebx

loc_4AB235:				; CODE XREF: .text:004AB16Cj
		cmp	ebx, pluginlist.sorted.n
		jge	short loc_4AB247
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4AB171

loc_4AB247:				; CODE XREF: .text:004AB1FEj
					; .text:004AB23Bj
		mov	eax, [ebp-50h]
		push	eax		; stream
		call	Finalizetaggedfile
		pop	ecx
		push	0		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	eax, [ebp-10h]

loc_4AB25C:				; CODE XREF: .text:004A9D34j
					; .text:004A9D69j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4AB264:				; CODE XREF: .text:004127F5p
					; .text:00416D0Bp ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_4AB26D:				; CODE XREF: .text:004AB275j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4AB26D
		mov	eax, [ebp-4]
		add	esp, 0FFFFFC94h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4AB29C
		cmp	dword ptr [esi], 0
		jz	short loc_4AB29C
		cmp	dword ptr [esi+4], 0
		jz	short loc_4AB29C
		cmp	word ptr [esi+4Ch], 0
		jnz	short loc_4AB2A4

loc_4AB29C:				; CODE XREF: .text:004AB288j
					; .text:004AB28Dj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4ACE51
; ---------------------------------------------------------------------------

loc_4AB2A4:				; CODE XREF: .text:004AB29Aj
		mov	edx, [esi]
		mov	[ebp-20h], edx
		lea	ecx, [ebp-1474h]
		push	ecx		; int
		lea	eax, [esi+4Ch]
		push	eax		; path
		call	loc_4A9878
		add	esp, 8
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4AB2CD
		dec	eax
		jz	short loc_4AB313
		or	eax, 0FFFFFFFFh
		jmp	loc_4ACE51
; ---------------------------------------------------------------------------

loc_4AB2CD:				; CODE XREF: .text:004AB2C0j
		test	eax, eax
		jge	short loc_4AB2DA
		mov	word ptr [ebp-1474h], 0

loc_4AB2DA:				; CODE XREF: .text:004AB2CFj
		mov	edx, hwollymain
		push	0		; mode
		push	edx		; hwnd
		push	offset a_udd_1	; "*.udd"
		push	0		; currdir
		lea	ecx, [ebp-1474h]
		push	0		; args
		push	ecx		; _name
		push	offset aSelect_uddFile ; "Select .udd file"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		test	eax, eax
		jnz	short loc_4AB313
		or	eax, 0FFFFFFFFh
		jmp	loc_4ACE51
; ---------------------------------------------------------------------------

loc_4AB313:				; CODE XREF: .text:004AB2C3j
					; .text:004AB309j
		push	offset aModuleInfoFile ; "Module info file v2.01g"
		lea	edx, [ebp-1474h]
		push	edx		; _name
		lea	ecx, [ebp-1AC8h]
		push	ecx		; tf
		call	Opentaggedfile
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AB35B
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4AB353
		lea	eax, [ebp-1474h]
		push	eax		; arglist
		push	offset aInvalidOrMissi ; "Invalid or missing file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8

loc_4AB353:				; CODE XREF: .text:004AB336j
		or	eax, 0FFFFFFFFh
		jmp	loc_4ACE51
; ---------------------------------------------------------------------------

loc_4AB35B:				; CODE XREF: .text:004AB330j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4AB37B
		lea	edx, [esi+4Ch]
		push	edx		; arglist
		push	offset aModuleSLoading ; "Module '%s' - loading .udd data"
		call	_T
		pop	ecx
		push	eax		; format
		call	Info
		add	esp, 8
		jmp	short loc_4AB3A4
; ---------------------------------------------------------------------------

loc_4AB37B:				; CODE XREF: .text:004AB35Fj
		push	0		; keephittrace
		mov	ecx, [esi+4]
		push	ecx		; size
		mov	eax, [esi]
		push	eax		; base
		call	Removeanalysis
		add	esp, 0Ch
		lea	edx, [esi+4Ch]
		push	edx		; arglist
		push	offset aModuleSReloadi ; "Module '%s' - reloading .udd data"
		call	_T
		pop	ecx
		push	eax		; format
		call	Info
		add	esp, 8

loc_4AB3A4:				; CODE XREF: .text:004AB379j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-0Ch], ecx
		xor	edx, edx
		mov	[ebp-18h], eax
		mov	[ebp-10h], edx
		xor	ebx, ebx
		jmp	short loc_4AB3DA
; ---------------------------------------------------------------------------

loc_4AB3B7:				; CODE XREF: .text:004AB3E0j
		push	ebx		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jz	short loc_4AB3D9
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	[eax+298h], edx

loc_4AB3D9:				; CODE XREF: .text:004AB3CCj
		inc	ebx

loc_4AB3DA:				; CODE XREF: .text:004AB3B5j
		cmp	ebx, pluginlist.sorted.n
		jl	short loc_4AB3B7
		cmp	dword ptr [ebp-0Ch], 0
		jnz	loc_4ACD8F

loc_4AB3EC:				; CODE XREF: .text:004ACD89j
		lea	ecx, [ebp-2Ch]
		push	ecx		; size
		lea	eax, [ebp-28h]
		push	eax		; tag
		lea	edx, [ebp-1AC8h]
		push	edx		; tf
		call	Gettaggedrecordsize
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4AB413
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD8F
; ---------------------------------------------------------------------------

loc_4AB413:				; CODE XREF: .text:004AB405j
		cmp	dword ptr [ebp-28h], 646E450Ah
		jz	loc_4ACD8F
		mov	ecx, [ebp-28h]
		cmp	ecx, 6D70420Ah
		jg	loc_4AB4EB
		jz	loc_4ABBE9
		cmp	ecx, 6374570Ah
		jg	short loc_4AB497
		jz	loc_4ACA93
		cmp	ecx, 61734C0Ah
		jg	short loc_4AB47A
		jz	loc_4AC533
		sub	ecx, 336E490Ah
		jz	loc_4ABA3D
		sub	ecx, 2DF40400h
		jz	loc_4AC066
		sub	ecx, 0BF400h
		jz	loc_4ABC90
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB47A:				; CODE XREF: .text:004AB449j
		sub	ecx, 6372500Ah
		jz	loc_4AB983
		sub	ecx, 20200h
		jz	loc_4AC8CC
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB497:				; CODE XREF: .text:004AB43Bj
		cmp	ecx, 6870420Ah
		jg	short loc_4AB4CE
		jz	loc_4AC617
		sub	ecx, 6472500Ah
		jz	loc_4AC2F2
		sub	ecx, 0FBFD00h
		jz	loc_4ABF25
		sub	ecx, 1FE0300h
		jz	loc_4ACB49
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB4CE:				; CODE XREF: .text:004AB49Dj
		sub	ecx, 6977530Ah
		jz	loc_4ABDCE
		sub	ecx, 2F1F300h
		jz	loc_4ACD85
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB4EB:				; CODE XREF: .text:004AB429j
		cmp	ecx, 7461500Ah
		jg	short loc_4AB54D
		jz	loc_4AC70B
		cmp	ecx, 7263460Ah
		jg	short loc_4AB530
		jz	loc_4AB595
		sub	ecx, 7074520Ah
		jz	loc_4AC9F5
		sub	ecx, 1EDF100h
		jz	loc_4AB895
		sub	ecx, 900h
		jz	loc_4AB90C
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB530:				; CODE XREF: .text:004AB4FFj
		sub	ecx, 7361430Ah
		jz	loc_4ABE85
		sub	ecx, 1000100h
		jz	loc_4AB802
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB54D:				; CODE XREF: .text:004AB4F1j
		cmp	ecx, 74734E0Ah
		jg	short loc_4AB578
		jz	loc_4AC1E4
		sub	ecx, 74644A0Ah
		jz	loc_4ABFA3
		sub	ecx, 300h
		jz	loc_4AC268
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB578:				; CODE XREF: .text:004AB553j
		sub	ecx, 7661530Ah
		jz	loc_4AC826
		sub	ecx, 11EF00h
		jz	loc_4AC58E
		jmp	loc_4ACC43
; ---------------------------------------------------------------------------

loc_4AB595:				; CODE XREF: .text:004AB501j
		push	18h		; bufsize
		lea	eax, [ebp-1AE0h]
		push	eax		; buf
		lea	edx, [ebp-1AC8h]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, 18h
		jz	short loc_4AB5BE
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB5BE:				; CODE XREF: .text:004AB5B0j
		cmp	dword ptr [ebp-1AD0h], 0
		jz	short loc_4AB60A
		or	dword ptr [esi+8], 20000h
		cmp	dword ptr [ebp-1ACCh], 0
		jz	short loc_4AB5E6
		mov	ecx, [ebp-1ACCh]
		add	ecx, [ebp-20h]
		mov	[esi+464h], ecx

loc_4AB5E6:				; CODE XREF: .text:004AB5D5j
		cmp	dword_5CBBB4, 0
		jz	short loc_4AB60A
		mov	eax, [esi+8]
		and	eax, 4060000h
		cmp	eax, 20000h
		jnz	short loc_4AB60A
		mov	dword ptr [ebp-0Ch], 2
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB60A:				; CODE XREF: .text:004AB5C5j
					; .text:004AB5EDj ...
		push	0		; hTemplateFile
		push	0		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	1		; dwShareMode
		push	80000000h	; dwDesiredAccess
		lea	edx, [esi+4Ch]
		push	edx		; lpFileName
		call	CreateFileW
		mov	ebx, eax
		cmp	ebx, 0FFFFFFFFh
		jz	loc_4ACD85
		xor	eax, eax
		lea	edx, [ebp-2370h]
		mov	[ebp-4], eax
		push	edx		; lpFileInformation
		push	ebx		; hFile
		call	GetFileInformationByHandle
		test	eax, eax
		jz	loc_4AB752
		mov	ecx, [ebp-1AE0h]
		cmp	ecx, [ebp-234Ch]
		jz	short loc_4AB6C1
		push	ebx		; hObject
		call	CloseHandle
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4AB66D
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB66D:				; CODE XREF: .text:004AB65Fj
		lea	eax, [esi+4Ch]
		push	eax		; arglist
		push	offset aLengthOfFileSD ; "Length of file '%s' differs from that s"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aModifiedExecut ; "Modified executable"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6AC ; cond
		call	Condyesno
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 6
		jz	short loc_4AB6AB
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB6AB:				; CODE XREF: .text:004AB69Dj
		mov	dword ptr [esi+9A8h], 1
		mov	dword ptr [ebp-18h], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB6C1:				; CODE XREF: .text:004AB653j
		mov	edx, [ebp-1ADCh]
		mov	[ebp-48h], edx
		mov	ecx, [ebp-1AD8h]
		mov	[ebp-44h], ecx
		cmp	dword ptr [ebp-2358h], 0
		jz	short loc_4AB6F9
		cmp	dword ptr [ebp-235Ch], 0
		jz	short loc_4AB6F9
		mov	eax, [ebp-235Ch]
		mov	[ebp-50h], eax
		mov	edx, [ebp-2358h]
		mov	[ebp-4Ch], edx
		jmp	short loc_4AB70B
; ---------------------------------------------------------------------------

loc_4AB6F9:				; CODE XREF: .text:004AB6DAj
					; .text:004AB6E3j
		mov	ecx, [ebp-236Ch]
		mov	[ebp-50h], ecx
		mov	eax, [ebp-2368h]
		mov	[ebp-4Ch], eax

loc_4AB70B:				; CODE XREF: .text:004AB6F7j
		mov	eax, [ebp-48h]
		mov	edx, [ebp-44h]
		cmp	edx, [ebp-4Ch]
		jnz	short loc_4AB719
		cmp	eax, [ebp-50h]

loc_4AB719:				; CODE XREF: .text:004AB714j
		jz	short loc_4AB752
		mov	eax, [ebp-48h]
		mov	edx, [ebp-44h]
		sub	eax, [ebp-50h]
		sbb	edx, [ebp-4Ch]
		cmp	edx, 8
		jnz	short loc_4AB731
		cmp	eax, 61C46800h

loc_4AB731:				; CODE XREF: .text:004AB72Aj
		jz	short loc_4AB752
		mov	eax, [ebp-50h]
		mov	edx, [ebp-4Ch]
		sub	eax, [ebp-48h]
		sbb	edx, [ebp-44h]
		cmp	edx, 8
		jnz	short loc_4AB749
		cmp	eax, 61C46800h

loc_4AB749:				; CODE XREF: .text:004AB742j
		jz	short loc_4AB752
		mov	dword ptr [ebp-4], 1

loc_4AB752:				; CODE XREF: .text:004AB641j
					; .text:loc_4AB719j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4AB7AA
		mov	ecx, [ebp-234Ch]
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	short loc_4AB7AA
		push	0		; lpOverlapped
		lea	eax, [ebp-24h]
		push	eax		; lpNumberOfBytesRead
		mov	edx, [ebp-234Ch]
		push	edx		; nNumberOfBytesToRead
		push	edi		; lpBuffer
		push	ebx		; hFile
		call	ReadFile
		test	eax, eax
		jz	short loc_4AB7AA
		mov	ecx, [ebp-24h]
		cmp	ecx, [ebp-234Ch]
		jnz	short loc_4AB7AA
		mov	eax, [ebp-24h]
		push	eax
		push	edi
		call	loc_410FAC
		add	esp, 8
		cmp	eax, [ebp-1AD4h]
		jz	short loc_4AB7AA
		mov	dword ptr [ebp-4], 1

loc_4AB7AA:				; CODE XREF: .text:004AB756j
					; .text:004AB769j ...
		push	ebx		; hObject
		call	CloseHandle
		cmp	dword ptr [ebp-4], 0
		jz	loc_4ACD85
		lea	edx, [esi+4Ch]
		push	edx		; arglist
		push	offset aFileSWasModifi ; "File '%s' was modified since last debug"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aModifiedExecut ; "Modified executable"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6AC ; cond
		call	Condyesno
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 6
		jz	short loc_4AB7F3
		mov	dword ptr [ebp-0Ch], 3

loc_4AB7F3:				; CODE XREF: .text:004AB7EAj
		mov	dword ptr [esi+9A8h], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB802:				; CODE XREF: .text:004AB542j
		push	1005h		; bufsize
		lea	ecx, [ebp-1064h]
		push	ecx		; buf
		lea	eax, [ebp-1AC8h]
		push	eax		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 5
		ja	short loc_4AB832
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB832:				; CODE XREF: .text:004AB824j
		xor	eax, eax
		cmp	dword ptr [ebp-18h], 0
		mov	al, [ebp-1060h]
		jz	short loc_4AB867
		cmp	eax, 21h
		jz	short loc_4AB867
		cmp	eax, 30h
		jz	short loc_4AB867
		cmp	eax, 54h
		jz	short loc_4AB867
		cmp	eax, 55h
		jz	short loc_4AB867
		cmp	eax, 56h
		jz	short loc_4AB867
		cmp	eax, 44h
		jz	short loc_4AB867
		cmp	eax, 45h
		jnz	loc_4ACD85

loc_4AB867:				; CODE XREF: .text:004AB83Ej
					; .text:004AB843j ...
		mov	edx, [ebp-24h]
		lea	ecx, [ebp-105Fh]
		sub	edx, 5
		xor	eax, eax
		push	edx		; datasize
		push	ecx		; data
		mov	al, [ebp-1060h]
		push	eax		; type
		mov	edx, [ebp-20h]
		add	edx, [ebp-1064h]
		push	edx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB895:				; CODE XREF: .text:004AB519j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	ecx, [ebp-2Ch]
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AB8BB
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB8BB:				; CODE XREF: .text:004AB8ADj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AB8E0
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB8E0:				; CODE XREF: .text:004AB8D2j
		mov	ecx, [ebp-2Ch]
		lea	edx, [esi+938h]
		push	ecx		; size
		mov	eax, [ebp-20h]
		push	eax		; base
		push	edi		; data
		push	edx		; nd
		call	Uddtonesteddata
		add	esp, 10h
		test	eax, eax
		jz	loc_4ACD85
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB90C:				; CODE XREF: .text:004AB525j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	ecx, [ebp-2Ch]
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AB932
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB932:				; CODE XREF: .text:004AB924j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AB957
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB957:				; CODE XREF: .text:004AB949j
		mov	ecx, [ebp-2Ch]
		lea	edx, [esi+920h]
		push	ecx		; size
		mov	eax, [ebp-20h]
		push	eax		; base
		push	edi		; data
		push	edx		; nd
		call	Uddtonesteddata
		add	esp, 10h
		test	eax, eax
		jz	loc_4ACD85
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB983:				; CODE XREF: .text:004AB480j
		mov	ecx, [ebp-2Ch]
		shr	ecx, 6
		mov	[ebp-8], ecx
		mov	eax, [ebp-8]
		shl	eax, 6
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AB9A3
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB9A3:				; CODE XREF: .text:004AB995j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AB9C9
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB9C9:				; CODE XREF: .text:004AB9BBj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AB9EE
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AB9EE:				; CODE XREF: .text:004AB9E0j
		xor	ebx, ebx
		mov	eax, edi
		mov	[ebp-58h], eax
		cmp	ebx, [ebp-8]
		jge	short loc_4ABA0C

loc_4AB9FA:				; CODE XREF: .text:004ABA0Aj
		mov	edx, [ebp-58h]
		mov	ecx, [ebp-20h]
		add	[edx], ecx
		inc	ebx
		add	dword ptr [ebp-58h], 40h
		cmp	ebx, [ebp-8]
		jl	short loc_4AB9FA

loc_4ABA0C:				; CODE XREF: .text:004AB9F8j
		mov	eax, [ebp-20h]
		add	eax, [esi+4]
		push	eax		; addr1
		mov	edx, [ebp-20h]
		push	edx		; addr0
		mov	ecx, [ebp-8]
		push	ecx		; n
		push	edi		; data
		push	offset procdata	; sd
		call	Replacesorteddatarange
		add	esp, 14h
		test	eax, eax
		jz	loc_4ACD85
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABA3D:				; CODE XREF: .text:004AB457j
		cmp	dword ptr [ebp-2Ch], 1Fh
		jnb	short loc_4ABA4F
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABA4F:				; CODE XREF: .text:004ABA41j
		mov	eax, [ebp-2Ch]
		push	eax		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ABA6B
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABA6B:				; CODE XREF: .text:004ABA5Dj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ABA90
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABA90:				; CODE XREF: .text:004ABA82j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4ABAA1
		mov	ecx, [edi]
		cmp	ecx, [esi+4]
		jnb	loc_4ACD85

loc_4ABAA1:				; CODE XREF: .text:004ABA94j
		mov	dword ptr [ebp-8], 1Ch
		push	100h		; nw
		lea	eax, [ebp-16B4h]
		push	eax		; w
		mov	edx, [ebp-2Ch]
		sub	edx, [ebp-8]
		push	edx		; nt
		mov	ecx, [ebp-8]
		add	ecx, edi
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		mov	eax, [ebp-2Ch]
		sub	eax, [ebp-8]
		dec	eax
		push	eax		; n
		mov	edx, [ebp-8]
		add	edx, edi
		push	edx		; src
		call	StrlenA
		add	esp, 8
		inc	eax
		add	[ebp-8], eax
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp-2Ch]
		jnz	short loc_4ABAF7
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABAF7:				; CODE XREF: .text:004ABAE9j
		push	100h		; nw
		lea	eax, [ebp-18B4h]
		push	eax		; w
		mov	edx, [ebp-2Ch]
		sub	edx, [ebp-8]
		push	edx		; nt
		mov	ecx, [ebp-8]
		add	ecx, edi
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		mov	eax, [ebp-2Ch]
		sub	eax, [ebp-8]
		dec	eax
		push	eax		; n
		mov	edx, [ebp-8]
		add	edx, edi
		push	edx		; src
		call	StrlenA
		add	esp, 8
		inc	eax
		add	[ebp-8], eax
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp-2Ch]
		jnz	short loc_4ABB46
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABB46:				; CODE XREF: .text:004ABB38j
		push	100h		; nw
		lea	eax, [ebp-1AB4h]
		push	eax		; w
		mov	edx, [ebp-2Ch]
		sub	edx, [ebp-8]
		push	edx		; nt
		mov	ecx, [ebp-8]
		add	ecx, edi
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		test	byte ptr [edi+0Ah], 1
		jz	short loc_4ABBA8
		push	3		; mode
		push	1		; size
		mov	eax, [edi]
		add	eax, [ebp-20h]
		push	eax		; _addr
		lea	edx, [ebp-2Dh]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 1
		jnz	short loc_4ABBA8
		mov	cl, [edi+0Eh]
		cmp	cl, [ebp-2Dh]
		jz	short loc_4ABBA8
		mov	al, [edi+0Fh]
		cmp	al, [ebp-2Dh]
		jz	short loc_4ABBA8
		cmp	byte ptr [ebp-2Dh], 0CCh
		jz	short loc_4ABBA8
		inc	dword ptr [ebp-10h]
		or	dword ptr [edi+8], 20000h

loc_4ABBA8:				; CODE XREF: .text:004ABB6Bj
					; .text:004ABB86j ...
		lea	edx, [ebp-1AB4h]
		push	edx		; exprtype
		lea	ecx, [ebp-18B4h]
		push	ecx		; expression
		lea	eax, [ebp-16B4h]
		push	eax		; condition
		push	0		; actions
		mov	edx, [edi+14h]
		push	edx		; count
		mov	ecx, [edi+10h]
		push	ecx		; limit
		movzx	eax, word ptr [edi+0Ch]
		push	eax		; fnindex
		mov	edx, [edi+8]
		and	edx, 0FFFF1FFFh
		push	edx		; type
		mov	ecx, [edi]
		add	ecx, [ebp-20h]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABBE9:				; CODE XREF: .text:004AB42Fj
		cmp	dword ptr [ebp-2Ch], 14h
		jz	short loc_4ABBFB
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABBFB:				; CODE XREF: .text:004ABBEDj
		push	14h		; bufsize
		lea	eax, [ebp-1AF4h]
		push	eax		; buf
		lea	edx, [ebp-1AC8h]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 14h
		jz	short loc_4ABC28
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABC28:				; CODE XREF: .text:004ABC1Aj
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4ABC52
		mov	ecx, [esi+4]
		cmp	ecx, [ebp-1AF4h]
		jbe	loc_4ACD85
		mov	eax, [ebp-1AF4h]
		add	eax, [ebp-1AF0h]
		cmp	eax, [esi+4]
		ja	loc_4ACD85

loc_4ABC52:				; CODE XREF: .text:004ABC2Cj
		mov	edx, [ebp-20h]
		lea	eax, [ebp-1AF4h]
		add	[ebp-1AF4h], edx
		xor	ecx, ecx
		mov	[ebp-1AE4h], ecx
		push	eax		; item
		push	offset bpmem.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jnz	loc_4ACD85
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABC90:				; CODE XREF: .text:004AB46Fj
		cmp	dword ptr [ebp-2Ch], 4
		jnb	short loc_4ABCA2
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABCA2:				; CODE XREF: .text:004ABC94j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ABCC8
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABCC8:				; CODE XREF: .text:004ABCBAj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ABCED
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABCED:				; CODE XREF: .text:004ABCDFj
		mov	ecx, [edi]
		add	ecx, [ebp-20h]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4ABD0C
		mov	eax, [ebx+4]	; int
		mov	edx, [ebp-2Ch]
		sub	edx, 4		; int
		cmp	eax, edx
		jz	short loc_4ABD18

loc_4ABD0C:				; CODE XREF: .text:004ABCFDj
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABD18:				; CODE XREF: .text:004ABD0Aj
		cmp	dword ptr [ebx+64h], 0
		jnz	short loc_4ABD2F
		push	1		; flags
		mov	ecx, [ebx+4]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+64h], eax

loc_4ABD2F:				; CODE XREF: .text:004ABD1Cj
		cmp	dword ptr [ebx+64h], 0
		jnz	short loc_4ABD41
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABD41:				; CODE XREF: .text:004ABD33j
		mov	eax, [ebx+4]
		add	edi, 4
		push	eax		; n
		push	edi		; src
		mov	eax, [ebx+64h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		cmp	dword_5CBBAC, 0
		jnz	short loc_4ABD7C
		xor	edx, edx
		mov	[ebp-1Ch], edx
		jmp	short loc_4ABD72
; ---------------------------------------------------------------------------

loc_4ABD65:				; CODE XREF: .text:004ABD78j
		mov	ecx, [ebx+64h]
		mov	eax, [ebp-1Ch]
		and	byte ptr [ecx+eax], 7Fh
		inc	dword ptr [ebp-1Ch]

loc_4ABD72:				; CODE XREF: .text:004ABD63j
		mov	edx, [ebx+4]
		cmp	edx, [ebp-1Ch]
		ja	short loc_4ABD65
		jmp	short loc_4ABDC2
; ---------------------------------------------------------------------------

loc_4ABD7C:				; CODE XREF: .text:004ABD5Cj
		xor	ecx, ecx
		mov	[ebp-1Ch], ecx
		jmp	short loc_4ABDBA
; ---------------------------------------------------------------------------

loc_4ABD83:				; CODE XREF: .text:004ABDC0j
		mov	eax, [ebx+64h]
		mov	edx, [ebp-1Ch]
		test	byte ptr [eax+edx], 80h
		jz	short loc_4ABDB7
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	0		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	8000h		; type
		mov	ecx, [ebx]
		add	ecx, [ebp-1Ch]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		or	dword ptr [esi+8], 10000000h

loc_4ABDB7:				; CODE XREF: .text:004ABD8Dj
		inc	dword ptr [ebp-1Ch]

loc_4ABDBA:				; CODE XREF: .text:004ABD81j
		mov	eax, [ebx+4]
		cmp	eax, [ebp-1Ch]
		ja	short loc_4ABD83

loc_4ABDC2:				; CODE XREF: .text:004ABD7Aj
		or	dword ptr [esi+8], 800000h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABDCE:				; CODE XREF: .text:004AB4D4j
		cmp	dword ptr [ebp-2Ch], 14h
		jnb	short loc_4ABDE0
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABDE0:				; CODE XREF: .text:004ABDD2j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ABE06
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABE06:				; CODE XREF: .text:004ABDF8j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ABE2B
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABE2B:				; CODE XREF: .text:004ABE1Dj
		lea	eax, [edi+4]
		cmp	dword ptr [eax+0Ch], 1
		jl	short loc_4ABE3D
		cmp	dword ptr [eax+0Ch], 100h
		jle	short loc_4ABE49

loc_4ABE3D:				; CODE XREF: .text:004ABE32j
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABE49:				; CODE XREF: .text:004ABE3Bj
		xor	ebx, ebx
		lea	edx, [eax+10h]
		mov	[ebp-58h], edx
		jmp	short loc_4ABE60
; ---------------------------------------------------------------------------

loc_4ABE53:				; CODE XREF: .text:004ABE63j
		mov	ecx, [ebp-58h]
		mov	edx, [ebp-20h]
		add	[ecx], edx
		inc	ebx
		add	dword ptr [ebp-58h], 4

loc_4ABE60:				; CODE XREF: .text:004ABE51j
		cmp	ebx, [eax+0Ch]
		jl	short loc_4ABE53
		mov	ecx, [eax+0Ch]
		shl	ecx, 2
		add	ecx, 10h
		push	ecx		; datasize
		push	eax		; data
		push	40h		; type
		mov	eax, [edi]
		add	eax, [ebp-20h]
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABE85:				; CODE XREF: .text:004AB536j
		cmp	dword ptr [ebp-2Ch], 10h
		jnb	short loc_4ABE97
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABE97:				; CODE XREF: .text:004ABE89j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	eax, [ebp-2Ch]
		push	eax		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ABEBD
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABEBD:				; CODE XREF: .text:004ABEAFj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ABEE2
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABEE2:				; CODE XREF: .text:004ABED4j
		lea	eax, [edi+4]
		cmp	dword ptr [eax+8], 0
		jl	short loc_4ABEF4
		cmp	dword ptr [eax+8], 80h
		jle	short loc_4ABF00

loc_4ABEF4:				; CODE XREF: .text:004ABEE9j
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABF00:				; CODE XREF: .text:004ABEF2j
		mov	edx, [ebp-20h]
		add	[eax], edx
		mov	ecx, [eax+8]
		shl	ecx, 2
		add	ecx, 0Ch
		push	ecx		; datasize
		push	eax		; data
		push	41h		; type
		mov	eax, [edi]
		add	eax, [ebp-20h]
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABF25:				; CODE XREF: .text:004AB4B7j
		cmp	dword ptr [ebp-2Ch], 5
		jnb	short loc_4ABF37
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABF37:				; CODE XREF: .text:004ABF29j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ABF5D
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABF5D:				; CODE XREF: .text:004ABF4Fj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ABF82
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABF82:				; CODE XREF: .text:004ABF74j
		lea	ecx, [edi+4]
		mov	[ebp-40h], ecx
		push	1		; datasize
		mov	eax, [ebp-40h]
		push	eax		; data
		push	42h		; type
		mov	edx, [edi]
		add	edx, [ebp-20h]
		push	edx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABFA3:				; CODE XREF: .text:004AB561j
		mov	eax, [ebp-2Ch]
		mov	ecx, 9
		xor	edx, edx
		div	ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	eax, [ebp-8]
		lea	eax, [eax+eax*8]
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ABFD3
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ABFD3:				; CODE XREF: .text:004ABFC5j
		mov	edx, [ebp-8]
		add	edx, 400h
		push	edx
		mov	ecx, [esi+4]
		push	ecx
		mov	eax, [esi]
		push	eax
		lea	edx, [esi+8F4h]
		push	edx
		call	loc_471028
		add	esp, 10h
		test	eax, eax
		jz	short loc_4AC003
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC003:				; CODE XREF: .text:004ABFF5j
		mov	edi, [esi+8FCh]
		mov	eax, [ebp-2Ch]
		push	eax		; bufsize
		push	edi		; buf
		lea	edx, [ebp-1AC8h]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC02E
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC02E:				; CODE XREF: .text:004AC020j
		xor	ebx, ebx
		cmp	ebx, [ebp-8]
		jge	short loc_4AC048

loc_4AC035:				; CODE XREF: .text:004AC046j
		cmp	dword ptr [edi], 0FFFFFFFFh
		jz	short loc_4AC03F
		mov	eax, [ebp-20h]
		add	[edi], eax

loc_4AC03F:				; CODE XREF: .text:004AC038j
		inc	ebx
		add	edi, 9
		cmp	ebx, [ebp-8]
		jl	short loc_4AC035

loc_4AC048:				; CODE XREF: .text:004AC033j
		mov	edx, [ebp-8]
		mov	[esi+908h], edx
		xor	ecx, ecx
		mov	[esi+90Ch], ecx
		xor	eax, eax
		mov	[esi+910h], eax
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC066:				; CODE XREF: .text:004AB463j
		cmp	dword ptr [ebp-2Ch], 314h
		jbe	short loc_4AC07B
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC07B:				; CODE XREF: .text:004AC06Dj
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AC097
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC097:				; CODE XREF: .text:004AC089j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC0BC
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC0BC:				; CODE XREF: .text:004AC0AEj
		push	104h		; nw
		lea	ecx, [ebp-126Ch]
		push	ecx		; w
		mov	eax, [ebp-2Ch]
		sub	eax, 8
		push	eax		; nt
		lea	edx, [edi+8]
		push	edx		; t
		call	Utftounicode
		mov	eax, [esi+914h]
		add	esp, 10h
		mov	edx, eax
		xor	ebx, ebx
		mov	[ebp-58h], edx
		jmp	short loc_4AC0FB
; ---------------------------------------------------------------------------

loc_4AC0EA:				; CODE XREF: .text:004AC101j
		mov	ecx, [ebp-58h]
		mov	eax, [ecx]
		cmp	eax, [edi]
		jz	short loc_4AC103
		inc	ebx
		add	dword ptr [ebp-58h], 214h

loc_4AC0FB:				; CODE XREF: .text:004AC0E8j
		cmp	ebx, [esi+91Ch]
		jl	short loc_4AC0EA

loc_4AC103:				; CODE XREF: .text:004AC0F1j
		cmp	ebx, [esi+91Ch]
		jl	loc_4ACD85
		mov	edx, [esi+91Ch]	; int
		cmp	edx, [esi+918h]
		jl	short loc_4AC142
		push	1		; flags
		push	0		; failed
		push	214h		; itemsize
		lea	ecx, [esi+918h]	; int
		push	ecx		; pcount
		mov	eax, [esi+914h]	; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	[esi+914h], eax

loc_4AC142:				; CODE XREF: .text:004AC11Bj
		mov	edx, [esi+91Ch]
		cmp	edx, [esi+918h]
		jge	loc_4ACD85
		mov	ecx, [esi+91Ch]
		mov	eax, ecx
		shl	ecx, 5
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		mov	edx, [esi+914h]
		mov	eax, [edi]
		mov	[edx+ecx*4], eax
		mov	edx, [esi+91Ch]
		mov	ecx, edx
		shl	edx, 5
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		mov	eax, [esi+914h]
		mov	ecx, [edi+4]
		mov	[eax+edx*4+4], ecx
		mov	edx, [esi+91Ch]
		mov	eax, edx
		shl	edx, 5
		add	edx, eax
		lea	edx, [eax+edx*4]
		mov	ecx, [esi+914h]
		xor	eax, eax
		mov	[ecx+edx*4+8], eax
		lea	edx, [ebp-126Ch]
		push	edx		; src
		push	104h		; n
		mov	ecx, [esi+91Ch]
		mov	eax, ecx
		shl	ecx, 5
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		shl	ecx, 2
		add	ecx, [esi+914h]
		add	ecx, 0Ch
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	dword ptr [esi+91Ch]
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC1E4:				; CODE XREF: .text:004AB555j
		cmp	dword ptr [ebp-2Ch], 28h
		jz	short loc_4AC1F6
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC1F6:				; CODE XREF: .text:004AC1E8j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	edx, [ebp-2Ch]
		push	edx		; bufsize
		lea	ecx, [esi+4ACh]
		push	ecx		; buf
		lea	eax, [ebp-1AC8h]
		push	eax		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC23E
		push	28h		; n
		push	0		; c
		lea	edx, [esi+4ACh]
		push	edx		; s
		call	_memset
		mov	dword ptr [ebp-0Ch], 1
		add	esp, 0Ch
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC23E:				; CODE XREF: .text:004AC21Dj
		xor	ebx, ebx
		lea	eax, [esi+4ACh]
		mov	[ebp-58h], eax

loc_4AC249:				; CODE XREF: .text:004AC261j
		mov	edx, [ebp-58h]
		cmp	dword ptr [edx], 0
		jz	short loc_4AC259
		mov	ecx, [ebp-58h]
		mov	eax, [ebp-20h]
		add	[ecx], eax

loc_4AC259:				; CODE XREF: .text:004AC24Fj
		inc	ebx
		add	dword ptr [ebp-58h], 8
		cmp	ebx, 5
		jl	short loc_4AC249
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC268:				; CODE XREF: .text:004AB56Dj
		cmp	dword ptr [ebp-2Ch], 400h
		jz	short loc_4AC27D
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC27D:				; CODE XREF: .text:004AC26Fj
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	edx, [ebp-2Ch]
		push	edx		; bufsize
		lea	ecx, [esi+4D4h]
		push	ecx		; buf
		lea	eax, [ebp-1AC8h]
		push	eax		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC2C8
		push	400h		; n
		push	0		; c
		lea	edx, [esi+4D4h]
		push	edx		; s
		call	_memset
		mov	dword ptr [ebp-0Ch], 1
		add	esp, 0Ch
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC2C8:				; CODE XREF: .text:004AC2A4j
		xor	ebx, ebx
		lea	eax, [esi+4D4h]
		mov	[ebp-58h], eax

loc_4AC2D3:				; CODE XREF: .text:004AC2EBj
		mov	edx, [ebp-58h]
		cmp	dword ptr [edx], 0
		jz	short loc_4AC2E3
		mov	ecx, [ebp-58h]
		mov	eax, [ebp-20h]
		add	[ecx], eax

loc_4AC2E3:				; CODE XREF: .text:004AC2D9j
		inc	ebx
		add	dword ptr [ebp-58h], 10h
		cmp	ebx, 40h
		jl	short loc_4AC2D3
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC2F2:				; CODE XREF: .text:004AB4ABj
		cmp	dword ptr [ebp-2Ch], 4
		jnb	short loc_4AC304
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC304:				; CODE XREF: .text:004AC2F6j
		cmp	dword ptr [ebp-18h], 0
		jnz	loc_4ACD85
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AC32A
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC32A:				; CODE XREF: .text:004AC31Cj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC34F
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC34F:				; CODE XREF: .text:004AC341j
		mov	ecx, [edi]	; int
		mov	[ebp-14h], ecx
		mov	dword ptr [ebp-1Ch], 4
		cmp	dword ptr [ebp-14h], 0
		jg	short loc_4AC36D
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC36D:				; CODE XREF: .text:004AC35Fj
		push	0		; flags
		mov	eax, [ebp-14h]
		add	eax, eax
		lea	eax, [eax+eax*8] ; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_4AC395
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC395:				; CODE XREF: .text:004AC387j
		xor	ebx, ebx
		mov	eax, [ebp-1Ch]
		lea	edx, [edi+eax]
		mov	[ebp-5Ch], edx
		mov	ecx, [ebp-3Ch]
		lea	eax, [ecx+4]
		mov	[ebp-58h], eax
		cmp	ebx, [ebp-14h]
		jge	loc_4AC4D5

loc_4AC3B2:				; CODE XREF: .text:004AC4CFj
		mov	edx, [ebp-1Ch]
		add	edx, 12h
		cmp	edx, [ebp-2Ch]
		jbe	short loc_4AC3C9
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4AC4D5
; ---------------------------------------------------------------------------

loc_4AC3C9:				; CODE XREF: .text:004AC3BBj
		mov	eax, ebx
		push	6		; n
		add	eax, eax
		mov	ecx, [ebp-1Ch]
		add	ecx, edi
		push	ecx		; src
		lea	eax, [eax+eax*8]
		add	eax, [ebp-3Ch]
		push	eax		; dest
		call	_memcpy
		add	dword ptr [ebp-1Ch], 6
		add	dword ptr [ebp-5Ch], 6
		mov	edx, [ebp-58h]
		add	esp, 0Ch
		mov	ax, [edx]
		test	ah, 2
		jz	short loc_4AC436
		test	ah, 80h
		jz	short loc_4AC410
		mov	edx, [ebp-5Ch]
		mov	eax, [ebp-58h]
		movsx	ecx, byte ptr [edx]
		mov	[eax+2], ecx
		inc	dword ptr [ebp-1Ch]
		inc	dword ptr [ebp-5Ch]
		jmp	short loc_4AC436
; ---------------------------------------------------------------------------

loc_4AC410:				; CODE XREF: .text:004AC3FAj
		mov	ecx, ebx
		push	4		; n
		add	ecx, ecx
		mov	edx, [ebp-1Ch]
		add	edx, edi
		push	edx		; src
		lea	ecx, [ecx+ecx*8]
		add	ecx, [ebp-3Ch]
		add	ecx, 6
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword ptr [ebp-1Ch], 4
		add	dword ptr [ebp-5Ch], 4

loc_4AC436:				; CODE XREF: .text:004AC3F5j
					; .text:004AC40Ej
		mov	eax, [ebp-58h]
		mov	ax, [eax]
		test	ah, 1
		jz	short loc_4AC480
		test	ah, 40h
		jz	short loc_4AC45A
		mov	edx, [ebp-5Ch]
		mov	eax, [ebp-58h]
		movsx	ecx, byte ptr [edx]
		mov	[eax+6], ecx
		inc	dword ptr [ebp-1Ch]
		inc	dword ptr [ebp-5Ch]
		jmp	short loc_4AC480
; ---------------------------------------------------------------------------

loc_4AC45A:				; CODE XREF: .text:004AC444j
		mov	ecx, ebx
		push	4		; n
		add	ecx, ecx
		mov	edx, [ebp-1Ch]
		add	edx, edi
		push	edx		; src
		lea	ecx, [ecx+ecx*8]
		add	ecx, [ebp-3Ch]
		add	ecx, 0Ah
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword ptr [ebp-1Ch], 4
		add	dword ptr [ebp-5Ch], 4

loc_4AC480:				; CODE XREF: .text:004AC43Fj
					; .text:004AC458j
		mov	eax, [ebp-58h]
		and	word ptr [eax],	3FFFh
		mov	edx, [ebp-58h]
		test	byte ptr [edx],	20h
		jz	short loc_4AC4C7
		mov	eax, ebx
		push	4		; n
		add	eax, eax
		mov	ecx, [ebp-1Ch]
		add	ecx, edi
		push	ecx		; src
		lea	eax, [eax+eax*8]
		add	eax, [ebp-3Ch]
		add	eax, 0Eh
		push	eax		; dest
		call	_memcpy
		add	dword ptr [ebp-1Ch], 4
		add	dword ptr [ebp-5Ch], 4
		mov	edx, [ebp-58h]
		add	esp, 0Ch
		test	byte ptr [edx],	80h
		jz	short loc_4AC4C7
		mov	ecx, [ebp-58h]
		mov	eax, [ebp-20h]
		add	[ecx+0Ah], eax

loc_4AC4C7:				; CODE XREF: .text:004AC48Ej
					; .text:004AC4BCj
		inc	ebx
		add	dword ptr [ebp-58h], 12h
		cmp	ebx, [ebp-14h]
		jl	loc_4AC3B2

loc_4AC4D5:				; CODE XREF: .text:004AC3ACj
					; .text:004AC3C4j
		mov	edx, [ebp-2Ch]
		sub	edx, [ebp-1Ch]
		cmp	edx, 12h
		jz	short loc_4AC4E7
		mov	dword ptr [ebp-0Ch], 1

loc_4AC4E7:				; CODE XREF: .text:004AC4DEj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4AC4FC
		mov	ecx, [ebp-3Ch]
		push	ecx		; data
		call	Virtfree
		pop	ecx
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC4FC:				; CODE XREF: .text:004AC4EBj
		mov	eax, [ebp-3Ch]
		mov	[esi+950h], eax
		mov	edx, [ebp-14h]
		mov	[esi+958h], edx
		mov	dword ptr [esi+954h], 12h
		mov	ecx, [ebp-14h]
		mov	[esi+95Ch], ecx
		lea	eax, [esi+950h]
		push	eax
		call	loc_43AE48
		pop	ecx
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC533:				; CODE XREF: .text:004AB44Bj
		push	1005h		; bufsize
		lea	edx, [ebp-1064h]
		push	edx		; buf
		lea	ecx, [ebp-1AC8h]
		push	ecx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 5
		ja	short loc_4AC563
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC563:				; CODE XREF: .text:004AC555j
		mov	eax, [ebp-24h]
		lea	edx, [ebp-105Fh]
		sub	eax, 5
		xor	ecx, ecx
		push	eax		; datasize
		push	edx		; data
		mov	cl, [ebp-1060h]
		push	ecx		; type
		mov	eax, [ebp-1064h]
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC58E:				; CODE XREF: .text:004AB58Aj
		cmp	dword ptr [ebp-2Ch], 8
		jnb	short loc_4AC5A0
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC5A0:				; CODE XREF: .text:004AC592j
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AC5BC
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC5BC:				; CODE XREF: .text:004AC5AEj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC5E1
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC5E1:				; CODE XREF: .text:004AC5D3j
		mov	ecx, [edi+4]
		add	ecx, ecx
		add	ecx, 8
		cmp	ecx, [ebp-2Ch]
		jz	short loc_4AC5FA
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC5FA:				; CODE XREF: .text:004AC5ECj
		mov	eax, [ebp-2Ch]
		sub	eax, 4
		push	eax		; datasize
		lea	edx, [edi+4]
		push	edx		; data
		push	66h		; type
		mov	ecx, [edi]
		push	ecx		; _addr
		call	Insertdata
		add	esp, 10h
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC617:				; CODE XREF: .text:004AB49Fj
		cmp	dword ptr [ebp-2Ch], 230h
		jz	short loc_4AC62C
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC62C:				; CODE XREF: .text:004AC61Ej
		push	230h		; bufsize
		lea	eax, [ebp-1D24h]
		push	eax		; buf
		lea	edx, [ebp-1AC8h]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 230h
		jz	short loc_4AC65F
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC65F:				; CODE XREF: .text:004AC651j
		cmp	dword ptr [ebp-1D24h], 4
		jb	short loc_4AC674
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC674:				; CODE XREF: .text:004AC666j
		xor	ecx, ecx
		mov	[ebp-1D08h], ecx
		cmp	dword ptr [ebp-1D00h], 0
		jz	short loc_4AC6DA
		xor	ebx, ebx
		jmp	short loc_4AC6D2
; ---------------------------------------------------------------------------

loc_4AC689:				; CODE XREF: .text:004AC6D8j
		push	ebx		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	short loc_4AC6D1
		push	104h		; maxlen
		lea	eax, [ebp-1CFCh]
		push	eax		; s2
		lea	edx, [edi+4Ch]
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4AC6D1
		mov	ecx, [edi]
		sub	ecx, [ebp-1D00h]
		add	[ebp-1D18h], ecx
		mov	eax, [edi]
		mov	[ebp-1D00h], eax
		jmp	short loc_4AC6DA
; ---------------------------------------------------------------------------

loc_4AC6D1:				; CODE XREF: .text:004AC69Bj
					; .text:004AC6B7j
		inc	ebx

loc_4AC6D2:				; CODE XREF: .text:004AC687j
		cmp	ebx, module.sorted.n
		jl	short loc_4AC689

loc_4AC6DA:				; CODE XREF: .text:004AC683j
					; .text:004AC6CFj
		lea	edx, [ebp-1D24h]
		push	edx		; item
		push	offset bphard.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_4AC6FE
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC6FE:				; CODE XREF: .text:004AC6F0j
		push	1
		call	loc_44F668
		pop	ecx
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC70B:				; CODE XREF: .text:004AB4F3j
		mov	ecx, [ebp-2Ch]
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AC727
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC727:				; CODE XREF: .text:004AC719j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC74C
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC74C:				; CODE XREF: .text:004AC73Ej
		push	40Ch		; n
		push	0		; c
		lea	ecx, [ebp-233Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [edi]
		add	eax, [ebp-20h]
		mov	[ebp-233Ch], eax
		mov	edx, [edi+4]
		mov	[ebp-2338h], edx
		mov	ecx, [edi+8]
		mov	[ebp-2334h], ecx
		mov	eax, [ebp-233Ch]
		cmp	eax, [ebp-20h]
		jb	loc_4ACD85
		mov	edx, [ebp-233Ch]
		mov	ecx, [ebp-20h]
		add	ecx, [esi+4]
		add	edx, [ebp-2338h]
		cmp	edx, ecx
		jnb	loc_4ACD85
		cmp	dword ptr [ebp-2338h], 200h
		ja	loc_4ACD85
		mov	dword ptr [ebp-24h], 0Ch
		mov	eax, [ebp-2338h]
		push	eax		; n
		mov	edx, [ebp-24h]
		add	edx, edi
		push	edx		; src
		lea	ecx, [ebp-2330h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp-2338h]
		add	[ebp-24h], eax
		mov	edx, [ebp-2338h]
		push	edx		; n
		add	edi, [ebp-24h]
		push	edi		; src
		lea	ecx, [ebp-2130h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	eax, [ebp-233Ch]
		push	eax		; item
		push	offset patch.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	loc_4ACD85
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC826:				; CODE XREF: .text:004AB57Ej
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AC842
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC842:				; CODE XREF: .text:004AC834j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC867
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC867:				; CODE XREF: .text:004AC859j
		cmp	dword ptr [edi], 0FEDCBA98h
		jnz	loc_4ACD85
		mov	dword ptr [ebp-54h], 5Eh
		mov	ecx, [ebp-2Ch]
		cmp	ecx, [ebp-54h]
		jnb	short loc_4AC887
		lea	eax, [ebp-2Ch]
		jmp	short loc_4AC88A
; ---------------------------------------------------------------------------

loc_4AC887:				; CODE XREF: .text:004AC880j
		lea	eax, [ebp-54h]

loc_4AC88A:				; CODE XREF: .text:004AC885j
		mov	edx, [eax]
		mov	[ebp-24h], edx
		mov	ecx, [ebp-24h]
		push	ecx		; n
		push	edi		; src
		push	offset dword_5861B8 ; dest
		call	_memcpy
		add	esp, 0Ch
		cmp	dword ptr [ebp-24h], 5Eh
		jnb	loc_4ACD85
		mov	eax, 5Eh
		mov	edx, offset dword_5861B8
		sub	eax, [ebp-24h]
		push	eax		; n
		push	0		; c
		add	edx, [ebp-24h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC8CC:				; CODE XREF: .text:004AB48Cj
		cmp	dword ptr [ebp-2Ch], 7C40h
		jb	short loc_4AC8E1
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC8E1:				; CODE XREF: .text:004AC8D3j
		mov	ecx, [ebp-2Ch]
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4AC8FD
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC8FD:				; CODE XREF: .text:004AC8EFj
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC922
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC922:				; CODE XREF: .text:004AC914j
		mov	dword ptr [ebp-24h], 34h
		mov	ecx, [ebp-24h]
		push	ecx		; n
		push	edi		; src
		push	offset rtcond	; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ebx, ebx

loc_4AC93D:				; CODE XREF: .text:004AC984j
		mov	eax, [ebp-2Ch]
		sub	eax, [ebp-24h]
		dec	eax
		push	eax		; n
		mov	edx, [ebp-24h]
		add	edx, edi
		push	edx		; src
		call	StrlenA
		add	esp, 8
		mov	ecx, ebx
		shl	ecx, 9
		mov	[ebp-4], eax
		add	ecx, offset rtcond.cond
		push	100h		; nw
		push	ecx		; w
		mov	eax, [ebp-4]
		push	eax		; nt
		mov	edx, [ebp-24h]
		add	edx, edi
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		mov	ecx, [ebp-4]
		inc	ecx
		add	[ebp-24h], ecx
		inc	ebx
		cmp	ebx, 4
		jl	short loc_4AC93D
		xor	ebx, ebx

loc_4AC988:				; CODE XREF: .text:004AC9CFj
		mov	eax, [ebp-2Ch]
		sub	eax, [ebp-24h]
		dec	eax
		push	eax		; n
		mov	edx, [ebp-24h]
		add	edx, edi
		push	edx		; src
		call	StrlenA
		add	esp, 8
		mov	ecx, ebx
		shl	ecx, 9
		mov	[ebp-4], eax
		add	ecx, offset rtcond.cmd
		push	100h		; nw
		push	ecx		; w
		mov	eax, [ebp-4]
		push	eax		; nt
		mov	edx, [ebp-24h]
		add	edx, edi
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		mov	ecx, [ebp-4]
		inc	ecx
		add	[ebp-24h], ecx
		inc	ebx
		cmp	ebx, 2
		jl	short loc_4AC988
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-2Ch]
		jz	short loc_4AC9E0
		mov	dword ptr [ebp-0Ch], 1

loc_4AC9E0:				; CODE XREF: .text:004AC9D7j
		xor	edx, edx
		mov	rtcond.currcount, edx
		xor	ecx, ecx
		mov	rtcond.validmodels, ecx
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4AC9F5:				; CODE XREF: .text:004AB50Dj
		mov	dword ptr [ebp-24h], 2Ch
		mov	eax, [ebp-2Ch]
		cmp	eax, [ebp-24h]
		jb	short loc_4ACA0D
		cmp	dword ptr [ebp-2Ch], 224h
		jbe	short loc_4ACA19

loc_4ACA0D:				; CODE XREF: .text:004ACA02j
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACA19:				; CODE XREF: .text:004ACA0Bj
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ACA35
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACA35:				; CODE XREF: .text:004ACA27j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ACA5A
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACA5A:				; CODE XREF: .text:004ACA4Cj
		lea	ecx, [edi+24h]
		push	ecx		; set
		call	Getrangecount
		pop	ecx
		inc	eax
		shl	eax, 3
		add	eax, 24h
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ACA7C
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACA7C:				; CODE XREF: .text:004ACA6Ej
		mov	eax, [ebp-2Ch]
		push	eax		; n
		push	edi		; src
		push	offset rtprot	; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACA93:				; CODE XREF: .text:004AB43Dj
		cmp	dword ptr [ebp-2Ch], 4
		ja	short loc_4ACAA5
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACAA5:				; CODE XREF: .text:004ACA97j
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ACAC1
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACAC1:				; CODE XREF: .text:004ACAB3j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ACAE6
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACAE6:				; CODE XREF: .text:004ACAD8j
		mov	ecx, [edi]
		lea	eax, [ebp-1F24h]
		mov	[ebp-1F30h], ecx
		mov	dword ptr [ebp-1F2Ch], 1
		mov	dword ptr [ebp-1F28h], 1
		push	100h		; nw
		push	eax		; w
		mov	edx, [ebp-2Ch]
		sub	edx, 4
		add	edi, 4
		push	edx		; nt
		push	edi		; t
		call	Utftounicode
		add	esp, 10h
		lea	eax, [ebp-1F30h]
		push	eax		; item
		push	offset watch.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	loc_4ACD85
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACB49:				; CODE XREF: .text:004AB4C3j
		cmp	dword ptr [ebp-2Ch], 5
		ja	short loc_4ACB5B
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACB5B:				; CODE XREF: .text:004ACB4Dj
		mov	edx, [ebp-2Ch]
		push	edx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ACB77
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACB77:				; CODE XREF: .text:004ACB69j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ACB9C
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACB9C:				; CODE XREF: .text:004ACB8Ej
		mov	ecx, [edi]
		mov	[ebp-1Ch], ecx
		cmp	dword ptr [ebp-1Ch], 0F0000000h
		jb	loc_4ACD85
		test	dword ptr [ebp-1Ch], 0FFFFh
		jnz	loc_4ACD85
		push	20h		; nw
		lea	eax, [ebp-14B4h]
		push	eax		; w
		mov	edx, [ebp-2Ch]
		sub	edx, 4
		push	edx		; nt
		add	edi, 4
		push	edi		; t
		call	Utftounicode
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_4ACC36
; ---------------------------------------------------------------------------

loc_4ACBDB:				; CODE XREF: .text:004ACC3Cj
		push	ebx		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jz	short loc_4ACC35
		mov	eax, [ebp-38h]
		cmp	dword ptr [eax+2C0h], 0
		jz	short loc_4ACC35
		lea	edx, [ebp-14B4h]
		push	edx		; s2
		mov	ecx, [ebp-38h]
		add	ecx, 0Ch
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4ACC35
		mov	eax, [ebp-38h]
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4ACC35
		mov	edx, [ebp-38h]
		mov	ecx, [ebp-1Ch]
		mov	[edx+298h], ecx
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACC35:				; CODE XREF: .text:004ACBF0j
					; .text:004ACBFCj ...
		inc	ebx

loc_4ACC36:				; CODE XREF: .text:004ACBD9j
		cmp	ebx, pluginlist.sorted.n
		jl	short loc_4ACBDB
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACC43:				; CODE XREF: .text:004AB475j
					; .text:004AB492j ...
		cmp	dword ptr [ebp-28h], 0F0000000h
		jb	loc_4ACD85
		xor	ebx, ebx
		jmp	short loc_4ACC80
; ---------------------------------------------------------------------------

loc_4ACC54:				; CODE XREF: .text:004ACC86j
		push	ebx		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jz	short loc_4ACC7F
		mov	eax, [ebp-38h]
		mov	edx, [eax+298h]
		xor	edx, [ebp-28h]
		test	edx, 7FF0000h
		jz	short loc_4ACC88

loc_4ACC7F:				; CODE XREF: .text:004ACC69j
		inc	ebx

loc_4ACC80:				; CODE XREF: .text:004ACC52j
		cmp	ebx, pluginlist.sorted.n
		jl	short loc_4ACC54

loc_4ACC88:				; CODE XREF: .text:004ACC7Dj
		cmp	ebx, pluginlist.sorted.n
		jge	loc_4ACD85
		mov	ecx, [ebp-38h]
		cmp	dword ptr [ecx+2C0h], 0
		jz	loc_4ACD85
		mov	eax, [ebp-2Ch]
		push	eax		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4ACCC0
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACCC0:				; CODE XREF: .text:004ACCB2j
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-1AC8h]
		push	eax		; bufsize
		push	edi		; buf
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-2Ch]
		jz	short loc_4ACCE5
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACCE5:				; CODE XREF: .text:004ACCD7j
		test	byte ptr [ebp-25h], 8
		jnz	short loc_4ACD13
		push	edi
		mov	ecx, [ebp-2Ch]
		push	ecx
		mov	eax, [ebp-28h]
		and	eax, 0FFFFh
		push	eax
		test	byte ptr [esi+0Ah], 1
		setnz	dl
		and	edx, 1
		push	edx
		push	esi
		mov	ecx, [ebp-38h]
		call	dword ptr [ecx+2C0h]
		add	esp, 14h
		jmp	short loc_4ACD85
; ---------------------------------------------------------------------------

loc_4ACD13:				; CODE XREF: .text:004ACCE9j
		mov	eax, [ebp-2Ch]
		push	eax		; nbufin
		push	edi		; bufin
		call	Getoriginaldatasize
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jbe	short loc_4ACD85
		push	1		; flags
		mov	edx, [ebp-24h]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4ACD85
		mov	eax, [ebp-24h]
		push	eax		; nbufout
		push	ebx		; bufout
		mov	edx, [ebp-2Ch]
		push	edx		; nbufin
		push	edi		; bufin
		call	Decompress
		add	esp, 10h
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_4ACD7E
		push	ebx
		mov	ecx, [ebp-24h]
		push	ecx
		mov	eax, [ebp-28h]
		and	eax, 0FFFFh
		push	eax
		test	byte ptr [esi+0Ah], 1
		setnz	dl
		and	edx, 1
		push	edx
		push	esi
		mov	ecx, [ebp-38h]
		call	dword ptr [ecx+2C0h]
		add	esp, 14h

loc_4ACD7E:				; CODE XREF: .text:004ACD56j
		push	ebx		; data
		call	Memfree
		pop	ecx

loc_4ACD85:				; CODE XREF: .text:004AB4E0j
					; .text:004AB5B9j ...
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4AB3EC

loc_4ACD8F:				; CODE XREF: .text:004AB3E6j
					; .text:004AB40Ej ...
		cmp	dword ptr [esi+8FCh], 0
		jz	short loc_4ACDB5
		cmp	dword ptr [esi+908h], 1
		jle	short loc_4ACDB5
		push	esi
		call	loc_471A90
		pop	ecx
		lea	eax, [esi+8F4h]
		push	eax		; pdat
		call	Sortjumpdata
		pop	ecx

loc_4ACDB5:				; CODE XREF: .text:004ACD96j
					; .text:004ACD9Fj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4ACDE4
		lea	edx, [esi+0Ch]
		push	edx		; arglist
		push	offset aModuleSContain ; "Module '%s' contains corrupted breakpoi"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aCorruptedBreak ; "Corrupted breakpoints"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6B0 ; cond
		call	Conderror
		add	esp, 10h

loc_4ACDE4:				; CODE XREF: .text:004ACDB9j
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_4ACE11
		mov	ecx, [ebp-28h]
		push	ecx
		lea	eax, [esi+0Ch]
		push	eax
		lea	edx, [ebp-1474h]
		push	edx		; arglist
		push	offset aErrorInSAnalys ; "Error	in '%s', analysis data for module"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 18h

loc_4ACE11:				; CODE XREF: .text:004ACDE8j
		lea	ecx, [ebp-1AC8h]
		push	ecx		; tf
		call	Closetaggedfile
		pop	ecx
		push	0		; dwBytes
		call	loc_4041A0
		pop	ecx
		call	Mergequickdata
		push	1
		call	loc_4C6E78
		pop	ecx
		mov	eax, [esi]
		push	eax
		call	loc_4C2968
		pop	ecx
		call	loc_4C599C
		cmp	dword ptr [ebp-0Ch], 3
		jnz	short loc_4ACE4E
		mov	eax, 1
		jmp	short loc_4ACE51
; ---------------------------------------------------------------------------

loc_4ACE4E:				; CODE XREF: .text:004ACE45j
		mov	eax, [ebp-0Ch]

loc_4ACE51:				; CODE XREF: .text:004AB29Fj
					; .text:004AB2C8j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
