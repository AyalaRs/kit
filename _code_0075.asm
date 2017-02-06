.code

; ---------------------------------------------------------------------------
; Exported entry 302. _Assembleex
; Exported entry 405. Assembleex

; int __cdecl Assembleex(wchar_t *src, ulong ip, uchar *buf, ulong nbuf, int a,	int b, int mode, wchar_t *errtxt)
		public Assembleex
Assembleex:				; CODE XREF: .text:0042DE00p
					; .text:0049154Bp
		push	ebp		; _Assembleex
		mov	ebp, esp
		add	esp, 0FFFFF280h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4913F6
		mov	eax, [ebp+24h]
		mov	word ptr [eax],	0

loc_4913F6:				; CODE XREF: .text:004913ECj
		mov	edx, [ebp+24h]
		lea	eax, [ebp-0D80h]
		push	edx		; errtxt
		mov	ecx, [ebp+20h]
		and	ecx, 1
		push	ecx		; mode
		push	20h		; maxmodel
		push	eax		; model
		mov	edx, [ebp+0Ch]
		push	edx		; ip
		mov	ecx, [ebp+8]
		push	ecx		; src
		call	Assembleallforms
		add	esp, 18h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_491427
		xor	eax, eax
		jmp	loc_491523
; ---------------------------------------------------------------------------

loc_491427:				; CODE XREF: .text:0049141Ej
		or	esi, 0FFFFFFFFh
		mov	ebx, 0FFh
		xor	edx, edx
		lea	eax, [ebp-0D80h]
		cmp	edi, edx
		jle	short loc_491471

loc_49143B:				; CODE XREF: .text:0049146Fj
		xor	ecx, ecx
		mov	cl, [eax+24h]
		cmp	ebx, ecx
		jb	short loc_491469
		xor	ecx, ecx
		mov	cl, [eax+24h]
		cmp	ebx, ecx
		jnz	short loc_491453
		test	byte ptr [eax+25h], 40h
		jnz	short loc_491469

loc_491453:				; CODE XREF: .text:0049144Bj
		xor	ecx, ecx
		mov	cl, [eax+24h]
		cmp	ebx, ecx
		ja	short loc_491462
		test	byte ptr [eax+25h], 1
		jz	short loc_491469

loc_491462:				; CODE XREF: .text:0049145Aj
		xor	ebx, ebx
		mov	esi, edx
		mov	bl, [eax+24h]

loc_491469:				; CODE XREF: .text:00491442j
					; .text:00491451j ...
		inc	edx
		add	eax, 6Ch
		cmp	edi, edx
		jg	short loc_49143B

loc_491471:				; CODE XREF: .text:00491439j
		test	esi, esi
		jge	short loc_49149A
		push	offset aInternalErro_2 ; "Internal error"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+24h]
		test	eax, eax
		jz	short loc_491493
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_491493:				; CODE XREF: .text:00491487j
		xor	eax, eax
		jmp	loc_491523
; ---------------------------------------------------------------------------

loc_49149A:				; CODE XREF: .text:00491473j
		cmp	ebx, [ebp+14h]
		jbe	short loc_4914C1
		push	offset aNoRoomForAssem ; "No room for assembled	code"
		call	_T
		pop	ecx
		mov	edx, eax
		mov	eax, [ebp+24h]
		test	eax, eax
		jz	short loc_4914BD
		push	edx		; src
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_4914BD:				; CODE XREF: .text:004914B1j
		xor	eax, eax
		jmp	short loc_491523
; ---------------------------------------------------------------------------

loc_4914C1:				; CODE XREF: .text:0049149Dj
		push	ebx		; n
		mov	edx, esi
		shl	edx, 2
		lea	edx, [edx+edx*2]
		lea	edx, [edx+edx*8]
		lea	ecx, [ebp-0D80h]
		add	edx, ecx
		push	edx		; src
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_491500
		lea	edx, [esi+esi*2]
		mov	eax, [ebp+18h]
		lea	edx, [edx+edx*8]
		mov	ecx, [ebp+edx*4-0D60h]
		and	ecx, 0E0000000h
		mov	[eax], ecx

loc_491500:				; CODE XREF: .text:004914E6j
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_491521
		lea	edx, [esi+esi*2]
		mov	eax, [ebp+1Ch]
		lea	edx, [edx+edx*8]
		mov	ecx, [ebp+edx*4-0D60h]
		and	ecx, 1F000000h
		shr	ecx, 18h
		mov	[eax], ecx

loc_491521:				; CODE XREF: .text:00491504j
		mov	eax, ebx

loc_491523:				; CODE XREF: .text:00491422j
					; .text:00491495j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 303. _Assemble
; Exported entry 404. Assemble

; int __cdecl Assemble(wchar_t *src, ulong ip, uchar *buf, ulong nbuf, int mode, wchar_t *errtxt)
		public Assemble
Assemble:				; _Assemble
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+1Ch]
		push	eax		; errtxt
		mov	edx, [ebp+18h]
		push	edx		; mode
		push	0		; b
		push	0		; a
		mov	ecx, [ebp+14h]
		push	ecx		; nbuf
		mov	eax, [ebp+10h]
		push	eax		; buf
		mov	edx, [ebp+0Ch]
		push	edx		; ip
		mov	ecx, [ebp+8]
		push	ecx		; src
		call	Assembleex
		add	esp, 20h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_491558:				; CODE XREF: .text:00491F77p
					; .text:0049225Cp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	ecx, [ebp+8]
		test	bl, 80h
		jnz	loc_4915F5
		xor	eax, eax
		mov	al, [ecx]
		lea	edx, [eax+eax*4]
		lea	edx, [eax+edx*4]
		shl	edx, 3
		add	edx, offset stru_593CC6
		inc	ecx
		mov	eax, [edx+4]
		test	eax, eax
		jz	short loc_49159C
		movzx	esi, byte ptr [ecx]
		mov	edi, esi
		lea	esi, [edi+esi*4]
		lea	esi, [edi+esi*4]
		shl	esi, 3
		add	esi, eax
		inc	ecx
		mov	edx, esi

loc_49159C:				; CODE XREF: .text:00491587j
		test	bl, 10h
		jz	short loc_4915A9
		mov	eax, [ebp+0Ch]
		mov	eax, [eax+58h]
		jmp	short loc_4915AB
; ---------------------------------------------------------------------------

loc_4915A9:				; CODE XREF: .text:0049159Fj
		xor	eax, eax

loc_4915AB:				; CODE XREF: .text:004915A7j
		mov	ebx, [edx+8]
		cmp	ebx, 4
		jnz	short loc_4915B7
		add	eax, [ecx]
		jmp	short loc_4915C1
; ---------------------------------------------------------------------------

loc_4915B7:				; CODE XREF: .text:004915B1j
		cmp	ebx, 1
		jnz	short loc_4915C1
		movsx	ecx, byte ptr [ecx]
		add	eax, ecx

loc_4915C1:				; CODE XREF: .text:004915B5j
					; .text:004915BAj
		cmp	dword ptr [edx+20h], 0
		jz	short loc_4915EE
		xor	ecx, ecx
		lea	ebx, [edx+18h]
		mov	[ebp-4], ebx
		mov	ebx, [ebp+0Ch]
		add	ebx, 0Ch

loc_4915D5:				; CODE XREF: .text:004915ECj
		mov	edi, [ebp-4]
		mov	esi, [ebx]
		add	ebx, 4
		inc	ecx
		movzx	edi, byte ptr [edi]
		imul	esi, edi
		inc	dword ptr [ebp-4]
		add	eax, esi
		cmp	ecx, 8
		jl	short loc_4915D5

loc_4915EE:				; CODE XREF: .text:004915C5j
		mov	ecx, [ebp+10h]
		mov	[ecx], eax
		jmp	short loc_491652
; ---------------------------------------------------------------------------

loc_4915F5:				; CODE XREF: .text:00491568j
		xor	eax, eax
		mov	al, [ecx]
		lea	edx, [eax+eax*4]
		lea	edx, [eax+edx*4]
		shl	edx, 3
		add	edx, offset tmpcmdinfo
		inc	ecx
		xor	eax, eax
		mov	esi, [edx+8]
		cmp	esi, 2
		jnz	short loc_49161A
		movzx	ecx, word ptr [ecx]
		add	eax, ecx
		jmp	short loc_491624
; ---------------------------------------------------------------------------

loc_49161A:				; CODE XREF: .text:00491611j
		cmp	esi, 1
		jnz	short loc_491624
		movsx	ecx, byte ptr [ecx]
		add	eax, ecx

loc_491624:				; CODE XREF: .text:00491618j
					; .text:0049161Dj
		cmp	dword ptr [edx+20h], 0
		jz	short loc_49163D
		xor	ecx, ecx
		mov	esi, [ebp+0Ch]
		add	esi, 0Ch

loc_491632:				; CODE XREF: .text:0049163Bj
		add	eax, [esi]
		inc	ecx
		add	esi, 4
		cmp	ecx, 8
		jl	short loc_491632

loc_49163D:				; CODE XREF: .text:00491628j
		and	eax, 0FFFFh
		test	bl, 10h
		jz	short loc_49164D
		mov	ecx, [ebp+0Ch]
		add	eax, [ecx+58h]

loc_49164D:				; CODE XREF: .text:00491645j
		mov	ecx, [ebp+10h]
		mov	[ecx], eax

loc_491652:				; CODE XREF: .text:004915F3j
		mov	eax, [edx]
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 304. _Executecommand
; Exported entry 491. Executecommand

; int __cdecl Executecommand(int dwThreadId, t_reg *src, int restore)
		public Executecommand
Executecommand:				; CODE XREF: .text:00455E73p
		push	ebp		; _Executecommand
		mov	ebp, esp
		add	esp, 0FFFFFDACh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_49263C	; jumptable 00491ABA default case
		mov	eax, [ebp+8]
		push	eax		; threadid
		xor	edx, edx
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_491681
		add	edx, 2

loc_491681:				; CODE XREF: .text:0049167Cj
		or	edx, 800041h
		push	edx		; mode
		push	10h		; size
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+8]
		push	eax		; _addr
		lea	edx, [ebp-70h]
		push	edx		; buf
		call	Readmemoryex
		add	esp, 14h
		cmp	eax, 10h
		jnz	loc_49263C	; jumptable 00491ABA default case
		xor	esi, esi
		xor	edi, edi
		lea	eax, [ebp-70h]

loc_4916AD:				; CODE XREF: .text:004917EAj
		xor	edx, edx
		mov	dl, [eax]
		cmp	edx, 65h
		jg	short loc_4916ED
		jz	loc_49263C	; jumptable 00491ABA default case
		cmp	edx, 36h
		jg	short loc_4916D6
		jz	loc_491750
		sub	edx, 26h
		jz	short loc_491728
		sub	edx, 8
		jz	short loc_49173C
		jmp	loc_4917F0
; ---------------------------------------------------------------------------

loc_4916D6:				; CODE XREF: .text:004916BFj
		sub	edx, 3Eh
		jz	loc_491764
		sub	edx, 26h
		jz	loc_491775
		jmp	loc_4917F0
; ---------------------------------------------------------------------------

loc_4916ED:				; CODE XREF: .text:004916B4j
		cmp	edx, 0F0h
		jg	short loc_491710
		jz	loc_4917AB
		sub	edx, 66h
		jz	loc_491786
		dec	edx
		jz	loc_491797
		jmp	loc_4917F0
; ---------------------------------------------------------------------------

loc_491710:				; CODE XREF: .text:004916F3j
		sub	edx, 0F2h
		jz	loc_4917BF
		dec	edx
		jz	loc_4917D3
		jmp	loc_4917F0
; ---------------------------------------------------------------------------

loc_491728:				; CODE XREF: .text:004916CAj
		test	esi, 3Fh
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 1
		jmp	loc_4917E5
; ---------------------------------------------------------------------------

loc_49173C:				; CODE XREF: .text:004916CFj
		test	esi, 3Fh
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 2
		jmp	loc_4917E5
; ---------------------------------------------------------------------------

loc_491750:				; CODE XREF: .text:004916C1j
		test	esi, 3Fh
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 4
		jmp	loc_4917E5
; ---------------------------------------------------------------------------

loc_491764:				; CODE XREF: .text:004916D9j
		test	esi, 3Fh
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 8
		jmp	short loc_4917E5
; ---------------------------------------------------------------------------

loc_491775:				; CODE XREF: .text:004916E2j
		test	esi, 3Fh
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 10h
		jmp	short loc_4917E5
; ---------------------------------------------------------------------------

loc_491786:				; CODE XREF: .text:004916FEj
		test	esi, 40h
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 40h
		jmp	short loc_4917E5
; ---------------------------------------------------------------------------

loc_491797:				; CODE XREF: .text:00491705j
		test	esi, 80h
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 80h
		jmp	short loc_4917E5
; ---------------------------------------------------------------------------

loc_4917AB:				; CODE XREF: .text:004916F5j
		test	esi, 100h
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 100h
		jmp	short loc_4917E5
; ---------------------------------------------------------------------------

loc_4917BF:				; CODE XREF: .text:00491716j
		test	esi, 600h
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 600h
		jmp	short loc_4917E5
; ---------------------------------------------------------------------------

loc_4917D3:				; CODE XREF: .text:0049171Dj
		test	esi, 600h
		jnz	loc_49263C	; jumptable 00491ABA default case
		or	esi, 400h

loc_4917E5:				; CODE XREF: .text:00491737j
					; .text:0049174Bj ...
		inc	edi
		inc	eax
		cmp	edi, 10h
		jb	loc_4916AD

loc_4917F0:				; CODE XREF: .text:004916D1j
					; .text:004916E8j ...
		cmp	edi, 4
		ja	loc_49263C	; jumptable 00491ABA default case
		movzx	ecx, word ptr [ebp+edi-70h]
		and	ecx, 0C0FEh
		cmp	ecx, 0C0C4h
		jz	loc_49263C	; jumptable 00491ABA default case
		mov	eax, [ebp+edi-70h]
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		and	edx, 3FFFh
		shl	edx, 3
		add	edx, dword_5BDD0C

loc_491829:				; CODE XREF: .text:00491A0Ej
		test	edx, edx
		jz	loc_49263C	; jumptable 00491ABA default case
		mov	ebx, [edx]
		test	ebx, ebx
		jz	loc_49263C	; jumptable 00491ABA default case
		mov	ecx, [ebp-8]
		xor	ecx, [ebx+14h]
		and	ecx, [ebx+10h]
		jnz	loc_491A0B
		test	byte ptr [ebx+9], 1
		jnz	loc_491A0B
		mov	eax, [ebx+4]
		test	eax, 0CFF40h
		jz	loc_491A13
		mov	ecx, eax
		and	ecx, 0F000h
		cmp	ecx, 6000h
		jg	short loc_4918B8
		jz	loc_491953
		cmp	ecx, 3000h
		jg	short loc_49189B
		jz	loc_491919
		sub	ecx, 1000h
		jz	short loc_4918ED
		sub	ecx, 1000h
		jz	short loc_491903
		jmp	loc_49198D
; ---------------------------------------------------------------------------

loc_49189B:				; CODE XREF: .text:0049187Ej
		sub	ecx, 4000h
		jz	loc_49192F
		sub	ecx, 1000h
		jz	loc_49193D
		jmp	loc_49198D
; ---------------------------------------------------------------------------

loc_4918B8:				; CODE XREF: .text:00491870j
		sub	ecx, 7000h
		jz	loc_491969
		sub	ecx, 1000h
		jz	loc_491977
		sub	ecx, 1000h
		jz	loc_491977
		sub	ecx, 1000h
		jz	loc_491985
		jmp	loc_49198D
; ---------------------------------------------------------------------------

loc_4918ED:				; CODE XREF: .text:0049188Cj
		mov	ecx, esi
		and	ecx, 640h
		cmp	ecx, 40h
		jnz	loc_491A0B
		jmp	loc_49198D
; ---------------------------------------------------------------------------

loc_491903:				; CODE XREF: .text:00491894j
		mov	ecx, esi
		and	ecx, 640h
		cmp	ecx, 200h
		jnz	loc_491A0B
		jmp	short loc_49198D
; ---------------------------------------------------------------------------

loc_491919:				; CODE XREF: .text:00491880j
		mov	ecx, esi
		and	ecx, 640h
		cmp	ecx, 400h
		jnz	loc_491A0B
		jmp	short loc_49198D
; ---------------------------------------------------------------------------

loc_49192F:				; CODE XREF: .text:004918A1j
		test	esi, 640h
		jnz	loc_491A0B
		jmp	short loc_49198D
; ---------------------------------------------------------------------------

loc_49193D:				; CODE XREF: .text:004918ADj
		mov	ecx, esi
		and	ecx, 600h
		cmp	ecx, 200h
		jnz	loc_491A0B
		jmp	short loc_49198D
; ---------------------------------------------------------------------------

loc_491953:				; CODE XREF: .text:00491872j
		mov	ecx, esi
		and	ecx, 600h
		cmp	ecx, 400h
		jnz	loc_491A0B
		jmp	short loc_49198D
; ---------------------------------------------------------------------------

loc_491969:				; CODE XREF: .text:004918BEj
		test	esi, 600h
		jnz	loc_491A0B
		jmp	short loc_49198D
; ---------------------------------------------------------------------------

loc_491977:				; CODE XREF: .text:004918CAj
					; .text:004918D6j
		test	esi, 400h
		jz	loc_491A0B
		jmp	short loc_49198D
; ---------------------------------------------------------------------------

loc_491985:				; CODE XREF: .text:004918E2j
		test	esi, 200h
		jz	short loc_491A0B

loc_49198D:				; CODE XREF: .text:00491896j
					; .text:004918B3j ...
		test	ah, 1
		jz	short loc_49199A
		test	esi, 40h
		jz	short loc_491A0B

loc_49199A:				; CODE XREF: .text:00491990j
		test	ah, 2
		jz	short loc_4919A7
		test	esi, 40h
		jnz	short loc_491A0B

loc_4919A7:				; CODE XREF: .text:0049199Dj
		test	ah, 4
		jz	short loc_4919B4
		test	esi, 80h
		jz	short loc_491A0B

loc_4919B4:				; CODE XREF: .text:004919AAj
		test	ah, 8
		jz	short loc_4919C1
		test	esi, 80h
		jnz	short loc_491A0B

loc_4919C1:				; CODE XREF: .text:004919B7j
		test	eax, 40000h
		jz	short loc_4919E2
		mov	ecx, [ebx+0Ch]
		add	ecx, edi
		movzx	ecx, byte ptr [ebp+ecx-70h]
		and	ecx, 0C0h
		cmp	ecx, 0C0h
		jz	short loc_491A0B
		jmp	short loc_491A01
; ---------------------------------------------------------------------------

loc_4919E2:				; CODE XREF: .text:004919C6j
		test	eax, 80000h
		jz	short loc_491A01
		mov	ecx, [ebx+0Ch]
		add	ecx, edi
		movzx	ecx, byte ptr [ebp+ecx-70h]
		and	ecx, 0C0h
		cmp	ecx, 0C0h
		jnz	short loc_491A0B

loc_491A01:				; CODE XREF: .text:004919E0j
					; .text:004919E7j
		test	al, 40h
		jnz	loc_49263C	; jumptable 00491ABA default case
		jmp	short loc_491A13
; ---------------------------------------------------------------------------

loc_491A0B:				; CODE XREF: .text:00491844j
					; .text:0049184Ej ...
		mov	edx, [edx+4]
		jmp	loc_491829
; ---------------------------------------------------------------------------

loc_491A13:				; CODE XREF: .text:0049185Cj
					; .text:00491A09j
		cmp	dword ptr [ebx+30h], 0
		jz	loc_49263C	; jumptable 00491ABA default case
		add	edi, [ebx+0Ch]
		xor	edx, edx
		mov	[ebp-14h], edx
		xor	edx, edx
		mov	[ebp-18h], edx
		test	al, 20h
		jz	short loc_491A47
		test	byte ptr [ebp+edi-71h],	1
		jnz	short loc_491A47
		mov	dword ptr [ebp-244h], 1
		or	esi, 800h
		jmp	short loc_491A65
; ---------------------------------------------------------------------------

loc_491A47:				; CODE XREF: .text:00491A2Cj
					; .text:00491A33j
		test	esi, 40h
		jz	short loc_491A5B
		mov	dword ptr [ebp-244h], 2
		jmp	short loc_491A65
; ---------------------------------------------------------------------------

loc_491A5B:				; CODE XREF: .text:00491A4Dj
		mov	dword ptr [ebp-244h], 4

loc_491A65:				; CODE XREF: .text:00491A45j
					; .text:00491A59j
		xor	eax, eax
		mov	[ebp-4], eax
		lea	ecx, [ebp+edi-70h]
		mov	[ebp-30h], ecx
		lea	eax, [ebp-254h]
		mov	[ebp-2Ch], eax
		lea	edx, [ebp-50h]
		mov	[ebp-28h], edx
		lea	ecx, [ebp-60h]
		mov	[ebp-24h], ecx
		lea	eax, [ebp-40h]
		mov	[ebp-20h], eax
		lea	edx, [ebx+1Ch]
		mov	[ebp-1Ch], edx

loc_491A92:				; CODE XREF: .text:00492474j
		mov	ecx, [ebp-1Ch]
		mov	eax, [ecx]
		mov	edx, eax
		and	edx, 0FFh
		test	edx, edx
		jz	loc_49247A
		mov	eax, edx
		mov	ecx, eax
		cmp	ecx, 7Ch	; switch 125 cases
		ja	loc_49263C	; jumptable 00491ABA default case
		mov	cl, ds:byte_491AC1[ecx]
		jmp	ds:off_491B3E[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_491AC1	db	0,   22h,   21h,   20h ; DATA XREF: .text:00491AB4r
		db    1Fh,   1Eh,   1Dh,   1Dh ; indirect table	for switch statement
		db    1Ch,   1Bh,   1Ah,   19h
		db    18h,     1,     1,   17h
		db    16h,   16h,   16h,   15h
		db    14h,   13h,   12h,   12h
		db    12h,   12h,   12h,     0
		db	0,   11h,     0,     0
		db    10h,   0Fh,   0Eh,   0Dh
		db	1,     0,     0,   0Ch
		db    0Bh,     0,   0Bh,   0Ah
		db    0Ah,   0Ah,   0Ah,   0Ah
		db	9,     1,     1,     1
		db	1,     1,     1,     1
		db	1,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     1,     1
		db	8,     7,     0,     0
		db	6,     5,     5,     4
		db	3,     3,     2,     0
		db	0,     0,     1,     1
		db	1
off_491B3E	dd offset loc_49263C, offset loc_49263C, offset	loc_49243A
					; DATA XREF: .text:00491ABAr
		dd offset loc_492414, offset loc_4923F2, offset	loc_4923D0 ; jump table	for switch statement
		dd offset loc_4923BB, offset loc_492386, offset	loc_492347
		dd offset loc_4922E1, offset loc_492459, offset	loc_49227B
		dd offset loc_49221F, offset loc_4921B4, offset	loc_49214E
		dd offset loc_4920E3, offset loc_49207D, offset	loc_491FEF
		dd offset loc_491ED1, offset loc_492459, offset	loc_491E85
		dd offset loc_491E50, offset loc_491DF7, offset	loc_491D95
		dd offset loc_491DCC, offset loc_491D6A, offset	loc_491D3F
		dd offset loc_491D14, offset loc_491CEB, offset	loc_491CBB
		dd offset loc_491C8B, offset loc_491C5B, offset	loc_491C2D
		dd offset loc_491BF9, offset loc_491BCA
; ---------------------------------------------------------------------------

loc_491BCA:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 1
		mov	dword ptr [eax], 1
		xor	eax, eax
		mov	edx, [ebp-24h]
		mov	dword ptr [edx], 1
		mov	ecx, [ebp-28h]
		mov	[ecx], eax
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp-2Ch]
		mov	ecx, [edx+0Ch]
		and	ecx, 0FFh
		mov	[eax], ecx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491BF9:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	edx, [ebp-20h]	; jumptable 00491ABA case 2
		mov	dword ptr [edx], 1
		mov	ecx, [ebp-24h]
		mov	dword ptr [ecx], 1
		mov	eax, [ebp-28h]
		mov	dword ptr [eax], 4
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp-2Ch]
		mov	ecx, [edx+0Ch]
		shr	ecx, 8
		and	ecx, 0FFh
		mov	[eax], ecx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491C2D:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	edx, [ebp-20h]	; jumptable 00491ABA case 3
		mov	dword ptr [edx], 1
		xor	edx, edx
		mov	ecx, [ebp-24h]
		mov	dword ptr [ecx], 2
		mov	eax, [ebp-28h]
		mov	[eax], edx
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+0Ch]
		and	eax, 0FFFFh
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491C5B:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA case 4
		mov	dword ptr [ecx], 1
		mov	eax, [ebp-24h]
		mov	dword ptr [eax], 1
		mov	edx, [ebp-28h]
		mov	dword ptr [edx], 1
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+10h]
		and	eax, 0FFh
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491C8B:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA case 5
		mov	dword ptr [ecx], 1
		mov	eax, [ebp-24h]
		mov	dword ptr [eax], 2
		mov	edx, [ebp-28h]
		mov	dword ptr [edx], 1
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+10h]
		and	eax, 0FFFFh
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491CBB:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA cases 6,7
		mov	dword ptr [ecx], 1
		mov	eax, [ebp-24h]
		mov	dword ptr [eax], 2
		mov	edx, [ebp-28h]
		mov	dword ptr [edx], 2
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+14h]
		and	eax, 0FFFFh
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491CEB:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA case 8
		mov	dword ptr [ecx], 1
		xor	ecx, ecx
		mov	eax, [ebp-24h]
		mov	dword ptr [eax], 4
		mov	edx, [ebp-28h]
		mov	[edx], ecx
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-2Ch]
		mov	edx, [eax+0Ch]
		mov	[ecx], edx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491D14:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 9
		mov	dword ptr [eax], 1
		mov	edx, [ebp-24h]
		mov	dword ptr [edx], 4
		mov	ecx, [ebp-28h]
		mov	dword ptr [ecx], 3
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-2Ch]
		mov	edx, [eax+18h]
		mov	[ecx], edx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491D3F:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 10
		mov	dword ptr [eax], 1
		mov	edx, [ebp-24h]
		mov	dword ptr [edx], 4
		mov	ecx, [ebp-28h]
		mov	dword ptr [ecx], 1
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-2Ch]
		mov	edx, [eax+10h]
		mov	[ecx], edx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491D6A:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 11
		mov	dword ptr [eax], 1
		mov	edx, [ebp-24h]
		mov	dword ptr [edx], 4
		mov	ecx, [ebp-28h]
		mov	dword ptr [ecx], 2
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-2Ch]
		mov	edx, [eax+14h]
		mov	[ecx], edx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491D95:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		test	esi, 0C0h	; jumptable 00491ABA case 15
		jnz	loc_49263C	; jumptable 00491ABA default case
		mov	eax, [ebp-20h]
		mov	dword ptr [eax], 1
		mov	edx, [ebp-24h]
		mov	dword ptr [edx], 4
		mov	ecx, [ebp-28h]
		mov	dword ptr [ecx], 5
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-2Ch]
		mov	edx, [eax+20h]
		mov	[ecx], edx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491DCC:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 12
		mov	dword ptr [eax], 1
		mov	edx, [ebp-24h]
		mov	ecx, [ebp-244h]
		mov	[edx], ecx
		xor	edx, edx
		mov	eax, [ebp-28h]
		mov	[eax], edx
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+0Ch]
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491DF7:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA cases 16-18
		mov	dword ptr [ecx], 1
		mov	eax, [ebp-24h]
		mov	edx, [ebp-244h]
		mov	[eax], edx
		xor	eax, eax
		mov	ecx, [ebp-30h]
		mov	edx, [ebp-28h]
		mov	al, [ecx]
		sar	eax, 3
		and	eax, 7
		mov	[edx], eax
		cmp	dword ptr [ebp-244h], 1
		jnz	short loc_491E2B
		cmp	eax, 4
		jge	short loc_491E3C

loc_491E2B:				; CODE XREF: .text:00491E24j
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+eax*4+0Ch]
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491E3C:				; CODE XREF: .text:00491E29j
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+eax*4-4]
		shr	eax, 8
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491E50:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA case 19
		mov	dword ptr [ecx], 1
		mov	eax, [ebp-24h]
		mov	edx, [ebp-244h]
		mov	[eax], edx
		xor	eax, eax
		mov	ecx, [ebp-30h]
		mov	edx, [ebp-28h]
		mov	al, [ecx-1]
		and	eax, 7
		mov	[edx], eax
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+eax*4+0Ch]
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491E85:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA case 20
		mov	dword ptr [ecx], 1
		mov	eax, [ebp-24h]
		mov	dword ptr [eax], 1
		xor	eax, eax
		mov	edx, [ebp-30h]
		mov	al, [edx-1]
		mov	edx, [ebp-28h]
		and	eax, 7
		mov	[edx], eax
		cmp	eax, 4
		jge	short loc_491EBD
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+eax*4+0Ch]
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491EBD:				; CODE XREF: .text:00491EAAj
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+eax*4-4]
		shr	eax, 8
		mov	[edx], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491ED1:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		cmp	eax, 19h	; jumptable 00491ABA cases 22-26
		jnz	short loc_491EDF
		mov	dword ptr [ebp-10h], 4
		jmp	short loc_491F04
; ---------------------------------------------------------------------------

loc_491EDF:				; CODE XREF: .text:00491ED4j
		cmp	eax, 17h
		jnz	short loc_491EED
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_491F04
; ---------------------------------------------------------------------------

loc_491EED:				; CODE XREF: .text:00491EE2j
		cmp	eax, 18h
		jnz	short loc_491EFB
		mov	dword ptr [ebp-10h], 2
		jmp	short loc_491F04
; ---------------------------------------------------------------------------

loc_491EFB:				; CODE XREF: .text:00491EF0j
		mov	ecx, [ebp-244h]
		mov	[ebp-10h], ecx

loc_491F04:				; CODE XREF: .text:00491EDDj
					; .text:00491EEBj ...
		mov	eax, [ebp-24h]
		mov	edx, [ebp-10h]
		mov	[eax], edx
		mov	ecx, [ebp-30h]
		xor	eax, eax
		mov	al, [ecx]
		and	eax, 0C0h
		cmp	eax, 0C0h
		jnz	short loc_491F68
		mov	edx, [ebp-20h]
		xor	eax, eax
		mov	dword ptr [edx], 1
		mov	ecx, [ebp-30h]
		mov	edx, [ebp-28h]
		mov	al, [ecx]
		and	eax, 7
		mov	[edx], eax
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_491F42
		cmp	eax, 4
		jge	short loc_491F50

loc_491F42:				; CODE XREF: .text:00491F3Bj
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+eax*4+0Ch]
		mov	[edx], eax
		jmp	short loc_491F5F
; ---------------------------------------------------------------------------

loc_491F50:				; CODE XREF: .text:00491F40j
		mov	ecx, [ebp+0Ch]
		mov	edx, [ebp-2Ch]
		mov	eax, [ecx+eax*4-4]
		shr	eax, 8
		mov	[edx], eax

loc_491F5F:				; CODE XREF: .text:00491F4Ej
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_491FC3
; ---------------------------------------------------------------------------

loc_491F68:				; CODE XREF: .text:00491F1Dj
		push	esi
		lea	ecx, [ebp-0Ch]
		push	ecx
		lea	edx, [ebp-70h]
		mov	eax, [ebp+0Ch]
		add	edx, edi
		push	eax
		push	edx
		call	loc_491558
		add	esp, 10h
		mov	[ebp-14h], eax
		mov	ecx, [ebp+8]
		push	ecx		; threadid
		push	200043h		; mode
		mov	eax, [ebp-10h]
		push	eax		; size
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-4]
		shl	ecx, 2
		lea	eax, [ebp-254h]
		add	ecx, eax
		push	ecx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		mov	edx, [ebp-20h]
		mov	dword ptr [edx], 100h
		mov	ecx, [ebp-28h]
		mov	eax, [ebp-0Ch]
		mov	[ecx], eax

loc_491FC3:				; CODE XREF: .text:00491F66j
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_491FD7
		mov	edx, [ebp-2Ch]
		and	dword ptr [edx], 0FFh
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491FD7:				; CODE XREF: .text:00491FC7j
		cmp	dword ptr [ebp-10h], 2
		jnz	loc_492459	; jumptable 00491ABA cases 21,43-47
		mov	ecx, [ebp-2Ch]
		and	dword ptr [ecx], 0FFFFh
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_491FEF:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 29
		test	esi, 80h
		mov	dword ptr [eax], 100h
		mov	edx, [ebp-24h]
		mov	ecx, [ebp-244h]
		mov	[edx], ecx
		jz	short loc_49201D
		mov	eax, [ebp-30h]
		movzx	edx, word ptr [eax]
		mov	[ebp-0Ch], edx
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_49202C
; ---------------------------------------------------------------------------

loc_49201D:				; CODE XREF: .text:00492009j
		mov	ecx, [ebp-30h]
		mov	eax, [ecx]
		mov	[ebp-0Ch], eax
		mov	dword ptr [ebp-14h], 4

loc_49202C:				; CODE XREF: .text:0049201Bj
		test	esi, 10h
		jz	short loc_49203D
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+58h]
		add	[ebp-0Ch], ecx

loc_49203D:				; CODE XREF: .text:00492032j
		mov	eax, [ebp-28h]
		mov	edx, [ebp-0Ch]
		mov	[eax], edx
		mov	ecx, [ebp+8]
		push	ecx		; threadid
		push	200043h		; mode
		mov	eax, [ebp-244h]
		push	eax		; size
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-4]
		shl	ecx, 2
		lea	eax, [ebp-254h]
		add	ecx, eax
		push	ecx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_49207D:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		test	esi, 80h	; jumptable 00491ABA case 32
		jnz	loc_49263C	; jumptable 00491ABA default case
		mov	edx, [ebp-20h]
		mov	dword ptr [edx], 100h
		mov	ecx, [ebp-24h]
		mov	eax, [ebp-244h]
		mov	[ecx], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+28h]
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp-28h]
		mov	[eax], ecx
		mov	edx, [ebp+8]
		push	edx		; threadid
		push	200043h		; mode
		mov	eax, [ebp-244h]
		push	eax		; size
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-4]
		shl	ecx, 2
		lea	eax, [ebp-254h]
		add	ecx, eax
		push	ecx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_4920E3:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		test	esi, 80h	; jumptable 00491ABA case 33
		jnz	loc_49263C	; jumptable 00491ABA default case
		mov	edx, [ebp-20h]
		mov	ecx, 1
		mov	dword ptr [edx], 100h
		mov	[ebp-244h], ecx
		mov	eax, [ebp-24h]
		mov	[eax], ecx
		mov	edx, [ebp+0Ch]
		mov	eax, [edx+28h]
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-28h]
		mov	[edx], eax
		mov	ecx, [ebp+8]
		push	ecx		; threadid
		push	200043h		; mode
		mov	eax, [ebp-244h]
		push	eax		; size
		lea	eax, [ebp-254h]
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-4]
		shl	ecx, 2
		add	ecx, eax
		push	ecx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_49214E:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		test	esi, 90h	; jumptable 00491ABA case 34
		jnz	loc_49263C	; jumptable 00491ABA default case
		mov	edx, [ebp-20h]
		mov	dword ptr [edx], 100h
		mov	ecx, [ebp-24h]
		mov	eax, [ebp-244h]
		mov	[ecx], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+24h]
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp-28h]
		mov	[eax], ecx
		mov	edx, [ebp+8]
		push	edx		; threadid
		push	200043h		; mode
		mov	eax, [ebp-244h]
		push	eax		; size
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-4]
		shl	ecx, 2
		lea	eax, [ebp-254h]
		add	ecx, eax
		push	ecx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_4921B4:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		test	esi, 90h	; jumptable 00491ABA case 35
		jnz	loc_49263C	; jumptable 00491ABA default case
		mov	edx, [ebp-20h]
		mov	ecx, 1
		mov	dword ptr [edx], 100h
		mov	[ebp-244h], ecx
		mov	eax, [ebp-24h]
		mov	[eax], ecx
		mov	edx, [ebp+0Ch]
		mov	eax, [edx+24h]
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-28h]
		mov	[edx], eax
		mov	ecx, [ebp+8]
		push	ecx		; threadid
		push	200043h		; mode
		mov	eax, [ebp-244h]
		push	eax		; size
		lea	eax, [ebp-254h]
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-4]
		shl	ecx, 2
		add	ecx, eax
		push	ecx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_49221F:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	edx, [ebp-24h]	; jumptable 00491ABA case 39
		mov	ecx, [ebp-10h]
		mov	[edx], ecx
		mov	eax, [ebp-30h]
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 0C0h
		cmp	edx, 0C0h
		jz	loc_49263C	; jumptable 00491ABA default case
		test	esi, 80h
		jnz	loc_49263C	; jumptable 00491ABA default case
		lea	ecx, [ebp-0Ch]
		push	0
		push	ecx
		lea	edx, [ebp-70h]
		mov	eax, [ebp+0Ch]
		add	edx, edi
		push	eax
		push	edx
		call	loc_491558
		add	esp, 10h
		mov	[ebp-14h], eax
		mov	ecx, [ebp-20h]
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-2Ch]
		mov	ecx, [ebp-0Ch]
		mov	[edx], ecx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_49227B:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		test	esi, 90h	; jumptable 00491ABA cases 40,42
		jnz	loc_49263C	; jumptable 00491ABA default case
		mov	eax, [ebp+8]
		push	eax		; threadid
		push	200043h		; mode
		mov	edx, [ebp-244h]
		push	edx		; size
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+1Ch]
		push	eax		; _addr
		mov	edx, [ebp-4]
		shl	edx, 2
		lea	ecx, [ebp-254h]
		add	edx, ecx
		push	edx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		mov	eax, [ebp-20h]
		mov	dword ptr [eax], 100h
		mov	edx, [ebp-24h]
		mov	ecx, [ebp-244h]
		mov	[edx], ecx
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-28h]
		mov	edx, [eax+1Ch]
		mov	[ecx], edx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_4922E1:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		test	esi, 0D0h	; jumptable 00491ABA case 48
		jnz	loc_49263C	; jumptable 00491ABA default case
		mov	eax, [ebp+8]
		push	eax		; threadid
		push	200043h		; mode
		mov	edx, [ebp-244h]
		push	edx		; size
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+20h]
		push	eax		; _addr
		mov	edx, [ebp-4]
		shl	edx, 2
		lea	ecx, [ebp-254h]
		add	edx, ecx
		push	edx		; buf
		call	Readmemoryex
		add	esp, 14h
		test	eax, eax
		jz	loc_49263C	; jumptable 00491ABA default case
		mov	eax, [ebp-20h]
		mov	dword ptr [eax], 100h
		mov	edx, [ebp-24h]
		mov	ecx, [ebp-244h]
		mov	[edx], ecx
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-28h]
		mov	edx, [eax+20h]
		mov	[ecx], edx
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_492347:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 108
		xor	edx, edx
		mov	[eax], edx
		mov	eax, [ebp-14h]
		mov	ecx, [ebp-30h]
		lea	edx, [ecx+eax]
		mov	ecx, [ebp-18h]
		mov	eax, [edx+ecx]
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+8]
		mov	edx, [ebp-2Ch]
		add	ecx, edi
		add	ecx, [ebp-14h]
		add	ecx, [ebp-18h]
		add	ecx, [ebp-244h]
		add	eax, ecx
		mov	[edx], eax
		mov	eax, [ebp-244h]
		add	[ebp-18h], eax
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_492386:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA case 109
		xor	eax, eax
		mov	[ecx], eax
		mov	ecx, [ebp-14h]
		mov	edx, [ebp-30h]
		lea	eax, [edx+ecx]
		mov	edx, [ebp-18h]
		movsx	ecx, byte ptr [eax+edx]
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+8]
		mov	eax, [ebp-2Ch]
		add	edx, edi
		add	edx, [ebp-14h]
		add	edx, [ebp-18h]
		add	ecx, edx
		inc	ecx
		mov	[eax], ecx
		inc	dword ptr [ebp-18h]
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_4923BB:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	edx, [ebp-20h]	; jumptable 00491ABA case 112
		xor	ecx, ecx
		mov	[edx], ecx
		mov	eax, [ebp-2Ch]
		mov	dword ptr [eax], 1
		jmp	loc_492459	; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_4923D0:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	edx, [ebp-20h]	; jumptable 00491ABA cases 113,114
		xor	ecx, ecx
		mov	[edx], ecx
		mov	eax, [ebp-30h]
		mov	edx, [ebp-14h]
		lea	ecx, [eax+edx]
		mov	eax, [ebp-18h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		mov	ecx, [ebp-2Ch]
		mov	[ecx], edx
		inc	dword ptr [ebp-18h]
		jmp	short loc_492459 ; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_4923F2:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	eax, [ebp-20h]	; jumptable 00491ABA case 115
		xor	edx, edx
		mov	[eax], edx
		mov	ecx, [ebp-30h]
		mov	eax, [ebp-14h]
		lea	edx, [ecx+eax]
		mov	ecx, [ebp-18h]
		movzx	eax, word ptr [edx+ecx]
		mov	edx, [ebp-2Ch]
		mov	[edx], eax
		add	dword ptr [ebp-18h], 2
		jmp	short loc_492459 ; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_492414:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA cases 116,117
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-30h]
		mov	ecx, [ebp-14h]
		lea	eax, [edx+ecx]
		mov	edx, [ebp-18h]
		mov	ecx, [eax+edx]
		mov	eax, [ebp-2Ch]
		mov	[eax], ecx
		mov	edx, [ebp-244h]
		add	[ebp-18h], edx
		jmp	short loc_492459 ; jumptable 00491ABA cases 21,43-47
; ---------------------------------------------------------------------------

loc_49243A:				; CODE XREF: .text:00491ABAj
					; DATA XREF: .text:off_491B3Eo
		mov	ecx, [ebp-20h]	; jumptable 00491ABA case 118
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-30h]
		mov	ecx, [ebp-14h]
		lea	eax, [edx+ecx]
		mov	edx, [ebp-18h]
		movsx	ecx, byte ptr [eax+edx]
		mov	eax, [ebp-2Ch]
		mov	[eax], ecx
		inc	dword ptr [ebp-18h]

loc_492459:				; CODE XREF: .text:00491ABAj
					; .text:00491BF4j ...
		inc	dword ptr [ebp-4] ; jumptable 00491ABA cases 21,43-47
		add	dword ptr [ebp-2Ch], 4
		add	dword ptr [ebp-28h], 4
		add	dword ptr [ebp-24h], 4
		add	dword ptr [ebp-20h], 4
		add	dword ptr [ebp-1Ch], 4
		cmp	dword ptr [ebp-4], 4
		jl	loc_491A92

loc_49247A:				; CODE XREF: .text:00491AA1j
		test	esi, 100h
		jz	short loc_492499
		test	byte ptr [ebx+6], 1
		jz	loc_49263C	; jumptable 00491ABA default case
		cmp	dword ptr [ebp-40h], 100h
		jnz	loc_49263C	; jumptable 00491ABA default case

loc_492499:				; CODE XREF: .text:00492480j
		cmp	dword ptr [ebp-40h], 100h
		jnz	short loc_4924A8
		test	byte ptr [ebx+1Fh], 30h
		jnz	short loc_4924AE

loc_4924A8:				; CODE XREF: .text:004924A0j
		test	byte ptr [ebx+7], 2
		jz	short loc_4924C3

loc_4924AE:				; CODE XREF: .text:004924A6j
		push	48h		; n
		mov	edx, [ebp+0Ch]
		push	edx		; src
		lea	ecx, [ebp-234h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4924C3:				; CODE XREF: .text:004924ACj
		add	edi, [ebp-14h]
		mov	eax, [ebp+0Ch]
		add	edi, [ebp-18h]
		add	[eax+8], edi
		xor	edx, edx
		mov	[ebp-240h], edx
		lea	eax, [ebp-254h]
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	eax
		call	dword ptr [ebx+30h]
		add	esp, 8
		mov	edx, [ebp+0Ch]
		or	dword ptr [edx], 1
		test	byte ptr [ebx+1Fh], 30h
		jz	loc_4925EA
		cmp	dword ptr [ebp-40h], 1
		jnz	loc_4925A3
		cmp	dword ptr [ebp-60h], 4
		jnz	short loc_49251D
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp-50h]
		mov	edx, [ebp-254h]
		mov	[ecx+eax*4+0Ch], edx
		jmp	loc_4925EA
; ---------------------------------------------------------------------------

loc_49251D:				; CODE XREF: .text:00492506j
		cmp	dword ptr [ebp-60h], 2
		jnz	short loc_49254D
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp-50h]
		mov	edx, [ecx+eax*4+0Ch]
		mov	ecx, [ebp-254h]
		and	ecx, 0FFFFh
		and	edx, 0FFFF0000h
		or	edx, ecx
		mov	ecx, [ebp+0Ch]
		mov	[ecx+eax*4+0Ch], edx
		jmp	loc_4925EA
; ---------------------------------------------------------------------------

loc_49254D:				; CODE XREF: .text:00492521j
		mov	eax, [ebp-50h]
		cmp	eax, 4
		jnb	short loc_492579
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp-254h]
		and	ecx, 0FFh
		mov	edx, [edx+eax*4+0Ch]
		and	edx, 0FFFFFF00h
		or	edx, ecx
		mov	ecx, [ebp+0Ch]
		mov	[ecx+eax*4+0Ch], edx
		jmp	short loc_4925EA
; ---------------------------------------------------------------------------

loc_492579:				; CODE XREF: .text:00492553j
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp-50h]
		mov	ecx, [ebp-254h]
		shl	ecx, 8
		mov	edx, [edx+eax*4-4]
		and	edx, 0FFFF00FFh
		and	ecx, 0FF00h
		or	edx, ecx
		mov	ecx, [ebp+0Ch]
		mov	[ecx+eax*4-4], edx
		jmp	short loc_4925EA
; ---------------------------------------------------------------------------

loc_4925A3:				; CODE XREF: .text:004924FCj
		cmp	dword ptr [ebp-40h], 100h
		jnz	short loc_4925EA
		push	400051h		; mode
		mov	eax, [ebp-60h]
		push	eax		; size
		mov	edx, [ebp-50h]
		push	edx		; _addr
		lea	eax, [ebp-254h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h
		mov	[ebp-10h], eax
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-60h]
		jz	short loc_4925EA
		push	48h		; n
		lea	ecx, [ebp-234h]
		push	ecx		; src
		mov	eax, [ebp+0Ch]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_49263C ; jumptable 00491ABA default case
; ---------------------------------------------------------------------------

loc_4925EA:				; CODE XREF: .text:004924F2j
					; .text:00492518j ...
		mov	eax, [ebp-240h]
		test	eax, eax
		jz	short loc_492635
		push	400051h		; mode
		lea	ecx, [ebp-238h]
		mov	edx, [ebp-23Ch]
		push	edx		; size
		push	eax		; _addr
		push	ecx		; buf
		call	Writememory
		add	esp, 10h
		mov	[ebp-10h], eax
		mov	eax, [ebp-10h]
		cmp	eax, [ebp-23Ch]
		jz	short loc_492635
		push	48h		; n
		lea	edx, [ebp-234h]
		push	edx		; src
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_49263C ; jumptable 00491ABA default case
; ---------------------------------------------------------------------------

loc_492635:				; CODE XREF: .text:004925F2j
					; .text:0049261Cj
		mov	eax, 1
		jmp	short loc_49263E
; ---------------------------------------------------------------------------

loc_49263C:				; CODE XREF: .text:0049166Cj
					; .text:004916A0j ...
		xor	eax, eax	; jumptable 00491ABA default case

loc_49263E:				; CODE XREF: .text:0049263Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
