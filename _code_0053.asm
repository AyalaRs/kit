.code

; int __usercall loc_45EC80@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int)
loc_45EC80:				; CODE XREF: .text:0046F09Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD84h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+8]
		mov	esi, offset aAnalysingSPres ; "Analysing %s - $	- press	SPACE to inter"...
		push	28h		; n
		push	0		; c
		lea	eax, [edi+4ACh]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [edi+4D4h]
		push	400h		; n
		push	0		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		test	byte ptr [edi+0Bh], 4
		jz	short loc_45ECCC
		cmp	dword ptr [edi+4A4h], 0
		jnz	short loc_45ECD3

loc_45ECCC:				; CODE XREF: .text:0045ECC1j
		xor	eax, eax
		jmp	loc_460E0D
; ---------------------------------------------------------------------------

loc_45ECD3:				; CODE XREF: .text:0045ECCAj
		mov	eax, [edi+4A4h]
		cmp	eax, addr0
		jb	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, eax
		add	edx, 48h
		cmp	edx, addr1
		jnb	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, addr1
		push	1		; int
		sub	ecx, eax
		push	0		; int
		push	ecx		; int
		push	eax		; int
		lea	eax, [esi+0EA2h]
		push	eax		; s1
		call	loc_45C938
		add	esp, 14h
		mov	edx, [edi+4A4h]
		add	edx, copy
		sub	edx, addr0
		mov	[ebp-58h], edx
		mov	ecx, [ebp-58h]
		mov	eax, [ecx+8]
		mov	[ebp-18h], eax
		mov	edx, _size
		cmp	edx, [ebp-18h]
		jb	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-18h]
		add	ecx, addr0
		mov	[ebp-1Ch], ecx
		mov	eax, [ebp-58h]
		mov	ebx, [eax+0Ch]
		add	ebx, [ebp-18h]
		cmp	ebx, _size
		ja	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-18h]
		lea	edx, [esi+0EEEh]
		mov	[ebp-38h], eax
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0EC8h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-18h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0EFAh]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-18h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0F26h]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-18h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DE6h]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0F52h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-18h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [ebp-10h]
		lea	ecx, [esi+0DBEh]
		push	edx		; dest
		push	ecx		; int
		lea	eax, [esi+0F76h]
		push	0		; char
		push	eax		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-18h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+0EEEh]
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+0F96h]
		push	0		; char
		push	eax		; int
		mov	edx, [ebp-10h]
		lea	ecx, [ebp-18h]
		push	edx		; n
		push	9		; int
		push	ebx		; int
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+0DE6h]
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+0FB8h]
		push	0		; char
		push	edx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-18h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-18h]
		lea	edx, [ebp-24h]
		mov	[ebp-3Ch], eax
		push	edx		; dest
		lea	ecx, [esi+0DBEh]
		lea	eax, [esi+0FD6h]
		push	ecx		; int
		push	0		; char
		push	eax		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-18h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-3Ch]
		push	ecx
		mov	eax, [ebp-38h]
		push	eax
		call	loc_45CC08
		add	esp, 8
		xor	edx, edx
		mov	[ebp-20h], edx
		mov	ecx, [ebp-20h]
		cmp	ecx, [ebp-24h]
		jnb	loc_45F169

loc_45EEEC:				; CODE XREF: .text:0045F163j
		mov	eax, [ebp-18h]
		lea	ecx, [esi+0FF8h]
		mov	[ebp-38h], eax
		lea	eax, [ebp-27Ch]
		mov	edx, [ebp-20h]
		push	edx
		push	ecx		; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-28h]
		lea	ecx, [esi+0DE6h]
		lea	eax, [ebp-27Ch]
		push	edx		; dest
		push	ecx		; int
		push	0		; char
		push	eax		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-18h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-20h]
		push	ecx
		lea	eax, [esi+101Eh]
		push	eax		; format
		lea	edx, [ebp-27Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		lea	eax, [esi+0DBEh]
		lea	edx, [ebp-27Ch]
		push	ecx		; dest
		push	eax		; int
		push	0		; char
		push	edx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-18h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		xor	eax, eax
		mov	[ebp-10h], eax
		jmp	short loc_45EF9C
; ---------------------------------------------------------------------------

loc_45EF87:				; CODE XREF: .text:0045EFADj
		mov	edx, [ebp-18h]
		add	edx, [ebp-10h]
		mov	ecx, copy
		cmp	byte ptr [ecx+edx], 0
		jz	short loc_45EFAF
		inc	dword ptr [ebp-10h]

loc_45EF9C:				; CODE XREF: .text:0045EF85j
		cmp	dword ptr [ebp-10h], 100h
		jnb	short loc_45EFAF
		mov	eax, [ebp-18h]
		add	eax, [ebp-10h]
		cmp	ebx, eax
		ja	short loc_45EF87

loc_45EFAF:				; CODE XREF: .text:0045EF97j
					; .text:0045EFA3j
		mov	edx, [ebp-10h]
		add	edx, 4
		and	edx, 0FFFFFFFCh
		mov	[ebp-10h], edx
		cmp	dword ptr [ebp-10h], 20h
		ja	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-10h]
		push	ecx		; maxlen
		lea	eax, [esi+1040h]
		push	eax		; s2
		mov	edx, copy
		add	edx, [ebp-18h]
		push	edx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_45EFF0
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		jmp	loc_45F0A2
; ---------------------------------------------------------------------------

loc_45EFF0:				; CODE XREF: .text:0045EFE4j
		mov	eax, [ebp-10h]
		push	eax		; maxlen
		lea	edx, [esi+1049h]
		push	edx		; s2
		mov	ecx, copy
		add	ecx, [ebp-18h]
		push	ecx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_45F01D
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_45F0A2
; ---------------------------------------------------------------------------

loc_45F01D:				; CODE XREF: .text:0045F00Fj
		mov	eax, [ebp-10h]
		push	eax		; maxlen
		lea	edx, [esi+104Fh]
		push	edx		; s2
		mov	ecx, copy
		add	ecx, [ebp-18h]
		push	ecx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_45F047
		mov	dword ptr [ebp-0Ch], 2
		jmp	short loc_45F0A2
; ---------------------------------------------------------------------------

loc_45F047:				; CODE XREF: .text:0045F03Cj
		mov	eax, [ebp-10h]
		push	eax		; maxlen
		lea	edx, [esi+1055h]
		push	edx		; s2
		mov	ecx, copy
		add	ecx, [ebp-18h]
		push	ecx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_45F071
		mov	dword ptr [ebp-0Ch], 3
		jmp	short loc_45F0A2
; ---------------------------------------------------------------------------

loc_45F071:				; CODE XREF: .text:0045F066j
		mov	eax, [ebp-10h]
		push	eax		; maxlen
		lea	edx, [esi+1059h]
		push	edx		; s2
		mov	ecx, copy
		add	ecx, [ebp-18h]
		push	ecx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_45F09B
		mov	dword ptr [ebp-0Ch], 4
		jmp	short loc_45F0A2
; ---------------------------------------------------------------------------

loc_45F09B:				; CODE XREF: .text:0045F090j
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh

loc_45F0A2:				; CODE XREF: .text:0045EFEBj
					; .text:0045F018j ...
		cmp	dword ptr [ebp-0Ch], 0
		jl	short loc_45F0C5
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-1Ch]
		add	edx, [ebp-28h]
		mov	[edi+eax*8+4ACh], edx
		mov	ecx, [ebp-0Ch]
		mov	eax, [ebp-2Ch]
		mov	[edi+ecx*8+4B0h], eax

loc_45F0C5:				; CODE XREF: .text:0045F0A6j
		mov	edx, copy
		lea	ecx, [esi+105Ch]
		add	edx, [ebp-18h]
		lea	eax, [ebp-27Ch]
		push	edx
		push	ecx		; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-27Ch]
		push	edx		; s
		push	2Bh		; type
		mov	ecx, [ebp-1Ch]
		add	ecx, [ebp-28h]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	eax, [ebp-18h]
		mov	[ebp-3Ch], eax
		lea	ecx, [esi+1074h]
		mov	edx, [ebp-20h]
		lea	eax, [ebp-27Ch]
		push	edx
		push	ecx		; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [esi+0EEEh]
		lea	ecx, [ebp-27Ch]
		push	0		; dest
		push	edx		; int
		push	0		; char
		push	ecx		; int
		lea	edx, [ebp-18h]
		mov	eax, [ebp-10h]
		push	eax		; n
		push	9		; int
		push	ebx		; int
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-3Ch]
		push	ecx
		mov	eax, [ebp-38h]
		push	eax
		call	loc_45CC08
		add	esp, 8
		inc	dword ptr [ebp-20h]
		mov	edx, [ebp-20h]
		cmp	edx, [ebp-24h]
		jb	loc_45EEEC

loc_45F169:				; CODE XREF: .text:0045EEE6j
		mov	ecx, [edi+4BCh]
		mov	dword_5E6120, ecx
		mov	eax, [edi+4C0h]
		mov	dword_5E6124, eax
		mov	edx, [edi+4ACh]
		cmp	edx, addr0
		jb	short loc_45F209
		mov	ecx, [edi+4ACh]
		add	ecx, [edi+4B0h]
		cmp	ecx, addr1
		ja	short loc_45F209
		mov	eax, [edi+4ACh]
		sub	eax, addr0
		mov	[ebp-30h], eax
		mov	ebx, [edi+4B0h]
		add	ebx, [ebp-30h]
		cmp	ebx, [ebp-30h]
		jbe	short loc_45F209

loc_45F1BF:				; CODE XREF: .text:0045F207j
		mov	eax, [ebp-30h]
		mov	[ebp-10h], eax
		cmp	ebx, [ebp-10h]
		jbe	short loc_45F1E1

loc_45F1CA:				; CODE XREF: .text:0045F1DFj
		mov	edx, copy
		mov	ecx, [ebp-10h]
		cmp	byte ptr [edx+ecx], 0
		jz	short loc_45F1E1
		inc	dword ptr [ebp-10h]
		cmp	ebx, [ebp-10h]
		ja	short loc_45F1CA

loc_45F1E1:				; CODE XREF: .text:0045F1C8j
					; .text:0045F1D7j
		cmp	ebx, [ebp-10h]
		jbe	short loc_45F1E9
		inc	dword ptr [ebp-10h]

loc_45F1E9:				; CODE XREF: .text:0045F1E4j
		mov	eax, [ebp-10h]
		sub	eax, [ebp-30h]
		push	eax
		mov	edx, [ebp-30h]
		push	edx
		push	9
		call	loc_45C740
		add	esp, 0Ch
		mov	ecx, [ebp-10h]
		mov	[ebp-30h], ecx
		cmp	ebx, [ebp-30h]
		ja	short loc_45F1BF

loc_45F209:				; CODE XREF: .text:0045F18Cj
					; .text:0045F1A0j ...
		mov	eax, [edi+4B4h]
		cmp	eax, addr0
		jb	short loc_45F289
		mov	edx, [edi+4B4h]
		add	edx, [edi+4B8h]
		cmp	edx, addr1
		ja	short loc_45F289
		mov	ecx, [edi+4B4h]
		sub	ecx, addr0
		mov	[ebp-30h], ecx
		mov	ebx, [edi+4B8h]
		add	ebx, [ebp-30h]
		cmp	ebx, [ebp-30h]
		jbe	short loc_45F289

loc_45F248:				; CODE XREF: .text:0045F287j
		mov	eax, ebx
		sub	eax, [ebp-30h]
		mov	[ebp-5Ch], eax
		mov	dword ptr [ebp-60h], 10h
		mov	edx, [ebp-60h]
		cmp	edx, [ebp-5Ch]
		jnb	short loc_45F264
		lea	ecx, [ebp-60h]
		jmp	short loc_45F267
; ---------------------------------------------------------------------------

loc_45F264:				; CODE XREF: .text:0045F25Dj
		lea	ecx, [ebp-5Ch]

loc_45F267:				; CODE XREF: .text:0045F262j
		mov	eax, [ecx]
		mov	[ebp-14h], eax
		mov	edx, [ebp-14h]
		push	edx
		mov	eax, [ebp-30h]
		push	eax
		push	10h
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-14h]
		add	[ebp-30h], edx
		cmp	ebx, [ebp-30h]
		ja	short loc_45F248

loc_45F289:				; CODE XREF: .text:0045F215j
					; .text:0045F229j ...
		mov	ecx, [edi+4C4h]
		cmp	ecx, addr0
		jb	loc_45F369
		mov	eax, [edi+4C4h]
		add	eax, [edi+4C8h]
		cmp	eax, addr1
		ja	loc_45F369
		mov	edx, [edi+4C4h]
		sub	edx, addr0
		mov	[ebp-30h], edx
		mov	ebx, [edi+4C8h]
		add	ebx, [ebp-30h]

loc_45F2CB:				; CODE XREF: .text:0045F319j
		cmp	ebx, [ebp-30h]
		jbe	loc_45F369

loc_45F2D4:				; CODE XREF: .text:0045F363j
		lea	eax, [ebp-10h]
		push	eax		; value
		mov	edx, ebx
		sub	edx, [ebp-30h]
		push	edx		; size
		mov	ecx, copy
		add	ecx, [ebp-30h]
		push	ecx		; code
		call	Getpackednetint
		add	esp, 0Ch
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-14h]
		push	eax
		mov	edx, [ebp-30h]
		push	edx
		push	7
		call	loc_45C740
		add	esp, 0Ch
		mov	ecx, [ebp-14h]
		add	[ebp-30h], ecx
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_45F2CB
		mov	eax, [ebp-30h]
		add	eax, [ebp-10h]
		cmp	ebx, eax
		jb	loc_460DF1	; jumptable 0045F84C default case
		test	byte ptr [ebp-10h], 1
		jz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-10h]
		dec	edx
		push	edx
		mov	ecx, [ebp-30h]
		push	ecx
		push	0Bh
		call	loc_45C740
		add	esp, 0Ch
		push	1
		mov	eax, [ebp-30h]
		add	eax, [ebp-10h]
		dec	eax
		push	eax
		push	6
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-10h]
		add	[ebp-30h], edx
		cmp	ebx, [ebp-30h]
		ja	loc_45F2D4

loc_45F369:				; CODE XREF: .text:0045F295j
					; .text:0045F2ADj ...
		mov	ecx, [edi+4CCh]
		cmp	ecx, addr0
		jb	loc_460DED
		mov	eax, [edi+4CCh]
		add	eax, [edi+4D0h]
		cmp	eax, addr1
		ja	loc_460DED
		mov	edx, [edi+4CCh]
		sub	edx, addr0
		mov	[ebp-30h], edx
		mov	ebx, [edi+4D0h]
		mov	eax, [ebp-30h]
		add	ebx, [ebp-30h]
		add	eax, 18h
		cmp	ebx, eax
		jb	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, copy
		mov	eax, [ebp-30h]
		mov	edx, 4
		test	byte ptr [ecx+eax+6], 1
		jnz	short loc_45F3D1
		add	edx, 0FFFFFFFEh

loc_45F3D1:				; CODE XREF: .text:0045F3CCj
		mov	dword_5E6014, edx
		mov	edx, 4
		mov	ecx, copy
		mov	eax, [ebp-30h]
		test	byte ptr [ecx+eax+6], 2
		jnz	short loc_45F3EF
		add	edx, 0FFFFFFFEh

loc_45F3EF:				; CODE XREF: .text:0045F3EAj
		mov	dword_5E6018, edx
		mov	edx, 4
		mov	ecx, copy
		mov	eax, [ebp-30h]
		test	byte ptr [ecx+eax+6], 4
		jnz	short loc_45F40D
		add	edx, 0FFFFFFFEh

loc_45F40D:				; CODE XREF: .text:0045F408j
		mov	dword_5E601C, edx
		mov	ecx, [ebp-30h]
		mov	edx, copy
		mov	eax, [edx+ecx+8]
		mov	[ebp-48h], eax
		mov	eax, [edx+ecx+0Ch]
		lea	ecx, [esi+0DE6h]
		mov	[ebp-44h], eax
		lea	eax, [esi+0F64h]
		mov	edx, [ebp-30h]
		mov	[ebp-38h], edx
		push	0		; dest
		push	ecx		; int
		push	0		; char
		push	eax		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+0DBEh]
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+0F0Ch]
		push	0		; char
		push	eax		; int
		push	1		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+0DBEh]
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+0F38h]
		push	0		; char
		push	eax		; int
		push	1		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+0DE6h]
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+1096h]
		push	0		; char
		push	eax		; int
		push	1		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+0DE6h]
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+10B6h]
		push	0		; char
		push	eax		; int
		push	1		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+10D6h]
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+10CAh]
		push	0		; char
		push	eax		; int
		push	8		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		lea	eax, [esi+10D6h]
		mov	[ebp-3Ch], ecx
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+10E0h]
		push	0		; char
		push	edx		; int
		push	8		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-3Ch]
		push	eax
		mov	edx, [ebp-38h]
		push	edx
		call	loc_45CC08
		mov	ecx, [ebp-30h]
		xor	eax, eax
		mov	[ebp-38h], ecx
		mov	[ebp-0Ch], eax
		mov	dword ptr [ebp-50h], 1
		mov	dword ptr [ebp-4Ch], 0
		mov	edx, [ebp-0Ch]
		add	esp, 8
		lea	ecx, w[edx*4]
		mov	[ebp-68h], ecx
		mov	eax, [ebp-0Ch]
		lea	edx, dword_5E6020[eax*4]
		mov	[ebp-64h], edx
		cmp	dword ptr [ebp-0Ch], 40h
		jge	loc_45F64E

loc_45F5B0:				; CODE XREF: .text:0045F648j
		mov	eax, [ebp-48h]
		mov	edx, [ebp-44h]
		and	eax, [ebp-50h]
		and	edx, [ebp-4Ch]
		cmp	edx, 0
		jnz	short loc_45F5CF
		cmp	eax, 0
		jnz	short loc_45F5CF
		mov	ecx, [ebp-64h]
		xor	eax, eax
		mov	[ecx], eax
		jmp	short loc_45F627
; ---------------------------------------------------------------------------

loc_45F5CF:				; CODE XREF: .text:0045F5BFj
					; .text:0045F5C4j
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	edx, [esi+10EEh]
		mov	ecx, [ebp-68h]
		mov	eax, [ecx]
		lea	ecx, [ebp-27Ch]
		push	eax
		push	edx		; format
		push	ecx		; buffer
		call	_swprintf
		mov	eax, [ebp-0Ch]
		add	esp, 0Ch
		shl	eax, 2
		lea	edx, [esi+0DBEh]
		add	eax, offset dword_5E6020
		lea	ecx, [ebp-27Ch]
		push	eax		; dest
		push	edx		; int
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case

loc_45F627:				; CODE XREF: .text:0045F5CDj
		add	dword ptr [ebp-64h], 4
		add	dword ptr [ebp-68h], 4
		inc	dword ptr [ebp-0Ch]
		mov	eax, [ebp-50h]
		mov	edx, [ebp-4Ch]
		shld	edx, eax, 1
		add	eax, eax
		mov	[ebp-50h], eax
		mov	[ebp-4Ch], edx
		cmp	dword ptr [ebp-0Ch], 40h
		jl	loc_45F5B0

loc_45F64E:				; CODE XREF: .text:0045F5AAj
		mov	ecx, [ebp-3Ch]
		push	ecx
		mov	eax, [ebp-38h]
		push	eax
		call	loc_45CC08
		add	esp, 8
		xor	edx, edx
		mov	[ebp-4], edx
		mov	dword ptr [ebp-68h], offset word_539BD8

loc_45F66A:				; CODE XREF: .text:0045F6EDj
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-40h], ecx
		mov	[ebp-8], eax
		mov	edx, [ebp-68h]
		mov	ecx, edx
		mov	[ebp-70h], ecx
		mov	eax, [ebp-68h]
		lea	edx, [eax-4]
		mov	[ebp-6Ch], edx
		jmp	short loc_45F6B0
; ---------------------------------------------------------------------------

loc_45F687:				; CODE XREF: .text:0045F6B8j
		mov	ecx, [ebp-70h]
		xor	eax, eax
		mov	al, [ecx]
		shl	eax, 2
		add	eax, offset dword_5E6020
		mov	edx, [eax]
		cmp	edx, [ebp-40h]
		jnb	short loc_45F6A3
		lea	ecx, [ebp-40h]
		jmp	short loc_45F6A5
; ---------------------------------------------------------------------------

loc_45F6A3:				; CODE XREF: .text:0045F69Cj
		mov	ecx, eax

loc_45F6A5:				; CODE XREF: .text:0045F6A1j
		mov	eax, [ecx]
		mov	[ebp-40h], eax
		inc	dword ptr [ebp-8]
		inc	dword ptr [ebp-70h]

loc_45F6B0:				; CODE XREF: .text:0045F685j
		mov	edx, [ebp-6Ch]
		mov	eax, [edx]
		cmp	eax, [ebp-8]
		jg	short loc_45F687
		mov	edx, [ebp-68h]
		mov	ecx, [edx-0Ch]
		shl	dword ptr [ebp-40h], cl
		test	dword ptr [ebp-40h], 0FFFF0000h
		jz	short loc_45F6D8
		mov	eax, [ebp-68h]
		mov	dword ptr [eax-8], 4
		jmp	short loc_45F6E2
; ---------------------------------------------------------------------------

loc_45F6D8:				; CODE XREF: .text:0045F6CAj
		mov	edx, [ebp-68h]
		mov	dword ptr [edx-8], 2

loc_45F6E2:				; CODE XREF: .text:0045F6D6j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-68h], 2Ch
		cmp	dword ptr [ebp-4], 0Dh
		jl	loc_45F66A
		mov	word ptr [edi+4E0h], 2
		mov	cx, word ptr dword_5E6014
		mov	[edi+4E2h], cx
		mov	ax, word ptr dword_539DB4
		mov	[edi+4F0h], ax
		mov	dx, word ptr dword_5E6014
		mov	[edi+4F2h], dx
		mov	word ptr [edi+500h], 4
		mov	cx, word ptr dword_5E6014
		mov	[edi+502h], cx
		mov	word ptr [edi+520h], 2
		mov	ax, word ptr dword_5E6014
		mov	[edi+522h], ax
		mov	word ptr [edi+540h], 8
		mov	dx, word ptr dword_5E6014
		mov	[edi+542h], dx
		mov	word ptr [edi+560h], 4
		mov	cx, word ptr dword_5E6014
		mov	[edi+562h], cx
		xor	ecx, ecx
		mov	ax, word_539CAC
		mov	[edi+580h], ax
		lea	eax, [edi+4D4h]
		mov	dx, word ptr dword_5E6014
		mov	[edi+582h], dx
		mov	[ebp-0Ch], ecx
		mov	dword ptr [ebp-70h], offset w
		mov	[ebp-64h], eax
		mov	dword ptr [ebp-68h], offset dword_5E6020

loc_45F7B7:				; CODE XREF: .text:00460D73j
		mov	edx, [ebp-68h]
		cmp	dword ptr [edx], 0
		jz	loc_460D60
		mov	ecx, addr0
		mov	eax, [ebp-64h]
		add	ecx, [ebp-30h]
		mov	[eax], ecx
		mov	edx, [ebp-68h]
		mov	eax, [ebp-64h]
		mov	ecx, [edx]
		xor	edx, edx
		mov	[eax+4], ecx
		mov	[ebp-34h], edx
		mov	ecx, [ebp-64h]
		lea	eax, [ecx+8]
		mov	[ebp-7Ch], eax
		mov	edx, [ebp-70h]
		mov	ecx, edx
		mov	[ebp-78h], ecx
		mov	eax, [ebp-68h]
		mov	edx, eax
		mov	[ebp-74h], edx
		jmp	loc_460D52
; ---------------------------------------------------------------------------

loc_45F7FF:				; CODE XREF: .text:00460D5Aj
		mov	ecx, [ebp-30h]
		mov	[ebp-38h], ecx
		mov	eax, [ebp-34h]
		inc	eax
		push	eax
		lea	eax, [esi+1102h]
		mov	edx, [ebp-78h]
		mov	ecx, [edx]
		lea	edx, [ebp-27Ch]
		push	ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	ecx, [ebp-27Ch]
		push	ecx		; s
		push	2Bh		; type
		mov	eax, addr0
		add	eax, [ebp-30h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		cmp	edx, 2Ch	; switch 45 cases
		ja	loc_460DF1	; jumptable 0045F84C default case
		jmp	ds:off_45F853[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_45F853	dd offset loc_45F907	; DATA XREF: .text:0045F84Cr
		dd offset loc_45F9BD	; jump table for switch	statement
		dd offset loc_45FA26
		dd offset loc_45FAF6
		dd offset loc_45FB1F
		dd offset loc_45FB95
		dd offset loc_45FBBE
		dd offset loc_45FCBB
		dd offset loc_45FCE4
		dd offset loc_45FD65
		dd offset loc_45FDAC
		dd offset loc_45FE15
		dd offset loc_45FF43
		dd offset loc_45FFAA
		dd offset loc_45FFF3
		dd offset loc_460067
		dd offset loc_4600E6
		dd offset loc_46013A
		dd offset loc_460165
		dd offset loc_4601AC
		dd offset loc_4601D5
		dd offset loc_460249
		dd offset loc_460290
		dd offset loc_4602B9
		dd offset loc_46032F
		dd offset loc_4603A1
		dd offset loc_460406
		dd offset loc_460431
		dd offset loc_46045C
		dd offset loc_4604EE
		dd offset loc_460DF1
		dd offset loc_460DF1
		dd offset loc_460542
		dd offset loc_4606AF
		dd offset loc_4606E5
		dd offset loc_460771
		dd offset loc_4608D3
		dd offset loc_460927
		dd offset loc_4609D1
		dd offset loc_460A47
		dd offset loc_460B06
		dd offset loc_460BC6
		dd offset loc_460C0D
		dd offset loc_460CAC
		dd offset loc_460CF2
; ---------------------------------------------------------------------------

loc_45F907:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+0DE6h] ; jumptable 0045F84C case 0
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+1110h]
		push	0		; char
		push	eax		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+884h]
		lea	eax, [ebp-30h]
		push	ecx
		push	0
		push	0
		push	ebx
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+1126h]
		lea	ecx, [ebp-30h]
		push	edx
		push	0
		push	1
		push	ebx
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+1130h]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	1
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		lea	eax, [esi+113Ch]
		mov	[ebp-3Ch], ecx
		push	eax
		push	0
		push	1
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45F9BD:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+1150h] ; jumptable 0045F84C case 1
		push	ecx
		push	4Bh
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+884h]
		lea	ecx, [ebp-30h]
		push	edx
		push	0
		push	0
		push	ebx
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		lea	edx, [esi+1170h]
		mov	[ebp-3Ch], eax
		push	edx
		push	0
		push	0
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FA26:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+1184h] ; jumptable 0045F84C case 2
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+0DA0h]
		push	0		; char
		push	edx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+884h]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	0
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+1170h]
		lea	eax, [ebp-30h]
		push	ecx
		push	0
		push	0
		push	ebx
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+119Ch]
		push	edx
		push	40h
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+11ACh]
		push	eax
		push	4
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		mov	[ebp-3Ch], ecx
		lea	eax, [esi+11C0h]
		push	eax
		push	6
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FAF6:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	ecx, [ebp-30h]	; jumptable 0045F84C case 3
		mov	[ebp-3Ch], ecx
		lea	eax, [esi+93Ah]
		push	eax
		push	4
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FB1F:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+11D6h] ; jumptable 0045F84C case 4
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+0DA0h]
		push	0		; char
		push	eax		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+884h]
		lea	eax, [ebp-30h]
		push	ecx
		push	0
		push	0
		push	ebx
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		lea	ecx, [esi+0EDAh]
		mov	[ebp-3Ch], edx
		push	ecx
		push	0
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FB95:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	edx, [ebp-30h]	; jumptable 0045F84C case 5
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+95Ah]
		push	ecx
		push	6
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FBBE:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [ebp-10h]	; jumptable 0045F84C case 6
		lea	ecx, [esi+0DE6h]
		push	edx		; dest
		push	ecx		; int
		lea	eax, [esi+0B50h]
		push	0		; char
		push	eax		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-34h]
		push	ecx
		mov	eax, [ebp-10h]
		push	eax
		push	edi
		call	loc_45E398
		add	esp, 0Ch
		lea	edx, [esi+1204h]
		lea	ecx, [esi+11F0h]
		lea	eax, [ebp-30h]
		push	0		; dest
		push	edx		; int
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+1220h]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0DA0h]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+884h]
		lea	ecx, [ebp-30h]
		push	edx
		push	0
		push	0
		push	ebx
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+0EDAh]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	2
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		mov	[ebp-3Ch], ecx
		lea	eax, [esi+123Ch]
		push	eax
		push	8
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FCBB:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	ecx, [ebp-30h]	; jumptable 0045F84C case 7
		mov	[ebp-3Ch], ecx
		lea	eax, [esi+97Ah]
		push	eax
		push	8
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FCE4:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+1250h] ; jumptable 0045F84C case 8
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+0DA0h]
		push	0		; char
		push	eax		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+0DBEh]
		push	0		; dest
		push	ecx		; int
		lea	eax, [esi+126Ah]
		push	0		; char
		push	eax		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		lea	eax, [esi+884h]
		mov	[ebp-3Ch], ecx
		push	eax
		push	0
		push	0
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FD65:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+0C54h] ; jumptable 0045F84C case 9
		push	ecx
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+127Ch]
		push	ecx
		push	40h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FDAC:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0C54h] ; jumptable 0045F84C case 10
		push	edx
		push	45h
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+884h]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	0
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		lea	eax, [esi+0EDAh]
		mov	[ebp-3Ch], ecx
		push	eax
		push	0
		push	2
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FE15:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [ebp-10h]	; jumptable 0045F84C case 11
		lea	eax, [esi+1290h]
		push	ecx		; dest
		push	eax		; int
		lea	edx, [esi+0C24h]
		push	0		; char
		push	edx		; int
		push	1		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+0DE6h]
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+12AEh]
		push	0		; char
		push	edx		; int
		push	1		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+12BEh]
		push	eax
		push	41h
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		mov	[ebp-3Ch], ecx
		cmp	dword ptr [ebp-10h], 2
		jz	short loc_45FEBB
		cmp	dword ptr [ebp-10h], 3
		jz	short loc_45FEBB
		cmp	dword ptr [ebp-10h], 5
		jz	short loc_45FEBB
		cmp	dword ptr [ebp-10h], 7
		jz	short loc_45FEBB
		cmp	dword ptr [ebp-10h], 9
		jz	short loc_45FEBB
		cmp	dword ptr [ebp-10h], 0Bh
		jz	short loc_45FEBB
		cmp	dword ptr [ebp-10h], 19h
		jnz	short loc_45FEC6

loc_45FEBB:				; CODE XREF: .text:0045FE95j
					; .text:0045FE9Bj ...
		lea	eax, [esi+12CCh]
		mov	[ebp-54h], eax
		jmp	short loc_45FF1C
; ---------------------------------------------------------------------------

loc_45FEC6:				; CODE XREF: .text:0045FEB9j
		cmp	dword ptr [ebp-10h], 4
		jz	short loc_45FEE4
		cmp	dword ptr [ebp-10h], 6
		jz	short loc_45FEE4
		cmp	dword ptr [ebp-10h], 8
		jz	short loc_45FEE4
		cmp	dword ptr [ebp-10h], 0Ah
		jz	short loc_45FEE4
		cmp	dword ptr [ebp-10h], 18h
		jnz	short loc_45FEEF

loc_45FEE4:				; CODE XREF: .text:0045FECAj
					; .text:0045FED0j ...
		lea	edx, [esi+12D8h]
		mov	[ebp-54h], edx
		jmp	short loc_45FF1C
; ---------------------------------------------------------------------------

loc_45FEEF:				; CODE XREF: .text:0045FEE2j
		cmp	dword ptr [ebp-10h], 0Ch
		jz	short loc_45FEFB
		cmp	dword ptr [ebp-10h], 0Dh
		jnz	short loc_45FF06

loc_45FEFB:				; CODE XREF: .text:0045FEF3j
		lea	ecx, [esi+12E4h]
		mov	[ebp-54h], ecx
		jmp	short loc_45FF1C
; ---------------------------------------------------------------------------

loc_45FF06:				; CODE XREF: .text:0045FEF9j
		cmp	dword ptr [ebp-10h], 0Eh
		jnz	short loc_45FF17
		lea	eax, [esi+12F0h]
		mov	[ebp-54h], eax
		jmp	short loc_45FF1C
; ---------------------------------------------------------------------------

loc_45FF17:				; CODE XREF: .text:0045FF0Aj
		xor	edx, edx
		mov	[ebp-54h], edx

loc_45FF1C:				; CODE XREF: .text:0045FEC4j
					; .text:0045FEEDj ...
		lea	ecx, [esi+12FCh]
		push	ecx
		mov	eax, [ebp-54h]
		push	eax
		push	2
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FF43:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+12BEh] ; jumptable 0045F84C case 12
		push	ecx
		push	42h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0C24h]
		push	edx
		push	4Ah
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		lea	edx, [esi+12FCh]
		mov	[ebp-3Ch], eax
		push	edx
		push	0
		push	2
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FFAA:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+12BEh] ; jumptable 0045F84C case 13
		push	eax
		push	43h
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		lea	eax, [esi+1308h]
		mov	[ebp-3Ch], ecx
		push	eax
		push	0
		push	2
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_45FFF3:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+0DE6h] ; jumptable 0045F84C case 14
		push	0		; dest
		push	ecx		; int

loc_45FFFC:
		lea	eax, [esi+131Eh]
		push	0		; char
		push	eax		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+12BEh]
		push	ecx
		push	44h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		lea	ecx, [esi+132Ch]

loc_460045:
		mov	[ebp-3Ch], edx
		push	ecx
		push	0
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax

loc_460052:
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460067:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0DBEh] ; jumptable 0045F84C case 15
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+1348h]
		push	0		; char
		push	ecx		; int
		push	2		; n

loc_46007B:				; int
		push	6
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+1360h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+12BEh]
		push	ecx
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4600E6:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0DBEh] ; jumptable 0045F84C case 16
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+6D4h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+93Ah]
		push	ecx
		push	4
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_46013A:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	edx, [ebp-30h]	; jumptable 0045F84C case 17
		lea	ecx, [esi+0EDAh]
		mov	[ebp-3Ch], edx
		push	ecx
		push	0
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460165:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+12BEh] ; jumptable 0045F84C case 18
		push	edx
		push	2
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		mov	[ebp-3Ch], eax
		lea	edx, [esi+1374h]
		push	edx
		push	14h
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4601AC:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	eax, [ebp-30h]	; jumptable 0045F84C case 19
		mov	[ebp-3Ch], eax
		lea	edx, [esi+0A8Ch]
		push	edx
		push	14h
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4601D5:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+139Eh] ; jumptable 0045F84C case 20
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+1388h]
		push	0		; char
		push	edx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+884h]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	0
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		mov	[ebp-3Ch], ecx
		lea	eax, [esi+13B8h]
		push	eax
		push	40h
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460249:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+12BEh] ; jumptable 0045F84C case 21
		push	ecx
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+13CCh]
		push	ecx
		push	17h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460290:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	edx, [ebp-30h]	; jumptable 0045F84C case 22
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+0AC8h]
		push	ecx
		push	17h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4602B9:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+13E6h] ; jumptable 0045F84C case 23
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0DA0h]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+884h]
		lea	ecx, [ebp-30h]
		push	edx
		push	0
		push	0
		push	ebx
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		lea	edx, [esi+0C24h]
		mov	[ebp-3Ch], eax
		push	edx
		push	0
		push	2
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_46032F:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+1406h] ; jumptable 0045F84C case 24
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+0AE6h]
		push	0		; char
		push	edx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+95Ah]
		push	eax
		push	6
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		mov	[ebp-3Ch], ecx
		lea	eax, [esi+1434h]
		push	eax
		push	46h
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4603A1:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+0C54h] ; jumptable 0045F84C case 25
		push	ecx
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+144Ch]
		push	edx
		push	47h
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		mov	[ebp-3Ch], eax
		lea	edx, [esi+1462h]
		push	edx
		push	47h
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460406:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	eax, [ebp-30h]	; jumptable 0045F84C case 26
		lea	edx, [esi+884h]
		mov	[ebp-3Ch], eax
		push	edx
		push	0
		push	0
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460431:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	eax, [ebp-30h]	; jumptable 0045F84C case 27
		lea	edx, [esi+0EDAh]
		mov	[ebp-3Ch], eax
		push	edx
		push	0
		push	2
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_46045C:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+14A0h] ; jumptable 0045F84C case 28
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+1486h]
		push	0		; char
		push	edx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+14BCh]
		push	eax
		push	48h
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+14DCh]
		lea	eax, [ebp-30h]
		push	ecx
		push	0
		push	0
		push	ebx
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+14F2h]
		push	ecx
		push	1Ah
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4604EE:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0DE6h] ; jumptable 0045F84C case 29
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0B50h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+11ACh]
		push	ecx
		push	4
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460542:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0DE6h] ; jumptable 0045F84C case 32
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+150Ah]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0F0Ch]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0F38h]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+151Eh]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+1536h]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+1554h]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0DA0h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+1576h]
		lea	ecx, [ebp-30h]
		push	edx
		push	0
		push	2
		push	ebx
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+884h]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	0
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		lea	eax, [esi+158Ah]
		mov	[ebp-3Ch], ecx
		push	eax
		push	0
		push	0
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4606AF:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		mov	ecx, [ebp-30h]	; jumptable 0045F84C case 33
		lea	eax, [esi+0DE6h]
		mov	[ebp-3Ch], ecx
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+159Ah]
		push	0		; char
		push	edx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4606E5:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+0DE6h] ; jumptable 0045F84C case 34
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+15AEh]
		push	0		; char
		push	edx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+0DBEh]
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+15C8h]
		push	0		; char
		push	edx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		lea	edx, [esi+0DBEh]
		mov	[ebp-3Ch], eax
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+15E6h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460771:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0DBEh] ; jumptable 0045F84C case 35
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0F0Ch]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0F38h]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+151Eh]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+1536h]
		push	0		; char
		push	ecx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+1554h]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0DA0h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+1604h]
		lea	ecx, [ebp-30h]
		push	edx
		push	0
		push	2
		push	ebx
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+884h]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	0
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+158Ah]
		lea	eax, [ebp-30h]
		push	ecx
		push	0
		push	0
		push	ebx
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		lea	ecx, [esi+1626h]
		mov	[ebp-3Ch], edx
		push	ecx
		push	0
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4608D3:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0DE6h] ; jumptable 0045F84C case 36
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+159Ah]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+0BB6h]
		push	ecx
		push	23h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460927:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0DE6h] ; jumptable 0045F84C case 37
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+15AEh]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+15C8h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+0DBEh]
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+15E6h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+0BB6h]
		push	ecx
		push	23h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_4609D1:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+163Ah] ; jumptable 0045F84C case 38
		push	0		; dest
		push	edx		; int
		lea	ecx, [esi+0DA0h]
		push	0		; char
		push	ecx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	eax, [ebp-30h]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	edx, [esi+884h]
		lea	ecx, [ebp-30h]
		push	edx
		push	0
		push	0
		push	ebx
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		lea	edx, [esi+1626h]
		mov	[ebp-3Ch], eax
		push	edx
		push	0
		push	2
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460A47:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+1184h] ; jumptable 0045F84C case 39
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+0DA0h]
		push	0		; char
		push	edx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+0DBEh]
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+1654h]
		push	0		; char
		push	edx		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+1668h]
		lea	edx, [ebp-30h]
		push	eax
		push	0
		push	0
		push	ebx
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+167Ah]
		lea	eax, [ebp-30h]
		push	ecx
		push	0
		push	0
		push	ebx
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+1696h]
		push	ecx
		push	49h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460B06:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [ebp-10h]	; jumptable 0045F84C case 40
		lea	ecx, [esi+0DE6h]
		push	edx		; dest
		push	ecx		; int
		lea	eax, [esi+6D4h]
		push	0		; char
		push	eax		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		lea	edx, [ebp-30h]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-58h]
		mov	eax, [ecx+1Ch]
		push	eax
		mov	edx, [ebp-58h]
		mov	ecx, [edx+18h]
		push	ecx
		mov	eax, [ebp-34h]
		push	eax
		mov	edx, [ebp-10h]
		push	edx
		push	edi
		call	loc_45EA68
		add	esp, 14h
		lea	ecx, [esi+16B4h]
		lea	eax, [esi+0DA0h]
		lea	edx, [ebp-30h]
		push	0		; dest
		push	ecx		; int
		push	0		; char
		push	eax		; int
		push	4		; n
		push	6		; int
		push	ebx		; int
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	ecx, [esi+884h]
		lea	eax, [ebp-30h]
		push	ecx
		push	0
		push	0
		push	ebx
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		mov	[ebp-3Ch], edx
		lea	ecx, [esi+1696h]
		push	ecx
		push	49h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460BC6:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+0C48h] ; jumptable 0045F84C case 41
		push	edx
		push	2
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		mov	[ebp-3Ch], eax
		lea	edx, [esi+16E6h]
		push	edx
		push	2
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460C0D:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	eax, [esi+0DBEh] ; jumptable 0045F84C case 42
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+1528h]
		push	0		; char
		push	edx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+1704h]
		push	0		; dest
		push	eax		; int
		lea	edx, [esi+0DA0h]
		push	0		; char
		push	edx		; int
		push	2		; n
		push	6		; int
		push	ebx		; int
		lea	ecx, [ebp-30h]
		push	ecx		; int
		call	loc_45DE54
		add	esp, 20h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		lea	eax, [esi+172Ch]
		push	eax
		push	4Ch
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	ecx, [ebp-30h]
		lea	eax, [esi+884h]
		mov	[ebp-3Ch], ecx
		push	eax
		push	0
		push	0
		push	ebx
		lea	edx, [ebp-30h]
		push	edx
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	loc_460D34
; ---------------------------------------------------------------------------

loc_460CAC:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	ecx, [esi+95Ah]	; jumptable 0045F84C case 43
		push	ecx
		push	47h
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	edx, [ebp-30h]
		lea	ecx, [esi+1738h]
		mov	[ebp-3Ch], edx
		push	ecx
		push	0
		push	2
		push	ebx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_45DF6C
		add	esp, 14h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		jmp	short loc_460D34
; ---------------------------------------------------------------------------

loc_460CF2:				; CODE XREF: .text:0045F84Cj
					; DATA XREF: .text:off_45F853o
		lea	edx, [esi+172Ch] ; jumptable 0045F84C case 44
		push	edx
		push	2Ah
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case
		mov	eax, [ebp-30h]
		mov	[ebp-3Ch], eax
		lea	edx, [esi+0C9Ah]
		push	edx
		push	40h
		push	ebx
		lea	ecx, [ebp-30h]
		push	ecx
		call	loc_45E1D0
		add	esp, 10h
		test	eax, eax
		jnz	loc_460DF1	; jumptable 0045F84C default case

loc_460D34:				; CODE XREF: .text:0045F9B8j
					; .text:0045FA21j ...
		mov	eax, [ebp-30h]
		mov	edx, [ebp-7Ch]
		sub	eax, [ebp-38h]
		mov	[edx], eax
		mov	ecx, [ebp-3Ch]
		push	ecx
		mov	eax, [ebp-38h]
		push	eax
		call	loc_45CC08
		add	esp, 8
		inc	dword ptr [ebp-34h]

loc_460D52:				; CODE XREF: .text:0045F7FAj
		mov	edx, [ebp-74h]
		mov	ecx, [edx]
		cmp	ecx, [ebp-34h]
		ja	loc_45F7FF

loc_460D60:				; CODE XREF: .text:0045F7BDj
		inc	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-70h], 4
		add	dword ptr [ebp-64h], 10h
		add	dword ptr [ebp-68h], 4
		cmp	dword ptr [ebp-0Ch], 40h
		jl	loc_45F7B7
		mov	eax, [edi]
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		test	eax, eax
		jz	short loc_460DED
		jmp	short loc_460DE7
; ---------------------------------------------------------------------------

loc_460D88:				; CODE XREF: .text:00460DEBj
		cmp	byte ptr [eax+8], 8
		jz	short loc_460D9A
		cmp	byte ptr [eax+8], 9
		jz	short loc_460D9A
		cmp	byte ptr [eax+8], 0Ah
		jnz	short loc_460DE4

loc_460D9A:				; CODE XREF: .text:00460D8Cj
					; .text:00460D92j
		mov	edx, [eax+4]
		sub	edx, addr0
		mov	[ebp-10h], edx
		mov	ecx, [ebp-10h]
		cmp	ecx, _size
		jnb	short loc_460DE4
		mov	edx, s
		mov	ecx, [ebp-10h]
		movzx	edx, byte ptr [edx+ecx]
		and	edx, 1Fh
		cmp	edx, 18h
		jnz	short loc_460DE4
		mov	edx, [ebp-10h]
		mov	ecx, s
		mov	ebx, [ebp-10h]
		mov	cl, [ecx+edx]
		mov	edx, s
		and	cl, 0E0h
		or	cl, 19h
		mov	[edx+ebx], cl

loc_460DE4:				; CODE XREF: .text:00460D98j
					; .text:00460DAFj ...
		add	eax, 9

loc_460DE7:				; CODE XREF: .text:00460D86j
		cmp	byte ptr [eax+8], 0
		jnz	short loc_460D88

loc_460DED:				; CODE XREF: .text:0045F375j
					; .text:0045F38Dj ...
		xor	eax, eax
		jmp	short loc_460E0D
; ---------------------------------------------------------------------------

loc_460DF1:				; CODE XREF: .text:0045ECDFj
					; .text:0045ECF0j ...
		lea	edx, [esi+1754h] ; jumptable 0045F84C default case
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		xor	eax, eax

loc_460E0D:				; CODE XREF: .text:0045ECCEj
					; .text:00460DEFj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
