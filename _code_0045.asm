.code

; ---------------------------------------------------------------------------
; Exported entry 192. _Cmdinfo
; Exported entry 421. Cmdinfo

; int __cdecl Cmdinfo(uchar *cmd, ulong	cmdsize, ulong cmdip, t_cmdinfo	*ci, int cmdmode, t_reg	*cmdreg)
		public Cmdinfo
Cmdinfo:				; _Cmdinfo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFCCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_44783A
		xor	eax, eax
		jmp	loc_4495A0
; ---------------------------------------------------------------------------

loc_44783A:				; CODE XREF: .text:00447831j
		push	0A8h		; n
		push	0		; c
		mov	edx, [ebp+14h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword ptr [ebp+8], 0
		jz	short loc_44785F
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_44785F
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_447866

loc_44785F:				; CODE XREF: .text:00447851j
					; .text:00447857j
		xor	eax, eax
		jmp	loc_4495A0
; ---------------------------------------------------------------------------

loc_447866:				; CODE XREF: .text:0044785Dj
		cmp	dword ptr [ebp+0Ch], 10h
		jbe	short loc_447873
		mov	dword ptr [ebp+0Ch], 10h

loc_447873:				; CODE XREF: .text:0044786Aj
		mov	edx, [ebp+14h]
		mov	ecx, [ebp+10h]
		xor	eax, eax
		xor	ebx, ebx
		mov	[edx], ecx
		mov	dword_5E0720, eax
		mov	eax, [ebp+8]
		mov	edx, eax
		mov	[ebp-28h], edx
		cmp	ebx, [ebp+0Ch]
		jnb	loc_447A1C

loc_447895:				; CODE XREF: .text:00447A16j
		mov	ecx, [ebp-28h]
		xor	eax, eax
		mov	al, [ecx]
		cmp	eax, 65h
		jg	short loc_4478D8
		jz	loc_44798E
		cmp	eax, 36h
		jg	short loc_4478C1
		jz	loc_447943
		sub	eax, 26h
		jz	short loc_447911
		sub	eax, 8
		jz	short loc_44792A
		jmp	loc_447A1C
; ---------------------------------------------------------------------------

loc_4478C1:				; CODE XREF: .text:004478AAj
		sub	eax, 3Eh
		jz	loc_44795C
		sub	eax, 26h
		jz	loc_447975
		jmp	loc_447A1C
; ---------------------------------------------------------------------------

loc_4478D8:				; CODE XREF: .text:0044789Fj
		cmp	eax, 0F0h
		jg	short loc_4478FA
		jz	loc_4479C7
		sub	eax, 66h
		jz	loc_4479A0
		dec	eax
		jz	loc_4479B2
		jmp	loc_447A1C
; ---------------------------------------------------------------------------

loc_4478FA:				; CODE XREF: .text:004478DDj
		sub	eax, 0F2h
		jz	loc_4479DC
		dec	eax
		jz	loc_4479F1
		jmp	loc_447A1C
; ---------------------------------------------------------------------------

loc_447911:				; CODE XREF: .text:004478B5j
		test	byte ptr dword_5E0720, 3Fh
		jnz	loc_447A06
		or	dword_5E0720, 1
		jmp	loc_447A0F
; ---------------------------------------------------------------------------

loc_44792A:				; CODE XREF: .text:004478BAj
		test	byte ptr dword_5E0720, 3Fh
		jnz	loc_447A06
		or	dword_5E0720, 2
		jmp	loc_447A0F
; ---------------------------------------------------------------------------

loc_447943:				; CODE XREF: .text:004478ACj
		test	byte ptr dword_5E0720, 3Fh
		jnz	loc_447A06
		or	dword_5E0720, 4
		jmp	loc_447A0F
; ---------------------------------------------------------------------------

loc_44795C:				; CODE XREF: .text:004478C4j
		test	byte ptr dword_5E0720, 3Fh
		jnz	loc_447A06
		or	dword_5E0720, 8
		jmp	loc_447A0F
; ---------------------------------------------------------------------------

loc_447975:				; CODE XREF: .text:004478CDj
		test	byte ptr dword_5E0720, 3Fh
		jnz	loc_447A06
		or	dword_5E0720, 10h
		jmp	loc_447A0F
; ---------------------------------------------------------------------------

loc_44798E:				; CODE XREF: .text:004478A1j
		test	byte ptr dword_5E0720, 3Fh
		jnz	short loc_447A06
		or	dword_5E0720, 20h
		jmp	short loc_447A0F
; ---------------------------------------------------------------------------

loc_4479A0:				; CODE XREF: .text:004478E8j
		test	byte ptr dword_5E0720, 40h
		jnz	short loc_447A06
		or	dword_5E0720, 40h
		jmp	short loc_447A0F
; ---------------------------------------------------------------------------

loc_4479B2:				; CODE XREF: .text:004478EFj
		test	byte ptr dword_5E0720, 80h
		jnz	short loc_447A06
		or	dword_5E0720, 80h
		jmp	short loc_447A0F
; ---------------------------------------------------------------------------

loc_4479C7:				; CODE XREF: .text:004478DFj
		test	byte ptr dword_5E0720+1, 1
		jnz	short loc_447A06
		or	dword_5E0720, 100h
		jmp	short loc_447A0F
; ---------------------------------------------------------------------------

loc_4479DC:				; CODE XREF: .text:004478FFj
		test	byte ptr dword_5E0720+1, 6
		jnz	short loc_447A06
		or	dword_5E0720, 200h
		jmp	short loc_447A0F
; ---------------------------------------------------------------------------

loc_4479F1:				; CODE XREF: .text:00447906j
		test	byte ptr dword_5E0720+1, 6
		jnz	short loc_447A06
		or	dword_5E0720, 400h
		jmp	short loc_447A0F
; ---------------------------------------------------------------------------

loc_447A06:				; CODE XREF: .text:00447918j
					; .text:00447931j ...
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 40h
		jmp	short loc_447A1C
; ---------------------------------------------------------------------------

loc_447A0F:				; CODE XREF: .text:00447925j
					; .text:0044793Ej ...
		inc	ebx
		inc	dword ptr [ebp-28h]
		cmp	ebx, [ebp+0Ch]
		jb	loc_447895

loc_447A1C:				; CODE XREF: .text:0044788Fj
					; .text:004478BCj ...
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-1Ch], ecx
		mov	[ebp-20h], eax
		lea	edx, [ebx+3]
		mov	dword_5E073C, 10h
		cmp	edx, [ebp+0Ch]
		ja	loc_447B6A
		mov	ecx, [ebp+8]
		movzx	eax, word ptr [ecx+ebx]
		and	eax, 0C0FEh
		cmp	eax, 0C0C4h
		jnz	loc_447B6A
		test	dword_5E0720, 740h
		jz	short loc_447A6B
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 40h
		jmp	loc_447B56
; ---------------------------------------------------------------------------

loc_447A6B:				; CODE XREF: .text:00447A5Dj
		mov	ecx, [ebp+8]
		cmp	byte ptr [ecx+ebx], 0C5h
		jnz	short loc_447A95
		or	dword_5E0720, 10000h
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+1]
		mov	[ebp-1Ch], edx
		mov	dword ptr [ebp-20h], 100h
		add	ebx, 2
		jmp	short loc_447AFF
; ---------------------------------------------------------------------------

loc_447A95:				; CODE XREF: .text:00447A72j
		or	dword_5E0720, 20000h
		mov	ecx, [ebp+8]
		mov	edx, [ebp+8]
		xor	eax, eax
		mov	al, [ecx+2]
		xor	ecx, ecx
		mov	cl, [edx+1]
		shl	ecx, 8
		add	eax, ecx
		mov	[ebp-1Ch], eax
		mov	eax, [ebp-1Ch]
		and	eax, 1F00h
		sub	eax, 100h
		jz	short loc_447AD6
		sub	eax, 100h
		jz	short loc_447AE2
		sub	eax, 100h
		jz	short loc_447AEE
		jmp	short loc_447AFA
; ---------------------------------------------------------------------------

loc_447AD6:				; CODE XREF: .text:00447AC4j
		mov	dword ptr [ebp-20h], 100h
		add	ebx, 3
		jmp	short loc_447AFF
; ---------------------------------------------------------------------------

loc_447AE2:				; CODE XREF: .text:00447ACBj
		mov	dword ptr [ebp-20h], 10100h
		add	ebx, 3
		jmp	short loc_447AFF
; ---------------------------------------------------------------------------

loc_447AEE:				; CODE XREF: .text:00447AD2j
		mov	dword ptr [ebp-20h], 20100h
		add	ebx, 3
		jmp	short loc_447AFF
; ---------------------------------------------------------------------------

loc_447AFA:				; CODE XREF: .text:00447AD4j
		xor	edx, edx
		mov	[ebp-1Ch], edx

loc_447AFF:				; CODE XREF: .text:00447A93j
					; .text:00447AE0j ...
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_447B56
		test	byte ptr [ebp-1Ch], 4
		jz	short loc_447B15
		mov	dword_5E073C, 20h

loc_447B15:				; CODE XREF: .text:00447B09j
		mov	ecx, [ebp-1Ch]
		mov	eax, [ebp-1Ch]
		not	ecx
		shr	ecx, 3
		and	eax, 3
		and	ecx, 7
		dec	eax
		mov	dword_5E0738, ecx
		jz	short loc_447B37
		dec	eax
		jz	short loc_447B40
		dec	eax
		jz	short loc_447B4C
		jmp	short loc_447B56
; ---------------------------------------------------------------------------

loc_447B37:				; CODE XREF: .text:00447B2Dj
		or	dword_5E0720, 40h
		jmp	short loc_447B56
; ---------------------------------------------------------------------------

loc_447B40:				; CODE XREF: .text:00447B30j
		or	dword_5E0720, 400h
		jmp	short loc_447B56
; ---------------------------------------------------------------------------

loc_447B4C:				; CODE XREF: .text:00447B33j
		or	dword_5E0720, 200h

loc_447B56:				; CODE XREF: .text:00447A66j
					; .text:00447B03j ...
		cmp	ebx, [ebp+0Ch]
		jb	short loc_447B6A
		xor	ebx, ebx
		xor	eax, eax
		mov	[ebp-1Ch], eax
		xor	edx, edx
		mov	dword_5E0720, edx

loc_447B6A:				; CODE XREF: .text:00447A36j
					; .text:00447A4Dj ...
		cmp	ebx, [ebp+0Ch]
		jnb	short loc_447B7D
		cmp	ebx, 4
		ja	short loc_447B7D
		mov	ecx, [ebp+14h]
		test	byte ptr [ecx+1Ch], 40h
		jz	short loc_447B90

loc_447B7D:				; CODE XREF: .text:00447B6Dj
					; .text:00447B72j
		cmp	ebx, 4
		jbe	short loc_447B8C
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 80h

loc_447B8C:				; CODE XREF: .text:00447B80j
		xor	ebx, ebx
		jmp	short loc_447BA2
; ---------------------------------------------------------------------------

loc_447B90:				; CODE XREF: .text:00447B7Bj
		mov	eax, [ebp+14h]
		mov	edx, dword_5E0720
		mov	[eax+0Ch], edx
		mov	ecx, [ebp+14h]
		mov	[ecx+10h], ebx

loc_447BA2:				; CODE XREF: .text:00447B8Ej
		lea	eax, [ebx+4]
		cmp	eax, [ebp+0Ch]
		ja	short loc_447BB5
		mov	edx, [ebp+8]
		mov	ecx, [edx+ebx]
		mov	[ebp-0Ch], ecx
		jmp	short loc_447BF6
; ---------------------------------------------------------------------------

loc_447BB5:				; CODE XREF: .text:00447BA8j
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+ebx]
		mov	[ebp-0Ch], edx
		lea	ecx, [ebx+1]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_447BD2
		mov	eax, [ebp+8]
		mov	dl, [eax+ebx+1]
		mov	[ebp-0Bh], dl

loc_447BD2:				; CODE XREF: .text:00447BC6j
		lea	ecx, [ebx+2]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_447BE4
		mov	eax, [ebp+8]
		mov	dl, [eax+ebx+2]
		mov	[ebp-0Ah], dl

loc_447BE4:				; CODE XREF: .text:00447BD8j
		lea	ecx, [ebx+3]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_447BF6
		mov	eax, [ebp+8]
		mov	dl, [eax+ebx+3]
		mov	[ebp-9], dl

loc_447BF6:				; CODE XREF: .text:00447BB3j
					; .text:00447BEAj
		mov	edx, [ebp-0Ch]
		xor	ecx, ecx
		and	edx, 3FFFh
		mov	dword_5E0734, ecx
		shl	edx, 3
		mov	dword_5E0730, ecx
		add	edx, dword_5BDD0C

loc_447C16:				; CODE XREF: .text:00447F78j
		test	edx, edx
		jz	loc_447F7D
		cmp	dword ptr [edx], 0
		jz	loc_447F7D
		mov	eax, [edx]
		mov	ecx, [ebp-0Ch]
		xor	ecx, [eax+14h]
		and	ecx, [eax+10h]
		jnz	loc_447F75
		mov	ecx, [eax+8]
		mov	esi, ecx
		and	esi, 70100h
		cmp	esi, [ebp-20h]
		jnz	loc_447F75
		test	ch, 1
		jz	short loc_447C7C
		test	byte ptr [eax+9], 6
		jnz	short loc_447C61
		test	byte ptr [ebp-1Ch], 4
		jnz	loc_447F75

loc_447C61:				; CODE XREF: .text:00447C55j
		mov	ecx, [eax+8]
		and	ecx, 600h
		cmp	ecx, 400h
		jnz	short loc_447C7C
		test	byte ptr [ebp-1Ch], 4
		jz	loc_447F75

loc_447C7C:				; CODE XREF: .text:00447C4Fj
					; .text:00447C70j
		mov	ecx, [eax+4]
		test	ecx, 0CFFC0h
		jz	loc_44801F
		mov	esi, ecx
		mov	ecx, esi
		and	ecx, 0F000h
		cmp	ecx, 6000h
		jg	short loc_447CE3
		jz	loc_447D95
		cmp	ecx, 3000h
		jg	short loc_447CC6
		jz	loc_447D4F
		sub	ecx, 1000h
		jz	short loc_447D18
		sub	ecx, 1000h
		jz	short loc_447D32
		jmp	loc_447DDA
; ---------------------------------------------------------------------------

loc_447CC6:				; CODE XREF: .text:00447CA9j
		sub	ecx, 4000h
		jz	loc_447D69
		sub	ecx, 1000h
		jz	loc_447D7B
		jmp	loc_447DDA
; ---------------------------------------------------------------------------

loc_447CE3:				; CODE XREF: .text:00447C9Bj
		sub	ecx, 7000h
		jz	loc_447DAF
		sub	ecx, 1000h
		jz	loc_447DBE
		sub	ecx, 1000h
		jz	loc_447DBE
		sub	ecx, 1000h
		jz	loc_447DCD
		jmp	loc_447DDA
; ---------------------------------------------------------------------------

loc_447D18:				; CODE XREF: .text:00447CB7j
		mov	ecx, dword_5E0720
		and	ecx, 640h
		cmp	ecx, 40h
		jnz	loc_447F75
		jmp	loc_447DDA
; ---------------------------------------------------------------------------

loc_447D32:				; CODE XREF: .text:00447CBFj
		mov	ecx, dword_5E0720
		and	ecx, 640h
		cmp	ecx, 200h
		jnz	loc_447F75
		jmp	loc_447DDA
; ---------------------------------------------------------------------------

loc_447D4F:				; CODE XREF: .text:00447CABj
		mov	ecx, dword_5E0720
		and	ecx, 640h
		cmp	ecx, 400h
		jnz	loc_447F75
		jmp	short loc_447DDA
; ---------------------------------------------------------------------------

loc_447D69:				; CODE XREF: .text:00447CCCj
		test	dword_5E0720, 640h
		jnz	loc_447F75
		jmp	short loc_447DDA
; ---------------------------------------------------------------------------

loc_447D7B:				; CODE XREF: .text:00447CD8j
		mov	ecx, dword_5E0720
		and	ecx, 600h
		cmp	ecx, 200h
		jnz	loc_447F75
		jmp	short loc_447DDA
; ---------------------------------------------------------------------------

loc_447D95:				; CODE XREF: .text:00447C9Dj
		mov	ecx, dword_5E0720
		and	ecx, 600h
		cmp	ecx, 400h
		jnz	loc_447F75
		jmp	short loc_447DDA
; ---------------------------------------------------------------------------

loc_447DAF:				; CODE XREF: .text:00447CE9j
		test	byte ptr dword_5E0720+1, 6
		jnz	loc_447F75
		jmp	short loc_447DDA
; ---------------------------------------------------------------------------

loc_447DBE:				; CODE XREF: .text:00447CF5j
					; .text:00447D01j
		test	byte ptr dword_5E0720+1, 4
		jz	loc_447F75
		jmp	short loc_447DDA
; ---------------------------------------------------------------------------

loc_447DCD:				; CODE XREF: .text:00447D0Dj
		test	byte ptr dword_5E0720+1, 2
		jz	loc_447F75

loc_447DDA:				; CODE XREF: .text:00447CC1j
					; .text:00447CDEj ...
		test	esi, 100h
		jz	short loc_447DEF
		test	byte ptr dword_5E0720, 40h
		jz	loc_447F75

loc_447DEF:				; CODE XREF: .text:00447DE0j
		test	esi, 200h
		jz	short loc_447E04
		test	byte ptr dword_5E0720, 40h
		jnz	loc_447F75

loc_447E04:				; CODE XREF: .text:00447DF5j
		test	esi, 400h
		jz	short loc_447E19
		test	byte ptr dword_5E0720, 80h
		jz	loc_447F75

loc_447E19:				; CODE XREF: .text:00447E0Aj
		test	esi, 800h
		jz	short loc_447E2E
		test	byte ptr dword_5E0720, 80h
		jnz	loc_447F75

loc_447E2E:				; CODE XREF: .text:00447E1Fj
		test	esi, 80h
		jz	short loc_447E55
		cmp	dword_5BDCE8, 0
		jz	short loc_447E55
		test	byte ptr mode+1, 8
		jnz	short loc_447E55
		test	byte ptr dword_5E0720, 0B7h
		jz	loc_447F75

loc_447E55:				; CODE XREF: .text:00447E34j
					; .text:00447E3Dj ...
		test	esi, 40000h
		jz	short loc_447E8B
		mov	ecx, [eax+0Ch]
		add	ecx, ebx
		cmp	ecx, [ebp+0Ch]
		jnb	loc_447F7D
		mov	ecx, [eax+0Ch]
		add	ecx, ebx
		mov	edi, [ebp+8]
		movzx	ecx, byte ptr [edi+ecx]
		and	ecx, 0C0h
		cmp	ecx, 0C0h
		jz	loc_447F75
		jmp	short loc_447EBF
; ---------------------------------------------------------------------------

loc_447E8B:				; CODE XREF: .text:00447E5Bj
		test	esi, 80000h
		jz	short loc_447EBF
		mov	ecx, [eax+0Ch]
		add	ecx, ebx
		cmp	ecx, [ebp+0Ch]
		jnb	loc_447F7D
		mov	ecx, [eax+0Ch]
		add	ecx, ebx
		mov	edi, [ebp+8]
		movzx	ecx, byte ptr [edi+ecx]
		and	ecx, 0C0h
		cmp	ecx, 0C0h
		jnz	loc_447F75

loc_447EBF:				; CODE XREF: .text:00447E89j
					; .text:00447E91j
		test	esi, 40h
		jz	loc_44801F
		test	esi, 8000000h
		jnz	loc_447F75
		mov	esi, [eax+0Ch]
		add	esi, ebx
		cmp	esi, [ebp+0Ch]
		jnb	loc_447F7D
		test	byte ptr dword_5E0720, 80h
		jz	short loc_447F08
		mov	ecx, [ebp+8]
		movzx	ecx, byte ptr [ecx+esi]
		mov	edi, ecx
		shl	ecx, 3
		sub	ecx, edi
		lea	ecx, [ecx+ecx*2]
		add	esi, dword ptr tmpcmdinfo._ip[ecx*8]
		jmp	short loc_447F56
; ---------------------------------------------------------------------------

loc_447F08:				; CODE XREF: .text:00447EECj
		mov	ecx, [ebp+8]
		movzx	ecx, byte ptr [ecx+esi]
		mov	edi, ecx
		lea	ecx, [edi+ecx*4]
		lea	ecx, [edi+ecx*4]
		shl	ecx, 3
		add	ecx, offset stru_593CC6
		mov	[ebp-24h], ecx
		mov	ecx, [ebp-24h]
		cmp	dword ptr [ecx+4], 0
		jnz	short loc_447F33
		mov	ecx, [ebp-24h]
		add	esi, [ecx]
		jmp	short loc_447F56
; ---------------------------------------------------------------------------

loc_447F33:				; CODE XREF: .text:00447F2Aj
		lea	ecx, [esi+1]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_447F7D
		mov	ecx, [ebp+8]
		movzx	ecx, byte ptr [ecx+esi+1]
		mov	edi, ecx
		shl	ecx, 3
		sub	ecx, edi
		mov	edi, [ebp-24h]
		mov	edi, [edi+4]
		lea	ecx, [ecx+ecx*2]
		add	esi, [edi+ecx*8]

loc_447F56:				; CODE XREF: .text:00447F06j
					; .text:00447F31j
		cmp	esi, [ebp+0Ch]
		jnb	short loc_447F7D
		mov	ecx, [ebp+8]
		mov	cl, [ecx+esi]
		cmp	cl, [eax+18h]
		jnz	short loc_447F75
		mov	dword_5E0730, 1
		jmp	loc_44801F
; ---------------------------------------------------------------------------

loc_447F75:				; CODE XREF: .text:00447C32j
					; .text:00447C46j ...
		mov	edx, [edx+4]
		jmp	loc_447C16
; ---------------------------------------------------------------------------

loc_447F7D:				; CODE XREF: .text:00447C18j
					; .text:00447C21j ...
		xor	eax, eax
		cmp	dword_5E0720, 0
		jz	short loc_447FE6
		xor	ebx, ebx
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax+10h], edx
		xor	ecx, ecx
		mov	dword_5E0720, ecx
		mov	eax, [ebp+14h]
		mov	[eax+0Ch], ecx
		mov	edx, [ebp+8]
		xor	eax, eax
		mov	al, [edx+ebx]
		and	eax, 3FFFh
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0Ch]
		shl	edx, 3
		add	edx, dword_5BDD0C

loc_447FBC:				; CODE XREF: .text:00447FE4j
		test	edx, edx
		jz	short loc_447FC5
		cmp	dword ptr [edx], 0
		jnz	short loc_447FC9

loc_447FC5:				; CODE XREF: .text:00447FBEj
		xor	eax, eax
		jmp	short loc_447FE6
; ---------------------------------------------------------------------------

loc_447FC9:				; CODE XREF: .text:00447FC3j
		mov	eax, [edx]
		mov	ecx, [eax+4]
		and	ecx, 1Fh
		cmp	ecx, 1Eh
		jnz	short loc_447FE1
		mov	ecx, [ebp-0Ch]
		xor	ecx, [eax+14h]
		and	ecx, [eax+10h]
		jz	short loc_447FE6

loc_447FE1:				; CODE XREF: .text:00447FD4j
		mov	edx, [edx+4]
		jmp	short loc_447FBC
; ---------------------------------------------------------------------------

loc_447FE6:				; CODE XREF: .text:00447F86j
					; .text:00447FC7j ...
		test	eax, eax
		jnz	short loc_44801F
		mov	eax, [ebp+14h]
		mov	dword ptr [eax+4], 1
		mov	edx, [ebp+14h]
		xor	eax, eax
		mov	[edx+10h], eax
		mov	edx, [ebp+14h]
		xor	ecx, ecx
		mov	[edx+0Ch], ecx
		mov	eax, [ebp+14h]
		mov	dword ptr [eax+8], 1Fh
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 1
		mov	eax, 1
		jmp	loc_4495A0
; ---------------------------------------------------------------------------

loc_44801F:				; CODE XREF: .text:00447C85j
					; .text:00447EC5j ...
		mov	edx, [ebp+14h]
		mov	esi, [eax+4]
		test	esi, 0FF00h
		mov	[edx+8], esi
		jz	short loc_44809D
		mov	ecx, esi
		and	ecx, 0F000h
		cmp	ecx, 3000h
		jg	short loc_448054
		jz	short loc_448066
		sub	ecx, 1000h
		jz	short loc_448066
		sub	ecx, 1000h
		jz	short loc_448066
		jmp	short loc_44807C
; ---------------------------------------------------------------------------

loc_448054:				; CODE XREF: .text:0044803Ej
		sub	ecx, 5000h
		jz	short loc_448072
		sub	ecx, 1000h
		jz	short loc_448072
		jmp	short loc_44807C
; ---------------------------------------------------------------------------

loc_448066:				; CODE XREF: .text:00448040j
					; .text:00448048j ...
		and	dword_5E0720, 0FFFFF9BFh
		jmp	short loc_44807C
; ---------------------------------------------------------------------------

loc_448072:				; CODE XREF: .text:0044805Aj
					; .text:00448062j
		and	dword_5E0720, 0FFFFF9FFh

loc_44807C:				; CODE XREF: .text:00448052j
					; .text:00448064j ...
		test	esi, 100h
		jz	short loc_44808B
		and	dword_5E0720, 0FFFFFFBFh

loc_44808B:				; CODE XREF: .text:00448082j
		test	esi, 400h
		jz	short loc_44809D
		and	dword_5E0720, 0FFFFFF7Fh

loc_44809D:				; CODE XREF: .text:0044802Ej
					; .text:00448091j
		add	ebx, [eax+0Ch]
		cmp	ebx, [ebp+0Ch]
		jbe	short loc_4480B1
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449571
; ---------------------------------------------------------------------------

loc_4480B1:				; CODE XREF: .text:004480A3j
		xor	edx, edx
		xor	ecx, ecx
		mov	dword_5E0728, edx
		mov	dword_5E072C, ecx
		test	esi, 20h
		jz	short loc_4480DC
		mov	edx, [ebp+8]
		test	byte ptr [edx+ebx-1], 1
		jnz	short loc_4480DC
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4480F5
; ---------------------------------------------------------------------------

loc_4480DC:				; CODE XREF: .text:004480C7j
					; .text:004480D1j
		test	byte ptr dword_5E0720, 40h
		jz	short loc_4480EE
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4480F5
; ---------------------------------------------------------------------------

loc_4480EE:				; CODE XREF: .text:004480E3j
		mov	dword ptr [ebp-14h], 4

loc_4480F5:				; CODE XREF: .text:004480DAj
					; .text:004480ECj
		xor	ecx, ecx
		mov	[ebp-8], ecx
		mov	edx, [ebp+8]
		mov	edi, [ebp+14h]
		add	edi, 28h
		lea	ecx, [edx+ebx]
		mov	edx, [ebp-14h]
		add	ecx, edx
		add	eax, 1Ch
		mov	[ebp-34h], ecx
		mov	edx, [ebp+8]
		lea	ecx, [edx+ebx]
		mov	[ebp-2Ch], ecx
		mov	[ebp-28h], eax

loc_44811D:				; CODE XREF: .text:00449553j
		mov	eax, [ebp-28h]
		mov	edx, [eax]
		mov	[ebp-10h], edx
		mov	eax, [ebp-10h]
		and	eax, 0FFh
		test	eax, eax
		jz	loc_449559
		mov	edx, [ebp-10h]
		cmp	eax, 85h	; switch 134 cases
		mov	[edi+4], edx
		ja	loc_44952F	; jumptable 00448146 default case
		jmp	ds:off_44814D[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_44814D	dd offset loc_44952F, offset loc_448365, offset	loc_44837C
					; DATA XREF: .text:00448146r
		dd offset loc_448395, offset loc_4483AC, offset	loc_4483C5 ; jump table	for switch statement
		dd offset loc_4483DE, offset loc_4483F7, offset	loc_448410
		dd offset loc_448427, offset loc_448440, offset	loc_448459
		dd offset loc_448472, offset loc_448488, offset	loc_4484AE
		dd offset loc_4484C6, offset loc_4484DE, offset	loc_448510
		dd offset loc_448543, offset loc_448576, offset	loc_448595
		dd offset loc_449539, offset loc_4485B5, offset	loc_4486E1
		dd offset loc_448720, offset loc_44875F, offset	loc_4485B5
		dd offset loc_44879E, offset loc_4487EC, offset	loc_44883A
		dd offset loc_448869, offset loc_4488B7, offset	loc_448906
		dd offset loc_448922, offset loc_44893F, offset	loc_44895B
		dd offset loc_448978, offset loc_4489B3, offset	loc_4489D0
		dd offset loc_448A1E, offset loc_448A6B, offset	loc_448AEE
		dd offset loc_448A6B, offset loc_448B0C, offset	loc_448B2B
		dd offset loc_448B2B, offset loc_448B43, offset	loc_448B5D
		dd offset loc_448B78, offset loc_448B94, offset	loc_448BC7
		dd offset loc_448C11, offset loc_448C2A, offset	loc_448C43
		dd offset loc_448C5A, offset loc_448C73, offset	loc_448C8C
		dd offset loc_448CA5, offset loc_448CC5, offset	loc_448CDC
		dd offset loc_448CF5, offset loc_44879E, offset	loc_448D43
		dd offset loc_448D43, offset loc_448D91, offset	loc_448DC4
		dd offset loc_448E03, offset loc_448D91, offset	loc_448DC4
		dd offset loc_448D91, offset loc_448DC4, offset	loc_448D91
		dd offset loc_448DC4, offset loc_448E20, offset	loc_448E53
		dd offset loc_448E92, offset loc_448E92, offset	loc_448E92
		dd offset loc_448EB7, offset loc_448EB7, offset	loc_448EB7
		dd offset loc_448F21, offset loc_448F6F, offset	loc_44901A
		dd offset loc_448EB7, offset loc_448EB7, offset	loc_448F21
		dd offset loc_448FC4, offset loc_448EB7, offset	loc_448F21
		dd offset loc_449131, offset loc_44901A, offset	loc_449086
		dd offset loc_4490DB, offset loc_448EB7, offset	loc_448F21
		dd offset loc_44901A, offset loc_449086, offset	loc_448EB7
		dd offset loc_448EB7, offset loc_448EB7, offset	loc_448F21
		dd offset loc_44901A, offset loc_448EB7, offset	loc_448F21
		dd offset loc_448EB7, offset loc_44915D, offset	loc_449175
		dd offset loc_44918E, offset loc_4491E4, offset	loc_449238
		dd offset loc_4492A1, offset loc_4492EE, offset	loc_449307
		dd offset loc_4493A3, offset loc_4493D2, offset	loc_449415
		dd offset loc_449415, offset loc_449448, offset	loc_449479
		dd offset loc_4494AC, offset loc_4494C0, offset	loc_4494ED
		dd offset loc_449503, offset loc_449519, offset	loc_448EF8
		dd offset loc_448EF8, offset loc_448EF8, offset	loc_448EF8
		dd offset loc_448EF8, offset loc_448EF8, offset	loc_448EF8
		dd offset loc_448EF8, offset loc_449342
; ---------------------------------------------------------------------------

loc_448365:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 1
		xor	ecx, ecx
		mov	dword ptr [edi+8], 1
		mov	[edi+0Ch], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44837C:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 2
		mov	dword ptr [edi+8], 1
		mov	dword ptr [edi+0Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448395:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 3
		xor	eax, eax
		mov	dword ptr [edi+8], 2
		mov	[edi+0Ch], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4483AC:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 4
		mov	dword ptr [edi+8], 1
		mov	dword ptr [edi+0Ch], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4483C5:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 5
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4483DE:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 6
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4483F7:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 401h ;	jumptable 00448146 case	7
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448410:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 8
		xor	edx, edx
		mov	dword ptr [edi+8], 4
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448427:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 9
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi+0Ch], 3
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448440:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 10
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi+0Ch], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448459:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 11
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi+0Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448472:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 12
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		xor	eax, eax
		mov	[edi+0Ch], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448488:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 13
		mov	edx, 2
		test	byte ptr dword_5E0720, 80h
		jnz	short loc_44849F
		add	edx, 2

loc_44849F:				; CODE XREF: .text:0044849Aj
		mov	[edi+8], edx
		mov	dword ptr [edi+0Ch], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4484AE:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 14
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		mov	dword ptr [edi+0Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4484C6:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 15
		mov	eax, [ebp-14h]
		mov	[edi+8], eax
		mov	dword ptr [edi+0Ch], 5
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4484DE:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 16
		jb	short loc_4484EF
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4484EF:				; CODE XREF: .text:004484E1j
		mov	dword ptr [edi], 1
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [eax]
		sar	edx, 3
		and	edx, 7
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448510:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 17
		jb	short loc_448521
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448521:				; CODE XREF: .text:00448513j
		mov	dword ptr [edi], 1
		mov	dword ptr [edi+8], 2
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [eax]
		sar	edx, 3
		and	edx, 7
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448543:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 18
		jb	short loc_448554
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448554:				; CODE XREF: .text:00448546j
		mov	dword ptr [edi], 1
		mov	dword ptr [edi+8], 4
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [eax]
		sar	edx, 3
		and	edx, 7
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448576:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 19
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [eax-1]
		and	edx, 7
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448595:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 1 ; jumptable 00448146	case 20
		mov	dword ptr [edi+8], 1
		mov	ecx, [ebp-2Ch]
		xor	eax, eax
		mov	al, [ecx-1]
		and	eax, 7
		mov	[edi+0Ch], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4485B5:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	edx, [ebp-14h]	; jumptable 00448146 cases 22,26
		mov	[edi+8], edx
		push	edi
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_448606
		mov	edx, [ebp-10h]
		and	edx, 0F0000h
		cmp	edx, 80000h
		jnz	short loc_4485FB
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4485FB
		mov	ecx, [edi+0Ch]
		mov	eax, [ebp+1Ch]
		mov	edx, [eax+ecx*4+0Ch]
		mov	ecx, [ebp+14h]
		mov	[ecx+20h], edx

loc_4485FB:				; CODE XREF: .text:004485E3j
					; .text:004485E9j
		mov	dword ptr [edi], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448606:				; CODE XREF: .text:004485D2j
		test	eax, eax
		jge	short loc_448616
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448616:				; CODE XREF: .text:00448608j
		mov	edx, [ebp-10h]
		and	edx, 0F0000h
		cmp	edx, 80000h
		jnz	loc_449539	; jumptable 00448146 case 21
		test	byte ptr [ebp+18h], 10h
		jz	loc_449539	; jumptable 00448146 case 21
		test	byte ptr [edi+2], 20h
		jnz	loc_449539	; jumptable 00448146 case 21
		cmp	dword ptr [edi+8], 4
		jnz	loc_449539	; jumptable 00448146 case 21
		cmp	dword ptr [edi+10h], 4
		jz	short loc_448655
		cmp	dword ptr [edi+10h], 5
		jnz	short loc_448671

loc_448655:				; CODE XREF: .text:0044864Dj
		cmp	dword ptr [ebp+1Ch], 0
		jz	loc_449539	; jumptable 00448146 case 21
		mov	ecx, [edi+10h]
		mov	eax, [ebp+1Ch]
		mov	edx, [eax+ecx*4+48h]
		add	edx, [edi+1Ch]
		mov	[ebp-18h], edx
		jmp	short loc_448677
; ---------------------------------------------------------------------------

loc_448671:				; CODE XREF: .text:00448653j
		mov	ecx, [edi+1Ch]
		mov	[ebp-18h], ecx

loc_448677:				; CODE XREF: .text:0044866Fj
		test	byte ptr [edi+2], 8
		jz	short loc_4486B5
		cmp	dword ptr [ebp+1Ch], 0
		jz	loc_449539	; jumptable 00448146 case 21
		xor	eax, eax
		lea	edx, [edi+14h]
		mov	[ebp-4], eax
		mov	[ebp-30h], edx
		mov	ecx, [ebp+1Ch]
		lea	eax, [ecx+0Ch]

loc_448698:				; CODE XREF: .text:004486B3j
		mov	edx, [eax]
		mov	ecx, [ebp-30h]
		movzx	ecx, byte ptr [ecx]
		imul	edx, ecx
		add	[ebp-18h], edx
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-30h]
		add	eax, 4
		cmp	dword ptr [ebp-4], 8
		jl	short loc_448698

loc_4486B5:				; CODE XREF: .text:0044867Bj
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-18h]
		push	eax		; _addr
		mov	edx, [ebp+14h]
		add	edx, 20h
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	loc_449539	; jumptable 00448146 case 21
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax+20h], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4486E1:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi+8], 1 ; jumptable 00448146 case 23
		push	edi
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44870C
		mov	dword ptr [edi], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44870C:				; CODE XREF: .text:004486FFj
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448720:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi+8], 2 ; jumptable 00448146 case 24
		push	edi
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44874B
		mov	dword ptr [edi], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44874B:				; CODE XREF: .text:0044873Ej
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44875F:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi+8], 4 ; jumptable 00448146 case 25
		push	edi
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44878A
		mov	dword ptr [edi], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44878A:				; CODE XREF: .text:0044877Dj
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44879E:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 cases 27,61
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4487C3
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4487C3:				; CODE XREF: .text:004487B5j
		test	eax, eax
		jnz	short loc_4487E0
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi], 1001h
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4487E0:				; CODE XREF: .text:004487C5j
		mov	dword ptr [edi+8], 8
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4487EC:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 28
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_448811
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448811:				; CODE XREF: .text:00448803j
		test	eax, eax
		jnz	short loc_44882E
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi], 1001h
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44882E:				; CODE XREF: .text:00448813j
		mov	dword ptr [edi+8], 10h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44883A:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	edx, [ebp-14h]	; jumptable 00448146 case 29
		mov	[edi+8], edx
		push	edi
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EFB0
		add	esp, 0Ch
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448869:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 30
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_44888E
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44888E:				; CODE XREF: .text:00448880j
		test	eax, eax
		jnz	short loc_4488AA
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		mov	dword ptr [edi], 1001h
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4488AA:				; CODE XREF: .text:00448890j
		mov	edx, [ebp-14h]
		add	edx, edx
		mov	[edi+8], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4488B7:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 31
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4488DC
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4488DC:				; CODE XREF: .text:004488CEj
		test	eax, eax
		jnz	short loc_4488F8
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		mov	dword ptr [edi], 1001h
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4488F8:				; CODE XREF: .text:004488DEj
		mov	edx, [ebp-14h]
		add	edx, 2
		mov	[edi+8], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448906:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 32
		push	0
		push	0
		push	1
		push	7
		call	loc_43F028
		add	esp, 14h
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448922:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 33
		push	0
		push	0
		push	1
		push	7
		call	loc_43F028
		mov	dword ptr [edi+8], 1
		add	esp, 14h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44893F:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 34
		push	0
		push	0FFFFFFFFh
		push	1
		push	6
		call	loc_43F028
		add	esp, 14h
		mov	eax, [ebp-14h]
		mov	[edi+8], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44895B:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 35
		push	0
		push	0FFFFFFFFh
		push	1
		push	6
		call	loc_43F028
		mov	dword ptr [edi+8], 1
		add	esp, 14h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448978:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 80100h	; jumptable 00448146 case 36
		test	byte ptr dword_5E0720, 80h
		jz	short loc_44898D
		or	dword ptr [edi], 200000h

loc_44898D:				; CODE XREF: .text:00448985j
		mov	dword ptr [edi+8], 1
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		push	3
		call	loc_43EE2C
		pop	ecx
		mov	[edi+10h], eax
		mov	byte ptr [edi+14h], 1
		mov	byte ptr [edi+17h], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4489B3:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 37
		push	4
		push	0FFFFFFFFh
		push	0
		push	0
		call	loc_43F028
		mov	dword ptr [edi+8], 1
		add	esp, 14h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4489D0:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 38
		mov	edx, [ebp+0Ch]
		sub	edx, ebx
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4489F5
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4489F5:				; CODE XREF: .text:004489E7j
		test	eax, eax
		jnz	short loc_448A12
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi], 1001h
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448A12:				; CODE XREF: .text:004489F7j
		mov	dword ptr [edi+8], 100h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448A1E:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 39
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_448A43
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448A43:				; CODE XREF: .text:00448A35j
		test	eax, eax
		jnz	short loc_448A5F
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		mov	dword ptr [edi], 1001h
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448A5F:				; CODE XREF: .text:00448A45j
		mov	dword ptr [edi+8], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448A6B:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 cases 40,42
		push	0
		push	2
		push	1
		push	4
		call	loc_43F028
		add	esp, 14h
		mov	edx, [ebp-14h]
		mov	[edi+8], edx
		mov	ecx, [ebp-10h]
		and	ecx, 0F0000h
		cmp	ecx, 80000h
		jnz	loc_449539	; jumptable 00448146 case 21
		test	byte ptr [ebp+18h], 10h
		jz	loc_449539	; jumptable 00448146 case 21
		cmp	dword ptr [ebp+1Ch], 0
		jz	loc_449539	; jumptable 00448146 case 21
		test	byte ptr [edi+2], 20h
		jnz	loc_449539	; jumptable 00448146 case 21
		cmp	dword ptr [edi+8], 4
		jnz	loc_449539	; jumptable 00448146 case 21
		push	1		; mode
		push	4		; size
		mov	eax, [ebp+1Ch]
		mov	edx, [eax+1Ch]
		push	edx		; _addr
		mov	ecx, [ebp+14h]
		add	ecx, 20h
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	loc_449539	; jumptable 00448146 case 21
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax+20h], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448AEE:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 41
		push	0
		push	2
		push	1
		push	4
		call	loc_43F028
		add	esp, 14h
		mov	ecx, [ebp-14h]
		add	ecx, ecx
		mov	[edi+8], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448B0C:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 43
		push	0
		push	2
		push	1
		push	4
		call	loc_43F028
		add	esp, 14h
		mov	eax, [ebp-14h]
		shl	eax, 3
		mov	[edi+8], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448B2B:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 cases 44,45
		mov	edx, [ebp-14h]
		push	edx
		call	loc_43F090
		add	esp, 8
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448B43:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 46
		mov	eax, [ebp-14h]
		push	eax
		call	loc_43F0C8
		add	esp, 8
		mov	edx, [ebp-14h]
		add	edx, edx
		mov	[edi+8], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448B5D:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 47
		mov	ecx, [ebp-14h]
		push	ecx
		call	loc_43F104
		add	esp, 8
		mov	eax, [ebp-14h]
		shl	eax, 3
		mov	[edi+8], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448B78:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 48
		push	0
		push	2
		push	1
		push	5
		call	loc_43F028
		add	esp, 14h
		mov	edx, [ebp-14h]
		mov	[edi+8], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448B94:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 49
		jb	short loc_448BA5
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448BA5:				; CODE XREF: .text:00448B97j
		mov	dword ptr [edi], 2
		mov	dword ptr [edi+8], 2
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [eax]
		sar	edx, 3
		and	edx, 7
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448BC7:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 50
		jb	short loc_448BD8
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448BD8:				; CODE XREF: .text:00448BCAj
		mov	dword ptr [edi], 2
		mov	dword ptr [edi+8], 2
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [eax]
		sar	edx, 3
		and	edx, 7
		mov	[edi+0Ch], edx
		cmp	dword ptr [edi+0Ch], 1
		jnz	loc_449539	; jumptable 00448146 case 21
		or	dword ptr [edi], 1000h
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 20h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448C11:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 2 ; jumptable 00448146	case 51
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448C2A:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 2 ; jumptable 00448146	case 52
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 3
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448C43:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 2 ; jumptable 00448146	case 53
		xor	eax, eax
		mov	dword ptr [edi+8], 2
		mov	[edi+0Ch], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448C5A:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 2 ; jumptable 00448146	case 54
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448C73:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 2 ; jumptable 00448146	case 55
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 5
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448C8C:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 2 ; jumptable 00448146	case 56
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448CA5:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 4 ; jumptable 00448146	case 57
		mov	dword ptr [edi+8], 0Ah
		mov	edx, [ebp-2Ch]
		xor	ecx, ecx
		mov	cl, [edx-1]
		and	ecx, 7
		mov	[edi+0Ch], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448CC5:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 4 ; jumptable 00448146	case 58
		xor	eax, eax
		mov	dword ptr [edi+8], 0Ah
		mov	[edi+0Ch], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448CDC:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 4 ; jumptable 00448146	case 59
		mov	dword ptr [edi+8], 0Ah
		mov	dword ptr [edi+0Ch], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448CF5:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 60
		mov	edx, [ebp+0Ch]
		sub	edx, ebx
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_448D1A
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448D1A:				; CODE XREF: .text:00448D0Cj
		test	eax, eax
		jnz	short loc_448D37
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi], 1001h
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448D37:				; CODE XREF: .text:00448D1Cj
		mov	dword ptr [edi+8], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448D43:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 cases 62,63
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_448D68
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448D68:				; CODE XREF: .text:00448D5Aj
		test	eax, eax
		jnz	short loc_448D85
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi], 1001h
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448D85:				; CODE XREF: .text:00448D6Aj
		mov	dword ptr [edi+8], 0Ah
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448D91:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 cases 64,67,69,71
		jb	short loc_448DA2
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448DA2:				; CODE XREF: .text:00448D94j
		mov	dword ptr [edi], 8
		mov	dword ptr [edi+8], 8
		mov	edx, [ebp-2Ch]
		xor	ecx, ecx
		mov	cl, [edx]
		sar	ecx, 3
		and	ecx, 7
		mov	[edi+0Ch], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448DC4:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi+8], 8 ; jumptable 00448146 cases	65,68,70,72
		push	edi
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_448DEF
		mov	dword ptr [edi], 8
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448DEF:				; CODE XREF: .text:00448DE2j
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448E03:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 66
		push	0
		push	0FFFFFFFFh
		push	0
		push	7
		call	loc_43F028
		mov	dword ptr [edi+8], 8
		add	esp, 14h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448E20:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 73
		jb	short loc_448E31
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448E31:				; CODE XREF: .text:00448E23j
		mov	dword ptr [edi], 10h
		mov	dword ptr [edi+8], 8
		mov	edx, [ebp-2Ch]
		xor	ecx, ecx
		mov	cl, [edx]
		sar	ecx, 3
		and	ecx, 7
		mov	[edi+0Ch], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448E53:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi+8], 8 ; jumptable 00448146 case 74
		push	edi
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_448E7E
		mov	dword ptr [edi], 10h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448E7E:				; CODE XREF: .text:00448E71j
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448E92:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 20h ; jumptable 00448146 cases	75-77
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_448EA5
		mov	eax, 10h
		jmp	short loc_448EAA
; ---------------------------------------------------------------------------

loc_448EA5:				; CODE XREF: .text:00448E9Cj
		mov	eax, dword_5E073C

loc_448EAA:				; CODE XREF: .text:00448EA3j
		mov	[edi+8], eax
		xor	edx, edx
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448EB7:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 cases 78-80,84,85,88,94,98-100,103,105
		jb	short loc_448EC8
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448EC8:				; CODE XREF: .text:00448EBAj
		mov	dword ptr [edi], 20h
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_448EDB
		mov	eax, 10h
		jmp	short loc_448EE0
; ---------------------------------------------------------------------------

loc_448EDB:				; CODE XREF: .text:00448ED2j
		mov	eax, dword_5E073C

loc_448EE0:				; CODE XREF: .text:00448ED9j
		mov	[edi+8], eax
		mov	edx, [ebp-2Ch]
		xor	ecx, ecx
		mov	cl, [edx]
		sar	ecx, 3
		and	ecx, 7
		mov	[edi+0Ch], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448EF8:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 20h ; jumptable 00448146 cases	125-132
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_448F0B
		mov	eax, 10h
		jmp	short loc_448F10
; ---------------------------------------------------------------------------

loc_448F0B:				; CODE XREF: .text:00448F02j
		mov	eax, dword_5E073C

loc_448F10:				; CODE XREF: .text:00448F09j
		mov	[edi+8], eax
		mov	edx, dword_5E0738
		mov	[edi+0Ch], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448F21:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		test	byte ptr [ebp-0Dh], 4 ;	jumptable 00448146 cases 81,86,89,95,101,104
		jz	short loc_448F2E
		mov	ecx, 10h
		jmp	short loc_448F34
; ---------------------------------------------------------------------------

loc_448F2E:				; CODE XREF: .text:00448F25j
		mov	ecx, dword_5E073C

loc_448F34:				; CODE XREF: .text:00448F2Cj
		mov	[edi+8], ecx
		push	edi
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_448F5B
		mov	dword ptr [edi], 20h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448F5B:				; CODE XREF: .text:00448F4Ej
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448F6F:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 82
		mov	edx, [ebp+0Ch]
		sub	edx, ebx
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_448FA8
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_448F95
		mov	eax, 10h
		jmp	short loc_448F9A
; ---------------------------------------------------------------------------

loc_448F95:				; CODE XREF: .text:00448F8Cj
		mov	eax, dword_5E073C

loc_448F9A:				; CODE XREF: .text:00448F93j
		mov	[edi+8], eax
		mov	dword ptr [edi], 20h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448FA8:				; CODE XREF: .text:00448F86j
		test	eax, eax
		jge	short loc_448FB8
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448FB8:				; CODE XREF: .text:00448FAAj
		mov	dword ptr [edi+8], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448FC4:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 87
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_448FFE
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_448FEA
		mov	edx, 10h
		jmp	short loc_448FF0
; ---------------------------------------------------------------------------

loc_448FEA:				; CODE XREF: .text:00448FE1j
		mov	edx, dword_5E073C

loc_448FF0:				; CODE XREF: .text:00448FE8j
		mov	[edi+8], edx
		mov	dword ptr [edi], 20h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_448FFE:				; CODE XREF: .text:00448FDBj
		test	eax, eax
		jge	short loc_44900E
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44900E:				; CODE XREF: .text:00449000j
		mov	dword ptr [edi+8], 8
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44901A:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 cases 83,91,96,102
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_449054
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_449040
		mov	edx, 10h
		jmp	short loc_449046
; ---------------------------------------------------------------------------

loc_449040:				; CODE XREF: .text:00449037j
		mov	edx, dword_5E073C

loc_449046:				; CODE XREF: .text:0044903Ej
		mov	[edi+8], edx
		mov	dword ptr [edi], 20h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449054:				; CODE XREF: .text:00449031j
		test	eax, eax
		jge	short loc_449064
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449064:				; CODE XREF: .text:00449056j
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_449071
		mov	ecx, 10h
		jmp	short loc_449077
; ---------------------------------------------------------------------------

loc_449071:				; CODE XREF: .text:00449068j
		mov	ecx, dword_5E073C

loc_449077:				; CODE XREF: .text:0044906Fj
		sar	ecx, 1
		jns	short loc_44907E
		adc	ecx, 0

loc_44907E:				; CODE XREF: .text:00449079j
		mov	[edi+8], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449086:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 cases 92,97
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4490BF
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_4490AC
		mov	eax, 10h
		jmp	short loc_4490B1
; ---------------------------------------------------------------------------

loc_4490AC:				; CODE XREF: .text:004490A3j
		mov	eax, dword_5E073C

loc_4490B1:				; CODE XREF: .text:004490AAj
		mov	[edi+8], eax
		mov	dword ptr [edi], 20h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4490BF:				; CODE XREF: .text:0044909Dj
		test	eax, eax
		jge	short loc_4490CF
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4490CF:				; CODE XREF: .text:004490C1j
		mov	dword ptr [edi+8], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4490DB:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 93
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_449115
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_449101
		mov	edx, 10h
		jmp	short loc_449107
; ---------------------------------------------------------------------------

loc_449101:				; CODE XREF: .text:004490F8j
		mov	edx, dword_5E073C

loc_449107:				; CODE XREF: .text:004490FFj
		mov	[edi+8], edx
		mov	dword ptr [edi], 20h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449115:				; CODE XREF: .text:004490F2j
		test	eax, eax
		jge	short loc_449125
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449125:				; CODE XREF: .text:00449117j
		mov	dword ptr [edi+8], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449131:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 90
		push	0
		push	0FFFFFFFFh
		push	0
		push	7
		call	loc_43F028
		add	esp, 14h
		test	byte ptr [ebp-0Dh], 4
		jz	short loc_44914F
		mov	ecx, 10h
		jmp	short loc_449155
; ---------------------------------------------------------------------------

loc_44914F:				; CODE XREF: .text:00449146j
		mov	ecx, dword_5E073C

loc_449155:				; CODE XREF: .text:0044914Dj
		mov	[edi+8], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44915D:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 800h ;	jumptable 00448146 case	106
		mov	eax, [ebp-14h]
		mov	[edi+8], eax
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449175:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 800h ;	jumptable 00448146 case	107
		mov	dword ptr [edi+8], 1
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44918E:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 108
		mov	edx, [ebp+10h]
		add	edx, ebx
		push	edx
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		mov	ecx, [ebp-14h]
		push	ecx
		mov	eax, [ebp-14h]
		push	eax
		call	loc_43F140
		add	esp, 18h
		test	eax, eax
		jge	short loc_4491C1
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4491C1:				; CODE XREF: .text:004491B3j
		mov	ecx, [ebp-10h]
		and	ecx, 0F0000h
		cmp	ecx, 80000h
		jnz	loc_449539	; jumptable 00448146 case 21
		mov	eax, [edi+1Ch]
		mov	edx, [ebp+14h]
		mov	[edx+20h], eax
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4491E4:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 109
		mov	ecx, [ebp+10h]
		add	ecx, ebx
		push	ecx
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		mov	ecx, [ebp-14h]
		push	ecx
		push	1
		call	loc_43F140
		add	esp, 18h
		test	eax, eax
		jge	short loc_449215
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449215:				; CODE XREF: .text:00449207j
		mov	edx, [ebp-10h]
		and	edx, 0F0000h
		cmp	edx, 80000h
		jnz	loc_449539	; jumptable 00448146 case 21
		mov	ecx, [edi+1Ch]
		mov	eax, [ebp+14h]
		mov	[eax+20h], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449238:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	edx, [ebp-14h]	; jumptable 00448146 case 110
		add	edx, ebx
		add	edx, 2
		cmp	edx, [ebp+0Ch]
		jbe	short loc_449251
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449251:				; CODE XREF: .text:00449243j
		mov	dword ptr [edi], 40200h
		mov	eax, [ebp-14h]
		add	eax, 2
		mov	[edi+8], eax
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		cmp	dword ptr [ebp-14h], 2
		jnz	short loc_449278
		mov	edx, [ebp-2Ch]
		movzx	ecx, word ptr [edx]
		mov	[edi+1Ch], ecx
		jmp	short loc_449280
; ---------------------------------------------------------------------------

loc_449278:				; CODE XREF: .text:0044926Bj
		mov	eax, [ebp-2Ch]
		mov	edx, [eax]
		mov	[edi+1Ch], edx

loc_449280:				; CODE XREF: .text:00449276j
		mov	ecx, [ebp-34h]
		movzx	eax, word ptr [ecx]
		mov	[edi+10h], eax
		mov	edx, [ebp-14h]
		mov	dword_5E0730, edx
		mov	dword_5E0734, 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4492A1:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 111
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		call	loc_43EE84
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4492C6
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4492C6:				; CODE XREF: .text:004492B8j
		test	eax, eax
		jnz	short loc_4492E2
		mov	ecx, [ebp-14h]
		mov	[edi+8], ecx
		mov	dword ptr [edi], 1001h
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 4
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4492E2:				; CODE XREF: .text:004492C8j
		mov	dword ptr [edi+8], 6
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4492EE:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 200h ;	jumptable 00448146 case	112
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		mov	dword ptr [edi+1Ch], 1
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449307:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 113
		push	0
		mov	edx, [ebp+0Ch]
		sub	edx, ebx
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx
		push	1
		push	1
		call	loc_43F1AC
		add	esp, 18h
		test	eax, eax
		jge	short loc_44932D
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2

loc_44932D:				; CODE XREF: .text:00449324j
		test	byte ptr [ebp-0Eh], 0Bh
		jz	loc_449539	; jumptable 00448146 case 21
		or	dword ptr [edi], 400h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449342:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	ecx, dword_5E0728 ; jumptable 00448146 case 133
		mov	edx, [ebp+0Ch]
		add	ecx, dword_5E072C
		sub	edx, ebx
		inc	ecx
		cmp	edx, ecx
		jnb	short loc_449368
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		jmp	short loc_449391
; ---------------------------------------------------------------------------

loc_449368:				; CODE XREF: .text:00449356j
		mov	dword_5E0730, 1
		mov	edx, dword_5E0728
		add	edx, ebx
		add	edx, dword_5E072C
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	al, [ecx+edx]
		sar	eax, 4
		and	eax, 7
		mov	[edi+0Ch], eax

loc_449391:				; CODE XREF: .text:00449366j
		mov	dword ptr [edi], 20h
		mov	dword ptr [edi+8], 10h
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4493A3:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 114
		push	1
		mov	edx, [ebp+0Ch]
		sub	edx, ebx
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx
		push	1
		push	1
		call	loc_43F1AC
		add	esp, 18h
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4493D2:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 115
		push	0
		mov	edx, [ebp+0Ch]
		sub	edx, ebx
		push	edx
		mov	ecx, [ebp+8]
		add	ecx, ebx
		push	ecx
		push	2
		push	2
		call	loc_43F1AC
		add	esp, 18h
		test	eax, eax
		jge	short loc_4493FD
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4493FD:				; CODE XREF: .text:004493EFj
		test	byte ptr [ebp-0Eh], 0Ah
		jz	loc_449539	; jumptable 00448146 case 21
		mov	edx, [edi+1Ch]
		mov	ecx, [ebp+14h]
		mov	[ecx+24h], edx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449415:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 cases 116,117
		push	0
		mov	eax, [ebp+0Ch]
		sub	eax, ebx
		push	eax
		mov	edx, [ebp+8]
		add	edx, ebx
		push	edx
		mov	ecx, [ebp-14h]
		push	ecx
		mov	eax, [ebp-14h]
		push	eax
		call	loc_43F1AC
		add	esp, 18h
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449448:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		push	edi		; jumptable 00448146 case 118
		push	0
		mov	ecx, [ebp+0Ch]
		sub	ecx, ebx
		push	ecx
		mov	eax, [ebp+8]
		add	eax, ebx
		push	eax
		mov	edx, [ebp-14h]
		push	edx
		push	1
		call	loc_43F1AC
		add	esp, 18h
		test	eax, eax
		jge	loc_449539	; jumptable 00448146 case 21
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449479:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 119
		jb	short loc_44948A
		mov	eax, [ebp+14h]
		or	dword ptr [eax+1Ch], 2
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44948A:				; CODE XREF: .text:0044947Cj
		mov	dword ptr [edi], 40h
		mov	dword ptr [edi+8], 4
		mov	edx, [ebp-2Ch]
		xor	ecx, ecx
		mov	cl, [edx]
		sar	ecx, 3
		and	ecx, 7
		mov	[edi+0Ch], ecx
		jmp	loc_449539	; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4494AC:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 40h ; jumptable 00448146 case 120
		xor	eax, eax
		mov	dword ptr [edi+8], 4
		mov	[edi+0Ch], eax
		jmp	short loc_449539 ; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4494C0:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		cmp	ebx, [ebp+0Ch]	; jumptable 00448146 case 121
		jb	short loc_4494CE
		mov	edx, [ebp+14h]
		or	dword ptr [edx+1Ch], 2
		jmp	short loc_449539 ; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4494CE:				; CODE XREF: .text:004494C3j
		mov	dword ptr [edi], 80h
		mov	dword ptr [edi+8], 4
		mov	ecx, [ebp-2Ch]
		xor	eax, eax
		mov	al, [ecx]
		sar	eax, 3
		and	eax, 7
		mov	[edi+0Ch], eax
		jmp	short loc_449539 ; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_4494ED:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 800h ;	jumptable 00448146 case	122
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		jmp	short loc_449539 ; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449503:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 800h ;	jumptable 00448146 case	123
		mov	dword ptr [edi+8], 2
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		jmp	short loc_449539 ; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_449519:				; CODE XREF: .text:00448146j
					; DATA XREF: .text:off_44814Do
		mov	dword ptr [edi], 800h ;	jumptable 00448146 case	124
		mov	dword ptr [edi+8], 4
		mov	dword ptr [edi+0Ch], 0FFFFFFFFh
		jmp	short loc_449539 ; jumptable 00448146 case 21
; ---------------------------------------------------------------------------

loc_44952F:				; CODE XREF: .text:00448140j
					; .text:00448146j
					; DATA XREF: ...
		mov	edx, [ebp+14h]	; jumptable 00448146 default case
		or	dword ptr [edx+1Ch], 200h

loc_449539:				; CODE XREF: .text:00448146j
					; .text:00448377j ...
		test	byte ptr [ebp-0Dh], 40h	; jumptable 00448146 case 21
		jz	short loc_449545
		or	dword ptr [edi], 2000h

loc_449545:				; CODE XREF: .text:0044953Dj
		add	dword ptr [ebp-28h], 4
		inc	dword ptr [ebp-8]
		add	edi, 20h
		cmp	dword ptr [ebp-8], 4
		jl	loc_44811D

loc_449559:				; CODE XREF: .text:0044812Fj
		test	byte ptr dword_5E0720+1, 1
		jz	short loc_449571
		test	esi, 10000h
		jnz	short loc_449571
		mov	ecx, [ebp+14h]
		or	dword ptr [ecx+1Ch], 10h

loc_449571:				; CODE XREF: .text:004480ACj
					; .text:00449560j ...
		mov	eax, [ebp+14h]
		test	byte ptr [eax+1Ch], 2
		jz	short loc_44957F
		mov	ebx, [ebp+0Ch]
		jmp	short loc_449598
; ---------------------------------------------------------------------------

loc_44957F:				; CODE XREF: .text:00449578j
		mov	eax, dword_5E0728
		add	eax, dword_5E072C
		add	eax, dword_5E0730
		add	eax, dword_5E0734
		add	ebx, eax

loc_449598:				; CODE XREF: .text:0044957Dj
		mov	edx, [ebp+14h]
		mov	eax, ebx
		mov	[edx+4], ebx

loc_4495A0:				; CODE XREF: .text:00447835j
					; .text:00447861j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
