.code

; ---------------------------------------------------------------------------

; int __usercall loc_41A8CC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, HDC hDC, int, int)
loc_41A8CC:				; CODE XREF: .text:0042056Fp
					; .text:004CEC69p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF42Ch
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+10h], 0
		jz	loc_41D9EE
		mov	eax, [ebp+10h]
		cmp	dword ptr [eax+210h], 0
		jz	loc_41D9EE
		cmp	dword ptr [ebp+8], 0
		jz	loc_41D9EE
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_41D9EE
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		mov	ecx, [edx+4]
		cmp	ecx, [eax+0Ch]
		jge	loc_41D9EE
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		mov	ecx, [edx]
		cmp	ecx, [eax+8]
		jge	loc_41D9EE
		mov	edx, [ebp+10h]
		mov	ecx, [edx+234h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	edx, font.height[ecx*4]
		mov	[ebp-38h], edx
		mov	ecx, [ebp+10h]
		mov	eax, [ecx+234h]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	ecx, font.hadjbot[eax*4]
		mov	[ebp-40h], ecx
		mov	eax, [ebp+10h]
		mov	edx, [eax+238h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		add	edx, offset scheme
		mov	[ebp-70h], edx
		mov	eax, [ebp+10h]
		test	byte ptr [eax+43h], 2
		jz	short loc_41A9A4
		mov	edx, [ebp+10h]
		cmp	dword ptr [edx+23Ch], 0
		jle	short loc_41A9A4
		mov	ecx, [ebp+10h]
		cmp	dword ptr [ecx+23Ch], 8
		jl	short loc_41A9AD

loc_41A9A4:				; CODE XREF: .text:0041A98Aj
					; .text:0041A996j
		mov	dword ptr [ebp-74h], offset hilite
		jmp	short loc_41A9CD
; ---------------------------------------------------------------------------

loc_41A9AD:				; CODE XREF: .text:0041A9A2j
		mov	eax, [ebp+10h]
		mov	edx, [eax+23Ch]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		add	edx, offset hilite
		mov	[ebp-74h], edx

loc_41A9CD:				; CODE XREF: .text:0041A9ABj
		xor	eax, eax
		mov	[ebp-64h], eax
		lea	edx, [ebp-0A94h]
		mov	[ebp-68h], edx
		xor	ecx, ecx
		mov	[ebp-80h], ecx
		mov	[ebp-7Ch], ecx
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+0Ch]
		push	edx		; int
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+8]
		push	edx		; int
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+4]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		push	ecx		; int
		call	CreateRectRgn
		mov	[ebp-78h], eax
		mov	eax, [ebp-78h]
		push	eax		; HRGN
		mov	edx, [ebp+8]
		push	edx		; HDC
		call	SelectClipRgn
		mov	ecx, [ebp-78h]
		push	ecx		; HGDIOBJ
		call	DeleteObject
		mov	eax, [ebp+0Ch]
		lea	edi, [ebp-0BB4h]
		mov	esi, eax
		mov	ecx, 4
		rep movsd
		mov	eax, [ebp+10h]
		mov	edx, [eax+244h]
		sub	[ebp-0BB4h], edx
		cmp	dword_586110, 0
		jz	short loc_41AAC5
		mov	ecx, [ebp+8]
		push	ecx		; HDC
		call	CreateCompatibleDC
		mov	esi, eax
		test	esi, esi
		jz	short loc_41AA73
		mov	eax, [ebp-38h]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		mov	ecx, [edx+8]
		sub	ecx, [eax]
		push	ecx		; int
		mov	edx, [ebp+8]
		push	edx		; HDC
		call	CreateCompatibleBitmap
		mov	[ebp-7Ch], eax
		jmp	short loc_41AA78
; ---------------------------------------------------------------------------

loc_41AA73:				; CODE XREF: .text:0041AA53j
		xor	ecx, ecx
		mov	[ebp-7Ch], ecx

loc_41AA78:				; CODE XREF: .text:0041AA71j
		cmp	dword ptr [ebp-7Ch], 0
		jnz	short loc_41AAA0
		push	offset aAttentionSnowF ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 8
		mov	esi, [ebp+8]
		xor	eax, eax
		mov	dword_586110, eax
		jmp	short loc_41AAC8
; ---------------------------------------------------------------------------

loc_41AAA0:				; CODE XREF: .text:0041AA7Cj
		mov	edx, [ebp-7Ch]
		push	edx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		mov	[ebp-80h], eax
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx]
		sub	[ebp-0BB4h], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		sub	[ebp-0BACh], ecx
		jmp	short loc_41AAC8
; ---------------------------------------------------------------------------

loc_41AAC5:				; CODE XREF: .text:0041AA44j
		mov	esi, [ebp+8]

loc_41AAC8:				; CODE XREF: .text:0041AA9Ej
					; .text:0041AAC3j
		mov	eax, [ebp+10h]
		mov	edx, [eax+234h]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	eax, font.hfont[edx*4]
		push	eax		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		push	8		; UINT
		push	esi		; HDC
		call	SetTextAlign
		mov	edx, [ebp+0Ch]
		mov	eax, [edx+0Ch]
		mov	edx, [ebp+0Ch]
		sub	eax, [edx+4]
		add	eax, [ebp-38h]
		dec	eax
		cdq
		idiv	dword ptr [ebp-38h]
		mov	[ebp-0Ch], eax
		mov	eax, [ebp+10h]
		test	byte ptr [eax+40h], 1
		jz	short loc_41AB35
		xor	ecx, ecx
		xor	edx, edx
		mov	[ebp-0BA4h], ecx
		lea	ecx, [ebp-0BA4h]
		mov	eax, [ebp-0Ch]
		mov	[ebp-0BA0h], eax
		mov	[ebp-0B98h], edx
		mov	[ebp-6Ch], ecx
		jmp	short loc_41AB7F
; ---------------------------------------------------------------------------

loc_41AB35:				; CODE XREF: .text:0041AB0Fj
		mov	eax, [ebp+10h]
		test	byte ptr [eax+40h], 4
		jnz	short loc_41AB54
		mov	edx, [ebp+10h]
		mov	ecx, [edx+7Ch]
		push	ecx		; sort
		mov	eax, [ebp+10h]
		add	eax, 44h
		push	eax		; sd
		call	Sortsorteddata
		add	esp, 8

loc_41AB54:				; CODE XREF: .text:0041AB3Cj
		mov	edx, [ebp+10h]
		mov	eax, [ebp+10h]
		mov	ecx, [edx+44h]
		sub	ecx, [eax+248h]
		cmp	ecx, [ebp-0Ch]
		jge	short loc_41AB7A
		mov	edx, [ebp+10h]
		mov	eax, [ebp+10h]
		mov	ecx, [edx+44h]
		sub	ecx, [eax+248h]
		mov	[ebp-0Ch], ecx

loc_41AB7A:				; CODE XREF: .text:0041AB66j
		xor	edx, edx
		mov	[ebp-6Ch], edx

loc_41AB7F:				; CODE XREF: .text:0041AB33j
		push	0
		push	0FFFFFFFCh
		mov	ecx, [ebp-6Ch]
		lea	edx, [ebp-30h]
		push	ecx
		lea	ecx, [ebp-694h]
		mov	eax, [ebp+10h]
		push	eax
		push	edx
		push	ecx
		lea	eax, [ebp-494h]
		push	eax
		mov	edx, [ebp+10h]
		call	dword ptr [edx+210h]
		add	esp, 1Ch
		mov	[ebp-44h], eax
		cmp	dword ptr [ebp-44h], 400h
		jle	short loc_41ABD3
		push	1		; flags
		mov	ecx, [ebp-44h]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-64h], eax
		mov	[ebp-68h], eax
		cmp	dword ptr [ebp-64h], 0
		jz	loc_41D7C1

loc_41ABD3:				; CODE XREF: .text:0041ABB3j
		cmp	dword ptr [ebp-44h], 0
		jle	short loc_41AC05
		mov	edx, [ebp-68h]
		push	edx
		push	0FFFFFFFDh
		mov	ecx, [ebp-6Ch]
		lea	edx, [ebp-30h]
		push	ecx
		lea	ecx, [ebp-694h]
		mov	eax, [ebp+10h]
		push	eax
		push	edx
		push	ecx
		lea	eax, [ebp-494h]
		push	eax
		mov	edx, [ebp+10h]
		call	dword ptr [edx+210h]
		add	esp, 1Ch

loc_41AC05:				; CODE XREF: .text:0041ABD7j
		xor	ecx, ecx
		mov	[ebp-4Ch], ecx
		mov	eax, [ebp+10h]
		test	byte ptr [eax+43h], 8
		jz	short loc_41AC52
		xor	edx, edx
		mov	[ebp-18h], edx
		mov	ecx, [ebp+10h]
		lea	eax, [ecx+1A4h]
		mov	[ebp-84h], eax
		jmp	short loc_41AC3E
; ---------------------------------------------------------------------------

loc_41AC29:				; CODE XREF: .text:0041AC50j
		mov	edx, [ebp-84h]
		mov	ecx, [edx]
		add	[ebp-4Ch], ecx
		inc	dword ptr [ebp-18h]
		add	dword ptr [ebp-84h], 4

loc_41AC3E:				; CODE XREF: .text:0041AC27j
		mov	eax, [ebp+10h]
		mov	edx, [eax+8Ch]
		cmp	edx, [ebp-18h]
		jle	short loc_41AC52
		cmp	dword ptr [ebp-18h], 11h
		jl	short loc_41AC29

loc_41AC52:				; CODE XREF: .text:0041AC11j
					; .text:0041AC4Aj
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		mov	eax, [ebp-14h]
		cmp	eax, [ebp-0Ch]
		jge	loc_41D7C1

loc_41AC63:				; CODE XREF: .text:0041D7BBj
		mov	edx, [ebp+10h]
		mov	ecx, [edx+40h]
		and	ecx, 3
		cmp	ecx, 3
		jnz	short loc_41AC89
		mov	eax, [ebp+10h]
		mov	ecx, [ebp+10h]
		mov	edx, [eax+248h]
		add	edx, [ebp-14h]
		cmp	edx, [ecx+44h]
		jge	loc_41D7C1

loc_41AC89:				; CODE XREF: .text:0041AC6Fj
		mov	eax, [ebp+10h]
		test	byte ptr [eax+40h], 8
		jnz	short loc_41ACB5
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+0Ch]
		cmp	ecx, [ebp-0BB0h]
		jle	loc_41D7C1
		mov	eax, [ebp-0BB0h]
		add	eax, [ebp-38h]
		mov	[ebp-0BA8h], eax
		jmp	short loc_41ACF0
; ---------------------------------------------------------------------------

loc_41ACB5:				; CODE XREF: .text:0041AC90j
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+4]
		cmp	ecx, [ebp-0BA8h]
		jge	loc_41D7C1
		mov	eax, [ebp-0BA8h]
		sub	eax, [ebp-38h]
		mov	[ebp-0BB0h], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+4]
		cmp	ecx, [ebp-0BB0h]
		jle	short loc_41ACF0
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+4]
		mov	[ebp-0BB0h], edx

loc_41ACF0:				; CODE XREF: .text:0041ACB3j
					; .text:0041ACE2j
		push	esi
		lea	esi, [ebp-0BB4h]
		lea	edi, [ebp-0BC4h]
		mov	ecx, 4
		rep movsd
		pop	esi
		cmp	dword_586110, 0
		jz	short loc_41AD1F
		xor	eax, eax
		mov	[ebp-0BC0h], eax
		mov	edx, [ebp-38h]
		mov	[ebp-0BB8h], edx

loc_41AD1F:				; CODE XREF: .text:0041AD0Cj
		mov	ecx, [ebp+10h]
		test	byte ptr [ecx+40h], 5
		jz	short loc_41AD45
		mov	eax, [ebp-14h]
		mov	[ebp-0BA4h], eax
		mov	edx, [ebp-0Ch]
		mov	[ebp-0BA0h], edx
		lea	ecx, [ebp-0BA4h]
		mov	[ebp-6Ch], ecx
		jmp	short loc_41AD64
; ---------------------------------------------------------------------------

loc_41AD45:				; CODE XREF: .text:0041AD26j
		mov	eax, [ebp+10h]
		mov	edx, [eax+248h]
		add	edx, [ebp-14h]
		push	edx		; index
		mov	ecx, [ebp+10h]
		add	ecx, 44h
		push	ecx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	[ebp-6Ch], eax

loc_41AD64:				; CODE XREF: .text:0041AD43j
		mov	eax, [ebp-68h]
		push	eax
		push	0FFFFFFFFh
		mov	edx, [ebp-6Ch]
		lea	eax, [ebp-30h]
		push	edx
		lea	edx, [ebp-694h]
		mov	ecx, [ebp+10h]
		push	ecx
		push	eax
		push	edx
		lea	ecx, [ebp-494h]
		push	ecx
		mov	eax, [ebp+10h]
		call	dword ptr [eax+210h]
		add	esp, 1Ch
		xor	edx, edx
		mov	[ebp-18h], edx
		mov	ecx, [ebp+10h]
		lea	eax, [ecx+1A4h]
		mov	[ebp-88h], eax
		jmp	loc_41D6A3
; ---------------------------------------------------------------------------

loc_41ADA9:				; CODE XREF: .text:0041D6B5j
		mov	edx, [ebp-0BC4h]
		cmp	edx, [ebp-0BACh]
		jge	loc_41D6BB
		mov	ecx, [ebp-88h]
		mov	eax, [ecx]
		add	eax, [ebp-0BC4h]
		dec	eax
		mov	[ebp-0BBCh], eax
		mov	edx, [ebp-0BBCh]
		cmp	edx, [ebp-0BB4h]
		jge	short loc_41ADF5
		cmp	dword ptr [ebp-18h], 0
		jg	loc_41D640
		mov	ecx, [ebp+10h]
		test	byte ptr [ecx+43h], 8
		jz	loc_41D640

loc_41ADF5:				; CODE XREF: .text:0041ADDCj
		mov	eax, [ebp-88h]
		cmp	dword ptr [eax], 3
		jg	short loc_41AE2B
		cmp	dword ptr [ebp-18h], 0
		jg	short loc_41AE0F
		mov	edx, [ebp+10h]
		test	byte ptr [edx+43h], 8
		jnz	short loc_41AE2B

loc_41AE0F:				; CODE XREF: .text:0041AE04j
		mov	ecx, [ebp-70h]
		lea	edx, [ebp-0BC4h]
		mov	eax, [ecx+310h]
		push	eax		; hbr
		push	edx		; lprc
		push	esi		; hDC
		call	FillRect
		jmp	loc_41D640
; ---------------------------------------------------------------------------

loc_41AE2B:				; CODE XREF: .text:0041ADFEj
					; .text:0041AE0Dj
		mov	ecx, [ebp-18h]
		push	ecx		; column
		mov	eax, [ebp+10h]
		push	eax		; pt
		call	Getcharacterwidth
		add	esp, 8
		mov	[ebp-3Ch], eax
		xor	edx, edx
		mov	[ebp-30h], edx
		mov	ecx, [ebp-68h]
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		lea	eax, [ebp-30h]
		mov	edx, [ebp-6Ch]
		push	edx
		lea	edx, [ebp-694h]
		mov	ecx, [ebp+10h]
		push	ecx
		push	eax
		push	edx
		lea	ecx, [ebp-494h]
		push	ecx
		mov	eax, [ebp+10h]
		call	dword ptr [eax+210h]
		add	esp, 1Ch
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_41AE96
		cmp	dword ptr [ebp-4Ch], 0
		jle	short loc_41AE96
		test	byte ptr [ebp-2Eh], 1
		jz	short loc_41AE96
		mov	edx, [ebp-0BC4h]
		add	edx, [ebp-4Ch]
		dec	edx
		mov	[ebp-0BBCh], edx

loc_41AE96:				; CODE XREF: .text:0041AE78j
					; .text:0041AE7Ej ...
		cmp	dword ptr [ebp-28h], 0
		jge	short loc_41AEA3
		xor	ecx, ecx
		mov	[ebp-28h], ecx
		jmp	short loc_41AEB3
; ---------------------------------------------------------------------------

loc_41AEA3:				; CODE XREF: .text:0041AE9Aj
		cmp	dword ptr [ebp-28h], 100h
		jl	short loc_41AEB3
		mov	dword ptr [ebp-28h], 0FFh

loc_41AEB3:				; CODE XREF: .text:0041AEA1j
					; .text:0041AEAAj
		mov	eax, [ebp+10h]
		test	byte ptr [eax+42h], 20h
		jz	short loc_41AECC
		cmp	dword_57FEB0, 0
		jz	short loc_41AECC
		or	dword ptr [ebp-30h], 4000h

loc_41AECC:				; CODE XREF: .text:0041AEBAj
					; .text:0041AEC3j
		mov	edx, [ebp+10h]
		test	byte ptr [edx+40h], 1
		jnz	short loc_41AF07
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+10h]
		mov	eax, [ecx+248h]
		add	eax, [ebp-14h]
		cmp	eax, [edx+68h]
		jnz	short loc_41AF07
		mov	ecx, [ebp+10h]
		test	byte ptr [ecx+40h], 10h
		jz	short loc_41AF00
		mov	eax, [ebp+10h]
		mov	edx, [eax+24Ch]
		cmp	edx, [ebp-18h]
		jnz	short loc_41AF07

loc_41AF00:				; CODE XREF: .text:0041AEF0j
		xor	dword ptr [ebp-30h], 80h

loc_41AF07:				; CODE XREF: .text:0041AED3j
					; .text:0041AEE7j ...
		mov	ecx, [ebp+10h]
		test	byte ptr [ecx+40h], 5
		jnz	short loc_41AF29
		mov	eax, [ebp+10h]
		test	byte ptr [eax+50h], 4
		jnz	short loc_41AF29
		mov	edx, [ebp-6Ch]
		test	byte ptr [edx+9], 1
		jz	short loc_41AF29
		or	dword ptr [ebp-30h], 20000h

loc_41AF29:				; CODE XREF: .text:0041AF0Ej
					; .text:0041AF17j ...
		xor	ecx, ecx
		mov	ebx, ecx
		mov	[ebp-1Ch], ecx
		push	esi
		lea	esi, [ebp-0BC4h]
		lea	edi, [ebp-0BD4h]
		mov	ecx, 4
		rep movsd
		pop	esi
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41AF4F
		adc	eax, 0

loc_41AF4F:				; CODE XREF: .text:0041AF4Aj
		add	eax, [ebp-0BC4h]
		mov	[ebp-20h], eax
		mov	edx, [ebp-0BB8h]
		sub	edx, [ebp-40h]
		mov	[ebp-24h], edx
		test	byte ptr [ebp-2Fh], 10h
		jz	short loc_41AFE9
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41AF74
		adc	ecx, 0

loc_41AF74:				; CODE XREF: .text:0041AF6Fj
		add	ecx, [ebp-0BD0h]
		mov	[ebp-0BC8h], ecx
		mov	eax, [ebp-30h]
		and	eax, 180h
		cmp	eax, 180h
		jnz	short loc_41AFA8
		mov	edx, [ebp-70h]
		lea	eax, [ebp-0BD4h]
		mov	ecx, [edx+30Ch]
		push	ecx		; hbr
		push	eax		; lprc
		push	esi		; hDC
		call	FillRect
		jmp	short loc_41AFBF
; ---------------------------------------------------------------------------

loc_41AFA8:				; CODE XREF: .text:0041AF8Dj
		mov	edx, [ebp-70h]
		lea	eax, [ebp-0BD4h]
		mov	ecx, [edx+308h]
		push	ecx		; hbr
		push	eax		; lprc
		push	esi		; hDC
		call	FillRect

loc_41AFBF:				; CODE XREF: .text:0041AFA6j
		mov	edx, [ebp-0BC8h]
		mov	[ebp-0BD0h], edx
		mov	ecx, [ebp-0BB8h]
		mov	[ebp-0BC8h], ecx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41AFE1
		adc	eax, 0

loc_41AFE1:				; CODE XREF: .text:0041AFDCj
		add	[ebp-24h], eax
		jmp	loc_41B06A
; ---------------------------------------------------------------------------

loc_41AFE9:				; CODE XREF: .text:0041AF68j
		test	byte ptr [ebp-2Fh], 20h
		jz	short loc_41B06A
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41AFF9
		adc	edx, 0

loc_41AFF9:				; CODE XREF: .text:0041AFF4j
		add	[ebp-0BD0h], edx
		mov	ecx, [ebp-30h]
		and	ecx, 180h
		cmp	ecx, 180h
		jnz	short loc_41B029
		mov	eax, [ebp-70h]
		lea	ecx, [ebp-0BD4h]
		mov	edx, [eax+30Ch]
		push	edx		; hbr
		push	ecx		; lprc
		push	esi		; hDC
		call	FillRect
		jmp	short loc_41B040
; ---------------------------------------------------------------------------

loc_41B029:				; CODE XREF: .text:0041B00Ej
		mov	eax, [ebp-70h]
		lea	ecx, [ebp-0BD4h]
		mov	edx, [eax+308h]
		push	edx		; hbr
		push	ecx		; lprc
		push	esi		; hDC
		call	FillRect

loc_41B040:				; CODE XREF: .text:0041B027j
		mov	eax, [ebp-0BD0h]
		mov	[ebp-0BC8h], eax
		mov	edx, [ebp-0BC0h]
		mov	[ebp-0BD0h], edx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B062
		adc	ecx, 0

loc_41B062:				; CODE XREF: .text:0041B05Dj
		mov	eax, [ebp-38h]
		sub	eax, ecx
		sub	[ebp-24h], eax

loc_41B06A:				; CODE XREF: .text:0041AFE4j
					; .text:0041AFEDj
		test	byte ptr [ebp-2Fh], 1
		jnz	short loc_41B088
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41B07A
		adc	edx, 0

loc_41B07A:				; CODE XREF: .text:0041B075j
		add	edx, [ebp-0BD4h]
		mov	[ebp-0BCCh], edx
		jmp	short loc_41B0BB
; ---------------------------------------------------------------------------

loc_41B088:				; CODE XREF: .text:0041B06Ej
		mov	ecx, [ebp-88h]
		test	byte ptr [ecx-88h], 10h
		jz	short loc_41B0A5
		mov	eax, [ebp-0BD4h]
		mov	[ebp-0BCCh], eax
		jmp	short loc_41B0BB
; ---------------------------------------------------------------------------

loc_41B0A5:				; CODE XREF: .text:0041B095j
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41B0AF
		adc	edx, 0

loc_41B0AF:				; CODE XREF: .text:0041B0AAj
		add	edx, [ebp-0BD4h]
		mov	[ebp-0BCCh], edx

loc_41B0BB:				; CODE XREF: .text:0041B086j
					; .text:0041B0A3j
		test	byte ptr [ebp-2Fh], 1
		jz	short loc_41B0CF
		mov	edi, [ebp-30h]
		and	edi, 80h
		or	edi, 0
		jmp	short loc_41B0D8
; ---------------------------------------------------------------------------

loc_41B0CF:				; CODE XREF: .text:0041B0BFj
		mov	edi, [ebp-30h]
		and	edi, 0FFh

loc_41B0D8:				; CODE XREF: .text:0041B0CDj
		mov	eax, [ebp-88h]
		lea	edx, [eax-88h]
		mov	[ebp-94h], edx
		mov	ecx, [ebp-1Ch]
		cmp	ecx, [ebp-28h]
		jge	loc_41D5F0

loc_41B0F6:				; CODE XREF: .text:0041D5EAj
		xor	eax, eax
		lea	edx, [ebp+ebx*2-494h]
		mov	[ebp-48h], eax
		mov	[ebp-90h], edx
		mov	ecx, [ebp-94h]
		lea	edx, [ebp+ebx-694h]
		mov	[ebp-8Ch], edx
		mov	eax, ecx
		cmp	ebx, [ebp-28h]
		jge	loc_41B1C8

loc_41B126:				; CODE XREF: .text:0041B1C2j
		test	byte ptr [ebp-2Fh], 1
		jz	short loc_41B146
		mov	ecx, [ebp-8Ch]
		xor	edx, edx
		mov	dl, [ecx]
		mov	ecx, [ebp-30h]
		and	ecx, 80h
		xor	edx, ecx
		mov	[ebp-34h], edx
		jmp	short loc_41B152
; ---------------------------------------------------------------------------

loc_41B146:				; CODE XREF: .text:0041B12Aj
		mov	edx, [ebp-30h]
		and	edx, 0FFh
		mov	[ebp-34h], edx

loc_41B152:				; CODE XREF: .text:0041B144j
		cmp	edi, [ebp-34h]
		jnz	short loc_41B1C8
		mov	ecx, edi
		and	ecx, 60h
		cmp	ecx, 60h
		jnz	short loc_41B168
		cmp	ebx, [ebp-1Ch]
		jg	short loc_41B1C8
		jmp	short loc_41B1B1
; ---------------------------------------------------------------------------

loc_41B168:				; CODE XREF: .text:0041B15Fj
		test	byte ptr [eax],	40h
		jz	short loc_41B18E
		mov	edx, [ebp-90h]
		cmp	word ptr [edx],	7Ch
		jnz	short loc_41B18E
		mov	eax, [ebp-90h]
		mov	word ptr [eax],	20h
		inc	ebx
		mov	dword ptr [ebp-48h], 1
		jmp	short loc_41B1C8
; ---------------------------------------------------------------------------

loc_41B18E:				; CODE XREF: .text:0041B16Bj
					; .text:0041B177j
		cmp	dword_5BE6BC, 0
		jz	short loc_41B1A1
		test	byte ptr [eax],	20h
		jz	short loc_41B1A1
		cmp	ebx, [ebp-1Ch]
		jg	short loc_41B1C8

loc_41B1A1:				; CODE XREF: .text:0041B195j
					; .text:0041B19Aj
		test	byte ptr [ebp-2Fh], 80h
		jz	short loc_41B1B1
		cmp	ebx, [ebp-1Ch]
		jle	short loc_41B1B1
		test	byte ptr [eax],	10h
		jz	short loc_41B1C8

loc_41B1B1:				; CODE XREF: .text:0041B166j
					; .text:0041B1A5j ...
		add	dword ptr [ebp-90h], 2
		inc	dword ptr [ebp-8Ch]
		inc	ebx
		cmp	ebx, [ebp-28h]
		jl	loc_41B126

loc_41B1C8:				; CODE XREF: .text:0041B120j
					; .text:0041B155j ...
		test	byte ptr [ebp-2Fh], 2
		jz	short loc_41B1FB
		lea	ecx, [ebp-54h]
		push	ecx		; LPSIZE
		mov	eax, ebx
		sub	eax, [ebp-1Ch]
		push	eax		; int
		mov	edx, [ebp-1Ch]
		add	edx, edx
		lea	ecx, [ebp-494h]
		add	edx, ecx
		push	edx		; LPCWSTR
		push	esi		; HDC
		call	GetTextExtentPoint32W
		test	eax, eax
		jz	short loc_41B1FB
		mov	eax, [ebp-54h]
		add	[ebp-0BCCh], eax
		jmp	short loc_41B20A
; ---------------------------------------------------------------------------

loc_41B1FB:				; CODE XREF: .text:0041B1CCj
					; .text:0041B1EEj
		mov	edx, ebx
		sub	edx, [ebp-1Ch]
		imul	edx, [ebp-3Ch]
		add	[ebp-0BCCh], edx

loc_41B20A:				; CODE XREF: .text:0041B1F9j
		mov	eax, edi
		and	eax, 1Fh
		cmp	eax, 0Ch
		jge	short loc_41B230
		mov	edx, [ebp-70h]
		mov	ecx, [edx+eax*4+200h]
		mov	[ebp-58h], ecx
		mov	edx, [ebp-70h]
		mov	ecx, [edx+eax*4+280h]
		mov	[ebp-5Ch], ecx
		jmp	short loc_41B26E
; ---------------------------------------------------------------------------

loc_41B230:				; CODE XREF: .text:0041B212j
		mov	edx, [ebp-74h]
		mov	ecx, [edx+eax*4+200h]
		mov	[ebp-58h], ecx
		cmp	dword ptr [ebp-58h], 0FFFFFFFFh
		jnz	short loc_41B24F
		mov	edx, [ebp-70h]
		mov	ecx, [edx+200h]
		mov	[ebp-58h], ecx

loc_41B24F:				; CODE XREF: .text:0041B241j
		mov	edx, [ebp-74h]
		mov	ecx, [edx+eax*4+280h]
		mov	[ebp-5Ch], ecx
		cmp	dword ptr [ebp-5Ch], 0FFFFFFFFh
		jnz	short loc_41B26E
		mov	edx, [ebp-70h]
		mov	ecx, [edx+280h]
		mov	[ebp-5Ch], ecx

loc_41B26E:				; CODE XREF: .text:0041B22Ej
					; .text:0041B260j
		mov	edx, ebx
		sub	edx, [ebp-1Ch]
		mov	[ebp-10h], edx
		mov	ecx, [ebp-0BCCh]
		cmp	ecx, [ebp-0BB4h]
		jle	loc_41D5C8
		mov	edx, [ebp-0BD4h]
		cmp	edx, [ebp-0BACh]
		jge	loc_41D5C8
		test	edi, 80h
		jz	short loc_41B319
		mov	ecx, edi
		and	ecx, 1Fh
		sub	ecx, 2
		jz	short loc_41B2B4
		dec	ecx
		sub	ecx, 5
		jb	short loc_41B2DD
		jmp	short loc_41B2E9
; ---------------------------------------------------------------------------

loc_41B2B4:				; CODE XREF: .text:0041B2AAj
		test	edi, 60h
		jnz	short loc_41B2BF
		and	edi, 0FFFFFFE0h

loc_41B2BF:				; CODE XREF: .text:0041B2BAj
		mov	eax, [ebp-70h]
		mov	eax, [eax+200h]
		mov	[ebp-58h], eax
		mov	edx, [ebp-70h]
		mov	ecx, [edx+2A4h]
		push	ecx		; COLORREF
		push	esi		; HDC
		call	SetBkColor
		jmp	short loc_41B323
; ---------------------------------------------------------------------------

loc_41B2DD:				; CODE XREF: .text:0041B2B0j
		mov	eax, [ebp-5Ch]
		push	eax		; COLORREF
		push	esi		; HDC
		call	SetBkColor
		jmp	short loc_41B323
; ---------------------------------------------------------------------------

loc_41B2E9:				; CODE XREF: .text:0041B2B2j
		cmp	eax, 0Ch
		jl	short loc_41B307
		mov	edx, [ebp-74h]
		cmp	dword ptr [edx+eax*4+280h], 0FFFFFFFFh
		jz	short loc_41B307
		mov	ecx, [ebp-5Ch]
		push	ecx		; COLORREF
		push	esi		; HDC
		call	SetBkColor
		jmp	short loc_41B323
; ---------------------------------------------------------------------------

loc_41B307:				; CODE XREF: .text:0041B2ECj
					; .text:0041B2F9j
		mov	eax, [ebp-70h]
		mov	edx, [eax+2A4h]
		push	edx		; COLORREF
		push	esi		; HDC
		call	SetBkColor
		jmp	short loc_41B323
; ---------------------------------------------------------------------------

loc_41B319:				; CODE XREF: .text:0041B2A0j
		mov	ecx, [ebp-5Ch]
		push	ecx		; COLORREF
		push	esi		; HDC
		call	SetBkColor

loc_41B323:				; CODE XREF: .text:0041B2DBj
					; .text:0041B2E7j ...
		test	byte ptr [ebp-2Fh], 8
		jz	short loc_41B33A
		cmp	ebx, [ebp-28h]
		jl	short loc_41B33A
		mov	eax, [ebp-0BBCh]
		mov	[ebp-0BCCh], eax

loc_41B33A:				; CODE XREF: .text:0041B327j
					; .text:0041B32Cj
		mov	edx, edi
		and	edx, 60h
		cmp	edx, 60h
		jnz	loc_41D4A0
		mov	ecx, [ebp-1Ch]
		movzx	eax, word ptr [ebp+ecx*2-494h]
		and	eax, 0FFh
		mov	[ebp-2Ch], eax
		mov	eax, edi
		and	eax, 1Fh
		cmp	eax, 2
		jnz	short loc_41B377
		mov	edx, [ebp-70h]
		mov	ecx, [edx+318h]
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		jmp	short loc_41B3CD
; ---------------------------------------------------------------------------

loc_41B377:				; CODE XREF: .text:0041B363j
		cmp	eax, 1
		jnz	short loc_41B38E
		mov	eax, [ebp-70h]
		mov	edx, [eax+31Ch]
		push	edx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		jmp	short loc_41B3CD
; ---------------------------------------------------------------------------

loc_41B38E:				; CODE XREF: .text:0041B37Aj
		test	byte ptr [ebp-2Fh], 40h
		jz	short loc_41B3A6
		mov	ecx, [ebp-70h]
		mov	eax, [ecx+318h]
		push	eax		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		jmp	short loc_41B3CD
; ---------------------------------------------------------------------------

loc_41B3A6:				; CODE XREF: .text:0041B392j
		cmp	eax, 8
		jnz	short loc_41B3BD
		mov	edx, [ebp-70h]
		mov	ecx, [edx+320h]
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		jmp	short loc_41B3CD
; ---------------------------------------------------------------------------

loc_41B3BD:				; CODE XREF: .text:0041B3A9j
		mov	eax, [ebp-70h]
		mov	edx, [eax+314h]
		push	edx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject

loc_41B3CD:				; CODE XREF: .text:0041B375j
					; .text:0041B38Cj ...
		cmp	dword ptr [ebp-2Ch], 5
		jnz	short loc_41B3DB
		mov	word ptr [ebp-5Eh], 3Eh
		jmp	short loc_41B3FD
; ---------------------------------------------------------------------------

loc_41B3DB:				; CODE XREF: .text:0041B3D1j
		cmp	dword ptr [ebp-2Ch], 6
		jnz	short loc_41B3E9
		mov	word ptr [ebp-5Eh], 24h
		jmp	short loc_41B3FD
; ---------------------------------------------------------------------------

loc_41B3E9:				; CODE XREF: .text:0041B3DFj
		cmp	dword ptr [ebp-2Ch], 7
		jnz	short loc_41B3F7
		mov	word ptr [ebp-5Eh], 3Fh
		jmp	short loc_41B3FD
; ---------------------------------------------------------------------------

loc_41B3F7:				; CODE XREF: .text:0041B3EDj
		mov	word ptr [ebp-5Eh], 20h

loc_41B3FD:				; CODE XREF: .text:0041B3D9j
					; .text:0041B3E7j ...
		push	0		; INT *
		push	1		; UINT
		lea	ecx, [ebp-5Eh]
		push	ecx		; LPCWSTR
		lea	eax, [ebp-0BD4h]
		push	eax		; RECT *
		mov	edx, 1000h
		cmp	dword_5BE6C0, 0
		jnz	short loc_41B420
		add	edx, 0FFFFF000h

loc_41B420:				; CODE XREF: .text:0041B418j
		or	edx, 6
		push	edx		; UINT
		mov	ecx, [ebp-24h]
		push	ecx		; int
		mov	eax, [ebp-20h]
		push	eax		; int
		push	esi		; HDC
		call	ExtTextOutW
		mov	edx, [ebp-2Ch]
		cmp	edx, 3Dh	; switch 62 cases
		ja	loc_41D576	; jumptable 0041B43E default case
		jmp	ds:off_41B445[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_41B445	dd offset loc_41D576, offset loc_41D576, offset	loc_41B542
					; DATA XREF: .text:0041B43Er
		dd offset loc_41B579, offset loc_41B6D9, offset	loc_41D576 ; jump table	for switch statement
		dd offset loc_41D576, offset loc_41D576, offset	loc_41B7F2
		dd offset loc_41D576, offset loc_41D576, offset	loc_41D576
		dd offset loc_41D576, offset loc_41D576, offset	loc_41D576
		dd offset loc_41D576, offset loc_41B8D3, offset	loc_41B94E
		dd offset loc_41B9A5, offset loc_41BA24, offset	loc_41BB15
		dd offset loc_41BC06, offset loc_41D576, offset	loc_41D576
		dd offset loc_41BCFF, offset loc_41BDBE, offset	loc_41BE19
		dd offset loc_41BF4A, offset loc_41C033, offset	loc_41C0EE
		dd offset loc_41C1C1, offset loc_41D576, offset	loc_41D576
		dd offset loc_41C2EE, offset loc_41C380, offset	loc_41C3B1
		dd offset loc_41C442, offset loc_41C532, offset	loc_41C600
		dd offset loc_41C6CC, offset loc_41C7D0, offset	loc_41C8D3
		dd offset loc_41CA35, offset loc_41CB75, offset	loc_41CCB5
		dd offset loc_41D576, offset loc_41D576, offset	loc_41D576
		dd offset loc_41CD36, offset loc_41CD7C, offset	loc_41CDEE
		dd offset loc_41CE7F, offset loc_41CEED, offset	loc_41CF7F
		dd offset loc_41D006, offset loc_41D094, offset	loc_41D102
		dd offset loc_41D190, offset loc_41D1FC, offset	loc_41D242
		dd offset loc_41D306, offset loc_41D3CA
; ---------------------------------------------------------------------------
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B542:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 2
		mov	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BC8h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B579:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		cmp	dword_5BE6BC, 0	; jumptable 0041B43E case 3
		jz	loc_41B646
		mov	eax, [ebp-94h]
		test	byte ptr [eax],	20h
		jz	loc_41B646
		push	0		; LPPOINT
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41B5A1
		adc	edx, 0

loc_41B5A1:				; CODE XREF: .text:0041B59Cj
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41B5B2
		adc	ecx, 0

loc_41B5B2:				; CODE XREF: .text:0041B5ADj
		add	ecx, [ebp-0BD4h]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41B5CA
		adc	eax, 0

loc_41B5CA:				; CODE XREF: .text:0041B5C5j
		add	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41B5DE
		adc	edx, 0

loc_41B5DE:				; CODE XREF: .text:0041B5D9j
		add	edx, [ebp-0BD4h]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B5F8
		adc	ecx, 0

loc_41B5F8:				; CODE XREF: .text:0041B5F3j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41B609
		adc	eax, 0

loc_41B609:				; CODE XREF: .text:0041B604j
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41B620
		adc	edx, 0

loc_41B620:				; CODE XREF: .text:0041B61Bj
		add	edx, [ebp-0BD0h]
		add	edx, 2
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41B634
		adc	ecx, 0

loc_41B634:				; CODE XREF: .text:0041B62Fj
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B646:				; CODE XREF: .text:0041B580j
					; .text:0041B58Fj
		push	0		; LPPOINT
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41B652
		adc	eax, 0

loc_41B652:				; CODE XREF: .text:0041B64Dj
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B673
		adc	ecx, 0

loc_41B673:				; CODE XREF: .text:0041B66Ej
		add	ecx, [ebp-0BD0h]
		add	ecx, 2
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, 2
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41B699
		adc	edx, 0

loc_41B699:				; CODE XREF: .text:0041B694j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, 3
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41B6BA
		adc	eax, 0

loc_41B6BA:				; CODE XREF: .text:0041B6B5j
		add	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 3
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B6D9:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 4
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B6E5
		adc	ecx, 0

loc_41B6E5:				; CODE XREF: .text:0041B6E0j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41B703
		adc	edx, 0

loc_41B703:				; CODE XREF: .text:0041B6FEj
		add	edx, [ebp-0BD0h]
		add	edx, 2
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41B726
		adc	eax, 0

loc_41B726:				; CODE XREF: .text:0041B721j
		add	eax, [ebp-0BD0h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B746
		adc	ecx, 0

loc_41B746:				; CODE XREF: .text:0041B741j
		add	ecx, [ebp-0BD0h]
		add	ecx, 3
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41B76A
		adc	edx, 0

loc_41B76A:				; CODE XREF: .text:0041B765j
		add	edx, [ebp-0BD0h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, 2
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41B78C
		adc	eax, 0

loc_41B78C:				; CODE XREF: .text:0041B787j
		add	eax, [ebp-0BD0h]
		add	eax, 3
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B7B2
		adc	ecx, 0

loc_41B7B2:				; CODE XREF: .text:0041B7ADj
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, 3
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41B7D3
		adc	edx, 0

loc_41B7D3:				; CODE XREF: .text:0041B7CEj
		add	edx, [ebp-0BD0h]
		add	edx, 2
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, 3
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B7F2:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		xor	eax, eax	; jumptable 0041B43E case 8
		mov	[ebp-4], eax
		mov	eax, [ebp-3Ch]
		mov	ecx, 6
		cdq
		idiv	ecx
		mov	[ebp-8], eax

loc_41B805:				; CODE XREF: .text:0041B8C8j
		push	0		; LPPOINT
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41B811
		adc	eax, 0

loc_41B811:				; CODE XREF: .text:0041B80Cj
		add	eax, [ebp-0BD0h]
		mov	edx, 1
		cmp	dword ptr [ebp-3Ch], 0Ah
		jg	short loc_41B823
		dec	edx

loc_41B823:				; CODE XREF: .text:0041B820j
		sub	eax, edx
		push	eax		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-8]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41B840
		adc	eax, 0

loc_41B840:				; CODE XREF: .text:0041B83Bj
		add	eax, [ebp-0BD0h]
		inc	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-8]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		cmp	dword ptr [ebp-3Ch], 0Ah
		jle	short loc_41B8B3
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B86A
		adc	ecx, 0

loc_41B86A:				; CODE XREF: .text:0041B865j
		add	ecx, [ebp-0BD0h]
		mov	eax, 1
		cmp	dword ptr [ebp-3Ch], 0Ah
		jg	short loc_41B87C
		dec	eax

loc_41B87C:				; CODE XREF: .text:0041B879j
		sub	ecx, eax
		push	ecx		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-8]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41B89A
		adc	ecx, 0

loc_41B89A:				; CODE XREF: .text:0041B895j
		add	ecx, [ebp-0BD0h]
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-8]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo

loc_41B8B3:				; CODE XREF: .text:0041B85Cj
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	[ebp-8], eax
		cmp	dword ptr [ebp-4], 3
		jl	loc_41B805
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B8D3:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 16
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, 2
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		add	eax, 3
		push	eax		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B94E:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 17
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41B963
		adc	eax, 0

loc_41B963:				; CODE XREF: .text:0041B95Ej
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41B984
		adc	ecx, 0

loc_41B984:				; CODE XREF: .text:0041B97Fj
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41B9A5:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 18
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFDh
		push	edx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		add	ecx, 0FFFFFFFDh
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFCh
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41BA24:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 19
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		add	eax, 3
		push	eax		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		add	eax, 5
		push	eax		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, 5
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		add	eax, 6
		push	eax		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41BB15:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 20
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		inc	eax
		push	eax		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		inc	edx
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFEh
		push	edx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFDh
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41BC06:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 21
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFEh
		push	edx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFDh
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFBh
		push	edx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		add	ecx, 0FFFFFFFBh
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		mov	edx, [ebp-0BC8h]
		sub	edx, eax
		add	edx, 0FFFFFFFAh
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41BCFF:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 24
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41BD0B
		adc	eax, 0

loc_41BD0B:				; CODE XREF: .text:0041BD06j
		add	eax, [ebp-0BD0h]
		dec	eax
		push	eax		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41BD30
		adc	edx, 0

loc_41BD30:				; CODE XREF: .text:0041BD2Bj
		add	edx, [ebp-0BD0h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BC8h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41BD65
		adc	ecx, 0

loc_41BD65:				; CODE XREF: .text:0041BD60j
		add	ecx, [ebp-0BD0h]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41BD8C
		adc	edx, 0

loc_41BD8C:				; CODE XREF: .text:0041BD87j
		add	edx, [ebp-0BD0h]
		add	edx, 0FFFFFFFEh
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BC8h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41BDBE:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 25
		mov	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BC8h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41BE19:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 26
		mov	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BC8h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BC8h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41BE7B
		adc	eax, 0

loc_41BE7B:				; CODE XREF: .text:0041BE76j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41BE9C
		adc	ecx, 0

loc_41BE9C:				; CODE XREF: .text:0041BE97j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, 5
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41BEBF
		adc	edx, 0

loc_41BEBF:				; CODE XREF: .text:0041BEBAj
		add	edx, [ebp-0BD0h]
		add	edx, 0FFFFFFFEh
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, 2
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41BEE3
		adc	eax, 0

loc_41BEE3:				; CODE XREF: .text:0041BEDEj
		add	eax, [ebp-0BD0h]
		add	eax, 3
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41BF09
		adc	ecx, 0

loc_41BF09:				; CODE XREF: .text:0041BF04j
		add	ecx, [ebp-0BD0h]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, 3
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41BF2B
		adc	edx, 0

loc_41BF2B:				; CODE XREF: .text:0041BF26j
		add	edx, [ebp-0BD0h]
		add	edx, 2
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, 3
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41BF4A:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 27
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BC8h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41BFAC
		adc	ecx, 0

loc_41BFAC:				; CODE XREF: .text:0041BFA7j
		add	ecx, [ebp-0BD0h]
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41BFCC
		adc	edx, 0

loc_41BFCC:				; CODE XREF: .text:0041BFC7j
		add	edx, [ebp-0BD0h]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41BFF1
		adc	eax, 0

loc_41BFF1:				; CODE XREF: .text:0041BFECj
		add	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41C013
		adc	ecx, 0

loc_41C013:				; CODE XREF: .text:0041C00Ej
		add	ecx, [ebp-0BD0h]
		add	ecx, 2
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C033:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 28
		mov	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41C053
		adc	eax, 0

loc_41C053:				; CODE XREF: .text:0041C04Ej
		add	eax, [ebp-0BD0h]
		inc	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41C072
		adc	ecx, 0

loc_41C072:				; CODE XREF: .text:0041C06Dj
		add	ecx, [ebp-0BD0h]
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41C0AC
		adc	eax, 0

loc_41C0AC:				; CODE XREF: .text:0041C0A7j
		add	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41C0CE
		adc	ecx, 0

loc_41C0CE:				; CODE XREF: .text:0041C0C9j
		add	ecx, [ebp-0BD0h]
		add	ecx, 2
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C0EE:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 29
		mov	edx, [ebp-0BD0h]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		inc	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BC8h]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BC8h]
		add	edx, 0FFFFFFFEh
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		add	edx, 0FFFFFFFEh
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, 2
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BC8h]
		add	edx, 0FFFFFFFDh
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BC8h]
		add	eax, 0FFFFFFFDh
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C1C1:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 30
		mov	ecx, [ebp-0BC8h]
		add	ecx, 0FFFFFFFDh
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BC8h]
		add	edx, 0FFFFFFFDh
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BC8h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BC8h]
		add	ecx, 0FFFFFFFCh
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BC8h]
		add	edx, 0FFFFFFFCh
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BC8h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, 2
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		add	eax, 2
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, 3
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		add	eax, 3
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C2EE:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 33
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C303
		adc	ecx, 0

loc_41C303:				; CODE XREF: .text:0041C2FEj
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C331
		adc	eax, 0

loc_41C331:				; CODE XREF: .text:0041C32Cj
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C355
		adc	ecx, 0

loc_41C355:				; CODE XREF: .text:0041C350j
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C380:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 34
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C3B1:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 35
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C3C6
		adc	edx, 0

loc_41C3C6:				; CODE XREF: .text:0041C3C1j
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C3F4
		adc	eax, 0

loc_41C3F4:				; CODE XREF: .text:0041C3EFj
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C418
		adc	ecx, 0

loc_41C418:				; CODE XREF: .text:0041C413j
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BC8h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C442:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 36
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C457
		adc	eax, 0

loc_41C457:				; CODE XREF: .text:0041C452j
		push	eax		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C485
		adc	eax, 0

loc_41C485:				; CODE XREF: .text:0041C480j
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C4A9
		adc	ecx, 0

loc_41C4A9:				; CODE XREF: .text:0041C4A4j
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C4E4
		adc	eax, 0

loc_41C4E4:				; CODE XREF: .text:0041C4DFj
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C508
		adc	ecx, 0

loc_41C508:				; CODE XREF: .text:0041C503j
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BC8h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C532:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 37
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C547
		adc	eax, 0

loc_41C547:				; CODE XREF: .text:0041C542j
		push	eax		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C575
		adc	eax, 0

loc_41C575:				; CODE XREF: .text:0041C570j
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 3
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C599
		adc	ecx, 0

loc_41C599:				; CODE XREF: .text:0041C594j
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BC8h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C5EC
		adc	ecx, 0

loc_41C5EC:				; CODE XREF: .text:0041C5E7j
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C600:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 38
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C615
		adc	edx, 0

loc_41C615:				; CODE XREF: .text:0041C610j
		push	edx		; int
		mov	eax, [ebp-3Ch]
		mov	ecx, 3
		cdq
		idiv	ecx
		add	eax, eax
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C643
		adc	eax, 0

loc_41C643:				; CODE XREF: .text:0041C63Ej
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 3
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C667
		adc	ecx, 0

loc_41C667:				; CODE XREF: .text:0041C662j
		add	ecx, 2
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BC8h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C6B8
		adc	ecx, 0

loc_41C6B8:				; CODE XREF: .text:0041C6B3j
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C6CC:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 39
		mov	edx, [ebp-0BC8h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C6F7
		adc	eax, 0

loc_41C6F7:				; CODE XREF: .text:0041C6F2j
		inc	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C71A
		adc	ecx, 0

loc_41C71A:				; CODE XREF: .text:0041C715j
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, 2
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C73E
		adc	edx, 0

loc_41C73E:				; CODE XREF: .text:0041C739j
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C763
		adc	eax, 0

loc_41C763:				; CODE XREF: .text:0041C75Ej
		add	eax, 0FFFFFFFDh
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		add	edx, 0FFFFFFFCh
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C78F
		adc	ecx, 0

loc_41C78F:				; CODE XREF: .text:0041C78Aj
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C7B4
		adc	edx, 0

loc_41C7B4:				; CODE XREF: .text:0041C7AFj
		add	edx, 3
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		add	ecx, 0FFFFFFFCh
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C7D0:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 40
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C7FA
		adc	ecx, 0

loc_41C7FA:				; CODE XREF: .text:0041C7F5j
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C81D
		adc	edx, 0

loc_41C81D:				; CODE XREF: .text:0041C818j
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, 2
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C841
		adc	eax, 0

loc_41C841:				; CODE XREF: .text:0041C83Cj
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C866
		adc	ecx, 0

loc_41C866:				; CODE XREF: .text:0041C861j
		add	ecx, 0FFFFFFFDh
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		add	eax, 0FFFFFFFCh
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C892
		adc	edx, 0

loc_41C892:				; CODE XREF: .text:0041C88Dj
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C8B7
		adc	eax, 0

loc_41C8B7:				; CODE XREF: .text:0041C8B2j
		add	eax, 3
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		add	edx, 0FFFFFFFCh
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41C8D3:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 41
		mov	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C8FD
		adc	edx, 0

loc_41C8FD:				; CODE XREF: .text:0041C8F8j
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C920
		adc	eax, 0

loc_41C920:				; CODE XREF: .text:0041C91Bj
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, 2
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C944
		adc	ecx, 0

loc_41C944:				; CODE XREF: .text:0041C93Fj
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C969
		adc	edx, 0

loc_41C969:				; CODE XREF: .text:0041C964j
		add	edx, 0FFFFFFFDh
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		add	ecx, 0FFFFFFFCh
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BC8h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41C9AB
		adc	ecx, 0

loc_41C9AB:				; CODE XREF: .text:0041C9A6j
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41C9CE
		adc	edx, 0

loc_41C9CE:				; CODE XREF: .text:0041C9C9j
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, 2
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41C9F4
		adc	eax, 0

loc_41C9F4:				; CODE XREF: .text:0041C9EFj
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41CA19
		adc	ecx, 0

loc_41CA19:				; CODE XREF: .text:0041CA14j
		add	ecx, 3
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		add	eax, 0FFFFFFFCh
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CA35:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 42
		mov	edx, [ebp-0BC8h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41CA60
		adc	eax, 0

loc_41CA60:				; CODE XREF: .text:0041CA5Bj
		add	eax, 2
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41CA85
		adc	ecx, 0

loc_41CA85:				; CODE XREF: .text:0041CA80j
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, 3
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41CAA9
		adc	edx, 0

loc_41CAA9:				; CODE XREF: .text:0041CAA4j
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41CACE
		adc	eax, 0

loc_41CACE:				; CODE XREF: .text:0041CAC9j
		add	eax, 0FFFFFFFDh
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		add	edx, 0FFFFFFFCh
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41CAFA
		adc	ecx, 0

loc_41CAFA:				; CODE XREF: .text:0041CAF5j
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41CB1F
		adc	edx, 0

loc_41CB1F:				; CODE XREF: .text:0041CB1Aj
		add	edx, 3
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		add	ecx, 0FFFFFFFCh
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41CB60
		adc	ecx, 0

loc_41CB60:				; CODE XREF: .text:0041CB5Bj
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CB75:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 43
		mov	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41CB9F
		adc	eax, 0

loc_41CB9F:				; CODE XREF: .text:0041CB9Aj
		add	eax, 0FFFFFFFEh
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41CBC4
		adc	ecx, 0

loc_41CBC4:				; CODE XREF: .text:0041CBBFj
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, 3
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41CBE8
		adc	edx, 0

loc_41CBE8:				; CODE XREF: .text:0041CBE3j
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-0BC8h]
		sar	eax, 1
		jns	short loc_41CC0D
		adc	eax, 0

loc_41CC0D:				; CODE XREF: .text:0041CC08j
		add	eax, 0FFFFFFFDh
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		add	edx, 0FFFFFFFCh
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41CC39
		adc	ecx, 0

loc_41CC39:				; CODE XREF: .text:0041CC34j
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41CC5E
		adc	edx, 0

loc_41CC5E:				; CODE XREF: .text:0041CC59j
		add	edx, 3
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		add	ecx, 0FFFFFFFCh
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BC8h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-0BC8h]
		sar	ecx, 1
		jns	short loc_41CCA0
		adc	ecx, 0

loc_41CCA0:				; CODE XREF: .text:0041CC9Bj
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CCB5:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 44
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41CCCA
		adc	edx, 0

loc_41CCCA:				; CODE XREF: .text:0041CCC5j
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BC8h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		add	edx, 0FFFFFFFEh
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-0BD0h]
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-0BC8h]
		sar	edx, 1
		jns	short loc_41CD22
		adc	edx, 0

loc_41CD22:				; CODE XREF: .text:0041CD1Dj
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CD36:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 48
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41CD42
		adc	eax, 0

loc_41CD42:				; CODE XREF: .text:0041CD3Dj
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41CD60
		adc	ecx, 0

loc_41CD60:				; CODE XREF: .text:0041CD5Bj
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CD7C:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 49
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-38h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41CD93
		adc	ecx, 0

loc_41CD93:				; CODE XREF: .text:0041CD8Ej
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41CDAA
		adc	eax, 0

loc_41CDAA:				; CODE XREF: .text:0041CDA5j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41CDBB
		adc	edx, 0

loc_41CDBB:				; CODE XREF: .text:0041CDB6j
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41CDD2
		adc	ecx, 0

loc_41CDD2:				; CODE XREF: .text:0041CDCDj
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CDEE:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 50
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41CDFA
		adc	edx, 0

loc_41CDFA:				; CODE XREF: .text:0041CDF5j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41CE18
		adc	eax, 0

loc_41CE18:				; CODE XREF: .text:0041CE13j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41CE3B
		adc	ecx, 0

loc_41CE3B:				; CODE XREF: .text:0041CE36j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41CE4C
		adc	eax, 0

loc_41CE4C:				; CODE XREF: .text:0041CE47j
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-38h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41CE6D
		adc	ecx, 0

loc_41CE6D:				; CODE XREF: .text:0041CE68j
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CE7F:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 51
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41CE8B
		adc	eax, 0

loc_41CE8B:				; CODE XREF: .text:0041CE86j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41CEA9
		adc	ecx, 0

loc_41CEA9:				; CODE XREF: .text:0041CEA4j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41CEBA
		adc	eax, 0

loc_41CEBA:				; CODE XREF: .text:0041CEB5j
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-38h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41CEDB
		adc	ecx, 0

loc_41CEDB:				; CODE XREF: .text:0041CED6j
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CEED:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 52
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41CF00
		adc	edx, 0

loc_41CF00:				; CODE XREF: .text:0041CEFBj
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-38h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41CF21
		adc	eax, 0

loc_41CF21:				; CODE XREF: .text:0041CF1Cj
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41CF3A
		adc	edx, 0

loc_41CF3A:				; CODE XREF: .text:0041CF35j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41CF4B
		adc	ecx, 0

loc_41CF4B:				; CODE XREF: .text:0041CF46j
		add	ecx, [ebp-0BD4h]
		inc	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41CF63
		adc	eax, 0

loc_41CF63:				; CODE XREF: .text:0041CF5Ej
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41CF7F:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 53
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41CF8B
		adc	ecx, 0

loc_41CF8B:				; CODE XREF: .text:0041CF86j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41CFA9
		adc	edx, 0

loc_41CFA9:				; CODE XREF: .text:0041CFA4j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41CFD3
		adc	edx, 0

loc_41CFD3:				; CODE XREF: .text:0041CFCEj
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-38h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41CFF4
		adc	eax, 0

loc_41CFF4:				; CODE XREF: .text:0041CFEFj
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D006:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 54
		mov	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41D019
		adc	ecx, 0

loc_41D019:				; CODE XREF: .text:0041D014j
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-0BD0h]
		add	eax, [ebp-38h]
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41D03A
		adc	edx, 0

loc_41D03A:				; CODE XREF: .text:0041D035j
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D053
		adc	ecx, 0

loc_41D053:				; CODE XREF: .text:0041D04Ej
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41D071
		adc	edx, 0

loc_41D071:				; CODE XREF: .text:0041D06Cj
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41D082
		adc	ecx, 0

loc_41D082:				; CODE XREF: .text:0041D07Dj
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D094:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 55
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41D0A7
		adc	edx, 0

loc_41D0A7:				; CODE XREF: .text:0041D0A2j
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D0BE
		adc	ecx, 0

loc_41D0BE:				; CODE XREF: .text:0041D0B9j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41D0CF
		adc	eax, 0

loc_41D0CF:				; CODE XREF: .text:0041D0CAj
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41D0E6
		adc	edx, 0

loc_41D0E6:				; CODE XREF: .text:0041D0E1j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D102:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 56
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41D10E
		adc	eax, 0

loc_41D10E:				; CODE XREF: .text:0041D109j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D12C
		adc	ecx, 0

loc_41D12C:				; CODE XREF: .text:0041D127j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41D156
		adc	ecx, 0

loc_41D156:				; CODE XREF: .text:0041D151j
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41D16D
		adc	eax, 0

loc_41D16D:				; CODE XREF: .text:0041D168j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41D17E
		adc	edx, 0

loc_41D17E:				; CODE XREF: .text:0041D179j
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D190:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 57
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D19C
		adc	ecx, 0

loc_41D19C:				; CODE XREF: .text:0041D197j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41D1BA
		adc	edx, 0

loc_41D1BA:				; CODE XREF: .text:0041D1B5j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41D1CB
		adc	ecx, 0

loc_41D1CB:				; CODE XREF: .text:0041D1C6j
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebp-0BD0h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41D1EA
		adc	edx, 0

loc_41D1EA:				; CODE XREF: .text:0041D1E5j
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D1FC:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 58
		mov	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41D20F
		adc	eax, 0

loc_41D20F:				; CODE XREF: .text:0041D20Aj
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-38h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41D230
		adc	ecx, 0

loc_41D230:				; CODE XREF: .text:0041D22Bj
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D242:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 59
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41D24E
		adc	eax, 0

loc_41D24E:				; CODE XREF: .text:0041D249j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D26C
		adc	ecx, 0

loc_41D26C:				; CODE XREF: .text:0041D267j
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-0BD0h]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41D2A8
		adc	eax, 0

loc_41D2A8:				; CODE XREF: .text:0041D2A3j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D2C8
		adc	ecx, 0

loc_41D2C8:				; CODE XREF: .text:0041D2C3j
		add	ecx, ecx
		add	ecx, [ebp-0BD0h]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41D2ED
		adc	edx, 0

loc_41D2ED:				; CODE XREF: .text:0041D2E8j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D306:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 60
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41D312
		adc	eax, 0

loc_41D312:				; CODE XREF: .text:0041D30Dj
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D330
		adc	ecx, 0

loc_41D330:				; CODE XREF: .text:0041D32Bj
		add	ecx, [ebp-0BD0h]
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		add	eax, [ebp-3Ch]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-0BD0h]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41D368
		adc	eax, 0

loc_41D368:				; CODE XREF: .text:0041D363j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		add	edx, [ebp-3Ch]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-38h]
		sar	ecx, 1
		jns	short loc_41D38C
		adc	ecx, 0

loc_41D38C:				; CODE XREF: .text:0041D387j
		add	ecx, ecx
		add	ecx, [ebp-0BD0h]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41D3AD
		adc	edx, 0

loc_41D3AD:				; CODE XREF: .text:0041D3A8j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-0BD4h]
		add	ecx, [ebp-3Ch]
		dec	ecx
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D3CA:				; CODE XREF: .text:0041B43Ej
					; DATA XREF: .text:off_41B445o
		push	0		; jumptable 0041B43E case 61
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-3Ch]
		sar	edx, 1
		jns	short loc_41D3DD
		adc	edx, 0

loc_41D3DD:				; CODE XREF: .text:0041D3D8j
		add	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-38h]
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41D3FE
		adc	eax, 0

loc_41D3FE:				; CODE XREF: .text:0041D3F9j
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-0BD0h]
		add	edx, [ebp-38h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41D422
		adc	ecx, 0

loc_41D422:				; CODE XREF: .text:0041D41Dj
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebp-38h]
		sar	eax, 1
		jns	short loc_41D439
		adc	eax, 0

loc_41D439:				; CODE XREF: .text:0041D434j
		add	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BD4h]
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-0BD0h]
		add	ecx, [ebp-38h]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-3Ch]
		sar	eax, 1
		jns	short loc_41D464
		adc	eax, 0

loc_41D464:				; CODE XREF: .text:0041D45Fj
		add	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebp-38h]
		sar	edx, 1
		jns	short loc_41D47B
		adc	edx, 0

loc_41D47B:				; CODE XREF: .text:0041D476j
		add	edx, [ebp-0BD0h]
		push	edx		; int
		mov	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_41D48C
		adc	ecx, 0

loc_41D48C:				; CODE XREF: .text:0041D487j
		add	ecx, ecx
		add	ecx, [ebp-0BD4h]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		jmp	loc_41D576	; jumptable 0041B43E default case
; ---------------------------------------------------------------------------

loc_41D4A0:				; CODE XREF: .text:0041B342j
		test	byte ptr [ebp-2Fh], 40h
		jz	short loc_41D4C6
		test	edi, 1Fh
		jnz	short loc_41D4C6
		test	byte ptr [ebp-30h], 80h
		jnz	short loc_41D4C6
		mov	eax, [ebp-70h]
		mov	edx, [eax+208h]
		push	edx		; COLORREF
		push	esi		; HDC
		call	SetTextColor
		jmp	short loc_41D4F3
; ---------------------------------------------------------------------------

loc_41D4C6:				; CODE XREF: .text:0041D4A4j
					; .text:0041D4ACj ...
		test	byte ptr [ebp-2Eh], 2
		jz	short loc_41D4E9
		mov	ecx, [ebp-30h]
		and	ecx, 1Fh
		cmp	ecx, 4
		jz	short loc_41D4E9
		mov	eax, [ebp-70h]
		mov	edx, [eax+204h]
		push	edx		; COLORREF
		push	esi		; HDC
		call	SetTextColor
		jmp	short loc_41D4F3
; ---------------------------------------------------------------------------

loc_41D4E9:				; CODE XREF: .text:0041D4CAj
					; .text:0041D4D5j
		mov	ecx, [ebp-58h]
		push	ecx		; COLORREF
		push	esi		; HDC
		call	SetTextColor

loc_41D4F3:				; CODE XREF: .text:0041D4C4j
					; .text:0041D4E7j
		push	0		; INT *
		lea	ecx, [ebp-494h]
		mov	eax, [ebp-10h]
		push	eax		; UINT
		lea	eax, [ebp-0BD4h]
		mov	edx, [ebp-1Ch]
		add	edx, edx
		add	edx, ecx
		cmp	dword_5BE6C0, 0
		push	edx		; LPCWSTR
		mov	edx, 1000h
		push	eax		; RECT *
		jnz	short loc_41D522
		add	edx, 0FFFFF000h

loc_41D522:				; CODE XREF: .text:0041D51Aj
		or	edx, 6
		push	edx		; UINT
		mov	ecx, [ebp-24h]
		push	ecx		; int
		mov	eax, [ebp-20h]
		push	eax		; int
		push	esi		; HDC
		call	ExtTextOutW
		cmp	dword ptr [ebp-48h], 0
		jz	short loc_41D576 ; jumptable 0041B43E default case
		mov	edx, [ebp-70h]
		mov	ecx, [edx+320h]
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	eax, [ebp-0BD0h]
		push	eax		; int
		mov	edx, [ebp-0BCCh]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BC8h]
		push	ecx		; int
		mov	eax, [ebp-0BCCh]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo

loc_41D576:				; CODE XREF: .text:0041B438j
					; .text:0041B43Ej ...
		and	edi, 60h	; jumptable 0041B43E default case
		cmp	edi, 20h
		jnz	short loc_41D5C8
		test	byte ptr [ebp-2Fh], 40h
		jz	short loc_41D596
		mov	edx, [ebp-70h]
		mov	ecx, [edx+318h]
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		jmp	short loc_41D5A6
; ---------------------------------------------------------------------------

loc_41D596:				; CODE XREF: .text:0041D582j
		mov	eax, [ebp-70h]
		mov	edx, [eax+324h]
		push	edx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject

loc_41D5A6:				; CODE XREF: .text:0041D594j
		push	0		; LPPOINT
		mov	edi, [ebp-24h]
		dec	edi
		push	edi		; int
		mov	eax, [ebp-0BD4h]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		push	edi		; int
		mov	edx, [ebp-0BCCh]
		push	edx		; int
		push	esi		; HDC
		call	LineTo

loc_41D5C8:				; CODE XREF: .text:0041B282j
					; .text:0041B294j ...
		mov	ecx, [ebp-3Ch]
		imul	ecx, [ebp-10h]
		add	[ebp-20h], ecx
		mov	[ebp-1Ch], ebx
		mov	edi, [ebp-34h]
		mov	eax, [ebp-0BCCh]
		mov	[ebp-0BD4h], eax
		mov	edx, [ebp-1Ch]
		cmp	edx, [ebp-28h]
		jl	loc_41B0F6

loc_41D5F0:				; CODE XREF: .text:0041B0F0j
		mov	ecx, [ebp-0BBCh]
		cmp	ecx, [ebp-0BD4h]
		jle	short loc_41D640
		mov	eax, [ebp-0BBCh]
		mov	[ebp-0BCCh], eax
		test	byte ptr [ebp-30h], 80h
		jz	short loc_41D629
		mov	edx, [ebp-70h]
		lea	eax, [ebp-0BD4h]
		mov	ecx, [edx+30Ch]
		push	ecx		; hbr
		push	eax		; lprc
		push	esi		; hDC
		call	FillRect
		jmp	short loc_41D640
; ---------------------------------------------------------------------------

loc_41D629:				; CODE XREF: .text:0041D60Ej
		mov	edx, [ebp-70h]
		lea	eax, [ebp-0BD4h]
		mov	ecx, [edx+308h]
		push	ecx		; hbr
		push	eax		; lprc
		push	esi		; hDC
		call	FillRect

loc_41D640:				; CODE XREF: .text:0041ADE2j
					; .text:0041ADEFj ...
		mov	edx, [ebp-70h]
		mov	ecx, [edx+318h]
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	eax, [ebp-0BC0h]
		push	eax		; int
		mov	edx, [ebp-0BBCh]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebp-0BB8h]
		push	ecx		; int
		mov	eax, [ebp-0BBCh]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebp-0BBCh]
		inc	edx
		mov	[ebp-0BC4h], edx
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_41D699
		cmp	dword ptr [ebp-4Ch], 0
		jle	short loc_41D699
		test	byte ptr [ebp-2Eh], 1
		jnz	short loc_41D6BB

loc_41D699:				; CODE XREF: .text:0041D68Bj
					; .text:0041D691j
		inc	dword ptr [ebp-18h]
		add	dword ptr [ebp-88h], 4

loc_41D6A3:				; CODE XREF: .text:0041ADA4j
		mov	ecx, [ebp+10h]
		mov	eax, [ecx+8Ch]
		cmp	eax, [ebp-18h]
		jle	short loc_41D6BB
		cmp	dword ptr [ebp-18h], 11h
		jl	loc_41ADA9

loc_41D6BB:				; CODE XREF: .text:0041ADB5j
					; .text:0041D697j ...
		mov	edx, [ebp-0BACh]
		cmp	edx, [ebp-0BC4h]
		jle	short loc_41D6EC
		mov	ecx, [ebp-0BACh]
		mov	[ebp-0BBCh], ecx
		lea	ecx, [ebp-0BC4h]
		mov	eax, [ebp-70h]
		mov	edx, [eax+308h]
		push	edx		; hbr
		push	ecx		; lprc
		push	esi		; hDC
		call	FillRect

loc_41D6EC:				; CODE XREF: .text:0041D6C7j
		mov	eax, [ebp+10h]
		test	byte ptr [eax+40h], 8
		jnz	short loc_41D748
		cmp	dword_586110, 0
		jz	short loc_41D73A
		push	0CC0020h	; DWORD
		push	0		; int
		mov	edx, [ebp-0BB4h]
		push	edx		; int
		push	esi		; HDC
		mov	ecx, [ebp-38h]
		push	ecx		; int
		mov	eax, [ebp-0BACh]
		sub	eax, [ebp-0BB4h]
		push	eax		; int
		mov	edx, [ebp-0BB0h]
		push	edx		; int
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx]
		add	eax, [ebp-0BB4h]
		push	eax		; int
		mov	edx, [ebp+8]
		push	edx		; HDC
		call	BitBlt

loc_41D73A:				; CODE XREF: .text:0041D6FCj
		mov	ecx, [ebp-0BA8h]
		mov	[ebp-0BB0h], ecx
		jmp	short loc_41D7B2
; ---------------------------------------------------------------------------

loc_41D748:				; CODE XREF: .text:0041D6F3j
		cmp	dword_586110, 0
		jz	short loc_41D7A6
		push	0CC0020h	; DWORD
		mov	eax, [ebp-0BA8h]
		sub	eax, [ebp-0BB0h]
		mov	edx, [ebp-38h]
		sub	edx, eax
		push	edx		; int
		mov	ecx, [ebp-0BB4h]
		push	ecx		; int
		push	esi		; HDC
		mov	eax, [ebp-0BA8h]
		sub	eax, [ebp-0BB0h]
		push	eax		; int
		mov	edx, [ebp-0BACh]
		sub	edx, [ebp-0BB4h]
		push	edx		; int
		mov	ecx, [ebp-0BB0h]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		add	edx, [ebp-0BB4h]
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; HDC
		call	BitBlt

loc_41D7A6:				; CODE XREF: .text:0041D74Fj
		mov	eax, [ebp-0BB0h]
		mov	[ebp-0BA8h], eax

loc_41D7B2:				; CODE XREF: .text:0041D746j
		inc	dword ptr [ebp-14h]
		mov	edx, [ebp-14h]
		cmp	edx, [ebp-0Ch]
		jl	loc_41AC63

loc_41D7C1:				; CODE XREF: .text:0041ABCDj
					; .text:0041AC5Dj ...
		cmp	dword_586110, 0
		jz	short loc_41D7F9
		mov	ecx, [ebp-80h]
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		mov	eax, [ebp-7Ch]
		push	eax		; HGDIOBJ
		call	DeleteObject
		push	esi		; HDC
		call	DeleteDC
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		add	[ebp-0BB4h], ecx
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		add	[ebp-0BACh], edx

loc_41D7F9:				; CODE XREF: .text:0041D7C8j
		mov	ecx, [ebp+10h]
		test	byte ptr [ecx+40h], 8
		jnz	short loc_41D81E
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+0Ch]
		cmp	edx, [ebp-0BB0h]
		jle	short loc_41D81E
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+0Ch]
		mov	[ebp-0BA8h], eax
		jmp	short loc_41D841
; ---------------------------------------------------------------------------

loc_41D81E:				; CODE XREF: .text:0041D800j
					; .text:0041D80Ej
		mov	edx, [ebp+10h]
		test	byte ptr [edx+40h], 8
		jz	short loc_41D841
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+4]
		cmp	eax, [ebp-0BA8h]
		jge	short loc_41D841
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+4]
		mov	[ebp-0BB0h], ecx

loc_41D841:				; CODE XREF: .text:0041D81Cj
					; .text:0041D825j ...
		mov	eax, [ebp-0BA8h]
		cmp	eax, [ebp-0BB0h]
		jz	loc_41D99B
		lea	esi, [ebp-0BB4h]
		lea	edi, [ebp-0BC4h]
		mov	ecx, 4
		rep movsd
		mov	eax, [ebp-70h]
		mov	edx, [eax+318h]
		push	edx		; HGDIOBJ
		mov	ecx, [ebp+8]
		push	ecx		; HDC
		call	SelectObject
		xor	eax, eax
		mov	[ebp-18h], eax
		mov	edx, [ebp+10h]
		lea	ecx, [edx+1A4h]
		mov	[ebp-84h], ecx
		jmp	loc_41D94F
; ---------------------------------------------------------------------------

loc_41D892:				; CODE XREF: .text:0041D961j
		mov	eax, [ebp-0BC4h]
		cmp	eax, [ebp-0BACh]
		jge	loc_41D967
		mov	edx, [ebp-84h]
		mov	ecx, [edx]
		add	ecx, [ebp-0BC4h]
		dec	ecx
		mov	[ebp-0BBCh], ecx
		mov	eax, [ebp-0BBCh]
		cmp	eax, [ebp-0BB4h]
		jl	short loc_41D908
		mov	edx, [ebp-84h]
		cmp	dword ptr [edx], 3
		jg	short loc_41D8EE
		mov	ecx, [ebp-70h]
		lea	edx, [ebp-0BC4h]
		mov	eax, [ecx+310h]
		push	eax		; hbr
		push	edx		; lprc
		mov	ecx, [ebp+8]
		push	ecx		; hDC
		call	FillRect
		jmp	short loc_41D908
; ---------------------------------------------------------------------------

loc_41D8EE:				; CODE XREF: .text:0041D8D0j
		mov	eax, [ebp-70h]
		lea	ecx, [ebp-0BC4h]
		mov	edx, [eax+308h]
		push	edx		; hbr
		push	ecx		; lprc
		mov	eax, [ebp+8]
		push	eax		; hDC
		call	FillRect

loc_41D908:				; CODE XREF: .text:0041D8C5j
					; .text:0041D8ECj
		push	0		; LPPOINT
		mov	edx, [ebp-0BC0h]
		push	edx		; int
		mov	ecx, [ebp-0BBCh]
		push	ecx		; int
		mov	eax, [ebp+8]
		push	eax		; HDC
		call	MoveToEx
		mov	edx, [ebp-0BB8h]
		push	edx		; int
		mov	ecx, [ebp-0BBCh]
		push	ecx		; int
		mov	eax, [ebp+8]
		push	eax		; HDC
		call	LineTo
		mov	edx, [ebp-0BBCh]
		inc	edx
		mov	[ebp-0BC4h], edx
		inc	dword ptr [ebp-18h]
		add	dword ptr [ebp-84h], 4

loc_41D94F:				; CODE XREF: .text:0041D88Dj
		mov	ecx, [ebp+10h]
		mov	eax, [ecx+8Ch]
		cmp	eax, [ebp-18h]
		jle	short loc_41D967
		cmp	dword ptr [ebp-18h], 11h
		jl	loc_41D892

loc_41D967:				; CODE XREF: .text:0041D89Ej
					; .text:0041D95Bj
		mov	edx, [ebp-0BACh]
		cmp	edx, [ebp-0BC4h]
		jle	short loc_41D99B
		mov	ecx, [ebp-0BACh]
		mov	[ebp-0BBCh], ecx
		lea	ecx, [ebp-0BC4h]
		mov	eax, [ebp-70h]
		mov	edx, [eax+308h]
		push	edx		; hbr
		push	ecx		; lprc
		mov	eax, [ebp+8]
		push	eax		; hDC
		call	FillRect

loc_41D99B:				; CODE XREF: .text:0041D84Dj
					; .text:0041D973j
		cmp	dword ptr [ebp-68h], 0
		jz	short loc_41D9D3
		cmp	dword ptr [ebp-44h], 0
		jle	short loc_41D9D3
		mov	edx, [ebp-68h]
		push	edx
		push	0FFFFFFFEh
		mov	ecx, [ebp-6Ch]
		lea	edx, [ebp-30h]
		push	ecx
		lea	ecx, [ebp-694h]
		mov	eax, [ebp+10h]
		push	eax
		push	edx
		push	ecx
		lea	eax, [ebp-494h]
		push	eax
		mov	edx, [ebp+10h]
		call	dword ptr [edx+210h]
		add	esp, 1Ch

loc_41D9D3:				; CODE XREF: .text:0041D99Fj
					; .text:0041D9A5j
		cmp	dword ptr [ebp-64h], 0
		jz	short loc_41D9E3
		mov	ecx, [ebp-64h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_41D9E3:				; CODE XREF: .text:0041D9D7j
		push	0		; HRGN
		mov	eax, [ebp+8]
		push	eax		; HDC
		call	SelectClipRgn

loc_41D9EE:				; CODE XREF: .text:0041A8DCj
					; .text:0041A8ECj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
	