.code

; Exported entry  93. _Gettabletext
; Exported entry 617. Gettabletext

; int __cdecl Gettabletext(t_table *pt,	int row, int column, wchar_t *text, uchar *tmask, int *tselect)
		public Gettabletext
Gettabletext:				; CODE XREF: .text:0041DD25p
					; .text:00493FF4p ...
		push	ebp		; _Gettabletext
		mov	ebp, esp
		add	esp, 0FFFFF4D8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_41DA18
		mov	eax, [ebp+14h]
		mov	word ptr [eax],	0

loc_41DA18:				; CODE XREF: .text:0041DA0Ej
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_41DA25
		mov	edx, [ebp+1Ch]
		xor	ecx, ecx
		mov	[edx], ecx

loc_41DA25:				; CODE XREF: .text:0041DA1Cj
		test	ebx, ebx
		jz	short loc_41DA38
		cmp	dword ptr [ebx+210h], 0
		jz	short loc_41DA38
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_41DA3F

loc_41DA38:				; CODE XREF: .text:0041DA27j
					; .text:0041DA30j
		xor	eax, eax
		jmp	loc_41DC86
; ---------------------------------------------------------------------------

loc_41DA3F:				; CODE XREF: .text:0041DA36j
		test	esi, esi
		jl	short loc_41DA54
		cmp	dword ptr [ebp+10h], 0
		jl	short loc_41DA54
		mov	edx, [ebp+10h]
		cmp	edx, [ebx+8Ch]
		jl	short loc_41DA5B

loc_41DA54:				; CODE XREF: .text:0041DA41j
					; .text:0041DA47j
		xor	eax, eax
		jmp	loc_41DC86
; ---------------------------------------------------------------------------

loc_41DA5B:				; CODE XREF: .text:0041DA52j
		mov	eax, [ebx+40h]
		mov	edx, eax
		and	edx, 3
		cmp	edx, 3
		jnz	short loc_41DA7C
		mov	ecx, [ebx+248h]
		add	ecx, esi
		cmp	ecx, [ebx+44h]
		jl	short loc_41DA7C
		xor	eax, eax
		jmp	loc_41DC86
; ---------------------------------------------------------------------------

loc_41DA7C:				; CODE XREF: .text:0041DA66j
					; .text:0041DA73j
		test	al, 1
		jz	short loc_41DAA2
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-0B28h], edx
		lea	edi, [ebp-0B28h]
		mov	dword ptr [ebp-0B24h], 1
		mov	[ebp-0B1Ch], ecx
		jmp	short loc_41DAC4
; ---------------------------------------------------------------------------

loc_41DAA2:				; CODE XREF: .text:0041DA7Ej
		test	al, 4
		jnz	short loc_41DAB6
		mov	eax, [ebx+7Ch]
		push	eax		; sort
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_41DAB6:				; CODE XREF: .text:0041DAA4j
		cmp	esi, [ebx+44h]
		jle	short loc_41DAC2
		xor	eax, eax
		jmp	loc_41DC86
; ---------------------------------------------------------------------------

loc_41DAC2:				; CODE XREF: .text:0041DAB9j
		xor	edi, edi

loc_41DAC4:				; CODE XREF: .text:0041DAA0j
		push	0
		push	0FFFFFFFCh
		push	edi
		push	ebx
		lea	eax, [ebp-0Ch]
		push	eax
		lea	edx, [ebp-0A18h]
		push	edx
		lea	ecx, [ebp-418h]
		push	ecx
		call	dword ptr [ebx+210h]
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 400h
		jg	short loc_41DB01
		xor	eax, eax
		mov	[ebp-14h], eax
		lea	edx, [ebp-818h]
		mov	[ebp-18h], edx
		jmp	short loc_41DB22
; ---------------------------------------------------------------------------

loc_41DB01:				; CODE XREF: .text:0041DAEFj
		push	1		; flags
		mov	ecx, [ebp-4]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_41DB22
		xor	eax, eax
		jmp	loc_41DC86
; ---------------------------------------------------------------------------

loc_41DB22:				; CODE XREF: .text:0041DAFFj
					; .text:0041DB19j
		cmp	dword ptr [ebp-4], 0
		jle	short loc_41DB4B
		mov	edx, [ebp-18h]
		lea	ecx, [ebp-0Ch]
		push	edx
		push	0FFFFFFFDh
		push	edi
		push	ebx
		push	ecx
		lea	eax, [ebp-0A18h]
		push	eax
		lea	edx, [ebp-418h]
		push	edx
		call	dword ptr [ebx+210h]
		add	esp, 1Ch

loc_41DB4B:				; CODE XREF: .text:0041DB26j
		mov	ecx, [ebx+248h]
		xor	eax, eax
		mov	[ebp-10h], ecx
		mov	[ebx+248h], eax
		test	byte ptr [ebx+40h], 5
		jz	short loc_41DB7A
		mov	[ebp-0B28h], esi
		mov	dword ptr [ebp-0B24h], 1
		lea	edi, [ebp-0B28h]
		jmp	short loc_41DB89
; ---------------------------------------------------------------------------

loc_41DB7A:				; CODE XREF: .text:0041DB60j
		push	esi		; index
		lea	eax, [ebx+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	edi, eax

loc_41DB89:				; CODE XREF: .text:0041DB78j
		mov	eax, [ebp-18h]
		lea	edx, [ebp-0Ch]
		push	eax
		push	0FFFFFFFFh
		push	edi
		push	ebx
		push	edx
		lea	ecx, [ebp-0A18h]
		push	ecx
		lea	eax, [ebp-418h]
		push	eax
		call	dword ptr [ebx+210h]
		add	esp, 1Ch
		xor	edx, edx
		mov	[ebp-8], edx
		lea	edx, [ebp-8]
		mov	ecx, [ebp-18h]
		push	ecx
		lea	ecx, [ebp-0A18h]
		mov	eax, [ebp+10h]
		push	eax
		push	edi
		push	ebx
		push	edx
		push	ecx
		lea	eax, [ebp-418h]
		push	eax
		call	dword ptr [ebx+210h]
		mov	esi, eax
		mov	eax, [ebp-10h]
		mov	[ebx+248h], eax
		add	esp, 1Ch
		cmp	dword ptr [ebp-4], 0
		jle	short loc_41DC0A
		mov	edx, [ebp-18h]
		lea	ecx, [ebp-0Ch]
		push	edx
		push	0FFFFFFFEh
		push	edi
		push	ebx
		push	ecx
		lea	eax, [ebp-0A18h]
		push	eax
		lea	edx, [ebp-418h]
		push	edx
		call	dword ptr [ebx+210h]
		add	esp, 1Ch

loc_41DC0A:				; CODE XREF: .text:0041DBE5j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_41DC1A
		mov	ecx, [ebp-14h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_41DC1A:				; CODE XREF: .text:0041DC0Ej
		test	esi, esi
		jge	short loc_41DC22
		xor	esi, esi
		jmp	short loc_41DC2F
; ---------------------------------------------------------------------------

loc_41DC22:				; CODE XREF: .text:0041DC1Cj
		cmp	esi, 100h
		jl	short loc_41DC2F
		mov	esi, 0FFh

loc_41DC2F:				; CODE XREF: .text:0041DC20j
					; .text:0041DC28j
		test	esi, esi
		jnz	short loc_41DC37
		xor	eax, eax
		jmp	short loc_41DC86
; ---------------------------------------------------------------------------

loc_41DC37:				; CODE XREF: .text:0041DC31j
		mov	edx, esi
		lea	ecx, [ebp-418h]
		add	edx, edx
		push	edx		; n
		push	ecx		; src
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp+14h]
		mov	word ptr [edx+esi*2], 0
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_41DC76
		test	esi, esi
		jle	short loc_41DC76
		push	esi		; n
		lea	ecx, [ebp-0A18h]
		push	ecx		; src
		mov	eax, [ebp+18h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch

loc_41DC76:				; CODE XREF: .text:0041DC5Cj
					; .text:0041DC60j
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_41DC84
		mov	edx, [ebp+1Ch]
		mov	ecx, [ebp-8]
		mov	[edx], ecx

loc_41DC84:				; CODE XREF: .text:0041DC7Aj
		mov	eax, esi

loc_41DC86:				; CODE XREF: .text:0041DA3Aj
					; .text:0041DA56j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_41DC90:				; CODE XREF: .text:0041E22Ap
					; .text:0041E303p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFAF4h
		cmp	dword_57FE88, 0
		push	ebx
		push	esi
		push	edi
		jz	loc_41DE00
		cmp	dword ptr [ebp+8], 0
		jz	loc_41DE00
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+210h], 0
		jz	loc_41DE00
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+22Ch], 0
		jz	loc_41DE00
		push	2
		call	loc_4D2FEC
		pop	ecx
		xor	edi, edi
		mov	eax, [ebp+8]
		lea	esi, [eax+11Ch]
		jmp	loc_41DDF1
; ---------------------------------------------------------------------------

loc_41DCEB:				; CODE XREF: .text:0041DDFAj
		mov	eax, [esi]
		and	eax, 0F000h
		cmp	eax, 0F000h
		jz	loc_41DDED
		cmp	dword ptr [esi+88h], 3
		jle	loc_41DDED
		lea	edx, [ebp-4]
		push	edx		; tselect
		lea	ecx, [ebp-108h]
		push	ecx		; tmask
		lea	eax, [ebp-50Ch]
		push	eax		; text
		push	edi		; column
		mov	edx, [ebp+0Ch]
		push	edx		; row
		mov	ecx, [ebp+8]
		push	ecx		; pt
		call	Gettabletext
		add	esp, 18h
		mov	ecx, eax
		xor	eax, eax
		lea	edx, [ebp-50Ch]
		cmp	ecx, eax
		jle	short loc_41DD49

loc_41DD3B:				; CODE XREF: .text:0041DD47j
		cmp	word ptr [edx],	20h
		jnz	short loc_41DD49
		inc	eax
		add	edx, 2
		cmp	ecx, eax
		jg	short loc_41DD3B

loc_41DD49:				; CODE XREF: .text:0041DD39j
					; .text:0041DD3Fj
		cmp	ecx, eax
		jle	loc_41DDED
		test	byte ptr [ebp-3], 1
		jz	short loc_41DD97
		xor	eax, eax
		lea	ebx, [ebp-108h]
		mov	[ebp-8], ebx
		cmp	ecx, eax
		lea	edx, [ebp-50Ch]
		jle	short loc_41DD97

loc_41DD6C:				; CODE XREF: .text:0041DD95j
		mov	ebx, [ebp-8]
		movzx	ebx, byte ptr [ebx]
		and	ebx, 60h
		cmp	ebx, 60h
		jnz	short loc_41DD81
		mov	word ptr [edx],	20h
		jmp	short loc_41DD8C
; ---------------------------------------------------------------------------

loc_41DD81:				; CODE XREF: .text:0041DD78j
		cmp	word ptr [edx],	0
		jnz	short loc_41DD8C
		mov	word ptr [edx],	20h

loc_41DD8C:				; CODE XREF: .text:0041DD7Fj
					; .text:0041DD85j
		inc	eax
		add	edx, 2
		inc	dword ptr [ebp-8]
		cmp	ecx, eax
		jg	short loc_41DD6C

loc_41DD97:				; CODE XREF: .text:0041DD55j
					; .text:0041DD6Aj
		mov	word ptr [ebp+ecx*2-50Ch], 0
		lea	eax, [ebp-308h]
		push	eax
		push	1
		push	edi
		mov	edx, [ebp+8]
		push	edx
		call	loc_41A3C8
		add	esp, 10h
		mov	ecx, eax
		test	ecx, ecx
		jle	short loc_41DDD3
		push	3000h
		lea	eax, [ebp-308h]
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch

loc_41DDD3:				; CODE XREF: .text:0041DDBBj
		mov	edx, [esi]
		lea	ecx, [ebp-50Ch]
		and	edx, 0F000h
		push	edx
		push	ecx
		push	2
		call	loc_4D21C8
		add	esp, 0Ch

loc_41DDED:				; CODE XREF: .text:0041DCF7j
					; .text:0041DD04j ...
		inc	edi
		add	esi, 4

loc_41DDF1:				; CODE XREF: .text:0041DCE6j
		mov	eax, [ebp+8]
		cmp	edi, [eax+8Ch]
		jl	loc_41DCEB

loc_41DE00:				; CODE XREF: .text:0041DCA3j
					; .text:0041DCADj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  94. _Gettableselectionxy
; Exported entry 616. Gettableselectionxy

; int __cdecl Gettableselectionxy(t_table *pt, int column, POINT *coord)
		public Gettableselectionxy
Gettableselectionxy:			; CODE XREF: .text:0041FAE8p
					; .text:00420160p ...
		push	ebp		; _Gettableselectionxy
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41DE2A
		cmp	dword ptr [ebx+22Ch], 0
		jz	short loc_41DE2A
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_41DE32

loc_41DE2A:				; CODE XREF: .text:0041DE19j
					; .text:0041DE22j
		or	eax, 0FFFFFFFFh
		jmp	loc_41DFE1
; ---------------------------------------------------------------------------

loc_41DE32:				; CODE XREF: .text:0041DE28j
		mov	eax, [ebx+8Ch]
		cmp	esi, eax
		jl	short loc_41DE3F
		mov	esi, eax
		dec	esi

loc_41DE3F:				; CODE XREF: .text:0041DE3Aj
		cmp	esi, 11h
		jl	short loc_41DE4B
		mov	esi, 10h
		jmp	short loc_41DE51
; ---------------------------------------------------------------------------

loc_41DE4B:				; CODE XREF: .text:0041DE42j
		test	esi, esi
		jge	short loc_41DE51
		xor	esi, esi

loc_41DE51:				; CODE XREF: .text:0041DE49j
					; .text:0041DE4Dj
		push	esi		; column
		push	ebx		; pt
		call	Getcharacterwidth
		mov	[ebp-0Ch], eax
		add	esp, 8
		mov	eax, [ebx+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.height[eax*4]
		lea	eax, [ebp-24h]
		mov	[ebp-10h], ecx
		push	eax		; lpRect
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	GetClientRect
		cmp	dword ptr [ebx+90h], 0
		jz	short loc_41DEA0
		test	byte ptr [ebx+41h], 8
		jnz	short loc_41DEA0
		mov	ecx, [ebp-10h]
		add	ecx, 4
		add	[ebp-20h], ecx

loc_41DEA0:				; CODE XREF: .text:0041DE8Fj
					; .text:0041DE95j
		mov	edi, [ebx+244h]
		neg	edi
		xor	edx, edx
		lea	eax, [ebx+1A4h]
		cmp	esi, edx
		jle	short loc_41DEBE

loc_41DEB4:				; CODE XREF: .text:0041DEBCj
		add	edi, [eax]
		inc	edx
		add	eax, 4
		cmp	esi, edx
		jg	short loc_41DEB4

loc_41DEBE:				; CODE XREF: .text:0041DEB2j
		test	byte ptr [ebx+40h], 1
		jz	loc_41DF4B
		mov	eax, [ebp-18h]
		sub	eax, [ebp-20h]
		cdq
		idiv	dword ptr [ebp-10h]
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jg	short loc_41DEE2
		mov	dword ptr [ebp-4], 1

loc_41DEE2:				; CODE XREF: .text:0041DED9j
		cmp	dword ptr [ebx+208h], 0
		jz	short loc_41DF2C
		mov	ecx, [ebp-4]
		push	ecx
		push	esi
		push	472h
		mov	eax, [ebx+22Ch]
		push	eax
		push	ebx
		call	dword ptr [ebx+208h]
		add	esp, 14h
		mov	[ebp-14h], eax
		test	eax, eax
		jz	short loc_41DF2C
		movsx	eax, word ptr [ebp-14h]
		imul	dword ptr [ebp-0Ch]
		add	eax, edi
		mov	edx, [ebp-14h]
		shr	edx, 10h
		and	dx, 0FFFFh
		movsx	ecx, dx
		imul	ecx, [ebp-10h]
		mov	[ebp-8], ecx
		jmp	short loc_41DF64
; ---------------------------------------------------------------------------

loc_41DF2C:				; CODE XREF: .text:0041DEE9j
					; .text:0041DF0Bj
		mov	eax, [ebp-24h]
		add	eax, [ebp-1Ch]
		sar	eax, 1
		jns	short loc_41DF39
		adc	eax, 0

loc_41DF39:				; CODE XREF: .text:0041DF34j
		mov	edx, [ebp-20h]
		add	edx, [ebp-18h]
		sar	edx, 1
		jns	short loc_41DF46
		adc	edx, 0

loc_41DF46:				; CODE XREF: .text:0041DF41j
		mov	[ebp-8], edx
		jmp	short loc_41DF64
; ---------------------------------------------------------------------------

loc_41DF4B:				; CODE XREF: .text:0041DEC2j
		mov	edx, [ebx+68h]
		mov	eax, [ebx+esi*4+1A4h]
		sub	edx, [ebx+248h]
		add	eax, edi
		imul	edx, [ebp-10h]
		mov	[ebp-8], edx

loc_41DF64:				; CODE XREF: .text:0041DF2Aj
					; .text:0041DF49j
		cmp	edi, eax
		jle	short loc_41DF6C
		mov	eax, edi
		jmp	short loc_41DF7B
; ---------------------------------------------------------------------------

loc_41DF6C:				; CODE XREF: .text:0041DF66j
		mov	edx, [ebx+esi*4+1A4h]
		add	edx, edi
		cmp	eax, edx
		jle	short loc_41DF7B
		mov	eax, edx

loc_41DF7B:				; CODE XREF: .text:0041DF6Aj
					; .text:0041DF77j
		mov	edx, [ebp-24h]
		cmp	eax, edx
		jge	short loc_41DF86
		mov	eax, edx
		jmp	short loc_41DF8F
; ---------------------------------------------------------------------------

loc_41DF86:				; CODE XREF: .text:0041DF80j
		mov	edx, [ebp-1Ch]
		cmp	eax, edx
		jle	short loc_41DF8F
		mov	eax, edx

loc_41DF8F:				; CODE XREF: .text:0041DF84j
					; .text:0041DF8Bj
		test	byte ptr [ebx+40h], 8
		jz	short loc_41DFA3
		mov	edx, [ebp-18h]
		sub	edx, [ebp-8]
		sub	edx, [ebp-10h]
		mov	[ebp-8], edx
		jmp	short loc_41DFA9
; ---------------------------------------------------------------------------

loc_41DFA3:				; CODE XREF: .text:0041DF93j
		mov	ecx, [ebp-20h]
		add	[ebp-8], ecx

loc_41DFA9:				; CODE XREF: .text:0041DFA1j
		mov	edx, [ebp-20h]
		cmp	edx, [ebp-8]
		jle	short loc_41DFB6
		mov	[ebp-8], edx
		jmp	short loc_41DFC1
; ---------------------------------------------------------------------------

loc_41DFB6:				; CODE XREF: .text:0041DFAFj
		mov	edx, [ebp-18h]
		cmp	edx, [ebp-8]
		jge	short loc_41DFC1
		mov	[ebp-8], edx

loc_41DFC1:				; CODE XREF: .text:0041DFB4j
					; .text:0041DFBCj
		mov	ecx, [ebp+10h]
		mov	[ecx], eax
		mov	eax, [ebp+10h]
		mov	edx, [ebp-8]
		mov	[eax+4], edx
		mov	eax, [ebp+10h]
		push	eax		; lpPoint
		mov	ecx, [ebx+22Ch]
		push	ecx		; hWnd
		call	ClientToScreen
		xor	eax, eax

loc_41DFE1:				; CODE XREF: .text:0041DE2Dj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  95. _Maketableareavisible
; Exported entry 646. Maketableareavisible

; signed int __cdecl Maketableareavisible(t_table *pt, int column, int x0, int y0, int x1, int y1)
		public Maketableareavisible
Maketableareavisible:			; CODE XREF: .text:0041E201p
					; .text:0041E2DAp ...
		push	ebp		; _Maketableareavisible
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41E003
		cmp	dword ptr [ebx+22Ch], 0
		jnz	short loc_41E00A

loc_41E003:				; CODE XREF: .text:0041DFF8j
		xor	eax, eax
		jmp	loc_41E143
; ---------------------------------------------------------------------------

loc_41E00A:				; CODE XREF: .text:0041E001j
		cmp	dword ptr [ebp+10h], 0
		jge	short loc_41E015
		xor	edx, edx
		mov	[ebp+10h], edx

loc_41E015:				; CODE XREF: .text:0041E00Ej
		mov	ecx, [ebp+18h]
		cmp	ecx, [ebp+10h]
		jge	short loc_41E023
		mov	eax, [ebp+10h]
		mov	[ebp+18h], eax

loc_41E023:				; CODE XREF: .text:0041E01Bj
		cmp	dword ptr [ebp+14h], 0
		jge	short loc_41E030
		xor	edx, edx
		mov	[ebp+14h], edx
		jmp	short loc_41E03B
; ---------------------------------------------------------------------------

loc_41E030:				; CODE XREF: .text:0041E027j
		mov	eax, [ebx+44h]
		cmp	eax, [ebp+14h]
		jge	short loc_41E03B
		mov	[ebp+14h], eax

loc_41E03B:				; CODE XREF: .text:0041E02Ej
					; .text:0041E036j
		mov	edx, [ebp+1Ch]
		cmp	edx, [ebp+14h]
		jge	short loc_41E049
		mov	ecx, [ebp+14h]
		mov	[ebp+1Ch], ecx

loc_41E049:				; CODE XREF: .text:0041E041j
		lea	eax, [ebp-1Ch]
		push	eax		; lpRect
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	GetClientRect
		push	ebx		; pt
		call	Linecount
		pop	ecx
		mov	[ebp-4], eax
		push	esi		; column
		push	ebx		; pt
		call	Getcharacterwidth
		mov	[ebp-0Ch], eax
		add	esp, 8
		mov	ecx, [ebx+244h]
		test	esi, esi
		mov	[ebp-8], ecx
		jl	short loc_41E0FA
		xor	ecx, ecx
		xor	eax, eax
		lea	edx, [ebx+1A4h]
		jmp	short loc_41E08F
; ---------------------------------------------------------------------------

loc_41E089:				; CODE XREF: .text:0041E099j
		add	ecx, [edx]
		inc	eax
		add	edx, 4

loc_41E08F:				; CODE XREF: .text:0041E087j
		cmp	esi, eax
		jle	short loc_41E09B
		cmp	eax, [ebx+8Ch]
		jl	short loc_41E089

loc_41E09B:				; CODE XREF: .text:0041E091j
		test	esi, esi
		jl	short loc_41E0DC
		cmp	esi, [ebx+8Ch]
		jge	short loc_41E0DC
		mov	edx, [ebp+18h]
		imul	edx, [ebp-0Ch]
		cmp	edx, [ebx+esi*4+1A4h]
		jle	short loc_41E0BE
		mov	edx, [ebx+esi*4+1A4h]

loc_41E0BE:				; CODE XREF: .text:0041E0B5j
		lea	eax, [edx+ecx]
		mov	edx, [ebp+10h]
		imul	edx, [ebp-0Ch]
		cmp	edx, [ebx+esi*4+1A4h]
		jle	short loc_41E0D8
		mov	edx, [ebx+esi*4+1A4h]

loc_41E0D8:				; CODE XREF: .text:0041E0CFj
		add	ecx, edx
		jmp	short loc_41E0DE
; ---------------------------------------------------------------------------

loc_41E0DC:				; CODE XREF: .text:0041E09Dj
					; .text:0041E0A5j
		mov	eax, ecx

loc_41E0DE:				; CODE XREF: .text:0041E0DAj
		mov	edx, [ebp-14h]
		sub	edx, [ebp-1Ch]
		mov	esi, edx
		add	esi, [ebp-8]
		cmp	eax, esi
		jle	short loc_41E0F2
		sub	eax, edx
		mov	[ebp-8], eax

loc_41E0F2:				; CODE XREF: .text:0041E0EBj
		cmp	ecx, [ebp-8]
		jge	short loc_41E0FA
		mov	[ebp-8], ecx

loc_41E0FA:				; CODE XREF: .text:0041E07Bj
					; .text:0041E0F5j
		mov	eax, [ebx+248h]
		mov	edx, [ebp-4]
		add	edx, eax
		cmp	edx, [ebp+1Ch]
		jge	short loc_41E110
		mov	eax, [ebp+1Ch]
		sub	eax, [ebp-4]

loc_41E110:				; CODE XREF: .text:0041E108j
		cmp	eax, [ebp+14h]
		jle	short loc_41E118
		mov	eax, [ebp+14h]

loc_41E118:				; CODE XREF: .text:0041E113j
		mov	edx, [ebp-8]
		cmp	edx, [ebx+244h]
		jnz	short loc_41E12F
		cmp	eax, [ebx+248h]
		jnz	short loc_41E12F
		xor	eax, eax
		jmp	short loc_41E143
; ---------------------------------------------------------------------------

loc_41E12F:				; CODE XREF: .text:0041E121j
					; .text:0041E129j
		mov	edx, [ebp-8]
		mov	[ebx+244h], edx
		mov	[ebx+248h], eax
		mov	eax, 1

loc_41E143:				; CODE XREF: .text:0041E005j
					; .text:0041E12Dj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  96. _Movetableselection
; Exported entry 657. Movetableselection

; signed int __cdecl Movetableselection(t_table	*pt, int n)
		public Movetableselection
Movetableselection:			; CODE XREF: .text:004A1796p
					; .text:004B5262p ...
		push	ebp		; _Movetableselection
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41E16A
		mov	edx, [ebx+40h]
		and	edx, 3
		dec	edx
		jz	short loc_41E16A
		cmp	dword ptr [ebx+44h], 0
		jnz	short loc_41E172

loc_41E16A:				; CODE XREF: .text:0041E159j
					; .text:0041E162j
		or	eax, 0FFFFFFFFh
		jmp	loc_41E237
; ---------------------------------------------------------------------------

loc_41E172:				; CODE XREF: .text:0041E168j
		mov	edx, [ebx+68h]
		test	edx, edx
		jge	short loc_41E181
		test	eax, eax
		jle	short loc_41E181
		mov	esi, eax
		jmp	short loc_41E185
; ---------------------------------------------------------------------------

loc_41E181:				; CODE XREF: .text:0041E177j
					; .text:0041E17Bj
		mov	esi, edx
		add	esi, eax

loc_41E185:				; CODE XREF: .text:0041E17Fj
		test	esi, esi
		jge	short loc_41E18D
		xor	esi, esi
		jmp	short loc_41E197
; ---------------------------------------------------------------------------

loc_41E18D:				; CODE XREF: .text:0041E187j
		mov	eax, [ebx+44h]
		cmp	esi, eax
		jl	short loc_41E197
		mov	esi, eax
		dec	esi

loc_41E197:				; CODE XREF: .text:0041E18Bj
					; .text:0041E192j
		test	esi, esi
		jl	short loc_41E1A0
		cmp	esi, [ebx+68h]
		jnz	short loc_41E1A7

loc_41E1A0:				; CODE XREF: .text:0041E199j
		xor	eax, eax
		jmp	loc_41E237
; ---------------------------------------------------------------------------

loc_41E1A7:				; CODE XREF: .text:0041E19Ej
		test	byte ptr [ebx+40h], 4
		jz	short loc_41E1B2
		mov	[ebx+6Ch], esi
		jmp	short loc_41E1E1
; ---------------------------------------------------------------------------

loc_41E1B2:				; CODE XREF: .text:0041E1ABj
		push	esi		; index
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_41E1E1
		mov	ecx, [eax]
		mov	[ebx+6Ch], ecx
		test	byte ptr [ebx+50h], 4
		jz	short loc_41E1D5
		xor	eax, eax
		mov	[ebx+70h], eax
		jmp	short loc_41E1E1
; ---------------------------------------------------------------------------

loc_41E1D5:				; CODE XREF: .text:0041E1CCj
		mov	edx, [eax+8]
		and	edx, 0FFh
		mov	[ebx+70h], edx

loc_41E1E1:				; CODE XREF: .text:0041E1B0j
					; .text:0041E1C1j ...
		mov	[ebx+68h], esi
		cmp	dword ptr [ebx+22Ch], 0
		jnz	short loc_41E1F5
		mov	[ebx+248h], esi
		jmp	short loc_41E209
; ---------------------------------------------------------------------------

loc_41E1F5:				; CODE XREF: .text:0041E1EBj
		lea	ecx, [esi+1]
		push	ecx		; y1
		push	0		; x1
		push	esi		; y0
		push	0		; x0
		push	0FFFFFFFFh	; column
		push	ebx		; pt
		call	Maketableareavisible
		add	esp, 18h

loc_41E209:				; CODE XREF: .text:0041E1F3j
		cmp	dword ptr [ebx+214h], 0
		jz	short loc_41E21F
		push	3
		push	esi
		push	ebx
		call	dword ptr [ebx+214h]
		add	esp, 0Ch

loc_41E21F:				; CODE XREF: .text:0041E210j
		cmp	dword_57FE88, 0
		jz	short loc_41E232
		push	esi
		push	ebx
		call	loc_41DC90
		add	esp, 8

loc_41E232:				; CODE XREF: .text:0041E226j
		mov	eax, 1

loc_41E237:				; CODE XREF: .text:0041E16Dj
					; .text:0041E1A2j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  97. _Settableselection
; Exported entry 718. Settableselection

; signed int __cdecl Settableselection(t_table *pt, int	selected)
		public Settableselection
Settableselection:			; CODE XREF: .text:0044B754p
					; .text:00458122p ...
		push	ebp		; _Settableselection
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41E25A
		mov	eax, [ebx+40h]
		and	eax, 3
		dec	eax
		jz	short loc_41E25A
		cmp	dword ptr [ebx+44h], 0
		jnz	short loc_41E262

loc_41E25A:				; CODE XREF: .text:0041E249j
					; .text:0041E252j
		or	eax, 0FFFFFFFFh
		jmp	loc_41E310
; ---------------------------------------------------------------------------

loc_41E262:				; CODE XREF: .text:0041E258j
		test	esi, esi
		jge	short loc_41E26A
		xor	esi, esi
		jmp	short loc_41E274
; ---------------------------------------------------------------------------

loc_41E26A:				; CODE XREF: .text:0041E264j
		mov	eax, [ebx+44h]
		cmp	esi, eax
		jl	short loc_41E274
		mov	esi, eax
		dec	esi

loc_41E274:				; CODE XREF: .text:0041E268j
					; .text:0041E26Fj
		cmp	esi, [ebx+68h]
		jnz	short loc_41E280
		xor	eax, eax
		jmp	loc_41E310
; ---------------------------------------------------------------------------

loc_41E280:				; CODE XREF: .text:0041E277j
		test	byte ptr [ebx+40h], 4
		jz	short loc_41E28B
		mov	[ebx+6Ch], esi
		jmp	short loc_41E2BA
; ---------------------------------------------------------------------------

loc_41E28B:				; CODE XREF: .text:0041E284j
		push	esi		; index
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_41E2BA
		mov	ecx, [eax]
		mov	[ebx+6Ch], ecx
		test	byte ptr [ebx+50h], 4
		jz	short loc_41E2AE
		xor	eax, eax
		mov	[ebx+70h], eax
		jmp	short loc_41E2BA
; ---------------------------------------------------------------------------

loc_41E2AE:				; CODE XREF: .text:0041E2A5j
		mov	edx, [eax+8]
		and	edx, 0FFh
		mov	[ebx+70h], edx

loc_41E2BA:				; CODE XREF: .text:0041E289j
					; .text:0041E29Aj ...
		mov	[ebx+68h], esi
		cmp	dword ptr [ebx+22Ch], 0
		jnz	short loc_41E2CE
		mov	[ebx+248h], esi
		jmp	short loc_41E2E2
; ---------------------------------------------------------------------------

loc_41E2CE:				; CODE XREF: .text:0041E2C4j
		lea	ecx, [esi+1]
		push	ecx		; y1
		push	0		; x1
		push	esi		; y0
		push	0		; x0
		push	0FFFFFFFFh	; column
		push	ebx		; pt
		call	Maketableareavisible
		add	esp, 18h

loc_41E2E2:				; CODE XREF: .text:0041E2CCj
		cmp	dword ptr [ebx+214h], 0
		jz	short loc_41E2F8
		push	3
		push	esi
		push	ebx
		call	dword ptr [ebx+214h]
		add	esp, 0Ch

loc_41E2F8:				; CODE XREF: .text:0041E2E9j
		cmp	dword_57FE88, 0
		jz	short loc_41E30B
		push	esi
		push	ebx
		call	loc_41DC90
		add	esp, 8

loc_41E30B:				; CODE XREF: .text:0041E2FFj
		mov	eax, 1

loc_41E310:				; CODE XREF: .text:0041E25Dj
					; .text:0041E27Bj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  98. _Removetableselection
; Exported entry 696. Removetableselection

; signed int __cdecl Removetableselection(t_table *pt)
		public Removetableselection
Removetableselection:			; CODE XREF: .text:0042CC80p
		push	ebp		; _Removetableselection
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41E333
		mov	edx, [eax+40h]
		and	edx, 3
		dec	edx
		jz	short loc_41E333
		test	byte ptr [eax+40h], 4
		jnz	short loc_41E333
		cmp	dword ptr [eax+44h], 0
		jnz	short loc_41E338

loc_41E333:				; CODE XREF: .text:0041E31Cj
					; .text:0041E325j ...
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41E338:				; CODE XREF: .text:0041E331j
		cmp	dword ptr [eax+68h], 0
		jge	short loc_41E342
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41E342:				; CODE XREF: .text:0041E33Cj
		mov	dword ptr [eax+68h], 0FFFFFFFFh
		cmp	dword ptr [eax+214h], 0
		jz	short loc_41E360
		push	3
		push	0FFFFFFFFh
		push	eax
		call	dword ptr [eax+214h]
		add	esp, 0Ch

loc_41E360:				; CODE XREF: .text:0041E350j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  99. _Updatetable
; Exported entry 743. Updatetable

; BOOL __cdecl Updatetable(t_table *pt,	int force)
		public Updatetable
Updatetable:				; CODE XREF: .text:0041ECB1p
					; .text:0041ED01p ...
		push	ebp		; _Updatetable
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41E3AE
		cmp	dword ptr [eax+22Ch], 0
		jz	short loc_41E3AE
		test	byte ptr [eax+40h], 40h
		jnz	short loc_41E387
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_41E39E

loc_41E387:				; CODE XREF: .text:0041E37Fj
		push	101h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	eax, [eax+22Ch]
		push	eax		; hWnd
		call	RedrawWindow
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41E39E:				; CODE XREF: .text:0041E385j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	InvalidateRect

loc_41E3AE:				; CODE XREF: .text:0041E370j
					; .text:0041E379j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 100. _Delayedtableredraw
; Exported entry 463. Delayedtableredraw

; void __cdecl Delayedtableredraw(t_table *pt)
		public Delayedtableredraw
Delayedtableredraw:			; CODE XREF: .text:004C492Ap
		push	ebp		; _Delayedtableredraw
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41E43C
		cmp	dword ptr [ebx+254h], 0
		jnz	short loc_41E43C
		cmp	dword ptr [ebx+22Ch], 0
		jz	short loc_41E43C
		test	byte ptr [ebx+43h], 1
		jnz	short loc_41E43C
		mov	dword ptr [ebp-4], 7
		mov	eax, dword_57FE60
		cmp	eax, [ebp-4]
		jge	short loc_41E3EE
		mov	eax, offset dword_57FE60
		jmp	short loc_41E3F1
; ---------------------------------------------------------------------------

loc_41E3EE:				; CODE XREF: .text:0041E3E5j
		lea	eax, [ebp-4]

loc_41E3F1:				; CODE XREF: .text:0041E3ECj
		xor	edx, edx
		mov	[ebp-8], edx
		mov	ecx, [ebp-8]
		cmp	ecx, [eax]
		jle	short loc_41E402
		lea	edx, [ebp-8]
		jmp	short loc_41E404
; ---------------------------------------------------------------------------

loc_41E402:				; CODE XREF: .text:0041E3FBj
		mov	edx, eax

loc_41E404:				; CODE XREF: .text:0041E400j
		mov	eax, [edx]
		mov	dword_57FE60, eax
		push	0		; lpTimerFunc
		mov	ecx, dword_57FE60
		mov	eax, dword_5184E4[ecx*4]
		push	eax		; uElapse
		push	3		; nIDEvent
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	SetTimer
		mov	ecx, dword_57FE60
		mov	eax, dword_5184E4[ecx*4]
		mov	[ebx+254h], eax

loc_41E43C:				; CODE XREF: .text:0041E3BCj
					; .text:0041E3C5j ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 101. _Setautoupdate
; Exported entry 708. Setautoupdate

; void __cdecl Setautoupdate(t_table *pt, int autoupdate)
		public Setautoupdate
Setautoupdate:				; CODE XREF: .text:0041A1A6p
					; .text:00477670p ...
		push	ebp		; _Setautoupdate
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_41E4FB
		cmp	dword ptr [ebx+22Ch], 0
		jz	loc_41E4FB
		test	byte ptr [ebx+43h], 1
		jz	loc_41E4FB
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_41E48B
		push	3		; uIDEvent
		mov	eax, [ebx+22Ch]
		push	eax		; hWnd
		call	KillTimer
		xor	edx, edx
		mov	[ebx+254h], edx
		jmp	short loc_41E4FB
; ---------------------------------------------------------------------------

loc_41E48B:				; CODE XREF: .text:0041E471j
		cmp	dword ptr [ebx+254h], 0
		jnz	short loc_41E4FB
		mov	dword ptr [ebp-4], 7
		mov	ecx, dword_57FE60
		cmp	ecx, [ebp-4]
		jge	short loc_41E4AD
		mov	eax, offset dword_57FE60
		jmp	short loc_41E4B0
; ---------------------------------------------------------------------------

loc_41E4AD:				; CODE XREF: .text:0041E4A4j
		lea	eax, [ebp-4]

loc_41E4B0:				; CODE XREF: .text:0041E4ABj
		xor	edx, edx
		mov	[ebp-8], edx
		mov	ecx, [ebp-8]
		cmp	ecx, [eax]
		jle	short loc_41E4C1
		lea	edx, [ebp-8]
		jmp	short loc_41E4C3
; ---------------------------------------------------------------------------

loc_41E4C1:				; CODE XREF: .text:0041E4BAj
		mov	edx, eax

loc_41E4C3:				; CODE XREF: .text:0041E4BFj
		mov	eax, [edx]
		mov	dword_57FE60, eax
		push	0		; lpTimerFunc
		mov	ecx, dword_57FE60
		mov	eax, dword_5184E4[ecx*4]
		push	eax		; uElapse
		push	3		; nIDEvent
		mov	edx, [ebx+22Ch]
		push	edx		; hWnd
		call	SetTimer
		mov	ecx, dword_57FE60
		mov	eax, dword_5184E4[ecx*4]
		mov	[ebx+254h], eax

loc_41E4FB:				; CODE XREF: .text:0041E450j
					; .text:0041E45Dj ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
