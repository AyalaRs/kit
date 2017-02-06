.code

; int __cdecl tabddraw(wchar_t *s, uchar *mask,	int *select, struct t_table *pt, t_sorthdr *ps,	int column, t_dumpcache	*cache)
_tabddraw:				; DATA XREF: .text:00477772o
					; .text:004778FAo ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_4B906D:				; CODE XREF: .text:004B9075j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4B906D
		mov	eax, [ebp-4]
		add	esp, 0FFFFFCB4h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		test	eax, eax
		jz	short loc_4B9093
		cmp	dword ptr [eax+220h], 0
		jnz	short loc_4B909A

loc_4B9093:				; CODE XREF: .text:004B9088j
		xor	eax, eax
		jmp	loc_4BD1FD
; ---------------------------------------------------------------------------

loc_4B909A:				; CODE XREF: .text:004B9091j
		mov	esi, [eax+220h]
		mov	ebx, [ebp+20h]
		xor	edi, edi
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 8 cases
		cmp	eax, 7
		ja	loc_4BD1B9	; jumptable 004B90B4 default case
		jmp	ds:off_4B90BB[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4B90BB	dd offset loc_4B90DB	; DATA XREF: .text:004B90B4r
		dd offset loc_4B9130	; jump table for switch	statement
		dd offset loc_4BA05E
		dd offset loc_4BA0C4
		dd offset loc_4BA33F
		dd offset loc_4BA56C
		dd offset loc_4BA56C
		dd offset loc_4BA56C
; ---------------------------------------------------------------------------

loc_4B90DB:				; CODE XREF: .text:004B90B4j
					; DATA XREF: .text:off_4B90BBo
		mov	edx, [esi]	; jumptable 004B90B4 case -4
		cmp	edx, [esi+284h]
		jbe	short loc_4B90ED
		mov	ecx, [esi]
		mov	[esi+284h], ecx

loc_4B90ED:				; CODE XREF: .text:004B90E3j
		mov	eax, [esi+8]
		mov	edi, [esi+8]
		and	eax, 0FF00h
		and	edi, 0FFh
		shr	eax, 8
		mov	edx, [ebp+18h]
		imul	edi, eax
		imul	edi, [edx+4]
		mov	ecx, [esi]
		add	ecx, [esi+4]
		sub	ecx, [esi+284h]
		cmp	edi, ecx
		jbe	short loc_4B9125
		mov	edi, [esi]
		add	edi, [esi+4]
		sub	edi, [esi+284h]

loc_4B9125:				; CODE XREF: .text:004B9118j
		lea	eax, [edi+59E0Dh]
		jmp	loc_4BD1FD
; ---------------------------------------------------------------------------

loc_4B9130:				; CODE XREF: .text:004B90B4j
					; DATA XREF: .text:off_4B90BBo
		cmp	dword ptr [esi+298h], 0	; jumptable 004B90B4 case -3
		jz	short loc_4B9140
		and	dword ptr [esi+8], 0FBFFFFFFh

loc_4B9140:				; CODE XREF: .text:004B9137j
		mov	edx, [esi+284h]
		mov	[ebx], edx
		mov	ecx, [esi+8]
		and	ecx, 3F0000h
		mov	[ebx+4], ecx
		xor	ecx, ecx
		mov	eax, [esi+8]
		and	eax, 0FF00h
		shr	eax, 8
		mov	[ebx+8], eax
		lea	eax, [esi+4]
		mov	edx, [esi+8]
		and	edx, 0FFh
		mov	[ebx+0Ch], edx
		mov	[ebx+24h], ecx
		mov	[ebx+20h], ecx
		mov	[ebp-7Ch], eax
		mov	edx, [esi]
		add	edx, [esi+4]
		sub	edx, [esi+284h]
		mov	[ebp-80h], edx
		mov	eax, [ebp-7Ch]
		mov	edx, [eax]
		cmp	edx, [ebp-80h]
		jbe	short loc_4B9199
		lea	ecx, [ebp-80h]
		jmp	short loc_4B919C
; ---------------------------------------------------------------------------

loc_4B9199:				; CODE XREF: .text:004B9192j
		mov	ecx, [ebp-7Ch]

loc_4B919C:				; CODE XREF: .text:004B9197j
		mov	eax, [ecx]
		mov	[ebx+18FCh], eax
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4B9202
		cmp	dword ptr [esi+14h], 0
		jz	short loc_4B9202
		mov	edx, [esi]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-64h], eax
		cmp	dword ptr [ebp-64h], 0
		jz	short loc_4B91E2
		mov	eax, [ebp-64h]
		mov	edx, [eax]
		cmp	edx, [esi]
		jnz	short loc_4B91E2
		mov	ecx, [ebp-64h]
		mov	eax, [ecx+4]
		cmp	eax, [esi+4]
		jb	short loc_4B91E2
		mov	edx, [ebp-64h]
		cmp	dword ptr [edx+60h], 0
		jnz	short loc_4B91EC

loc_4B91E2:				; CODE XREF: .text:004B91C3j
					; .text:004B91CCj ...
		xor	ecx, ecx
		mov	[ebx+1908h], ecx
		jmp	short loc_4B9229
; ---------------------------------------------------------------------------

loc_4B91EC:				; CODE XREF: .text:004B91E0j
		mov	eax, [ebp-64h]
		mov	edx, [eax+60h]
		add	edx, [esi+284h]
		sub	edx, [esi]
		mov	[ebx+1908h], edx
		jmp	short loc_4B9229
; ---------------------------------------------------------------------------

loc_4B9202:				; CODE XREF: .text:004B91ABj
					; .text:004B91B1j
		cmp	dword ptr [esi+4A4h], 0
		jz	short loc_4B9221
		mov	ecx, [esi+4A4h]
		add	ecx, [esi+284h]
		sub	ecx, [esi]
		mov	[ebx+1908h], ecx
		jmp	short loc_4B9229
; ---------------------------------------------------------------------------

loc_4B9221:				; CODE XREF: .text:004B9209j
		xor	eax, eax
		mov	[ebx+1908h], eax

loc_4B9229:				; CODE XREF: .text:004B91EAj
					; .text:004B9200j ...
		mov	edi, [ebx+0Ch]
		mov	eax, [ebp+18h]
		imul	edi, [ebx+8]
		imul	edi, [eax+4]
		mov	edx, [esi]
		add	edx, [esi+4]
		sub	edx, [esi+284h]
		cmp	edi, edx
		jbe	short loc_4B9251
		mov	edi, [esi]
		add	edi, [esi+4]
		sub	edi, [esi+284h]

loc_4B9251:				; CODE XREF: .text:004B9244j
		test	byte ptr [esi+0Bh], 8
		jz	short loc_4B9292
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4B9292
		push	edi		; n
		mov	eax, [ebx+1908h]
		push	eax		; src
		lea	edx, [ebx+59E0Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	[ebx+1900h], edi
		xor	ecx, ecx
		mov	[ebx+1908h], ecx
		xor	eax, eax
		mov	[ebx+1904h], eax
		jmp	loc_4B93CB
; ---------------------------------------------------------------------------

loc_4B9292:				; CODE XREF: .text:004B9255j
					; .text:004B925Ej
		cmp	dword ptr [esi+298h], 0
		jz	short loc_4B92CD
		push	edi		; n
		mov	edx, [esi+298h]
		add	edx, [esi+284h]
		sub	edx, [esi]
		push	edx		; src
		lea	ecx, [ebx+59E0Ch]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	[ebx+1900h], edi
		xor	eax, eax
		mov	[ebx+1904h], eax
		jmp	loc_4B93CB
; ---------------------------------------------------------------------------

loc_4B92CD:				; CODE XREF: .text:004B9299j
		mov	edx, [esi+284h]
		cmp	edx, userspacelimit
		jnb	short loc_4B92FF
		push	5		; mode
		push	edi		; size
		mov	ecx, [esi+284h]
		push	ecx		; _addr
		lea	eax, [ebx+59E0Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebx+1900h], eax
		jmp	loc_4B93A1
; ---------------------------------------------------------------------------

loc_4B92FF:				; CODE XREF: .text:004B92D9j
		xor	edx, edx
		mov	[ebx+1900h], edx
		mov	ecx, [esi+284h]
		mov	[ebp-30h], ecx
		jmp	loc_4B9395
; ---------------------------------------------------------------------------

loc_4B9315:				; CODE XREF: .text:004B939Bj
		mov	eax, [ebp-30h]
		and	eax, 0FFFh
		mov	edx, 1000h
		sub	edx, eax
		mov	[ebp-3Ch], edx
		mov	ecx, [ebx+1900h]
		add	ecx, [ebp-3Ch]
		cmp	edi, ecx
		jnb	short loc_4B933F
		mov	eax, edi
		sub	eax, [ebx+1900h]
		mov	[ebp-3Ch], eax

loc_4B933F:				; CODE XREF: .text:004B9332j
		push	1		; mode
		mov	edx, [ebp-3Ch]
		push	edx		; size
		mov	ecx, [ebp-30h]
		push	ecx		; _addr
		mov	eax, [ebx+1900h]
		add	eax, ebx
		add	eax, 59E0Ch
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-2Ch], eax
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebp-3Ch]
		jz	short loc_4B9386
		mov	ecx, [ebp-3Ch]
		push	ecx		; n
		push	0		; c
		mov	eax, [ebx+1900h]
		add	eax, ebx
		add	eax, 59E0Ch
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4B9386:				; CODE XREF: .text:004B9368j
		mov	edx, [ebp-3Ch]
		add	[ebx+1900h], edx
		mov	ecx, [ebp-3Ch]
		add	[ebp-30h], ecx

loc_4B9395:				; CODE XREF: .text:004B9310j
		cmp	edi, [ebx+1900h]
		ja	loc_4B9315

loc_4B93A1:				; CODE XREF: .text:004B92FAj
		cmp	dword_5BE6A4, 0
		jz	short loc_4B93C3
		mov	eax, [esi+284h]
		push	eax		; _addr
		push	0		; pmod
		call	Findfixup
		add	esp, 8
		mov	[ebx+1904h], eax
		jmp	short loc_4B93CB
; ---------------------------------------------------------------------------

loc_4B93C3:				; CODE XREF: .text:004B93A8j
		xor	edx, edx
		mov	[ebx+1904h], edx

loc_4B93CB:				; CODE XREF: .text:004B928Dj
					; .text:004B92C8j ...
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4B93E9
		mov	ecx, [esi+284h]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebx+190Ch], eax
		jmp	short loc_4B93F1
; ---------------------------------------------------------------------------

loc_4B93E9:				; CODE XREF: .text:004B93D2j
		xor	eax, eax
		mov	[ebx+190Ch], eax

loc_4B93F1:				; CODE XREF: .text:004B93E7j
		cmp	dword ptr [esi+14h], 0
		jnz	short loc_4B9401
		xor	edx, edx
		mov	[ebx+1914h], edx
		jmp	short loc_4B9411
; ---------------------------------------------------------------------------

loc_4B9401:				; CODE XREF: .text:004B93F5j
		mov	ecx, [esi+14h]
		push	ecx		; threadid
		call	Threadregisters
		pop	ecx
		mov	[ebx+1914h], eax

loc_4B9411:				; CODE XREF: .text:004B93FFj
		mov	dword ptr [ebx+2128h], 1
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+2118h], eax
		xor	ecx, ecx
		mov	[ebx+2120h], edx
		mov	[ebx+2124h], ecx
		cmp	dword_5BE6AC, 0
		jz	loc_4B971B
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4B971B
		cmp	dword ptr [ebx+4], 0C0000h
		jnz	loc_4B971B
		push	200h		; nbuf
		lea	eax, [ebx+1918h]
		push	eax		; buf
		mov	edx, [esi+288h]
		push	edx		; dest
		call	Findlocaljumpsto
		add	esp, 0Ch
		mov	[ebx+2118h], eax
		cmp	dword ptr [ebx+2118h], 0
		jnz	loc_4B971B
		push	5		; mode
		push	10h		; size
		mov	ecx, [esi+288h]
		push	ecx		; _addr
		lea	eax, [ebp-630h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebx+1914h], 0
		jz	short loc_4B94E0
		cmp	dword_5BE6F4, 0
		jnz	short loc_4B94C5
		mov	edx, [ebx+1914h]
		mov	ecx, [edx+8]
		cmp	ecx, [esi+288h]
		jnz	short loc_4B94E0

loc_4B94C5:				; CODE XREF: .text:004B94B2j
		cmp	run.status, 12h
		jz	short loc_4B94D7
		cmp	run.status, 13h
		jnz	short loc_4B94E0

loc_4B94D7:				; CODE XREF: .text:004B94CCj
		mov	dword ptr [ebp-28h], 1
		jmp	short loc_4B94E5
; ---------------------------------------------------------------------------

loc_4B94E0:				; CODE XREF: .text:004B94A9j
					; .text:004B94C3j ...
		xor	eax, eax
		mov	[ebp-28h], eax

loc_4B94E5:				; CODE XREF: .text:004B94DEj
		cmp	dword ptr [ebp-54h], 0
		jbe	short loc_4B9536
		push	0		; predict
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4B94FB
		mov	edx, [ebx+1914h]
		jmp	short loc_4B94FD
; ---------------------------------------------------------------------------

loc_4B94FB:				; CODE XREF: .text:004B94F1j
		xor	edx, edx

loc_4B94FD:				; CODE XREF: .text:004B94F9j
		push	edx		; reg
		push	10h		; mode
		lea	eax, [ebp-2350h]
		push	eax		; da
		push	0		; psize
		mov	ecx, [esi+288h]
		push	ecx		; _addr
		call	Finddecode
		add	esp, 8
		push	eax		; dec
		mov	eax, [esi+288h]
		push	eax		; ip
		mov	edx, [ebp-54h]
		push	edx		; cmdsize
		lea	ecx, [ebp-630h]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-54h], eax

loc_4B9536:				; CODE XREF: .text:004B94E9j
		cmp	dword ptr [ebp-54h], 0
		jz	loc_4B971B
		mov	eax, [ebp-233Ch]
		and	eax, 1Fh
		cmp	eax, 6
		jz	short loc_4B9598
		mov	edx, [ebp-233Ch]
		and	edx, 1Fh
		cmp	edx, 7
		jz	short loc_4B9598
		mov	ecx, [ebp-233Ch]
		and	ecx, 1Fh
		cmp	ecx, 8
		jz	short loc_4B9598
		mov	eax, [ebp-233Ch]
		and	eax, 1Fh
		cmp	eax, 9
		jz	short loc_4B9598
		mov	edx, [ebp-233Ch]
		and	edx, 1Fh
		cmp	edx, 0Fh
		jz	short loc_4B9598
		mov	ecx, [ebp-233Ch]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jnz	loc_4B971B

loc_4B9598:				; CODE XREF: .text:004B954Cj
					; .text:004B955Aj ...
		cmp	dword ptr [ebp-2310h], 0
		jz	short loc_4B95EF
		mov	eax, [ebp-233Ch]
		and	eax, 1Fh
		cmp	eax, 0Fh
		jz	short loc_4B95EF
		mov	edx, [ebp-233Ch]
		and	edx, 1Fh
		cmp	edx, 8
		jz	short loc_4B95CB
		mov	ecx, [ebp-233Ch]
		and	ecx, 1Fh
		cmp	ecx, 9
		jnz	short loc_4B95DE

loc_4B95CB:				; CODE XREF: .text:004B95BBj
		cmp	dword ptr [ebp-2314h], 1
		jz	short loc_4B95DE
		mov	dword ptr [ebx+2128h], 2

loc_4B95DE:				; CODE XREF: .text:004B95C9j
					; .text:004B95D2j
		mov	eax, [ebp-2310h]
		mov	[ebx+2124h], eax
		jmp	loc_4B971B
; ---------------------------------------------------------------------------

loc_4B95EF:				; CODE XREF: .text:004B959Fj
					; .text:004B95ADj
		push	0		; psize
		mov	edx, [esi+288h]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebp-60h], eax
		test	eax, eax
		jz	loc_4B971B
		mov	edx, [ebp-60h]
		test	byte ptr [edx],	1Fh
		jz	loc_4B971B
		mov	ecx, [esi+288h]
		push	ecx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebx+2120h], eax
		cmp	dword ptr [ebx+2120h], 0
		jz	loc_4B971B
		mov	eax, [ebx+2120h]
		xor	edx, edx
		mov	dl, [eax+8]
		and	edx, 0Fh
		cmp	edx, 2
		jz	short loc_4B965D
		mov	ecx, [ebx+2120h]
		xor	eax, eax
		mov	al, [ecx+8]
		and	eax, 0Fh
		cmp	eax, 3
		jnz	short loc_4B9667

loc_4B965D:				; CODE XREF: .text:004B9648j
		mov	dword ptr [ebx+2128h], 2

loc_4B9667:				; CODE XREF: .text:004B965Bj
		mov	dword ptr [ebx+212Ch], 0FFFFFFFFh
		xor	edx, edx
		mov	[ebx+2130h], edx
		mov	ecx, [ebx+2120h]
		mov	[ebp-6Ch], ecx
		jmp	loc_4B970A
; ---------------------------------------------------------------------------

loc_4B9687:				; CODE XREF: .text:004B9715j
		mov	eax, [ebx+2120h]
		mov	al, [eax+8]
		cmp	al, 1
		jb	short loc_4B9698
		cmp	al, 4
		jbe	short loc_4B96B0

loc_4B9698:				; CODE XREF: .text:004B9692j
		mov	edx, [ebx+2120h]
		cmp	byte ptr [edx+8], 8
		jb	short loc_4B9706
		mov	ecx, [ebx+2120h]
		cmp	byte ptr [ecx+8], 0Ah
		ja	short loc_4B9706

loc_4B96B0:				; CODE XREF: .text:004B9696j
		mov	eax, [ebp-6Ch]
		mov	edx, [eax+4]
		cmp	edx, [esi]
		jb	short loc_4B9706
		mov	ecx, [ebp-6Ch]
		mov	edx, [esi]
		add	edx, [esi+4]
		mov	eax, [ecx+4]
		cmp	eax, edx
		jnb	short loc_4B971B
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+4]
		cmp	eax, [esi+284h]
		jnb	short loc_4B96E0
		mov	edx, [ebp-6Ch]
		mov	[ebx+2120h], edx

loc_4B96E0:				; CODE XREF: .text:004B96D5j
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx+4]
		cmp	eax, [ebx+212Ch]
		jnb	short loc_4B96FA
		mov	edx, [ebp-6Ch]
		mov	ecx, [edx+4]
		mov	[ebx+212Ch], ecx

loc_4B96FA:				; CODE XREF: .text:004B96ECj
		mov	eax, [ebp-6Ch]
		mov	edx, [eax+4]
		mov	[ebx+2130h], edx

loc_4B9706:				; CODE XREF: .text:004B96A2j
					; .text:004B96AEj ...
		add	dword ptr [ebp-6Ch], 9

loc_4B970A:				; CODE XREF: .text:004B9682j
		mov	ecx, [ebp-6Ch]
		mov	eax, [ecx]
		cmp	eax, [esi+288h]
		jz	loc_4B9687

loc_4B971B:				; CODE XREF: .text:004B943Aj
					; .text:004B9444j ...
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx+211Ch], edx
		mov	[ebx+1910h], ecx
		cmp	dword ptr [esi+4E8h], 0
		jz	short loc_4B974A
		mov	eax, [esi+4E8h]
		add	eax, [esi+284h]
		sub	eax, [esi]
		mov	[ebx+1910h], eax
		jmp	short loc_4B97A8
; ---------------------------------------------------------------------------

loc_4B974A:				; CODE XREF: .text:004B9732j
		cmp	dword ptr [ebx+4], 0C0000h
		jz	short loc_4B975C
		cmp	dword ptr [ebx+4], 0D0000h
		jnz	short loc_4B97A8

loc_4B975C:				; CODE XREF: .text:004B9751j
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4B97A8
		test	byte ptr [esi+0Bh], 8
		jnz	short loc_4B97A8
		mov	edx, [esi+8]
		and	edx, 0C000000h
		cmp	edx, 4000000h
		jnz	short loc_4B97A8
		lea	ecx, [ebp-48h]
		push	ecx		; psize
		mov	eax, [esi+284h]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebx+1910h], eax
		mov	edx, [ebp-48h]
		cmp	edx, [ebx+1900h]
		jnb	short loc_4B97A8
		xor	ecx, ecx
		mov	[ebx+1910h], ecx

loc_4B97A8:				; CODE XREF: .text:004B9748j
					; .text:004B975Aj ...
		mov	dword ptr [ebx+2178h], 0FFFFFFFFh
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+2580h], eax
		xor	ecx, ecx
		mov	[ebx+2584h], edx
		xor	eax, eax
		mov	[ebx+8CA8h], ecx
		mov	[ebx+8CACh], eax
		cmp	dword ptr [ebx+4], 90000h
		jz	short loc_4B97FA
		cmp	dword ptr [ebx+4], 0A0000h
		jz	short loc_4B97FA
		cmp	dword ptr [ebx+4], 0B0000h
		jz	short loc_4B97FA
		xor	edx, edx
		mov	[ebx+2134h], edx
		jmp	loc_4B9C67
; ---------------------------------------------------------------------------

loc_4B97FA:				; CODE XREF: .text:004B97D9j
					; .text:004B97E2j ...
		test	byte ptr [esi+0Eh], 4
		jz	short loc_4B9818
		cmp	dword ptr [ebx+1914h], 0
		jz	short loc_4B9818
		mov	ecx, [ebx+1914h]
		mov	eax, [ecx+1Ch]
		mov	[esi+704h], eax

loc_4B9818:				; CODE XREF: .text:004B97FEj
					; .text:004B9807j
		mov	edx, [esi+284h]
		cmp	edx, [esi+704h]
		jnb	short loc_4B9847
		mov	ecx, [esi]
		add	ecx, [esi+4]
		cmp	ecx, [esi+704h]
		jb	short loc_4B9847
		mov	eax, [esi+704h]
		sub	eax, [esi+284h]
		mov	[ebx+2134h], eax
		jmp	short loc_4B984F
; ---------------------------------------------------------------------------

loc_4B9847:				; CODE XREF: .text:004B9824j
					; .text:004B9831j
		xor	edx, edx
		mov	[ebx+2134h], edx

loc_4B984F:				; CODE XREF: .text:004B9845j
		cmp	dword ptr [esi+14h], 0
		jz	loc_4B9C67
		mov	ecx, [esi+14h]
		push	ecx		; threadid
		call	Findthread
		pop	ecx
		mov	[ebp-70h], eax
		cmp	dword ptr [ebp-70h], 0
		jz	short loc_4B98DA
		mov	eax, [ebp-70h]
		cmp	dword ptr [eax+54h], 0
		jz	short loc_4B98DA
		mov	edx, [ebp-70h]
		mov	ecx, [edx+54h]
		mov	[ebp-2Ch], ecx
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_4B98C2
; ---------------------------------------------------------------------------

loc_4B9885:				; CODE XREF: .text:004B98CFj
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-2Ch]
		push	edx		; _addr
		lea	ecx, [ebp-2Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_4B98A7
		mov	dword ptr [ebp-2Ch], 0FFFFFFFFh
		jmp	short loc_4B98D1
; ---------------------------------------------------------------------------

loc_4B98A7:				; CODE XREF: .text:004B989Cj
		mov	eax, [esi+284h]
		cmp	eax, [ebp-2Ch]
		ja	short loc_4B98BF
		mov	edx, [esi+284h]
		add	edx, edi
		cmp	edx, [ebp-2Ch]
		ja	short loc_4B98D1

loc_4B98BF:				; CODE XREF: .text:004B98B0j
		inc	dword ptr [ebp-4]

loc_4B98C2:				; CODE XREF: .text:004B9883j
		cmp	dword ptr [ebp-4], 400h
		jge	short loc_4B98D1
		cmp	dword ptr [ebp-2Ch], 0FFFFFFFFh
		jnz	short loc_4B9885

loc_4B98D1:				; CODE XREF: .text:004B98A5j
					; .text:004B98BDj ...
		mov	ecx, [ebp-2Ch]
		mov	[ebx+2178h], ecx

loc_4B98DA:				; CODE XREF: .text:004B986Aj
					; .text:004B9873j
		cmp	dword ptr [ebx+1914h], 0
		jz	loc_4B9C67
		test	byte ptr [esi+0Eh], 7
		jz	loc_4B9C67
		mov	eax, [ebx+1914h]
		mov	edx, [eax+8]
		mov	[ebx+217Ch], edx
		mov	ecx, [ebx+1914h]
		mov	eax, [ecx+1Ch]
		mov	[ebx+2180h], eax
		mov	edx, [ebx+1914h]
		mov	ecx, [edx+20h]
		mov	[ebx+2184h], ecx
		mov	dword ptr [ebx+2188h], 1
		cmp	g_IsUseDbghelp,	0
		jz	short loc_4B9937
		cmp	dword ptr [ebp-70h], 0
		jnz	short loc_4B9949

loc_4B9937:				; CODE XREF: .text:004B992Fj
		xor	eax, eax
		mov	[ebx+218Ch], eax
		xor	edx, edx
		mov	[ebx+245Ch], edx
		jmp	short loc_4B9976
; ---------------------------------------------------------------------------

loc_4B9949:				; CODE XREF: .text:004B9935j
		mov	ecx, [ebp-70h]
		mov	eax, [ecx+50h]
		mov	ecx, 0B3h
		mov	[ebx+218Ch], eax
		mov	edx, [ebp-70h]
		push	esi
		push	edi
		lea	edi, [ebx+2190h]
		lea	esi, [edx+5Ch]
		rep movsd
		pop	edi
		pop	esi
		mov	dword ptr [ebx+245Ch], 1

loc_4B9976:				; CODE XREF: .text:004B9947j
		push	5		; mode
		push	10h		; size
		mov	eax, [ebx+1914h]
		mov	edx, [eax+8]
		push	edx		; _addr
		lea	ecx, [ebp-630h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jbe	short loc_4B99D0
		push	0		; predict
		lea	edx, [ebp-2350h]
		mov	eax, [ebx+1914h]
		push	eax		; reg
		push	10h		; mode
		push	edx		; da
		push	0		; dec
		mov	ecx, [ebx+1914h]
		mov	eax, [ecx+8]
		lea	ecx, [ebp-630h]
		push	eax		; ip
		mov	edx, [ebp-54h]
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-54h], eax

loc_4B99D0:				; CODE XREF: .text:004B999Aj
		cmp	dword ptr [ebp-54h], 0
		jbe	loc_4B9AEF
		mov	eax, [ebp-233Ch]
		and	eax, 1Fh
		cmp	eax, 0Ch
		jnz	loc_4B9AEF
		cmp	dword ptr [ebp-2310h], 0
		jz	loc_4B9AEF
		xor	edx, edx
		mov	[ebp-4], edx

loc_4B99FE:				; CODE XREF: .text:004B9AA3j
		push	1		; mode
		push	4		; size
		mov	ecx, [ebx+1914h]
		mov	edx, [ebp-4]
		shl	edx, 2
		mov	eax, [ecx+1Ch]
		add	eax, edx
		push	eax		; _addr
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, ebx
		add	ecx, 258Ch
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_4B9A6A
		mov	edx, 4
		cmp	dword_5BDD48, 0
		jnz	short loc_4B9A4E
		add	edx, 0FFFFFFFCh

loc_4B9A4E:				; CODE XREF: .text:004B9A49j
		or	edx, 1
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		mov	[ebx+ecx*4+2588h], edx
		jmp	short loc_4B9A83
; ---------------------------------------------------------------------------

loc_4B9A6A:				; CODE XREF: .text:004B9A3Bj
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		xor	eax, eax
		mov	[ebx+edx*4+2588h], eax

loc_4B9A83:				; CODE XREF: .text:004B9A68j
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		xor	eax, eax
		mov	[ebx+edx*4+2590h], eax
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 18h
		jl	loc_4B99FE
		push	1		; follow
		push	0		; nexp
		push	0		; _name
		push	0		; rettype
		lea	edx, [ebx+2588h]
		push	edx		; adec
		push	0		; pd
		mov	ecx, [ebp-2310h]
		push	ecx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	[ebx+8CA8h], eax
		cmp	dword ptr [ebx+8CA8h], 0
		jle	short loc_4B9AE7
		mov	eax, [ebx+1914h]
		mov	edx, [eax+1Ch]
		mov	[ebx+2584h], edx

loc_4B9AE7:				; CODE XREF: .text:004B9AD6j
		xor	ecx, ecx
		mov	[ebx+8CACh], ecx

loc_4B9AEF:				; CODE XREF: .text:004B99D4j
					; .text:004B99E6j ...
		mov	eax, [esi+4]
		push	eax		; size
		mov	edx, [esi]
		push	edx		; base
		lea	ecx, [ebx+217Ch]
		push	ecx		; pf
		call	Findretaddrdata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B9B1B
		xor	eax, eax
		mov	[ebx+2180h], eax
		xor	edx, edx
		mov	[ebx+2470h], edx
		jmp	short loc_4B9B64
; ---------------------------------------------------------------------------

loc_4B9B1B:				; CODE XREF: .text:004B9B07j
		mov	ecx, [ebx+2470h]
		cmp	ecx, [esi+284h]
		jnb	short loc_4B9B64
		mov	eax, [ebx+2474h]
		mov	[ebx+2580h], eax
		mov	edx, [ebx+2468h]
		mov	[ebp-58h], edx
		mov	ecx, [ebx+2464h]
		mov	[ebx+217Ch], ecx
		mov	eax, [ebx+2468h]
		mov	[ebx+2180h], eax
		mov	edx, [ebx+246Ch]
		mov	[ebx+2184h], edx
		jmp	short loc_4B9AEF
; ---------------------------------------------------------------------------

loc_4B9B64:				; CODE XREF: .text:004B9B19j
					; .text:004B9B27j
		cmp	dword ptr [ebx+2580h], 0
		jz	loc_4B9C67
		cmp	dword ptr [ebp-58h], 0
		jz	loc_4B9C67
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_4B9B80:				; CODE XREF: .text:004B9C1Dj
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-4]
		shl	eax, 2
		add	eax, [ebp-58h]
		push	eax		; _addr
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, ebx
		add	edx, 258Ch
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_4B9BE4
		mov	eax, 4
		cmp	dword_5BDD48, 0
		jnz	short loc_4B9BC8
		add	eax, 0FFFFFFFCh

loc_4B9BC8:				; CODE XREF: .text:004B9BC3j
		or	eax, 1
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	[ebx+edx*4+2588h], eax
		jmp	short loc_4B9BFD
; ---------------------------------------------------------------------------

loc_4B9BE4:				; CODE XREF: .text:004B9BB5j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		xor	ecx, ecx
		mov	[ebx+eax*4+2588h], ecx

loc_4B9BFD:				; CODE XREF: .text:004B9BE2j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		xor	ecx, ecx
		mov	[ebx+eax*4+2590h], ecx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 18h
		jl	loc_4B9B80
		push	1		; follow
		push	0		; nexp
		push	0		; _name
		push	0		; rettype
		lea	eax, [ebx+2588h]
		push	eax		; adec
		push	0		; pd
		mov	edx, [ebx+2580h]
		push	edx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	[ebx+8CA8h], eax
		cmp	dword ptr [ebx+8CA8h], 0
		jle	short loc_4B9C67
		mov	ecx, [ebp-58h]
		mov	[ebx+2584h], ecx
		mov	eax, [ebp-58h]
		sub	eax, 4
		mov	[ebx+8CACh], eax

loc_4B9C67:				; CODE XREF: .text:004B97F5j
					; .text:004B9853j ...
		cmp	dword ptr [esi+298h], 0
		jz	short loc_4B9C8C
		or	edx, 0FFFFFFFFh
		xor	eax, eax
		mov	[ebx+213Ch], edx
		mov	[ebx+2138h], edx
		mov	[ebx+2144h], eax
		jmp	loc_4B9DAC
; ---------------------------------------------------------------------------

loc_4B9C8C:				; CODE XREF: .text:004B9C6Ej
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+213Ch], ecx
		mov	[ebx+2138h], ecx
		mov	[ebx+2144h], eax
		xor	edx, edx
		mov	[ebp-4], edx

loc_4B9CA7:				; CODE XREF: .text:004B9DA6j
		push	0		; subaddr
		mov	eax, [ebp-4]
		push	eax		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4B9D9F
		mov	edx, [eax+8]
		and	edx, 0E00000h
		cmp	edx, 800000h
		jnz	short loc_4B9CDC
		mov	dword ptr [ebp-3Ch], 1
		jmp	short loc_4B9CE2
; ---------------------------------------------------------------------------

loc_4B9CDC:				; CODE XREF: .text:004B9CD1j
		mov	ecx, [eax+10h]
		mov	[ebp-3Ch], ecx

loc_4B9CE2:				; CODE XREF: .text:004B9CDAj
		mov	edx, [eax+0Ch]
		add	edx, [ebp-3Ch]
		cmp	edx, [esi+284h]
		jb	loc_4B9D9F
		mov	ecx, [eax+0Ch]
		mov	edx, [esi+284h]
		add	edx, [ebx+1900h]
		cmp	ecx, edx
		jnb	loc_4B9D9F
		mov	ecx, [eax+0Ch]
		cmp	ecx, [esi+284h]
		jnb	short loc_4B9D27
		mov	edx, [ebx+2144h]
		xor	ecx, ecx
		mov	[ebx+edx*4+2148h], ecx
		jmp	short loc_4B9D3D
; ---------------------------------------------------------------------------

loc_4B9D27:				; CODE XREF: .text:004B9D14j
		mov	edx, [eax+0Ch]
		mov	ecx, [ebx+2144h]
		sub	edx, [esi+284h]
		mov	[ebx+ecx*4+2148h], edx

loc_4B9D3D:				; CODE XREF: .text:004B9D25j
		mov	edx, [eax+0Ch]
		mov	ecx, [ebx+2144h]
		sub	edx, [esi+284h]
		add	edx, [ebp-3Ch]
		mov	[ebx+ecx*4+2158h], edx
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4B9D6F
		mov	eax, [ebx+2144h]
		mov	dword ptr [ebx+eax*4+2168h], 6
		jmp	short loc_4B9D99
; ---------------------------------------------------------------------------

loc_4B9D6F:				; CODE XREF: .text:004B9D5Aj
		test	byte ptr [eax+0Ah], 4
		jz	short loc_4B9D88
		mov	eax, [ebx+2144h]
		mov	dword ptr [ebx+eax*4+2168h], 5
		jmp	short loc_4B9D99
; ---------------------------------------------------------------------------

loc_4B9D88:				; CODE XREF: .text:004B9D73j
		mov	edx, [ebx+2144h]
		mov	dword ptr [ebx+edx*4+2168h], 4

loc_4B9D99:				; CODE XREF: .text:004B9D6Dj
					; .text:004B9D86j
		inc	dword ptr [ebx+2144h]

loc_4B9D9F:				; CODE XREF: .text:004B9CBCj
					; .text:004B9CEEj ...
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 4
		jl	loc_4B9CA7

loc_4B9DAC:				; CODE XREF: .text:004B9C87j
		xor	ecx, ecx
		mov	[ebx+59A74h], ecx
		cmp	dword ptr [ebx+4], 0D0000h
		jnz	short loc_4B9DDD
		cmp	word ptr [esi+4A8h], 0
		jz	short loc_4B9DDD
		lea	eax, [ebx+59A74h]
		push	eax		; size
		lea	edx, [esi+4A8h]
		push	edx		; _name
		call	Getstructureitemcount
		add	esp, 8

loc_4B9DDD:				; CODE XREF: .text:004B9DBBj
					; .text:004B9DC5j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+59A78h], ecx
		mov	[ebx+1Ch], eax
		mov	[ebx+18h], eax
		mov	[ebx+14h], eax
		mov	edx, [ebx+4]
		cmp	edx, 80000h
		jg	short loc_4B9E61
		jz	loc_4B9EEC
		cmp	edx, 40000h
		jg	short loc_4B9E38
		jz	loc_4B9EE3
		sub	edx, 10000h
		jz	loc_4B9EB1
		sub	edx, 10000h
		jz	loc_4B9EC4
		sub	edx, 10000h
		jz	loc_4B9ED7
		jmp	loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9E38:				; CODE XREF: .text:004B9E07j
		sub	edx, 50000h
		jz	loc_4B9EEC
		sub	edx, 10000h
		jz	loc_4B9EEC
		sub	edx, 10000h
		jz	loc_4B9EEC
		jmp	loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9E61:				; CODE XREF: .text:004B9DF9j
		cmp	edx, 0C0000h
		jg	short loc_4B9E94
		jz	loc_4B9F33
		sub	edx, 90000h
		jz	short loc_4B9EF5
		sub	edx, 10000h
		jz	loc_4B9F05
		sub	edx, 10000h
		jz	loc_4B9F1C
		jmp	loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9E94:				; CODE XREF: .text:004B9E67j
		sub	edx, 0D0000h
		jz	loc_4B9F33
		sub	edx, 10000h	; int
		jz	loc_4B9F5D
		jmp	loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9EB1:				; CODE XREF: .text:004B9E15j
		mov	dword ptr [ebx+14h], 1
		mov	dword ptr [ebx+18h], 2
		jmp	loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9EC4:				; CODE XREF: .text:004B9E21j
		mov	dword ptr [ebx+14h], 1
		mov	dword ptr [ebx+18h], 3
		jmp	loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9ED7:				; CODE XREF: .text:004B9E2Dj
		mov	dword ptr [ebx+14h], 2
		jmp	loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9EE3:				; CODE XREF: .text:004B9E09j
		mov	dword ptr [ebx+14h], 3
		jmp	short loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9EEC:				; CODE XREF: .text:004B9DFBj
					; .text:004B9E3Ej ...
		mov	dword ptr [ebx+14h], 4
		jmp	short loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9EF5:				; CODE XREF: .text:004B9E75j
		mov	dword ptr [ebx+14h], 5
		mov	dword ptr [ebx+18h], 6
		jmp	short loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9F05:				; CODE XREF: .text:004B9E7Dj
		mov	dword ptr [ebx+14h], 5
		mov	dword ptr [ebx+18h], 2
		mov	dword ptr [ebx+1Ch], 6
		jmp	short loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9F1C:				; CODE XREF: .text:004B9E89j
		mov	dword ptr [ebx+14h], 5
		mov	dword ptr [ebx+18h], 3
		mov	dword ptr [ebx+1Ch], 6
		jmp	short loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9F33:				; CODE XREF: .text:004B9E69j
					; .text:004B9E9Aj
		mov	dword ptr [ebx+14h], 8
		mov	dword ptr [ebx+18h], 9
		cmp	word ptr [esi+4A8h], 0
		jnz	short loc_4B9F54
		mov	dword ptr [ebx+1Ch], 0Ah
		jmp	short loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9F54:				; CODE XREF: .text:004B9F49j
		mov	dword ptr [ebx+1Ch], 0Bh
		jmp	short loc_4B9F6B
; ---------------------------------------------------------------------------

loc_4B9F5D:				; CODE XREF: .text:004B9EA6j
		mov	dword ptr [ebx+14h], 0Ch
		mov	dword ptr [ebx+18h], 0Dh

loc_4B9F6B:				; CODE XREF: .text:004B9E33j
					; .text:004B9E5Cj ...
		mov	ecx, [esi+8]
		and	ecx, 7F0000h	; int
		cmp	ecx, (offset loc_4BFFFE+2)
		jnz	short loc_4B9FC4
		push	1		; flags
		mov	eax, [ebx+1900h]
		shl	eax, 2		; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+59A7Ch], eax
		cmp	dword ptr [ebx+59A7Ch],	0
		jz	short loc_4B9FCC
		mov	edx, [ebx+59A7Ch]
		push	edx		; s
		mov	ecx, [esi+284h]
		add	ecx, [ebx+1900h]
		push	ecx		; int
		mov	eax, [esi+284h]
		push	eax		; int
		call	loc_4C4CB4
		add	esp, 0Ch
		jmp	short loc_4B9FCC
; ---------------------------------------------------------------------------

loc_4B9FC4:				; CODE XREF: .text:004B9F7Aj
		xor	edx, edx
		mov	[ebx+59A7Ch], edx

loc_4B9FCC:				; CODE XREF: .text:004B9F9Dj
					; .text:004B9FC2j
		xor	ecx, ecx
		mov	[ebx+59E08h], ecx
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_4BA04C
; ---------------------------------------------------------------------------

loc_4B9FDB:				; CODE XREF: .text:004BA055j
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-74h], eax
		cmp	dword ptr [ebp-74h], 0
		jz	short loc_4BA049
		mov	ecx, [ebp-74h]
		cmp	dword ptr [ecx+2B8h], 0
		jz	short loc_4BA049
		push	0FFFFFFFDh
		mov	eax, [ebx]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		push	edi
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		push	esi
		mov	edx, [ebp-74h]
		call	dword ptr [edx+2B8h]
		add	esp, 1Ch
		test	eax, eax
		jz	short loc_4BA049
		mov	ecx, [ebp-74h]
		mov	edx, [ebx+59E08h]
		mov	eax, [ecx+2B8h]
		inc	dword ptr [ebx+59E08h]
		mov	[ebx+edx*4+59D88h], eax
		cmp	dword ptr [ebx+59E08h],	20h
		jge	short loc_4BA057

loc_4BA049:				; CODE XREF: .text:004B9FF3j
					; .text:004B9FFFj ...
		inc	dword ptr [ebp-4]

loc_4BA04C:				; CODE XREF: .text:004B9FD9j
		mov	ecx, [ebp-4]
		cmp	ecx, pluginlist.sorted.n
		jl	short loc_4B9FDB

loc_4BA057:				; CODE XREF: .text:004BA047j
		xor	eax, eax
		jmp	loc_4BD1FD
; ---------------------------------------------------------------------------

loc_4BA05E:				; CODE XREF: .text:004B90B4j
					; DATA XREF: .text:off_4B90BBo
		cmp	dword ptr [ebx+59A7Ch],	0 ; jumptable 004B90B4 case -2
		jz	short loc_4BA07C
		mov	edx, [ebx+59A7Ch]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx
		mov	[ebx+59A7Ch], ecx

loc_4BA07C:				; CODE XREF: .text:004BA065j
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_4BA0B2
; ---------------------------------------------------------------------------

loc_4BA083:				; CODE XREF: .text:004BA0BBj
		push	0FFFFFFFEh
		mov	edx, [esi+284h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebx+1900h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		push	esi
		mov	eax, [ebp-4]
		mov	edx, [ebx+eax*4+59D88h]
		call	edx
		add	esp, 1Ch
		inc	dword ptr [ebp-4]

loc_4BA0B2:				; CODE XREF: .text:004BA081j
		mov	ecx, [ebp-4]
		cmp	ecx, [ebx+59E08h]
		jl	short loc_4BA083
		xor	eax, eax
		jmp	loc_4BD1FD
; ---------------------------------------------------------------------------

loc_4BA0C4:				; CODE XREF: .text:004B90B4j
					; DATA XREF: .text:off_4B90BBo
		mov	edx, [ebx+24h]	; jumptable 004B90B4 case -1
		mov	[ebx+20h], edx
		cmp	dword ptr [ebx+4], 0C0000h
		jz	short loc_4BA0E0
		cmp	dword ptr [ebx+4], 0D0000h
		jnz	loc_4BA259

loc_4BA0E0:				; CODE XREF: .text:004BA0D1j
		mov	ecx, [ebx+20h]
		cmp	ecx, [ebx+1900h]
		jnb	loc_4BA259
		mov	dword ptr [ebp-1Ch], 0Dh
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4BA12B
		cmp	dword_5BDD50, 0
		jz	short loc_4BA127
		cmp	dword ptr [ebx+1910h], 0
		jz	short loc_4BA127
		mov	eax, [ebx+1910h]
		mov	edx, [ebx+20h]
		cmp	byte ptr [eax+edx], 0
		jz	short loc_4BA127
		or	dword ptr [ebp-1Ch], 200h

loc_4BA127:				; CODE XREF: .text:004BA106j
					; .text:004BA10Fj ...
		or	dword ptr [ebp-1Ch], 10h

loc_4BA12B:				; CODE XREF: .text:004BA0FDj
		cmp	dword ptr [esi+6FCh], 0
		jz	short loc_4BA174
		cmp	dword ptr [esi+700h], 0
		jl	short loc_4BA174
		cmp	dword ptr [esi+700h], 8
		jge	short loc_4BA174
		or	dword ptr [ebp-1Ch], 2
		cmp	dword_5BE6FC, 0
		jz	short loc_4BA157
		xor	ecx, ecx
		jmp	short loc_4BA15D
; ---------------------------------------------------------------------------

loc_4BA157:				; CODE XREF: .text:004BA151j
		mov	ecx, [esi+254h]

loc_4BA15D:				; CODE XREF: .text:004BA155j
		mov	[ebx+30h], ecx
		mov	eax, [esi+6FCh]
		mov	[ebx+28h], eax
		mov	edx, [esi+700h]
		mov	[ebx+2Ch], edx
		jmp	short loc_4BA196
; ---------------------------------------------------------------------------

loc_4BA174:				; CODE XREF: .text:004BA132j
					; .text:004BA13Bj ...
		cmp	dword ptr [esi+254h], 0
		jle	short loc_4BA196
		or	dword ptr [ebp-1Ch], 2
		mov	eax, [esi+254h]
		xor	edx, edx
		mov	[ebx+30h], eax
		mov	[ebx+28h], edx
		mov	dword ptr [ebx+2Ch], 0FFFFFFFFh

loc_4BA196:				; CODE XREF: .text:004BA172j
					; .text:004BA17Bj
		cmp	dword ptr [ebx+1914h], 0
		jz	short loc_4BA1F3
		mov	ecx, [ebx+1914h]
		mov	edx, [esi+284h]
		add	edx, [ebx+20h]
		mov	eax, [ecx+8]
		cmp	eax, edx
		jz	short loc_4BA1D8
		cmp	dword_5BE6F4, 2
		jz	short loc_4BA1D8
		cmp	dword_5BE6F4, 1
		jnz	short loc_4BA1F3
		mov	ecx, [esi+284h]
		add	ecx, [ebx+20h]
		cmp	ecx, [esi+288h]
		jnz	short loc_4BA1F3

loc_4BA1D8:				; CODE XREF: .text:004BA1B3j
					; .text:004BA1BCj
		cmp	run.status, 12h
		jz	short loc_4BA1EA
		cmp	run.status, 13h
		jnz	short loc_4BA1F3

loc_4BA1EA:				; CODE XREF: .text:004BA1DFj
		mov	dword ptr [ebp-28h], 1
		jmp	short loc_4BA1F8
; ---------------------------------------------------------------------------

loc_4BA1F3:				; CODE XREF: .text:004BA19Dj
					; .text:004BA1C5j ...
		xor	eax, eax
		mov	[ebp-28h], eax

loc_4BA1F8:				; CODE XREF: .text:004BA1F1j
		push	0		; predict
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4BA208
		mov	edx, [ebx+1914h]
		jmp	short loc_4BA20A
; ---------------------------------------------------------------------------

loc_4BA208:				; CODE XREF: .text:004BA1FEj
		xor	edx, edx

loc_4BA20A:				; CODE XREF: .text:004BA206j
		push	edx		; reg
		lea	ecx, [ebx+28h]
		mov	eax, [ebp-1Ch]
		push	eax		; mode
		push	ecx		; da
		cmp	dword ptr [ebx+1910h], 0
		jnz	short loc_4BA220
		xor	eax, eax
		jmp	short loc_4BA229
; ---------------------------------------------------------------------------

loc_4BA220:				; CODE XREF: .text:004BA21Aj
		mov	eax, [ebx+1910h]
		add	eax, [ebx+20h]

loc_4BA229:				; CODE XREF: .text:004BA21Ej
		push	eax		; dec
		mov	edx, [esi+284h]
		add	edx, [ebx+20h]
		push	edx		; ip
		mov	ecx, [ebx+1900h]
		sub	ecx, [ebx+20h]
		push	ecx		; cmdsize
		mov	eax, [ebx+20h]
		add	eax, ebx
		add	eax, 59E0Ch
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		add	eax, [ebx+20h]
		mov	[ebx+24h], eax
		jmp	short loc_4BA2C6
; ---------------------------------------------------------------------------

loc_4BA259:				; CODE XREF: .text:004BA0DAj
					; .text:004BA0E9j
		cmp	dword ptr [ebx+4], 0E0000h
		jnz	short loc_4BA2BC
		mov	edx, [ebx+20h]
		cmp	edx, [ebx+1900h]
		jnb	short loc_4BA2BC
		lea	ecx, [ebx+59B80h]
		push	ecx		; nBytes
		lea	eax, [ebx+59B84h]
		push	eax		; a6
		lea	edx, [ebx+59A80h]
		push	edx		; sel1
		mov	ecx, [ebx+8]
		push	ecx		; cb
		mov	eax, [ebx+1900h]
		sub	eax, [ebx+20h]
		push	eax		; nb
		mov	edx, [ebx+20h]
		add	edx, ebx
		add	edx, 59E0Ch
		push	edx		; sel0
		mov	ecx, mbcscodepage
		push	ecx		; CodePage
		call	Getmbstringinfo
		add	esp, 1Ch
		mov	[ebx+59D84h], eax
		mov	eax, [ebx+59B80h]
		add	[ebx+24h], eax
		jmp	short loc_4BA2C6
; ---------------------------------------------------------------------------

loc_4BA2BC:				; CODE XREF: .text:004BA260j
					; .text:004BA26Bj
		mov	edx, [ebx+8]
		imul	edx, [ebx+0Ch]
		add	[ebx+24h], edx

loc_4BA2C6:				; CODE XREF: .text:004BA257j
					; .text:004BA2BAj
		mov	ecx, [esi+284h]
		mov	eax, [ebp+18h]
		add	ecx, [ebx+24h]
		mov	[eax+8], ecx
		cmp	dword ptr [ebx+4], 90000h
		jz	short loc_4BA302
		cmp	dword ptr [ebx+4], 0A0000h
		jz	short loc_4BA302
		cmp	dword ptr [ebx+4], 0B0000h
		jz	short loc_4BA302
		cmp	dword ptr [ebx+4], 0C0000h
		jz	short loc_4BA302
		cmp	dword ptr [ebx+4], 0D0000h
		jnz	short loc_4BA330

loc_4BA302:				; CODE XREF: .text:004BA2DCj
					; .text:004BA2E5j ...
		mov	edx, [esi+284h]
		add	edx, [ebx+24h]
		cmp	edx, [esi+288h]
		jbe	short loc_4BA330
		mov	ecx, [esi+284h]
		add	ecx, [ebx+20h]
		cmp	ecx, [esi+28Ch]
		jnb	short loc_4BA330
		mov	dword ptr [ebx+18F8h], 80h
		jmp	short loc_4BA338
; ---------------------------------------------------------------------------

loc_4BA330:				; CODE XREF: .text:004BA300j
					; .text:004BA311j ...
		xor	eax, eax
		mov	[ebx+18F8h], eax

loc_4BA338:				; CODE XREF: .text:004BA32Ej
		xor	eax, eax
		jmp	loc_4BD1FD
; ---------------------------------------------------------------------------

loc_4BA33F:				; CODE XREF: .text:004B90B4j
					; DATA XREF: .text:off_4B90BBo
		mov	edx, [ebx+20h]	; jumptable 004B90B4 case 0
		cmp	edx, [ebx+18FCh]
		jnb	loc_4BD1B9	; jumptable 004B90B4 default case
		cmp	dword ptr [ebx+4], 0D0000h
		jnz	short loc_4BA39C
		cmp	dword ptr [ebx+59A74h],	0
		jbe	short loc_4BA39C
		mov	ecx, [esi+284h]
		add	ecx, [ebx+20h]
		cmp	ecx, [esi]
		jbe	short loc_4BA39C
		mov	eax, [esi+284h]
		add	eax, [ebx+20h]
		sub	eax, [esi]
		xor	edx, edx
		div	dword ptr [ebx+59A74h]
		test	edx, edx
		jnz	short loc_4BA39C
		mov	eax, [esi+284h]
		add	eax, [ebx+20h]
		sub	eax, [esi]
		xor	edx, edx
		div	dword ptr [ebx+59A74h]
		mov	[ebp-4], eax
		jmp	short loc_4BA3A1
; ---------------------------------------------------------------------------

loc_4BA39C:				; CODE XREF: .text:004BA355j
					; .text:004BA35Ej ...
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_4BA3A1:				; CODE XREF: .text:004BA39Aj
		cmp	dword ptr [esi+298h], 0
		jz	short loc_4BA3DA
		push	3		; mode
		push	0		; select
		push	0		; mask
		mov	eax, [ebp-4]
		push	eax		; index
		push	0FFFFFFFFh	; relreg
		mov	edx, [esi+6F8h]
		push	edx		; reladdr
		mov	ecx, [esi+284h]
		add	ecx, [ebx+20h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		push	eax		; text
		call	Labeladdress
		add	esp, 20h
		mov	edi, eax
		jmp	loc_4BA55C
; ---------------------------------------------------------------------------

loc_4BA3DA:				; CODE XREF: .text:004BA3A8j
		cmp	dword_57DE54, 1
		jnz	short loc_4BA3EC
		mov	dword ptr [ebp-44h], 4011h
		jmp	short loc_4BA405
; ---------------------------------------------------------------------------

loc_4BA3EC:				; CODE XREF: .text:004BA3E1j
		cmp	dword_57DE54, 2
		jnz	short loc_4BA3FE
		mov	dword ptr [ebp-44h], 4012h
		jmp	short loc_4BA405
; ---------------------------------------------------------------------------

loc_4BA3FE:				; CODE XREF: .text:004BA3F3j
		mov	dword ptr [ebp-44h], 4010h

loc_4BA405:				; CODE XREF: .text:004BA3EAj
					; .text:004BA3FCj
		cmp	dword_57DE58, 0
		jz	short loc_4BA412
		or	dword ptr [ebp-44h], 20h

loc_4BA412:				; CODE XREF: .text:004BA40Cj
		test	byte ptr [esi+0Eh], 1
		jz	short loc_4BA452
		cmp	run.status, 12h
		jz	short loc_4BA42A
		cmp	run.status, 13h
		jnz	short loc_4BA452

loc_4BA42A:				; CODE XREF: .text:004BA41Fj
		cmp	dword ptr [ebx+1914h], 0
		jz	short loc_4BA452
		mov	eax, [ebx+1914h]
		mov	ecx, [esi+284h]
		add	ecx, [ebx+20h]
		mov	edx, [eax+8]
		cmp	edx, ecx
		jnz	short loc_4BA452
		or	dword ptr [ebp-44h], 1000h
		jmp	short loc_4BA490
; ---------------------------------------------------------------------------

loc_4BA452:				; CODE XREF: .text:004BA416j
					; .text:004BA428j ...
		test	byte ptr [esi+0Eh], 4
		jz	short loc_4BA490
		cmp	run.status, 12h
		jz	short loc_4BA46A
		cmp	run.status, 13h
		jnz	short loc_4BA490

loc_4BA46A:				; CODE XREF: .text:004BA45Fj
		cmp	dword ptr [ebx+1914h], 0
		jz	short loc_4BA490
		mov	eax, [ebx+1914h]
		mov	ecx, [esi+284h]
		add	ecx, [ebx+20h]
		mov	edx, [eax+1Ch]
		cmp	edx, ecx
		jnz	short loc_4BA490
		or	dword ptr [ebp-44h], 1000h

loc_4BA490:				; CODE XREF: .text:004BA450j
					; .text:004BA456j ...
		push	0		; subaddr
		mov	eax, [esi+284h]
		add	eax, [ebx+20h]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-68h], eax
		cmp	dword ptr [ebp-68h], 0
		jz	short loc_4BA4E6
		mov	edx, [ebp-68h]
		test	byte ptr [edx+9], 10h
		jz	short loc_4BA4E6
		mov	ecx, [ebp-68h]
		test	byte ptr [ecx+0Ah], 2
		jz	short loc_4BA4CD
		or	dword ptr [ebp-44h], 800h
		jmp	short loc_4BA4E6
; ---------------------------------------------------------------------------

loc_4BA4CD:				; CODE XREF: .text:004BA4C2j
		mov	eax, [ebp-68h]
		test	byte ptr [eax+0Ah], 4
		jz	short loc_4BA4DF
		or	dword ptr [ebp-44h], 400h
		jmp	short loc_4BA4E6
; ---------------------------------------------------------------------------

loc_4BA4DF:				; CODE XREF: .text:004BA4D4j
		or	dword ptr [ebp-44h], 200h

loc_4BA4E6:				; CODE XREF: .text:004BA4B0j
					; .text:004BA4B9j ...
		cmp	dword ptr [esi+6F4h], 0
		jl	short loc_4BA51C
		cmp	dword ptr [esi+6F4h], 8
		jge	short loc_4BA51C
		cmp	dword ptr [ebx+1914h], 0
		jz	short loc_4BA51C
		mov	edx, [esi+6F4h]
		mov	[ebp-0Ch], edx
		mov	ecx, [ebx+1914h]
		mov	eax, [ebp-0Ch]
		mov	edx, [ecx+eax*4+0Ch]
		mov	[ebp-2Ch], edx
		jmp	short loc_4BA52C
; ---------------------------------------------------------------------------

loc_4BA51C:				; CODE XREF: .text:004BA4EDj
					; .text:004BA4F6j ...
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		mov	ecx, [esi+6F8h]
		mov	[ebp-2Ch], ecx

loc_4BA52C:				; CODE XREF: .text:004BA51Aj
		mov	eax, [ebp-44h]
		push	eax		; mode
		mov	edx, [ebp+10h]
		push	edx		; select
		mov	ecx, [ebp+0Ch]
		push	ecx		; mask
		mov	eax, [ebp-4]
		push	eax		; index
		mov	edx, [ebp-0Ch]
		push	edx		; relreg
		mov	ecx, [ebp-2Ch]
		push	ecx		; reladdr
		mov	eax, [esi+284h]
		add	eax, [ebx+20h]
		push	eax		; _addr
		mov	edx, [ebp+8]
		push	edx		; text
		call	Labeladdress
		add	esp, 20h
		mov	edi, eax

loc_4BA55C:				; CODE XREF: .text:004BA3D5j
		mov	eax, [ebp+10h]
		mov	edx, [ebx+18F8h]
		or	[eax], edx
		jmp	loc_4BD1B9	; jumptable 004B90B4 default case
; ---------------------------------------------------------------------------

loc_4BA56C:				; CODE XREF: .text:004B90B4j
					; DATA XREF: .text:off_4B90BBo
		mov	ecx, [ebp+1Ch]	; jumptable 004B90B4 cases 1-3
		cmp	dword ptr [ebx+ecx*4+10h], 1
		jnz	loc_4BA768
		mov	eax, [ebx+20h]
		mov	[ebp-2Ch], eax
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+edi+2]
		mov	[ebp-98h], ecx
		mov	eax, [ebp+8]
		lea	edx, [eax+edi*2+2]
		mov	[ebp-94h], edx
		jmp	loc_4BA74B
; ---------------------------------------------------------------------------

loc_4BA59F:				; CODE XREF: .text:004BA754j
		mov	ecx, [ebp-2Ch]
		cmp	ecx, [ebx+18FCh]
		jnb	loc_4BA6D9
		mov	eax, [ebp-2Ch]
		cmp	eax, [ebx+1900h]
		jnb	short loc_4BA61C
		push	1		; n
		mov	ecx, edi
		mov	edx, [ebp-2Ch]
		add	ecx, ecx
		add	edx, ebx
		add	edx, 59E0Ch
		push	edx		; code
		add	ecx, [ebp+8]
		push	ecx		; s
		call	HexdumpW
		add	esp, 0Ch
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BA601
		mov	eax, [ebx+1908h]
		mov	edx, [ebp-2Ch]
		mov	cl, [eax+edx]
		mov	eax, [ebp-2Ch]
		cmp	cl, [ebx+eax+59E0Ch]
		jz	short loc_4BA601
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BA63A
; ---------------------------------------------------------------------------

loc_4BA601:				; CODE XREF: .text:004BA5DEj
					; .text:004BA5F6j
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebx+2134h]
		jnb	short loc_4BA615
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BA63A
; ---------------------------------------------------------------------------

loc_4BA615:				; CODE XREF: .text:004BA60Aj
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_4BA63A
; ---------------------------------------------------------------------------

loc_4BA61C:				; CODE XREF: .text:004BA5B7j
		mov	eax, [ebp-94h]
		mov	dx, 3Fh
		mov	[eax], dx
		mov	eax, [ebp-94h]
		mov	[eax-2], dx
		mov	dword ptr [ebp-14h], 2

loc_4BA63A:				; CODE XREF: .text:004BA5FFj
					; .text:004BA613j ...
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BA656
		push	1		; a3
		mov	ecx, [ebp-2Ch]
		push	ecx		; a2
		push	ebx		; a1
		call	loc_4AFD14
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BA656
		mov	[ebp-14h], eax

loc_4BA656:				; CODE XREF: .text:004BA63Ej
					; .text:004BA651j
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		cmp	eax, [esi+288h]
		jb	short loc_4BA67F
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	edx, [esi+28Ch]
		jnb	short loc_4BA67F
		or	dword ptr [ebp-14h], 80h

loc_4BA67F:				; CODE XREF: .text:004BA665j
					; .text:004BA676j
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BA6F5
		cmp	dword ptr [ebx+1904h], 0
		jz	short loc_4BA6F5
		jmp	short loc_4BA697
; ---------------------------------------------------------------------------

loc_4BA690:				; CODE XREF: .text:004BA6B1j
		add	dword ptr [ebx+1904h], 4

loc_4BA697:				; CODE XREF: .text:004BA68Ej
		mov	ecx, [ebx+1904h]
		mov	eax, [ecx]
		test	eax, eax
		jz	short loc_4BA6B3
		add	eax, 4
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	eax, edx
		jbe	short loc_4BA690

loc_4BA6B3:				; CODE XREF: .text:004BA6A1j
		mov	ecx, [ebx+1904h]
		cmp	dword ptr [ecx], 0
		jz	short loc_4BA6F5
		mov	eax, [ebx+1904h]
		mov	ecx, [esi+284h]
		add	ecx, [ebp-2Ch]
		mov	edx, [eax]
		cmp	edx, ecx
		ja	short loc_4BA6F5
		or	dword ptr [ebp-14h], 20h
		jmp	short loc_4BA6F5
; ---------------------------------------------------------------------------

loc_4BA6D9:				; CODE XREF: .text:004BA5A8j
		mov	dx, 20h
		mov	eax, [ebp-94h]
		xor	ecx, ecx
		mov	[eax], dx
		mov	eax, [ebp-94h]
		mov	[eax-2], dx
		mov	[ebp-14h], ecx

loc_4BA6F5:				; CODE XREF: .text:004BA683j
					; .text:004BA68Cj ...
		mov	eax, [ebp-2Ch]
		and	eax, 3
		cmp	eax, 3
		jnz	short loc_4BA70E
		mov	edx, [ebp-94h]
		mov	word ptr [edx+2], 7Ch
		jmp	short loc_4BA71A
; ---------------------------------------------------------------------------

loc_4BA70E:				; CODE XREF: .text:004BA6FEj
		mov	ecx, [ebp-94h]
		mov	word ptr [ecx+2], 20h

loc_4BA71A:				; CODE XREF: .text:004BA70Cj
		mov	al, [ebp-14h]
		mov	edx, [ebp-98h]
		mov	[edx], al
		mov	edx, [ebp-98h]
		mov	[edx-1], al
		mov	edx, [ebp-98h]
		mov	[edx-2], al
		add	edi, 3
		add	dword ptr [ebp-98h], 3
		add	dword ptr [ebp-94h], 6
		inc	dword ptr [ebp-2Ch]

loc_4BA74B:				; CODE XREF: .text:004BA59Aj
		mov	ecx, [ebx+20h]
		add	ecx, [ebx+8]
		cmp	ecx, [ebp-2Ch]
		ja	loc_4BA59F
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 100h
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BA768:				; CODE XREF: .text:004BA574j
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 2
		jnz	loc_4BA974
		mov	ecx, [ebx+20h]
		mov	[ebp-2Ch], ecx
		mov	eax, [ebp+0Ch]
		lea	edx, [eax+edi]
		mov	[ebp-94h], edx
		lea	ecx, [ebp+edi-198h]
		mov	[ebp-98h], ecx
		jmp	loc_4BA88D
; ---------------------------------------------------------------------------

loc_4BA79A:				; CODE XREF: .text:004BA899j
		mov	eax, [ebp-2Ch]
		cmp	eax, [ebx+18FCh]
		jnb	loc_4BA89F
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebx+1900h]
		jnb	short loc_4BA832
		mov	ecx, [ebp-2Ch]
		mov	al, [ebx+ecx+59E0Ch]
		mov	[ebp-59h], al
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BA7D8
		push	1		; a3
		mov	edx, [ebp-2Ch]
		push	edx		; a2
		push	ebx		; a1
		call	loc_4AFD14
		add	esp, 0Ch
		jmp	short loc_4BA7DA
; ---------------------------------------------------------------------------

loc_4BA7D8:				; CODE XREF: .text:004BA7C5j
		xor	eax, eax

loc_4BA7DA:				; CODE XREF: .text:004BA7D6j
		test	eax, eax
		jz	short loc_4BA7E3
		mov	[ebp-14h], eax
		jmp	short loc_4BA825
; ---------------------------------------------------------------------------

loc_4BA7E3:				; CODE XREF: .text:004BA7DCj
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BA80C
		mov	edx, [ebx+1908h]
		mov	ecx, [ebp-2Ch]
		xor	eax, eax
		mov	al, [edx+ecx]
		xor	edx, edx
		mov	dl, [ebp-59h]
		cmp	eax, edx
		jz	short loc_4BA80C
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BA825
; ---------------------------------------------------------------------------

loc_4BA80C:				; CODE XREF: .text:004BA7EAj
					; .text:004BA801j
		mov	ecx, [ebp-2Ch]
		cmp	ecx, [ebx+2134h]
		jnb	short loc_4BA820
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BA825
; ---------------------------------------------------------------------------

loc_4BA820:				; CODE XREF: .text:004BA815j
		xor	eax, eax
		mov	[ebp-14h], eax

loc_4BA825:				; CODE XREF: .text:004BA7E1j
					; .text:004BA80Aj ...
		mov	edx, [ebp-98h]
		mov	cl, [ebp-59h]
		mov	[edx], cl
		jmp	short loc_4BA842
; ---------------------------------------------------------------------------

loc_4BA832:				; CODE XREF: .text:004BA7B2j
		mov	eax, [ebp-98h]
		mov	byte ptr [eax],	3Fh
		mov	dword ptr [ebp-14h], 2

loc_4BA842:				; CODE XREF: .text:004BA830j
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	edx, [esi+288h]
		jb	short loc_4BA872
		mov	ecx, [esi+284h]
		add	ecx, [ebp-2Ch]
		cmp	ecx, [esi+28Ch]
		jnb	short loc_4BA872
		mov	eax, [ebx+18F8h]
		xor	eax, 80h
		or	[ebp-14h], eax

loc_4BA872:				; CODE XREF: .text:004BA851j
					; .text:004BA862j
		mov	dl, [ebp-14h]
		mov	ecx, [ebp-94h]
		mov	[ecx], dl
		inc	edi
		inc	dword ptr [ebp-94h]
		inc	dword ptr [ebp-98h]
		inc	dword ptr [ebp-2Ch]

loc_4BA88D:				; CODE XREF: .text:004BA795j
		mov	eax, [ebx+8]
		imul	dword ptr [ebx+0Ch]
		add	eax, [ebx+20h]
		cmp	eax, [ebp-2Ch]
		ja	loc_4BA79A

loc_4BA89F:				; CODE XREF: .text:004BA7A3j
		cmp	asciicodepage, 0
		jz	short loc_4BA8C7
		push	edi		; cchWideChar
		lea	ecx, [ebp-198h]
		mov	edx, [ebp+8]
		mov	eax, asciicodepage
		push	edx		; lpWideCharStr
		push	edi		; cbMultiByte
		push	ecx		; lpMultiByteStr
		push	0		; dwFlags
		push	eax		; CodePage
		call	MultiByteToWideChar
		mov	[ebp-10h], eax
		jmp	short loc_4BA8CC
; ---------------------------------------------------------------------------

loc_4BA8C7:				; CODE XREF: .text:004BA8A6j
		xor	edx, edx
		mov	[ebp-10h], edx

loc_4BA8CC:				; CODE XREF: .text:004BA8C5j
		cmp	edi, [ebp-10h]
		jz	short loc_4BA8EA
		push	100h		; nw
		lea	eax, [ebp-198h]
		mov	ecx, [ebp+8]
		push	ecx		; w
		push	edi		; ns
		push	eax		; s
		call	Asciitounicode
		add	esp, 10h

loc_4BA8EA:				; CODE XREF: .text:004BA8CFj
		cmp	dword_5BE698, 0
		jz	short loc_4BA95E
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp+8]
		mov	eax, ecx
		mov	[ebp-94h], eax
		cmp	edi, [ebp-4]
		jle	short loc_4BA95E

loc_4BA908:				; CODE XREF: .text:004BA95Cj
		mov	edx, [ebp-94h]
		cmp	word ptr [edx],	0
		jz	short loc_4BA944
		mov	ecx, [ebp-94h]
		cmp	word ptr [ecx],	0Ah
		jz	short loc_4BA944
		mov	eax, [ebp-94h]
		cmp	word ptr [eax],	0Dh
		jz	short loc_4BA944
		mov	edx, [ebp-94h]
		cmp	word ptr [edx],	0Ch
		jz	short loc_4BA944
		mov	ecx, [ebp-94h]
		cmp	word ptr [ecx],	9
		jnz	short loc_4BA94F

loc_4BA944:				; CODE XREF: .text:004BA912j
					; .text:004BA91Ej ...
		mov	eax, [ebp-94h]
		mov	word ptr [eax],	2Eh

loc_4BA94F:				; CODE XREF: .text:004BA942j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-94h], 2
		cmp	edi, [ebp-4]
		jg	short loc_4BA908

loc_4BA95E:				; CODE XREF: .text:004BA8F1j
					; .text:004BA906j
		mov	ecx, [ebp+10h]
		mov	edx, [ebx+18F8h]
		or	edx, 8100h
		mov	[ecx], edx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BA974:				; CODE XREF: .text:004BA770j
		mov	eax, [ebp+1Ch]
		cmp	dword ptr [ebx+eax*4+10h], 3
		jnz	loc_4BAB67
		mov	dword ptr [ebp-3Ch], 2
		mov	edx, [ebx+20h]
		mov	[ebp-2Ch], edx
		mov	ecx, [ebp+0Ch]
		lea	eax, [ecx+edi]
		mov	[ebp-98h], eax
		mov	edx, [ebp+8]
		lea	ecx, [edx+edi*2]
		mov	[ebp-94h], ecx
		jmp	loc_4BAB3E
; ---------------------------------------------------------------------------

loc_4BA9AC:				; CODE XREF: .text:004BAB4Bj
		mov	eax, [ebp-2Ch]
		add	eax, [ebp-3Ch]
		cmp	eax, [ebx+18FCh]
		ja	loc_4BAB51
		mov	edx, [ebp-2Ch]
		add	edx, [ebp-3Ch]
		cmp	edx, [ebx+1900h]
		ja	loc_4BAA91
		mov	ecx, [ebp-2Ch]
		mov	ax, [ebx+ecx+59E0Ch]
		mov	[ebp-5Ch], ax
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BA9F8
		mov	edx, [ebp-3Ch]
		push	edx		; a3
		mov	ecx, [ebp-2Ch]
		push	ecx		; a2
		push	ebx		; a1
		call	loc_4AFD14
		add	esp, 0Ch
		jmp	short loc_4BA9FA
; ---------------------------------------------------------------------------

loc_4BA9F8:				; CODE XREF: .text:004BA9E3j
		xor	eax, eax

loc_4BA9FA:				; CODE XREF: .text:004BA9F6j
		test	eax, eax
		jz	short loc_4BAA03
		mov	[ebp-14h], eax
		jmp	short loc_4BAA41
; ---------------------------------------------------------------------------

loc_4BAA03:				; CODE XREF: .text:004BA9FCj
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BAA28
		mov	edx, [ebx+1908h]
		mov	ecx, [ebp-2Ch]
		mov	ax, [edx+ecx]
		cmp	ax, [ebp-5Ch]
		jz	short loc_4BAA28
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BAA41
; ---------------------------------------------------------------------------

loc_4BAA28:				; CODE XREF: .text:004BAA0Aj
					; .text:004BAA1Dj
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebx+2134h]
		jnb	short loc_4BAA3C
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BAA41
; ---------------------------------------------------------------------------

loc_4BAA3C:				; CODE XREF: .text:004BAA31j
		xor	ecx, ecx
		mov	[ebp-14h], ecx

loc_4BAA41:				; CODE XREF: .text:004BAA01j
					; .text:004BAA26j ...
		cmp	word ptr [ebp-5Ch], 0
		jz	short loc_4BAA7C
		cmp	word ptr [ebp-5Ch], 0Ah
		jz	short loc_4BAA7C
		cmp	word ptr [ebp-5Ch], 0Dh
		jz	short loc_4BAA7C
		cmp	word ptr [ebp-5Ch], 0Ch
		jz	short loc_4BAA7C
		cmp	word ptr [ebp-5Ch], 9
		jz	short loc_4BAA7C
		cmp	word ptr [ebp-5Ch], 0FFFFh
		jz	short loc_4BAA7C
		cmp	word ptr [ebp-5Ch], 0FEFFh
		jz	short loc_4BAA7C
		cmp	word ptr [ebp-5Ch], 0FFFEh
		jnz	short loc_4BAA82

loc_4BAA7C:				; CODE XREF: .text:004BAA46j
					; .text:004BAA4Dj ...
		mov	word ptr [ebp-5Ch], 2Eh

loc_4BAA82:				; CODE XREF: .text:004BAA7Aj
		mov	eax, [ebp-94h]
		mov	dx, [ebp-5Ch]
		mov	[eax], dx
		jmp	short loc_4BAAEC
; ---------------------------------------------------------------------------

loc_4BAA91:				; CODE XREF: .text:004BA9CAj
		mov	ecx, [ebp-94h]
		mov	word ptr [ecx],	3Fh
		mov	eax, [ebx+1900h]
		cmp	eax, [ebp-2Ch]
		jbe	short loc_4BAAE5
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BAAE5
		mov	edx, [ebx+1900h]
		sub	edx, [ebp-2Ch]
		push	edx		; n
		mov	ecx, [ebp-2Ch]
		add	ecx, ebx
		add	ecx, 59E0Ch
		push	ecx		; s2
		mov	eax, [ebx+1908h]
		add	eax, [ebp-2Ch]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BAAE5
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BAAEC
; ---------------------------------------------------------------------------

loc_4BAAE5:				; CODE XREF: .text:004BAAA5j
					; .text:004BAAAEj ...
		mov	dword ptr [ebp-14h], 2

loc_4BAAEC:				; CODE XREF: .text:004BAA8Fj
					; .text:004BAAE3j
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		add	edx, [ebp-3Ch]
		cmp	edx, [esi+288h]
		jbe	short loc_4BAB1F
		mov	ecx, [esi+284h]
		add	ecx, [ebp-2Ch]
		cmp	ecx, [esi+28Ch]
		jnb	short loc_4BAB1F
		mov	eax, [ebx+18F8h]
		xor	eax, 80h
		or	[ebp-14h], eax

loc_4BAB1F:				; CODE XREF: .text:004BAAFEj
					; .text:004BAB0Fj
		mov	dl, [ebp-14h]
		mov	ecx, [ebp-98h]
		mov	[ecx], dl
		inc	edi
		inc	dword ptr [ebp-98h]
		add	dword ptr [ebp-94h], 2
		mov	eax, [ebp-3Ch]
		add	[ebp-2Ch], eax

loc_4BAB3E:				; CODE XREF: .text:004BA9A7j
		mov	edx, [ebx+8]
		imul	edx, [ebx+0Ch]
		add	edx, [ebx+20h]
		cmp	edx, [ebp-2Ch]
		ja	loc_4BA9AC

loc_4BAB51:				; CODE XREF: .text:004BA9B8j
		mov	eax, [ebp+10h]
		mov	ecx, [ebx+18F8h]
		or	ecx, 8100h
		mov	[eax], ecx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BAB67:				; CODE XREF: .text:004BA97Cj
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 4
		jnz	loc_4BAEC7
		mov	ecx, [ebx+0Ch]
		mov	[ebp-3Ch], ecx
		mov	eax, [ebx+20h]
		mov	[ebp-2Ch], eax
		jmp	loc_4BAEA7
; ---------------------------------------------------------------------------

loc_4BAB86:				; CODE XREF: .text:004BAEB3j
		mov	edx, [ebx+18FCh]
		cmp	edx, [ebp-2Ch]
		jbe	loc_4BAEB9
		mov	ecx, [ebp-2Ch]
		add	ecx, [ebp-3Ch]
		cmp	ecx, [ebx+18FCh]
		jbe	short loc_4BABE0
		push	$CTW0("????????????????????????????????") ; "????????????????????????????????"
		mov	ecx, edi
		mov	eax, [ebp-2Ch]
		add	ecx, ecx
		add	eax, [ebp-3Ch]
		sub	eax, [ebx+18FCh]
		add	eax, eax
		push	eax
		mov	edx, [esi+10h]
		dec	edx
		push	edx
		push	offset a_S	; "%*.*s "
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 14h
		mov	[ebp-0Ch], eax
		mov	dword ptr [ebp-14h], 2
		jmp	loc_4BAE5C
; ---------------------------------------------------------------------------

loc_4BABE0:				; CODE XREF: .text:004BABA1j
		mov	eax, [ebp-2Ch]
		add	eax, [ebp-3Ch]
		cmp	eax, [ebx+1900h]
		ja	loc_4BADEB
		cmp	dword ptr [ebx+4], 80000h
		jnz	loc_4BAC9A
		cmp	dword ptr [ebx+0Ch], 4
		jnz	short loc_4BAC20
		mov	edx, [ebp-2Ch]
		lea	eax, [ebp-218h]
		push	dword ptr [ebx+edx+59E0Ch] ; f
		push	eax		; s
		call	Printfloat4
		add	esp, 8
		jmp	short loc_4BAC71
; ---------------------------------------------------------------------------

loc_4BAC20:				; CODE XREF: .text:004BAC03j
		cmp	dword ptr [ebx+0Ch], 8
		jnz	short loc_4BAC48
		mov	edx, [ebp-2Ch]
		lea	eax, [ebp-218h]
		push	dword ptr [ebx+edx+59E10h]
		push	dword ptr [ebx+edx+59E0Ch] ; d
		push	eax		; s
		call	Printfloat8
		add	esp, 0Ch
		jmp	short loc_4BAC71
; ---------------------------------------------------------------------------

loc_4BAC48:				; CODE XREF: .text:004BAC24j
		mov	edx, [ebp-2Ch]
		lea	eax, [ebp-218h]
		mov	cx, [ebx+edx+59E14h]
		push	ecx
		push	dword ptr [ebx+edx+59E10h]
		push	dword ptr [ebx+edx+59E0Ch] ; ext
		push	eax		; s
		call	Printfloat10
		add	esp, 10h

loc_4BAC71:				; CODE XREF: .text:004BAC1Ej
					; .text:004BAC46j
		lea	edx, [ebp-218h]
		mov	eax, edi
		push	edx
		add	eax, eax
		mov	ecx, [esi+10h]
		dec	ecx
		push	ecx
		push	offset aS_33	; "%*s "
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	[ebp-0Ch], eax
		jmp	loc_4BAD6E
; ---------------------------------------------------------------------------

loc_4BAC9A:				; CODE XREF: .text:004BABF9j
		cmp	dword ptr [ebx+0Ch], 4
		jnz	short loc_4BACAF
		mov	edx, [ebp-2Ch]
		mov	ecx, [ebx+edx+59E0Ch]
		mov	[ebp-38h], ecx
		jmp	short loc_4BACD6
; ---------------------------------------------------------------------------

loc_4BACAF:				; CODE XREF: .text:004BAC9Ej
		cmp	dword ptr [ebx+4], 50000h
		jnz	short loc_4BACC8
		mov	eax, [ebp-2Ch]
		movsx	edx, word ptr [ebx+eax+59E0Ch]
		mov	[ebp-38h], edx
		jmp	short loc_4BACD6
; ---------------------------------------------------------------------------

loc_4BACC8:				; CODE XREF: .text:004BACB6j
		mov	ecx, [ebp-2Ch]
		movzx	eax, word ptr [ebx+ecx+59E0Ch]
		mov	[ebp-38h], eax

loc_4BACD6:				; CODE XREF: .text:004BACADj
					; .text:004BACC6j
		cmp	dword ptr [ebx+4], 50000h
		jnz	short loc_4BAD02
		mov	edx, [ebp-38h]
		mov	eax, edi
		push	edx
		add	eax, eax
		mov	ecx, [esi+10h]
		dec	ecx
		push	ecx
		push	offset aI__1	; "%*i."
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	[ebp-0Ch], eax
		jmp	short loc_4BAD6E
; ---------------------------------------------------------------------------

loc_4BAD02:				; CODE XREF: .text:004BACDDj
		cmp	dword ptr [ebx+4], 60000h
		jnz	short loc_4BAD2E
		mov	edx, [ebp-38h]
		mov	eax, edi
		push	edx
		add	eax, eax
		mov	ecx, [esi+10h]
		dec	ecx
		push	ecx
		push	offset aU__2	; "%*u."
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	[ebp-0Ch], eax
		jmp	short loc_4BAD6E
; ---------------------------------------------------------------------------

loc_4BAD2E:				; CODE XREF: .text:004BAD09j
		cmp	dword ptr [ebx+0Ch], 2
		jnz	short loc_4BAD52
		mov	edx, [ebp-38h]
		mov	ecx, edi
		push	edx
		push	offset a04x_9	; "   %04X "
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_4BAD6E
; ---------------------------------------------------------------------------

loc_4BAD52:				; CODE XREF: .text:004BAD32j
		mov	eax, [ebp-38h]
		mov	edx, edi
		push	eax
		push	offset a08x_4	; "	%08X "
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4BAD6E:				; CODE XREF: .text:004BAC95j
					; .text:004BAD00j ...
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BAD87
		mov	ecx, [ebp-3Ch]
		push	ecx		; a3
		mov	eax, [ebp-2Ch]
		push	eax		; a2
		push	ebx		; a1
		call	loc_4AFD14
		add	esp, 0Ch
		jmp	short loc_4BAD89
; ---------------------------------------------------------------------------

loc_4BAD87:				; CODE XREF: .text:004BAD72j
		xor	eax, eax

loc_4BAD89:				; CODE XREF: .text:004BAD85j
		test	eax, eax
		jz	short loc_4BAD95
		mov	[ebp-14h], eax
		jmp	loc_4BAE5C
; ---------------------------------------------------------------------------

loc_4BAD95:				; CODE XREF: .text:004BAD8Bj
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BADD0
		mov	edx, [ebp-3Ch]
		push	edx		; n
		mov	ecx, [ebp-2Ch]
		add	ecx, ebx
		add	ecx, 59E0Ch
		push	ecx		; s2
		mov	eax, [ebx+1908h]
		add	eax, [ebp-2Ch]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BADD0
		mov	dword ptr [ebp-14h], 1
		jmp	loc_4BAE5C
; ---------------------------------------------------------------------------

loc_4BADD0:				; CODE XREF: .text:004BAD9Cj
					; .text:004BADC2j
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebx+2134h]
		jnb	short loc_4BADE4
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BAE5C
; ---------------------------------------------------------------------------

loc_4BADE4:				; CODE XREF: .text:004BADD9j
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_4BAE5C
; ---------------------------------------------------------------------------

loc_4BADEB:				; CODE XREF: .text:004BABECj
		push	$CTW0("??? ")	; "??? "
		mov	edx, edi
		mov	eax, [esi+10h]
		add	edx, edx
		push	eax
		push	offset aS_29	; "%*s"
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		mov	[ebp-0Ch], eax
		mov	ecx, [ebx+1900h]
		cmp	ecx, [ebp-2Ch]
		jbe	short loc_4BAE55
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BAE55
		mov	eax, [ebx+1900h]
		sub	eax, [ebp-2Ch]
		push	eax		; n
		mov	edx, [ebp-2Ch]
		add	edx, ebx
		add	edx, 59E0Ch
		push	edx		; s2
		mov	ecx, [ebx+1908h]
		add	ecx, [ebp-2Ch]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BAE55
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BAE5C
; ---------------------------------------------------------------------------

loc_4BAE55:				; CODE XREF: .text:004BAE15j
					; .text:004BAE1Ej ...
		mov	dword ptr [ebp-14h], 2

loc_4BAE5C:				; CODE XREF: .text:004BABDBj
					; .text:004BAD90j ...
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		add	eax, [ebp-3Ch]
		cmp	eax, [esi+288h]
		jbe	short loc_4BAE88
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	edx, [esi+28Ch]
		jnb	short loc_4BAE88
		or	dword ptr [ebp-14h], 80h

loc_4BAE88:				; CODE XREF: .text:004BAE6Ej
					; .text:004BAE7Fj
		mov	ecx, [ebp-0Ch]
		push	ecx		; n
		mov	eax, [ebp-14h]
		push	eax		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-0Ch]
		mov	ecx, [ebp-3Ch]
		add	[ebp-2Ch], ecx

loc_4BAEA7:				; CODE XREF: .text:004BAB81j
		mov	eax, [ebx+8]
		imul	dword ptr [ebp-3Ch]
		add	eax, [ebx+20h]
		cmp	eax, [ebp-2Ch]
		ja	loc_4BAB86

loc_4BAEB9:				; CODE XREF: .text:004BAB8Fj
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 100h
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BAEC7:				; CODE XREF: .text:004BAB6Fj
		mov	ecx, [ebp+1Ch]
		cmp	dword ptr [ebx+ecx*4+10h], 5
		jnz	loc_4BB23E
		mov	dword ptr [ebp-3Ch], 4
		mov	eax, [ebx+20h]
		mov	[ebp-2Ch], eax
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		mov	[ebp-30h], edx
		mov	ecx, [ebp-2Ch]
		add	ecx, [ebp-3Ch]
		cmp	ecx, [ebx+18FCh]
		ja	loc_4BD1B9	; jumptable 004B90B4 default case
		test	byte ptr [esi+0Eh], 7
		jz	loc_4BB041
		cmp	dword ptr [ebx+1914h], 0
		jz	short loc_4BAF21
		mov	eax, [ebx+1914h]
		mov	edx, [eax+1Ch]
		cmp	edx, [ebp-30h]
		jbe	short loc_4BAF2E

loc_4BAF21:				; CODE XREF: .text:004BAF11j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx],	1
		jmp	loc_4BB025
; ---------------------------------------------------------------------------

loc_4BAF2E:				; CODE XREF: .text:004BAF1Fj
		cmp	dword ptr [ebx+2470h], 0
		jnz	short loc_4BAF44
		mov	eax, [ebp+8]
		mov	word ptr [eax],	1
		jmp	loc_4BB025
; ---------------------------------------------------------------------------

loc_4BAF44:				; CODE XREF: .text:004BAF35j
		cmp	dword ptr [ebx+2470h], 0
		jz	short loc_4BAFC0
		mov	edx, [ebx+2470h]
		cmp	edx, [ebp-30h]
		jnb	short loc_4BAFC0
		mov	ecx, [ebx+2474h]
		mov	[ebx+2580h], ecx
		mov	eax, [ebx+2464h]
		mov	[ebx+217Ch], eax
		mov	edx, [ebx+2468h]
		mov	[ebx+2180h], edx
		mov	ecx, [ebx+246Ch]
		mov	[ebx+2184h], ecx
		mov	eax, [esi+4]
		push	eax		; size
		mov	edx, [esi]
		push	edx		; base
		lea	ecx, [ebx+217Ch]
		push	ecx		; pf
		call	Findretaddrdata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4BAFB0
		mov	eax, [ebx+2470h]
		cmp	eax, [esi+284h]
		jnb	short loc_4BAFC0

loc_4BAFB0:				; CODE XREF: .text:004BAFA0j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx+2180h], edx
		mov	[ebx+2470h], ecx

loc_4BAFC0:				; CODE XREF: .text:004BAF4Bj
					; .text:004BAF56j ...
		cmp	dword ptr [ebx+2470h], 0
		jnz	short loc_4BAFD3
		mov	eax, [ebp+8]
		mov	word ptr [eax],	1
		jmp	short loc_4BB025
; ---------------------------------------------------------------------------

loc_4BAFD3:				; CODE XREF: .text:004BAFC7j
		mov	edx, [ebp-30h]
		cmp	edx, [ebx+2180h]
		jnz	short loc_4BAFF3
		mov	ecx, [ebp-30h]
		cmp	ecx, [ebx+2470h]
		jnz	short loc_4BAFF3
		mov	eax, [ebp+8]
		mov	word ptr [eax],	1Dh
		jmp	short loc_4BB025
; ---------------------------------------------------------------------------

loc_4BAFF3:				; CODE XREF: .text:004BAFDCj
					; .text:004BAFE7j
		mov	edx, [ebp-30h]
		cmp	edx, [ebx+2180h]
		jnz	short loc_4BB008
		mov	ecx, [ebp+8]
		mov	word ptr [ecx],	18h
		jmp	short loc_4BB025
; ---------------------------------------------------------------------------

loc_4BB008:				; CODE XREF: .text:004BAFFCj
		mov	eax, [ebp-30h]
		cmp	eax, [ebx+2470h]
		jnz	short loc_4BB01D
		mov	edx, [ebp+8]
		mov	word ptr [edx],	1Ch
		jmp	short loc_4BB025
; ---------------------------------------------------------------------------

loc_4BB01D:				; CODE XREF: .text:004BB011j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx],	19h

loc_4BB025:				; CODE XREF: .text:004BAF29j
					; .text:004BAF3Fj ...
		test	byte ptr [ebx+2460h], 1
		jz	short loc_4BB036
		mov	eax, [ebp+0Ch]
		mov	byte ptr [eax],	62h
		jmp	short loc_4BB03C
; ---------------------------------------------------------------------------

loc_4BB036:				; CODE XREF: .text:004BB02Cj
		mov	edx, [ebp+0Ch]
		mov	byte ptr [edx],	60h

loc_4BB03C:				; CODE XREF: .text:004BB034j
		mov	edi, 1

loc_4BB041:				; CODE XREF: .text:004BAF04j
		mov	eax, [ebp-2Ch]
		add	eax, [ebp-3Ch]
		cmp	eax, [ebx+1900h]
		ja	loc_4BB0F4
		mov	edx, [ebp-2Ch]
		mov	ecx, [ebx+edx+59E0Ch]
		mov	edx, edi
		mov	[ebp-38h], ecx
		add	edx, edx
		mov	eax, [ebp-38h]
		push	eax		; u
		add	edx, [ebp+8]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BB090
		mov	ecx, [ebp-3Ch]
		push	ecx		; a3
		mov	eax, [ebp-2Ch]
		push	eax		; a2
		push	ebx		; a1
		call	loc_4AFD14
		add	esp, 0Ch
		jmp	short loc_4BB092
; ---------------------------------------------------------------------------

loc_4BB090:				; CODE XREF: .text:004BB07Bj
		xor	eax, eax

loc_4BB092:				; CODE XREF: .text:004BB08Ej
		test	eax, eax
		jz	short loc_4BB09E
		mov	[ebp-14h], eax
		jmp	loc_4BB164
; ---------------------------------------------------------------------------

loc_4BB09E:				; CODE XREF: .text:004BB094j
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BB0D9
		mov	edx, [ebp-3Ch]
		push	edx		; n
		mov	ecx, [ebp-2Ch]
		add	ecx, ebx
		add	ecx, 59E0Ch
		push	ecx		; s2
		mov	eax, [ebx+1908h]
		add	eax, [ebp-2Ch]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BB0D9
		mov	dword ptr [ebp-14h], 1
		jmp	loc_4BB164
; ---------------------------------------------------------------------------

loc_4BB0D9:				; CODE XREF: .text:004BB0A5j
					; .text:004BB0CBj
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebx+2134h]
		jnb	short loc_4BB0ED
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BB164
; ---------------------------------------------------------------------------

loc_4BB0ED:				; CODE XREF: .text:004BB0E2j
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_4BB164
; ---------------------------------------------------------------------------

loc_4BB0F4:				; CODE XREF: .text:004BB04Dj
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		push	$CTW0("??? ") ; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	ecx, [ebx+1900h]
		cmp	ecx, [ebp-2Ch]
		jbe	short loc_4BB15D
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BB15D
		mov	eax, [ebx+1900h]
		sub	eax, [ebp-2Ch]
		push	eax		; n
		mov	edx, [ebp-2Ch]
		add	edx, ebx
		add	edx, 59E0Ch
		push	edx		; s2
		mov	ecx, [ebx+1908h]
		add	ecx, [ebp-2Ch]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BB15D
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BB164
; ---------------------------------------------------------------------------

loc_4BB15D:				; CODE XREF: .text:004BB11Dj
					; .text:004BB126j ...
		mov	dword ptr [ebp-14h], 2

loc_4BB164:				; CODE XREF: .text:004BB099j
					; .text:004BB0D4j ...
		mov	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-14h]
		push	edx		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		cmp	dword ptr [ebp+1Ch], 1
		jnz	loc_4BB225
		cmp	dword ptr [ebx+1904h], 0
		jz	loc_4BB225
		mov	eax, [ebp-2Ch]
		add	eax, [ebp-3Ch]
		cmp	eax, [ebx+1900h]
		ja	loc_4BB225
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_4BB1B1
; ---------------------------------------------------------------------------

loc_4BB1AA:				; CODE XREF: .text:004BB1D5j
		add	dword ptr [ebx+1904h], 4

loc_4BB1B1:				; CODE XREF: .text:004BB1A8j
					; .text:004BB223j
		mov	ecx, [ebx+1904h]
		cmp	dword ptr [ecx], 0
		jz	short loc_4BB1D7
		mov	eax, [ebx+1904h]
		mov	ecx, [esi+284h]
		add	ecx, [ebp-2Ch]
		add	ecx, [ebp-4]
		mov	edx, [eax]
		add	edx, 4
		cmp	edx, ecx
		jbe	short loc_4BB1AA

loc_4BB1D7:				; CODE XREF: .text:004BB1BAj
		mov	eax, [ebx+1904h]
		cmp	dword ptr [eax], 0
		jz	short loc_4BB21C
		mov	eax, [esi+284h]
		mov	edx, [ebx+1904h]
		add	eax, [ebp-2Ch]
		add	eax, [ebp-4]
		mov	ecx, [edx]
		cmp	ecx, eax
		ja	short loc_4BB21C
		lea	edx, [edi+7]
		mov	ecx, [ebp-4]
		add	ecx, ecx
		sub	edx, ecx
		mov	eax, [ebp+0Ch]
		or	byte ptr [eax+edx], 20h
		lea	edx, [edi+6]
		mov	ecx, [ebp-4]
		add	ecx, ecx
		sub	edx, ecx
		mov	eax, [ebp+0Ch]
		or	byte ptr [eax+edx], 20h

loc_4BB21C:				; CODE XREF: .text:004BB1E0j
					; .text:004BB1F8j
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4BB1B1

loc_4BB225:				; CODE XREF: .text:004BB17Ej
					; .text:004BB18Bj ...
		add	edi, [ebp-0Ch]
		mov	edx, [ebx+18F8h]
		or	edx, 100h
		mov	ecx, [ebp+10h]
		mov	[ecx], edx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BB23E:				; CODE XREF: .text:004BAECFj
		mov	eax, [ebp+1Ch]
		cmp	dword ptr [ebx+eax*4+10h], 6
		jnz	loc_4BB8F5
		mov	edx, [ebx+20h]
		xor	eax, eax
		mov	[ebp-2Ch], edx
		mov	ecx, [ebx+2178h]
		mov	[ebp-30h], ecx
		mov	[ebp-4], eax

loc_4BB260:				; CODE XREF: .text:004BB2B1j
		cmp	dword ptr [ebp-30h], 0FFFFFFFFh
		jz	short loc_4BB2B3
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	edx, [ebp-30h]
		jz	short loc_4BB2B3
		mov	ecx, [esi+284h]
		add	ecx, [ebp-2Ch]
		sub	ecx, 4
		cmp	ecx, [ebp-30h]
		jz	short loc_4BB2B3
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-30h]
		push	eax		; _addr
		lea	edx, [ebp-30h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_4BB2A7
		mov	dword ptr [ebp-30h], 0FFFFFFFFh
		jmp	short loc_4BB2B3
; ---------------------------------------------------------------------------

loc_4BB2A7:				; CODE XREF: .text:004BB29Cj
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 200h
		jl	short loc_4BB260

loc_4BB2B3:				; CODE XREF: .text:004BB264j
					; .text:004BB272j ...
		mov	ecx, [esi+284h]
		add	ecx, [ebp-2Ch]
		cmp	ecx, [ebp-30h]
		jnz	short loc_4BB330
		mov	eax, [ebp-2Ch]
		add	eax, 4
		cmp	eax, [ebx+18FCh]
		ja	loc_4BB360
		mov	edx, [ebp-2Ch]
		add	edx, 4
		cmp	edx, [ebx+1900h]
		ja	short loc_4BB360
		mov	ecx, [ebp-2Ch]
		cmp	dword ptr [ebx+ecx+59E0Ch], 0FFFFFFFFh
		jnz	short loc_4BB30F
		push	offset aEndOfSehChain ;	"End of	SEH chain"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		jmp	short loc_4BB360
; ---------------------------------------------------------------------------

loc_4BB30F:				; CODE XREF: .text:004BB2ECj
		push	offset aPointerToNextS ; "Pointer to next SEH record"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		jmp	short loc_4BB360
; ---------------------------------------------------------------------------

loc_4BB330:				; CODE XREF: .text:004BB2BFj
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		sub	eax, 4
		cmp	eax, [ebp-30h]
		jnz	short loc_4BB360
		push	offset aSeHandler ; "SE	handler"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax

loc_4BB360:				; CODE XREF: .text:004BB2CDj
					; .text:004BB2DFj ...
		test	edi, edi
		jle	short loc_4BB373
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4BB373:				; CODE XREF: .text:004BB362j
		test	edi, edi
		jnz	loc_4BB8DF
		mov	edx, [ebp-2Ch]
		add	edx, 4
		cmp	edx, [ebx+18FCh]
		ja	loc_4BB8DF
		mov	ecx, [ebp-2Ch]
		add	ecx, 4
		cmp	ecx, [ebx+1900h]
		ja	loc_4BB8DF
		mov	eax, [ebp-2Ch]
		cmp	eax, [ebx+2134h]
		jnb	short loc_4BB3B3
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BB3B8
; ---------------------------------------------------------------------------

loc_4BB3B3:				; CODE XREF: .text:004BB3A8j
		xor	edx, edx
		mov	[ebp-14h], edx

loc_4BB3B8:				; CODE XREF: .text:004BB3B1j
		mov	ecx, [ebp-2Ch]
		mov	eax, [ebx+ecx+59E0Ch]
		mov	[ebp-38h], eax
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		mov	[ebp-30h], edx
		cmp	dword ptr [ebx+2584h], 0
		jz	loc_4BB572
		cmp	dword ptr [ebx+8CA8h], 0
		jle	loc_4BB572
		mov	ecx, [ebp-30h]
		sub	ecx, [ebx+2584h]
		shr	ecx, 2
		mov	[ebp-0Ch], ecx
		cmp	dword ptr [ebp-0Ch], 0
		jl	loc_4BB572
		cmp	dword ptr [ebp-0Ch], 18h
		jge	loc_4BB572
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebx+8CA8h]
		jge	loc_4BB572
		mov	edx, [ebp-0Ch]
		shl	edx, 2
		mov	ecx, [ebp-30h]
		sub	ecx, [ebx+2584h]
		cmp	edx, ecx
		jnz	loc_4BB572
		mov	eax, [ebp-0Ch]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		test	byte ptr [ebx+eax*4+2588h], 1
		jz	loc_4BB572
		mov	cx, 1Ch
		mov	eax, [ebx+8CA8h]
		dec	eax
		cmp	eax, [ebp-0Ch]
		jz	short loc_4BB465
		add	ecx, 0FFFFFFFDh

loc_4BB465:				; CODE XREF: .text:004BB460j
		mov	edx, [ebp+8]
		mov	[edx], cx
		mov	ecx, [ebp+0Ch]
		mov	byte ptr [ecx],	60h
		mov	edi, 1
		mov	eax, [ebp-0Ch]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		cmp	word ptr [ebx+eax*4+25D4h], 3Dh
		jz	short loc_4BB509
		mov	ecx, [ebp-0Ch]
		mov	edx, 100h
		mov	eax, ecx
		sub	edx, edi
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, ebx
		add	ecx, 25D4h
		push	ecx		; src
		mov	ecx, edi
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		push	offset asc_554468 ; " =	"
		sub	eax, [ebp-10h]
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+8]
		mov	ecx, [ebp-10h]
		add	ecx, ecx
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-10h], eax
		mov	eax, [ebp-10h]
		push	eax		; n
		push	2		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-10h]

loc_4BB509:				; CODE XREF: .text:004BB48Fj
		mov	ecx, [ebp-0Ch]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		cmp	word ptr [ebx+ecx*4+27D4h], 0
		jz	short loc_4BB572
		mov	edx, [ebp-0Ch]
		mov	eax, 100h
		mov	ecx, edx
		sub	eax, edi
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, ebx
		add	edx, 27D4h
		push	edx		; src
		mov	edx, edi
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	ecx, [ebp-10h]
		push	ecx		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-10h]

loc_4BB572:				; CODE XREF: .text:004BB3D8j
					; .text:004BB3E5j ...
		test	edi, edi
		jnz	short loc_4BB58B
		lea	edx, [ebp-34h]
		push	edx		; procaddr
		mov	ecx, [ebp-38h]
		push	ecx		; retaddr
		call	Isretaddr
		add	esp, 8
		mov	[ebp-30h], eax
		jmp	short loc_4BB590
; ---------------------------------------------------------------------------

loc_4BB58B:				; CODE XREF: .text:004BB574j
		xor	eax, eax
		mov	[ebp-30h], eax

loc_4BB590:				; CODE XREF: .text:004BB589j
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4BB87A
		cmp	dword ptr [ebx+2474h], 0
		jz	loc_4BB6C1
		cmp	dword ptr [ebx+2468h], 0
		jz	loc_4BB6C1
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		add	edx, 4
		cmp	edx, [ebx+2468h]
		jnz	loc_4BB6C1
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_4BB5D1:				; CODE XREF: .text:004BB671j
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-4]
		shl	eax, 2
		add	eax, [ebx+2468h]
		push	eax		; _addr
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		add	edx, ebx
		add	edx, 258Ch
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_4BB638
		mov	eax, 4
		cmp	dword_5BDD48, 0
		jnz	short loc_4BB61C
		add	eax, 0FFFFFFFCh

loc_4BB61C:				; CODE XREF: .text:004BB617j
		or	eax, 1
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*2]
		mov	[ebx+edx*4+2588h], eax
		jmp	short loc_4BB651
; ---------------------------------------------------------------------------

loc_4BB638:				; CODE XREF: .text:004BB609j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		xor	ecx, ecx
		mov	[ebx+eax*4+2588h], ecx

loc_4BB651:				; CODE XREF: .text:004BB636j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*2]
		xor	ecx, ecx
		mov	[ebx+eax*4+2590h], ecx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 18h
		jl	loc_4BB5D1
		push	1		; follow
		push	0		; nexp
		push	0		; _name
		push	0		; rettype
		lea	eax, [ebx+2588h]
		push	eax		; adec
		push	0		; pd
		mov	edx, [ebx+2474h]
		push	edx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	[ebx+8CA8h], eax
		cmp	dword ptr [ebx+8CA8h], 0
		jle	short loc_4BB6C1
		mov	ecx, [ebx+2468h]
		mov	[ebx+2584h], ecx
		mov	eax, [ebx+2468h]
		sub	eax, 4
		mov	[ebx+8CACh], eax

loc_4BB6C1:				; CODE XREF: .text:004BB5A1j
					; .text:004BB5AEj ...
		cmp	dword ptr [ebx+8CACh], 0
		jz	short loc_4BB6EE
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	edx, [ebx+8CACh]
		jnz	short loc_4BB6EE
		mov	ecx, [ebp+8]
		mov	edi, 1
		mov	word ptr [ecx],	18h
		mov	eax, [ebp+0Ch]
		mov	byte ptr [eax],	60h

loc_4BB6EE:				; CODE XREF: .text:004BB6C8j
					; .text:004BB6D9j
		mov	eax, [ebp-2Ch]
		cmp	eax, [ebx+2134h]
		jnb	short loc_4BB702
		mov	dword ptr [ebp-18h], 2
		jmp	short loc_4BB72C
; ---------------------------------------------------------------------------

loc_4BB702:				; CODE XREF: .text:004BB6F7j
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	edx, [ebx+2470h]
		jz	short loc_4BB71C
		cmp	dword ptr [ebx+2470h], 0
		jnz	short loc_4BB725

loc_4BB71C:				; CODE XREF: .text:004BB711j
		mov	dword ptr [ebp-18h], 1
		jmp	short loc_4BB72C
; ---------------------------------------------------------------------------

loc_4BB725:				; CODE XREF: .text:004BB71Aj
		mov	dword ptr [ebp-18h], 2

loc_4BB72C:				; CODE XREF: .text:004BB700j
					; .text:004BB723j
		cmp	dword ptr [ebp-34h], 0
		jz	loc_4BB7C9
		push	offset aReturnFrom ; "RETURN from "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		mov	eax, edi
		sub	ecx, edi
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	edx, 100h
		mov	ecx, edi
		sub	edx, edi
		push	0		; comment
		sub	edx, [ebp-10h]
		add	ecx, ecx
		push	edx		; nsymb
		add	ecx, [ebp+8]
		mov	eax, [ebp-10h]
		add	eax, eax
		add	ecx, eax
		push	ecx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, [ebp-34h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	[ebp-10h], eax
		push	offset aTo	; " to "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		mov	eax, edi
		sub	ecx, edi
		add	eax, eax
		sub	ecx, [ebp-10h]
		push	ecx		; n
		add	eax, [ebp+8]
		mov	edx, [ebp-10h]
		add	edx, edx
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-10h], eax
		jmp	short loc_4BB7F0
; ---------------------------------------------------------------------------

loc_4BB7C9:				; CODE XREF: .text:004BB730j
		push	offset aReturnTo ; "RETURN to "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		mov	eax, edi
		sub	ecx, edi
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-10h], eax

loc_4BB7F0:				; CODE XREF: .text:004BB7C7j
		mov	edx, [ebp-10h]
		push	edx		; n
		mov	ecx, [ebp-18h]
		push	ecx		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	edi, [ebp-10h]
		add	esp, 0Ch
		mov	edx, 100h
		mov	ecx, edi
		sub	edx, edi
		add	ecx, ecx
		push	edx		; nsymb
		add	ecx, [ebp+8]
		push	ecx		; symb
		push	20408h		; addrmode
		mov	eax, [ebp-38h]
		push	eax		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4BB85B
		mov	edx, 100h
		mov	ecx, edi
		sub	edx, edi
		push	0		; comment
		push	edx		; nsymb
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp-38h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	[ebp-10h], eax

loc_4BB85B:				; CODE XREF: .text:004BB831j
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4BB87A
		mov	edx, [ebp-10h]
		push	edx		; n
		mov	ecx, [ebp-18h]
		push	ecx		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-10h]

loc_4BB87A:				; CODE XREF: .text:004BB594j
					; .text:004BB85Fj
		test	edi, edi
		jnz	short loc_4BB8DF
		mov	word ptr [ebp-418h], 0
		lea	edx, [ebp-418h]
		push	edx		; comment
		push	100h		; nsymb
		mov	ecx, [ebp+8]
		push	ecx		; symb
		push	8F27009h	; mode
		push	0		; amod
		mov	eax, [ebp-38h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4BB8CA
		lea	eax, [ebp-418h]
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax

loc_4BB8CA:				; CODE XREF: .text:004BB8AEj
		test	edi, edi
		jle	short loc_4BB8DF
		push	edi		; n
		mov	eax, [ebp-14h]
		push	eax		; c
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_4BB8DF:				; CODE XREF: .text:004BB375j
					; .text:004BB387j ...
		mov	eax, [ebp+10h]
		mov	ecx, [ebx+18F8h]
		or	ecx, 300h
		or	[eax], ecx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BB8F5:				; CODE XREF: .text:004BB246j
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 8
		jnz	loc_4BC24C
		mov	ecx, [ebx+20h]
		cmp	ecx, [ebx+1900h]
		jnb	loc_4BC24C
		mov	eax, [esi+284h]
		add	eax, [ebx+20h]
		mov	[ebp-30h], eax
		cmp	dword ptr [ebx+1910h], 0
		jz	loc_4BBA12
		mov	edx, [ebx+1910h]
		mov	ecx, [ebx+20h]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 60h
		sub	eax, 20h
		jz	short loc_4BB94D
		sub	eax, 20h
		jz	short loc_4BB963
		sub	eax, 20h
		jz	short loc_4BB958
		jmp	short loc_4BB96E
; ---------------------------------------------------------------------------

loc_4BB94D:				; CODE XREF: .text:004BB93Fj
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 18h
		jmp	short loc_4BB977
; ---------------------------------------------------------------------------

loc_4BB958:				; CODE XREF: .text:004BB949j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 19h
		jmp	short loc_4BB977
; ---------------------------------------------------------------------------

loc_4BB963:				; CODE XREF: .text:004BB944j
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 1Ch
		jmp	short loc_4BB977
; ---------------------------------------------------------------------------

loc_4BB96E:				; CODE XREF: .text:004BB94Bj
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 1

loc_4BB977:				; CODE XREF: .text:004BB956j
					; .text:004BB961j ...
		mov	ecx, [ebp+0Ch]
		mov	byte ptr [ecx+edi], 60h
		inc	edi
		mov	eax, [ebx+1910h]
		mov	edx, [ebx+20h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Eh	; switch 31 cases
		ja	short loc_4BBA01 ; jumptable 004BB99B default case
		mov	cl, ds:byte_4BB9A2[ecx]
		jmp	ds:off_4BB9C1[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_4BB9A2	db	0,     4,     4,     0 ; DATA XREF: .text:004BB995r
		db	3,     3,     3,     3 ; indirect table	for switch statement
		db	3,     3,     3,     3
		db	3,     3,     0,     0
		db	3,     0,     0,     0
		db	0,     0,     0,     0
		db	3,     2,     1,     0
		db	3,     2,     1
off_4BB9C1	dd offset loc_4BBA01	; DATA XREF: .text:004BB99Br
		dd offset loc_4BB9F6	; jump table for switch	statement
		dd offset loc_4BB9EB
		dd offset loc_4BB9E0
		dd offset loc_4BB9D5
; ---------------------------------------------------------------------------

loc_4BB9D5:				; CODE XREF: .text:004BB99Bj
					; DATA XREF: .text:off_4BB9C1o
		mov	eax, [ebp+8]	; jumptable 004BB99B cases 1,2
		mov	word ptr [eax+edi*2], 7
		jmp	short loc_4BBA0A
; ---------------------------------------------------------------------------

loc_4BB9E0:				; CODE XREF: .text:004BB99Bj
					; DATA XREF: .text:off_4BB9C1o
		mov	edx, [ebp+8]	; jumptable 004BB99B cases 4-13,16,24,28
		mov	word ptr [edx+edi*2], 3
		jmp	short loc_4BBA0A
; ---------------------------------------------------------------------------

loc_4BB9EB:				; CODE XREF: .text:004BB99Bj
					; DATA XREF: .text:off_4BB9C1o
		mov	ecx, [ebp+8]	; jumptable 004BB99B cases 25,29
		mov	word ptr [ecx+edi*2], 5
		jmp	short loc_4BBA0A
; ---------------------------------------------------------------------------

loc_4BB9F6:				; CODE XREF: .text:004BB99Bj
					; DATA XREF: .text:off_4BB9C1o
		mov	eax, [ebp+8]	; jumptable 004BB99B cases 26,30
		mov	word ptr [eax+edi*2], 6
		jmp	short loc_4BBA0A
; ---------------------------------------------------------------------------

loc_4BBA01:				; CODE XREF: .text:004BB993j
					; .text:004BB99Bj
					; DATA XREF: ...
		mov	edx, [ebp+8]	; jumptable 004BB99B default case
		mov	word ptr [edx+edi*2], 1

loc_4BBA0A:				; CODE XREF: .text:004BB9DEj
					; .text:004BB9E9j ...
		mov	ecx, [ebp+0Ch]
		mov	byte ptr [ecx+edi], 60h
		inc	edi

loc_4BBA12:				; CODE XREF: .text:004BB925j
		cmp	dword_5BE6A8, 0
		jz	loc_4BBC19
		test	byte ptr [esi+0Ch], 2
		jnz	loc_4BBC19
		mov	dword ptr [ebp-4Ch], 0FFFFFFFFh
		xor	eax, eax
		mov	[ebp-50h], eax
		cmp	dword ptr [ebx+1910h], 0
		jz	loc_4BBB21
		mov	edx, [ebx+1910h]
		mov	ecx, [ebx+20h]
		cmp	byte ptr [edx+ecx], 0
		jz	loc_4BBB21
		mov	eax, [ebp-30h]
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-6Ch], eax
		test	eax, eax
		jz	loc_4BBB21
		jmp	loc_4BBB11
; ---------------------------------------------------------------------------

loc_4BBA6F:				; CODE XREF: .text:004BBB19j
		mov	edx, [ebp-6Ch]
		cmp	dword ptr [edx+4], 0
		jz	loc_4BBB0D
		mov	ecx, [ebp-6Ch]
		cmp	byte ptr [ecx+8], 1
		jz	short loc_4BBABB
		mov	eax, [ebp-6Ch]
		cmp	byte ptr [eax+8], 2
		jz	short loc_4BBABB
		mov	edx, [ebp-6Ch]
		cmp	byte ptr [edx+8], 3
		jz	short loc_4BBABB
		mov	ecx, [ebp-6Ch]
		cmp	byte ptr [ecx+8], 4
		jz	short loc_4BBABB
		mov	eax, [ebp-6Ch]
		cmp	byte ptr [eax+8], 8
		jz	short loc_4BBABB
		mov	edx, [ebp-6Ch]
		cmp	byte ptr [edx+8], 9
		jz	short loc_4BBABB
		mov	ecx, [ebp-6Ch]
		cmp	byte ptr [ecx+8], 0Ah
		jnz	short loc_4BBB0D

loc_4BBABB:				; CODE XREF: .text:004BBA83j
					; .text:004BBA8Cj ...
		mov	eax, [ebp-6Ch]
		add	eax, 4
		mov	[ebp-84h], eax
		mov	edx, [ebp-84h]
		mov	ecx, [edx]
		cmp	ecx, [ebp-4Ch]
		jbe	short loc_4BBAD9
		lea	eax, [ebp-4Ch]
		jmp	short loc_4BBADF
; ---------------------------------------------------------------------------

loc_4BBAD9:				; CODE XREF: .text:004BBAD2j
		mov	eax, [ebp-84h]

loc_4BBADF:				; CODE XREF: .text:004BBAD7j
		mov	edx, [eax]
		mov	[ebp-4Ch], edx
		mov	ecx, [ebp-6Ch]
		add	ecx, 4
		mov	[ebp-88h], ecx
		mov	eax, [ebp-88h]
		mov	edx, [eax]
		cmp	edx, [ebp-50h]
		jnb	short loc_4BBB02
		lea	ecx, [ebp-50h]
		jmp	short loc_4BBB08
; ---------------------------------------------------------------------------

loc_4BBB02:				; CODE XREF: .text:004BBAFBj
		mov	ecx, [ebp-88h]

loc_4BBB08:				; CODE XREF: .text:004BBB00j
		mov	eax, [ecx]
		mov	[ebp-50h], eax

loc_4BBB0D:				; CODE XREF: .text:004BBA76j
					; .text:004BBAB9j
		add	dword ptr [ebp-6Ch], 9

loc_4BBB11:				; CODE XREF: .text:004BBA6Aj
		mov	edx, [ebp-6Ch]
		mov	eax, [edx]
		cmp	eax, [ebp-30h]
		jz	loc_4BBA6F
		jmp	short loc_4BBB57
; ---------------------------------------------------------------------------

loc_4BBB21:				; CODE XREF: .text:004BBA3Cj
					; .text:004BBA4Fj ...
		mov	edx, [ebx+3Ch]
		and	edx, 1Fh
		cmp	edx, 6
		jz	short loc_4BBB42
		mov	ecx, [ebx+3Ch]
		and	ecx, 1Fh
		cmp	ecx, 8
		jz	short loc_4BBB42
		mov	eax, [ebx+3Ch]
		and	eax, 1Fh
		cmp	eax, 9
		jnz	short loc_4BBB57

loc_4BBB42:				; CODE XREF: .text:004BBB2Aj
					; .text:004BBB35j
		cmp	dword ptr [ebx+68h], 0
		jz	short loc_4BBB57
		cmp	dword ptr [ebx+5Ch], 0
		jnz	short loc_4BBB57
		mov	edx, [ebx+68h]
		mov	[ebp-50h], edx
		mov	[ebp-4Ch], edx

loc_4BBB57:				; CODE XREF: .text:004BBB1Fj
					; .text:004BBB40j ...
		cmp	dword ptr [ebx+190Ch], 0
		jz	short loc_4BBB91
		mov	eax, [ebx+190Ch]
		mov	ecx, [eax]
		cmp	ecx, [ebp-4Ch]
		ja	short loc_4BBB83
		mov	eax, [ebx+190Ch]
		mov	ecx, [ebx+190Ch]
		mov	edx, [eax]
		add	edx, [ecx+4]
		cmp	edx, [ebp-50h]
		ja	short loc_4BBB91

loc_4BBB83:				; CODE XREF: .text:004BBB6Bj
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 11h
		jmp	loc_4BBC11
; ---------------------------------------------------------------------------

loc_4BBB91:				; CODE XREF: .text:004BBB5Ej
					; .text:004BBB81j
		mov	edx, [ebp-4Ch]
		cmp	edx, [ebp-30h]
		jnb	short loc_4BBBBF
		mov	ecx, [ebp-50h]
		cmp	ecx, [ebp-30h]
		ja	short loc_4BBBBF
		mov	eax, [ebp-4Ch]
		cmp	eax, [ebp-50h]
		jnz	short loc_4BBBB4
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 10h
		jmp	short loc_4BBC11
; ---------------------------------------------------------------------------

loc_4BBBB4:				; CODE XREF: .text:004BBBA7j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 13h
		jmp	short loc_4BBC11
; ---------------------------------------------------------------------------

loc_4BBBBF:				; CODE XREF: .text:004BBB97j
					; .text:004BBB9Fj
		mov	eax, [ebp-4Ch]
		cmp	eax, [ebp-30h]
		jnb	short loc_4BBBDA
		mov	edx, [ebp-50h]
		cmp	edx, [ebp-30h]
		jbe	short loc_4BBBDA
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 14h
		jmp	short loc_4BBC11
; ---------------------------------------------------------------------------

loc_4BBBDA:				; CODE XREF: .text:004BBBC5j
					; .text:004BBBCDj
		mov	eax, [ebp-4Ch]
		cmp	eax, [ebp-30h]
		jb	short loc_4BBC08
		mov	edx, [ebp-50h]
		cmp	edx, [ebp-30h]
		jbe	short loc_4BBC08
		mov	ecx, [ebp-4Ch]
		cmp	ecx, [ebp-50h]
		jnz	short loc_4BBBFD
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 12h
		jmp	short loc_4BBC11
; ---------------------------------------------------------------------------

loc_4BBBFD:				; CODE XREF: .text:004BBBF0j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 15h
		jmp	short loc_4BBC11
; ---------------------------------------------------------------------------

loc_4BBC08:				; CODE XREF: .text:004BBBE0j
					; .text:004BBBE8j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 1

loc_4BBC11:				; CODE XREF: .text:004BBB8Cj
					; .text:004BBBB2j ...
		mov	eax, [ebp+0Ch]
		mov	byte ptr [eax+edi], 61h
		inc	edi

loc_4BBC19:				; CODE XREF: .text:004BBA19j
					; .text:004BBA23j
		cmp	dword_5BE6AC, 0
		jz	loc_4BC085
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4BC085
		cmp	dword ptr [esi+298h], 0
		jnz	loc_4BC085
		test	byte ptr [esi+0Ch], 2
		jnz	loc_4BC085
		mov	edx, [ebp+0Ch]
		mov	byte ptr [edx+edi], 60h
		cmp	dword ptr [ebx+2118h], 0
		jle	loc_4BBDBF
		jmp	short loc_4BBC63
; ---------------------------------------------------------------------------

loc_4BBC5D:				; CODE XREF: .text:004BBC81j
		inc	dword ptr [ebx+211Ch]

loc_4BBC63:				; CODE XREF: .text:004BBC5Bj
		mov	ecx, [ebx+211Ch]
		cmp	ecx, [ebx+2118h]
		jge	short loc_4BBC83
		mov	eax, [ebx+211Ch]
		mov	edx, [ebx+eax*4+1918h]
		cmp	edx, [ebp-30h]
		jb	short loc_4BBC5D

loc_4BBC83:				; CODE XREF: .text:004BBC6Fj
		mov	ecx, [esi+288h]
		cmp	ecx, [ebp-30h]
		jnz	short loc_4BBCDB
		mov	eax, [esi+288h]
		cmp	eax, [ebx+1918h]
		jnb	short loc_4BBCAA
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 27h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBCAA:				; CODE XREF: .text:004BBC9Aj
		mov	ecx, [ebx+2118h]
		mov	eax, [ebx+ecx*4+1914h]
		cmp	eax, [esi+288h]
		jnb	short loc_4BBCCD
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 28h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBCCD:				; CODE XREF: .text:004BBCBDj
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 29h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBCDB:				; CODE XREF: .text:004BBC8Cj
		mov	eax, [ebx+211Ch]
		cmp	eax, [ebx+2118h]
		jge	loc_4BBD70
		mov	edx, [ebx+211Ch]
		mov	ecx, [ebx+edx*4+1918h]
		cmp	ecx, [ebp-30h]
		jnz	short loc_4BBD70
		mov	eax, [esi+288h]
		cmp	eax, [ebp-30h]
		jbe	short loc_4BBD21
		cmp	dword ptr [ebx+211Ch], 0
		jnz	short loc_4BBD21
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 23h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBD21:				; CODE XREF: .text:004BBD08j
					; .text:004BBD11j
		mov	ecx, [esi+288h]
		cmp	ecx, [ebp-30h]
		jnb	short loc_4BBD49
		mov	eax, [ebx+2118h]
		dec	eax
		cmp	eax, [ebx+211Ch]
		jnz	short loc_4BBD49
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 21h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBD49:				; CODE XREF: .text:004BBD2Aj
					; .text:004BBD39j
		mov	ecx, [esi+288h]
		cmp	ecx, [ebp-30h]
		jbe	short loc_4BBD62
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 26h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBD62:				; CODE XREF: .text:004BBD52j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 25h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBD70:				; CODE XREF: .text:004BBCE7j
					; .text:004BBCFDj
		mov	ecx, [ebp-30h]
		cmp	ecx, [ebx+1918h]
		jbe	short loc_4BBD86
		mov	eax, [ebp-30h]
		cmp	eax, [esi+288h]
		jb	short loc_4BBDA3

loc_4BBD86:				; CODE XREF: .text:004BBD79j
		mov	edx, [ebp-30h]
		cmp	edx, [esi+288h]
		jbe	short loc_4BBDB1
		mov	ecx, [ebx+2118h]
		mov	eax, [ebx+ecx*4+1914h]
		cmp	eax, [ebp-30h]
		jbe	short loc_4BBDB1

loc_4BBDA3:				; CODE XREF: .text:004BBD84j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 22h
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBDB1:				; CODE XREF: .text:004BBD8Fj
					; .text:004BBDA1j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 1
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBDBF:				; CODE XREF: .text:004BBC55j
		mov	eax, [esi]
		cmp	eax, [ebx+2124h]
		ja	loc_4BBEC9
		mov	edx, [esi]
		add	edx, [esi+4]
		cmp	edx, [ebx+2124h]
		jbe	loc_4BBEC9
		mov	ecx, [ebp-30h]
		cmp	ecx, [esi+288h]
		jnz	short loc_4BBE29
		mov	eax, [ebx+2124h]
		cmp	eax, [ebp-30h]
		jnb	short loc_4BBE02
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 21h
		jmp	loc_4BBEAB
; ---------------------------------------------------------------------------

loc_4BBE02:				; CODE XREF: .text:004BBDF2j
		mov	ecx, [ebx+2124h]
		cmp	ecx, [ebp-30h]
		jbe	short loc_4BBE1B
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 23h
		jmp	loc_4BBEAB
; ---------------------------------------------------------------------------

loc_4BBE1B:				; CODE XREF: .text:004BBE0Bj
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 1
		jmp	loc_4BBEAB
; ---------------------------------------------------------------------------

loc_4BBE29:				; CODE XREF: .text:004BBDE7j
		mov	ecx, [ebx+2124h]
		cmp	ecx, [ebp-30h]
		jnz	short loc_4BBE6B
		mov	eax, [ebp-30h]
		cmp	eax, [esi+288h]
		jnb	short loc_4BBE4A
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 27h
		jmp	short loc_4BBEAB
; ---------------------------------------------------------------------------

loc_4BBE4A:				; CODE XREF: .text:004BBE3Dj
		mov	ecx, [ebp-30h]
		cmp	ecx, [esi+288h]
		jbe	short loc_4BBE60
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 28h
		jmp	short loc_4BBEAB
; ---------------------------------------------------------------------------

loc_4BBE60:				; CODE XREF: .text:004BBE53j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 1
		jmp	short loc_4BBEAB
; ---------------------------------------------------------------------------

loc_4BBE6B:				; CODE XREF: .text:004BBE32j
		mov	ecx, [ebp-30h]
		cmp	ecx, [ebx+2124h]
		jbe	short loc_4BBE81
		mov	eax, [ebp-30h]
		cmp	eax, [esi+288h]
		jb	short loc_4BBE97

loc_4BBE81:				; CODE XREF: .text:004BBE74j
		mov	edx, [ebp-30h]
		cmp	edx, [esi+288h]
		jbe	short loc_4BBEA2
		mov	ecx, [ebp-30h]
		cmp	ecx, [ebx+2124h]
		jnb	short loc_4BBEA2

loc_4BBE97:				; CODE XREF: .text:004BBE7Fj
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 22h
		jmp	short loc_4BBEAB
; ---------------------------------------------------------------------------

loc_4BBEA2:				; CODE XREF: .text:004BBE8Aj
					; .text:004BBE95j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 1

loc_4BBEAB:				; CODE XREF: .text:004BBDFDj
					; .text:004BBE16j ...
		mov	ecx, [ebp+0Ch]
		cmp	dword_5BE6B0, 0
		jz	short loc_4BBEBF
		mov	al, [ebx+2128h]
		jmp	short loc_4BBEC1
; ---------------------------------------------------------------------------

loc_4BBEBF:				; CODE XREF: .text:004BBEB5j
		mov	al, 1

loc_4BBEC1:				; CODE XREF: .text:004BBEBDj
		or	[ecx+edi], al
		jmp	loc_4BC084
; ---------------------------------------------------------------------------

loc_4BBEC9:				; CODE XREF: .text:004BBDC7j
					; .text:004BBDD8j
		cmp	dword ptr [ebx+2120h], 0
		jz	loc_4BC07B
		jmp	short loc_4BBF1D
; ---------------------------------------------------------------------------

loc_4BBED8:				; CODE XREF: .text:004BBF2Bj
		mov	edx, [ebx+2120h]
		cmp	byte ptr [edx+8], 1
		jb	short loc_4BBEF0
		mov	ecx, [ebx+2120h]
		cmp	byte ptr [ecx+8], 4
		jbe	short loc_4BBF08

loc_4BBEF0:				; CODE XREF: .text:004BBEE2j
		mov	eax, [ebx+2120h]
		cmp	byte ptr [eax+8], 8
		jb	short loc_4BBF16
		mov	edx, [ebx+2120h]
		cmp	byte ptr [edx+8], 0Ah
		ja	short loc_4BBF16

loc_4BBF08:				; CODE XREF: .text:004BBEEEj
		mov	ecx, [ebx+2120h]
		mov	eax, [ecx+4]
		cmp	eax, [ebp-30h]
		jnb	short loc_4BBF2D

loc_4BBF16:				; CODE XREF: .text:004BBEFAj
					; .text:004BBF06j
		add	dword ptr [ebx+2120h], 9

loc_4BBF1D:				; CODE XREF: .text:004BBED6j
		mov	edx, [ebx+2120h]
		mov	ecx, [edx]
		cmp	ecx, [esi+288h]
		jz	short loc_4BBED8

loc_4BBF2D:				; CODE XREF: .text:004BBF14j
		mov	eax, [ebp-30h]
		cmp	eax, [esi+288h]
		jnz	short loc_4BBF9C
		mov	edx, [ebx+212Ch]
		cmp	edx, [ebp-30h]
		jnb	short loc_4BBF5C
		mov	ecx, [ebx+2130h]
		cmp	ecx, [ebp-30h]
		jbe	short loc_4BBF5C
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 24h
		jmp	loc_4BC060
; ---------------------------------------------------------------------------

loc_4BBF5C:				; CODE XREF: .text:004BBF41j
					; .text:004BBF4Cj
		mov	edx, [ebx+212Ch]
		cmp	edx, [ebp-30h]
		jnb	short loc_4BBF75
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 21h
		jmp	loc_4BC060
; ---------------------------------------------------------------------------

loc_4BBF75:				; CODE XREF: .text:004BBF65j
		mov	eax, [ebx+2130h]
		cmp	eax, [ebp-30h]
		jbe	short loc_4BBF8E
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 23h
		jmp	loc_4BC060
; ---------------------------------------------------------------------------

loc_4BBF8E:				; CODE XREF: .text:004BBF7Ej
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 1
		jmp	loc_4BC060
; ---------------------------------------------------------------------------

loc_4BBF9C:				; CODE XREF: .text:004BBF36j
		mov	eax, [ebx+2120h]
		mov	edx, [eax]
		cmp	edx, [esi+288h]
		jnz	short loc_4BC020
		mov	ecx, [ebx+2120h]
		mov	eax, [ecx+4]
		cmp	eax, [ebp-30h]
		jnz	short loc_4BC020
		mov	edx, [ebp-30h]
		cmp	edx, [esi+288h]
		jnb	short loc_4BBFDE
		mov	ecx, [ebx+212Ch]
		cmp	ecx, [ebp-30h]
		jnb	short loc_4BBFDE
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 2Ah
		jmp	loc_4BC060
; ---------------------------------------------------------------------------

loc_4BBFDE:				; CODE XREF: .text:004BBFC3j
					; .text:004BBFCEj
		mov	edx, [ebp-30h]
		cmp	edx, [esi+288h]
		jnb	short loc_4BBFF4
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 27h
		jmp	short loc_4BC060
; ---------------------------------------------------------------------------

loc_4BBFF4:				; CODE XREF: .text:004BBFE7j
		mov	eax, [ebp-30h]
		cmp	eax, [esi+288h]
		jbe	short loc_4BC015
		mov	edx, [ebx+2130h]
		cmp	edx, [ebp-30h]
		jbe	short loc_4BC015
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 2Bh
		jmp	short loc_4BC060
; ---------------------------------------------------------------------------

loc_4BC015:				; CODE XREF: .text:004BBFFDj
					; .text:004BC008j
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 28h
		jmp	short loc_4BC060
; ---------------------------------------------------------------------------

loc_4BC020:				; CODE XREF: .text:004BBFAAj
					; .text:004BBFB8j
		mov	edx, [ebp-30h]
		cmp	edx, [ebx+212Ch]
		jbe	short loc_4BC036
		mov	ecx, [ebp-30h]
		cmp	ecx, [esi+288h]
		jb	short loc_4BC04C

loc_4BC036:				; CODE XREF: .text:004BC029j
		mov	eax, [ebp-30h]
		cmp	eax, [esi+288h]
		jbe	short loc_4BC057
		mov	edx, [ebp-30h]
		cmp	edx, [ebx+2130h]
		jnb	short loc_4BC057

loc_4BC04C:				; CODE XREF: .text:004BC034j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 22h
		jmp	short loc_4BC060
; ---------------------------------------------------------------------------

loc_4BC057:				; CODE XREF: .text:004BC03Fj
					; .text:004BC04Aj
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 1

loc_4BC060:				; CODE XREF: .text:004BBF57j
					; .text:004BBF70j ...
		mov	edx, [ebp+0Ch]
		cmp	dword_5BE6B0, 0
		jz	short loc_4BC074
		mov	cl, [ebx+2128h]
		jmp	short loc_4BC076
; ---------------------------------------------------------------------------

loc_4BC074:				; CODE XREF: .text:004BC06Aj
		mov	cl, 1

loc_4BC076:				; CODE XREF: .text:004BC072j
		or	[edx+edi], cl
		jmp	short loc_4BC084
; ---------------------------------------------------------------------------

loc_4BC07B:				; CODE XREF: .text:004BBED0j
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 1

loc_4BC084:				; CODE XREF: .text:004BBCA5j
					; .text:004BBCC8j ...
		inc	edi

loc_4BC085:				; CODE XREF: .text:004BBC20j
					; .text:004BBC2Aj ...
		lea	edx, [ebx+11F4h]
		mov	eax, 100h
		push	edx		; src
		sub	eax, edi
		mov	edx, edi
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		mov	[ebp-10h], eax
		add	esp, 0Ch
		mov	ecx, [ebx+20h]
		xor	eax, eax
		mov	[ebp-2Ch], ecx
		mov	[ebp-0Ch], eax
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+edi]
		mov	[ebp-98h], ecx
		jmp	loc_4BC21F
; ---------------------------------------------------------------------------

loc_4BC0C3:				; CODE XREF: .text:004BC22Dj
		mov	eax, [ebp-0Ch]
		add	eax, edi
		mov	edx, [ebp+8]
		mov	cx, [edx+eax*2]
		push	ecx		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_4BC0EF
		mov	eax, [ebp-98h]
		mov	edx, [ebp-0Ch]
		mov	byte ptr [eax+edx], 0
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4BC21F
; ---------------------------------------------------------------------------

loc_4BC0EF:				; CODE XREF: .text:004BC0D8j
		push	1		; a3
		mov	ecx, [ebp-2Ch]
		push	ecx		; a2
		push	ebx		; a1
		call	loc_4AFD14
		add	esp, 0Ch
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BC160
		cmp	dword ptr [ebx+1904h], 0
		jz	short loc_4BC160
		jmp	short loc_4BC119
; ---------------------------------------------------------------------------

loc_4BC112:				; CODE XREF: .text:004BC13Aj
		add	dword ptr [ebx+1904h], 4

loc_4BC119:				; CODE XREF: .text:004BC110j
		mov	eax, [ebx+1904h]
		cmp	dword ptr [eax], 0
		jz	short loc_4BC13C
		mov	edx, [ebx+1904h]
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		mov	ecx, [edx]
		add	ecx, 4
		cmp	ecx, eax
		jbe	short loc_4BC112

loc_4BC13C:				; CODE XREF: .text:004BC122j
		mov	edx, [ebx+1904h]
		cmp	dword ptr [edx], 0
		jz	short loc_4BC160
		mov	ecx, [ebx+1904h]
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		mov	eax, [ecx]
		cmp	eax, edx
		ja	short loc_4BC160
		or	dword ptr [ebp-14h], 20h

loc_4BC160:				; CODE XREF: .text:004BC105j
					; .text:004BC10Ej ...
		cmp	dword ptr [ebx+1908h], 0
		jz	loc_4BC1F0
		mov	ecx, [ebx+1908h]
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [ecx+eax]
		sar	edx, 4
		and	edx, 0Fh
		mov	[ebp-8], edx
		mov	ecx, 30h
		cmp	dword ptr [ebp-8], 0Ah
		jl	short loc_4BC192
		add	ecx, 7

loc_4BC192:				; CODE XREF: .text:004BC18Dj
		add	[ebp-8], ecx
		mov	eax, [ebp-0Ch]
		add	eax, edi
		mov	edx, [ebp+8]
		xor	ecx, ecx
		mov	cl, [edx+eax*2]
		cmp	ecx, [ebp-8]
		jz	short loc_4BC1AB
		or	dword ptr [ebp-14h], 1

loc_4BC1AB:				; CODE XREF: .text:004BC1A5j
		mov	eax, [ebp-0Ch]
		inc	eax
		cmp	eax, [ebp-10h]
		jge	short loc_4BC1F0
		mov	edx, [ebx+1908h]
		mov	ecx, [ebp-2Ch]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 0Fh
		mov	[ebp-8], eax
		mov	edx, 30h
		cmp	dword ptr [ebp-8], 0Ah
		jl	short loc_4BC1D6
		add	edx, 7

loc_4BC1D6:				; CODE XREF: .text:004BC1D1j
		add	[ebp-8], edx
		mov	ecx, [ebp-0Ch]
		add	ecx, edi
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	dl, [eax+ecx*2+2]
		cmp	edx, [ebp-8]
		jz	short loc_4BC1F0
		or	dword ptr [ebp-14h], 1

loc_4BC1F0:				; CODE XREF: .text:004BC167j
					; .text:004BC1B2j ...
		mov	ecx, [ebp-98h]
		mov	eax, [ebp-0Ch]
		mov	dl, [ebp-14h]
		mov	[ecx+eax], dl
		inc	dword ptr [ebp-0Ch]
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebp-10h]
		jge	short loc_4BC21C
		mov	eax, [ebp-98h]
		mov	edx, [ebp-0Ch]
		mov	cl, [ebp-14h]
		mov	[eax+edx], cl
		inc	dword ptr [ebp-0Ch]

loc_4BC21C:				; CODE XREF: .text:004BC208j
		inc	dword ptr [ebp-2Ch]

loc_4BC21F:				; CODE XREF: .text:004BC0BEj
					; .text:004BC0EAj
		mov	eax, [ebp-2Ch]
		cmp	eax, [ebx+24h]
		jnb	short loc_4BC233
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-10h]
		jl	loc_4BC0C3

loc_4BC233:				; CODE XREF: .text:004BC225j
		add	edi, [ebp-10h]
		mov	ecx, [ebx+18F8h]
		or	ecx, 100h
		mov	eax, [ebp+10h]
		mov	[eax], ecx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BC24C:				; CODE XREF: .text:004BB8FDj
					; .text:004BB90Cj
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 9
		jnz	loc_4BC4C2
		mov	ecx, [ebx+20h]
		cmp	ecx, [ebx+1900h]
		jnb	loc_4BC4C2
		cmp	dword ptr [ebx+4], 0C0000h
		jnz	short loc_4BC2D4
		cmp	dword_5CBB98, 0
		jnz	short loc_4BC299
		cmp	dword_5CBBAC, 0
		jz	short loc_4BC2D4
		cmp	dword ptr [ebx+190Ch], 0
		jz	short loc_4BC2D4
		mov	eax, [ebx+190Ch]
		test	byte ptr [eax+0Bh], 10h
		jz	short loc_4BC2D4

loc_4BC299:				; CODE XREF: .text:004BC279j
		cmp	dword ptr [ebx+1910h], 0
		jz	short loc_4BC2C3
		mov	edx, [ebx+1910h]
		mov	ecx, [ebx+20h]
		test	byte ptr [edx+ecx], 80h
		jz	short loc_4BC2C3
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 4
		mov	edx, [ebp+0Ch]
		mov	byte ptr [edx+edi], 61h
		jmp	short loc_4BC2D3
; ---------------------------------------------------------------------------

loc_4BC2C3:				; CODE XREF: .text:004BC2A0j
					; .text:004BC2AFj
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 20h
		mov	eax, [ebp+0Ch]
		mov	byte ptr [eax+edi], 0

loc_4BC2D3:				; CODE XREF: .text:004BC2C1j
		inc	edi

loc_4BC2D4:				; CODE XREF: .text:004BC270j
					; .text:004BC282j ...
		cmp	dword_5BDD5C, 0
		jz	short loc_4BC32A
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4BC32A
		cmp	dword ptr [ebx+190Ch], 0
		jz	short loc_4BC32A
		test	byte ptr [esi+0Bh], 8
		jnz	short loc_4BC32A
		push	0		; isend
		push	1		; showentry
		mov	edx, [ebp+0Ch]
		mov	ecx, edi
		add	edx, edi
		add	ecx, ecx
		push	edx		; mask
		push	20h		; npat
		add	ecx, [ebp+8]
		push	ecx		; pat
		mov	eax, [esi+284h]
		add	eax, [ebx+20h]
		push	eax		; _addr
		mov	edx, [ebx+190Ch]
		add	edx, 920h
		push	edx		; nd
		call	Getnestingpattern
		add	esp, 1Ch
		add	edi, eax

loc_4BC32A:				; CODE XREF: .text:004BC2DBj
					; .text:004BC2E4j ...
		lea	ecx, [ebx+13F4h]
		mov	eax, 100h
		sub	eax, edi
		push	ecx		; src
		mov	edx, edi
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	loc_4BC4AC
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4BC3FE
		cmp	dword ptr [ebx+1908h], 0
		jz	loc_4BC3FE
		cmp	dword ptr [esi+254h], 1
		jl	short loc_4BC391
		mov	ecx, [esi+254h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		cmp	hilite.hilitemodified[ecx*8], 0
		jz	short loc_4BC3FE

loc_4BC391:				; CODE XREF: .text:004BC374j
		mov	edx, [ebx+24h]
		sub	edx, [ebx+20h]
		push	edx		; n
		mov	ecx, [ebx+20h]
		add	ecx, ebx
		add	ecx, 59E0Ch
		push	ecx		; s2
		mov	eax, [ebx+1908h]
		add	eax, [ebx+20h]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BC3FE
		cmp	dword ptr [esi+6FCh], 0
		jnz	short loc_4BC3E5
		cmp	dword ptr [esi+254h], 0
		jle	short loc_4BC3E5
		mov	edx, [ebp-10h]
		push	edx		; n
		push	15h		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		jmp	loc_4BC4A9
; ---------------------------------------------------------------------------

loc_4BC3E5:				; CODE XREF: .text:004BC3C1j
					; .text:004BC3CAj
		mov	eax, [ebp-10h]
		push	eax		; n
		push	1		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		jmp	loc_4BC4A9
; ---------------------------------------------------------------------------

loc_4BC3FE:				; CODE XREF: .text:004BC35Aj
					; .text:004BC367j ...
		cmp	dword ptr [ebx+1910h], 0
		jz	short loc_4BC471
		mov	ecx, [ebx+1910h]
		mov	eax, [ebx+20h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 3
		jz	short loc_4BC433
		mov	ecx, [ebx+1910h]
		mov	eax, [ebx+20h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 1Fh
		jnz	short loc_4BC471

loc_4BC433:				; CODE XREF: .text:004BC41Bj
		cmp	dword ptr [esi+6FCh], 0
		jnz	short loc_4BC45B
		cmp	dword ptr [esi+254h], 0
		jle	short loc_4BC45B
		mov	ecx, [ebp-10h]
		push	ecx		; n
		push	14h		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_4BC4A9
; ---------------------------------------------------------------------------

loc_4BC45B:				; CODE XREF: .text:004BC43Aj
					; .text:004BC443j
		mov	edx, [ebp-10h]
		push	edx		; n
		push	2		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_4BC4A9
; ---------------------------------------------------------------------------

loc_4BC471:				; CODE XREF: .text:004BC405j
					; .text:004BC431j
		cmp	dword ptr [ebx+16F4h], 0
		jz	short loc_4BC495
		mov	eax, [ebp-10h]
		lea	edx, [ebx+15F4h]
		push	eax		; n
		push	edx		; src
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4BC4A9
; ---------------------------------------------------------------------------

loc_4BC495:				; CODE XREF: .text:004BC478j
		mov	eax, [ebp-10h]
		push	eax		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_4BC4A9:				; CODE XREF: .text:004BC3E0j
					; .text:004BC3F9j ...
		add	edi, [ebp-10h]

loc_4BC4AC:				; CODE XREF: .text:004BC350j
		mov	eax, [ebp+10h]
		mov	ecx, [ebx+18F8h]
		or	ecx, 100h
		mov	[eax], ecx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BC4C2:				; CODE XREF: .text:004BC254j
					; .text:004BC263j
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 0Ah
		jnz	loc_4BCAF3
		mov	ecx, [ebx+20h]
		cmp	ecx, [ebx+1900h]
		jnb	loc_4BCAF3
		cmp	dword ptr [ebx+59A7Ch],	0
		jz	loc_4BC578
		mov	eax, [ebx+20h]
		cmp	eax, [ebx+1900h]
		jnb	short loc_4BC541
		mov	edx, [ebx+59A7Ch]
		mov	ecx, [ebx+20h]
		cmp	dword ptr [edx+ecx*4], 0
		jbe	short loc_4BC541
		mov	eax, [ebx+59A7Ch]
		mov	edx, [ebx+20h]
		mov	ecx, [eax+edx*4]
		mov	eax, edi
		push	ecx
		push	offset a8u_	; "%8u.	"
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0Ch]
		push	edx		; n
		push	1		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_4BC575
; ---------------------------------------------------------------------------

loc_4BC541:				; CODE XREF: .text:004BC4F5j
					; .text:004BC504j
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		push	offset asc_554644 ; "	       "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	ecx, [ebp-0Ch]
		push	ecx		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4BC575:				; CODE XREF: .text:004BC53Fj
		add	edi, [ebp-0Ch]

loc_4BC578:				; CODE XREF: .text:004BC4E6j
		mov	edx, [esi+284h]
		add	edx, [ebx+20h]
		mov	[ebp-30h], edx
		mov	ecx, [esi+8]
		and	ecx, 3000000h
		cmp	ecx, 1000000h
		jnz	loc_4BC641
		cmp	dword ptr [ebx+190Ch], 0
		jz	loc_4BCADD
		lea	eax, [ebp-0Ch]
		lea	edx, [ebp-620h]
		push	eax
		push	edx
		mov	ecx, [ebp-30h]
		push	ecx
		call	loc_4C9D74
		add	esp, 0Ch
		cmp	eax, [ebp-30h]
		jnz	loc_4BCADD
		push	0		; nextent
		push	0		; extent
		lea	eax, [ebp-418h]
		push	0		; fname
		push	eax		; text
		mov	edx, skipspaces
		push	edx		; skipspaces
		lea	eax, [ebp-620h]
		mov	ecx, [ebp-0Ch]
		push	ecx		; line
		push	eax		; path
		mov	edx, [ebx+190Ch]
		mov	ecx, [edx]
		push	ecx		; base
		call	Getsourceline
		add	esp, 20h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jle	loc_4BCADD
		lea	eax, [ebp-418h]
		mov	edx, 100h
		sub	edx, edi
		push	eax		; src
		mov	ecx, edi
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	eax, [ebp-0Ch]
		push	eax		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-0Ch]
		jmp	loc_4BCADD
; ---------------------------------------------------------------------------

loc_4BC641:				; CODE XREF: .text:004BC593j
		xor	ecx, ecx
		mov	[ebp-24h], ecx
		cmp	dword ptr [esi+298h], 0
		jnz	loc_4BC861
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4BC861
		cmp	dword ptr [ebx+1910h], 0
		jz	loc_4BC828
		cmp	dword ptr [ebx+190Ch], 0
		jz	loc_4BC828
		mov	eax, [ebx+1910h]
		mov	edx, [ebx+20h]
		cmp	byte ptr [eax+edx], 0
		jz	loc_4BC828
		cmp	edi, 0FEh
		jge	loc_4BC828
		lea	ecx, [ebp-20h]
		mov	edx, 100h
		push	ecx		; isend
		push	0		; showentry
		mov	eax, [ebp+0Ch]
		sub	edx, edi
		add	eax, edi
		dec	edx
		push	eax		; mask
		mov	[ebp-8Ch], edx
		mov	dword ptr [ebp-90h], 20h
		mov	ecx, [ebp-90h]
		cmp	ecx, [ebp-8Ch]
		jge	short loc_4BC6D0
		lea	eax, [ebp-90h]
		jmp	short loc_4BC6D6
; ---------------------------------------------------------------------------

loc_4BC6D0:				; CODE XREF: .text:004BC6C6j
		lea	eax, [ebp-8Ch]

loc_4BC6D6:				; CODE XREF: .text:004BC6CEj
		mov	edx, [eax]
		mov	ecx, edi
		push	edx		; npat
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; pat
		mov	eax, [ebp-30h]
		push	eax		; _addr
		mov	edx, [ebx+190Ch]
		add	edx, 938h
		push	edx		; nd
		call	Getnestingpattern
		add	esp, 1Ch
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	loc_4BC828
		add	edi, [ebp-10h]
		cmp	dword ptr [ebp-20h], 0
		jz	loc_4BC828
		cmp	edi, 0FCh
		jge	loc_4BC828
		mov	ecx, 100h
		mov	eax, edi
		sub	ecx, edi
		add	eax, eax
		push	ecx		; nname
		add	eax, [ebp+8]
		push	eax		; _name
		push	33h		; type
		mov	edx, [ebp-30h]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4BC77C
		cmp	dword ptr [ebx+68h], 0
		jz	short loc_4BC77C
		mov	ecx, 100h
		mov	eax, edi
		sub	ecx, edi
		push	0		; comment
		push	ecx		; nsymb
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; symb
		push	420400h		; mode
		push	0		; amod
		mov	edx, [ebx+68h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	[ebp-0Ch], eax

loc_4BC77C:				; CODE XREF: .text:004BC745j
					; .text:004BC74Bj
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4BC7E4
		mov	ecx, [ebp-30h]
		push	ecx		; _addr
		mov	eax, [ebx+190Ch]
		add	eax, 950h
		push	eax		; pdat
		call	Findsimpledata
		add	esp, 8
		mov	[ebp-78h], eax
		cmp	dword ptr [ebp-78h], 0
		jz	short loc_4BC7E4
		mov	edx, [ebp-78h]
		movzx	ecx, word ptr [edx+4]
		and	ecx, 3Fh
		cmp	ecx, 20h
		jnz	short loc_4BC7E4
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		push	0		; comment
		push	eax		; nsymb
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; symb
		push	420400h		; mode
		push	0		; amod
		mov	ecx, [ebp-78h]
		mov	eax, [ecx+0Eh]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	[ebp-0Ch], eax

loc_4BC7E4:				; CODE XREF: .text:004BC780j
					; .text:004BC7A1j ...
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4BC80A
		mov	edx, 100h
		mov	ecx, edi
		sub	edx, edi
		push	$CTW0("??? ") ; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4BC80A:				; CODE XREF: .text:004BC7E8j
		mov	eax, [ebp-0Ch]
		push	eax		; n
		push	1		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-0Ch]
		mov	dword ptr [ebp-24h], 1

loc_4BC828:				; CODE XREF: .text:004BC664j
					; .text:004BC671j ...
		mov	ecx, [ebp+0Ch]
		mov	eax, 100h
		add	ecx, edi
		sub	eax, edi
		push	ecx		; s
		mov	edx, edi
		push	eax		; int
		add	edx, edx
		add	edx, [ebp+8]
		lea	ecx, [ebx+28h]
		push	edx		; int
		push	ecx		; int
		mov	eax, [ebp-30h]
		push	eax		; arglist
		call	loc_4AF2B8
		add	esp, 14h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4BC861
		add	edi, [ebp-10h]
		mov	dword ptr [ebp-24h], 1

loc_4BC861:				; CODE XREF: .text:004BC64Dj
					; .text:004BC657j ...
		cmp	dword ptr [esi+298h], 0
		jnz	loc_4BC8F7
		lea	edx, [edi+0Ah]
		cmp	edx, 100h
		jge	short loc_4BC8F7
		xor	ecx, ecx
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_4BC884
		add	ecx, 2

loc_4BC884:				; CODE XREF: .text:004BC87Fj
		mov	eax, 100h
		mov	[ebp-0Ch], ecx
		sub	eax, edi
		mov	edx, edi
		sub	eax, [ebp-0Ch]
		add	edx, edx
		push	eax		; nname
		add	edx, [ebp+8]
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		push	edx		; _name
		push	30h		; type
		mov	eax, [ebp-30h]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4BC8F7
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4BC8D1
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 2Ch
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2+2],	20h

loc_4BC8D1:				; CODE XREF: .text:004BC8BCj
		mov	eax, [ebp-10h]
		add	eax, [ebp-0Ch]
		push	eax		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		mov	ecx, [ebp-10h]
		add	esp, 0Ch
		add	ecx, [ebp-0Ch]
		mov	dword ptr [ebp-24h], 1
		add	edi, ecx

loc_4BC8F7:				; CODE XREF: .text:004BC868j
					; .text:004BC877j ...
		cmp	dword ptr [ebp-24h], 0
		jnz	loc_4BC9A6
		cmp	word ptr [ebx+16F8h], 0
		jz	loc_4BC9A6
		lea	eax, [edi+0Ah]
		cmp	eax, 100h
		jge	loc_4BC9A6
		lea	edx, [ebx+16F8h]
		push	edx		; s
		call	_wcslen
		pop	ecx
		push	eax		; nsrc
		lea	ecx, [ebx+16F8h]
		mov	eax, 100h
		sub	eax, edi
		push	ecx		; src
		mov	edx, edi
		push	eax		; ndest
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	Squeezename
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4BC9A6
		cmp	dword ptr [ebx+1910h], 0
		jz	short loc_4BC988
		mov	ecx, [ebx+1910h]
		mov	eax, [ebx+20h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 8
		jnz	short loc_4BC988
		mov	ecx, [ebp-10h]
		push	ecx		; n
		push	2		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_4BC99C
; ---------------------------------------------------------------------------

loc_4BC988:				; CODE XREF: .text:004BC95Aj
					; .text:004BC970j
		mov	edx, [ebp-10h]
		push	edx		; n
		push	0		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_4BC99C:				; CODE XREF: .text:004BC986j
		add	edi, [ebp-10h]
		mov	dword ptr [ebp-24h], 1

loc_4BC9A6:				; CODE XREF: .text:004BC8FBj
					; .text:004BC909j ...
		cmp	dword ptr [esi+298h], 0
		jnz	loc_4BCA92
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4BCA92
		lea	eax, [edi+2]
		cmp	eax, 100h
		jge	loc_4BCA92
		xor	edx, edx
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_4BC9D6
		add	edx, 2

loc_4BC9D6:				; CODE XREF: .text:004BC9D1j
		mov	ecx, 100h
		mov	[ebp-0Ch], edx
		sub	ecx, edi
		mov	eax, edi
		sub	ecx, [ebp-0Ch]
		add	eax, eax
		push	ecx		; len
		add	eax, [ebp+8]
		mov	edx, [ebp-0Ch]
		add	edx, edx
		add	eax, edx
		push	eax		; comment
		mov	ecx, [ebp-30h]
		push	ecx		; _addr
		mov	eax, [ebx+190Ch]
		push	eax		; pmod
		call	Getanalysercomment
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4BCA38
		mov	edx, 100h
		mov	ecx, edi
		sub	edx, edi
		add	ecx, ecx
		sub	edx, [ebp-0Ch]
		push	edx		; len
		add	ecx, [ebp+8]
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	ecx, eax
		push	ecx		; comment
		mov	edx, [ebp-30h]
		push	edx		; _addr
		call	Getswitchcomment
		add	esp, 0Ch
		mov	[ebp-10h], eax

loc_4BCA38:				; CODE XREF: .text:004BCA0Dj
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4BCA92
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4BCA6C
		mov	ecx, [ebp+8]
		mov	edx, edi
		add	edx, edx
		mov	word ptr [ecx+edi*2], 2Ch
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2+2],	20h
		add	edx, [ebp+8]
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		push	edx		; s
		call	Uncapitalize
		pop	ecx

loc_4BCA6C:				; CODE XREF: .text:004BCA42j
		mov	eax, [ebp-10h]
		add	eax, [ebp-0Ch]
		push	eax		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		mov	ecx, [ebp-10h]
		add	esp, 0Ch
		add	ecx, [ebp-0Ch]
		mov	dword ptr [ebp-24h], 1
		add	edi, ecx

loc_4BCA92:				; CODE XREF: .text:004BC9ADj
					; .text:004BC9B7j ...
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_4BCADD
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		add	edx, edx
		push	eax		; len
		add	edx, [ebp+8]
		push	edx		; comment
		push	4		; typelist
		mov	ecx, [ebp-30h]
		push	ecx		; _addr
		call	Commentaddress
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4BCADD
		mov	eax, [ebp-10h]
		push	eax		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		add	edx, edi
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-10h]
		mov	dword ptr [ebp-24h], 1

loc_4BCADD:				; CODE XREF: .text:004BC5A0j
					; .text:004BC5C0j ...
		mov	eax, [ebp+10h]
		mov	ecx, [ebx+18F8h]
		or	ecx, 300h
		mov	[eax], ecx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BCAF3:				; CODE XREF: .text:004BC4CAj
					; .text:004BC4D9j
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 0Bh
		jnz	loc_4BCE0A
		mov	ecx, [ebx+20h]
		cmp	ecx, [ebx+1900h]
		jnb	loc_4BCE0A
		cmp	dword ptr [ebx+1910h], 0
		jz	short loc_4BCB6D
		mov	eax, [ebx+1910h]
		mov	edx, [ebx+20h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 60h
		sub	ecx, 20h
		jz	short loc_4BCB3B
		sub	ecx, 20h
		jz	short loc_4BCB51
		sub	ecx, 20h
		jz	short loc_4BCB46
		jmp	short loc_4BCB5C
; ---------------------------------------------------------------------------

loc_4BCB3B:				; CODE XREF: .text:004BCB2Dj
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 18h
		jmp	short loc_4BCB65
; ---------------------------------------------------------------------------

loc_4BCB46:				; CODE XREF: .text:004BCB37j
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2], 19h
		jmp	short loc_4BCB65
; ---------------------------------------------------------------------------

loc_4BCB51:				; CODE XREF: .text:004BCB32j
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edi*2], 1Ch
		jmp	short loc_4BCB65
; ---------------------------------------------------------------------------

loc_4BCB5C:				; CODE XREF: .text:004BCB39j
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 1

loc_4BCB65:				; CODE XREF: .text:004BCB44j
					; .text:004BCB4Fj ...
		mov	edx, [ebp+0Ch]
		mov	byte ptr [edx+edi], 60h
		inc	edi

loc_4BCB6D:				; CODE XREF: .text:004BCB17j
		mov	ecx, [esi+284h]
		add	ecx, [ebx+20h]
		mov	[ebp-30h], ecx
		cmp	dword ptr [ebx+59A74h],	0
		jbe	short loc_4BCB94
		mov	eax, [ebp-30h]
		sub	eax, [esi]
		xor	edx, edx
		div	dword ptr [ebx+59A74h]
		mov	[ebp-40h], edx
		jmp	short loc_4BCB9C
; ---------------------------------------------------------------------------

loc_4BCB94:				; CODE XREF: .text:004BCB80j
		mov	ecx, [ebp-30h]
		sub	ecx, [esi]
		mov	[ebp-40h], ecx

loc_4BCB9C:				; CODE XREF: .text:004BCB92j
		mov	eax, [ebp-40h]
		push	eax		; offset
		lea	edx, [esi+4A8h]
		push	edx		; _name
		call	Findstructureitembyoffset
		add	esp, 8
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jl	loc_4BCC4A
		cmp	dword ptr [ebx+59A78h],	0
		jz	short loc_4BCBD3
		mov	ecx, [ebp-30h]
		sub	ecx, [ebp-40h]
		cmp	ecx, [ebx+59A70h]
		jz	short loc_4BCC09

loc_4BCBD3:				; CODE XREF: .text:004BCBC3j
		push	12Ch		; nstr
		lea	eax, [ebx+8CB0h]
		push	eax		; str
		push	0		; item0
		mov	edx, [ebp-30h]
		sub	edx, [ebp-40h]
		push	edx		; _addr
		lea	ecx, [esi+4A8h]
		push	ecx		; _name
		call	Decodestructure
		add	esp, 14h
		mov	[ebx+59A78h], eax
		mov	eax, [ebp-30h]
		sub	eax, [ebp-40h]
		mov	[ebx+59A70h], eax

loc_4BCC09:				; CODE XREF: .text:004BCBD1j
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebx+59A78h]
		jge	short loc_4BCC43
		push	450h		; n
		mov	ecx, [ebp-0Ch]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		shl	ecx, 4
		add	ecx, ebx
		add	ecx, 8CB0h
		push	ecx		; src
		lea	edx, [ebp-0A80h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4BCC4A
; ---------------------------------------------------------------------------

loc_4BCC43:				; CODE XREF: .text:004BCC12j
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh

loc_4BCC4A:				; CODE XREF: .text:004BCBB6j
					; .text:004BCC41j
		cmp	dword ptr [ebp-0Ch], 0
		jl	loc_4BCD67
		lea	ecx, [ebp-0A30h]
		mov	eax, edi
		push	ecx		; src
		push	100h		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		mov	[ebp-10h], eax
		xor	edx, edx
		mov	dl, [ebp-0A72h]
		add	esp, 0Ch
		cmp	edx, [ebp-0A80h]
		jnb	short loc_4BCCD6
		cmp	edi, 0F0h
		jge	short loc_4BCCD6
		xor	ecx, ecx
		mov	eax, [ebp-0A80h]
		mov	cl, [ebp-0A72h]
		xor	edx, edx
		div	ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0Ah
		jge	short loc_4BCCAD
		mov	ecx, $CTW0("") ; ""
		jmp	short loc_4BCCB2
; ---------------------------------------------------------------------------

loc_4BCCAD:				; CODE XREF: .text:004BCCA4j
		mov	ecx, (offset aI__1+6) ;	"."

loc_4BCCB2:				; CODE XREF: .text:004BCCABj
		push	ecx
		mov	edx, edi
		mov	eax, [ebp-8]
		add	edx, edx
		push	eax
		push	offset aIS_6	; "[%i%s]"
		add	edx, [ebp+8]
		mov	eax, [ebp-10h]
		add	eax, eax
		add	edx, eax
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		add	[ebp-10h], eax

loc_4BCCD6:				; CODE XREF: .text:004BCC81j
					; .text:004BCC89j
		mov	edx, [ebp-10h]
		push	edx		; n
		push	2		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-10h]
		cmp	word ptr [ebp-830h], 0
		jz	short loc_4BCD67
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		push	offset asc_554468 ; " =	"
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	ecx, [ebp-10h]
		push	ecx		; n
		push	2		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-830h]
		add	edi, [ebp-10h]
		mov	ecx, 100h
		sub	ecx, edi
		mov	eax, edi
		push	edx		; src
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	edx, [ebp-10h]
		push	edx		; n
		push	0		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, edi
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	edi, [ebp-10h]

loc_4BCD67:				; CODE XREF: .text:004BCC4Ej
					; .text:004BCCF5j
		cmp	dword ptr [esi+298h], 0
		jnz	loc_4BCDF4
		lea	eax, [edi+0Ah]
		cmp	eax, 100h
		jge	short loc_4BCDF4
		xor	edx, edx
		cmp	edi, 1
		jle	short loc_4BCD88
		add	edx, 2

loc_4BCD88:				; CODE XREF: .text:004BCD83j
		mov	ecx, 100h
		mov	[ebp-0Ch], edx
		sub	ecx, edi
		mov	eax, edi
		sub	ecx, [ebp-0Ch]
		add	eax, eax
		push	ecx		; nname
		add	eax, [ebp+8]
		mov	edx, [ebp-0Ch]
		add	edx, edx
		add	eax, edx
		push	eax		; _name
		push	30h		; type
		mov	ecx, [ebp-30h]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4BCDF4
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4BCDD5
		mov	eax, [ebp+8]
		mov	word ptr [eax+edi*2], 2Ch
		mov	edx, [ebp+8]
		mov	word ptr [edx+edi*2+2],	20h

loc_4BCDD5:				; CODE XREF: .text:004BCDC0j
		mov	ecx, [ebp-10h]
		add	ecx, [ebp-0Ch]
		push	ecx		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, edi
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp-10h]
		add	edx, [ebp-0Ch]
		add	edi, edx

loc_4BCDF4:				; CODE XREF: .text:004BCD6Ej
					; .text:004BCD7Cj ...
		mov	eax, [ebp+10h]
		mov	ecx, [ebx+18F8h]
		or	ecx, 300h
		mov	[eax], ecx
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BCE0A:				; CODE XREF: .text:004BCAFBj
					; .text:004BCB0Aj
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 0Ch
		jnz	loc_4BD027
		mov	ecx, [ebx+20h]
		xor	eax, eax
		mov	[ebp-2Ch], ecx
		mov	[ebp-4], eax
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+edi+2]
		mov	[ebp-94h], ecx
		mov	eax, [ebp+8]
		lea	edx, [eax+edi*2+2]
		mov	[ebp-98h], edx
		jmp	loc_4BD00A
; ---------------------------------------------------------------------------

loc_4BCE42:				; CODE XREF: .text:004BD013j
		mov	ecx, [ebp-2Ch]
		cmp	ecx, [ebx+18FCh]
		jnb	loc_4BCF95
		mov	eax, [ebx+20h]
		add	eax, [ebx+59B80h]
		cmp	eax, [ebp-2Ch]
		jbe	loc_4BCF95
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebx+1900h]
		jnb	short loc_4BCED1
		push	1		; n
		mov	eax, edi
		mov	ecx, [ebp-2Ch]
		add	eax, eax
		add	ecx, ebx
		add	ecx, 59E0Ch
		push	ecx		; code
		add	eax, [ebp+8]
		push	eax		; s
		call	HexdumpW
		add	esp, 0Ch
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BCEB6
		mov	edx, [ebx+1908h]
		mov	ecx, [ebp-2Ch]
		mov	al, [edx+ecx]
		mov	edx, [ebp-2Ch]
		cmp	al, [ebx+edx+59E0Ch]
		jz	short loc_4BCEB6
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BCEEF
; ---------------------------------------------------------------------------

loc_4BCEB6:				; CODE XREF: .text:004BCE93j
					; .text:004BCEABj
		mov	ecx, [ebp-2Ch]
		cmp	ecx, [ebx+2134h]
		jnb	short loc_4BCECA
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BCEEF
; ---------------------------------------------------------------------------

loc_4BCECA:				; CODE XREF: .text:004BCEBFj
		xor	eax, eax
		mov	[ebp-14h], eax
		jmp	short loc_4BCEEF
; ---------------------------------------------------------------------------

loc_4BCED1:				; CODE XREF: .text:004BCE6Cj
		mov	edx, [ebp-98h]
		mov	cx, 3Fh
		mov	[edx], cx
		mov	eax, [ebp-98h]
		mov	[eax-2], cx
		mov	dword ptr [ebp-14h], 2

loc_4BCEEF:				; CODE XREF: .text:004BCEB4j
					; .text:004BCEC8j ...
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BCF0B
		push	1		; a3
		mov	edx, [ebp-2Ch]
		push	edx		; a2
		push	ebx		; a1
		call	loc_4AFD14
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BCF0B
		mov	[ebp-14h], eax

loc_4BCF0B:				; CODE XREF: .text:004BCEF3j
					; .text:004BCF06j
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		cmp	eax, [esi+288h]
		jb	short loc_4BCF34
		mov	edx, [esi+284h]
		add	edx, [ebp-2Ch]
		cmp	edx, [esi+28Ch]
		jnb	short loc_4BCF34
		or	dword ptr [ebp-14h], 80h

loc_4BCF34:				; CODE XREF: .text:004BCF1Aj
					; .text:004BCF2Bj
		cmp	dword ptr [ebp+1Ch], 1
		jnz	short loc_4BCFB1
		cmp	dword ptr [ebx+1904h], 0
		jz	short loc_4BCFB1
		jmp	short loc_4BCF4C
; ---------------------------------------------------------------------------

loc_4BCF45:				; CODE XREF: .text:004BCF6Dj
		add	dword ptr [ebx+1904h], 4

loc_4BCF4C:				; CODE XREF: .text:004BCF43j
		mov	ecx, [ebx+1904h]
		cmp	dword ptr [ecx], 0
		jz	short loc_4BCF6F
		mov	eax, [ebx+1904h]
		mov	ecx, [esi+284h]
		add	ecx, [ebp-2Ch]
		mov	edx, [eax]
		add	edx, 4
		cmp	edx, ecx
		jbe	short loc_4BCF45

loc_4BCF6F:				; CODE XREF: .text:004BCF55j
		mov	eax, [ebx+1904h]
		cmp	dword ptr [eax], 0
		jz	short loc_4BCFB1
		mov	edx, [ebx+1904h]
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		mov	ecx, [edx]
		cmp	ecx, eax
		ja	short loc_4BCFB1
		or	dword ptr [ebp-14h], 20h
		jmp	short loc_4BCFB1
; ---------------------------------------------------------------------------

loc_4BCF95:				; CODE XREF: .text:004BCE4Bj
					; .text:004BCE5Dj
		mov	cx, 20h
		mov	edx, [ebp-98h]
		mov	[edx], cx
		xor	edx, edx
		mov	eax, [ebp-98h]
		mov	[eax-2], cx
		mov	[ebp-14h], edx

loc_4BCFB1:				; CODE XREF: .text:004BCF38j
					; .text:004BCF41j ...
		mov	eax, [ebp-4]
		and	eax, 3
		cmp	eax, 3
		jnz	short loc_4BCFCA
		mov	edx, [ebp-98h]
		mov	word ptr [edx+2], 7Ch
		jmp	short loc_4BCFD6
; ---------------------------------------------------------------------------

loc_4BCFCA:				; CODE XREF: .text:004BCFBAj
		mov	ecx, [ebp-98h]
		mov	word ptr [ecx+2], 20h

loc_4BCFD6:				; CODE XREF: .text:004BCFC8j
		mov	al, [ebp-14h]
		mov	edx, [ebp-94h]
		mov	[edx], al
		mov	edx, [ebp-94h]
		mov	[edx-1], al
		mov	edx, [ebp-94h]
		mov	[edx-2], al
		add	edi, 3
		add	dword ptr [ebp-94h], 3
		add	dword ptr [ebp-98h], 6
		inc	dword ptr [ebp-2Ch]
		inc	dword ptr [ebp-4]

loc_4BD00A:				; CODE XREF: .text:004BCE3Dj
		mov	ecx, [ebx+20h]
		add	ecx, [ebx+8]
		cmp	ecx, [ebp-2Ch]
		ja	loc_4BCE42
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 100h
		jmp	loc_4BD1AA
; ---------------------------------------------------------------------------

loc_4BD027:				; CODE XREF: .text:004BCE12j
		mov	edx, [ebp+1Ch]
		cmp	dword ptr [ebx+edx*4+10h], 0Dh
		jnz	loc_4BD1AA
		mov	ecx, [ebx+20h]
		cmp	ecx, [ebx+1900h]
		jnb	loc_4BD1AA
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebx+20h]
		mov	[ebp-2Ch], edx
		mov	ecx, [ebp+0Ch]
		lea	eax, [ecx+edi]
		mov	[ebp-98h], eax
		mov	edx, [ebp+8]
		lea	ecx, [edx+edi*2]
		mov	[ebp-94h], ecx
		jmp	loc_4BD143
; ---------------------------------------------------------------------------

loc_4BD06C:				; CODE XREF: .text:004BD14Cj
		cmp	dword ptr [ebx+1908h], 0
		jz	short loc_4BD0AC
		mov	eax, [ebp-4]
		xor	edx, edx
		mov	dl, [ebx+eax+59A80h]
		push	edx		; n
		mov	ecx, [ebx+1908h]
		add	ecx, [ebp-2Ch]
		push	ecx		; s2
		mov	eax, [ebp-2Ch]
		add	eax, ebx
		add	eax, 59E0Ch
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4BD0AC
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_4BD0C5
; ---------------------------------------------------------------------------

loc_4BD0AC:				; CODE XREF: .text:004BD073j
					; .text:004BD0A1j
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebx+2134h]
		jnb	short loc_4BD0C0
		mov	dword ptr [ebp-14h], 2
		jmp	short loc_4BD0C5
; ---------------------------------------------------------------------------

loc_4BD0C0:				; CODE XREF: .text:004BD0B5j
		xor	ecx, ecx
		mov	[ebp-14h], ecx

loc_4BD0C5:				; CODE XREF: .text:004BD0AAj
					; .text:004BD0BEj
		mov	edx, [ebp-4]
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		xor	ecx, ecx
		mov	cl, [ebx+edx+59A80h]
		add	eax, ecx
		cmp	eax, [esi+288h]
		jbe	short loc_4BD104
		mov	eax, [esi+284h]
		add	eax, [ebp-2Ch]
		cmp	eax, [esi+28Ch]
		jnb	short loc_4BD104
		mov	edx, [ebx+18F8h]
		xor	edx, 80h
		or	[ebp-14h], edx

loc_4BD104:				; CODE XREF: .text:004BD0E2j
					; .text:004BD0F3j
		mov	ecx, [ebp-4]
		mov	edx, [ebp-94h]
		inc	edi
		mov	ax, [ebx+ecx*2+59B84h]
		mov	[edx], ax
		mov	eax, [ebp-98h]
		mov	cl, [ebp-14h]
		mov	[eax], cl
		xor	ecx, ecx
		inc	dword ptr [ebp-98h]
		add	dword ptr [ebp-94h], 2
		mov	edx, [ebp-4]
		mov	cl, [ebx+edx+59A80h]
		add	[ebp-2Ch], ecx
		inc	dword ptr [ebp-4]

loc_4BD143:				; CODE XREF: .text:004BD067j
		mov	eax, [ebp-4]
		cmp	eax, [ebx+59D84h]
		jl	loc_4BD06C
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+edi]
		mov	[ebp-94h], ecx
		mov	eax, [ebp+8]
		lea	edx, [eax+edi*2]
		mov	[ebp-98h], edx
		jmp	short loc_4BD191
; ---------------------------------------------------------------------------

loc_4BD16C:				; CODE XREF: .text:004BD197j
		mov	ecx, [ebp-98h]
		mov	word ptr [ecx],	8
		mov	eax, [ebp-94h]
		mov	byte ptr [eax],	62h
		inc	edi
		inc	dword ptr [ebp-94h]
		add	dword ptr [ebp-98h], 2
		inc	dword ptr [ebp-4]

loc_4BD191:				; CODE XREF: .text:004BD16Aj
		mov	edx, [ebp-4]
		cmp	edx, [ebx+8]
		jl	short loc_4BD16C
		mov	eax, [ebp+10h]
		mov	ecx, [ebx+18F8h]
		or	ecx, 8100h
		mov	[eax], ecx

loc_4BD1AA:				; CODE XREF: .text:004BA763j
					; .text:004BA96Fj ...
		test	byte ptr [esi+0Bh], 8
		jz	short loc_4BD1B9 ; jumptable 004B90B4 default case
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 4000h

loc_4BD1B9:				; CODE XREF: .text:004B90AEj
					; .text:004BA348j ...
		xor	ecx, ecx	; jumptable 004B90B4 default case
		mov	[ebp-4], ecx
		jmp	short loc_4BD1F0
; ---------------------------------------------------------------------------

loc_4BD1C0:				; CODE XREF: .text:004BD1F9j
		mov	eax, [ebp+1Ch]
		push	eax
		mov	edx, [esi+284h]
		add	edx, [ebx+20h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		push	edi
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		push	esi
		mov	ecx, [ebp-4]
		mov	eax, [ebx+ecx*4+59D88h]
		call	eax
		add	esp, 1Ch
		mov	edi, eax
		inc	dword ptr [ebp-4]

loc_4BD1F0:				; CODE XREF: .text:004BD1BEj
		mov	edx, [ebp-4]
		cmp	edx, [ebx+59E08h]
		jl	short loc_4BD1C0
		mov	eax, edi

loc_4BD1FD:				; CODE XREF: .text:004B9095j
					; .text:004B912Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		