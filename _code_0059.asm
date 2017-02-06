.code

; Exported entry 221. _Followcall
; Exported entry 543. Followcall

; ulong	__cdecl	Followcall(ulong _addr)
		public Followcall
Followcall:				; CODE XREF: .text:004085A3p
					; .text:00431E87p ...
		push	ebp		; _Followcall
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_470CD9
		cmp	ebx, 0FFFFFFFFh
		jnz	short loc_470CE0

loc_470CD9:				; CODE XREF: .text:00470CD2j
		mov	eax, ebx
		jmp	loc_470E66
; ---------------------------------------------------------------------------

loc_470CE0:				; CODE XREF: .text:00470CD7j
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		mov	edi, eax
		xor	eax, eax
		mov	[ebp-8], eax
		xor	edx, edx
		mov	[ebp-4], edx

loc_470CF3:				; CODE XREF: .text:00470E5Ej
		push	5		; mode
		push	0Ah		; size
		push	ebx		; _addr
		lea	ecx, [ebp-1Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	esi, eax
		cmp	esi, 2
		jb	loc_470E64
		cmp	byte ptr [ebp-1Ch], 0FFh
		jnz	short loc_470D65
		cmp	byte ptr [ebp-1Bh], 25h
		jnz	short loc_470D65
		cmp	esi, 6
		jb	short loc_470D65
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-1Ah]
		push	eax		; _addr
		lea	edx, [ebp-0Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_470D65
		cmp	dword ptr [ebp-0Ch], 10000h
		jb	short loc_470D65
		cmp	dword ptr [ebp-0Ch], 0FFFF0000h
		jnb	short loc_470D65
		cmp	dword ptr [ebp-0Ch], 80000000h
		jb	short loc_470D5D
		cmp	dword ptr [ebp-0Ch], 8000FFFFh
		jbe	short loc_470D65

loc_470D5D:				; CODE XREF: .text:00470D52j
		mov	ebx, [ebp-0Ch]
		jmp	loc_470E26
; ---------------------------------------------------------------------------

loc_470D65:				; CODE XREF: .text:00470D13j
					; .text:00470D19j ...
		cmp	byte ptr [ebp-1Ch], 0FFh
		jnz	short loc_470DBE
		cmp	byte ptr [ebp-1Bh], 24h
		jnz	short loc_470DBE
		cmp	esi, 7
		jb	short loc_470DBE
		cmp	byte ptr [ebp-1Ah], 25h
		jnz	short loc_470DBE
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-19h]
		push	eax		; _addr
		lea	edx, [ebp-0Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_470DBE
		cmp	dword ptr [ebp-0Ch], 10000h
		jb	short loc_470DBE
		cmp	dword ptr [ebp-0Ch], 0FFFF0000h
		jnb	short loc_470DBE
		cmp	dword ptr [ebp-0Ch], 80000000h
		jb	short loc_470DB9
		cmp	dword ptr [ebp-0Ch], 8000FFFFh
		jbe	short loc_470DBE

loc_470DB9:				; CODE XREF: .text:00470DAEj
		mov	ebx, [ebp-0Ch]
		jmp	short loc_470E26
; ---------------------------------------------------------------------------

loc_470DBE:				; CODE XREF: .text:00470D69j
					; .text:00470D6Fj ...
		mov	al, [ebp-1Ch]
		cmp	al, 0E9h
		jnz	short loc_470DD4
		cmp	esi, 5
		jb	short loc_470DD4
		mov	edx, [ebp-1Bh]
		add	edx, 5
		add	ebx, edx
		jmp	short loc_470E26
; ---------------------------------------------------------------------------

loc_470DD4:				; CODE XREF: .text:00470DC3j
					; .text:00470DC8j
		cmp	al, 0EBh
		jnz	short loc_470DE3
		movsx	ecx, byte ptr [ebp-1Bh]
		add	ecx, 2
		add	ebx, ecx
		jmp	short loc_470E26
; ---------------------------------------------------------------------------

loc_470DE3:				; CODE XREF: .text:00470DD6j
		cmp	VersionInformation.dwPlatformId, 1
		jnz	short loc_470E64
		cmp	ebx, 80000000h
		jb	short loc_470E64
		cmp	byte ptr [ebp-1Ch], 68h
		jnz	short loc_470E64
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_470E64
		cmp	dword ptr [ebp-1Bh], 80000000h
		jb	short loc_470E64
		cmp	byte ptr [ebp-17h], 0E9h
		jnz	short loc_470E64
		mov	eax, [ebp-16h]
		add	eax, ebx
		add	eax, 0Ah
		cmp	eax, 80000000h
		jb	short loc_470E64
		mov	ebx, [ebp-1Bh]

loc_470E26:				; CODE XREF: .text:00470D60j
					; .text:00470DBCj ...
		test	edi, edi
		jz	short loc_470E3E
		mov	eax, [edi]
		cmp	ebx, eax
		jb	short loc_470E37
		add	eax, [edi+4]
		cmp	ebx, eax
		jb	short loc_470E3E

loc_470E37:				; CODE XREF: .text:00470E2Ej
		mov	dword ptr [ebp-8], 1

loc_470E3E:				; CODE XREF: .text:00470E28j
					; .text:00470E35j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_470E57
		push	0		; type3
		push	24h		; type2
		push	22h		; type1
		push	ebx		; _addr
		call	Isdataavailable
		add	esp, 10h
		test	eax, eax
		jnz	short loc_470E64

loc_470E57:				; CODE XREF: .text:00470E42j
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 10h
		jl	loc_470CF3

loc_470E64:				; CODE XREF: .text:00470D09j
					; .text:00470DEAj ...
		mov	eax, ebx

loc_470E66:				; CODE XREF: .text:00470CDBj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 222. _Followjump
; Exported entry 544. Followjump

; int __cdecl Followjump(ulong _addr)
		public Followjump
Followjump:				; CODE XREF: .text:00465782p
		push	ebp		; _Followjump
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		lea	edi, [ebp-14h]
		test	ebx, ebx
		jz	short loc_470E88
		cmp	ebx, 0FFFFFFFFh
		jnz	short loc_470E8F

loc_470E88:				; CODE XREF: .text:00470E81j
		xor	eax, eax
		jmp	loc_470FC3
; ---------------------------------------------------------------------------

loc_470E8F:				; CODE XREF: .text:00470E86j
		push	5		; mode
		push	0Ah		; size
		push	ebx		; _addr
		push	edi		; buf
		call	Readmemory
		add	esp, 10h
		mov	esi, eax
		cmp	esi, 2
		jnb	short loc_470EAB
		xor	ebx, ebx
		jmp	loc_470FC1
; ---------------------------------------------------------------------------

loc_470EAB:				; CODE XREF: .text:00470EA2j
		cmp	byte ptr [edi],	0FFh
		jnz	short loc_470F00
		cmp	byte ptr [edi+1], 25h
		jnz	short loc_470F00
		cmp	esi, 6
		jb	short loc_470F00
		push	1		; mode
		push	4		; size
		mov	eax, [edi+2]
		push	eax		; _addr
		lea	edx, [ebp-4]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_470F00
		cmp	dword ptr [ebp-4], 10000h
		jb	short loc_470F00
		cmp	dword ptr [ebp-4], 0FFFF0000h
		jnb	short loc_470F00
		cmp	dword ptr [ebp-4], 80000000h
		jb	short loc_470EF8
		cmp	dword ptr [ebp-4], 8000FFFFh
		jbe	short loc_470F00

loc_470EF8:				; CODE XREF: .text:00470EEDj
		mov	ebx, [ebp-4]
		jmp	loc_470FC1
; ---------------------------------------------------------------------------

loc_470F00:				; CODE XREF: .text:00470EAEj
					; .text:00470EB4j ...
		cmp	byte ptr [edi],	0FFh
		jnz	short loc_470F58
		cmp	byte ptr [edi+1], 24h
		jnz	short loc_470F58
		cmp	esi, 7
		jb	short loc_470F58
		cmp	byte ptr [edi+2], 25h
		jnz	short loc_470F58
		push	1		; mode
		push	4		; size
		mov	eax, [edi+3]
		push	eax		; _addr
		lea	edx, [ebp-4]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_470F58
		cmp	dword ptr [ebp-4], 10000h
		jb	short loc_470F58
		cmp	dword ptr [ebp-4], 0FFFF0000h
		jnb	short loc_470F58
		cmp	dword ptr [ebp-4], 80000000h
		jb	short loc_470F53
		cmp	dword ptr [ebp-4], 8000FFFFh
		jbe	short loc_470F58

loc_470F53:				; CODE XREF: .text:00470F48j
		mov	ebx, [ebp-4]
		jmp	short loc_470FC1
; ---------------------------------------------------------------------------

loc_470F58:				; CODE XREF: .text:00470F03j
					; .text:00470F09j ...
		mov	al, [edi]
		cmp	al, 0E9h
		jnz	short loc_470F6D
		cmp	esi, 5
		jb	short loc_470F6D
		mov	edx, [edi+1]
		add	edx, 5
		add	ebx, edx
		jmp	short loc_470FC1
; ---------------------------------------------------------------------------

loc_470F6D:				; CODE XREF: .text:00470F5Cj
					; .text:00470F61j
		cmp	al, 0EBh
		jnz	short loc_470F7C
		movsx	ecx, byte ptr [edi+1]
		add	ecx, 2
		add	ebx, ecx
		jmp	short loc_470FC1
; ---------------------------------------------------------------------------

loc_470F7C:				; CODE XREF: .text:00470F6Fj
		cmp	VersionInformation.dwPlatformId, 1
		jnz	short loc_470FBF
		cmp	ebx, 80000000h
		jb	short loc_470FBF
		cmp	byte ptr [edi],	68h
		jnz	short loc_470FBF
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_470FBF
		cmp	dword ptr [edi+1], 80000000h
		jb	short loc_470FBF
		cmp	byte ptr [edi+5], 0E9h
		jnz	short loc_470FBF
		add	ebx, [edi+6]
		add	ebx, 0Ah
		cmp	ebx, 80000000h
		jb	short loc_470FBF
		mov	ebx, [edi+1]
		jmp	short loc_470FC1
; ---------------------------------------------------------------------------

loc_470FBF:				; CODE XREF: .text:00470F83j
					; .text:00470F8Bj ...
		xor	ebx, ebx

loc_470FC1:				; CODE XREF: .text:00470EA6j
					; .text:00470EFBj ...
		mov	eax, ebx

loc_470FC3:				; CODE XREF: .text:00470E8Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_470FCC:				; CODE XREF: .text:004132FAp
					; .text:0046E84Dp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebx+8]
		test	eax, eax
		jz	short loc_470FE6
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+8], edx

loc_470FE6:				; CODE XREF: .text:00470FD8j
		mov	eax, [ebx+0Ch]
		test	eax, eax
		jz	short loc_470FF9
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+0Ch], edx

loc_470FF9:				; CODE XREF: .text:00470FEBj
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_47100C
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+20h], edx

loc_47100C:				; CODE XREF: .text:00470FFEj
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+18h], ecx
		mov	[ebx+14h], ecx
		mov	[ebx+10h], ecx
		mov	[ebx+28h], eax
		mov	[ebx+24h], eax
		xor	edx, edx
		mov	[ebx+1Ch], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_471028:				; CODE XREF: .text:0045CF3Ep
					; .text:004ABFEBp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+14h]	; int
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_47103C
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_47103C:				; CODE XREF: .text:00471034j
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_4710A2
		cmp	eax, 80h
		jl	short loc_47104E
		mov	[ebx+10h], eax
		jmp	short loc_471055
; ---------------------------------------------------------------------------

loc_47104E:				; CODE XREF: .text:00471047j
		mov	dword ptr [ebx+10h], 8000h

loc_471055:				; CODE XREF: .text:0047104Cj
		mov	dword ptr [ebx+24h], 10h
		push	1		; flags
		mov	edx, [ebx+10h]
		lea	edx, [edx+edx*8] ; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+8], eax
		push	1		; flags
		mov	ecx, [ebx+10h]
		shl	ecx, 2		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+0Ch], eax
		push	1		; flags
		mov	eax, [ebx+24h]
		mov	edx, eax	; int
		shl	eax, 5
		add	eax, edx
		lea	eax, [edx+eax*4]
		shl	eax, 2		; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+20h], eax

loc_4710A2:				; CODE XREF: .text:00471040j
		cmp	dword ptr [ebx+8], 0
		jz	short loc_4710B4
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_4710B4
		cmp	dword ptr [ebx+20h], 0
		jnz	short loc_4710C1

loc_4710B4:				; CODE XREF: .text:004710A6j
					; .text:004710ACj
		push	ebx
		call	loc_470FCC
		pop	ecx
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4710C1:				; CODE XREF: .text:004710B2j
		mov	edx, [ebp+0Ch]
		mov	[ebx], edx
		mov	ecx, [ebp+10h]
		mov	[ebx+4], ecx
		xor	ecx, ecx
		mov	eax, [ebx+8]
		mov	dword ptr [eax+4], 0FFFFFFFFh
		mov	dword ptr [eax], 0FFFFFFFFh
		mov	byte ptr [eax+8], 0
		mov	edx, [ebx+0Ch]
		xor	eax, eax
		mov	[edx], ecx
		xor	edx, edx
		mov	dword ptr [ebx+14h], 1
		mov	dword ptr [ebx+18h], 1
		mov	[ebx+28h], eax
		xor	eax, eax
		mov	[ebx+1Ch], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 223. _Addjump
; Exported entry 391. Addjump

; int __cdecl Addjump(t_jmpdata	*pdat, ulong from, ulong dest, int type)
		public Addjump
Addjump:				; CODE XREF: .text:0045E63Cp
					; .text:0045E673p ...
		push	ebp		; _Addjump
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_471120
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_471128

loc_471120:				; CODE XREF: .text:00471118j
		or	eax, 0FFFFFFFFh
		jmp	loc_4712EE
; ---------------------------------------------------------------------------

loc_471128:				; CODE XREF: .text:0047111Ej
		test	edi, edi
		jz	short loc_47113C
		cmp	edi, 0FFFFFFFFh
		jz	short loc_47113C
		cmp	esi, 0FFFFFFFFh
		jz	short loc_47113C
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_471144

loc_47113C:				; CODE XREF: .text:0047112Aj
					; .text:0047112Fj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4712EE
; ---------------------------------------------------------------------------

loc_471144:				; CODE XREF: .text:0047113Aj
		mov	eax, [ebx+10h]
		cmp	eax, [ebx+14h]
		jg	short loc_4711C8
		mov	[ebp-8], eax
		mov	[ebp-4], eax
		xor	edx, edx
		lea	ecx, [ebp-0Ch]	; int
		mov	[ebp-0Ch], edx
		push	1		; flags
		push	ecx		; failed
		lea	eax, [ebp-4]	; int
		push	9		; itemsize
		push	eax		; pcount
		mov	edx, [ebx+8]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebx+8], eax
		lea	ecx, [ebp-0Ch]	; int
		lea	eax, [ebp-8]	; int
		push	1		; flags
		push	ecx		; failed
		push	4		; itemsize
		push	eax		; pcount
		mov	edx, [ebx+0Ch]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebx+0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_47119B
		mov	ecx, [ebp-4]
		mov	[ebx+10h], ecx
		jmp	short loc_4711C8
; ---------------------------------------------------------------------------

loc_47119B:				; CODE XREF: .text:00471191j
		push	offset aOutOfMemoryInJ ; "Out of memory	in jump	table. Some calls"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_0 ; "Low memory!"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E670 ; cond
		call	Conderror
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_4712EE
; ---------------------------------------------------------------------------

loc_4711C8:				; CODE XREF: .text:0047114Aj
					; .text:00471199j
		test	byte ptr [ebp+15h], 80h
		jnz	short loc_4711D5
		xor	edx, edx
		mov	[ebx+1Ch], edx
		jmp	short loc_4711E4
; ---------------------------------------------------------------------------

loc_4711D5:				; CODE XREF: .text:004711CCj
		mov	ecx, [ebx+14h]
		cmp	ecx, [ebx+18h]
		jnz	short loc_4711E4
		mov	dword ptr [ebx+1Ch], 1

loc_4711E4:				; CODE XREF: .text:004711D3j
					; .text:004711DBj
		mov	eax, [ebx+14h]
		inc	dword ptr [ebx+14h]
		lea	eax, [eax+eax*8]
		add	eax, [ebx+8]
		mov	[eax+4], esi
		mov	[eax], edi
		mov	dl, [ebp+14h]
		and	dl, 0Fh
		test	esi, esi
		mov	[eax+8], dl
		jz	loc_4712EC
		mov	eax, [ebx]
		cmp	esi, eax
		jb	short loc_471217
		add	eax, [ebx+4]
		cmp	esi, eax
		jb	loc_4712EC

loc_471217:				; CODE XREF: .text:0047120Aj
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	loc_4712EC
		cmp	word ptr [esi+4Ch], 0
		jz	loc_4712EC
		xor	eax, eax
		mov	edx, [ebx+20h]
		jmp	short loc_471247
; ---------------------------------------------------------------------------

loc_47123A:				; CODE XREF: .text:0047124Aj
		mov	ecx, [edx]
		cmp	ecx, [esi]
		jz	short loc_47124C
		inc	eax
		add	edx, 214h

loc_471247:				; CODE XREF: .text:00471238j
		cmp	eax, [ebx+28h]
		jl	short loc_47123A

loc_47124C:				; CODE XREF: .text:0047123Ej
		mov	edx, [ebx+28h]	; int
		cmp	eax, edx
		jl	loc_4712EC
		cmp	edx, [ebx+24h]
		jl	short loc_471278
		push	1		; flags
		push	0		; failed
		push	214h		; itemsize
		lea	eax, [ebx+24h]	; int
		push	eax		; pcount
		mov	ecx, [ebx+20h]	; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebx+20h], eax

loc_471278:				; CODE XREF: .text:0047125Aj
		mov	eax, [ebx+28h]
		cmp	eax, [ebx+24h]
		jge	short loc_4712EC
		mov	edx, eax
		mov	ecx, [ebx+20h]
		shl	edx, 5
		add	edx, eax
		lea	edx, [eax+edx*4]
		mov	eax, [esi]
		mov	[ecx+edx*4], eax
		mov	edx, [ebx+28h]
		mov	eax, [ebx+20h]
		mov	ecx, edx
		shl	edx, 5
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		mov	ecx, [esi+4]
		add	esi, 4Ch
		mov	[eax+edx*4+4], ecx
		mov	edx, [ebx+28h]
		mov	ecx, [ebx+20h]
		mov	eax, edx
		shl	edx, 5
		add	edx, eax
		lea	edx, [eax+edx*4]
		mov	dword ptr [ecx+edx*4+8], 1
		push	esi		; src
		push	104h		; n
		mov	eax, [ebx+28h]
		mov	edx, eax
		shl	eax, 5
		add	eax, edx
		lea	eax, [edx+eax*4]
		shl	eax, 2
		add	eax, [ebx+20h]
		add	eax, 0Ch
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	dword ptr [ebx+28h]

loc_4712EC:				; CODE XREF: .text:00471200j
					; .text:00471211j ...
		xor	eax, eax

loc_4712EE:				; CODE XREF: .text:00471123j
					; .text:0047113Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 224. _Sortjumpdata
; Exported entry 722. Sortjumpdata

; int __cdecl Sortjumpdata(t_jmpdata *pdat)
		public Sortjumpdata
Sortjumpdata:				; CODE XREF: .text:0046BA51p
					; .text:0046BBD0p ...
		push	ebp		; _Sortjumpdata
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_47132A
		cmp	dword ptr [ebx+10h], 0
		jz	short loc_47132A
		mov	eax, [ebx+14h]
		cmp	eax, [ebx+18h]
		jz	short loc_47132A
		push	ebx
		call	loc_470B34
		pop	ecx
		push	ebx
		call	loc_470C88
		pop	ecx
		mov	edx, [ebx+14h]
		mov	[ebx+18h], edx
		xor	ecx, ecx
		mov	[ebx+1Ch], ecx

loc_47132A:				; CODE XREF: .text:00471301j
					; .text:00471307j ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_471330:				; CODE XREF: .text:00471C46p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_471398
		cmp	dword ptr [ebx+10h], 0
		jz	short loc_471398
		mov	ecx, 1
		mov	eax, [ebx+8]
		mov	edx, 1
		add	eax, 9
		jmp	short loc_471376
; ---------------------------------------------------------------------------

loc_471354:				; CODE XREF: .text:00471379j
		mov	esi, [eax]
		cmp	esi, [eax-9]
		jnb	short loc_47135F
		xor	ecx, ecx
		jmp	short loc_47137B
; ---------------------------------------------------------------------------

loc_47135F:				; CODE XREF: .text:00471359j
		mov	esi, [eax]
		cmp	esi, [eax-9]
		jnz	short loc_471372
		mov	esi, [eax+4]
		cmp	esi, [eax-5]
		ja	short loc_471372
		xor	ecx, ecx
		jmp	short loc_47137B
; ---------------------------------------------------------------------------

loc_471372:				; CODE XREF: .text:00471364j
					; .text:0047136Cj
		inc	edx
		add	eax, 9

loc_471376:				; CODE XREF: .text:00471352j
		cmp	edx, [ebx+14h]
		jl	short loc_471354

loc_47137B:				; CODE XREF: .text:0047135Dj
					; .text:00471370j
		test	ecx, ecx
		jnz	short loc_471386
		push	ebx
		call	loc_470B34
		pop	ecx

loc_471386:				; CODE XREF: .text:0047137Dj
		push	ebx
		call	loc_470C88
		pop	ecx
		mov	eax, [ebx+14h]
		mov	[ebx+18h], eax
		xor	edx, edx
		mov	[ebx+1Ch], edx

loc_471398:				; CODE XREF: .text:0047133Aj
					; .text:00471340j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 225. _Findjumpfrom
; Exported entry 515. Findjumpfrom

; t_jmp	*__cdecl Findjumpfrom(ulong from)
		public Findjumpfrom
Findjumpfrom:				; CODE XREF: .text:0043664Dp
					; .text:0044D840p ...
		push	ebp		; _Findjumpfrom
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4713AE
		cmp	dword ptr [ebp+8], 0FFFFFFFFh
		jnz	short loc_4713B5

loc_4713AE:				; CODE XREF: .text:004713A6j
		xor	eax, eax
		jmp	loc_471446
; ---------------------------------------------------------------------------

loc_4713B5:				; CODE XREF: .text:004713ACj
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4713C7
		xor	eax, eax
		jmp	short loc_471446
; ---------------------------------------------------------------------------

loc_4713C7:				; CODE XREF: .text:004713C1j
		add	eax, 8F4h
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		cmp	dword ptr [edx+14h], 0
		jnz	short loc_4713DC
		xor	eax, eax
		jmp	short loc_471446
; ---------------------------------------------------------------------------

loc_4713DC:				; CODE XREF: .text:004713D6j
		mov	edx, [ebp-4]
		cmp	dword ptr [edx+1Ch], 0
		jnz	short loc_4713FD
		mov	ecx, [ebp-4]
		mov	edx, [ebp-4]
		mov	eax, [ecx+14h]
		cmp	eax, [edx+18h]
		jz	short loc_4713FD
		mov	ecx, [ebp-4]
		push	ecx		; pdat
		call	Sortjumpdata
		pop	ecx

loc_4713FD:				; CODE XREF: .text:004713E3j
					; .text:004713F1j
		xor	ebx, ebx
		mov	eax, [ebp-4]
		mov	ecx, [eax+18h]

loc_471405:				; CODE XREF: .text:00471439j
		lea	edx, [ecx+ebx]
		sar	edx, 1
		jns	short loc_47140F
		adc	edx, 0

loc_47140F:				; CODE XREF: .text:0047140Aj
		mov	eax, [ebp-4]
		mov	eax, [eax+8]
		lea	esi, [edx+edx*8]
		add	eax, esi
		mov	esi, [eax]
		cmp	esi, [ebp+8]
		jbe	short loc_471425
		mov	ecx, edx
		jmp	short loc_471437
; ---------------------------------------------------------------------------

loc_471425:				; CODE XREF: .text:0047141Fj
		cmp	esi, [ebp+8]
		jnb	short loc_47142F
		lea	ebx, [edx+1]
		jmp	short loc_471437
; ---------------------------------------------------------------------------

loc_47142F:				; CODE XREF: .text:00471428j
		cmp	dword ptr [eax+4], 0
		jbe	short loc_471446
		mov	ecx, edx

loc_471437:				; CODE XREF: .text:00471423j
					; .text:0047142Dj
		cmp	ecx, ebx
		jg	short loc_471405
		mov	eax, [ebp-4]
		mov	eax, [eax+8]
		lea	edx, [ebx+ebx*8]
		add	eax, edx

loc_471446:				; CODE XREF: .text:004713B0j
					; .text:004713C5j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 226. _Findlocaljumpsto
; Exported entry 518. Findlocaljumpsto

; _DWORD __cdecl Findlocaljumpsto(ulong	dest, ulong *buf, int nbuf)
		public Findlocaljumpsto
Findlocaljumpsto:			; CODE XREF: .text:0046759Dp
					; .text:00468596p ...
		push	ebp		; _Findlocaljumpsto
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_471460
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_471467

loc_471460:				; CODE XREF: .text:00471458j
		xor	eax, eax
		jmp	loc_47153D
; ---------------------------------------------------------------------------

loc_471467:				; CODE XREF: .text:0047145Ej
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_47147C
		xor	eax, eax
		jmp	loc_47153D
; ---------------------------------------------------------------------------

loc_47147C:				; CODE XREF: .text:00471473j
		lea	ebx, [eax+8F4h]
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_47148F
		xor	eax, eax
		jmp	loc_47153D
; ---------------------------------------------------------------------------

loc_47148F:				; CODE XREF: .text:00471486j
		cmp	dword ptr [ebx+1Ch], 0
		jnz	short loc_4714A4
		mov	edx, [ebx+14h]
		cmp	edx, [ebx+18h]
		jz	short loc_4714A4
		push	ebx		; pdat
		call	Sortjumpdata
		pop	ecx

loc_4714A4:				; CODE XREF: .text:00471493j
					; .text:0047149Bj
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	ecx, [ebx+18h]

loc_4714AC:				; CODE XREF: .text:004714E7j
		mov	edx, [ebp-4]
		add	edx, ecx
		sar	edx, 1
		jns	short loc_4714B8
		adc	edx, 0

loc_4714B8:				; CODE XREF: .text:004714B3j
		mov	eax, [ebx+8]
		mov	esi, [ebx+0Ch]
		mov	esi, [esi+edx*4]
		lea	esi, [esi+esi*8]
		add	eax, esi
		mov	esi, [eax+4]
		cmp	esi, [ebp+8]
		jbe	short loc_4714D2
		mov	ecx, edx
		jmp	short loc_4714E4
; ---------------------------------------------------------------------------

loc_4714D2:				; CODE XREF: .text:004714CCj
		cmp	esi, [ebp+8]
		jnb	short loc_4714DD
		inc	edx
		mov	[ebp-4], edx
		jmp	short loc_4714E4
; ---------------------------------------------------------------------------

loc_4714DD:				; CODE XREF: .text:004714D5j
		cmp	dword ptr [eax], 0
		jbe	short loc_4714EC
		mov	ecx, edx

loc_4714E4:				; CODE XREF: .text:004714D0j
					; .text:004714DBj
		cmp	ecx, [ebp-4]
		jg	short loc_4714AC
		mov	edx, [ebp-4]

loc_4714EC:				; CODE XREF: .text:004714E0j
		xor	ecx, ecx
		mov	eax, [ebp+0Ch]
		mov	[ebp-8], eax
		jmp	short loc_471531
; ---------------------------------------------------------------------------

loc_4714F6:				; CODE XREF: .text:00471539j
		mov	eax, [ebx+8]
		mov	esi, [ebx+0Ch]
		mov	esi, [esi+edx*4]
		lea	esi, [esi+esi*8]
		add	eax, esi
		mov	esi, [eax+4]
		cmp	esi, [ebp+8]
		jnz	short loc_47153B
		cmp	byte ptr [eax+8], 1
		jb	short loc_471518
		cmp	byte ptr [eax+8], 4
		jbe	short loc_471524

loc_471518:				; CODE XREF: .text:00471510j
		cmp	byte ptr [eax+8], 8
		jb	short loc_471530
		cmp	byte ptr [eax+8], 0Ah
		ja	short loc_471530

loc_471524:				; CODE XREF: .text:00471516j
		mov	esi, [ebp-8]
		mov	eax, [eax]
		mov	[esi], eax
		inc	ecx
		add	dword ptr [ebp-8], 4

loc_471530:				; CODE XREF: .text:0047151Cj
					; .text:00471522j
		inc	edx

loc_471531:				; CODE XREF: .text:004714F4j
		cmp	edx, [ebx+18h]
		jge	short loc_47153B
		cmp	ecx, [ebp+10h]
		jl	short loc_4714F6

loc_47153B:				; CODE XREF: .text:0047150Aj
					; .text:00471534j
		mov	eax, ecx

loc_47153D:				; CODE XREF: .text:00471462j
					; .text:00471477j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 227. _Findlocaljumpscallsto
; Exported entry 517. Findlocaljumpscallsto

; int __cdecl Findlocaljumpscallsto(ulong dest,	t_jmpcall *jmpcall, int	njmpcall)
		public Findlocaljumpscallsto
Findlocaljumpscallsto:			; CODE XREF: .text:00436755p
					; .text:00474D47p ...
		push	ebp		; _Findlocaljumpscallsto
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_471558
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_47155F

loc_471558:				; CODE XREF: .text:00471550j
		xor	eax, eax
		jmp	loc_471639
; ---------------------------------------------------------------------------

loc_47155F:				; CODE XREF: .text:00471556j
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_471574
		xor	eax, eax
		jmp	loc_471639
; ---------------------------------------------------------------------------

loc_471574:				; CODE XREF: .text:0047156Bj
		lea	ebx, [eax+8F4h]
		xor	edx, edx
		mov	[ebp-8], edx
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_47158C
		xor	eax, eax
		jmp	loc_471639
; ---------------------------------------------------------------------------

loc_47158C:				; CODE XREF: .text:00471583j
		cmp	dword ptr [ebx+1Ch], 0
		jnz	short loc_4715A1
		mov	edx, [ebx+14h]
		cmp	edx, [ebx+18h]
		jz	short loc_4715A1
		push	ebx		; pdat
		call	Sortjumpdata
		pop	ecx

loc_4715A1:				; CODE XREF: .text:00471590j
					; .text:00471598j
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	ecx, [ebx+18h]

loc_4715A9:				; CODE XREF: .text:004715E4j
		mov	edx, [ebp-4]
		add	edx, ecx
		sar	edx, 1
		jns	short loc_4715B5
		adc	edx, 0

loc_4715B5:				; CODE XREF: .text:004715B0j
		mov	eax, [ebx+8]
		mov	esi, [ebx+0Ch]
		mov	esi, [esi+edx*4]
		lea	esi, [esi+esi*8]
		add	eax, esi
		mov	esi, [eax+4]
		cmp	esi, [ebp+8]
		jbe	short loc_4715CF
		mov	ecx, edx
		jmp	short loc_4715E1
; ---------------------------------------------------------------------------

loc_4715CF:				; CODE XREF: .text:004715C9j
		cmp	esi, [ebp+8]
		jnb	short loc_4715DA
		inc	edx
		mov	[ebp-4], edx
		jmp	short loc_4715E1
; ---------------------------------------------------------------------------

loc_4715DA:				; CODE XREF: .text:004715D2j
		cmp	dword ptr [eax], 0
		jbe	short loc_4715E9
		mov	ecx, edx

loc_4715E1:				; CODE XREF: .text:004715CDj
					; .text:004715D8j
		cmp	ecx, [ebp-4]
		jg	short loc_4715A9
		mov	edx, [ebp-4]

loc_4715E9:				; CODE XREF: .text:004715DDj
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp-8]
		lea	ecx, [eax+ecx*8]
		jmp	short loc_471629
; ---------------------------------------------------------------------------

loc_4715F4:				; CODE XREF: .text:00471634j
		mov	eax, [ebx+8]
		mov	esi, [ebx+0Ch]
		mov	esi, [esi+edx*4]
		lea	esi, [esi+esi*8]
		add	eax, esi
		mov	esi, [eax+4]
		cmp	esi, [ebp+8]
		jnz	short loc_471636
		mov	esi, [eax]
		mov	[ecx], esi
		movzx	eax, byte ptr [eax+8]
		mov	[ecx+4], eax
		inc	dword ptr [ebp-8]
		add	ecx, 8
		mov	eax, [ebp-8]
		cmp	eax, [ebp+10h]
		jl	short loc_471628
		mov	eax, [ebp-8]
		jmp	short loc_471639
; ---------------------------------------------------------------------------

loc_471628:				; CODE XREF: .text:00471621j
		inc	edx

loc_471629:				; CODE XREF: .text:004715F2j
		cmp	edx, [ebx+18h]
		jge	short loc_471636
		mov	eax, [ebp-8]
		cmp	eax, [ebp+10h]
		jl	short loc_4715F4

loc_471636:				; CODE XREF: .text:00471608j
					; .text:0047162Cj
		mov	eax, [ebp-8]

loc_471639:				; CODE XREF: .text:0047155Aj
					; .text:0047156Fj ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 228. _Arelocaljumpscallstorange
; Exported entry 401. Arelocaljumpscallstorange

; signed int __cdecl Arelocaljumpscallstorange(ulong addr0, ulong addr1)
		public Arelocaljumpscallstorange
Arelocaljumpscallstorange:		; CODE XREF: .text:004A55AFp
		push	ebp		; _Arelocaljumpscallstorange
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		inc	esi
		cmp	esi, [ebp+0Ch]
		jb	short loc_471659
		xor	eax, eax
		jmp	loc_471723
; ---------------------------------------------------------------------------

loc_471659:				; CODE XREF: .text:00471650j
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_47166B
		xor	eax, eax
		jmp	loc_471723
; ---------------------------------------------------------------------------

loc_47166B:				; CODE XREF: .text:00471662j
		lea	ebx, [eax+8F4h]
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_47167E
		xor	eax, eax
		jmp	loc_471723
; ---------------------------------------------------------------------------

loc_47167E:				; CODE XREF: .text:00471675j
		cmp	dword ptr [ebx+1Ch], 0
		jnz	short loc_471693
		mov	edx, [ebx+14h]
		cmp	edx, [ebx+18h]
		jz	short loc_471693
		push	ebx		; pdat
		call	Sortjumpdata
		pop	ecx

loc_471693:				; CODE XREF: .text:00471682j
					; .text:0047168Aj
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebx+18h]
		mov	[ebp-8], eax

loc_47169E:				; CODE XREF: .text:004716DDj
		mov	edx, [ebp-4]
		add	edx, [ebp-8]
		sar	edx, 1
		jns	short loc_4716AB
		adc	edx, 0

loc_4716AB:				; CODE XREF: .text:004716A6j
		mov	eax, [ebx+8]
		mov	ecx, [ebx+0Ch]
		mov	ecx, [ecx+edx*4]
		lea	ecx, [ecx+ecx*8]
		add	eax, ecx
		mov	ecx, [eax+4]
		cmp	esi, ecx
		jnb	short loc_4716C5
		mov	[ebp-8], edx
		jmp	short loc_4716D7
; ---------------------------------------------------------------------------

loc_4716C5:				; CODE XREF: .text:004716BEj
		cmp	esi, ecx
		jbe	short loc_4716CF
		inc	edx
		mov	[ebp-4], edx
		jmp	short loc_4716D7
; ---------------------------------------------------------------------------

loc_4716CF:				; CODE XREF: .text:004716C7j
		cmp	dword ptr [eax], 0
		jbe	short loc_4716E2
		mov	[ebp-8], edx

loc_4716D7:				; CODE XREF: .text:004716C3j
					; .text:004716CDj
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jl	short loc_47169E
		mov	edx, [ebp-4]

loc_4716E2:				; CODE XREF: .text:004716D2j
		mov	eax, [ebx+0Ch]
		lea	ecx, [eax+edx*4]
		mov	[ebp-0Ch], ecx
		jmp	short loc_47171C
; ---------------------------------------------------------------------------

loc_4716ED:				; CODE XREF: .text:0047171Fj
		mov	eax, [ebx+8]
		mov	ecx, [ebp-0Ch]
		mov	ecx, [ecx]
		lea	ecx, [ecx+ecx*8]
		add	eax, ecx
		mov	ecx, [eax+4]
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_471721
		mov	edi, esi
		dec	edi
		mov	ecx, [eax]
		cmp	edi, ecx
		ja	short loc_471710
		cmp	ecx, [ebp+0Ch]
		jb	short loc_471717

loc_471710:				; CODE XREF: .text:00471709j
		mov	eax, 1
		jmp	short loc_471723
; ---------------------------------------------------------------------------

loc_471717:				; CODE XREF: .text:0047170Ej
		inc	edx
		add	dword ptr [ebp-0Ch], 4

loc_47171C:				; CODE XREF: .text:004716EBj
		cmp	edx, [ebx+18h]
		jl	short loc_4716ED

loc_471721:				; CODE XREF: .text:00471700j
		xor	eax, eax

loc_471723:				; CODE XREF: .text:00471654j
					; .text:00471666j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 229. _Findglobalcallsto
; Exported entry 513. Findglobalcallsto

; int __cdecl Findglobalcallsto(ulong dest, ulong *buf,	int nbuf)
		public Findglobalcallsto
Findglobalcallsto:			; CODE XREF: .text:00488520p
		push	ebp		; _Findglobalcallsto
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_471740
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_471747

loc_471740:				; CODE XREF: .text:00471738j
		xor	eax, eax
		jmp	loc_471844
; ---------------------------------------------------------------------------

loc_471747:				; CODE XREF: .text:0047173Ej
		xor	edx, edx
		mov	[ebp-0Ch], edx
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	loc_471832
; ---------------------------------------------------------------------------

loc_471756:				; CODE XREF: .text:0047183Bj
		mov	eax, [ebp-8]
		push	eax		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	loc_47182F
		lea	esi, [eax+8F4h]
		cmp	dword ptr [esi+14h], 0
		jz	loc_47182F
		cmp	dword ptr [esi+1Ch], 0
		jnz	short loc_471794
		mov	eax, [esi+14h]
		cmp	eax, [esi+18h]
		jz	short loc_471794
		push	esi		; pdat
		call	Sortjumpdata
		pop	ecx

loc_471794:				; CODE XREF: .text:00471783j
					; .text:0047178Bj
		xor	edx, edx
		mov	ecx, [esi+18h]
		mov	[ebp-4], ecx

loc_47179C:				; CODE XREF: .text:004717D8j
		mov	ebx, [ebp-4]
		add	ebx, edx
		sar	ebx, 1
		jns	short loc_4717A8
		adc	ebx, 0

loc_4717A8:				; CODE XREF: .text:004717A3j
		mov	eax, [esi+8]
		mov	ecx, [esi+0Ch]
		mov	ecx, [ecx+ebx*4]
		lea	ecx, [ecx+ecx*8]
		add	eax, ecx
		mov	ecx, [eax+4]
		cmp	ecx, [ebp+8]
		jbe	short loc_4717C3
		mov	[ebp-4], ebx
		jmp	short loc_4717D5
; ---------------------------------------------------------------------------

loc_4717C3:				; CODE XREF: .text:004717BCj
		cmp	ecx, [ebp+8]
		jnb	short loc_4717CD
		lea	edx, [ebx+1]
		jmp	short loc_4717D5
; ---------------------------------------------------------------------------

loc_4717CD:				; CODE XREF: .text:004717C6j
		cmp	dword ptr [eax], 0
		jbe	short loc_4717DC
		mov	[ebp-4], ebx

loc_4717D5:				; CODE XREF: .text:004717C1j
					; .text:004717CBj
		cmp	edx, [ebp-4]
		jl	short loc_47179C
		mov	ebx, edx

loc_4717DC:				; CODE XREF: .text:004717D0j
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp-0Ch]
		lea	edx, [eax+edx*4]
		jmp	short loc_471822
; ---------------------------------------------------------------------------

loc_4717E7:				; CODE XREF: .text:0047182Dj
		mov	eax, [esi+8]
		mov	ecx, [esi+0Ch]
		mov	ecx, [ecx+ebx*4]
		lea	ecx, [ecx+ecx*8]
		add	eax, ecx
		mov	ecx, [eax+4]
		cmp	ecx, [ebp+8]
		jnz	short loc_47182F
		mov	cl, [eax+8]
		cmp	cl, 5
		jz	short loc_47180A
		cmp	cl, 6
		jnz	short loc_471821

loc_47180A:				; CODE XREF: .text:00471803j
		mov	eax, [eax]
		mov	[edx], eax
		inc	dword ptr [ebp-0Ch]
		add	edx, 4
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp+10h]
		jl	short loc_471821
		mov	eax, [ebp-0Ch]
		jmp	short loc_471844
; ---------------------------------------------------------------------------

loc_471821:				; CODE XREF: .text:00471808j
					; .text:0047181Aj
		inc	ebx

loc_471822:				; CODE XREF: .text:004717E5j
		cmp	ebx, [esi+18h]
		jge	short loc_47182F
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebp+10h]
		jl	short loc_4717E7

loc_47182F:				; CODE XREF: .text:00471769j
					; .text:00471779j ...
		inc	dword ptr [ebp-8]

loc_471832:				; CODE XREF: .text:00471751j
		mov	edx, [ebp-8]
		cmp	edx, module.sorted.n
		jl	loc_471756
		mov	eax, [ebp-0Ch]

loc_471844:				; CODE XREF: .text:00471742j
					; .text:0047181Fj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 230. _Findglobaljumpscallsto
; Exported entry 514. Findglobaljumpscallsto

; int __cdecl Findglobaljumpscallsto(ulong dest, t_jmpcall *jmpcall, int njmpcall)
		public Findglobaljumpscallsto
Findglobaljumpscallsto:			; CODE XREF: .text:0043673Bp
		push	ebp		; _Findglobaljumpscallsto
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_471860
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_471867

loc_471860:				; CODE XREF: .text:00471858j
		xor	eax, eax
		jmp	loc_47195E
; ---------------------------------------------------------------------------

loc_471867:				; CODE XREF: .text:0047185Ej
		xor	edx, edx
		mov	[ebp-0Ch], edx
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	loc_47194C
; ---------------------------------------------------------------------------

loc_471876:				; CODE XREF: .text:00471955j
		mov	eax, [ebp-8]
		push	eax		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	loc_471949
		lea	esi, [eax+8F4h]
		cmp	dword ptr [esi+14h], 0
		jz	loc_471949
		cmp	dword ptr [esi+1Ch], 0
		jnz	short loc_4718B4
		mov	eax, [esi+14h]
		cmp	eax, [esi+18h]
		jz	short loc_4718B4
		push	esi		; pdat
		call	Sortjumpdata
		pop	ecx

loc_4718B4:				; CODE XREF: .text:004718A3j
					; .text:004718ABj
		xor	edx, edx
		mov	ecx, [esi+18h]
		mov	[ebp-4], ecx

loc_4718BC:				; CODE XREF: .text:004718F8j
		mov	ebx, [ebp-4]
		add	ebx, edx
		sar	ebx, 1
		jns	short loc_4718C8
		adc	ebx, 0

loc_4718C8:				; CODE XREF: .text:004718C3j
		mov	eax, [esi+8]
		mov	ecx, [esi+0Ch]
		mov	ecx, [ecx+ebx*4]
		lea	ecx, [ecx+ecx*8]
		add	eax, ecx
		mov	ecx, [eax+4]
		cmp	ecx, [ebp+8]
		jbe	short loc_4718E3
		mov	[ebp-4], ebx
		jmp	short loc_4718F5
; ---------------------------------------------------------------------------

loc_4718E3:				; CODE XREF: .text:004718DCj
		cmp	ecx, [ebp+8]
		jnb	short loc_4718ED
		lea	edx, [ebx+1]
		jmp	short loc_4718F5
; ---------------------------------------------------------------------------

loc_4718ED:				; CODE XREF: .text:004718E6j
		cmp	dword ptr [eax], 0
		jbe	short loc_4718FC
		mov	[ebp-4], ebx

loc_4718F5:				; CODE XREF: .text:004718E1j
					; .text:004718EBj
		cmp	edx, [ebp-4]
		jl	short loc_4718BC
		mov	ebx, edx

loc_4718FC:				; CODE XREF: .text:004718F0j
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp-0Ch]
		lea	edx, [eax+edx*8]
		jmp	short loc_47193C
; ---------------------------------------------------------------------------

loc_471907:				; CODE XREF: .text:00471947j
		mov	eax, [esi+8]
		mov	ecx, [esi+0Ch]
		mov	ecx, [ecx+ebx*4]
		lea	ecx, [ecx+ecx*8]
		add	eax, ecx
		mov	ecx, [eax+4]
		cmp	ecx, [ebp+8]
		jnz	short loc_471949
		mov	ecx, [eax]
		mov	[edx], ecx
		movzx	eax, byte ptr [eax+8]
		mov	[edx+4], eax
		inc	dword ptr [ebp-0Ch]
		add	edx, 8
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp+10h]
		jl	short loc_47193B
		mov	eax, [ebp-0Ch]
		jmp	short loc_47195E
; ---------------------------------------------------------------------------

loc_47193B:				; CODE XREF: .text:00471934j
		inc	ebx

loc_47193C:				; CODE XREF: .text:00471905j
		cmp	ebx, [esi+18h]
		jge	short loc_471949
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebp+10h]
		jl	short loc_471907

loc_471949:				; CODE XREF: .text:00471889j
					; .text:00471899j ...
		inc	dword ptr [ebp-8]

loc_47194C:				; CODE XREF: .text:00471871j
		mov	edx, [ebp-8]
		cmp	edx, module.sorted.n
		jl	loc_471876
		mov	eax, [ebp-0Ch]

loc_47195E:				; CODE XREF: .text:00471862j
					; .text:00471939j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_471964:				; CODE XREF: .text:0046E861p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_471A8A
		cmp	dword ptr [esi+10h], 0
		jz	loc_471A8A
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebp+10h]
		jnb	loc_471A8A
		xor	edx, edx
		mov	[esi+1Ch], edx
		push	esi
		call	loc_470B34
		pop	ecx
		mov	edx, [esi+14h]
		xor	ecx, ecx

loc_47199E:				; CODE XREF: .text:004719D8j
		lea	eax, [edx+ecx]
		sar	eax, 1
		jns	short loc_4719A8
		adc	eax, 0

loc_4719A8:				; CODE XREF: .text:004719A3j
		mov	[ebp-4], eax
		mov	eax, [esi+8]
		mov	ebx, [ebp-4]
		lea	ebx, [ebx+ebx*8]
		add	eax, ebx
		mov	ebx, [eax]
		cmp	ebx, [ebp+0Ch]
		jbe	short loc_4719C2
		mov	edx, [ebp-4]
		jmp	short loc_4719D6
; ---------------------------------------------------------------------------

loc_4719C2:				; CODE XREF: .text:004719BBj
		cmp	ebx, [ebp+0Ch]
		jnb	short loc_4719CD
		mov	ecx, [ebp-4]
		inc	ecx
		jmp	short loc_4719D6
; ---------------------------------------------------------------------------

loc_4719CD:				; CODE XREF: .text:004719C5j
		cmp	dword ptr [eax+4], 0
		jbe	short loc_4719DD
		mov	edx, [ebp-4]

loc_4719D6:				; CODE XREF: .text:004719C0j
					; .text:004719CBj
		cmp	edx, ecx
		jg	short loc_47199E
		mov	[ebp-4], ecx

loc_4719DD:				; CODE XREF: .text:004719D1j
		mov	ecx, [ebp-4]
		mov	edx, [esi+14h]

loc_4719E3:				; CODE XREF: .text:00471A1Dj
		lea	eax, [edx+ecx]
		sar	eax, 1
		jns	short loc_4719ED
		adc	eax, 0

loc_4719ED:				; CODE XREF: .text:004719E8j
		mov	[ebp-8], eax
		mov	eax, [esi+8]
		mov	ebx, [ebp-8]
		lea	ebx, [ebx+ebx*8]
		add	eax, ebx
		mov	ebx, [eax]
		cmp	ebx, [ebp+10h]
		jbe	short loc_471A07
		mov	edx, [ebp-8]
		jmp	short loc_471A1B
; ---------------------------------------------------------------------------

loc_471A07:				; CODE XREF: .text:00471A00j
		cmp	ebx, [ebp+10h]
		jnb	short loc_471A12
		mov	ecx, [ebp-8]
		inc	ecx
		jmp	short loc_471A1B
; ---------------------------------------------------------------------------

loc_471A12:				; CODE XREF: .text:00471A0Aj
		cmp	dword ptr [eax+4], 0
		jbe	short loc_471A22
		mov	edx, [ebp-8]

loc_471A1B:				; CODE XREF: .text:00471A05j
					; .text:00471A10j
		cmp	edx, ecx
		jg	short loc_4719E3
		mov	[ebp-8], ecx

loc_471A22:				; CODE XREF: .text:00471A16j
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jge	short loc_471A61
		mov	edx, [esi+14h]
		cmp	edx, [ebp-8]
		jle	short loc_471A58
		sub	edx, [ebp-8]
		lea	ecx, [edx+edx*8]
		push	ecx		; n
		mov	ecx, [ebp-8]
		mov	eax, [esi+8]
		mov	edx, eax
		lea	ecx, [ecx+ecx*8]
		add	edx, ecx
		push	edx		; src
		mov	edx, [ebp-4]
		lea	edx, [edx+edx*8]
		add	eax, edx
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_471A58:				; CODE XREF: .text:00471A30j
		mov	eax, [ebp-8]
		sub	eax, [ebp-4]
		sub	[esi+14h], eax

loc_471A61:				; CODE XREF: .text:00471A28j
		push	esi
		call	loc_470C88
		pop	ecx
		xor	eax, eax
		mov	ecx, [esi+14h]
		mov	[esi+18h], ecx
		mov	[esi+1Ch], eax
		mov	edx, [esi]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_471A8A
		mov	dword ptr [eax+9A8h], 1

loc_471A8A:				; CODE XREF: .text:00471971j
					; .text:0047197Bj ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_471A90:				; CODE XREF: .text:00416CE8p
					; .text:004ACDA2p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_471AB7
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+8FCh], 0
		jz	short loc_471AB7
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+914h], 0
		jnz	short loc_471ABF

loc_471AB7:				; CODE XREF: .text:00471A9Dj
					; .text:00471AA9j
		or	eax, 0FFFFFFFFh
		jmp	loc_471C4F
; ---------------------------------------------------------------------------

loc_471ABF:				; CODE XREF: .text:00471AB5j
		xor	edx, edx
		mov	[ebp-0Ch], edx
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp+8]
		mov	ebx, [edx+914h]
		jmp	loc_471C24
; ---------------------------------------------------------------------------

loc_471ADC:				; CODE XREF: .text:00471C30j
		cmp	dword ptr [ebx+8], 0
		jnz	loc_471C1B
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	short loc_471B23
		mov	eax, [esi]
		cmp	eax, [ebx]
		jnz	short loc_471B23
		mov	edx, [esi+4]
		cmp	edx, [ebx+4]
		jnz	short loc_471B23
		lea	ecx, [ebx+0Ch]
		push	ecx		; s2
		lea	eax, [esi+4Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_471B23
		mov	dword ptr [ebx+8], 1
		jmp	loc_471C1B
; ---------------------------------------------------------------------------

loc_471B23:				; CODE XREF: .text:00471AF3j
					; .text:00471AF9j ...
		xor	edi, edi
		jmp	short loc_471B50
; ---------------------------------------------------------------------------

loc_471B27:				; CODE XREF: .text:00471B56j
		push	edi		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_471B4F
		lea	eax, [ebx+0Ch]
		push	eax		; s2
		lea	edx, [esi+4Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_471B58

loc_471B4F:				; CODE XREF: .text:00471B39j
		inc	edi

loc_471B50:				; CODE XREF: .text:00471B25j
		cmp	edi, module.sorted.n
		jl	short loc_471B27

loc_471B58:				; CODE XREF: .text:00471B4Dj
		cmp	edi, module.sorted.n
		jge	loc_471C1B
		mov	ecx, [esi+4]
		cmp	ecx, [ebx+4]
		jz	short loc_471B78
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_471C1B
; ---------------------------------------------------------------------------

loc_471B78:				; CODE XREF: .text:00471B6Aj
		xor	eax, eax
		mov	edx, [ebp+8]
		mov	edx, [edx+914h]
		jmp	short loc_471BA5
; ---------------------------------------------------------------------------

loc_471B85:				; CODE XREF: .text:00471BAEj
		cmp	eax, [ebp-4]
		jz	short loc_471B9E
		mov	ecx, [edx]
		mov	edi, [esi]
		add	edi, [esi+4]
		cmp	ecx, edi
		jnb	short loc_471B9E
		mov	ecx, [edx]
		add	ecx, [edx+4]
		cmp	ecx, [esi]
		ja	short loc_471BB0

loc_471B9E:				; CODE XREF: .text:00471B88j
					; .text:00471B93j
		inc	eax
		add	edx, 214h

loc_471BA5:				; CODE XREF: .text:00471B83j
		mov	ecx, [ebp+8]
		cmp	eax, [ecx+91Ch]
		jl	short loc_471B85

loc_471BB0:				; CODE XREF: .text:00471B9Cj
		mov	edx, [ebp+8]
		cmp	eax, [edx+91Ch]
		jge	short loc_471BC4
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_471C1B
; ---------------------------------------------------------------------------

loc_471BC4:				; CODE XREF: .text:00471BB9j
		mov	eax, [esi]
		xor	edi, edi
		sub	eax, [ebx]
		mov	[ebp-14h], eax
		mov	eax, [ebp+8]
		mov	edx, [ebp+8]
		mov	ecx, [edx+908h]
		mov	eax, [eax+8FCh]
		mov	[ebp-8], ecx
		cmp	edi, [ebp-8]
		jge	short loc_471C10

loc_471BE7:				; CODE XREF: .text:00471C0Ej
		mov	edx, [eax+4]
		cmp	edx, [ebx]
		jb	short loc_471C07
		mov	ecx, [eax+4]
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	ecx, edx
		jnb	short loc_471C07
		mov	ecx, [ebp-14h]
		add	[eax+4], ecx
		mov	dword ptr [ebp-10h], 1

loc_471C07:				; CODE XREF: .text:00471BECj
					; .text:00471BF8j
		inc	edi
		add	eax, 9
		cmp	edi, [ebp-8]
		jl	short loc_471BE7

loc_471C10:				; CODE XREF: .text:00471BE5j
		mov	eax, [esi]
		mov	[ebx], eax
		mov	dword ptr [ebx+8], 1

loc_471C1B:				; CODE XREF: .text:00471AE0j
					; .text:00471B1Ej ...
		inc	dword ptr [ebp-4]
		add	ebx, 214h

loc_471C24:				; CODE XREF: .text:00471AD7j
		mov	eax, [ebp+8]
		mov	edx, [eax+91Ch]
		cmp	edx, [ebp-4]
		jg	loc_471ADC
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_471C4C
		mov	ecx, [ebp+8]
		add	ecx, 8F4h
		push	ecx
		call	loc_471330
		pop	ecx

loc_471C4C:				; CODE XREF: .text:00471C3Aj
		mov	eax, [ebp-0Ch]

loc_471C4F:				; CODE XREF: .text:00471ABAj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; unsigned int __cdecl loc_471C58(t_range *set,	unsigned int value)
loc_471C58:				; CODE XREF: .text:00471DB3p
					; .text:00471DF7p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	edx, [ebp+8]
		mov	eax, [edx]
		sub	eax, 1
		jb	short loc_471C75
		jz	short loc_471C7C
		dec	eax
		sub	eax, 0Eh
		jb	short loc_471C89
		jmp	short loc_471CA1
; ---------------------------------------------------------------------------

loc_471C75:				; CODE XREF: .text:00471C69j
		mov	eax, 1
		jmp	short loc_471CD2
; ---------------------------------------------------------------------------

loc_471C7C:				; CODE XREF: .text:00471C6Bj
		mov	eax, 2
		cmp	ebx, [edx+0Ch]
		ja	short loc_471CD2
		dec	eax
		jmp	short loc_471CD2
; ---------------------------------------------------------------------------

loc_471C89:				; CODE XREF: .text:00471C71j
		mov	eax, 1
		lea	ecx, [edx+0Ch]
		jmp	short loc_471C9B
; ---------------------------------------------------------------------------

loc_471C93:				; CODE XREF: .text:00471C9Dj
		cmp	ebx, [ecx]
		jbe	short loc_471CD2
		inc	eax
		add	ecx, 8

loc_471C9B:				; CODE XREF: .text:00471C91j
		cmp	eax, [edx]
		jbe	short loc_471C93
		jmp	short loc_471CD2
; ---------------------------------------------------------------------------

loc_471CA1:				; CODE XREF: .text:00471C73j
		mov	ecx, 1
		mov	eax, [edx]
		inc	eax
		mov	[ebp-4], eax

loc_471CAC:				; CODE XREF: .text:00471CCEj
		mov	eax, [ebp-4]
		add	eax, ecx
		shr	eax, 1
		mov	esi, eax
		shl	esi, 3
		add	esi, edx
		cmp	ebx, [esi]
		jnb	short loc_471CC3
		mov	[ebp-4], eax
		jmp	short loc_471CCB
; ---------------------------------------------------------------------------

loc_471CC3:				; CODE XREF: .text:00471CBCj
		cmp	ebx, [esi+4]
		jbe	short loc_471CD2
		lea	ecx, [eax+1]

loc_471CCB:				; CODE XREF: .text:00471CC1j
		cmp	ecx, [ebp-4]
		jb	short loc_471CAC
		mov	eax, ecx

loc_471CD2:				; CODE XREF: .text:00471C7Aj
					; .text:00471C84j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 231. _Initset
; Exported entry 626. Initset

; signed int __cdecl Initset(t_range *set, ulong nmax)
		public Initset
Initset:				; CODE XREF: .text:0040D5C0p
					; .text:00449FA2p ...
		push	ebp		; _Initset
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_471CEA
		cmp	edx, 2
		jnb	short loc_471CEF

loc_471CEA:				; CODE XREF: .text:00471CE3j
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_471CEF:				; CODE XREF: .text:00471CE8j
		xor	ecx, ecx
		mov	[eax], ecx
		mov	[eax+4], edx
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 232. _Fullrange
; Exported entry 545. Fullrange

; signed int __cdecl Fullrange(t_range *set)
		public Fullrange
Fullrange:				; CODE XREF: .text:00467708p
		push	ebp		; _Fullrange
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_471D0C
		cmp	dword ptr [eax+4], 2
		jnb	short loc_471D11

loc_471D0C:				; CODE XREF: .text:00471D04j
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_471D11:				; CODE XREF: .text:00471D0Aj
		xor	edx, edx
		mov	[eax+8], edx
		mov	dword ptr [eax+0Ch], 0FFFFFFFFh
		mov	dword ptr [eax], 1
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 233. _Emptyrange
; Exported entry 485. Emptyrange

; signed int __cdecl Emptyrange(t_range	*set)
		public Emptyrange
Emptyrange:				; CODE XREF: .text:0043573Bp
					; .text:0046769Bp ...
		push	ebp		; _Emptyrange
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_471D38
		cmp	dword ptr [eax+4], 2
		jnb	short loc_471D3D

loc_471D38:				; CODE XREF: .text:00471D30j
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_471D3D:				; CODE XREF: .text:00471D36j
		xor	edx, edx
		mov	[eax], edx
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 234. _Getsetcount
; Exported entry 603. Getsetcount

; int __cdecl Getsetcount(const	t_range	*set)
		public Getsetcount
Getsetcount:				; CODE XREF: .text:0046815Ap
					; .text:004683FFp
		push	ebp		; _Getsetcount
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ecx, [ebp+8]
		test	ecx, ecx
		jz	short loc_471D5A
		cmp	dword ptr [ecx+4], 2
		jnb	short loc_471D5E

loc_471D5A:				; CODE XREF: .text:00471D52j
		xor	eax, eax
		jmp	short loc_471D7C
; ---------------------------------------------------------------------------

loc_471D5E:				; CODE XREF: .text:00471D58j
		xor	ebx, ebx
		mov	edx, 1
		lea	eax, [ecx+0Ch]
		jmp	short loc_471D76
; ---------------------------------------------------------------------------

loc_471D6A:				; CODE XREF: .text:00471D78j
		mov	esi, [eax]
		inc	edx
		sub	esi, [eax-4]
		inc	esi
		add	ebx, esi
		add	eax, 8

loc_471D76:				; CODE XREF: .text:00471D68j
		cmp	edx, [ecx]
		jbe	short loc_471D6A
		mov	eax, ebx

loc_471D7C:				; CODE XREF: .text:00471D5Cj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 235. _Getrangecount
; Exported entry 596. Getrangecount

; int __cdecl Getrangecount(const t_range *set)
		public Getrangecount
Getrangecount:				; CODE XREF: .text:004126ABp
					; .text:0042882Cp ...
		push	ebp		; _Getrangecount
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_471D90
		cmp	dword ptr [eax+4], 2
		jnb	short loc_471D94

loc_471D90:				; CODE XREF: .text:00471D88j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_471D94:				; CODE XREF: .text:00471D8Ej
		mov	eax, [eax]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 236. _Isinset
; Exported entry 632. Isinset

; bool __cdecl Isinset(const t_range *set, ulong value)
		public Isinset
Isinset:				; CODE XREF: .text:0044DC20p
					; .text:0044DDB2p ...
		push	ebp		; _Isinset
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_471DAD
		cmp	dword ptr [ebx+4], 2
		jnb	short loc_471DB1

loc_471DAD:				; CODE XREF: .text:00471DA5j
		xor	eax, eax
		jmp	short loc_471DD3
; ---------------------------------------------------------------------------

loc_471DB1:				; CODE XREF: .text:00471DABj
		push	esi
		push	ebx
		call	loc_471C58
		add	esp, 8
		cmp	eax, [ebx]
		ja	short loc_471DCA
		cmp	esi, [ebx+eax*8]
		jb	short loc_471DCA
		cmp	esi, [ebx+eax*8+4]
		jbe	short loc_471DCE

loc_471DCA:				; CODE XREF: .text:00471DBDj
					; .text:00471DC2j
		xor	eax, eax
		jmp	short loc_471DD3
; ---------------------------------------------------------------------------

loc_471DCE:				; CODE XREF: .text:00471DC8j
		mov	eax, 1

loc_471DD3:				; CODE XREF: .text:00471DAFj
					; .text:00471DCCj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 237. _Getrangebymember
; Exported entry 595. Getrangebymember

; signed int __cdecl Getrangebymember(const t_range *set, ulong	value, ulong *rmin, ulong *rmax)
		public Getrangebymember
Getrangebymember:			; _Getrangebymember
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_471DF1
		cmp	dword ptr [ebx+4], 2
		jnb	short loc_471DF5

loc_471DF1:				; CODE XREF: .text:00471DE9j
		xor	eax, eax
		jmp	short loc_471E2F
; ---------------------------------------------------------------------------

loc_471DF5:				; CODE XREF: .text:00471DEFj
		push	esi
		push	ebx
		call	loc_471C58
		add	esp, 8
		cmp	eax, [ebx]
		ja	short loc_471E0E
		cmp	esi, [ebx+eax*8]
		jb	short loc_471E0E
		cmp	esi, [ebx+eax*8+4]
		jbe	short loc_471E12

loc_471E0E:				; CODE XREF: .text:00471E01j
					; .text:00471E06j
		xor	eax, eax
		jmp	short loc_471E2F
; ---------------------------------------------------------------------------

loc_471E12:				; CODE XREF: .text:00471E0Cj
		test	edi, edi
		jz	short loc_471E1B
		mov	edx, [ebx+eax*8]
		mov	[edi], edx

loc_471E1B:				; CODE XREF: .text:00471E14j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_471E2A
		mov	ecx, [ebp+14h]
		mov	eax, [ebx+eax*8+4]
		mov	[ecx], eax

loc_471E2A:				; CODE XREF: .text:00471E1Fj
		mov	eax, 1

loc_471E2F:				; CODE XREF: .text:00471DF3j
					; .text:00471E10j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 238. _Getrangebyindex
; Exported entry 594. Getrangebyindex

; signed int __cdecl Getrangebyindex(const t_range *set, int index, ulong *rmin, ulong *rmax)
		public Getrangebyindex
Getrangebyindex:			; CODE XREF: .text:0040CFD5p
					; .text:00428851p ...
		push	ebp		; _Getrangebyindex
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_471E4F
		cmp	dword ptr [eax+4], 2
		jnb	short loc_471E53

loc_471E4F:				; CODE XREF: .text:00471E47j
		xor	eax, eax
		jmp	short loc_471E80
; ---------------------------------------------------------------------------

loc_471E53:				; CODE XREF: .text:00471E4Dj
		test	edx, edx
		jl	short loc_471E63
		cmp	edx, [eax]
		jnb	short loc_471E63
		mov	esi, edx
		inc	esi
		cmp	esi, [eax+4]
		jb	short loc_471E67

loc_471E63:				; CODE XREF: .text:00471E55j
					; .text:00471E59j
		xor	eax, eax
		jmp	short loc_471E80
; ---------------------------------------------------------------------------

loc_471E67:				; CODE XREF: .text:00471E61j
		test	ecx, ecx
		jz	short loc_471E71
		mov	esi, [eax+edx*8+8]
		mov	[ecx], esi

loc_471E71:				; CODE XREF: .text:00471E69j
		test	ebx, ebx
		jz	short loc_471E7B
		mov	eax, [eax+edx*8+0Ch]
		mov	[ebx], eax

loc_471E7B:				; CODE XREF: .text:00471E73j
		mov	eax, 1

loc_471E80:				; CODE XREF: .text:00471E51j
					; .text:00471E65j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 239. _Addrange
; Exported entry 394. Addrange

; signed int __cdecl Addrange(t_range *set, ulong rmin,	ulong rmax)
		public Addrange
Addrange:				; CODE XREF: .text:0040D621p
					; .text:00435527p ...
		push	ebp		; _Addrange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_471E9A
		cmp	dword ptr [ebx+4], 2
		jnb	short loc_471EA2

loc_471E9A:				; CODE XREF: .text:00471E92j
		or	eax, 0FFFFFFFFh
		jmp	loc_471FE8
; ---------------------------------------------------------------------------

loc_471EA2:				; CODE XREF: .text:00471E98j
		cmp	edi, [ebp+0Ch]
		jnb	short loc_471EAF
		or	eax, 0FFFFFFFFh
		jmp	loc_471FE8
; ---------------------------------------------------------------------------

loc_471EAF:				; CODE XREF: .text:00471EA5j
		mov	edx, [ebp+0Ch]
		push	edx
		push	ebx
		call	loc_471C58
		add	esp, 8
		mov	esi, eax
		cmp	esi, 1
		jbe	short loc_471ED6
		mov	eax, [ebx+esi*8-4]
		inc	eax
		cmp	eax, [ebp+0Ch]
		jnz	short loc_471ED6
		dec	esi
		mov	edx, [ebx+esi*8]
		mov	[ebp+0Ch], edx
		jmp	short loc_471F12
; ---------------------------------------------------------------------------

loc_471ED6:				; CODE XREF: .text:00471EC1j
					; .text:00471ECBj
		cmp	esi, [ebx]
		jbe	short loc_471EFC
		cmp	esi, [ebx+4]
		jb	short loc_471EE9
		mov	eax, 1
		jmp	loc_471FE8
; ---------------------------------------------------------------------------

loc_471EE9:				; CODE XREF: .text:00471EDDj
		mov	edx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebx+esi*8], edx
		mov	[ebx+esi*8+4], edi
		mov	[ebx], esi
		jmp	loc_471FE8
; ---------------------------------------------------------------------------

loc_471EFC:				; CODE XREF: .text:00471ED8j
		mov	eax, esi
		shl	eax, 3
		add	eax, ebx
		mov	edx, [eax]
		cmp	edx, [ebp+0Ch]
		jb	short loc_471F0D
		lea	eax, [ebp+0Ch]

loc_471F0D:				; CODE XREF: .text:00471F08j
		mov	edx, [eax]
		mov	[ebp+0Ch], edx

loc_471F12:				; CODE XREF: .text:00471ED4j
		cmp	edi, 0FFFFFFFFh
		jnz	short loc_471F2A
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebx+esi*8], ecx
		mov	[ebx+esi*8+4], edi
		mov	[ebx], esi
		jmp	loc_471FE8
; ---------------------------------------------------------------------------

loc_471F2A:				; CODE XREF: .text:00471F15j
		lea	edx, [edi+1]
		cmp	edx, [ebx+esi*8]
		jnb	short loc_471F73
		mov	edx, [ebx]
		mov	eax, edx
		inc	eax
		cmp	eax, [ebx+4]
		jb	short loc_471F46
		mov	eax, 1
		jmp	loc_471FE8
; ---------------------------------------------------------------------------

loc_471F46:				; CODE XREF: .text:00471F3Aj
		sub	edx, esi
		mov	eax, esi
		shl	edx, 3
		shl	eax, 3
		add	edx, 8
		add	eax, ebx
		push	edx		; n
		push	eax		; src
		add	eax, 8
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		inc	dword ptr [ebx]
		mov	edx, [ebp+0Ch]
		mov	[ebx+esi*8], edx
		mov	[ebx+esi*8+4], edi
		xor	eax, eax
		jmp	short loc_471FE8
; ---------------------------------------------------------------------------

loc_471F73:				; CODE XREF: .text:00471F30j
		mov	edx, [ebp+0Ch]
		mov	[ebx+esi*8], edx
		push	edi
		push	ebx
		call	loc_471C58
		add	esp, 8
		cmp	eax, [ebx]
		jbe	short loc_471F91
		mov	[ebx+esi*8+4], edi
		mov	[ebx], esi
		xor	eax, eax
		jmp	short loc_471FE8
; ---------------------------------------------------------------------------

loc_471F91:				; CODE XREF: .text:00471F85j
		lea	edx, [edi+1]
		cmp	edx, [ebx+eax*8]
		jb	short loc_471FA7
		mov	ecx, [ebx+eax*8+4]
		mov	[ebx+esi*8+4], ecx
		mov	edi, eax
		sub	edi, esi
		jmp	short loc_471FB0
; ---------------------------------------------------------------------------

loc_471FA7:				; CODE XREF: .text:00471F97j
		mov	[ebx+esi*8+4], edi
		mov	edi, eax
		sub	edi, esi
		dec	edi

loc_471FB0:				; CODE XREF: .text:00471FA5j
		test	edi, edi
		jbe	short loc_471FE6
		inc	esi
		lea	eax, [edi+esi]
		cmp	eax, [ebx]
		ja	short loc_471FE4
		mov	ecx, [ebx]
		lea	edx, [edi+esi]
		sub	ecx, edx
		mov	eax, esi
		shl	ecx, 3
		add	ecx, 8
		push	ecx		; n
		mov	ecx, edi
		shl	eax, 3
		add	eax, ebx
		shl	ecx, 3
		mov	edx, eax
		add	edx, ecx
		push	edx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_471FE4:				; CODE XREF: .text:00471FBAj
		sub	[ebx], edi

loc_471FE6:				; CODE XREF: .text:00471FB2j
		xor	eax, eax

loc_471FE8:				; CODE XREF: .text:00471E9Dj
					; .text:00471EAAj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 240. _Removerange
; Exported entry 695. Removerange

; signed int __cdecl Removerange(t_range *set, ulong rmin, ulong rmax)
		public Removerange
Removerange:				; CODE XREF: .text:0043560Cp
					; .text:0043571Cp ...
		push	ebp		; _Removerange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_472006
		cmp	dword ptr [ebx+4], 2
		jnb	short loc_47200E

loc_472006:				; CODE XREF: .text:00471FFEj
		or	eax, 0FFFFFFFFh
		jmp	loc_472113
; ---------------------------------------------------------------------------

loc_47200E:				; CODE XREF: .text:00472004j
		cmp	edi, [ebp+10h]
		jbe	short loc_47201B
		or	eax, 0FFFFFFFFh
		jmp	loc_472113
; ---------------------------------------------------------------------------

loc_47201B:				; CODE XREF: .text:00472011j
		push	edi
		push	ebx
		call	loc_471C58
		add	esp, 8
		mov	esi, eax
		mov	eax, [ebx]
		cmp	esi, eax
		jbe	short loc_472034
		xor	eax, eax
		jmp	loc_472113
; ---------------------------------------------------------------------------

loc_472034:				; CODE XREF: .text:0047202Bj
		cmp	edi, [ebx+esi*8]
		jbe	short loc_472095
		mov	edx, [ebp+10h]
		cmp	edx, [ebx+esi*8+4]
		jnb	short loc_472087
		mov	ecx, eax
		inc	ecx
		cmp	ecx, [ebx+4]
		jb	short loc_472054
		mov	eax, 1
		jmp	loc_472113
; ---------------------------------------------------------------------------

loc_472054:				; CODE XREF: .text:00472048j
		sub	eax, esi
		mov	edx, esi
		shl	eax, 3
		shl	edx, 3
		add	eax, 8
		add	edx, ebx
		push	eax		; n
		push	edx		; src
		add	edx, 8
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch
		dec	edi
		mov	[ebx+esi*8+4], edi
		mov	ecx, [ebp+10h]
		inc	ecx
		mov	[ebx+esi*8+8], ecx
		inc	dword ptr [ebx]
		xor	eax, eax
		jmp	loc_472113
; ---------------------------------------------------------------------------

loc_472087:				; CODE XREF: .text:00472040j
		dec	edi
		mov	[ebx+esi*8+4], edi
		inc	esi
		cmp	esi, [ebx]
		jbe	short loc_472095
		xor	eax, eax
		jmp	short loc_472113
; ---------------------------------------------------------------------------

loc_472095:				; CODE XREF: .text:00472037j
					; .text:0047208Fj
		mov	edx, [ebp+10h]
		cmp	edx, [ebx+esi*8+4]
		jnb	short loc_4720B1
		mov	ecx, [ebp+10h]
		cmp	ecx, [ebx+esi*8]
		jb	short loc_4720AD
		mov	eax, [ebp+10h]
		inc	eax
		mov	[ebx+esi*8], eax

loc_4720AD:				; CODE XREF: .text:004720A4j
		xor	eax, eax
		jmp	short loc_472113
; ---------------------------------------------------------------------------

loc_4720B1:				; CODE XREF: .text:0047209Cj
		mov	edx, [ebp+10h]
		push	edx
		push	ebx
		call	loc_471C58
		add	esp, 8
		mov	edi, eax
		cmp	edi, [ebx]
		jbe	short loc_4720CB
		dec	esi
		xor	eax, eax
		mov	[ebx], esi
		jmp	short loc_472113
; ---------------------------------------------------------------------------

loc_4720CB:				; CODE XREF: .text:004720C2j
		mov	edx, [ebx+edi*8+4]
		cmp	edx, [ebp+10h]
		jnz	short loc_4720D7
		inc	edi
		jmp	short loc_4720E6
; ---------------------------------------------------------------------------

loc_4720D7:				; CODE XREF: .text:004720D2j
		mov	ecx, [ebx+edi*8]
		cmp	ecx, [ebp+10h]
		ja	short loc_4720E6
		mov	eax, [ebp+10h]
		inc	eax
		mov	[ebx+edi*8], eax

loc_4720E6:				; CODE XREF: .text:004720D5j
					; .text:004720DDj
		mov	eax, [ebx]
		cmp	edi, eax
		ja	short loc_47210D
		sub	eax, edi
		mov	edx, edi
		shl	eax, 3
		mov	ecx, esi
		shl	edx, 3
		add	eax, 8
		shl	ecx, 3
		add	edx, ebx
		push	eax		; n
		push	edx		; src
		add	ecx, ebx
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch

loc_47210D:				; CODE XREF: .text:004720EAj
		sub	edi, esi
		sub	[ebx], edi
		xor	eax, eax

loc_472113:				; CODE XREF: .text:00472009j
					; .text:00472016j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
