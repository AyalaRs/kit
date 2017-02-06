.code

; Exported entry 182. _Byteregtodwordreg
; Exported entry 413. Byteregtodwordreg

; int __cdecl Byteregtodwordreg(int bytereg)
		public Byteregtodwordreg
Byteregtodwordreg:			; CODE XREF: .text:0043BC6Fp
					; .text:00446C2Fp ...
		push	ebp		; _Byteregtodwordreg
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jl	short loc_43FD43
		cmp	eax, 8
		jl	short loc_43FD48

loc_43FD43:				; CODE XREF: .text:0043FD3Cj
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43FD48:				; CODE XREF: .text:0043FD41j
		cmp	eax, 4
		jl	short loc_43FD52
		add	eax, 0FFFFFFFCh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_43FD52:				; CODE XREF: .text:0043FD4Bj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 183. _Disassembleforward
; Exported entry 480. Disassembleforward

; int __cdecl Disassembleforward(uchar *copy, ulong base, ulong	size, ulong ip,	ulong n, uchar *decode)
		public Disassembleforward
Disassembleforward:			; CODE XREF: .text:0046AC11p
					; .text:00477011p ...
		push	ebp		; _Disassembleforward
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_43FD5D:				; CODE XREF: .text:0043FD65j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_43FD5D
		mov	eax, [ebp-4]
		add	esp, 0FFFFF730h
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+1Ch]
		mov	esi, [ebp+10h]
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebp+14h]
		jbe	short loc_43FD84
		mov	[ebp+14h], eax

loc_43FD84:				; CODE XREF: .text:0043FD7Fj
		cmp	dword ptr [ebp+18h], 0
		ja	short loc_43FD92
		mov	eax, [ebp+14h]
		jmp	loc_43FEEB
; ---------------------------------------------------------------------------

loc_43FD92:				; CODE XREF: .text:0043FD88j
		lea	ecx, [esi+eax]
		mov	ebx, [ebp+14h]
		add	ebx, [ebp+18h]
		cmp	ecx, ebx
		ja	short loc_43FDA8
		add	esi, eax
		mov	eax, esi
		jmp	loc_43FEEB
; ---------------------------------------------------------------------------

loc_43FDA8:				; CODE XREF: .text:0043FD9Dj
		cmp	dword ptr [ebp+8], 0
		jz	short loc_43FDB6
		mov	ecx, [ebp+14h]
		sub	ecx, eax
		add	[ebp+8], ecx

loc_43FDB6:				; CODE XREF: .text:0043FDACj
		mov	ecx, [ebp+14h]
		sub	ecx, eax
		sub	esi, ecx
		cmp	edx, 1
		jnz	short loc_43FDDD
		lea	eax, [ebp-4]
		push	eax		; psize
		mov	edx, [ebp+14h]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		mov	edi, eax
		cmp	esi, [ebp-4]
		jbe	short loc_43FDEC
		xor	edi, edi
		jmp	short loc_43FDEC
; ---------------------------------------------------------------------------

loc_43FDDD:				; CODE XREF: .text:0043FDC0j
		test	edx, edx
		jnz	short loc_43FDE5
		xor	edi, edi
		jmp	short loc_43FDEC
; ---------------------------------------------------------------------------

loc_43FDE5:				; CODE XREF: .text:0043FDDFj
		mov	edi, [ebp+14h]
		add	edi, edx
		sub	edi, eax

loc_43FDEC:				; CODE XREF: .text:0043FDD7j
					; .text:0043FDDBj ...
		xor	ebx, ebx
		jmp	loc_43FED8
; ---------------------------------------------------------------------------

loc_43FDF3:				; CODE XREF: .text:0043FEE0j
		test	edi, edi
		jnz	short loc_43FDFB
		xor	eax, eax
		jmp	short loc_43FE03
; ---------------------------------------------------------------------------

loc_43FDFB:				; CODE XREF: .text:0043FDF5j
		xor	eax, eax
		mov	al, [edi+ebx]
		and	eax, 1Fh

loc_43FE03:				; CODE XREF: .text:0043FDF9j
		add	eax, 0FFFFFFFDh
		sub	eax, 0Bh
		jb	short loc_43FE20
		sub	eax, 2
		jz	short loc_43FE20
		add	eax, 0FFFFFFF8h
		sub	eax, 3
		jb	short loc_43FE20
		dec	eax
		sub	eax, 4
		jb	short loc_43FE20
		jmp	short loc_43FE46
; ---------------------------------------------------------------------------

loc_43FE20:				; CODE XREF: .text:0043FE09j
					; .text:0043FE0Ej ...
		inc	ebx
		lea	eax, [edi+ebx]
		jmp	short loc_43FE28
; ---------------------------------------------------------------------------

loc_43FE26:				; CODE XREF: .text:0043FE3Aj
					; .text:0043FE3Fj
		inc	ebx
		inc	eax

loc_43FE28:				; CODE XREF: .text:0043FE24j
		cmp	esi, ebx
		jbe	loc_43FED5
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1
		jz	short loc_43FE26
		cmp	edx, 2
		jz	short loc_43FE26
		jmp	loc_43FED5
; ---------------------------------------------------------------------------

loc_43FE46:				; CODE XREF: .text:0043FE1Ej
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_43FEAB
		add	[ebp+14h], ebx
		sub	esi, ebx
		test	edi, edi
		jz	short loc_43FE57
		add	edi, ebx

loc_43FE57:				; CODE XREF: .text:0043FE53j
		xor	ebx, ebx
		cmp	dword ptr [ebp+18h], 100h
		jnb	short loc_43FE74
		mov	eax, [ebp+18h]
		shl	eax, 4
		cmp	esi, eax
		jbe	short loc_43FE74
		mov	esi, [ebp+18h]
		shl	esi, 4
		jmp	short loc_43FE81
; ---------------------------------------------------------------------------

loc_43FE74:				; CODE XREF: .text:0043FE60j
					; .text:0043FE6Aj
		cmp	esi, 1000h
		jbe	short loc_43FE81
		mov	esi, 1000h

loc_43FE81:				; CODE XREF: .text:0043FE72j
					; .text:0043FE7Aj
		push	5		; mode
		push	esi		; size
		mov	eax, [ebp+14h]
		push	eax		; _addr
		lea	edx, [ebp-1004h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_43FEA2
		mov	eax, [ebp+14h]
		jmp	short loc_43FEEB
; ---------------------------------------------------------------------------

loc_43FEA2:				; CODE XREF: .text:0043FE9Bj
		lea	edx, [ebp-1004h]
		mov	[ebp+8], edx

loc_43FEAB:				; CODE XREF: .text:0043FE4Aj
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-28D4h]
		push	0		; mode
		push	ecx		; da
		push	0		; dec
		mov	eax, [ebp+14h]
		mov	edx, esi
		add	eax, ebx
		sub	edx, ebx
		push	eax		; ip
		push	edx		; cmdsize
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		add	ebx, eax

loc_43FED5:				; CODE XREF: .text:0043FE2Aj
					; .text:0043FE41j
		dec	dword ptr [ebp+18h]

loc_43FED8:				; CODE XREF: .text:0043FDEEj
		cmp	dword ptr [ebp+18h], 0
		jbe	short loc_43FEE6
		cmp	esi, ebx
		ja	loc_43FDF3

loc_43FEE6:				; CODE XREF: .text:0043FEDCj
		mov	eax, [ebp+14h]
		add	eax, ebx

loc_43FEEB:				; CODE XREF: .text:0043FD8Dj
					; .text:0043FDA3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 184. _Disassembleback
; Exported entry 479. Disassembleback

; int __cdecl Disassembleback(uchar *copy, ulong base, ulong size, ulong ip, ulong n, uchar *decode)
		public Disassembleback
Disassembleback:			; CODE XREF: .text:0044D2BEp
					; .text:0044D469p ...
		push	ebp		; _Disassembleback
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_43FEFD:				; CODE XREF: .text:0043FF05j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_43FEFD
		mov	eax, [ebp-4]
		add	esp, 0FFFFF2F8h
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+1Ch]
		mov	eax, [ebp+0Ch]
		cmp	dword ptr [ebp+18h], 0
		ja	short loc_43FF27
		mov	eax, [ebp+14h]
		jmp	loc_4400E8
; ---------------------------------------------------------------------------

loc_43FF27:				; CODE XREF: .text:0043FF1Dj
		mov	ecx, [ebp+10h]
		add	ecx, eax
		cmp	ecx, [ebp+14h]
		jb	loc_4400E8
		mov	ecx, [ebp+18h]
		add	ecx, eax
		cmp	ecx, [ebp+14h]
		jnb	loc_4400E8
		cmp	dword ptr [ebp+18h], 0FFh
		jbe	short loc_43FF53
		mov	dword ptr [ebp+18h], 0FFh

loc_43FF53:				; CODE XREF: .text:0043FF4Aj
		mov	esi, [ebp+18h]
		shl	esi, 4
		add	esi, 40h
		lea	ecx, [esi+eax]
		cmp	ecx, [ebp+14h]
		jbe	short loc_43FF69
		mov	esi, [ebp+14h]
		sub	esi, eax

loc_43FF69:				; CODE XREF: .text:0043FF62j
		sub	[ebp+14h], esi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_43FF7A
		mov	ecx, [ebp+14h]
		sub	ecx, eax
		add	[ebp+8], ecx

loc_43FF7A:				; CODE XREF: .text:0043FF70j
		xor	ebx, ebx
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		mov	[ebp-8], ecx
		cmp	edx, 1
		jnz	short loc_43FFA4
		lea	eax, [ebp-4]
		push	eax		; psize
		mov	edx, [ebp+14h]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		mov	edi, eax
		cmp	esi, [ebp-4]
		jbe	short loc_43FFB3
		xor	edi, edi
		jmp	short loc_43FFB3
; ---------------------------------------------------------------------------

loc_43FFA4:				; CODE XREF: .text:0043FF87j
		test	edx, edx
		jnz	short loc_43FFAC
		xor	edi, edi
		jmp	short loc_43FFB3
; ---------------------------------------------------------------------------

loc_43FFAC:				; CODE XREF: .text:0043FFA6j
		mov	edi, [ebp+14h]
		add	edi, edx
		sub	edi, eax

loc_43FFB3:				; CODE XREF: .text:0043FF9Ej
					; .text:0043FFA2j ...
		test	edi, edi
		jz	short loc_43FFDC
		cmp	esi, 40h
		jb	short loc_43FFDC
		lea	eax, [edi+ebx]
		cmp	ebx, 10h
		jnb	short loc_43FFDC

loc_43FFC4:				; CODE XREF: .text:0043FFDAj
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1
		jz	short loc_43FFD5
		cmp	edx, 2
		jnz	short loc_43FFDC

loc_43FFD5:				; CODE XREF: .text:0043FFCEj
		inc	ebx
		inc	eax
		cmp	ebx, 10h
		jb	short loc_43FFC4

loc_43FFDC:				; CODE XREF: .text:0043FFB5j
					; .text:0043FFBAj ...
		cmp	esi, ebx
		jbe	loc_4400C1

loc_43FFE4:				; CODE XREF: .text:004400BBj
		mov	eax, [ebp-8]
		mov	ecx, [ebp+14h]
		add	ecx, ebx
		xor	edx, edx
		mov	[ebp+eax*4-40Ch], ecx
		mov	ecx, 100h
		inc	dword ptr [ebp-8]
		mov	eax, [ebp-8]
		div	ecx
		mov	[ebp-8], edx
		inc	dword ptr [ebp-0Ch]
		test	edi, edi
		jnz	short loc_440010
		xor	eax, eax
		jmp	short loc_440018
; ---------------------------------------------------------------------------

loc_440010:				; CODE XREF: .text:0044000Aj
		xor	eax, eax
		mov	al, [edi+ebx]
		and	eax, 1Fh

loc_440018:				; CODE XREF: .text:0044000Ej
		add	eax, 0FFFFFFFDh
		sub	eax, 0Bh
		jb	short loc_440035
		sub	eax, 2
		jz	short loc_440035
		add	eax, 0FFFFFFF8h
		sub	eax, 3
		jb	short loc_440035
		dec	eax
		sub	eax, 4
		jb	short loc_440035
		jmp	short loc_440054
; ---------------------------------------------------------------------------

loc_440035:				; CODE XREF: .text:0044001Ej
					; .text:00440023j ...
		inc	ebx
		lea	eax, [edi+ebx]
		jmp	short loc_44003D
; ---------------------------------------------------------------------------

loc_44003B:				; CODE XREF: .text:loc_44004Bj
					; .text:00440050j
		inc	ebx
		inc	eax

loc_44003D:				; CODE XREF: .text:00440039j
		cmp	esi, ebx
		jbe	short loc_4400B9
		xor	edx, edx

loc_440043:
		mov	dl, [eax]
		and	edx, 1Fh

loc_440048:
		cmp	edx, 1

loc_44004B:
		jz	short loc_44003B

loc_44004D:
		cmp	edx, 2
		jz	short loc_44003B

loc_440052:
		jmp	short loc_4400B9
; ---------------------------------------------------------------------------

loc_440054:				; CODE XREF: .text:00440033j
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_44008F
		add	[ebp+14h], ebx
		sub	esi, ebx
		test	edi, edi
		jz	short loc_440065
		add	edi, ebx

loc_440065:				; CODE XREF: .text:00440061j
		push	5		; mode
		push	esi		; size
		mov	eax, [ebp+14h]
		lea	edx, [ebp-143Ch]
		push	eax		; _addr
		push	edx		; buf
		xor	ebx, ebx

loc_440075:
		call	Readmemory

loc_44007A:
		add	esp, 10h
		cmp	esi, eax
		jz	short loc_440086
		mov	eax, [ebp+14h]
		jmp	short loc_4400E8
; ---------------------------------------------------------------------------

loc_440086:				; CODE XREF: .text:0044007Fj
		lea	edx, [ebp-143Ch]
		mov	[ebp+8], edx

loc_44008F:				; CODE XREF: .text:00440058j
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-2D0Ch]
		push	0		; mode
		push	ecx		; da
		push	0		; dec
		mov	eax, [ebp+14h]
		mov	edx, esi
		add	eax, ebx
		sub	edx, ebx
		push	eax		; ip
		push	edx		; cmdsize
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		add	ebx, eax

loc_4400B9:				; CODE XREF: .text:0044003Fj
					; .text:loc_440052j
		cmp	esi, ebx
		ja	loc_43FFE4

loc_4400C1:				; CODE XREF: .text:0043FFDEj
		mov	eax, [ebp+18h]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_4400CF
		mov	edx, [ebp-0Ch]
		mov	[ebp+18h], edx

loc_4400CF:				; CODE XREF: .text:004400C7j
		mov	ecx, [ebp-8]
		add	ecx, 100h
		sub	ecx, [ebp+18h]
		and	ecx, 0FFh
		mov	eax, [ebp+ecx*4-40Ch]

loc_4400E8:				; CODE XREF: .text:0043FF22j
					; .text:0043FF2Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4400F0:				; CODE XREF: .text:00407F0Fp
					; .text:00408062p ...
		mov	eax, dword_5BDD08
		push	ebp
		add	eax, 400h
		mov	ebp, esp
		and	eax, 0FFFFFC00h
		mov	dword_5BDD08, eax
		test	eax, eax
		jnz	short loc_440115
		mov	dword_5BDD08, 400h

loc_440115:				; CODE XREF: .text:00440109j
		mov	eax, dword_5BDD08
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44011C:				; CODE XREF: .text:00469ED7p
					; .text:0046A122p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+0Ch]
		jz	short loc_440132
		test	ebx, ebx
		jnz	short loc_440139

loc_440132:				; CODE XREF: .text:0044012Cj
		xor	eax, eax
		jmp	loc_4405BE
; ---------------------------------------------------------------------------

loc_440139:				; CODE XREF: .text:00440130j
		xor	edx, edx
		mov	[ebp-8], edx
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8]
		xor	eax, [ebx+8]
		test	eax, 30000h
		jz	short loc_44015F
		mov	edx, [ebp+8]
		and	dword ptr [edx+8], 0FFFCFFFFh
		mov	dword ptr [ebp-8], 1

loc_44015F:				; CODE XREF: .text:0044014Cj
		mov	ecx, [ebp+8]
		mov	ax, [ecx+0Ch]
		mov	ecx, [ebp+8]
		mov	edx, eax
		and	ax, [ebx+0Ch]
		and	ax, 0Fh
		and	dx, 0FFF0h
		or	dx, ax
		mov	[ecx+0Ch], dx
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Bh], 1
		jnz	short loc_4401F7
		test	byte ptr [ebx+0Bh], 1
		jnz	short loc_4401BF
		mov	edx, [ebp+8]
		mov	eax, [edx+1Eh]
		mov	edx, eax
		and	edx, 0FFh
		cmp	edx, 2Ch
		jnz	short loc_4401F7
		mov	ecx, [ebx+1Eh]
		and	ecx, 0FFh
		cmp	ecx, 2Ch
		jnz	short loc_4401F7
		cmp	eax, [ebx+1Eh]
		jnz	short loc_4401F7
		mov	eax, [ebp+8]
		mov	edx, [eax+3Eh]
		cmp	edx, [ebx+3Eh]
		jz	short loc_4401F7

loc_4401BF:				; CODE XREF: .text:0044018Cj
		mov	ecx, [ebp+8]
		or	dword ptr [ecx+8], 1000000h
		call	loc_4400F0
		or	eax, 2Ch
		mov	edx, [ebp+8]
		mov	[edx+1Eh], eax
		mov	eax, [ebp+8]
		xor	ecx, ecx
		mov	[eax+3Eh], ecx
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	[eax+0EEh], edx
		mov	eax, [ebp+8]
		mov	[eax+5Ah], edx
		mov	dword ptr [ebp-8], 1

loc_4401F7:				; CODE XREF: .text:00440186j
					; .text:0044019Fj ...
		mov	ecx, [ebp+8]
		mov	eax, [ecx+1Eh]
		mov	edx, eax
		and	edx, 0FFh
		cmp	edx, 2Ch
		jnz	short loc_440239
		mov	ecx, [ebx+1Eh]
		and	ecx, 0FFh
		cmp	ecx, 2Ch
		jnz	short loc_440239
		mov	edx, eax
		xor	edx, [ebx+1Eh]
		test	edx, 0FFFFFC00h
		jz	short loc_440239
		xor	eax, [ebx+1Eh]
		mov	[ebp-0Ch], eax
		mov	eax, [ebp+8]
		mov	ecx, [eax+3Eh]
		sub	ecx, [ebx+3Eh]
		mov	[ebp-10h], ecx
		jmp	short loc_440243
; ---------------------------------------------------------------------------

loc_440239:				; CODE XREF: .text:00440208j
					; .text:00440216j ...
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-0Ch], eax
		mov	[ebp-10h], edx

loc_440243:				; CODE XREF: .text:00440237j
		xor	edx, edx
		mov	eax, [ebp+8]
		add	eax, 0Eh
		lea	ecx, [ebx+0Eh]

loc_44024E:				; CODE XREF: .text:004402C4j
		cmp	dword ptr [eax], 0
		jz	short loc_4402BA
		mov	esi, [eax]
		cmp	esi, [ecx]
		jnz	short loc_440261
		mov	esi, [eax+20h]
		cmp	esi, [ecx+20h]
		jz	short loc_4402BA

loc_440261:				; CODE XREF: .text:00440257j
		mov	esi, [ecx]
		and	esi, 6Fh
		cmp	esi, 2Ch
		jnz	short loc_440283
		mov	esi, [eax]
		mov	edi, [ecx]
		xor	edi, [ebp-0Ch]
		cmp	esi, edi
		jnz	short loc_440283
		mov	esi, [eax+20h]
		mov	edi, [ecx+20h]
		add	edi, [ebp-10h]
		cmp	esi, edi
		jz	short loc_4402BA

loc_440283:				; CODE XREF: .text:00440269j
					; .text:00440274j
		xor	esi, esi
		mov	[eax], esi
		xor	esi, esi
		mov	[eax+20h], esi
		cmp	edx, 4
		jnz	short loc_4402A4
		mov	esi, [ebp+8]
		xor	edi, edi
		mov	[esi+0EEh], edi
		mov	esi, [ebp+8]
		mov	[esi+5Ah], edi
		jmp	short loc_4402B3
; ---------------------------------------------------------------------------

loc_4402A4:				; CODE XREF: .text:0044028Fj
		cmp	edx, 5
		jnz	short loc_4402B3
		mov	esi, [ebp+8]
		and	dword ptr [esi+8], 0FFFCFFFFh

loc_4402B3:				; CODE XREF: .text:004402A2j
					; .text:004402A7j
		mov	dword ptr [ebp-8], 1

loc_4402BA:				; CODE XREF: .text:00440251j
					; .text:0044025Fj ...
		inc	edx
		add	ecx, 4
		add	eax, 4
		cmp	edx, 8
		jl	short loc_44024E
		mov	eax, [ebp+8]
		mov	edx, [eax+4Eh]
		cmp	edx, [ebx+4Eh]
		jnz	short loc_4402DC
		mov	ecx, [ebp+8]
		mov	eax, [ecx+52h]
		cmp	eax, [ebx+52h]
		jz	short loc_44031D

loc_4402DC:				; CODE XREF: .text:004402CFj
		mov	eax, [ebx+4Eh]
		mov	edx, eax
		and	edx, 6Fh
		cmp	edx, 2Ch
		jnz	short loc_440306
		mov	ecx, [ebp+8]
		mov	edx, [ecx+4Eh]
		xor	eax, [ebp-0Ch]
		cmp	edx, eax
		jnz	short loc_440306
		mov	eax, [ebp+8]
		mov	ecx, [eax+52h]
		mov	eax, [ebx+52h]
		add	eax, [ebp-10h]
		cmp	ecx, eax
		jz	short loc_44031D

loc_440306:				; CODE XREF: .text:004402E7j
					; .text:004402F4j
		mov	edx, [ebp+8]
		xor	ecx, ecx
		mov	[edx+4Eh], ecx
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	[eax+52h], edx
		mov	dword ptr [ebp-8], 1

loc_44031D:				; CODE XREF: .text:004402DAj
					; .text:00440304j
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	edx, ecx
		mov	eax, [ebp-4]
		lea	eax, [eax+eax*2]
		mov	ecx, [ebp+8]
		lea	eax, [ecx+eax*4+5Eh]
		mov	[ebp-18h], eax
		lea	eax, [edx+edx*2]
		mov	ecx, [ebp+8]
		lea	eax, [ecx+eax*4+5Eh]
		mov	[ebp-14h], eax
		jmp	loc_440417
; ---------------------------------------------------------------------------

loc_440346:				; CODE XREF: .text:0044041Dj
		mov	ecx, [ebp-14h]
		mov	esi, [ecx]
		sub	esi, [ebp-10h]
		xor	eax, eax
		lea	ecx, [ebx+5Eh]
		jmp	short loc_44035D
; ---------------------------------------------------------------------------

loc_440355:				; CODE XREF: .text:00440360j
		cmp	esi, [ecx]
		jz	short loc_440362
		inc	eax
		add	ecx, 0Ch

loc_44035D:				; CODE XREF: .text:00440353j
		cmp	eax, [ebx+5Ah]
		jl	short loc_440355

loc_440362:				; CODE XREF: .text:00440357j
		cmp	eax, [ebx+5Ah]
		jl	short loc_440373
		mov	dword ptr [ebp-8], 1
		jmp	loc_440412
; ---------------------------------------------------------------------------

loc_440373:				; CODE XREF: .text:00440365j
		mov	esi, [ebp-14h]
		lea	ecx, [eax+eax*2]
		mov	esi, [esi+4]
		cmp	esi, [ebx+ecx*4+62h]
		jnz	short loc_4403B2
		mov	esi, [ebp-14h]
		mov	esi, [esi+8]
		cmp	esi, [ebx+ecx*4+66h]
		jnz	short loc_4403B2
		cmp	edx, [ebp-4]
		jz	short loc_4403A9
		mov	eax, [ebp-18h]
		mov	ecx, [ebp-14h]
		mov	esi, [ecx]
		mov	[eax], esi
		mov	esi, [ecx+4]
		mov	[eax+4], esi
		mov	esi, [ecx+8]
		mov	[eax+8], esi

loc_4403A9:				; CODE XREF: .text:00440391j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-18h], 0Ch
		jmp	short loc_440412
; ---------------------------------------------------------------------------

loc_4403B2:				; CODE XREF: .text:00440380j
					; .text:0044038Cj
		lea	ecx, [eax+eax*2]
		mov	ecx, [ebx+ecx*4+62h]
		mov	esi, ecx
		and	esi, 6Fh
		cmp	esi, 2Ch
		jnz	short loc_4403E7
		mov	esi, [ebp-14h]
		lea	edi, [eax+eax*2]
		xor	ecx, [ebp-0Ch]
		mov	esi, [esi+4]
		cmp	esi, ecx
		jnz	short loc_4403E7
		lea	eax, [eax+eax*2]
		mov	ecx, [ebp-14h]
		mov	eax, [ebx+eax*4+66h]
		mov	ecx, [ecx+8]
		add	eax, [ebp-10h]
		cmp	ecx, eax
		jz	short loc_4403F0

loc_4403E7:				; CODE XREF: .text:004403C1j
					; .text:004403D1j
		mov	dword ptr [ebp-8], 1
		jmp	short loc_440412
; ---------------------------------------------------------------------------

loc_4403F0:				; CODE XREF: .text:004403E5j
		cmp	edx, [ebp-4]
		jz	short loc_44040B
		mov	ecx, [ebp-18h]
		mov	eax, [ebp-14h]
		mov	esi, [eax]
		mov	[ecx], esi
		mov	esi, [eax+4]
		mov	[ecx+4], esi
		mov	esi, [eax+8]
		mov	[ecx+8], esi

loc_44040B:				; CODE XREF: .text:004403F3j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-18h], 0Ch

loc_440412:				; CODE XREF: .text:0044036Ej
					; .text:004403B0j ...
		inc	edx
		add	dword ptr [ebp-14h], 0Ch

loc_440417:				; CODE XREF: .text:00440341j
		mov	eax, [ebp+8]
		cmp	edx, [eax+5Ah]
		jl	loc_440346
		mov	edx, [ebp+8]
		mov	ecx, [ebp-4]
		mov	[edx+5Ah], ecx
		mov	eax, [ebp+8]
		mov	edx, [eax+0EEh]
		cmp	edx, [ebx+0EEh]
		jle	short loc_440453
		mov	ecx, [ebp+8]
		mov	eax, [ebx+0EEh]
		mov	[ecx+0EEh], eax
		mov	dword ptr [ebp-8], 1

loc_440453:				; CODE XREF: .text:0044043Bj
		xor	edx, edx
		lea	ecx, [ebx+0F2h]
		mov	eax, [ebp+8]
		add	eax, 0F2h
		jmp	short loc_44047D
; ---------------------------------------------------------------------------

loc_440465:				; CODE XREF: .text:00440486j
		mov	esi, [eax]
		cmp	esi, [ecx]
		jz	short loc_440476
		xor	esi, esi
		mov	[eax], esi
		mov	dword ptr [ebp-8], 1

loc_440476:				; CODE XREF: .text:00440469j
		inc	edx
		add	ecx, 4
		add	eax, 4

loc_44047D:				; CODE XREF: .text:00440463j
		mov	esi, [ebp+8]
		cmp	edx, [esi+0EEh]
		jl	short loc_440465
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, eax
		mov	ecx, [ebp-4]
		lea	ecx, [ecx+ecx*2]
		mov	eax, [ebp+8]
		lea	ecx, [eax+ecx*4+156h]
		mov	[ebp-24h], ecx
		lea	eax, [edx+edx*2]
		mov	ecx, [ebp+8]
		lea	eax, [ecx+eax*4+156h]
		mov	[ebp-20h], eax
		jmp	loc_4405A0
; ---------------------------------------------------------------------------

loc_4404B7:				; CODE XREF: .text:004405A9j
		xor	eax, eax
		lea	ecx, [ebx+156h]
		mov	esi, [ebp-20h]
		mov	[ebp-1Ch], esi
		jmp	short loc_4404D4
; ---------------------------------------------------------------------------

loc_4404C7:				; CODE XREF: .text:004404DAj
		mov	esi, [ebp-1Ch]
		mov	esi, [esi]
		cmp	esi, [ecx]
		jz	short loc_4404DC
		inc	eax
		add	ecx, 0Ch

loc_4404D4:				; CODE XREF: .text:004404C5j
		cmp	eax, [ebx+152h]
		jl	short loc_4404C7

loc_4404DC:				; CODE XREF: .text:004404CEj
		cmp	eax, [ebx+152h]
		jl	short loc_4404F0
		mov	dword ptr [ebp-8], 1
		jmp	loc_44059B
; ---------------------------------------------------------------------------

loc_4404F0:				; CODE XREF: .text:004404E2j
		mov	esi, [ebp-20h]
		lea	ecx, [eax+eax*2]
		mov	esi, [esi+4]
		cmp	esi, [ebx+ecx*4+15Ah]
		jnz	short loc_440535
		mov	esi, [ebp-20h]
		mov	esi, [esi+8]
		cmp	esi, [ebx+ecx*4+15Eh]
		jnz	short loc_440535
		cmp	edx, [ebp-4]
		jz	short loc_44052C
		mov	eax, [ebp-24h]
		mov	ecx, [ebp-20h]
		mov	esi, [ecx]
		mov	[eax], esi
		mov	esi, [ecx+4]
		mov	[eax+4], esi
		mov	esi, [ecx+8]
		mov	[eax+8], esi

loc_44052C:				; CODE XREF: .text:00440514j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-24h], 0Ch
		jmp	short loc_44059B
; ---------------------------------------------------------------------------

loc_440535:				; CODE XREF: .text:00440500j
					; .text:0044050Fj
		lea	ecx, [eax+eax*2]
		mov	ecx, [ebx+ecx*4+15Ah]
		mov	esi, ecx
		and	esi, 6Fh
		cmp	esi, 2Ch
		jnz	short loc_440570
		mov	esi, [ebp-20h]
		lea	edi, [eax+eax*2]
		xor	ecx, [ebp-0Ch]
		mov	esi, [esi+4]
		cmp	esi, ecx
		jnz	short loc_440570
		lea	eax, [eax+eax*2]
		mov	ecx, [ebp-20h]
		mov	eax, [ebx+eax*4+15Eh]
		mov	ecx, [ecx+8]
		add	eax, [ebp-10h]
		cmp	ecx, eax
		jz	short loc_440579

loc_440570:				; CODE XREF: .text:00440547j
					; .text:00440557j
		mov	dword ptr [ebp-8], 1
		jmp	short loc_44059B
; ---------------------------------------------------------------------------

loc_440579:				; CODE XREF: .text:0044056Ej
		cmp	edx, [ebp-4]
		jz	short loc_440594
		mov	ecx, [ebp-24h]
		mov	eax, [ebp-20h]
		mov	esi, [eax]
		mov	[ecx], esi
		mov	esi, [eax+4]
		mov	[ecx+4], esi
		mov	esi, [eax+8]
		mov	[ecx+8], esi

loc_440594:				; CODE XREF: .text:0044057Cj
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-24h], 0Ch

loc_44059B:				; CODE XREF: .text:004404EBj
					; .text:00440533j ...
		inc	edx
		add	dword ptr [ebp-20h], 0Ch

loc_4405A0:				; CODE XREF: .text:004404B2j
		mov	eax, [ebp+8]
		cmp	edx, [eax+152h]
		jl	loc_4404B7
		mov	edx, [ebp+8]
		mov	ecx, [ebp-4]
		mov	[edx+152h], ecx
		mov	eax, [ebp-8]

loc_4405BE:				; CODE XREF: .text:00440134j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4405C8:				; CODE XREF: .text:00407F67p
					; .text:004080A9p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		mov	esi, [ebp+0Ch]
		test	esi, esi
		jz	loc_4406D4
		mov	ecx, eax
		and	ecx, 0FFh
		cmp	ecx, 2Ch
		jnz	short loc_4405F0
		cmp	eax, [esi+1Eh]
		jz	short loc_4405FD

loc_4405F0:				; CODE XREF: .text:004405E9j
		xor	eax, eax
		mov	[esi+0EEh], eax
		jmp	loc_4406D4
; ---------------------------------------------------------------------------

loc_4405FD:				; CODE XREF: .text:004405EEj
		mov	eax, edx
		sub	eax, [esi+3Eh]
		test	al, 3
		jz	short loc_44060E
		xor	ecx, ecx
		mov	[esi+0EEh], ecx

loc_44060E:				; CODE XREF: .text:00440604j
		mov	ebx, edx
		sub	ebx, [esi+3Eh]
		test	ebx, ebx
		jns	short loc_44061A
		add	ebx, 3

loc_44061A:				; CODE XREF: .text:00440615j
		sar	ebx, 2
		cmp	ebx, [esi+0EEh]
		jl	short loc_440632
		xor	eax, eax
		mov	[esi+0EEh], eax
		jmp	loc_4406D4
; ---------------------------------------------------------------------------

loc_440632:				; CODE XREF: .text:00440623j
		test	ebx, ebx
		jle	short loc_440661
		mov	edx, [esi+0EEh]
		lea	ecx, [esi+ebx*4+0F2h]
		sub	edx, ebx
		lea	eax, [esi+0F2h]
		shl	edx, 2
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		sub	[esi+0EEh], ebx
		jmp	short loc_4406D4
; ---------------------------------------------------------------------------

loc_440661:				; CODE XREF: .text:00440634j
		test	ebx, ebx
		jz	short loc_4406D4
		neg	ebx
		cmp	ebx, 18h
		jle	short loc_440671
		mov	ebx, 18h

loc_440671:				; CODE XREF: .text:0044066Aj
		mov	eax, 18h
		sub	eax, ebx
		cmp	eax, [esi+0EEh]
		jge	short loc_440686
		mov	[esi+0EEh], eax

loc_440686:				; CODE XREF: .text:0044067Ej
		mov	eax, [esi+0EEh]
		test	eax, eax
		jle	short loc_4406AB
		shl	eax, 2
		push	eax		; n
		lea	edx, [esi+0F2h]
		push	edx		; src
		lea	ecx, [esi+ebx*4+0F2h]
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch

loc_4406AB:				; CODE XREF: .text:0044068Ej
		xor	edx, edx
		lea	eax, [esi+0F2h]
		cmp	ebx, edx
		jle	short loc_4406CE

loc_4406B7:				; CODE XREF: .text:004406CCj
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4406C2
		mov	ecx, [ebp+8]
		jmp	short loc_4406C4
; ---------------------------------------------------------------------------

loc_4406C2:				; CODE XREF: .text:004406BBj
		xor	ecx, ecx

loc_4406C4:				; CODE XREF: .text:004406C0j
		mov	[eax], ecx
		inc	edx
		add	eax, 4
		cmp	ebx, edx
		jg	short loc_4406B7

loc_4406CE:				; CODE XREF: .text:004406B5j
		add	[esi+0EEh], ebx

loc_4406D4:				; CODE XREF: .text:004405D8j
					; .text:004405F8j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 185. _Commentcharacter
; Exported entry 423. Commentcharacter

; int __cdecl Commentcharacter(wchar_t *s, int c, int mode)
		public Commentcharacter
Commentcharacter:			; CODE XREF: .text:0043639Cp
					; .text:0043E36Ep ...
		push	ebp		; _Commentcharacter
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		and	ebx, 0FFh
		cmp	ebx, 8
		jnz	short loc_440711
		push	offset aBackspace ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44084C
; ---------------------------------------------------------------------------

loc_440711:				; CODE XREF: .text:004406F0j
		cmp	ebx, 9
		jnz	short loc_440735
		push	offset aTab_0	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44084C
; ---------------------------------------------------------------------------

loc_440735:				; CODE XREF: .text:00440714j
		cmp	ebx, 0Ah
		jnz	short loc_440759
		push	offset aLineFeed ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44084C
; ---------------------------------------------------------------------------

loc_440759:				; CODE XREF: .text:00440738j
		cmp	ebx, 0Ch
		jnz	short loc_44077D
		push	offset aFormFeed ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44084C
; ---------------------------------------------------------------------------

loc_44077D:				; CODE XREF: .text:0044075Cj
		cmp	ebx, 0Dh
		jnz	short loc_4407A1
		push	offset aCarriageReturn ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44084C
; ---------------------------------------------------------------------------

loc_4407A1:				; CODE XREF: .text:00440780j
		cmp	ebx, 1Bh
		jnz	short loc_4407C5
		push	offset aEsc	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44084C
; ---------------------------------------------------------------------------

loc_4407C5:				; CODE XREF: .text:004407A4j
		test	edi, 10h
		jnz	short loc_44084A
		push	ebx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_44084A
		test	edi, 400h
		jz	short loc_440839
		test	edi, 800h
		jz	short loc_440800
		push	ebx
		push	offset aCharC	; src
		call	_T
		pop	ecx
		push	eax		; format
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_44084C
; ---------------------------------------------------------------------------

loc_440800:				; CODE XREF: .text:004407E6j
		cmp	dword_5BDCCC, 0
		jz	short loc_440821
		push	ebx
		push	offset aCharC_0	; "char	'%c'"
		call	_T
		pop	ecx
		push	eax		; format
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_44084C
; ---------------------------------------------------------------------------

loc_440821:				; CODE XREF: .text:00440807j
		push	ebx
		push	offset aCharC_1	; "CHAR	'%c'"
		call	_T
		pop	ecx
		push	eax		; format
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_44084C
; ---------------------------------------------------------------------------

loc_440839:				; CODE XREF: .text:004407DEj
		push	ebx
		push	(offset	aCharC+0Ah) ; "'%c'"
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_44084C
; ---------------------------------------------------------------------------

loc_44084A:				; CODE XREF: .text:004407CBj
					; .text:004407D6j
		xor	eax, eax

loc_44084C:				; CODE XREF: .text:0044070Cj
					; .text:00440730j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 186. _Printfloat4
; Exported entry 674. Printfloat4

; unsigned int __cdecl Printfloat4(wchar_t *s, float f)
		public Printfloat4
Printfloat4:				; CODE XREF: .text:0042640Bp
					; .text:00426846p ...
		push	ebp		; _Printfloat4
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		call	loc_41100B
		cmp	dword ptr [ebp+0Ch], 7F800000h
		jnz	short loc_440883
		push	offset aInf7f800000 ; "+INF 7F800000"
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_440930
; ---------------------------------------------------------------------------

loc_440883:				; CODE XREF: .text:00440867j
		cmp	dword ptr [ebp+0Ch], 0FF800000h
		jnz	short loc_4408A6
		push	offset aInfFf800000 ; "-INF FF800000"
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_440930
; ---------------------------------------------------------------------------

loc_4408A6:				; CODE XREF: .text:0044088Aj
		mov	eax, [ebp+0Ch]
		mov	edx, eax
		and	edx, 0FF800000h
		cmp	edx, 7F800000h
		jnz	short loc_4408CC
		push	eax
		push	offset aNan08lx_1 ; format
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_440930
; ---------------------------------------------------------------------------

loc_4408CC:				; CODE XREF: .text:004408B7j
		mov	eax, [ebp+0Ch]
		mov	edx, eax
		and	edx, 0FF800000h
		cmp	edx, 0FF800000h
		jnz	short loc_4408F2
		push	eax
		push	offset aNan08lx	; "-NAN	%08lX"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_440930
; ---------------------------------------------------------------------------

loc_4408F2:				; CODE XREF: .text:004408DDj
		fld	dword ptr [ebp+0Ch]
		fcomp	ds:flt_44093C
		fnstsw	ax
		sahf
		jnz	short loc_440917
		push	offset a0_0_1	; "0.0"
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_440930
; ---------------------------------------------------------------------------

loc_440917:				; CODE XREF: .text:004408FEj
		add	esp, 0FFFFFFF8h
		fld	dword ptr [ebp+0Ch]
		fstp	qword ptr [esp]
		push	offset a_7g	; format
		push	ebx		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax

loc_440930:				; CODE XREF: .text:0044087Ej
					; .text:004408A1j ...
		call	loc_411014
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
flt_44093C	dd 0.0			; DATA XREF: .text:004408F5r
; ---------------------------------------------------------------------------
; Exported entry 187. _Printfloat8
; Exported entry 675. Printfloat8

; unsigned int __cdecl Printfloat8(wchar_t *s, double d)
		public Printfloat8
Printfloat8:				; CODE XREF: .text:004268C2p
					; .text:004270B6p ...
		push	ebp		; _Printfloat8
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		call	loc_41100B
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+10h]
		test	edx, edx
		jnz	short loc_440978
		cmp	eax, 7F800000h
		jnz	short loc_440978
		push	offset aInf7f800000000 ; "+INF 7F800000	00000000"
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_440A15
; ---------------------------------------------------------------------------

loc_440978:				; CODE XREF: .text:00440955j
					; .text:0044095Cj
		test	edx, edx
		jnz	short loc_44099A
		cmp	eax, 0FF800000h
		jnz	short loc_44099A
		push	offset aInfFf800000000 ; "-INF FF800000	00000000"
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_440A15
; ---------------------------------------------------------------------------

loc_44099A:				; CODE XREF: .text:0044097Aj
					; .text:00440981j
		mov	ecx, eax
		and	ecx, 0FFF00000h
		cmp	ecx, 7FF00000h
		jnz	short loc_4409BE
		push	edx
		push	eax
		push	offset aNan08lx08lx_1 ;	"+NAN %08lX %08lX"
		push	esi		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_440A15
; ---------------------------------------------------------------------------

loc_4409BE:				; CODE XREF: .text:004409A8j
		cmp	ecx, 0FFF00000h
		jnz	short loc_4409DA
		push	edx
		push	eax
		push	offset aNan08lx08lx ; "-NAN %08lX %08lX"
		push	esi		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_440A15
; ---------------------------------------------------------------------------

loc_4409DA:				; CODE XREF: .text:004409C4j
		fld	qword ptr [ebp+0Ch]
		fcomp	ds:flt_440A20
		fnstsw	ax
		sahf
		jnz	short loc_4409FF
		push	offset a0_0_1	; "0.0"
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_440A15
; ---------------------------------------------------------------------------

loc_4409FF:				; CODE XREF: .text:004409E6j
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+0Ch]
		push	offset a_16lg	; "%#.16lg"
		push	esi		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax

loc_440A15:				; CODE XREF: .text:00440973j
					; .text:00440998j ...
		call	loc_411014
		mov	eax, ebx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
flt_440A20	dd 0.0			; DATA XREF: .text:004409DDr
; ---------------------------------------------------------------------------
; Exported entry 188. _Printfloat10
; Exported entry 673. Printfloat10

; unsigned int __cdecl Printfloat10(wchar_t *s,	long double ext)
		public Printfloat10
Printfloat10:				; CODE XREF: .text:0042690Bp
					; .text:0043EB4Ap ...
		push	ebp		; _Printfloat10
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		call	loc_41100B
		lea	eax, [ebp+0Ch]
		cmp	dword ptr [eax], 0
		jnz	short loc_440A62
		cmp	word ptr [eax+4], 0
		jnz	short loc_440A62
		cmp	dword ptr [eax+6], 7FFF8000h
		jnz	short loc_440A62
		push	offset aInf7fff8000000 ; "+INF 7FFF 80000000 00000000"
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_440C79
; ---------------------------------------------------------------------------

loc_440A62:				; CODE XREF: .text:00440A36j
					; .text:00440A3Dj ...
		cmp	dword ptr [eax], 0
		jnz	short loc_440A91
		cmp	word ptr [eax+4], 0
		jnz	short loc_440A91
		cmp	dword ptr [eax+6], 0FFFF8000h
		jnz	short loc_440A91
		push	offset aInfFfff8000000 ; "-INF FFFF 80000000 00000000"
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_440C79
; ---------------------------------------------------------------------------

loc_440A91:				; CODE XREF: .text:00440A65j
					; .text:00440A6Cj ...
		mov	edx, [eax+6]
		and	edx, 7FFF8000h
		cmp	edx, 7FFF8000h
		jnz	short loc_440AD4
		mov	ecx, [eax]
		push	ecx
		mov	edx, [eax+4]
		push	edx
		movzx	ecx, word ptr [eax+8]
		push	ecx
		test	byte ptr [eax+9], 80h
		mov	dx, 2Bh
		jz	short loc_440ABB
		add	edx, 2

loc_440ABB:				; CODE XREF: .text:00440AB6j
		movzx	eax, dx
		push	eax
		push	offset aCnan04x08lx08l ; format
		push	ebx		; buffer
		call	_swprintf
		add	esp, 18h
		mov	ebx, eax
		jmp	loc_440C79
; ---------------------------------------------------------------------------

loc_440AD4:				; CODE XREF: .text:00440AA0j
		mov	ecx, [eax+6]
		and	ecx, 7FFF0000h
		cmp	ecx, 7FFF0000h
		jnz	short loc_440B17
		mov	edx, [eax]
		push	edx
		mov	ecx, [eax+4]
		push	ecx
		movzx	edx, word ptr [eax+8]
		push	edx
		test	byte ptr [eax+9], 80h
		mov	cx, 2Bh
		jz	short loc_440AFE
		add	ecx, 2

loc_440AFE:				; CODE XREF: .text:00440AF9j
		movzx	eax, cx
		push	eax
		push	$CTW0("%c??? %04X %08lX %08lX") ; "%c???	%04X %08lX %08lX"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 18h
		mov	ebx, eax
		jmp	loc_440C79
; ---------------------------------------------------------------------------

loc_440B17:				; CODE XREF: .text:00440AE3j
		mov	edx, [eax+6]
		test	edx, 7FFF0000h
		jz	short loc_440B59
		test	dh, 80h
		jnz	short loc_440B59
		mov	ecx, [eax]
		push	ecx
		mov	edx, [eax+4]
		push	edx
		movzx	ecx, word ptr [eax+8]
		push	ecx
		test	byte ptr [eax+9], 80h
		mov	dx, 2Bh
		jz	short loc_440B40
		add	edx, 2

loc_440B40:				; CODE XREF: .text:00440B3Bj
		movzx	eax, dx
		push	eax
		push	offset aCunorm04x08lx0 ; "%cUNORM %04X %08lX %08lX"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 18h
		mov	ebx, eax
		jmp	loc_440C79
; ---------------------------------------------------------------------------

loc_440B59:				; CODE XREF: .text:00440B20j
					; .text:00440B25j
		cmp	dword ptr [eax], 0
		jnz	short loc_440B88
		cmp	word ptr [eax+4], 0
		jnz	short loc_440B88
		cmp	dword ptr [eax+6], 80000000h
		jnz	short loc_440B88
		push	offset a0_0	; "-0.0"
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_440C79
; ---------------------------------------------------------------------------

loc_440B88:				; CODE XREF: .text:00440B5Cj
					; .text:00440B63j ...
		fld	tbyte ptr [ebp+0Ch]
		fcomp	ds:flt_440C84
		fnstsw	ax
		sahf
		jnz	short loc_440BB0
		push	offset a0_0_1	; "0.0"
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_440C79
; ---------------------------------------------------------------------------

loc_440BB0:				; CODE XREF: .text:00440B94j
		fld	tbyte ptr [ebp+0Ch]
		fcomp	ds:flt_440C88
		fnstsw	ax
		sahf
		jb	short loc_440BCC
		fld	tbyte ptr [ebp+0Ch]
		fcomp	ds:flt_440C8C
		fnstsw	ax
		sahf
		jb	short loc_440BE8

loc_440BCC:				; CODE XREF: .text:00440BBCj
		fld	tbyte ptr [ebp+0Ch]
		fcomp	ds:flt_440C90
		fnstsw	ax
		sahf
		jbe	short loc_440C05
		fld	tbyte ptr [ebp+0Ch]
		fcomp	ds:flt_440C94
		fnstsw	ax
		sahf
		ja	short loc_440C05

loc_440BE8:				; CODE XREF: .text:00440BCAj
		mov	dx, [ebp+14h]
		push	edx
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+0Ch]
		push	offset a_20lg	; "%#.20Lg"
		push	ebx		; buffer
		call	_swprintf
		add	esp, 14h
		mov	ebx, eax
		jmp	short loc_440C79
; ---------------------------------------------------------------------------

loc_440C05:				; CODE XREF: .text:00440BD8j
					; .text:00440BE6j
		fld	tbyte ptr [ebp+0Ch]
		fcomp	ds:flt_440C8C
		fnstsw	ax
		sahf
		jb	short loc_440C23
		fld	tbyte ptr [ebp+0Ch]
		fld	ds:tbyte_440C98
		fcompp
		fnstsw	ax
		sahf
		jnb	short loc_440C41

loc_440C23:				; CODE XREF: .text:00440C11j
		fld	tbyte ptr [ebp+0Ch]
		fld	ds:tbyte_440CA4
		fcompp
		fnstsw	ax
		sahf
		ja	short loc_440C5E
		fld	tbyte ptr [ebp+0Ch]
		fcomp	ds:flt_440C90
		fnstsw	ax
		sahf
		ja	short loc_440C5E

loc_440C41:				; CODE XREF: .text:00440C21j
		mov	dx, [ebp+14h]
		push	edx
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+0Ch]
		push	offset a_19lf	; format
		push	ebx		; buffer
		call	_swprintf
		add	esp, 14h
		mov	ebx, eax
		jmp	short loc_440C79
; ---------------------------------------------------------------------------

loc_440C5E:				; CODE XREF: .text:00440C31j
					; .text:00440C3Fj
		mov	cx, [ebp+14h]
		push	ecx
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+0Ch]
		push	offset a_19le	; format
		push	ebx		; buffer
		call	_swprintf
		add	esp, 14h
		mov	ebx, eax

loc_440C79:				; CODE XREF: .text:00440A5Dj
					; .text:00440A8Cj ...
		call	loc_411014
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
flt_440C84	dd 0.0			; DATA XREF: .text:00440B8Br
flt_440C88	dd -1.0e10		; DATA XREF: .text:00440BB3r
flt_440C8C	dd -1.0			; DATA XREF: .text:00440BC1r
					; .text:00440C08r
flt_440C90	dd 1.0			; DATA XREF: .text:00440BCFr
					; .text:00440C36r
flt_440C94	dd 1.0e10		; DATA XREF: .text:00440BDDr
tbyte_440C98	dt -0.000010000000000000000818 ; DATA XREF: .text:00440C16r
		align 4
tbyte_440CA4	dt 0.000010000000000000000818 ;	DATA XREF: .text:00440C26r
		align 10h
; Exported entry 189. _Printmmx
; Exported entry 676. Printmmx

; int __cdecl Printmmx(wchar_t *s, uchar *data)
		public Printmmx
Printmmx:				; CODE XREF: .text:00495C18p
		push	ebp		; _Printmmx
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		movzx	edx, word ptr [eax]
		push	edx
		movzx	ecx, word ptr [eax+2]
		push	ecx
		movzx	edx, word ptr [eax+4]
		push	edx
		movzx	eax, word ptr [eax+6]
		push	eax
		push	offset a04x04x04x04x ; format
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 18h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 190. _Nameoffloat
; Exported entry 658. Nameoffloat

; int __cdecl Nameoffloat(wchar_t *s, uchar *data, ulong size)
		public Nameoffloat
Nameoffloat:				; CODE XREF: .text:0043EB8Ep
					; .text:004427DBp ...
		push	ebp		; _Nameoffloat
		mov	ebp, esp
		add	esp, 0FFFFFF64h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_440CFB
		xor	eax, eax
		jmp	loc_4414FE
; ---------------------------------------------------------------------------

loc_440CFB:				; CODE XREF: .text:00440CF2j
		mov	edx, [ebp+8]
		test	ebx, ebx
		mov	word ptr [edx],	0
		jnz	short loc_440D0E
		xor	eax, eax
		jmp	loc_4414FE
; ---------------------------------------------------------------------------

loc_440D0E:				; CODE XREF: .text:00440D05j
		call	loc_41100B
		xor	edi, edi
		mov	eax, esi
		sub	eax, 4
		jz	short loc_440D2B
		sub	eax, 4
		jz	short loc_440D64
		sub	eax, 2
		jz	short loc_440D9D
		jmp	loc_4414F7
; ---------------------------------------------------------------------------

loc_440D2B:				; CODE XREF: .text:00440D1Aj
		fld	dword ptr [ebx]
		fstp	tbyte ptr [ebp-2Ch]
		mov	dx, [ebp-24h]
		push	edx
		push	dword ptr [ebp-28h]
		push	dword ptr [ebp-2Ch] ; x
		call	_fabsl
		add	esp, 0Ch
		fstp	tbyte ptr [ebp-38h]
		fld	tbyte ptr [ebp-38h]
		fld	ds:tbyte_441508
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-44h]
		fld	tbyte ptr [ebp-38h]
		fld	ds:tbyte_441514
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-50h]
		jmp	short loc_440DE2
; ---------------------------------------------------------------------------

loc_440D64:				; CODE XREF: .text:00440D1Fj
		fld	qword ptr [ebx]
		fstp	tbyte ptr [ebp-2Ch]
		mov	cx, [ebp-24h]
		push	ecx
		push	dword ptr [ebp-28h]
		push	dword ptr [ebp-2Ch] ; x
		call	_fabsl
		add	esp, 0Ch
		fstp	tbyte ptr [ebp-38h]
		fld	tbyte ptr [ebp-38h]
		fld	ds:tbyte_441520
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-44h]
		fld	tbyte ptr [ebp-38h]
		fld	ds:tbyte_44152C
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-50h]
		jmp	short loc_440DE2
; ---------------------------------------------------------------------------

loc_440D9D:				; CODE XREF: .text:00440D24j
		mov	eax, [ebx]
		mov	[ebp-2Ch], eax
		mov	eax, [ebx+4]
		mov	[ebp-28h], eax
		mov	ax, [ebx+8]
		mov	[ebp-24h], ax
		mov	dx, [ebp-24h]
		push	edx
		push	dword ptr [ebp-28h]
		push	dword ptr [ebp-2Ch] ; x
		call	_fabsl
		add	esp, 0Ch
		fstp	tbyte ptr [ebp-38h]
		fld	tbyte ptr [ebp-38h]
		fld	ds:tbyte_441538
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-44h]
		fld	tbyte ptr [ebp-38h]
		fld	ds:tbyte_441544
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-50h]

loc_440DE2:				; CODE XREF: .text:00440D62j
					; .text:00440D9Bj
		fld	tbyte ptr [ebp-2Ch]
		fcomp	ds:flt_441550
		fnstsw	ax
		sahf
		jnb	short loc_440DF7
		mov	ebx, offset asc_531A08 ; "-"
		jmp	short loc_440DFC
; ---------------------------------------------------------------------------

loc_440DF7:				; CODE XREF: .text:00440DEEj
		mov	ebx, (offset aAl_2+3) ;	""

loc_440DFC:				; CODE XREF: .text:00440DF5j
		mov	dword ptr [ebp-4], 8
		xor	eax, eax
		mov	[ebp-5Ch], eax
		mov	dword ptr [ebp-58h], 80000000h
		mov	word ptr [ebp-54h], 4007h
		cmp	dword ptr [ebp-4], 40h
		jge	loc_440F00

loc_440E1F:				; CODE XREF: .text:00440EFAj
		cmp	dword ptr [ebp-4], 10h
		jl	short loc_440E7F
		fld	tbyte ptr [ebp-5Ch]
		fld	tbyte ptr [ebp-38h]
		fcompp
		fnstsw	ax
		sahf
		ja	short loc_440E7F
		fld	tbyte ptr [ebp-5Ch]
		fld	tbyte ptr [ebp-38h]
		fcompp
		fnstsw	ax
		sahf
		jb	short loc_440E7F
		push	offset aConst	; "CONST "
		call	_T
		pop	ecx
		push	eax
		push	100h
		mov	edx, [ebp+8]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax
		mov	eax, [ebp-4]
		mov	edx, edi
		push	eax
		push	ebx
		push	offset aS2I	; "%s2**%i"
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		add	edi, eax
		jmp	loc_4414F7
; ---------------------------------------------------------------------------

loc_440E7F:				; CODE XREF: .text:00440E23j
					; .text:00440E30j ...
		fld	tbyte ptr [ebp-5Ch]
		fdivr	ds:flt_441554
		fld	tbyte ptr [ebp-44h]
		fcompp
		fnstsw	ax
		sahf
		ja	short loc_440EE5
		fld	tbyte ptr [ebp-5Ch]
		fdivr	ds:flt_441554
		fld	tbyte ptr [ebp-50h]
		fcompp
		fnstsw	ax
		sahf
		jb	short loc_440EE5
		push	offset aConst	; "CONST "
		call	_T
		pop	ecx
		push	eax
		push	100h
		mov	edx, [ebp+8]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax
		mov	eax, [ebp-4]
		mov	edx, edi
		push	eax
		push	ebx
		push	offset aS12I	; format
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		add	edi, eax
		jmp	loc_4414F7
; ---------------------------------------------------------------------------

loc_440EE5:				; CODE XREF: .text:00440E90j
					; .text:00440EA3j
		inc	dword ptr [ebp-4]
		fld	ds:flt_441558
		fld	tbyte ptr [ebp-5Ch]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-5Ch]
		cmp	dword ptr [ebp-4], 40h
		jl	loc_440E1F

loc_440F00:				; CODE XREF: .text:00440E19j
		fld	tbyte ptr [ebp-38h]
		fld	ds:tbyte_44155C
		fcompp
		fnstsw	ax
		sahf
		jnb	loc_441095
		fld	tbyte ptr [ebp-38h]
		fcomp	ds:flt_441568
		fnstsw	ax
		sahf
		jnb	loc_441095
		cmp	esi, 4
		jnz	short loc_440F4F
		mov	dword ptr [ebp-8Ch], 0E2196800h
		mov	dword ptr [ebp-88h], 0D1B71758h
		mov	word ptr [ebp-84h], 3FF1h
		mov	esi, 3E8h
		jmp	short loc_440F9A
; ---------------------------------------------------------------------------

loc_440F4F:				; CODE XREF: .text:00440F29j
		cmp	esi, 8
		jnz	short loc_440F78
		mov	dword ptr [ebp-8Ch], 8461D000h
		mov	dword ptr [ebp-88h], 0ABCC7711h
		mov	word ptr [ebp-84h], 3FE4h
		mov	esi, 186A0h
		jmp	short loc_440F9A
; ---------------------------------------------------------------------------

loc_440F78:				; CODE XREF: .text:00440F52j
		mov	dword ptr [ebp-8Ch], 6F508800h
		mov	dword ptr [ebp-88h], 8CBCCC09h
		mov	word ptr [ebp-84h], 3FD7h
		mov	esi, 0F4240h

loc_440F9A:				; CODE XREF: .text:00440F4Dj
					; .text:00440F76j
		fld	tbyte ptr [ebp-38h]
		fdivr	ds:flt_441554
		fstp	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-20h]
		fadd	ds:flt_441568
		add	esp, 0FFFFFFF4h
		fstp	tbyte ptr [esp]	; x
		call	_floorl
		fstp	tbyte ptr [ebp-74h]
		fld	tbyte ptr [ebp-74h]
		add	esp, 0Ch
		call	@_ftol$qv	; _ftol(void)
		mov	[ebp-0Ch], eax
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_441095
		jmp	short loc_440FE8
; ---------------------------------------------------------------------------

loc_440FDA:				; CODE XREF: .text:00440FF5j
		mov	ecx, 0Ah
		mov	eax, [ebp-0Ch]
		cdq
		idiv	ecx
		mov	[ebp-0Ch], eax

loc_440FE8:				; CODE XREF: .text:00440FD8j
		mov	eax, [ebp-0Ch]
		mov	ecx, 0Ah
		cdq
		idiv	ecx
		test	edx, edx
		jz	short loc_440FDA
		cmp	dword ptr [ebp-0Ch], 2
		jle	loc_441095
		cmp	dword ptr [ebp-0Ch], 5
		jz	loc_441095
		cmp	esi, [ebp-0Ch]
		jle	loc_441095
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-74h]
		fsubp	st(1), st
		add	esp, 0FFFFFFF4h
		fstp	tbyte ptr [esp]	; x
		call	_fabsl
		fld	tbyte ptr [ebp-74h]
		fmulp	st(1), st
		add	esp, 0Ch
		fstp	tbyte ptr [ebp-80h]
		fld	tbyte ptr [ebp-80h]
		fld	tbyte ptr [ebp-8Ch]
		fcompp
		fnstsw	ax
		sahf
		jbe	short loc_441095
		push	offset aConst	; "CONST "
		call	_T
		pop	ecx
		push	eax
		push	100h
		mov	edx, [ebp+8]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax
		cmp	dword ptr [ebp-4], 0Ah
		jge	short loc_44106E
		mov	eax, (offset aAl_2+3) ;	""
		jmp	short loc_441073
; ---------------------------------------------------------------------------

loc_44106E:				; CODE XREF: .text:00441065j
		mov	eax, (offset a4i_+6) ; "."

loc_441073:				; CODE XREF: .text:0044106Cj
		push	eax
		mov	ecx, edi
		mov	edx, [ebp-8]
		add	ecx, ecx
		push	edx
		push	ebx
		push	offset aS1IS	; format
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 14h
		add	edi, eax
		jmp	loc_4414F7
; ---------------------------------------------------------------------------

loc_441095:				; CODE XREF: .text:00440F0Ej
					; .text:00440F20j ...
		xor	eax, eax
		mov	[ebp-4], eax
		mov	dword ptr [ebp-90h], offset tfloat._type

loc_4410A4:				; CODE XREF: .text:004414F1j
		mov	edx, [ebp-90h]
		mov	ecx, [edx]
		mov	[ebp-10h], ecx
		mov	ecx, 1
		mov	eax, [ebp-90h]
		mov	edx, [eax-0Ah]
		mov	[ebp-5Ch], edx
		mov	edx, [eax-6]
		mov	[ebp-58h], edx
		mov	dx, [eax-2]
		xor	eax, eax
		mov	[ebp-54h], dx
		mov	[ebp-14h], ecx
		mov	[ebp-8], ecx
		mov	[ebp-68h], eax
		mov	dword ptr [ebp-64h], 80000000h
		mov	word ptr [ebp-60h], 3FFFh
		mov	edx, [ebp-90h]
		lea	eax, [edx+4]
		mov	[ebp-98h], eax
		cmp	dword ptr [ebp-8], 13h
		jge	loc_4414E3

loc_4410FF:				; CODE XREF: .text:004414DDj
		test	byte ptr [ebp-10h], 2
		jz	short loc_44110F
		cmp	dword ptr [ebp-8], 1
		jnz	loc_4414C5

loc_44110F:				; CODE XREF: .text:00441103j
		cmp	dword ptr [ebp-8], 11h
		jnz	short loc_441130
		mov	dword ptr [ebp-14h], 0B4h
		xor	edx, edx
		mov	[ebp-68h], edx
		mov	dword ptr [ebp-64h], 0B4000000h
		mov	word ptr [ebp-60h], 4006h
		jmp	short loc_44114F
; ---------------------------------------------------------------------------

loc_441130:				; CODE XREF: .text:00441113j
		cmp	dword ptr [ebp-8], 12h
		jnz	short loc_44114F
		mov	dword ptr [ebp-14h], 168h
		xor	ecx, ecx
		mov	[ebp-68h], ecx
		mov	dword ptr [ebp-64h], 0B4000000h
		mov	word ptr [ebp-60h], 4007h

loc_44114F:				; CODE XREF: .text:0044112Ej
					; .text:00441134j
		xor	esi, esi
		mov	eax, [ebp-98h]
		mov	edx, eax
		mov	[ebp-94h], edx

loc_44115F:				; CODE XREF: .text:004414BFj
		test	esi, esi
		jnz	short loc_44117D
		test	byte ptr [ebp-10h], 4
		jnz	loc_4414BB
		fld	tbyte ptr [ebp-5Ch]
		fld	tbyte ptr [ebp-68h]
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-20h]
		jmp	loc_44124A
; ---------------------------------------------------------------------------

loc_44117D:				; CODE XREF: .text:00441161j
		cmp	esi, 1
		jnz	short loc_4411D8
		cmp	dword ptr [ebp-8], 1
		jz	loc_4414BB
		test	byte ptr [ebp-10h], 2
		jnz	loc_4414BB
		fld	tbyte ptr [ebp-5Ch]
		fld	tbyte ptr [ebp-68h]
		fdivp	st(1), st
		fstp	tbyte ptr [ebp-20h]
		test	byte ptr [ebp-10h], 4
		jz	loc_44124A
		fld	tbyte ptr [ebp-20h]
		fmul	ds:flt_44156C
		add	esp, 0FFFFFFF4h
		fstp	tbyte ptr [esp]	; x
		call	_floorl
		add	esp, 0Ch
		fld	tbyte ptr [ebp-20h]
		fmul	ds:flt_44156C
		fcompp
		fnstsw	ax
		sahf
		jz	loc_4414BB
		jmp	short loc_44124A
; ---------------------------------------------------------------------------

loc_4411D8:				; CODE XREF: .text:00441180j
		cmp	esi, 2
		jnz	short loc_44121B
		fld	tbyte ptr [ebp-68h]
		fld	tbyte ptr [ebp-5Ch]
		fdivp	st(1), st
		fstp	tbyte ptr [ebp-20h]
		test	byte ptr [ebp-10h], 4
		jz	short loc_44124A
		fld	tbyte ptr [ebp-20h]
		fmul	ds:flt_44156C
		add	esp, 0FFFFFFF4h
		fstp	tbyte ptr [esp]	; x
		call	_floorl
		add	esp, 0Ch
		fld	tbyte ptr [ebp-20h]
		fmul	ds:flt_44156C
		fcompp
		fnstsw	ax
		sahf
		jz	loc_4414BB
		jmp	short loc_44124A
; ---------------------------------------------------------------------------

loc_44121B:				; CODE XREF: .text:004411DBj
		test	byte ptr [ebp-10h], 2
		jnz	loc_4414BB
		test	byte ptr [ebp-10h], 4
		jnz	loc_4414BB
		cmp	dword ptr [ebp-8], 1
		jz	loc_4414BB
		fld	tbyte ptr [ebp-5Ch]
		fld	tbyte ptr [ebp-68h]
		fmulp	st(1), st
		fdivr	ds:flt_441554
		fstp	tbyte ptr [ebp-20h]

loc_44124A:				; CODE XREF: .text:00441178j
					; .text:004411A5j ...
		test	byte ptr [ebp-10h], 1
		jz	short loc_44126A
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-38h]
		fcompp
		fnstsw	ax
		sahf
		ja	short loc_44126A
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-38h]
		fcompp
		fnstsw	ax
		sahf
		jnb	short loc_441296

loc_44126A:				; CODE XREF: .text:0044124Ej
					; .text:0044125Bj
		test	byte ptr [ebp-10h], 1
		jnz	loc_4414BB
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-44h]
		fcompp
		fnstsw	ax
		sahf
		ja	loc_4414BB
		fld	tbyte ptr [ebp-20h]
		fld	tbyte ptr [ebp-50h]
		fcompp
		fnstsw	ax
		sahf
		jb	loc_4414BB

loc_441296:				; CODE XREF: .text:00441268j
		cmp	esi, 1
		jz	short loc_4412A0
		cmp	esi, 2
		jnz	short loc_441304

loc_4412A0:				; CODE XREF: .text:00441299j
		test	byte ptr [ebp-10h], 4
		jz	short loc_441304
		cmp	dword ptr [ebp-14h], 1
		jz	short loc_441304
		fld	tbyte ptr [ebp-5Ch]
		fcomp	ds:flt_441570
		fnstsw	ax
		sahf
		ja	short loc_441304
		fld	tbyte ptr [ebp-5Ch]
		call	@_ftol$qv	; _ftol(void)
		mov	[ebp-9Ch], eax
		fild	dword ptr [ebp-9Ch]
		fld	tbyte ptr [ebp-5Ch]
		fcompp
		fnstsw	ax
		sahf
		jnz	short loc_441304
		fld	tbyte ptr [ebp-5Ch]
		call	@_ftol$qv	; _ftol(void)
		mov	edx, [ebp-14h]

loc_4412E3:				; CODE XREF: .text:004412FBj
		cmp	edx, eax
		jle	short loc_4412EF
		mov	[ebp-0Ch], eax
		mov	eax, edx
		mov	edx, [ebp-0Ch]

loc_4412EF:				; CODE XREF: .text:004412E5j
		cmp	edx, eax
		jge	short loc_4412F9

loc_4412F3:				; CODE XREF: .text:004412F7j
		sub	eax, edx
		cmp	edx, eax
		jl	short loc_4412F3

loc_4412F9:				; CODE XREF: .text:004412F1j
		cmp	edx, eax
		jnz	short loc_4412E3
		dec	eax
		jg	loc_4414BB

loc_441304:				; CODE XREF: .text:0044129Ej
					; .text:004412A4j ...
		push	offset aConst	; "CONST "
		call	_T
		pop	ecx
		push	eax
		push	100h
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		mov	edi, eax
		fld	tbyte ptr [ebp-2Ch]
		fcomp	ds:flt_441550
		fnstsw	ax
		sahf
		jnb	short loc_44133B
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 2Dh
		inc	edi

loc_44133B:				; CODE XREF: .text:0044132Fj
		mov	ecx, [ebp-94h]
		xor	eax, eax
		mov	ebx, [ecx]
		mov	[ebp-0Ch], eax
		mov	eax, ebx
		jmp	short loc_44136D
; ---------------------------------------------------------------------------

loc_44134C:				; CODE XREF: .text:00441371j
		mov	dx, [eax]
		cmp	dx, 2Bh
		jz	short loc_441373
		cmp	dx, 2Dh
		jz	short loc_441373
		cmp	dx, 2Ah
		jz	short loc_441373
		cmp	dx, 2Fh
		jz	short loc_441373
		inc	dword ptr [ebp-0Ch]
		add	eax, 2

loc_44136D:				; CODE XREF: .text:0044134Aj
		cmp	word ptr [eax],	0
		jnz	short loc_44134C

loc_441373:				; CODE XREF: .text:00441353j
					; .text:00441359j ...
		test	esi, esi
		jnz	short loc_4413AD
		cmp	dword ptr [ebp-8], 1
		jz	short loc_4413AD
		cmp	dword ptr [ebp-14h], 0Ah
		jge	short loc_44138A
		mov	ecx, (offset aAl_2+3) ;	""
		jmp	short loc_44138F
; ---------------------------------------------------------------------------

loc_44138A:				; CODE XREF: .text:00441381j
		mov	ecx, (offset a4i_+6) ; "."

loc_44138F:				; CODE XREF: .text:00441388j
		push	ecx
		mov	edx, edi
		mov	eax, [ebp-14h]
		add	edx, edx
		push	eax
		push	offset aIS_2	; "%i%s*"
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		add	edi, eax
		jmp	short loc_441415
; ---------------------------------------------------------------------------

loc_4413AD:				; CODE XREF: .text:00441375j
					; .text:0044137Bj
		cmp	esi, 2
		jnz	short loc_4413E2
		cmp	dword ptr [ebp-14h], 0Ah
		jge	short loc_4413BF
		mov	eax, (offset aAl_2+3) ;	""
		jmp	short loc_4413C4
; ---------------------------------------------------------------------------

loc_4413BF:				; CODE XREF: .text:004413B6j
		mov	eax, (offset a4i_+6) ; "."

loc_4413C4:				; CODE XREF: .text:004413BDj
		push	eax
		mov	ecx, edi
		mov	edx, [ebp-14h]
		add	ecx, ecx
		push	edx
		push	offset aIS_0	; "%i%s/"
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	edi, eax
		jmp	short loc_441415
; ---------------------------------------------------------------------------

loc_4413E2:				; CODE XREF: .text:004413B0j
		cmp	esi, 3
		jnz	short loc_441415
		cmp	dword ptr [ebp-14h], 0Ah
		jge	short loc_4413F4
		mov	eax, (offset aAl_2+3) ;	""
		jmp	short loc_4413F9
; ---------------------------------------------------------------------------

loc_4413F4:				; CODE XREF: .text:004413EBj
		mov	eax, (offset a4i_+6) ; "."

loc_4413F9:				; CODE XREF: .text:004413F2j
		push	eax
		mov	ecx, edi
		mov	edx, [ebp-14h]
		add	ecx, ecx
		push	edx
		push	offset a1IS	; "1/(%i%s*"
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	edi, eax

loc_441415:				; CODE XREF: .text:004413ABj
					; .text:004413E0j ...
		mov	eax, [ebp-0Ch]
		cmp	word ptr [ebx+eax*2], 0
		jz	short loc_441433
		test	esi, esi
		jnz	short loc_441429
		cmp	dword ptr [ebp-8], 1
		jz	short loc_441433

loc_441429:				; CODE XREF: .text:00441421j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 28h
		inc	edi

loc_441433:				; CODE XREF: .text:0044141Dj
					; .text:00441427j
		mov	ecx, 100h
		push	ebx		; src
		sub	ecx, edi
		mov	eax, edi
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		mov	edx, [ebp-0Ch]
		add	esp, 0Ch
		add	edi, eax
		cmp	word ptr [ebx+edx*2], 0
		jz	short loc_44146C
		test	esi, esi
		jnz	short loc_441462
		cmp	dword ptr [ebp-8], 1
		jz	short loc_44146C

loc_441462:				; CODE XREF: .text:0044145Aj
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 29h
		inc	edi

loc_44146C:				; CODE XREF: .text:00441456j
					; .text:00441460j
		cmp	esi, 1
		jnz	short loc_4414A1
		cmp	dword ptr [ebp-14h], 0Ah
		jge	short loc_44147E
		mov	eax, (offset aAl_2+3) ;	""
		jmp	short loc_441483
; ---------------------------------------------------------------------------

loc_44147E:				; CODE XREF: .text:00441475j
		mov	eax, (offset a4i_+6) ; "."

loc_441483:				; CODE XREF: .text:0044147Cj
		push	eax
		mov	ecx, edi
		mov	edx, [ebp-14h]
		add	ecx, ecx
		push	edx
		push	(offset	aS1IS+6) ; "/%i%s"
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	edi, eax
		jmp	short loc_4414B0
; ---------------------------------------------------------------------------

loc_4414A1:				; CODE XREF: .text:0044146Fj
		cmp	esi, 3
		jnz	short loc_4414B0
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 29h
		inc	edi

loc_4414B0:				; CODE XREF: .text:0044149Fj
					; .text:004414A4j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 0
		jmp	short loc_4414F7
; ---------------------------------------------------------------------------

loc_4414BB:				; CODE XREF: .text:00441167j
					; .text:00441186j ...
		inc	esi
		cmp	esi, 4
		jl	loc_44115F

loc_4414C5:				; CODE XREF: .text:00441109j
		inc	dword ptr [ebp-8]
		inc	dword ptr [ebp-14h]
		fld	ds:flt_441554
		fld	tbyte ptr [ebp-68h]
		faddp	st(1), st
		fstp	tbyte ptr [ebp-68h]
		cmp	dword ptr [ebp-8], 13h
		jl	loc_4410FF

loc_4414E3:				; CODE XREF: .text:004410F9j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-90h], 12h
		cmp	dword ptr [ebp-4], 27h
		jl	loc_4410A4

loc_4414F7:				; CODE XREF: .text:00440D26j
					; .text:00440E7Aj ...
		call	loc_411014
		mov	eax, edi

loc_4414FE:				; CODE XREF: .text:00440CF6j
					; .text:00440D09j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
tbyte_441508	dt 0.99999899999999999998 ; DATA XREF: .text:00440D49r
		align 4
tbyte_441514	dt 1.000001		; DATA XREF: .text:00440D57r
		align 10h
tbyte_441520	dt 0.99999999998999999999 ; DATA XREF: .text:00440D82r
		align 4
tbyte_44152C	dt 1.00000000001	; DATA XREF: .text:00440D90r
		align 4
tbyte_441538	dt 0.99999999999999899999 ; DATA XREF: .text:00440DC9r
		align 4
tbyte_441544	dt 1.000000000000001	; DATA XREF: .text:00440DD7r
		align 10h
flt_441550	dd 0.0			; DATA XREF: .text:00440DE5r
					; .text:00441326r
flt_441554	dd 1.0			; DATA XREF: .text:00440E82r
					; .text:00440E95r ...
flt_441558	dd 2.0			; DATA XREF: .text:00440EE8r
tbyte_44155C	dt 1.0000000000000000623e-9 ; DATA XREF: .text:00440F03r
		align 4
flt_441568	dd 0.5			; DATA XREF: .text:00440F17r
					; .text:00440FA9r
flt_44156C	dd 10.0			; DATA XREF: .text:004411AEr
					; .text:004411C5r ...
flt_441570	dd 360.5		; DATA XREF: .text:004412AFr
