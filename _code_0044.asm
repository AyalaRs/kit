.code

; ---------------------------------------------------------------------------
; Exported entry 191. _Disasm
; Exported entry 431. Disasm

; int __cdecl Disasm(uchar *cmd, ulong cmdsize,	ulong ip, uchar	*dec, t_disasm *da, int	mode, t_reg *reg, t_predict *predict)
		public Disasm
Disasm:					; CODE XREF: .text:00427BB4p
					; .text:0042DF55p ...
		push	ebp		; _Disasm
		mov	ebp, esp
		add	esp, 0FFFFF4E4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+24h]
		jz	short loc_441595
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_441595
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_44159C

loc_441595:				; CODE XREF: .text:00441587j
					; .text:0044158Dj
		xor	eax, eax
		jmp	loc_44781D
; ---------------------------------------------------------------------------

loc_44159C:				; CODE XREF: .text:00441593j
		cmp	dword ptr [ebp+0Ch], 10h
		jbe	short loc_4415A9
		mov	dword ptr [ebp+0Ch], 10h

loc_4415A9:				; CODE XREF: .text:004415A0j
		mov	edx, [ebp+18h]
		mov	ecx, [ebp+1Ch]
		mov	dword_5E0714, edx
		mov	mode, ecx
		test	byte ptr mode+1, 8
		jz	short loc_4415CE
		and	mode, 0FFFFFDCFh

loc_4415CE:				; CODE XREF: .text:004415C2j
		mov	eax, [ebp+20h]
		xor	edx, edx
		mov	dword_5E071C, eax
		mov	[ebp-28h], edx
		test	byte ptr mode, 2
		jz	loc_441693
		test	byte ptr mode, 1
		jnz	short loc_4415FD
		and	mode, 0FFFFFFFDh
		jmp	loc_441693
; ---------------------------------------------------------------------------

loc_4415FD:				; CODE XREF: .text:004415EFj
		mov	ecx, dword_5E0714
		cmp	dword ptr [ecx+4], 0
		jl	short loc_441614
		mov	eax, dword_5E0714
		cmp	dword ptr [eax+4], 8
		jl	short loc_441620

loc_441614:				; CODE XREF: .text:00441607j
		mov	edx, dword_5E0714
		xor	ecx, ecx
		mov	[edx], ecx
		jmp	short loc_44162B
; ---------------------------------------------------------------------------

loc_441620:				; CODE XREF: .text:00441612j
		mov	eax, dword_5E0714
		and	dword ptr [eax], 0FFh

loc_44162B:				; CODE XREF: .text:0044161Ej
		mov	edx, dword_5E0714
		cmp	dword ptr [edx+8], 0
		jl	short loc_441643
		mov	ecx, dword_5E0714
		cmp	dword ptr [ecx+8], 8
		jl	short loc_44164D

loc_441643:				; CODE XREF: .text:00441635j
		mov	eax, dword_5E0714
		xor	edx, edx
		mov	[eax+8], edx

loc_44164D:				; CODE XREF: .text:00441641j
		mov	ecx, dword_5E0714
		cmp	dword ptr [ecx], 0
		jz	short loc_441661
		cmp	dword_5BE6FC, 0
		jnz	short loc_441693

loc_441661:				; CODE XREF: .text:00441656j
		mov	eax, dword_5E0714
		cmp	dword ptr [eax+8], 0
		jz	short loc_44168C
		mov	edx, dword_5E0714
		mov	ecx, [edx+8]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		mov	edx, hilite.hiliteoperands[ecx*8]
		mov	[ebp-28h], edx
		jmp	short loc_441693
; ---------------------------------------------------------------------------

loc_44168C:				; CODE XREF: .text:0044166Aj
		and	mode, 0FFFFFFFDh

loc_441693:				; CODE XREF: .text:004415E2j
					; .text:004415F8j ...
		mov	eax, dword_5E0714
		mov	edx, [ebp+10h]
		xor	ecx, ecx
		mov	edi, eax
		mov	[eax+0Ch], edx
		or	edx, 0FFFFFFFFh
		mov	[eax+1Ch], ecx
		mov	[eax+28h], edx
		mov	[eax+24h], edx
		xor	ecx, ecx
		mov	[eax+2Ch], ecx
		xor	edx, edx
		mov	[eax+30h], edx
		xor	ecx, ecx
		mov	[eax+34h], ecx
		xor	edx, edx
		mov	[eax+38h], edx
		xor	ecx, ecx
		mov	[eax+3Ch], ecx
		xor	edx, edx
		mov	[eax+40h], edx
		xor	ecx, ecx
		mov	[eax+44h], ecx
		xor	edx, edx
		xor	ecx, ecx
		mov	[eax+48h], edx
		mov	[ebp-4], ecx
		add	edi, 4Ch

loc_4416DE:				; CODE XREF: .text:0044174Ej
		xor	eax, eax
		xor	edx, edx
		mov	[edi], eax
		mov	[edi+4], edx
		xor	ecx, ecx
		xor	eax, eax
		mov	[edi+8], ecx
		mov	[edi+10h], eax
		mov	[edi+0Ch], eax
		xor	edx, edx
		mov	dword ptr [edi+14h], 0FFFFFFFFh
		mov	[edi+1Ch], edx
		mov	[edi+18h], edx
		mov	dword ptr [edi+20h], 0FFFFFFFFh
		xor	eax, eax
		xor	ecx, ecx
		mov	[edi+24h], eax
		xor	eax, eax
		mov	[edi+28h], ecx
		mov	[edi+2Ch], eax
		xor	edx, edx
		xor	ecx, ecx
		mov	[edi+30h], edx
		mov	[edi+34h], ecx
		xor	eax, eax
		xor	edx, edx
		mov	[edi+38h], eax
		mov	[edi+3Ch], edx
		xor	ecx, ecx
		mov	[edi+40h], ecx
		mov	word ptr [edi+60h], 0
		mov	word ptr [edi+260h], 0
		inc	dword ptr [ebp-4]
		add	edi, 460h
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4416DE
		mov	eax, dword_5E0714
		mov	word ptr [eax+11CCh], 0
		mov	edx, dword_5E0714
		mov	word ptr [edx+13CCh], 0
		mov	ecx, dword_5E0714
		xor	eax, eax
		mov	[ecx+16CCh], eax
		mov	edx, dword_5E0714
		mov	word ptr [edx+16D0h], 0
		cmp	dword ptr [ebp+14h], 0
		jz	loc_442D15	; jumptable 004417B3 default case
		mov	ecx, [ebp+14h]
		xor	eax, eax
		mov	al, [ecx]
		and	eax, 1Fh
		mov	[ebp-18h], eax
		mov	edx, [ebp-18h]
		cmp	edx, 1Ah	; switch 27 cases
		ja	loc_442D15	; jumptable 004417B3 default case
		mov	dl, ds:byte_4417BA[edx]
		jmp	ds:off_4417D5[edx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_4417BA	db	0,     0,   0Ah,     9 ; DATA XREF: .text:004417ADr
		db	9,     8,     7,     6 ; indirect table	for switch statement
		db	6,     5,     5,     4
		db	4,     3,     0,     0
		db	2,     0,     0,     0
		db	0,     0,     0,     0
		db	1,     1,     1
off_4417D5	dd offset loc_442D15	; DATA XREF: .text:004417B3r
		dd offset loc_442A55	; jump table for switch	statement
		dd offset loc_44287F
		dd offset loc_4426AB
		dd offset loc_44239B
		dd offset loc_44210D
		dd offset loc_441EF3
		dd offset loc_441D25
		dd offset loc_441BB9
		dd offset loc_441801
		dd offset loc_44209C
; ---------------------------------------------------------------------------

loc_441801:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 cases 3,4
		jmp	short loc_441820
; ---------------------------------------------------------------------------

loc_44180A:				; CODE XREF: .text:0044182Cj
		mov	ecx, [ebp+14h]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 2
		jnz	short loc_44182E
		inc	dword ptr [ebp-38h]

loc_441820:				; CODE XREF: .text:00441808j
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_44182E
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_44180A

loc_44182E:				; CODE XREF: .text:0044181Bj
					; .text:00441826j
		test	byte ptr mode, 1
		jz	short loc_441858
		mov	eax, [ebp-38h]
		mov	ecx, dword_5E0714
		push	eax
		add	ecx, 13CCh
		mov	edx, [ebp-18h]
		push	edx
		push	ecx
		call	loc_43B138
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_44185A
; ---------------------------------------------------------------------------

loc_441858:				; CODE XREF: .text:00441835j
		xor	esi, esi

loc_44185A:				; CODE XREF: .text:00441856j
		mov	eax, [ebp-38h]
		cmp	eax, 10h	; switch 17 cases
		ja	loc_442D15	; jumptable 004417B3 default case
		mov	al, ds:byte_441873[eax]
		jmp	ds:off_441884[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_441873	db	0,     6,     5,     0 ; DATA XREF: .text:00441866r
		db	4,     0,     3,     0 ; indirect table	for switch statement
		db	2,     0,     0,     0
		db	0,     0,     0,     0
		db	1
off_441884	dd offset loc_442D15	; DATA XREF: .text:0044186Cr
		dd offset loc_441A6E	; jump table for switch	statement
		dd offset loc_441A0D
		dd offset loc_4419D1
		dd offset loc_44192A
		dd offset loc_4418FA
		dd offset loc_4418A0
; ---------------------------------------------------------------------------

loc_4418A0:				; CODE XREF: .text:0044186Cj
					; DATA XREF: .text:off_441884o
		test	byte ptr mode, 1 ; jumptable 0044186C case 1
		jz	short loc_4418C6
		add	esi, esi
		push	1		; n
		add	esi, dword_5E0714
		mov	edx, [ebp+8]
		push	edx		; code
		add	esi, 13CCh
		push	esi		; s
		call	HexdumpW
		add	esp, 0Ch

loc_4418C6:				; CODE XREF: .text:004418A7j
		test	byte ptr mode, 4
		jz	loc_441B2F
		push	400h		; mode
		xor	eax, eax
		mov	ecx, [ebp+8]
		mov	edx, dword_5E0714
		add	edx, 16D0h
		mov	al, [ecx]
		push	eax		; c
		push	edx		; s
		call	Commentcharacter
		add	esp, 0Ch
		jmp	loc_441B2F
; ---------------------------------------------------------------------------

loc_4418FA:				; CODE XREF: .text:0044186Cj
					; DATA XREF: .text:off_441884o
		test	byte ptr mode, 1 ; jumptable 0044186C case 2
		jz	loc_441B2F
		mov	ecx, [ebp+8]
		add	esi, esi
		add	esi, dword_5E0714
		movzx	eax, word ptr [ecx]
		push	eax		; u
		add	esi, 13CCh
		push	esi		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_441B2F
; ---------------------------------------------------------------------------

loc_44192A:				; CODE XREF: .text:0044186Cj
					; DATA XREF: .text:off_441884o
		test	byte ptr mode, 5 ; jumptable 0044186C case 4
		jz	loc_441B2F
		test	byte ptr mode, 4
		jz	short loc_44194E
		mov	edx, dword_5E0714
		add	edx, 16D0h
		jmp	short loc_441950
; ---------------------------------------------------------------------------

loc_44194E:				; CODE XREF: .text:0044193Ej
		xor	edx, edx

loc_441950:				; CODE XREF: .text:0044194Cj
		mov	eax, 100h
		push	edx		; comment
		sub	eax, esi
		add	esi, esi
		add	esi, dword_5E0714
		xor	ecx, ecx
		add	esi, 13CCh
		push	eax		; nsymb
		cmp	dword_5BDD00, 0
		push	esi		; symb
		jz	short loc_44197C
		test	byte ptr mode+1, 8
		jz	short loc_441982

loc_44197C:				; CODE XREF: .text:00441971j
		add	ecx, 100h

loc_441982:				; CODE XREF: .text:0044197Aj
		mov	eax, 20000h
		cmp	dword_5BDD04, 0
		jnz	short loc_441995
		add	eax, 0FFFE0000h

loc_441995:				; CODE XREF: .text:0044198Ej
		or	ecx, eax
		mov	edx, 8F00000h
		test	byte ptr mode, 4
		jnz	short loc_4419AB
		add	edx, 0F7100000h

loc_4419AB:				; CODE XREF: .text:004419A3j
		or	ecx, edx
		or	ecx, 1417400h
		push	ecx		; mode
		mov	ecx, dword_5E0714
		mov	eax, [ecx+0Ch]
		push	eax		; amod
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		jmp	loc_441B2F
; ---------------------------------------------------------------------------

loc_4419D1:				; CODE XREF: .text:0044186Cj
					; DATA XREF: .text:off_441884o
		test	byte ptr mode, 1 ; jumptable 0044186C case 6
		jz	loc_441B2F
		mov	eax, [ebp+8]
		add	esi, esi
		add	esi, dword_5E0714
		movzx	edx, word ptr [eax+4]
		push	edx
		add	esi, 13CCh
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		push	eax
		push	offset a04x08x_3 ; "%04X:%08X"
		push	esi		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_441B2F
; ---------------------------------------------------------------------------

loc_441A0D:				; CODE XREF: .text:0044186Cj
					; DATA XREF: .text:off_441884o
		test	byte ptr mode, 1 ; jumptable 0044186C case 8
		jz	loc_441B2F
		mov	edx, [ebp+8]
		mov	eax, esi
		add	eax, eax
		add	eax, dword_5E0714
		mov	ecx, [edx+4]
		push	ecx		; u
		add	eax, 13CCh
		push	eax		; s
		call	Hexprint8W
		add	esi, eax
		mov	edx, dword_5E0714
		add	esp, 8
		mov	word ptr [edx+esi*2+13CCh], 20h
		mov	ecx, [ebp+8]
		inc	esi
		add	esi, esi
		add	esi, dword_5E0714
		mov	eax, [ecx]
		push	eax		; u
		add	esi, 13CCh
		push	esi		; s
		call	Hexprint8W
		add	esp, 8
		jmp	loc_441B2F
; ---------------------------------------------------------------------------

loc_441A6E:				; CODE XREF: .text:0044186Cj
					; DATA XREF: .text:off_441884o
		test	byte ptr mode, 1 ; jumptable 0044186C case 16
		jz	loc_441B2F
		mov	edx, [ebp+8]
		mov	eax, esi
		add	eax, eax
		add	eax, dword_5E0714
		mov	ecx, [edx+0Ch]
		push	ecx		; u
		add	eax, 13CCh
		push	eax		; s
		call	Hexprint8W
		add	esi, eax
		mov	edx, dword_5E0714
		add	esp, 8
		mov	word ptr [edx+esi*2+13CCh], 20h
		inc	esi
		mov	ecx, [ebp+8]
		mov	edx, esi
		add	edx, edx
		mov	eax, [ecx+8]
		add	edx, dword_5E0714
		push	eax		; u
		add	edx, 13CCh
		push	edx		; s
		call	Hexprint8W
		add	esi, eax
		mov	ecx, dword_5E0714
		add	esp, 8
		mov	word ptr [ecx+esi*2+13CCh], 20h
		inc	esi
		mov	eax, [ebp+8]
		mov	ecx, esi
		add	ecx, ecx
		mov	edx, [eax+4]
		add	ecx, dword_5E0714
		push	edx		; u
		add	ecx, 13CCh
		push	ecx		; s
		call	Hexprint8W
		add	esi, eax
		mov	eax, dword_5E0714
		add	esp, 8
		mov	word ptr [eax+esi*2+13CCh], 20h
		mov	edx, [ebp+8]
		inc	esi
		add	esi, esi
		add	esi, dword_5E0714
		mov	ecx, [edx]
		push	ecx		; u
		add	esi, 13CCh
		push	esi		; s
		call	Hexprint8W
		add	esp, 8

loc_441B2F:				; CODE XREF: .text:004418CDj
					; .text:004418F5j ...
		test	byte ptr mode, 8
		jz	loc_442B29
		xor	eax, eax
		mov	[ebp-34h], eax
		xor	esi, esi
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-38h]
		jnb	loc_442B29

loc_441B4F:				; CODE XREF: .text:00441BB2j
		test	esi, esi
		jz	short loc_441B64
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+11CCh], 20h
		inc	esi

loc_441B64:				; CODE XREF: .text:00441B51j
		mov	ecx, [ebp-38h]
		sub	ecx, [ebp-34h]
		mov	[ebp-74h], ecx
		mov	dword ptr [ebp-78h], 4
		mov	eax, [ebp-78h]
		cmp	eax, [ebp-74h]
		jnb	short loc_441B81
		lea	edx, [ebp-78h]
		jmp	short loc_441B84
; ---------------------------------------------------------------------------

loc_441B81:				; CODE XREF: .text:00441B7Aj
		lea	edx, [ebp-74h]

loc_441B84:				; CODE XREF: .text:00441B7Fj
		mov	eax, [edx]
		push	eax		; n
		mov	eax, esi
		mov	ecx, [ebp+8]
		add	eax, eax
		add	ecx, [ebp-34h]
		add	eax, dword_5E0714
		add	eax, 11CCh
		push	ecx		; code
		push	eax		; s
		call	HexdumpW
		add	esp, 0Ch
		add	esi, eax
		add	dword ptr [ebp-34h], 4
		mov	edx, [ebp-34h]
		cmp	edx, [ebp-38h]
		jb	short loc_441B4F
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_441BB9:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 case 5
		jmp	short loc_441BD8
; ---------------------------------------------------------------------------

loc_441BC2:				; CODE XREF: .text:00441BE4j
		mov	ecx, [ebp+14h]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 2
		jnz	short loc_441BE6
		inc	dword ptr [ebp-38h]

loc_441BD8:				; CODE XREF: .text:00441BC0j
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_441BE6
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_441BC2

loc_441BE6:				; CODE XREF: .text:00441BD3j
					; .text:00441BDEj
		mov	eax, [ebp-38h]
		dec	eax
		jz	short loc_441BF6
		sub	eax, 3
		jz	short loc_441C42
		jmp	loc_442D15	; jumptable 004417B3 default case
; ---------------------------------------------------------------------------

loc_441BF6:				; CODE XREF: .text:00441BEAj
		test	byte ptr mode, 1
		jz	loc_441CF6
		mov	edx, [ebp-38h]
		mov	eax, dword_5E0714
		push	edx
		add	eax, 13CCh
		mov	ecx, [ebp-18h]
		push	ecx
		push	eax
		call	loc_43B138
		add	esp, 0Ch
		mov	esi, eax
		add	esi, esi
		add	esi, dword_5E0714
		push	1		; n
		mov	eax, [ebp+8]
		add	esi, 13CCh
		push	eax		; code
		push	esi		; s
		call	HexdumpW
		add	esp, 0Ch
		jmp	loc_441CF6
; ---------------------------------------------------------------------------

loc_441C42:				; CODE XREF: .text:00441BEFj
		mov	edx, [ebp+8]
		mov	eax, dword_5E0714
		mov	ecx, [edx]
		mov	[eax+40h], ecx
		test	byte ptr mode, 5
		jz	loc_441CF6
		mov	edx, [ebp-38h]
		mov	eax, dword_5E0714
		push	edx
		add	eax, 13CCh
		mov	ecx, [ebp-18h]
		push	ecx
		push	eax
		call	loc_43B138
		add	esp, 0Ch
		mov	esi, eax
		test	byte ptr mode, 4
		jz	short loc_441C8E
		mov	eax, dword_5E0714
		add	eax, 16D0h
		jmp	short loc_441C90
; ---------------------------------------------------------------------------

loc_441C8E:				; CODE XREF: .text:00441C80j
		xor	eax, eax

loc_441C90:				; CODE XREF: .text:00441C8Cj
		mov	edx, 100h
		push	eax		; comment
		sub	edx, esi
		add	esi, esi
		add	esi, dword_5E0714
		xor	ecx, ecx
		add	esi, 13CCh
		push	edx		; nsymb
		cmp	dword_5BDD00, 0
		push	esi		; symb
		jz	short loc_441CBC
		test	byte ptr mode+1, 8
		jz	short loc_441CC2

loc_441CBC:				; CODE XREF: .text:00441CB1j
		add	ecx, 100h

loc_441CC2:				; CODE XREF: .text:00441CBAj
		mov	eax, 20000h
		cmp	dword_5BDD04, 0
		jnz	short loc_441CD5
		add	eax, 0FFFE0000h

loc_441CD5:				; CODE XREF: .text:00441CCEj
		or	ecx, eax
		mov	edx, dword_5E0714
		or	ecx, 0C16400h
		push	ecx		; mode
		mov	ecx, [edx+0Ch]
		push	ecx		; amod
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_441CF6:				; CODE XREF: .text:00441BFDj
					; .text:00441C3Dj ...
		test	byte ptr mode, 8
		jz	loc_442B29
		mov	ecx, [ebp-38h]
		mov	edx, dword_5E0714
		push	ecx		; n
		add	edx, 11CCh
		mov	eax, [ebp+8]
		push	eax		; code
		push	edx		; s
		call	HexdumpW
		add	esp, 0Ch
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_441D25:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 case 6
		jmp	short loc_441D44
; ---------------------------------------------------------------------------

loc_441D2E:				; CODE XREF: .text:00441D50j
		mov	ecx, [ebp+14h]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 2
		jnz	short loc_441D52
		inc	dword ptr [ebp-38h]

loc_441D44:				; CODE XREF: .text:00441D2Cj
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_441D52
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_441D2E

loc_441D52:				; CODE XREF: .text:00441D3Fj
					; .text:00441D4Aj
		mov	eax, [ebp-38h]
		dec	eax
		jz	short loc_441D69
		dec	eax
		jz	short loc_441DB5
		sub	eax, 2
		jz	loc_441E02
		jmp	loc_441E4D
; ---------------------------------------------------------------------------

loc_441D69:				; CODE XREF: .text:00441D56j
		test	byte ptr mode, 1
		jz	loc_441EC4
		mov	edx, [ebp-38h]
		mov	eax, dword_5E0714
		push	edx
		add	eax, 13CCh
		mov	ecx, [ebp-18h]
		push	ecx
		push	eax
		call	loc_43B138
		add	esp, 0Ch
		mov	esi, eax
		add	esi, esi
		add	esi, dword_5E0714
		push	1		; n
		mov	eax, [ebp+8]
		add	esi, 13CCh
		push	eax		; code
		push	esi		; s
		call	HexdumpW
		add	esp, 0Ch
		jmp	loc_441EC4
; ---------------------------------------------------------------------------

loc_441DB5:				; CODE XREF: .text:00441D59j
		test	byte ptr mode, 1
		jz	loc_441EC4
		mov	edx, [ebp-38h]
		mov	eax, dword_5E0714
		push	edx
		add	eax, 13CCh
		mov	ecx, [ebp-18h]
		push	ecx
		push	eax
		call	loc_43B138
		mov	esi, eax
		mov	eax, [ebp+8]
		add	esi, esi
		add	esp, 0Ch
		movzx	edx, word ptr [eax]
		add	esi, dword_5E0714
		push	edx		; u
		add	esi, 13CCh
		push	esi		; s
		call	HexprintW
		add	esp, 8
		jmp	loc_441EC4
; ---------------------------------------------------------------------------

loc_441E02:				; CODE XREF: .text:00441D5Ej
		test	byte ptr mode, 1
		jz	loc_441EC4
		mov	ecx, [ebp-38h]
		mov	edx, dword_5E0714
		push	ecx
		add	edx, 13CCh
		mov	eax, [ebp-18h]
		push	eax
		push	edx
		call	loc_43B138
		mov	esi, eax
		mov	eax, [ebp+8]
		add	esi, esi
		add	esp, 0Ch
		add	esi, dword_5E0714
		mov	edx, [eax]
		push	edx		; u
		add	esi, 13CCh
		push	esi		; s
		call	Hexprint8W
		add	esp, 8
		jmp	short loc_441EC4
; ---------------------------------------------------------------------------

loc_441E4D:				; CODE XREF: .text:00441D64j
		test	byte ptr mode, 1
		jz	short loc_441EC4
		push	1
		mov	eax, dword_5E0714
		mov	ecx, [ebp-18h]
		add	eax, 13CCh
		push	ecx
		push	eax
		call	loc_43B138
		mov	esi, eax
		xor	eax, eax
		mov	[ebp-3Ch], eax
		add	esp, 0Ch
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-38h]
		jnb	short loc_441EC4

loc_441E7E:				; CODE XREF: .text:00441EC2j
		cmp	dword ptr [ebp-3Ch], 0
		jbe	short loc_441E95
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 2Ch
		inc	esi

loc_441E95:				; CODE XREF: .text:00441E82j
		push	1		; n
		mov	edx, esi
		mov	eax, [ebp+8]
		add	edx, edx
		add	eax, [ebp-3Ch]
		add	edx, dword_5E0714
		add	edx, 13CCh
		push	eax		; code
		push	edx		; s
		call	HexdumpW
		inc	dword ptr [ebp-3Ch]
		add	esp, 0Ch
		mov	ecx, [ebp-3Ch]
		add	esi, eax
		cmp	ecx, [ebp-38h]
		jb	short loc_441E7E

loc_441EC4:				; CODE XREF: .text:00441D70j
					; .text:00441DB0j ...
		test	byte ptr mode, 8
		jz	loc_442B29
		mov	eax, [ebp-38h]
		mov	ecx, dword_5E0714
		push	eax		; n
		add	ecx, 11CCh
		mov	edx, [ebp+8]
		push	edx		; code
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_441EF3:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 cases 7,8
		jmp	short loc_441F12
; ---------------------------------------------------------------------------

loc_441EFC:				; CODE XREF: .text:00441F1Ej
		mov	eax, [ebp+14h]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 1Fh
		cmp	ecx, 2
		jnz	short loc_441F20
		inc	dword ptr [ebp-38h]

loc_441F12:				; CODE XREF: .text:00441EFAj
		mov	eax, [ebp-38h]
		cmp	eax, [ebp+0Ch]
		jnb	short loc_441F20
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_441EFC

loc_441F20:				; CODE XREF: .text:00441F0Dj
					; .text:00441F18j
		test	byte ptr mode, 1
		jz	short loc_441F99
		push	1
		mov	ecx, dword_5E0714
		mov	edx, [ebp-18h]
		add	ecx, 13CCh
		push	edx
		push	ecx
		call	loc_43B138
		mov	esi, eax
		xor	eax, eax
		mov	[ebp-3Ch], eax
		add	esp, 0Ch
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-38h]
		jnb	short loc_441F99

loc_441F53:				; CODE XREF: .text:00441F97j
		cmp	dword ptr [ebp-3Ch], 0
		jbe	short loc_441F6A
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 2Ch
		inc	esi

loc_441F6A:				; CODE XREF: .text:00441F57j
		push	1		; n
		mov	edx, esi
		mov	eax, [ebp+8]
		add	edx, edx
		add	eax, [ebp-3Ch]
		add	edx, dword_5E0714
		add	edx, 13CCh
		push	eax		; code
		push	edx		; s
		call	HexdumpW
		inc	dword ptr [ebp-3Ch]
		add	esp, 0Ch
		mov	ecx, [ebp-3Ch]
		add	esi, eax
		cmp	ecx, [ebp-38h]
		jb	short loc_441F53

loc_441F99:				; CODE XREF: .text:00441F27j
					; .text:00441F51j
		test	byte ptr mode, 8
		jz	short loc_441FBF
		mov	eax, [ebp-38h]
		mov	ecx, dword_5E0714
		push	eax		; n
		add	ecx, 11CCh
		mov	edx, [ebp+8]
		push	edx		; code
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch

loc_441FBF:				; CODE XREF: .text:00441FA0j
		cmp	dword ptr [ebp-18h], 8
		jnz	loc_442B29
		test	byte ptr mode, 4
		jz	loc_442B29
		mov	eax, dword_5E0714
		push	offset aDump_4	; "DUMP	'"
		add	eax, 16D0h
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		mov	esi, eax
		xor	eax, eax
		mov	[ebp-3Ch], eax
		add	esp, 0Ch
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-38h]
		jnb	short loc_442073

loc_442002:				; CODE XREF: .text:00442071j
		mov	ecx, [ebp+8]
		mov	eax, [ebp-3Ch]
		mov	dl, [ecx+eax]
		mov	[ebp-65h], dl
		mov	cl, [ebp-65h]
		push	ecx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jnz	short loc_442022
		mov	byte ptr [ebp-65h], 2Eh
		jmp	short loc_442054
; ---------------------------------------------------------------------------

loc_442022:				; CODE XREF: .text:0044201Aj
		cmp	byte ptr [ebp-65h], 0
		jz	short loc_442050
		xor	eax, eax
		mov	al, [ebp-65h]
		cmp	eax, 0Ah
		jz	short loc_442050
		xor	edx, edx
		mov	dl, [ebp-65h]
		cmp	edx, 0Dh
		jz	short loc_442050
		xor	ecx, ecx
		mov	cl, [ebp-65h]
		cmp	ecx, 0Ch
		jz	short loc_442050
		xor	eax, eax
		mov	al, [ebp-65h]
		cmp	eax, 9
		jnz	short loc_442054

loc_442050:				; CODE XREF: .text:00442026j
					; .text:00442030j ...
		mov	byte ptr [ebp-65h], 2Eh

loc_442054:				; CODE XREF: .text:00442020j
					; .text:0044204Ej
		mov	ecx, dword_5E0714
		xor	edx, edx
		mov	dl, [ebp-65h]
		mov	[ecx+esi*2+16D0h], dx
		inc	esi
		inc	dword ptr [ebp-3Ch]
		mov	eax, [ebp-3Ch]
		cmp	eax, [ebp-38h]
		jb	short loc_442002

loc_442073:				; CODE XREF: .text:00442000j
		mov	edx, 100h
		push	(offset	aCharC+10h) ; src
		sub	edx, esi
		add	esi, esi
		add	esi, dword_5E0714
		push	edx		; n
		add	esi, 16D0h
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_44209C:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		test	byte ptr mode, 1 ; jumptable 004417B3 case 2
		jz	short loc_4420DD
		push	1
		mov	eax, dword_5E0714
		mov	ecx, [ebp-18h]
		add	eax, 13CCh
		push	ecx
		push	eax
		call	loc_43B138
		add	esp, 0Ch
		mov	esi, eax
		add	esi, esi
		add	esi, dword_5E0714
		push	1		; n
		mov	eax, [ebp+8]
		add	esi, 13CCh
		push	eax		; code
		push	esi		; s
		call	HexdumpW
		add	esp, 0Ch

loc_4420DD:				; CODE XREF: .text:004420A3j
		test	byte ptr mode, 8
		jz	short loc_442101
		push	1		; n
		mov	ecx, dword_5E0714
		mov	edx, [ebp+8]
		add	ecx, 11CCh
		push	edx		; code
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch

loc_442101:				; CODE XREF: .text:004420E4j
		mov	dword ptr [ebp-38h], 1
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_44210D:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 cases 9,10
		jmp	short loc_44212C
; ---------------------------------------------------------------------------

loc_442116:				; CODE XREF: .text:00442138j
		mov	eax, [ebp+14h]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 1Fh
		cmp	ecx, 2
		jnz	short loc_44213A
		inc	dword ptr [ebp-38h]

loc_44212C:				; CODE XREF: .text:00442114j
		mov	eax, [ebp-38h]
		cmp	eax, [ebp+0Ch]
		jnb	short loc_44213A
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_442116

loc_44213A:				; CODE XREF: .text:00442127j
					; .text:00442132j
		test	byte ptr mode, 1
		jz	loc_442301
		mov	edx, [ebp-38h]
		mov	eax, dword_5E0714
		push	edx
		add	eax, 13CCh
		mov	ecx, [ebp-18h]
		push	ecx
		push	eax
		call	loc_43B138
		mov	esi, eax
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-2Ch], eax
		mov	[ebp-34h], edx
		add	esp, 0Ch
		mov	ecx, [ebp-34h]
		cmp	ecx, [ebp-38h]
		jnb	loc_4422D7

loc_44217A:				; CODE XREF: .text:004422D1j
		mov	eax, [ebp+8]
		mov	edx, [ebp-34h]
		cmp	byte ptr [eax+edx], 0
		jnz	loc_442216
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_4421BC
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	offset asc_531AC0 ; "\""
		push	ecx		; n
		add	eax, 13CCh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		xor	edx, edx
		mov	[ebp-2Ch], edx

loc_4421BC:				; CODE XREF: .text:0044218Ej
		cmp	dword ptr [ebp-34h], 0
		jbe	short loc_4421E9
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	offset asc_531AC4 ; ","
		push	ecx		; n
		add	eax, 13CCh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_4421E9:				; CODE XREF: .text:004421C0j
		mov	ecx, esi
		mov	edx, 100h
		add	ecx, ecx
		sub	edx, esi
		add	ecx, dword_5E0714
		push	(offset	aR10+4)	; src
		push	edx		; n
		add	ecx, 13CCh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_4422C8
; ---------------------------------------------------------------------------

loc_442216:				; CODE XREF: .text:00442184j
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_442278
		cmp	dword ptr [ebp-34h], 0
		jbe	short loc_44224A
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset asc_531AC4 ; ","
		push	eax		; n
		add	edx, 13CCh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_44224A:				; CODE XREF: .text:00442220j
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	offset asc_531AC0 ; "\""
		push	ecx		; n
		add	eax, 13CCh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	dword ptr [ebp-2Ch], 1

loc_442278:				; CODE XREF: .text:0044221Aj
		mov	edx, [ebp+8]
		mov	ecx, [ebp-34h]
		cmp	byte ptr [edx+ecx], 22h
		jnz	short loc_4422AE
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset asc_531AC8 ; "\"\""
		push	eax		; n
		add	edx, 13CCh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_4422C8
; ---------------------------------------------------------------------------

loc_4422AE:				; CODE XREF: .text:00442282j
		mov	ecx, [ebp+8]
		mov	eax, [ebp-34h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		mov	ecx, dword_5E0714
		mov	[ecx+esi*2+13CCh], dx
		inc	esi

loc_4422C8:				; CODE XREF: .text:00442211j
					; .text:004422ACj
		inc	dword ptr [ebp-34h]
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-38h]
		jb	loc_44217A

loc_4422D7:				; CODE XREF: .text:00442174j
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_442301
		mov	edx, 100h
		push	offset asc_531AC0 ; "\""
		sub	edx, esi
		add	esi, esi
		add	esi, dword_5E0714
		push	edx		; n
		add	esi, 13CCh
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_442301:				; CODE XREF: .text:00442141j
					; .text:004422DBj
		mov	ecx, mode
		and	ecx, 14h
		cmp	ecx, 14h
		jnz	short loc_442333
		cmp	dword ptr [ebp-18h], 9
		jnz	short loc_442333
		push	100h		; nsymb
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; symb
		push	1		; isstatic
		mov	edx, [ebp+10h]
		push	edx		; _addr
		call	Isstring
		add	esp, 10h

loc_442333:				; CODE XREF: .text:0044230Dj
					; .text:00442313j
		test	byte ptr mode, 8
		jz	loc_442B29
		xor	ecx, ecx
		mov	[ebp-34h], ecx
		xor	esi, esi
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-38h]
		jnb	loc_442B29

loc_442353:				; CODE XREF: .text:00442394j
		test	esi, esi
		jz	short loc_442368
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+11CCh], 20h
		inc	esi

loc_442368:				; CODE XREF: .text:00442355j
		push	1		; n
		mov	eax, esi
		mov	ecx, [ebp+8]
		add	eax, eax
		add	ecx, [ebp-34h]
		add	eax, dword_5E0714
		add	eax, 11CCh
		push	ecx		; code
		push	eax		; s
		call	HexdumpW
		inc	dword ptr [ebp-34h]
		add	esp, 0Ch
		mov	edx, [ebp-34h]
		add	esi, eax
		cmp	edx, [ebp-38h]
		jb	short loc_442353
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_44239B:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 cases 11,12
		jmp	short loc_4423BA
; ---------------------------------------------------------------------------

loc_4423A4:				; CODE XREF: .text:004423C6j
		mov	ecx, [ebp+14h]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 2
		jnz	short loc_4423C8
		inc	dword ptr [ebp-38h]

loc_4423BA:				; CODE XREF: .text:004423A2j
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_4423C8
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_4423A4

loc_4423C8:				; CODE XREF: .text:004423B5j
					; .text:004423C0j
		test	byte ptr mode, 1
		jz	loc_4425EE
		mov	eax, [ebp-38h]
		mov	ecx, dword_5E0714
		push	eax
		add	ecx, 13CCh
		mov	edx, [ebp-18h]
		push	edx
		push	ecx
		call	loc_43B138
		add	esp, 0Ch
		mov	esi, eax
		xor	eax, eax
		mov	[ebp-2Ch], eax
		xor	edx, edx
		mov	[ebp-34h], edx
		jmp	loc_442557
; ---------------------------------------------------------------------------

loc_442403:				; CODE XREF: .text:00442560j
		mov	ecx, [ebp+8]
		mov	eax, [ebp-34h]
		cmp	word ptr [ecx+eax], 0
		jnz	loc_4424A2
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_442447
		mov	ecx, esi
		mov	edx, 100h
		add	ecx, ecx
		sub	edx, esi
		add	ecx, dword_5E0714
		push	offset asc_531AC0 ; "\""
		push	edx		; n
		add	ecx, 13CCh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		xor	eax, eax
		mov	[ebp-2Ch], eax

loc_442447:				; CODE XREF: .text:00442418j
		cmp	dword ptr [ebp-34h], 0
		jbe	short loc_442475
		mov	ecx, esi
		mov	edx, 100h
		add	ecx, ecx
		sub	edx, esi
		add	ecx, dword_5E0714
		push	offset asc_531AC4 ; ","
		push	edx		; n
		add	ecx, 13CCh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_442475:				; CODE XREF: .text:0044244Bj
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	(offset	aR10+4)	; src
		push	eax		; n
		add	edx, 13CCh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_442553
; ---------------------------------------------------------------------------

loc_4424A2:				; CODE XREF: .text:0044240Ej
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_442504
		cmp	dword ptr [ebp-34h], 0
		jbe	short loc_4424D5
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	offset asc_531AC4 ; ","
		push	ecx		; n
		add	eax, 13CCh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_4424D5:				; CODE XREF: .text:004424ACj
		mov	ecx, esi
		mov	edx, 100h
		add	ecx, ecx
		sub	edx, esi
		add	ecx, dword_5E0714
		push	offset asc_531AC0 ; "\""
		push	edx		; n
		add	ecx, 13CCh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	dword ptr [ebp-2Ch], 1

loc_442504:				; CODE XREF: .text:004424A6j
		mov	eax, [ebp+8]
		mov	edx, [ebp-34h]
		cmp	word ptr [eax+edx], 22h
		jnz	short loc_44253A
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	offset asc_531AC8 ; "\"\""
		push	ecx		; n
		add	eax, 13CCh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_442553
; ---------------------------------------------------------------------------

loc_44253A:				; CODE XREF: .text:0044250Fj
		mov	edx, [ebp+8]
		mov	ecx, [ebp-34h]
		mov	ax, [edx+ecx]
		mov	edx, dword_5E0714
		mov	[edx+esi*2+13CCh], ax
		inc	esi

loc_442553:				; CODE XREF: .text:0044249Dj
					; .text:00442538j
		add	dword ptr [ebp-34h], 2

loc_442557:				; CODE XREF: .text:004423FEj
		mov	ecx, [ebp-34h]
		add	ecx, 2
		cmp	ecx, [ebp-38h]
		jbe	loc_442403
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_442594
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset asc_531AC0 ; "\""
		push	eax		; n
		add	edx, 13CCh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_442594:				; CODE XREF: .text:0044256Aj
		mov	ecx, [ebp-34h]
		cmp	ecx, [ebp-38h]
		jnb	short loc_4425EE
		cmp	dword ptr [ebp-34h], 0
		jbe	short loc_4425CA
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset asc_531AC4 ; ","
		push	eax		; n
		add	edx, 13CCh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_4425CA:				; CODE XREF: .text:004425A0j
		mov	ecx, 100h
		push	$CTW0("???") ; src
		sub	ecx, esi
		add	esi, esi
		add	esi, dword_5E0714
		push	ecx		; n
		add	esi, 13CCh
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4425EE:				; CODE XREF: .text:004423CFj
					; .text:0044259Aj
		mov	eax, mode
		and	eax, 14h
		cmp	eax, 14h
		jnz	short loc_442621
		cmp	dword ptr [ebp-18h], 0Bh
		jnz	short loc_442621
		push	100h		; nsymb
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; symb
		push	0		; isstatic
		mov	ecx, [ebp+10h]
		push	ecx		; _addr
		call	Isstring
		add	esp, 10h

loc_442621:				; CODE XREF: .text:004425F9j
					; .text:004425FFj
		test	byte ptr mode, 8
		jz	loc_442B29
		xor	eax, eax
		mov	[ebp-34h], eax
		xor	esi, esi
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-38h]
		jnb	loc_442B29

loc_442641:				; CODE XREF: .text:004426A4j
		test	esi, esi
		jz	short loc_442656
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+11CCh], 20h
		inc	esi

loc_442656:				; CODE XREF: .text:00442643j
		mov	ecx, [ebp-38h]
		sub	ecx, [ebp-34h]
		mov	[ebp-7Ch], ecx
		mov	dword ptr [ebp-80h], 2
		mov	eax, [ebp-80h]
		cmp	eax, [ebp-7Ch]
		jnb	short loc_442673
		lea	edx, [ebp-80h]
		jmp	short loc_442676
; ---------------------------------------------------------------------------

loc_442673:				; CODE XREF: .text:0044266Cj
		lea	edx, [ebp-7Ch]

loc_442676:				; CODE XREF: .text:00442671j
		mov	eax, [edx]
		push	eax		; n
		mov	eax, esi
		mov	ecx, [ebp+8]
		add	eax, eax
		add	ecx, [ebp-34h]
		add	eax, dword_5E0714
		add	eax, 11CCh
		push	ecx		; code
		push	eax		; s
		call	HexdumpW
		add	esp, 0Ch
		add	esi, eax
		add	dword ptr [ebp-34h], 2
		mov	edx, [ebp-34h]
		cmp	edx, [ebp-38h]
		jb	short loc_442641
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_4426AB:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 case 13
		jmp	short loc_4426CA
; ---------------------------------------------------------------------------

loc_4426B4:				; CODE XREF: .text:004426D6j
		mov	ecx, [ebp+14h]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 2
		jnz	short loc_4426D8
		inc	dword ptr [ebp-38h]

loc_4426CA:				; CODE XREF: .text:004426B2j
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_4426D8
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_4426B4

loc_4426D8:				; CODE XREF: .text:004426C5j
					; .text:004426D0j
		test	byte ptr mode, 1
		jz	short loc_442728
		mov	eax, [ebp-38h]
		mov	ecx, dword_5E0714
		push	eax
		add	ecx, 13CCh
		mov	edx, [ebp-18h]
		push	edx
		push	ecx
		call	loc_43B138
		mov	esi, eax
		add	esp, 0Ch
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset aFloat	; "FLOAT "
		push	eax
		add	edx, 13CCh
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax

loc_442728:				; CODE XREF: .text:004426DFj
		mov	ecx, [ebp-38h]
		sub	ecx, 4
		jz	short loc_44273F
		sub	ecx, 4
		jz	short loc_442766
		sub	ecx, 2
		jz	short loc_442790
		jmp	loc_442D15	; jumptable 004417B3 default case
; ---------------------------------------------------------------------------

loc_44273F:				; CODE XREF: .text:0044272Ej
		test	byte ptr mode, 1
		jz	short loc_4427BD
		mov	eax, [ebp+8]
		add	esi, esi
		add	esi, dword_5E0714
		push	dword ptr [eax]	; f
		add	esi, 13CCh
		push	esi		; s
		call	Printfloat4
		add	esp, 8
		jmp	short loc_4427BD
; ---------------------------------------------------------------------------

loc_442766:				; CODE XREF: .text:00442733j
		test	byte ptr mode, 1
		jz	short loc_4427BD
		mov	ecx, [ebp+8]
		add	esi, esi
		add	esi, dword_5E0714
		push	dword ptr [ecx+4]
		push	dword ptr [ecx]	; d
		add	esi, 13CCh
		push	esi		; s
		call	Printfloat8
		add	esp, 0Ch
		jmp	short loc_4427BD
; ---------------------------------------------------------------------------

loc_442790:				; CODE XREF: .text:00442738j
		test	byte ptr mode, 1
		jz	short loc_4427BD
		mov	edx, [ebp+8]
		add	esi, esi
		add	esi, dword_5E0714
		mov	cx, [edx+8]
		add	esi, 13CCh
		push	ecx
		push	dword ptr [edx+4]
		push	dword ptr [edx]	; ext
		push	esi		; s
		call	Printfloat10
		add	esp, 10h

loc_4427BD:				; CODE XREF: .text:00442746j
					; .text:00442764j ...
		test	byte ptr mode, 4
		jz	short loc_4427E3
		mov	eax, [ebp-38h]
		mov	ecx, dword_5E0714
		push	eax		; size
		add	ecx, 16D0h
		mov	edx, [ebp+8]
		push	edx		; data
		push	ecx		; s
		call	Nameoffloat
		add	esp, 0Ch

loc_4427E3:				; CODE XREF: .text:004427C4j
		test	byte ptr mode, 8
		jz	loc_442B29
		xor	eax, eax
		mov	[ebp-34h], eax
		xor	esi, esi
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-38h]
		jnb	loc_442B29

loc_442803:				; CODE XREF: .text:00442878j
		test	esi, esi
		jz	short loc_442818
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+11CCh], 20h
		inc	esi

loc_442818:				; CODE XREF: .text:00442805j
		mov	ecx, [ebp-38h]
		sub	ecx, [ebp-34h]
		mov	[ebp-84h], ecx
		mov	dword ptr [ebp-88h], 4
		mov	eax, [ebp-88h]
		cmp	eax, [ebp-84h]
		jnb	short loc_442844
		lea	edx, [ebp-88h]
		jmp	short loc_44284A
; ---------------------------------------------------------------------------

loc_442844:				; CODE XREF: .text:0044283Aj
		lea	edx, [ebp-84h]

loc_44284A:				; CODE XREF: .text:00442842j
		mov	eax, [edx]
		push	eax		; n
		mov	eax, esi
		mov	ecx, [ebp+8]
		add	eax, eax
		add	ecx, [ebp-34h]
		add	eax, dword_5E0714
		add	eax, 11CCh
		push	ecx		; code
		push	eax		; s
		call	HexdumpW
		add	esp, 0Ch
		add	esi, eax
		add	dword ptr [ebp-34h], 4
		mov	edx, [ebp-34h]
		cmp	edx, [ebp-38h]
		jb	short loc_442803
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_44287F:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	dword ptr [ebp-38h], 1 ; jumptable 004417B3 case 16
		jmp	short loc_44289E
; ---------------------------------------------------------------------------

loc_442888:				; CODE XREF: .text:004428AAj
		mov	ecx, [ebp+14h]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 2
		jnz	short loc_4428AC
		inc	dword ptr [ebp-38h]

loc_44289E:				; CODE XREF: .text:00442886j
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_4428AC
		cmp	dword ptr [ebp-38h], 10h
		jb	short loc_442888

loc_4428AC:				; CODE XREF: .text:00442899j
					; .text:004428A4j
		test	byte ptr mode, 1
		jz	loc_44296B
		cmp	dword ptr [ebp-38h], 10h
		jnz	short loc_4428FB
		mov	eax, dword_5E0714
		push	offset aGuid	; "GUID	"
		add	eax, 13CCh
		push	100h
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		mov	esi, eax
		add	esi, esi
		add	esi, dword_5E0714
		add	esi, 13CCh
		push	esi		; s
		mov	eax, [ebp+8]
		push	eax		; guid
		call	Guidtotext
		add	esp, 8
		jmp	short loc_44296B
; ---------------------------------------------------------------------------

loc_4428FB:				; CODE XREF: .text:004428BDj
		push	1
		mov	ecx, dword_5E0714
		mov	edx, [ebp-18h]
		add	ecx, 13CCh
		push	edx
		push	ecx
		call	loc_43B138
		mov	esi, eax
		xor	eax, eax
		mov	[ebp-3Ch], eax
		add	esp, 0Ch
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-38h]
		jnb	short loc_44296B

loc_442925:				; CODE XREF: .text:00442969j
		cmp	dword ptr [ebp-3Ch], 0
		jbe	short loc_44293C
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 2Ch
		inc	esi

loc_44293C:				; CODE XREF: .text:00442929j
		push	1		; n
		mov	edx, esi
		mov	eax, [ebp+8]
		add	edx, edx
		add	eax, [ebp-3Ch]
		add	edx, dword_5E0714
		add	edx, 13CCh
		push	eax		; code
		push	edx		; s
		call	HexdumpW
		inc	dword ptr [ebp-3Ch]
		add	esp, 0Ch
		mov	ecx, [ebp-3Ch]
		add	esi, eax
		cmp	ecx, [ebp-38h]
		jb	short loc_442925

loc_44296B:				; CODE XREF: .text:004428B3j
					; .text:004428F9j ...
		test	byte ptr mode, 4
		jz	short loc_4429D9
		lea	eax, [ebp-2F0h]
		push	eax		; _name
		mov	edx, [ebp+0Ch]
		push	edx		; ndata
		mov	ecx, [ebp+8]
		push	ecx		; data
		call	Getguidname
		add	esp, 0Ch
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jnz	short loc_4429D9
		mov	eax, dword_5E0714
		push	offset aGuid	; "GUID	"
		add	eax, 16D0h
		push	100h
		push	eax
		call	loc_410A49
		mov	esi, eax
		mov	edx, 100h
		sub	edx, esi
		add	esp, 0Ch
		add	esi, esi
		lea	eax, [ebp-2F0h]
		add	esi, dword_5E0714
		push	eax		; src
		push	edx		; n
		add	esi, 16D0h
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4429D9:				; CODE XREF: .text:00442972j
					; .text:00442992j
		test	byte ptr mode, 8
		jz	loc_442B29
		xor	ecx, ecx
		mov	[ebp-34h], ecx
		xor	esi, esi
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-38h]
		jnb	loc_442B29

loc_4429F9:				; CODE XREF: .text:00442A4Ej
		cmp	dword ptr [ebp-34h], 4
		jz	short loc_442A11
		cmp	dword ptr [ebp-34h], 6
		jz	short loc_442A11
		cmp	dword ptr [ebp-34h], 8
		jz	short loc_442A11
		cmp	dword ptr [ebp-34h], 0Ah
		jnz	short loc_442A22

loc_442A11:				; CODE XREF: .text:004429FDj
					; .text:00442A03j ...
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+11CCh], 20h
		inc	esi

loc_442A22:				; CODE XREF: .text:00442A0Fj
		push	1		; n
		mov	eax, esi
		mov	ecx, [ebp+8]
		add	eax, eax
		add	ecx, [ebp-34h]
		add	eax, dword_5E0714
		add	eax, 11CCh
		push	ecx		; code
		push	eax		; s
		call	HexdumpW
		inc	dword ptr [ebp-34h]
		add	esp, 0Ch
		mov	edx, [ebp-34h]
		add	esi, eax
		cmp	edx, [ebp-38h]
		jb	short loc_4429F9
		jmp	loc_442B29
; ---------------------------------------------------------------------------

loc_442A55:				; CODE XREF: .text:004417B3j
					; DATA XREF: .text:off_4417D5o
		mov	ecx, mode	; jumptable 004417B3 cases 24-26
		and	ecx, 11h
		cmp	ecx, 11h
		jnz	short loc_442A71
		mov	eax, [ebp+10h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		jmp	short loc_442A73
; ---------------------------------------------------------------------------

loc_442A71:				; CODE XREF: .text:00442A61j
		xor	esi, esi

loc_442A73:				; CODE XREF: .text:00442A6Fj
		push	esi		; pmod
		mov	eax, mode
		push	eax		; mode
		lea	edx, [ebp-0B1Ch]
		push	edx		; da
		mov	ecx, [ebp+10h]
		push	ecx		; ip
		mov	eax, [ebp+0Ch]
		push	eax		; size
		mov	edx, [ebp+8]
		push	edx		; cmd
		call	Ndisasm
		add	esp, 18h
		mov	[ebp-38h], eax
		test	byte ptr mode, 8
		jz	short loc_442AC0
		lea	ecx, [ebp-8F0h]
		mov	eax, dword_5E0714
		push	ecx		; src
		add	eax, 11CCh
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_442AC0:				; CODE XREF: .text:00442A9Fj
		test	byte ptr mode, 1
		jz	short loc_442B0B
		lea	edx, [ebp-6F0h]
		mov	ecx, dword_5E0714
		push	edx		; src
		add	ecx, 13CCh
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-4F0h]
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_442B0B:				; CODE XREF: .text:00442AC7j
		mov	ecx, dword_5E0714
		mov	eax, [ebp-0AF8h]
		or	[ecx+2Ch], eax
		mov	edx, dword_5E0714
		mov	ecx, [ebp-0B04h]
		mov	[edx+40h], ecx

loc_442B29:				; CODE XREF: .text:00441B36j
					; .text:00441B49j ...
		mov	eax, [ebp-38h]
		cmp	eax, [ebp+0Ch]
		jnb	short loc_442B36
		lea	edx, [ebp-38h]
		jmp	short loc_442B39
; ---------------------------------------------------------------------------

loc_442B36:				; CODE XREF: .text:00442B2Fj
		lea	edx, [ebp+0Ch]

loc_442B39:				; CODE XREF: .text:00442B34j
		mov	[ebp-8Ch], edx
		mov	dword ptr [ebp-90h], 10h
		mov	eax, [ebp-8Ch]
		mov	ecx, [eax]
		cmp	ecx, [ebp-90h]
		jbe	short loc_442B61
		lea	eax, [ebp-90h]
		jmp	short loc_442B67
; ---------------------------------------------------------------------------

loc_442B61:				; CODE XREF: .text:00442B57j
		mov	eax, [ebp-8Ch]

loc_442B67:				; CODE XREF: .text:00442B5Fj
		mov	edx, [eax]
		mov	[ebp-34h], edx
		mov	ecx, [ebp-34h]
		cmp	ecx, [ebp-38h]
		jnz	loc_442C25
		mov	eax, [ebp-34h]
		mov	ecx, dword_5E0714
		push	eax		; n
		add	ecx, 8Ch
		mov	edx, [ebp+8]
		push	edx		; src
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, dword_5E0714
		mov	dword ptr [eax+4Ch], 3000200h
		cmp	dword ptr [ebp-34h], 4
		ja	short loc_442BBB
		mov	edx, dword_5E0714
		mov	eax, dword_5E0714
		mov	ecx, [edx+8Ch]
		mov	[eax+7Ch], ecx

loc_442BBB:				; CODE XREF: .text:00442BA5j
		cmp	dword ptr [ebp-34h], 4
		jnz	short loc_442BEC
		mov	edx, [ebp+10h]
		push	edx		; _addr
		push	0		; pmod
		call	Findfixup
		add	esp, 8
		mov	[ebp-60h], eax
		test	eax, eax
		jz	short loc_442BEC
		mov	edx, [ebp-60h]
		mov	ecx, [edx]
		cmp	ecx, [ebp+10h]
		jnz	short loc_442BEC
		mov	eax, dword_5E0714
		or	dword ptr [eax+4Ch], 10000h

loc_442BEC:				; CODE XREF: .text:00442BBFj
					; .text:00442BD4j ...
		cmp	dword ptr [ebp-18h], 0Dh
		mov	edx, 0Dh
		jz	short loc_442BFA
		add	edx, 0FFFFFFF7h

loc_442BFA:				; CODE XREF: .text:00442BF5j
		mov	ecx, dword_5E0714
		mov	[ecx+54h], edx
		mov	eax, dword_5E0714
		mov	edx, [ebp-34h]
		mov	[eax+5Ch], edx
		mov	eax, dword_5E0714
		mov	[eax+58h], edx
		mov	ecx, dword_5E0714
		mov	eax, [ebp+10h]
		mov	[ecx+88h], eax

loc_442C25:				; CODE XREF: .text:00442B72j
		test	ebx, ebx
		jz	short loc_442C39
		push	176h		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch

loc_442C39:				; CODE XREF: .text:00442C27j
		mov	edx, dword_5E0714
		mov	ecx, [ebp-38h]
		mov	[edx+10h], ecx
		mov	eax, dword_5E0714
		mov	dword ptr [eax+14h], 1Ch
		mov	edx, dword_5E0714
		xor	ecx, ecx
		mov	[edx+18h], ecx
		test	byte ptr mode, 2
		jz	loc_442D0D
		mov	eax, dword_5E0714
		cmp	dword ptr [eax], 0
		jz	short loc_442C7C
		cmp	dword_5BE6FC, 0
		jnz	short loc_442C88

loc_442C7C:				; CODE XREF: .text:00442C71j
		mov	edx, dword_5E0714
		cmp	dword ptr [edx+8], 0
		jnz	short loc_442C8F

loc_442C88:				; CODE XREF: .text:00442C7Aj
		xor	ecx, ecx
		mov	[ebp-20h], ecx
		jmp	short loc_442CD0
; ---------------------------------------------------------------------------

loc_442C8F:				; CODE XREF: .text:00442C86j
		cmp	dword ptr [ebp-18h], 4
		jz	short loc_442C9B
		cmp	dword ptr [ebp-18h], 5
		jnz	short loc_442CC9

loc_442C9B:				; CODE XREF: .text:00442C93j
		cmp	dword ptr [ebp-34h], 4
		jnz	short loc_442CC9
		test	byte ptr mode, 10h
		jz	short loc_442CC9
		mov	eax, dword_5E0714
		mov	edx, [eax+8Ch]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_442CC9
		mov	dword ptr [ebp-20h], 1Dh
		jmp	short loc_442CD0
; ---------------------------------------------------------------------------

loc_442CC9:				; CODE XREF: .text:00442C99j
					; .text:00442C9Fj ...
		mov	dword ptr [ebp-20h], 1Eh

loc_442CD0:				; CODE XREF: .text:00442C8Dj
					; .text:00442CC7j
		mov	ecx, dword_5E0714
		add	ecx, 13CCh
		push	ecx		; s
		call	_wcslen
		pop	ecx
		push	eax		; n
		mov	eax, [ebp-20h]
		mov	edx, dword_5E0714
		add	edx, 15CCh
		push	eax		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, dword_5E0714
		mov	dword ptr [ecx+16CCh], 1

loc_442D0D:				; CODE XREF: .text:00442C63j
		mov	eax, [ebp-38h]
		jmp	loc_44781D
; ---------------------------------------------------------------------------

loc_442D15:				; CODE XREF: .text:0044178Ej
					; .text:004417A7j ...
		xor	edx, edx	; jumptable 004417B3 default case
		xor	ecx, ecx
		mov	[ebp-38h], ecx
		mov	dword_5E0720, edx

loc_442D22:				; CODE XREF: .text:00442E94j
		mov	eax, [ebp-38h]
		cmp	eax, [ebp+0Ch]
		jb	short loc_442D3C
		xor	edx, edx
		mov	[ebp-38h], edx
		xor	ecx, ecx
		mov	dword_5E0720, ecx
		jmp	loc_442E99
; ---------------------------------------------------------------------------

loc_442D3C:				; CODE XREF: .text:00442D28j
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		cmp	ecx, 65h
		jg	short loc_442D7F
		jz	loc_442E10
		cmp	ecx, 36h
		jg	short loc_442D6C
		jz	loc_442DE0
		sub	ecx, 26h
		jz	short loc_442DBA
		sub	ecx, 8
		jz	short loc_442DCD
		jmp	loc_442E67
; ---------------------------------------------------------------------------

loc_442D6C:				; CODE XREF: .text:00442D55j
		sub	ecx, 3Eh
		jz	short loc_442DF0
		sub	ecx, 26h
		jz	loc_442E00
		jmp	loc_442E67
; ---------------------------------------------------------------------------

loc_442D7F:				; CODE XREF: .text:00442D4Aj
		cmp	ecx, 0F0h
		jg	short loc_442DA2
		jz	loc_442E3A
		sub	ecx, 66h
		jz	loc_442E20
		dec	ecx
		jz	loc_442E2D
		jmp	loc_442E67
; ---------------------------------------------------------------------------

loc_442DA2:				; CODE XREF: .text:00442D85j
		sub	ecx, 0F2h
		jz	loc_442E47
		dec	ecx
		jz	loc_442E57
		jmp	loc_442E67
; ---------------------------------------------------------------------------

loc_442DBA:				; CODE XREF: .text:00442D60j
		mov	dword ptr [ebp-40h], 1
		mov	dword ptr [ebp-44h], 3Fh
		jmp	loc_442E6C
; ---------------------------------------------------------------------------

loc_442DCD:				; CODE XREF: .text:00442D65j
		mov	dword ptr [ebp-40h], 2
		mov	dword ptr [ebp-44h], 3Fh
		jmp	loc_442E6C
; ---------------------------------------------------------------------------

loc_442DE0:				; CODE XREF: .text:00442D57j
		mov	dword ptr [ebp-40h], 4
		mov	dword ptr [ebp-44h], 3Fh
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442DF0:				; CODE XREF: .text:00442D6Fj
		mov	dword ptr [ebp-40h], 8
		mov	dword ptr [ebp-44h], 3Fh
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E00:				; CODE XREF: .text:00442D74j
		mov	dword ptr [ebp-40h], 10h
		mov	dword ptr [ebp-44h], 3Fh
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E10:				; CODE XREF: .text:00442D4Cj
		mov	dword ptr [ebp-40h], 20h
		mov	dword ptr [ebp-44h], 3Fh
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E20:				; CODE XREF: .text:00442D90j
		mov	eax, 40h
		mov	[ebp-44h], eax
		mov	[ebp-40h], eax
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E2D:				; CODE XREF: .text:00442D97j
		mov	edx, 80h
		mov	[ebp-44h], edx
		mov	[ebp-40h], edx
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E3A:				; CODE XREF: .text:00442D87j
		mov	eax, 100h
		mov	[ebp-44h], eax
		mov	[ebp-40h], eax
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E47:				; CODE XREF: .text:00442DA8j
		mov	dword ptr [ebp-40h], 200h
		mov	dword ptr [ebp-44h], 600h
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E57:				; CODE XREF: .text:00442DAFj
		mov	dword ptr [ebp-40h], 400h
		mov	dword ptr [ebp-44h], 600h
		jmp	short loc_442E6C
; ---------------------------------------------------------------------------

loc_442E67:				; CODE XREF: .text:00442D67j
					; .text:00442D7Aj ...
		xor	edx, edx
		mov	[ebp-40h], edx

loc_442E6C:				; CODE XREF: .text:00442DC8j
					; .text:00442DDBj ...
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_442E99
		mov	ecx, dword_5E0720
		and	ecx, [ebp-44h]
		jz	short loc_442E88
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 40h
		jmp	short loc_442E99
; ---------------------------------------------------------------------------

loc_442E88:				; CODE XREF: .text:00442E7Bj
		mov	edx, [ebp-40h]
		or	dword_5E0720, edx
		inc	dword ptr [ebp-38h]
		jmp	loc_442D22
; ---------------------------------------------------------------------------

loc_442E99:				; CODE XREF: .text:00442D37j
					; .text:00442E70j ...
		xor	edi, edi
		xor	eax, eax
		mov	[ebp-64h], eax
		mov	dword_5E073C, 10h
		mov	edx, [ebp-38h]
		add	edx, 3
		cmp	edx, [ebp+0Ch]
		ja	loc_442FF5
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		movzx	edx, word ptr [ecx+eax]
		and	edx, 0C0FEh
		cmp	edx, 0C0C4h
		jnz	loc_442FF5
		test	dword_5E0720, 740h
		jz	short loc_442EF0
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 40h
		jmp	loc_442FDF
; ---------------------------------------------------------------------------

loc_442EF0:				; CODE XREF: .text:00442EDFj
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		cmp	byte ptr [eax+edx], 0C5h
		jnz	short loc_442F1E
		or	dword_5E0720, 10000h
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		movzx	edi, byte ptr [ecx+eax+1]
		mov	dword ptr [ebp-64h], 100h
		add	dword ptr [ebp-38h], 2
		jmp	short loc_442F8B
; ---------------------------------------------------------------------------

loc_442F1E:				; CODE XREF: .text:00442EFAj
		or	dword_5E0720, 20000h
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		movzx	edi, byte ptr [eax+edx+2]
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx+1]
		shl	ecx, 8
		add	edi, ecx
		mov	eax, edi
		and	eax, 1F00h
		sub	eax, 100h
		jz	short loc_442F62
		sub	eax, 100h
		jz	short loc_442F6F
		sub	eax, 100h
		jz	short loc_442F7C
		jmp	short loc_442F89
; ---------------------------------------------------------------------------

loc_442F62:				; CODE XREF: .text:00442F50j
		mov	dword ptr [ebp-64h], 100h
		add	dword ptr [ebp-38h], 3
		jmp	short loc_442F8B
; ---------------------------------------------------------------------------

loc_442F6F:				; CODE XREF: .text:00442F57j
		mov	dword ptr [ebp-64h], 10100h
		add	dword ptr [ebp-38h], 3
		jmp	short loc_442F8B
; ---------------------------------------------------------------------------

loc_442F7C:				; CODE XREF: .text:00442F5Ej
		mov	dword ptr [ebp-64h], 20100h
		add	dword ptr [ebp-38h], 3
		jmp	short loc_442F8B
; ---------------------------------------------------------------------------

loc_442F89:				; CODE XREF: .text:00442F60j
		xor	edi, edi

loc_442F8B:				; CODE XREF: .text:00442F1Cj
					; .text:00442F6Dj ...
		test	edi, edi
		jz	short loc_442FDF
		test	edi, 4
		jz	short loc_442FA1
		mov	dword_5E073C, 20h

loc_442FA1:				; CODE XREF: .text:00442F95j
		mov	eax, edi
		mov	edx, edi
		not	eax
		shr	eax, 3
		and	edx, 3
		and	eax, 7
		dec	edx
		mov	dword_5E0738, eax
		jz	short loc_442FC0
		dec	edx
		jz	short loc_442FC9
		dec	edx
		jz	short loc_442FD5
		jmp	short loc_442FDF
; ---------------------------------------------------------------------------

loc_442FC0:				; CODE XREF: .text:00442FB6j
		or	dword_5E0720, 40h
		jmp	short loc_442FDF
; ---------------------------------------------------------------------------

loc_442FC9:				; CODE XREF: .text:00442FB9j
		or	dword_5E0720, 400h
		jmp	short loc_442FDF
; ---------------------------------------------------------------------------

loc_442FD5:				; CODE XREF: .text:00442FBCj
		or	dword_5E0720, 200h

loc_442FDF:				; CODE XREF: .text:00442EEBj
					; .text:00442F8Dj ...
		mov	ecx, [ebp-38h]
		cmp	ecx, [ebp+0Ch]
		jb	short loc_442FF5
		xor	eax, eax
		xor	edi, edi
		mov	[ebp-38h], eax
		xor	eax, eax
		mov	dword_5E0720, eax

loc_442FF5:				; CODE XREF: .text:00442EB3j
					; .text:00442ECFj ...
		cmp	dword ptr [ebp-38h], 4
		ja	short loc_443007
		mov	edx, dword_5E0714
		test	byte ptr [edx+2Ch], 40h
		jz	short loc_443027

loc_443007:				; CODE XREF: .text:00442FF9j
		cmp	dword ptr [ebp-38h], 4
		jbe	short loc_44301A
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 80h

loc_44301A:				; CODE XREF: .text:0044300Bj
		xor	eax, eax
		xor	edx, edx
		mov	dword_5E0720, edx
		mov	[ebp-38h], eax

loc_443027:				; CODE XREF: .text:00443005j
		mov	ecx, dword_5E0714
		mov	eax, dword_5E0720
		mov	[ecx+1Ch], eax
		mov	edx, dword_5E0714
		mov	ecx, [ebp-38h]
		mov	[edx+20h], ecx
		mov	eax, [ebp-38h]
		add	eax, 4
		cmp	eax, [ebp+0Ch]
		ja	short loc_44305A
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		mov	eax, [edx+ecx]
		mov	[ebp-48h], eax
		jmp	short loc_4430AE
; ---------------------------------------------------------------------------

loc_44305A:				; CODE XREF: .text:0044304Aj
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		xor	eax, eax
		mov	al, [edx+ecx]
		mov	[ebp-48h], eax
		mov	edx, [ebp-38h]
		inc	edx
		cmp	edx, [ebp+0Ch]
		jnb	short loc_44307E
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		mov	dl, [ecx+eax+1]
		mov	[ebp-47h], dl

loc_44307E:				; CODE XREF: .text:0044306Fj
		mov	ecx, [ebp-38h]
		add	ecx, 2
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_443096
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		mov	cl, [eax+edx+2]
		mov	[ebp-46h], cl

loc_443096:				; CODE XREF: .text:00443087j
		mov	eax, [ebp-38h]
		add	eax, 3
		cmp	eax, [ebp+0Ch]
		jnb	short loc_4430AE
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		mov	al, [edx+ecx+3]
		mov	[ebp-45h], al

loc_4430AE:				; CODE XREF: .text:00443058j
					; .text:0044309Fj
		xor	eax, eax
		xor	ecx, ecx
		mov	[ebp-1Ch], eax
		mov	[ebp-30h], ecx
		mov	esi, [ebp-48h]
		xor	edx, edx
		and	esi, 3FFFh
		mov	dword_5E0734, edx
		shl	esi, 3
		mov	dword_5E0730, edx
		add	esi, dword_5BDD0C

loc_4430D8:				; CODE XREF: .text:0044351Ej
		test	esi, esi
		jz	loc_443523
		cmp	dword ptr [esi], 0
		jz	loc_443523
		mov	eax, [esi]
		mov	[ebp-6Ch], eax
		mov	edx, [ebp-6Ch]
		mov	eax, [ebp-6Ch]
		mov	ecx, [edx+14h]
		xor	ecx, [ebp-48h]
		and	ecx, [eax+10h]
		jnz	loc_44351B
		mov	edx, [ebp-6Ch]
		mov	ecx, [edx+4]
		mov	[ebp-58h], ecx
		test	byte ptr [ebp-55h], 10h
		jz	short loc_443184
		cmp	dword_5BDCE4, 0
		jz	short loc_443184
		mov	eax, [ebp+1Ch]
		and	eax, 11h
		cmp	eax, 11h
		jnz	short loc_443184
		mov	edx, [ebp-6Ch]
		test	byte ptr [edx+8], 0Fh
		jz	short loc_443184
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_443154
		mov	byte ptr [ebp-6Dh], 0
		push	1		; datasize
		lea	ecx, [ebp-6Dh]
		push	ecx		; data
		push	42h		; type
		mov	eax, [ebp+10h]
		push	eax		; _addr
		call	Finddata
		mov	dword ptr [ebp-30h], 1
		add	esp, 10h

loc_443154:				; CODE XREF: .text:00443133j
		test	byte ptr [ebp-6Dh], 1
		jz	short loc_44316C
		mov	edx, [ebp-6Ch]
		mov	ecx, [edx+8]
		and	ecx, 3
		cmp	ecx, 1
		jz	loc_44351B

loc_44316C:				; CODE XREF: .text:00443158j
		test	byte ptr [ebp-6Dh], 2
		jz	short loc_443184
		mov	eax, [ebp-6Ch]
		mov	edx, [eax+8]
		and	edx, 0Ch
		cmp	edx, 4
		jz	loc_44351B

loc_443184:				; CODE XREF: .text:00443110j
					; .text:00443119j ...
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+8]
		test	al, 10h
		jz	short loc_44319B
		cmp	dword_5BDCEC, 0
		jnz	loc_44351B

loc_44319B:				; CODE XREF: .text:0044318Cj
		mov	edx, eax
		and	edx, 70100h
		cmp	edx, [ebp-64h]
		jnz	loc_44351B
		test	ah, 1
		jz	short loc_4431E6
		mov	ecx, [ebp-6Ch]
		test	byte ptr [ecx+9], 6
		jnz	short loc_4431C6
		test	edi, 4
		jnz	loc_44351B

loc_4431C6:				; CODE XREF: .text:004431B8j
		mov	eax, [ebp-6Ch]
		mov	edx, [eax+8]
		and	edx, 600h
		cmp	edx, 400h
		jnz	short loc_4431E6
		test	edi, 4
		jz	loc_44351B

loc_4431E6:				; CODE XREF: .text:004431AFj
					; .text:004431D8j
		test	dword ptr [ebp-58h], 0CFFC0h
		jnz	short loc_4431FB
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_443523
; ---------------------------------------------------------------------------

loc_4431FB:				; CODE XREF: .text:004431EDj
		mov	ecx, [ebp-58h]
		and	ecx, 0F000h
		cmp	ecx, 6000h
		jg	short loc_443252
		jz	loc_4432FF
		cmp	ecx, 3000h
		jg	short loc_443235
		jz	loc_4432BC
		sub	ecx, 1000h
		jz	short loc_443287
		sub	ecx, 1000h
		jz	short loc_44329F
		jmp	loc_443344
; ---------------------------------------------------------------------------

loc_443235:				; CODE XREF: .text:00443218j
		sub	ecx, 4000h
		jz	loc_4432D6
		sub	ecx, 1000h
		jz	loc_4432E8
		jmp	loc_443344
; ---------------------------------------------------------------------------

loc_443252:				; CODE XREF: .text:0044320Aj
		sub	ecx, 7000h
		jz	loc_443319
		sub	ecx, 1000h
		jz	loc_443328
		sub	ecx, 1000h
		jz	loc_443328
		sub	ecx, 1000h
		jz	loc_443337
		jmp	loc_443344
; ---------------------------------------------------------------------------

loc_443287:				; CODE XREF: .text:00443226j
		mov	eax, dword_5E0720
		and	eax, 640h
		cmp	eax, 40h
		jnz	loc_44351B
		jmp	loc_443344
; ---------------------------------------------------------------------------

loc_44329F:				; CODE XREF: .text:0044322Ej
		mov	edx, dword_5E0720
		and	edx, 640h
		cmp	edx, 200h
		jnz	loc_44351B
		jmp	loc_443344
; ---------------------------------------------------------------------------

loc_4432BC:				; CODE XREF: .text:0044321Aj
		mov	ecx, dword_5E0720
		and	ecx, 640h
		cmp	ecx, 400h
		jnz	loc_44351B
		jmp	short loc_443344
; ---------------------------------------------------------------------------

loc_4432D6:				; CODE XREF: .text:0044323Bj
		test	dword_5E0720, 640h
		jnz	loc_44351B
		jmp	short loc_443344
; ---------------------------------------------------------------------------

loc_4432E8:				; CODE XREF: .text:00443247j
		mov	eax, dword_5E0720
		and	eax, 600h
		cmp	eax, 200h
		jnz	loc_44351B
		jmp	short loc_443344
; ---------------------------------------------------------------------------

loc_4432FF:				; CODE XREF: .text:0044320Cj
		mov	edx, dword_5E0720
		and	edx, 600h
		cmp	edx, 400h
		jnz	loc_44351B
		jmp	short loc_443344
; ---------------------------------------------------------------------------

loc_443319:				; CODE XREF: .text:00443258j
		test	byte ptr dword_5E0720+1, 6
		jnz	loc_44351B
		jmp	short loc_443344
; ---------------------------------------------------------------------------

loc_443328:				; CODE XREF: .text:00443264j
					; .text:00443270j
		test	byte ptr dword_5E0720+1, 4
		jz	loc_44351B
		jmp	short loc_443344
; ---------------------------------------------------------------------------

loc_443337:				; CODE XREF: .text:0044327Cj
		test	byte ptr dword_5E0720+1, 2
		jz	loc_44351B

loc_443344:				; CODE XREF: .text:00443230j
					; .text:0044324Dj ...
		test	byte ptr [ebp-57h], 1
		jz	short loc_443357
		test	byte ptr dword_5E0720, 40h
		jz	loc_44351B

loc_443357:				; CODE XREF: .text:00443348j
		test	byte ptr [ebp-57h], 2
		jz	short loc_44336A
		test	byte ptr dword_5E0720, 40h
		jnz	loc_44351B

loc_44336A:				; CODE XREF: .text:0044335Bj
		test	byte ptr [ebp-57h], 4
		jz	short loc_44337D
		test	byte ptr dword_5E0720, 80h
		jz	loc_44351B

loc_44337D:				; CODE XREF: .text:0044336Ej
		test	byte ptr [ebp-57h], 8
		jz	short loc_443390
		test	byte ptr dword_5E0720, 80h
		jnz	loc_44351B

loc_443390:				; CODE XREF: .text:00443381j
		test	byte ptr [ebp-58h], 80h
		jz	short loc_4433B5
		cmp	dword_5BDCE8, 0
		jz	short loc_4433B5
		test	byte ptr mode+1, 8
		jnz	short loc_4433B5
		test	byte ptr dword_5E0720, 0B7h
		jz	loc_44351B

loc_4433B5:				; CODE XREF: .text:00443394j
					; .text:0044339Dj ...
		test	byte ptr [ebp-56h], 4
		jz	short loc_4433F2
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+0Ch]
		add	eax, [ebp-38h]
		cmp	eax, [ebp+0Ch]
		jnb	loc_443523
		mov	edx, [ebp-6Ch]
		mov	ecx, [edx+0Ch]
		add	ecx, [ebp-38h]
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+ecx]
		and	edx, 0C0h
		cmp	edx, 0C0h
		jz	loc_44351B
		jmp	short loc_44342D
; ---------------------------------------------------------------------------

loc_4433F2:				; CODE XREF: .text:004433B9j
		test	byte ptr [ebp-56h], 8
		jz	short loc_44342D
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+0Ch]
		add	eax, [ebp-38h]
		cmp	eax, [ebp+0Ch]
		jnb	loc_443523
		mov	edx, [ebp-6Ch]
		mov	ecx, [edx+0Ch]
		add	ecx, [ebp-38h]
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+ecx]
		and	edx, 0C0h
		cmp	edx, 0C0h
		jnz	loc_44351B

loc_44342D:				; CODE XREF: .text:004433F0j
					; .text:004433F6j
		test	byte ptr [ebp-58h], 40h
		jz	loc_443512
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+0Ch]
		add	eax, [ebp-38h]
		mov	[ebp-34h], eax
		mov	edx, [ebp-34h]
		cmp	edx, [ebp+0Ch]
		jnb	loc_443523
		test	byte ptr dword_5E0720, 80h
		jz	short loc_443479
		mov	ecx, [ebp+8]
		mov	eax, [ebp-34h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		mov	ecx, edx
		shl	ecx, 3
		sub	ecx, edx
		lea	ecx, [ecx+ecx*2]
		mov	eax, dword ptr tmpcmdinfo._ip[ecx*8]
		add	[ebp-34h], eax
		jmp	short loc_4434C9
; ---------------------------------------------------------------------------

loc_443479:				; CODE XREF: .text:00443456j
		mov	edx, [ebp+8]
		mov	ecx, [ebp-34h]
		xor	eax, eax
		mov	al, [edx+ecx]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset stru_593CC6
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4434A2
		mov	ecx, [eax]
		add	[ebp-34h], ecx
		jmp	short loc_4434C9
; ---------------------------------------------------------------------------

loc_4434A2:				; CODE XREF: .text:00443499j
		mov	edx, [ebp-34h]
		inc	edx
		cmp	edx, [ebp+0Ch]
		jnb	short loc_443523
		mov	ecx, [ebp+8]
		mov	edx, [ebp-34h]
		movzx	ecx, byte ptr [ecx+edx+1]
		mov	edx, ecx
		shl	edx, 3
		sub	edx, ecx
		lea	edx, [edx+edx*2]
		mov	eax, [eax+4]
		mov	ecx, [eax+edx*8]
		add	[ebp-34h], ecx

loc_4434C9:				; CODE XREF: .text:00443477j
					; .text:004434A0j
		mov	eax, [ebp-34h]
		cmp	eax, [ebp+0Ch]
		jnb	short loc_443523
		mov	edx, [ebp+8]
		mov	ecx, [ebp-34h]
		mov	al, [edx+ecx]
		mov	edx, [ebp-6Ch]
		cmp	al, [edx+18h]
		jz	short loc_443508
		test	byte ptr [ebp-55h], 8
		jz	short loc_44351B
		mov	ecx, [ebp+8]
		mov	eax, [ebp-34h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		mov	eax, [ebp-6Ch]
		mov	ecx, 20h
		test	byte ptr [eax+9], 1
		jnz	short loc_443504
		add	ecx, 0FFFFFFE8h

loc_443504:				; CODE XREF: .text:004434FFj
		cmp	edx, ecx
		jge	short loc_44351B

loc_443508:				; CODE XREF: .text:004434E0j
		mov	dword_5E0730, 1

loc_443512:				; CODE XREF: .text:00443431j
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_443523
; ---------------------------------------------------------------------------

loc_44351B:				; CODE XREF: .text:004430FDj
					; .text:00443166j ...
		mov	esi, [esi+4]
		jmp	loc_4430D8
; ---------------------------------------------------------------------------

loc_443523:				; CODE XREF: .text:004430DAj
					; .text:004430E3j ...
		cmp	dword ptr [ebp-1Ch], 0
		jnz	loc_4437C5
		xor	edx, edx
		cmp	dword_5E0720, 0
		mov	[ebp-6Ch], edx
		jz	loc_4435CA
		mov	eax, dword_5E0714
		xor	ecx, ecx
		mov	[ebp-38h], ecx
		xor	edx, edx
		mov	[eax+20h], edx
		xor	ecx, ecx
		mov	dword_5E0720, ecx
		mov	eax, dword_5E0714
		mov	[eax+1Ch], ecx
		mov	eax, [ebp-38h]
		mov	edx, [ebp+8]
		movzx	edx, byte ptr [edx+eax]
		and	edx, 3FFFh
		mov	[ebp-48h], edx
		mov	esi, [ebp-48h]
		shl	esi, 3
		add	esi, dword_5BDD0C

loc_44357D:				; CODE XREF: .text:004435C8j
		test	esi, esi
		jz	short loc_443586
		cmp	dword ptr [esi], 0
		jnz	short loc_44358D

loc_443586:				; CODE XREF: .text:0044357Fj
		xor	eax, eax
		mov	[ebp-6Ch], eax
		jmp	short loc_4435CA
; ---------------------------------------------------------------------------

loc_44358D:				; CODE XREF: .text:00443584j
		mov	edx, [esi]
		mov	[ebp-6Ch], edx
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+4]
		and	eax, 1Fh
		cmp	eax, 1Eh
		jnz	short loc_4435C5
		mov	edx, [ebp-6Ch]
		mov	eax, [ebp-6Ch]
		mov	ecx, [edx+14h]
		xor	ecx, [ebp-48h]
		and	ecx, [eax+10h]
		jnz	short loc_4435C5
		mov	edx, [ebp-6Ch]
		mov	eax, dword_5E0714
		mov	ecx, [edx+4]
		mov	[ebp-58h], ecx
		or	dword ptr [eax+2Ch], 1
		jmp	short loc_4435CA
; ---------------------------------------------------------------------------

loc_4435C5:				; CODE XREF: .text:0044359Ej
					; .text:004435AFj
		mov	esi, [esi+4]
		jmp	short loc_44357D
; ---------------------------------------------------------------------------

loc_4435CA:				; CODE XREF: .text:00443539j
					; .text:0044358Bj ...
		cmp	dword ptr [ebp-6Ch], 0
		jnz	loc_4437C5
		test	byte ptr mode, 8
		jz	short loc_4435F8
		push	1		; n
		mov	ecx, dword_5E0714
		mov	edx, [ebp+8]
		add	ecx, 11CCh
		push	edx		; code
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch

loc_4435F8:				; CODE XREF: .text:004435DBj
		test	byte ptr mode, 1
		jz	loc_4436C6
		cmp	dword_5BDCC8, 2
		jnz	short loc_443632
		mov	eax, off_52FF08
		mov	edx, dword_5E0714
		push	eax
		add	edx, 13CCh
		push	100h
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_443681
; ---------------------------------------------------------------------------

loc_443632:				; CODE XREF: .text:0044360Cj
		cmp	dword_5BDCC8, 3
		jnz	short loc_44365F
		mov	eax, off_530010
		mov	edx, dword_5E0714
		push	eax
		add	edx, 13CCh
		push	100h
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_443681
; ---------------------------------------------------------------------------

loc_44365F:				; CODE XREF: .text:00443639j
		mov	eax, off_52FF8C
		mov	edx, dword_5E0714
		push	eax
		add	edx, 13CCh
		push	100h
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	esi, eax

loc_443681:				; CODE XREF: .text:00443630j
					; .text:0044365Dj
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	(offset	aFar+6)	; src
		push	eax		; n
		add	edx, 13CCh
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		add	esi, esi
		add	esi, dword_5E0714
		push	1		; n
		mov	ecx, [ebp+8]
		add	esi, 13CCh
		push	ecx		; code
		push	esi		; s
		call	HexdumpW
		add	esp, 0Ch

loc_4436C6:				; CODE XREF: .text:004435FFj
		mov	eax, dword_5E0714
		mov	dword ptr [eax+10h], 1
		mov	edx, dword_5E0714
		xor	ecx, ecx
		mov	[edx+20h], ecx
		mov	eax, dword_5E0714
		xor	edx, edx
		mov	[eax+1Ch], edx
		mov	ecx, dword_5E0714
		mov	dword ptr [ecx+14h], 1Fh
		mov	eax, dword_5E0714
		xor	edx, edx
		mov	[eax+18h], edx
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 1
		test	ebx, ebx
		jz	short loc_44371C
		push	176h		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch

loc_44371C:				; CODE XREF: .text:0044370Aj
		test	byte ptr mode, 4
		jz	short loc_443749
		push	offset aUnknownCommand ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_443749:				; CODE XREF: .text:00443723j
		test	byte ptr mode, 2
		jz	short loc_4437BB
		mov	edx, dword_5E0714
		cmp	dword ptr [edx], 0
		jz	short loc_443766
		cmp	dword_5BE6FC, 0
		jnz	short loc_443772

loc_443766:				; CODE XREF: .text:0044375Bj
		mov	ecx, dword_5E0714
		cmp	dword ptr [ecx+8], 0
		jnz	short loc_443779

loc_443772:				; CODE XREF: .text:00443764j
		xor	eax, eax
		mov	[ebp-20h], eax
		jmp	short loc_443780
; ---------------------------------------------------------------------------

loc_443779:				; CODE XREF: .text:00443770j
		mov	dword ptr [ebp-20h], 13h

loc_443780:				; CODE XREF: .text:00443777j
		mov	edx, dword_5E0714
		add	edx, 13CCh
		push	edx		; s
		call	_wcslen
		pop	ecx
		push	eax		; n
		mov	eax, dword_5E0714
		mov	ecx, [ebp-20h]
		push	ecx		; c
		add	eax, 15CCh
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, dword_5E0714
		mov	dword ptr [edx+16CCh], 1

loc_4437BB:				; CODE XREF: .text:00443750j
		mov	eax, 1
		jmp	loc_44781D
; ---------------------------------------------------------------------------

loc_4437C5:				; CODE XREF: .text:00443527j
					; .text:004435CEj
		test	byte ptr [ebp-57h], 0FFh
		jz	short loc_443835
		mov	edx, [ebp-58h]
		and	edx, 0F000h
		cmp	edx, 3000h
		jg	short loc_4437F0
		jz	short loc_443802
		sub	edx, 1000h
		jz	short loc_443802
		sub	edx, 1000h
		jz	short loc_443802
		jmp	short loc_443818
; ---------------------------------------------------------------------------

loc_4437F0:				; CODE XREF: .text:004437DAj
		sub	edx, 5000h
		jz	short loc_44380E
		sub	edx, 1000h
		jz	short loc_44380E
		jmp	short loc_443818
; ---------------------------------------------------------------------------

loc_443802:				; CODE XREF: .text:004437DCj
					; .text:004437E4j ...
		and	dword_5E0720, 0FFFFF9BFh
		jmp	short loc_443818
; ---------------------------------------------------------------------------

loc_44380E:				; CODE XREF: .text:004437F6j
					; .text:004437FEj
		and	dword_5E0720, 0FFFFF9FFh

loc_443818:				; CODE XREF: .text:004437EEj
					; .text:00443800j ...
		test	byte ptr [ebp-57h], 1
		jz	short loc_443825
		and	dword_5E0720, 0FFFFFFBFh

loc_443825:				; CODE XREF: .text:0044381Cj
		test	byte ptr [ebp-57h], 4
		jz	short loc_443835
		and	dword_5E0720, 0FFFFFF7Fh

loc_443835:				; CODE XREF: .text:004437C9j
					; .text:00443829j
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+0Ch]
		add	[ebp-38h], eax
		mov	edx, [ebp-38h]
		cmp	edx, [ebp+0Ch]
		jbe	short loc_443855
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 2
		jmp	loc_445909
; ---------------------------------------------------------------------------

loc_443855:				; CODE XREF: .text:00443844j
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dword_5E0724, eax
		xor	ecx, ecx
		mov	dword_5E0728, edx
		mov	dword_5E072C, ecx
		xor	eax, eax
		xor	edx, edx
		mov	dword_5E0740, eax
		mov	dword_5E0744, edx
		xor	ecx, ecx
		mov	edx, [ebp-58h]
		mov	dword_5E0748, ecx
		mov	eax, dword_5E0714
		mov	[eax+14h], edx
		mov	ecx, [ebp-6Ch]
		mov	edx, dword_5E0714
		mov	eax, [ecx+8]
		mov	[edx+18h], eax
		test	byte ptr [ebp-58h], 20h
		jz	short loc_4438CD
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		test	byte ptr [ecx+eax-1], 1
		jnz	short loc_4438CD
		test	byte ptr dword_5E0720, 40h
		jz	short loc_4438C4
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 1

loc_4438C4:				; CODE XREF: .text:004438B8j
		mov	dword ptr [ebp-5Ch], 1
		jmp	short loc_4438E6
; ---------------------------------------------------------------------------

loc_4438CD:				; CODE XREF: .text:004438A2j
					; .text:004438AFj
		test	byte ptr dword_5E0720, 40h
		jz	short loc_4438DF
		mov	dword ptr [ebp-5Ch], 2
		jmp	short loc_4438E6
; ---------------------------------------------------------------------------

loc_4438DF:				; CODE XREF: .text:004438D4j
		mov	dword ptr [ebp-5Ch], 4

loc_4438E6:				; CODE XREF: .text:004438CBj
					; .text:004438DDj
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-10h], ecx
		mov	[ebp-4], eax
		mov	edx, [ebp-6Ch]
		lea	ecx, [edx+1Ch]
		mov	[ebp-94h], ecx

loc_4438FC:				; CODE XREF: .text:00445592j
		mov	eax, [ebp-94h]
		mov	edx, [eax]
		mov	[ebp-50h], edx
		test	byte ptr [ebp-50h], 0FFh
		jz	loc_445598
		test	byte ptr [ebp-4Dh], 40h
		jz	short loc_443924
		test	byte ptr mode+1, 4
		jnz	loc_445584

loc_443924:				; CODE XREF: .text:00443915j
		mov	edi, [ebp-10h]
		mov	eax, edi
		shl	edi, 4
		add	edi, eax
		lea	edi, [eax+edi*2]
		shl	edi, 5
		add	edi, dword_5E0714
		add	edi, 4Ch
		inc	dword ptr [ebp-10h]
		mov	edx, [ebp-50h]
		mov	[edi+4], edx
		mov	ecx, [ebp-50h]
		and	ecx, 0FFh
		cmp	ecx, 85h	; switch 134 cases
		ja	loc_4454BF	; jumptable 0044395B default case
		jmp	ds:off_443962[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_443962	dd offset loc_4454BF, offset loc_443B7A, offset	loc_443B9D
					; DATA XREF: .text:0044395Br
		dd offset loc_443BC0, offset loc_443BE3, offset	loc_443C06 ; jump table	for switch statement
		dd offset loc_443C29, offset loc_443C4C, offset	loc_443C75
		dd offset loc_443C98, offset loc_443CBB, offset	loc_443CDE
		dd offset loc_443D01, offset loc_443D30, offset	loc_443D6D
		dd offset loc_443D9C, offset loc_443DCB, offset	loc_443E21
		dd offset loc_443E6B, offset loc_443EB5, offset	loc_443EF2
		dd offset loc_4454CB, offset loc_443F23, offset	loc_443F91
		dd offset loc_443FF1, offset loc_444051, offset	loc_443F23
		dd offset loc_4440B1, offset loc_444125, offset	loc_444199
		dd offset loc_4441DC, offset loc_444267, offset	loc_4442E7
		dd offset loc_44431C, offset loc_444345, offset	loc_44437A
		dd offset loc_4443A3, offset loc_4443C2, offset	loc_4443DE
		dd offset loc_444467, offset loc_4444CE, offset	loc_444503
		dd offset loc_44453A, offset loc_444570, offset	loc_4445B2
		dd offset loc_4445E1, offset loc_444610, offset	loc_444639
		dd offset loc_44465B, offset loc_444690, offset	loc_4446D1
		dd offset loc_444740, offset loc_44475B, offset	loc_444776
		dd offset loc_444791, offset loc_4447AC, offset	loc_4447C7
		dd offset loc_4447E2, offset loc_44480B, offset	loc_444826
		dd offset loc_444841, offset loc_4448AD, offset	loc_44491A
		dd offset loc_444987, offset loc_4449F3, offset	loc_444A48
		dd offset loc_444AB3, offset loc_4449F3, offset	loc_444A48
		dd offset loc_4449F3, offset loc_444A48, offset	loc_4449F3
		dd offset loc_444A48, offset loc_444AE9, offset	loc_444B32
		dd offset loc_444DE0, offset loc_444DE0, offset	loc_444DE0
		dd offset loc_444B91, offset loc_444B91, offset	loc_444B91
		dd offset loc_444C0D, offset loc_444C84, offset	loc_444CF6
		dd offset loc_444B91, offset loc_444B91, offset	loc_444C0D
		dd offset loc_444D6E, offset loc_444E0E, offset	loc_444E95
		dd offset loc_44506B, offset loc_444F11, offset	loc_444F95
		dd offset loc_445000, offset loc_444E0E, offset	loc_444E95
		dd offset loc_444F11, offset loc_444F95, offset	loc_444E0E
		dd offset loc_444E0E, offset loc_444E0E, offset	loc_444E95
		dd offset loc_444F11, offset loc_444E0E, offset	loc_444E95
		dd offset loc_444E0E, offset loc_4450AD, offset	loc_4450CF
		dd offset loc_4450F1, offset loc_44513B, offset	loc_445183
		dd offset loc_4451B6, offset loc_445225, offset	loc_445231
		dd offset loc_4452F9, offset loc_445338, offset	loc_445377
		dd offset loc_445377, offset loc_4453C4, offset	loc_44540F
		dd offset loc_445433, offset loc_445447, offset	loc_445468
		dd offset loc_445485, offset loc_4454A2, offset	loc_444BE0
		dd offset loc_444BE0, offset loc_444BE0, offset	loc_444BE0
		dd offset loc_444E63, offset loc_444E63, offset	loc_444E63
		dd offset loc_444E63, offset loc_445280
; ---------------------------------------------------------------------------

loc_443B7A:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 1
		push	0
		push	1
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443B9D:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 2
		push	4
		push	1
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443BC0:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 3
		push	0
		push	2
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443BE3:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 4
		push	1
		push	1
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443C06:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 5
		push	1
		push	2
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443C29:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 6
		push	2
		push	2
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443C4C:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 7
		push	2
		push	2
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		or	dword ptr [edi], 400h
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443C75:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 8
		push	0
		push	4
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443C98:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 9
		push	3
		push	4
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443CBB:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 10
		push	1
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443CDE:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 11
		push	2
		push	4
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443D01:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 12
		push	0
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443D30:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		test	byte ptr dword_5E0720, 80h ; jumptable 0044395B	case 13
		push	edi
		push	1
		mov	edx, 2
		jnz	short loc_443D44
		add	edx, 2

loc_443D44:				; CODE XREF: .text:00443D3Fj
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0744, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443D6D:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 14
		push	2
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443D9C:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 15
		push	5
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443DCB:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	edx, [ebp-38h]	; jumptable 0044395B case 16
		cmp	edx, [ebp+0Ch]
		jb	short loc_443DE2
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443DE2:				; CODE XREF: .text:00443DD1j
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		sar	ecx, 3
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443E21:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	eax, [ebp-38h]	; jumptable 0044395B case 17
		cmp	eax, [ebp+0Ch]
		jb	short loc_443E38
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443E38:				; CODE XREF: .text:00443E27j
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		sar	edx, 3
		and	edx, 7
		push	edx
		push	2
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443E6B:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	edx, [ebp-38h]	; jumptable 0044395B case 18
		cmp	edx, [ebp+0Ch]
		jb	short loc_443E82
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443E82:				; CODE XREF: .text:00443E71j
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		sar	ecx, 3
		and	ecx, 7
		push	ecx
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443EB5:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 19
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax-1]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443EF2:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 20
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax-1]
		and	edx, 7
		push	edx
		push	1
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443F23:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 22,26
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_443F75
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h

loc_443F75:				; CODE XREF: .text:00443F53j
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443F91:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 23
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		push	1
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_443FDF
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		push	1
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h

loc_443FDF:				; CODE XREF: .text:00443FBFj
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_443FF1:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 24
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		push	2
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44403F
		push	edi
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 7
		push	eax
		push	2
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BC44
		add	esp, 10h

loc_44403F:				; CODE XREF: .text:0044401Fj
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444051:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 25
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	4
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44409F
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h

loc_44409F:				; CODE XREF: .text:0044407Fj
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4440B1:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 27
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		push	8
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444113
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		push	4
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		or	dword ptr [edi], 1000h
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444113:				; CODE XREF: .text:004440DFj
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444125:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 28
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		push	10h
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444187
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		push	4
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BC44
		add	esp, 10h
		or	dword ptr [edi], 1000h
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444187:				; CODE XREF: .text:00444153j
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444199:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 29
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43C2A4
		add	esp, 14h
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4441DC:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 30
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp-5Ch]
		add	eax, eax
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		mov	ecx, [ebp-5Ch]
		mov	[edi+10h], ecx
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44424B
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BC44
		add	esp, 10h
		or	dword ptr [edi], 1000h
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44424B:				; CODE XREF: .text:00444214j
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43E560
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444267:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 31
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp-5Ch]
		add	eax, 2
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4442D1
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		or	dword ptr [edi], 1000h
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4442D1:				; CODE XREF: .text:0044429Aj
		push	edi
		call	loc_43E868
		pop	ecx
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4442E7:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 32
		mov	ecx, [ebp-5Ch]
		push	ecx
		push	0
		push	0
		push	1
		push	7
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43C4B0
		add	esp, 1Ch
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44431C:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 33
		push	1
		push	0
		push	0
		push	1
		push	7
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43C4B0
		add	esp, 1Ch
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444345:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 34
		mov	edx, [ebp-5Ch]
		push	edx
		push	0
		push	0FFFFFFFFh
		push	1
		push	6
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43C4B0
		add	esp, 1Ch
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44437A:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 35
		push	1
		push	0
		push	0FFFFFFFFh
		push	1
		push	6
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43C4B0
		add	esp, 1Ch
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4443A3:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 36
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CB78
		add	esp, 8
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4443C2:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 37
		push	1
		push	4
		push	0FFFFFFFFh
		push	0
		push	0
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43C4B0
		add	esp, 1Ch
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4443DE:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 38
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	100h
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		mov	dword ptr [edi+10h], 1
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44444B
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		or	dword ptr [edi], 1000h
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44444B:				; CODE XREF: .text:00444416j
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43E560
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444467:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 39
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	1
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		or	dword ptr [edi], 1000h
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4444CE:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 40
		mov	ecx, [ebp-5Ch]
		push	ecx
		push	0
		push	2
		push	1
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43C4B0
		add	esp, 1Ch
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444503:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 41
		mov	ecx, [ebp-5Ch]
		add	ecx, ecx
		push	ecx
		push	0
		push	2
		push	1
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43C4B0
		add	esp, 1Ch
		mov	edx, [ebp-5Ch]
		mov	[edi+10h], edx
		push	edi
		call	loc_43E868
		pop	ecx
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44453A:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 42
		mov	ecx, [ebp-5Ch]
		push	ecx
		push	0
		push	2
		push	1
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43C4B0
		add	esp, 1Ch
		push	offset stru_530110
		push	edi
		call	loc_43E928
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444570:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 43
		mov	edx, [ebp-5Ch]
		shl	edx, 3
		push	edx
		push	0
		push	2
		push	1
		push	4
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43C4B0
		add	esp, 1Ch
		mov	eax, [ebp-5Ch]
		mov	[edi+10h], eax
		mov	edx, dword_5E0714
		mov	ecx, 0FFh
		mov	[edx+38h], ecx
		mov	[edi+1Ch], ecx
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4445B2:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 44
		push	1
		mov	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43C71C
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4445E1:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 45
		push	0
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43C71C
		add	esp, 10h
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444610:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 46
		push	1
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43C8C8
		add	esp, 10h
		push	edi
		call	loc_43E868
		pop	ecx
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444639:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 47
		push	1
		mov	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43CA1C
		add	esp, 10h
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44465B:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 48
		mov	ecx, [ebp-5Ch]
		push	ecx
		push	0
		push	2
		push	1
		push	5
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43C4B0
		add	esp, 1Ch
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		mov	dword_5E0740, 1
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444690:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	ecx, [ebp-38h]	; jumptable 0044395B case 49
		cmp	ecx, [ebp+0Ch]
		jb	short loc_4446A6
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4446A6:				; CODE XREF: .text:00444696j
		push	edi
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		xor	eax, eax
		mov	al, [edx+ecx]
		sar	eax, 3
		and	eax, 7
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43CCB0
		add	esp, 0Ch
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4446D1:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	ecx, [ebp-38h]	; jumptable 0044395B case 50
		cmp	ecx, [ebp+0Ch]
		jb	short loc_4446E7
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4446E7:				; CODE XREF: .text:004446D7j
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		xor	eax, eax
		mov	al, [edx+ecx]
		sar	eax, 3
		and	eax, 7
		mov	[ebp-8], eax
		push	edi
		mov	edx, [ebp-8]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43CCB0
		add	esp, 0Ch
		cmp	dword ptr [ebp-8], 2
		jnz	short loc_44471E
		mov	eax, dword_5E0714
		or	dword ptr [eax+18h], 800000h

loc_44471E:				; CODE XREF: .text:00444710j
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_444734
		or	dword ptr [edi], 1000h
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 20h

loc_444734:				; CODE XREF: .text:00444722j
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444740:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 51
		push	1
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43CCB0
		add	esp, 0Ch
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44475B:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 52
		push	3
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CCB0
		add	esp, 0Ch
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444776:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 53
		push	0
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43CCB0
		add	esp, 0Ch
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444791:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 54
		push	4
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43CCB0
		add	esp, 0Ch
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4447AC:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 55
		push	5
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CCB0
		add	esp, 0Ch
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4447C7:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 56
		push	2
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43CCB0
		add	esp, 0Ch
		push	edi
		call	loc_43EA58
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4447E2:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 57
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax-1]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43CD78
		add	esp, 0Ch
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44480B:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 58
		push	0
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CD78
		add	esp, 0Ch
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444826:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 59
		push	1
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43CD78
		add	esp, 0Ch
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444841:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 60
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		push	4
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4448A1
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43CD78
		add	esp, 0Ch
		or	dword ptr [edi], 1000h
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4448A1:				; CODE XREF: .text:0044486Fj
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4448AD:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 61
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		push	8
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44490E
		push	edi
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 7
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43CD78
		add	esp, 0Ch
		or	dword ptr [edi], 1000h
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44490E:				; CODE XREF: .text:004448DBj
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44491A:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 62
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	0Ah
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44497B
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CD78
		add	esp, 0Ch
		or	dword ptr [edi], 1000h
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44497B:				; CODE XREF: .text:00444948j
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444987:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 63
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		push	0Ah
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4449E7
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43CD78
		add	esp, 0Ch
		or	dword ptr [edi], 1000h
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4449E7:				; CODE XREF: .text:004449B5j
		push	edi
		call	loc_43EC50
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4449F3:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	edx, [ebp-38h]	; jumptable 0044395B cases 64,67,69,71
		cmp	edx, [ebp+0Ch]
		jb	short loc_444A0A
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444A0A:				; CODE XREF: .text:004449F9j
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		sar	ecx, 3
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CEC4
		add	esp, 0Ch
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444A48:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 65,68,70,72
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	8
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444A94
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CEC4
		add	esp, 0Ch

loc_444A94:				; CODE XREF: .text:00444A76j
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444AB3:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 66
		push	8
		push	0
		push	0FFFFFFFFh
		push	0
		push	7
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43C4B0
		add	esp, 1Ch
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444AE9:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	eax, [ebp-38h]	; jumptable 0044395B case 73
		cmp	eax, [ebp+0Ch]
		jb	short loc_444B00
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444B00:				; CODE XREF: .text:00444AEFj
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		sar	edx, 3
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43CF78
		add	esp, 0Ch
		mov	dword ptr [edi+10h], 4
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444B32:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 74
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	8
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444B7E
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43CF78
		add	esp, 0Ch

loc_444B7E:				; CODE XREF: .text:00444B60j
		mov	dword ptr [edi+10h], 4
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444B91:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	edx, [ebp-38h]	; jumptable 0044395B cases 78-80,84,85
		cmp	edx, [ebp+0Ch]
		jb	short loc_444BA8
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444BA8:				; CODE XREF: .text:00444B97j
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		sar	ecx, 3
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43D02C
		add	esp, 0Ch
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444BE0:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 125-128
		mov	ecx, dword_5E0738
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43D02C
		add	esp, 0Ch
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444C0D:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 81,86
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		test	byte ptr [ebp-4Dh], 4
		jz	short loc_444C29
		mov	edx, 10h
		jmp	short loc_444C2F
; ---------------------------------------------------------------------------

loc_444C29:				; CODE XREF: .text:00444C20j
		mov	edx, dword_5E073C

loc_444C2F:				; CODE XREF: .text:00444C27j
		push	edx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444C6B
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D02C
		add	esp, 0Ch

loc_444C6B:				; CODE XREF: .text:00444C4Dj
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444C84:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 82
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444CE3
		push	edi
		mov	edx, [ebp+8]
		mov	ecx, [ebp-38h]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 7
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D02C
		add	esp, 0Ch
		mov	dword ptr [edi+10h], 4
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444CE3:				; CODE XREF: .text:00444CB2j
		mov	dword ptr [edi+10h], 4
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444CF6:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 83
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		test	byte ptr [ebp-4Dh], 4
		jz	short loc_444D12
		mov	edx, 10h
		jmp	short loc_444D18
; ---------------------------------------------------------------------------

loc_444D12:				; CODE XREF: .text:00444D09j
		mov	edx, dword_5E073C

loc_444D18:				; CODE XREF: .text:00444D10j
		sar	edx, 1
		jns	short loc_444D1F
		adc	edx, 0

loc_444D1F:				; CODE XREF: .text:00444D1Aj
		push	edx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444D5B
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D02C
		add	esp, 0Ch

loc_444D5B:				; CODE XREF: .text:00444D3Dj
		mov	dword ptr [edi+10h], 4
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444D6E:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 87
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	8
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444DCD
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43D02C
		add	esp, 0Ch
		mov	dword ptr [edi+10h], 8
		push	edi
		call	loc_43ECCC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444DCD:				; CODE XREF: .text:00444D9Cj
		mov	dword ptr [edi+10h], 8
		push	edi
		call	loc_43EAA4
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444DE0:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 75-77
		push	0
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D02C
		add	esp, 0Ch
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444E0E:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	edx, [ebp-38h]	; jumptable 0044395B cases 88,94,98-100,103,105
		cmp	edx, [ebp+0Ch]
		jb	short loc_444E25
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444E25:				; CODE XREF: .text:00444E14j
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		sar	ecx, 3
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43D02C
		add	esp, 0Ch
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444E63:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 129-132
		mov	eax, dword_5E0738
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D02C
		add	esp, 0Ch
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444E95:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 89,95,101,104
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		test	byte ptr [ebp-4Dh], 4
		jz	short loc_444EB1
		mov	eax, 10h
		jmp	short loc_444EB6
; ---------------------------------------------------------------------------

loc_444EB1:				; CODE XREF: .text:00444EA8j
		mov	eax, dword_5E073C

loc_444EB6:				; CODE XREF: .text:00444EAFj
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444EF2
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D02C
		add	esp, 0Ch

loc_444EF2:				; CODE XREF: .text:00444ED4j
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444F11:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 91,96,102
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		test	byte ptr [ebp-4Dh], 4
		jz	short loc_444F2D
		mov	edx, 10h
		jmp	short loc_444F33
; ---------------------------------------------------------------------------

loc_444F2D:				; CODE XREF: .text:00444F24j
		mov	edx, dword_5E073C

loc_444F33:				; CODE XREF: .text:00444F2Bj
		sar	edx, 1
		jns	short loc_444F3A
		adc	edx, 0

loc_444F3A:				; CODE XREF: .text:00444F35j
		push	edx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444F76
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D02C
		add	esp, 0Ch

loc_444F76:				; CODE XREF: .text:00444F58j
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_444F95:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 92,97
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		push	4
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_444FE1
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D02C
		add	esp, 0Ch

loc_444FE1:				; CODE XREF: .text:00444FC3j
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445000:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 93
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		push	2
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_44504C
		push	edi
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D02C
		add	esp, 0Ch

loc_44504C:				; CODE XREF: .text:0044502Ej
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44506B:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 90
		test	byte ptr [ebp-4Dh], 4
		jz	short loc_445079
		mov	ecx, 10h
		jmp	short loc_44507F
; ---------------------------------------------------------------------------

loc_445079:				; CODE XREF: .text:00445070j
		mov	ecx, dword_5E073C

loc_44507F:				; CODE XREF: .text:00445077j
		push	ecx
		push	0
		push	0FFFFFFFFh
		push	0
		push	7
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43C4B0
		add	esp, 1Ch
		mov	dword ptr [edi+10h], 1
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4450AD:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 106
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43D138
		add	esp, 0Ch
		push	offset stru_530110
		push	edi
		call	loc_43E928
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4450CF:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 107
		push	1
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D138
		add	esp, 0Ch
		push	offset stru_530110
		push	edi
		call	loc_43E928
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4450F1:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 108
		mov	ecx, dword_5E0714
		mov	eax, [ecx+0Ch]
		add	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D1D8
		add	esp, 1Ch
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44513B:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 109
		mov	edx, dword_5E0714
		mov	ecx, [edx+0Ch]
		add	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp-5Ch]
		push	ecx
		push	1
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43D1D8
		add	esp, 1Ch
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445183:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 110
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx		; int
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax		; src
		mov	edx, [ebp-5Ch]
		push	edx		; int
		mov	ecx, [ebp-50h]
		push	ecx		; int
		call	loc_43D394
		add	esp, 14h
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		call	loc_43E868
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4451B6:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 111
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		push	6
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BE00
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_4454CB	; jumptable 0044395B case 21
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_445219
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 7
		push	ecx
		push	4
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43BC44
		add	esp, 10h
		or	dword ptr [edi], 1000h
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 4
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445219:				; CODE XREF: .text:004451E4j
		push	edi
		call	loc_43E8DC
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445225:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 112
		call	loc_43D54C
		pop	ecx
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445231:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 113
		push	0
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp-5Ch]
		push	edx
		push	1
		push	1
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43D5CC
		add	esp, 20h
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DCD8
		add	esp, 8
		test	byte ptr [ebp-4Eh], 0Bh
		jz	loc_4454CB	; jumptable 0044395B case 21
		or	dword ptr [edi], 400h
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445280:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		mov	ecx, dword_5E0728 ; jumptable 0044395B case 133
		mov	edx, [ebp+0Ch]
		add	ecx, dword_5E072C
		sub	edx, [ebp-38h]
		inc	ecx
		cmp	edx, ecx
		jnb	short loc_4452A5
		mov	eax, dword_5E0714
		or	dword ptr [eax+2Ch], 2
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4452A5:				; CODE XREF: .text:00445295j
		mov	dword_5E0730, 1
		push	edi
		mov	edx, [ebp-38h]
		add	edx, dword_5E0728
		add	edx, dword_5E072C
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	al, [ecx+edx]
		sar	eax, 4
		and	eax, 7
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D02C
		add	esp, 0Ch
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43BB8C
		pop	ecx
		mov	[edi+10h], eax
		push	edi
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43E560
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4452F9:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 114
		push	1
		mov	edx, [ebp+0Ch]
		sub	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		push	1
		push	1
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D5CC
		add	esp, 20h
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445338:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 115
		push	0
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp-5Ch]
		push	ecx
		push	2
		push	2
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43D5CC
		add	esp, 20h
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		push	edi
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445377:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B cases 116,117
		push	0
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ebp+8]
		add	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D5CC
		add	esp, 20h
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		mov	dword_5E0740, 1
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4453C4:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 118
		push	0
		mov	eax, [ebp+0Ch]
		sub	eax, [ebp-38h]
		push	eax
		mov	edx, [ebp+8]
		add	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		push	1
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43D5CC
		add	esp, 20h
		test	eax, eax
		jl	loc_4454CB	; jumptable 0044395B case 21
		mov	dword_5E0740, 1
		push	edi
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DCD8
		add	esp, 8
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_44540F:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 119
		mov	eax, [ebp+8]
		mov	edx, [ebp-38h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		sar	ecx, 3
		and	ecx, 7
		push	ecx
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DA04
		add	esp, 0Ch
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445433:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 120
		push	0
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DA04
		add	esp, 0Ch
		jmp	loc_4454CB	; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445447:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 121
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		sar	edx, 3
		and	edx, 7
		push	edx
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DA88
		add	esp, 0Ch
		jmp	short loc_4454CB ; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445468:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 122
		mov	eax, [ebp-50h]
		push	eax
		call	loc_43DAE8
		add	esp, 8
		push	offset stru_5301E8
		push	edi
		call	loc_43E928
		add	esp, 8
		jmp	short loc_4454CB ; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_445485:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 123
		mov	edx, [ebp-50h]
		push	edx
		call	loc_43DB8C
		add	esp, 8
		push	offset stru_530284
		push	edi
		call	loc_43E928
		add	esp, 8
		jmp	short loc_4454CB ; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4454A2:				; CODE XREF: .text:0044395Bj
					; DATA XREF: .text:off_443962o
		push	edi		; jumptable 0044395B case 124
		mov	ecx, [ebp-50h]
		push	ecx
		call	loc_43DC30
		add	esp, 8
		push	offset stru_5302FC
		push	edi
		call	loc_43E928
		add	esp, 8
		jmp	short loc_4454CB ; jumptable 0044395B case 21
; ---------------------------------------------------------------------------

loc_4454BF:				; CODE XREF: .text:00443955j
					; .text:0044395Bj
					; DATA XREF: ...
		mov	eax, dword_5E0714 ; jumptable 0044395B default case
		or	dword ptr [eax+2Ch], 200h

loc_4454CB:				; CODE XREF: .text:0044395Bj
					; .text:00443B98j ...
		test	byte ptr [ebp-4Dh], 1 ;	jumptable 0044395B case	21
		jz	short loc_4454E4
		cmp	dword ptr [edi+0Ch], 4
		jz	short loc_4454E4
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 8000h

loc_4454E4:				; CODE XREF: .text:004454CFj
					; .text:004454D5j
		mov	ecx, [ebp-50h]
		and	ecx, 0F0000h
		cmp	ecx, 90000h
		jnz	short loc_4454FE
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 40h

loc_4454FE:				; CODE XREF: .text:004454F3j
		mov	edx, [ebp-50h]
		and	edx, 0F0000h
		cmp	edx, 80000h
		jnz	short loc_44556C
		test	byte ptr [edi+3], 2
		jz	short loc_44556C
		mov	ecx, [edi+40h]
		mov	eax, dword_5E0714
		mov	[eax+40h], ecx
		test	byte ptr mode, 4
		jz	short loc_44556C
		cmp	dword ptr [edi+18h], 0
		jnz	short loc_445535
		cmp	dword ptr [edi+2Ch], 0
		jz	short loc_44556C

loc_445535:				; CODE XREF: .text:0044552Dj
		mov	edx, dword_5E0714
		cmp	word ptr [edx+16D0h], 0
		jnz	short loc_44556C
		mov	ecx, dword_5E0714
		push	0		; comment
		add	ecx, 16D0h
		push	100h		; nsymb
		push	ecx		; symb
		push	26019h		; mode
		push	0		; amod
		mov	eax, [edi+40h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_44556C:				; CODE XREF: .text:0044550Dj
					; .text:00445513j ...
		test	byte ptr [ebp-4Dh], 40h
		jz	short loc_445578
		or	dword ptr [edi], 2000h

loc_445578:				; CODE XREF: .text:00445570j
		test	byte ptr [ebp-4Dh], 30h
		jz	short loc_445584
		or	dword ptr [edi], 4000h

loc_445584:				; CODE XREF: .text:0044391Ej
					; .text:0044557Cj
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-94h], 4
		cmp	dword ptr [ebp-4], 4
		jl	loc_4438FC

loc_445598:				; CODE XREF: .text:0044390Bj
		mov	edx, [ebp-58h]
		and	edx, 1Fh
		add	edx, 0FFFFFFFEh
		sub	edx, 2
		jb	short loc_4455B3
		sub	edx, 4
		jz	short loc_4455B3
		dec	edx
		jz	short loc_445616
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_4455B3:				; CODE XREF: .text:004455A4j
					; .text:004455A9j
		cmp	dword_5E071C, 0
		jnz	short loc_4455CE
		mov	ecx, dword_5E0714
		mov	dword ptr [ecx+3Ch], 3
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_4455CE:				; CODE XREF: .text:004455BAj
		mov	eax, dword_5E071C
		mov	edx, [eax+2Ch]
		push	edx		; flags
		mov	ecx, [ebp-6Ch]
		mov	ecx, [ecx+0Ch]
		dec	ecx
		shl	ecx, 3
		mov	eax, [ebp-48h]
		shr	eax, cl
		push	eax		; code
		call	Checkcondition
		add	esp, 8
		test	eax, eax
		jnz	short loc_445605
		mov	edx, dword_5E0714
		mov	dword ptr [edx+3Ch], 2
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_445605:				; CODE XREF: .text:004455F1j
		mov	eax, dword_5E0714
		mov	dword ptr [eax+3Ch], 1
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_445616:				; CODE XREF: .text:004455ACj
		cmp	dword_5E071C, 0
		jnz	short loc_445631
		mov	edx, dword_5E0714
		mov	dword ptr [edx+3Ch], 3
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_445631:				; CODE XREF: .text:0044561Dj
		mov	ecx, [ebp-48h]
		and	ecx, 0FFh
		cmp	ecx, 0E3h
		jnz	short loc_4456A3
		test	byte ptr dword_5E0720, 80h
		jnz	short loc_445668
		mov	eax, dword_5E071C
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_445668
		mov	edx, dword_5E0714
		mov	dword ptr [edx+3Ch], 1
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_445668:				; CODE XREF: .text:00445649j
					; .text:00445654j
		test	byte ptr dword_5E0720, 80h
		jz	short loc_445691
		mov	ecx, dword_5E071C
		test	dword ptr [ecx+10h], 0FFFFh
		jnz	short loc_445691
		mov	eax, dword_5E0714
		mov	dword ptr [eax+3Ch], 1
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_445691:				; CODE XREF: .text:0044566Fj
					; .text:0044567Ej
		mov	edx, dword_5E0714
		mov	dword ptr [edx+3Ch], 2
		jmp	loc_445743
; ---------------------------------------------------------------------------

loc_4456A3:				; CODE XREF: .text:00445640j
		test	byte ptr dword_5E0720, 80h
		jnz	short loc_4456B8
		mov	ecx, dword_5E071C
		cmp	dword ptr [ecx+10h], 1
		jz	short loc_4456D4

loc_4456B8:				; CODE XREF: .text:004456AAj
		test	byte ptr dword_5E0720, 80h
		jz	short loc_4456E3
		mov	eax, dword_5E071C
		mov	edx, [eax+10h]
		and	edx, 0FFFFh
		cmp	edx, 1
		jnz	short loc_4456E3

loc_4456D4:				; CODE XREF: .text:004456B6j
		mov	ecx, dword_5E0714
		mov	dword ptr [ecx+3Ch], 2
		jmp	short loc_445743
; ---------------------------------------------------------------------------

loc_4456E3:				; CODE XREF: .text:004456BFj
					; .text:004456D2j
		mov	eax, [ebp-48h]
		and	eax, 0FFh
		cmp	eax, 0E0h
		jnz	short loc_44570D
		mov	edx, dword_5E071C
		test	byte ptr [edx+2Ch], 40h
		jz	short loc_44570D
		mov	ecx, dword_5E0714
		mov	dword ptr [ecx+3Ch], 2
		jmp	short loc_445743
; ---------------------------------------------------------------------------

loc_44570D:				; CODE XREF: .text:004456F0j
					; .text:004456FCj
		mov	eax, [ebp-48h]
		and	eax, 0FFh
		cmp	eax, 0E1h
		jnz	short loc_445737
		mov	edx, dword_5E071C
		test	byte ptr [edx+2Ch], 40h
		jnz	short loc_445737
		mov	ecx, dword_5E0714
		mov	dword ptr [ecx+3Ch], 2
		jmp	short loc_445743
; ---------------------------------------------------------------------------

loc_445737:				; CODE XREF: .text:0044571Aj
					; .text:00445726j
		mov	eax, dword_5E0714
		mov	dword ptr [eax+3Ch], 1

loc_445743:				; CODE XREF: .text:004455AEj
					; .text:004455C9j ...
		cmp	dword_5E0720, 0
		jz	loc_445844
		test	byte ptr dword_5E0720+1, 1
		jz	short loc_445778
		test	byte ptr [ebp-56h], 1
		jnz	short loc_44576B
		mov	edx, dword_5E0714
		or	dword ptr [edx+2Ch], 10h
		jmp	short loc_445778
; ---------------------------------------------------------------------------

loc_44576B:				; CODE XREF: .text:0044575Dj
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 800h

loc_445778:				; CODE XREF: .text:00445757j
					; .text:00445769j
		test	byte ptr dword_5E0720, 40h
		jz	short loc_4457A8
		cmp	dword_5E0740, 0
		jnz	short loc_4457A8
		mov	eax, [ebp-6Ch]
		mov	edx, [eax+8]
		and	edx, 0FF000000h
		cmp	edx, 4000000h
		jz	short loc_4457A8
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 1

loc_4457A8:				; CODE XREF: .text:0044577Fj
					; .text:00445788j ...
		test	byte ptr dword_5E0720, 80h
		jz	short loc_4457C3
		cmp	dword_5E0744, 0
		jnz	short loc_4457C3
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 2

loc_4457C3:				; CODE XREF: .text:004457AFj
					; .text:004457B8j
		test	byte ptr dword_5E0720, 3Fh
		jz	short loc_4457EE
		cmp	dword_5E0748, 0
		jnz	short loc_4457EE
		test	byte ptr [ebp-56h], 2
		jz	short loc_4457E4
		test	byte ptr dword_5E0720, 0Ah
		jnz	short loc_4457EE

loc_4457E4:				; CODE XREF: .text:004457D9j
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 4

loc_4457EE:				; CODE XREF: .text:004457CAj
					; .text:004457D3j ...
		test	byte ptr dword_5E0720+1, 6
		jz	short loc_445844
		test	byte ptr dword_5E0720+1, 4
		jz	short loc_445820
		mov	ecx, [ebp-58h]
		and	ecx, 0F000h
		cmp	ecx, 8000h
		jz	short loc_445820
		mov	eax, [ebp-58h]
		and	eax, 0F000h
		cmp	eax, 9000h
		jnz	short loc_44583A

loc_445820:				; CODE XREF: .text:004457FEj
					; .text:0044580Fj
		test	byte ptr dword_5E0720+1, 2
		jz	short loc_445844
		mov	edx, [ebp-58h]
		and	edx, 0F000h
		cmp	edx, 0A000h
		jz	short loc_445844

loc_44583A:				; CODE XREF: .text:0044581Ej
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 8

loc_445844:				; CODE XREF: .text:0044574Aj
					; .text:004457F5j ...
		mov	eax, [ebp-58h]
		and	eax, 1Fh
		sub	eax, 0Ah
		jz	short loc_445860
		sub	eax, 4
		jz	short loc_445875
		sub	eax, 7
		jz	short loc_445884
		sub	eax, 2
		jz	short loc_445892
		jmp	short loc_44589F
; ---------------------------------------------------------------------------

loc_445860:				; CODE XREF: .text:0044584Dj
		cmp	dword ptr [ebp-5Ch], 2
		jnz	short loc_44589F
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 1000h
		jmp	short loc_44589F
; ---------------------------------------------------------------------------

loc_445875:				; CODE XREF: .text:00445852j
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+30h], 10000h
		jmp	short loc_44589F
; ---------------------------------------------------------------------------

loc_445884:				; CODE XREF: .text:00445857j
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 200h
		jmp	short loc_44589F
; ---------------------------------------------------------------------------

loc_445892:				; CODE XREF: .text:0044585Cj
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 100h

loc_44589F:				; CODE XREF: .text:0044585Ej
					; .text:00445864j ...
		test	byte ptr [ebp-55h], 0C0h
		jz	short loc_4458EF
		mov	ecx, [ebp-58h]
		and	ecx, 0C0000000h
		cmp	ecx, 40000000h
		jz	short loc_4458C5
		mov	eax, [ebp-58h]
		and	eax, 0C0000000h
		cmp	eax, 80000000h
		jnz	short loc_4458D2

loc_4458C5:				; CODE XREF: .text:004458B4j
		mov	edx, dword_5E0714
		or	dword ptr [edx+30h], 4000h

loc_4458D2:				; CODE XREF: .text:004458C3j
		mov	ecx, [ebp-58h]
		and	ecx, 0C0000000h
		cmp	ecx, 0C0000000h
		jnz	short loc_4458EF
		mov	eax, dword_5E0714
		or	dword ptr [eax+30h], 8000h

loc_4458EF:				; CODE XREF: .text:004458A3j
					; .text:004458E1j
		test	byte ptr [ebp-55h], 2
		jz	short loc_445909
		mov	edx, dword_5E0714
		or	dword ptr [edx+34h], 10h
		mov	ecx, dword_5E0714
		or	dword ptr [ecx+38h], 10h

loc_445909:				; CODE XREF: .text:00443850j
					; .text:004458F3j
		test	byte ptr mode, 8
		jz	loc_445B63
		mov	eax, dword_5E0714
		test	byte ptr [eax+2Ch], 2
		jz	short loc_445941
		mov	edx, [ebp+0Ch]
		mov	eax, dword_5E0714
		push	edx		; n
		add	eax, 11CCh
		mov	ecx, [ebp+8]
		push	ecx		; code
		push	eax		; s
		call	HexdumpW
		add	esp, 0Ch
		jmp	loc_445B63
; ---------------------------------------------------------------------------

loc_445941:				; CODE XREF: .text:0044591Fj
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-3Ch], eax
		jmp	loc_445A31
; ---------------------------------------------------------------------------

loc_44594D:				; CODE XREF: .text:00445A3Dj
		push	1		; n
		mov	ecx, esi
		mov	edx, [ebp+8]
		add	ecx, ecx
		add	edx, [ebp-3Ch]
		add	ecx, dword_5E0714
		add	ecx, 11CCh
		push	edx		; code
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch
		add	esi, eax
		mov	eax, [ebp+8]
		mov	edx, [ebp-3Ch]
		cmp	byte ptr [eax+edx], 66h
		jnz	short loc_445992
		mov	ecx, [ebp-58h]
		and	ecx, 0F000h
		cmp	ecx, 1000h
		jz	loc_445A2E

loc_445992:				; CODE XREF: .text:0044597Bj
		mov	eax, [ebp+8]
		mov	edx, [ebp-3Ch]
		cmp	byte ptr [eax+edx], 0F2h
		jnz	short loc_4459BE
		mov	ecx, [ebp-58h]
		and	ecx, 0F000h
		cmp	ecx, 2000h
		jz	short loc_445A2E
		mov	eax, [ebp-58h]
		and	eax, 0F000h
		cmp	eax, 5000h
		jz	short loc_445A2E

loc_4459BE:				; CODE XREF: .text:0044599Cj
		mov	edx, [ebp+8]
		mov	ecx, [ebp-3Ch]
		cmp	byte ptr [edx+ecx], 0F3h
		jnz	short loc_4459EA
		mov	eax, [ebp-58h]
		and	eax, 0F000h
		cmp	eax, 3000h
		jz	short loc_445A2E
		mov	edx, [ebp-58h]
		and	edx, 0F000h
		cmp	edx, 6000h
		jz	short loc_445A2E

loc_4459EA:				; CODE XREF: .text:004459C8j
		test	byte ptr dword_5E0720+2, 3
		jz	short loc_445A04
		mov	ecx, dword_5E0714
		mov	eax, [ecx+20h]
		sub	eax, 2
		cmp	eax, [ebp-3Ch]
		jz	short loc_445A2E

loc_445A04:				; CODE XREF: .text:004459F1j
		test	byte ptr dword_5E0720+2, 2
		jz	short loc_445A1E
		mov	edx, dword_5E0714
		mov	ecx, [edx+20h]
		sub	ecx, 3
		cmp	ecx, [ebp-3Ch]
		jz	short loc_445A2E

loc_445A1E:				; CODE XREF: .text:00445A0Bj
		mov	eax, dword_5E0714
		mov	word ptr [eax+esi*2+11CCh], 3Ah
		inc	esi

loc_445A2E:				; CODE XREF: .text:0044598Cj
					; .text:004459ADj ...
		inc	dword ptr [ebp-3Ch]

loc_445A31:				; CODE XREF: .text:00445948j
		mov	edx, dword_5E0714
		mov	ecx, [edx+20h]
		cmp	ecx, [ebp-3Ch]
		ja	loc_44594D
		mov	eax, dword_5E0724
		mov	ecx, esi
		add	eax, dword_5E0728
		add	ecx, ecx
		sub	eax, [ebp-3Ch]
		add	ecx, dword_5E0714
		push	eax		; n
		mov	edx, [ebp+8]
		add	edx, [ebp-3Ch]
		add	ecx, 11CCh
		push	edx		; code
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch
		add	esi, eax
		cmp	dword_5E072C, 0
		jbe	short loc_445ABE
		mov	eax, dword_5E0714
		mov	word ptr [eax+esi*2+11CCh], 20h
		mov	edx, dword_5E072C
		inc	esi
		push	edx		; n
		mov	eax, esi
		mov	ecx, [ebp+8]
		add	eax, eax
		add	ecx, dword_5E0724
		add	eax, dword_5E0714
		add	ecx, dword_5E0728
		add	eax, 11CCh
		push	ecx		; code
		push	eax		; s
		call	HexdumpW
		add	esp, 0Ch
		add	esi, eax

loc_445ABE:				; CODE XREF: .text:00445A7Bj
		cmp	dword_5E0730, 0
		jbe	short loc_445B10
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+11CCh], 20h
		mov	ecx, dword_5E0730
		inc	esi
		push	ecx		; n
		mov	edx, esi
		mov	eax, [ebp+8]
		add	edx, edx
		add	eax, dword_5E0724
		add	edx, dword_5E0714
		add	eax, dword_5E0728
		add	eax, dword_5E072C
		add	edx, 11CCh
		push	eax		; code
		push	edx		; s
		call	HexdumpW
		add	esp, 0Ch
		add	esi, eax

loc_445B10:				; CODE XREF: .text:00445AC5j
		cmp	dword_5E0734, 0
		jbe	short loc_445B63
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+11CCh], 20h
		mov	eax, dword_5E0734
		inc	esi
		push	eax		; n
		add	esi, esi
		mov	edx, [ebp+8]
		add	edx, dword_5E0724
		add	esi, dword_5E0714
		add	edx, dword_5E0728
		add	edx, dword_5E072C
		add	edx, dword_5E0730
		add	esi, 11CCh
		push	edx		; code
		push	esi		; s
		call	HexdumpW
		add	esp, 0Ch

loc_445B63:				; CODE XREF: .text:00445910j
					; .text:0044593Cj ...
		test	byte ptr mode, 1
		jz	loc_4464BD
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+2Ch], 2
		jz	loc_445C0B
		mov	eax, dword_5E0714
		push	$CTW0("???") ; src
		add	eax, 13CCh
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		test	byte ptr mode, 2
		jz	loc_4464BD
		mov	edx, dword_5E0714
		cmp	dword ptr [edx], 0
		jz	short loc_445BC1
		cmp	dword_5BE6FC, 0
		jnz	short loc_445BCD

loc_445BC1:				; CODE XREF: .text:00445BB6j
		mov	ecx, dword_5E0714
		cmp	dword ptr [ecx+8], 0
		jnz	short loc_445BD4

loc_445BCD:				; CODE XREF: .text:00445BBFj
		xor	eax, eax
		mov	[ebp-20h], eax
		jmp	short loc_445BDB
; ---------------------------------------------------------------------------

loc_445BD4:				; CODE XREF: .text:00445BCBj
		mov	dword ptr [ebp-20h], 13h

loc_445BDB:				; CODE XREF: .text:00445BD2j
		mov	edx, [ebp-0Ch]
		mov	eax, dword_5E0714
		push	edx		; n
		add	eax, 15CCh
		mov	ecx, [ebp-20h]
		push	ecx		; c
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, dword_5E0714
		mov	dword ptr [edx+16CCh], 1
		jmp	loc_4464BD
; ---------------------------------------------------------------------------

loc_445C0B:				; CODE XREF: .text:00445B7Aj
		xor	esi, esi
		test	byte ptr dword_5E0720+1, 7
		jz	loc_445CE0
		test	byte ptr dword_5E0720+1, 1
		jz	short loc_445C42
		mov	eax, dword_5E0714
		push	offset aLock_1	; "LOCK	"
		add	eax, 13CCh
		push	100h
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		mov	esi, eax

loc_445C42:				; CODE XREF: .text:00445C21j
		test	byte ptr dword_5E0720+1, 2
		jz	short loc_445C75
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset aRepne_1	; "REPNE "
		push	eax
		add	edx, 13CCh
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_445CE0
; ---------------------------------------------------------------------------

loc_445C75:				; CODE XREF: .text:00445C49j
		test	byte ptr dword_5E0720+1, 4
		jz	short loc_445CE0
		mov	ecx, [ebp-58h]
		and	ecx, 0F000h
		cmp	ecx, 9000h
		jnz	short loc_445CB9
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset aRepe	; "REPE	"
		push	eax
		add	edx, 13CCh
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_445CE0
; ---------------------------------------------------------------------------

loc_445CB9:				; CODE XREF: .text:00445C8Dj
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	offset aRep	; "REP "
		push	ecx
		add	eax, 13CCh
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax

loc_445CE0:				; CODE XREF: .text:00445C14j
					; .text:00445C73j ...
		test	byte ptr [ebp-56h], 2
		jz	loc_445D8E
		cmp	dword_5BDCF4, 0
		jnz	short loc_445D2B
		test	byte ptr dword_5E0720, 8
		jz	short loc_445D0F
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+13CCh], 2Bh
		inc	esi
		jmp	short loc_445D8E
; ---------------------------------------------------------------------------

loc_445D0F:				; CODE XREF: .text:00445CFAj
		test	byte ptr dword_5E0720, 2
		jz	short loc_445D8E
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 2Dh
		inc	esi
		jmp	short loc_445D8E
; ---------------------------------------------------------------------------

loc_445D2B:				; CODE XREF: .text:00445CF1j
		test	byte ptr dword_5E0720, 8
		jz	short loc_445D5E
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	offset aBht	; "BHT "
		push	eax
		add	edx, 13CCh
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_445D8E
; ---------------------------------------------------------------------------

loc_445D5E:				; CODE XREF: .text:00445D32j
		test	byte ptr dword_5E0720, 2
		jz	short loc_445D8E
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	offset aBhnt	; "BHNT	"
		push	ecx
		add	eax, 13CCh
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax

loc_445D8E:				; CODE XREF: .text:00445CE4j
					; .text:00445D0Dj ...
		test	byte ptr [ebp-55h], 8
		jz	loc_445EAD
		xor	edx, edx
		mov	[ebp-4], edx

loc_445D9D:				; CODE XREF: .text:00445E81j
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		cmp	word ptr [eax+edx*2], 0
		jz	loc_445E86
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		cmp	word ptr [eax+edx*2], 2Ah
		jz	short loc_445DDE
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		mov	cx, [eax+edx*2]
		mov	eax, dword_5E0714
		mov	[eax+esi*2+13CCh], cx
		inc	esi
		jmp	loc_445E7E
; ---------------------------------------------------------------------------

loc_445DDE:				; CODE XREF: .text:00445DBDj
		test	byte ptr [ebp-58h], 40h
		jz	short loc_445E2A
		mov	edx, dword_5E0724
		mov	ecx, [ebp+8]
		add	edx, dword_5E0728
		xor	eax, eax
		add	edx, dword_5E072C
		mov	al, [ecx+edx]
		mov	ecx, 100h
		sub	ecx, esi
		mov	edx, off_530090[eax*4]
		mov	eax, esi
		push	edx		; src
		add	eax, eax
		push	ecx		; n
		add	eax, dword_5E0714
		add	eax, 13CCh
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_445E7E
; ---------------------------------------------------------------------------

loc_445E2A:				; CODE XREF: .text:00445DE2j
		cmp	dword ptr [ebp-5Ch], 4
		jnz	short loc_445E55
		cmp	dword_5BDCF8, 0
		jz	short loc_445E42
		cmp	dword_5BDCF8, 1
		jnz	short loc_445E55

loc_445E42:				; CODE XREF: .text:00445E37j
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+13CCh], 44h
		inc	esi
		jmp	short loc_445E7E
; ---------------------------------------------------------------------------

loc_445E55:				; CODE XREF: .text:00445E2Ej
					; .text:00445E40j
		cmp	dword ptr [ebp-5Ch], 2
		jnz	short loc_445E7E
		cmp	dword_5BDCF8, 1
		jz	short loc_445E6D
		cmp	dword_5BDCF8, 2
		jnz	short loc_445E7E

loc_445E6D:				; CODE XREF: .text:00445E62j
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 57h
		inc	esi

loc_445E7E:				; CODE XREF: .text:00445DD9j
					; .text:00445E28j ...
		inc	dword ptr [ebp-4]
		jmp	loc_445D9D
; ---------------------------------------------------------------------------

loc_445E86:				; CODE XREF: .text:00445DAAj
		mov	eax, dword_5E0714
		mov	word ptr [eax+esi*2+13CCh], 0
		mov	edx, dword_5E0714
		add	edx, 13CCh
		push	edx
		call	loc_41097B
		pop	ecx
		jmp	loc_44600D
; ---------------------------------------------------------------------------

loc_445EAD:				; CODE XREF: .text:00445D92j
		mov	ecx, [ebp-6Ch]
		mov	edx, 100h
		sub	edx, esi
		mov	eax, [ecx]
		mov	ecx, esi
		push	eax
		add	ecx, ecx
		push	edx
		add	ecx, dword_5E0714
		add	ecx, 13CCh
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		cmp	dword_5BDCC8, 3
		jnz	loc_44600D
		test	byte ptr mode+1, 8
		jnz	loc_44600D
		cmp	dword_5E0740, 0
		jz	loc_44600D
		mov	eax, [ebp-58h]
		and	eax, 1Fh
		test	eax, eax
		jz	short loc_445F4D
		mov	edx, [ebp-58h]
		and	edx, 1Fh
		cmp	edx, 1
		jz	short loc_445F4D
		mov	ecx, [ebp-58h]
		and	ecx, 1Fh
		cmp	ecx, 2
		jz	short loc_445F4D
		mov	eax, [ebp-58h]
		and	eax, 1Fh
		cmp	eax, 4
		jz	short loc_445F4D
		mov	edx, [ebp-58h]
		and	edx, 1Fh
		cmp	edx, 5
		jz	short loc_445F4D
		mov	ecx, [ebp-58h]
		and	ecx, 1Fh
		cmp	ecx, 0Ah
		jz	short loc_445F4D
		mov	eax, [ebp-58h]
		and	eax, 1Fh
		cmp	eax, 0Bh
		jnz	loc_44600D

loc_445F4D:				; CODE XREF: .text:00445F05j
					; .text:00445F10j ...
		cmp	dword ptr [ebp-5Ch], 1
		jnz	short loc_445F80
		mov	ecx, esi
		mov	edx, 100h
		add	ecx, ecx
		sub	edx, esi
		add	ecx, dword_5E0714
		push	(offset	aDb+2)	; "B"
		push	edx
		add	ecx, 13CCh
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		jmp	loc_44600D
; ---------------------------------------------------------------------------

loc_445F80:				; CODE XREF: .text:00445F51j
		cmp	dword ptr [ebp-5Ch], 2
		jnz	short loc_445FB0
		mov	edx, esi
		mov	eax, 100h
		add	edx, edx
		sub	eax, esi
		add	edx, dword_5E0714
		push	(offset	aR8w+4)	; "W"
		push	eax
		add	edx, 13CCh
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_44600D
; ---------------------------------------------------------------------------

loc_445FB0:				; CODE XREF: .text:00445F84j
		cmp	dword ptr [ebp-5Ch], 4
		jnz	short loc_445FDF
		mov	eax, esi
		mov	ecx, 100h
		add	eax, eax
		sub	ecx, esi
		add	eax, dword_5E0714
		push	(offset	aAl_2+2) ; "L"
		push	ecx
		add	eax, 13CCh
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_44600D
; ---------------------------------------------------------------------------

loc_445FDF:				; CODE XREF: .text:00445FB4j
		cmp	dword ptr [ebp-5Ch], 8
		jnz	short loc_44600D
		mov	ecx, esi
		mov	edx, 100h
		add	ecx, ecx
		sub	edx, esi
		add	ecx, dword_5E0714
		push	(offset	aDq+2)	; "Q"
		push	edx
		add	ecx, 13CCh
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	esi, eax

loc_44600D:				; CODE XREF: .text:00445EA8j
					; .text:00445EDDj ...
		test	byte ptr mode, 2
		jz	loc_446123
		mov	eax, [ebp-58h]
		mov	edx, dword_5E0714
		and	eax, 1Fh
		mov	[ebp-54h], eax
		cmp	dword ptr [edx], 0
		jz	short loc_446037
		cmp	dword_5BE6FC, 0
		jnz	short loc_446043

loc_446037:				; CODE XREF: .text:0044602Cj
		mov	ecx, dword_5E0714
		cmp	dword ptr [ecx+8], 0
		jnz	short loc_44604D

loc_446043:				; CODE XREF: .text:00446035j
		xor	eax, eax
		mov	[ebp-20h], eax
		jmp	loc_4460F9
; ---------------------------------------------------------------------------

loc_44604D:				; CODE XREF: .text:00446041j
		mov	edx, dword_5E0714
		cmp	dword ptr [edx+2Ch], 0
		jz	short loc_446065
		mov	dword ptr [ebp-20h], 13h
		jmp	loc_4460F9
; ---------------------------------------------------------------------------

loc_446065:				; CODE XREF: .text:00446057j
		mov	ecx, [ebp-58h]
		and	ecx, 1Fh
		add	ecx, 0FFFFFFFAh	; switch 19 cases
		cmp	ecx, 12h
		ja	short loc_4460F2 ; jumptable 00446079 default case
		mov	cl, ds:byte_446080[ecx]
		jmp	ds:off_446093[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_446080	db	7,     7,     6,     6 ; DATA XREF: .text:00446073r
		db	5,     5,     4,     4 ; indirect table	for switch statement
		db	4,     3,     3,     1
		db	1,     1,     1,     2
		db	2,     2,     1
off_446093	dd offset loc_4460F2	; DATA XREF: .text:00446079r
		dd offset loc_4460E0	; jump table for switch	statement
		dd offset loc_4460E9
		dd offset loc_4460D7
		dd offset loc_4460CE
		dd offset loc_4460C5
		dd offset loc_4460BC
		dd offset loc_4460B3
; ---------------------------------------------------------------------------

loc_4460B3:				; CODE XREF: .text:00446079j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 0Dh ; jumptable 00446079 cases 6,7
		jmp	short loc_4460F9
; ---------------------------------------------------------------------------

loc_4460BC:				; CODE XREF: .text:00446079j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 0Eh ; jumptable 00446079 cases 8,9
		jmp	short loc_4460F9
; ---------------------------------------------------------------------------

loc_4460C5:				; CODE XREF: .text:00446079j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 0Fh ; jumptable 00446079 cases 10,11
		jmp	short loc_4460F9
; ---------------------------------------------------------------------------

loc_4460CE:				; CODE XREF: .text:00446079j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 10h ; jumptable 00446079 cases 12-14
		jmp	short loc_4460F9
; ---------------------------------------------------------------------------

loc_4460D7:				; CODE XREF: .text:00446079j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 11h ; jumptable 00446079 cases 15,16
		jmp	short loc_4460F9
; ---------------------------------------------------------------------------

loc_4460E0:				; CODE XREF: .text:00446079j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 12h ; jumptable 00446079 cases 17-20,24
		jmp	short loc_4460F9
; ---------------------------------------------------------------------------

loc_4460E9:				; CODE XREF: .text:00446079j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 13h ; jumptable 00446079 cases 21-23
		jmp	short loc_4460F9
; ---------------------------------------------------------------------------

loc_4460F2:				; CODE XREF: .text:00446071j
					; DATA XREF: .text:off_446093o
		mov	dword ptr [ebp-20h], 0Ch ; jumptable 00446079 default case

loc_4460F9:				; CODE XREF: .text:00446048j
					; .text:00446060j ...
		push	esi		; n
		mov	edx, dword_5E0714
		mov	eax, [ebp-20h]
		add	edx, 15CCh
		push	eax		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, dword_5E0714
		mov	dword ptr [ecx+16CCh], 1

loc_446123:				; CODE XREF: .text:00446014j
		xor	eax, eax
		cmp	dword_5BDCC8, 2
		mov	[ebp-10h], eax
		jnz	short loc_44616C
		mov	edx, [ebp-6Ch]
		mov	ecx, [edx+1Ch]
		and	ecx, 0FFh
		cmp	ecx, 6Ch
		jz	short loc_44616C
		mov	eax, [ebp-6Ch]
		mov	edx, [eax+1Ch]
		and	edx, 0FFh
		cmp	edx, 6Dh
		jz	short loc_44616C
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+1Ch]
		and	eax, 0FFh
		cmp	eax, 6Eh
		jz	short loc_44616C
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_446171
; ---------------------------------------------------------------------------

loc_44616C:				; CODE XREF: .text:0044612Fj
					; .text:00446140j ...
		xor	edx, edx
		mov	[ebp-14h], edx

loc_446171:				; CODE XREF: .text:0044616Aj
		test	byte ptr mode, 2
		jz	short loc_446185
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_446185
		xor	ecx, ecx
		mov	[ebp-20h], ecx

loc_446185:				; CODE XREF: .text:00446178j
					; .text:0044617Ej
		xor	eax, eax
		mov	[ebp-4], eax

loc_44618A:				; CODE XREF: .text:00446443j
		cmp	dword_5BDCC8, 2
		jnz	short loc_446199
		test	byte ptr [ebp-55h], 4
		jz	short loc_4461A2

loc_446199:				; CODE XREF: .text:00446191j
		cmp	dword_5BDCC8, 3
		jnz	short loc_4461AF

loc_4461A2:				; CODE XREF: .text:00446197j
		mov	edx, 3
		sub	edx, [ebp-4]
		mov	[ebp-8], edx
		jmp	short loc_4461B5
; ---------------------------------------------------------------------------

loc_4461AF:				; CODE XREF: .text:004461A0j
		mov	ecx, [ebp-4]
		mov	[ebp-8], ecx

loc_4461B5:				; CODE XREF: .text:004461ADj
		mov	eax, [ebp-6Ch]
		mov	edx, [ebp-8]
		mov	ecx, [eax+edx*4+1Ch]
		mov	[ebp-50h], ecx
		test	byte ptr [ebp-50h], 0FFh
		jz	loc_44643C
		test	byte ptr [ebp-4Dh], 40h
		jnz	loc_44643C
		mov	[ebp-0Ch], esi
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_446245
		mov	eax, dword_5E0714
		mov	word ptr [eax+esi*2+13CCh], 20h
		inc	esi
		cmp	dword_5BDCD0, 0
		jz	short loc_446213
		cmp	esi, 8
		jge	short loc_446213

loc_4461FD:				; CODE XREF: .text:00446211j
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+13CCh], 20h
		inc	esi
		cmp	esi, 8
		jl	short loc_4461FD

loc_446213:				; CODE XREF: .text:004461F6j
					; .text:004461FBj
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_446270
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 28h
		inc	esi
		cmp	dword_5BDCD4, 0
		jz	short loc_446270
		mov	eax, dword_5E0714
		mov	word ptr [eax+esi*2+13CCh], 20h
		inc	esi
		jmp	short loc_446270
; ---------------------------------------------------------------------------

loc_446245:				; CODE XREF: .text:004461DDj
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+13CCh], 2Ch
		inc	esi
		cmp	dword_5BDCD4, 0
		jz	short loc_446270
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 20h
		inc	esi

loc_446270:				; CODE XREF: .text:00446217j
					; .text:00446231j ...
		test	byte ptr mode, 2
		jz	short loc_44629B
		mov	eax, esi
		sub	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-20h]
		push	edx		; c
		mov	ecx, dword_5E0714
		add	ecx, [ebp-0Ch]
		add	ecx, 15CCh
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_44629B:				; CODE XREF: .text:00446277j
		mov	[ebp-0Ch], esi
		mov	ecx, 100h
		mov	edi, [ebp-8]
		sub	ecx, esi
		mov	eax, edi
		add	ecx, 0FFFFFFF6h
		shl	edi, 4
		add	edi, eax
		lea	edi, [eax+edi*2]
		mov	eax, esi
		shl	edi, 5
		add	eax, eax
		add	edi, dword_5E0714
		add	eax, dword_5E0714
		add	edi, 4Ch
		add	eax, 13CCh
		lea	edx, [edi+60h]
		push	edx		; src
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		test	byte ptr mode, 2
		jz	loc_446439
		mov	edx, dword_5E0714
		cmp	dword ptr [edx], 0
		jz	short loc_44630C
		cmp	dword_5BE6FC, 0
		jz	short loc_44630C
		mov	ecx, [ebp-20h]
		mov	[ebp-24h], ecx
		jmp	loc_4463B5
; ---------------------------------------------------------------------------

loc_44630C:				; CODE XREF: .text:004462F6j
					; .text:004462FFj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_44631D
		mov	eax, [ebp-20h]
		mov	[ebp-24h], eax
		jmp	loc_4463B5
; ---------------------------------------------------------------------------

loc_44631D:				; CODE XREF: .text:00446310j
		test	byte ptr [edi],	1
		jz	short loc_44632E
		mov	dword ptr [ebp-24h], 18h
		jmp	loc_4463B5
; ---------------------------------------------------------------------------

loc_44632E:				; CODE XREF: .text:00446320j
		test	byte ptr [edi],	3Ch
		jz	short loc_44633C
		mov	dword ptr [ebp-24h], 19h
		jmp	short loc_4463B5
; ---------------------------------------------------------------------------

loc_44633C:				; CODE XREF: .text:00446331j
		test	byte ptr [edi],	0C2h
		jz	short loc_44634A
		mov	dword ptr [ebp-24h], 1Ah
		jmp	short loc_4463B5
; ---------------------------------------------------------------------------

loc_44634A:				; CODE XREF: .text:0044633Fj
		test	byte ptr [edi+1], 1
		jz	short loc_44636E
		cmp	byte ptr [edi+28h], 0
		jnz	short loc_44635C
		cmp	byte ptr [edi+29h], 0
		jz	short loc_446365

loc_44635C:				; CODE XREF: .text:00446354j
		mov	dword ptr [ebp-24h], 1Bh
		jmp	short loc_4463B5
; ---------------------------------------------------------------------------

loc_446365:				; CODE XREF: .text:0044635Aj
		mov	dword ptr [ebp-24h], 1Ch
		jmp	short loc_4463B5
; ---------------------------------------------------------------------------

loc_44636E:				; CODE XREF: .text:0044634Ej
		test	byte ptr [edi+1], 2
		jz	short loc_4463AF
		test	byte ptr mode, 10h
		jz	short loc_4463A6
		cmp	dword ptr [edi+30h], 10000h
		jb	short loc_4463A6
		cmp	dword ptr [edi+30h], 0FFFF0000h
		jnb	short loc_4463A6
		mov	edx, [edi+40h]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4463A6
		mov	dword ptr [ebp-24h], 1Dh
		jmp	short loc_4463B5
; ---------------------------------------------------------------------------

loc_4463A6:				; CODE XREF: .text:0044637Bj
					; .text:00446384j ...
		mov	dword ptr [ebp-24h], 1Eh
		jmp	short loc_4463B5
; ---------------------------------------------------------------------------

loc_4463AF:				; CODE XREF: .text:00446372j
		mov	ecx, [ebp-20h]
		mov	[ebp-24h], ecx

loc_4463B5:				; CODE XREF: .text:00446307j
					; .text:00446318j ...
		mov	eax, dword_5E0714
		cmp	dword ptr [eax], 0
		jz	short loc_446419
		mov	edx, dword_5E0714
		cmp	dword ptr [edx], 1
		jnz	short loc_4463F8
		test	dword ptr [edi], 101h
		jz	short loc_446419
		mov	ecx, dword_5E0714
		mov	eax, 1
		mov	edx, [edi+18h]
		or	edx, [edi+1Ch]
		mov	ecx, [ecx+4]
		shl	eax, cl
		or	edx, [edi+2Ch]
		and	eax, edx
		jz	short loc_446419
		mov	dword ptr [ebp-24h], 1
		jmp	short loc_446419
; ---------------------------------------------------------------------------

loc_4463F8:				; CODE XREF: .text:004463C8j
		mov	eax, [edi]
		mov	edx, dword_5E0714
		and	eax, [edx]
		jz	short loc_446419
		mov	ecx, dword_5E0714
		mov	eax, [ecx+4]
		cmp	eax, [edi+14h]
		jnz	short loc_446419
		mov	dword ptr [ebp-24h], 1

loc_446419:				; CODE XREF: .text:004463BDj
					; .text:004463D0j ...
		mov	edx, esi
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-24h]
		push	ecx		; c
		mov	eax, dword_5E0714
		add	eax, [ebp-0Ch]
		add	eax, 15CCh
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_446439:				; CODE XREF: .text:004462E7j
		inc	dword ptr [ebp-10h]

loc_44643C:				; CODE XREF: .text:004461C6j
					; .text:004461D0j
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 4
		jl	loc_44618A
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4464AE
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4464AE
		mov	[ebp-0Ch], esi
		cmp	dword_5BDCD4, 0
		jz	short loc_446472
		mov	edx, dword_5E0714
		mov	word ptr [edx+esi*2+13CCh], 20h
		inc	esi

loc_446472:				; CODE XREF: .text:0044645Fj
		mov	ecx, dword_5E0714
		mov	word ptr [ecx+esi*2+13CCh], 29h
		inc	esi
		test	byte ptr mode, 2
		jz	short loc_4464AE
		mov	eax, esi
		sub	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-20h]
		push	edx		; c
		mov	ecx, dword_5E0714
		add	ecx, [ebp-0Ch]
		add	ecx, 15CCh
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_4464AE:				; CODE XREF: .text:0044644Dj
					; .text:00446453j ...
		mov	eax, dword_5E0714
		mov	word ptr [eax+esi*2+13CCh], 0

loc_4464BD:				; CODE XREF: .text:00445B6Aj
					; .text:00445BA7j ...
		test	byte ptr mode, 4
		jz	loc_446AE2
		mov	edx, dword_5E0714
		cmp	dword ptr [edx+2Ch], 0
		jnz	short loc_4464E6
		mov	ecx, dword_5E0714
		cmp	dword ptr [ecx+30h], 0
		jz	loc_446AE2

loc_4464E6:				; CODE XREF: .text:004464D4j
		mov	eax, dword_5E0714
		test	byte ptr [eax+2Ch], 1
		jz	short loc_44651C
		push	offset aUnknownCommand ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_44651C:				; CODE XREF: .text:004464EFj
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+2Ch], 2
		jz	short loc_446551
		push	offset aCommandCrosses ; "Command crosses end of memory	block"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446551:				; CODE XREF: .text:00446526j
		mov	edx, dword_5E0714
		test	byte ptr [edx+2Ch], 4
		jz	short loc_446588
		push	offset aIllegalUseOfRe ; "Illegal use of register"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446588:				; CODE XREF: .text:0044655Bj
		mov	eax, dword_5E0714
		test	byte ptr [eax+2Ch], 8
		jz	short loc_4465BE
		push	offset aMemoryAddressI ; "Memory address is not	allowed"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4465BE:				; CODE XREF: .text:00446591j
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+2Ch], 10h
		jz	short loc_4465F3
		push	offset aLockPrefixIsNo ; "LOCK prefix is not allowed"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4465F3:				; CODE XREF: .text:004465C8j
		mov	edx, dword_5E0714
		test	byte ptr [edx+2Ch], 20h
		jz	short loc_44662A
		push	offset aInvalidSegme_1 ; "Invalid segment register"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_44662A:				; CODE XREF: .text:004465FDj
		mov	eax, dword_5E0714
		test	byte ptr [eax+2Ch], 40h
		jz	short loc_446660
		push	offset aTwoPrefixesFro ; "Two prefixes from the	same group"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446660:				; CODE XREF: .text:00446633j
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+2Ch], 80h
		jz	short loc_446695
		push	offset aMoreThan4Prefi ; "More than 4 prefixes"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446695:				; CODE XREF: .text:0044666Aj
		mov	edx, dword_5E0714
		test	byte ptr [edx+2Dh], 1
		jz	short loc_4466CC
		push	offset aInvalidCrRegis ; "Invalid CR register"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4466CC:				; CODE XREF: .text:0044669Fj
		mov	eax, dword_5E0714
		test	byte ptr [eax+2Dh], 2
		jz	short loc_446702
		push	offset aInternalOllydb ; "Internal OllyDbg error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446702:				; CODE XREF: .text:004466D5j
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+30h], 1
		jz	short loc_446740
		cmp	dword_5BDD78, 0
		jnz	short loc_446740
		push	offset aSuperfluousOpe ; "Superfluous operand size prefix"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446740:				; CODE XREF: .text:0044670Cj
					; .text:00446715j
		mov	edx, dword_5E0714
		test	byte ptr [edx+30h], 2
		jz	short loc_446780
		cmp	dword_5BDD78, 0
		jnz	short loc_446780
		push	offset aSuperfluousAdd ; "Superfluous address size prefix"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446780:				; CODE XREF: .text:0044674Aj
					; .text:00446753j
		mov	eax, dword_5E0714
		test	byte ptr [eax+30h], 4
		jz	short loc_4467BF
		cmp	dword_5BDD78, 0
		jnz	short loc_4467BF
		push	offset aSuperfluousSeg ; "Superfluous segment override prefix"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4467BF:				; CODE XREF: .text:00446789j
					; .text:00446792j
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+30h], 8
		jz	short loc_4467FD
		cmp	dword_5BDD78, 0
		jnz	short loc_4467FD
		push	offset aSuperfluousRep ; "Superfluous REPxx prefix"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4467FD:				; CODE XREF: .text:004467C9j
					; .text:004467D2j
		mov	edx, dword_5E0714
		test	byte ptr [edx+30h], 10h
		jz	short loc_44683D
		cmp	dword_5BDD7C, 0
		jnz	short loc_44683D
		push	offset aDefaultSegment ; "Default segment register in prefix"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_44683D:				; CODE XREF: .text:00446807j
					; .text:00446810j
		mov	eax, dword_5E0714
		test	byte ptr [eax+30h], 20h
		jz	short loc_44687E
		mov	edx, [ebp-58h]
		and	edx, 1Fh
		cmp	edx, 0Fh
		jnz	short loc_44687E
		push	offset a16BitReturn ; "16-bit return"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_44687E:				; CODE XREF: .text:00446846j
					; .text:00446851j
		mov	eax, dword_5E0714
		test	byte ptr [eax+30h], 20h
		jz	short loc_4468BF
		mov	edx, [ebp-58h]
		and	edx, 1Fh
		cmp	edx, 0Fh
		jz	short loc_4468BF
		push	offset a16BitJumpOrCal ; "16-bit jump or call"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4468BF:				; CODE XREF: .text:00446887j
					; .text:00446892j
		mov	eax, dword_5E0714
		test	byte ptr [eax+30h], 40h
		jz	short loc_4468FE
		cmp	dword_5BDD60, 0
		jnz	short loc_4468FE
		push	offset aFarJumpOrCall ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4468FE:				; CODE XREF: .text:004468C8j
					; .text:004468D1j
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+30h], 80h
		jz	short loc_44693C
		cmp	dword_5BDD64, 0
		jnz	short loc_44693C
		push	offset aModificationOf ; "Modification of segment register"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_44693C:				; CODE XREF: .text:00446908j
					; .text:00446911j
		mov	edx, dword_5E0714
		test	byte ptr [edx+31h], 1
		jz	short loc_44697C
		cmp	dword_5BDD68, 0
		jnz	short loc_44697C
		push	offset aPrivilegedIn_0 ; "Privileged instruction"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_44697C:				; CODE XREF: .text:00446946j
					; .text:0044694Fj
		mov	eax, dword_5E0714
		test	byte ptr [eax+31h], 2
		jz	short loc_4469BB
		cmp	dword_5BDD6C, 0
		jnz	short loc_4469BB
		push	offset aIOCommand ; "I/O command"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4469BB:				; CODE XREF: .text:00446985j
					; .text:0044698Ej
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+31h], 4
		jz	short loc_4469F9
		cmp	dword_5BDD74, 0
		jnz	short loc_4469F9
		push	offset aShiftOutOfRang ; "Shift	out of range"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_4469F9:				; CODE XREF: .text:004469C5j
					; .text:004469CEj
		mov	edx, dword_5E0714
		test	byte ptr [edx+31h], 8
		jz	short loc_446A39
		cmp	dword_5BDD80, 0
		jnz	short loc_446A39
		push	offset aCommandUsesVal ; "Command uses (valid) LOCK prefix"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_446AE2
; ---------------------------------------------------------------------------

loc_446A39:				; CODE XREF: .text:00446A03j
					; .text:00446A0Cj
		mov	eax, dword_5E0714
		test	byte ptr [eax+31h], 10h
		jz	short loc_446A75
		cmp	dword_5BDD84, 0
		jnz	short loc_446A75
		push	offset aUnalignedStack ; "Unaligned stack operation"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5E0714
		add	edx, 16D0h
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_446AE2
; ---------------------------------------------------------------------------

loc_446A75:				; CODE XREF: .text:00446A42j
					; .text:00446A4Bj
		mov	ecx, dword_5E0714
		test	byte ptr [ecx+31h], 20h
		jz	short loc_446AB0
		cmp	dword_5BDD88, 0
		jnz	short loc_446AB0
		push	offset aSuspiciousUseO ; "Suspicious use of stack pointer"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5E0714
		add	eax, 16D0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_446AE2
; ---------------------------------------------------------------------------

loc_446AB0:				; CODE XREF: .text:00446A7Fj
					; .text:00446A88j
		mov	edx, dword_5E0714
		test	byte ptr [edx+31h], 80h
		jz	short loc_446AE2
		push	offset aUndocumentedIn ; "Undocumented instruction or encoding"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5E0714
		add	ecx, 16D0h
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_446AE2:				; CODE XREF: .text:004464C4j
					; .text:004464E0j ...
		mov	eax, dword_5E0714
		test	byte ptr [eax+2Ch], 2
		jz	short loc_446AF5
		mov	edx, [ebp+0Ch]
		mov	[ebp-38h], edx
		jmp	short loc_446B10
; ---------------------------------------------------------------------------

loc_446AF5:				; CODE XREF: .text:00446AEBj
		mov	ecx, dword_5E0728
		add	ecx, dword_5E072C
		add	ecx, dword_5E0730
		add	ecx, dword_5E0734
		add	[ebp-38h], ecx

loc_446B10:				; CODE XREF: .text:00446AF3j
		mov	eax, dword_5E0714
		mov	edx, [ebp-38h]
		mov	[eax+10h], edx
		test	ebx, ebx
		jz	loc_44781A
		mov	ecx, [ebx+1Eh]
		and	ecx, 0FFh
		cmp	ecx, 2Ch
		jz	short loc_446B4C
		call	loc_4400F0
		or	eax, 2Ch
		mov	[ebx+1Eh], eax
		xor	eax, eax
		mov	[ebx+3Eh], eax
		xor	edx, edx
		mov	[ebx+0EEh], edx
		mov	[ebx+5Ah], edx

loc_446B4C:				; CODE XREF: .text:00446B2Fj
		xor	eax, eax
		lea	ecx, [ebp-0D0h]
		mov	[ebp-4], eax
		mov	edi, dword_5E0714
		mov	eax, [ebp-6Ch]
		add	edi, 4Ch
		lea	edx, [eax+1Ch]
		lea	eax, [ebp-0C0h]
		mov	[ebp-0A8h], edx
		mov	[ebp-0A0h], ecx
		mov	[ebp-9Ch], eax
		lea	edx, [ebp-0F0h]
		mov	[ebp-98h], edx
		lea	ecx, [ebp-0E0h]
		mov	[ebp-94h], ecx

loc_446B96:				; CODE XREF: .text:00447092j
		mov	eax, [ebp-94h]
		xor	edx, edx
		mov	[eax], edx
		mov	ecx, [ebp-98h]
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-9Ch]
		xor	ecx, ecx
		mov	[edx], ecx
		mov	eax, [ebp-0A0h]
		xor	edx, edx
		mov	[eax], edx
		cmp	dword ptr [edi], 0
		jz	loc_447062
		test	byte ptr [edi+1], 2
		jz	short loc_446BF3
		test	byte ptr [edi+2], 1
		mov	ecx, 0A0h
		jnz	short loc_446BDB
		add	ecx, 0FFFFFF80h

loc_446BDB:				; CODE XREF: .text:00446BD6j
		mov	eax, [ebp-9Ch]
		mov	[eax], ecx
		mov	edx, [edi+40h]
		mov	ecx, [ebp-0A0h]
		mov	[ecx], edx
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446BF3:				; CODE XREF: .text:00446BCBj
		test	byte ptr [edi],	1
		jz	loc_446CD1
		cmp	dword ptr [edi+0Ch], 4
		jnz	short loc_446C25
		mov	eax, [edi+14h]
		mov	ecx, [ebp-9Ch]
		mov	edx, [ebx+eax*4+0Eh]
		mov	[ecx], edx
		mov	eax, [edi+14h]
		mov	ecx, [ebp-0A0h]
		mov	edx, [ebx+eax*4+2Eh]
		mov	[ecx], edx
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446C25:				; CODE XREF: .text:00446C00j
		cmp	dword ptr [edi+0Ch], 1
		jnz	short loc_446C94
		mov	eax, [edi+14h]
		push	eax		; bytereg
		call	Byteregtodwordreg
		pop	ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0FFFFFFFFh
		jz	loc_447062
		mov	edx, [ebp-8]
		cmp	dword ptr [ebx+edx*4+0Eh], 20h
		jnz	loc_447062
		cmp	dword ptr [edi+14h], 4
		jge	short loc_446C6C
		mov	ecx, [ebp-8]
		mov	edx, [ebp-0A0h]
		mov	eax, [ebx+ecx*4+2Eh]
		and	eax, 0FFh
		mov	[edx], eax
		jmp	short loc_446C83
; ---------------------------------------------------------------------------

loc_446C6C:				; CODE XREF: .text:00446C54j
		mov	ecx, [ebp-8]
		mov	edx, [ebp-0A0h]
		mov	eax, [ebx+ecx*4+2Eh]
		shr	eax, 8
		and	eax, 0FFh
		mov	[edx], eax

loc_446C83:				; CODE XREF: .text:00446C6Aj
		mov	ecx, [ebp-9Ch]
		mov	dword ptr [ecx], 20h
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446C94:				; CODE XREF: .text:00446C29j
		cmp	dword ptr [edi+0Ch], 2
		jnz	loc_447062
		mov	eax, [edi+14h]
		cmp	dword ptr [ebx+eax*4+0Eh], 20h
		jnz	loc_447062
		mov	edx, [ebp-9Ch]
		mov	dword ptr [edx], 20h
		mov	ecx, [edi+14h]
		mov	edx, [ebp-0A0h]
		mov	eax, [ebx+ecx*4+2Eh]
		and	eax, 0FFFFh
		mov	[edx], eax
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446CD1:				; CODE XREF: .text:00446BF6j
		mov	ecx, [edi]
		and	ecx, 200100h
		cmp	ecx, 100h
		jnz	loc_447062
		test	byte ptr [edi+2], 1
		mov	eax, 80h
		jnz	short loc_446CF3
		add	eax, 0FFFFFF80h

loc_446CF3:				; CODE XREF: .text:00446CEEj
		or	eax, 30h
		xor	esi, esi
		mov	[ebp-8], eax
		lea	eax, [edi+24h]
		mov	edx, [edi+30h]
		mov	[ebp-3Ch], edx
		mov	[ebp-0A4h], eax

loc_446D0A:				; CODE XREF: .text:00446D7Bj
		mov	edx, [ebp-0A4h]
		cmp	byte ptr [edx],	0
		jz	short loc_446D71
		mov	eax, [ebx+esi*4+0Eh]
		test	al, 20h
		jz	short loc_446D7D
		test	eax, 210h
		jnz	short loc_446D7D
		test	al, 80h
		jz	short loc_446D3A
		mov	edx, [ebp-0A4h]
		test	byte ptr [edx],	1
		jz	short loc_446D3A
		xor	dword ptr [ebp-8], 80h

loc_446D3A:				; CODE XREF: .text:00446D26j
					; .text:00446D31j
		test	al, 8
		jnz	short loc_446D51
		mov	ecx, [ebp-0A4h]
		xor	eax, eax
		mov	al, [ecx]
		imul	dword ptr [ebx+esi*4+2Eh]
		add	[ebp-3Ch], eax
		jmp	short loc_446D71
; ---------------------------------------------------------------------------

loc_446D51:				; CODE XREF: .text:00446D3Cj
		test	byte ptr [ebp-8], 8
		jnz	short loc_446D7D
		mov	edx, [ebp-0A4h]
		cmp	byte ptr [edx],	1
		jnz	short loc_446D7D
		and	eax, 0FFFFFC0Fh
		or	[ebp-8], eax
		mov	ecx, [ebx+esi*4+2Eh]
		add	[ebp-3Ch], ecx

loc_446D71:				; CODE XREF: .text:00446D13j
					; .text:00446D4Fj
		inc	esi
		inc	dword ptr [ebp-0A4h]
		cmp	esi, 8
		jl	short loc_446D0A

loc_446D7D:				; CODE XREF: .text:00446D1Bj
					; .text:00446D22j ...
		cmp	esi, 8
		jge	short loc_446DC5
		test	byte ptr [ebp-8], 80h
		jnz	short loc_446DB4
		cmp	dword ptr [edi+30h], 10000h
		jb	loc_447062
		cmp	dword ptr [edi+30h], 0FFFF0000h
		jnb	loc_447062
		mov	eax, [edi+30h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	loc_447062

loc_446DB4:				; CODE XREF: .text:00446D86j
		mov	edx, [ebp-94h]
		mov	dword ptr [edx], 100h
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446DC5:				; CODE XREF: .text:00446D80j
		cmp	dword ptr [edi+20h], 4
		jnz	short loc_446E15
		cmp	dword ptr [edi+0Ch], 4
		jnz	loc_447062
		cmp	dword ptr [ebp-3Ch], 0
		jnz	loc_447062
		cmp	dword ptr [ebp-8], 30h
		jnz	loc_447062
		mov	ecx, [ebp-9Ch]
		mov	eax, 440h
		mov	[ecx], eax
		mov	edx, [ebp-94h]
		mov	[edx], eax
		mov	ecx, [ebp-0A0h]
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-98h]
		mov	[edx], eax
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446E15:				; CODE XREF: .text:00446DC9j
		mov	ecx, [ebp-9Ch]
		mov	eax, [ebp-8]
		mov	[ecx], eax
		mov	edx, [ebp-0A0h]
		mov	ecx, [ebp-3Ch]
		mov	[edx], ecx
		cmp	dword ptr [ebp-8], 3Ch
		jnz	short loc_446E5F
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_446E5F
		mov	eax, dword_5E0714
		mov	edx, [eax+14h]
		and	edx, 1Fh
		cmp	edx, 0Fh
		jz	short loc_446E5F
		mov	ecx, dword_5E0714
		mov	eax, [ecx+14h]
		and	eax, 1Fh
		cmp	eax, 10h
		jz	short loc_446E5F
		or	dword ptr [ebx+8], 800000h

loc_446E5F:				; CODE XREF: .text:00446E2Fj
					; .text:00446E35j ...
		mov	edx, [ebp-0A8h]
		mov	ecx, [edx]
		and	ecx, 0FFh
		cmp	ecx, 27h
		jz	loc_447062
		mov	eax, [ebp-94h]
		mov	edx, [ebp-8]
		mov	[eax], edx
		mov	ecx, [ebp-98h]
		mov	eax, [ebp-3Ch]
		mov	[ecx], eax
		cmp	dword ptr [edi+0Ch], 4
		jz	short loc_446EAB
		mov	edx, [ebp-9Ch]
		xor	ecx, ecx
		mov	[edx], ecx
		mov	eax, [ebp-0A0h]
		xor	edx, edx
		mov	[eax], edx
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446EAB:				; CODE XREF: .text:00446E90j
		mov	ecx, [ebp-8]
		xor	ecx, [ebx+1Eh]
		test	ecx, 0FFFFFC2Fh
		jnz	short loc_446F24
		xor	eax, eax
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0A0h]
		mov	ecx, edx
		mov	[ebp-0ACh], ecx
		mov	eax, [ebp-9Ch]
		mov	edx, eax
		mov	[ebp-0A4h], edx
		jmp	short loc_446F17
; ---------------------------------------------------------------------------

loc_446EDC:				; CODE XREF: .text:00446F1Dj
		mov	ecx, [ebp-0Ch]
		lea	ecx, [ecx+ecx*2]
		mov	eax, [ebx+ecx*4+5Eh]
		cmp	eax, [ebp-3Ch]
		jnz	short loc_446F14
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-0A4h]
		lea	edx, [edx+edx*2]
		mov	ecx, [ebx+edx*4+62h]
		mov	[eax], ecx
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-0ACh]
		lea	edx, [edx+edx*2]
		mov	ecx, [ebx+edx*4+66h]
		mov	[eax], ecx
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446F14:				; CODE XREF: .text:00446EE9j
		inc	dword ptr [ebp-0Ch]

loc_446F17:				; CODE XREF: .text:00446EDAj
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebx+5Ah]
		jl	short loc_446EDC
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446F24:				; CODE XREF: .text:00446EB7j
		test	byte ptr [ebp-8], 8
		jnz	loc_447062
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		jmp	short loc_446F4A
; ---------------------------------------------------------------------------

loc_446F35:				; CODE XREF: .text:00446F53j
		mov	eax, [ebp-0Ch]
		lea	eax, [eax+eax*2]
		mov	edx, [ebx+eax*4+156h]
		cmp	edx, [ebp-3Ch]
		jz	short loc_446F55
		inc	dword ptr [ebp-0Ch]

loc_446F4A:				; CODE XREF: .text:00446F33j
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebx+152h]
		jl	short loc_446F35

loc_446F55:				; CODE XREF: .text:00446F45j
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebx+152h]
		jge	short loc_446F8F
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-9Ch]
		lea	edx, [edx+edx*2]
		mov	ecx, [ebx+edx*4+15Ah]
		mov	[eax], ecx
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-0A0h]
		lea	edx, [edx+edx*2]
		mov	ecx, [ebx+edx*4+15Eh]
		mov	[eax], ecx
		jmp	loc_447062
; ---------------------------------------------------------------------------

loc_446F8F:				; CODE XREF: .text:00446F5Ej
		test	byte ptr [edi+1], 40h
		jnz	loc_447062
		mov	edx, [ebp-3Ch]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	loc_447062
		mov	eax, [ebp-3Ch]
		push	eax		; _addr
		push	esi		; pmod
		call	Findfixup
		add	esp, 8
		mov	[ebp-60h], eax
		mov	edx, [esi+458h]
		cmp	edx, [ebp-3Ch]
		ja	short loc_446FD9
		mov	ecx, [esi+458h]
		add	ecx, [esi+45Ch]
		cmp	ecx, [ebp-3Ch]
		ja	short loc_447005

loc_446FD9:				; CODE XREF: .text:00446FC6j
		mov	eax, [esi+47Ch]
		cmp	eax, [ebp-3Ch]
		ja	short loc_446FF5
		mov	edx, [esi+47Ch]
		add	edx, [esi+480h]
		cmp	edx, [ebp-3Ch]
		ja	short loc_447005

loc_446FF5:				; CODE XREF: .text:00446FE2j
		cmp	dword ptr [ebp-60h], 0
		jz	short loc_447062
		mov	ecx, [ebp-60h]
		mov	eax, [ecx]
		cmp	eax, [ebp-3Ch]
		jnz	short loc_447062

loc_447005:				; CODE XREF: .text:00446FD7j
					; .text:00446FF3j
		test	byte ptr mode, 20h
		jz	short loc_447014
		test	byte ptr [edi+2], 2
		jnz	short loc_447062

loc_447014:				; CODE XREF: .text:0044700Cj
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-3Ch]
		push	edx		; _addr
		lea	ecx, [ebp-4Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_447062
		cmp	dword ptr [ebp-60h], 0
		jz	short loc_44704B
		mov	eax, [ebp-60h]
		mov	edx, [eax]
		cmp	edx, [ebp-3Ch]
		jnz	short loc_44704B
		mov	ecx, [ebp-9Ch]
		mov	dword ptr [ecx], 0A0h
		jmp	short loc_447057
; ---------------------------------------------------------------------------

loc_44704B:				; CODE XREF: .text:00447031j
					; .text:0044703Bj
		mov	eax, [ebp-9Ch]
		mov	dword ptr [eax], 20h

loc_447057:				; CODE XREF: .text:00447049j
		mov	edx, [ebp-0A0h]
		mov	ecx, [ebp-4Ch]
		mov	[edx], ecx

loc_447062:				; CODE XREF: .text:00446BC1j
					; .text:00446BEEj ...
		add	dword ptr [ebp-94h], 4
		add	dword ptr [ebp-98h], 4
		add	dword ptr [ebp-9Ch], 4
		add	dword ptr [ebp-0A0h], 4
		add	dword ptr [ebp-0A8h], 4
		inc	dword ptr [ebp-4]
		add	edi, 460h
		cmp	dword ptr [ebp-4], 4
		jl	loc_446B96
		mov	eax, [ebp+10h]
		xor	edx, edx
		add	eax, [ebp-38h]
		xor	ecx, ecx
		mov	[ebx], eax
		mov	[ebx+4Eh], edx
		mov	[ebx+52h], ecx
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+16Eh], eax
		mov	[ebx+172h], edx
		mov	ecx, [ebp-6Ch]
		cmp	dword ptr [ecx+2Ch], 0
		jz	short loc_44712C
		test	byte ptr mode+1, 1
		jz	short loc_4470D5
		or	dword ptr [ebx+8], 10000000h
		jmp	short loc_4470DC
; ---------------------------------------------------------------------------

loc_4470D5:				; CODE XREF: .text:004470CAj
		and	dword ptr [ebx+8], 0EFFFFFFFh

loc_4470DC:				; CODE XREF: .text:004470D3j
		mov	eax, dword_5E0714
		lea	edx, [ebp-0D0h]
		push	eax
		push	ebx
		push	edx
		lea	ecx, [ebp-0C0h]
		push	ecx
		mov	eax, [ebp-6Ch]
		call	dword ptr [eax+2Ch]
		add	esp, 10h
		mov	edx, [ebx+1Eh]
		and	edx, 0FFh
		cmp	edx, 2Ch
		jz	loc_44720E
		call	loc_4400F0
		or	eax, 2Ch
		xor	ecx, ecx
		mov	[ebx+1Eh], eax
		xor	eax, eax
		mov	[ebx+3Eh], ecx
		mov	[ebx+0EEh], eax
		mov	[ebx+5Ah], eax
		jmp	loc_44720E
; ---------------------------------------------------------------------------

loc_44712C:				; CODE XREF: .text:004470C1j
		mov	edx, [ebp-58h]
		and	edx, 1Fh
		mov	[ebp-54h], edx
		cmp	dword ptr [ebp-54h], 6
		jz	short loc_447159
		cmp	dword ptr [ebp-54h], 7
		jz	short loc_447159
		cmp	dword ptr [ebp-54h], 8
		jz	short loc_447159
		cmp	dword ptr [ebp-54h], 9
		jz	short loc_447159
		cmp	dword ptr [ebp-54h], 0Fh
		jz	short loc_447159
		cmp	dword ptr [ebp-54h], 10h
		jnz	short loc_44715D

loc_447159:				; CODE XREF: .text:00447139j
					; .text:0044713Fj ...
		xor	ecx, ecx
		mov	[ebx], ecx

loc_44715D:				; CODE XREF: .text:00447157j
		xor	eax, eax
		mov	edi, dword_5E0714
		mov	[ebp-4], eax
		lea	eax, [ebp-0D0h]
		mov	[ebp-0A0h], eax
		lea	edx, [ebp-0C0h]
		mov	[ebp-0A8h], edx
		add	edi, 4Ch

loc_447183:				; CODE XREF: .text:004471E9j
		test	byte ptr [edi+1], 80h
		jz	short loc_4471B4
		cmp	dword ptr [edi+14h], 0FFFFFFFFh
		jz	short loc_4471B4
		mov	ecx, [edi+14h]
		xor	eax, eax
		mov	[ebx+ecx*4+0Eh], eax
		mov	edx, [edi+14h]
		xor	ecx, ecx
		mov	[ebx+edx*4+2Eh], ecx
		cmp	dword ptr [edi+14h], 4
		jnz	short loc_4471B4
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+5Ah], eax
		mov	[ebx+0EEh], edx

loc_4471B4:				; CODE XREF: .text:00447187j
					; .text:0044718Dj ...
		test	byte ptr [edi+1], 40h
		jz	short loc_4471CE
		mov	ecx, [ebp-0A8h]
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-0A0h]
		xor	ecx, ecx
		mov	[edx], ecx

loc_4471CE:				; CODE XREF: .text:004471B8j
		add	dword ptr [ebp-0A8h], 4
		add	dword ptr [ebp-0A0h], 4
		inc	dword ptr [ebp-4]
		add	edi, 460h
		cmp	dword ptr [ebp-4], 4
		jl	short loc_447183
		test	byte ptr [ebp-55h], 2
		jz	short loc_44720E
		call	loc_4400F0
		or	eax, 2Ch
		mov	[ebx+1Eh], eax
		xor	eax, eax
		mov	[ebx+3Eh], eax
		xor	edx, edx
		mov	[ebx+5Ah], edx
		xor	ecx, ecx
		mov	[ebx+0EEh], ecx

loc_44720E:				; CODE XREF: .text:00447106j
					; .text:00447127j ...
		mov	eax, [ebp-58h]
		and	eax, 700000h
		cmp	eax, 400000h
		jg	short loc_44724A
		jz	loc_4472DB
		sub	eax, 1
		jb	loc_447305
		sub	eax, 0FFFFFh
		jz	short loc_447268
		sub	eax, 100000h
		jz	short loc_4472AE
		sub	eax, 100000h
		jz	loc_4472DB
		jmp	loc_447305
; ---------------------------------------------------------------------------

loc_44724A:				; CODE XREF: .text:0044721Bj
		sub	eax, offset stru_4FFFE8.postbyte
		jz	loc_447305
		sub	eax, 100000h
		jz	short loc_447268
		sub	eax, 100000h
		jz	short loc_4472AE
		jmp	loc_447305
; ---------------------------------------------------------------------------

loc_447268:				; CODE XREF: .text:00447231j
					; .text:0044725Aj
		and	word ptr [ebx+0Ch], 0FFF0h
		mov	edx, [ebp-6Ch]
		test	byte ptr [edx+8], 3
		jnz	short loc_44727E
		or	word ptr [ebx+0Ch], 3
		jmp	short loc_44728D
; ---------------------------------------------------------------------------

loc_44727E:				; CODE XREF: .text:00447275j
		mov	ecx, [ebp-6Ch]
		mov	ax, [ecx+8]
		and	ax, 3
		or	[ebx+0Ch], ax

loc_44728D:				; CODE XREF: .text:0044727Cj
		mov	edx, [ebp-6Ch]
		test	byte ptr [edx+8], 0Ch
		jnz	short loc_44729D
		or	word ptr [ebx+0Ch], 0Ch
		jmp	short loc_447305
; ---------------------------------------------------------------------------

loc_44729D:				; CODE XREF: .text:00447294j
		mov	ecx, [ebp-6Ch]
		mov	ax, [ecx+8]
		and	ax, 0Ch
		or	[ebx+0Ch], ax
		jmp	short loc_447305
; ---------------------------------------------------------------------------

loc_4472AE:				; CODE XREF: .text:00447238j
					; .text:00447261j
		mov	edx, [ebp-6Ch]
		test	byte ptr [edx+8], 3
		jnz	short loc_4472BE
		or	word ptr [ebx+0Ch], 3
		jmp	short loc_447305
; ---------------------------------------------------------------------------

loc_4472BE:				; CODE XREF: .text:004472B5j
		mov	cx, [ebx+8]
		and	cx, 0FFFCh
		mov	eax, [ebp-6Ch]
		mov	dx, [eax+8]
		and	dx, 3
		or	cx, dx
		mov	[ebx+0Ch], cx
		jmp	short loc_447305
; ---------------------------------------------------------------------------

loc_4472DB:				; CODE XREF: .text:0044721Dj
					; .text:0044723Fj
		mov	ecx, [ebp-6Ch]
		test	byte ptr [ecx+8], 0Ch
		jnz	short loc_4472EB
		or	word ptr [ebx+0Ch], 0Ch
		jmp	short loc_447305
; ---------------------------------------------------------------------------

loc_4472EB:				; CODE XREF: .text:004472E2j
		mov	ax, [ebx+8]
		and	ax, 0FFF3h
		mov	edx, [ebp-6Ch]
		mov	cx, [edx+8]
		and	cx, 0Ch
		or	ax, cx
		mov	[ebx+0Ch], ax

loc_447305:				; CODE XREF: .text:00447226j
					; .text:00447245j ...
		xor	eax, eax
		lea	edx, [ebp-0E0h]
		mov	[ebp-4], eax
		lea	eax, [ebp-0F0h]
		mov	[ebp-98h], eax
		mov	[ebp-9Ch], edx
		lea	ecx, [ebp-0D0h]
		lea	eax, [ebp-0C0h]
		mov	[ebp-0A8h], ecx
		mov	edi, dword_5E0714
		add	edi, 4Ch
		mov	[ebp-0A0h], eax

loc_447343:				; CODE XREF: .text:00447787j
		test	byte ptr [edi+1], 40h
		jz	loc_44775E
		mov	edx, [ebp-0A0h]
		cmp	dword ptr [edx], 0
		jnz	short loc_447362
		mov	ecx, [ebp-0A8h]
		xor	eax, eax
		mov	[ecx], eax

loc_447362:				; CODE XREF: .text:00447356j
		test	byte ptr [edi],	1
		jz	loc_44747E
		cmp	dword ptr [edi+0Ch], 4
		jnz	loc_447414
		cmp	dword ptr [edi+14h], 5
		jnz	short loc_4473AE
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_4473A5
		mov	edx, [ebp-0A0h]
		cmp	dword ptr [edx], 2Ch
		jnz	short loc_4473A5
		mov	ecx, [ebp-0A8h]
		mov	eax, [ebx+56h]
		sub	eax, [ecx]
		cmp	eax, 4
		jnz	short loc_4473A5
		or	dword ptr [ebx+8], 20000h
		jmp	short loc_4473F1
; ---------------------------------------------------------------------------

loc_4473A5:				; CODE XREF: .text:0044737Fj
					; .text:0044738Aj ...
		and	dword ptr [ebx+8], 0FFFDFFFFh
		jmp	short loc_4473F1
; ---------------------------------------------------------------------------

loc_4473AE:				; CODE XREF: .text:00447379j
		cmp	dword ptr [edi+14h], 4
		jnz	short loc_4473F1
		mov	edx, [ebp-0A0h]
		mov	ecx, [edx]
		cmp	ecx, [ebx+1Eh]
		jnz	short loc_4473E4
		push	0
		mov	eax, [ebp-0A8h]
		mov	edx, [eax]
		push	edx
		mov	ecx, [ebp-0A0h]
		mov	eax, [ecx]
		push	eax
		push	ebx
		mov	edx, [ebp+10h]
		push	edx
		call	loc_4405C8
		add	esp, 14h
		jmp	short loc_4473F1
; ---------------------------------------------------------------------------

loc_4473E4:				; CODE XREF: .text:004473BFj
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+5Ah], ecx
		mov	[ebx+0EEh], eax

loc_4473F1:				; CODE XREF: .text:004473A3j
					; .text:004473ACj ...
		mov	edx, [ebp-0A0h]
		mov	eax, [edi+14h]
		mov	ecx, [edx]
		mov	[ebx+eax*4+0Eh], ecx
		mov	edx, [ebp-0A8h]
		mov	eax, [edi+14h]
		mov	ecx, [edx]
		mov	[ebx+eax*4+2Eh], ecx
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_447414:				; CODE XREF: .text:0044736Fj
		cmp	dword ptr [edi+0Ch], 1
		jnz	short loc_44743E
		mov	edx, [edi+14h]
		push	edx		; bytereg
		call	Byteregtodwordreg
		pop	ecx
		mov	[ebp-8], eax
		mov	ecx, [ebp-8]
		xor	eax, eax
		mov	[ebx+ecx*4+0Eh], eax
		mov	edx, [ebp-8]
		xor	ecx, ecx
		mov	[ebx+edx*4+2Eh], ecx
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_44743E:				; CODE XREF: .text:00447418j
		mov	eax, [edi+14h]
		xor	edx, edx
		mov	[ebx+eax*4+0Eh], edx
		mov	ecx, [edi+14h]
		xor	eax, eax
		mov	[ebx+ecx*4+2Eh], eax
		cmp	dword ptr [edi+14h], 5
		jnz	short loc_447462
		and	dword ptr [ebx+8], 0FFFCFFFFh
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_447462:				; CODE XREF: .text:00447454j
		cmp	dword ptr [edi+14h], 4
		jnz	loc_44775E
		xor	edx, edx
		mov	[ebx+5Ah], edx
		xor	ecx, ecx
		mov	[ebx+0EEh], ecx
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_44747E:				; CODE XREF: .text:00447365j
		test	byte ptr [edi+1], 1
		jz	loc_44775E
		cmp	dword ptr [edi+20h], 4
		jz	loc_44775E
		mov	eax, [ebp-9Ch]
		mov	edx, [eax]
		and	edx, 78h
		cmp	edx, 30h
		jnz	loc_4475AA
		xor	ecx, ecx
		mov	[ebp-8], ecx
		mov	esi, ecx
		mov	eax, [ebp-98h]
		mov	edx, eax
		mov	[ebp-0B0h], edx
		jmp	short loc_447529
; ---------------------------------------------------------------------------

loc_4474BD:				; CODE XREF: .text:0044752Fj
		mov	ecx, [ebp-0B0h]
		lea	edx, [esi+esi*2]
		mov	eax, [ecx]
		mov	ecx, [ebx+edx*4+156h]
		add	ecx, 4
		cmp	eax, ecx
		jnb	short loc_4474ED
		mov	eax, [ebp-0B0h]
		lea	ecx, [esi+esi*2]
		mov	edx, [eax]
		add	edx, [edi+0Ch]
		cmp	edx, [ebx+ecx*4+156h]
		ja	short loc_447528

loc_4474ED:				; CODE XREF: .text:004474D4j
		cmp	esi, [ebp-8]
		jz	short loc_447525
		mov	eax, [ebp-8]
		lea	edx, [esi+esi*2]
		lea	eax, [eax+eax*2]
		mov	ecx, [ebx+edx*4+156h]
		mov	[ebx+eax*4+156h], ecx
		mov	ecx, [ebx+edx*4+15Ah]
		mov	[ebx+eax*4+15Ah], ecx
		mov	ecx, [ebx+edx*4+15Eh]
		mov	[ebx+eax*4+15Eh], ecx

loc_447525:				; CODE XREF: .text:004474F0j
		inc	dword ptr [ebp-8]

loc_447528:				; CODE XREF: .text:004474EBj
		inc	esi

loc_447529:				; CODE XREF: .text:004474BBj
		cmp	esi, [ebx+152h]
		jl	short loc_4474BD
		cmp	dword ptr [edi+0Ch], 4
		jnz	short loc_44759C
		mov	eax, [ebp-0A0h]
		test	byte ptr [eax],	60h
		jz	short loc_44759C
		cmp	dword ptr [ebp-8], 2
		jl	short loc_44754F
		mov	dword ptr [ebp-8], 1

loc_44754F:				; CODE XREF: .text:00447546j
		mov	edx, [ebp-8]
		lea	ecx, [ebx+156h]
		shl	edx, 2
		lea	eax, [ebx+162h]
		lea	edx, [edx+edx*2]
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		mov	edx, [ebp-98h]
		mov	ecx, [edx]
		mov	[ebx+156h], ecx
		mov	eax, [ebp-0A0h]
		mov	edx, [eax]
		mov	[ebx+15Ah], edx
		mov	ecx, [ebp-0A8h]
		mov	eax, [ecx]
		mov	[ebx+15Eh], eax
		inc	dword ptr [ebp-8]

loc_44759C:				; CODE XREF: .text:00447535j
					; .text:00447540j
		mov	edx, [ebp-8]
		mov	[ebx+152h], edx
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_4475AA:				; CODE XREF: .text:004474A0j
		mov	ecx, [ebp-9Ch]
		test	dword ptr [ecx], 180h
		jz	short loc_4475C5
		xor	eax, eax
		mov	[ebx+152h], eax
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_4475C5:				; CODE XREF: .text:004475B6j
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx],	20h
		jnz	short loc_4475E0
		xor	ecx, ecx
		mov	[ebx+5Ah], ecx
		mov	[ebx+152h], ecx
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_4475E0:				; CODE XREF: .text:004475CEj
		mov	eax, [ebp-9Ch]
		mov	edx, [eax]
		and	edx, 7Fh
		cmp	edx, 3Ch
		jz	short loc_447611
		xor	eax, eax
		mov	[ebx+152h], eax
		mov	edx, [ebp-9Ch]
		test	byte ptr [edx],	8
		jnz	loc_44775E
		xor	ecx, ecx
		mov	[ebx+5Ah], ecx
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_447611:				; CODE XREF: .text:004475EEj
		mov	eax, [ebp-9Ch]
		mov	edx, [eax]
		xor	edx, [ebx+1Eh]
		test	edx, 0FFFFFC00h
		jz	short loc_44762E
		xor	ecx, ecx
		mov	[ebx+5Ah], ecx
		jmp	loc_44775E
; ---------------------------------------------------------------------------

loc_44762E:				; CODE XREF: .text:00447622j
		xor	eax, eax
		mov	[ebp-8], eax
		mov	esi, eax
		mov	eax, [ebp-98h]
		mov	edx, eax
		mov	[ebp-0B0h], edx
		jmp	short loc_447699
; ---------------------------------------------------------------------------

loc_447645:				; CODE XREF: .text:0044769Cj
		mov	ecx, [ebp-0B0h]
		lea	edx, [esi+esi*2]
		mov	eax, [ecx]
		mov	ecx, [ebx+edx*4+5Eh]
		add	ecx, 4
		cmp	eax, ecx
		jge	short loc_44766F
		mov	eax, [ebp-0B0h]
		lea	ecx, [esi+esi*2]
		mov	edx, [eax]
		add	edx, [edi+0Ch]
		cmp	edx, [ebx+ecx*4+5Eh]
		jg	short loc_447698

loc_44766F:				; CODE XREF: .text:00447659j
		cmp	esi, [ebp-8]
		jz	short loc_447695
		mov	eax, [ebp-8]
		lea	edx, [esi+esi*2]
		lea	eax, [eax+eax*2]
		mov	ecx, [ebx+edx*4+5Eh]
		mov	[ebx+eax*4+5Eh], ecx
		mov	ecx, [ebx+edx*4+62h]
		mov	[ebx+eax*4+62h], ecx
		mov	ecx, [ebx+edx*4+66h]
		mov	[ebx+eax*4+66h], ecx

loc_447695:				; CODE XREF: .text:00447672j
		inc	dword ptr [ebp-8]

loc_447698:				; CODE XREF: .text:0044766Dj
		inc	esi

loc_447699:				; CODE XREF: .text:00447643j
		cmp	esi, [ebx+5Ah]
		jl	short loc_447645
		cmp	dword ptr [edi+0Ch], 4
		jnz	short loc_4476FA
		mov	eax, [ebp-0A0h]
		test	byte ptr [eax],	60h
		jz	short loc_4476FA
		cmp	dword ptr [ebp-8], 0Ch
		jl	short loc_4476BC
		mov	dword ptr [ebp-8], 0Bh

loc_4476BC:				; CODE XREF: .text:004476B3j
		mov	edx, [ebp-8]
		lea	ecx, [ebx+5Eh]
		shl	edx, 2
		lea	eax, [ebx+6Ah]
		lea	edx, [edx+edx*2]
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		inc	dword ptr [ebp-8]
		mov	edx, [ebp-98h]
		mov	ecx, [edx]
		mov	[ebx+5Eh], ecx
		mov	eax, [ebp-0A0h]
		mov	edx, [eax]
		mov	[ebx+62h], edx
		mov	ecx, [ebp-0A8h]
		mov	eax, [ecx]
		mov	[ebx+66h], eax

loc_4476FA:				; CODE XREF: .text:004476A2j
					; .text:004476ADj
		mov	edx, [ebp-8]
		xor	esi, esi
		mov	[ebx+5Ah], edx
		mov	ecx, [ebp-98h]
		mov	eax, [ecx]
		sub	eax, [ebx+3Eh]
		mov	[ebp-3Ch], eax
		xor	eax, eax
		mov	[ebp-34h], eax

loc_447715:				; CODE XREF: .text:0044775Cj
		mov	edx, [edi+0Ch]
		add	edx, [ebp-3Ch]
		cmp	edx, [ebp-34h]
		jbe	short loc_447754
		mov	ecx, [ebp-34h]
		add	ecx, 4
		cmp	ecx, [ebp-3Ch]
		jbe	short loc_447754
		jmp	short loc_447742
; ---------------------------------------------------------------------------

loc_44772D:				; CODE XREF: .text:00447748j
		mov	eax, [ebx+0EEh]
		inc	dword ptr [ebx+0EEh]
		xor	edx, edx
		mov	[ebx+eax*4+0F2h], edx

loc_447742:				; CODE XREF: .text:0044772Bj
		cmp	esi, [ebx+0EEh]
		jge	short loc_44772D
		mov	ecx, [ebp+10h]
		mov	[ebx+esi*4+0F2h], ecx

loc_447754:				; CODE XREF: .text:0044771Ej
					; .text:00447729j
		inc	esi
		add	dword ptr [ebp-34h], 4
		cmp	esi, 18h
		jl	short loc_447715

loc_44775E:				; CODE XREF: .text:00447347j
					; .text:0044740Fj ...
		add	dword ptr [ebp-0A0h], 4
		add	dword ptr [ebp-0A8h], 4
		add	dword ptr [ebp-9Ch], 4
		add	dword ptr [ebp-98h], 4
		inc	dword ptr [ebp-4]
		add	edi, 460h
		cmp	dword ptr [ebp-4], 4
		jl	loc_447343
		cmp	dword ptr [ebx+16Eh], 0
		jnz	short loc_44779E
		xor	eax, eax
		mov	[ebx+172h], eax

loc_44779E:				; CODE XREF: .text:00447794j
		cmp	dword ptr [ebp-0E0h], 440h
		jnz	short loc_4477D0
		test	byte ptr [ebp-0C0h], 20h
		jz	short loc_4477D0
		mov	edx, [ebp-0C0h]
		cmp	edx, [ebx+1Eh]
		jnz	short loc_4477D0
		mov	ecx, [ebp-0D0h]
		cmp	ecx, [ebx+3Eh]
		jnz	short loc_4477D0
		or	dword ptr [ebx+8], 40000h

loc_4477D0:				; CODE XREF: .text:004477A8j
					; .text:004477B1j ...
		xor	eax, eax
		mov	[ebp-8], eax
		mov	esi, eax
		jmp	short loc_44780F
; ---------------------------------------------------------------------------

loc_4477D9:				; CODE XREF: .text:00447812j
		lea	eax, [esi+esi*2]
		mov	edx, [ebx+eax*4+5Eh]
		cmp	edx, [ebx+3Eh]
		jl	short loc_44780E
		cmp	esi, [ebp-8]
		jz	short loc_44780B
		mov	ecx, [ebp-8]
		lea	eax, [esi+esi*2]
		lea	ecx, [ecx+ecx*2]
		mov	edx, [ebx+eax*4+5Eh]
		mov	[ebx+ecx*4+5Eh], edx
		mov	edx, [ebx+eax*4+62h]
		mov	[ebx+ecx*4+62h], edx
		mov	edx, [ebx+eax*4+66h]
		mov	[ebx+ecx*4+66h], edx

loc_44780B:				; CODE XREF: .text:004477E8j
		inc	dword ptr [ebp-8]

loc_44780E:				; CODE XREF: .text:004477E3j
		inc	esi

loc_44780F:				; CODE XREF: .text:004477D7j
		cmp	esi, [ebx+5Ah]
		jl	short loc_4477D9
		mov	ecx, [ebp-8]
		mov	[ebx+5Ah], ecx

loc_44781A:				; CODE XREF: .text:00446B1Dj
		mov	eax, [ebp-38h]

loc_44781D:				; CODE XREF: .text:00441597j
					; .text:00442D10j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		