.code

loc_4D0D88:				; CODE XREF: .text:loc_40B4A3p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 0Ah

loc_4D0D91:				; CODE XREF: .text:004D0D99j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4D0D91
		mov	eax, [ebp-4]
		add	esp, 0FFFFFE60h
		push	ebx
		push	esi
		push	edi
		call	loc_4CDFAC
		mov	eax, offset stru_563044
		xor	edx, edx
		mov	dword_5FF228, eax
		xor	ecx, ecx
		mov	dword_5FF22C, 201h
		mov	dword_5FF230, edx
		mov	[ebp-4], ecx
		xor	ebx, ebx
		mov	esi, eax
		lea	edi, [ebp-59B4h]
		jmp	short loc_4D0E45
; ---------------------------------------------------------------------------

loc_4D0DD9:				; CODE XREF: .text:004D0E4Bj
		mov	eax, [esi+18h]
		test	eax, eax
		jz	short loc_4D0DF5
		cmp	dword ptr [esi], 82h
		jz	short loc_4D0DF5
		cmp	dword ptr [esi], 83h
		jz	short loc_4D0DF5
		mov	edx, [eax]
		mov	[esi+24h], edx

loc_4D0DF5:				; CODE XREF: .text:004D0DDEj
					; .text:004D0DE6j ...
		cmp	dword ptr [esi], 81h
		jnz	short loc_4D0E41
		cmp	dword ptr [esi+1Ch], 0
		jz	short loc_4D0E41
		cmp	dword ptr [ebp-4], 10h
		jge	short loc_4D0E41
		mov	ecx, [esi+1Ch]
		mov	[edi], ecx
		mov	eax, [esi+1Ch]
		push	eax		; src
		push	104h		; n
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 6
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		lea	eax, [ebp-59B0h]
		add	edx, eax
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	dword ptr [ebp-4]
		add	edi, 20Ch

loc_4D0E41:				; CODE XREF: .text:004D0DFBj
					; .text:004D0E01j ...
		inc	ebx
		add	esi, 28h

loc_4D0E45:				; CODE XREF: .text:004D0DD7j
		cmp	ebx, dword_5FF22C
		jl	short loc_4D0DD9
		xor	ebx, ebx

loc_4D0E4F:				; CODE XREF: .text:004D0E86j
		lea	eax, [ebx+ebx*4]
		lea	edx, [ebx+ebx*4]
		shl	eax, 5
		lea	ecx, [ebp-6D94h]
		shl	edx, 5
		sub	eax, ebx
		sub	edx, ebx
		push	268h		; n
		shl	eax, 2
		shl	edx, 2
		add	eax, offset font
		push	eax		; src
		add	edx, ecx
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	ebx
		cmp	ebx, 8
		jl	short loc_4D0E4F
		push	90h		; n
		push	offset color	; src
		lea	eax, [ebp-0A1A4h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ebx, ebx

loc_4D0EA3:				; CODE XREF: .text:004D0EDCj
		lea	eax, [ebx+ebx*2]
		lea	edx, [ebx+ebx*2]
		lea	ecx, [ebp-86D4h]
		push	308h		; n
		lea	eax, [ebx+eax*8]
		lea	edx, [ebx+edx*8]
		lea	eax, [ebx+eax*4]
		lea	edx, [ebx+edx*4]
		shl	eax, 3
		shl	edx, 3
		add	eax, offset scheme
		push	eax		; src
		add	edx, ecx
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	ebx
		cmp	ebx, 8
		jl	short loc_4D0EA3
		xor	ebx, ebx

loc_4D0EE0:				; CODE XREF: .text:004D0F19j
		lea	eax, [ebx+ebx*2]
		lea	edx, [ebx+ebx*2]
		lea	ecx, [ebp-0A014h]
		push	308h		; n
		lea	eax, [ebx+eax*8]
		lea	edx, [ebx+edx*8]
		lea	eax, [ebx+eax*4]
		lea	edx, [ebx+edx*4]
		shl	eax, 3
		shl	edx, 3
		add	eax, offset hilite
		push	eax		; src
		add	edx, ecx
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	ebx
		cmp	ebx, 8
		jl	short loc_4D0EE0
		push	30C0h		; n
		push	offset word_5C8AA4 ; src
		lea	eax, [ebp-38F4h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	edx, [ebp-0A114h]
		push	100h		; n
		push	offset set	; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-8], ecx
		lea	eax, [ebp-8]
		push	eax
		lea	edx, [ebp-834h]
		push	edx
		push	0
		call	loc_4CDC6C
		add	esp, 0Ch
		lea	ecx, [ebp-42Ch]
		push	offset word_57FA28 ; src
		push	408h		; n
		push	ecx		; dest
		call	StrcopyW
		xor	eax, eax
		add	esp, 0Ch
		mov	dword_5FF224, eax
		mov	edx, asciicodepage
		mov	ecx, mbcscodepage
		mov	[ebp-0Ch], edx
		mov	[ebp-10h], ecx
		mov	eax, dword_5CBBC8
		xor	edx, edx
		mov	[ebp-14h], eax
		mov	stru_5FF1A8._title, edx
		mov	dword ptr [ebp-18h], 7
		mov	ecx, dword_5BE258
		cmp	ecx, [ebp-18h]
		jge	short loc_4D0FC2
		mov	eax, offset dword_5BE258
		jmp	short loc_4D0FC5
; ---------------------------------------------------------------------------

loc_4D0FC2:				; CODE XREF: .text:004D0FB9j
		lea	eax, [ebp-18h]

loc_4D0FC5:				; CODE XREF: .text:004D0FC0j
		xor	edx, edx
		mov	[ebp-1Ch], edx
		mov	ecx, [eax]
		cmp	ecx, [ebp-1Ch]
		jge	short loc_4D0FD6
		lea	edx, [ebp-1Ch]
		jmp	short loc_4D0FD8
; ---------------------------------------------------------------------------

loc_4D0FD6:				; CODE XREF: .text:004D0FCFj
		mov	edx, eax

loc_4D0FD8:				; CODE XREF: .text:004D0FD4j
		mov	eax, [edx]
		mov	dword_5BE258, eax
		mov	dword ptr [ebp-20h], 7
		mov	ecx, dword_5BE25C
		cmp	ecx, [ebp-20h]
		jge	short loc_4D0FF8
		mov	eax, offset dword_5BE25C
		jmp	short loc_4D0FFB
; ---------------------------------------------------------------------------

loc_4D0FF8:				; CODE XREF: .text:004D0FEFj
		lea	eax, [ebp-20h]

loc_4D0FFB:				; CODE XREF: .text:004D0FF6j
		xor	edx, edx
		mov	[ebp-24h], edx
		mov	ecx, [eax]
		cmp	ecx, [ebp-24h]
		jge	short loc_4D100C
		lea	edx, [ebp-24h]
		jmp	short loc_4D100E
; ---------------------------------------------------------------------------

loc_4D100C:				; CODE XREF: .text:004D1005j
		mov	edx, eax

loc_4D100E:				; CODE XREF: .text:004D100Aj
		mov	eax, [edx]
		mov	dword_5BE25C, eax
		mov	stru_5FF1A8.x, 0FFFFFFFFh
		mov	stru_5FF1A8.y, 0FFFFFFFFh
		mov	ecx, dword_5BE254
		push	ecx
		call	loc_4CD940
		shl	eax, 3
		pop	ecx
		push	0		; lpTimerFunc
		push	32h		; uElapse
		lea	eax, [eax+eax*4]
		push	4		; nIDEvent
		add	eax, dword_5FF228
		mov	stru_5FF1A8.controls, eax
		mov	edx, hwollymain
		push	edx		; hWnd
		call	SetTimer
		push	0		; dwInitParam
		mov	ecx, hwollymain
		push	offset _DlgOption;loc_4CF284 ; lpDialogFunc
		push	ecx		; hWndParent
		mov	eax, g_hInstance
		push	offset aDia_empty_1 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		push	4		; uIDEvent
		mov	eax, hwollymain
		push	eax		; hWnd
		call	KillTimer
		xor	edx, edx
		test	ebx, ebx
		mov	stru_5FF1A8.controls, edx
		jnz	short loc_4D10F0
		mov	ecx, dword_5BE6E8
		push	ecx
		call	loc_4971F4
		pop	ecx
		cmp	dword_5BE6C4, 0
		jz	short loc_4D10B4
		push	0		; force
		push	0		; pm
		call	Backupusercode
		add	esp, 8

loc_4D10B4:				; CODE XREF: .text:004D10A6j
		cmp	dword_57FE88, 0
		jz	short loc_4D10C4
		call	loc_4D213C
		jmp	short loc_4D10D1
; ---------------------------------------------------------------------------

loc_4D10C4:				; CODE XREF: .text:004D10BBj
		push	0
		call	loc_4D2FEC
		pop	ecx
		call	loc_4D3044

loc_4D10D1:				; CODE XREF: .text:004D10C2j
		cmp	dword_5C8940, 0
		jz	short loc_4D10DF
		call	loc_451220

loc_4D10DF:				; CODE XREF: .text:004D10D8j
		push	1		; int
		push	0		; lpFileName
		call	loc_40CDD8
		add	esp, 8
		jmp	loc_4D12E2
; ---------------------------------------------------------------------------

loc_4D10F0:				; CODE XREF: .text:004D1090j
		xor	ebx, ebx
		mov	esi, dword_5FF228
		jmp	short loc_4D111A
; ---------------------------------------------------------------------------

loc_4D10FA:				; CODE XREF: .text:004D1120j
		mov	eax, [esi+18h]
		test	eax, eax
		jz	short loc_4D1116
		cmp	dword ptr [esi], 82h
		jz	short loc_4D1116
		cmp	dword ptr [esi], 83h
		jz	short loc_4D1116
		mov	edx, [esi+24h]
		mov	[eax], edx

loc_4D1116:				; CODE XREF: .text:004D10FFj
					; .text:004D1107j ...
		inc	ebx
		add	esi, 28h

loc_4D111A:				; CODE XREF: .text:004D10F8j
		cmp	ebx, dword_5FF22C
		jl	short loc_4D10FA
		xor	ebx, ebx
		lea	edi, [ebp-59B4h]
		cmp	ebx, [ebp-4]
		jge	short loc_4D1161

loc_4D112F:				; CODE XREF: .text:004D115Fj
		mov	eax, ebx
		shl	eax, 6
		add	eax, ebx
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		lea	edx, [ebp-59B0h]
		add	eax, edx
		push	eax		; src
		push	104h		; n
		mov	ecx, [edi]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	ebx
		add	edi, 20Ch
		cmp	ebx, [ebp-4]
		jl	short loc_4D112F

loc_4D1161:				; CODE XREF: .text:004D112Dj
		xor	ebx, ebx

loc_4D1163:				; CODE XREF: .text:004D11B2j
		lea	eax, [ebx+ebx*4]
		lea	ecx, [ebx+ebx*4]
		shl	eax, 5
		lea	edx, [ebp-6D94h]
		shl	ecx, 5
		sub	eax, ebx
		sub	ecx, ebx
		push	268h		; n
		shl	eax, 2
		shl	ecx, 2
		add	eax, edx
		push	eax		; src
		add	ecx, offset font
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	eax, [ebx+ebx*4]
		shl	eax, 5
		sub	eax, ebx
		shl	eax, 2
		add	eax, offset font
		push	eax		; LOGFONTW *
		call	loc_4113D0
		pop	ecx
		inc	ebx
		cmp	ebx, 8
		jl	short loc_4D1163
		push	90h		; n
		lea	edx, [ebp-0A1A4h]
		push	edx		; src
		push	offset color	; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ebx, ebx

loc_4D11CF:				; CODE XREF: .text:004D1221j
		lea	eax, [ebx+ebx*2]
		lea	ecx, [ebx+ebx*2]
		lea	edx, [ebp-86D4h]
		push	308h		; n
		lea	eax, [ebx+eax*8]
		lea	ecx, [ebx+ecx*8]
		lea	eax, [ebx+eax*4]
		lea	ecx, [ebx+ecx*4]
		shl	eax, 3
		shl	ecx, 3
		add	eax, edx
		push	eax		; src
		add	ecx, offset scheme
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	eax, [ebx+ebx*2]
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*4]
		shl	eax, 3
		add	eax, offset scheme
		push	eax
		call	loc_412048
		pop	ecx
		inc	ebx
		cmp	ebx, 8
		jl	short loc_4D11CF
		xor	ebx, ebx

loc_4D1225:				; CODE XREF: .text:004D125Ej
		lea	eax, [ebx+ebx*2]
		lea	ecx, [ebx+ebx*2]
		lea	edx, [ebp-0A014h]
		push	308h		; n
		lea	eax, [ebx+eax*8]
		lea	ecx, [ebx+ecx*8]
		lea	eax, [ebx+eax*4]
		lea	ecx, [ebx+ecx*4]
		shl	eax, 3
		shl	ecx, 3
		add	eax, edx
		push	eax		; src
		add	ecx, offset hilite
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	ebx
		cmp	ebx, 8
		jl	short loc_4D1225
		push	30C0h		; n
		lea	eax, [ebp-38F4h]
		push	eax		; src
		push	offset word_5C8AA4 ; dest
		call	_memcpy
		add	esp, 0Ch
		lea	edx, [ebp-0A114h]
		push	100h		; n
		push	edx		; src
		push	offset set	; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebp-0Ch]
		mov	asciicodepage, ecx
		mov	eax, [ebp-10h]
		mov	mbcscodepage, eax
		cmp	dword_5FF224, 0
		jz	short loc_4D12D8
		mov	edx, [ebp-8]
		push	edx		; int
		lea	ecx, [ebp-834h]
		push	ecx		; lpData
		call	loc_4CDE24
		add	esp, 8
		lea	eax, [ebp-42Ch]
		push	eax		; src
		push	408h		; n
		push	offset word_57FA28 ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D12D8:				; CODE XREF: .text:004D12AAj
		call	loc_4115B4
		call	loc_411400

loc_4D12E2:				; CODE XREF: .text:004D10EBj
		mov	edx, dword_57FE94
		push	edx
		call	loc_4C96F8
		pop	ecx
		cmp	dword_5CBBC4, 0
		jnz	short loc_4D1300
		xor	ecx, ecx
		mov	dword_5CBBC8, ecx

loc_4D1300:				; CODE XREF: .text:004D12F6j
		mov	eax, dword_5CBBC8
		cmp	eax, [ebp-14h]
		jz	short loc_4D130F
		call	Redrawcpureg

loc_4D130F:				; CODE XREF: .text:004D1308j
		push	81h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D132C:				; CODE XREF: .text:0040B5F3p
					; .text:004D8D83p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 8

loc_4D1335:				; CODE XREF: .text:004D133Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4D1335
		mov	eax, [ebp-4]
		add	esp, 0FFFFFCECh
		push	ebx
		push	esi
		push	edi
		mov	edi, offset dword_5FF22C
		cmp	pluginlist.sorted.n, 0
		jz	loc_4D16F1
		call	loc_4CDFAC
		mov	dword ptr [ebp-10h], 1388h
		xor	eax, eax	; int
		mov	dword_5FF230, 1
		mov	[ebp-0Ch], eax
		mov	[edi], eax
		push	1		; flags
		mov	edx, [ebp-10h]
		shl	edx, 3
		lea	edx, [edx+edx*4] ; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		mov	dword_5FF228, ebx
		test	ebx, ebx
		jz	loc_4D16F1
		mov	eax, dword_5BE254
		xor	ecx, ecx
		mov	[ebp-8], eax
		mov	edx, dword_5BE26C
		mov	dword_5BE254, edx
		mov	[ebp-4], ecx
		xor	esi, esi
		jmp	loc_4D14D6
; ---------------------------------------------------------------------------

loc_4D13BE:				; CODE XREF: .text:004D14DCj
		mov	eax, [ebp-10h]
		add	eax, 0FFFFFFFBh
		cmp	eax, [edi]
		jle	loc_4D14E2
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	loc_4D14D5
		cmp	dword ptr [eax+2A0h], 0
		jz	loc_4D14D5
		push	0
		push	0
		push	110h
		call	dword ptr [eax+2A0h]
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4D14D5
		cmp	dword ptr [ebx], 1
		jnz	loc_4D14D5
		jmp	loc_4D14C0
; ---------------------------------------------------------------------------

loc_4D1419:				; CODE XREF: .text:004D14CAj
		shl	eax, 3
		push	28h		; n
		push	ebx		; src
		lea	eax, [eax+eax*4]
		add	eax, dword_5FF228
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		cmp	dword ptr [ebx], 1
		jnz	short loc_4D1485
		cmp	ebx, [ebp+8]
		jnz	short loc_4D1444
		mov	edx, [ebp-4]
		mov	dword_5BE254, edx

loc_4D1444:				; CODE XREF: .text:004D1439j
		inc	dword ptr [ebp-4]
		mov	ecx, [edi]
		lea	ecx, [ecx+ecx*4]
		mov	eax, dword_5FF228
		xor	edx, edx
		mov	[eax+ecx*8+18h], edx
		mov	ecx, [edi]
		lea	ecx, [ecx+ecx*4]
		mov	eax, dword_5FF228
		mov	[eax+ecx*8+24h], esi
		inc	dword ptr [edi]
		push	28h		; n
		push	offset stru_56806C ; src
		mov	edx, [edi]
		shl	edx, 3
		lea	edx, [edx+edx*4]
		add	edx, dword_5FF228
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4D1485:				; CODE XREF: .text:004D1434j
		inc	dword ptr [edi]
		add	ebx, 28h
		mov	eax, [ebx]
		cmp	eax, 1
		jz	short loc_4D1495
		test	eax, eax
		jnz	short loc_4D14BB

loc_4D1495:				; CODE XREF: .text:004D148Fj
		push	78h		; n
		push	offset stru_568094 ; src
		mov	edx, [edi]
		shl	edx, 3
		lea	edx, [edx+edx*4]
		add	edx, dword_5FF228
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword ptr [edi], 3
		mov	ecx, [edi]
		mov	[ebp-0Ch], ecx

loc_4D14BB:				; CODE XREF: .text:004D1493j
		cmp	dword ptr [ebx], 0
		jz	short loc_4D14D0

loc_4D14C0:				; CODE XREF: .text:004D1414j
		mov	edx, [ebp-10h]
		add	edx, 0FFFFFFFBh
		mov	eax, [edi]
		cmp	edx, eax
		jg	loc_4D1419

loc_4D14D0:				; CODE XREF: .text:004D14BEj
		mov	ecx, [ebp-0Ch]
		mov	[edi], ecx

loc_4D14D5:				; CODE XREF: .text:004D13DCj
					; .text:004D13E9j ...
		inc	esi

loc_4D14D6:				; CODE XREF: .text:004D13B9j
		cmp	esi, pluginlist.sorted.n
		jl	loc_4D13BE

loc_4D14E2:				; CODE XREF: .text:004D13C6j
		xor	eax, eax
		mov	[ebp-14h], eax
		xor	esi, esi
		mov	ebx, dword_5FF228
		lea	eax, [ebp-8318h]
		mov	[ebp-18h], eax
		jmp	short loc_4D156A
; ---------------------------------------------------------------------------

loc_4D14FA:				; CODE XREF: .text:004D156Cj
		mov	eax, [ebx+18h]
		test	eax, eax
		jz	short loc_4D1516
		cmp	dword ptr [ebx], 82h
		jz	short loc_4D1516
		cmp	dword ptr [ebx], 83h
		jz	short loc_4D1516
		mov	edx, [eax]
		mov	[ebx+24h], edx

loc_4D1516:				; CODE XREF: .text:004D14FFj
					; .text:004D1507j ...
		cmp	dword ptr [ebx], 81h
		jnz	short loc_4D1566
		cmp	dword ptr [ebx+1Ch], 0
		jz	short loc_4D1566
		cmp	dword ptr [ebp-14h], 40h
		jge	short loc_4D1566
		mov	ecx, [ebp-18h]
		mov	eax, [ebx+1Ch]
		mov	[ecx], eax
		mov	edx, [ebx+1Ch]
		push	edx		; src
		push	104h		; n
		mov	ecx, [ebp-14h]
		mov	eax, ecx
		shl	ecx, 6
		add	ecx, eax
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		lea	edx, [ebp-8314h]
		add	ecx, edx
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	dword ptr [ebp-14h]
		add	dword ptr [ebp-18h], 20Ch

loc_4D1566:				; CODE XREF: .text:004D151Cj
					; .text:004D1522j ...
		inc	esi
		add	ebx, 28h

loc_4D156A:				; CODE XREF: .text:004D14F8j
		cmp	esi, [edi]
		jl	short loc_4D14FA
		xor	ecx, ecx
		mov	stru_5FF1A8._title, ecx
		mov	stru_5FF1A8.x, 0FFFFFFFFh
		mov	stru_5FF1A8.y, 0FFFFFFFFh
		mov	eax, dword_5BE254
		push	eax
		call	loc_4CD940
		mov	edx, eax
		pop	ecx
		shl	edx, 3
		push	0		; dwInitParam
		push	offset _DlgOption;loc_4CF284 ; lpDialogFunc
		lea	edx, [edx+edx*4]
		add	edx, dword_5FF228
		mov	stru_5FF1A8.controls, edx
		mov	ecx, hwollymain
		mov	eax, g_hInstance
		push	ecx		; hWndParent
		push	offset aDia_empty_1 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		xor	edx, edx
		test	eax, eax
		mov	stru_5FF1A8.controls, edx
		jnz	short loc_4D1610
		xor	esi, esi
		jmp	short loc_4D1603
; ---------------------------------------------------------------------------

loc_4D15D8:				; CODE XREF: .text:004D1609j
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D1602
		cmp	dword ptr [eax+2A0h], 0
		jz	short loc_4D1602
		push	0
		push	1
		push	10h
		call	dword ptr [eax+2A0h]
		add	esp, 0Ch

loc_4D1602:				; CODE XREF: .text:004D15E8j
					; .text:004D15F1j
		inc	esi

loc_4D1603:				; CODE XREF: .text:004D15D6j
		cmp	esi, pluginlist.sorted.n
		jl	short loc_4D15D8
		jmp	loc_4D16B4
; ---------------------------------------------------------------------------

loc_4D1610:				; CODE XREF: .text:004D15D2j
		xor	esi, esi
		mov	ebx, dword_5FF228
		jmp	short loc_4D163A
; ---------------------------------------------------------------------------

loc_4D161A:				; CODE XREF: .text:004D163Cj
		mov	eax, [ebx+18h]
		test	eax, eax
		jz	short loc_4D1636
		cmp	dword ptr [ebx], 82h
		jz	short loc_4D1636
		cmp	dword ptr [ebx], 83h
		jz	short loc_4D1636
		mov	edx, [ebx+24h]
		mov	[eax], edx

loc_4D1636:				; CODE XREF: .text:004D161Fj
					; .text:004D1627j ...
		inc	esi
		add	ebx, 28h

loc_4D163A:				; CODE XREF: .text:004D1618j
		cmp	esi, [edi]
		jl	short loc_4D161A
		xor	esi, esi
		lea	ebx, [ebp-8318h]
		cmp	esi, [ebp-14h]
		jge	short loc_4D167D

loc_4D164B:				; CODE XREF: .text:004D167Bj
		mov	eax, esi
		shl	eax, 6
		add	eax, esi
		lea	eax, [esi+eax*2]
		shl	eax, 2
		lea	edx, [ebp-8314h]
		add	eax, edx
		push	eax		; src
		push	104h		; n
		mov	ecx, [ebx]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	esi
		add	ebx, 20Ch
		cmp	esi, [ebp-14h]
		jl	short loc_4D164B

loc_4D167D:				; CODE XREF: .text:004D1649j
		xor	esi, esi
		jmp	short loc_4D16AC
; ---------------------------------------------------------------------------

loc_4D1681:				; CODE XREF: .text:004D16B2j
		push	esi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D16AB
		cmp	dword ptr [eax+2A0h], 0
		jz	short loc_4D16AB
		push	0
		push	0
		push	10h
		call	dword ptr [eax+2A0h]
		add	esp, 0Ch

loc_4D16AB:				; CODE XREF: .text:004D1691j
					; .text:004D169Aj
		inc	esi

loc_4D16AC:				; CODE XREF: .text:004D167Fj
		cmp	esi, pluginlist.sorted.n
		jl	short loc_4D1681

loc_4D16B4:				; CODE XREF: .text:004D160Bj
		mov	eax, dword_5FF228
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	edx, dword_5BE254
		mov	dword_5BE26C, edx
		mov	ecx, [ebp-8]
		mov	dword_5BE254, ecx
		xor	eax, eax
		mov	dword_5FF230, eax
		push	81h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow

loc_4D16F1:				; CODE XREF: .text:004D1357j
					; .text:004D1398j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D16F8:				; CODE XREF: .text:loc_40FE52p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset dword_5FF234
		push	3		; flags
		push	960h		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		mov	[esi], ebx
		test	ebx, ebx
		jnz	short loc_4D171E
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D1778
; ---------------------------------------------------------------------------

loc_4D171E:				; CODE XREF: .text:004D1717j
		mov	ecx, 100h
		mov	edx, offset stru_5735A0
		jmp	short loc_4D176F
; ---------------------------------------------------------------------------

loc_4D172A:				; CODE XREF: .text:004D1774j
		mov	eax, [edx+0Ch]
		and	eax, 0FFh
		shl	eax, 3
		add	eax, [esi]
		jmp	short loc_4D173C
; ---------------------------------------------------------------------------

loc_4D1739:				; CODE XREF: .text:004D1745j
		mov	eax, [eax+4]

loc_4D173C:				; CODE XREF: .text:004D1737j
		cmp	dword ptr [eax], 0
		jz	short loc_4D1747
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4D1739

loc_4D1747:				; CODE XREF: .text:004D173Fj
		cmp	dword ptr [eax], 0
		jnz	short loc_4D1750
		mov	[eax], edx
		jmp	short loc_4D176C
; ---------------------------------------------------------------------------

loc_4D1750:				; CODE XREF: .text:004D174Aj
		cmp	ecx, 12Ch
		jl	short loc_4D175D
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D1778
; ---------------------------------------------------------------------------

loc_4D175D:				; CODE XREF: .text:004D1756j
		mov	ebx, ecx
		shl	ebx, 3
		add	ebx, [esi]
		inc	ecx
		mov	[eax+4], ebx
		mov	eax, ebx
		mov	[eax], edx

loc_4D176C:				; CODE XREF: .text:004D174Ej
		add	edx, 14h

loc_4D176F:				; CODE XREF: .text:004D1728j
		cmp	word ptr [edx+8], 0
		jnz	short loc_4D172A
		xor	eax, eax

loc_4D1778:				; CODE XREF: .text:004D171Cj
					; .text:004D175Bj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D177C:				; CODE XREF: .text:loc_410743p
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5FF234
		test	eax, eax
		jz	short loc_4D1797
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5FF234, edx

loc_4D1797:				; CODE XREF: .text:004D1786j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D179C:				; CODE XREF: .text:004D1D43p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		test	edx, edx
		jz	short loc_4D17FE
		test	eax, eax
		jl	short loc_4D17FE
		test	ecx, ecx
		jz	short loc_4D17FE
		cmp	eax, 40h
		jge	short loc_4D17E0
		shl	eax, 4
		add	edx, eax
		add	edx, 4D4h
		mov	eax, edx
		mov	edx, [eax]
		test	edx, edx
		jz	short loc_4D17FE
		cmp	ecx, [eax+4]
		ja	short loc_4D17FE
		mov	ebx, [eax+8]
		dec	ecx
		imul	ebx, ecx
		add	ebx, edx
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D17E0:				; CODE XREF: .text:004D17B8j
		cmp	eax, 70h
		jnz	short loc_4D17FE
		mov	eax, [edx+4C4h]
		test	eax, eax
		jz	short loc_4D17FE
		cmp	ecx, [edx+4C8h]
		jnb	short loc_4D17FE
		add	ecx, eax
		mov	eax, ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D17FE:				; CODE XREF: .text:004D17ABj
					; .text:004D17AFj ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D1804:				; CODE XREF: .text:004D1D80p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	eax, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_4D19D4
		test	edx, edx
		jl	loc_4D19D4
		test	eax, eax
		jz	loc_4D19D4
		test	edi, edi
		jz	loc_4D19D4
		cmp	edx, 40h
		jge	loc_4D191D
		cmp	dword ptr [esi+4ACh], 0
		jz	loc_4D19D4
		mov	ebx, edx
		shl	ebx, 4
		add	ebx, esi
		add	ebx, 4D4h
		cmp	dword ptr [ebx], 0
		jz	loc_4D19D4
		cmp	eax, [ebx+4]
		ja	loc_4D19D4
		cmp	dword ptr [ebx+8], 0
		jz	loc_4D19D4
		mov	dx, [ebx+0Eh]
		cmp	dx, 2
		jz	short loc_4D188F
		cmp	dx, 4
		jnz	loc_4D19D4

loc_4D188F:				; CODE XREF: .text:004D1883j
		dec	eax
		imul	dword ptr [ebx+8]
		add	eax, [ebx]
		movzx	ecx, word ptr [ebx+0Ch]
		add	eax, ecx
		mov	[ebp-4], eax
		xor	eax, eax
		mov	[ebp-8], eax
		push	1		; mode
		movzx	eax, word ptr [ebx+0Eh]
		push	eax		; size
		mov	edx, [ebp-4]
		push	edx		; _addr
		lea	ecx, [ebp-8]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		movzx	edx, word ptr [ebx+0Eh]
		cmp	eax, edx
		jnz	loc_4D19D4
		mov	eax, [ebp-8]
		cmp	eax, [esi+4B0h]
		jnb	loc_4D19D4
		mov	ecx, [esi+4ACh]
		add	[ebp-8], ecx
		push	5		; mode
		push	100h		; size
		mov	eax, [ebp-8]
		push	eax		; _addr
		lea	edx, [ebp-10Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4D19D4
		push	100h		; nw
		push	edi		; w
		push	ebx		; nt
		lea	eax, [ebp-10Ch]
		push	eax		; t
		call	Utftounicode
		add	esp, 10h
		jmp	loc_4D19D6
; ---------------------------------------------------------------------------

loc_4D191D:				; CODE XREF: .text:004D183Fj
		cmp	edx, 70h
		jnz	loc_4D19D4
		mov	edx, [esi+4C4h]
		test	edx, edx
		jz	loc_4D19D4
		cmp	eax, [esi+4C8h]
		jnb	loc_4D19D4
		push	5		; mode
		push	204h		; size
		add	eax, edx
		push	eax		; _addr
		lea	ecx, [ebp-310h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D19D4
		lea	eax, [ebp-0Ch]
		lea	edx, [ebp-310h]
		push	eax		; value
		push	ebx		; size
		push	edx		; code
		call	Getpackednetint
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D19D4
		cmp	dword ptr [ebp-0Ch], 1
		ja	short loc_4D1992
		push	offset asc_5755F0 ; "\"\""
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4D19D6
; ---------------------------------------------------------------------------

loc_4D1992:				; CODE XREF: .text:004D197Bj
		mov	ecx, [ebp-0Ch]
		add	ecx, eax
		cmp	ecx, 204h
		jbe	short loc_4D19A9
		mov	edx, 204h
		sub	edx, eax
		mov	[ebp-0Ch], edx

loc_4D19A9:				; CODE XREF: .text:004D199Dj
		mov	ecx, [ebp-0Ch]
		add	ecx, eax
		cmp	ebx, ecx
		jb	short loc_4D19D4
		push	1		; stopatzero
		push	100h		; ntext
		push	edi		; text
		lea	ecx, [ebp-310h]
		mov	edx, [ebp-0Ch]
		dec	edx
		shr	edx, 1
		add	ecx, eax
		push	edx		; ndata
		push	ecx		; data
		call	Stringtotext
		add	esp, 14h
		jmp	short loc_4D19D6
; ---------------------------------------------------------------------------

loc_4D19D4:				; CODE XREF: .text:004D181Ej
					; .text:004D1826j ...
		xor	eax, eax

loc_4D19D6:				; CODE XREF: .text:004D1918j
					; .text:004D1990j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		