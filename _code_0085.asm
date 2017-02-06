.code

; Exported entry 320. _Comparecommand
; Exported entry 424. Comparecommand

; int __cdecl Comparecommand(uchar *cmd, ulong cmdsize,	ulong cmdip, t_asmmod *model, int nmodel, int *pa, int *pb, t_disasm *da)
		public Comparecommand
Comparecommand:				; CODE XREF: .text:0044E60Ep
					; .text:004A53CCp ...
		push	ebp		; _Comparecommand
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF724h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4A4F59
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A4F59
		test	ebx, ebx
		jz	short loc_4A4F59
		cmp	dword ptr [ebp+18h], 0
		jg	short loc_4A4F60

loc_4A4F59:				; CODE XREF: .text:004A4F47j
					; .text:004A4F4Dj ...
		xor	eax, eax
		jmp	loc_4A5279
; ---------------------------------------------------------------------------

loc_4A4F60:				; CODE XREF: .text:004A4F57j
		cmp	dword ptr [ebp+0Ch], 5
		jb	short loc_4A4FCC
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, ebx
		mov	eax, [ebp-4]
		cmp	eax, [ebp+18h]
		jge	short loc_4A4FBD

loc_4A4F75:				; CODE XREF: .text:004A4FBBj
		movzx	edi, byte ptr [esi]
		xor	eax, eax
		xor	edx, edx
		mov	al, [ecx]
		mov	dl, [ecx+10h]
		xor	edi, eax
		test	edi, edx
		jz	short loc_4A4FBD
		movzx	edi, byte ptr [esi+1]
		xor	edi, eax
		test	edi, edx
		jz	short loc_4A4FBD
		movzx	edi, byte ptr [esi+2]
		xor	edi, eax
		test	edi, edx
		jz	short loc_4A4FBD
		movzx	edi, byte ptr [esi+3]
		xor	edi, eax
		test	edi, edx
		jz	short loc_4A4FBD
		movzx	edi, byte ptr [esi+4]
		xor	eax, edi
		test	eax, edx
		jz	short loc_4A4FBD
		inc	dword ptr [ebp-4]
		add	ecx, 6Ch
		mov	eax, [ebp-4]
		cmp	eax, [ebp+18h]
		jl	short loc_4A4F75

loc_4A4FBD:				; CODE XREF: .text:004A4F73j
					; .text:004A4F85j ...
		mov	edx, [ebp-4]
		cmp	edx, [ebp+18h]
		jl	short loc_4A4FCC
		xor	eax, eax
		jmp	loc_4A5279
; ---------------------------------------------------------------------------

loc_4A4FCC:				; CODE XREF: .text:004A4F64j
					; .text:004A4FC3j
		cmp	dword ptr [ebp+24h], 0
		jnz	short loc_4A4FE5
		mov	dword ptr [ebp-18D0h], 0FFFFFFFFh
		lea	edx, [ebp-18DCh]
		mov	[ebp+24h], edx

loc_4A4FE5:				; CODE XREF: .text:004A4FD0j
		mov	ecx, [ebp+24h]
		mov	eax, [ecx+0Ch]
		cmp	eax, [ebp+10h]
		jz	short loc_4A504B
		push	0		; predict
		push	0		; reg
		push	400h		; mode
		mov	edx, [ebp+24h]
		push	edx		; da
		push	0		; dec
		mov	ecx, [ebp+10h]
		push	ecx		; ip
		mov	eax, [ebp+0Ch]
		push	eax		; cmdsize
		push	esi		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-8], eax
		mov	edx, [ebp+24h]
		test	byte ptr [edx+1Eh], 1
		jz	short loc_4A502F
		mov	ecx, [ebp+24h]
		and	dword ptr [ecx+1Ch], 0FFFFF9BFh
		mov	eax, [ebp+24h]
		sub	dword ptr [eax+20h], 2
		jmp	short loc_4A5054
; ---------------------------------------------------------------------------

loc_4A502F:				; CODE XREF: .text:004A501Aj
		mov	edx, [ebp+24h]
		test	byte ptr [edx+1Eh], 2
		jz	short loc_4A5054
		mov	ecx, [ebp+24h]
		and	dword ptr [ecx+1Ch], 0FFFFF9BFh
		mov	eax, [ebp+24h]
		sub	dword ptr [eax+20h], 3
		jmp	short loc_4A5054
; ---------------------------------------------------------------------------

loc_4A504B:				; CODE XREF: .text:004A4FEEj
		mov	edx, [ebp+24h]
		mov	ecx, [edx+10h]
		mov	[ebp-8], ecx

loc_4A5054:				; CODE XREF: .text:004A502Dj
					; .text:004A5036j ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4A5066
		mov	eax, [ebp+24h]
		test	dword ptr [eax+2Ch], 283h
		jz	short loc_4A506D

loc_4A5066:				; CODE XREF: .text:004A5058j
		xor	eax, eax
		jmp	loc_4A5279
; ---------------------------------------------------------------------------

loc_4A506D:				; CODE XREF: .text:004A5064j
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-8]
		lea	eax, [esi+ecx-1]
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-4]
		cmp	edx, [ebp+18h]
		jge	loc_4A5277

loc_4A5088:				; CODE XREF: .text:004A5271j
		mov	ecx, [ebp+24h]
		xor	edx, edx
		mov	dl, [ebx+24h]
		mov	eax, [ecx+20h]
		add	eax, edx
		cmp	eax, [ebp+0Ch]
		ja	loc_4A5265
		xor	edx, edx
		mov	eax, ebx
		jmp	short loc_4A50B8
; ---------------------------------------------------------------------------

loc_4A50A4:				; CODE XREF: .text:004A50BFj
		mov	ecx, [ebp+24h]
		mov	ecx, [ecx+20h]
		add	ecx, edx
		mov	cl, [esi+ecx]
		xor	cl, [eax]
		and	cl, [eax+10h]
		jnz	short loc_4A50C1
		inc	edx
		inc	eax

loc_4A50B8:				; CODE XREF: .text:004A50A2j
		xor	ecx, ecx
		mov	cl, [ebx+24h]
		cmp	edx, ecx
		jl	short loc_4A50A4

loc_4A50C1:				; CODE XREF: .text:004A50B4j
		xor	eax, eax
		mov	al, [ebx+24h]
		cmp	edx, eax
		jl	loc_4A5265
		mov	edx, [ebp+24h]
		mov	eax, [edx+1Ch]
		mov	edx, [ebx+20h]
		and	edx, 0F000h
		cmp	edx, 6000h
		jg	short loc_4A512B
		jz	loc_4A51C2
		cmp	edx, 3000h
		jg	short loc_4A510E
		jz	loc_4A5189
		sub	edx, 1000h
		jz	short loc_4A5160
		sub	edx, 1000h
		jz	short loc_4A5173
		jmp	loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A510E:				; CODE XREF: .text:004A50F1j
		sub	edx, 4000h
		jz	loc_4A519F
		sub	edx, 1000h
		jz	loc_4A51AC
		jmp	loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A512B:				; CODE XREF: .text:004A50E3j
		sub	edx, 7000h
		jz	loc_4A51D8
		sub	edx, 1000h
		jz	loc_4A51E3
		sub	edx, 1000h
		jz	loc_4A51E3
		sub	edx, 1000h
		jz	loc_4A51EA
		jmp	loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A5160:				; CODE XREF: .text:004A50FFj
		mov	ecx, eax
		and	ecx, 640h
		cmp	ecx, 40h
		jnz	loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A5173:				; CODE XREF: .text:004A5107j
		mov	edx, eax
		and	edx, 640h
		cmp	edx, 200h
		jnz	loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A5189:				; CODE XREF: .text:004A50F3j
		mov	ecx, eax
		and	ecx, 640h
		cmp	ecx, 400h
		jnz	loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A519F:				; CODE XREF: .text:004A5114j
		test	eax, 640h
		jnz	loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A51AC:				; CODE XREF: .text:004A5120j
		mov	edx, eax
		and	edx, 600h
		cmp	edx, 200h
		jnz	loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A51C2:				; CODE XREF: .text:004A50E5j
		mov	ecx, eax
		and	ecx, 600h
		cmp	ecx, 400h
		jnz	loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A51D8:				; CODE XREF: .text:004A5131j
		test	ah, 6
		jnz	loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A51E3:				; CODE XREF: .text:004A513Dj
					; .text:004A5149j
		test	ah, 4
		jz	short loc_4A5265
		jmp	short loc_4A51EF
; ---------------------------------------------------------------------------

loc_4A51EA:				; CODE XREF: .text:004A5155j
		test	ah, 2
		jz	short loc_4A5265

loc_4A51EF:				; CODE XREF: .text:004A5109j
					; .text:004A5126j ...
		mov	dl, [ebx+25h]
		test	dl, 2
		jz	short loc_4A51FE
		test	al, 3Fh
		jz	short loc_4A5265
		and	eax, 0FFFFFFC0h

loc_4A51FE:				; CODE XREF: .text:004A51F5j
		mov	edi, eax
		mov	ecx, [ebx+20h]
		not	edi
		and	edi, ecx
		test	edi, 0FC0FFFh
		jnz	short loc_4A5265
		not	ecx
		and	eax, ecx
		mov	edi, 630h
		test	dl, 10h
		jnz	short loc_4A5220
		or	edi, 40h

loc_4A5220:				; CODE XREF: .text:004A521Bj
		test	dl, 20h
		jz	short loc_4A522B
		or	edi, 80h

loc_4A522B:				; CODE XREF: .text:004A5223j
		test	edi, eax
		jnz	short loc_4A5265
		test	dl, 8
		jz	short loc_4A524D
		mov	eax, [ebp+20h]
		push	eax
		mov	edx, [ebp+1Ch]
		push	edx
		push	ebx
		mov	ecx, [ebp+24h]
		push	ecx
		call	loc_4A13D4
		add	esp, 10h
		test	eax, eax
		jz	short loc_4A5265

loc_4A524D:				; CODE XREF: .text:004A5232j
		test	byte ptr [ebx+25h], 4
		jz	short loc_4A5260
		mov	eax, [ebp-0Ch]
		mov	dl, [eax]
		xor	dl, [ebx+0Fh]
		and	dl, [ebx+1Fh]
		jnz	short loc_4A5265

loc_4A5260:				; CODE XREF: .text:004A5251j
		mov	eax, [ebp-8]
		jmp	short loc_4A5279
; ---------------------------------------------------------------------------

loc_4A5265:				; CODE XREF: .text:004A5098j
					; .text:004A50C8j ...
		inc	dword ptr [ebp-4]
		add	ebx, 6Ch
		mov	edx, [ebp-4]
		cmp	edx, [ebp+18h]
		jl	loc_4A5088

loc_4A5277:				; CODE XREF: .text:004A5082j
		xor	eax, eax

loc_4A5279:				; CODE XREF: .text:004A4F5Bj
					; .text:004A4FC7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 321. _Comparesequence
; Exported entry 425. Comparesequence

; unsigned int __cdecl Comparesequence(uchar *cmd, ulong cmdsize, ulong	cmdip, uchar *decode, t_asmmod *model, int nmodel, int mode, int *pa, int *pb, t_disasm	*da, ulong *amatch, int	namatch)
		public Comparesequence
Comparesequence:			; CODE XREF: .text:00464B0Fp
					; .text:004A59DEp ...
		push	ebp		; _Comparesequence
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF6FCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+2Ch]
		jz	short loc_4A52AE
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A52AE
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4A52AE
		cmp	dword ptr [ebp+1Ch], 0
		jg	short loc_4A52B5

loc_4A52AE:				; CODE XREF: .text:004A529Aj
					; .text:004A52A0j ...
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A52B5:				; CODE XREF: .text:004A52ACj
		test	edi, edi
		jnz	short loc_4A52C9
		mov	dword ptr [ebp-18F8h], 0FFFFFFFFh
		lea	edi, [ebp-1904h]

loc_4A52C9:				; CODE XREF: .text:004A52B7j
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-1Ch], eax
		or	eax, 0FFFFFFFFh
		mov	[ebp-0Ch], eax
		mov	[ebp-8], eax
		mov	[ebp-24h], edx
		mov	ecx, 1
		mov	[ebp-14h], ecx
		mov	[ebp-10h], ecx
		xor	eax, eax
		xor	esi, esi
		mov	[ebp-4], eax
		mov	edx, [ebp+30h]
		mov	eax, edx
		mov	[ebp-34h], eax
		cmp	esi, [ebp+1Ch]
		jge	loc_4A559E

loc_4A52FF:				; CODE XREF: .text:004A5598j
		mov	edx, [ebp-1Ch]
		cmp	edx, [ebp+0Ch]
		jb	short loc_4A530E
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A530E:				; CODE XREF: .text:004A5305j
		lea	edx, [esi+esi*2]
		mov	ecx, [ebp+18h]
		mov	ebx, 1
		lea	edx, [edx+edx*8]
		test	byte ptr [ecx+edx*4+23h], 0E0h
		setnz	al
		and	eax, 1
		mov	[ebp-18h], eax
		lea	eax, [esi+esi*2]
		mov	edx, [ebp+18h]
		lea	eax, [eax+eax*8]
		lea	ecx, [edx+eax*4+20h]
		mov	[ebp-30h], ecx
		jmp	short loc_4A535D
; ---------------------------------------------------------------------------

loc_4A533C:				; CODE XREF: .text:004A5363j
		lea	eax, [eax+eax*2]
		lea	eax, [eax+eax*8]
		mov	edx, [ebp+18h]
		test	byte ptr [edx+eax*4+25h], 80h
		jnz	short loc_4A5365
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+3], 0E0h
		jz	short loc_4A535C
		mov	dword ptr [ebp-18h], 1

loc_4A535C:				; CODE XREF: .text:004A5353j
		inc	ebx

loc_4A535D:				; CODE XREF: .text:004A533Aj
		lea	eax, [ebx+esi]
		cmp	eax, [ebp+1Ch]
		jl	short loc_4A533C

loc_4A5365:				; CODE XREF: .text:004A534Aj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4A539E
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4A539E
		mov	edx, [ebp+14h]
		mov	ecx, [ebp-1Ch]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 1Fh
		test	eax, eax
		jz	short loc_4A539E
		cmp	eax, 1Ch
		jz	short loc_4A539E
		cmp	eax, 1Dh
		jz	short loc_4A539E
		cmp	eax, 1Eh
		jz	short loc_4A539E
		cmp	eax, 1Fh
		jz	short loc_4A539E
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A539E:				; CODE XREF: .text:004A5369j
					; .text:004A536Fj ...
		mov	eax, esi
		push	edi		; da
		shl	eax, 2
		lea	edx, [ebp-0Ch]
		push	edx		; pb
		lea	ecx, [ebp-8]
		lea	eax, [eax+eax*2]
		push	ecx		; pa
		push	ebx		; nmodel
		lea	eax, [eax+eax*8]
		add	eax, [ebp+18h]
		push	eax		; model
		mov	edx, [ebp+10h]
		add	edx, [ebp-1Ch]
		push	edx		; cmdip
		mov	ecx, [ebp+0Ch]
		sub	ecx, [ebp-1Ch]
		push	ecx		; cmdsize
		mov	eax, [ebp+8]
		add	eax, [ebp-1Ch]
		push	eax		; cmd
		call	Comparecommand
		add	esp, 20h
		mov	[ebp-20h], eax
		mov	eax, [edi+14h]
		and	eax, 1Fh
		cmp	dword ptr [ebp-20h], 0
		jbe	loc_4A54AB
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4A5401
		cmp	eax, 2
		jz	short loc_4A540D
		cmp	eax, 3
		jz	short loc_4A540D
		cmp	eax, 8
		jz	short loc_4A540D
		cmp	eax, 9
		jz	short loc_4A540D

loc_4A5401:				; CODE XREF: .text:004A53EBj
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4A5414
		test	byte ptr [edi+17h], 20h
		jz	short loc_4A5414

loc_4A540D:				; CODE XREF: .text:004A53F0j
					; .text:004A53F5j ...
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A5414:				; CODE XREF: .text:004A5405j
					; .text:004A540Bj
		mov	edx, [edi+34h]
		and	edx, [ebp-24h]
		jz	short loc_4A5423
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A5423:				; CODE XREF: .text:004A541Aj
		mov	edx, [edi+38h]
		not	edx
		and	[ebp-24h], edx
		mov	ecx, [edi+14h]
		and	ecx, 700000h
		cmp	ecx, 400000h
		jg	short loc_4A5458
		jz	short loc_4A546A
		sub	ecx, 100000h
		jz	short loc_4A546A
		sub	ecx, 100000h
		jz	short loc_4A5477
		sub	ecx, 100000h
		jz	short loc_4A546A
		jmp	short loc_4A547E
; ---------------------------------------------------------------------------

loc_4A5458:				; CODE XREF: .text:004A543Aj
		sub	ecx, (offset stru_5FF23C.text+0DC0h)
		jz	short loc_4A546A
		sub	ecx, 100000h
		jz	short loc_4A5477
		jmp	short loc_4A547E
; ---------------------------------------------------------------------------

loc_4A546A:				; CODE XREF: .text:004A543Cj
					; .text:004A5444j ...
		mov	eax, 1
		mov	[ebp-14h], eax
		mov	[ebp-10h], eax
		jmp	short loc_4A547E
; ---------------------------------------------------------------------------

loc_4A5477:				; CODE XREF: .text:004A544Cj
					; .text:004A5466j
		mov	dword ptr [ebp-10h], 1

loc_4A547E:				; CODE XREF: .text:004A5456j
					; .text:004A5468j ...
		cmp	dword ptr [ebp+30h], 0
		jz	loc_4A558D
		mov	edx, [ebp-4]
		cmp	edx, [ebp+34h]
		jge	loc_4A558D
		mov	ecx, [ebp+10h]
		mov	eax, [ebp-34h]
		add	ecx, [ebp-1Ch]
		mov	[eax], ecx
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-34h], 4
		jmp	loc_4A558D
; ---------------------------------------------------------------------------

loc_4A54AB:				; CODE XREF: .text:004A53E1j
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4A54B8
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A54B8:				; CODE XREF: .text:004A54AFj
		test	byte ptr [ebp+20h], 1
		jnz	short loc_4A54C5
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A54C5:				; CODE XREF: .text:004A54BCj
		cmp	dword ptr [edi+10h], 0
		jz	short loc_4A54D1
		cmp	dword ptr [edi+2Ch], 0
		jz	short loc_4A54D8

loc_4A54D1:				; CODE XREF: .text:004A54C9j
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A54D8:				; CODE XREF: .text:004A54CFj
		cmp	eax, 5
		jz	short loc_4A550A
		cmp	eax, 6
		jz	short loc_4A550A
		cmp	eax, 7
		jz	short loc_4A550A
		cmp	eax, 0Ch
		jz	short loc_4A550A
		cmp	eax, 0Dh
		jz	short loc_4A550A
		cmp	eax, 0Eh
		jz	short loc_4A550A
		cmp	eax, 0Fh
		jz	short loc_4A550A
		cmp	eax, 10h
		jz	short loc_4A550A
		cmp	eax, 16h
		jz	short loc_4A550A
		cmp	eax, 1Fh
		jnz	short loc_4A5511

loc_4A550A:				; CODE XREF: .text:004A54DBj
					; .text:004A54E0j ...
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A5511:				; CODE XREF: .text:004A5508j
		push	1		; njmpcall
		lea	edx, [ebp-2Ch]
		push	edx		; jmpcall
		mov	ecx, [ebp+10h]
		add	ecx, [ebp-1Ch]
		push	ecx		; dest
		call	Findlocaljumpscallsto
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A5531
		xor	eax, eax
		jmp	loc_4A5602
; ---------------------------------------------------------------------------

loc_4A5531:				; CODE XREF: .text:004A5528j
		mov	edx, [edi+14h]
		and	edx, 700000h
		cmp	edx, 400000h
		jg	short loc_4A555E
		jz	short loc_4A5570
		sub	edx, 100000h
		jz	short loc_4A5570
		sub	edx, 100000h
		jz	short loc_4A557A
		sub	edx, 100000h
		jz	short loc_4A5570
		jmp	short loc_4A557F
; ---------------------------------------------------------------------------

loc_4A555E:				; CODE XREF: .text:004A5540j
		sub	edx, (offset stru_5FF23C.text+0DC0h)
		jz	short loc_4A5570
		sub	edx, 100000h
		jz	short loc_4A557A
		jmp	short loc_4A557F
; ---------------------------------------------------------------------------

loc_4A5570:				; CODE XREF: .text:004A5542j
					; .text:004A554Aj ...
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		mov	[ebp-10h], ecx
		jmp	short loc_4A557F
; ---------------------------------------------------------------------------

loc_4A557A:				; CODE XREF: .text:004A5552j
					; .text:004A556Cj
		xor	eax, eax
		mov	[ebp-10h], eax

loc_4A557F:				; CODE XREF: .text:004A555Cj
					; .text:004A556Ej ...
		mov	edx, [edi+38h]
		or	[ebp-24h], edx
		xor	ebx, ebx
		mov	eax, [edi+10h]
		mov	[ebp-20h], eax

loc_4A558D:				; CODE XREF: .text:004A5482j
					; .text:004A548Ej ...
		mov	eax, [ebp-20h]
		add	[ebp-1Ch], eax
		add	esi, ebx
		cmp	esi, [ebp+1Ch]
		jl	loc_4A52FF

loc_4A559E:				; CODE XREF: .text:004A52F9j
		test	byte ptr [ebp+20h], 2
		jnz	short loc_4A55BF
		mov	edx, [ebp+10h]
		add	edx, [ebp-1Ch]
		push	edx		; addr1
		mov	ecx, [ebp+10h]
		push	ecx		; addr0
		call	Arelocaljumpscallstorange
		add	esp, 8
		test	eax, eax
		jz	short loc_4A55BF
		xor	eax, eax
		jmp	short loc_4A5602
; ---------------------------------------------------------------------------

loc_4A55BF:				; CODE XREF: .text:004A55A2j
					; .text:004A55B9j
		cmp	dword ptr [ebp+30h], 0
		jz	short loc_4A55E3
		mov	edx, [ebp-4]
		cmp	edx, [ebp+34h]
		jge	short loc_4A55E3

loc_4A55CD:				; CODE XREF: .text:004A55E1j
		mov	ecx, [ebp+30h]
		mov	eax, [ebp-4]
		xor	edx, edx
		mov	[ecx+eax*4], edx
		inc	dword ptr [ebp-4]
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp+34h]
		jl	short loc_4A55CD

loc_4A55E3:				; CODE XREF: .text:004A55C3j
					; .text:004A55CBj
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4A55F1
		mov	eax, [ebp+24h]
		mov	edx, [ebp-8]
		mov	[eax], edx

loc_4A55F1:				; CODE XREF: .text:004A55E7j
		cmp	dword ptr [ebp+28h], 0
		jz	short loc_4A55FF
		mov	ecx, [ebp+28h]
		mov	eax, [ebp-0Ch]
		mov	[ecx], eax

loc_4A55FF:				; CODE XREF: .text:004A55F5j
		mov	eax, [ebp-1Ch]

loc_4A5602:				; CODE XREF: .text:004A52B0j
					; .text:004A5309j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4A560C(HWND hWndParent, int, int, int, int, int, int,	int)
loc_4A560C:				; CODE XREF: .text:004B5E7Cp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB98h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A5625
		xor	eax, eax
		jmp	loc_4A5C56
; ---------------------------------------------------------------------------

loc_4A5625:				; CODE XREF: .text:004A561Cj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A565F
		push	0		; mode
		mov	edx, [ebp+20h]
		push	edx		; fi
		mov	ecx, [ebp+1Ch]
		push	ecx		; y
		mov	eax, [ebp+18h]
		push	eax		; x
		push	80h		; nmodel
		push	offset stru_5F2D80 ; model
		push	offset aSpecifyAssembl ; "Specify assembler search model"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [ebp+8]
		push	edx		; hparent
		call	Getasmsearchmodel
		add	esp, 20h
		mov	ebx, eax
		jmp	short loc_4A5691
; ---------------------------------------------------------------------------

loc_4A565F:				; CODE XREF: .text:004A5629j
		push	0		; mode
		mov	eax, [ebp+20h]
		push	eax		; fi
		mov	edx, [ebp+1Ch]
		push	edx		; y
		mov	ecx, [ebp+18h]
		push	ecx		; x
		push	80h		; nmodel
		push	offset stru_5F2D80 ; model
		push	offset aSpecifySequenc ; "Specify sequence of assembler	search mo"...
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebp+8]
		push	eax		; hparent
		call	Getseqsearchmodel
		add	esp, 20h
		mov	ebx, eax

loc_4A5691:				; CODE XREF: .text:004A565Dj
		test	ebx, ebx
		jg	short loc_4A569C
		xor	eax, eax
		jmp	loc_4A5C56
; ---------------------------------------------------------------------------

loc_4A569C:				; CODE XREF: .text:004A5693j
		mov	nmodel,	ebx
		mov	edx, 2
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A56AE
		dec	edx

loc_4A56AE:				; CODE XREF: .text:004A56ABj
		mov	dword_5F2D60, edx
		mov	ecx, g_hCursor
		push	ecx		; hCursor
		call	SetCursor
		mov	[ebp-2Ch], eax
		call	loc_4A0E20
		cmp	dword_586178, 0
		jz	short loc_4A56D6
		call	Listmemory

loc_4A56D6:				; CODE XREF: .text:004A56CFj
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-4], edx
		jmp	short loc_4A573E
; ---------------------------------------------------------------------------

loc_4A56E5:				; CODE XREF: .text:004A5747j
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4A573B
		mov	eax, [ebp-28h]
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4A573B
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp-28h]
		mov	ecx, [edx]
		cmp	ecx, [eax]
		ja	short loc_4A573B
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		mov	ecx, [edx]
		mov	edx, [ebp-28h]
		add	ecx, [eax+4]
		cmp	ecx, [edx]
		jbe	short loc_4A573B
		mov	ecx, [ebp-28h]
		test	dword ptr [ecx+8], 2005000h
		jz	short loc_4A573B
		mov	eax, [ebp-28h]
		mov	edx, [eax+4]
		add	[ebp-1Ch], edx

loc_4A573B:				; CODE XREF: .text:004A56FDj
					; .text:004A5706j ...
		inc	dword ptr [ebp-4]

loc_4A573E:				; CODE XREF: .text:004A56E3j
		mov	ecx, [ebp-4]
		cmp	ecx, memory.sorted.n
		jl	short loc_4A56E5
		xor	eax, eax
		mov	[ebp-8], eax
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_4A5A70
; ---------------------------------------------------------------------------

loc_4A5758:				; CODE XREF: .text:004A5A7Fj
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	loc_4A5A6D
		mov	eax, [ebp-28h]
		test	byte ptr [eax+0Bh], 8
		jnz	loc_4A5A6D
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp-28h]
		mov	eax, [eax]
		mov	edx, [edx]
		cmp	edx, eax
		ja	loc_4A5A6D
		mov	ecx, [ebp+0Ch]	; int
		add	edx, [ecx+4]
		cmp	eax, edx
		jnb	loc_4A5A6D
		mov	edx, [ebp-28h]
		test	dword ptr [edx+8], 2005000h
		jz	loc_4A5A6D
		mov	edx, [ebp-28h]
		mov	edx, [edx+4]	; int
		add	[ebp-20h], edx
		mov	esi, eax
		mov	[ebp-0Ch], edx
		push	0		; flags
		mov	eax, [ebp-0Ch]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	loc_4A5A6D
		call	Suspendallthreads
		push	0		; mode
		mov	edx, [ebp-0Ch]
		push	edx		; size
		push	esi		; _addr
		mov	ecx, [ebp-24h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, [ebp-0Ch]
		jz	short loc_4A580F
		mov	eax, [ebp-24h]
		push	eax		; data
		call	Memfree
		pop	ecx
		jmp	loc_4A5A6D
; ---------------------------------------------------------------------------

loc_4A580F:				; CODE XREF: .text:004A57FEj
		mov	edx, [ebp-28h]
		mov	edi, [edx+64h]
		mov	[ebp-14h], esi
		mov	ebx, esi
		mov	eax, [ebp-28h]
		mov	eax, [eax+4]
		mov	ecx, 1F4h
		xor	edx, edx
		div	ecx
		mov	[ebp-30h], eax
		mov	dword ptr [ebp-34h], 2000h
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-30h]
		jbe	short loc_4A5840
		lea	edx, [ebp-34h]
		jmp	short loc_4A5843
; ---------------------------------------------------------------------------

loc_4A5840:				; CODE XREF: .text:004A5839j
		lea	edx, [ebp-30h]

loc_4A5843:				; CODE XREF: .text:004A583Ej
		mov	eax, [edx]
		mov	[ebp-18h], eax
		jmp	loc_4A5A56
; ---------------------------------------------------------------------------

loc_4A584D:				; CODE XREF: .text:004A5A5Dj
		cmp	ebx, [ebp-14h]
		jb	loc_4A58DE
		push	offset aSearching ; "Searching - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-1Ch]
		push	ecx		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebp-20h]
		add	eax, ebx
		sub	eax, esi
		sub	eax, [ebp-0Ch]
		push	eax		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		mov	edx, [ebp-18h]
		add	esp, 8
		add	edx, ebx
		mov	ecx, hwollymain
		mov	[ebp-14h], edx
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		push	ecx		; hWnd
		lea	eax, [ebp-468h]
		push	eax		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A58DE
		mov	eax, [ebp-460h]
		cmp	eax, 20h
		jz	short loc_4A58BF
		cmp	eax, 1Bh
		jnz	short loc_4A58DE

loc_4A58BF:				; CODE XREF: .text:004A58B8j
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-8], 1
		jmp	loc_4A5A63
; ---------------------------------------------------------------------------

loc_4A58DD:				; CODE XREF: .text:004A5937j
		inc	ebx

loc_4A58DE:				; CODE XREF: .text:004A5850j
					; .text:004A58ADj ...
		test	edi, edi
		jz	short loc_4A5939
		mov	edx, [ebp-0Ch]
		add	edx, esi
		cmp	ebx, edx
		jnb	short loc_4A5939
		mov	ecx, ebx
		sub	ecx, esi
		test	byte ptr [edi+ecx], 1Fh
		jz	short loc_4A5939
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_4A5939
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Dh
		jz	short loc_4A5939
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Eh
		jz	short loc_4A5939
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Fh
		jnz	short loc_4A58DD

loc_4A5939:				; CODE XREF: .text:004A58E0j
					; .text:004A58E9j ...
		mov	ecx, [ebp-0Ch]
		add	ecx, esi
		cmp	ebx, ecx
		jnb	loc_4A5A63
		mov	[ebp-10h], ebx
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A5980
		push	0		; da
		push	0		; pb
		push	0		; pa
		mov	eax, nmodel
		push	eax		; nmodel
		push	offset stru_5F2D80 ; model
		mov	edx, [ebp-10h]
		push	edx		; cmdip
		mov	ecx, ebx
		sub	ecx, esi
		mov	eax, [ebp-0Ch]
		sub	eax, ecx
		push	eax		; cmdsize
		mov	edx, [ebp-24h]
		add	edx, ebx
		sub	edx, esi
		push	edx		; cmd
		call	Comparecommand
		add	esp, 20h
		jmp	short loc_4A59E6
; ---------------------------------------------------------------------------

loc_4A5980:				; CODE XREF: .text:004A594Dj
		push	0		; namatch
		push	0		; amatch
		push	0		; da
		push	0		; pb
		push	0		; pa
		mov	ecx, 1
		cmp	dword_5BE6E0, 0
		jnz	short loc_4A5999
		dec	ecx

loc_4A5999:				; CODE XREF: .text:004A5996j
		mov	eax, 2
		cmp	dword_5BE6E4, 0
		jnz	short loc_4A59AA
		add	eax, 0FFFFFFFEh

loc_4A59AA:				; CODE XREF: .text:004A59A5j
		or	ecx, eax
		push	ecx		; mode
		mov	edx, nmodel
		push	edx		; nmodel
		push	offset stru_5F2D80 ; model
		test	edi, edi
		jnz	short loc_4A59C1
		xor	ecx, ecx
		jmp	short loc_4A59C7
; ---------------------------------------------------------------------------

loc_4A59C1:				; CODE XREF: .text:004A59BBj
		mov	ecx, ebx
		sub	ecx, esi
		add	ecx, edi

loc_4A59C7:				; CODE XREF: .text:004A59BFj
		push	ecx		; decode
		mov	eax, [ebp-10h]
		push	eax		; cmdip
		mov	edx, ebx
		sub	edx, esi
		mov	eax, [ebp-0Ch]
		sub	eax, edx
		push	eax		; cmdsize
		mov	edx, [ebp-24h]
		add	edx, ebx
		sub	edx, esi
		push	edx		; cmd
		call	Comparesequence
		add	esp, 30h

loc_4A59E6:				; CODE XREF: .text:004A597Ej
		inc	ebx
		test	eax, eax
		jz	short loc_4A5A56
		mov	ecx, [ebp-10h]
		mov	[ebp-44Ch], ecx
		mov	dword ptr [ebp-448h], 1
		mov	edx, [ebp-44Ch]
		cmp	edx, [ebp+14h]
		jnz	short loc_4A5A1A
		mov	dword ptr [ebp-444h], 10000h
		xor	ecx, ecx
		mov	[ebp+14h], ecx
		jmp	short loc_4A5A22
; ---------------------------------------------------------------------------

loc_4A5A1A:				; CODE XREF: .text:004A5A07j
		xor	edx, edx
		mov	[ebp-444h], edx

loc_4A5A22:				; CODE XREF: .text:004A5A18j
		xor	ecx, ecx
		mov	[ebp-43Ch], ecx
		mov	[ebp-440h], ecx
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A5A3A
		xor	edx, edx
		jmp	short loc_4A5A3C
; ---------------------------------------------------------------------------

loc_4A5A3A:				; CODE XREF: .text:004A5A34j
		mov	edx, eax

loc_4A5A3C:				; CODE XREF: .text:004A5A38j
		mov	[ebp-438h], edx
		lea	eax, [ebp-44Ch]
		push	eax		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A5A56:				; CODE XREF: .text:004A5848j
					; .text:004A59E9j
		mov	ecx, [ebp-0Ch]
		add	ecx, esi
		cmp	ebx, ecx
		jb	loc_4A584D

loc_4A5A63:				; CODE XREF: .text:004A58D8j
					; .text:004A5940j
		mov	eax, [ebp-24h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4A5A6D:				; CODE XREF: .text:004A5770j
					; .text:004A577Dj ...
		inc	dword ptr [ebp-4]

loc_4A5A70:				; CODE XREF: .text:004A5753j
		mov	edx, [ebp-4]
		cmp	edx, memory.sorted.n
		jge	short loc_4A5A85
		cmp	dword ptr [ebp-8], 0
		jz	loc_4A5758

loc_4A5A85:				; CODE XREF: .text:004A5A79j
		cmp	dword_5BE6D8, 0
		jz	short loc_4A5ADB
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4A5ADB
		mov	ecx, [ebp+14h]
		xor	eax, eax
		mov	[ebp-44Ch], ecx
		xor	edx, edx
		mov	dword ptr [ebp-448h], 1
		mov	dword ptr [ebp-444h], 10000h
		mov	[ebp-43Ch], eax
		mov	[ebp-440h], eax
		mov	[ebp-438h], edx
		lea	ecx, [ebp-44Ch]
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A5ADB:				; CODE XREF: .text:004A5A8Cj
					; .text:004A5A92j
		push	$CTW0("");(offset aAddress+0Dh) ;	format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	eax, [ebp-2Ch]
		push	eax		; hCursor
		call	SetCursor
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A5B4B
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A5B26
		push	offset aFound1Command ;	"Found 1 command"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-234h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4A5B9B
; ---------------------------------------------------------------------------

loc_4A5B26:				; CODE XREF: .text:004A5B00j
		mov	eax, stru_5FA8D4.n
		push	eax
		push	offset aFoundICommands ; "Found	%i commands"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-234h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4A5B9B
; ---------------------------------------------------------------------------

loc_4A5B4B:				; CODE XREF: .text:004A5AF7j
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A5B78
		push	offset aFound1Sequence ; "Found	1 sequence"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-234h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4A5B9B
; ---------------------------------------------------------------------------

loc_4A5B78:				; CODE XREF: .text:004A5B52j
		mov	eax, stru_5FA8D4.n
		push	eax
		push	offset aFoundISequence ; "Found	%i sequencess"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-234h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax

loc_4A5B9B:				; CODE XREF: .text:004A5B24j
					; .text:004A5B49j ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4A5BC8
		push	offset aIncomplete ; " (incomplete)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		lea	edx, [ebp-234h]
		sub	eax, ebx
		add	ebx, ebx
		add	ebx, edx
		push	eax		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A5BC8:				; CODE XREF: .text:004A5B9Fj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A5C13
		mov	ecx, [ebp+0Ch]
		add	ecx, 0Ch
		push	ecx
		push	offset aCommandsS ; "Commands %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-434h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-234h]	; int
		push	edx		; int
		mov	ecx, [ebp+24h]	; int
		push	ecx		; int
		lea	eax, [ebp-434h]	; int
		push	eax		; int
		push	1		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h
		jmp	short loc_4A5C56
; ---------------------------------------------------------------------------

loc_4A5C13:				; CODE XREF: .text:004A5BCCj
		mov	edx, [ebp+0Ch]
		add	edx, 0Ch
		push	edx
		push	offset aSequencesS ; "Sequences	%s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-434h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-234h]	; int
		push	eax		; int
		mov	edx, [ebp+24h]	; int
		push	edx		; int
		lea	ecx, [ebp-434h]	; int
		push	ecx		; int
		push	2		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A5C56:				; CODE XREF: .text:004A5620j
					; .text:004A5697j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4A5C60:				; CODE XREF: .text:004A7A52p
					; .text:004A7A6Cp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEECh
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+10h]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_4A5C7C
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_4A5C84

loc_4A5C7C:				; CODE XREF: .text:004A5C74j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A5FBB
; ---------------------------------------------------------------------------

loc_4A5C84:				; CODE XREF: .text:004A5C7Aj
		mov	ecx, [edi+4]
		mov	[ebp-0Ch], ecx
		mov	eax, [edi+288h]
		cmp	eax, [edi+28Ch]
		jnb	short loc_4A5CA5
		cmp	eax, [edi]
		jb	short loc_4A5CA5
		mov	ecx, [edi]
		add	ecx, [ebp-0Ch]
		cmp	eax, ecx
		jb	short loc_4A5CA9

loc_4A5CA5:				; CODE XREF: .text:004A5C96j
					; .text:004A5C9Aj
		xor	ebx, ebx
		jmp	short loc_4A5CAD
; ---------------------------------------------------------------------------

loc_4A5CA9:				; CODE XREF: .text:004A5CA3j
		mov	ebx, eax
		sub	ebx, [edi]

loc_4A5CAD:				; CODE XREF: .text:004A5CA7j
		mov	eax, dword_5BE6DC
		test	eax, eax
		jz	short loc_4A5CB9
		dec	eax
		jnz	short loc_4A5CC9

loc_4A5CB9:				; CODE XREF: .text:004A5CB4j
		mov	ecx, 2
		cmp	edx, 3
		jz	short loc_4A5CC4
		dec	ecx

loc_4A5CC4:				; CODE XREF: .text:004A5CC1j
		mov	[ebp-4], ecx
		jmp	short loc_4A5CD7
; ---------------------------------------------------------------------------

loc_4A5CC9:				; CODE XREF: .text:004A5CB7j
		mov	eax, 1
		cmp	edx, 3
		jz	short loc_4A5CD4
		inc	eax

loc_4A5CD4:				; CODE XREF: .text:004A5CD1j
		mov	[ebp-4], eax

loc_4A5CD7:				; CODE XREF: .text:004A5CC7j
		test	edx, edx
		jz	short loc_4A5CE8
		cmp	nmodel,	0
		jg	loc_4A5D8C

loc_4A5CE8:				; CODE XREF: .text:004A5CD9j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A5D29
		push	4000h		; mode
		mov	edx, [edi+24Ch]
		push	edx		; fi
		mov	ecx, [ebp+18h]
		push	ecx		; y
		mov	eax, [ebp+14h]
		push	eax		; x
		push	80h		; nmodel
		push	offset stru_5F2D80 ; model
		push	offset aSpecifyAssembl ; "Specify assembler search model"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [edi+244h]
		push	edx		; hparent
		call	Getasmsearchmodel
		add	esp, 20h
		jmp	short loc_4A5D62
; ---------------------------------------------------------------------------

loc_4A5D29:				; CODE XREF: .text:004A5CECj
		push	4000h		; mode
		mov	ecx, [edi+24Ch]
		push	ecx		; fi
		mov	eax, [ebp+18h]
		push	eax		; y
		mov	edx, [ebp+14h]
		push	edx		; x
		push	80h		; nmodel
		push	offset stru_5F2D80 ; model
		push	offset aSpecifySequenc ; "Specify sequence of assembler	search mo"...
		call	_T
		pop	ecx
		push	eax		; _title
		mov	ecx, [edi+244h]
		push	ecx		; hparent
		call	Getseqsearchmodel
		add	esp, 20h

loc_4A5D62:				; CODE XREF: .text:004A5D27j
		test	eax, eax
		jg	short loc_4A5D6E
		or	eax, 0FFFFFFFFh
		jmp	loc_4A5FBB
; ---------------------------------------------------------------------------

loc_4A5D6E:				; CODE XREF: .text:004A5D64j
		mov	edx, dword_5BE6DC
		test	edx, edx
		jnz	short loc_4A5D84
		mov	dword ptr [ebp-4], 1
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A5D87
; ---------------------------------------------------------------------------

loc_4A5D84:				; CODE XREF: .text:004A5D76j
		mov	[ebp-4], edx

loc_4A5D87:				; CODE XREF: .text:004A5D82j
		mov	nmodel,	eax

loc_4A5D8C:				; CODE XREF: .text:004A5CE2j
		cmp	dword ptr [ebp+0Ch], 0
		mov	eax, 2
		jnz	short loc_4A5D98
		dec	eax

loc_4A5D98:				; CODE XREF: .text:004A5D95j
		mov	dword_5F2D60, eax
		cmp	dword ptr [edi+298h], 0
		jz	short loc_4A5DAA
		xor	esi, esi
		jmp	short loc_4A5DC5
; ---------------------------------------------------------------------------

loc_4A5DAA:				; CODE XREF: .text:004A5DA4j
		lea	eax, [ebp-10h]
		push	eax		; psize
		mov	edx, [edi]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		mov	esi, eax
		mov	eax, [ebp-10h]
		cmp	eax, [ebp-0Ch]
		jnb	short loc_4A5DC5
		xor	esi, esi

loc_4A5DC5:				; CODE XREF: .text:004A5DA8j
					; .text:004A5DC1j
		xor	eax, eax
		mov	[ebp-8], eax
		cmp	dword ptr [edi+298h], 0
		jnz	short loc_4A5DD8
		call	Suspendallthreads

loc_4A5DD8:				; CODE XREF: .text:004A5DD1j
					; .text:004A5F90j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4A5DE4
		cmp	dword ptr [ebp-4], 1
		jnz	short loc_4A5E35

loc_4A5DE4:				; CODE XREF: .text:004A5DDCj
		inc	ebx
		lea	eax, [esi+ebx]
		jmp	short loc_4A5DEC
; ---------------------------------------------------------------------------

loc_4A5DEA:				; CODE XREF: .text:004A5E28j
		inc	ebx
		inc	eax

loc_4A5DEC:				; CODE XREF: .text:004A5DE8j
		test	esi, esi
		jz	short loc_4A5E2A
		cmp	ebx, [ebp-0Ch]
		jnb	short loc_4A5E2A
		test	byte ptr [eax],	1Fh
		jz	short loc_4A5E2A
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_4A5E2A
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Dh
		jz	short loc_4A5E2A
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Eh
		jz	short loc_4A5E2A
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Fh
		jnz	short loc_4A5DEA

loc_4A5E2A:				; CODE XREF: .text:004A5DEEj
					; .text:004A5DF3j ...
		cmp	ebx, [ebp-0Ch]
		jnb	loc_4A5FAA
		jmp	short loc_4A5E84
; ---------------------------------------------------------------------------

loc_4A5E35:				; CODE XREF: .text:004A5DE2j
		dec	ebx
		lea	eax, [esi+ebx]
		jmp	short loc_4A5E3D
; ---------------------------------------------------------------------------

loc_4A5E3B:				; CODE XREF: .text:004A5E79j
		dec	ebx
		dec	eax

loc_4A5E3D:				; CODE XREF: .text:004A5E39j
		test	esi, esi
		jz	short loc_4A5E7B
		cmp	ebx, 0FFFFFFFFh
		jz	short loc_4A5E7B
		test	byte ptr [eax],	1Fh
		jz	short loc_4A5E7B
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_4A5E7B
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Dh
		jz	short loc_4A5E7B
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Eh
		jz	short loc_4A5E7B
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Fh
		jnz	short loc_4A5E3B

loc_4A5E7B:				; CODE XREF: .text:004A5E3Fj
					; .text:004A5E44j ...
		cmp	ebx, 0FFFFFFFFh
		jz	loc_4A5FAA

loc_4A5E84:				; CODE XREF: .text:004A5E33j
		mov	eax, [edi+298h]
		test	eax, eax
		jz	short loc_4A5E9A
		add	eax, ebx
		mov	edx, [ebp-0Ch]
		sub	edx, ebx
		mov	[ebp-14h], edx
		jmp	short loc_4A5F09
; ---------------------------------------------------------------------------

loc_4A5E9A:				; CODE XREF: .text:004A5E8Cj
		mov	eax, [ebp-0Ch]
		sub	eax, ebx
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A5EB7
		cmp	dword ptr [ebp-14h], 10h
		jbe	short loc_4A5EB7
		mov	dword ptr [ebp-14h], 10h
		jmp	short loc_4A5ECD
; ---------------------------------------------------------------------------

loc_4A5EB7:				; CODE XREF: .text:004A5EA6j
					; .text:004A5EACj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A5ECD
		cmp	dword ptr [ebp-14h], 100h
		jbe	short loc_4A5ECD
		mov	dword ptr [ebp-14h], 100h

loc_4A5ECD:				; CODE XREF: .text:004A5EB5j
					; .text:004A5EBBj ...
		push	5		; mode
		mov	ecx, [ebp-14h]
		push	ecx		; size
		mov	eax, [edi]
		add	eax, ebx
		push	eax		; _addr
		lea	edx, [ebp-114h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-14h]
		jz	short loc_4A5F03
		push	offset aUnableToRead_4 ; "Unable to read memory	of debugged proce"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4A5FAA
; ---------------------------------------------------------------------------

loc_4A5F03:				; CODE XREF: .text:004A5EEAj
		lea	eax, [ebp-114h]

loc_4A5F09:				; CODE XREF: .text:004A5E98j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A5F35
		push	0		; da
		push	0		; pb
		push	0		; pa
		mov	edx, nmodel
		push	edx		; nmodel
		push	offset stru_5F2D80 ; model
		mov	ecx, [edi]
		add	ecx, ebx
		push	ecx		; cmdip
		mov	edx, [ebp-14h]
		push	edx		; cmdsize
		push	eax		; cmd
		call	Comparecommand
		add	esp, 20h
		jmp	short loc_4A5F8E
; ---------------------------------------------------------------------------

loc_4A5F35:				; CODE XREF: .text:004A5F0Dj
		push	0		; namatch
		push	0		; amatch
		push	0		; da
		push	0		; pb
		push	0		; pa
		mov	ecx, 1
		cmp	dword_5BE6E0, 0
		jnz	short loc_4A5F4E
		dec	ecx

loc_4A5F4E:				; CODE XREF: .text:004A5F4Bj
		cmp	dword_5BE6E4, 0
		jz	short loc_4A5F5E
		mov	edx, 2
		jmp	short loc_4A5F60
; ---------------------------------------------------------------------------

loc_4A5F5E:				; CODE XREF: .text:004A5F55j
		xor	edx, edx

loc_4A5F60:				; CODE XREF: .text:004A5F5Cj
		or	ecx, edx
		push	ecx		; mode
		mov	ecx, nmodel
		push	ecx		; nmodel
		push	offset stru_5F2D80 ; model
		test	esi, esi
		jnz	short loc_4A5F77
		xor	edx, edx
		jmp	short loc_4A5F7B
; ---------------------------------------------------------------------------

loc_4A5F77:				; CODE XREF: .text:004A5F71j
		mov	edx, ebx
		add	edx, esi

loc_4A5F7B:				; CODE XREF: .text:004A5F75j
		push	edx		; decode
		mov	ecx, [edi]
		add	ecx, ebx
		push	ecx		; cmdip
		mov	edx, [ebp-14h]
		push	edx		; cmdsize
		push	eax		; cmd
		call	Comparesequence
		add	esp, 30h

loc_4A5F8E:				; CODE XREF: .text:004A5F33j
		test	eax, eax
		jz	loc_4A5DD8
		add	ebx, [edi]
		mov	ecx, [ebp+1Ch]
		mov	[ecx], ebx
		mov	edx, [ebp+1Ch]
		mov	[edx+4], eax
		mov	dword ptr [ebp-8], 1

loc_4A5FAA:				; CODE XREF: .text:004A5E2Dj
					; .text:004A5E7Ej ...
		cmp	dword ptr [edi+298h], 0
		jnz	short loc_4A5FB8
		call	Resumeallthreads

loc_4A5FB8:				; CODE XREF: .text:004A5FB1j
		mov	eax, [ebp-8]

loc_4A5FBB:				; CODE XREF: .text:004A5C7Fj
					; .text:004A5D69j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4A5FC4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int, int)
loc_4A5FC4:				; CODE XREF: .text:004A7A9Cp
					; .text:004B575Dp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF704h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		mov	edx, [ebp+0Ch]
		jz	short loc_4A5FE6
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4A5FEE

loc_4A5FE6:				; CODE XREF: .text:004A5FDEj
		or	eax, 0FFFFFFFFh
		jmp	loc_4A642C
; ---------------------------------------------------------------------------

loc_4A5FEE:				; CODE XREF: .text:004A5FE4j
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4]
		mov	[ebp-14h], eax
		mov	ecx, [ebp+8]
		mov	eax, [ecx+288h]
		mov	ecx, [ebp+8]
		cmp	eax, [ecx+28Ch]
		jnb	short loc_4A601E
		mov	ecx, [ebp+8]
		cmp	eax, [ecx]
		jb	short loc_4A601E
		mov	ecx, [ebp+8]
		mov	ecx, [ecx]
		add	ecx, [ebp-14h]
		cmp	eax, ecx
		jb	short loc_4A6022

loc_4A601E:				; CODE XREF: .text:004A6009j
					; .text:004A6010j
		xor	esi, esi
		jmp	short loc_4A6029
; ---------------------------------------------------------------------------

loc_4A6022:				; CODE XREF: .text:004A601Cj
		mov	esi, eax
		mov	eax, [ebp+8]
		sub	esi, [eax]

loc_4A6029:				; CODE XREF: .text:004A6020j
		mov	eax, dword_5BE6DC
		test	eax, eax
		jz	short loc_4A6035
		dec	eax
		jnz	short loc_4A6045

loc_4A6035:				; CODE XREF: .text:004A6030j
		mov	ecx, 2
		cmp	edx, 3
		jz	short loc_4A6040
		dec	ecx

loc_4A6040:				; CODE XREF: .text:004A603Dj
		mov	[ebp-8], ecx
		jmp	short loc_4A6053
; ---------------------------------------------------------------------------

loc_4A6045:				; CODE XREF: .text:004A6033j
		mov	eax, 1
		cmp	edx, 3
		jz	short loc_4A6050
		inc	eax

loc_4A6050:				; CODE XREF: .text:004A604Dj
		mov	[ebp-8], eax

loc_4A6053:				; CODE XREF: .text:004A6043j
		test	edx, edx
		jz	short loc_4A6064
		cmp	dword_5F6B94, 0
		jnz	loc_4A60EA

loc_4A6064:				; CODE XREF: .text:004A6055j
		mov	edx, dword_5F6B8C
		mov	[ebp-10h], edx
		push	1000h		; mode
		mov	ecx, [ebp+8]
		mov	eax, [ecx+24Ch]
		push	eax		; fi
		mov	edx, [ebp+14h]
		push	edx		; y
		mov	ecx, [ebp+10h]
		push	ecx		; x
		push	67h		; savetype
		mov	eax, [ebp+8]
		lea	ecx, [ebp-10h]
		mov	edx, [eax+14h]
		push	edx		; threadid
		push	ecx		; u
		push	offset aEnterConstantO ; "Enter	constant or expression to search "...
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebp+8]
		mov	edx, [eax+244h]
		push	edx		; hparent
		call	Getdwordexpression
		add	esp, 24h
		test	eax, eax
		jz	short loc_4A60BB
		or	eax, 0FFFFFFFFh
		jmp	loc_4A642C
; ---------------------------------------------------------------------------

loc_4A60BB:				; CODE XREF: .text:004A60B1j
		mov	eax, dword_5BE6DC
		test	eax, eax
		jnz	short loc_4A60D0
		mov	dword ptr [ebp-8], 1
		or	esi, 0FFFFFFFFh
		jmp	short loc_4A60D3
; ---------------------------------------------------------------------------

loc_4A60D0:				; CODE XREF: .text:004A60C2j
		mov	[ebp-8], eax

loc_4A60D3:				; CODE XREF: .text:004A60CEj
		mov	eax, [ebp-10h]
		mov	dword_5F6B90, eax
		mov	dword_5F6B8C, eax
		mov	dword_5F6B94, 1

loc_4A60EA:				; CODE XREF: .text:004A605Ej
		mov	dword_5F2D60, 4
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4A6104
		xor	edi, edi
		jmp	short loc_4A6122
; ---------------------------------------------------------------------------

loc_4A6104:				; CODE XREF: .text:004A60FEj
		lea	eax, [ebp-18h]
		push	eax		; psize
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Finddecode
		add	esp, 8
		mov	edi, eax
		mov	eax, [ebp-18h]
		cmp	eax, [ebp-14h]
		jnb	short loc_4A6122
		xor	edi, edi

loc_4A6122:				; CODE XREF: .text:004A6102j
					; .text:004A611Ej
		xor	eax, eax
		mov	[ebp-0Ch], eax
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4A6138
		call	Suspendallthreads

loc_4A6138:				; CODE XREF: .text:004A6131j
					; .text:004A6319j ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4A6148
		cmp	dword ptr [ebp-8], 1
		jnz	loc_4A61D8

loc_4A6148:				; CODE XREF: .text:004A613Cj
		inc	esi
		lea	eax, [edi+esi]
		jmp	short loc_4A6150
; ---------------------------------------------------------------------------

loc_4A614E:				; CODE XREF: .text:004A61C8j
		inc	esi
		inc	eax

loc_4A6150:				; CODE XREF: .text:004A614Cj
		test	edi, edi
		jz	short loc_4A61CA
		cmp	esi, [ebp-14h]
		jnb	short loc_4A61CA
		test	byte ptr [eax],	1Fh
		jz	short loc_4A61CA
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 4
		jz	short loc_4A61CA
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 5
		jz	short loc_4A61CA
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 6
		jz	short loc_4A61CA
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 7
		jz	short loc_4A61CA
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 8
		jz	short loc_4A61CA
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jz	short loc_4A61CA
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Dh
		jz	short loc_4A61CA
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Eh
		jz	short loc_4A61CA
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Fh
		jnz	short loc_4A614E

loc_4A61CA:				; CODE XREF: .text:004A6152j
					; .text:004A6157j ...
		cmp	esi, [ebp-14h]
		jnb	loc_4A6418
		jmp	loc_4A6263
; ---------------------------------------------------------------------------

loc_4A61D8:				; CODE XREF: .text:004A6142j
		dec	esi
		lea	eax, [edi+esi]
		jmp	short loc_4A61E0
; ---------------------------------------------------------------------------

loc_4A61DE:				; CODE XREF: .text:004A6258j
		dec	esi
		dec	eax

loc_4A61E0:				; CODE XREF: .text:004A61DCj
		test	edi, edi
		jz	short loc_4A625A
		cmp	esi, 0FFFFFFFFh
		jz	short loc_4A625A
		test	byte ptr [eax],	1Fh
		jz	short loc_4A625A
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 4
		jz	short loc_4A625A
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 5
		jz	short loc_4A625A
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 6
		jz	short loc_4A625A
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 7
		jz	short loc_4A625A
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 8
		jz	short loc_4A625A
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_4A625A
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Dh
		jz	short loc_4A625A
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Eh
		jz	short loc_4A625A
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Fh
		jnz	short loc_4A61DE

loc_4A625A:				; CODE XREF: .text:004A61E2j
					; .text:004A61E7j ...
		cmp	esi, 0FFFFFFFFh
		jz	loc_4A6418

loc_4A6263:				; CODE XREF: .text:004A61D3j
		mov	eax, [ebp+8]
		mov	eax, [eax+298h]
		test	eax, eax
		jz	short loc_4A627C
		add	eax, esi
		mov	edx, [ebp-14h]
		sub	edx, esi
		mov	[ebp-1Ch], edx
		jmp	short loc_4A62D0
; ---------------------------------------------------------------------------

loc_4A627C:				; CODE XREF: .text:004A626Ej
		mov	ecx, [ebp-14h]
		sub	ecx, esi
		mov	[ebp-1Ch], ecx
		cmp	dword ptr [ebp-1Ch], 10h
		jbe	short loc_4A6291
		mov	dword ptr [ebp-1Ch], 10h

loc_4A6291:				; CODE XREF: .text:004A6288j
		push	5		; mode
		mov	eax, [ebp-1Ch]
		push	eax		; size
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		add	ecx, esi
		push	ecx		; _addr
		lea	eax, [ebp-2Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-10h], eax
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-1Ch]
		jz	short loc_4A62CD
		push	offset aUnableToRead_4 ; "Unable to read memory	of debugged proce"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4A6418
; ---------------------------------------------------------------------------

loc_4A62CD:				; CODE XREF: .text:004A62B4j
		lea	eax, [ebp-2Ch]

loc_4A62D0:				; CODE XREF: .text:004A627Aj
		push	0		; predict
		push	0		; reg
		mov	edx, 10h
		cmp	dword_5BE6D4, 0
		jnz	short loc_4A62E5
		add	edx, 0FFFFFFF0h

loc_4A62E5:				; CODE XREF: .text:004A62E0j
		push	edx		; mode
		lea	ecx, [ebp-18FCh]
		push	ecx		; da
		test	edi, edi
		jnz	short loc_4A62F5
		xor	edx, edx
		jmp	short loc_4A62F9
; ---------------------------------------------------------------------------

loc_4A62F5:				; CODE XREF: .text:004A62EFj
		mov	edx, esi
		add	edx, edi

loc_4A62F9:				; CODE XREF: .text:004A62F3j
		push	edx		; dec
		mov	ecx, [ebp+8]
		mov	edx, [ecx]
		add	edx, esi
		push	edx		; ip
		mov	ecx, [ebp-1Ch]
		push	ecx		; cmdsize
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-18D0h], 0
		jnz	loc_4A6138
		xor	eax, eax
		lea	ebx, [ebp-18B0h]
		mov	[ebp-4], eax

loc_4A632A:				; CODE XREF: .text:004A63EEj
		test	byte ptr [ebx+1], 6
		jz	short loc_4A634A
		mov	eax, [ebx+40h]
		cmp	eax, dword_5F6B8C
		jb	short loc_4A634A
		mov	edx, [ebx+40h]
		cmp	edx, dword_5F6B90
		jbe	loc_4A63F4

loc_4A634A:				; CODE XREF: .text:004A632Ej
					; .text:004A6339j
		cmp	dword_5BE6D4, 0
		jz	short loc_4A63A3
		mov	ecx, [ebx+4]
		and	ecx, 0F0000h
		cmp	ecx, 80000h
		jnz	short loc_4A63A3
		test	byte ptr [ebx+3], 2
		jz	short loc_4A63A3
		mov	eax, [ebx+40h]
		cmp	eax, dword_5F6B8C
		jb	short loc_4A6380
		mov	edx, [ebx+40h]
		cmp	edx, dword_5F6B90
		jbe	short loc_4A63F4

loc_4A6380:				; CODE XREF: .text:004A6373j
		mov	ecx, [ebx+40h]
		push	ecx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-10h], eax
		mov	eax, [ebp-10h]
		cmp	eax, dword_5F6B8C
		jb	short loc_4A63A3
		mov	edx, [ebp-10h]
		cmp	edx, dword_5F6B90
		jbe	short loc_4A63F4

loc_4A63A3:				; CODE XREF: .text:004A6351j
					; .text:004A6362j ...
		test	byte ptr [ebx+1], 1
		jz	short loc_4A63E1
		test	byte ptr [ebx+2], 4
		jz	short loc_4A63C5
		mov	ecx, [ebx+38h]
		cmp	ecx, dword_5F6B8C
		jb	short loc_4A63C5
		mov	eax, [ebx+38h]
		cmp	eax, dword_5F6B90
		jbe	short loc_4A63F4

loc_4A63C5:				; CODE XREF: .text:004A63ADj
					; .text:004A63B8j
		test	byte ptr [ebx+2], 10h
		jz	short loc_4A63E1
		mov	edx, [ebx+30h]
		cmp	edx, dword_5F6B8C
		jb	short loc_4A63E1
		mov	ecx, [ebx+30h]
		cmp	ecx, dword_5F6B90
		jbe	short loc_4A63F4

loc_4A63E1:				; CODE XREF: .text:004A63A7j
					; .text:004A63C9j ...
		inc	dword ptr [ebp-4]
		add	ebx, 460h
		cmp	dword ptr [ebp-4], 4
		jl	loc_4A632A

loc_4A63F4:				; CODE XREF: .text:004A6344j
					; .text:004A637Ej ...
		cmp	dword ptr [ebp-4], 4
		jge	loc_4A6138
		mov	eax, [ebp+8]
		mov	edx, [ebp+18h]
		add	esi, [eax]
		mov	[edx], esi
		mov	ecx, [ebp+18h]
		mov	eax, [ebp-1Ch]
		mov	[ecx+4], eax
		mov	dword ptr [ebp-0Ch], 1

loc_4A6418:				; CODE XREF: .text:004A61CDj
					; .text:004A625Dj ...
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4A6429
		call	Resumeallthreads

loc_4A6429:				; CODE XREF: .text:004A6422j
		mov	eax, [ebp-0Ch]

loc_4A642C:				; CODE XREF: .text:004A5FE9j
					; .text:004A60B6j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
